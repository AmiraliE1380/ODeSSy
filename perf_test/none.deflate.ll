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
  br i1 %5, label %145, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1, !tbaa !8
  %8 = icmp ne i8 %7, 49
  %9 = icmp ne i32 %3, 112
  %10 = or i1 %9, %8
  br i1 %10, label %145, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %0, null
  br i1 %12, label %145, label %13

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
  %21 = phi ptr [ @zcalloc, %18 ], [ %16, %13 ]
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %23 = load ptr, ptr %22, align 8, !tbaa !17
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store ptr @zcfree, ptr %22, align 8, !tbaa !17
  br label %26

26:                                               ; preds = %25, %20
  %27 = icmp eq i32 %1, -1
  %28 = select i1 %27, i32 6, i32 %1
  %29 = icmp ugt i32 %28, 9
  br i1 %29, label %145, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %32 = load ptr, ptr %31, align 8, !tbaa !16
  %33 = tail call ptr %21(ptr noundef %32, i32 noundef 1, i32 noundef 5968) #11, !inline_history !18
  %34 = icmp eq ptr %33, null
  br i1 %34, label %145, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds nuw i8, ptr %33, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5960) %36, i8 0, i64 5960, i1 false)
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %33, ptr %37, align 8, !tbaa !19
  store ptr %0, ptr %33, align 8, !tbaa !20
  store i32 42, ptr %36, align 8, !tbaa !29
  %38 = getelementptr inbounds nuw i8, ptr %33, i64 48
  store i32 1, ptr %38, align 8, !tbaa !30
  %39 = getelementptr inbounds nuw i8, ptr %33, i64 84
  store i32 15, ptr %39, align 4, !tbaa !31
  %40 = getelementptr inbounds nuw i8, ptr %33, i64 80
  store i32 32768, ptr %40, align 8, !tbaa !32
  %41 = getelementptr inbounds nuw i8, ptr %33, i64 88
  store i32 32767, ptr %41, align 8, !tbaa !33
  %42 = getelementptr inbounds nuw i8, ptr %33, i64 132
  store <4 x i32> <i32 32768, i32 15, i32 32767, i32 5>, ptr %42, align 4, !tbaa !4
  %43 = load ptr, ptr %15, align 8, !tbaa !15
  %44 = load ptr, ptr %31, align 8, !tbaa !16
  %45 = tail call ptr %43(ptr noundef %44, i32 noundef 32768, i32 noundef 2) #11, !inline_history !18
  %46 = getelementptr inbounds nuw i8, ptr %33, i64 96
  store ptr %45, ptr %46, align 8, !tbaa !34
  %47 = load ptr, ptr %15, align 8, !tbaa !15
  %48 = load ptr, ptr %31, align 8, !tbaa !16
  %49 = load i32, ptr %40, align 8, !tbaa !32
  %50 = tail call ptr %47(ptr noundef %48, i32 noundef %49, i32 noundef 2) #11, !inline_history !18
  %51 = getelementptr inbounds nuw i8, ptr %33, i64 112
  store ptr %50, ptr %51, align 8, !tbaa !35
  %52 = load ptr, ptr %15, align 8, !tbaa !15
  %53 = load ptr, ptr %31, align 8, !tbaa !16
  %54 = load i32, ptr %42, align 4, !tbaa !36
  %55 = tail call ptr %52(ptr noundef %53, i32 noundef %54, i32 noundef 2) #11, !inline_history !18
  %56 = getelementptr inbounds nuw i8, ptr %33, i64 120
  store ptr %55, ptr %56, align 8, !tbaa !37
  %57 = getelementptr inbounds nuw i8, ptr %33, i64 5952
  store i64 0, ptr %57, align 8, !tbaa !38
  %58 = getelementptr inbounds nuw i8, ptr %33, i64 5896
  store i32 16384, ptr %58, align 8, !tbaa !39
  %59 = load ptr, ptr %15, align 8, !tbaa !15
  %60 = load ptr, ptr %31, align 8, !tbaa !16
  %61 = tail call ptr %59(ptr noundef %60, i32 noundef 16384, i32 noundef 4) #11, !inline_history !18
  %62 = getelementptr inbounds nuw i8, ptr %33, i64 16
  store ptr %61, ptr %62, align 8, !tbaa !40
  %63 = load i32, ptr %58, align 8, !tbaa !39
  %64 = zext i32 %63 to i64
  %65 = shl nuw nsw i64 %64, 2
  %66 = getelementptr inbounds nuw i8, ptr %33, i64 24
  store i64 %65, ptr %66, align 8, !tbaa !41
  %67 = load ptr, ptr %46, align 8, !tbaa !34
  %68 = icmp eq ptr %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %35
  %70 = load ptr, ptr %51, align 8, !tbaa !35
  %71 = icmp eq ptr %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %56, align 8, !tbaa !37
  %74 = icmp eq ptr %73, null
  %75 = icmp eq ptr %61, null
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %76, label %77, label %135

77:                                               ; preds = %72, %69, %35
  store i32 666, ptr %36, align 8, !tbaa !29
  %78 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 48), align 16, !tbaa !42
  store ptr %78, ptr %14, align 8, !tbaa !9
  %79 = load ptr, ptr %15, align 8, !tbaa !15
  %80 = icmp eq ptr %79, null
  br i1 %80, label %145, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %22, align 8, !tbaa !17
  %83 = icmp eq ptr %82, null
  br i1 %83, label %145, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr %37, align 8, !tbaa !19
  %86 = icmp eq ptr %85, null
  br i1 %86, label %145, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %85, align 8, !tbaa !20
  %89 = icmp eq ptr %88, %0
  br i1 %89, label %90, label %145

90:                                               ; preds = %87
  %91 = getelementptr inbounds nuw i8, ptr %85, i64 8
  %92 = load i32, ptr %91, align 8, !tbaa !29
  switch i32 %92, label %145 [
    i32 42, label %93
    i32 57, label %93
    i32 69, label %93
    i32 73, label %93
    i32 91, label %93
    i32 103, label %93
    i32 113, label %93
    i32 666, label %93
  ]

93:                                               ; preds = %90, %90, %90, %90, %90, %90, %90, %90
  %94 = getelementptr inbounds nuw i8, ptr %85, i64 16
  %95 = load ptr, ptr %94, align 8, !tbaa !40
  %96 = icmp eq ptr %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %31, align 8, !tbaa !16
  tail call void %82(ptr noundef %98, ptr noundef nonnull %95) #11, !inline_history !43
  %99 = load ptr, ptr %37, align 8, !tbaa !19
  %100 = load ptr, ptr %22, align 8, !tbaa !17
  br label %101

101:                                              ; preds = %97, %93
  %102 = phi ptr [ %100, %97 ], [ %82, %93 ]
  %103 = phi ptr [ %99, %97 ], [ %85, %93 ]
  %104 = getelementptr inbounds nuw i8, ptr %103, i64 120
  %105 = load ptr, ptr %104, align 8, !tbaa !37
  %106 = icmp eq ptr %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %101
  %108 = load ptr, ptr %31, align 8, !tbaa !16
  tail call void %102(ptr noundef %108, ptr noundef nonnull %105) #11, !inline_history !43
  %109 = load ptr, ptr %37, align 8, !tbaa !19
  %110 = load ptr, ptr %22, align 8, !tbaa !17
  br label %111

111:                                              ; preds = %107, %101
  %112 = phi ptr [ %110, %107 ], [ %102, %101 ]
  %113 = phi ptr [ %109, %107 ], [ %103, %101 ]
  %114 = getelementptr inbounds nuw i8, ptr %113, i64 112
  %115 = load ptr, ptr %114, align 8, !tbaa !35
  %116 = icmp eq ptr %115, null
  br i1 %116, label %121, label %117

117:                                              ; preds = %111
  %118 = load ptr, ptr %31, align 8, !tbaa !16
  tail call void %112(ptr noundef %118, ptr noundef nonnull %115) #11, !inline_history !43
  %119 = load ptr, ptr %37, align 8, !tbaa !19
  %120 = load ptr, ptr %22, align 8, !tbaa !17
  br label %121

121:                                              ; preds = %117, %111
  %122 = phi ptr [ %120, %117 ], [ %112, %111 ]
  %123 = phi ptr [ %119, %117 ], [ %113, %111 ]
  %124 = getelementptr inbounds nuw i8, ptr %123, i64 96
  %125 = load ptr, ptr %124, align 8, !tbaa !34
  %126 = icmp eq ptr %125, null
  br i1 %126, label %131, label %127

127:                                              ; preds = %121
  %128 = load ptr, ptr %31, align 8, !tbaa !16
  tail call void %122(ptr noundef %128, ptr noundef nonnull %125) #11, !inline_history !43
  %129 = load ptr, ptr %22, align 8, !tbaa !17
  %130 = load ptr, ptr %37, align 8, !tbaa !19
  br label %131

131:                                              ; preds = %127, %121
  %132 = phi ptr [ %130, %127 ], [ %123, %121 ]
  %133 = phi ptr [ %129, %127 ], [ %122, %121 ]
  %134 = load ptr, ptr %31, align 8, !tbaa !16
  tail call void %133(ptr noundef %134, ptr noundef %132) #11, !inline_history !43
  store ptr null, ptr %37, align 8, !tbaa !19
  br label %145

135:                                              ; preds = %72
  %136 = getelementptr inbounds nuw i8, ptr %61, i64 %64
  %137 = getelementptr inbounds nuw i8, ptr %33, i64 5888
  store ptr %136, ptr %137, align 8, !tbaa !44
  %138 = mul i32 %63, 3
  %139 = add i32 %138, -3
  %140 = getelementptr inbounds nuw i8, ptr %33, i64 5904
  store i32 %139, ptr %140, align 8, !tbaa !45
  %141 = getelementptr inbounds nuw i8, ptr %33, i64 196
  store i32 %28, ptr %141, align 4, !tbaa !46
  %142 = getelementptr inbounds nuw i8, ptr %33, i64 200
  store i32 0, ptr %142, align 8, !tbaa !47
  %143 = getelementptr inbounds nuw i8, ptr %33, i64 72
  store i8 8, ptr %143, align 8, !tbaa !48
  %144 = tail call i32 @deflateReset(ptr noundef nonnull %0)
  br label %145

145:                                              ; preds = %4, %6, %11, %26, %30, %77, %81, %84, %87, %90, %131, %135
  %146 = phi i32 [ %144, %135 ], [ -6, %4 ], [ -2, %11 ], [ -4, %131 ], [ -2, %26 ], [ -4, %30 ], [ -6, %6 ], [ -4, %90 ], [ -4, %77 ], [ -4, %81 ], [ -4, %84 ], [ -4, %87 ]
  ret i32 %146
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @deflateInit2_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly captures(address_is_null) %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq ptr %6, null
  br i1 %9, label %190, label %10

10:                                               ; preds = %8
  %11 = load i8, ptr %6, align 1, !tbaa !8
  %12 = icmp ne i8 %11, 49
  %13 = icmp ne i32 %7, 112
  %14 = or i1 %13, %12
  br i1 %14, label %190, label %15

15:                                               ; preds = %10
  %16 = icmp eq ptr %0, null
  br i1 %16, label %190, label %17

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
  %25 = phi ptr [ @zcalloc, %22 ], [ %20, %17 ]
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %27 = load ptr, ptr %26, align 8, !tbaa !17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store ptr @zcfree, ptr %26, align 8, !tbaa !17
  br label %30

30:                                               ; preds = %29, %24
  %31 = icmp eq i32 %1, -1
  %32 = select i1 %31, i32 6, i32 %1
  %33 = icmp slt i32 %3, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = icmp samesign ult i32 %3, -15
  br i1 %35, label %190, label %36

36:                                               ; preds = %34
  %37 = sub nsw i32 0, %3
  br label %42

38:                                               ; preds = %30
  %39 = icmp samesign ugt i32 %3, 15
  br i1 %39, label %40, label %42

40:                                               ; preds = %38
  %41 = add nsw i32 %3, -16
  br label %42

42:                                               ; preds = %38, %40, %36
  %43 = phi i32 [ %37, %36 ], [ %41, %40 ], [ %3, %38 ]
  %44 = phi i1 [ true, %36 ], [ true, %40 ], [ false, %38 ]
  %45 = phi i32 [ 0, %36 ], [ 2, %40 ], [ 1, %38 ]
  %46 = add i32 %4, -10
  %47 = icmp ult i32 %46, -9
  %48 = icmp ne i32 %2, 8
  %49 = or i1 %48, %47
  %50 = add nsw i32 %43, -16
  %51 = icmp ult i32 %50, -8
  %52 = select i1 %49, i1 true, i1 %51
  %53 = icmp ugt i32 %32, 9
  %54 = or i1 %53, %52
  %55 = icmp ugt i32 %5, 4
  %56 = or i1 %55, %54
  br i1 %56, label %190, label %57

57:                                               ; preds = %42
  %58 = icmp eq i32 %43, 8
  %59 = and i1 %58, %44
  br i1 %59, label %190, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %62 = load ptr, ptr %61, align 8, !tbaa !16
  %63 = tail call ptr %25(ptr noundef %62, i32 noundef 1, i32 noundef 5968) #11
  %64 = icmp eq ptr %63, null
  br i1 %64, label %190, label %65

65:                                               ; preds = %60
  %66 = select i1 %58, i32 9, i32 %43
  %67 = getelementptr inbounds nuw i8, ptr %63, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5960) %67, i8 0, i64 5960, i1 false)
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %63, ptr %68, align 8, !tbaa !19
  store ptr %0, ptr %63, align 8, !tbaa !20
  %69 = getelementptr inbounds nuw i8, ptr %63, i64 8
  store i32 42, ptr %69, align 8, !tbaa !29
  %70 = getelementptr inbounds nuw i8, ptr %63, i64 48
  store i32 %45, ptr %70, align 8, !tbaa !30
  %71 = getelementptr inbounds nuw i8, ptr %63, i64 84
  store i32 %66, ptr %71, align 4, !tbaa !31
  %72 = shl nuw nsw i32 1, %66
  %73 = getelementptr inbounds nuw i8, ptr %63, i64 80
  store i32 %72, ptr %73, align 8, !tbaa !32
  %74 = add nsw i32 %72, -1
  %75 = getelementptr inbounds nuw i8, ptr %63, i64 88
  store i32 %74, ptr %75, align 8, !tbaa !33
  %76 = add nuw nsw i32 %4, 7
  %77 = getelementptr inbounds nuw i8, ptr %63, i64 136
  store i32 %76, ptr %77, align 8, !tbaa !49
  %78 = shl nuw nsw i32 128, %4
  %79 = getelementptr inbounds nuw i8, ptr %63, i64 132
  store i32 %78, ptr %79, align 4, !tbaa !36
  %80 = add nsw i32 %78, -1
  %81 = getelementptr inbounds nuw i8, ptr %63, i64 140
  store i32 %80, ptr %81, align 4, !tbaa !50
  %82 = trunc nuw nsw i32 %4 to i8
  %83 = add nuw nsw i8 %82, 9
  %84 = udiv i8 %83, 3
  %85 = zext nneg i8 %84 to i32
  %86 = getelementptr inbounds nuw i8, ptr %63, i64 144
  store i32 %85, ptr %86, align 8, !tbaa !51
  %87 = load ptr, ptr %19, align 8, !tbaa !15
  %88 = load ptr, ptr %61, align 8, !tbaa !16
  %89 = tail call ptr %87(ptr noundef %88, i32 noundef %72, i32 noundef 2) #11
  %90 = getelementptr inbounds nuw i8, ptr %63, i64 96
  store ptr %89, ptr %90, align 8, !tbaa !34
  %91 = load ptr, ptr %19, align 8, !tbaa !15
  %92 = load ptr, ptr %61, align 8, !tbaa !16
  %93 = load i32, ptr %73, align 8, !tbaa !32
  %94 = tail call ptr %91(ptr noundef %92, i32 noundef %93, i32 noundef 2) #11
  %95 = getelementptr inbounds nuw i8, ptr %63, i64 112
  store ptr %94, ptr %95, align 8, !tbaa !35
  %96 = load ptr, ptr %19, align 8, !tbaa !15
  %97 = load ptr, ptr %61, align 8, !tbaa !16
  %98 = load i32, ptr %79, align 4, !tbaa !36
  %99 = tail call ptr %96(ptr noundef %97, i32 noundef %98, i32 noundef 2) #11
  %100 = getelementptr inbounds nuw i8, ptr %63, i64 120
  store ptr %99, ptr %100, align 8, !tbaa !37
  %101 = getelementptr inbounds nuw i8, ptr %63, i64 5952
  store i64 0, ptr %101, align 8, !tbaa !38
  %102 = shl nuw nsw i32 64, %4
  %103 = getelementptr inbounds nuw i8, ptr %63, i64 5896
  store i32 %102, ptr %103, align 8, !tbaa !39
  %104 = load ptr, ptr %19, align 8, !tbaa !15
  %105 = load ptr, ptr %61, align 8, !tbaa !16
  %106 = tail call ptr %104(ptr noundef %105, i32 noundef %102, i32 noundef 4) #11
  %107 = getelementptr inbounds nuw i8, ptr %63, i64 16
  store ptr %106, ptr %107, align 8, !tbaa !40
  %108 = load i32, ptr %103, align 8, !tbaa !39
  %109 = zext i32 %108 to i64
  %110 = shl nuw nsw i64 %109, 2
  %111 = getelementptr inbounds nuw i8, ptr %63, i64 24
  store i64 %110, ptr %111, align 8, !tbaa !41
  %112 = load ptr, ptr %90, align 8, !tbaa !34
  %113 = icmp eq ptr %112, null
  br i1 %113, label %122, label %114

114:                                              ; preds = %65
  %115 = load ptr, ptr %95, align 8, !tbaa !35
  %116 = icmp eq ptr %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr %100, align 8, !tbaa !37
  %119 = icmp eq ptr %118, null
  %120 = icmp eq ptr %106, null
  %121 = select i1 %119, i1 true, i1 %120
  br i1 %121, label %122, label %180

122:                                              ; preds = %65, %114, %117
  store i32 666, ptr %69, align 8, !tbaa !29
  %123 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 48), align 16, !tbaa !42
  store ptr %123, ptr %18, align 8, !tbaa !9
  %124 = load ptr, ptr %19, align 8, !tbaa !15
  %125 = icmp eq ptr %124, null
  br i1 %125, label %190, label %126

126:                                              ; preds = %122
  %127 = load ptr, ptr %26, align 8, !tbaa !17
  %128 = icmp eq ptr %127, null
  br i1 %128, label %190, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr %68, align 8, !tbaa !19
  %131 = icmp eq ptr %130, null
  br i1 %131, label %190, label %132

132:                                              ; preds = %129
  %133 = load ptr, ptr %130, align 8, !tbaa !20
  %134 = icmp eq ptr %133, %0
  br i1 %134, label %135, label %190

135:                                              ; preds = %132
  %136 = getelementptr inbounds nuw i8, ptr %130, i64 8
  %137 = load i32, ptr %136, align 8, !tbaa !29
  switch i32 %137, label %190 [
    i32 42, label %138
    i32 57, label %138
    i32 69, label %138
    i32 73, label %138
    i32 91, label %138
    i32 103, label %138
    i32 113, label %138
    i32 666, label %138
  ]

138:                                              ; preds = %135, %135, %135, %135, %135, %135, %135, %135
  %139 = getelementptr inbounds nuw i8, ptr %130, i64 16
  %140 = load ptr, ptr %139, align 8, !tbaa !40
  %141 = icmp eq ptr %140, null
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %127(ptr noundef %143, ptr noundef nonnull %140) #11, !inline_history !52
  %144 = load ptr, ptr %68, align 8, !tbaa !19
  %145 = load ptr, ptr %26, align 8, !tbaa !17
  br label %146

146:                                              ; preds = %142, %138
  %147 = phi ptr [ %145, %142 ], [ %127, %138 ]
  %148 = phi ptr [ %144, %142 ], [ %130, %138 ]
  %149 = getelementptr inbounds nuw i8, ptr %148, i64 120
  %150 = load ptr, ptr %149, align 8, !tbaa !37
  %151 = icmp eq ptr %150, null
  br i1 %151, label %156, label %152

152:                                              ; preds = %146
  %153 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %147(ptr noundef %153, ptr noundef nonnull %150) #11, !inline_history !52
  %154 = load ptr, ptr %68, align 8, !tbaa !19
  %155 = load ptr, ptr %26, align 8, !tbaa !17
  br label %156

156:                                              ; preds = %152, %146
  %157 = phi ptr [ %155, %152 ], [ %147, %146 ]
  %158 = phi ptr [ %154, %152 ], [ %148, %146 ]
  %159 = getelementptr inbounds nuw i8, ptr %158, i64 112
  %160 = load ptr, ptr %159, align 8, !tbaa !35
  %161 = icmp eq ptr %160, null
  br i1 %161, label %166, label %162

162:                                              ; preds = %156
  %163 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %157(ptr noundef %163, ptr noundef nonnull %160) #11, !inline_history !52
  %164 = load ptr, ptr %68, align 8, !tbaa !19
  %165 = load ptr, ptr %26, align 8, !tbaa !17
  br label %166

166:                                              ; preds = %162, %156
  %167 = phi ptr [ %165, %162 ], [ %157, %156 ]
  %168 = phi ptr [ %164, %162 ], [ %158, %156 ]
  %169 = getelementptr inbounds nuw i8, ptr %168, i64 96
  %170 = load ptr, ptr %169, align 8, !tbaa !34
  %171 = icmp eq ptr %170, null
  br i1 %171, label %176, label %172

172:                                              ; preds = %166
  %173 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %167(ptr noundef %173, ptr noundef nonnull %170) #11, !inline_history !52
  %174 = load ptr, ptr %26, align 8, !tbaa !17
  %175 = load ptr, ptr %68, align 8, !tbaa !19
  br label %176

176:                                              ; preds = %172, %166
  %177 = phi ptr [ %175, %172 ], [ %168, %166 ]
  %178 = phi ptr [ %174, %172 ], [ %167, %166 ]
  %179 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %178(ptr noundef %179, ptr noundef %177) #11, !inline_history !52
  store ptr null, ptr %68, align 8, !tbaa !19
  br label %190

180:                                              ; preds = %117
  %181 = getelementptr inbounds nuw i8, ptr %106, i64 %109
  %182 = getelementptr inbounds nuw i8, ptr %63, i64 5888
  store ptr %181, ptr %182, align 8, !tbaa !44
  %183 = mul i32 %108, 3
  %184 = add i32 %183, -3
  %185 = getelementptr inbounds nuw i8, ptr %63, i64 5904
  store i32 %184, ptr %185, align 8, !tbaa !45
  %186 = getelementptr inbounds nuw i8, ptr %63, i64 196
  store i32 %32, ptr %186, align 4, !tbaa !46
  %187 = getelementptr inbounds nuw i8, ptr %63, i64 200
  store i32 %5, ptr %187, align 8, !tbaa !47
  %188 = getelementptr inbounds nuw i8, ptr %63, i64 72
  store i8 8, ptr %188, align 8, !tbaa !48
  %189 = tail call i32 @deflateReset(ptr noundef nonnull %0)
  br label %190

190:                                              ; preds = %176, %135, %132, %129, %126, %122, %60, %42, %57, %34, %15, %8, %10, %180
  %191 = phi i32 [ %189, %180 ], [ -6, %8 ], [ -2, %15 ], [ -2, %34 ], [ -2, %42 ], [ -4, %60 ], [ -6, %10 ], [ -2, %57 ], [ -4, %122 ], [ -4, %126 ], [ -4, %129 ], [ -4, %132 ], [ -4, %135 ], [ -4, %176 ]
  ret i32 %191
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #1

declare void @zcfree(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -3, 1) i32 @deflateEnd(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %70, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %70, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %70, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %70, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !20
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %70

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !29
  switch i32 %20, label %70 [
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
  %22 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %23 = load ptr, ptr %22, align 8, !tbaa !40
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %27 = load ptr, ptr %26, align 8, !tbaa !16
  tail call void %9(ptr noundef %27, ptr noundef nonnull %23) #11
  %28 = load ptr, ptr %12, align 8, !tbaa !19
  %29 = load ptr, ptr %8, align 8, !tbaa !17
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi ptr [ %29, %25 ], [ %9, %21 ]
  %32 = phi ptr [ %28, %25 ], [ %13, %21 ]
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 120
  %34 = load ptr, ptr %33, align 8, !tbaa !37
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %38 = load ptr, ptr %37, align 8, !tbaa !16
  tail call void %31(ptr noundef %38, ptr noundef nonnull %34) #11
  %39 = load ptr, ptr %12, align 8, !tbaa !19
  %40 = load ptr, ptr %8, align 8, !tbaa !17
  br label %41

41:                                               ; preds = %36, %30
  %42 = phi ptr [ %40, %36 ], [ %31, %30 ]
  %43 = phi ptr [ %39, %36 ], [ %32, %30 ]
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 112
  %45 = load ptr, ptr %44, align 8, !tbaa !35
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %49 = load ptr, ptr %48, align 8, !tbaa !16
  tail call void %42(ptr noundef %49, ptr noundef nonnull %45) #11
  %50 = load ptr, ptr %12, align 8, !tbaa !19
  %51 = load ptr, ptr %8, align 8, !tbaa !17
  br label %52

52:                                               ; preds = %47, %41
  %53 = phi ptr [ %51, %47 ], [ %42, %41 ]
  %54 = phi ptr [ %50, %47 ], [ %43, %41 ]
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 96
  %56 = load ptr, ptr %55, align 8, !tbaa !34
  %57 = icmp eq ptr %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %60 = load ptr, ptr %59, align 8, !tbaa !16
  tail call void %53(ptr noundef %60, ptr noundef nonnull %56) #11
  %61 = load ptr, ptr %8, align 8, !tbaa !17
  %62 = load ptr, ptr %12, align 8, !tbaa !19
  br label %63

63:                                               ; preds = %58, %52
  %64 = phi ptr [ %62, %58 ], [ %54, %52 ]
  %65 = phi ptr [ %61, %58 ], [ %53, %52 ]
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %67 = load ptr, ptr %66, align 8, !tbaa !16
  tail call void %65(ptr noundef %67, ptr noundef %64) #11
  store ptr null, ptr %12, align 8, !tbaa !19
  %68 = icmp eq i32 %20, 113
  %69 = select i1 %68, i32 -3, i32 0
  br label %70

70:                                               ; preds = %11, %15, %18, %3, %7, %1, %63
  %71 = phi i32 [ %69, %63 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateReset(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %88, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %88, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %88, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %88, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !20
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %88

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !29
  switch i32 %20, label %88 [
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
  store i64 0, ptr %23, align 8, !tbaa !53
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  store i32 2, ptr %24, align 8, !tbaa !54
  %25 = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 0, ptr %25, align 8, !tbaa !55
  %26 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %27 = load ptr, ptr %26, align 8, !tbaa !40
  %28 = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %27, ptr %28, align 8, !tbaa !56
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 48
  %30 = load i32, ptr %29, align 8, !tbaa !30
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = sub nsw i32 0, %30
  store i32 %33, ptr %29, align 8, !tbaa !30
  br label %34

34:                                               ; preds = %32, %21
  %35 = phi i32 [ %33, %32 ], [ %30, %21 ]
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
  store i64 %43, ptr %44, align 8, !tbaa !57
  %45 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %45, align 4, !tbaa !58
  tail call void @_tr_init(ptr noundef nonnull %13) #11
  %46 = load ptr, ptr %12, align 8, !tbaa !19
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 80
  %48 = load i32, ptr %47, align 8, !tbaa !32
  %49 = zext i32 %48 to i64
  %50 = shl nuw nsw i64 %49, 1
  %51 = getelementptr inbounds nuw i8, ptr %46, i64 104
  store i64 %50, ptr %51, align 8, !tbaa !59
  %52 = getelementptr inbounds nuw i8, ptr %46, i64 120
  %53 = load ptr, ptr %52, align 8, !tbaa !37
  %54 = getelementptr inbounds nuw i8, ptr %46, i64 132
  %55 = load i32, ptr %54, align 4, !tbaa !36
  %56 = add i32 %55, -1
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds nuw [2 x i8], ptr %53, i64 %57
  store i16 0, ptr %58, align 2, !tbaa !60
  %59 = shl nuw nsw i64 %57, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %53, i8 0, i64 %59, i1 false)
  %60 = getelementptr inbounds nuw i8, ptr %46, i64 5960
  store i32 0, ptr %60, align 8, !tbaa !61
  %61 = getelementptr inbounds nuw i8, ptr %46, i64 196
  %62 = load i32, ptr %61, align 4, !tbaa !46
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %63
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 2
  %66 = load i16, ptr %65, align 2, !tbaa !62
  %67 = zext i16 %66 to i32
  %68 = getelementptr inbounds nuw i8, ptr %46, i64 192
  store i32 %67, ptr %68, align 8, !tbaa !64
  %69 = load i16, ptr %64, align 16, !tbaa !65
  %70 = zext i16 %69 to i32
  %71 = getelementptr inbounds nuw i8, ptr %46, i64 204
  store i32 %70, ptr %71, align 4, !tbaa !66
  %72 = getelementptr inbounds nuw i8, ptr %64, i64 4
  %73 = load i16, ptr %72, align 4, !tbaa !67
  %74 = zext i16 %73 to i32
  %75 = getelementptr inbounds nuw i8, ptr %46, i64 208
  store i32 %74, ptr %75, align 8, !tbaa !68
  %76 = getelementptr inbounds nuw i8, ptr %64, i64 6
  %77 = load i16, ptr %76, align 2, !tbaa !69
  %78 = zext i16 %77 to i32
  %79 = getelementptr inbounds nuw i8, ptr %46, i64 188
  store i32 %78, ptr %79, align 4, !tbaa !70
  %80 = getelementptr inbounds nuw i8, ptr %46, i64 172
  store i32 0, ptr %80, align 4, !tbaa !71
  %81 = getelementptr inbounds nuw i8, ptr %46, i64 152
  store i64 0, ptr %81, align 8, !tbaa !72
  %82 = getelementptr inbounds nuw i8, ptr %46, i64 180
  store i32 0, ptr %82, align 4, !tbaa !73
  %83 = getelementptr inbounds nuw i8, ptr %46, i64 5932
  store i32 0, ptr %83, align 4, !tbaa !74
  %84 = getelementptr inbounds nuw i8, ptr %46, i64 184
  store i32 2, ptr %84, align 8, !tbaa !75
  %85 = getelementptr inbounds nuw i8, ptr %46, i64 160
  store i32 2, ptr %85, align 8, !tbaa !76
  %86 = getelementptr inbounds nuw i8, ptr %46, i64 168
  store i32 0, ptr %86, align 8, !tbaa !77
  %87 = getelementptr inbounds nuw i8, ptr %46, i64 128
  store i32 0, ptr %87, align 8, !tbaa !78
  br label %88

88:                                               ; preds = %11, %15, %18, %3, %7, %1, %42
  %89 = phi i32 [ 0, %42 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %89
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateSetDictionary(ptr noundef captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %641, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %641, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %641, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %641, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %641

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %641 [
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
  %24 = icmp eq ptr %1, null
  br i1 %24, label %641, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %27 = load i32, ptr %26, align 8, !tbaa !30
  switch i32 %27, label %34 [
    i32 2, label %641
    i32 1, label %28
  ]

28:                                               ; preds = %25
  %29 = icmp eq i32 %22, 42
  br i1 %29, label %30, label %641

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %32 = load i32, ptr %31, align 4, !tbaa !73
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %641

34:                                               ; preds = %25
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %36 = load i32, ptr %35, align 4, !tbaa !73
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %641

38:                                               ; preds = %34
  store i32 0, ptr %26, align 8, !tbaa !30
  %39 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %40 = load i32, ptr %39, align 8, !tbaa !32
  %41 = icmp ult i32 %2, %40
  br i1 %41, label %72, label %49

42:                                               ; preds = %30
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %44 = load i64, ptr %43, align 8, !tbaa !57
  %45 = tail call i64 @adler32(i64 noundef %44, ptr noundef nonnull %1, i32 noundef %2) #11
  store i64 %45, ptr %43, align 8, !tbaa !57
  store i32 0, ptr %26, align 8, !tbaa !30
  %46 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %47 = load i32, ptr %46, align 8, !tbaa !32
  %48 = icmp ult i32 %2, %47
  br i1 %48, label %72, label %65

49:                                               ; preds = %38
  %50 = icmp eq i32 %27, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %49
  %52 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %53 = load ptr, ptr %52, align 8, !tbaa !37
  %54 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %55 = load i32, ptr %54, align 4, !tbaa !36
  %56 = add i32 %55, -1
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds nuw [2 x i8], ptr %53, i64 %57
  store i16 0, ptr %58, align 2, !tbaa !60
  %59 = shl nuw nsw i64 %57, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %53, i8 0, i64 %59, i1 false)
  %60 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  store i32 0, ptr %60, align 8, !tbaa !61
  %61 = getelementptr inbounds nuw i8, ptr %15, i64 172
  store i32 0, ptr %61, align 4, !tbaa !71
  %62 = getelementptr inbounds nuw i8, ptr %15, i64 152
  store i64 0, ptr %62, align 8, !tbaa !72
  %63 = getelementptr inbounds nuw i8, ptr %15, i64 5932
  store i32 0, ptr %63, align 4, !tbaa !74
  %64 = load i32, ptr %39, align 8, !tbaa !32
  br label %65

65:                                               ; preds = %42, %51, %49
  %66 = phi ptr [ %35, %51 ], [ %35, %49 ], [ %31, %42 ]
  %67 = phi ptr [ %39, %51 ], [ %39, %49 ], [ %46, %42 ]
  %68 = phi i32 [ %64, %51 ], [ %40, %49 ], [ %47, %42 ]
  %69 = sub i32 %2, %68
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 %70
  br label %72

72:                                               ; preds = %42, %65, %38
  %73 = phi ptr [ %67, %65 ], [ %39, %38 ], [ %46, %42 ]
  %74 = phi ptr [ %66, %65 ], [ %35, %38 ], [ %31, %42 ]
  %75 = phi i32 [ %68, %65 ], [ %40, %38 ], [ %47, %42 ]
  %76 = phi i32 [ %68, %65 ], [ %2, %38 ], [ %2, %42 ]
  %77 = phi ptr [ %71, %65 ], [ %1, %38 ], [ %1, %42 ]
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %79 = load i32, ptr %78, align 8, !tbaa !79
  %80 = load ptr, ptr %0, align 8, !tbaa !80
  store i32 %76, ptr %78, align 8, !tbaa !79
  store ptr %77, ptr %0, align 8, !tbaa !80
  %81 = getelementptr inbounds nuw i8, ptr %15, i64 104
  %82 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %83 = add i32 %75, -262
  %84 = getelementptr inbounds nuw i8, ptr %15, i64 96
  %85 = zext i32 %75 to i64
  %86 = getelementptr inbounds nuw i8, ptr %15, i64 176
  %87 = getelementptr inbounds nuw i8, ptr %15, i64 152
  %88 = getelementptr inbounds nuw i8, ptr %15, i64 5932
  %89 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %90 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %91 = getelementptr inbounds nuw i8, ptr %15, i64 112
  %92 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  %93 = getelementptr inbounds nuw i8, ptr %15, i64 128
  %94 = getelementptr inbounds nuw i8, ptr %15, i64 144
  %95 = getelementptr inbounds nuw i8, ptr %15, i64 140
  %96 = getelementptr inbounds nuw i8, ptr %15, i64 88
  %97 = load i32, ptr %74, align 4, !tbaa !73
  br label %98

98:                                               ; preds = %306, %72
  %99 = phi i32 [ %254, %306 ], [ %97, %72 ]
  %100 = load i64, ptr %81, align 8, !tbaa !59
  %101 = zext i32 %99 to i64
  %102 = load i32, ptr %82, align 4, !tbaa !71
  %103 = zext i32 %102 to i64
  %104 = add nuw nsw i64 %101, %103
  %105 = sub i64 %100, %104
  %106 = trunc i64 %105 to i32
  %107 = load i32, ptr %73, align 8, !tbaa !32
  %108 = add i32 %83, %107
  %109 = icmp ult i32 %102, %108
  br i1 %109, label %213, label %110

110:                                              ; preds = %98
  %111 = load ptr, ptr %84, align 8, !tbaa !34
  %112 = getelementptr inbounds nuw i8, ptr %111, i64 %85
  %113 = sub i32 %75, %106
  %114 = zext i32 %113 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %111, ptr align 1 %112, i64 %114, i1 false)
  %115 = load i32, ptr %86, align 8, !tbaa !81
  %116 = sub i32 %115, %75
  store i32 %116, ptr %86, align 8, !tbaa !81
  %117 = load i32, ptr %82, align 4, !tbaa !71
  %118 = sub i32 %117, %75
  store i32 %118, ptr %82, align 4, !tbaa !71
  %119 = load i64, ptr %87, align 8, !tbaa !72
  %120 = sub nsw i64 %119, %85
  store i64 %120, ptr %87, align 8, !tbaa !72
  %121 = load i32, ptr %88, align 4, !tbaa !74
  %122 = icmp ugt i32 %121, %118
  br i1 %122, label %123, label %124

123:                                              ; preds = %110
  store i32 %118, ptr %88, align 4, !tbaa !74
  br label %124

124:                                              ; preds = %123, %110
  %125 = load i32, ptr %73, align 8, !tbaa !32
  %126 = load i32, ptr %89, align 4, !tbaa !36
  %127 = load ptr, ptr %90, align 8, !tbaa !37
  %128 = zext i32 %126 to i64
  %129 = getelementptr inbounds nuw [2 x i8], ptr %127, i64 %128
  %130 = add i32 %126, -1
  %131 = zext i32 %130 to i64
  %132 = add nuw nsw i64 %131, 1
  %133 = icmp ult i32 %130, 7
  br i1 %133, label %155, label %134

134:                                              ; preds = %124
  %135 = and i64 %132, 8589934584
  %136 = mul nsw i64 %135, -2
  %137 = getelementptr i8, ptr %129, i64 %136
  %138 = trunc i64 %135 to i32
  %139 = sub i32 %126, %138
  %140 = insertelement <8 x i32> poison, i32 %125, i64 0
  %141 = shufflevector <8 x i32> %140, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %142

142:                                              ; preds = %142, %134
  %143 = phi i64 [ 0, %134 ], [ %151, %142 ]
  %144 = mul i64 %143, -2
  %145 = getelementptr i8, ptr %129, i64 %144
  %146 = getelementptr inbounds i8, ptr %145, i64 -16
  %147 = load <8 x i16>, ptr %146, align 2, !tbaa !60
  %148 = zext <8 x i16> %147 to <8 x i32>
  %149 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %148, <8 x i32> %141)
  %150 = trunc nuw <8 x i32> %149 to <8 x i16>
  store <8 x i16> %150, ptr %146, align 2, !tbaa !60
  %151 = add nuw i64 %143, 8
  %152 = icmp eq i64 %151, %135
  br i1 %152, label %153, label %142, !llvm.loop !82

153:                                              ; preds = %142
  %154 = icmp eq i64 %132, %135
  br i1 %154, label %168, label %155

155:                                              ; preds = %124, %153
  %156 = phi ptr [ %129, %124 ], [ %137, %153 ]
  %157 = phi i32 [ %126, %124 ], [ %139, %153 ]
  br label %158

158:                                              ; preds = %155, %158
  %159 = phi ptr [ %161, %158 ], [ %156, %155 ]
  %160 = phi i32 [ %166, %158 ], [ %157, %155 ]
  %161 = getelementptr inbounds i8, ptr %159, i64 -2
  %162 = load i16, ptr %161, align 2, !tbaa !60
  %163 = zext i16 %162 to i32
  %164 = tail call i32 @llvm.usub.sat.i32(i32 %163, i32 %125)
  %165 = trunc nuw i32 %164 to i16
  store i16 %165, ptr %161, align 2, !tbaa !60
  %166 = add i32 %160, -1
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %158, !llvm.loop !86

168:                                              ; preds = %158, %153
  %169 = load ptr, ptr %91, align 8, !tbaa !35
  %170 = zext i32 %125 to i64
  %171 = getelementptr inbounds nuw [2 x i8], ptr %169, i64 %170
  %172 = add i32 %125, -1
  %173 = zext i32 %172 to i64
  %174 = add nuw nsw i64 %173, 1
  %175 = icmp ult i32 %172, 7
  br i1 %175, label %197, label %176

176:                                              ; preds = %168
  %177 = and i64 %174, 8589934584
  %178 = mul nsw i64 %177, -2
  %179 = getelementptr i8, ptr %171, i64 %178
  %180 = trunc i64 %177 to i32
  %181 = sub i32 %125, %180
  %182 = insertelement <8 x i32> poison, i32 %125, i64 0
  %183 = shufflevector <8 x i32> %182, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %184

184:                                              ; preds = %184, %176
  %185 = phi i64 [ 0, %176 ], [ %193, %184 ]
  %186 = mul i64 %185, -2
  %187 = getelementptr i8, ptr %171, i64 %186
  %188 = getelementptr inbounds i8, ptr %187, i64 -16
  %189 = load <8 x i16>, ptr %188, align 2, !tbaa !60
  %190 = zext <8 x i16> %189 to <8 x i32>
  %191 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %190, <8 x i32> %183)
  %192 = trunc nuw <8 x i32> %191 to <8 x i16>
  store <8 x i16> %192, ptr %188, align 2, !tbaa !60
  %193 = add nuw i64 %185, 8
  %194 = icmp eq i64 %193, %177
  br i1 %194, label %195, label %184, !llvm.loop !87

195:                                              ; preds = %184
  %196 = icmp eq i64 %174, %177
  br i1 %196, label %210, label %197

197:                                              ; preds = %168, %195
  %198 = phi ptr [ %171, %168 ], [ %179, %195 ]
  %199 = phi i32 [ %125, %168 ], [ %181, %195 ]
  br label %200

200:                                              ; preds = %197, %200
  %201 = phi ptr [ %203, %200 ], [ %198, %197 ]
  %202 = phi i32 [ %208, %200 ], [ %199, %197 ]
  %203 = getelementptr inbounds i8, ptr %201, i64 -2
  %204 = load i16, ptr %203, align 2, !tbaa !60
  %205 = zext i16 %204 to i32
  %206 = tail call i32 @llvm.usub.sat.i32(i32 %205, i32 %125)
  %207 = trunc nuw i32 %206 to i16
  store i16 %207, ptr %203, align 2, !tbaa !60
  %208 = add i32 %202, -1
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %200, !llvm.loop !88

210:                                              ; preds = %200, %195
  store i32 1, ptr %92, align 8, !tbaa !61
  %211 = add i32 %75, %106
  %212 = load i32, ptr %74, align 4, !tbaa !73
  br label %213

213:                                              ; preds = %210, %98
  %214 = phi i32 [ %212, %210 ], [ %99, %98 ]
  %215 = phi i32 [ %118, %210 ], [ %102, %98 ]
  %216 = phi i32 [ %211, %210 ], [ %106, %98 ]
  %217 = load ptr, ptr %15, align 8, !tbaa !20
  %218 = getelementptr inbounds nuw i8, ptr %217, i64 8
  %219 = load i32, ptr %218, align 8, !tbaa !79
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %311, label %221

221:                                              ; preds = %213
  %222 = load ptr, ptr %84, align 8, !tbaa !34
  %223 = zext i32 %215 to i64
  %224 = getelementptr inbounds nuw i8, ptr %222, i64 %223
  %225 = zext i32 %214 to i64
  %226 = getelementptr inbounds nuw i8, ptr %224, i64 %225
  %227 = tail call i32 @llvm.umin.i32(i32 %219, i32 %216)
  %228 = icmp eq i32 %216, 0
  br i1 %228, label %252, label %229

229:                                              ; preds = %221
  %230 = sub i32 %219, %227
  store i32 %230, ptr %218, align 8, !tbaa !79
  %231 = load ptr, ptr %217, align 8, !tbaa !80
  %232 = zext i32 %227 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %226, ptr align 1 %231, i64 %232, i1 false)
  %233 = getelementptr inbounds nuw i8, ptr %217, i64 56
  %234 = load ptr, ptr %233, align 8, !tbaa !19
  %235 = getelementptr inbounds nuw i8, ptr %234, i64 48
  %236 = load i32, ptr %235, align 8, !tbaa !30
  switch i32 %236, label %245 [
    i32 1, label %237
    i32 2, label %241
  ]

237:                                              ; preds = %229
  %238 = getelementptr inbounds nuw i8, ptr %217, i64 96
  %239 = load i64, ptr %238, align 8, !tbaa !57
  %240 = tail call i64 @adler32(i64 noundef %239, ptr noundef %226, i32 noundef %227) #11
  store i64 %240, ptr %238, align 8, !tbaa !57
  br label %245

241:                                              ; preds = %229
  %242 = getelementptr inbounds nuw i8, ptr %217, i64 96
  %243 = load i64, ptr %242, align 8, !tbaa !57
  %244 = tail call i64 @crc32(i64 noundef %243, ptr noundef %226, i32 noundef %227) #11
  store i64 %244, ptr %242, align 8, !tbaa !57
  br label %245

245:                                              ; preds = %241, %237, %229
  %246 = load ptr, ptr %217, align 8, !tbaa !80
  %247 = getelementptr inbounds nuw i8, ptr %246, i64 %232
  store ptr %247, ptr %217, align 8, !tbaa !80
  %248 = getelementptr inbounds nuw i8, ptr %217, i64 16
  %249 = load i64, ptr %248, align 8, !tbaa !53
  %250 = add i64 %249, %232
  store i64 %250, ptr %248, align 8, !tbaa !53
  %251 = load i32, ptr %74, align 4, !tbaa !73
  br label %252

252:                                              ; preds = %245, %221
  %253 = phi i32 [ %214, %221 ], [ %251, %245 ]
  %254 = add i32 %253, %227
  store i32 %254, ptr %74, align 4, !tbaa !73
  %255 = load i32, ptr %88, align 4, !tbaa !74
  %256 = add i32 %255, %254
  %257 = icmp ugt i32 %256, 2
  br i1 %257, label %258, label %304

258:                                              ; preds = %252
  %259 = load i32, ptr %82, align 4, !tbaa !71
  %260 = sub i32 %259, %255
  %261 = load ptr, ptr %84, align 8, !tbaa !34
  %262 = zext i32 %260 to i64
  %263 = getelementptr inbounds nuw i8, ptr %261, i64 %262
  %264 = load i8, ptr %263, align 1, !tbaa !8
  %265 = zext i8 %264 to i32
  store i32 %265, ptr %93, align 8, !tbaa !78
  %266 = load i32, ptr %94, align 8, !tbaa !51
  %267 = shl i32 %265, %266
  %268 = add i32 %260, 1
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds nuw i8, ptr %261, i64 %269
  %271 = load i8, ptr %270, align 1, !tbaa !8
  %272 = zext i8 %271 to i32
  %273 = xor i32 %267, %272
  %274 = load i32, ptr %95, align 4, !tbaa !50
  %275 = and i32 %273, %274
  store i32 %275, ptr %93, align 8, !tbaa !78
  br label %276

276:                                              ; preds = %281, %258
  %277 = phi i32 [ %289, %281 ], [ %275, %258 ]
  %278 = phi i32 [ %301, %281 ], [ %255, %258 ]
  %279 = phi i32 [ %300, %281 ], [ %260, %258 ]
  %280 = icmp eq i32 %278, 0
  br i1 %280, label %304, label %281

281:                                              ; preds = %276
  %282 = shl i32 %277, %266
  %283 = add i32 %279, 2
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds nuw i8, ptr %261, i64 %284
  %286 = load i8, ptr %285, align 1, !tbaa !8
  %287 = zext i8 %286 to i32
  %288 = xor i32 %282, %287
  %289 = and i32 %288, %274
  store i32 %289, ptr %93, align 8, !tbaa !78
  %290 = load ptr, ptr %90, align 8, !tbaa !37
  %291 = zext i32 %289 to i64
  %292 = getelementptr inbounds nuw [2 x i8], ptr %290, i64 %291
  %293 = load i16, ptr %292, align 2, !tbaa !60
  %294 = load ptr, ptr %91, align 8, !tbaa !35
  %295 = load i32, ptr %96, align 8, !tbaa !33
  %296 = and i32 %295, %279
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds nuw [2 x i8], ptr %294, i64 %297
  store i16 %293, ptr %298, align 2, !tbaa !60
  %299 = trunc i32 %279 to i16
  store i16 %299, ptr %292, align 2, !tbaa !60
  %300 = add i32 %279, 1
  %301 = add i32 %278, -1
  store i32 %301, ptr %88, align 4, !tbaa !74
  %302 = add i32 %301, %254
  %303 = icmp ult i32 %302, 3
  br i1 %303, label %304, label %276, !llvm.loop !89

304:                                              ; preds = %281, %276, %252
  %305 = icmp ult i32 %254, 262
  br i1 %305, label %306, label %311

306:                                              ; preds = %304
  %307 = load ptr, ptr %15, align 8, !tbaa !20
  %308 = getelementptr inbounds nuw i8, ptr %307, i64 8
  %309 = load i32, ptr %308, align 8, !tbaa !79
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %98, !llvm.loop !90

311:                                              ; preds = %306, %304, %213
  %312 = phi i32 [ %254, %306 ], [ %254, %304 ], [ %214, %213 ]
  %313 = getelementptr inbounds nuw i8, ptr %15, i64 5952
  %314 = load i64, ptr %313, align 8, !tbaa !38
  %315 = load i64, ptr %81, align 8, !tbaa !59
  %316 = icmp ult i64 %314, %315
  br i1 %316, label %317, label %344

317:                                              ; preds = %311
  %318 = load i32, ptr %82, align 4, !tbaa !71
  %319 = zext i32 %318 to i64
  %320 = zext i32 %312 to i64
  %321 = add nuw nsw i64 %320, %319
  %322 = icmp ult i64 %314, %321
  br i1 %322, label %323, label %329

323:                                              ; preds = %317
  %324 = sub i64 %315, %321
  %325 = tail call i64 @llvm.umin.i64(i64 %324, i64 258)
  %326 = load ptr, ptr %84, align 8, !tbaa !34
  %327 = getelementptr inbounds nuw i8, ptr %326, i64 %321
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %327, i8 0, i64 %325, i1 false)
  %328 = add nuw nsw i64 %325, %321
  br label %341

329:                                              ; preds = %317
  %330 = add nuw nsw i64 %321, 258
  %331 = icmp ult i64 %314, %330
  br i1 %331, label %332, label %344

332:                                              ; preds = %329
  %333 = sub nuw nsw i64 %330, %314
  %334 = sub i64 %315, %314
  %335 = tail call i64 @llvm.umin.i64(i64 %333, i64 %334)
  %336 = load ptr, ptr %84, align 8, !tbaa !34
  %337 = getelementptr inbounds nuw i8, ptr %336, i64 %314
  %338 = and i64 %335, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %337, i8 0, i64 %338, i1 false)
  %339 = load i64, ptr %313, align 8, !tbaa !38
  %340 = add i64 %339, %335
  br label %341

341:                                              ; preds = %332, %323
  %342 = phi i64 [ %328, %323 ], [ %340, %332 ]
  store i64 %342, ptr %313, align 8, !tbaa !38
  %343 = load i32, ptr %74, align 4, !tbaa !73
  br label %344

344:                                              ; preds = %311, %329, %341
  %345 = phi i32 [ %312, %311 ], [ %312, %329 ], [ %343, %341 ]
  %346 = icmp ugt i32 %345, 2
  br i1 %346, label %347, label %633

347:                                              ; preds = %344, %630
  %348 = phi i32 [ %631, %630 ], [ %345, %344 ]
  %349 = load i32, ptr %82, align 4, !tbaa !71
  %350 = add i32 %348, -2
  %351 = load i32, ptr %94, align 8, !tbaa !51
  %352 = load ptr, ptr %84, align 8, !tbaa !34
  %353 = load i32, ptr %95, align 4, !tbaa !50
  %354 = load ptr, ptr %90, align 8, !tbaa !37
  %355 = load ptr, ptr %91, align 8, !tbaa !35
  %356 = load i32, ptr %96, align 8, !tbaa !33
  %357 = load i32, ptr %93, align 8, !tbaa !78
  br label %358

358:                                              ; preds = %358, %347
  %359 = phi i32 [ %357, %347 ], [ %369, %358 ]
  %360 = phi i32 [ %349, %347 ], [ %377, %358 ]
  %361 = phi i32 [ %350, %347 ], [ %378, %358 ]
  %362 = shl i32 %359, %351
  %363 = add i32 %360, 2
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds nuw i8, ptr %352, i64 %364
  %366 = load i8, ptr %365, align 1, !tbaa !8
  %367 = zext i8 %366 to i32
  %368 = xor i32 %362, %367
  %369 = and i32 %368, %353
  store i32 %369, ptr %93, align 8, !tbaa !78
  %370 = zext i32 %369 to i64
  %371 = getelementptr inbounds nuw [2 x i8], ptr %354, i64 %370
  %372 = load i16, ptr %371, align 2, !tbaa !60
  %373 = and i32 %356, %360
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds nuw [2 x i8], ptr %355, i64 %374
  store i16 %372, ptr %375, align 2, !tbaa !60
  %376 = trunc i32 %360 to i16
  store i16 %376, ptr %371, align 2, !tbaa !60
  %377 = add i32 %360, 1
  %378 = add i32 %361, -1
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %358, !llvm.loop !91

380:                                              ; preds = %358
  store i32 %377, ptr %82, align 4, !tbaa !71
  store i32 2, ptr %74, align 4, !tbaa !73
  %381 = load i32, ptr %73, align 8, !tbaa !32
  %382 = add i32 %381, -262
  %383 = zext i32 %381 to i64
  %384 = insertelement <2 x i32> poison, i32 %381, i64 0
  %385 = shufflevector <2 x i32> %384, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %386

386:                                              ; preds = %593, %380
  %387 = phi i32 [ %541, %593 ], [ 2, %380 ]
  %388 = load i64, ptr %81, align 8, !tbaa !59
  %389 = zext nneg i32 %387 to i64
  %390 = load i32, ptr %82, align 4, !tbaa !71
  %391 = zext i32 %390 to i64
  %392 = add nuw nsw i64 %389, %391
  %393 = sub i64 %388, %392
  %394 = trunc i64 %393 to i32
  %395 = load i32, ptr %73, align 8, !tbaa !32
  %396 = add i32 %382, %395
  %397 = icmp ult i32 %390, %396
  br i1 %397, label %500, label %398

398:                                              ; preds = %386
  %399 = load ptr, ptr %84, align 8, !tbaa !34
  %400 = getelementptr inbounds nuw i8, ptr %399, i64 %383
  %401 = sub i32 %381, %394
  %402 = zext i32 %401 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %399, ptr align 1 %400, i64 %402, i1 false)
  %403 = load <2 x i32>, ptr %82, align 4, !tbaa !4
  %404 = sub <2 x i32> %403, %385
  store <2 x i32> %404, ptr %82, align 4, !tbaa !4
  %405 = load i64, ptr %87, align 8, !tbaa !72
  %406 = sub nsw i64 %405, %383
  store i64 %406, ptr %87, align 8, !tbaa !72
  %407 = load i32, ptr %88, align 4, !tbaa !74
  %408 = extractelement <2 x i32> %404, i64 0
  %409 = icmp ugt i32 %407, %408
  br i1 %409, label %410, label %411

410:                                              ; preds = %398
  store i32 %408, ptr %88, align 4, !tbaa !74
  br label %411

411:                                              ; preds = %410, %398
  %412 = load i32, ptr %73, align 8, !tbaa !32
  %413 = load i32, ptr %89, align 4, !tbaa !36
  %414 = load ptr, ptr %90, align 8, !tbaa !37
  %415 = zext i32 %413 to i64
  %416 = getelementptr inbounds nuw [2 x i8], ptr %414, i64 %415
  %417 = add i32 %413, -1
  %418 = zext i32 %417 to i64
  %419 = add nuw nsw i64 %418, 1
  %420 = icmp ult i32 %417, 7
  br i1 %420, label %442, label %421

421:                                              ; preds = %411
  %422 = and i64 %419, 8589934584
  %423 = mul nsw i64 %422, -2
  %424 = getelementptr i8, ptr %416, i64 %423
  %425 = trunc i64 %422 to i32
  %426 = sub i32 %413, %425
  %427 = insertelement <8 x i32> poison, i32 %412, i64 0
  %428 = shufflevector <8 x i32> %427, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %429

429:                                              ; preds = %429, %421
  %430 = phi i64 [ 0, %421 ], [ %438, %429 ]
  %431 = mul i64 %430, -2
  %432 = getelementptr i8, ptr %416, i64 %431
  %433 = getelementptr inbounds i8, ptr %432, i64 -16
  %434 = load <8 x i16>, ptr %433, align 2, !tbaa !60
  %435 = zext <8 x i16> %434 to <8 x i32>
  %436 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %435, <8 x i32> %428)
  %437 = trunc nuw <8 x i32> %436 to <8 x i16>
  store <8 x i16> %437, ptr %433, align 2, !tbaa !60
  %438 = add nuw i64 %430, 8
  %439 = icmp eq i64 %438, %422
  br i1 %439, label %440, label %429, !llvm.loop !92

440:                                              ; preds = %429
  %441 = icmp eq i64 %419, %422
  br i1 %441, label %455, label %442

442:                                              ; preds = %411, %440
  %443 = phi ptr [ %416, %411 ], [ %424, %440 ]
  %444 = phi i32 [ %413, %411 ], [ %426, %440 ]
  br label %445

445:                                              ; preds = %442, %445
  %446 = phi ptr [ %448, %445 ], [ %443, %442 ]
  %447 = phi i32 [ %453, %445 ], [ %444, %442 ]
  %448 = getelementptr inbounds i8, ptr %446, i64 -2
  %449 = load i16, ptr %448, align 2, !tbaa !60
  %450 = zext i16 %449 to i32
  %451 = tail call i32 @llvm.usub.sat.i32(i32 %450, i32 %412)
  %452 = trunc nuw i32 %451 to i16
  store i16 %452, ptr %448, align 2, !tbaa !60
  %453 = add i32 %447, -1
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %445, !llvm.loop !93

455:                                              ; preds = %445, %440
  %456 = load ptr, ptr %91, align 8, !tbaa !35
  %457 = zext i32 %412 to i64
  %458 = getelementptr inbounds nuw [2 x i8], ptr %456, i64 %457
  %459 = add i32 %412, -1
  %460 = zext i32 %459 to i64
  %461 = add nuw nsw i64 %460, 1
  %462 = icmp ult i32 %459, 7
  br i1 %462, label %484, label %463

463:                                              ; preds = %455
  %464 = and i64 %461, 8589934584
  %465 = mul nsw i64 %464, -2
  %466 = getelementptr i8, ptr %458, i64 %465
  %467 = trunc i64 %464 to i32
  %468 = sub i32 %412, %467
  %469 = insertelement <8 x i32> poison, i32 %412, i64 0
  %470 = shufflevector <8 x i32> %469, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %471

471:                                              ; preds = %471, %463
  %472 = phi i64 [ 0, %463 ], [ %480, %471 ]
  %473 = mul i64 %472, -2
  %474 = getelementptr i8, ptr %458, i64 %473
  %475 = getelementptr inbounds i8, ptr %474, i64 -16
  %476 = load <8 x i16>, ptr %475, align 2, !tbaa !60
  %477 = zext <8 x i16> %476 to <8 x i32>
  %478 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %477, <8 x i32> %470)
  %479 = trunc nuw <8 x i32> %478 to <8 x i16>
  store <8 x i16> %479, ptr %475, align 2, !tbaa !60
  %480 = add nuw i64 %472, 8
  %481 = icmp eq i64 %480, %464
  br i1 %481, label %482, label %471, !llvm.loop !94

482:                                              ; preds = %471
  %483 = icmp eq i64 %461, %464
  br i1 %483, label %497, label %484

484:                                              ; preds = %455, %482
  %485 = phi ptr [ %458, %455 ], [ %466, %482 ]
  %486 = phi i32 [ %412, %455 ], [ %468, %482 ]
  br label %487

487:                                              ; preds = %484, %487
  %488 = phi ptr [ %490, %487 ], [ %485, %484 ]
  %489 = phi i32 [ %495, %487 ], [ %486, %484 ]
  %490 = getelementptr inbounds i8, ptr %488, i64 -2
  %491 = load i16, ptr %490, align 2, !tbaa !60
  %492 = zext i16 %491 to i32
  %493 = tail call i32 @llvm.usub.sat.i32(i32 %492, i32 %412)
  %494 = trunc nuw i32 %493 to i16
  store i16 %494, ptr %490, align 2, !tbaa !60
  %495 = add i32 %489, -1
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %497, label %487, !llvm.loop !95

497:                                              ; preds = %487, %482
  store i32 1, ptr %92, align 8, !tbaa !61
  %498 = add i32 %381, %394
  %499 = load i32, ptr %74, align 4, !tbaa !73
  br label %500

500:                                              ; preds = %497, %386
  %501 = phi i32 [ %499, %497 ], [ %387, %386 ]
  %502 = phi i32 [ %408, %497 ], [ %390, %386 ]
  %503 = phi i32 [ %498, %497 ], [ %394, %386 ]
  %504 = load ptr, ptr %15, align 8, !tbaa !20
  %505 = getelementptr inbounds nuw i8, ptr %504, i64 8
  %506 = load i32, ptr %505, align 8, !tbaa !79
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %598, label %508

508:                                              ; preds = %500
  %509 = load ptr, ptr %84, align 8, !tbaa !34
  %510 = zext i32 %502 to i64
  %511 = getelementptr inbounds nuw i8, ptr %509, i64 %510
  %512 = zext i32 %501 to i64
  %513 = getelementptr inbounds nuw i8, ptr %511, i64 %512
  %514 = tail call i32 @llvm.umin.i32(i32 %506, i32 %503)
  %515 = icmp eq i32 %503, 0
  br i1 %515, label %539, label %516

516:                                              ; preds = %508
  %517 = sub i32 %506, %514
  store i32 %517, ptr %505, align 8, !tbaa !79
  %518 = load ptr, ptr %504, align 8, !tbaa !80
  %519 = zext i32 %514 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %513, ptr align 1 %518, i64 %519, i1 false)
  %520 = getelementptr inbounds nuw i8, ptr %504, i64 56
  %521 = load ptr, ptr %520, align 8, !tbaa !19
  %522 = getelementptr inbounds nuw i8, ptr %521, i64 48
  %523 = load i32, ptr %522, align 8, !tbaa !30
  switch i32 %523, label %532 [
    i32 1, label %524
    i32 2, label %528
  ]

524:                                              ; preds = %516
  %525 = getelementptr inbounds nuw i8, ptr %504, i64 96
  %526 = load i64, ptr %525, align 8, !tbaa !57
  %527 = tail call i64 @adler32(i64 noundef %526, ptr noundef %513, i32 noundef %514) #11
  store i64 %527, ptr %525, align 8, !tbaa !57
  br label %532

528:                                              ; preds = %516
  %529 = getelementptr inbounds nuw i8, ptr %504, i64 96
  %530 = load i64, ptr %529, align 8, !tbaa !57
  %531 = tail call i64 @crc32(i64 noundef %530, ptr noundef %513, i32 noundef %514) #11
  store i64 %531, ptr %529, align 8, !tbaa !57
  br label %532

532:                                              ; preds = %528, %524, %516
  %533 = load ptr, ptr %504, align 8, !tbaa !80
  %534 = getelementptr inbounds nuw i8, ptr %533, i64 %519
  store ptr %534, ptr %504, align 8, !tbaa !80
  %535 = getelementptr inbounds nuw i8, ptr %504, i64 16
  %536 = load i64, ptr %535, align 8, !tbaa !53
  %537 = add i64 %536, %519
  store i64 %537, ptr %535, align 8, !tbaa !53
  %538 = load i32, ptr %74, align 4, !tbaa !73
  br label %539

539:                                              ; preds = %532, %508
  %540 = phi i32 [ %501, %508 ], [ %538, %532 ]
  %541 = add i32 %540, %514
  store i32 %541, ptr %74, align 4, !tbaa !73
  %542 = load i32, ptr %88, align 4, !tbaa !74
  %543 = add i32 %542, %541
  %544 = icmp ugt i32 %543, 2
  br i1 %544, label %545, label %591

545:                                              ; preds = %539
  %546 = load i32, ptr %82, align 4, !tbaa !71
  %547 = sub i32 %546, %542
  %548 = load ptr, ptr %84, align 8, !tbaa !34
  %549 = zext i32 %547 to i64
  %550 = getelementptr inbounds nuw i8, ptr %548, i64 %549
  %551 = load i8, ptr %550, align 1, !tbaa !8
  %552 = zext i8 %551 to i32
  store i32 %552, ptr %93, align 8, !tbaa !78
  %553 = load i32, ptr %94, align 8, !tbaa !51
  %554 = shl i32 %552, %553
  %555 = add i32 %547, 1
  %556 = zext i32 %555 to i64
  %557 = getelementptr inbounds nuw i8, ptr %548, i64 %556
  %558 = load i8, ptr %557, align 1, !tbaa !8
  %559 = zext i8 %558 to i32
  %560 = xor i32 %554, %559
  %561 = load i32, ptr %95, align 4, !tbaa !50
  %562 = and i32 %560, %561
  store i32 %562, ptr %93, align 8, !tbaa !78
  br label %563

563:                                              ; preds = %568, %545
  %564 = phi i32 [ %576, %568 ], [ %562, %545 ]
  %565 = phi i32 [ %588, %568 ], [ %542, %545 ]
  %566 = phi i32 [ %587, %568 ], [ %547, %545 ]
  %567 = icmp eq i32 %565, 0
  br i1 %567, label %591, label %568

568:                                              ; preds = %563
  %569 = shl i32 %564, %553
  %570 = add i32 %566, 2
  %571 = zext i32 %570 to i64
  %572 = getelementptr inbounds nuw i8, ptr %548, i64 %571
  %573 = load i8, ptr %572, align 1, !tbaa !8
  %574 = zext i8 %573 to i32
  %575 = xor i32 %569, %574
  %576 = and i32 %575, %561
  store i32 %576, ptr %93, align 8, !tbaa !78
  %577 = load ptr, ptr %90, align 8, !tbaa !37
  %578 = zext i32 %576 to i64
  %579 = getelementptr inbounds nuw [2 x i8], ptr %577, i64 %578
  %580 = load i16, ptr %579, align 2, !tbaa !60
  %581 = load ptr, ptr %91, align 8, !tbaa !35
  %582 = load i32, ptr %96, align 8, !tbaa !33
  %583 = and i32 %582, %566
  %584 = zext i32 %583 to i64
  %585 = getelementptr inbounds nuw [2 x i8], ptr %581, i64 %584
  store i16 %580, ptr %585, align 2, !tbaa !60
  %586 = trunc i32 %566 to i16
  store i16 %586, ptr %579, align 2, !tbaa !60
  %587 = add i32 %566, 1
  %588 = add i32 %565, -1
  store i32 %588, ptr %88, align 4, !tbaa !74
  %589 = add i32 %588, %541
  %590 = icmp ult i32 %589, 3
  br i1 %590, label %591, label %563, !llvm.loop !89

591:                                              ; preds = %568, %563, %539
  %592 = icmp ult i32 %541, 262
  br i1 %592, label %593, label %598

593:                                              ; preds = %591
  %594 = load ptr, ptr %15, align 8, !tbaa !20
  %595 = getelementptr inbounds nuw i8, ptr %594, i64 8
  %596 = load i32, ptr %595, align 8, !tbaa !79
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %598, label %386, !llvm.loop !90

598:                                              ; preds = %593, %591, %500
  %599 = phi i32 [ %541, %593 ], [ %541, %591 ], [ %501, %500 ]
  %600 = load i64, ptr %313, align 8, !tbaa !38
  %601 = load i64, ptr %81, align 8, !tbaa !59
  %602 = icmp ult i64 %600, %601
  br i1 %602, label %603, label %630

603:                                              ; preds = %598
  %604 = load i32, ptr %82, align 4, !tbaa !71
  %605 = zext i32 %604 to i64
  %606 = zext i32 %599 to i64
  %607 = add nuw nsw i64 %606, %605
  %608 = icmp ult i64 %600, %607
  br i1 %608, label %609, label %615

609:                                              ; preds = %603
  %610 = sub i64 %601, %607
  %611 = tail call i64 @llvm.umin.i64(i64 %610, i64 258)
  %612 = load ptr, ptr %84, align 8, !tbaa !34
  %613 = getelementptr inbounds nuw i8, ptr %612, i64 %607
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %613, i8 0, i64 %611, i1 false)
  %614 = add nuw nsw i64 %611, %607
  br label %627

615:                                              ; preds = %603
  %616 = add nuw nsw i64 %607, 258
  %617 = icmp ult i64 %600, %616
  br i1 %617, label %618, label %630

618:                                              ; preds = %615
  %619 = sub nuw nsw i64 %616, %600
  %620 = sub i64 %601, %600
  %621 = tail call i64 @llvm.umin.i64(i64 %619, i64 %620)
  %622 = load ptr, ptr %84, align 8, !tbaa !34
  %623 = getelementptr inbounds nuw i8, ptr %622, i64 %600
  %624 = and i64 %621, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %623, i8 0, i64 %624, i1 false)
  %625 = load i64, ptr %313, align 8, !tbaa !38
  %626 = add i64 %625, %621
  br label %627

627:                                              ; preds = %618, %609
  %628 = phi i64 [ %614, %609 ], [ %626, %618 ]
  store i64 %628, ptr %313, align 8, !tbaa !38
  %629 = load i32, ptr %74, align 4, !tbaa !73
  br label %630

630:                                              ; preds = %598, %615, %627
  %631 = phi i32 [ %599, %598 ], [ %599, %615 ], [ %629, %627 ]
  %632 = icmp ugt i32 %631, 2
  br i1 %632, label %347, label %633, !llvm.loop !96

633:                                              ; preds = %630, %344
  %634 = phi i32 [ %345, %344 ], [ %631, %630 ]
  %635 = load i32, ptr %82, align 4, !tbaa !71
  %636 = add i32 %635, %634
  store i32 %636, ptr %82, align 4, !tbaa !71
  %637 = zext i32 %636 to i64
  store i64 %637, ptr %87, align 8, !tbaa !72
  store i32 %634, ptr %88, align 4, !tbaa !74
  store i32 0, ptr %74, align 4, !tbaa !73
  %638 = getelementptr inbounds nuw i8, ptr %15, i64 184
  store i32 2, ptr %638, align 8, !tbaa !75
  %639 = getelementptr inbounds nuw i8, ptr %15, i64 160
  store i32 2, ptr %639, align 8, !tbaa !76
  %640 = getelementptr inbounds nuw i8, ptr %15, i64 168
  store i32 0, ptr %640, align 8, !tbaa !77
  store ptr %80, ptr %0, align 8, !tbaa !80
  store i32 %79, ptr %78, align 8, !tbaa !79
  store i32 %27, ptr %26, align 8, !tbaa !30
  br label %641

641:                                              ; preds = %25, %13, %17, %20, %5, %9, %3, %34, %28, %30, %23, %633
  %642 = phi i32 [ 0, %633 ], [ -2, %23 ], [ -2, %30 ], [ -2, %28 ], [ -2, %25 ], [ -2, %34 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %642
}

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateGetDictionary(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #3 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %48, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %48, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %48, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %48, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %48

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %48 [
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
  %24 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %25 = load i32, ptr %24, align 4, !tbaa !71
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %27 = load i32, ptr %26, align 4, !tbaa !73
  %28 = add i32 %27, %25
  %29 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %30 = load i32, ptr %29, align 8, !tbaa !32
  %31 = tail call i32 @llvm.umin.i32(i32 %28, i32 %30)
  %32 = icmp ne ptr %1, null
  %33 = icmp ne i32 %31, 0
  %34 = and i1 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %23
  %36 = getelementptr inbounds nuw i8, ptr %15, i64 96
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = zext i32 %25 to i64
  %39 = getelementptr inbounds nuw i8, ptr %37, i64 %38
  %40 = zext i32 %27 to i64
  %41 = getelementptr inbounds nuw i8, ptr %39, i64 %40
  %42 = zext i32 %31 to i64
  %43 = sub nsw i64 0, %42
  %44 = getelementptr inbounds i8, ptr %41, i64 %43
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %44, i64 %42, i1 false)
  br label %45

45:                                               ; preds = %35, %23
  %46 = icmp eq ptr %2, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %45
  store i32 %31, ptr %2, align 4, !tbaa !4
  br label %48

48:                                               ; preds = %13, %17, %20, %5, %9, %3, %45, %47
  %49 = phi i32 [ 0, %45 ], [ 0, %47 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %49
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateResetKeep(ptr noundef captures(address) %0) local_unnamed_addr #0 {
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
  store i64 0, ptr %23, align 8, !tbaa !53
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  store i32 2, ptr %24, align 8, !tbaa !54
  %25 = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 0, ptr %25, align 8, !tbaa !55
  %26 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %27 = load ptr, ptr %26, align 8, !tbaa !40
  %28 = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %27, ptr %28, align 8, !tbaa !56
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 48
  %30 = load i32, ptr %29, align 8, !tbaa !30
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = sub nsw i32 0, %30
  store i32 %33, ptr %29, align 8, !tbaa !30
  br label %34

34:                                               ; preds = %32, %21
  %35 = phi i32 [ %33, %32 ], [ %30, %21 ]
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
  store i64 %43, ptr %44, align 8, !tbaa !57
  %45 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %45, align 4, !tbaa !58
  tail call void @_tr_init(ptr noundef nonnull %13) #11
  br label %46

46:                                               ; preds = %11, %15, %18, %3, %7, %1, %42
  %47 = phi i32 [ 0, %42 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %47
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_tr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateSetHeader(ptr noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !20
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !29
  switch i32 %21, label %28 [
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
  %23 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %24 = load i32, ptr %23, align 8, !tbaa !30
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw i8, ptr %14, i64 56
  store ptr %1, ptr %27, align 8, !tbaa !97
  br label %28

28:                                               ; preds = %12, %16, %19, %4, %8, %2, %22, %26
  %29 = phi i32 [ 0, %26 ], [ -2, %22 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -5, 1) i32 @deflatePending(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %37 [
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
  br i1 %24, label %28, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 5940
  %27 = load i32, ptr %26, align 4, !tbaa !98
  store i32 %27, ptr %2, align 4, !tbaa !4
  br label %28

28:                                               ; preds = %25, %23
  %29 = icmp eq ptr %1, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %32 = load i64, ptr %31, align 8, !tbaa !55
  %33 = trunc i64 %32 to i32
  %34 = icmp ult i64 %32, 4294967296
  %35 = select i1 %34, i32 %33, i32 -1
  store i32 %35, ptr %1, align 4
  %36 = select i1 %34, i32 0, i32 -5
  br label %37

37:                                               ; preds = %13, %17, %20, %5, %9, %3, %30, %28
  %38 = phi i32 [ %36, %30 ], [ 0, %28 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateUsed(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !20
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !29
  switch i32 %21, label %27 [
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
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw i8, ptr %14, i64 5944
  %26 = load i32, ptr %25, align 8, !tbaa !99
  store i32 %26, ptr %1, align 4, !tbaa !4
  br label %27

27:                                               ; preds = %12, %16, %19, %4, %8, %2, %22, %24
  %28 = phi i32 [ 0, %22 ], [ 0, %24 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflatePrime(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %52, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %52, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %52, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %52 [
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
  %24 = icmp ugt i32 %1, 16
  br i1 %24, label %52, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 5888
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  %28 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %29 = load ptr, ptr %28, align 8, !tbaa !56
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 2
  %31 = icmp ult ptr %27, %30
  br i1 %31, label %52, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds nuw i8, ptr %15, i64 5940
  %34 = getelementptr inbounds nuw i8, ptr %15, i64 5936
  br label %35

35:                                               ; preds = %32, %35
  %36 = phi i32 [ %50, %35 ], [ %1, %32 ]
  %37 = phi i32 [ %49, %35 ], [ %2, %32 ]
  %38 = load i32, ptr %33, align 4, !tbaa !98
  %39 = sub nsw i32 16, %38
  %40 = tail call i32 @llvm.smin.i32(i32 %39, i32 %36)
  %41 = shl nsw i32 -1, %40
  %42 = xor i32 %41, -1
  %43 = and i32 %37, %42
  %44 = shl i32 %43, %38
  %45 = load i16, ptr %34, align 8, !tbaa !100
  %46 = trunc i32 %44 to i16
  %47 = or i16 %45, %46
  store i16 %47, ptr %34, align 8, !tbaa !100
  %48 = add nsw i32 %40, %38
  store i32 %48, ptr %33, align 4, !tbaa !98
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #11
  %49 = ashr i32 %37, %40
  %50 = sub nsw i32 %36, %40
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %35, !llvm.loop !101

52:                                               ; preds = %35, %13, %17, %20, %5, %9, %3, %23, %25
  %53 = phi i32 [ -5, %23 ], [ -2, %13 ], [ -5, %25 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ 0, %35 ]
  ret i32 %53
}

declare void @_tr_flush_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflateParams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %885, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %885, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %885, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %885, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %885

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %885 [
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
  %24 = icmp eq i32 %1, -1
  %25 = select i1 %24, i32 6, i32 %1
  %26 = icmp ugt i32 %25, 9
  %27 = icmp ugt i32 %2, 4
  %28 = or i1 %27, %26
  br i1 %28, label %885, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds nuw i8, ptr %15, i64 196
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 200
  %32 = load i32, ptr %31, align 8, !tbaa !47
  %33 = icmp eq i32 %2, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load i32, ptr %30, align 4, !tbaa !46
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 8
  %39 = load ptr, ptr %38, align 8, !tbaa !102
  %40 = zext nneg i32 %25 to i64
  %41 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %40
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %43 = load ptr, ptr %42, align 8, !tbaa !102
  %44 = icmp eq ptr %39, %43
  br i1 %44, label %846, label %45

45:                                               ; preds = %34, %29
  %46 = getelementptr inbounds nuw i8, ptr %15, i64 76
  %47 = load i32, ptr %46, align 4, !tbaa !58
  %48 = icmp eq i32 %47, -2
  br i1 %48, label %846, label %49

49:                                               ; preds = %45
  switch i32 %22, label %885 [
    i32 42, label %50
    i32 57, label %50
    i32 69, label %50
    i32 73, label %50
    i32 91, label %50
    i32 103, label %50
    i32 113, label %50
    i32 666, label %50
  ]

50:                                               ; preds = %49, %49, %49, %49, %49, %49, %49, %49
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %52 = load ptr, ptr %51, align 8, !tbaa !103
  %53 = icmp eq ptr %52, null
  br i1 %53, label %65, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %56 = load i32, ptr %55, align 8, !tbaa !79
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %0, align 8, !tbaa !80
  %60 = icmp eq ptr %59, null
  %61 = icmp eq i32 %22, 666
  %62 = or i1 %61, %60
  br i1 %62, label %65, label %68

63:                                               ; preds = %54
  %64 = icmp eq i32 %22, 666
  br i1 %64, label %65, label %68

65:                                               ; preds = %63, %58, %50
  %66 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 32), align 16, !tbaa !42
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %66, ptr %67, align 8, !tbaa !9
  br label %885

68:                                               ; preds = %58, %63
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %70 = load i32, ptr %69, align 8, !tbaa !104
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %73, ptr %74, align 8, !tbaa !9
  br label %831

75:                                               ; preds = %68
  store i32 5, ptr %46, align 4, !tbaa !58
  %76 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %77 = load i64, ptr %76, align 8, !tbaa !55
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %112, label %79

79:                                               ; preds = %75
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #11
  %80 = load i64, ptr %76, align 8, !tbaa !55
  %81 = load i32, ptr %69, align 8, !tbaa !104
  %82 = zext i32 %81 to i64
  %83 = tail call i64 @llvm.umin.i64(i64 %80, i64 %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %105, label %85

85:                                               ; preds = %79
  %86 = trunc nuw i64 %83 to i32
  %87 = load ptr, ptr %51, align 8, !tbaa !103
  %88 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %89 = load ptr, ptr %88, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %87, ptr align 1 %89, i64 %83, i1 false)
  %90 = load ptr, ptr %51, align 8, !tbaa !103
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 %83
  store ptr %91, ptr %51, align 8, !tbaa !103
  %92 = load ptr, ptr %88, align 8, !tbaa !56
  %93 = getelementptr inbounds nuw i8, ptr %92, i64 %83
  store ptr %93, ptr %88, align 8, !tbaa !56
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %95 = load i64, ptr %94, align 8, !tbaa !105
  %96 = add i64 %95, %83
  store i64 %96, ptr %94, align 8, !tbaa !105
  %97 = load i32, ptr %69, align 8, !tbaa !104
  %98 = sub i32 %97, %86
  store i32 %98, ptr %69, align 8, !tbaa !104
  %99 = load i64, ptr %76, align 8, !tbaa !55
  %100 = sub i64 %99, %83
  store i64 %100, ptr %76, align 8, !tbaa !55
  %101 = icmp eq i64 %99, %83
  br i1 %101, label %102, label %105

102:                                              ; preds = %85
  %103 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %104 = load ptr, ptr %103, align 8, !tbaa !40
  store ptr %104, ptr %88, align 8, !tbaa !56
  br label %105

105:                                              ; preds = %102, %85, %79
  %106 = phi i64 [ %80, %79 ], [ %100, %85 ], [ 0, %102 ]
  %107 = phi i32 [ %81, %79 ], [ %98, %85 ], [ %98, %102 ]
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %105
  %110 = load i32, ptr %21, align 8, !tbaa !29
  br label %122

111:                                              ; preds = %105
  store i32 -1, ptr %46, align 4, !tbaa !58
  br label %831

112:                                              ; preds = %75
  br i1 %57, label %113, label %122

113:                                              ; preds = %112
  %114 = shl nsw i32 %47, 1
  %115 = icmp sgt i32 %47, 4
  %116 = select i1 %115, i32 -9, i32 0
  %117 = add i32 %116, %114
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %120, ptr %121, align 8, !tbaa !9
  br label %831

122:                                              ; preds = %113, %112, %109
  %123 = phi i64 [ %106, %109 ], [ 0, %112 ], [ 0, %113 ]
  %124 = phi i32 [ %110, %109 ], [ %22, %112 ], [ %22, %113 ]
  switch i32 %124, label %210 [
    i32 666, label %125
    i32 42, label %131
  ]

125:                                              ; preds = %122
  %126 = load i32, ptr %55, align 8, !tbaa !79
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %789, label %128

128:                                              ; preds = %125
  %129 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %129, ptr %130, align 8, !tbaa !9
  br label %831

131:                                              ; preds = %122
  %132 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %133 = load i32, ptr %132, align 8, !tbaa !30
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i32 113, ptr %21, align 8, !tbaa !29
  br label %786

136:                                              ; preds = %131
  %137 = getelementptr inbounds nuw i8, ptr %15, i64 84
  %138 = load i32, ptr %137, align 4, !tbaa !31
  %139 = shl i32 %138, 12
  %140 = add i32 %139, -30720
  %141 = load i32, ptr %31, align 8, !tbaa !47
  %142 = icmp sgt i32 %141, 1
  br i1 %142, label %151, label %143

143:                                              ; preds = %136
  %144 = load i32, ptr %30, align 4, !tbaa !46
  %145 = icmp slt i32 %144, 2
  br i1 %145, label %151, label %146

146:                                              ; preds = %143
  %147 = icmp samesign ult i32 %144, 6
  br i1 %147, label %151, label %148

148:                                              ; preds = %146
  %149 = icmp eq i32 %144, 6
  %150 = select i1 %149, i32 128, i32 192
  br label %151

151:                                              ; preds = %148, %146, %143, %136
  %152 = phi i32 [ 64, %146 ], [ 0, %136 ], [ %150, %148 ], [ 0, %143 ]
  %153 = or disjoint i32 %152, %140
  %154 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %155 = load i32, ptr %154, align 4, !tbaa !71
  %156 = icmp eq i32 %155, 0
  %157 = or disjoint i32 %153, 32
  %158 = select i1 %156, i32 %153, i32 %157
  %159 = urem i32 %158, 31
  %160 = or disjoint i32 %159, %158
  %161 = lshr i32 %158, 8
  %162 = trunc i32 %161 to i8
  %163 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %164 = load ptr, ptr %163, align 8, !tbaa !40
  %165 = add i64 %123, 1
  store i64 %165, ptr %76, align 8, !tbaa !55
  %166 = getelementptr inbounds nuw i8, ptr %164, i64 %123
  store i8 %162, ptr %166, align 1, !tbaa !8
  %167 = trunc i32 %160 to i8
  %168 = xor i8 %167, 31
  %169 = load ptr, ptr %163, align 8, !tbaa !40
  %170 = load i64, ptr %76, align 8, !tbaa !55
  %171 = add i64 %170, 1
  store i64 %171, ptr %76, align 8, !tbaa !55
  %172 = getelementptr inbounds nuw i8, ptr %169, i64 %170
  store i8 %168, ptr %172, align 1, !tbaa !8
  %173 = load i32, ptr %154, align 4, !tbaa !71
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %202, label %175

175:                                              ; preds = %151
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %177 = load i64, ptr %176, align 8, !tbaa !57
  %178 = lshr i64 %177, 16
  %179 = lshr i64 %177, 24
  %180 = trunc i64 %179 to i8
  %181 = load ptr, ptr %163, align 8, !tbaa !40
  %182 = load i64, ptr %76, align 8, !tbaa !55
  %183 = add i64 %182, 1
  store i64 %183, ptr %76, align 8, !tbaa !55
  %184 = getelementptr inbounds nuw i8, ptr %181, i64 %182
  store i8 %180, ptr %184, align 1, !tbaa !8
  %185 = trunc i64 %178 to i8
  %186 = load ptr, ptr %163, align 8, !tbaa !40
  %187 = load i64, ptr %76, align 8, !tbaa !55
  %188 = add i64 %187, 1
  store i64 %188, ptr %76, align 8, !tbaa !55
  %189 = getelementptr inbounds nuw i8, ptr %186, i64 %187
  store i8 %185, ptr %189, align 1, !tbaa !8
  %190 = load i64, ptr %176, align 8, !tbaa !57
  %191 = trunc i64 %190 to i8
  %192 = lshr i64 %190, 8
  %193 = trunc i64 %192 to i8
  %194 = load ptr, ptr %163, align 8, !tbaa !40
  %195 = load i64, ptr %76, align 8, !tbaa !55
  %196 = add i64 %195, 1
  store i64 %196, ptr %76, align 8, !tbaa !55
  %197 = getelementptr inbounds nuw i8, ptr %194, i64 %195
  store i8 %193, ptr %197, align 1, !tbaa !8
  %198 = load ptr, ptr %163, align 8, !tbaa !40
  %199 = load i64, ptr %76, align 8, !tbaa !55
  %200 = add i64 %199, 1
  store i64 %200, ptr %76, align 8, !tbaa !55
  %201 = getelementptr inbounds nuw i8, ptr %198, i64 %199
  store i8 %191, ptr %201, align 1, !tbaa !8
  br label %202

202:                                              ; preds = %175, %151
  %203 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %203, ptr %204, align 8, !tbaa !57
  store i32 113, ptr %21, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %205 = load i64, ptr %76, align 8, !tbaa !55
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %202
  %208 = load i32, ptr %21, align 8, !tbaa !29
  br label %210

209:                                              ; preds = %202
  store i32 -1, ptr %46, align 4, !tbaa !58
  br label %831

210:                                              ; preds = %207, %122
  %211 = phi i32 [ %208, %207 ], [ %124, %122 ]
  %212 = icmp eq i32 %211, 57
  br i1 %212, label %213, label %395

213:                                              ; preds = %210
  %214 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %215 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %214, ptr %215, align 8, !tbaa !57
  %216 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %217 = load ptr, ptr %216, align 8, !tbaa !40
  %218 = load i64, ptr %76, align 8, !tbaa !55
  %219 = add i64 %218, 1
  store i64 %219, ptr %76, align 8, !tbaa !55
  %220 = getelementptr inbounds nuw i8, ptr %217, i64 %218
  store i8 31, ptr %220, align 1, !tbaa !8
  %221 = load ptr, ptr %216, align 8, !tbaa !40
  %222 = load i64, ptr %76, align 8, !tbaa !55
  %223 = add i64 %222, 1
  store i64 %223, ptr %76, align 8, !tbaa !55
  %224 = getelementptr inbounds nuw i8, ptr %221, i64 %222
  store i8 -117, ptr %224, align 1, !tbaa !8
  %225 = load ptr, ptr %216, align 8, !tbaa !40
  %226 = load i64, ptr %76, align 8, !tbaa !55
  %227 = add i64 %226, 1
  store i64 %227, ptr %76, align 8, !tbaa !55
  %228 = getelementptr inbounds nuw i8, ptr %225, i64 %226
  store i8 8, ptr %228, align 1, !tbaa !8
  %229 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %230 = load ptr, ptr %229, align 8, !tbaa !97
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %274

232:                                              ; preds = %213
  %233 = load ptr, ptr %216, align 8, !tbaa !40
  %234 = load i64, ptr %76, align 8, !tbaa !55
  %235 = add i64 %234, 1
  store i64 %235, ptr %76, align 8, !tbaa !55
  %236 = getelementptr inbounds nuw i8, ptr %233, i64 %234
  store i8 0, ptr %236, align 1, !tbaa !8
  %237 = load ptr, ptr %216, align 8, !tbaa !40
  %238 = load i64, ptr %76, align 8, !tbaa !55
  %239 = add i64 %238, 1
  store i64 %239, ptr %76, align 8, !tbaa !55
  %240 = getelementptr inbounds nuw i8, ptr %237, i64 %238
  store i8 0, ptr %240, align 1, !tbaa !8
  %241 = load ptr, ptr %216, align 8, !tbaa !40
  %242 = load i64, ptr %76, align 8, !tbaa !55
  %243 = add i64 %242, 1
  store i64 %243, ptr %76, align 8, !tbaa !55
  %244 = getelementptr inbounds nuw i8, ptr %241, i64 %242
  store i8 0, ptr %244, align 1, !tbaa !8
  %245 = load ptr, ptr %216, align 8, !tbaa !40
  %246 = load i64, ptr %76, align 8, !tbaa !55
  %247 = add i64 %246, 1
  store i64 %247, ptr %76, align 8, !tbaa !55
  %248 = getelementptr inbounds nuw i8, ptr %245, i64 %246
  store i8 0, ptr %248, align 1, !tbaa !8
  %249 = load ptr, ptr %216, align 8, !tbaa !40
  %250 = load i64, ptr %76, align 8, !tbaa !55
  %251 = add i64 %250, 1
  store i64 %251, ptr %76, align 8, !tbaa !55
  %252 = getelementptr inbounds nuw i8, ptr %249, i64 %250
  store i8 0, ptr %252, align 1, !tbaa !8
  %253 = load i32, ptr %30, align 4, !tbaa !46
  %254 = icmp eq i32 %253, 9
  br i1 %254, label %261, label %255

255:                                              ; preds = %232
  %256 = load i32, ptr %31, align 8, !tbaa !47
  %257 = icmp sgt i32 %256, 1
  %258 = icmp slt i32 %253, 2
  %259 = or i1 %258, %257
  %260 = select i1 %259, i8 4, i8 0
  br label %261

261:                                              ; preds = %255, %232
  %262 = phi i8 [ %260, %255 ], [ 2, %232 ]
  %263 = load ptr, ptr %216, align 8, !tbaa !40
  %264 = load i64, ptr %76, align 8, !tbaa !55
  %265 = add i64 %264, 1
  store i64 %265, ptr %76, align 8, !tbaa !55
  %266 = getelementptr inbounds nuw i8, ptr %263, i64 %264
  store i8 %262, ptr %266, align 1, !tbaa !8
  %267 = load ptr, ptr %216, align 8, !tbaa !40
  %268 = load i64, ptr %76, align 8, !tbaa !55
  %269 = add i64 %268, 1
  store i64 %269, ptr %76, align 8, !tbaa !55
  %270 = getelementptr inbounds nuw i8, ptr %267, i64 %268
  store i8 3, ptr %270, align 1, !tbaa !8
  store i32 113, ptr %21, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %271 = load i64, ptr %76, align 8, !tbaa !55
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %393, label %273

273:                                              ; preds = %261
  store i32 -1, ptr %46, align 4, !tbaa !58
  br label %831

274:                                              ; preds = %213
  %275 = load i32, ptr %230, align 8, !tbaa !106
  %276 = icmp ne i32 %275, 0
  %277 = zext i1 %276 to i8
  %278 = getelementptr inbounds nuw i8, ptr %230, i64 68
  %279 = load i32, ptr %278, align 4, !tbaa !108
  %280 = icmp eq i32 %279, 0
  %281 = select i1 %280, i8 0, i8 2
  %282 = or disjoint i8 %281, %277
  %283 = getelementptr inbounds nuw i8, ptr %230, i64 24
  %284 = load ptr, ptr %283, align 8, !tbaa !109
  %285 = icmp eq ptr %284, null
  %286 = select i1 %285, i8 0, i8 4
  %287 = or disjoint i8 %282, %286
  %288 = getelementptr inbounds nuw i8, ptr %230, i64 40
  %289 = load ptr, ptr %288, align 8, !tbaa !110
  %290 = icmp eq ptr %289, null
  %291 = select i1 %290, i8 0, i8 8
  %292 = or disjoint i8 %287, %291
  %293 = getelementptr inbounds nuw i8, ptr %230, i64 56
  %294 = load ptr, ptr %293, align 8, !tbaa !111
  %295 = icmp eq ptr %294, null
  %296 = select i1 %295, i8 0, i8 16
  %297 = or disjoint i8 %292, %296
  %298 = load ptr, ptr %216, align 8, !tbaa !40
  %299 = load i64, ptr %76, align 8, !tbaa !55
  %300 = add i64 %299, 1
  store i64 %300, ptr %76, align 8, !tbaa !55
  %301 = getelementptr inbounds nuw i8, ptr %298, i64 %299
  store i8 %297, ptr %301, align 1, !tbaa !8
  %302 = load ptr, ptr %229, align 8, !tbaa !97
  %303 = getelementptr inbounds nuw i8, ptr %302, i64 8
  %304 = load i64, ptr %303, align 8, !tbaa !112
  %305 = trunc i64 %304 to i8
  %306 = load ptr, ptr %216, align 8, !tbaa !40
  %307 = load i64, ptr %76, align 8, !tbaa !55
  %308 = add i64 %307, 1
  store i64 %308, ptr %76, align 8, !tbaa !55
  %309 = getelementptr inbounds nuw i8, ptr %306, i64 %307
  store i8 %305, ptr %309, align 1, !tbaa !8
  %310 = load ptr, ptr %229, align 8, !tbaa !97
  %311 = getelementptr inbounds nuw i8, ptr %310, i64 8
  %312 = load i64, ptr %311, align 8, !tbaa !112
  %313 = lshr i64 %312, 8
  %314 = trunc i64 %313 to i8
  %315 = load ptr, ptr %216, align 8, !tbaa !40
  %316 = load i64, ptr %76, align 8, !tbaa !55
  %317 = add i64 %316, 1
  store i64 %317, ptr %76, align 8, !tbaa !55
  %318 = getelementptr inbounds nuw i8, ptr %315, i64 %316
  store i8 %314, ptr %318, align 1, !tbaa !8
  %319 = load ptr, ptr %229, align 8, !tbaa !97
  %320 = getelementptr inbounds nuw i8, ptr %319, i64 8
  %321 = load i64, ptr %320, align 8, !tbaa !112
  %322 = lshr i64 %321, 16
  %323 = trunc i64 %322 to i8
  %324 = load ptr, ptr %216, align 8, !tbaa !40
  %325 = load i64, ptr %76, align 8, !tbaa !55
  %326 = add i64 %325, 1
  store i64 %326, ptr %76, align 8, !tbaa !55
  %327 = getelementptr inbounds nuw i8, ptr %324, i64 %325
  store i8 %323, ptr %327, align 1, !tbaa !8
  %328 = load ptr, ptr %229, align 8, !tbaa !97
  %329 = getelementptr inbounds nuw i8, ptr %328, i64 8
  %330 = load i64, ptr %329, align 8, !tbaa !112
  %331 = lshr i64 %330, 24
  %332 = trunc i64 %331 to i8
  %333 = load ptr, ptr %216, align 8, !tbaa !40
  %334 = load i64, ptr %76, align 8, !tbaa !55
  %335 = add i64 %334, 1
  store i64 %335, ptr %76, align 8, !tbaa !55
  %336 = getelementptr inbounds nuw i8, ptr %333, i64 %334
  store i8 %332, ptr %336, align 1, !tbaa !8
  %337 = load i32, ptr %30, align 4, !tbaa !46
  %338 = icmp eq i32 %337, 9
  br i1 %338, label %345, label %339

339:                                              ; preds = %274
  %340 = load i32, ptr %31, align 8, !tbaa !47
  %341 = icmp sgt i32 %340, 1
  %342 = icmp slt i32 %337, 2
  %343 = or i1 %342, %341
  %344 = select i1 %343, i8 4, i8 0
  br label %345

345:                                              ; preds = %339, %274
  %346 = phi i8 [ %344, %339 ], [ 2, %274 ]
  %347 = load ptr, ptr %216, align 8, !tbaa !40
  %348 = load i64, ptr %76, align 8, !tbaa !55
  %349 = add i64 %348, 1
  store i64 %349, ptr %76, align 8, !tbaa !55
  %350 = getelementptr inbounds nuw i8, ptr %347, i64 %348
  store i8 %346, ptr %350, align 1, !tbaa !8
  %351 = load ptr, ptr %229, align 8, !tbaa !97
  %352 = getelementptr inbounds nuw i8, ptr %351, i64 20
  %353 = load i32, ptr %352, align 4, !tbaa !113
  %354 = trunc i32 %353 to i8
  %355 = load ptr, ptr %216, align 8, !tbaa !40
  %356 = load i64, ptr %76, align 8, !tbaa !55
  %357 = add i64 %356, 1
  store i64 %357, ptr %76, align 8, !tbaa !55
  %358 = getelementptr inbounds nuw i8, ptr %355, i64 %356
  store i8 %354, ptr %358, align 1, !tbaa !8
  %359 = load ptr, ptr %229, align 8, !tbaa !97
  %360 = getelementptr inbounds nuw i8, ptr %359, i64 24
  %361 = load ptr, ptr %360, align 8, !tbaa !109
  %362 = icmp eq ptr %361, null
  br i1 %362, label %381, label %363

363:                                              ; preds = %345
  %364 = getelementptr inbounds nuw i8, ptr %359, i64 32
  %365 = load i32, ptr %364, align 8, !tbaa !114
  %366 = trunc i32 %365 to i8
  %367 = load ptr, ptr %216, align 8, !tbaa !40
  %368 = load i64, ptr %76, align 8, !tbaa !55
  %369 = add i64 %368, 1
  store i64 %369, ptr %76, align 8, !tbaa !55
  %370 = getelementptr inbounds nuw i8, ptr %367, i64 %368
  store i8 %366, ptr %370, align 1, !tbaa !8
  %371 = load ptr, ptr %229, align 8, !tbaa !97
  %372 = getelementptr inbounds nuw i8, ptr %371, i64 32
  %373 = load i32, ptr %372, align 8, !tbaa !114
  %374 = lshr i32 %373, 8
  %375 = trunc i32 %374 to i8
  %376 = load ptr, ptr %216, align 8, !tbaa !40
  %377 = load i64, ptr %76, align 8, !tbaa !55
  %378 = add i64 %377, 1
  store i64 %378, ptr %76, align 8, !tbaa !55
  %379 = getelementptr inbounds nuw i8, ptr %376, i64 %377
  store i8 %375, ptr %379, align 1, !tbaa !8
  %380 = load ptr, ptr %229, align 8, !tbaa !97
  br label %381

381:                                              ; preds = %363, %345
  %382 = phi ptr [ %380, %363 ], [ %359, %345 ]
  %383 = getelementptr inbounds nuw i8, ptr %382, i64 68
  %384 = load i32, ptr %383, align 4, !tbaa !108
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %391, label %386

386:                                              ; preds = %381
  %387 = load i64, ptr %215, align 8, !tbaa !57
  %388 = load ptr, ptr %216, align 8, !tbaa !40
  %389 = load i64, ptr %76, align 8, !tbaa !55
  %390 = tail call i64 @crc32_z(i64 noundef %387, ptr noundef %388, i64 noundef %389) #11
  store i64 %390, ptr %215, align 8, !tbaa !57
  br label %391

391:                                              ; preds = %386, %381
  %392 = getelementptr inbounds nuw i8, ptr %15, i64 64
  store i64 0, ptr %392, align 8, !tbaa !115
  store i32 69, ptr %21, align 8, !tbaa !29
  br label %397

393:                                              ; preds = %261
  %394 = load i32, ptr %21, align 8, !tbaa !29
  br label %395

395:                                              ; preds = %393, %210
  %396 = phi i32 [ %394, %393 ], [ %211, %210 ]
  switch i32 %396, label %786 [
    i32 69, label %397
    i32 73, label %562
    i32 91, label %656
    i32 103, label %749
  ]

397:                                              ; preds = %395, %391
  %398 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %399 = load ptr, ptr %398, align 8, !tbaa !97
  %400 = getelementptr inbounds nuw i8, ptr %399, i64 24
  %401 = load ptr, ptr %400, align 8, !tbaa !109
  %402 = icmp eq ptr %401, null
  br i1 %402, label %561, label %403

403:                                              ; preds = %397
  %404 = load i64, ptr %76, align 8, !tbaa !55
  %405 = getelementptr inbounds nuw i8, ptr %399, i64 32
  %406 = load i32, ptr %405, align 8, !tbaa !114
  %407 = and i32 %406, 65535
  %408 = zext nneg i32 %407 to i64
  %409 = getelementptr inbounds nuw i8, ptr %15, i64 64
  %410 = load i64, ptr %409, align 8, !tbaa !115
  %411 = sub i64 %408, %410
  %412 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %413 = add i64 %411, %404
  %414 = load i64, ptr %412, align 8, !tbaa !41
  %415 = icmp ugt i64 %413, %414
  br i1 %415, label %416, label %536

416:                                              ; preds = %403
  %417 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %418 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %419 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %420 = sub i64 %414, %404
  %421 = load ptr, ptr %417, align 8, !tbaa !40
  %422 = getelementptr inbounds nuw i8, ptr %421, i64 %404
  %423 = getelementptr inbounds nuw i8, ptr %401, i64 %410
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %422, ptr nonnull align 1 %423, i64 %420, i1 false)
  %424 = load i64, ptr %412, align 8, !tbaa !41
  store i64 %424, ptr %76, align 8, !tbaa !55
  %425 = load ptr, ptr %398, align 8, !tbaa !97
  %426 = getelementptr inbounds nuw i8, ptr %425, i64 68
  %427 = load i32, ptr %426, align 4, !tbaa !108
  %428 = icmp ne i32 %427, 0
  %429 = icmp ugt i64 %424, %404
  %430 = select i1 %428, i1 %429, i1 false
  br i1 %430, label %431, label %437

431:                                              ; preds = %416
  %432 = load i64, ptr %418, align 8, !tbaa !57
  %433 = load ptr, ptr %417, align 8, !tbaa !40
  %434 = getelementptr inbounds nuw i8, ptr %433, i64 %404
  %435 = sub nuw i64 %424, %404
  %436 = tail call i64 @crc32_z(i64 noundef %432, ptr noundef %434, i64 noundef %435) #11
  store i64 %436, ptr %418, align 8, !tbaa !57
  br label %437

437:                                              ; preds = %431, %416
  %438 = load i64, ptr %409, align 8, !tbaa !115
  %439 = add i64 %438, %420
  store i64 %439, ptr %409, align 8, !tbaa !115
  %440 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %440) #11
  %441 = getelementptr inbounds nuw i8, ptr %440, i64 40
  %442 = load i64, ptr %441, align 8, !tbaa !55
  %443 = load i32, ptr %69, align 8, !tbaa !104
  %444 = zext i32 %443 to i64
  %445 = tail call i64 @llvm.umin.i64(i64 %442, i64 %444)
  %446 = icmp eq i64 %445, 0
  br i1 %446, label %466, label %447

447:                                              ; preds = %437
  %448 = trunc nuw i64 %445 to i32
  %449 = load ptr, ptr %51, align 8, !tbaa !103
  %450 = getelementptr inbounds nuw i8, ptr %440, i64 32
  %451 = load ptr, ptr %450, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %449, ptr align 1 %451, i64 %445, i1 false)
  %452 = load ptr, ptr %51, align 8, !tbaa !103
  %453 = getelementptr inbounds nuw i8, ptr %452, i64 %445
  store ptr %453, ptr %51, align 8, !tbaa !103
  %454 = load ptr, ptr %450, align 8, !tbaa !56
  %455 = getelementptr inbounds nuw i8, ptr %454, i64 %445
  store ptr %455, ptr %450, align 8, !tbaa !56
  %456 = load i64, ptr %419, align 8, !tbaa !105
  %457 = add i64 %456, %445
  store i64 %457, ptr %419, align 8, !tbaa !105
  %458 = load i32, ptr %69, align 8, !tbaa !104
  %459 = sub i32 %458, %448
  store i32 %459, ptr %69, align 8, !tbaa !104
  %460 = load i64, ptr %441, align 8, !tbaa !55
  %461 = sub i64 %460, %445
  store i64 %461, ptr %441, align 8, !tbaa !55
  %462 = icmp eq i64 %460, %445
  br i1 %462, label %463, label %466

463:                                              ; preds = %447
  %464 = getelementptr inbounds nuw i8, ptr %440, i64 16
  %465 = load ptr, ptr %464, align 8, !tbaa !40
  store ptr %465, ptr %450, align 8, !tbaa !56
  br label %466

466:                                              ; preds = %463, %447, %437
  %467 = load i64, ptr %76, align 8, !tbaa !55
  %468 = icmp eq i64 %467, 0
  br i1 %468, label %469, label %525

469:                                              ; preds = %466
  %470 = sub i64 %411, %420
  %471 = load i64, ptr %412, align 8, !tbaa !41
  %472 = icmp ugt i64 %470, %471
  br i1 %472, label %473, label %530

473:                                              ; preds = %469, %526
  %474 = phi i64 [ %528, %526 ], [ %471, %469 ]
  %475 = phi i64 [ %527, %526 ], [ %470, %469 ]
  %476 = load ptr, ptr %417, align 8, !tbaa !40
  %477 = load ptr, ptr %398, align 8, !tbaa !97
  %478 = getelementptr inbounds nuw i8, ptr %477, i64 24
  %479 = load ptr, ptr %478, align 8, !tbaa !109
  %480 = load i64, ptr %409, align 8, !tbaa !115
  %481 = getelementptr inbounds nuw i8, ptr %479, i64 %480
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %476, ptr align 1 %481, i64 %474, i1 false)
  %482 = load i64, ptr %412, align 8, !tbaa !41
  store i64 %482, ptr %76, align 8, !tbaa !55
  %483 = load ptr, ptr %398, align 8, !tbaa !97
  %484 = getelementptr inbounds nuw i8, ptr %483, i64 68
  %485 = load i32, ptr %484, align 4, !tbaa !108
  %486 = icmp ne i32 %485, 0
  %487 = icmp ne i64 %482, 0
  %488 = select i1 %486, i1 %487, i1 false
  br i1 %488, label %489, label %493

489:                                              ; preds = %473
  %490 = load i64, ptr %418, align 8, !tbaa !57
  %491 = load ptr, ptr %417, align 8, !tbaa !40
  %492 = tail call i64 @crc32_z(i64 noundef %490, ptr noundef %491, i64 noundef %482) #11
  store i64 %492, ptr %418, align 8, !tbaa !57
  br label %493

493:                                              ; preds = %489, %473
  %494 = load i64, ptr %409, align 8, !tbaa !115
  %495 = add i64 %494, %474
  store i64 %495, ptr %409, align 8, !tbaa !115
  %496 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %496) #11
  %497 = getelementptr inbounds nuw i8, ptr %496, i64 40
  %498 = load i64, ptr %497, align 8, !tbaa !55
  %499 = load i32, ptr %69, align 8, !tbaa !104
  %500 = zext i32 %499 to i64
  %501 = tail call i64 @llvm.umin.i64(i64 %498, i64 %500)
  %502 = icmp eq i64 %501, 0
  br i1 %502, label %522, label %503

503:                                              ; preds = %493
  %504 = trunc nuw i64 %501 to i32
  %505 = load ptr, ptr %51, align 8, !tbaa !103
  %506 = getelementptr inbounds nuw i8, ptr %496, i64 32
  %507 = load ptr, ptr %506, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %505, ptr align 1 %507, i64 %501, i1 false)
  %508 = load ptr, ptr %51, align 8, !tbaa !103
  %509 = getelementptr inbounds nuw i8, ptr %508, i64 %501
  store ptr %509, ptr %51, align 8, !tbaa !103
  %510 = load ptr, ptr %506, align 8, !tbaa !56
  %511 = getelementptr inbounds nuw i8, ptr %510, i64 %501
  store ptr %511, ptr %506, align 8, !tbaa !56
  %512 = load i64, ptr %419, align 8, !tbaa !105
  %513 = add i64 %512, %501
  store i64 %513, ptr %419, align 8, !tbaa !105
  %514 = load i32, ptr %69, align 8, !tbaa !104
  %515 = sub i32 %514, %504
  store i32 %515, ptr %69, align 8, !tbaa !104
  %516 = load i64, ptr %497, align 8, !tbaa !55
  %517 = sub i64 %516, %501
  store i64 %517, ptr %497, align 8, !tbaa !55
  %518 = icmp eq i64 %516, %501
  br i1 %518, label %519, label %522

519:                                              ; preds = %503
  %520 = getelementptr inbounds nuw i8, ptr %496, i64 16
  %521 = load ptr, ptr %520, align 8, !tbaa !40
  store ptr %521, ptr %506, align 8, !tbaa !56
  br label %522

522:                                              ; preds = %519, %503, %493
  %523 = load i64, ptr %76, align 8, !tbaa !55
  %524 = icmp eq i64 %523, 0
  br i1 %524, label %526, label %525

525:                                              ; preds = %522, %466
  store i32 -1, ptr %46, align 4, !tbaa !58
  br label %831

526:                                              ; preds = %522
  %527 = sub i64 %475, %474
  %528 = load i64, ptr %412, align 8, !tbaa !41
  %529 = icmp ugt i64 %527, %528
  br i1 %529, label %473, label %530, !llvm.loop !116

530:                                              ; preds = %526, %469
  %531 = phi i64 [ %470, %469 ], [ %527, %526 ]
  %532 = load ptr, ptr %398, align 8, !tbaa !97
  %533 = getelementptr inbounds nuw i8, ptr %532, i64 24
  %534 = load ptr, ptr %533, align 8, !tbaa !109
  %535 = load i64, ptr %409, align 8, !tbaa !115
  br label %536

536:                                              ; preds = %530, %403
  %537 = phi i64 [ %410, %403 ], [ %535, %530 ]
  %538 = phi ptr [ %401, %403 ], [ %534, %530 ]
  %539 = phi i64 [ %404, %403 ], [ 0, %530 ]
  %540 = phi i64 [ %411, %403 ], [ %531, %530 ]
  %541 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %542 = load ptr, ptr %541, align 8, !tbaa !40
  %543 = getelementptr inbounds nuw i8, ptr %542, i64 %539
  %544 = getelementptr inbounds nuw i8, ptr %538, i64 %537
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %543, ptr align 1 %544, i64 %540, i1 false)
  %545 = load i64, ptr %76, align 8, !tbaa !55
  %546 = add i64 %545, %540
  store i64 %546, ptr %76, align 8, !tbaa !55
  %547 = load ptr, ptr %398, align 8, !tbaa !97
  %548 = getelementptr inbounds nuw i8, ptr %547, i64 68
  %549 = load i32, ptr %548, align 4, !tbaa !108
  %550 = icmp ne i32 %549, 0
  %551 = icmp ugt i64 %546, %539
  %552 = select i1 %550, i1 %551, i1 false
  br i1 %552, label %553, label %560

553:                                              ; preds = %536
  %554 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %555 = load i64, ptr %554, align 8, !tbaa !57
  %556 = load ptr, ptr %541, align 8, !tbaa !40
  %557 = getelementptr inbounds nuw i8, ptr %556, i64 %539
  %558 = sub nuw i64 %546, %539
  %559 = tail call i64 @crc32_z(i64 noundef %555, ptr noundef %557, i64 noundef %558) #11
  store i64 %559, ptr %554, align 8, !tbaa !57
  br label %560

560:                                              ; preds = %553, %536
  store i64 0, ptr %409, align 8, !tbaa !115
  br label %561

561:                                              ; preds = %560, %397
  store i32 73, ptr %21, align 8, !tbaa !29
  br label %562

562:                                              ; preds = %561, %395
  %563 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %564 = load ptr, ptr %563, align 8, !tbaa !97
  %565 = getelementptr inbounds nuw i8, ptr %564, i64 40
  %566 = load ptr, ptr %565, align 8, !tbaa !110
  %567 = icmp eq ptr %566, null
  br i1 %567, label %655, label %568

568:                                              ; preds = %562
  %569 = load i64, ptr %76, align 8, !tbaa !55
  %570 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %571 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %572 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %573 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %574 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %575

575:                                              ; preds = %626, %568
  %576 = phi i64 [ %569, %568 ], [ %629, %626 ]
  %577 = load i64, ptr %76, align 8, !tbaa !55
  %578 = load i64, ptr %570, align 8, !tbaa !41
  %579 = icmp eq i64 %577, %578
  %580 = load ptr, ptr %563, align 8, !tbaa !97
  br i1 %579, label %581, label %626

581:                                              ; preds = %575
  %582 = getelementptr inbounds nuw i8, ptr %580, i64 68
  %583 = load i32, ptr %582, align 4, !tbaa !108
  %584 = icmp ne i32 %583, 0
  %585 = icmp ugt i64 %577, %576
  %586 = select i1 %584, i1 %585, i1 false
  br i1 %586, label %587, label %593

587:                                              ; preds = %581
  %588 = load i64, ptr %571, align 8, !tbaa !57
  %589 = load ptr, ptr %572, align 8, !tbaa !40
  %590 = getelementptr inbounds nuw i8, ptr %589, i64 %576
  %591 = sub nuw i64 %577, %576
  %592 = tail call i64 @crc32_z(i64 noundef %588, ptr noundef %590, i64 noundef %591) #11
  store i64 %592, ptr %571, align 8, !tbaa !57
  br label %593

593:                                              ; preds = %587, %581
  %594 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %594) #11
  %595 = getelementptr inbounds nuw i8, ptr %594, i64 40
  %596 = load i64, ptr %595, align 8, !tbaa !55
  %597 = load i32, ptr %69, align 8, !tbaa !104
  %598 = zext i32 %597 to i64
  %599 = tail call i64 @llvm.umin.i64(i64 %596, i64 %598)
  %600 = icmp eq i64 %599, 0
  br i1 %600, label %620, label %601

601:                                              ; preds = %593
  %602 = trunc nuw i64 %599 to i32
  %603 = load ptr, ptr %51, align 8, !tbaa !103
  %604 = getelementptr inbounds nuw i8, ptr %594, i64 32
  %605 = load ptr, ptr %604, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %603, ptr align 1 %605, i64 %599, i1 false)
  %606 = load ptr, ptr %51, align 8, !tbaa !103
  %607 = getelementptr inbounds nuw i8, ptr %606, i64 %599
  store ptr %607, ptr %51, align 8, !tbaa !103
  %608 = load ptr, ptr %604, align 8, !tbaa !56
  %609 = getelementptr inbounds nuw i8, ptr %608, i64 %599
  store ptr %609, ptr %604, align 8, !tbaa !56
  %610 = load i64, ptr %573, align 8, !tbaa !105
  %611 = add i64 %610, %599
  store i64 %611, ptr %573, align 8, !tbaa !105
  %612 = load i32, ptr %69, align 8, !tbaa !104
  %613 = sub i32 %612, %602
  store i32 %613, ptr %69, align 8, !tbaa !104
  %614 = load i64, ptr %595, align 8, !tbaa !55
  %615 = sub i64 %614, %599
  store i64 %615, ptr %595, align 8, !tbaa !55
  %616 = icmp eq i64 %614, %599
  br i1 %616, label %617, label %620

617:                                              ; preds = %601
  %618 = getelementptr inbounds nuw i8, ptr %594, i64 16
  %619 = load ptr, ptr %618, align 8, !tbaa !40
  store ptr %619, ptr %604, align 8, !tbaa !56
  br label %620

620:                                              ; preds = %617, %601, %593
  %621 = load i64, ptr %76, align 8, !tbaa !55
  %622 = icmp eq i64 %621, 0
  br i1 %622, label %623, label %625

623:                                              ; preds = %620
  %624 = load ptr, ptr %563, align 8, !tbaa !97
  br label %626

625:                                              ; preds = %620
  store i32 -1, ptr %46, align 4, !tbaa !58
  br label %831

626:                                              ; preds = %623, %575
  %627 = phi i64 [ %577, %575 ], [ 0, %623 ]
  %628 = phi ptr [ %580, %575 ], [ %624, %623 ]
  %629 = phi i64 [ %576, %575 ], [ 0, %623 ]
  %630 = getelementptr inbounds nuw i8, ptr %628, i64 40
  %631 = load ptr, ptr %630, align 8, !tbaa !110
  %632 = load i64, ptr %574, align 8, !tbaa !115
  %633 = add i64 %632, 1
  store i64 %633, ptr %574, align 8, !tbaa !115
  %634 = getelementptr inbounds nuw i8, ptr %631, i64 %632
  %635 = load i8, ptr %634, align 1, !tbaa !8
  %636 = load ptr, ptr %572, align 8, !tbaa !40
  %637 = add i64 %627, 1
  store i64 %637, ptr %76, align 8, !tbaa !55
  %638 = getelementptr inbounds nuw i8, ptr %636, i64 %627
  store i8 %635, ptr %638, align 1, !tbaa !8
  %639 = icmp eq i8 %635, 0
  br i1 %639, label %640, label %575, !llvm.loop !118

640:                                              ; preds = %626
  %641 = load ptr, ptr %563, align 8, !tbaa !97
  %642 = getelementptr inbounds nuw i8, ptr %641, i64 68
  %643 = load i32, ptr %642, align 4, !tbaa !108
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %654, label %645

645:                                              ; preds = %640
  %646 = load i64, ptr %76, align 8, !tbaa !55
  %647 = icmp ugt i64 %646, %629
  br i1 %647, label %648, label %654

648:                                              ; preds = %645
  %649 = load i64, ptr %571, align 8, !tbaa !57
  %650 = load ptr, ptr %572, align 8, !tbaa !40
  %651 = getelementptr inbounds nuw i8, ptr %650, i64 %629
  %652 = sub nuw i64 %646, %629
  %653 = tail call i64 @crc32_z(i64 noundef %649, ptr noundef %651, i64 noundef %652) #11
  store i64 %653, ptr %571, align 8, !tbaa !57
  br label %654

654:                                              ; preds = %648, %645, %640
  store i64 0, ptr %574, align 8, !tbaa !115
  br label %655

655:                                              ; preds = %654, %562
  store i32 91, ptr %21, align 8, !tbaa !29
  br label %656

656:                                              ; preds = %655, %395
  %657 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %658 = load ptr, ptr %657, align 8, !tbaa !97
  %659 = getelementptr inbounds nuw i8, ptr %658, i64 56
  %660 = load ptr, ptr %659, align 8, !tbaa !111
  %661 = icmp eq ptr %660, null
  br i1 %661, label %748, label %662

662:                                              ; preds = %656
  %663 = load i64, ptr %76, align 8, !tbaa !55
  %664 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %665 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %666 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %667 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %668 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %669

669:                                              ; preds = %720, %662
  %670 = phi i64 [ %663, %662 ], [ %723, %720 ]
  %671 = load i64, ptr %76, align 8, !tbaa !55
  %672 = load i64, ptr %664, align 8, !tbaa !41
  %673 = icmp eq i64 %671, %672
  %674 = load ptr, ptr %657, align 8, !tbaa !97
  br i1 %673, label %675, label %720

675:                                              ; preds = %669
  %676 = getelementptr inbounds nuw i8, ptr %674, i64 68
  %677 = load i32, ptr %676, align 4, !tbaa !108
  %678 = icmp ne i32 %677, 0
  %679 = icmp ugt i64 %671, %670
  %680 = select i1 %678, i1 %679, i1 false
  br i1 %680, label %681, label %687

681:                                              ; preds = %675
  %682 = load i64, ptr %665, align 8, !tbaa !57
  %683 = load ptr, ptr %666, align 8, !tbaa !40
  %684 = getelementptr inbounds nuw i8, ptr %683, i64 %670
  %685 = sub nuw i64 %671, %670
  %686 = tail call i64 @crc32_z(i64 noundef %682, ptr noundef %684, i64 noundef %685) #11
  store i64 %686, ptr %665, align 8, !tbaa !57
  br label %687

687:                                              ; preds = %681, %675
  %688 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %688) #11
  %689 = getelementptr inbounds nuw i8, ptr %688, i64 40
  %690 = load i64, ptr %689, align 8, !tbaa !55
  %691 = load i32, ptr %69, align 8, !tbaa !104
  %692 = zext i32 %691 to i64
  %693 = tail call i64 @llvm.umin.i64(i64 %690, i64 %692)
  %694 = icmp eq i64 %693, 0
  br i1 %694, label %714, label %695

695:                                              ; preds = %687
  %696 = trunc nuw i64 %693 to i32
  %697 = load ptr, ptr %51, align 8, !tbaa !103
  %698 = getelementptr inbounds nuw i8, ptr %688, i64 32
  %699 = load ptr, ptr %698, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %697, ptr align 1 %699, i64 %693, i1 false)
  %700 = load ptr, ptr %51, align 8, !tbaa !103
  %701 = getelementptr inbounds nuw i8, ptr %700, i64 %693
  store ptr %701, ptr %51, align 8, !tbaa !103
  %702 = load ptr, ptr %698, align 8, !tbaa !56
  %703 = getelementptr inbounds nuw i8, ptr %702, i64 %693
  store ptr %703, ptr %698, align 8, !tbaa !56
  %704 = load i64, ptr %667, align 8, !tbaa !105
  %705 = add i64 %704, %693
  store i64 %705, ptr %667, align 8, !tbaa !105
  %706 = load i32, ptr %69, align 8, !tbaa !104
  %707 = sub i32 %706, %696
  store i32 %707, ptr %69, align 8, !tbaa !104
  %708 = load i64, ptr %689, align 8, !tbaa !55
  %709 = sub i64 %708, %693
  store i64 %709, ptr %689, align 8, !tbaa !55
  %710 = icmp eq i64 %708, %693
  br i1 %710, label %711, label %714

711:                                              ; preds = %695
  %712 = getelementptr inbounds nuw i8, ptr %688, i64 16
  %713 = load ptr, ptr %712, align 8, !tbaa !40
  store ptr %713, ptr %698, align 8, !tbaa !56
  br label %714

714:                                              ; preds = %711, %695, %687
  %715 = load i64, ptr %76, align 8, !tbaa !55
  %716 = icmp eq i64 %715, 0
  br i1 %716, label %717, label %719

717:                                              ; preds = %714
  %718 = load ptr, ptr %657, align 8, !tbaa !97
  br label %720

719:                                              ; preds = %714
  store i32 -1, ptr %46, align 4, !tbaa !58
  br label %831

720:                                              ; preds = %717, %669
  %721 = phi i64 [ %671, %669 ], [ 0, %717 ]
  %722 = phi ptr [ %674, %669 ], [ %718, %717 ]
  %723 = phi i64 [ %670, %669 ], [ 0, %717 ]
  %724 = getelementptr inbounds nuw i8, ptr %722, i64 56
  %725 = load ptr, ptr %724, align 8, !tbaa !111
  %726 = load i64, ptr %668, align 8, !tbaa !115
  %727 = add i64 %726, 1
  store i64 %727, ptr %668, align 8, !tbaa !115
  %728 = getelementptr inbounds nuw i8, ptr %725, i64 %726
  %729 = load i8, ptr %728, align 1, !tbaa !8
  %730 = load ptr, ptr %666, align 8, !tbaa !40
  %731 = add i64 %721, 1
  store i64 %731, ptr %76, align 8, !tbaa !55
  %732 = getelementptr inbounds nuw i8, ptr %730, i64 %721
  store i8 %729, ptr %732, align 1, !tbaa !8
  %733 = icmp eq i8 %729, 0
  br i1 %733, label %734, label %669, !llvm.loop !119

734:                                              ; preds = %720
  %735 = load ptr, ptr %657, align 8, !tbaa !97
  %736 = getelementptr inbounds nuw i8, ptr %735, i64 68
  %737 = load i32, ptr %736, align 4, !tbaa !108
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %748, label %739

739:                                              ; preds = %734
  %740 = load i64, ptr %76, align 8, !tbaa !55
  %741 = icmp ugt i64 %740, %723
  br i1 %741, label %742, label %748

742:                                              ; preds = %739
  %743 = load i64, ptr %665, align 8, !tbaa !57
  %744 = load ptr, ptr %666, align 8, !tbaa !40
  %745 = getelementptr inbounds nuw i8, ptr %744, i64 %723
  %746 = sub nuw i64 %740, %723
  %747 = tail call i64 @crc32_z(i64 noundef %743, ptr noundef %745, i64 noundef %746) #11
  store i64 %747, ptr %665, align 8, !tbaa !57
  br label %748

748:                                              ; preds = %742, %739, %734, %656
  store i32 103, ptr %21, align 8, !tbaa !29
  br label %749

749:                                              ; preds = %748, %395
  %750 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %751 = load ptr, ptr %750, align 8, !tbaa !97
  %752 = getelementptr inbounds nuw i8, ptr %751, i64 68
  %753 = load i32, ptr %752, align 4, !tbaa !108
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %782, label %755

755:                                              ; preds = %749
  %756 = load i64, ptr %76, align 8, !tbaa !55
  %757 = add i64 %756, 2
  %758 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %759 = load i64, ptr %758, align 8, !tbaa !41
  %760 = icmp ugt i64 %757, %759
  br i1 %760, label %761, label %765

761:                                              ; preds = %755
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %762 = load i64, ptr %76, align 8, !tbaa !55
  %763 = icmp eq i64 %762, 0
  br i1 %763, label %765, label %764

764:                                              ; preds = %761
  store i32 -1, ptr %46, align 4, !tbaa !58
  br label %831

765:                                              ; preds = %761, %755
  %766 = phi i64 [ 0, %761 ], [ %756, %755 ]
  %767 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %768 = load i64, ptr %767, align 8, !tbaa !57
  %769 = trunc i64 %768 to i8
  %770 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %771 = load ptr, ptr %770, align 8, !tbaa !40
  %772 = add i64 %766, 1
  store i64 %772, ptr %76, align 8, !tbaa !55
  %773 = getelementptr inbounds nuw i8, ptr %771, i64 %766
  store i8 %769, ptr %773, align 1, !tbaa !8
  %774 = load i64, ptr %767, align 8, !tbaa !57
  %775 = lshr i64 %774, 8
  %776 = trunc i64 %775 to i8
  %777 = load ptr, ptr %770, align 8, !tbaa !40
  %778 = load i64, ptr %76, align 8, !tbaa !55
  %779 = add i64 %778, 1
  store i64 %779, ptr %76, align 8, !tbaa !55
  %780 = getelementptr inbounds nuw i8, ptr %777, i64 %778
  store i8 %776, ptr %780, align 1, !tbaa !8
  %781 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  store i64 %781, ptr %767, align 8, !tbaa !57
  br label %782

782:                                              ; preds = %765, %749
  store i32 113, ptr %21, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %783 = load i64, ptr %76, align 8, !tbaa !55
  %784 = icmp eq i64 %783, 0
  br i1 %784, label %786, label %785

785:                                              ; preds = %782
  store i32 -1, ptr %46, align 4, !tbaa !58
  br label %831

786:                                              ; preds = %782, %395, %135
  %787 = load i32, ptr %55, align 8, !tbaa !79
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %789, label %796

789:                                              ; preds = %786, %125
  %790 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %791 = load i32, ptr %790, align 4, !tbaa !73
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %793, label %796

793:                                              ; preds = %789
  %794 = load i32, ptr %21, align 8, !tbaa !29
  %795 = icmp eq i32 %794, 666
  br i1 %795, label %831, label %796

796:                                              ; preds = %793, %789, %786
  %797 = load i32, ptr %30, align 4, !tbaa !46
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %799, label %801

799:                                              ; preds = %796
  %800 = tail call i32 @deflate_stored(ptr noundef nonnull %15, i32 noundef 5)
  br label %813

801:                                              ; preds = %796
  %802 = load i32, ptr %31, align 8, !tbaa !47
  switch i32 %802, label %807 [
    i32 2, label %803
    i32 3, label %805
  ]

803:                                              ; preds = %801
  %804 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %15, i32 noundef 5)
  br label %813

805:                                              ; preds = %801
  %806 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %15, i32 noundef 5)
  br label %813

807:                                              ; preds = %801
  %808 = sext i32 %797 to i64
  %809 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %808
  %810 = getelementptr inbounds nuw i8, ptr %809, i64 8
  %811 = load ptr, ptr %810, align 8, !tbaa !102
  %812 = tail call i32 %811(ptr noundef nonnull %15, i32 noundef 5) #11, !inline_history !120
  br label %813

813:                                              ; preds = %807, %805, %803, %799
  %814 = phi i32 [ %800, %799 ], [ %804, %803 ], [ %806, %805 ], [ %812, %807 ]
  %815 = and i32 %814, -2
  %816 = icmp eq i32 %815, 2
  br i1 %816, label %817, label %818

817:                                              ; preds = %813
  store i32 666, ptr %21, align 8, !tbaa !29
  br label %818

818:                                              ; preds = %817, %813
  %819 = and i32 %814, -3
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %821, label %825

821:                                              ; preds = %818
  %822 = load i32, ptr %69, align 8, !tbaa !104
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %824, label %831

824:                                              ; preds = %821
  store i32 -1, ptr %46, align 4, !tbaa !58
  br label %831

825:                                              ; preds = %818
  %826 = icmp eq i32 %814, 1
  br i1 %826, label %827, label %831

827:                                              ; preds = %825
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %828 = load i32, ptr %69, align 8, !tbaa !104
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %830, label %831

830:                                              ; preds = %827
  store i32 -1, ptr %46, align 4, !tbaa !58
  br label %831

831:                                              ; preds = %119, %72, %111, %128, %273, %764, %785, %719, %625, %525, %209, %824, %830, %821, %827, %825, %793
  %832 = load i32, ptr %55, align 8, !tbaa !79
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %834, label %885

834:                                              ; preds = %831
  %835 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %836 = load i32, ptr %835, align 4, !tbaa !71
  %837 = zext i32 %836 to i64
  %838 = getelementptr inbounds nuw i8, ptr %15, i64 152
  %839 = load i64, ptr %838, align 8, !tbaa !72
  %840 = sub nsw i64 %837, %839
  %841 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %842 = load i32, ptr %841, align 4, !tbaa !73
  %843 = zext i32 %842 to i64
  %844 = sub nsw i64 0, %843
  %845 = icmp eq i64 %840, %844
  br i1 %845, label %846, label %885

846:                                              ; preds = %834, %45, %34
  %847 = load i32, ptr %30, align 4, !tbaa !46
  %848 = icmp eq i32 %847, %25
  br i1 %848, label %884, label %849

849:                                              ; preds = %846
  %850 = icmp eq i32 %847, 0
  br i1 %850, label %851, label %866

851:                                              ; preds = %849
  %852 = getelementptr inbounds nuw i8, ptr %15, i64 5928
  %853 = load i32, ptr %852, align 8, !tbaa !121
  switch i32 %853, label %855 [
    i32 0, label %866
    i32 1, label %854
  ]

854:                                              ; preds = %851
  tail call fastcc void @slide_hash(ptr noundef nonnull %15)
  br label %865

855:                                              ; preds = %851
  %856 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %857 = load ptr, ptr %856, align 8, !tbaa !37
  %858 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %859 = load i32, ptr %858, align 4, !tbaa !36
  %860 = add i32 %859, -1
  %861 = zext i32 %860 to i64
  %862 = getelementptr inbounds nuw [2 x i8], ptr %857, i64 %861
  store i16 0, ptr %862, align 2, !tbaa !60
  %863 = shl nuw nsw i64 %861, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %857, i8 0, i64 %863, i1 false)
  %864 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  store i32 0, ptr %864, align 8, !tbaa !61
  br label %865

865:                                              ; preds = %855, %854
  store i32 0, ptr %852, align 8, !tbaa !121
  br label %866

866:                                              ; preds = %851, %865, %849
  store i32 %25, ptr %30, align 4, !tbaa !46
  %867 = zext nneg i32 %25 to i64
  %868 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %867
  %869 = getelementptr inbounds nuw i8, ptr %868, i64 2
  %870 = load i16, ptr %869, align 2, !tbaa !62
  %871 = zext i16 %870 to i32
  %872 = getelementptr inbounds nuw i8, ptr %15, i64 192
  store i32 %871, ptr %872, align 8, !tbaa !64
  %873 = load i16, ptr %868, align 16, !tbaa !65
  %874 = zext i16 %873 to i32
  %875 = getelementptr inbounds nuw i8, ptr %15, i64 204
  store i32 %874, ptr %875, align 4, !tbaa !66
  %876 = getelementptr inbounds nuw i8, ptr %868, i64 4
  %877 = load i16, ptr %876, align 4, !tbaa !67
  %878 = zext i16 %877 to i32
  %879 = getelementptr inbounds nuw i8, ptr %15, i64 208
  store i32 %878, ptr %879, align 8, !tbaa !68
  %880 = getelementptr inbounds nuw i8, ptr %868, i64 6
  %881 = load i16, ptr %880, align 2, !tbaa !69
  %882 = zext i16 %881 to i32
  %883 = getelementptr inbounds nuw i8, ptr %15, i64 188
  store i32 %882, ptr %883, align 4, !tbaa !70
  br label %884

884:                                              ; preds = %866, %846
  store i32 %2, ptr %31, align 8, !tbaa !47
  br label %885

885:                                              ; preds = %65, %49, %831, %13, %17, %20, %5, %9, %3, %23, %834, %884
  %886 = phi i32 [ -5, %834 ], [ -2, %13 ], [ 0, %884 ], [ -2, %23 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %65 ], [ -2, %49 ], [ -5, %831 ]
  ret i32 %886
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 2) i32 @deflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %940, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %940, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %940, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %940, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !20
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %940

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !29
  switch i32 %21, label %940 [
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
  %23 = icmp ugt i32 %1, 5
  br i1 %23, label %940, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = load ptr, ptr %25, align 8, !tbaa !103
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %30 = load i32, ptr %29, align 8, !tbaa !79
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %0, align 8, !tbaa !80
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32, %28
  %36 = icmp eq i32 %21, 666
  %37 = icmp ne i32 %1, 4
  %38 = and i1 %37, %36
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %32, %24
  %40 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 32), align 16, !tbaa !42
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %40, ptr %41, align 8, !tbaa !9
  br label %940

42:                                               ; preds = %35
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %44 = load i32, ptr %43, align 8, !tbaa !104
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %47, ptr %48, align 8, !tbaa !9
  br label %940

49:                                               ; preds = %42
  %50 = getelementptr inbounds nuw i8, ptr %14, i64 76
  %51 = load i32, ptr %50, align 4, !tbaa !58
  store i32 %1, ptr %50, align 4, !tbaa !58
  %52 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %53 = load i64, ptr %52, align 8, !tbaa !55
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %88, label %55

55:                                               ; preds = %49
  tail call void @_tr_flush_bits(ptr noundef nonnull %14) #11
  %56 = load i64, ptr %52, align 8, !tbaa !55
  %57 = load i32, ptr %43, align 8, !tbaa !104
  %58 = zext i32 %57 to i64
  %59 = tail call i64 @llvm.umin.i64(i64 %56, i64 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %81, label %61

61:                                               ; preds = %55
  %62 = trunc nuw i64 %59 to i32
  %63 = load ptr, ptr %25, align 8, !tbaa !103
  %64 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %65 = load ptr, ptr %64, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %65, i64 %59, i1 false)
  %66 = load ptr, ptr %25, align 8, !tbaa !103
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 %59
  store ptr %67, ptr %25, align 8, !tbaa !103
  %68 = load ptr, ptr %64, align 8, !tbaa !56
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 %59
  store ptr %69, ptr %64, align 8, !tbaa !56
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %71 = load i64, ptr %70, align 8, !tbaa !105
  %72 = add i64 %71, %59
  store i64 %72, ptr %70, align 8, !tbaa !105
  %73 = load i32, ptr %43, align 8, !tbaa !104
  %74 = sub i32 %73, %62
  store i32 %74, ptr %43, align 8, !tbaa !104
  %75 = load i64, ptr %52, align 8, !tbaa !55
  %76 = sub i64 %75, %59
  store i64 %76, ptr %52, align 8, !tbaa !55
  %77 = icmp eq i64 %75, %59
  br i1 %77, label %78, label %81

78:                                               ; preds = %61
  %79 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %80 = load ptr, ptr %79, align 8, !tbaa !40
  store ptr %80, ptr %64, align 8, !tbaa !56
  br label %81

81:                                               ; preds = %55, %61, %78
  %82 = phi i64 [ %56, %55 ], [ %76, %61 ], [ 0, %78 ]
  %83 = phi i32 [ %57, %55 ], [ %74, %61 ], [ %74, %78 ]
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = load i32, ptr %20, align 8, !tbaa !29
  br label %103

87:                                               ; preds = %81
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %940

88:                                               ; preds = %49
  br i1 %31, label %89, label %103

89:                                               ; preds = %88
  %90 = shl nuw nsw i32 %1, 1
  %91 = icmp eq i32 %1, 5
  %92 = select i1 %91, i32 -9, i32 0
  %93 = add nsw i32 %92, %90
  %94 = shl nsw i32 %51, 1
  %95 = icmp sgt i32 %51, 4
  %96 = select i1 %95, i32 -9, i32 0
  %97 = add i32 %96, %94
  %98 = icmp sle i32 %93, %97
  %99 = and i1 %37, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %89
  %101 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %101, ptr %102, align 8, !tbaa !9
  br label %940

103:                                              ; preds = %85, %88, %89
  %104 = phi i64 [ %82, %85 ], [ 0, %88 ], [ 0, %89 ]
  %105 = phi i32 [ %86, %85 ], [ %21, %88 ], [ %21, %89 ]
  switch i32 %105, label %193 [
    i32 666, label %106
    i32 42, label %112
  ]

106:                                              ; preds = %103
  %107 = load i32, ptr %29, align 8, !tbaa !79
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %776, label %109

109:                                              ; preds = %106
  %110 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %110, ptr %111, align 8, !tbaa !9
  br label %940

112:                                              ; preds = %103
  %113 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %114 = load i32, ptr %113, align 8, !tbaa !30
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store i32 113, ptr %20, align 8, !tbaa !29
  br label %773

117:                                              ; preds = %112
  %118 = getelementptr inbounds nuw i8, ptr %14, i64 84
  %119 = load i32, ptr %118, align 4, !tbaa !31
  %120 = shl i32 %119, 12
  %121 = add i32 %120, -30720
  %122 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %123 = load i32, ptr %122, align 8, !tbaa !47
  %124 = icmp sgt i32 %123, 1
  br i1 %124, label %134, label %125

125:                                              ; preds = %117
  %126 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %127 = load i32, ptr %126, align 4, !tbaa !46
  %128 = icmp slt i32 %127, 2
  br i1 %128, label %134, label %129

129:                                              ; preds = %125
  %130 = icmp samesign ult i32 %127, 6
  br i1 %130, label %134, label %131

131:                                              ; preds = %129
  %132 = icmp eq i32 %127, 6
  %133 = select i1 %132, i32 128, i32 192
  br label %134

134:                                              ; preds = %131, %129, %117, %125
  %135 = phi i32 [ 64, %129 ], [ 0, %117 ], [ %133, %131 ], [ 0, %125 ]
  %136 = or disjoint i32 %135, %121
  %137 = getelementptr inbounds nuw i8, ptr %14, i64 172
  %138 = load i32, ptr %137, align 4, !tbaa !71
  %139 = icmp eq i32 %138, 0
  %140 = or disjoint i32 %136, 32
  %141 = select i1 %139, i32 %136, i32 %140
  %142 = urem i32 %141, 31
  %143 = or disjoint i32 %142, %141
  %144 = lshr i32 %141, 8
  %145 = trunc i32 %144 to i8
  %146 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %147 = load ptr, ptr %146, align 8, !tbaa !40
  %148 = add i64 %104, 1
  store i64 %148, ptr %52, align 8, !tbaa !55
  %149 = getelementptr inbounds nuw i8, ptr %147, i64 %104
  store i8 %145, ptr %149, align 1, !tbaa !8
  %150 = trunc i32 %143 to i8
  %151 = xor i8 %150, 31
  %152 = load ptr, ptr %146, align 8, !tbaa !40
  %153 = load i64, ptr %52, align 8, !tbaa !55
  %154 = add i64 %153, 1
  store i64 %154, ptr %52, align 8, !tbaa !55
  %155 = getelementptr inbounds nuw i8, ptr %152, i64 %153
  store i8 %151, ptr %155, align 1, !tbaa !8
  %156 = load i32, ptr %137, align 4, !tbaa !71
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %185, label %158

158:                                              ; preds = %134
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %160 = load i64, ptr %159, align 8, !tbaa !57
  %161 = lshr i64 %160, 16
  %162 = lshr i64 %160, 24
  %163 = trunc i64 %162 to i8
  %164 = load ptr, ptr %146, align 8, !tbaa !40
  %165 = load i64, ptr %52, align 8, !tbaa !55
  %166 = add i64 %165, 1
  store i64 %166, ptr %52, align 8, !tbaa !55
  %167 = getelementptr inbounds nuw i8, ptr %164, i64 %165
  store i8 %163, ptr %167, align 1, !tbaa !8
  %168 = trunc i64 %161 to i8
  %169 = load ptr, ptr %146, align 8, !tbaa !40
  %170 = load i64, ptr %52, align 8, !tbaa !55
  %171 = add i64 %170, 1
  store i64 %171, ptr %52, align 8, !tbaa !55
  %172 = getelementptr inbounds nuw i8, ptr %169, i64 %170
  store i8 %168, ptr %172, align 1, !tbaa !8
  %173 = load i64, ptr %159, align 8, !tbaa !57
  %174 = trunc i64 %173 to i8
  %175 = lshr i64 %173, 8
  %176 = trunc i64 %175 to i8
  %177 = load ptr, ptr %146, align 8, !tbaa !40
  %178 = load i64, ptr %52, align 8, !tbaa !55
  %179 = add i64 %178, 1
  store i64 %179, ptr %52, align 8, !tbaa !55
  %180 = getelementptr inbounds nuw i8, ptr %177, i64 %178
  store i8 %176, ptr %180, align 1, !tbaa !8
  %181 = load ptr, ptr %146, align 8, !tbaa !40
  %182 = load i64, ptr %52, align 8, !tbaa !55
  %183 = add i64 %182, 1
  store i64 %183, ptr %52, align 8, !tbaa !55
  %184 = getelementptr inbounds nuw i8, ptr %181, i64 %182
  store i8 %174, ptr %184, align 1, !tbaa !8
  br label %185

185:                                              ; preds = %158, %134
  %186 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %186, ptr %187, align 8, !tbaa !57
  store i32 113, ptr %20, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %188 = load i64, ptr %52, align 8, !tbaa !55
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %185
  %191 = load i32, ptr %20, align 8, !tbaa !29
  br label %193

192:                                              ; preds = %185
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %940

193:                                              ; preds = %103, %190
  %194 = phi i32 [ %191, %190 ], [ %105, %103 ]
  %195 = icmp eq i32 %194, 57
  br i1 %195, label %196, label %382

196:                                              ; preds = %193
  %197 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %198 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %197, ptr %198, align 8, !tbaa !57
  %199 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %200 = load ptr, ptr %199, align 8, !tbaa !40
  %201 = load i64, ptr %52, align 8, !tbaa !55
  %202 = add i64 %201, 1
  store i64 %202, ptr %52, align 8, !tbaa !55
  %203 = getelementptr inbounds nuw i8, ptr %200, i64 %201
  store i8 31, ptr %203, align 1, !tbaa !8
  %204 = load ptr, ptr %199, align 8, !tbaa !40
  %205 = load i64, ptr %52, align 8, !tbaa !55
  %206 = add i64 %205, 1
  store i64 %206, ptr %52, align 8, !tbaa !55
  %207 = getelementptr inbounds nuw i8, ptr %204, i64 %205
  store i8 -117, ptr %207, align 1, !tbaa !8
  %208 = load ptr, ptr %199, align 8, !tbaa !40
  %209 = load i64, ptr %52, align 8, !tbaa !55
  %210 = add i64 %209, 1
  store i64 %210, ptr %52, align 8, !tbaa !55
  %211 = getelementptr inbounds nuw i8, ptr %208, i64 %209
  store i8 8, ptr %211, align 1, !tbaa !8
  %212 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %213 = load ptr, ptr %212, align 8, !tbaa !97
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %259

215:                                              ; preds = %196
  %216 = load ptr, ptr %199, align 8, !tbaa !40
  %217 = load i64, ptr %52, align 8, !tbaa !55
  %218 = add i64 %217, 1
  store i64 %218, ptr %52, align 8, !tbaa !55
  %219 = getelementptr inbounds nuw i8, ptr %216, i64 %217
  store i8 0, ptr %219, align 1, !tbaa !8
  %220 = load ptr, ptr %199, align 8, !tbaa !40
  %221 = load i64, ptr %52, align 8, !tbaa !55
  %222 = add i64 %221, 1
  store i64 %222, ptr %52, align 8, !tbaa !55
  %223 = getelementptr inbounds nuw i8, ptr %220, i64 %221
  store i8 0, ptr %223, align 1, !tbaa !8
  %224 = load ptr, ptr %199, align 8, !tbaa !40
  %225 = load i64, ptr %52, align 8, !tbaa !55
  %226 = add i64 %225, 1
  store i64 %226, ptr %52, align 8, !tbaa !55
  %227 = getelementptr inbounds nuw i8, ptr %224, i64 %225
  store i8 0, ptr %227, align 1, !tbaa !8
  %228 = load ptr, ptr %199, align 8, !tbaa !40
  %229 = load i64, ptr %52, align 8, !tbaa !55
  %230 = add i64 %229, 1
  store i64 %230, ptr %52, align 8, !tbaa !55
  %231 = getelementptr inbounds nuw i8, ptr %228, i64 %229
  store i8 0, ptr %231, align 1, !tbaa !8
  %232 = load ptr, ptr %199, align 8, !tbaa !40
  %233 = load i64, ptr %52, align 8, !tbaa !55
  %234 = add i64 %233, 1
  store i64 %234, ptr %52, align 8, !tbaa !55
  %235 = getelementptr inbounds nuw i8, ptr %232, i64 %233
  store i8 0, ptr %235, align 1, !tbaa !8
  %236 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %237 = load i32, ptr %236, align 4, !tbaa !46
  %238 = icmp eq i32 %237, 9
  br i1 %238, label %246, label %239

239:                                              ; preds = %215
  %240 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %241 = load i32, ptr %240, align 8, !tbaa !47
  %242 = icmp sgt i32 %241, 1
  %243 = icmp slt i32 %237, 2
  %244 = or i1 %243, %242
  %245 = select i1 %244, i8 4, i8 0
  br label %246

246:                                              ; preds = %215, %239
  %247 = phi i8 [ %245, %239 ], [ 2, %215 ]
  %248 = load ptr, ptr %199, align 8, !tbaa !40
  %249 = load i64, ptr %52, align 8, !tbaa !55
  %250 = add i64 %249, 1
  store i64 %250, ptr %52, align 8, !tbaa !55
  %251 = getelementptr inbounds nuw i8, ptr %248, i64 %249
  store i8 %247, ptr %251, align 1, !tbaa !8
  %252 = load ptr, ptr %199, align 8, !tbaa !40
  %253 = load i64, ptr %52, align 8, !tbaa !55
  %254 = add i64 %253, 1
  store i64 %254, ptr %52, align 8, !tbaa !55
  %255 = getelementptr inbounds nuw i8, ptr %252, i64 %253
  store i8 3, ptr %255, align 1, !tbaa !8
  store i32 113, ptr %20, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %256 = load i64, ptr %52, align 8, !tbaa !55
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %380, label %258

258:                                              ; preds = %246
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %940

259:                                              ; preds = %196
  %260 = load i32, ptr %213, align 8, !tbaa !106
  %261 = icmp ne i32 %260, 0
  %262 = zext i1 %261 to i8
  %263 = getelementptr inbounds nuw i8, ptr %213, i64 68
  %264 = load i32, ptr %263, align 4, !tbaa !108
  %265 = icmp eq i32 %264, 0
  %266 = select i1 %265, i8 0, i8 2
  %267 = or disjoint i8 %266, %262
  %268 = getelementptr inbounds nuw i8, ptr %213, i64 24
  %269 = load ptr, ptr %268, align 8, !tbaa !109
  %270 = icmp eq ptr %269, null
  %271 = select i1 %270, i8 0, i8 4
  %272 = or disjoint i8 %267, %271
  %273 = getelementptr inbounds nuw i8, ptr %213, i64 40
  %274 = load ptr, ptr %273, align 8, !tbaa !110
  %275 = icmp eq ptr %274, null
  %276 = select i1 %275, i8 0, i8 8
  %277 = or disjoint i8 %272, %276
  %278 = getelementptr inbounds nuw i8, ptr %213, i64 56
  %279 = load ptr, ptr %278, align 8, !tbaa !111
  %280 = icmp eq ptr %279, null
  %281 = select i1 %280, i8 0, i8 16
  %282 = or disjoint i8 %277, %281
  %283 = load ptr, ptr %199, align 8, !tbaa !40
  %284 = load i64, ptr %52, align 8, !tbaa !55
  %285 = add i64 %284, 1
  store i64 %285, ptr %52, align 8, !tbaa !55
  %286 = getelementptr inbounds nuw i8, ptr %283, i64 %284
  store i8 %282, ptr %286, align 1, !tbaa !8
  %287 = load ptr, ptr %212, align 8, !tbaa !97
  %288 = getelementptr inbounds nuw i8, ptr %287, i64 8
  %289 = load i64, ptr %288, align 8, !tbaa !112
  %290 = trunc i64 %289 to i8
  %291 = load ptr, ptr %199, align 8, !tbaa !40
  %292 = load i64, ptr %52, align 8, !tbaa !55
  %293 = add i64 %292, 1
  store i64 %293, ptr %52, align 8, !tbaa !55
  %294 = getelementptr inbounds nuw i8, ptr %291, i64 %292
  store i8 %290, ptr %294, align 1, !tbaa !8
  %295 = load ptr, ptr %212, align 8, !tbaa !97
  %296 = getelementptr inbounds nuw i8, ptr %295, i64 8
  %297 = load i64, ptr %296, align 8, !tbaa !112
  %298 = lshr i64 %297, 8
  %299 = trunc i64 %298 to i8
  %300 = load ptr, ptr %199, align 8, !tbaa !40
  %301 = load i64, ptr %52, align 8, !tbaa !55
  %302 = add i64 %301, 1
  store i64 %302, ptr %52, align 8, !tbaa !55
  %303 = getelementptr inbounds nuw i8, ptr %300, i64 %301
  store i8 %299, ptr %303, align 1, !tbaa !8
  %304 = load ptr, ptr %212, align 8, !tbaa !97
  %305 = getelementptr inbounds nuw i8, ptr %304, i64 8
  %306 = load i64, ptr %305, align 8, !tbaa !112
  %307 = lshr i64 %306, 16
  %308 = trunc i64 %307 to i8
  %309 = load ptr, ptr %199, align 8, !tbaa !40
  %310 = load i64, ptr %52, align 8, !tbaa !55
  %311 = add i64 %310, 1
  store i64 %311, ptr %52, align 8, !tbaa !55
  %312 = getelementptr inbounds nuw i8, ptr %309, i64 %310
  store i8 %308, ptr %312, align 1, !tbaa !8
  %313 = load ptr, ptr %212, align 8, !tbaa !97
  %314 = getelementptr inbounds nuw i8, ptr %313, i64 8
  %315 = load i64, ptr %314, align 8, !tbaa !112
  %316 = lshr i64 %315, 24
  %317 = trunc i64 %316 to i8
  %318 = load ptr, ptr %199, align 8, !tbaa !40
  %319 = load i64, ptr %52, align 8, !tbaa !55
  %320 = add i64 %319, 1
  store i64 %320, ptr %52, align 8, !tbaa !55
  %321 = getelementptr inbounds nuw i8, ptr %318, i64 %319
  store i8 %317, ptr %321, align 1, !tbaa !8
  %322 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %323 = load i32, ptr %322, align 4, !tbaa !46
  %324 = icmp eq i32 %323, 9
  br i1 %324, label %332, label %325

325:                                              ; preds = %259
  %326 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %327 = load i32, ptr %326, align 8, !tbaa !47
  %328 = icmp sgt i32 %327, 1
  %329 = icmp slt i32 %323, 2
  %330 = or i1 %329, %328
  %331 = select i1 %330, i8 4, i8 0
  br label %332

332:                                              ; preds = %259, %325
  %333 = phi i8 [ %331, %325 ], [ 2, %259 ]
  %334 = load ptr, ptr %199, align 8, !tbaa !40
  %335 = load i64, ptr %52, align 8, !tbaa !55
  %336 = add i64 %335, 1
  store i64 %336, ptr %52, align 8, !tbaa !55
  %337 = getelementptr inbounds nuw i8, ptr %334, i64 %335
  store i8 %333, ptr %337, align 1, !tbaa !8
  %338 = load ptr, ptr %212, align 8, !tbaa !97
  %339 = getelementptr inbounds nuw i8, ptr %338, i64 20
  %340 = load i32, ptr %339, align 4, !tbaa !113
  %341 = trunc i32 %340 to i8
  %342 = load ptr, ptr %199, align 8, !tbaa !40
  %343 = load i64, ptr %52, align 8, !tbaa !55
  %344 = add i64 %343, 1
  store i64 %344, ptr %52, align 8, !tbaa !55
  %345 = getelementptr inbounds nuw i8, ptr %342, i64 %343
  store i8 %341, ptr %345, align 1, !tbaa !8
  %346 = load ptr, ptr %212, align 8, !tbaa !97
  %347 = getelementptr inbounds nuw i8, ptr %346, i64 24
  %348 = load ptr, ptr %347, align 8, !tbaa !109
  %349 = icmp eq ptr %348, null
  br i1 %349, label %368, label %350

350:                                              ; preds = %332
  %351 = getelementptr inbounds nuw i8, ptr %346, i64 32
  %352 = load i32, ptr %351, align 8, !tbaa !114
  %353 = trunc i32 %352 to i8
  %354 = load ptr, ptr %199, align 8, !tbaa !40
  %355 = load i64, ptr %52, align 8, !tbaa !55
  %356 = add i64 %355, 1
  store i64 %356, ptr %52, align 8, !tbaa !55
  %357 = getelementptr inbounds nuw i8, ptr %354, i64 %355
  store i8 %353, ptr %357, align 1, !tbaa !8
  %358 = load ptr, ptr %212, align 8, !tbaa !97
  %359 = getelementptr inbounds nuw i8, ptr %358, i64 32
  %360 = load i32, ptr %359, align 8, !tbaa !114
  %361 = lshr i32 %360, 8
  %362 = trunc i32 %361 to i8
  %363 = load ptr, ptr %199, align 8, !tbaa !40
  %364 = load i64, ptr %52, align 8, !tbaa !55
  %365 = add i64 %364, 1
  store i64 %365, ptr %52, align 8, !tbaa !55
  %366 = getelementptr inbounds nuw i8, ptr %363, i64 %364
  store i8 %362, ptr %366, align 1, !tbaa !8
  %367 = load ptr, ptr %212, align 8, !tbaa !97
  br label %368

368:                                              ; preds = %350, %332
  %369 = phi ptr [ %367, %350 ], [ %346, %332 ]
  %370 = getelementptr inbounds nuw i8, ptr %369, i64 68
  %371 = load i32, ptr %370, align 4, !tbaa !108
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %378, label %373

373:                                              ; preds = %368
  %374 = load i64, ptr %198, align 8, !tbaa !57
  %375 = load ptr, ptr %199, align 8, !tbaa !40
  %376 = load i64, ptr %52, align 8, !tbaa !55
  %377 = tail call i64 @crc32_z(i64 noundef %374, ptr noundef %375, i64 noundef %376) #11
  store i64 %377, ptr %198, align 8, !tbaa !57
  br label %378

378:                                              ; preds = %368, %373
  %379 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i64 0, ptr %379, align 8, !tbaa !115
  store i32 69, ptr %20, align 8, !tbaa !29
  br label %384

380:                                              ; preds = %246
  %381 = load i32, ptr %20, align 8, !tbaa !29
  br label %382

382:                                              ; preds = %380, %193
  %383 = phi i32 [ %381, %380 ], [ %194, %193 ]
  switch i32 %383, label %773 [
    i32 69, label %384
    i32 73, label %549
    i32 91, label %643
    i32 103, label %736
  ]

384:                                              ; preds = %382, %378
  %385 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %386 = load ptr, ptr %385, align 8, !tbaa !97
  %387 = getelementptr inbounds nuw i8, ptr %386, i64 24
  %388 = load ptr, ptr %387, align 8, !tbaa !109
  %389 = icmp eq ptr %388, null
  br i1 %389, label %548, label %390

390:                                              ; preds = %384
  %391 = load i64, ptr %52, align 8, !tbaa !55
  %392 = getelementptr inbounds nuw i8, ptr %386, i64 32
  %393 = load i32, ptr %392, align 8, !tbaa !114
  %394 = and i32 %393, 65535
  %395 = zext nneg i32 %394 to i64
  %396 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %397 = load i64, ptr %396, align 8, !tbaa !115
  %398 = sub i64 %395, %397
  %399 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %400 = add i64 %391, %398
  %401 = load i64, ptr %399, align 8, !tbaa !41
  %402 = icmp ugt i64 %400, %401
  br i1 %402, label %403, label %523

403:                                              ; preds = %390
  %404 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %405 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %406 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %407 = sub i64 %401, %391
  %408 = load ptr, ptr %404, align 8, !tbaa !40
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 %391
  %410 = getelementptr inbounds nuw i8, ptr %388, i64 %397
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %409, ptr nonnull align 1 %410, i64 %407, i1 false)
  %411 = load i64, ptr %399, align 8, !tbaa !41
  store i64 %411, ptr %52, align 8, !tbaa !55
  %412 = load ptr, ptr %385, align 8, !tbaa !97
  %413 = getelementptr inbounds nuw i8, ptr %412, i64 68
  %414 = load i32, ptr %413, align 4, !tbaa !108
  %415 = icmp ne i32 %414, 0
  %416 = icmp ugt i64 %411, %391
  %417 = select i1 %415, i1 %416, i1 false
  br i1 %417, label %418, label %424

418:                                              ; preds = %403
  %419 = load i64, ptr %405, align 8, !tbaa !57
  %420 = load ptr, ptr %404, align 8, !tbaa !40
  %421 = getelementptr inbounds nuw i8, ptr %420, i64 %391
  %422 = sub nuw i64 %411, %391
  %423 = tail call i64 @crc32_z(i64 noundef %419, ptr noundef %421, i64 noundef %422) #11
  store i64 %423, ptr %405, align 8, !tbaa !57
  br label %424

424:                                              ; preds = %418, %403
  %425 = load i64, ptr %396, align 8, !tbaa !115
  %426 = add i64 %425, %407
  store i64 %426, ptr %396, align 8, !tbaa !115
  %427 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %427) #11
  %428 = getelementptr inbounds nuw i8, ptr %427, i64 40
  %429 = load i64, ptr %428, align 8, !tbaa !55
  %430 = load i32, ptr %43, align 8, !tbaa !104
  %431 = zext i32 %430 to i64
  %432 = tail call i64 @llvm.umin.i64(i64 %429, i64 %431)
  %433 = icmp eq i64 %432, 0
  br i1 %433, label %453, label %434

434:                                              ; preds = %424
  %435 = trunc nuw i64 %432 to i32
  %436 = load ptr, ptr %25, align 8, !tbaa !103
  %437 = getelementptr inbounds nuw i8, ptr %427, i64 32
  %438 = load ptr, ptr %437, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %436, ptr align 1 %438, i64 %432, i1 false)
  %439 = load ptr, ptr %25, align 8, !tbaa !103
  %440 = getelementptr inbounds nuw i8, ptr %439, i64 %432
  store ptr %440, ptr %25, align 8, !tbaa !103
  %441 = load ptr, ptr %437, align 8, !tbaa !56
  %442 = getelementptr inbounds nuw i8, ptr %441, i64 %432
  store ptr %442, ptr %437, align 8, !tbaa !56
  %443 = load i64, ptr %406, align 8, !tbaa !105
  %444 = add i64 %443, %432
  store i64 %444, ptr %406, align 8, !tbaa !105
  %445 = load i32, ptr %43, align 8, !tbaa !104
  %446 = sub i32 %445, %435
  store i32 %446, ptr %43, align 8, !tbaa !104
  %447 = load i64, ptr %428, align 8, !tbaa !55
  %448 = sub i64 %447, %432
  store i64 %448, ptr %428, align 8, !tbaa !55
  %449 = icmp eq i64 %447, %432
  br i1 %449, label %450, label %453

450:                                              ; preds = %434
  %451 = getelementptr inbounds nuw i8, ptr %427, i64 16
  %452 = load ptr, ptr %451, align 8, !tbaa !40
  store ptr %452, ptr %437, align 8, !tbaa !56
  br label %453

453:                                              ; preds = %450, %434, %424
  %454 = load i64, ptr %52, align 8, !tbaa !55
  %455 = icmp eq i64 %454, 0
  br i1 %455, label %456, label %512

456:                                              ; preds = %453
  %457 = sub i64 %398, %407
  %458 = load i64, ptr %399, align 8, !tbaa !41
  %459 = icmp ugt i64 %457, %458
  br i1 %459, label %460, label %517

460:                                              ; preds = %456, %513
  %461 = phi i64 [ %515, %513 ], [ %458, %456 ]
  %462 = phi i64 [ %514, %513 ], [ %457, %456 ]
  %463 = load ptr, ptr %404, align 8, !tbaa !40
  %464 = load ptr, ptr %385, align 8, !tbaa !97
  %465 = getelementptr inbounds nuw i8, ptr %464, i64 24
  %466 = load ptr, ptr %465, align 8, !tbaa !109
  %467 = load i64, ptr %396, align 8, !tbaa !115
  %468 = getelementptr inbounds nuw i8, ptr %466, i64 %467
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %463, ptr align 1 %468, i64 %461, i1 false)
  %469 = load i64, ptr %399, align 8, !tbaa !41
  store i64 %469, ptr %52, align 8, !tbaa !55
  %470 = load ptr, ptr %385, align 8, !tbaa !97
  %471 = getelementptr inbounds nuw i8, ptr %470, i64 68
  %472 = load i32, ptr %471, align 4, !tbaa !108
  %473 = icmp ne i32 %472, 0
  %474 = icmp ne i64 %469, 0
  %475 = select i1 %473, i1 %474, i1 false
  br i1 %475, label %476, label %480

476:                                              ; preds = %460
  %477 = load i64, ptr %405, align 8, !tbaa !57
  %478 = load ptr, ptr %404, align 8, !tbaa !40
  %479 = tail call i64 @crc32_z(i64 noundef %477, ptr noundef %478, i64 noundef %469) #11
  store i64 %479, ptr %405, align 8, !tbaa !57
  br label %480

480:                                              ; preds = %476, %460
  %481 = load i64, ptr %396, align 8, !tbaa !115
  %482 = add i64 %481, %461
  store i64 %482, ptr %396, align 8, !tbaa !115
  %483 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %483) #11
  %484 = getelementptr inbounds nuw i8, ptr %483, i64 40
  %485 = load i64, ptr %484, align 8, !tbaa !55
  %486 = load i32, ptr %43, align 8, !tbaa !104
  %487 = zext i32 %486 to i64
  %488 = tail call i64 @llvm.umin.i64(i64 %485, i64 %487)
  %489 = icmp eq i64 %488, 0
  br i1 %489, label %509, label %490

490:                                              ; preds = %480
  %491 = trunc nuw i64 %488 to i32
  %492 = load ptr, ptr %25, align 8, !tbaa !103
  %493 = getelementptr inbounds nuw i8, ptr %483, i64 32
  %494 = load ptr, ptr %493, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %492, ptr align 1 %494, i64 %488, i1 false)
  %495 = load ptr, ptr %25, align 8, !tbaa !103
  %496 = getelementptr inbounds nuw i8, ptr %495, i64 %488
  store ptr %496, ptr %25, align 8, !tbaa !103
  %497 = load ptr, ptr %493, align 8, !tbaa !56
  %498 = getelementptr inbounds nuw i8, ptr %497, i64 %488
  store ptr %498, ptr %493, align 8, !tbaa !56
  %499 = load i64, ptr %406, align 8, !tbaa !105
  %500 = add i64 %499, %488
  store i64 %500, ptr %406, align 8, !tbaa !105
  %501 = load i32, ptr %43, align 8, !tbaa !104
  %502 = sub i32 %501, %491
  store i32 %502, ptr %43, align 8, !tbaa !104
  %503 = load i64, ptr %484, align 8, !tbaa !55
  %504 = sub i64 %503, %488
  store i64 %504, ptr %484, align 8, !tbaa !55
  %505 = icmp eq i64 %503, %488
  br i1 %505, label %506, label %509

506:                                              ; preds = %490
  %507 = getelementptr inbounds nuw i8, ptr %483, i64 16
  %508 = load ptr, ptr %507, align 8, !tbaa !40
  store ptr %508, ptr %493, align 8, !tbaa !56
  br label %509

509:                                              ; preds = %480, %490, %506
  %510 = load i64, ptr %52, align 8, !tbaa !55
  %511 = icmp eq i64 %510, 0
  br i1 %511, label %513, label %512

512:                                              ; preds = %509, %453
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %940

513:                                              ; preds = %509
  %514 = sub i64 %462, %461
  %515 = load i64, ptr %399, align 8, !tbaa !41
  %516 = icmp ugt i64 %514, %515
  br i1 %516, label %460, label %517, !llvm.loop !116

517:                                              ; preds = %513, %456
  %518 = phi i64 [ %457, %456 ], [ %514, %513 ]
  %519 = load ptr, ptr %385, align 8, !tbaa !97
  %520 = getelementptr inbounds nuw i8, ptr %519, i64 24
  %521 = load ptr, ptr %520, align 8, !tbaa !109
  %522 = load i64, ptr %396, align 8, !tbaa !115
  br label %523

523:                                              ; preds = %517, %390
  %524 = phi i64 [ %397, %390 ], [ %522, %517 ]
  %525 = phi ptr [ %388, %390 ], [ %521, %517 ]
  %526 = phi i64 [ %391, %390 ], [ 0, %517 ]
  %527 = phi i64 [ %398, %390 ], [ %518, %517 ]
  %528 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %529 = load ptr, ptr %528, align 8, !tbaa !40
  %530 = getelementptr inbounds nuw i8, ptr %529, i64 %526
  %531 = getelementptr inbounds nuw i8, ptr %525, i64 %524
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %530, ptr align 1 %531, i64 %527, i1 false)
  %532 = load i64, ptr %52, align 8, !tbaa !55
  %533 = add i64 %532, %527
  store i64 %533, ptr %52, align 8, !tbaa !55
  %534 = load ptr, ptr %385, align 8, !tbaa !97
  %535 = getelementptr inbounds nuw i8, ptr %534, i64 68
  %536 = load i32, ptr %535, align 4, !tbaa !108
  %537 = icmp ne i32 %536, 0
  %538 = icmp ugt i64 %533, %526
  %539 = select i1 %537, i1 %538, i1 false
  br i1 %539, label %540, label %547

540:                                              ; preds = %523
  %541 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %542 = load i64, ptr %541, align 8, !tbaa !57
  %543 = load ptr, ptr %528, align 8, !tbaa !40
  %544 = getelementptr inbounds nuw i8, ptr %543, i64 %526
  %545 = sub nuw i64 %533, %526
  %546 = tail call i64 @crc32_z(i64 noundef %542, ptr noundef %544, i64 noundef %545) #11
  store i64 %546, ptr %541, align 8, !tbaa !57
  br label %547

547:                                              ; preds = %523, %540
  store i64 0, ptr %396, align 8, !tbaa !115
  br label %548

548:                                              ; preds = %384, %547
  store i32 73, ptr %20, align 8, !tbaa !29
  br label %549

549:                                              ; preds = %382, %548
  %550 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %551 = load ptr, ptr %550, align 8, !tbaa !97
  %552 = getelementptr inbounds nuw i8, ptr %551, i64 40
  %553 = load ptr, ptr %552, align 8, !tbaa !110
  %554 = icmp eq ptr %553, null
  br i1 %554, label %642, label %555

555:                                              ; preds = %549
  %556 = load i64, ptr %52, align 8, !tbaa !55
  %557 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %558 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %559 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %560 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %561 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %562

562:                                              ; preds = %613, %555
  %563 = phi i64 [ %556, %555 ], [ %616, %613 ]
  %564 = load i64, ptr %52, align 8, !tbaa !55
  %565 = load i64, ptr %557, align 8, !tbaa !41
  %566 = icmp eq i64 %564, %565
  %567 = load ptr, ptr %550, align 8, !tbaa !97
  br i1 %566, label %568, label %613

568:                                              ; preds = %562
  %569 = getelementptr inbounds nuw i8, ptr %567, i64 68
  %570 = load i32, ptr %569, align 4, !tbaa !108
  %571 = icmp ne i32 %570, 0
  %572 = icmp ugt i64 %564, %563
  %573 = select i1 %571, i1 %572, i1 false
  br i1 %573, label %574, label %580

574:                                              ; preds = %568
  %575 = load i64, ptr %558, align 8, !tbaa !57
  %576 = load ptr, ptr %559, align 8, !tbaa !40
  %577 = getelementptr inbounds nuw i8, ptr %576, i64 %563
  %578 = sub nuw i64 %564, %563
  %579 = tail call i64 @crc32_z(i64 noundef %575, ptr noundef %577, i64 noundef %578) #11
  store i64 %579, ptr %558, align 8, !tbaa !57
  br label %580

580:                                              ; preds = %574, %568
  %581 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %581) #11
  %582 = getelementptr inbounds nuw i8, ptr %581, i64 40
  %583 = load i64, ptr %582, align 8, !tbaa !55
  %584 = load i32, ptr %43, align 8, !tbaa !104
  %585 = zext i32 %584 to i64
  %586 = tail call i64 @llvm.umin.i64(i64 %583, i64 %585)
  %587 = icmp eq i64 %586, 0
  br i1 %587, label %607, label %588

588:                                              ; preds = %580
  %589 = trunc nuw i64 %586 to i32
  %590 = load ptr, ptr %25, align 8, !tbaa !103
  %591 = getelementptr inbounds nuw i8, ptr %581, i64 32
  %592 = load ptr, ptr %591, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %590, ptr align 1 %592, i64 %586, i1 false)
  %593 = load ptr, ptr %25, align 8, !tbaa !103
  %594 = getelementptr inbounds nuw i8, ptr %593, i64 %586
  store ptr %594, ptr %25, align 8, !tbaa !103
  %595 = load ptr, ptr %591, align 8, !tbaa !56
  %596 = getelementptr inbounds nuw i8, ptr %595, i64 %586
  store ptr %596, ptr %591, align 8, !tbaa !56
  %597 = load i64, ptr %560, align 8, !tbaa !105
  %598 = add i64 %597, %586
  store i64 %598, ptr %560, align 8, !tbaa !105
  %599 = load i32, ptr %43, align 8, !tbaa !104
  %600 = sub i32 %599, %589
  store i32 %600, ptr %43, align 8, !tbaa !104
  %601 = load i64, ptr %582, align 8, !tbaa !55
  %602 = sub i64 %601, %586
  store i64 %602, ptr %582, align 8, !tbaa !55
  %603 = icmp eq i64 %601, %586
  br i1 %603, label %604, label %607

604:                                              ; preds = %588
  %605 = getelementptr inbounds nuw i8, ptr %581, i64 16
  %606 = load ptr, ptr %605, align 8, !tbaa !40
  store ptr %606, ptr %591, align 8, !tbaa !56
  br label %607

607:                                              ; preds = %580, %588, %604
  %608 = load i64, ptr %52, align 8, !tbaa !55
  %609 = icmp eq i64 %608, 0
  br i1 %609, label %610, label %612

610:                                              ; preds = %607
  %611 = load ptr, ptr %550, align 8, !tbaa !97
  br label %613

612:                                              ; preds = %607
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %940

613:                                              ; preds = %610, %562
  %614 = phi i64 [ %564, %562 ], [ 0, %610 ]
  %615 = phi ptr [ %567, %562 ], [ %611, %610 ]
  %616 = phi i64 [ %563, %562 ], [ 0, %610 ]
  %617 = getelementptr inbounds nuw i8, ptr %615, i64 40
  %618 = load ptr, ptr %617, align 8, !tbaa !110
  %619 = load i64, ptr %561, align 8, !tbaa !115
  %620 = add i64 %619, 1
  store i64 %620, ptr %561, align 8, !tbaa !115
  %621 = getelementptr inbounds nuw i8, ptr %618, i64 %619
  %622 = load i8, ptr %621, align 1, !tbaa !8
  %623 = load ptr, ptr %559, align 8, !tbaa !40
  %624 = add i64 %614, 1
  store i64 %624, ptr %52, align 8, !tbaa !55
  %625 = getelementptr inbounds nuw i8, ptr %623, i64 %614
  store i8 %622, ptr %625, align 1, !tbaa !8
  %626 = icmp eq i8 %622, 0
  br i1 %626, label %627, label %562, !llvm.loop !118

627:                                              ; preds = %613
  %628 = load ptr, ptr %550, align 8, !tbaa !97
  %629 = getelementptr inbounds nuw i8, ptr %628, i64 68
  %630 = load i32, ptr %629, align 4, !tbaa !108
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %641, label %632

632:                                              ; preds = %627
  %633 = load i64, ptr %52, align 8, !tbaa !55
  %634 = icmp ugt i64 %633, %616
  br i1 %634, label %635, label %641

635:                                              ; preds = %632
  %636 = load i64, ptr %558, align 8, !tbaa !57
  %637 = load ptr, ptr %559, align 8, !tbaa !40
  %638 = getelementptr inbounds nuw i8, ptr %637, i64 %616
  %639 = sub nuw i64 %633, %616
  %640 = tail call i64 @crc32_z(i64 noundef %636, ptr noundef %638, i64 noundef %639) #11
  store i64 %640, ptr %558, align 8, !tbaa !57
  br label %641

641:                                              ; preds = %635, %632, %627
  store i64 0, ptr %561, align 8, !tbaa !115
  br label %642

642:                                              ; preds = %549, %641
  store i32 91, ptr %20, align 8, !tbaa !29
  br label %643

643:                                              ; preds = %382, %642
  %644 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %645 = load ptr, ptr %644, align 8, !tbaa !97
  %646 = getelementptr inbounds nuw i8, ptr %645, i64 56
  %647 = load ptr, ptr %646, align 8, !tbaa !111
  %648 = icmp eq ptr %647, null
  br i1 %648, label %735, label %649

649:                                              ; preds = %643
  %650 = load i64, ptr %52, align 8, !tbaa !55
  %651 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %652 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %653 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %654 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %655 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %656

656:                                              ; preds = %707, %649
  %657 = phi i64 [ %650, %649 ], [ %710, %707 ]
  %658 = load i64, ptr %52, align 8, !tbaa !55
  %659 = load i64, ptr %651, align 8, !tbaa !41
  %660 = icmp eq i64 %658, %659
  %661 = load ptr, ptr %644, align 8, !tbaa !97
  br i1 %660, label %662, label %707

662:                                              ; preds = %656
  %663 = getelementptr inbounds nuw i8, ptr %661, i64 68
  %664 = load i32, ptr %663, align 4, !tbaa !108
  %665 = icmp ne i32 %664, 0
  %666 = icmp ugt i64 %658, %657
  %667 = select i1 %665, i1 %666, i1 false
  br i1 %667, label %668, label %674

668:                                              ; preds = %662
  %669 = load i64, ptr %652, align 8, !tbaa !57
  %670 = load ptr, ptr %653, align 8, !tbaa !40
  %671 = getelementptr inbounds nuw i8, ptr %670, i64 %657
  %672 = sub nuw i64 %658, %657
  %673 = tail call i64 @crc32_z(i64 noundef %669, ptr noundef %671, i64 noundef %672) #11
  store i64 %673, ptr %652, align 8, !tbaa !57
  br label %674

674:                                              ; preds = %668, %662
  %675 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %675) #11
  %676 = getelementptr inbounds nuw i8, ptr %675, i64 40
  %677 = load i64, ptr %676, align 8, !tbaa !55
  %678 = load i32, ptr %43, align 8, !tbaa !104
  %679 = zext i32 %678 to i64
  %680 = tail call i64 @llvm.umin.i64(i64 %677, i64 %679)
  %681 = icmp eq i64 %680, 0
  br i1 %681, label %701, label %682

682:                                              ; preds = %674
  %683 = trunc nuw i64 %680 to i32
  %684 = load ptr, ptr %25, align 8, !tbaa !103
  %685 = getelementptr inbounds nuw i8, ptr %675, i64 32
  %686 = load ptr, ptr %685, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %684, ptr align 1 %686, i64 %680, i1 false)
  %687 = load ptr, ptr %25, align 8, !tbaa !103
  %688 = getelementptr inbounds nuw i8, ptr %687, i64 %680
  store ptr %688, ptr %25, align 8, !tbaa !103
  %689 = load ptr, ptr %685, align 8, !tbaa !56
  %690 = getelementptr inbounds nuw i8, ptr %689, i64 %680
  store ptr %690, ptr %685, align 8, !tbaa !56
  %691 = load i64, ptr %654, align 8, !tbaa !105
  %692 = add i64 %691, %680
  store i64 %692, ptr %654, align 8, !tbaa !105
  %693 = load i32, ptr %43, align 8, !tbaa !104
  %694 = sub i32 %693, %683
  store i32 %694, ptr %43, align 8, !tbaa !104
  %695 = load i64, ptr %676, align 8, !tbaa !55
  %696 = sub i64 %695, %680
  store i64 %696, ptr %676, align 8, !tbaa !55
  %697 = icmp eq i64 %695, %680
  br i1 %697, label %698, label %701

698:                                              ; preds = %682
  %699 = getelementptr inbounds nuw i8, ptr %675, i64 16
  %700 = load ptr, ptr %699, align 8, !tbaa !40
  store ptr %700, ptr %685, align 8, !tbaa !56
  br label %701

701:                                              ; preds = %674, %682, %698
  %702 = load i64, ptr %52, align 8, !tbaa !55
  %703 = icmp eq i64 %702, 0
  br i1 %703, label %704, label %706

704:                                              ; preds = %701
  %705 = load ptr, ptr %644, align 8, !tbaa !97
  br label %707

706:                                              ; preds = %701
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %940

707:                                              ; preds = %704, %656
  %708 = phi i64 [ %658, %656 ], [ 0, %704 ]
  %709 = phi ptr [ %661, %656 ], [ %705, %704 ]
  %710 = phi i64 [ %657, %656 ], [ 0, %704 ]
  %711 = getelementptr inbounds nuw i8, ptr %709, i64 56
  %712 = load ptr, ptr %711, align 8, !tbaa !111
  %713 = load i64, ptr %655, align 8, !tbaa !115
  %714 = add i64 %713, 1
  store i64 %714, ptr %655, align 8, !tbaa !115
  %715 = getelementptr inbounds nuw i8, ptr %712, i64 %713
  %716 = load i8, ptr %715, align 1, !tbaa !8
  %717 = load ptr, ptr %653, align 8, !tbaa !40
  %718 = add i64 %708, 1
  store i64 %718, ptr %52, align 8, !tbaa !55
  %719 = getelementptr inbounds nuw i8, ptr %717, i64 %708
  store i8 %716, ptr %719, align 1, !tbaa !8
  %720 = icmp eq i8 %716, 0
  br i1 %720, label %721, label %656, !llvm.loop !119

721:                                              ; preds = %707
  %722 = load ptr, ptr %644, align 8, !tbaa !97
  %723 = getelementptr inbounds nuw i8, ptr %722, i64 68
  %724 = load i32, ptr %723, align 4, !tbaa !108
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %735, label %726

726:                                              ; preds = %721
  %727 = load i64, ptr %52, align 8, !tbaa !55
  %728 = icmp ugt i64 %727, %710
  br i1 %728, label %729, label %735

729:                                              ; preds = %726
  %730 = load i64, ptr %652, align 8, !tbaa !57
  %731 = load ptr, ptr %653, align 8, !tbaa !40
  %732 = getelementptr inbounds nuw i8, ptr %731, i64 %710
  %733 = sub nuw i64 %727, %710
  %734 = tail call i64 @crc32_z(i64 noundef %730, ptr noundef %732, i64 noundef %733) #11
  store i64 %734, ptr %652, align 8, !tbaa !57
  br label %735

735:                                              ; preds = %643, %721, %726, %729
  store i32 103, ptr %20, align 8, !tbaa !29
  br label %736

736:                                              ; preds = %382, %735
  %737 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %738 = load ptr, ptr %737, align 8, !tbaa !97
  %739 = getelementptr inbounds nuw i8, ptr %738, i64 68
  %740 = load i32, ptr %739, align 4, !tbaa !108
  %741 = icmp eq i32 %740, 0
  br i1 %741, label %769, label %742

742:                                              ; preds = %736
  %743 = load i64, ptr %52, align 8, !tbaa !55
  %744 = add i64 %743, 2
  %745 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %746 = load i64, ptr %745, align 8, !tbaa !41
  %747 = icmp ugt i64 %744, %746
  br i1 %747, label %748, label %752

748:                                              ; preds = %742
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %749 = load i64, ptr %52, align 8, !tbaa !55
  %750 = icmp eq i64 %749, 0
  br i1 %750, label %752, label %751

751:                                              ; preds = %748
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %940

752:                                              ; preds = %748, %742
  %753 = phi i64 [ 0, %748 ], [ %743, %742 ]
  %754 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %755 = load i64, ptr %754, align 8, !tbaa !57
  %756 = trunc i64 %755 to i8
  %757 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %758 = load ptr, ptr %757, align 8, !tbaa !40
  %759 = add i64 %753, 1
  store i64 %759, ptr %52, align 8, !tbaa !55
  %760 = getelementptr inbounds nuw i8, ptr %758, i64 %753
  store i8 %756, ptr %760, align 1, !tbaa !8
  %761 = load i64, ptr %754, align 8, !tbaa !57
  %762 = lshr i64 %761, 8
  %763 = trunc i64 %762 to i8
  %764 = load ptr, ptr %757, align 8, !tbaa !40
  %765 = load i64, ptr %52, align 8, !tbaa !55
  %766 = add i64 %765, 1
  store i64 %766, ptr %52, align 8, !tbaa !55
  %767 = getelementptr inbounds nuw i8, ptr %764, i64 %765
  store i8 %763, ptr %767, align 1, !tbaa !8
  %768 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  store i64 %768, ptr %754, align 8, !tbaa !57
  br label %769

769:                                              ; preds = %752, %736
  store i32 113, ptr %20, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %770 = load i64, ptr %52, align 8, !tbaa !55
  %771 = icmp eq i64 %770, 0
  br i1 %771, label %773, label %772

772:                                              ; preds = %769
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %940

773:                                              ; preds = %382, %116, %769
  %774 = load i32, ptr %29, align 8, !tbaa !79
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %776, label %785

776:                                              ; preds = %106, %773
  %777 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %778 = load i32, ptr %777, align 4, !tbaa !73
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %780, label %785

780:                                              ; preds = %776
  %781 = icmp eq i32 %1, 0
  br i1 %781, label %940, label %782

782:                                              ; preds = %780
  %783 = load i32, ptr %20, align 8, !tbaa !29
  %784 = icmp eq i32 %783, 666
  br i1 %784, label %843, label %785

785:                                              ; preds = %782, %776, %773
  %786 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %787 = load i32, ptr %786, align 4, !tbaa !46
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %789, label %791

789:                                              ; preds = %785
  %790 = tail call i32 @deflate_stored(ptr noundef nonnull %14, i32 noundef %1)
  br label %804

791:                                              ; preds = %785
  %792 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %793 = load i32, ptr %792, align 8, !tbaa !47
  switch i32 %793, label %798 [
    i32 2, label %794
    i32 3, label %796
  ]

794:                                              ; preds = %791
  %795 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %14, i32 noundef %1)
  br label %804

796:                                              ; preds = %791
  %797 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %14, i32 noundef %1)
  br label %804

798:                                              ; preds = %791
  %799 = sext i32 %787 to i64
  %800 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %799
  %801 = getelementptr inbounds nuw i8, ptr %800, i64 8
  %802 = load ptr, ptr %801, align 8, !tbaa !102
  %803 = tail call i32 %802(ptr noundef nonnull %14, i32 noundef %1) #11
  br label %804

804:                                              ; preds = %794, %798, %796, %789
  %805 = phi i32 [ %790, %789 ], [ %795, %794 ], [ %797, %796 ], [ %803, %798 ]
  %806 = and i32 %805, -2
  %807 = icmp eq i32 %806, 2
  br i1 %807, label %808, label %809

808:                                              ; preds = %804
  store i32 666, ptr %20, align 8, !tbaa !29
  br label %809

809:                                              ; preds = %804, %808
  %810 = and i32 %805, -3
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %812, label %816

812:                                              ; preds = %809
  %813 = load i32, ptr %43, align 8, !tbaa !104
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %815, label %940

815:                                              ; preds = %812
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %940

816:                                              ; preds = %809
  %817 = icmp eq i32 %805, 1
  br i1 %817, label %818, label %843

818:                                              ; preds = %816
  switch i32 %1, label %820 [
    i32 1, label %819
    i32 5, label %839
  ]

819:                                              ; preds = %818
  tail call void @_tr_align(ptr noundef nonnull %14) #11
  br label %839

820:                                              ; preds = %818
  tail call void @_tr_stored_block(ptr noundef nonnull %14, ptr noundef null, i64 noundef 0, i32 noundef 0) #11
  %821 = icmp eq i32 %1, 3
  br i1 %821, label %822, label %839

822:                                              ; preds = %820
  %823 = getelementptr inbounds nuw i8, ptr %14, i64 120
  %824 = load ptr, ptr %823, align 8, !tbaa !37
  %825 = getelementptr inbounds nuw i8, ptr %14, i64 132
  %826 = load i32, ptr %825, align 4, !tbaa !36
  %827 = add i32 %826, -1
  %828 = zext i32 %827 to i64
  %829 = getelementptr inbounds nuw [2 x i8], ptr %824, i64 %828
  store i16 0, ptr %829, align 2, !tbaa !60
  %830 = shl nuw nsw i64 %828, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %824, i8 0, i64 %830, i1 false)
  %831 = getelementptr inbounds nuw i8, ptr %14, i64 5960
  store i32 0, ptr %831, align 8, !tbaa !61
  %832 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %833 = load i32, ptr %832, align 4, !tbaa !73
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %835, label %839

835:                                              ; preds = %822
  %836 = getelementptr inbounds nuw i8, ptr %14, i64 172
  store i32 0, ptr %836, align 4, !tbaa !71
  %837 = getelementptr inbounds nuw i8, ptr %14, i64 152
  store i64 0, ptr %837, align 8, !tbaa !72
  %838 = getelementptr inbounds nuw i8, ptr %14, i64 5932
  store i32 0, ptr %838, align 4, !tbaa !74
  br label %839

839:                                              ; preds = %818, %822, %835, %820, %819
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %840 = load i32, ptr %43, align 8, !tbaa !104
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %842, label %843

842:                                              ; preds = %839
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %940

843:                                              ; preds = %839, %816, %782
  br i1 %37, label %940, label %844

844:                                              ; preds = %843
  %845 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %846 = load i32, ptr %845, align 8, !tbaa !30
  %847 = icmp slt i32 %846, 1
  br i1 %847, label %940, label %848

848:                                              ; preds = %844
  %849 = icmp eq i32 %846, 2
  %850 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %851 = load i64, ptr %850, align 8, !tbaa !57
  br i1 %849, label %852, label %903

852:                                              ; preds = %848
  %853 = trunc i64 %851 to i8
  %854 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %855 = load ptr, ptr %854, align 8, !tbaa !40
  %856 = load i64, ptr %52, align 8, !tbaa !55
  %857 = add i64 %856, 1
  store i64 %857, ptr %52, align 8, !tbaa !55
  %858 = getelementptr inbounds nuw i8, ptr %855, i64 %856
  store i8 %853, ptr %858, align 1, !tbaa !8
  %859 = load i64, ptr %850, align 8, !tbaa !57
  %860 = lshr i64 %859, 8
  %861 = trunc i64 %860 to i8
  %862 = load ptr, ptr %854, align 8, !tbaa !40
  %863 = load i64, ptr %52, align 8, !tbaa !55
  %864 = add i64 %863, 1
  store i64 %864, ptr %52, align 8, !tbaa !55
  %865 = getelementptr inbounds nuw i8, ptr %862, i64 %863
  store i8 %861, ptr %865, align 1, !tbaa !8
  %866 = load i64, ptr %850, align 8, !tbaa !57
  %867 = lshr i64 %866, 16
  %868 = trunc i64 %867 to i8
  %869 = load ptr, ptr %854, align 8, !tbaa !40
  %870 = load i64, ptr %52, align 8, !tbaa !55
  %871 = add i64 %870, 1
  store i64 %871, ptr %52, align 8, !tbaa !55
  %872 = getelementptr inbounds nuw i8, ptr %869, i64 %870
  store i8 %868, ptr %872, align 1, !tbaa !8
  %873 = load i64, ptr %850, align 8, !tbaa !57
  %874 = lshr i64 %873, 24
  %875 = trunc i64 %874 to i8
  %876 = load ptr, ptr %854, align 8, !tbaa !40
  %877 = load i64, ptr %52, align 8, !tbaa !55
  %878 = add i64 %877, 1
  store i64 %878, ptr %52, align 8, !tbaa !55
  %879 = getelementptr inbounds nuw i8, ptr %876, i64 %877
  store i8 %875, ptr %879, align 1, !tbaa !8
  %880 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %881 = load i64, ptr %880, align 8, !tbaa !53
  %882 = trunc i64 %881 to i8
  %883 = load ptr, ptr %854, align 8, !tbaa !40
  %884 = load i64, ptr %52, align 8, !tbaa !55
  %885 = add i64 %884, 1
  store i64 %885, ptr %52, align 8, !tbaa !55
  %886 = getelementptr inbounds nuw i8, ptr %883, i64 %884
  store i8 %882, ptr %886, align 1, !tbaa !8
  %887 = load i64, ptr %880, align 8, !tbaa !53
  %888 = lshr i64 %887, 8
  %889 = trunc i64 %888 to i8
  %890 = load ptr, ptr %854, align 8, !tbaa !40
  %891 = load i64, ptr %52, align 8, !tbaa !55
  %892 = add i64 %891, 1
  store i64 %892, ptr %52, align 8, !tbaa !55
  %893 = getelementptr inbounds nuw i8, ptr %890, i64 %891
  store i8 %889, ptr %893, align 1, !tbaa !8
  %894 = load i64, ptr %880, align 8, !tbaa !53
  %895 = lshr i64 %894, 16
  %896 = trunc i64 %895 to i8
  %897 = load ptr, ptr %854, align 8, !tbaa !40
  %898 = load i64, ptr %52, align 8, !tbaa !55
  %899 = add i64 %898, 1
  store i64 %899, ptr %52, align 8, !tbaa !55
  %900 = getelementptr inbounds nuw i8, ptr %897, i64 %898
  store i8 %896, ptr %900, align 1, !tbaa !8
  %901 = load i64, ptr %880, align 8, !tbaa !53
  %902 = lshr i64 %901, 24
  br label %924

903:                                              ; preds = %848
  %904 = lshr i64 %851, 16
  %905 = lshr i64 %851, 24
  %906 = trunc i64 %905 to i8
  %907 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %908 = load ptr, ptr %907, align 8, !tbaa !40
  %909 = load i64, ptr %52, align 8, !tbaa !55
  %910 = add i64 %909, 1
  store i64 %910, ptr %52, align 8, !tbaa !55
  %911 = getelementptr inbounds nuw i8, ptr %908, i64 %909
  store i8 %906, ptr %911, align 1, !tbaa !8
  %912 = trunc i64 %904 to i8
  %913 = load ptr, ptr %907, align 8, !tbaa !40
  %914 = load i64, ptr %52, align 8, !tbaa !55
  %915 = add i64 %914, 1
  store i64 %915, ptr %52, align 8, !tbaa !55
  %916 = getelementptr inbounds nuw i8, ptr %913, i64 %914
  store i8 %912, ptr %916, align 1, !tbaa !8
  %917 = load i64, ptr %850, align 8, !tbaa !57
  %918 = lshr i64 %917, 8
  %919 = trunc i64 %918 to i8
  %920 = load ptr, ptr %907, align 8, !tbaa !40
  %921 = load i64, ptr %52, align 8, !tbaa !55
  %922 = add i64 %921, 1
  store i64 %922, ptr %52, align 8, !tbaa !55
  %923 = getelementptr inbounds nuw i8, ptr %920, i64 %921
  store i8 %919, ptr %923, align 1, !tbaa !8
  br label %924

924:                                              ; preds = %903, %852
  %925 = phi ptr [ %907, %903 ], [ %854, %852 ]
  %926 = phi i64 [ %917, %903 ], [ %902, %852 ]
  %927 = trunc i64 %926 to i8
  %928 = load ptr, ptr %925, align 8, !tbaa !40
  %929 = load i64, ptr %52, align 8, !tbaa !55
  %930 = add i64 %929, 1
  store i64 %930, ptr %52, align 8, !tbaa !55
  %931 = getelementptr inbounds nuw i8, ptr %928, i64 %929
  store i8 %927, ptr %931, align 1, !tbaa !8
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %932 = load i32, ptr %845, align 8, !tbaa !30
  %933 = icmp sgt i32 %932, 0
  br i1 %933, label %934, label %936

934:                                              ; preds = %924
  %935 = sub nsw i32 0, %932
  store i32 %935, ptr %845, align 8, !tbaa !30
  br label %936

936:                                              ; preds = %934, %924
  %937 = load i64, ptr %52, align 8, !tbaa !55
  %938 = icmp eq i64 %937, 0
  %939 = zext i1 %938 to i32
  br label %940

940:                                              ; preds = %780, %12, %16, %19, %4, %8, %2, %512, %192, %812, %842, %815, %844, %843, %706, %612, %22, %936, %772, %751, %258, %109, %100, %87, %46, %39
  %941 = phi i32 [ -5, %100 ], [ -2, %39 ], [ -5, %46 ], [ 0, %87 ], [ -5, %109 ], [ 0, %258 ], [ 0, %751 ], [ 0, %772 ], [ -2, %22 ], [ 0, %843 ], [ %939, %936 ], [ 1, %844 ], [ 0, %706 ], [ 0, %612 ], [ 0, %512 ], [ 0, %192 ], [ 0, %815 ], [ 0, %842 ], [ 0, %812 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ 0, %780 ]
  ret i32 %941
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @slide_hash(ptr noundef captures(none) %0) unnamed_addr #6 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %3 = load i32, ptr %2, align 8, !tbaa !32
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %5 = load i32, ptr %4, align 4, !tbaa !36
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %8
  %10 = add i32 %5, -1
  %11 = zext i32 %10 to i64
  %12 = add nuw nsw i64 %11, 1
  %13 = icmp ult i32 %10, 7
  br i1 %13, label %35, label %14

14:                                               ; preds = %1
  %15 = and i64 %12, 8589934584
  %16 = mul nsw i64 %15, -2
  %17 = getelementptr i8, ptr %9, i64 %16
  %18 = trunc i64 %15 to i32
  %19 = sub i32 %5, %18
  %20 = insertelement <8 x i32> poison, i32 %3, i64 0
  %21 = shufflevector <8 x i32> %20, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %22

22:                                               ; preds = %22, %14
  %23 = phi i64 [ 0, %14 ], [ %31, %22 ]
  %24 = mul i64 %23, -2
  %25 = getelementptr i8, ptr %9, i64 %24
  %26 = getelementptr inbounds i8, ptr %25, i64 -16
  %27 = load <8 x i16>, ptr %26, align 2, !tbaa !60
  %28 = zext <8 x i16> %27 to <8 x i32>
  %29 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %28, <8 x i32> %21)
  %30 = trunc nuw <8 x i32> %29 to <8 x i16>
  store <8 x i16> %30, ptr %26, align 2, !tbaa !60
  %31 = add nuw i64 %23, 8
  %32 = icmp eq i64 %31, %15
  br i1 %32, label %33, label %22, !llvm.loop !122

33:                                               ; preds = %22
  %34 = icmp eq i64 %12, %15
  br i1 %34, label %48, label %35

35:                                               ; preds = %1, %33
  %36 = phi ptr [ %9, %1 ], [ %17, %33 ]
  %37 = phi i32 [ %5, %1 ], [ %19, %33 ]
  br label %38

38:                                               ; preds = %35, %38
  %39 = phi ptr [ %41, %38 ], [ %36, %35 ]
  %40 = phi i32 [ %46, %38 ], [ %37, %35 ]
  %41 = getelementptr inbounds i8, ptr %39, i64 -2
  %42 = load i16, ptr %41, align 2, !tbaa !60
  %43 = zext i16 %42 to i32
  %44 = tail call i32 @llvm.usub.sat.i32(i32 %43, i32 %3)
  %45 = trunc nuw i32 %44 to i16
  store i16 %45, ptr %41, align 2, !tbaa !60
  %46 = add i32 %40, -1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %38, !llvm.loop !123

48:                                               ; preds = %38, %33
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %50 = load ptr, ptr %49, align 8, !tbaa !35
  %51 = zext i32 %3 to i64
  %52 = getelementptr inbounds nuw [2 x i8], ptr %50, i64 %51
  %53 = add i32 %3, -1
  %54 = zext i32 %53 to i64
  %55 = add nuw nsw i64 %54, 1
  %56 = icmp ult i32 %53, 7
  br i1 %56, label %78, label %57

57:                                               ; preds = %48
  %58 = and i64 %55, 8589934584
  %59 = mul nsw i64 %58, -2
  %60 = getelementptr i8, ptr %52, i64 %59
  %61 = trunc i64 %58 to i32
  %62 = sub i32 %3, %61
  %63 = insertelement <8 x i32> poison, i32 %3, i64 0
  %64 = shufflevector <8 x i32> %63, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %65

65:                                               ; preds = %65, %57
  %66 = phi i64 [ 0, %57 ], [ %74, %65 ]
  %67 = mul i64 %66, -2
  %68 = getelementptr i8, ptr %52, i64 %67
  %69 = getelementptr inbounds i8, ptr %68, i64 -16
  %70 = load <8 x i16>, ptr %69, align 2, !tbaa !60
  %71 = zext <8 x i16> %70 to <8 x i32>
  %72 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %71, <8 x i32> %64)
  %73 = trunc nuw <8 x i32> %72 to <8 x i16>
  store <8 x i16> %73, ptr %69, align 2, !tbaa !60
  %74 = add nuw i64 %66, 8
  %75 = icmp eq i64 %74, %58
  br i1 %75, label %76, label %65, !llvm.loop !124

76:                                               ; preds = %65
  %77 = icmp eq i64 %55, %58
  br i1 %77, label %91, label %78

78:                                               ; preds = %48, %76
  %79 = phi ptr [ %52, %48 ], [ %60, %76 ]
  %80 = phi i32 [ %3, %48 ], [ %62, %76 ]
  br label %81

81:                                               ; preds = %78, %81
  %82 = phi ptr [ %84, %81 ], [ %79, %78 ]
  %83 = phi i32 [ %89, %81 ], [ %80, %78 ]
  %84 = getelementptr inbounds i8, ptr %82, i64 -2
  %85 = load i16, ptr %84, align 2, !tbaa !60
  %86 = zext i16 %85 to i32
  %87 = tail call i32 @llvm.usub.sat.i32(i32 %86, i32 %3)
  %88 = trunc nuw i32 %87 to i16
  store i16 %88, ptr %84, align 2, !tbaa !60
  %89 = add i32 %83, -1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %81, !llvm.loop !125

91:                                               ; preds = %81, %76
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 5960
  store i32 1, ptr %92, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateTune(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %17 = load ptr, ptr %16, align 8, !tbaa !19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !20
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %24 = load i32, ptr %23, align 8, !tbaa !29
  switch i32 %24, label %30 [
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
  %26 = getelementptr inbounds nuw i8, ptr %17, i64 204
  store i32 %1, ptr %26, align 4, !tbaa !66
  %27 = getelementptr inbounds nuw i8, ptr %17, i64 192
  store i32 %2, ptr %27, align 8, !tbaa !64
  %28 = getelementptr inbounds nuw i8, ptr %17, i64 208
  store i32 %3, ptr %28, align 8, !tbaa !68
  %29 = getelementptr inbounds nuw i8, ptr %17, i64 188
  store i32 %4, ptr %29, align 4, !tbaa !70
  br label %30

30:                                               ; preds = %15, %19, %22, %7, %11, %5, %25
  %31 = phi i32 [ 0, %25 ], [ -2, %5 ], [ -2, %11 ], [ -2, %7 ], [ -2, %22 ], [ -2, %19 ], [ -2, %15 ]
  ret i32 %31
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @deflateBound_z(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #7 {
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
  br i1 %21, label %40, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %24 = load ptr, ptr %23, align 8, !tbaa !15
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %28 = load ptr, ptr %27, align 8, !tbaa !17
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %32 = load ptr, ptr %31, align 8, !tbaa !19
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %32, align 8, !tbaa !20
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = getelementptr inbounds nuw i8, ptr %32, i64 8
  %39 = load i32, ptr %38, align 8, !tbaa !29
  switch i32 %39, label %40 [
    i32 42, label %43
    i32 57, label %43
    i32 69, label %43
    i32 73, label %43
    i32 91, label %43
    i32 103, label %43
    i32 113, label %43
    i32 666, label %43
  ]

40:                                               ; preds = %2, %26, %22, %37, %34, %30
  %41 = tail call i64 @llvm.umax.i64(i64 %11, i64 %20)
  %42 = tail call i64 @llvm.uadd.sat.i64(i64 %41, i64 18)
  br label %121

43:                                               ; preds = %37, %37, %37, %37, %37, %37, %37, %37
  %44 = getelementptr inbounds nuw i8, ptr %32, i64 48
  %45 = load i32, ptr %44, align 8, !tbaa !30
  %46 = tail call i32 @llvm.abs.i32(i32 %45, i1 true)
  switch i32 %46, label %91 [
    i32 0, label %92
    i32 1, label %47
    i32 2, label %52
  ]

47:                                               ; preds = %43
  %48 = getelementptr inbounds nuw i8, ptr %32, i64 172
  %49 = load i32, ptr %48, align 4, !tbaa !71
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i64 6, i64 10
  br label %92

52:                                               ; preds = %43
  %53 = getelementptr inbounds nuw i8, ptr %32, i64 56
  %54 = load ptr, ptr %53, align 8, !tbaa !97
  %55 = icmp eq ptr %54, null
  br i1 %55, label %92, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds nuw i8, ptr %54, i64 24
  %58 = load ptr, ptr %57, align 8, !tbaa !109
  %59 = icmp eq ptr %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds nuw i8, ptr %54, i64 32
  %62 = load i32, ptr %61, align 8, !tbaa !114
  %63 = add i32 %62, 2
  %64 = zext i32 %63 to i64
  %65 = add nuw nsw i64 %64, 18
  br label %66

66:                                               ; preds = %60, %56
  %67 = phi i64 [ %65, %60 ], [ 18, %56 ]
  %68 = getelementptr inbounds nuw i8, ptr %54, i64 40
  %69 = load ptr, ptr %68, align 8, !tbaa !110
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %69)
  %73 = add i64 %72, %67
  %74 = add i64 %73, 1
  br label %75

75:                                               ; preds = %71, %66
  %76 = phi i64 [ %67, %66 ], [ %74, %71 ]
  %77 = getelementptr inbounds nuw i8, ptr %54, i64 56
  %78 = load ptr, ptr %77, align 8, !tbaa !111
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %78)
  %82 = add i64 %81, %76
  %83 = add i64 %82, 1
  br label %84

84:                                               ; preds = %80, %75
  %85 = phi i64 [ %76, %75 ], [ %83, %80 ]
  %86 = getelementptr inbounds nuw i8, ptr %54, i64 68
  %87 = load i32, ptr %86, align 4, !tbaa !108
  %88 = icmp eq i32 %87, 0
  %89 = add i64 %85, 2
  %90 = select i1 %88, i64 %85, i64 %89
  br label %92

91:                                               ; preds = %43
  br label %92

92:                                               ; preds = %43, %52, %84, %91, %47
  %93 = phi i64 [ 18, %91 ], [ 18, %52 ], [ %51, %47 ], [ %90, %84 ], [ 0, %43 ]
  %94 = getelementptr inbounds nuw i8, ptr %32, i64 84
  %95 = load i32, ptr %94, align 4, !tbaa !31
  %96 = icmp eq i32 %95, 15
  %97 = getelementptr inbounds nuw i8, ptr %32, i64 136
  %98 = load i32, ptr %97, align 8, !tbaa !49
  %99 = icmp eq i32 %98, 15
  %100 = select i1 %96, i1 %99, i1 false
  br i1 %100, label %111, label %101

101:                                              ; preds = %92
  %102 = icmp ugt i32 %95, %98
  br i1 %102, label %107, label %103

103:                                              ; preds = %101
  %104 = getelementptr inbounds nuw i8, ptr %32, i64 196
  %105 = load i32, ptr %104, align 4, !tbaa !46
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103, %101
  br label %108

108:                                              ; preds = %103, %107
  %109 = phi i64 [ %20, %107 ], [ %11, %103 ]
  %110 = tail call i64 @llvm.uadd.sat.i64(i64 %109, i64 %93)
  br label %121

111:                                              ; preds = %92
  %112 = lshr i64 %1, 12
  %113 = lshr i64 %1, 14
  %114 = lshr i64 %1, 25
  %115 = add i64 %15, %112
  %116 = add i64 %115, %113
  %117 = add i64 %116, %114
  %118 = add i64 %117, %93
  %119 = icmp ult i64 %118, %1
  %120 = select i1 %119, i64 -1, i64 %118
  br label %121

121:                                              ; preds = %111, %108, %40
  %122 = phi i64 [ %42, %40 ], [ %110, %108 ], [ %120, %111 ]
  ret i64 %122
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @deflateBound(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #7 {
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
  br i1 %21, label %40, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %24 = load ptr, ptr %23, align 8, !tbaa !15
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %28 = load ptr, ptr %27, align 8, !tbaa !17
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %32 = load ptr, ptr %31, align 8, !tbaa !19
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %32, align 8, !tbaa !20
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = getelementptr inbounds nuw i8, ptr %32, i64 8
  %39 = load i32, ptr %38, align 8, !tbaa !29
  switch i32 %39, label %40 [
    i32 42, label %43
    i32 57, label %43
    i32 69, label %43
    i32 73, label %43
    i32 91, label %43
    i32 103, label %43
    i32 113, label %43
    i32 666, label %43
  ]

40:                                               ; preds = %37, %34, %30, %26, %22, %2
  %41 = tail call i64 @llvm.umax.i64(i64 %11, i64 %20)
  %42 = tail call i64 @llvm.uadd.sat.i64(i64 %41, i64 18)
  br label %121

43:                                               ; preds = %37, %37, %37, %37, %37, %37, %37, %37
  %44 = getelementptr inbounds nuw i8, ptr %32, i64 48
  %45 = load i32, ptr %44, align 8, !tbaa !30
  %46 = tail call i32 @llvm.abs.i32(i32 %45, i1 true)
  switch i32 %46, label %91 [
    i32 0, label %92
    i32 1, label %47
    i32 2, label %52
  ]

47:                                               ; preds = %43
  %48 = getelementptr inbounds nuw i8, ptr %32, i64 172
  %49 = load i32, ptr %48, align 4, !tbaa !71
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i64 6, i64 10
  br label %92

52:                                               ; preds = %43
  %53 = getelementptr inbounds nuw i8, ptr %32, i64 56
  %54 = load ptr, ptr %53, align 8, !tbaa !97
  %55 = icmp eq ptr %54, null
  br i1 %55, label %92, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds nuw i8, ptr %54, i64 24
  %58 = load ptr, ptr %57, align 8, !tbaa !109
  %59 = icmp eq ptr %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds nuw i8, ptr %54, i64 32
  %62 = load i32, ptr %61, align 8, !tbaa !114
  %63 = add i32 %62, 2
  %64 = zext i32 %63 to i64
  %65 = add nuw nsw i64 %64, 18
  br label %66

66:                                               ; preds = %60, %56
  %67 = phi i64 [ %65, %60 ], [ 18, %56 ]
  %68 = getelementptr inbounds nuw i8, ptr %54, i64 40
  %69 = load ptr, ptr %68, align 8, !tbaa !110
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %69)
  %73 = add nuw nsw i64 %67, 1
  %74 = add i64 %73, %72
  br label %75

75:                                               ; preds = %71, %66
  %76 = phi i64 [ %67, %66 ], [ %74, %71 ]
  %77 = getelementptr inbounds nuw i8, ptr %54, i64 56
  %78 = load ptr, ptr %77, align 8, !tbaa !111
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %78)
  %82 = add i64 %76, 1
  %83 = add i64 %82, %81
  br label %84

84:                                               ; preds = %80, %75
  %85 = phi i64 [ %76, %75 ], [ %83, %80 ]
  %86 = getelementptr inbounds nuw i8, ptr %54, i64 68
  %87 = load i32, ptr %86, align 4, !tbaa !108
  %88 = icmp eq i32 %87, 0
  %89 = add i64 %85, 2
  %90 = select i1 %88, i64 %85, i64 %89
  br label %92

91:                                               ; preds = %43
  br label %92

92:                                               ; preds = %91, %84, %52, %47, %43
  %93 = phi i64 [ 18, %91 ], [ 18, %52 ], [ %51, %47 ], [ %90, %84 ], [ 0, %43 ]
  %94 = getelementptr inbounds nuw i8, ptr %32, i64 84
  %95 = load i32, ptr %94, align 4, !tbaa !31
  %96 = icmp eq i32 %95, 15
  %97 = getelementptr inbounds nuw i8, ptr %32, i64 136
  %98 = load i32, ptr %97, align 8, !tbaa !49
  %99 = icmp eq i32 %98, 15
  %100 = select i1 %96, i1 %99, i1 false
  br i1 %100, label %111, label %101

101:                                              ; preds = %92
  %102 = icmp ugt i32 %95, %98
  br i1 %102, label %107, label %103

103:                                              ; preds = %101
  %104 = getelementptr inbounds nuw i8, ptr %32, i64 196
  %105 = load i32, ptr %104, align 4, !tbaa !46
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103, %101
  br label %108

108:                                              ; preds = %107, %103
  %109 = phi i64 [ %20, %107 ], [ %11, %103 ]
  %110 = tail call i64 @llvm.uadd.sat.i64(i64 %109, i64 %93)
  br label %121

111:                                              ; preds = %92
  %112 = lshr i64 %1, 12
  %113 = lshr i64 %1, 14
  %114 = lshr i64 %1, 25
  %115 = add i64 %15, %112
  %116 = add i64 %115, %113
  %117 = add i64 %116, %114
  %118 = add i64 %117, %93
  %119 = icmp ult i64 %118, %1
  %120 = select i1 %119, i64 -1, i64 %118
  br label %121

121:                                              ; preds = %40, %108, %111
  %122 = phi i64 [ %42, %40 ], [ %110, %108 ], [ %120, %111 ]
  ret i64 %122
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_pending(ptr noundef captures(none) %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %3) #11
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %5 = load i64, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i32, ptr %6, align 8, !tbaa !104
  %8 = zext i32 %7 to i64
  %9 = tail call i64 @llvm.umin.i64(i64 %5, i64 %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %1
  %12 = trunc nuw i64 %9 to i32
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %14 = load ptr, ptr %13, align 8, !tbaa !103
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %16, i64 %9, i1 false)
  %17 = load ptr, ptr %13, align 8, !tbaa !103
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 %9
  store ptr %18, ptr %13, align 8, !tbaa !103
  %19 = load ptr, ptr %15, align 8, !tbaa !56
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 %9
  store ptr %20, ptr %15, align 8, !tbaa !56
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %22 = load i64, ptr %21, align 8, !tbaa !105
  %23 = add i64 %22, %9
  store i64 %23, ptr %21, align 8, !tbaa !105
  %24 = load i32, ptr %6, align 8, !tbaa !104
  %25 = sub i32 %24, %12
  store i32 %25, ptr %6, align 8, !tbaa !104
  %26 = load i64, ptr %4, align 8, !tbaa !55
  %27 = sub i64 %26, %9
  store i64 %27, ptr %4, align 8, !tbaa !55
  %28 = icmp eq i64 %26, %9
  br i1 %28, label %29, label %32

29:                                               ; preds = %11
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %31 = load ptr, ptr %30, align 8, !tbaa !40
  store ptr %31, ptr %15, align 8, !tbaa !56
  br label %32

32:                                               ; preds = %11, %29, %1
  ret void
}

declare i64 @crc32_z(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @deflate_stored(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %4 = load i64, ptr %3, align 8, !tbaa !41
  %5 = add i64 %4, -5
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %7 = load i32, ptr %6, align 8, !tbaa !32
  %8 = zext i32 %7 to i64
  %9 = tail call i64 @llvm.umin.i64(i64 %5, i64 %8)
  %10 = trunc nuw i64 %9 to i32
  %11 = load ptr, ptr %0, align 8, !tbaa !20
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %13 = load i32, ptr %12, align 8, !tbaa !79
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %17 = icmp eq i32 %1, 4
  %18 = icmp ne i32 %1, 0
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %22

22:                                               ; preds = %182, %2
  %23 = load i32, ptr %14, align 4, !tbaa !98
  %24 = add i32 %23, 42
  %25 = lshr i32 %24, 3
  %26 = load ptr, ptr %0, align 8, !tbaa !20
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 32
  %28 = load i32, ptr %27, align 8, !tbaa !104
  %29 = icmp ult i32 %28, %25
  br i1 %29, label %185, label %30

30:                                               ; preds = %22
  %31 = sub nuw i32 %28, %25
  %32 = load i32, ptr %15, align 4, !tbaa !71
  %33 = load i64, ptr %16, align 8, !tbaa !72
  %34 = trunc i64 %33 to i32
  %35 = sub i32 %32, %34
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %38 = load i32, ptr %37, align 8, !tbaa !79
  %39 = zext i32 %38 to i64
  %40 = add nuw nsw i64 %36, %39
  %41 = icmp samesign ult i64 %40, 65535
  %42 = add i32 %35, %38
  %43 = select i1 %41, i32 %42, i32 65535
  %44 = tail call i32 @llvm.umin.i32(i32 %43, i32 %31)
  %45 = icmp ult i32 %44, %10
  br i1 %45, label %46, label %52

46:                                               ; preds = %30
  %47 = icmp ne i32 %44, 0
  %48 = or i1 %17, %47
  %49 = icmp eq i32 %44, %42
  %50 = and i1 %48, %49
  %51 = and i1 %50, %18
  br i1 %51, label %52, label %185

52:                                               ; preds = %46, %30
  %53 = icmp eq i32 %44, %42
  %54 = and i1 %17, %53
  %55 = zext i1 %54 to i32
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i32 noundef %55) #11
  %56 = trunc i32 %44 to i8
  %57 = load ptr, ptr %19, align 8, !tbaa !40
  %58 = load i64, ptr %20, align 8, !tbaa !55
  %59 = getelementptr i8, ptr %57, i64 %58
  %60 = getelementptr i8, ptr %59, i64 -4
  store i8 %56, ptr %60, align 1, !tbaa !8
  %61 = lshr i32 %44, 8
  %62 = trunc i32 %61 to i8
  %63 = load ptr, ptr %19, align 8, !tbaa !40
  %64 = load i64, ptr %20, align 8, !tbaa !55
  %65 = getelementptr i8, ptr %63, i64 %64
  %66 = getelementptr i8, ptr %65, i64 -3
  store i8 %62, ptr %66, align 1, !tbaa !8
  %67 = xor i32 %44, -1
  %68 = trunc i32 %67 to i8
  %69 = load ptr, ptr %19, align 8, !tbaa !40
  %70 = load i64, ptr %20, align 8, !tbaa !55
  %71 = getelementptr i8, ptr %69, i64 %70
  %72 = getelementptr i8, ptr %71, i64 -2
  store i8 %68, ptr %72, align 1, !tbaa !8
  %73 = lshr i32 %67, 8
  %74 = trunc i32 %73 to i8
  %75 = load ptr, ptr %19, align 8, !tbaa !40
  %76 = load i64, ptr %20, align 8, !tbaa !55
  %77 = getelementptr i8, ptr %75, i64 %76
  %78 = getelementptr i8, ptr %77, i64 -1
  store i8 %74, ptr %78, align 1, !tbaa !8
  %79 = load ptr, ptr %0, align 8, !tbaa !20
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 56
  %81 = load ptr, ptr %80, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %81) #11
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 40
  %83 = load i64, ptr %82, align 8, !tbaa !55
  %84 = getelementptr inbounds nuw i8, ptr %79, i64 32
  %85 = load i32, ptr %84, align 8, !tbaa !104
  %86 = zext i32 %85 to i64
  %87 = tail call i64 @llvm.umin.i64(i64 %83, i64 %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %110, label %89

89:                                               ; preds = %52
  %90 = trunc nuw i64 %87 to i32
  %91 = getelementptr inbounds nuw i8, ptr %79, i64 24
  %92 = load ptr, ptr %91, align 8, !tbaa !103
  %93 = getelementptr inbounds nuw i8, ptr %81, i64 32
  %94 = load ptr, ptr %93, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %92, ptr align 1 %94, i64 %87, i1 false)
  %95 = load ptr, ptr %91, align 8, !tbaa !103
  %96 = getelementptr inbounds nuw i8, ptr %95, i64 %87
  store ptr %96, ptr %91, align 8, !tbaa !103
  %97 = load ptr, ptr %93, align 8, !tbaa !56
  %98 = getelementptr inbounds nuw i8, ptr %97, i64 %87
  store ptr %98, ptr %93, align 8, !tbaa !56
  %99 = getelementptr inbounds nuw i8, ptr %79, i64 40
  %100 = load i64, ptr %99, align 8, !tbaa !105
  %101 = add i64 %100, %87
  store i64 %101, ptr %99, align 8, !tbaa !105
  %102 = load i32, ptr %84, align 8, !tbaa !104
  %103 = sub i32 %102, %90
  store i32 %103, ptr %84, align 8, !tbaa !104
  %104 = load i64, ptr %82, align 8, !tbaa !55
  %105 = sub i64 %104, %87
  store i64 %105, ptr %82, align 8, !tbaa !55
  %106 = icmp eq i64 %104, %87
  br i1 %106, label %107, label %110

107:                                              ; preds = %89
  %108 = getelementptr inbounds nuw i8, ptr %81, i64 16
  %109 = load ptr, ptr %108, align 8, !tbaa !40
  store ptr %109, ptr %93, align 8, !tbaa !56
  br label %110

110:                                              ; preds = %52, %89, %107
  %111 = icmp eq i32 %32, %34
  br i1 %111, label %134, label %112

112:                                              ; preds = %110
  %113 = tail call i32 @llvm.umin.i32(i32 %35, i32 %44)
  %114 = load ptr, ptr %0, align 8, !tbaa !20
  %115 = getelementptr inbounds nuw i8, ptr %114, i64 24
  %116 = load ptr, ptr %115, align 8, !tbaa !103
  %117 = load ptr, ptr %21, align 8, !tbaa !34
  %118 = load i64, ptr %16, align 8, !tbaa !72
  %119 = getelementptr inbounds i8, ptr %117, i64 %118
  %120 = zext i32 %113 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %116, ptr align 1 %119, i64 %120, i1 false)
  %121 = load ptr, ptr %0, align 8, !tbaa !20
  %122 = getelementptr inbounds nuw i8, ptr %121, i64 24
  %123 = load ptr, ptr %122, align 8, !tbaa !103
  %124 = getelementptr inbounds nuw i8, ptr %123, i64 %120
  store ptr %124, ptr %122, align 8, !tbaa !103
  %125 = getelementptr inbounds nuw i8, ptr %121, i64 32
  %126 = load i32, ptr %125, align 8, !tbaa !104
  %127 = sub i32 %126, %113
  store i32 %127, ptr %125, align 8, !tbaa !104
  %128 = getelementptr inbounds nuw i8, ptr %121, i64 40
  %129 = load i64, ptr %128, align 8, !tbaa !105
  %130 = add i64 %129, %120
  store i64 %130, ptr %128, align 8, !tbaa !105
  %131 = load i64, ptr %16, align 8, !tbaa !72
  %132 = add nsw i64 %131, %120
  store i64 %132, ptr %16, align 8, !tbaa !72
  %133 = sub i32 %44, %113
  br label %134

134:                                              ; preds = %112, %110
  %135 = phi i32 [ %133, %112 ], [ %44, %110 ]
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %182, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr %0, align 8, !tbaa !20
  %139 = getelementptr inbounds nuw i8, ptr %138, i64 24
  %140 = load ptr, ptr %139, align 8, !tbaa !103
  %141 = getelementptr inbounds nuw i8, ptr %138, i64 8
  %142 = load i32, ptr %141, align 8, !tbaa !79
  %143 = tail call i32 @llvm.umin.i32(i32 %142, i32 %135)
  %144 = icmp eq i32 %142, 0
  br i1 %144, label %170, label %145

145:                                              ; preds = %137
  %146 = sub i32 %142, %143
  store i32 %146, ptr %141, align 8, !tbaa !79
  %147 = load ptr, ptr %138, align 8, !tbaa !80
  %148 = zext i32 %143 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %140, ptr align 1 %147, i64 %148, i1 false)
  %149 = getelementptr inbounds nuw i8, ptr %138, i64 56
  %150 = load ptr, ptr %149, align 8, !tbaa !19
  %151 = getelementptr inbounds nuw i8, ptr %150, i64 48
  %152 = load i32, ptr %151, align 8, !tbaa !30
  switch i32 %152, label %161 [
    i32 1, label %153
    i32 2, label %157
  ]

153:                                              ; preds = %145
  %154 = getelementptr inbounds nuw i8, ptr %138, i64 96
  %155 = load i64, ptr %154, align 8, !tbaa !57
  %156 = tail call i64 @adler32(i64 noundef %155, ptr noundef %140, i32 noundef %143) #11
  store i64 %156, ptr %154, align 8, !tbaa !57
  br label %161

157:                                              ; preds = %145
  %158 = getelementptr inbounds nuw i8, ptr %138, i64 96
  %159 = load i64, ptr %158, align 8, !tbaa !57
  %160 = tail call i64 @crc32(i64 noundef %159, ptr noundef %140, i32 noundef %143) #11
  store i64 %160, ptr %158, align 8, !tbaa !57
  br label %161

161:                                              ; preds = %157, %153, %145
  %162 = load ptr, ptr %138, align 8, !tbaa !80
  %163 = getelementptr inbounds nuw i8, ptr %162, i64 %148
  store ptr %163, ptr %138, align 8, !tbaa !80
  %164 = getelementptr inbounds nuw i8, ptr %138, i64 16
  %165 = load i64, ptr %164, align 8, !tbaa !53
  %166 = add i64 %165, %148
  store i64 %166, ptr %164, align 8, !tbaa !53
  %167 = load ptr, ptr %0, align 8, !tbaa !20
  %168 = getelementptr inbounds nuw i8, ptr %167, i64 24
  %169 = load ptr, ptr %168, align 8, !tbaa !103
  br label %170

170:                                              ; preds = %137, %161
  %171 = phi ptr [ %140, %137 ], [ %169, %161 ]
  %172 = phi ptr [ %138, %137 ], [ %167, %161 ]
  %173 = getelementptr inbounds nuw i8, ptr %172, i64 24
  %174 = zext i32 %135 to i64
  %175 = getelementptr inbounds nuw i8, ptr %171, i64 %174
  store ptr %175, ptr %173, align 8, !tbaa !103
  %176 = getelementptr inbounds nuw i8, ptr %172, i64 32
  %177 = load i32, ptr %176, align 8, !tbaa !104
  %178 = sub i32 %177, %135
  store i32 %178, ptr %176, align 8, !tbaa !104
  %179 = getelementptr inbounds nuw i8, ptr %172, i64 40
  %180 = load i64, ptr %179, align 8, !tbaa !105
  %181 = add i64 %180, %174
  store i64 %181, ptr %179, align 8, !tbaa !105
  br label %182

182:                                              ; preds = %134, %170
  br i1 %54, label %183, label %22, !llvm.loop !126

183:                                              ; preds = %182
  %184 = load ptr, ptr %0, align 8, !tbaa !20
  br label %185, !llvm.loop !126

185:                                              ; preds = %46, %22, %183
  %186 = phi ptr [ %184, %183 ], [ %26, %22 ], [ %26, %46 ]
  %187 = phi i1 [ false, %183 ], [ true, %22 ], [ true, %46 ]
  %188 = getelementptr inbounds nuw i8, ptr %186, i64 8
  %189 = load i32, ptr %188, align 8, !tbaa !79
  %190 = sub i32 %13, %189
  %191 = icmp eq i32 %13, %189
  br i1 %191, label %192, label %195

192:                                              ; preds = %185
  %193 = load i32, ptr %15, align 4, !tbaa !71
  %194 = zext i32 %193 to i64
  br label %252

195:                                              ; preds = %185
  %196 = load i32, ptr %6, align 8, !tbaa !32
  %197 = icmp ult i32 %190, %196
  br i1 %197, label %207, label %198

198:                                              ; preds = %195
  %199 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 2, ptr %199, align 8, !tbaa !121
  %200 = load ptr, ptr %21, align 8, !tbaa !34
  %201 = load ptr, ptr %186, align 8, !tbaa !80
  %202 = zext i32 %196 to i64
  %203 = sub nsw i64 0, %202
  %204 = getelementptr inbounds i8, ptr %201, i64 %203
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %200, ptr align 1 %204, i64 %202, i1 false)
  %205 = load i32, ptr %6, align 8, !tbaa !32
  store i32 %205, ptr %15, align 4, !tbaa !71
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %205, ptr %206, align 4, !tbaa !74
  br label %249

207:                                              ; preds = %195
  %208 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %209 = load i64, ptr %208, align 8, !tbaa !59
  %210 = load i32, ptr %15, align 4, !tbaa !71
  %211 = zext i32 %210 to i64
  %212 = sub i64 %209, %211
  %213 = zext i32 %190 to i64
  %214 = icmp ugt i64 %212, %213
  br i1 %214, label %232, label %215

215:                                              ; preds = %207
  %216 = sub i32 %210, %196
  store i32 %216, ptr %15, align 4, !tbaa !71
  %217 = load ptr, ptr %21, align 8, !tbaa !34
  %218 = zext i32 %196 to i64
  %219 = getelementptr inbounds nuw i8, ptr %217, i64 %218
  %220 = zext i32 %216 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %217, ptr nonnull align 1 %219, i64 %220, i1 false)
  %221 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %222 = load i32, ptr %221, align 8, !tbaa !121
  %223 = icmp ult i32 %222, 2
  br i1 %223, label %224, label %226

224:                                              ; preds = %215
  %225 = add nuw nsw i32 %222, 1
  store i32 %225, ptr %221, align 8, !tbaa !121
  br label %226

226:                                              ; preds = %224, %215
  %227 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %228 = load i32, ptr %227, align 4, !tbaa !74
  %229 = load i32, ptr %15, align 4, !tbaa !71
  %230 = icmp ugt i32 %228, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %226
  store i32 %229, ptr %227, align 4, !tbaa !74
  br label %232

232:                                              ; preds = %226, %231, %207
  %233 = phi i32 [ %229, %226 ], [ %229, %231 ], [ %210, %207 ]
  %234 = load ptr, ptr %21, align 8, !tbaa !34
  %235 = zext i32 %233 to i64
  %236 = getelementptr inbounds nuw i8, ptr %234, i64 %235
  %237 = load ptr, ptr %0, align 8, !tbaa !20
  %238 = load ptr, ptr %237, align 8, !tbaa !80
  %239 = sub nsw i64 0, %213
  %240 = getelementptr inbounds i8, ptr %238, i64 %239
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %236, ptr nonnull align 1 %240, i64 %213, i1 false)
  %241 = load i32, ptr %15, align 4, !tbaa !71
  %242 = add i32 %241, %190
  store i32 %242, ptr %15, align 4, !tbaa !71
  %243 = load i32, ptr %6, align 8, !tbaa !32
  %244 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %245 = load i32, ptr %244, align 4, !tbaa !74
  %246 = sub i32 %243, %245
  %247 = tail call i32 @llvm.umin.i32(i32 %190, i32 %246)
  %248 = add i32 %247, %245
  store i32 %248, ptr %244, align 4, !tbaa !74
  br label %249

249:                                              ; preds = %232, %198
  %250 = phi i32 [ %242, %232 ], [ %205, %198 ]
  %251 = zext i32 %250 to i64
  store i64 %251, ptr %16, align 8, !tbaa !72
  br label %252

252:                                              ; preds = %192, %249
  %253 = phi i64 [ %194, %192 ], [ %251, %249 ]
  %254 = phi i32 [ %193, %192 ], [ %250, %249 ]
  %255 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %256 = load i64, ptr %255, align 8, !tbaa !38
  %257 = icmp ult i64 %256, %253
  br i1 %257, label %258, label %259

258:                                              ; preds = %252
  store i64 %253, ptr %255, align 8, !tbaa !38
  br label %259

259:                                              ; preds = %258, %252
  br i1 %187, label %260, label %423

260:                                              ; preds = %259
  switch i32 %1, label %261 [
    i32 4, label %269
    i32 0, label %269
  ]

261:                                              ; preds = %260
  %262 = load ptr, ptr %0, align 8, !tbaa !20
  %263 = getelementptr inbounds nuw i8, ptr %262, i64 8
  %264 = load i32, ptr %263, align 8, !tbaa !79
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %261
  %267 = load i64, ptr %16, align 8, !tbaa !72
  %268 = icmp eq i64 %267, %253
  br i1 %268, label %426, label %269

269:                                              ; preds = %260, %260, %266, %261
  %270 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %271 = load i64, ptr %270, align 8, !tbaa !59
  %272 = trunc i64 %271 to i32
  %273 = sub i32 %272, %254
  %274 = load ptr, ptr %0, align 8, !tbaa !20
  %275 = getelementptr inbounds nuw i8, ptr %274, i64 8
  %276 = load i32, ptr %275, align 8, !tbaa !79
  %277 = icmp ugt i32 %276, %273
  br i1 %277, label %278, label %302

278:                                              ; preds = %269
  %279 = load i64, ptr %16, align 8, !tbaa !72
  %280 = load i32, ptr %6, align 8, !tbaa !32
  %281 = zext i32 %280 to i64
  %282 = icmp slt i64 %279, %281
  br i1 %282, label %302, label %283

283:                                              ; preds = %278
  %284 = sub nsw i64 %279, %281
  store i64 %284, ptr %16, align 8, !tbaa !72
  %285 = sub i32 %254, %280
  store i32 %285, ptr %15, align 4, !tbaa !71
  %286 = load ptr, ptr %21, align 8, !tbaa !34
  %287 = getelementptr inbounds nuw i8, ptr %286, i64 %281
  %288 = zext i32 %285 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %286, ptr align 1 %287, i64 %288, i1 false)
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %290 = load i32, ptr %289, align 8, !tbaa !121
  %291 = icmp ult i32 %290, 2
  br i1 %291, label %292, label %294

292:                                              ; preds = %283
  %293 = add nuw nsw i32 %290, 1
  store i32 %293, ptr %289, align 8, !tbaa !121
  br label %294

294:                                              ; preds = %292, %283
  %295 = load i32, ptr %6, align 8, !tbaa !32
  %296 = add i32 %295, %273
  %297 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %298 = load i32, ptr %297, align 4, !tbaa !74
  %299 = load i32, ptr %15, align 4, !tbaa !71
  %300 = icmp ugt i32 %298, %299
  br i1 %300, label %301, label %302

301:                                              ; preds = %294
  store i32 %299, ptr %297, align 4, !tbaa !74
  br label %302

302:                                              ; preds = %294, %301, %278, %269
  %303 = phi i32 [ %299, %301 ], [ %299, %294 ], [ %254, %278 ], [ %254, %269 ]
  %304 = phi i32 [ %296, %301 ], [ %296, %294 ], [ %273, %278 ], [ %273, %269 ]
  %305 = load ptr, ptr %0, align 8, !tbaa !20
  %306 = getelementptr inbounds nuw i8, ptr %305, i64 8
  %307 = load i32, ptr %306, align 8, !tbaa !79
  %308 = tail call i32 @llvm.umin.i32(i32 %304, i32 %307)
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %343, label %310

310:                                              ; preds = %302
  %311 = load ptr, ptr %21, align 8, !tbaa !34
  %312 = zext i32 %303 to i64
  %313 = getelementptr inbounds nuw i8, ptr %311, i64 %312
  %314 = sub i32 %307, %308
  store i32 %314, ptr %306, align 8, !tbaa !79
  %315 = load ptr, ptr %305, align 8, !tbaa !80
  %316 = zext i32 %308 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %313, ptr align 1 %315, i64 %316, i1 false)
  %317 = getelementptr inbounds nuw i8, ptr %305, i64 56
  %318 = load ptr, ptr %317, align 8, !tbaa !19
  %319 = getelementptr inbounds nuw i8, ptr %318, i64 48
  %320 = load i32, ptr %319, align 8, !tbaa !30
  switch i32 %320, label %329 [
    i32 1, label %321
    i32 2, label %325
  ]

321:                                              ; preds = %310
  %322 = getelementptr inbounds nuw i8, ptr %305, i64 96
  %323 = load i64, ptr %322, align 8, !tbaa !57
  %324 = tail call i64 @adler32(i64 noundef %323, ptr noundef %313, i32 noundef %308) #11
  store i64 %324, ptr %322, align 8, !tbaa !57
  br label %329

325:                                              ; preds = %310
  %326 = getelementptr inbounds nuw i8, ptr %305, i64 96
  %327 = load i64, ptr %326, align 8, !tbaa !57
  %328 = tail call i64 @crc32(i64 noundef %327, ptr noundef %313, i32 noundef %308) #11
  store i64 %328, ptr %326, align 8, !tbaa !57
  br label %329

329:                                              ; preds = %310, %321, %325
  %330 = load ptr, ptr %305, align 8, !tbaa !80
  %331 = getelementptr inbounds nuw i8, ptr %330, i64 %316
  store ptr %331, ptr %305, align 8, !tbaa !80
  %332 = getelementptr inbounds nuw i8, ptr %305, i64 16
  %333 = load i64, ptr %332, align 8, !tbaa !53
  %334 = add i64 %333, %316
  store i64 %334, ptr %332, align 8, !tbaa !53
  %335 = load i32, ptr %15, align 4, !tbaa !71
  %336 = add i32 %335, %308
  store i32 %336, ptr %15, align 4, !tbaa !71
  %337 = load i32, ptr %6, align 8, !tbaa !32
  %338 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %339 = load i32, ptr %338, align 4, !tbaa !74
  %340 = sub i32 %337, %339
  %341 = tail call i32 @llvm.umin.i32(i32 %308, i32 %340)
  %342 = add i32 %341, %339
  store i32 %342, ptr %338, align 4, !tbaa !74
  br label %343

343:                                              ; preds = %329, %302
  %344 = phi i32 [ %336, %329 ], [ %303, %302 ]
  %345 = load i64, ptr %255, align 8, !tbaa !38
  %346 = zext i32 %344 to i64
  %347 = icmp ult i64 %345, %346
  br i1 %347, label %348, label %349

348:                                              ; preds = %343
  store i64 %346, ptr %255, align 8, !tbaa !38
  br label %349

349:                                              ; preds = %348, %343
  %350 = load i32, ptr %14, align 4, !tbaa !98
  %351 = add i32 %350, 42
  %352 = lshr i32 %351, 3
  %353 = load i64, ptr %3, align 8, !tbaa !41
  %354 = zext nneg i32 %352 to i64
  %355 = sub i64 %353, %354
  %356 = tail call i64 @llvm.umin.i64(i64 %355, i64 65535)
  %357 = trunc nuw nsw i64 %356 to i32
  %358 = load i32, ptr %6, align 8, !tbaa !32
  %359 = tail call i32 @llvm.umin.i32(i32 %358, i32 %357)
  %360 = load i64, ptr %16, align 8, !tbaa !72
  %361 = trunc i64 %360 to i32
  %362 = sub i32 %344, %361
  %363 = icmp ult i32 %362, %359
  br i1 %363, label %364, label %373

364:                                              ; preds = %349
  %365 = icmp ne i32 %344, %361
  %366 = or i1 %17, %365
  %367 = and i1 %18, %366
  br i1 %367, label %368, label %426

368:                                              ; preds = %364
  %369 = load ptr, ptr %0, align 8, !tbaa !20
  %370 = getelementptr inbounds nuw i8, ptr %369, i64 8
  %371 = load i32, ptr %370, align 8, !tbaa !79
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %426

373:                                              ; preds = %368, %349
  %374 = tail call i32 @llvm.umin.i32(i32 %362, i32 %357)
  br i1 %17, label %375, label %383

375:                                              ; preds = %373
  %376 = load ptr, ptr %0, align 8, !tbaa !20
  %377 = getelementptr inbounds nuw i8, ptr %376, i64 8
  %378 = load i32, ptr %377, align 8, !tbaa !79
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %375
  %381 = icmp ule i32 %362, %357
  %382 = zext i1 %381 to i32
  br label %383

383:                                              ; preds = %380, %375, %373
  %384 = phi i32 [ 0, %375 ], [ 0, %373 ], [ %382, %380 ]
  %385 = load ptr, ptr %21, align 8, !tbaa !34
  %386 = getelementptr inbounds i8, ptr %385, i64 %360
  %387 = zext nneg i32 %374 to i64
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef %386, i64 noundef %387, i32 noundef %384) #11
  %388 = load i64, ptr %16, align 8, !tbaa !72
  %389 = add nsw i64 %388, %387
  store i64 %389, ptr %16, align 8, !tbaa !72
  %390 = load ptr, ptr %0, align 8, !tbaa !20
  %391 = getelementptr inbounds nuw i8, ptr %390, i64 56
  %392 = load ptr, ptr %391, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %392) #11
  %393 = getelementptr inbounds nuw i8, ptr %392, i64 40
  %394 = load i64, ptr %393, align 8, !tbaa !55
  %395 = getelementptr inbounds nuw i8, ptr %390, i64 32
  %396 = load i32, ptr %395, align 8, !tbaa !104
  %397 = zext i32 %396 to i64
  %398 = tail call i64 @llvm.umin.i64(i64 %394, i64 %397)
  %399 = icmp eq i64 %398, 0
  br i1 %399, label %421, label %400

400:                                              ; preds = %383
  %401 = trunc nuw i64 %398 to i32
  %402 = getelementptr inbounds nuw i8, ptr %390, i64 24
  %403 = load ptr, ptr %402, align 8, !tbaa !103
  %404 = getelementptr inbounds nuw i8, ptr %392, i64 32
  %405 = load ptr, ptr %404, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %403, ptr align 1 %405, i64 %398, i1 false)
  %406 = load ptr, ptr %402, align 8, !tbaa !103
  %407 = getelementptr inbounds nuw i8, ptr %406, i64 %398
  store ptr %407, ptr %402, align 8, !tbaa !103
  %408 = load ptr, ptr %404, align 8, !tbaa !56
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 %398
  store ptr %409, ptr %404, align 8, !tbaa !56
  %410 = getelementptr inbounds nuw i8, ptr %390, i64 40
  %411 = load i64, ptr %410, align 8, !tbaa !105
  %412 = add i64 %411, %398
  store i64 %412, ptr %410, align 8, !tbaa !105
  %413 = load i32, ptr %395, align 8, !tbaa !104
  %414 = sub i32 %413, %401
  store i32 %414, ptr %395, align 8, !tbaa !104
  %415 = load i64, ptr %393, align 8, !tbaa !55
  %416 = sub i64 %415, %398
  store i64 %416, ptr %393, align 8, !tbaa !55
  %417 = icmp eq i64 %415, %398
  br i1 %417, label %418, label %421

418:                                              ; preds = %400
  %419 = getelementptr inbounds nuw i8, ptr %392, i64 16
  %420 = load ptr, ptr %419, align 8, !tbaa !40
  store ptr %420, ptr %404, align 8, !tbaa !56
  br label %421

421:                                              ; preds = %383, %400, %418
  %422 = icmp eq i32 %384, 0
  br i1 %422, label %426, label %423

423:                                              ; preds = %421, %259
  %424 = phi i32 [ 3, %259 ], [ 2, %421 ]
  %425 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 8, ptr %425, align 8, !tbaa !99
  br label %426

426:                                              ; preds = %423, %421, %368, %364, %266
  %427 = phi i32 [ 0, %368 ], [ 1, %266 ], [ 0, %364 ], [ 0, %421 ], [ %424, %423 ]
  ret i32 %427
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @deflate_huff(ptr noundef %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 5960
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  br label %24

24:                                               ; preds = %363, %2
  %25 = load i32, ptr %3, align 4, !tbaa !73
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %282

27:                                               ; preds = %24
  %28 = load i32, ptr %4, align 8, !tbaa !32
  %29 = add i32 %28, -262
  %30 = zext i32 %28 to i64
  %31 = insertelement <2 x i32> poison, i32 %28, i64 0
  %32 = shufflevector <2 x i32> %31, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %33

33:                                               ; preds = %240, %27
  %34 = phi i32 [ %188, %240 ], [ 0, %27 ]
  %35 = load i64, ptr %5, align 8, !tbaa !59
  %36 = zext nneg i32 %34 to i64
  %37 = load i32, ptr %6, align 4, !tbaa !71
  %38 = zext i32 %37 to i64
  %39 = add nuw nsw i64 %36, %38
  %40 = sub i64 %35, %39
  %41 = trunc i64 %40 to i32
  %42 = load i32, ptr %4, align 8, !tbaa !32
  %43 = add i32 %29, %42
  %44 = icmp ult i32 %37, %43
  br i1 %44, label %147, label %45

45:                                               ; preds = %33
  %46 = load ptr, ptr %7, align 8, !tbaa !34
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 %30
  %48 = sub i32 %28, %41
  %49 = zext i32 %48 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %46, ptr align 1 %47, i64 %49, i1 false)
  %50 = load <2 x i32>, ptr %6, align 4, !tbaa !4
  %51 = sub <2 x i32> %50, %32
  store <2 x i32> %51, ptr %6, align 4, !tbaa !4
  %52 = load i64, ptr %8, align 8, !tbaa !72
  %53 = sub nsw i64 %52, %30
  store i64 %53, ptr %8, align 8, !tbaa !72
  %54 = load i32, ptr %9, align 4, !tbaa !74
  %55 = extractelement <2 x i32> %51, i64 0
  %56 = icmp ugt i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  store i32 %55, ptr %9, align 4, !tbaa !74
  br label %58

58:                                               ; preds = %57, %45
  %59 = load i32, ptr %4, align 8, !tbaa !32
  %60 = load i32, ptr %10, align 4, !tbaa !36
  %61 = load ptr, ptr %11, align 8, !tbaa !37
  %62 = zext i32 %60 to i64
  %63 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %62
  %64 = add i32 %60, -1
  %65 = zext i32 %64 to i64
  %66 = add nuw nsw i64 %65, 1
  %67 = icmp ult i32 %64, 7
  br i1 %67, label %89, label %68

68:                                               ; preds = %58
  %69 = and i64 %66, 8589934584
  %70 = mul nsw i64 %69, -2
  %71 = getelementptr i8, ptr %63, i64 %70
  %72 = trunc i64 %69 to i32
  %73 = sub i32 %60, %72
  %74 = insertelement <8 x i32> poison, i32 %59, i64 0
  %75 = shufflevector <8 x i32> %74, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %76

76:                                               ; preds = %76, %68
  %77 = phi i64 [ 0, %68 ], [ %85, %76 ]
  %78 = mul i64 %77, -2
  %79 = getelementptr i8, ptr %63, i64 %78
  %80 = getelementptr inbounds i8, ptr %79, i64 -16
  %81 = load <8 x i16>, ptr %80, align 2, !tbaa !60
  %82 = zext <8 x i16> %81 to <8 x i32>
  %83 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %82, <8 x i32> %75)
  %84 = trunc nuw <8 x i32> %83 to <8 x i16>
  store <8 x i16> %84, ptr %80, align 2, !tbaa !60
  %85 = add nuw i64 %77, 8
  %86 = icmp eq i64 %85, %69
  br i1 %86, label %87, label %76, !llvm.loop !127

87:                                               ; preds = %76
  %88 = icmp eq i64 %66, %69
  br i1 %88, label %102, label %89

89:                                               ; preds = %58, %87
  %90 = phi ptr [ %63, %58 ], [ %71, %87 ]
  %91 = phi i32 [ %60, %58 ], [ %73, %87 ]
  br label %92

92:                                               ; preds = %89, %92
  %93 = phi ptr [ %95, %92 ], [ %90, %89 ]
  %94 = phi i32 [ %100, %92 ], [ %91, %89 ]
  %95 = getelementptr inbounds i8, ptr %93, i64 -2
  %96 = load i16, ptr %95, align 2, !tbaa !60
  %97 = zext i16 %96 to i32
  %98 = tail call i32 @llvm.usub.sat.i32(i32 %97, i32 %59)
  %99 = trunc nuw i32 %98 to i16
  store i16 %99, ptr %95, align 2, !tbaa !60
  %100 = add i32 %94, -1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %92, !llvm.loop !128

102:                                              ; preds = %92, %87
  %103 = load ptr, ptr %12, align 8, !tbaa !35
  %104 = zext i32 %59 to i64
  %105 = getelementptr inbounds nuw [2 x i8], ptr %103, i64 %104
  %106 = add i32 %59, -1
  %107 = zext i32 %106 to i64
  %108 = add nuw nsw i64 %107, 1
  %109 = icmp ult i32 %106, 7
  br i1 %109, label %131, label %110

110:                                              ; preds = %102
  %111 = and i64 %108, 8589934584
  %112 = mul nsw i64 %111, -2
  %113 = getelementptr i8, ptr %105, i64 %112
  %114 = trunc i64 %111 to i32
  %115 = sub i32 %59, %114
  %116 = insertelement <8 x i32> poison, i32 %59, i64 0
  %117 = shufflevector <8 x i32> %116, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %118

118:                                              ; preds = %118, %110
  %119 = phi i64 [ 0, %110 ], [ %127, %118 ]
  %120 = mul i64 %119, -2
  %121 = getelementptr i8, ptr %105, i64 %120
  %122 = getelementptr inbounds i8, ptr %121, i64 -16
  %123 = load <8 x i16>, ptr %122, align 2, !tbaa !60
  %124 = zext <8 x i16> %123 to <8 x i32>
  %125 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %124, <8 x i32> %117)
  %126 = trunc nuw <8 x i32> %125 to <8 x i16>
  store <8 x i16> %126, ptr %122, align 2, !tbaa !60
  %127 = add nuw i64 %119, 8
  %128 = icmp eq i64 %127, %111
  br i1 %128, label %129, label %118, !llvm.loop !129

129:                                              ; preds = %118
  %130 = icmp eq i64 %108, %111
  br i1 %130, label %144, label %131

131:                                              ; preds = %102, %129
  %132 = phi ptr [ %105, %102 ], [ %113, %129 ]
  %133 = phi i32 [ %59, %102 ], [ %115, %129 ]
  br label %134

134:                                              ; preds = %131, %134
  %135 = phi ptr [ %137, %134 ], [ %132, %131 ]
  %136 = phi i32 [ %142, %134 ], [ %133, %131 ]
  %137 = getelementptr inbounds i8, ptr %135, i64 -2
  %138 = load i16, ptr %137, align 2, !tbaa !60
  %139 = zext i16 %138 to i32
  %140 = tail call i32 @llvm.usub.sat.i32(i32 %139, i32 %59)
  %141 = trunc nuw i32 %140 to i16
  store i16 %141, ptr %137, align 2, !tbaa !60
  %142 = add i32 %136, -1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %134, !llvm.loop !130

144:                                              ; preds = %134, %129
  store i32 1, ptr %13, align 8, !tbaa !61
  %145 = add i32 %28, %41
  %146 = load i32, ptr %3, align 4, !tbaa !73
  br label %147

147:                                              ; preds = %144, %33
  %148 = phi i32 [ %146, %144 ], [ %34, %33 ]
  %149 = phi i32 [ %55, %144 ], [ %37, %33 ]
  %150 = phi i32 [ %145, %144 ], [ %41, %33 ]
  %151 = load ptr, ptr %0, align 8, !tbaa !20
  %152 = getelementptr inbounds nuw i8, ptr %151, i64 8
  %153 = load i32, ptr %152, align 8, !tbaa !79
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %245, label %155

155:                                              ; preds = %147
  %156 = load ptr, ptr %7, align 8, !tbaa !34
  %157 = zext i32 %149 to i64
  %158 = getelementptr inbounds nuw i8, ptr %156, i64 %157
  %159 = zext i32 %148 to i64
  %160 = getelementptr inbounds nuw i8, ptr %158, i64 %159
  %161 = tail call i32 @llvm.umin.i32(i32 %153, i32 %150)
  %162 = icmp eq i32 %150, 0
  br i1 %162, label %186, label %163

163:                                              ; preds = %155
  %164 = sub i32 %153, %161
  store i32 %164, ptr %152, align 8, !tbaa !79
  %165 = load ptr, ptr %151, align 8, !tbaa !80
  %166 = zext i32 %161 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %160, ptr align 1 %165, i64 %166, i1 false)
  %167 = getelementptr inbounds nuw i8, ptr %151, i64 56
  %168 = load ptr, ptr %167, align 8, !tbaa !19
  %169 = getelementptr inbounds nuw i8, ptr %168, i64 48
  %170 = load i32, ptr %169, align 8, !tbaa !30
  switch i32 %170, label %179 [
    i32 1, label %171
    i32 2, label %175
  ]

171:                                              ; preds = %163
  %172 = getelementptr inbounds nuw i8, ptr %151, i64 96
  %173 = load i64, ptr %172, align 8, !tbaa !57
  %174 = tail call i64 @adler32(i64 noundef %173, ptr noundef %160, i32 noundef %161) #11
  store i64 %174, ptr %172, align 8, !tbaa !57
  br label %179

175:                                              ; preds = %163
  %176 = getelementptr inbounds nuw i8, ptr %151, i64 96
  %177 = load i64, ptr %176, align 8, !tbaa !57
  %178 = tail call i64 @crc32(i64 noundef %177, ptr noundef %160, i32 noundef %161) #11
  store i64 %178, ptr %176, align 8, !tbaa !57
  br label %179

179:                                              ; preds = %175, %171, %163
  %180 = load ptr, ptr %151, align 8, !tbaa !80
  %181 = getelementptr inbounds nuw i8, ptr %180, i64 %166
  store ptr %181, ptr %151, align 8, !tbaa !80
  %182 = getelementptr inbounds nuw i8, ptr %151, i64 16
  %183 = load i64, ptr %182, align 8, !tbaa !53
  %184 = add i64 %183, %166
  store i64 %184, ptr %182, align 8, !tbaa !53
  %185 = load i32, ptr %3, align 4, !tbaa !73
  br label %186

186:                                              ; preds = %179, %155
  %187 = phi i32 [ %148, %155 ], [ %185, %179 ]
  %188 = add i32 %187, %161
  store i32 %188, ptr %3, align 4, !tbaa !73
  %189 = load i32, ptr %9, align 4, !tbaa !74
  %190 = add i32 %189, %188
  %191 = icmp ugt i32 %190, 2
  br i1 %191, label %192, label %238

192:                                              ; preds = %186
  %193 = load i32, ptr %6, align 4, !tbaa !71
  %194 = sub i32 %193, %189
  %195 = load ptr, ptr %7, align 8, !tbaa !34
  %196 = zext i32 %194 to i64
  %197 = getelementptr inbounds nuw i8, ptr %195, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !8
  %199 = zext i8 %198 to i32
  store i32 %199, ptr %14, align 8, !tbaa !78
  %200 = load i32, ptr %15, align 8, !tbaa !51
  %201 = shl i32 %199, %200
  %202 = add i32 %194, 1
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds nuw i8, ptr %195, i64 %203
  %205 = load i8, ptr %204, align 1, !tbaa !8
  %206 = zext i8 %205 to i32
  %207 = xor i32 %201, %206
  %208 = load i32, ptr %16, align 4, !tbaa !50
  %209 = and i32 %207, %208
  store i32 %209, ptr %14, align 8, !tbaa !78
  br label %210

210:                                              ; preds = %215, %192
  %211 = phi i32 [ %223, %215 ], [ %209, %192 ]
  %212 = phi i32 [ %235, %215 ], [ %189, %192 ]
  %213 = phi i32 [ %234, %215 ], [ %194, %192 ]
  %214 = icmp eq i32 %212, 0
  br i1 %214, label %238, label %215

215:                                              ; preds = %210
  %216 = shl i32 %211, %200
  %217 = add i32 %213, 2
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds nuw i8, ptr %195, i64 %218
  %220 = load i8, ptr %219, align 1, !tbaa !8
  %221 = zext i8 %220 to i32
  %222 = xor i32 %216, %221
  %223 = and i32 %222, %208
  store i32 %223, ptr %14, align 8, !tbaa !78
  %224 = load ptr, ptr %11, align 8, !tbaa !37
  %225 = zext i32 %223 to i64
  %226 = getelementptr inbounds nuw [2 x i8], ptr %224, i64 %225
  %227 = load i16, ptr %226, align 2, !tbaa !60
  %228 = load ptr, ptr %12, align 8, !tbaa !35
  %229 = load i32, ptr %17, align 8, !tbaa !33
  %230 = and i32 %229, %213
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds nuw [2 x i8], ptr %228, i64 %231
  store i16 %227, ptr %232, align 2, !tbaa !60
  %233 = trunc i32 %213 to i16
  store i16 %233, ptr %226, align 2, !tbaa !60
  %234 = add i32 %213, 1
  %235 = add i32 %212, -1
  store i32 %235, ptr %9, align 4, !tbaa !74
  %236 = add i32 %235, %188
  %237 = icmp ult i32 %236, 3
  br i1 %237, label %238, label %210, !llvm.loop !89

238:                                              ; preds = %215, %210, %186
  %239 = icmp ult i32 %188, 262
  br i1 %239, label %240, label %245

240:                                              ; preds = %238
  %241 = load ptr, ptr %0, align 8, !tbaa !20
  %242 = getelementptr inbounds nuw i8, ptr %241, i64 8
  %243 = load i32, ptr %242, align 8, !tbaa !79
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %33, !llvm.loop !90

245:                                              ; preds = %240, %238, %147
  %246 = phi i32 [ %188, %240 ], [ %188, %238 ], [ %148, %147 ]
  %247 = load i64, ptr %18, align 8, !tbaa !38
  %248 = load i64, ptr %5, align 8, !tbaa !59
  %249 = icmp ult i64 %247, %248
  br i1 %249, label %250, label %277

250:                                              ; preds = %245
  %251 = load i32, ptr %6, align 4, !tbaa !71
  %252 = zext i32 %251 to i64
  %253 = zext i32 %246 to i64
  %254 = add nuw nsw i64 %253, %252
  %255 = icmp ult i64 %247, %254
  br i1 %255, label %256, label %262

256:                                              ; preds = %250
  %257 = sub i64 %248, %254
  %258 = tail call i64 @llvm.umin.i64(i64 %257, i64 258)
  %259 = load ptr, ptr %7, align 8, !tbaa !34
  %260 = getelementptr inbounds nuw i8, ptr %259, i64 %254
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %260, i8 0, i64 %258, i1 false)
  %261 = add nuw nsw i64 %258, %254
  br label %274

262:                                              ; preds = %250
  %263 = add nuw nsw i64 %254, 258
  %264 = icmp ult i64 %247, %263
  br i1 %264, label %265, label %277

265:                                              ; preds = %262
  %266 = sub nuw nsw i64 %263, %247
  %267 = sub i64 %248, %247
  %268 = tail call i64 @llvm.umin.i64(i64 %266, i64 %267)
  %269 = load ptr, ptr %7, align 8, !tbaa !34
  %270 = getelementptr inbounds nuw i8, ptr %269, i64 %247
  %271 = and i64 %268, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %270, i8 0, i64 %271, i1 false)
  %272 = load i64, ptr %18, align 8, !tbaa !38
  %273 = add i64 %272, %268
  br label %274

274:                                              ; preds = %265, %256
  %275 = phi i64 [ %261, %256 ], [ %273, %265 ]
  store i64 %275, ptr %18, align 8, !tbaa !38
  %276 = load i32, ptr %3, align 4, !tbaa !73
  br label %277

277:                                              ; preds = %245, %262, %274
  %278 = phi i32 [ %246, %245 ], [ %246, %262 ], [ %276, %274 ]
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %277
  %281 = icmp eq i32 %1, 0
  br i1 %281, label %471, label %364

282:                                              ; preds = %277, %24
  store i32 0, ptr %19, align 8, !tbaa !76
  %283 = load ptr, ptr %7, align 8, !tbaa !34
  %284 = load i32, ptr %6, align 4, !tbaa !71
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds nuw i8, ptr %283, i64 %285
  %287 = load i8, ptr %286, align 1, !tbaa !8
  %288 = load ptr, ptr %20, align 8, !tbaa !44
  %289 = load i32, ptr %21, align 4, !tbaa !131
  %290 = add i32 %289, 1
  store i32 %290, ptr %21, align 4, !tbaa !131
  %291 = zext i32 %289 to i64
  %292 = getelementptr inbounds nuw i8, ptr %288, i64 %291
  store i8 0, ptr %292, align 1, !tbaa !8
  %293 = load ptr, ptr %20, align 8, !tbaa !44
  %294 = load i32, ptr %21, align 4, !tbaa !131
  %295 = add i32 %294, 1
  store i32 %295, ptr %21, align 4, !tbaa !131
  %296 = zext i32 %294 to i64
  %297 = getelementptr inbounds nuw i8, ptr %293, i64 %296
  store i8 0, ptr %297, align 1, !tbaa !8
  %298 = load ptr, ptr %20, align 8, !tbaa !44
  %299 = load i32, ptr %21, align 4, !tbaa !131
  %300 = add i32 %299, 1
  store i32 %300, ptr %21, align 4, !tbaa !131
  %301 = zext i32 %299 to i64
  %302 = getelementptr inbounds nuw i8, ptr %298, i64 %301
  store i8 %287, ptr %302, align 1, !tbaa !8
  %303 = zext i8 %287 to i64
  %304 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %303
  %305 = load i16, ptr %304, align 4, !tbaa !8
  %306 = add i16 %305, 1
  store i16 %306, ptr %304, align 4, !tbaa !8
  %307 = load i32, ptr %21, align 4, !tbaa !131
  %308 = load i32, ptr %23, align 8, !tbaa !45
  %309 = icmp eq i32 %307, %308
  %310 = load i32, ptr %3, align 4, !tbaa !73
  %311 = add i32 %310, -1
  store i32 %311, ptr %3, align 4, !tbaa !73
  %312 = load i32, ptr %6, align 4, !tbaa !71
  %313 = add i32 %312, 1
  store i32 %313, ptr %6, align 4, !tbaa !71
  br i1 %309, label %314, label %363

314:                                              ; preds = %282
  %315 = load i64, ptr %8, align 8, !tbaa !72
  %316 = icmp sgt i64 %315, -1
  br i1 %316, label %317, label %321

317:                                              ; preds = %314
  %318 = load ptr, ptr %7, align 8, !tbaa !34
  %319 = and i64 %315, 4294967295
  %320 = getelementptr inbounds nuw i8, ptr %318, i64 %319
  br label %321

321:                                              ; preds = %314, %317
  %322 = phi ptr [ %320, %317 ], [ null, %314 ]
  %323 = zext i32 %313 to i64
  %324 = sub nsw i64 %323, %315
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %322, i64 noundef %324, i32 noundef 0) #11
  %325 = load i32, ptr %6, align 4, !tbaa !71
  %326 = zext i32 %325 to i64
  store i64 %326, ptr %8, align 8, !tbaa !72
  %327 = load ptr, ptr %0, align 8, !tbaa !20
  %328 = getelementptr inbounds nuw i8, ptr %327, i64 56
  %329 = load ptr, ptr %328, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %329) #11
  %330 = getelementptr inbounds nuw i8, ptr %329, i64 40
  %331 = load i64, ptr %330, align 8, !tbaa !55
  %332 = getelementptr inbounds nuw i8, ptr %327, i64 32
  %333 = load i32, ptr %332, align 8, !tbaa !104
  %334 = zext i32 %333 to i64
  %335 = tail call i64 @llvm.umin.i64(i64 %331, i64 %334)
  %336 = icmp eq i64 %335, 0
  br i1 %336, label %358, label %337

337:                                              ; preds = %321
  %338 = trunc nuw i64 %335 to i32
  %339 = getelementptr inbounds nuw i8, ptr %327, i64 24
  %340 = load ptr, ptr %339, align 8, !tbaa !103
  %341 = getelementptr inbounds nuw i8, ptr %329, i64 32
  %342 = load ptr, ptr %341, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %340, ptr align 1 %342, i64 %335, i1 false)
  %343 = load ptr, ptr %339, align 8, !tbaa !103
  %344 = getelementptr inbounds nuw i8, ptr %343, i64 %335
  store ptr %344, ptr %339, align 8, !tbaa !103
  %345 = load ptr, ptr %341, align 8, !tbaa !56
  %346 = getelementptr inbounds nuw i8, ptr %345, i64 %335
  store ptr %346, ptr %341, align 8, !tbaa !56
  %347 = getelementptr inbounds nuw i8, ptr %327, i64 40
  %348 = load i64, ptr %347, align 8, !tbaa !105
  %349 = add i64 %348, %335
  store i64 %349, ptr %347, align 8, !tbaa !105
  %350 = load i32, ptr %332, align 8, !tbaa !104
  %351 = sub i32 %350, %338
  store i32 %351, ptr %332, align 8, !tbaa !104
  %352 = load i64, ptr %330, align 8, !tbaa !55
  %353 = sub i64 %352, %335
  store i64 %353, ptr %330, align 8, !tbaa !55
  %354 = icmp eq i64 %352, %335
  br i1 %354, label %355, label %358

355:                                              ; preds = %337
  %356 = getelementptr inbounds nuw i8, ptr %329, i64 16
  %357 = load ptr, ptr %356, align 8, !tbaa !40
  store ptr %357, ptr %341, align 8, !tbaa !56
  br label %358

358:                                              ; preds = %321, %337, %355
  %359 = load ptr, ptr %0, align 8, !tbaa !20
  %360 = getelementptr inbounds nuw i8, ptr %359, i64 32
  %361 = load i32, ptr %360, align 8, !tbaa !104
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %471, label %363

363:                                              ; preds = %358, %282
  br label %24

364:                                              ; preds = %280
  store i32 0, ptr %9, align 4, !tbaa !74
  %365 = icmp eq i32 %1, 4
  br i1 %365, label %366, label %417

366:                                              ; preds = %364
  %367 = load i64, ptr %8, align 8, !tbaa !72
  %368 = icmp sgt i64 %367, -1
  br i1 %368, label %369, label %373

369:                                              ; preds = %366
  %370 = load ptr, ptr %7, align 8, !tbaa !34
  %371 = and i64 %367, 4294967295
  %372 = getelementptr inbounds nuw i8, ptr %370, i64 %371
  br label %373

373:                                              ; preds = %366, %369
  %374 = phi ptr [ %372, %369 ], [ null, %366 ]
  %375 = load i32, ptr %6, align 4, !tbaa !71
  %376 = zext i32 %375 to i64
  %377 = sub nsw i64 %376, %367
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %374, i64 noundef %377, i32 noundef 1) #11
  %378 = load i32, ptr %6, align 4, !tbaa !71
  %379 = zext i32 %378 to i64
  store i64 %379, ptr %8, align 8, !tbaa !72
  %380 = load ptr, ptr %0, align 8, !tbaa !20
  %381 = getelementptr inbounds nuw i8, ptr %380, i64 56
  %382 = load ptr, ptr %381, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %382) #11
  %383 = getelementptr inbounds nuw i8, ptr %382, i64 40
  %384 = load i64, ptr %383, align 8, !tbaa !55
  %385 = getelementptr inbounds nuw i8, ptr %380, i64 32
  %386 = load i32, ptr %385, align 8, !tbaa !104
  %387 = zext i32 %386 to i64
  %388 = tail call i64 @llvm.umin.i64(i64 %384, i64 %387)
  %389 = icmp eq i64 %388, 0
  br i1 %389, label %411, label %390

390:                                              ; preds = %373
  %391 = trunc nuw i64 %388 to i32
  %392 = getelementptr inbounds nuw i8, ptr %380, i64 24
  %393 = load ptr, ptr %392, align 8, !tbaa !103
  %394 = getelementptr inbounds nuw i8, ptr %382, i64 32
  %395 = load ptr, ptr %394, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %393, ptr align 1 %395, i64 %388, i1 false)
  %396 = load ptr, ptr %392, align 8, !tbaa !103
  %397 = getelementptr inbounds nuw i8, ptr %396, i64 %388
  store ptr %397, ptr %392, align 8, !tbaa !103
  %398 = load ptr, ptr %394, align 8, !tbaa !56
  %399 = getelementptr inbounds nuw i8, ptr %398, i64 %388
  store ptr %399, ptr %394, align 8, !tbaa !56
  %400 = getelementptr inbounds nuw i8, ptr %380, i64 40
  %401 = load i64, ptr %400, align 8, !tbaa !105
  %402 = add i64 %401, %388
  store i64 %402, ptr %400, align 8, !tbaa !105
  %403 = load i32, ptr %385, align 8, !tbaa !104
  %404 = sub i32 %403, %391
  store i32 %404, ptr %385, align 8, !tbaa !104
  %405 = load i64, ptr %383, align 8, !tbaa !55
  %406 = sub i64 %405, %388
  store i64 %406, ptr %383, align 8, !tbaa !55
  %407 = icmp eq i64 %405, %388
  br i1 %407, label %408, label %411

408:                                              ; preds = %390
  %409 = getelementptr inbounds nuw i8, ptr %382, i64 16
  %410 = load ptr, ptr %409, align 8, !tbaa !40
  store ptr %410, ptr %394, align 8, !tbaa !56
  br label %411

411:                                              ; preds = %373, %390, %408
  %412 = load ptr, ptr %0, align 8, !tbaa !20
  %413 = getelementptr inbounds nuw i8, ptr %412, i64 32
  %414 = load i32, ptr %413, align 8, !tbaa !104
  %415 = icmp eq i32 %414, 0
  %416 = select i1 %415, i32 2, i32 3
  br label %471

417:                                              ; preds = %364
  %418 = load i32, ptr %21, align 4, !tbaa !131
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %470, label %420

420:                                              ; preds = %417
  %421 = load i64, ptr %8, align 8, !tbaa !72
  %422 = icmp sgt i64 %421, -1
  br i1 %422, label %423, label %427

423:                                              ; preds = %420
  %424 = load ptr, ptr %7, align 8, !tbaa !34
  %425 = and i64 %421, 4294967295
  %426 = getelementptr inbounds nuw i8, ptr %424, i64 %425
  br label %427

427:                                              ; preds = %420, %423
  %428 = phi ptr [ %426, %423 ], [ null, %420 ]
  %429 = load i32, ptr %6, align 4, !tbaa !71
  %430 = zext i32 %429 to i64
  %431 = sub nsw i64 %430, %421
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %428, i64 noundef %431, i32 noundef 0) #11
  %432 = load i32, ptr %6, align 4, !tbaa !71
  %433 = zext i32 %432 to i64
  store i64 %433, ptr %8, align 8, !tbaa !72
  %434 = load ptr, ptr %0, align 8, !tbaa !20
  %435 = getelementptr inbounds nuw i8, ptr %434, i64 56
  %436 = load ptr, ptr %435, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %436) #11
  %437 = getelementptr inbounds nuw i8, ptr %436, i64 40
  %438 = load i64, ptr %437, align 8, !tbaa !55
  %439 = getelementptr inbounds nuw i8, ptr %434, i64 32
  %440 = load i32, ptr %439, align 8, !tbaa !104
  %441 = zext i32 %440 to i64
  %442 = tail call i64 @llvm.umin.i64(i64 %438, i64 %441)
  %443 = icmp eq i64 %442, 0
  br i1 %443, label %465, label %444

444:                                              ; preds = %427
  %445 = trunc nuw i64 %442 to i32
  %446 = getelementptr inbounds nuw i8, ptr %434, i64 24
  %447 = load ptr, ptr %446, align 8, !tbaa !103
  %448 = getelementptr inbounds nuw i8, ptr %436, i64 32
  %449 = load ptr, ptr %448, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %447, ptr align 1 %449, i64 %442, i1 false)
  %450 = load ptr, ptr %446, align 8, !tbaa !103
  %451 = getelementptr inbounds nuw i8, ptr %450, i64 %442
  store ptr %451, ptr %446, align 8, !tbaa !103
  %452 = load ptr, ptr %448, align 8, !tbaa !56
  %453 = getelementptr inbounds nuw i8, ptr %452, i64 %442
  store ptr %453, ptr %448, align 8, !tbaa !56
  %454 = getelementptr inbounds nuw i8, ptr %434, i64 40
  %455 = load i64, ptr %454, align 8, !tbaa !105
  %456 = add i64 %455, %442
  store i64 %456, ptr %454, align 8, !tbaa !105
  %457 = load i32, ptr %439, align 8, !tbaa !104
  %458 = sub i32 %457, %445
  store i32 %458, ptr %439, align 8, !tbaa !104
  %459 = load i64, ptr %437, align 8, !tbaa !55
  %460 = sub i64 %459, %442
  store i64 %460, ptr %437, align 8, !tbaa !55
  %461 = icmp eq i64 %459, %442
  br i1 %461, label %462, label %465

462:                                              ; preds = %444
  %463 = getelementptr inbounds nuw i8, ptr %436, i64 16
  %464 = load ptr, ptr %463, align 8, !tbaa !40
  store ptr %464, ptr %448, align 8, !tbaa !56
  br label %465

465:                                              ; preds = %427, %444, %462
  %466 = load ptr, ptr %0, align 8, !tbaa !20
  %467 = getelementptr inbounds nuw i8, ptr %466, i64 32
  %468 = load i32, ptr %467, align 8, !tbaa !104
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %471, label %470

470:                                              ; preds = %465, %417
  br label %471

471:                                              ; preds = %358, %465, %411, %280, %470
  %472 = phi i32 [ 0, %280 ], [ %416, %411 ], [ 0, %465 ], [ 1, %470 ], [ 0, %358 ]
  ret i32 %472
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @deflate_rle(ptr noundef %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 96
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
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %25 = getelementptr i8, ptr %0, i64 1240
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  br label %27

27:                                               ; preds = %413, %2
  %28 = load i32, ptr %3, align 4, !tbaa !73
  %29 = icmp ult i32 %28, 259
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  store i32 0, ptr %4, align 8, !tbaa !76
  %31 = load i32, ptr %7, align 4, !tbaa !71
  br label %291

32:                                               ; preds = %27
  %33 = load i32, ptr %5, align 8, !tbaa !32
  %34 = add i32 %33, -262
  %35 = zext i32 %33 to i64
  %36 = insertelement <2 x i32> poison, i32 %33, i64 0
  %37 = shufflevector <2 x i32> %36, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %38

38:                                               ; preds = %245, %32
  %39 = phi i32 [ %193, %245 ], [ %28, %32 ]
  %40 = load i64, ptr %6, align 8, !tbaa !59
  %41 = zext nneg i32 %39 to i64
  %42 = load i32, ptr %7, align 4, !tbaa !71
  %43 = zext i32 %42 to i64
  %44 = add nuw nsw i64 %41, %43
  %45 = sub i64 %40, %44
  %46 = trunc i64 %45 to i32
  %47 = load i32, ptr %5, align 8, !tbaa !32
  %48 = add i32 %34, %47
  %49 = icmp ult i32 %42, %48
  br i1 %49, label %152, label %50

50:                                               ; preds = %38
  %51 = load ptr, ptr %8, align 8, !tbaa !34
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 %35
  %53 = sub i32 %33, %46
  %54 = zext i32 %53 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %51, ptr align 1 %52, i64 %54, i1 false)
  %55 = load <2 x i32>, ptr %7, align 4, !tbaa !4
  %56 = sub <2 x i32> %55, %37
  store <2 x i32> %56, ptr %7, align 4, !tbaa !4
  %57 = load i64, ptr %9, align 8, !tbaa !72
  %58 = sub nsw i64 %57, %35
  store i64 %58, ptr %9, align 8, !tbaa !72
  %59 = load i32, ptr %10, align 4, !tbaa !74
  %60 = extractelement <2 x i32> %56, i64 0
  %61 = icmp ugt i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  store i32 %60, ptr %10, align 4, !tbaa !74
  br label %63

63:                                               ; preds = %62, %50
  %64 = load i32, ptr %5, align 8, !tbaa !32
  %65 = load i32, ptr %11, align 4, !tbaa !36
  %66 = load ptr, ptr %12, align 8, !tbaa !37
  %67 = zext i32 %65 to i64
  %68 = getelementptr inbounds nuw [2 x i8], ptr %66, i64 %67
  %69 = add i32 %65, -1
  %70 = zext i32 %69 to i64
  %71 = add nuw nsw i64 %70, 1
  %72 = icmp ult i32 %69, 7
  br i1 %72, label %94, label %73

73:                                               ; preds = %63
  %74 = and i64 %71, 8589934584
  %75 = mul nsw i64 %74, -2
  %76 = getelementptr i8, ptr %68, i64 %75
  %77 = trunc i64 %74 to i32
  %78 = sub i32 %65, %77
  %79 = insertelement <8 x i32> poison, i32 %64, i64 0
  %80 = shufflevector <8 x i32> %79, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %81

81:                                               ; preds = %81, %73
  %82 = phi i64 [ 0, %73 ], [ %90, %81 ]
  %83 = mul i64 %82, -2
  %84 = getelementptr i8, ptr %68, i64 %83
  %85 = getelementptr inbounds i8, ptr %84, i64 -16
  %86 = load <8 x i16>, ptr %85, align 2, !tbaa !60
  %87 = zext <8 x i16> %86 to <8 x i32>
  %88 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %87, <8 x i32> %80)
  %89 = trunc nuw <8 x i32> %88 to <8 x i16>
  store <8 x i16> %89, ptr %85, align 2, !tbaa !60
  %90 = add nuw i64 %82, 8
  %91 = icmp eq i64 %90, %74
  br i1 %91, label %92, label %81, !llvm.loop !132

92:                                               ; preds = %81
  %93 = icmp eq i64 %71, %74
  br i1 %93, label %107, label %94

94:                                               ; preds = %63, %92
  %95 = phi ptr [ %68, %63 ], [ %76, %92 ]
  %96 = phi i32 [ %65, %63 ], [ %78, %92 ]
  br label %97

97:                                               ; preds = %94, %97
  %98 = phi ptr [ %100, %97 ], [ %95, %94 ]
  %99 = phi i32 [ %105, %97 ], [ %96, %94 ]
  %100 = getelementptr inbounds i8, ptr %98, i64 -2
  %101 = load i16, ptr %100, align 2, !tbaa !60
  %102 = zext i16 %101 to i32
  %103 = tail call i32 @llvm.usub.sat.i32(i32 %102, i32 %64)
  %104 = trunc nuw i32 %103 to i16
  store i16 %104, ptr %100, align 2, !tbaa !60
  %105 = add i32 %99, -1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %97, !llvm.loop !133

107:                                              ; preds = %97, %92
  %108 = load ptr, ptr %13, align 8, !tbaa !35
  %109 = zext i32 %64 to i64
  %110 = getelementptr inbounds nuw [2 x i8], ptr %108, i64 %109
  %111 = add i32 %64, -1
  %112 = zext i32 %111 to i64
  %113 = add nuw nsw i64 %112, 1
  %114 = icmp ult i32 %111, 7
  br i1 %114, label %136, label %115

115:                                              ; preds = %107
  %116 = and i64 %113, 8589934584
  %117 = mul nsw i64 %116, -2
  %118 = getelementptr i8, ptr %110, i64 %117
  %119 = trunc i64 %116 to i32
  %120 = sub i32 %64, %119
  %121 = insertelement <8 x i32> poison, i32 %64, i64 0
  %122 = shufflevector <8 x i32> %121, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %123

123:                                              ; preds = %123, %115
  %124 = phi i64 [ 0, %115 ], [ %132, %123 ]
  %125 = mul i64 %124, -2
  %126 = getelementptr i8, ptr %110, i64 %125
  %127 = getelementptr inbounds i8, ptr %126, i64 -16
  %128 = load <8 x i16>, ptr %127, align 2, !tbaa !60
  %129 = zext <8 x i16> %128 to <8 x i32>
  %130 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %129, <8 x i32> %122)
  %131 = trunc nuw <8 x i32> %130 to <8 x i16>
  store <8 x i16> %131, ptr %127, align 2, !tbaa !60
  %132 = add nuw i64 %124, 8
  %133 = icmp eq i64 %132, %116
  br i1 %133, label %134, label %123, !llvm.loop !134

134:                                              ; preds = %123
  %135 = icmp eq i64 %113, %116
  br i1 %135, label %149, label %136

136:                                              ; preds = %107, %134
  %137 = phi ptr [ %110, %107 ], [ %118, %134 ]
  %138 = phi i32 [ %64, %107 ], [ %120, %134 ]
  br label %139

139:                                              ; preds = %136, %139
  %140 = phi ptr [ %142, %139 ], [ %137, %136 ]
  %141 = phi i32 [ %147, %139 ], [ %138, %136 ]
  %142 = getelementptr inbounds i8, ptr %140, i64 -2
  %143 = load i16, ptr %142, align 2, !tbaa !60
  %144 = zext i16 %143 to i32
  %145 = tail call i32 @llvm.usub.sat.i32(i32 %144, i32 %64)
  %146 = trunc nuw i32 %145 to i16
  store i16 %146, ptr %142, align 2, !tbaa !60
  %147 = add i32 %141, -1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %139, !llvm.loop !135

149:                                              ; preds = %139, %134
  store i32 1, ptr %14, align 8, !tbaa !61
  %150 = add i32 %33, %46
  %151 = load i32, ptr %3, align 4, !tbaa !73
  br label %152

152:                                              ; preds = %149, %38
  %153 = phi i32 [ %151, %149 ], [ %39, %38 ]
  %154 = phi i32 [ %60, %149 ], [ %42, %38 ]
  %155 = phi i32 [ %150, %149 ], [ %46, %38 ]
  %156 = load ptr, ptr %0, align 8, !tbaa !20
  %157 = getelementptr inbounds nuw i8, ptr %156, i64 8
  %158 = load i32, ptr %157, align 8, !tbaa !79
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %250, label %160

160:                                              ; preds = %152
  %161 = load ptr, ptr %8, align 8, !tbaa !34
  %162 = zext i32 %154 to i64
  %163 = getelementptr inbounds nuw i8, ptr %161, i64 %162
  %164 = zext i32 %153 to i64
  %165 = getelementptr inbounds nuw i8, ptr %163, i64 %164
  %166 = tail call i32 @llvm.umin.i32(i32 %158, i32 %155)
  %167 = icmp eq i32 %155, 0
  br i1 %167, label %191, label %168

168:                                              ; preds = %160
  %169 = sub i32 %158, %166
  store i32 %169, ptr %157, align 8, !tbaa !79
  %170 = load ptr, ptr %156, align 8, !tbaa !80
  %171 = zext i32 %166 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %165, ptr align 1 %170, i64 %171, i1 false)
  %172 = getelementptr inbounds nuw i8, ptr %156, i64 56
  %173 = load ptr, ptr %172, align 8, !tbaa !19
  %174 = getelementptr inbounds nuw i8, ptr %173, i64 48
  %175 = load i32, ptr %174, align 8, !tbaa !30
  switch i32 %175, label %184 [
    i32 1, label %176
    i32 2, label %180
  ]

176:                                              ; preds = %168
  %177 = getelementptr inbounds nuw i8, ptr %156, i64 96
  %178 = load i64, ptr %177, align 8, !tbaa !57
  %179 = tail call i64 @adler32(i64 noundef %178, ptr noundef %165, i32 noundef %166) #11
  store i64 %179, ptr %177, align 8, !tbaa !57
  br label %184

180:                                              ; preds = %168
  %181 = getelementptr inbounds nuw i8, ptr %156, i64 96
  %182 = load i64, ptr %181, align 8, !tbaa !57
  %183 = tail call i64 @crc32(i64 noundef %182, ptr noundef %165, i32 noundef %166) #11
  store i64 %183, ptr %181, align 8, !tbaa !57
  br label %184

184:                                              ; preds = %180, %176, %168
  %185 = load ptr, ptr %156, align 8, !tbaa !80
  %186 = getelementptr inbounds nuw i8, ptr %185, i64 %171
  store ptr %186, ptr %156, align 8, !tbaa !80
  %187 = getelementptr inbounds nuw i8, ptr %156, i64 16
  %188 = load i64, ptr %187, align 8, !tbaa !53
  %189 = add i64 %188, %171
  store i64 %189, ptr %187, align 8, !tbaa !53
  %190 = load i32, ptr %3, align 4, !tbaa !73
  br label %191

191:                                              ; preds = %184, %160
  %192 = phi i32 [ %153, %160 ], [ %190, %184 ]
  %193 = add i32 %192, %166
  store i32 %193, ptr %3, align 4, !tbaa !73
  %194 = load i32, ptr %10, align 4, !tbaa !74
  %195 = add i32 %194, %193
  %196 = icmp ugt i32 %195, 2
  br i1 %196, label %197, label %243

197:                                              ; preds = %191
  %198 = load i32, ptr %7, align 4, !tbaa !71
  %199 = sub i32 %198, %194
  %200 = load ptr, ptr %8, align 8, !tbaa !34
  %201 = zext i32 %199 to i64
  %202 = getelementptr inbounds nuw i8, ptr %200, i64 %201
  %203 = load i8, ptr %202, align 1, !tbaa !8
  %204 = zext i8 %203 to i32
  store i32 %204, ptr %15, align 8, !tbaa !78
  %205 = load i32, ptr %16, align 8, !tbaa !51
  %206 = shl i32 %204, %205
  %207 = add i32 %199, 1
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds nuw i8, ptr %200, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !8
  %211 = zext i8 %210 to i32
  %212 = xor i32 %206, %211
  %213 = load i32, ptr %17, align 4, !tbaa !50
  %214 = and i32 %212, %213
  store i32 %214, ptr %15, align 8, !tbaa !78
  br label %215

215:                                              ; preds = %220, %197
  %216 = phi i32 [ %228, %220 ], [ %214, %197 ]
  %217 = phi i32 [ %240, %220 ], [ %194, %197 ]
  %218 = phi i32 [ %239, %220 ], [ %199, %197 ]
  %219 = icmp eq i32 %217, 0
  br i1 %219, label %243, label %220

220:                                              ; preds = %215
  %221 = shl i32 %216, %205
  %222 = add i32 %218, 2
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds nuw i8, ptr %200, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !8
  %226 = zext i8 %225 to i32
  %227 = xor i32 %221, %226
  %228 = and i32 %227, %213
  store i32 %228, ptr %15, align 8, !tbaa !78
  %229 = load ptr, ptr %12, align 8, !tbaa !37
  %230 = zext i32 %228 to i64
  %231 = getelementptr inbounds nuw [2 x i8], ptr %229, i64 %230
  %232 = load i16, ptr %231, align 2, !tbaa !60
  %233 = load ptr, ptr %13, align 8, !tbaa !35
  %234 = load i32, ptr %18, align 8, !tbaa !33
  %235 = and i32 %234, %218
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds nuw [2 x i8], ptr %233, i64 %236
  store i16 %232, ptr %237, align 2, !tbaa !60
  %238 = trunc i32 %218 to i16
  store i16 %238, ptr %231, align 2, !tbaa !60
  %239 = add i32 %218, 1
  %240 = add i32 %217, -1
  store i32 %240, ptr %10, align 4, !tbaa !74
  %241 = add i32 %240, %193
  %242 = icmp ult i32 %241, 3
  br i1 %242, label %243, label %215, !llvm.loop !89

243:                                              ; preds = %220, %215, %191
  %244 = icmp ult i32 %193, 262
  br i1 %244, label %245, label %250

245:                                              ; preds = %243
  %246 = load ptr, ptr %0, align 8, !tbaa !20
  %247 = getelementptr inbounds nuw i8, ptr %246, i64 8
  %248 = load i32, ptr %247, align 8, !tbaa !79
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %38, !llvm.loop !90

250:                                              ; preds = %245, %243, %152
  %251 = phi i32 [ %193, %245 ], [ %193, %243 ], [ %153, %152 ]
  %252 = load i64, ptr %19, align 8, !tbaa !38
  %253 = load i64, ptr %6, align 8, !tbaa !59
  %254 = icmp ult i64 %252, %253
  br i1 %254, label %255, label %282

255:                                              ; preds = %250
  %256 = load i32, ptr %7, align 4, !tbaa !71
  %257 = zext i32 %256 to i64
  %258 = zext i32 %251 to i64
  %259 = add nuw nsw i64 %258, %257
  %260 = icmp ult i64 %252, %259
  br i1 %260, label %261, label %267

261:                                              ; preds = %255
  %262 = sub i64 %253, %259
  %263 = tail call i64 @llvm.umin.i64(i64 %262, i64 258)
  %264 = load ptr, ptr %8, align 8, !tbaa !34
  %265 = getelementptr inbounds nuw i8, ptr %264, i64 %259
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %265, i8 0, i64 %263, i1 false)
  %266 = add nuw nsw i64 %263, %259
  br label %279

267:                                              ; preds = %255
  %268 = add nuw nsw i64 %259, 258
  %269 = icmp ult i64 %252, %268
  br i1 %269, label %270, label %282

270:                                              ; preds = %267
  %271 = sub nuw nsw i64 %268, %252
  %272 = sub i64 %253, %252
  %273 = tail call i64 @llvm.umin.i64(i64 %271, i64 %272)
  %274 = load ptr, ptr %8, align 8, !tbaa !34
  %275 = getelementptr inbounds nuw i8, ptr %274, i64 %252
  %276 = and i64 %273, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %275, i8 0, i64 %276, i1 false)
  %277 = load i64, ptr %19, align 8, !tbaa !38
  %278 = add i64 %277, %273
  br label %279

279:                                              ; preds = %270, %261
  %280 = phi i64 [ %266, %261 ], [ %278, %270 ]
  store i64 %280, ptr %19, align 8, !tbaa !38
  %281 = load i32, ptr %3, align 4, !tbaa !73
  br label %282

282:                                              ; preds = %250, %267, %279
  %283 = phi i32 [ %251, %250 ], [ %251, %267 ], [ %281, %279 ]
  %284 = icmp ult i32 %283, 259
  %285 = and i1 %20, %284
  br i1 %285, label %606, label %286

286:                                              ; preds = %282
  %287 = icmp eq i32 %283, 0
  br i1 %287, label %499, label %288

288:                                              ; preds = %286
  store i32 0, ptr %4, align 8, !tbaa !76
  %289 = icmp ugt i32 %283, 2
  %290 = load i32, ptr %7, align 4, !tbaa !71
  br i1 %289, label %291, label %414

291:                                              ; preds = %30, %288
  %292 = phi i32 [ %31, %30 ], [ %290, %288 ]
  %293 = phi i32 [ %28, %30 ], [ %283, %288 ]
  %294 = icmp eq i32 %292, 0
  br i1 %294, label %414, label %295

295:                                              ; preds = %291
  %296 = load ptr, ptr %8, align 8, !tbaa !34
  %297 = zext i32 %292 to i64
  %298 = getelementptr inbounds nuw i8, ptr %296, i64 %297
  %299 = getelementptr inbounds i8, ptr %298, i64 -1
  %300 = load i8, ptr %299, align 1, !tbaa !8
  %301 = load i8, ptr %298, align 1, !tbaa !8
  %302 = icmp eq i8 %300, %301
  br i1 %302, label %303, label %414

303:                                              ; preds = %295
  %304 = getelementptr inbounds nuw i8, ptr %298, i64 1
  %305 = load i8, ptr %304, align 1, !tbaa !8
  %306 = icmp eq i8 %300, %305
  br i1 %306, label %307, label %414

307:                                              ; preds = %303
  %308 = getelementptr inbounds nuw i8, ptr %298, i64 2
  %309 = load i8, ptr %308, align 1, !tbaa !8
  %310 = icmp eq i8 %300, %309
  br i1 %310, label %311, label %414

311:                                              ; preds = %307
  %312 = getelementptr inbounds nuw i8, ptr %298, i64 258
  br label %313

313:                                              ; preds = %343, %311
  %314 = phi i64 [ 2, %311 ], [ %344, %343 ]
  %315 = getelementptr inbounds nuw i8, ptr %298, i64 %314
  %316 = getelementptr inbounds nuw i8, ptr %315, i64 1
  %317 = load i8, ptr %316, align 1, !tbaa !8
  %318 = icmp eq i8 %300, %317
  br i1 %318, label %319, label %364

319:                                              ; preds = %313
  %320 = getelementptr inbounds nuw i8, ptr %315, i64 2
  %321 = load i8, ptr %320, align 1, !tbaa !8
  %322 = icmp eq i8 %300, %321
  br i1 %322, label %323, label %362

323:                                              ; preds = %319
  %324 = getelementptr inbounds nuw i8, ptr %315, i64 3
  %325 = load i8, ptr %324, align 1, !tbaa !8
  %326 = icmp eq i8 %300, %325
  br i1 %326, label %327, label %360

327:                                              ; preds = %323
  %328 = getelementptr inbounds nuw i8, ptr %315, i64 4
  %329 = load i8, ptr %328, align 1, !tbaa !8
  %330 = icmp eq i8 %300, %329
  br i1 %330, label %331, label %358

331:                                              ; preds = %327
  %332 = getelementptr inbounds nuw i8, ptr %315, i64 5
  %333 = load i8, ptr %332, align 1, !tbaa !8
  %334 = icmp eq i8 %300, %333
  br i1 %334, label %335, label %356

335:                                              ; preds = %331
  %336 = getelementptr inbounds nuw i8, ptr %315, i64 6
  %337 = load i8, ptr %336, align 1, !tbaa !8
  %338 = icmp eq i8 %300, %337
  br i1 %338, label %339, label %354

339:                                              ; preds = %335
  %340 = getelementptr inbounds nuw i8, ptr %315, i64 7
  %341 = load i8, ptr %340, align 1, !tbaa !8
  %342 = icmp eq i8 %300, %341
  br i1 %342, label %343, label %352

343:                                              ; preds = %339
  %344 = add nuw nsw i64 %314, 8
  %345 = getelementptr inbounds nuw i8, ptr %298, i64 %344
  %346 = load i8, ptr %345, align 1, !tbaa !8
  %347 = icmp eq i8 %300, %346
  %348 = icmp samesign ult i64 %314, 250
  %349 = select i1 %347, i1 %348, i1 false
  br i1 %349, label %313, label %350, !llvm.loop !136

350:                                              ; preds = %343
  %351 = getelementptr inbounds nuw i8, ptr %298, i64 %344
  br label %366

352:                                              ; preds = %339
  %353 = getelementptr inbounds nuw i8, ptr %315, i64 7
  br label %366

354:                                              ; preds = %335
  %355 = getelementptr inbounds nuw i8, ptr %315, i64 6
  br label %366

356:                                              ; preds = %331
  %357 = getelementptr inbounds nuw i8, ptr %315, i64 5
  br label %366

358:                                              ; preds = %327
  %359 = getelementptr inbounds nuw i8, ptr %315, i64 4
  br label %366

360:                                              ; preds = %323
  %361 = getelementptr inbounds nuw i8, ptr %315, i64 3
  br label %366

362:                                              ; preds = %319
  %363 = getelementptr inbounds nuw i8, ptr %315, i64 2
  br label %366

364:                                              ; preds = %313
  %365 = getelementptr inbounds nuw i8, ptr %315, i64 1
  br label %366

366:                                              ; preds = %364, %362, %360, %358, %356, %354, %352, %350
  %367 = phi ptr [ %359, %358 ], [ %357, %356 ], [ %361, %360 ], [ %363, %362 ], [ %351, %350 ], [ %353, %352 ], [ %355, %354 ], [ %365, %364 ]
  %368 = ptrtoint ptr %312 to i64
  %369 = ptrtoint ptr %367 to i64
  %370 = sub i64 %369, %368
  %371 = trunc i64 %370 to i32
  %372 = add i32 %371, 258
  %373 = tail call i32 @llvm.umin.i32(i32 %372, i32 %293)
  store i32 %373, ptr %4, align 8
  %374 = icmp ugt i32 %373, 2
  %375 = load i32, ptr %22, align 4, !tbaa !131
  br i1 %374, label %376, label %417

376:                                              ; preds = %366
  %377 = trunc i32 %373 to i8
  %378 = add i8 %377, -3
  %379 = load ptr, ptr %21, align 8, !tbaa !44
  %380 = add i32 %375, 1
  store i32 %380, ptr %22, align 4, !tbaa !131
  %381 = zext i32 %375 to i64
  %382 = getelementptr inbounds nuw i8, ptr %379, i64 %381
  store i8 1, ptr %382, align 1, !tbaa !8
  %383 = load ptr, ptr %21, align 8, !tbaa !44
  %384 = load i32, ptr %22, align 4, !tbaa !131
  %385 = add i32 %384, 1
  store i32 %385, ptr %22, align 4, !tbaa !131
  %386 = zext i32 %384 to i64
  %387 = getelementptr inbounds nuw i8, ptr %383, i64 %386
  store i8 0, ptr %387, align 1, !tbaa !8
  %388 = load ptr, ptr %21, align 8, !tbaa !44
  %389 = load i32, ptr %22, align 4, !tbaa !131
  %390 = add i32 %389, 1
  store i32 %390, ptr %22, align 4, !tbaa !131
  %391 = zext i32 %389 to i64
  %392 = getelementptr inbounds nuw i8, ptr %388, i64 %391
  store i8 %378, ptr %392, align 1, !tbaa !8
  %393 = zext i8 %378 to i64
  %394 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %393
  %395 = load i8, ptr %394, align 1, !tbaa !8
  %396 = zext i8 %395 to i64
  %397 = getelementptr [4 x i8], ptr %25, i64 %396
  %398 = load i16, ptr %397, align 4, !tbaa !8
  %399 = add i16 %398, 1
  store i16 %399, ptr %397, align 4, !tbaa !8
  %400 = load i8, ptr @_dist_code, align 1, !tbaa !8
  %401 = zext i8 %400 to i64
  %402 = getelementptr inbounds nuw [4 x i8], ptr %26, i64 %401
  %403 = load i16, ptr %402, align 4, !tbaa !8
  %404 = add i16 %403, 1
  store i16 %404, ptr %402, align 4, !tbaa !8
  %405 = load i32, ptr %22, align 4, !tbaa !131
  %406 = load i32, ptr %24, align 8, !tbaa !45
  %407 = icmp eq i32 %405, %406
  %408 = load i32, ptr %4, align 8, !tbaa !76
  %409 = load i32, ptr %3, align 4, !tbaa !73
  %410 = sub i32 %409, %408
  store i32 %410, ptr %3, align 4, !tbaa !73
  %411 = load i32, ptr %7, align 4, !tbaa !71
  %412 = add i32 %411, %408
  store i32 %412, ptr %7, align 4, !tbaa !71
  store i32 0, ptr %4, align 8, !tbaa !76
  br i1 %407, label %449, label %413

413:                                              ; preds = %376, %494, %417
  br label %27

414:                                              ; preds = %295, %303, %307, %291, %288
  %415 = phi i32 [ %290, %288 ], [ %292, %291 ], [ %292, %307 ], [ %292, %303 ], [ %292, %295 ]
  %416 = load i32, ptr %22, align 4, !tbaa !131
  br label %417

417:                                              ; preds = %414, %366
  %418 = phi i32 [ %375, %366 ], [ %416, %414 ]
  %419 = phi i32 [ %292, %366 ], [ %415, %414 ]
  %420 = load ptr, ptr %8, align 8, !tbaa !34
  %421 = zext i32 %419 to i64
  %422 = getelementptr inbounds nuw i8, ptr %420, i64 %421
  %423 = load i8, ptr %422, align 1, !tbaa !8
  %424 = load ptr, ptr %21, align 8, !tbaa !44
  %425 = add i32 %418, 1
  store i32 %425, ptr %22, align 4, !tbaa !131
  %426 = zext i32 %418 to i64
  %427 = getelementptr inbounds nuw i8, ptr %424, i64 %426
  store i8 0, ptr %427, align 1, !tbaa !8
  %428 = load ptr, ptr %21, align 8, !tbaa !44
  %429 = load i32, ptr %22, align 4, !tbaa !131
  %430 = add i32 %429, 1
  store i32 %430, ptr %22, align 4, !tbaa !131
  %431 = zext i32 %429 to i64
  %432 = getelementptr inbounds nuw i8, ptr %428, i64 %431
  store i8 0, ptr %432, align 1, !tbaa !8
  %433 = load ptr, ptr %21, align 8, !tbaa !44
  %434 = load i32, ptr %22, align 4, !tbaa !131
  %435 = add i32 %434, 1
  store i32 %435, ptr %22, align 4, !tbaa !131
  %436 = zext i32 %434 to i64
  %437 = getelementptr inbounds nuw i8, ptr %433, i64 %436
  store i8 %423, ptr %437, align 1, !tbaa !8
  %438 = zext i8 %423 to i64
  %439 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %438
  %440 = load i16, ptr %439, align 4, !tbaa !8
  %441 = add i16 %440, 1
  store i16 %441, ptr %439, align 4, !tbaa !8
  %442 = load i32, ptr %22, align 4, !tbaa !131
  %443 = load i32, ptr %24, align 8, !tbaa !45
  %444 = icmp eq i32 %442, %443
  %445 = load i32, ptr %3, align 4, !tbaa !73
  %446 = add i32 %445, -1
  store i32 %446, ptr %3, align 4, !tbaa !73
  %447 = load i32, ptr %7, align 4, !tbaa !71
  %448 = add i32 %447, 1
  store i32 %448, ptr %7, align 4, !tbaa !71
  br i1 %444, label %449, label %413

449:                                              ; preds = %376, %417
  %450 = phi i32 [ %412, %376 ], [ %448, %417 ]
  %451 = load i64, ptr %9, align 8, !tbaa !72
  %452 = icmp sgt i64 %451, -1
  br i1 %452, label %453, label %457

453:                                              ; preds = %449
  %454 = load ptr, ptr %8, align 8, !tbaa !34
  %455 = and i64 %451, 4294967295
  %456 = getelementptr inbounds nuw i8, ptr %454, i64 %455
  br label %457

457:                                              ; preds = %449, %453
  %458 = phi ptr [ %456, %453 ], [ null, %449 ]
  %459 = zext i32 %450 to i64
  %460 = sub nsw i64 %459, %451
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %458, i64 noundef %460, i32 noundef 0) #11
  %461 = load i32, ptr %7, align 4, !tbaa !71
  %462 = zext i32 %461 to i64
  store i64 %462, ptr %9, align 8, !tbaa !72
  %463 = load ptr, ptr %0, align 8, !tbaa !20
  %464 = getelementptr inbounds nuw i8, ptr %463, i64 56
  %465 = load ptr, ptr %464, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %465) #11
  %466 = getelementptr inbounds nuw i8, ptr %465, i64 40
  %467 = load i64, ptr %466, align 8, !tbaa !55
  %468 = getelementptr inbounds nuw i8, ptr %463, i64 32
  %469 = load i32, ptr %468, align 8, !tbaa !104
  %470 = zext i32 %469 to i64
  %471 = tail call i64 @llvm.umin.i64(i64 %467, i64 %470)
  %472 = icmp eq i64 %471, 0
  br i1 %472, label %494, label %473

473:                                              ; preds = %457
  %474 = trunc nuw i64 %471 to i32
  %475 = getelementptr inbounds nuw i8, ptr %463, i64 24
  %476 = load ptr, ptr %475, align 8, !tbaa !103
  %477 = getelementptr inbounds nuw i8, ptr %465, i64 32
  %478 = load ptr, ptr %477, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %476, ptr align 1 %478, i64 %471, i1 false)
  %479 = load ptr, ptr %475, align 8, !tbaa !103
  %480 = getelementptr inbounds nuw i8, ptr %479, i64 %471
  store ptr %480, ptr %475, align 8, !tbaa !103
  %481 = load ptr, ptr %477, align 8, !tbaa !56
  %482 = getelementptr inbounds nuw i8, ptr %481, i64 %471
  store ptr %482, ptr %477, align 8, !tbaa !56
  %483 = getelementptr inbounds nuw i8, ptr %463, i64 40
  %484 = load i64, ptr %483, align 8, !tbaa !105
  %485 = add i64 %484, %471
  store i64 %485, ptr %483, align 8, !tbaa !105
  %486 = load i32, ptr %468, align 8, !tbaa !104
  %487 = sub i32 %486, %474
  store i32 %487, ptr %468, align 8, !tbaa !104
  %488 = load i64, ptr %466, align 8, !tbaa !55
  %489 = sub i64 %488, %471
  store i64 %489, ptr %466, align 8, !tbaa !55
  %490 = icmp eq i64 %488, %471
  br i1 %490, label %491, label %494

491:                                              ; preds = %473
  %492 = getelementptr inbounds nuw i8, ptr %465, i64 16
  %493 = load ptr, ptr %492, align 8, !tbaa !40
  store ptr %493, ptr %477, align 8, !tbaa !56
  br label %494

494:                                              ; preds = %457, %473, %491
  %495 = load ptr, ptr %0, align 8, !tbaa !20
  %496 = getelementptr inbounds nuw i8, ptr %495, i64 32
  %497 = load i32, ptr %496, align 8, !tbaa !104
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %606, label %413

499:                                              ; preds = %286
  store i32 0, ptr %10, align 4, !tbaa !74
  %500 = icmp eq i32 %1, 4
  br i1 %500, label %501, label %552

501:                                              ; preds = %499
  %502 = load i64, ptr %9, align 8, !tbaa !72
  %503 = icmp sgt i64 %502, -1
  br i1 %503, label %504, label %508

504:                                              ; preds = %501
  %505 = load ptr, ptr %8, align 8, !tbaa !34
  %506 = and i64 %502, 4294967295
  %507 = getelementptr inbounds nuw i8, ptr %505, i64 %506
  br label %508

508:                                              ; preds = %501, %504
  %509 = phi ptr [ %507, %504 ], [ null, %501 ]
  %510 = load i32, ptr %7, align 4, !tbaa !71
  %511 = zext i32 %510 to i64
  %512 = sub nsw i64 %511, %502
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %509, i64 noundef %512, i32 noundef 1) #11
  %513 = load i32, ptr %7, align 4, !tbaa !71
  %514 = zext i32 %513 to i64
  store i64 %514, ptr %9, align 8, !tbaa !72
  %515 = load ptr, ptr %0, align 8, !tbaa !20
  %516 = getelementptr inbounds nuw i8, ptr %515, i64 56
  %517 = load ptr, ptr %516, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %517) #11
  %518 = getelementptr inbounds nuw i8, ptr %517, i64 40
  %519 = load i64, ptr %518, align 8, !tbaa !55
  %520 = getelementptr inbounds nuw i8, ptr %515, i64 32
  %521 = load i32, ptr %520, align 8, !tbaa !104
  %522 = zext i32 %521 to i64
  %523 = tail call i64 @llvm.umin.i64(i64 %519, i64 %522)
  %524 = icmp eq i64 %523, 0
  br i1 %524, label %546, label %525

525:                                              ; preds = %508
  %526 = trunc nuw i64 %523 to i32
  %527 = getelementptr inbounds nuw i8, ptr %515, i64 24
  %528 = load ptr, ptr %527, align 8, !tbaa !103
  %529 = getelementptr inbounds nuw i8, ptr %517, i64 32
  %530 = load ptr, ptr %529, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %528, ptr align 1 %530, i64 %523, i1 false)
  %531 = load ptr, ptr %527, align 8, !tbaa !103
  %532 = getelementptr inbounds nuw i8, ptr %531, i64 %523
  store ptr %532, ptr %527, align 8, !tbaa !103
  %533 = load ptr, ptr %529, align 8, !tbaa !56
  %534 = getelementptr inbounds nuw i8, ptr %533, i64 %523
  store ptr %534, ptr %529, align 8, !tbaa !56
  %535 = getelementptr inbounds nuw i8, ptr %515, i64 40
  %536 = load i64, ptr %535, align 8, !tbaa !105
  %537 = add i64 %536, %523
  store i64 %537, ptr %535, align 8, !tbaa !105
  %538 = load i32, ptr %520, align 8, !tbaa !104
  %539 = sub i32 %538, %526
  store i32 %539, ptr %520, align 8, !tbaa !104
  %540 = load i64, ptr %518, align 8, !tbaa !55
  %541 = sub i64 %540, %523
  store i64 %541, ptr %518, align 8, !tbaa !55
  %542 = icmp eq i64 %540, %523
  br i1 %542, label %543, label %546

543:                                              ; preds = %525
  %544 = getelementptr inbounds nuw i8, ptr %517, i64 16
  %545 = load ptr, ptr %544, align 8, !tbaa !40
  store ptr %545, ptr %529, align 8, !tbaa !56
  br label %546

546:                                              ; preds = %508, %525, %543
  %547 = load ptr, ptr %0, align 8, !tbaa !20
  %548 = getelementptr inbounds nuw i8, ptr %547, i64 32
  %549 = load i32, ptr %548, align 8, !tbaa !104
  %550 = icmp eq i32 %549, 0
  %551 = select i1 %550, i32 2, i32 3
  br label %606

552:                                              ; preds = %499
  %553 = load i32, ptr %22, align 4, !tbaa !131
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %605, label %555

555:                                              ; preds = %552
  %556 = load i64, ptr %9, align 8, !tbaa !72
  %557 = icmp sgt i64 %556, -1
  br i1 %557, label %558, label %562

558:                                              ; preds = %555
  %559 = load ptr, ptr %8, align 8, !tbaa !34
  %560 = and i64 %556, 4294967295
  %561 = getelementptr inbounds nuw i8, ptr %559, i64 %560
  br label %562

562:                                              ; preds = %555, %558
  %563 = phi ptr [ %561, %558 ], [ null, %555 ]
  %564 = load i32, ptr %7, align 4, !tbaa !71
  %565 = zext i32 %564 to i64
  %566 = sub nsw i64 %565, %556
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %563, i64 noundef %566, i32 noundef 0) #11
  %567 = load i32, ptr %7, align 4, !tbaa !71
  %568 = zext i32 %567 to i64
  store i64 %568, ptr %9, align 8, !tbaa !72
  %569 = load ptr, ptr %0, align 8, !tbaa !20
  %570 = getelementptr inbounds nuw i8, ptr %569, i64 56
  %571 = load ptr, ptr %570, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %571) #11
  %572 = getelementptr inbounds nuw i8, ptr %571, i64 40
  %573 = load i64, ptr %572, align 8, !tbaa !55
  %574 = getelementptr inbounds nuw i8, ptr %569, i64 32
  %575 = load i32, ptr %574, align 8, !tbaa !104
  %576 = zext i32 %575 to i64
  %577 = tail call i64 @llvm.umin.i64(i64 %573, i64 %576)
  %578 = icmp eq i64 %577, 0
  br i1 %578, label %600, label %579

579:                                              ; preds = %562
  %580 = trunc nuw i64 %577 to i32
  %581 = getelementptr inbounds nuw i8, ptr %569, i64 24
  %582 = load ptr, ptr %581, align 8, !tbaa !103
  %583 = getelementptr inbounds nuw i8, ptr %571, i64 32
  %584 = load ptr, ptr %583, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %582, ptr align 1 %584, i64 %577, i1 false)
  %585 = load ptr, ptr %581, align 8, !tbaa !103
  %586 = getelementptr inbounds nuw i8, ptr %585, i64 %577
  store ptr %586, ptr %581, align 8, !tbaa !103
  %587 = load ptr, ptr %583, align 8, !tbaa !56
  %588 = getelementptr inbounds nuw i8, ptr %587, i64 %577
  store ptr %588, ptr %583, align 8, !tbaa !56
  %589 = getelementptr inbounds nuw i8, ptr %569, i64 40
  %590 = load i64, ptr %589, align 8, !tbaa !105
  %591 = add i64 %590, %577
  store i64 %591, ptr %589, align 8, !tbaa !105
  %592 = load i32, ptr %574, align 8, !tbaa !104
  %593 = sub i32 %592, %580
  store i32 %593, ptr %574, align 8, !tbaa !104
  %594 = load i64, ptr %572, align 8, !tbaa !55
  %595 = sub i64 %594, %577
  store i64 %595, ptr %572, align 8, !tbaa !55
  %596 = icmp eq i64 %594, %577
  br i1 %596, label %597, label %600

597:                                              ; preds = %579
  %598 = getelementptr inbounds nuw i8, ptr %571, i64 16
  %599 = load ptr, ptr %598, align 8, !tbaa !40
  store ptr %599, ptr %583, align 8, !tbaa !56
  br label %600

600:                                              ; preds = %562, %579, %597
  %601 = load ptr, ptr %0, align 8, !tbaa !20
  %602 = getelementptr inbounds nuw i8, ptr %601, i64 32
  %603 = load i32, ptr %602, align 8, !tbaa !104
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %606, label %605

605:                                              ; preds = %600, %552
  br label %606

606:                                              ; preds = %494, %282, %600, %546, %605
  %607 = phi i32 [ 1, %605 ], [ %551, %546 ], [ 0, %600 ], [ 0, %282 ], [ 0, %494 ]
  ret i32 %607
}

declare void @_tr_align(ptr noundef) local_unnamed_addr #1

declare void @_tr_stored_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -4, 1) i32 @deflateCopy(ptr noundef %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %183, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %183, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %183, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %183, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !20
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %183

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !29
  switch i32 %21, label %183 [
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
  %23 = icmp eq ptr %0, null
  br i1 %23, label %183, label %24

24:                                               ; preds = %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %26 = load ptr, ptr %25, align 8, !tbaa !15
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %28 = load ptr, ptr %27, align 8, !tbaa !16
  %29 = tail call ptr %26(ptr noundef %28, i32 noundef 1, i32 noundef 5968) #11
  %30 = icmp eq ptr %29, null
  br i1 %30, label %183, label %31

31:                                               ; preds = %24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5968) %29, i8 0, i64 5968, i1 false)
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %29, ptr %32, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5968) %29, ptr noundef nonnull align 8 dereferenceable(5968) %14, i64 5968, i1 false)
  store ptr %0, ptr %29, align 8, !tbaa !20
  %33 = load ptr, ptr %25, align 8, !tbaa !15
  %34 = load ptr, ptr %27, align 8, !tbaa !16
  %35 = getelementptr inbounds nuw i8, ptr %29, i64 80
  %36 = load i32, ptr %35, align 8, !tbaa !32
  %37 = tail call ptr %33(ptr noundef %34, i32 noundef %36, i32 noundef 2) #11
  %38 = getelementptr inbounds nuw i8, ptr %29, i64 96
  store ptr %37, ptr %38, align 8, !tbaa !34
  %39 = load ptr, ptr %25, align 8, !tbaa !15
  %40 = load ptr, ptr %27, align 8, !tbaa !16
  %41 = load i32, ptr %35, align 8, !tbaa !32
  %42 = tail call ptr %39(ptr noundef %40, i32 noundef %41, i32 noundef 2) #11
  %43 = getelementptr inbounds nuw i8, ptr %29, i64 112
  store ptr %42, ptr %43, align 8, !tbaa !35
  %44 = load ptr, ptr %25, align 8, !tbaa !15
  %45 = load ptr, ptr %27, align 8, !tbaa !16
  %46 = getelementptr inbounds nuw i8, ptr %29, i64 132
  %47 = load i32, ptr %46, align 4, !tbaa !36
  %48 = tail call ptr %44(ptr noundef %45, i32 noundef %47, i32 noundef 2) #11
  %49 = getelementptr inbounds nuw i8, ptr %29, i64 120
  store ptr %48, ptr %49, align 8, !tbaa !37
  %50 = load ptr, ptr %25, align 8, !tbaa !15
  %51 = load ptr, ptr %27, align 8, !tbaa !16
  %52 = getelementptr inbounds nuw i8, ptr %29, i64 5896
  %53 = load i32, ptr %52, align 8, !tbaa !39
  %54 = tail call ptr %50(ptr noundef %51, i32 noundef %53, i32 noundef 4) #11
  %55 = getelementptr inbounds nuw i8, ptr %29, i64 16
  store ptr %54, ptr %55, align 8, !tbaa !40
  %56 = load ptr, ptr %38, align 8, !tbaa !34
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %31
  %59 = load ptr, ptr %43, align 8, !tbaa !35
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %49, align 8, !tbaa !37
  %63 = icmp eq ptr %62, null
  %64 = icmp eq ptr %54, null
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %66, label %124

66:                                               ; preds = %31, %58, %61
  %67 = load ptr, ptr %25, align 8, !tbaa !15
  %68 = icmp eq ptr %67, null
  br i1 %68, label %183, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %71 = load ptr, ptr %70, align 8, !tbaa !17
  %72 = icmp eq ptr %71, null
  br i1 %72, label %183, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %32, align 8, !tbaa !19
  %75 = icmp eq ptr %74, null
  br i1 %75, label %183, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %74, align 8, !tbaa !20
  %78 = icmp eq ptr %77, %0
  br i1 %78, label %79, label %183

79:                                               ; preds = %76
  %80 = getelementptr inbounds nuw i8, ptr %74, i64 8
  %81 = load i32, ptr %80, align 8, !tbaa !29
  switch i32 %81, label %183 [
    i32 42, label %82
    i32 57, label %82
    i32 69, label %82
    i32 73, label %82
    i32 91, label %82
    i32 103, label %82
    i32 113, label %82
    i32 666, label %82
  ]

82:                                               ; preds = %79, %79, %79, %79, %79, %79, %79, %79
  %83 = getelementptr inbounds nuw i8, ptr %74, i64 16
  %84 = load ptr, ptr %83, align 8, !tbaa !40
  %85 = icmp eq ptr %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %27, align 8, !tbaa !16
  tail call void %71(ptr noundef %87, ptr noundef nonnull %84) #11, !inline_history !52
  %88 = load ptr, ptr %32, align 8, !tbaa !19
  %89 = load ptr, ptr %70, align 8, !tbaa !17
  br label %90

90:                                               ; preds = %86, %82
  %91 = phi ptr [ %89, %86 ], [ %71, %82 ]
  %92 = phi ptr [ %88, %86 ], [ %74, %82 ]
  %93 = getelementptr inbounds nuw i8, ptr %92, i64 120
  %94 = load ptr, ptr %93, align 8, !tbaa !37
  %95 = icmp eq ptr %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %90
  %97 = load ptr, ptr %27, align 8, !tbaa !16
  tail call void %91(ptr noundef %97, ptr noundef nonnull %94) #11, !inline_history !52
  %98 = load ptr, ptr %32, align 8, !tbaa !19
  %99 = load ptr, ptr %70, align 8, !tbaa !17
  br label %100

100:                                              ; preds = %96, %90
  %101 = phi ptr [ %99, %96 ], [ %91, %90 ]
  %102 = phi ptr [ %98, %96 ], [ %92, %90 ]
  %103 = getelementptr inbounds nuw i8, ptr %102, i64 112
  %104 = load ptr, ptr %103, align 8, !tbaa !35
  %105 = icmp eq ptr %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %100
  %107 = load ptr, ptr %27, align 8, !tbaa !16
  tail call void %101(ptr noundef %107, ptr noundef nonnull %104) #11, !inline_history !52
  %108 = load ptr, ptr %32, align 8, !tbaa !19
  %109 = load ptr, ptr %70, align 8, !tbaa !17
  br label %110

110:                                              ; preds = %106, %100
  %111 = phi ptr [ %109, %106 ], [ %101, %100 ]
  %112 = phi ptr [ %108, %106 ], [ %102, %100 ]
  %113 = getelementptr inbounds nuw i8, ptr %112, i64 96
  %114 = load ptr, ptr %113, align 8, !tbaa !34
  %115 = icmp eq ptr %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %110
  %117 = load ptr, ptr %27, align 8, !tbaa !16
  tail call void %111(ptr noundef %117, ptr noundef nonnull %114) #11, !inline_history !52
  %118 = load ptr, ptr %70, align 8, !tbaa !17
  %119 = load ptr, ptr %32, align 8, !tbaa !19
  br label %120

120:                                              ; preds = %116, %110
  %121 = phi ptr [ %119, %116 ], [ %112, %110 ]
  %122 = phi ptr [ %118, %116 ], [ %111, %110 ]
  %123 = load ptr, ptr %27, align 8, !tbaa !16
  tail call void %122(ptr noundef %123, ptr noundef %121) #11, !inline_history !52
  store ptr null, ptr %32, align 8, !tbaa !19
  br label %183

124:                                              ; preds = %61
  %125 = getelementptr inbounds nuw i8, ptr %14, i64 96
  %126 = load ptr, ptr %125, align 8, !tbaa !34
  %127 = getelementptr inbounds nuw i8, ptr %14, i64 5952
  %128 = load i64, ptr %127, align 8, !tbaa !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %56, ptr align 1 %126, i64 %128, i1 false)
  %129 = load ptr, ptr %43, align 8, !tbaa !35
  %130 = getelementptr inbounds nuw i8, ptr %14, i64 112
  %131 = load ptr, ptr %130, align 8, !tbaa !35
  %132 = getelementptr inbounds nuw i8, ptr %14, i64 5960
  %133 = load i32, ptr %132, align 8, !tbaa !61
  %134 = icmp eq i32 %133, 0
  %135 = load i32, ptr %35, align 8, !tbaa !32
  br i1 %134, label %136, label %143

136:                                              ; preds = %124
  %137 = getelementptr inbounds nuw i8, ptr %14, i64 172
  %138 = load i32, ptr %137, align 4, !tbaa !71
  %139 = getelementptr inbounds nuw i8, ptr %14, i64 5932
  %140 = load i32, ptr %139, align 4, !tbaa !74
  %141 = sub i32 %138, %140
  %142 = icmp ugt i32 %141, %135
  br i1 %142, label %143, label %144

143:                                              ; preds = %136, %124
  br label %144

144:                                              ; preds = %136, %143
  %145 = phi i32 [ %135, %143 ], [ %141, %136 ]
  %146 = zext i32 %145 to i64
  %147 = shl nuw nsw i64 %146, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %129, ptr align 2 %131, i64 %147, i1 false)
  %148 = load ptr, ptr %49, align 8, !tbaa !37
  %149 = getelementptr inbounds nuw i8, ptr %14, i64 120
  %150 = load ptr, ptr %149, align 8, !tbaa !37
  %151 = load i32, ptr %46, align 4, !tbaa !36
  %152 = zext i32 %151 to i64
  %153 = shl nuw nsw i64 %152, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %148, ptr align 2 %150, i64 %153, i1 false)
  %154 = load ptr, ptr %55, align 8, !tbaa !40
  %155 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %156 = load ptr, ptr %155, align 8, !tbaa !56
  %157 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %158 = load ptr, ptr %157, align 8, !tbaa !40
  %159 = ptrtoint ptr %156 to i64
  %160 = ptrtoint ptr %158 to i64
  %161 = sub i64 %159, %160
  %162 = getelementptr inbounds i8, ptr %154, i64 %161
  %163 = getelementptr inbounds nuw i8, ptr %29, i64 32
  store ptr %162, ptr %163, align 8, !tbaa !56
  %164 = load ptr, ptr %155, align 8, !tbaa !56
  %165 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %166 = load i64, ptr %165, align 8, !tbaa !55
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %162, ptr align 1 %164, i64 %166, i1 false)
  %167 = load ptr, ptr %55, align 8, !tbaa !40
  %168 = load i32, ptr %52, align 8, !tbaa !39
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds nuw i8, ptr %167, i64 %169
  %171 = getelementptr inbounds nuw i8, ptr %29, i64 5888
  store ptr %170, ptr %171, align 8, !tbaa !44
  %172 = getelementptr inbounds nuw i8, ptr %14, i64 5888
  %173 = load ptr, ptr %172, align 8, !tbaa !44
  %174 = getelementptr inbounds nuw i8, ptr %14, i64 5900
  %175 = load i32, ptr %174, align 4, !tbaa !131
  %176 = zext i32 %175 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %170, ptr align 1 %173, i64 %176, i1 false)
  %177 = getelementptr inbounds nuw i8, ptr %29, i64 212
  %178 = getelementptr inbounds nuw i8, ptr %29, i64 2904
  store ptr %177, ptr %178, align 8, !tbaa !137
  %179 = getelementptr inbounds nuw i8, ptr %29, i64 2504
  %180 = getelementptr inbounds nuw i8, ptr %29, i64 2928
  store ptr %179, ptr %180, align 8, !tbaa !138
  %181 = getelementptr inbounds nuw i8, ptr %29, i64 2748
  %182 = getelementptr inbounds nuw i8, ptr %29, i64 2952
  store ptr %181, ptr %182, align 8, !tbaa !139
  br label %183

183:                                              ; preds = %12, %16, %19, %4, %8, %2, %120, %79, %76, %73, %69, %66, %24, %22, %144
  %184 = phi i32 [ 0, %144 ], [ -2, %22 ], [ -4, %120 ], [ -4, %24 ], [ -4, %66 ], [ -4, %69 ], [ -4, %73 ], [ -4, %76 ], [ -4, %79 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %184
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
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 188
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 204
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %30 = getelementptr i8, ptr %0, i64 1240
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %33

33:                                               ; preds = %607, %2
  %34 = load i32, ptr %3, align 4, !tbaa !73
  %35 = icmp ult i32 %34, 262
  br i1 %35, label %36, label %294

36:                                               ; preds = %33
  %37 = load i32, ptr %4, align 8, !tbaa !32
  %38 = add i32 %37, -262
  %39 = zext i32 %37 to i64
  %40 = insertelement <2 x i32> poison, i32 %37, i64 0
  %41 = shufflevector <2 x i32> %40, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %42

42:                                               ; preds = %249, %36
  %43 = phi i32 [ %197, %249 ], [ %34, %36 ]
  %44 = load i64, ptr %5, align 8, !tbaa !59
  %45 = zext nneg i32 %43 to i64
  %46 = load i32, ptr %6, align 4, !tbaa !71
  %47 = zext i32 %46 to i64
  %48 = add nuw nsw i64 %45, %47
  %49 = sub i64 %44, %48
  %50 = trunc i64 %49 to i32
  %51 = load i32, ptr %4, align 8, !tbaa !32
  %52 = add i32 %38, %51
  %53 = icmp ult i32 %46, %52
  br i1 %53, label %156, label %54

54:                                               ; preds = %42
  %55 = load ptr, ptr %7, align 8, !tbaa !34
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 %39
  %57 = sub i32 %37, %50
  %58 = zext i32 %57 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %55, ptr align 1 %56, i64 %58, i1 false)
  %59 = load <2 x i32>, ptr %6, align 4, !tbaa !4
  %60 = sub <2 x i32> %59, %41
  store <2 x i32> %60, ptr %6, align 4, !tbaa !4
  %61 = load i64, ptr %9, align 8, !tbaa !72
  %62 = sub nsw i64 %61, %39
  store i64 %62, ptr %9, align 8, !tbaa !72
  %63 = load i32, ptr %10, align 4, !tbaa !74
  %64 = extractelement <2 x i32> %60, i64 0
  %65 = icmp ugt i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  store i32 %64, ptr %10, align 4, !tbaa !74
  br label %67

67:                                               ; preds = %66, %54
  %68 = load i32, ptr %4, align 8, !tbaa !32
  %69 = load i32, ptr %11, align 4, !tbaa !36
  %70 = load ptr, ptr %12, align 8, !tbaa !37
  %71 = zext i32 %69 to i64
  %72 = getelementptr inbounds nuw [2 x i8], ptr %70, i64 %71
  %73 = add i32 %69, -1
  %74 = zext i32 %73 to i64
  %75 = add nuw nsw i64 %74, 1
  %76 = icmp ult i32 %73, 7
  br i1 %76, label %98, label %77

77:                                               ; preds = %67
  %78 = and i64 %75, 8589934584
  %79 = mul nsw i64 %78, -2
  %80 = getelementptr i8, ptr %72, i64 %79
  %81 = trunc i64 %78 to i32
  %82 = sub i32 %69, %81
  %83 = insertelement <8 x i32> poison, i32 %68, i64 0
  %84 = shufflevector <8 x i32> %83, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %85

85:                                               ; preds = %85, %77
  %86 = phi i64 [ 0, %77 ], [ %94, %85 ]
  %87 = mul i64 %86, -2
  %88 = getelementptr i8, ptr %72, i64 %87
  %89 = getelementptr inbounds i8, ptr %88, i64 -16
  %90 = load <8 x i16>, ptr %89, align 2, !tbaa !60
  %91 = zext <8 x i16> %90 to <8 x i32>
  %92 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %91, <8 x i32> %84)
  %93 = trunc nuw <8 x i32> %92 to <8 x i16>
  store <8 x i16> %93, ptr %89, align 2, !tbaa !60
  %94 = add nuw i64 %86, 8
  %95 = icmp eq i64 %94, %78
  br i1 %95, label %96, label %85, !llvm.loop !140

96:                                               ; preds = %85
  %97 = icmp eq i64 %75, %78
  br i1 %97, label %111, label %98

98:                                               ; preds = %67, %96
  %99 = phi ptr [ %72, %67 ], [ %80, %96 ]
  %100 = phi i32 [ %69, %67 ], [ %82, %96 ]
  br label %101

101:                                              ; preds = %98, %101
  %102 = phi ptr [ %104, %101 ], [ %99, %98 ]
  %103 = phi i32 [ %109, %101 ], [ %100, %98 ]
  %104 = getelementptr inbounds i8, ptr %102, i64 -2
  %105 = load i16, ptr %104, align 2, !tbaa !60
  %106 = zext i16 %105 to i32
  %107 = tail call i32 @llvm.usub.sat.i32(i32 %106, i32 %68)
  %108 = trunc nuw i32 %107 to i16
  store i16 %108, ptr %104, align 2, !tbaa !60
  %109 = add i32 %103, -1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %101, !llvm.loop !141

111:                                              ; preds = %101, %96
  %112 = load ptr, ptr %13, align 8, !tbaa !35
  %113 = zext i32 %68 to i64
  %114 = getelementptr inbounds nuw [2 x i8], ptr %112, i64 %113
  %115 = add i32 %68, -1
  %116 = zext i32 %115 to i64
  %117 = add nuw nsw i64 %116, 1
  %118 = icmp ult i32 %115, 7
  br i1 %118, label %140, label %119

119:                                              ; preds = %111
  %120 = and i64 %117, 8589934584
  %121 = mul nsw i64 %120, -2
  %122 = getelementptr i8, ptr %114, i64 %121
  %123 = trunc i64 %120 to i32
  %124 = sub i32 %68, %123
  %125 = insertelement <8 x i32> poison, i32 %68, i64 0
  %126 = shufflevector <8 x i32> %125, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %127

127:                                              ; preds = %127, %119
  %128 = phi i64 [ 0, %119 ], [ %136, %127 ]
  %129 = mul i64 %128, -2
  %130 = getelementptr i8, ptr %114, i64 %129
  %131 = getelementptr inbounds i8, ptr %130, i64 -16
  %132 = load <8 x i16>, ptr %131, align 2, !tbaa !60
  %133 = zext <8 x i16> %132 to <8 x i32>
  %134 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %133, <8 x i32> %126)
  %135 = trunc nuw <8 x i32> %134 to <8 x i16>
  store <8 x i16> %135, ptr %131, align 2, !tbaa !60
  %136 = add nuw i64 %128, 8
  %137 = icmp eq i64 %136, %120
  br i1 %137, label %138, label %127, !llvm.loop !142

138:                                              ; preds = %127
  %139 = icmp eq i64 %117, %120
  br i1 %139, label %153, label %140

140:                                              ; preds = %111, %138
  %141 = phi ptr [ %114, %111 ], [ %122, %138 ]
  %142 = phi i32 [ %68, %111 ], [ %124, %138 ]
  br label %143

143:                                              ; preds = %140, %143
  %144 = phi ptr [ %146, %143 ], [ %141, %140 ]
  %145 = phi i32 [ %151, %143 ], [ %142, %140 ]
  %146 = getelementptr inbounds i8, ptr %144, i64 -2
  %147 = load i16, ptr %146, align 2, !tbaa !60
  %148 = zext i16 %147 to i32
  %149 = tail call i32 @llvm.usub.sat.i32(i32 %148, i32 %68)
  %150 = trunc nuw i32 %149 to i16
  store i16 %150, ptr %146, align 2, !tbaa !60
  %151 = add i32 %145, -1
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %143, !llvm.loop !143

153:                                              ; preds = %143, %138
  store i32 1, ptr %14, align 8, !tbaa !61
  %154 = add i32 %37, %50
  %155 = load i32, ptr %3, align 4, !tbaa !73
  br label %156

156:                                              ; preds = %153, %42
  %157 = phi i32 [ %155, %153 ], [ %43, %42 ]
  %158 = phi i32 [ %64, %153 ], [ %46, %42 ]
  %159 = phi i32 [ %154, %153 ], [ %50, %42 ]
  %160 = load ptr, ptr %0, align 8, !tbaa !20
  %161 = getelementptr inbounds nuw i8, ptr %160, i64 8
  %162 = load i32, ptr %161, align 8, !tbaa !79
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %254, label %164

164:                                              ; preds = %156
  %165 = load ptr, ptr %7, align 8, !tbaa !34
  %166 = zext i32 %158 to i64
  %167 = getelementptr inbounds nuw i8, ptr %165, i64 %166
  %168 = zext i32 %157 to i64
  %169 = getelementptr inbounds nuw i8, ptr %167, i64 %168
  %170 = tail call i32 @llvm.umin.i32(i32 %162, i32 %159)
  %171 = icmp eq i32 %159, 0
  br i1 %171, label %195, label %172

172:                                              ; preds = %164
  %173 = sub i32 %162, %170
  store i32 %173, ptr %161, align 8, !tbaa !79
  %174 = load ptr, ptr %160, align 8, !tbaa !80
  %175 = zext i32 %170 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %169, ptr align 1 %174, i64 %175, i1 false)
  %176 = getelementptr inbounds nuw i8, ptr %160, i64 56
  %177 = load ptr, ptr %176, align 8, !tbaa !19
  %178 = getelementptr inbounds nuw i8, ptr %177, i64 48
  %179 = load i32, ptr %178, align 8, !tbaa !30
  switch i32 %179, label %188 [
    i32 1, label %180
    i32 2, label %184
  ]

180:                                              ; preds = %172
  %181 = getelementptr inbounds nuw i8, ptr %160, i64 96
  %182 = load i64, ptr %181, align 8, !tbaa !57
  %183 = tail call i64 @adler32(i64 noundef %182, ptr noundef %169, i32 noundef %170) #11
  store i64 %183, ptr %181, align 8, !tbaa !57
  br label %188

184:                                              ; preds = %172
  %185 = getelementptr inbounds nuw i8, ptr %160, i64 96
  %186 = load i64, ptr %185, align 8, !tbaa !57
  %187 = tail call i64 @crc32(i64 noundef %186, ptr noundef %169, i32 noundef %170) #11
  store i64 %187, ptr %185, align 8, !tbaa !57
  br label %188

188:                                              ; preds = %184, %180, %172
  %189 = load ptr, ptr %160, align 8, !tbaa !80
  %190 = getelementptr inbounds nuw i8, ptr %189, i64 %175
  store ptr %190, ptr %160, align 8, !tbaa !80
  %191 = getelementptr inbounds nuw i8, ptr %160, i64 16
  %192 = load i64, ptr %191, align 8, !tbaa !53
  %193 = add i64 %192, %175
  store i64 %193, ptr %191, align 8, !tbaa !53
  %194 = load i32, ptr %3, align 4, !tbaa !73
  br label %195

195:                                              ; preds = %188, %164
  %196 = phi i32 [ %157, %164 ], [ %194, %188 ]
  %197 = add i32 %196, %170
  store i32 %197, ptr %3, align 4, !tbaa !73
  %198 = load i32, ptr %10, align 4, !tbaa !74
  %199 = add i32 %198, %197
  %200 = icmp ugt i32 %199, 2
  br i1 %200, label %201, label %247

201:                                              ; preds = %195
  %202 = load i32, ptr %6, align 4, !tbaa !71
  %203 = sub i32 %202, %198
  %204 = load ptr, ptr %7, align 8, !tbaa !34
  %205 = zext i32 %203 to i64
  %206 = getelementptr inbounds nuw i8, ptr %204, i64 %205
  %207 = load i8, ptr %206, align 1, !tbaa !8
  %208 = zext i8 %207 to i32
  store i32 %208, ptr %15, align 8, !tbaa !78
  %209 = load i32, ptr %16, align 8, !tbaa !51
  %210 = shl i32 %208, %209
  %211 = add i32 %203, 1
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds nuw i8, ptr %204, i64 %212
  %214 = load i8, ptr %213, align 1, !tbaa !8
  %215 = zext i8 %214 to i32
  %216 = xor i32 %210, %215
  %217 = load i32, ptr %17, align 4, !tbaa !50
  %218 = and i32 %216, %217
  store i32 %218, ptr %15, align 8, !tbaa !78
  br label %219

219:                                              ; preds = %224, %201
  %220 = phi i32 [ %232, %224 ], [ %218, %201 ]
  %221 = phi i32 [ %244, %224 ], [ %198, %201 ]
  %222 = phi i32 [ %243, %224 ], [ %203, %201 ]
  %223 = icmp eq i32 %221, 0
  br i1 %223, label %247, label %224

224:                                              ; preds = %219
  %225 = shl i32 %220, %209
  %226 = add i32 %222, 2
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds nuw i8, ptr %204, i64 %227
  %229 = load i8, ptr %228, align 1, !tbaa !8
  %230 = zext i8 %229 to i32
  %231 = xor i32 %225, %230
  %232 = and i32 %231, %217
  store i32 %232, ptr %15, align 8, !tbaa !78
  %233 = load ptr, ptr %12, align 8, !tbaa !37
  %234 = zext i32 %232 to i64
  %235 = getelementptr inbounds nuw [2 x i8], ptr %233, i64 %234
  %236 = load i16, ptr %235, align 2, !tbaa !60
  %237 = load ptr, ptr %13, align 8, !tbaa !35
  %238 = load i32, ptr %18, align 8, !tbaa !33
  %239 = and i32 %238, %222
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds nuw [2 x i8], ptr %237, i64 %240
  store i16 %236, ptr %241, align 2, !tbaa !60
  %242 = trunc i32 %222 to i16
  store i16 %242, ptr %235, align 2, !tbaa !60
  %243 = add i32 %222, 1
  %244 = add i32 %221, -1
  store i32 %244, ptr %10, align 4, !tbaa !74
  %245 = add i32 %244, %197
  %246 = icmp ult i32 %245, 3
  br i1 %246, label %247, label %219, !llvm.loop !89

247:                                              ; preds = %224, %219, %195
  %248 = icmp ult i32 %197, 262
  br i1 %248, label %249, label %254

249:                                              ; preds = %247
  %250 = load ptr, ptr %0, align 8, !tbaa !20
  %251 = getelementptr inbounds nuw i8, ptr %250, i64 8
  %252 = load i32, ptr %251, align 8, !tbaa !79
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %42, !llvm.loop !90

254:                                              ; preds = %249, %247, %156
  %255 = phi i32 [ %197, %249 ], [ %197, %247 ], [ %157, %156 ]
  %256 = load i64, ptr %19, align 8, !tbaa !38
  %257 = load i64, ptr %5, align 8, !tbaa !59
  %258 = icmp ult i64 %256, %257
  br i1 %258, label %259, label %286

259:                                              ; preds = %254
  %260 = load i32, ptr %6, align 4, !tbaa !71
  %261 = zext i32 %260 to i64
  %262 = zext i32 %255 to i64
  %263 = add nuw nsw i64 %262, %261
  %264 = icmp ult i64 %256, %263
  br i1 %264, label %265, label %271

265:                                              ; preds = %259
  %266 = sub i64 %257, %263
  %267 = tail call i64 @llvm.umin.i64(i64 %266, i64 258)
  %268 = load ptr, ptr %7, align 8, !tbaa !34
  %269 = getelementptr inbounds nuw i8, ptr %268, i64 %263
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %269, i8 0, i64 %267, i1 false)
  %270 = add nuw nsw i64 %267, %263
  br label %283

271:                                              ; preds = %259
  %272 = add nuw nsw i64 %263, 258
  %273 = icmp ult i64 %256, %272
  br i1 %273, label %274, label %286

274:                                              ; preds = %271
  %275 = sub nuw nsw i64 %272, %256
  %276 = sub i64 %257, %256
  %277 = tail call i64 @llvm.umin.i64(i64 %275, i64 %276)
  %278 = load ptr, ptr %7, align 8, !tbaa !34
  %279 = getelementptr inbounds nuw i8, ptr %278, i64 %256
  %280 = and i64 %277, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %279, i8 0, i64 %280, i1 false)
  %281 = load i64, ptr %19, align 8, !tbaa !38
  %282 = add i64 %281, %277
  br label %283

283:                                              ; preds = %274, %265
  %284 = phi i64 [ %270, %265 ], [ %282, %274 ]
  store i64 %284, ptr %19, align 8, !tbaa !38
  %285 = load i32, ptr %3, align 4, !tbaa !73
  br label %286

286:                                              ; preds = %254, %271, %283
  %287 = phi i32 [ %255, %254 ], [ %255, %271 ], [ %285, %283 ]
  %288 = icmp ult i32 %287, 262
  %289 = and i1 %20, %288
  br i1 %289, label %783, label %290

290:                                              ; preds = %286
  %291 = icmp eq i32 %287, 0
  br i1 %291, label %676, label %292

292:                                              ; preds = %290
  %293 = icmp ugt i32 %287, 2
  br i1 %293, label %294, label %477

294:                                              ; preds = %33, %292
  %295 = phi i32 [ %287, %292 ], [ %34, %33 ]
  %296 = load i32, ptr %15, align 8, !tbaa !78
  %297 = load i32, ptr %16, align 8, !tbaa !51
  %298 = shl i32 %296, %297
  %299 = load ptr, ptr %7, align 8, !tbaa !34
  %300 = load i32, ptr %6, align 4, !tbaa !71
  %301 = add i32 %300, 2
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds nuw i8, ptr %299, i64 %302
  %304 = load i8, ptr %303, align 1, !tbaa !8
  %305 = zext i8 %304 to i32
  %306 = xor i32 %298, %305
  %307 = load i32, ptr %17, align 4, !tbaa !50
  %308 = and i32 %306, %307
  store i32 %308, ptr %15, align 8, !tbaa !78
  %309 = load ptr, ptr %12, align 8, !tbaa !37
  %310 = zext i32 %308 to i64
  %311 = getelementptr inbounds nuw [2 x i8], ptr %309, i64 %310
  %312 = load i16, ptr %311, align 2, !tbaa !60
  %313 = load ptr, ptr %13, align 8, !tbaa !35
  %314 = load i32, ptr %18, align 8, !tbaa !33
  %315 = and i32 %314, %300
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds nuw [2 x i8], ptr %313, i64 %316
  store i16 %312, ptr %317, align 2, !tbaa !60
  %318 = zext i16 %312 to i32
  %319 = trunc i32 %300 to i16
  store i16 %319, ptr %311, align 2, !tbaa !60
  %320 = icmp eq i16 %312, 0
  br i1 %320, label %477, label %321

321:                                              ; preds = %294
  %322 = sub i32 %300, %318
  %323 = load i32, ptr %4, align 8, !tbaa !32
  %324 = add i32 %323, -262
  %325 = icmp ugt i32 %322, %324
  br i1 %325, label %477, label %326

326:                                              ; preds = %321
  %327 = load i32, ptr %21, align 4, !tbaa !70
  %328 = zext i32 %300 to i64
  %329 = getelementptr inbounds nuw i8, ptr %299, i64 %328
  %330 = load i32, ptr %22, align 8, !tbaa !75
  %331 = load i32, ptr %23, align 8, !tbaa !68
  %332 = tail call i32 @llvm.usub.sat.i32(i32 %300, i32 %324)
  %333 = getelementptr inbounds nuw i8, ptr %329, i64 258
  %334 = sext i32 %330 to i64
  %335 = getelementptr i8, ptr %329, i64 %334
  %336 = getelementptr i8, ptr %335, i64 -1
  %337 = load i8, ptr %336, align 1, !tbaa !8
  %338 = load i8, ptr %335, align 1, !tbaa !8
  %339 = load i32, ptr %24, align 4, !tbaa !66
  %340 = icmp ult i32 %330, %339
  %341 = lshr i32 %327, 2
  %342 = select i1 %340, i32 %327, i32 %341
  %343 = tail call i32 @llvm.umin.i32(i32 %331, i32 %295)
  %344 = getelementptr inbounds nuw i8, ptr %329, i64 1
  %345 = ptrtoint ptr %333 to i64
  br label %346

346:                                              ; preds = %461, %326
  %347 = phi i32 [ %330, %326 ], [ %462, %461 ]
  %348 = phi i32 [ %342, %326 ], [ %471, %461 ]
  %349 = phi i32 [ %318, %326 ], [ %469, %461 ]
  %350 = phi i8 [ %337, %326 ], [ %463, %461 ]
  %351 = phi i8 [ %338, %326 ], [ %464, %461 ]
  %352 = zext nneg i32 %349 to i64
  %353 = getelementptr inbounds nuw i8, ptr %299, i64 %352
  %354 = sext i32 %347 to i64
  %355 = getelementptr inbounds i8, ptr %353, i64 %354
  %356 = load i8, ptr %355, align 1, !tbaa !8
  %357 = icmp eq i8 %356, %351
  br i1 %357, label %358, label %461

358:                                              ; preds = %346
  %359 = getelementptr i8, ptr %355, i64 -1
  %360 = load i8, ptr %359, align 1, !tbaa !8
  %361 = icmp eq i8 %360, %350
  br i1 %361, label %362, label %461

362:                                              ; preds = %358
  %363 = load i8, ptr %353, align 1, !tbaa !8
  %364 = load i8, ptr %329, align 1, !tbaa !8
  %365 = icmp eq i8 %363, %364
  br i1 %365, label %366, label %461

366:                                              ; preds = %362
  %367 = getelementptr inbounds nuw i8, ptr %353, i64 1
  %368 = load i8, ptr %367, align 1, !tbaa !8
  %369 = load i8, ptr %344, align 1, !tbaa !8
  %370 = icmp eq i8 %368, %369
  br i1 %370, label %371, label %461

371:                                              ; preds = %366
  %372 = getelementptr inbounds nuw i8, ptr %353, i64 2
  br label %373

373:                                              ; preds = %418, %371
  %374 = phi ptr [ %372, %371 ], [ %422, %418 ]
  %375 = phi i64 [ 2, %371 ], [ %419, %418 ]
  %376 = getelementptr inbounds nuw i8, ptr %329, i64 %375
  %377 = getelementptr inbounds nuw i8, ptr %376, i64 1
  %378 = load i8, ptr %377, align 1, !tbaa !8
  %379 = getelementptr inbounds nuw i8, ptr %374, i64 1
  %380 = load i8, ptr %379, align 1, !tbaa !8
  %381 = icmp eq i8 %378, %380
  br i1 %381, label %382, label %427

382:                                              ; preds = %373
  %383 = getelementptr inbounds nuw i8, ptr %376, i64 2
  %384 = load i8, ptr %383, align 1, !tbaa !8
  %385 = getelementptr inbounds nuw i8, ptr %374, i64 2
  %386 = load i8, ptr %385, align 1, !tbaa !8
  %387 = icmp eq i8 %384, %386
  br i1 %387, label %388, label %429

388:                                              ; preds = %382
  %389 = getelementptr inbounds nuw i8, ptr %376, i64 3
  %390 = load i8, ptr %389, align 1, !tbaa !8
  %391 = getelementptr inbounds nuw i8, ptr %374, i64 3
  %392 = load i8, ptr %391, align 1, !tbaa !8
  %393 = icmp eq i8 %390, %392
  br i1 %393, label %394, label %431

394:                                              ; preds = %388
  %395 = getelementptr inbounds nuw i8, ptr %376, i64 4
  %396 = load i8, ptr %395, align 1, !tbaa !8
  %397 = getelementptr inbounds nuw i8, ptr %374, i64 4
  %398 = load i8, ptr %397, align 1, !tbaa !8
  %399 = icmp eq i8 %396, %398
  br i1 %399, label %400, label %433

400:                                              ; preds = %394
  %401 = getelementptr inbounds nuw i8, ptr %376, i64 5
  %402 = load i8, ptr %401, align 1, !tbaa !8
  %403 = getelementptr inbounds nuw i8, ptr %374, i64 5
  %404 = load i8, ptr %403, align 1, !tbaa !8
  %405 = icmp eq i8 %402, %404
  br i1 %405, label %406, label %435

406:                                              ; preds = %400
  %407 = getelementptr inbounds nuw i8, ptr %376, i64 6
  %408 = load i8, ptr %407, align 1, !tbaa !8
  %409 = getelementptr inbounds nuw i8, ptr %374, i64 6
  %410 = load i8, ptr %409, align 1, !tbaa !8
  %411 = icmp eq i8 %408, %410
  br i1 %411, label %412, label %437

412:                                              ; preds = %406
  %413 = getelementptr inbounds nuw i8, ptr %376, i64 7
  %414 = load i8, ptr %413, align 1, !tbaa !8
  %415 = getelementptr inbounds nuw i8, ptr %374, i64 7
  %416 = load i8, ptr %415, align 1, !tbaa !8
  %417 = icmp eq i8 %414, %416
  br i1 %417, label %418, label %439

418:                                              ; preds = %412
  %419 = add nuw nsw i64 %375, 8
  %420 = getelementptr inbounds nuw i8, ptr %329, i64 %419
  %421 = load i8, ptr %420, align 1, !tbaa !8
  %422 = getelementptr inbounds nuw i8, ptr %374, i64 8
  %423 = load i8, ptr %422, align 1, !tbaa !8
  %424 = icmp eq i8 %421, %423
  %425 = icmp samesign ult i64 %375, 250
  %426 = select i1 %424, i1 %425, i1 false
  br i1 %426, label %373, label %441, !llvm.loop !144

427:                                              ; preds = %373
  %428 = getelementptr inbounds nuw i8, ptr %376, i64 1
  br label %443

429:                                              ; preds = %382
  %430 = getelementptr inbounds nuw i8, ptr %376, i64 2
  br label %443

431:                                              ; preds = %388
  %432 = getelementptr inbounds nuw i8, ptr %376, i64 3
  br label %443

433:                                              ; preds = %394
  %434 = getelementptr inbounds nuw i8, ptr %376, i64 4
  br label %443

435:                                              ; preds = %400
  %436 = getelementptr inbounds nuw i8, ptr %376, i64 5
  br label %443

437:                                              ; preds = %406
  %438 = getelementptr inbounds nuw i8, ptr %376, i64 6
  br label %443

439:                                              ; preds = %412
  %440 = getelementptr inbounds nuw i8, ptr %376, i64 7
  br label %443

441:                                              ; preds = %418
  %442 = getelementptr inbounds nuw i8, ptr %329, i64 %419
  br label %443

443:                                              ; preds = %441, %439, %437, %435, %433, %431, %429, %427
  %444 = phi ptr [ %430, %429 ], [ %432, %431 ], [ %428, %427 ], [ %440, %439 ], [ %438, %437 ], [ %436, %435 ], [ %434, %433 ], [ %442, %441 ]
  %445 = ptrtoint ptr %444 to i64
  %446 = sub i64 %445, %345
  %447 = trunc i64 %446 to i32
  %448 = add i32 %447, 258
  %449 = icmp sgt i32 %448, %347
  br i1 %449, label %450, label %461

450:                                              ; preds = %443
  store i32 %349, ptr %8, align 8, !tbaa !81
  %451 = icmp slt i32 %448, %343
  br i1 %451, label %452, label %474

452:                                              ; preds = %450
  %453 = shl i64 %446, 32
  %454 = add i64 %453, 1103806595072
  %455 = ashr exact i64 %454, 32
  %456 = getelementptr inbounds i8, ptr %329, i64 %455
  %457 = load i8, ptr %456, align 1, !tbaa !8
  %458 = sext i32 %448 to i64
  %459 = getelementptr inbounds i8, ptr %329, i64 %458
  %460 = load i8, ptr %459, align 1, !tbaa !8
  br label %461

461:                                              ; preds = %452, %443, %366, %362, %358, %346
  %462 = phi i32 [ %347, %346 ], [ %347, %358 ], [ %347, %362 ], [ %347, %366 ], [ %448, %452 ], [ %347, %443 ]
  %463 = phi i8 [ %350, %346 ], [ %350, %358 ], [ %350, %362 ], [ %350, %366 ], [ %457, %452 ], [ %350, %443 ]
  %464 = phi i8 [ %351, %346 ], [ %351, %358 ], [ %351, %362 ], [ %351, %366 ], [ %460, %452 ], [ %351, %443 ]
  %465 = and i32 %349, %314
  %466 = zext nneg i32 %465 to i64
  %467 = getelementptr inbounds nuw [2 x i8], ptr %313, i64 %466
  %468 = load i16, ptr %467, align 2, !tbaa !60
  %469 = zext i16 %468 to i32
  %470 = icmp uge i32 %332, %469
  %471 = add i32 %348, -1
  %472 = icmp eq i32 %471, 0
  %473 = select i1 %470, i1 true, i1 %472
  br i1 %473, label %474, label %346, !llvm.loop !145

474:                                              ; preds = %450, %461
  %475 = phi i32 [ %448, %450 ], [ %462, %461 ]
  %476 = tail call i32 @llvm.umin.i32(i32 %475, i32 %295)
  store i32 %476, ptr %25, align 8, !tbaa !76
  br label %479

477:                                              ; preds = %294, %321, %292
  %478 = load i32, ptr %25, align 8, !tbaa !76
  br label %479

479:                                              ; preds = %477, %474
  %480 = phi i32 [ %478, %477 ], [ %476, %474 ]
  %481 = icmp ugt i32 %480, 2
  br i1 %481, label %482, label %575

482:                                              ; preds = %479
  %483 = trunc i32 %480 to i8
  %484 = add i8 %483, -3
  %485 = load i32, ptr %6, align 4, !tbaa !71
  %486 = load i32, ptr %8, align 8, !tbaa !81
  %487 = sub i32 %485, %486
  %488 = trunc i32 %487 to i16
  %489 = trunc i32 %487 to i8
  %490 = load ptr, ptr %26, align 8, !tbaa !44
  %491 = load i32, ptr %27, align 4, !tbaa !131
  %492 = add i32 %491, 1
  store i32 %492, ptr %27, align 4, !tbaa !131
  %493 = zext i32 %491 to i64
  %494 = getelementptr inbounds nuw i8, ptr %490, i64 %493
  store i8 %489, ptr %494, align 1, !tbaa !8
  %495 = lshr i32 %487, 8
  %496 = trunc i32 %495 to i8
  %497 = load ptr, ptr %26, align 8, !tbaa !44
  %498 = load i32, ptr %27, align 4, !tbaa !131
  %499 = add i32 %498, 1
  store i32 %499, ptr %27, align 4, !tbaa !131
  %500 = zext i32 %498 to i64
  %501 = getelementptr inbounds nuw i8, ptr %497, i64 %500
  store i8 %496, ptr %501, align 1, !tbaa !8
  %502 = load ptr, ptr %26, align 8, !tbaa !44
  %503 = load i32, ptr %27, align 4, !tbaa !131
  %504 = add i32 %503, 1
  store i32 %504, ptr %27, align 4, !tbaa !131
  %505 = zext i32 %503 to i64
  %506 = getelementptr inbounds nuw i8, ptr %502, i64 %505
  store i8 %484, ptr %506, align 1, !tbaa !8
  %507 = add i16 %488, -1
  %508 = zext i8 %484 to i64
  %509 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %508
  %510 = load i8, ptr %509, align 1, !tbaa !8
  %511 = zext i8 %510 to i64
  %512 = getelementptr [4 x i8], ptr %30, i64 %511
  %513 = load i16, ptr %512, align 4, !tbaa !8
  %514 = add i16 %513, 1
  store i16 %514, ptr %512, align 4, !tbaa !8
  %515 = icmp ult i16 %507, 256
  br i1 %515, label %516, label %519

516:                                              ; preds = %482
  %517 = zext nneg i16 %507 to i64
  %518 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %517
  br label %524

519:                                              ; preds = %482
  %520 = lshr i16 %507, 7
  %521 = zext nneg i16 %520 to i64
  %522 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %521
  %523 = getelementptr inbounds nuw i8, ptr %522, i64 256
  br label %524

524:                                              ; preds = %519, %516
  %525 = phi ptr [ %518, %516 ], [ %523, %519 ]
  %526 = load i8, ptr %525, align 1, !tbaa !8
  %527 = zext i8 %526 to i64
  %528 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %527
  %529 = load i16, ptr %528, align 4, !tbaa !8
  %530 = add i16 %529, 1
  store i16 %530, ptr %528, align 4, !tbaa !8
  %531 = load i32, ptr %27, align 4, !tbaa !131
  %532 = load i32, ptr %29, align 8, !tbaa !45
  %533 = icmp eq i32 %531, %532
  %534 = load i32, ptr %25, align 8, !tbaa !76
  %535 = load i32, ptr %3, align 4, !tbaa !73
  %536 = sub i32 %535, %534
  store i32 %536, ptr %3, align 4, !tbaa !73
  %537 = load i32, ptr %32, align 8, !tbaa !64
  %538 = icmp ule i32 %534, %537
  %539 = icmp ugt i32 %536, 2
  %540 = select i1 %538, i1 %539, i1 false
  br i1 %540, label %541, label %608

541:                                              ; preds = %524
  %542 = add i32 %534, -1
  store i32 %542, ptr %25, align 8, !tbaa !76
  %543 = load i32, ptr %16, align 8, !tbaa !51
  %544 = load ptr, ptr %7, align 8, !tbaa !34
  %545 = load i32, ptr %17, align 4, !tbaa !50
  %546 = load ptr, ptr %12, align 8, !tbaa !37
  %547 = load ptr, ptr %13, align 8, !tbaa !35
  %548 = load i32, ptr %18, align 8, !tbaa !33
  %549 = load i32, ptr %6, align 4, !tbaa !71
  %550 = load i32, ptr %15, align 8, !tbaa !78
  br label %551

551:                                              ; preds = %551, %541
  %552 = phi i32 [ %571, %551 ], [ %542, %541 ]
  %553 = phi i32 [ %563, %551 ], [ %550, %541 ]
  %554 = phi i32 [ %555, %551 ], [ %549, %541 ]
  %555 = add i32 %554, 1
  store i32 %555, ptr %6, align 4, !tbaa !71
  %556 = shl i32 %553, %543
  %557 = add i32 %554, 3
  %558 = zext i32 %557 to i64
  %559 = getelementptr inbounds nuw i8, ptr %544, i64 %558
  %560 = load i8, ptr %559, align 1, !tbaa !8
  %561 = zext i8 %560 to i32
  %562 = xor i32 %556, %561
  %563 = and i32 %562, %545
  store i32 %563, ptr %15, align 8, !tbaa !78
  %564 = zext i32 %563 to i64
  %565 = getelementptr inbounds nuw [2 x i8], ptr %546, i64 %564
  %566 = load i16, ptr %565, align 2, !tbaa !60
  %567 = and i32 %548, %555
  %568 = zext i32 %567 to i64
  %569 = getelementptr inbounds nuw [2 x i8], ptr %547, i64 %568
  store i16 %566, ptr %569, align 2, !tbaa !60
  %570 = trunc i32 %555 to i16
  store i16 %570, ptr %565, align 2, !tbaa !60
  %571 = add i32 %552, -1
  store i32 %571, ptr %25, align 8, !tbaa !76
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %573, label %551, !llvm.loop !146

573:                                              ; preds = %551
  %574 = add i32 %554, 2
  store i32 %574, ptr %6, align 4, !tbaa !71
  br i1 %533, label %626, label %607

575:                                              ; preds = %479
  %576 = load ptr, ptr %7, align 8, !tbaa !34
  %577 = load i32, ptr %6, align 4, !tbaa !71
  %578 = zext i32 %577 to i64
  %579 = getelementptr inbounds nuw i8, ptr %576, i64 %578
  %580 = load i8, ptr %579, align 1, !tbaa !8
  %581 = load ptr, ptr %26, align 8, !tbaa !44
  %582 = load i32, ptr %27, align 4, !tbaa !131
  %583 = add i32 %582, 1
  store i32 %583, ptr %27, align 4, !tbaa !131
  %584 = zext i32 %582 to i64
  %585 = getelementptr inbounds nuw i8, ptr %581, i64 %584
  store i8 0, ptr %585, align 1, !tbaa !8
  %586 = load ptr, ptr %26, align 8, !tbaa !44
  %587 = load i32, ptr %27, align 4, !tbaa !131
  %588 = add i32 %587, 1
  store i32 %588, ptr %27, align 4, !tbaa !131
  %589 = zext i32 %587 to i64
  %590 = getelementptr inbounds nuw i8, ptr %586, i64 %589
  store i8 0, ptr %590, align 1, !tbaa !8
  %591 = load ptr, ptr %26, align 8, !tbaa !44
  %592 = load i32, ptr %27, align 4, !tbaa !131
  %593 = add i32 %592, 1
  store i32 %593, ptr %27, align 4, !tbaa !131
  %594 = zext i32 %592 to i64
  %595 = getelementptr inbounds nuw i8, ptr %591, i64 %594
  store i8 %580, ptr %595, align 1, !tbaa !8
  %596 = zext i8 %580 to i64
  %597 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %596
  %598 = load i16, ptr %597, align 4, !tbaa !8
  %599 = add i16 %598, 1
  store i16 %599, ptr %597, align 4, !tbaa !8
  %600 = load i32, ptr %27, align 4, !tbaa !131
  %601 = load i32, ptr %29, align 8, !tbaa !45
  %602 = icmp eq i32 %600, %601
  %603 = load i32, ptr %3, align 4, !tbaa !73
  %604 = add i32 %603, -1
  store i32 %604, ptr %3, align 4, !tbaa !73
  %605 = load i32, ptr %6, align 4, !tbaa !71
  %606 = add i32 %605, 1
  store i32 %606, ptr %6, align 4, !tbaa !71
  br i1 %602, label %626, label %607

607:                                              ; preds = %575, %573, %671, %608
  br label %33

608:                                              ; preds = %524
  %609 = load i32, ptr %6, align 4, !tbaa !71
  %610 = add i32 %609, %534
  store i32 %610, ptr %6, align 4, !tbaa !71
  store i32 0, ptr %25, align 8, !tbaa !76
  %611 = load ptr, ptr %7, align 8, !tbaa !34
  %612 = zext i32 %610 to i64
  %613 = getelementptr inbounds nuw i8, ptr %611, i64 %612
  %614 = load i8, ptr %613, align 1, !tbaa !8
  %615 = zext i8 %614 to i32
  store i32 %615, ptr %15, align 8, !tbaa !78
  %616 = load i32, ptr %16, align 8, !tbaa !51
  %617 = shl i32 %615, %616
  %618 = add i32 %610, 1
  %619 = zext i32 %618 to i64
  %620 = getelementptr inbounds nuw i8, ptr %611, i64 %619
  %621 = load i8, ptr %620, align 1, !tbaa !8
  %622 = zext i8 %621 to i32
  %623 = xor i32 %617, %622
  %624 = load i32, ptr %17, align 4, !tbaa !50
  %625 = and i32 %623, %624
  store i32 %625, ptr %15, align 8, !tbaa !78
  br i1 %533, label %626, label %607

626:                                              ; preds = %575, %573, %608
  %627 = phi i32 [ %606, %575 ], [ %574, %573 ], [ %610, %608 ]
  %628 = load i64, ptr %9, align 8, !tbaa !72
  %629 = icmp sgt i64 %628, -1
  br i1 %629, label %630, label %634

630:                                              ; preds = %626
  %631 = load ptr, ptr %7, align 8, !tbaa !34
  %632 = and i64 %628, 4294967295
  %633 = getelementptr inbounds nuw i8, ptr %631, i64 %632
  br label %634

634:                                              ; preds = %626, %630
  %635 = phi ptr [ %633, %630 ], [ null, %626 ]
  %636 = zext i32 %627 to i64
  %637 = sub nsw i64 %636, %628
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %635, i64 noundef %637, i32 noundef 0) #11
  %638 = load i32, ptr %6, align 4, !tbaa !71
  %639 = zext i32 %638 to i64
  store i64 %639, ptr %9, align 8, !tbaa !72
  %640 = load ptr, ptr %0, align 8, !tbaa !20
  %641 = getelementptr inbounds nuw i8, ptr %640, i64 56
  %642 = load ptr, ptr %641, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %642) #11
  %643 = getelementptr inbounds nuw i8, ptr %642, i64 40
  %644 = load i64, ptr %643, align 8, !tbaa !55
  %645 = getelementptr inbounds nuw i8, ptr %640, i64 32
  %646 = load i32, ptr %645, align 8, !tbaa !104
  %647 = zext i32 %646 to i64
  %648 = tail call i64 @llvm.umin.i64(i64 %644, i64 %647)
  %649 = icmp eq i64 %648, 0
  br i1 %649, label %671, label %650

650:                                              ; preds = %634
  %651 = trunc nuw i64 %648 to i32
  %652 = getelementptr inbounds nuw i8, ptr %640, i64 24
  %653 = load ptr, ptr %652, align 8, !tbaa !103
  %654 = getelementptr inbounds nuw i8, ptr %642, i64 32
  %655 = load ptr, ptr %654, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %653, ptr align 1 %655, i64 %648, i1 false)
  %656 = load ptr, ptr %652, align 8, !tbaa !103
  %657 = getelementptr inbounds nuw i8, ptr %656, i64 %648
  store ptr %657, ptr %652, align 8, !tbaa !103
  %658 = load ptr, ptr %654, align 8, !tbaa !56
  %659 = getelementptr inbounds nuw i8, ptr %658, i64 %648
  store ptr %659, ptr %654, align 8, !tbaa !56
  %660 = getelementptr inbounds nuw i8, ptr %640, i64 40
  %661 = load i64, ptr %660, align 8, !tbaa !105
  %662 = add i64 %661, %648
  store i64 %662, ptr %660, align 8, !tbaa !105
  %663 = load i32, ptr %645, align 8, !tbaa !104
  %664 = sub i32 %663, %651
  store i32 %664, ptr %645, align 8, !tbaa !104
  %665 = load i64, ptr %643, align 8, !tbaa !55
  %666 = sub i64 %665, %648
  store i64 %666, ptr %643, align 8, !tbaa !55
  %667 = icmp eq i64 %665, %648
  br i1 %667, label %668, label %671

668:                                              ; preds = %650
  %669 = getelementptr inbounds nuw i8, ptr %642, i64 16
  %670 = load ptr, ptr %669, align 8, !tbaa !40
  store ptr %670, ptr %654, align 8, !tbaa !56
  br label %671

671:                                              ; preds = %634, %650, %668
  %672 = load ptr, ptr %0, align 8, !tbaa !20
  %673 = getelementptr inbounds nuw i8, ptr %672, i64 32
  %674 = load i32, ptr %673, align 8, !tbaa !104
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %783, label %607

676:                                              ; preds = %290
  %677 = load i32, ptr %6, align 4, !tbaa !71
  %678 = tail call i32 @llvm.umin.i32(i32 %677, i32 2)
  store i32 %678, ptr %10, align 4, !tbaa !74
  %679 = icmp eq i32 %1, 4
  br i1 %679, label %680, label %730

680:                                              ; preds = %676
  %681 = load i64, ptr %9, align 8, !tbaa !72
  %682 = icmp sgt i64 %681, -1
  br i1 %682, label %683, label %687

683:                                              ; preds = %680
  %684 = load ptr, ptr %7, align 8, !tbaa !34
  %685 = and i64 %681, 4294967295
  %686 = getelementptr inbounds nuw i8, ptr %684, i64 %685
  br label %687

687:                                              ; preds = %680, %683
  %688 = phi ptr [ %686, %683 ], [ null, %680 ]
  %689 = zext i32 %677 to i64
  %690 = sub nsw i64 %689, %681
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %688, i64 noundef %690, i32 noundef 1) #11
  %691 = load i32, ptr %6, align 4, !tbaa !71
  %692 = zext i32 %691 to i64
  store i64 %692, ptr %9, align 8, !tbaa !72
  %693 = load ptr, ptr %0, align 8, !tbaa !20
  %694 = getelementptr inbounds nuw i8, ptr %693, i64 56
  %695 = load ptr, ptr %694, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %695) #11
  %696 = getelementptr inbounds nuw i8, ptr %695, i64 40
  %697 = load i64, ptr %696, align 8, !tbaa !55
  %698 = getelementptr inbounds nuw i8, ptr %693, i64 32
  %699 = load i32, ptr %698, align 8, !tbaa !104
  %700 = zext i32 %699 to i64
  %701 = tail call i64 @llvm.umin.i64(i64 %697, i64 %700)
  %702 = icmp eq i64 %701, 0
  br i1 %702, label %724, label %703

703:                                              ; preds = %687
  %704 = trunc nuw i64 %701 to i32
  %705 = getelementptr inbounds nuw i8, ptr %693, i64 24
  %706 = load ptr, ptr %705, align 8, !tbaa !103
  %707 = getelementptr inbounds nuw i8, ptr %695, i64 32
  %708 = load ptr, ptr %707, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %706, ptr align 1 %708, i64 %701, i1 false)
  %709 = load ptr, ptr %705, align 8, !tbaa !103
  %710 = getelementptr inbounds nuw i8, ptr %709, i64 %701
  store ptr %710, ptr %705, align 8, !tbaa !103
  %711 = load ptr, ptr %707, align 8, !tbaa !56
  %712 = getelementptr inbounds nuw i8, ptr %711, i64 %701
  store ptr %712, ptr %707, align 8, !tbaa !56
  %713 = getelementptr inbounds nuw i8, ptr %693, i64 40
  %714 = load i64, ptr %713, align 8, !tbaa !105
  %715 = add i64 %714, %701
  store i64 %715, ptr %713, align 8, !tbaa !105
  %716 = load i32, ptr %698, align 8, !tbaa !104
  %717 = sub i32 %716, %704
  store i32 %717, ptr %698, align 8, !tbaa !104
  %718 = load i64, ptr %696, align 8, !tbaa !55
  %719 = sub i64 %718, %701
  store i64 %719, ptr %696, align 8, !tbaa !55
  %720 = icmp eq i64 %718, %701
  br i1 %720, label %721, label %724

721:                                              ; preds = %703
  %722 = getelementptr inbounds nuw i8, ptr %695, i64 16
  %723 = load ptr, ptr %722, align 8, !tbaa !40
  store ptr %723, ptr %707, align 8, !tbaa !56
  br label %724

724:                                              ; preds = %687, %703, %721
  %725 = load ptr, ptr %0, align 8, !tbaa !20
  %726 = getelementptr inbounds nuw i8, ptr %725, i64 32
  %727 = load i32, ptr %726, align 8, !tbaa !104
  %728 = icmp eq i32 %727, 0
  %729 = select i1 %728, i32 2, i32 3
  br label %783

730:                                              ; preds = %676
  %731 = load i32, ptr %27, align 4, !tbaa !131
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %782, label %733

733:                                              ; preds = %730
  %734 = load i64, ptr %9, align 8, !tbaa !72
  %735 = icmp sgt i64 %734, -1
  br i1 %735, label %736, label %740

736:                                              ; preds = %733
  %737 = load ptr, ptr %7, align 8, !tbaa !34
  %738 = and i64 %734, 4294967295
  %739 = getelementptr inbounds nuw i8, ptr %737, i64 %738
  br label %740

740:                                              ; preds = %733, %736
  %741 = phi ptr [ %739, %736 ], [ null, %733 ]
  %742 = zext i32 %677 to i64
  %743 = sub nsw i64 %742, %734
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %741, i64 noundef %743, i32 noundef 0) #11
  %744 = load i32, ptr %6, align 4, !tbaa !71
  %745 = zext i32 %744 to i64
  store i64 %745, ptr %9, align 8, !tbaa !72
  %746 = load ptr, ptr %0, align 8, !tbaa !20
  %747 = getelementptr inbounds nuw i8, ptr %746, i64 56
  %748 = load ptr, ptr %747, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %748) #11
  %749 = getelementptr inbounds nuw i8, ptr %748, i64 40
  %750 = load i64, ptr %749, align 8, !tbaa !55
  %751 = getelementptr inbounds nuw i8, ptr %746, i64 32
  %752 = load i32, ptr %751, align 8, !tbaa !104
  %753 = zext i32 %752 to i64
  %754 = tail call i64 @llvm.umin.i64(i64 %750, i64 %753)
  %755 = icmp eq i64 %754, 0
  br i1 %755, label %777, label %756

756:                                              ; preds = %740
  %757 = trunc nuw i64 %754 to i32
  %758 = getelementptr inbounds nuw i8, ptr %746, i64 24
  %759 = load ptr, ptr %758, align 8, !tbaa !103
  %760 = getelementptr inbounds nuw i8, ptr %748, i64 32
  %761 = load ptr, ptr %760, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %759, ptr align 1 %761, i64 %754, i1 false)
  %762 = load ptr, ptr %758, align 8, !tbaa !103
  %763 = getelementptr inbounds nuw i8, ptr %762, i64 %754
  store ptr %763, ptr %758, align 8, !tbaa !103
  %764 = load ptr, ptr %760, align 8, !tbaa !56
  %765 = getelementptr inbounds nuw i8, ptr %764, i64 %754
  store ptr %765, ptr %760, align 8, !tbaa !56
  %766 = getelementptr inbounds nuw i8, ptr %746, i64 40
  %767 = load i64, ptr %766, align 8, !tbaa !105
  %768 = add i64 %767, %754
  store i64 %768, ptr %766, align 8, !tbaa !105
  %769 = load i32, ptr %751, align 8, !tbaa !104
  %770 = sub i32 %769, %757
  store i32 %770, ptr %751, align 8, !tbaa !104
  %771 = load i64, ptr %749, align 8, !tbaa !55
  %772 = sub i64 %771, %754
  store i64 %772, ptr %749, align 8, !tbaa !55
  %773 = icmp eq i64 %771, %754
  br i1 %773, label %774, label %777

774:                                              ; preds = %756
  %775 = getelementptr inbounds nuw i8, ptr %748, i64 16
  %776 = load ptr, ptr %775, align 8, !tbaa !40
  store ptr %776, ptr %760, align 8, !tbaa !56
  br label %777

777:                                              ; preds = %740, %756, %774
  %778 = load ptr, ptr %0, align 8, !tbaa !20
  %779 = getelementptr inbounds nuw i8, ptr %778, i64 32
  %780 = load i32, ptr %779, align 8, !tbaa !104
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %783, label %782

782:                                              ; preds = %777, %730
  br label %783

783:                                              ; preds = %671, %286, %777, %724, %782
  %784 = phi i32 [ 1, %782 ], [ %729, %724 ], [ 0, %777 ], [ 0, %286 ], [ 0, %671 ]
  ret i32 %784
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
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 164
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 188
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 204
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %31 = getelementptr i8, ptr %0, i64 1240
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 212
  br label %36

36:                                               ; preds = %607, %2
  %37 = load i32, ptr %3, align 4, !tbaa !73
  %38 = icmp ult i32 %37, 262
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, ptr %21, align 8, !tbaa !76
  %41 = load i32, ptr %8, align 8, !tbaa !81
  br label %303

42:                                               ; preds = %36
  %43 = load i32, ptr %4, align 8, !tbaa !32
  %44 = add i32 %43, -262
  %45 = zext i32 %43 to i64
  %46 = insertelement <2 x i32> poison, i32 %43, i64 0
  %47 = shufflevector <2 x i32> %46, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %48

48:                                               ; preds = %255, %42
  %49 = phi i32 [ %203, %255 ], [ %37, %42 ]
  %50 = load i64, ptr %5, align 8, !tbaa !59
  %51 = zext nneg i32 %49 to i64
  %52 = load i32, ptr %6, align 4, !tbaa !71
  %53 = zext i32 %52 to i64
  %54 = add nuw nsw i64 %51, %53
  %55 = sub i64 %50, %54
  %56 = trunc i64 %55 to i32
  %57 = load i32, ptr %4, align 8, !tbaa !32
  %58 = add i32 %44, %57
  %59 = icmp ult i32 %52, %58
  br i1 %59, label %162, label %60

60:                                               ; preds = %48
  %61 = load ptr, ptr %7, align 8, !tbaa !34
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 %45
  %63 = sub i32 %43, %56
  %64 = zext i32 %63 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %61, ptr align 1 %62, i64 %64, i1 false)
  %65 = load <2 x i32>, ptr %6, align 4, !tbaa !4
  %66 = sub <2 x i32> %65, %47
  store <2 x i32> %66, ptr %6, align 4, !tbaa !4
  %67 = load i64, ptr %9, align 8, !tbaa !72
  %68 = sub nsw i64 %67, %45
  store i64 %68, ptr %9, align 8, !tbaa !72
  %69 = load i32, ptr %10, align 4, !tbaa !74
  %70 = extractelement <2 x i32> %66, i64 0
  %71 = icmp ugt i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  store i32 %70, ptr %10, align 4, !tbaa !74
  br label %73

73:                                               ; preds = %72, %60
  %74 = load i32, ptr %4, align 8, !tbaa !32
  %75 = load i32, ptr %11, align 4, !tbaa !36
  %76 = load ptr, ptr %12, align 8, !tbaa !37
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds nuw [2 x i8], ptr %76, i64 %77
  %79 = add i32 %75, -1
  %80 = zext i32 %79 to i64
  %81 = add nuw nsw i64 %80, 1
  %82 = icmp ult i32 %79, 7
  br i1 %82, label %104, label %83

83:                                               ; preds = %73
  %84 = and i64 %81, 8589934584
  %85 = mul nsw i64 %84, -2
  %86 = getelementptr i8, ptr %78, i64 %85
  %87 = trunc i64 %84 to i32
  %88 = sub i32 %75, %87
  %89 = insertelement <8 x i32> poison, i32 %74, i64 0
  %90 = shufflevector <8 x i32> %89, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %91

91:                                               ; preds = %91, %83
  %92 = phi i64 [ 0, %83 ], [ %100, %91 ]
  %93 = mul i64 %92, -2
  %94 = getelementptr i8, ptr %78, i64 %93
  %95 = getelementptr inbounds i8, ptr %94, i64 -16
  %96 = load <8 x i16>, ptr %95, align 2, !tbaa !60
  %97 = zext <8 x i16> %96 to <8 x i32>
  %98 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %97, <8 x i32> %90)
  %99 = trunc nuw <8 x i32> %98 to <8 x i16>
  store <8 x i16> %99, ptr %95, align 2, !tbaa !60
  %100 = add nuw i64 %92, 8
  %101 = icmp eq i64 %100, %84
  br i1 %101, label %102, label %91, !llvm.loop !147

102:                                              ; preds = %91
  %103 = icmp eq i64 %81, %84
  br i1 %103, label %117, label %104

104:                                              ; preds = %73, %102
  %105 = phi ptr [ %78, %73 ], [ %86, %102 ]
  %106 = phi i32 [ %75, %73 ], [ %88, %102 ]
  br label %107

107:                                              ; preds = %104, %107
  %108 = phi ptr [ %110, %107 ], [ %105, %104 ]
  %109 = phi i32 [ %115, %107 ], [ %106, %104 ]
  %110 = getelementptr inbounds i8, ptr %108, i64 -2
  %111 = load i16, ptr %110, align 2, !tbaa !60
  %112 = zext i16 %111 to i32
  %113 = tail call i32 @llvm.usub.sat.i32(i32 %112, i32 %74)
  %114 = trunc nuw i32 %113 to i16
  store i16 %114, ptr %110, align 2, !tbaa !60
  %115 = add i32 %109, -1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %107, !llvm.loop !148

117:                                              ; preds = %107, %102
  %118 = load ptr, ptr %13, align 8, !tbaa !35
  %119 = zext i32 %74 to i64
  %120 = getelementptr inbounds nuw [2 x i8], ptr %118, i64 %119
  %121 = add i32 %74, -1
  %122 = zext i32 %121 to i64
  %123 = add nuw nsw i64 %122, 1
  %124 = icmp ult i32 %121, 7
  br i1 %124, label %146, label %125

125:                                              ; preds = %117
  %126 = and i64 %123, 8589934584
  %127 = mul nsw i64 %126, -2
  %128 = getelementptr i8, ptr %120, i64 %127
  %129 = trunc i64 %126 to i32
  %130 = sub i32 %74, %129
  %131 = insertelement <8 x i32> poison, i32 %74, i64 0
  %132 = shufflevector <8 x i32> %131, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %133

133:                                              ; preds = %133, %125
  %134 = phi i64 [ 0, %125 ], [ %142, %133 ]
  %135 = mul i64 %134, -2
  %136 = getelementptr i8, ptr %120, i64 %135
  %137 = getelementptr inbounds i8, ptr %136, i64 -16
  %138 = load <8 x i16>, ptr %137, align 2, !tbaa !60
  %139 = zext <8 x i16> %138 to <8 x i32>
  %140 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %139, <8 x i32> %132)
  %141 = trunc nuw <8 x i32> %140 to <8 x i16>
  store <8 x i16> %141, ptr %137, align 2, !tbaa !60
  %142 = add nuw i64 %134, 8
  %143 = icmp eq i64 %142, %126
  br i1 %143, label %144, label %133, !llvm.loop !149

144:                                              ; preds = %133
  %145 = icmp eq i64 %123, %126
  br i1 %145, label %159, label %146

146:                                              ; preds = %117, %144
  %147 = phi ptr [ %120, %117 ], [ %128, %144 ]
  %148 = phi i32 [ %74, %117 ], [ %130, %144 ]
  br label %149

149:                                              ; preds = %146, %149
  %150 = phi ptr [ %152, %149 ], [ %147, %146 ]
  %151 = phi i32 [ %157, %149 ], [ %148, %146 ]
  %152 = getelementptr inbounds i8, ptr %150, i64 -2
  %153 = load i16, ptr %152, align 2, !tbaa !60
  %154 = zext i16 %153 to i32
  %155 = tail call i32 @llvm.usub.sat.i32(i32 %154, i32 %74)
  %156 = trunc nuw i32 %155 to i16
  store i16 %156, ptr %152, align 2, !tbaa !60
  %157 = add i32 %151, -1
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %149, !llvm.loop !150

159:                                              ; preds = %149, %144
  store i32 1, ptr %14, align 8, !tbaa !61
  %160 = add i32 %43, %56
  %161 = load i32, ptr %3, align 4, !tbaa !73
  br label %162

162:                                              ; preds = %159, %48
  %163 = phi i32 [ %161, %159 ], [ %49, %48 ]
  %164 = phi i32 [ %70, %159 ], [ %52, %48 ]
  %165 = phi i32 [ %160, %159 ], [ %56, %48 ]
  %166 = load ptr, ptr %0, align 8, !tbaa !20
  %167 = getelementptr inbounds nuw i8, ptr %166, i64 8
  %168 = load i32, ptr %167, align 8, !tbaa !79
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %260, label %170

170:                                              ; preds = %162
  %171 = load ptr, ptr %7, align 8, !tbaa !34
  %172 = zext i32 %164 to i64
  %173 = getelementptr inbounds nuw i8, ptr %171, i64 %172
  %174 = zext i32 %163 to i64
  %175 = getelementptr inbounds nuw i8, ptr %173, i64 %174
  %176 = tail call i32 @llvm.umin.i32(i32 %168, i32 %165)
  %177 = icmp eq i32 %165, 0
  br i1 %177, label %201, label %178

178:                                              ; preds = %170
  %179 = sub i32 %168, %176
  store i32 %179, ptr %167, align 8, !tbaa !79
  %180 = load ptr, ptr %166, align 8, !tbaa !80
  %181 = zext i32 %176 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %175, ptr align 1 %180, i64 %181, i1 false)
  %182 = getelementptr inbounds nuw i8, ptr %166, i64 56
  %183 = load ptr, ptr %182, align 8, !tbaa !19
  %184 = getelementptr inbounds nuw i8, ptr %183, i64 48
  %185 = load i32, ptr %184, align 8, !tbaa !30
  switch i32 %185, label %194 [
    i32 1, label %186
    i32 2, label %190
  ]

186:                                              ; preds = %178
  %187 = getelementptr inbounds nuw i8, ptr %166, i64 96
  %188 = load i64, ptr %187, align 8, !tbaa !57
  %189 = tail call i64 @adler32(i64 noundef %188, ptr noundef %175, i32 noundef %176) #11
  store i64 %189, ptr %187, align 8, !tbaa !57
  br label %194

190:                                              ; preds = %178
  %191 = getelementptr inbounds nuw i8, ptr %166, i64 96
  %192 = load i64, ptr %191, align 8, !tbaa !57
  %193 = tail call i64 @crc32(i64 noundef %192, ptr noundef %175, i32 noundef %176) #11
  store i64 %193, ptr %191, align 8, !tbaa !57
  br label %194

194:                                              ; preds = %190, %186, %178
  %195 = load ptr, ptr %166, align 8, !tbaa !80
  %196 = getelementptr inbounds nuw i8, ptr %195, i64 %181
  store ptr %196, ptr %166, align 8, !tbaa !80
  %197 = getelementptr inbounds nuw i8, ptr %166, i64 16
  %198 = load i64, ptr %197, align 8, !tbaa !53
  %199 = add i64 %198, %181
  store i64 %199, ptr %197, align 8, !tbaa !53
  %200 = load i32, ptr %3, align 4, !tbaa !73
  br label %201

201:                                              ; preds = %194, %170
  %202 = phi i32 [ %163, %170 ], [ %200, %194 ]
  %203 = add i32 %202, %176
  store i32 %203, ptr %3, align 4, !tbaa !73
  %204 = load i32, ptr %10, align 4, !tbaa !74
  %205 = add i32 %204, %203
  %206 = icmp ugt i32 %205, 2
  br i1 %206, label %207, label %253

207:                                              ; preds = %201
  %208 = load i32, ptr %6, align 4, !tbaa !71
  %209 = sub i32 %208, %204
  %210 = load ptr, ptr %7, align 8, !tbaa !34
  %211 = zext i32 %209 to i64
  %212 = getelementptr inbounds nuw i8, ptr %210, i64 %211
  %213 = load i8, ptr %212, align 1, !tbaa !8
  %214 = zext i8 %213 to i32
  store i32 %214, ptr %15, align 8, !tbaa !78
  %215 = load i32, ptr %16, align 8, !tbaa !51
  %216 = shl i32 %214, %215
  %217 = add i32 %209, 1
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds nuw i8, ptr %210, i64 %218
  %220 = load i8, ptr %219, align 1, !tbaa !8
  %221 = zext i8 %220 to i32
  %222 = xor i32 %216, %221
  %223 = load i32, ptr %17, align 4, !tbaa !50
  %224 = and i32 %222, %223
  store i32 %224, ptr %15, align 8, !tbaa !78
  br label %225

225:                                              ; preds = %230, %207
  %226 = phi i32 [ %238, %230 ], [ %224, %207 ]
  %227 = phi i32 [ %250, %230 ], [ %204, %207 ]
  %228 = phi i32 [ %249, %230 ], [ %209, %207 ]
  %229 = icmp eq i32 %227, 0
  br i1 %229, label %253, label %230

230:                                              ; preds = %225
  %231 = shl i32 %226, %215
  %232 = add i32 %228, 2
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds nuw i8, ptr %210, i64 %233
  %235 = load i8, ptr %234, align 1, !tbaa !8
  %236 = zext i8 %235 to i32
  %237 = xor i32 %231, %236
  %238 = and i32 %237, %223
  store i32 %238, ptr %15, align 8, !tbaa !78
  %239 = load ptr, ptr %12, align 8, !tbaa !37
  %240 = zext i32 %238 to i64
  %241 = getelementptr inbounds nuw [2 x i8], ptr %239, i64 %240
  %242 = load i16, ptr %241, align 2, !tbaa !60
  %243 = load ptr, ptr %13, align 8, !tbaa !35
  %244 = load i32, ptr %18, align 8, !tbaa !33
  %245 = and i32 %244, %228
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds nuw [2 x i8], ptr %243, i64 %246
  store i16 %242, ptr %247, align 2, !tbaa !60
  %248 = trunc i32 %228 to i16
  store i16 %248, ptr %241, align 2, !tbaa !60
  %249 = add i32 %228, 1
  %250 = add i32 %227, -1
  store i32 %250, ptr %10, align 4, !tbaa !74
  %251 = add i32 %250, %203
  %252 = icmp ult i32 %251, 3
  br i1 %252, label %253, label %225, !llvm.loop !89

253:                                              ; preds = %230, %225, %201
  %254 = icmp ult i32 %203, 262
  br i1 %254, label %255, label %260

255:                                              ; preds = %253
  %256 = load ptr, ptr %0, align 8, !tbaa !20
  %257 = getelementptr inbounds nuw i8, ptr %256, i64 8
  %258 = load i32, ptr %257, align 8, !tbaa !79
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %48, !llvm.loop !90

260:                                              ; preds = %255, %253, %162
  %261 = phi i32 [ %203, %255 ], [ %203, %253 ], [ %163, %162 ]
  %262 = load i64, ptr %19, align 8, !tbaa !38
  %263 = load i64, ptr %5, align 8, !tbaa !59
  %264 = icmp ult i64 %262, %263
  br i1 %264, label %265, label %292

265:                                              ; preds = %260
  %266 = load i32, ptr %6, align 4, !tbaa !71
  %267 = zext i32 %266 to i64
  %268 = zext i32 %261 to i64
  %269 = add nuw nsw i64 %268, %267
  %270 = icmp ult i64 %262, %269
  br i1 %270, label %271, label %277

271:                                              ; preds = %265
  %272 = sub i64 %263, %269
  %273 = tail call i64 @llvm.umin.i64(i64 %272, i64 258)
  %274 = load ptr, ptr %7, align 8, !tbaa !34
  %275 = getelementptr inbounds nuw i8, ptr %274, i64 %269
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %275, i8 0, i64 %273, i1 false)
  %276 = add nuw nsw i64 %273, %269
  br label %289

277:                                              ; preds = %265
  %278 = add nuw nsw i64 %269, 258
  %279 = icmp ult i64 %262, %278
  br i1 %279, label %280, label %292

280:                                              ; preds = %277
  %281 = sub nuw nsw i64 %278, %262
  %282 = sub i64 %263, %262
  %283 = tail call i64 @llvm.umin.i64(i64 %281, i64 %282)
  %284 = load ptr, ptr %7, align 8, !tbaa !34
  %285 = getelementptr inbounds nuw i8, ptr %284, i64 %262
  %286 = and i64 %283, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %285, i8 0, i64 %286, i1 false)
  %287 = load i64, ptr %19, align 8, !tbaa !38
  %288 = add i64 %287, %283
  br label %289

289:                                              ; preds = %280, %271
  %290 = phi i64 [ %276, %271 ], [ %288, %280 ]
  store i64 %290, ptr %19, align 8, !tbaa !38
  %291 = load i32, ptr %3, align 4, !tbaa !73
  br label %292

292:                                              ; preds = %260, %277, %289
  %293 = phi i32 [ %261, %260 ], [ %261, %277 ], [ %291, %289 ]
  %294 = icmp ult i32 %293, 262
  %295 = and i1 %20, %294
  br i1 %295, label %884, label %296

296:                                              ; preds = %292
  %297 = icmp eq i32 %293, 0
  br i1 %297, label %747, label %298

298:                                              ; preds = %296
  %299 = icmp ugt i32 %293, 2
  %300 = load i32, ptr %21, align 8, !tbaa !76
  %301 = load i32, ptr %8, align 8, !tbaa !81
  br i1 %299, label %303, label %302

302:                                              ; preds = %298
  store i32 %300, ptr %22, align 8, !tbaa !75
  store i32 %301, ptr %23, align 4, !tbaa !151
  br label %502

303:                                              ; preds = %39, %298
  %304 = phi i32 [ %301, %298 ], [ %41, %39 ]
  %305 = phi i32 [ %300, %298 ], [ %40, %39 ]
  %306 = phi i32 [ %293, %298 ], [ %37, %39 ]
  %307 = load i32, ptr %15, align 8, !tbaa !78
  %308 = load i32, ptr %16, align 8, !tbaa !51
  %309 = shl i32 %307, %308
  %310 = load ptr, ptr %7, align 8, !tbaa !34
  %311 = load i32, ptr %6, align 4, !tbaa !71
  %312 = add i32 %311, 2
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds nuw i8, ptr %310, i64 %313
  %315 = load i8, ptr %314, align 1, !tbaa !8
  %316 = zext i8 %315 to i32
  %317 = xor i32 %309, %316
  %318 = load i32, ptr %17, align 4, !tbaa !50
  %319 = and i32 %317, %318
  store i32 %319, ptr %15, align 8, !tbaa !78
  %320 = load ptr, ptr %12, align 8, !tbaa !37
  %321 = zext i32 %319 to i64
  %322 = getelementptr inbounds nuw [2 x i8], ptr %320, i64 %321
  %323 = load i16, ptr %322, align 2, !tbaa !60
  %324 = load ptr, ptr %13, align 8, !tbaa !35
  %325 = load i32, ptr %18, align 8, !tbaa !33
  %326 = and i32 %325, %311
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds nuw [2 x i8], ptr %324, i64 %327
  store i16 %323, ptr %328, align 2, !tbaa !60
  %329 = zext i16 %323 to i32
  %330 = trunc i32 %311 to i16
  store i16 %330, ptr %322, align 2, !tbaa !60
  store i32 %305, ptr %22, align 8, !tbaa !75
  store i32 %304, ptr %23, align 4, !tbaa !151
  store i32 2, ptr %21, align 8, !tbaa !76
  %331 = icmp eq i16 %323, 0
  br i1 %331, label %506, label %332

332:                                              ; preds = %303
  %333 = load i32, ptr %24, align 8, !tbaa !64
  %334 = icmp ult i32 %305, %333
  br i1 %334, label %335, label %506

335:                                              ; preds = %332
  %336 = sub i32 %311, %329
  %337 = load i32, ptr %4, align 8, !tbaa !32
  %338 = add i32 %337, -262
  %339 = icmp ugt i32 %336, %338
  br i1 %339, label %506, label %340

340:                                              ; preds = %335
  %341 = load i32, ptr %25, align 4, !tbaa !70
  %342 = zext i32 %311 to i64
  %343 = getelementptr inbounds nuw i8, ptr %310, i64 %342
  %344 = load i32, ptr %26, align 8, !tbaa !68
  %345 = tail call i32 @llvm.usub.sat.i32(i32 %311, i32 %338)
  %346 = getelementptr inbounds nuw i8, ptr %343, i64 258
  %347 = sext i32 %305 to i64
  %348 = getelementptr i8, ptr %343, i64 %347
  %349 = getelementptr i8, ptr %348, i64 -1
  %350 = load i8, ptr %349, align 1, !tbaa !8
  %351 = load i8, ptr %348, align 1, !tbaa !8
  %352 = load i32, ptr %27, align 4, !tbaa !66
  %353 = icmp ult i32 %305, %352
  %354 = lshr i32 %341, 2
  %355 = select i1 %353, i32 %341, i32 %354
  %356 = tail call i32 @llvm.umin.i32(i32 %344, i32 %306)
  %357 = getelementptr inbounds nuw i8, ptr %343, i64 1
  %358 = ptrtoint ptr %346 to i64
  br label %359

359:                                              ; preds = %475, %340
  %360 = phi i32 [ %304, %340 ], [ %476, %475 ]
  %361 = phi i32 [ %305, %340 ], [ %477, %475 ]
  %362 = phi i32 [ %355, %340 ], [ %486, %475 ]
  %363 = phi i32 [ %329, %340 ], [ %484, %475 ]
  %364 = phi i8 [ %350, %340 ], [ %478, %475 ]
  %365 = phi i8 [ %351, %340 ], [ %479, %475 ]
  %366 = zext nneg i32 %363 to i64
  %367 = getelementptr inbounds nuw i8, ptr %310, i64 %366
  %368 = sext i32 %361 to i64
  %369 = getelementptr inbounds i8, ptr %367, i64 %368
  %370 = load i8, ptr %369, align 1, !tbaa !8
  %371 = icmp eq i8 %370, %365
  br i1 %371, label %372, label %475

372:                                              ; preds = %359
  %373 = getelementptr i8, ptr %369, i64 -1
  %374 = load i8, ptr %373, align 1, !tbaa !8
  %375 = icmp eq i8 %374, %364
  br i1 %375, label %376, label %475

376:                                              ; preds = %372
  %377 = load i8, ptr %367, align 1, !tbaa !8
  %378 = load i8, ptr %343, align 1, !tbaa !8
  %379 = icmp eq i8 %377, %378
  br i1 %379, label %380, label %475

380:                                              ; preds = %376
  %381 = getelementptr inbounds nuw i8, ptr %367, i64 1
  %382 = load i8, ptr %381, align 1, !tbaa !8
  %383 = load i8, ptr %357, align 1, !tbaa !8
  %384 = icmp eq i8 %382, %383
  br i1 %384, label %385, label %475

385:                                              ; preds = %380
  %386 = getelementptr inbounds nuw i8, ptr %367, i64 2
  br label %387

387:                                              ; preds = %432, %385
  %388 = phi ptr [ %386, %385 ], [ %436, %432 ]
  %389 = phi i64 [ 2, %385 ], [ %433, %432 ]
  %390 = getelementptr inbounds nuw i8, ptr %343, i64 %389
  %391 = getelementptr inbounds nuw i8, ptr %390, i64 1
  %392 = load i8, ptr %391, align 1, !tbaa !8
  %393 = getelementptr inbounds nuw i8, ptr %388, i64 1
  %394 = load i8, ptr %393, align 1, !tbaa !8
  %395 = icmp eq i8 %392, %394
  br i1 %395, label %396, label %441

396:                                              ; preds = %387
  %397 = getelementptr inbounds nuw i8, ptr %390, i64 2
  %398 = load i8, ptr %397, align 1, !tbaa !8
  %399 = getelementptr inbounds nuw i8, ptr %388, i64 2
  %400 = load i8, ptr %399, align 1, !tbaa !8
  %401 = icmp eq i8 %398, %400
  br i1 %401, label %402, label %443

402:                                              ; preds = %396
  %403 = getelementptr inbounds nuw i8, ptr %390, i64 3
  %404 = load i8, ptr %403, align 1, !tbaa !8
  %405 = getelementptr inbounds nuw i8, ptr %388, i64 3
  %406 = load i8, ptr %405, align 1, !tbaa !8
  %407 = icmp eq i8 %404, %406
  br i1 %407, label %408, label %445

408:                                              ; preds = %402
  %409 = getelementptr inbounds nuw i8, ptr %390, i64 4
  %410 = load i8, ptr %409, align 1, !tbaa !8
  %411 = getelementptr inbounds nuw i8, ptr %388, i64 4
  %412 = load i8, ptr %411, align 1, !tbaa !8
  %413 = icmp eq i8 %410, %412
  br i1 %413, label %414, label %447

414:                                              ; preds = %408
  %415 = getelementptr inbounds nuw i8, ptr %390, i64 5
  %416 = load i8, ptr %415, align 1, !tbaa !8
  %417 = getelementptr inbounds nuw i8, ptr %388, i64 5
  %418 = load i8, ptr %417, align 1, !tbaa !8
  %419 = icmp eq i8 %416, %418
  br i1 %419, label %420, label %449

420:                                              ; preds = %414
  %421 = getelementptr inbounds nuw i8, ptr %390, i64 6
  %422 = load i8, ptr %421, align 1, !tbaa !8
  %423 = getelementptr inbounds nuw i8, ptr %388, i64 6
  %424 = load i8, ptr %423, align 1, !tbaa !8
  %425 = icmp eq i8 %422, %424
  br i1 %425, label %426, label %451

426:                                              ; preds = %420
  %427 = getelementptr inbounds nuw i8, ptr %390, i64 7
  %428 = load i8, ptr %427, align 1, !tbaa !8
  %429 = getelementptr inbounds nuw i8, ptr %388, i64 7
  %430 = load i8, ptr %429, align 1, !tbaa !8
  %431 = icmp eq i8 %428, %430
  br i1 %431, label %432, label %453

432:                                              ; preds = %426
  %433 = add nuw nsw i64 %389, 8
  %434 = getelementptr inbounds nuw i8, ptr %343, i64 %433
  %435 = load i8, ptr %434, align 1, !tbaa !8
  %436 = getelementptr inbounds nuw i8, ptr %388, i64 8
  %437 = load i8, ptr %436, align 1, !tbaa !8
  %438 = icmp eq i8 %435, %437
  %439 = icmp samesign ult i64 %389, 250
  %440 = select i1 %438, i1 %439, i1 false
  br i1 %440, label %387, label %455, !llvm.loop !144

441:                                              ; preds = %387
  %442 = getelementptr inbounds nuw i8, ptr %390, i64 1
  br label %457

443:                                              ; preds = %396
  %444 = getelementptr inbounds nuw i8, ptr %390, i64 2
  br label %457

445:                                              ; preds = %402
  %446 = getelementptr inbounds nuw i8, ptr %390, i64 3
  br label %457

447:                                              ; preds = %408
  %448 = getelementptr inbounds nuw i8, ptr %390, i64 4
  br label %457

449:                                              ; preds = %414
  %450 = getelementptr inbounds nuw i8, ptr %390, i64 5
  br label %457

451:                                              ; preds = %420
  %452 = getelementptr inbounds nuw i8, ptr %390, i64 6
  br label %457

453:                                              ; preds = %426
  %454 = getelementptr inbounds nuw i8, ptr %390, i64 7
  br label %457

455:                                              ; preds = %432
  %456 = getelementptr inbounds nuw i8, ptr %343, i64 %433
  br label %457

457:                                              ; preds = %455, %453, %451, %449, %447, %445, %443, %441
  %458 = phi ptr [ %444, %443 ], [ %446, %445 ], [ %442, %441 ], [ %454, %453 ], [ %452, %451 ], [ %450, %449 ], [ %448, %447 ], [ %456, %455 ]
  %459 = ptrtoint ptr %458 to i64
  %460 = sub i64 %459, %358
  %461 = trunc i64 %460 to i32
  %462 = add i32 %461, 258
  %463 = icmp sgt i32 %462, %361
  br i1 %463, label %464, label %475

464:                                              ; preds = %457
  store i32 %363, ptr %8, align 8, !tbaa !81
  %465 = icmp slt i32 %462, %356
  br i1 %465, label %466, label %489

466:                                              ; preds = %464
  %467 = shl i64 %460, 32
  %468 = add i64 %467, 1103806595072
  %469 = ashr exact i64 %468, 32
  %470 = getelementptr inbounds i8, ptr %343, i64 %469
  %471 = load i8, ptr %470, align 1, !tbaa !8
  %472 = sext i32 %462 to i64
  %473 = getelementptr inbounds i8, ptr %343, i64 %472
  %474 = load i8, ptr %473, align 1, !tbaa !8
  br label %475

475:                                              ; preds = %466, %457, %380, %376, %372, %359
  %476 = phi i32 [ %360, %359 ], [ %360, %372 ], [ %360, %376 ], [ %360, %380 ], [ %363, %466 ], [ %360, %457 ]
  %477 = phi i32 [ %361, %359 ], [ %361, %372 ], [ %361, %376 ], [ %361, %380 ], [ %462, %466 ], [ %361, %457 ]
  %478 = phi i8 [ %364, %359 ], [ %364, %372 ], [ %364, %376 ], [ %364, %380 ], [ %471, %466 ], [ %364, %457 ]
  %479 = phi i8 [ %365, %359 ], [ %365, %372 ], [ %365, %376 ], [ %365, %380 ], [ %474, %466 ], [ %365, %457 ]
  %480 = and i32 %363, %325
  %481 = zext nneg i32 %480 to i64
  %482 = getelementptr inbounds nuw [2 x i8], ptr %324, i64 %481
  %483 = load i16, ptr %482, align 2, !tbaa !60
  %484 = zext i16 %483 to i32
  %485 = icmp uge i32 %345, %484
  %486 = add i32 %362, -1
  %487 = icmp eq i32 %486, 0
  %488 = select i1 %485, i1 true, i1 %487
  br i1 %488, label %489, label %359, !llvm.loop !145

489:                                              ; preds = %464, %475
  %490 = phi i32 [ %363, %464 ], [ %476, %475 ]
  %491 = phi i32 [ %462, %464 ], [ %477, %475 ]
  %492 = tail call i32 @llvm.umin.i32(i32 %491, i32 %306)
  store i32 %492, ptr %21, align 8, !tbaa !76
  %493 = icmp ult i32 %492, 6
  br i1 %493, label %494, label %506

494:                                              ; preds = %489
  %495 = load i32, ptr %28, align 8, !tbaa !47
  %496 = icmp eq i32 %495, 1
  br i1 %496, label %502, label %497

497:                                              ; preds = %494
  %498 = icmp eq i32 %492, 3
  br i1 %498, label %499, label %506

499:                                              ; preds = %497
  %500 = sub i32 %311, %490
  %501 = icmp ugt i32 %500, 4096
  br i1 %501, label %502, label %506

502:                                              ; preds = %494, %499, %302
  %503 = phi i32 [ %301, %302 ], [ %304, %499 ], [ %304, %494 ]
  %504 = phi i32 [ %300, %302 ], [ %305, %499 ], [ %305, %494 ]
  %505 = phi i32 [ %293, %302 ], [ %306, %499 ], [ %306, %494 ]
  store i32 2, ptr %21, align 8, !tbaa !76
  br label %506

506:                                              ; preds = %502, %489, %497, %499, %335, %332, %303
  %507 = phi i32 [ 2, %332 ], [ %492, %489 ], [ %492, %497 ], [ 3, %499 ], [ 2, %303 ], [ 2, %335 ], [ 2, %502 ]
  %508 = phi i32 [ %304, %332 ], [ %304, %489 ], [ %304, %497 ], [ %304, %499 ], [ %304, %303 ], [ %304, %335 ], [ %503, %502 ]
  %509 = phi i32 [ %305, %332 ], [ %305, %489 ], [ %305, %497 ], [ %305, %499 ], [ %305, %303 ], [ %305, %335 ], [ %504, %502 ]
  %510 = phi i32 [ %306, %332 ], [ %306, %489 ], [ %306, %497 ], [ %306, %499 ], [ %306, %303 ], [ %306, %335 ], [ %505, %502 ]
  %511 = icmp ult i32 %509, 3
  %512 = icmp ugt i32 %507, %509
  %513 = or i1 %511, %512
  br i1 %513, label %657, label %514

514:                                              ; preds = %506
  %515 = load i32, ptr %6, align 4, !tbaa !71
  %516 = add i32 %510, -3
  %517 = add i32 %516, %515
  %518 = trunc i32 %509 to i8
  %519 = add i8 %518, -3
  %520 = xor i32 %508, -1
  %521 = add i32 %515, %520
  %522 = trunc i32 %521 to i16
  %523 = trunc i32 %521 to i8
  %524 = load ptr, ptr %29, align 8, !tbaa !44
  %525 = load i32, ptr %30, align 4, !tbaa !131
  %526 = add i32 %525, 1
  store i32 %526, ptr %30, align 4, !tbaa !131
  %527 = zext i32 %525 to i64
  %528 = getelementptr inbounds nuw i8, ptr %524, i64 %527
  store i8 %523, ptr %528, align 1, !tbaa !8
  %529 = lshr i32 %521, 8
  %530 = trunc i32 %529 to i8
  %531 = load ptr, ptr %29, align 8, !tbaa !44
  %532 = load i32, ptr %30, align 4, !tbaa !131
  %533 = add i32 %532, 1
  store i32 %533, ptr %30, align 4, !tbaa !131
  %534 = zext i32 %532 to i64
  %535 = getelementptr inbounds nuw i8, ptr %531, i64 %534
  store i8 %530, ptr %535, align 1, !tbaa !8
  %536 = load ptr, ptr %29, align 8, !tbaa !44
  %537 = load i32, ptr %30, align 4, !tbaa !131
  %538 = add i32 %537, 1
  store i32 %538, ptr %30, align 4, !tbaa !131
  %539 = zext i32 %537 to i64
  %540 = getelementptr inbounds nuw i8, ptr %536, i64 %539
  store i8 %519, ptr %540, align 1, !tbaa !8
  %541 = add i16 %522, -1
  %542 = zext i8 %519 to i64
  %543 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %542
  %544 = load i8, ptr %543, align 1, !tbaa !8
  %545 = zext i8 %544 to i64
  %546 = getelementptr [4 x i8], ptr %31, i64 %545
  %547 = load i16, ptr %546, align 4, !tbaa !8
  %548 = add i16 %547, 1
  store i16 %548, ptr %546, align 4, !tbaa !8
  %549 = icmp ult i16 %541, 256
  br i1 %549, label %550, label %553

550:                                              ; preds = %514
  %551 = zext nneg i16 %541 to i64
  %552 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %551
  br label %558

553:                                              ; preds = %514
  %554 = lshr i16 %541, 7
  %555 = zext nneg i16 %554 to i64
  %556 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %555
  %557 = getelementptr inbounds nuw i8, ptr %556, i64 256
  br label %558

558:                                              ; preds = %553, %550
  %559 = phi ptr [ %552, %550 ], [ %557, %553 ]
  %560 = load i8, ptr %559, align 1, !tbaa !8
  %561 = zext i8 %560 to i64
  %562 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %561
  %563 = load i16, ptr %562, align 4, !tbaa !8
  %564 = add i16 %563, 1
  store i16 %564, ptr %562, align 4, !tbaa !8
  %565 = load i32, ptr %30, align 4, !tbaa !131
  %566 = load i32, ptr %33, align 8, !tbaa !45
  %567 = load i32, ptr %22, align 8, !tbaa !75
  %568 = load i32, ptr %3, align 4, !tbaa !73
  %569 = sub i32 %568, %567
  %570 = add i32 %569, 1
  store i32 %570, ptr %3, align 4, !tbaa !73
  %571 = add i32 %567, -2
  store i32 %571, ptr %22, align 8, !tbaa !75
  %572 = load i32, ptr %6, align 4, !tbaa !71
  br label %573

573:                                              ; preds = %601, %558
  %574 = phi i32 [ %602, %601 ], [ %571, %558 ]
  %575 = phi i32 [ %576, %601 ], [ %572, %558 ]
  %576 = add i32 %575, 1
  store i32 %576, ptr %6, align 4, !tbaa !71
  %577 = icmp ugt i32 %576, %517
  br i1 %577, label %601, label %578

578:                                              ; preds = %573
  %579 = load i32, ptr %15, align 8, !tbaa !78
  %580 = load i32, ptr %16, align 8, !tbaa !51
  %581 = shl i32 %579, %580
  %582 = load ptr, ptr %7, align 8, !tbaa !34
  %583 = add i32 %575, 3
  %584 = zext i32 %583 to i64
  %585 = getelementptr inbounds nuw i8, ptr %582, i64 %584
  %586 = load i8, ptr %585, align 1, !tbaa !8
  %587 = zext i8 %586 to i32
  %588 = xor i32 %581, %587
  %589 = load i32, ptr %17, align 4, !tbaa !50
  %590 = and i32 %588, %589
  store i32 %590, ptr %15, align 8, !tbaa !78
  %591 = load ptr, ptr %12, align 8, !tbaa !37
  %592 = zext i32 %590 to i64
  %593 = getelementptr inbounds nuw [2 x i8], ptr %591, i64 %592
  %594 = load i16, ptr %593, align 2, !tbaa !60
  %595 = load ptr, ptr %13, align 8, !tbaa !35
  %596 = load i32, ptr %18, align 8, !tbaa !33
  %597 = and i32 %596, %576
  %598 = zext i32 %597 to i64
  %599 = getelementptr inbounds nuw [2 x i8], ptr %595, i64 %598
  store i16 %594, ptr %599, align 2, !tbaa !60
  %600 = trunc i32 %576 to i16
  store i16 %600, ptr %593, align 2, !tbaa !60
  br label %601

601:                                              ; preds = %573, %578
  %602 = add i32 %574, -1
  store i32 %602, ptr %22, align 8, !tbaa !75
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %604, label %573, !llvm.loop !152

604:                                              ; preds = %601
  %605 = icmp eq i32 %565, %566
  store i32 0, ptr %34, align 8, !tbaa !77
  store i32 2, ptr %21, align 8, !tbaa !76
  %606 = add i32 %575, 2
  store i32 %606, ptr %6, align 4, !tbaa !71
  br i1 %605, label %608, label %607

607:                                              ; preds = %604, %652, %743, %734
  br label %36

608:                                              ; preds = %604
  %609 = load i64, ptr %9, align 8, !tbaa !72
  %610 = icmp sgt i64 %609, -1
  br i1 %610, label %611, label %615

611:                                              ; preds = %608
  %612 = load ptr, ptr %7, align 8, !tbaa !34
  %613 = and i64 %609, 4294967295
  %614 = getelementptr inbounds nuw i8, ptr %612, i64 %613
  br label %615

615:                                              ; preds = %608, %611
  %616 = phi ptr [ %614, %611 ], [ null, %608 ]
  %617 = zext i32 %606 to i64
  %618 = sub nsw i64 %617, %609
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %616, i64 noundef %618, i32 noundef 0) #11
  %619 = load i32, ptr %6, align 4, !tbaa !71
  %620 = zext i32 %619 to i64
  store i64 %620, ptr %9, align 8, !tbaa !72
  %621 = load ptr, ptr %0, align 8, !tbaa !20
  %622 = getelementptr inbounds nuw i8, ptr %621, i64 56
  %623 = load ptr, ptr %622, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %623) #11
  %624 = getelementptr inbounds nuw i8, ptr %623, i64 40
  %625 = load i64, ptr %624, align 8, !tbaa !55
  %626 = getelementptr inbounds nuw i8, ptr %621, i64 32
  %627 = load i32, ptr %626, align 8, !tbaa !104
  %628 = zext i32 %627 to i64
  %629 = tail call i64 @llvm.umin.i64(i64 %625, i64 %628)
  %630 = icmp eq i64 %629, 0
  br i1 %630, label %652, label %631

631:                                              ; preds = %615
  %632 = trunc nuw i64 %629 to i32
  %633 = getelementptr inbounds nuw i8, ptr %621, i64 24
  %634 = load ptr, ptr %633, align 8, !tbaa !103
  %635 = getelementptr inbounds nuw i8, ptr %623, i64 32
  %636 = load ptr, ptr %635, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %634, ptr align 1 %636, i64 %629, i1 false)
  %637 = load ptr, ptr %633, align 8, !tbaa !103
  %638 = getelementptr inbounds nuw i8, ptr %637, i64 %629
  store ptr %638, ptr %633, align 8, !tbaa !103
  %639 = load ptr, ptr %635, align 8, !tbaa !56
  %640 = getelementptr inbounds nuw i8, ptr %639, i64 %629
  store ptr %640, ptr %635, align 8, !tbaa !56
  %641 = getelementptr inbounds nuw i8, ptr %621, i64 40
  %642 = load i64, ptr %641, align 8, !tbaa !105
  %643 = add i64 %642, %629
  store i64 %643, ptr %641, align 8, !tbaa !105
  %644 = load i32, ptr %626, align 8, !tbaa !104
  %645 = sub i32 %644, %632
  store i32 %645, ptr %626, align 8, !tbaa !104
  %646 = load i64, ptr %624, align 8, !tbaa !55
  %647 = sub i64 %646, %629
  store i64 %647, ptr %624, align 8, !tbaa !55
  %648 = icmp eq i64 %646, %629
  br i1 %648, label %649, label %652

649:                                              ; preds = %631
  %650 = getelementptr inbounds nuw i8, ptr %623, i64 16
  %651 = load ptr, ptr %650, align 8, !tbaa !40
  store ptr %651, ptr %635, align 8, !tbaa !56
  br label %652

652:                                              ; preds = %615, %631, %649
  %653 = load ptr, ptr %0, align 8, !tbaa !20
  %654 = getelementptr inbounds nuw i8, ptr %653, i64 32
  %655 = load i32, ptr %654, align 8, !tbaa !104
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %884, label %607

657:                                              ; preds = %506
  %658 = load i32, ptr %34, align 8, !tbaa !77
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %743, label %660

660:                                              ; preds = %657
  %661 = load ptr, ptr %7, align 8, !tbaa !34
  %662 = load i32, ptr %6, align 4, !tbaa !71
  %663 = add i32 %662, -1
  %664 = zext i32 %663 to i64
  %665 = getelementptr inbounds nuw i8, ptr %661, i64 %664
  %666 = load i8, ptr %665, align 1, !tbaa !8
  %667 = load ptr, ptr %29, align 8, !tbaa !44
  %668 = load i32, ptr %30, align 4, !tbaa !131
  %669 = add i32 %668, 1
  store i32 %669, ptr %30, align 4, !tbaa !131
  %670 = zext i32 %668 to i64
  %671 = getelementptr inbounds nuw i8, ptr %667, i64 %670
  store i8 0, ptr %671, align 1, !tbaa !8
  %672 = load ptr, ptr %29, align 8, !tbaa !44
  %673 = load i32, ptr %30, align 4, !tbaa !131
  %674 = add i32 %673, 1
  store i32 %674, ptr %30, align 4, !tbaa !131
  %675 = zext i32 %673 to i64
  %676 = getelementptr inbounds nuw i8, ptr %672, i64 %675
  store i8 0, ptr %676, align 1, !tbaa !8
  %677 = load ptr, ptr %29, align 8, !tbaa !44
  %678 = load i32, ptr %30, align 4, !tbaa !131
  %679 = add i32 %678, 1
  store i32 %679, ptr %30, align 4, !tbaa !131
  %680 = zext i32 %678 to i64
  %681 = getelementptr inbounds nuw i8, ptr %677, i64 %680
  store i8 %666, ptr %681, align 1, !tbaa !8
  %682 = zext i8 %666 to i64
  %683 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %682
  %684 = load i16, ptr %683, align 4, !tbaa !8
  %685 = add i16 %684, 1
  store i16 %685, ptr %683, align 4, !tbaa !8
  %686 = load i32, ptr %30, align 4, !tbaa !131
  %687 = load i32, ptr %33, align 8, !tbaa !45
  %688 = icmp eq i32 %686, %687
  br i1 %688, label %689, label %734

689:                                              ; preds = %660
  %690 = load i64, ptr %9, align 8, !tbaa !72
  %691 = icmp sgt i64 %690, -1
  br i1 %691, label %692, label %696

692:                                              ; preds = %689
  %693 = load ptr, ptr %7, align 8, !tbaa !34
  %694 = and i64 %690, 4294967295
  %695 = getelementptr inbounds nuw i8, ptr %693, i64 %694
  br label %696

696:                                              ; preds = %689, %692
  %697 = phi ptr [ %695, %692 ], [ null, %689 ]
  %698 = load i32, ptr %6, align 4, !tbaa !71
  %699 = zext i32 %698 to i64
  %700 = sub nsw i64 %699, %690
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %697, i64 noundef %700, i32 noundef 0) #11
  %701 = load i32, ptr %6, align 4, !tbaa !71
  %702 = zext i32 %701 to i64
  store i64 %702, ptr %9, align 8, !tbaa !72
  %703 = load ptr, ptr %0, align 8, !tbaa !20
  %704 = getelementptr inbounds nuw i8, ptr %703, i64 56
  %705 = load ptr, ptr %704, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %705) #11
  %706 = getelementptr inbounds nuw i8, ptr %705, i64 40
  %707 = load i64, ptr %706, align 8, !tbaa !55
  %708 = getelementptr inbounds nuw i8, ptr %703, i64 32
  %709 = load i32, ptr %708, align 8, !tbaa !104
  %710 = zext i32 %709 to i64
  %711 = tail call i64 @llvm.umin.i64(i64 %707, i64 %710)
  %712 = icmp eq i64 %711, 0
  br i1 %712, label %734, label %713

713:                                              ; preds = %696
  %714 = trunc nuw i64 %711 to i32
  %715 = getelementptr inbounds nuw i8, ptr %703, i64 24
  %716 = load ptr, ptr %715, align 8, !tbaa !103
  %717 = getelementptr inbounds nuw i8, ptr %705, i64 32
  %718 = load ptr, ptr %717, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %716, ptr align 1 %718, i64 %711, i1 false)
  %719 = load ptr, ptr %715, align 8, !tbaa !103
  %720 = getelementptr inbounds nuw i8, ptr %719, i64 %711
  store ptr %720, ptr %715, align 8, !tbaa !103
  %721 = load ptr, ptr %717, align 8, !tbaa !56
  %722 = getelementptr inbounds nuw i8, ptr %721, i64 %711
  store ptr %722, ptr %717, align 8, !tbaa !56
  %723 = getelementptr inbounds nuw i8, ptr %703, i64 40
  %724 = load i64, ptr %723, align 8, !tbaa !105
  %725 = add i64 %724, %711
  store i64 %725, ptr %723, align 8, !tbaa !105
  %726 = load i32, ptr %708, align 8, !tbaa !104
  %727 = sub i32 %726, %714
  store i32 %727, ptr %708, align 8, !tbaa !104
  %728 = load i64, ptr %706, align 8, !tbaa !55
  %729 = sub i64 %728, %711
  store i64 %729, ptr %706, align 8, !tbaa !55
  %730 = icmp eq i64 %728, %711
  br i1 %730, label %731, label %734

731:                                              ; preds = %713
  %732 = getelementptr inbounds nuw i8, ptr %705, i64 16
  %733 = load ptr, ptr %732, align 8, !tbaa !40
  store ptr %733, ptr %717, align 8, !tbaa !56
  br label %734

734:                                              ; preds = %731, %713, %696, %660
  %735 = load i32, ptr %6, align 4, !tbaa !71
  %736 = add i32 %735, 1
  store i32 %736, ptr %6, align 4, !tbaa !71
  %737 = load i32, ptr %3, align 4, !tbaa !73
  %738 = add i32 %737, -1
  store i32 %738, ptr %3, align 4, !tbaa !73
  %739 = load ptr, ptr %0, align 8, !tbaa !20
  %740 = getelementptr inbounds nuw i8, ptr %739, i64 32
  %741 = load i32, ptr %740, align 8, !tbaa !104
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %884, label %607

743:                                              ; preds = %657
  store i32 1, ptr %34, align 8, !tbaa !77
  %744 = load i32, ptr %6, align 4, !tbaa !71
  %745 = add i32 %744, 1
  store i32 %745, ptr %6, align 4, !tbaa !71
  %746 = add i32 %510, -1
  store i32 %746, ptr %3, align 4, !tbaa !73
  br label %607

747:                                              ; preds = %296
  %748 = load i32, ptr %34, align 8, !tbaa !77
  %749 = icmp eq i32 %748, 0
  %750 = load i32, ptr %6, align 4, !tbaa !71
  br i1 %749, label %777, label %751

751:                                              ; preds = %747
  %752 = load ptr, ptr %7, align 8, !tbaa !34
  %753 = add i32 %750, -1
  %754 = zext i32 %753 to i64
  %755 = getelementptr inbounds nuw i8, ptr %752, i64 %754
  %756 = load i8, ptr %755, align 1, !tbaa !8
  %757 = load ptr, ptr %29, align 8, !tbaa !44
  %758 = load i32, ptr %30, align 4, !tbaa !131
  %759 = add i32 %758, 1
  store i32 %759, ptr %30, align 4, !tbaa !131
  %760 = zext i32 %758 to i64
  %761 = getelementptr inbounds nuw i8, ptr %757, i64 %760
  store i8 0, ptr %761, align 1, !tbaa !8
  %762 = load ptr, ptr %29, align 8, !tbaa !44
  %763 = load i32, ptr %30, align 4, !tbaa !131
  %764 = add i32 %763, 1
  store i32 %764, ptr %30, align 4, !tbaa !131
  %765 = zext i32 %763 to i64
  %766 = getelementptr inbounds nuw i8, ptr %762, i64 %765
  store i8 0, ptr %766, align 1, !tbaa !8
  %767 = load ptr, ptr %29, align 8, !tbaa !44
  %768 = load i32, ptr %30, align 4, !tbaa !131
  %769 = add i32 %768, 1
  store i32 %769, ptr %30, align 4, !tbaa !131
  %770 = zext i32 %768 to i64
  %771 = getelementptr inbounds nuw i8, ptr %767, i64 %770
  store i8 %756, ptr %771, align 1, !tbaa !8
  %772 = zext i8 %756 to i64
  %773 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %772
  %774 = load i16, ptr %773, align 4, !tbaa !8
  %775 = add i16 %774, 1
  store i16 %775, ptr %773, align 4, !tbaa !8
  store i32 0, ptr %34, align 8, !tbaa !77
  %776 = load i32, ptr %6, align 4, !tbaa !71
  br label %777

777:                                              ; preds = %751, %747
  %778 = phi i32 [ %776, %751 ], [ %750, %747 ]
  %779 = tail call i32 @llvm.umin.i32(i32 %778, i32 2)
  store i32 %779, ptr %10, align 4, !tbaa !74
  %780 = icmp eq i32 %1, 4
  br i1 %780, label %781, label %831

781:                                              ; preds = %777
  %782 = load i64, ptr %9, align 8, !tbaa !72
  %783 = icmp sgt i64 %782, -1
  br i1 %783, label %784, label %788

784:                                              ; preds = %781
  %785 = load ptr, ptr %7, align 8, !tbaa !34
  %786 = and i64 %782, 4294967295
  %787 = getelementptr inbounds nuw i8, ptr %785, i64 %786
  br label %788

788:                                              ; preds = %781, %784
  %789 = phi ptr [ %787, %784 ], [ null, %781 ]
  %790 = zext i32 %778 to i64
  %791 = sub nsw i64 %790, %782
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %789, i64 noundef %791, i32 noundef 1) #11
  %792 = load i32, ptr %6, align 4, !tbaa !71
  %793 = zext i32 %792 to i64
  store i64 %793, ptr %9, align 8, !tbaa !72
  %794 = load ptr, ptr %0, align 8, !tbaa !20
  %795 = getelementptr inbounds nuw i8, ptr %794, i64 56
  %796 = load ptr, ptr %795, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %796) #11
  %797 = getelementptr inbounds nuw i8, ptr %796, i64 40
  %798 = load i64, ptr %797, align 8, !tbaa !55
  %799 = getelementptr inbounds nuw i8, ptr %794, i64 32
  %800 = load i32, ptr %799, align 8, !tbaa !104
  %801 = zext i32 %800 to i64
  %802 = tail call i64 @llvm.umin.i64(i64 %798, i64 %801)
  %803 = icmp eq i64 %802, 0
  br i1 %803, label %825, label %804

804:                                              ; preds = %788
  %805 = trunc nuw i64 %802 to i32
  %806 = getelementptr inbounds nuw i8, ptr %794, i64 24
  %807 = load ptr, ptr %806, align 8, !tbaa !103
  %808 = getelementptr inbounds nuw i8, ptr %796, i64 32
  %809 = load ptr, ptr %808, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %807, ptr align 1 %809, i64 %802, i1 false)
  %810 = load ptr, ptr %806, align 8, !tbaa !103
  %811 = getelementptr inbounds nuw i8, ptr %810, i64 %802
  store ptr %811, ptr %806, align 8, !tbaa !103
  %812 = load ptr, ptr %808, align 8, !tbaa !56
  %813 = getelementptr inbounds nuw i8, ptr %812, i64 %802
  store ptr %813, ptr %808, align 8, !tbaa !56
  %814 = getelementptr inbounds nuw i8, ptr %794, i64 40
  %815 = load i64, ptr %814, align 8, !tbaa !105
  %816 = add i64 %815, %802
  store i64 %816, ptr %814, align 8, !tbaa !105
  %817 = load i32, ptr %799, align 8, !tbaa !104
  %818 = sub i32 %817, %805
  store i32 %818, ptr %799, align 8, !tbaa !104
  %819 = load i64, ptr %797, align 8, !tbaa !55
  %820 = sub i64 %819, %802
  store i64 %820, ptr %797, align 8, !tbaa !55
  %821 = icmp eq i64 %819, %802
  br i1 %821, label %822, label %825

822:                                              ; preds = %804
  %823 = getelementptr inbounds nuw i8, ptr %796, i64 16
  %824 = load ptr, ptr %823, align 8, !tbaa !40
  store ptr %824, ptr %808, align 8, !tbaa !56
  br label %825

825:                                              ; preds = %788, %804, %822
  %826 = load ptr, ptr %0, align 8, !tbaa !20
  %827 = getelementptr inbounds nuw i8, ptr %826, i64 32
  %828 = load i32, ptr %827, align 8, !tbaa !104
  %829 = icmp eq i32 %828, 0
  %830 = select i1 %829, i32 2, i32 3
  br label %884

831:                                              ; preds = %777
  %832 = load i32, ptr %30, align 4, !tbaa !131
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %883, label %834

834:                                              ; preds = %831
  %835 = load i64, ptr %9, align 8, !tbaa !72
  %836 = icmp sgt i64 %835, -1
  br i1 %836, label %837, label %841

837:                                              ; preds = %834
  %838 = load ptr, ptr %7, align 8, !tbaa !34
  %839 = and i64 %835, 4294967295
  %840 = getelementptr inbounds nuw i8, ptr %838, i64 %839
  br label %841

841:                                              ; preds = %834, %837
  %842 = phi ptr [ %840, %837 ], [ null, %834 ]
  %843 = zext i32 %778 to i64
  %844 = sub nsw i64 %843, %835
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %842, i64 noundef %844, i32 noundef 0) #11
  %845 = load i32, ptr %6, align 4, !tbaa !71
  %846 = zext i32 %845 to i64
  store i64 %846, ptr %9, align 8, !tbaa !72
  %847 = load ptr, ptr %0, align 8, !tbaa !20
  %848 = getelementptr inbounds nuw i8, ptr %847, i64 56
  %849 = load ptr, ptr %848, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %849) #11
  %850 = getelementptr inbounds nuw i8, ptr %849, i64 40
  %851 = load i64, ptr %850, align 8, !tbaa !55
  %852 = getelementptr inbounds nuw i8, ptr %847, i64 32
  %853 = load i32, ptr %852, align 8, !tbaa !104
  %854 = zext i32 %853 to i64
  %855 = tail call i64 @llvm.umin.i64(i64 %851, i64 %854)
  %856 = icmp eq i64 %855, 0
  br i1 %856, label %878, label %857

857:                                              ; preds = %841
  %858 = trunc nuw i64 %855 to i32
  %859 = getelementptr inbounds nuw i8, ptr %847, i64 24
  %860 = load ptr, ptr %859, align 8, !tbaa !103
  %861 = getelementptr inbounds nuw i8, ptr %849, i64 32
  %862 = load ptr, ptr %861, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %860, ptr align 1 %862, i64 %855, i1 false)
  %863 = load ptr, ptr %859, align 8, !tbaa !103
  %864 = getelementptr inbounds nuw i8, ptr %863, i64 %855
  store ptr %864, ptr %859, align 8, !tbaa !103
  %865 = load ptr, ptr %861, align 8, !tbaa !56
  %866 = getelementptr inbounds nuw i8, ptr %865, i64 %855
  store ptr %866, ptr %861, align 8, !tbaa !56
  %867 = getelementptr inbounds nuw i8, ptr %847, i64 40
  %868 = load i64, ptr %867, align 8, !tbaa !105
  %869 = add i64 %868, %855
  store i64 %869, ptr %867, align 8, !tbaa !105
  %870 = load i32, ptr %852, align 8, !tbaa !104
  %871 = sub i32 %870, %858
  store i32 %871, ptr %852, align 8, !tbaa !104
  %872 = load i64, ptr %850, align 8, !tbaa !55
  %873 = sub i64 %872, %855
  store i64 %873, ptr %850, align 8, !tbaa !55
  %874 = icmp eq i64 %872, %855
  br i1 %874, label %875, label %878

875:                                              ; preds = %857
  %876 = getelementptr inbounds nuw i8, ptr %849, i64 16
  %877 = load ptr, ptr %876, align 8, !tbaa !40
  store ptr %877, ptr %861, align 8, !tbaa !56
  br label %878

878:                                              ; preds = %841, %857, %875
  %879 = load ptr, ptr %0, align 8, !tbaa !20
  %880 = getelementptr inbounds nuw i8, ptr %879, i64 32
  %881 = load i32, ptr %880, align 8, !tbaa !104
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %884, label %883

883:                                              ; preds = %878, %831
  br label %884

884:                                              ; preds = %734, %652, %292, %878, %825, %883
  %885 = phi i32 [ 0, %878 ], [ %830, %825 ], [ 1, %883 ], [ 0, %292 ], [ 0, %652 ], [ 0, %734 ]
  ret i32 %885
}

declare void @_tr_flush_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.usub.sat.v8i32(<8 x i32>, <8 x i32>) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { nounwind }

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
!31 = !{!21, !5, i64 84}
!32 = !{!21, !5, i64 80}
!33 = !{!21, !5, i64 88}
!34 = !{!21, !11, i64 96}
!35 = !{!21, !24, i64 112}
!36 = !{!21, !5, i64 132}
!37 = !{!21, !24, i64 120}
!38 = !{!21, !13, i64 5952}
!39 = !{!21, !5, i64 5896}
!40 = !{!21, !11, i64 16}
!41 = !{!21, !13, i64 24}
!42 = !{!11, !11, i64 0}
!43 = !{ptr @deflateInit2_, ptr @deflateEnd}
!44 = !{!21, !11, i64 5888}
!45 = !{!21, !5, i64 5904}
!46 = !{!21, !5, i64 196}
!47 = !{!21, !5, i64 200}
!48 = !{!21, !6, i64 72}
!49 = !{!21, !5, i64 136}
!50 = !{!21, !5, i64 140}
!51 = !{!21, !5, i64 144}
!52 = !{ptr @deflateEnd}
!53 = !{!10, !13, i64 16}
!54 = !{!10, !5, i64 88}
!55 = !{!21, !13, i64 40}
!56 = !{!21, !11, i64 32}
!57 = !{!10, !13, i64 96}
!58 = !{!21, !5, i64 76}
!59 = !{!21, !13, i64 104}
!60 = !{!28, !28, i64 0}
!61 = !{!21, !5, i64 5960}
!62 = !{!63, !28, i64 2}
!63 = !{!"config_s", !28, i64 0, !28, i64 2, !28, i64 4, !28, i64 6, !12, i64 8}
!64 = !{!21, !5, i64 192}
!65 = !{!63, !28, i64 0}
!66 = !{!21, !5, i64 204}
!67 = !{!63, !28, i64 4}
!68 = !{!21, !5, i64 208}
!69 = !{!63, !28, i64 6}
!70 = !{!21, !5, i64 188}
!71 = !{!21, !5, i64 172}
!72 = !{!21, !13, i64 152}
!73 = !{!21, !5, i64 180}
!74 = !{!21, !5, i64 5932}
!75 = !{!21, !5, i64 184}
!76 = !{!21, !5, i64 160}
!77 = !{!21, !5, i64 168}
!78 = !{!21, !5, i64 128}
!79 = !{!10, !5, i64 8}
!80 = !{!10, !11, i64 0}
!81 = !{!21, !5, i64 176}
!82 = distinct !{!82, !83, !84, !85}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!"llvm.loop.isvectorized", i32 1}
!85 = !{!"llvm.loop.unroll.runtime.disable"}
!86 = distinct !{!86, !83, !85, !84}
!87 = distinct !{!87, !83, !84, !85}
!88 = distinct !{!88, !83, !85, !84}
!89 = distinct !{!89, !83}
!90 = distinct !{!90, !83}
!91 = distinct !{!91, !83}
!92 = distinct !{!92, !83, !84, !85}
!93 = distinct !{!93, !83, !85, !84}
!94 = distinct !{!94, !83, !84, !85}
!95 = distinct !{!95, !83, !85, !84}
!96 = distinct !{!96, !83}
!97 = !{!21, !23, i64 56}
!98 = !{!21, !5, i64 5940}
!99 = !{!21, !5, i64 5944}
!100 = !{!21, !28, i64 5936}
!101 = distinct !{!101, !83}
!102 = !{!63, !12, i64 8}
!103 = !{!10, !11, i64 24}
!104 = !{!10, !5, i64 32}
!105 = !{!10, !13, i64 40}
!106 = !{!107, !5, i64 0}
!107 = !{!"gz_header_s", !5, i64 0, !13, i64 8, !5, i64 16, !5, i64 20, !11, i64 24, !5, i64 32, !5, i64 36, !11, i64 40, !5, i64 48, !11, i64 56, !5, i64 64, !5, i64 68, !5, i64 72}
!108 = !{!107, !5, i64 68}
!109 = !{!107, !11, i64 24}
!110 = !{!107, !11, i64 40}
!111 = !{!107, !11, i64 56}
!112 = !{!107, !13, i64 8}
!113 = !{!107, !5, i64 20}
!114 = !{!107, !5, i64 32}
!115 = !{!21, !13, i64 64}
!116 = distinct !{!116, !83, !117}
!117 = !{!"llvm.loop.peeled.count", i32 1}
!118 = distinct !{!118, !83}
!119 = distinct !{!119, !83}
!120 = !{ptr @deflate}
!121 = !{!21, !5, i64 5928}
!122 = distinct !{!122, !83, !84, !85}
!123 = distinct !{!123, !83, !85, !84}
!124 = distinct !{!124, !83, !84, !85}
!125 = distinct !{!125, !83, !85, !84}
!126 = distinct !{!126, !83}
!127 = distinct !{!127, !83, !84, !85}
!128 = distinct !{!128, !83, !85, !84}
!129 = distinct !{!129, !83, !84, !85}
!130 = distinct !{!130, !83, !85, !84}
!131 = !{!21, !5, i64 5900}
!132 = distinct !{!132, !83, !84, !85}
!133 = distinct !{!133, !83, !85, !84}
!134 = distinct !{!134, !83, !84, !85}
!135 = distinct !{!135, !83, !85, !84}
!136 = distinct !{!136, !83}
!137 = !{!21, !26, i64 2904}
!138 = !{!21, !26, i64 2928}
!139 = !{!21, !26, i64 2952}
!140 = distinct !{!140, !83, !84, !85}
!141 = distinct !{!141, !83, !85, !84}
!142 = distinct !{!142, !83, !84, !85}
!143 = distinct !{!143, !83, !85, !84}
!144 = distinct !{!144, !83}
!145 = distinct !{!145, !83}
!146 = distinct !{!146, !83}
!147 = distinct !{!147, !83, !84, !85}
!148 = distinct !{!148, !83, !85, !84}
!149 = distinct !{!149, !83, !84, !85}
!150 = distinct !{!150, !83, !85, !84}
!151 = !{!21, !5, i64 164}
!152 = distinct !{!152, !83}
