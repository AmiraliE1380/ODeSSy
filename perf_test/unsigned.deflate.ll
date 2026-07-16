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
  br i1 %5, label %153, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1, !tbaa !8
  %8 = icmp ne i8 %7, 49
  %9 = icmp ne i32 %3, 112
  %10 = or i1 %9, %8
  br i1 %10, label %153, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %0, null
  br i1 %12, label %153, label %13

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
  br i1 %29, label %153, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %32 = load ptr, ptr %31, align 8, !tbaa !16
  %33 = tail call ptr %21(ptr noundef %32, i32 noundef 1, i32 noundef 5968) #12, !inline_history !18
  %34 = icmp eq ptr %33, null
  br i1 %34, label %153, label %35

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
  %45 = tail call ptr %43(ptr noundef %44, i32 noundef 32768, i32 noundef 2) #12, !inline_history !18
  %46 = getelementptr inbounds nuw i8, ptr %33, i64 96
  store ptr %45, ptr %46, align 8, !tbaa !34
  %47 = load ptr, ptr %15, align 8, !tbaa !15
  %48 = load ptr, ptr %31, align 8, !tbaa !16
  %49 = load i32, ptr %40, align 8, !tbaa !32
  %50 = tail call ptr %47(ptr noundef %48, i32 noundef %49, i32 noundef 2) #12, !inline_history !18
  %51 = getelementptr inbounds nuw i8, ptr %33, i64 112
  store ptr %50, ptr %51, align 8, !tbaa !35
  %52 = load ptr, ptr %15, align 8, !tbaa !15
  %53 = load ptr, ptr %31, align 8, !tbaa !16
  %54 = load i32, ptr %42, align 4, !tbaa !36
  %55 = tail call ptr %52(ptr noundef %53, i32 noundef %54, i32 noundef 2) #12, !inline_history !18
  %56 = getelementptr inbounds nuw i8, ptr %33, i64 120
  store ptr %55, ptr %56, align 8, !tbaa !37
  %57 = getelementptr inbounds nuw i8, ptr %33, i64 5952
  store i64 0, ptr %57, align 8, !tbaa !38
  %58 = getelementptr inbounds nuw i8, ptr %33, i64 5896
  store i32 16384, ptr %58, align 8, !tbaa !39
  %59 = load ptr, ptr %15, align 8, !tbaa !15
  %60 = load ptr, ptr %31, align 8, !tbaa !16
  %61 = tail call ptr %59(ptr noundef %60, i32 noundef 16384, i32 noundef 4) #12, !inline_history !18
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
  br i1 %80, label %153, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %22, align 8, !tbaa !17
  %83 = icmp eq ptr %82, null
  br i1 %83, label %153, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr %37, align 8, !tbaa !19
  %86 = icmp eq ptr %85, null
  br i1 %86, label %153, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %85, align 8, !tbaa !20
  %89 = icmp eq ptr %88, %0
  br i1 %89, label %90, label %153

90:                                               ; preds = %87
  %91 = getelementptr inbounds nuw i8, ptr %85, i64 8
  %92 = load i32, ptr %91, align 8, !tbaa !29
  switch i32 %92, label %153 [
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
  tail call void %82(ptr noundef %98, ptr noundef nonnull %95) #12, !inline_history !43
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
  tail call void %102(ptr noundef %108, ptr noundef nonnull %105) #12, !inline_history !43
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
  tail call void %112(ptr noundef %118, ptr noundef nonnull %115) #12, !inline_history !43
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
  tail call void %122(ptr noundef %128, ptr noundef nonnull %125) #12, !inline_history !43
  %129 = load ptr, ptr %22, align 8, !tbaa !17
  %130 = load ptr, ptr %37, align 8, !tbaa !19
  br label %131

131:                                              ; preds = %127, %121
  %132 = phi ptr [ %130, %127 ], [ %123, %121 ]
  %133 = phi ptr [ %129, %127 ], [ %122, %121 ]
  %134 = load ptr, ptr %31, align 8, !tbaa !16
  tail call void %133(ptr noundef %134, ptr noundef %132) #12, !inline_history !43
  store ptr null, ptr %37, align 8, !tbaa !19
  br label %153

135:                                              ; preds = %72
  %136 = getelementptr inbounds nuw i8, ptr %61, i64 %64
  %137 = getelementptr inbounds nuw i8, ptr %33, i64 5888
  store ptr %136, ptr %137, align 8, !tbaa !44
  %138 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %63, i32 1), !nosanitize !45
  %139 = extractvalue { i32, i1 } %138, 1, !nosanitize !45
  br i1 %139, label %140, label %141, !prof !46, !nosanitize !45

140:                                              ; preds = %135
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

141:                                              ; preds = %135
  %142 = extractvalue { i32, i1 } %138, 0, !nosanitize !45
  %143 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %142, i32 3), !nosanitize !45
  %144 = extractvalue { i32, i1 } %143, 1, !nosanitize !45
  br i1 %144, label %145, label %146, !prof !46, !nosanitize !45

145:                                              ; preds = %141
  tail call void @llvm.ubsantrap(i8 12) #13, !nosanitize !45
  unreachable, !nosanitize !45

146:                                              ; preds = %141
  %147 = extractvalue { i32, i1 } %143, 0, !nosanitize !45
  %148 = getelementptr inbounds nuw i8, ptr %33, i64 5904
  store i32 %147, ptr %148, align 8, !tbaa !47
  %149 = getelementptr inbounds nuw i8, ptr %33, i64 196
  store i32 %28, ptr %149, align 4, !tbaa !48
  %150 = getelementptr inbounds nuw i8, ptr %33, i64 200
  store i32 0, ptr %150, align 8, !tbaa !49
  %151 = getelementptr inbounds nuw i8, ptr %33, i64 72
  store i8 8, ptr %151, align 8, !tbaa !50
  %152 = tail call i32 @deflateReset(ptr noundef nonnull %0)
  br label %153

153:                                              ; preds = %4, %6, %11, %26, %30, %77, %81, %84, %87, %90, %131, %146
  %154 = phi i32 [ %152, %146 ], [ -6, %4 ], [ -2, %11 ], [ -4, %131 ], [ -2, %26 ], [ -4, %30 ], [ -6, %6 ], [ -4, %90 ], [ -4, %77 ], [ -4, %81 ], [ -4, %84 ], [ -4, %87 ]
  ret i32 %154
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @deflateInit2_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly captures(address_is_null) %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq ptr %6, null
  br i1 %9, label %198, label %10

10:                                               ; preds = %8
  %11 = load i8, ptr %6, align 1, !tbaa !8
  %12 = icmp ne i8 %11, 49
  %13 = icmp ne i32 %7, 112
  %14 = or i1 %13, %12
  br i1 %14, label %198, label %15

15:                                               ; preds = %10
  %16 = icmp eq ptr %0, null
  br i1 %16, label %198, label %17

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
  br i1 %35, label %198, label %36

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
  br i1 %56, label %198, label %57

57:                                               ; preds = %42
  %58 = icmp eq i32 %43, 8
  %59 = and i1 %58, %44
  br i1 %59, label %198, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %62 = load ptr, ptr %61, align 8, !tbaa !16
  %63 = tail call ptr %25(ptr noundef %62, i32 noundef 1, i32 noundef 5968) #12
  %64 = icmp eq ptr %63, null
  br i1 %64, label %198, label %65

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
  store i32 %76, ptr %77, align 8, !tbaa !51
  %78 = shl nuw nsw i32 128, %4
  %79 = getelementptr inbounds nuw i8, ptr %63, i64 132
  store i32 %78, ptr %79, align 4, !tbaa !36
  %80 = add nsw i32 %78, -1
  %81 = getelementptr inbounds nuw i8, ptr %63, i64 140
  store i32 %80, ptr %81, align 4, !tbaa !52
  %82 = trunc nuw nsw i32 %4 to i8
  %83 = add nuw nsw i8 %82, 9
  %84 = udiv i8 %83, 3
  %85 = zext nneg i8 %84 to i32
  %86 = getelementptr inbounds nuw i8, ptr %63, i64 144
  store i32 %85, ptr %86, align 8, !tbaa !53
  %87 = load ptr, ptr %19, align 8, !tbaa !15
  %88 = load ptr, ptr %61, align 8, !tbaa !16
  %89 = tail call ptr %87(ptr noundef %88, i32 noundef %72, i32 noundef 2) #12
  %90 = getelementptr inbounds nuw i8, ptr %63, i64 96
  store ptr %89, ptr %90, align 8, !tbaa !34
  %91 = load ptr, ptr %19, align 8, !tbaa !15
  %92 = load ptr, ptr %61, align 8, !tbaa !16
  %93 = load i32, ptr %73, align 8, !tbaa !32
  %94 = tail call ptr %91(ptr noundef %92, i32 noundef %93, i32 noundef 2) #12
  %95 = getelementptr inbounds nuw i8, ptr %63, i64 112
  store ptr %94, ptr %95, align 8, !tbaa !35
  %96 = load ptr, ptr %19, align 8, !tbaa !15
  %97 = load ptr, ptr %61, align 8, !tbaa !16
  %98 = load i32, ptr %79, align 4, !tbaa !36
  %99 = tail call ptr %96(ptr noundef %97, i32 noundef %98, i32 noundef 2) #12
  %100 = getelementptr inbounds nuw i8, ptr %63, i64 120
  store ptr %99, ptr %100, align 8, !tbaa !37
  %101 = getelementptr inbounds nuw i8, ptr %63, i64 5952
  store i64 0, ptr %101, align 8, !tbaa !38
  %102 = shl nuw nsw i32 64, %4
  %103 = getelementptr inbounds nuw i8, ptr %63, i64 5896
  store i32 %102, ptr %103, align 8, !tbaa !39
  %104 = load ptr, ptr %19, align 8, !tbaa !15
  %105 = load ptr, ptr %61, align 8, !tbaa !16
  %106 = tail call ptr %104(ptr noundef %105, i32 noundef %102, i32 noundef 4) #12
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
  br i1 %125, label %198, label %126

126:                                              ; preds = %122
  %127 = load ptr, ptr %26, align 8, !tbaa !17
  %128 = icmp eq ptr %127, null
  br i1 %128, label %198, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr %68, align 8, !tbaa !19
  %131 = icmp eq ptr %130, null
  br i1 %131, label %198, label %132

132:                                              ; preds = %129
  %133 = load ptr, ptr %130, align 8, !tbaa !20
  %134 = icmp eq ptr %133, %0
  br i1 %134, label %135, label %198

135:                                              ; preds = %132
  %136 = getelementptr inbounds nuw i8, ptr %130, i64 8
  %137 = load i32, ptr %136, align 8, !tbaa !29
  switch i32 %137, label %198 [
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
  tail call void %127(ptr noundef %143, ptr noundef nonnull %140) #12, !inline_history !54
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
  tail call void %147(ptr noundef %153, ptr noundef nonnull %150) #12, !inline_history !54
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
  tail call void %157(ptr noundef %163, ptr noundef nonnull %160) #12, !inline_history !54
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
  tail call void %167(ptr noundef %173, ptr noundef nonnull %170) #12, !inline_history !54
  %174 = load ptr, ptr %26, align 8, !tbaa !17
  %175 = load ptr, ptr %68, align 8, !tbaa !19
  br label %176

176:                                              ; preds = %172, %166
  %177 = phi ptr [ %175, %172 ], [ %168, %166 ]
  %178 = phi ptr [ %174, %172 ], [ %167, %166 ]
  %179 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %178(ptr noundef %179, ptr noundef %177) #12, !inline_history !54
  store ptr null, ptr %68, align 8, !tbaa !19
  br label %198

180:                                              ; preds = %117
  %181 = getelementptr inbounds nuw i8, ptr %106, i64 %109
  %182 = getelementptr inbounds nuw i8, ptr %63, i64 5888
  store ptr %181, ptr %182, align 8, !tbaa !44
  %183 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %108, i32 1), !nosanitize !45
  %184 = extractvalue { i32, i1 } %183, 1, !nosanitize !45
  br i1 %184, label %185, label %186, !prof !46, !nosanitize !45

185:                                              ; preds = %180
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

186:                                              ; preds = %180
  %187 = extractvalue { i32, i1 } %183, 0, !nosanitize !45
  %188 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %187, i32 3), !nosanitize !45
  %189 = extractvalue { i32, i1 } %188, 1, !nosanitize !45
  br i1 %189, label %190, label %191, !prof !46, !nosanitize !45

190:                                              ; preds = %186
  tail call void @llvm.ubsantrap(i8 12) #13, !nosanitize !45
  unreachable, !nosanitize !45

191:                                              ; preds = %186
  %192 = extractvalue { i32, i1 } %188, 0, !nosanitize !45
  %193 = getelementptr inbounds nuw i8, ptr %63, i64 5904
  store i32 %192, ptr %193, align 8, !tbaa !47
  %194 = getelementptr inbounds nuw i8, ptr %63, i64 196
  store i32 %32, ptr %194, align 4, !tbaa !48
  %195 = getelementptr inbounds nuw i8, ptr %63, i64 200
  store i32 %5, ptr %195, align 8, !tbaa !49
  %196 = getelementptr inbounds nuw i8, ptr %63, i64 72
  store i8 8, ptr %196, align 8, !tbaa !50
  %197 = tail call i32 @deflateReset(ptr noundef nonnull %0)
  br label %198

198:                                              ; preds = %176, %135, %132, %129, %126, %122, %60, %42, %57, %34, %15, %8, %10, %191
  %199 = phi i32 [ %197, %191 ], [ -6, %8 ], [ -2, %15 ], [ -2, %34 ], [ -2, %42 ], [ -4, %60 ], [ -6, %10 ], [ -2, %57 ], [ -4, %122 ], [ -4, %126 ], [ -4, %129 ], [ -4, %132 ], [ -4, %135 ], [ -4, %176 ]
  ret i32 %199
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
  tail call void %9(ptr noundef %27, ptr noundef nonnull %23) #12
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
  tail call void %31(ptr noundef %38, ptr noundef nonnull %34) #12
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
  tail call void %42(ptr noundef %49, ptr noundef nonnull %45) #12
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
  tail call void %53(ptr noundef %60, ptr noundef nonnull %56) #12
  %61 = load ptr, ptr %8, align 8, !tbaa !17
  %62 = load ptr, ptr %12, align 8, !tbaa !19
  br label %63

63:                                               ; preds = %58, %52
  %64 = phi ptr [ %62, %58 ], [ %54, %52 ]
  %65 = phi ptr [ %61, %58 ], [ %53, %52 ]
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %67 = load ptr, ptr %66, align 8, !tbaa !16
  tail call void %65(ptr noundef %67, ptr noundef %64) #12
  store ptr null, ptr %12, align 8, !tbaa !19
  %68 = icmp eq i32 %20, 113
  %69 = select i1 %68, i32 -3, i32 0
  br label %70

70:                                               ; preds = %11, %15, %18, %3, %7, %1, %63
  %71 = phi i32 [ %69, %63 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %71
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateReset(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %92, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %92, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %92, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %92, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !20
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %92

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !29
  switch i32 %20, label %92 [
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
  store i64 0, ptr %23, align 8, !tbaa !55
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  store i32 2, ptr %24, align 8, !tbaa !56
  %25 = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 0, ptr %25, align 8, !tbaa !57
  %26 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %27 = load ptr, ptr %26, align 8, !tbaa !40
  %28 = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %27, ptr %28, align 8, !tbaa !58
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
  %39 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  br label %42

40:                                               ; preds = %34
  %41 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i64 [ %39, %38 ], [ %41, %40 ]
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %43, ptr %44, align 8, !tbaa !59
  %45 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %45, align 4, !tbaa !60
  tail call void @_tr_init(ptr noundef nonnull %13) #12
  %46 = load ptr, ptr %12, align 8, !tbaa !19
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 80
  %48 = load i32, ptr %47, align 8, !tbaa !32
  %49 = zext i32 %48 to i64
  %50 = shl nuw nsw i64 %49, 1
  %51 = getelementptr inbounds nuw i8, ptr %46, i64 104
  store i64 %50, ptr %51, align 8, !tbaa !61
  %52 = getelementptr inbounds nuw i8, ptr %46, i64 132
  %53 = load i32, ptr %52, align 4, !tbaa !36
  %54 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %53, i32 1), !nosanitize !45
  %55 = extractvalue { i32, i1 } %54, 1, !nosanitize !45
  br i1 %55, label %56, label %57, !prof !46, !nosanitize !45

56:                                               ; preds = %42
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

57:                                               ; preds = %42
  %58 = extractvalue { i32, i1 } %54, 0, !nosanitize !45
  %59 = getelementptr inbounds nuw i8, ptr %46, i64 120
  %60 = load ptr, ptr %59, align 8, !tbaa !37
  %61 = zext i32 %58 to i64
  %62 = getelementptr inbounds nuw [2 x i8], ptr %60, i64 %61
  store i16 0, ptr %62, align 2, !tbaa !62
  %63 = shl nuw nsw i64 %61, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %60, i8 0, i64 %63, i1 false)
  %64 = getelementptr inbounds nuw i8, ptr %46, i64 5960
  store i32 0, ptr %64, align 8, !tbaa !63
  %65 = getelementptr inbounds nuw i8, ptr %46, i64 196
  %66 = load i32, ptr %65, align 4, !tbaa !48
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %67
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 2
  %70 = load i16, ptr %69, align 2, !tbaa !64
  %71 = zext i16 %70 to i32
  %72 = getelementptr inbounds nuw i8, ptr %46, i64 192
  store i32 %71, ptr %72, align 8, !tbaa !66
  %73 = load i16, ptr %68, align 16, !tbaa !67
  %74 = zext i16 %73 to i32
  %75 = getelementptr inbounds nuw i8, ptr %46, i64 204
  store i32 %74, ptr %75, align 4, !tbaa !68
  %76 = getelementptr inbounds nuw i8, ptr %68, i64 4
  %77 = load i16, ptr %76, align 4, !tbaa !69
  %78 = zext i16 %77 to i32
  %79 = getelementptr inbounds nuw i8, ptr %46, i64 208
  store i32 %78, ptr %79, align 8, !tbaa !70
  %80 = getelementptr inbounds nuw i8, ptr %68, i64 6
  %81 = load i16, ptr %80, align 2, !tbaa !71
  %82 = zext i16 %81 to i32
  %83 = getelementptr inbounds nuw i8, ptr %46, i64 188
  store i32 %82, ptr %83, align 4, !tbaa !72
  %84 = getelementptr inbounds nuw i8, ptr %46, i64 172
  store i32 0, ptr %84, align 4, !tbaa !73
  %85 = getelementptr inbounds nuw i8, ptr %46, i64 152
  store i64 0, ptr %85, align 8, !tbaa !74
  %86 = getelementptr inbounds nuw i8, ptr %46, i64 180
  store i32 0, ptr %86, align 4, !tbaa !75
  %87 = getelementptr inbounds nuw i8, ptr %46, i64 5932
  store i32 0, ptr %87, align 4, !tbaa !76
  %88 = getelementptr inbounds nuw i8, ptr %46, i64 184
  store i32 2, ptr %88, align 8, !tbaa !77
  %89 = getelementptr inbounds nuw i8, ptr %46, i64 160
  store i32 2, ptr %89, align 8, !tbaa !78
  %90 = getelementptr inbounds nuw i8, ptr %46, i64 168
  store i32 0, ptr %90, align 8, !tbaa !79
  %91 = getelementptr inbounds nuw i8, ptr %46, i64 128
  store i32 0, ptr %91, align 8, !tbaa !80
  br label %92

92:                                               ; preds = %11, %15, %18, %3, %7, %1, %57
  %93 = phi i32 [ 0, %57 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateSetDictionary(ptr noundef captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %821, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %821, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %821, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %821, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %821

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %821 [
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
  br i1 %24, label %821, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %27 = load i32, ptr %26, align 8, !tbaa !30
  switch i32 %27, label %34 [
    i32 2, label %821
    i32 1, label %28
  ]

28:                                               ; preds = %25
  %29 = icmp eq i32 %22, 42
  br i1 %29, label %30, label %821

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %32 = load i32, ptr %31, align 4, !tbaa !75
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %821

34:                                               ; preds = %25
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %36 = load i32, ptr %35, align 4, !tbaa !75
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %821

38:                                               ; preds = %34
  store i32 0, ptr %26, align 8, !tbaa !30
  %39 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %40 = load i32, ptr %39, align 8, !tbaa !32
  %41 = icmp ult i32 %2, %40
  br i1 %41, label %80, label %49

42:                                               ; preds = %30
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %44 = load i64, ptr %43, align 8, !tbaa !59
  %45 = tail call i64 @adler32(i64 noundef %44, ptr noundef nonnull %1, i32 noundef %2) #12
  store i64 %45, ptr %43, align 8, !tbaa !59
  store i32 0, ptr %26, align 8, !tbaa !30
  %46 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %47 = load i32, ptr %46, align 8, !tbaa !32
  %48 = icmp ult i32 %2, %47
  br i1 %48, label %80, label %69

49:                                               ; preds = %38
  %50 = icmp eq i32 %27, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %49
  %52 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %53 = load i32, ptr %52, align 4, !tbaa !36
  %54 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %53, i32 1), !nosanitize !45
  %55 = extractvalue { i32, i1 } %54, 1, !nosanitize !45
  br i1 %55, label %56, label %57, !prof !46, !nosanitize !45

56:                                               ; preds = %51
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

57:                                               ; preds = %51
  %58 = extractvalue { i32, i1 } %54, 0, !nosanitize !45
  %59 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %60 = load ptr, ptr %59, align 8, !tbaa !37
  %61 = zext i32 %58 to i64
  %62 = getelementptr inbounds nuw [2 x i8], ptr %60, i64 %61
  store i16 0, ptr %62, align 2, !tbaa !62
  %63 = shl nuw nsw i64 %61, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %60, i8 0, i64 %63, i1 false)
  %64 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  store i32 0, ptr %64, align 8, !tbaa !63
  %65 = getelementptr inbounds nuw i8, ptr %15, i64 172
  store i32 0, ptr %65, align 4, !tbaa !73
  %66 = getelementptr inbounds nuw i8, ptr %15, i64 152
  store i64 0, ptr %66, align 8, !tbaa !74
  %67 = getelementptr inbounds nuw i8, ptr %15, i64 5932
  store i32 0, ptr %67, align 4, !tbaa !76
  %68 = load i32, ptr %39, align 8, !tbaa !32
  br label %69

69:                                               ; preds = %42, %57, %49
  %70 = phi ptr [ %35, %57 ], [ %35, %49 ], [ %31, %42 ]
  %71 = phi ptr [ %39, %57 ], [ %39, %49 ], [ %46, %42 ]
  %72 = phi i32 [ %68, %57 ], [ %40, %49 ], [ %47, %42 ]
  %73 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2, i32 %72), !nosanitize !45
  %74 = extractvalue { i32, i1 } %73, 1, !nosanitize !45
  br i1 %74, label %75, label %76, !prof !46, !nosanitize !45

75:                                               ; preds = %69
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

76:                                               ; preds = %69
  %77 = extractvalue { i32, i1 } %73, 0, !nosanitize !45
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds nuw i8, ptr %1, i64 %78
  br label %80

80:                                               ; preds = %42, %76, %38
  %81 = phi ptr [ %71, %76 ], [ %39, %38 ], [ %46, %42 ]
  %82 = phi ptr [ %70, %76 ], [ %35, %38 ], [ %31, %42 ]
  %83 = phi i32 [ %72, %76 ], [ %40, %38 ], [ %47, %42 ]
  %84 = phi i32 [ %72, %76 ], [ %2, %38 ], [ %2, %42 ]
  %85 = phi ptr [ %79, %76 ], [ %1, %38 ], [ %1, %42 ]
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %87 = load i32, ptr %86, align 8, !tbaa !81
  %88 = load ptr, ptr %0, align 8, !tbaa !82
  store i32 %84, ptr %86, align 8, !tbaa !81
  store ptr %85, ptr %0, align 8, !tbaa !82
  %89 = getelementptr inbounds nuw i8, ptr %15, i64 104
  %90 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %91 = zext i32 %83 to i64
  %92 = getelementptr inbounds nuw i8, ptr %15, i64 96
  %93 = getelementptr inbounds nuw i8, ptr %15, i64 176
  %94 = getelementptr inbounds nuw i8, ptr %15, i64 152
  %95 = getelementptr inbounds nuw i8, ptr %15, i64 5932
  %96 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %97 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %98 = getelementptr inbounds nuw i8, ptr %15, i64 112
  %99 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  %100 = getelementptr inbounds nuw i8, ptr %15, i64 128
  %101 = getelementptr inbounds nuw i8, ptr %15, i64 144
  %102 = getelementptr inbounds nuw i8, ptr %15, i64 140
  %103 = getelementptr inbounds nuw i8, ptr %15, i64 88
  %104 = load i32, ptr %82, align 4, !tbaa !75
  br label %105

105:                                              ; preds = %384, %80
  %106 = phi i32 [ %311, %384 ], [ %104, %80 ]
  %107 = load i64, ptr %89, align 8, !tbaa !61
  %108 = zext i32 %106 to i64
  %109 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %107, i64 %108), !nosanitize !45
  %110 = extractvalue { i64, i1 } %109, 1, !nosanitize !45
  br i1 %110, label %111, label %112, !prof !46, !nosanitize !45

111:                                              ; preds = %105
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

112:                                              ; preds = %105
  %113 = extractvalue { i64, i1 } %109, 0, !nosanitize !45
  %114 = load i32, ptr %90, align 4, !tbaa !73
  %115 = zext i32 %114 to i64
  %116 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %113, i64 %115), !nosanitize !45
  %117 = extractvalue { i64, i1 } %116, 1, !nosanitize !45
  br i1 %117, label %118, label %119, !prof !46, !nosanitize !45

118:                                              ; preds = %112
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

119:                                              ; preds = %112
  %120 = extractvalue { i64, i1 } %116, 0, !nosanitize !45
  %121 = trunc i64 %120 to i32
  %122 = load i32, ptr %81, align 8, !tbaa !32
  %123 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %122, i32 262), !nosanitize !45
  %124 = extractvalue { i32, i1 } %123, 1, !nosanitize !45
  br i1 %124, label %125, label %126, !prof !46, !nosanitize !45

125:                                              ; preds = %119
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

126:                                              ; preds = %119
  %127 = extractvalue { i32, i1 } %123, 0, !nosanitize !45
  %128 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %83, i32 %127), !nosanitize !45
  %129 = extractvalue { i32, i1 } %128, 1, !nosanitize !45
  br i1 %129, label %130, label %131, !prof !46, !nosanitize !45

130:                                              ; preds = %126
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

131:                                              ; preds = %126
  %132 = extractvalue { i32, i1 } %128, 0, !nosanitize !45
  %133 = icmp ult i32 %114, %132
  br i1 %133, label %258, label %134

134:                                              ; preds = %131
  %135 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %83, i32 %121), !nosanitize !45
  %136 = extractvalue { i32, i1 } %135, 1, !nosanitize !45
  br i1 %136, label %137, label %138, !prof !46, !nosanitize !45

137:                                              ; preds = %134
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

138:                                              ; preds = %134
  %139 = extractvalue { i32, i1 } %135, 0, !nosanitize !45
  %140 = load ptr, ptr %92, align 8, !tbaa !34
  %141 = getelementptr inbounds nuw i8, ptr %140, i64 %91
  %142 = zext i32 %139 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %140, ptr align 1 %141, i64 %142, i1 false)
  %143 = load i32, ptr %93, align 8, !tbaa !83
  %144 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %143, i32 %83), !nosanitize !45
  %145 = extractvalue { i32, i1 } %144, 1, !nosanitize !45
  br i1 %145, label %146, label %147, !prof !46, !nosanitize !45

146:                                              ; preds = %138
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

147:                                              ; preds = %138
  %148 = extractvalue { i32, i1 } %144, 0, !nosanitize !45
  store i32 %148, ptr %93, align 8, !tbaa !83
  %149 = load i32, ptr %90, align 4, !tbaa !73
  %150 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %149, i32 %83), !nosanitize !45
  %151 = extractvalue { i32, i1 } %150, 1, !nosanitize !45
  br i1 %151, label %152, label %153, !prof !46, !nosanitize !45

152:                                              ; preds = %147
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

153:                                              ; preds = %147
  %154 = extractvalue { i32, i1 } %150, 0, !nosanitize !45
  store i32 %154, ptr %90, align 4, !tbaa !73
  %155 = load i64, ptr %94, align 8, !tbaa !74
  %156 = sub nsw i64 %155, %91
  store i64 %156, ptr %94, align 8, !tbaa !74
  %157 = load i32, ptr %95, align 4, !tbaa !76
  %158 = icmp ugt i32 %157, %154
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  store i32 %154, ptr %95, align 4, !tbaa !76
  br label %160

160:                                              ; preds = %159, %153
  %161 = load i32, ptr %81, align 8, !tbaa !32
  %162 = load i32, ptr %96, align 4, !tbaa !36
  %163 = load ptr, ptr %97, align 8, !tbaa !37
  %164 = zext i32 %162 to i64
  %165 = getelementptr inbounds nuw [2 x i8], ptr %163, i64 %164
  %166 = icmp eq i32 %162, 0
  br i1 %166, label %193, label %167, !prof !46, !nosanitize !45

167:                                              ; preds = %160
  %168 = icmp ult i32 %162, 8
  br i1 %168, label %190, label %169

169:                                              ; preds = %167
  %170 = and i64 %164, 4294967288
  %171 = mul nsw i64 %170, -2
  %172 = getelementptr i8, ptr %165, i64 %171
  %173 = trunc nuw i64 %170 to i32
  %174 = sub i32 %162, %173
  %175 = insertelement <8 x i32> poison, i32 %161, i64 0
  %176 = shufflevector <8 x i32> %175, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %177

177:                                              ; preds = %177, %169
  %178 = phi i64 [ 0, %169 ], [ %186, %177 ]
  %179 = mul i64 %178, -2
  %180 = getelementptr i8, ptr %165, i64 %179
  %181 = getelementptr inbounds i8, ptr %180, i64 -16
  %182 = load <8 x i16>, ptr %181, align 2, !tbaa !62
  %183 = zext <8 x i16> %182 to <8 x i32>
  %184 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %183, <8 x i32> %176)
  %185 = trunc nuw <8 x i32> %184 to <8 x i16>
  store <8 x i16> %185, ptr %181, align 2, !tbaa !62
  %186 = add nuw i64 %178, 8
  %187 = icmp eq i64 %186, %170
  br i1 %187, label %188, label %177, !llvm.loop !84

188:                                              ; preds = %177
  %189 = icmp eq i64 %170, %164
  br i1 %189, label %209, label %190

190:                                              ; preds = %167, %188
  %191 = phi ptr [ %165, %167 ], [ %172, %188 ]
  %192 = phi i32 [ %162, %167 ], [ %174, %188 ]
  br label %199

193:                                              ; preds = %160
  %194 = getelementptr inbounds i8, ptr %165, i64 -2
  %195 = load i16, ptr %194, align 2, !tbaa !62
  %196 = zext i16 %195 to i32
  %197 = tail call i32 @llvm.usub.sat.i32(i32 %196, i32 %161)
  %198 = trunc nuw i32 %197 to i16
  store i16 %198, ptr %194, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

199:                                              ; preds = %190, %199
  %200 = phi ptr [ %202, %199 ], [ %191, %190 ]
  %201 = phi i32 [ %207, %199 ], [ %192, %190 ]
  %202 = getelementptr inbounds i8, ptr %200, i64 -2
  %203 = load i16, ptr %202, align 2, !tbaa !62
  %204 = zext i16 %203 to i32
  %205 = tail call i32 @llvm.usub.sat.i32(i32 %204, i32 %161)
  %206 = trunc nuw i32 %205 to i16
  store i16 %206, ptr %202, align 2, !tbaa !62
  %207 = add i32 %201, -1
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %199, !llvm.loop !88

209:                                              ; preds = %199, %188
  %210 = icmp eq i32 %161, 0
  br i1 %210, label %211, label %212, !prof !46, !nosanitize !45

211:                                              ; preds = %209
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

212:                                              ; preds = %209
  %213 = load ptr, ptr %98, align 8, !tbaa !35
  %214 = zext i32 %161 to i64
  %215 = getelementptr inbounds nuw [2 x i8], ptr %213, i64 %214
  %216 = icmp ult i32 %161, 8
  br i1 %216, label %238, label %217

217:                                              ; preds = %212
  %218 = and i64 %214, 4294967288
  %219 = mul nsw i64 %218, -2
  %220 = getelementptr i8, ptr %215, i64 %219
  %221 = trunc nuw i64 %218 to i32
  %222 = sub i32 %161, %221
  %223 = insertelement <8 x i32> poison, i32 %161, i64 0
  %224 = shufflevector <8 x i32> %223, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %225

225:                                              ; preds = %225, %217
  %226 = phi i64 [ 0, %217 ], [ %234, %225 ]
  %227 = mul i64 %226, -2
  %228 = getelementptr i8, ptr %215, i64 %227
  %229 = getelementptr inbounds i8, ptr %228, i64 -16
  %230 = load <8 x i16>, ptr %229, align 2, !tbaa !62
  %231 = zext <8 x i16> %230 to <8 x i32>
  %232 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %231, <8 x i32> %224)
  %233 = trunc nuw <8 x i32> %232 to <8 x i16>
  store <8 x i16> %233, ptr %229, align 2, !tbaa !62
  %234 = add nuw i64 %226, 8
  %235 = icmp eq i64 %234, %218
  br i1 %235, label %236, label %225, !llvm.loop !89

236:                                              ; preds = %225
  %237 = icmp eq i64 %218, %214
  br i1 %237, label %251, label %238

238:                                              ; preds = %212, %236
  %239 = phi ptr [ %215, %212 ], [ %220, %236 ]
  %240 = phi i32 [ %161, %212 ], [ %222, %236 ]
  br label %241

241:                                              ; preds = %238, %241
  %242 = phi ptr [ %244, %241 ], [ %239, %238 ]
  %243 = phi i32 [ %249, %241 ], [ %240, %238 ]
  %244 = getelementptr inbounds i8, ptr %242, i64 -2
  %245 = load i16, ptr %244, align 2, !tbaa !62
  %246 = zext i16 %245 to i32
  %247 = tail call i32 @llvm.usub.sat.i32(i32 %246, i32 %161)
  %248 = trunc nuw i32 %247 to i16
  store i16 %248, ptr %244, align 2, !tbaa !62
  %249 = add i32 %243, -1
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %241, !llvm.loop !90

251:                                              ; preds = %241, %236
  store i32 1, ptr %99, align 8, !tbaa !63
  %252 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %121, i32 %83), !nosanitize !45
  %253 = extractvalue { i32, i1 } %252, 1, !nosanitize !45
  br i1 %253, label %254, label %255, !prof !46, !nosanitize !45

254:                                              ; preds = %251
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

255:                                              ; preds = %251
  %256 = extractvalue { i32, i1 } %252, 0, !nosanitize !45
  %257 = load i32, ptr %82, align 4, !tbaa !75
  br label %258

258:                                              ; preds = %255, %131
  %259 = phi i32 [ %257, %255 ], [ %106, %131 ]
  %260 = phi i32 [ %154, %255 ], [ %114, %131 ]
  %261 = phi i32 [ %256, %255 ], [ %121, %131 ]
  %262 = load ptr, ptr %15, align 8, !tbaa !20
  %263 = getelementptr inbounds nuw i8, ptr %262, i64 8
  %264 = load i32, ptr %263, align 8, !tbaa !81
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %389, label %266

266:                                              ; preds = %258
  %267 = load ptr, ptr %92, align 8, !tbaa !34
  %268 = zext i32 %260 to i64
  %269 = getelementptr inbounds nuw i8, ptr %267, i64 %268
  %270 = zext i32 %259 to i64
  %271 = getelementptr inbounds nuw i8, ptr %269, i64 %270
  %272 = tail call i32 @llvm.umin.i32(i32 %264, i32 %261)
  %273 = icmp eq i32 %261, 0
  br i1 %273, label %305, label %274

274:                                              ; preds = %266
  %275 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %264, i32 %272), !nosanitize !45
  %276 = extractvalue { i32, i1 } %275, 1, !nosanitize !45
  br i1 %276, label %277, label %278, !prof !46, !nosanitize !45

277:                                              ; preds = %274
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

278:                                              ; preds = %274
  %279 = extractvalue { i32, i1 } %275, 0, !nosanitize !45
  store i32 %279, ptr %263, align 8, !tbaa !81
  %280 = load ptr, ptr %262, align 8, !tbaa !82
  %281 = zext i32 %272 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %271, ptr align 1 %280, i64 %281, i1 false)
  %282 = getelementptr inbounds nuw i8, ptr %262, i64 56
  %283 = load ptr, ptr %282, align 8, !tbaa !19
  %284 = getelementptr inbounds nuw i8, ptr %283, i64 48
  %285 = load i32, ptr %284, align 8, !tbaa !30
  switch i32 %285, label %294 [
    i32 1, label %286
    i32 2, label %290
  ]

286:                                              ; preds = %278
  %287 = getelementptr inbounds nuw i8, ptr %262, i64 96
  %288 = load i64, ptr %287, align 8, !tbaa !59
  %289 = tail call i64 @adler32(i64 noundef %288, ptr noundef %271, i32 noundef %272) #12
  store i64 %289, ptr %287, align 8, !tbaa !59
  br label %294

290:                                              ; preds = %278
  %291 = getelementptr inbounds nuw i8, ptr %262, i64 96
  %292 = load i64, ptr %291, align 8, !tbaa !59
  %293 = tail call i64 @crc32(i64 noundef %292, ptr noundef %271, i32 noundef %272) #12
  store i64 %293, ptr %291, align 8, !tbaa !59
  br label %294

294:                                              ; preds = %290, %286, %278
  %295 = load ptr, ptr %262, align 8, !tbaa !82
  %296 = getelementptr inbounds nuw i8, ptr %295, i64 %281
  store ptr %296, ptr %262, align 8, !tbaa !82
  %297 = getelementptr inbounds nuw i8, ptr %262, i64 16
  %298 = load i64, ptr %297, align 8, !tbaa !55
  %299 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %298, i64 %281), !nosanitize !45
  %300 = extractvalue { i64, i1 } %299, 1, !nosanitize !45
  br i1 %300, label %301, label %302, !prof !46, !nosanitize !45

301:                                              ; preds = %294
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

302:                                              ; preds = %294
  %303 = extractvalue { i64, i1 } %299, 0, !nosanitize !45
  store i64 %303, ptr %297, align 8, !tbaa !55
  %304 = load i32, ptr %82, align 4, !tbaa !75
  br label %305

305:                                              ; preds = %302, %266
  %306 = phi i32 [ %259, %266 ], [ %304, %302 ]
  %307 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %306, i32 %272), !nosanitize !45
  %308 = extractvalue { i32, i1 } %307, 1, !nosanitize !45
  br i1 %308, label %309, label %310, !prof !46, !nosanitize !45

309:                                              ; preds = %305
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

310:                                              ; preds = %305
  %311 = extractvalue { i32, i1 } %307, 0, !nosanitize !45
  store i32 %311, ptr %82, align 4, !tbaa !75
  %312 = load i32, ptr %95, align 4, !tbaa !76
  %313 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %311, i32 %312), !nosanitize !45
  %314 = extractvalue { i32, i1 } %313, 1, !nosanitize !45
  br i1 %314, label %315, label %316, !prof !46, !nosanitize !45

315:                                              ; preds = %310
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

316:                                              ; preds = %310
  %317 = extractvalue { i32, i1 } %313, 0, !nosanitize !45
  %318 = icmp ugt i32 %317, 2
  br i1 %318, label %319, label %382

319:                                              ; preds = %316
  %320 = load i32, ptr %90, align 4, !tbaa !73
  %321 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %320, i32 %312), !nosanitize !45
  %322 = extractvalue { i32, i1 } %321, 0, !nosanitize !45
  %323 = extractvalue { i32, i1 } %321, 1, !nosanitize !45
  br i1 %323, label %324, label %325, !prof !46, !nosanitize !45

324:                                              ; preds = %319
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

325:                                              ; preds = %319
  %326 = load ptr, ptr %92, align 8, !tbaa !34
  %327 = zext i32 %322 to i64
  %328 = getelementptr inbounds nuw i8, ptr %326, i64 %327
  %329 = load i8, ptr %328, align 1, !tbaa !8
  %330 = zext i8 %329 to i32
  store i32 %330, ptr %100, align 8, !tbaa !80
  %331 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %322, i32 1), !nosanitize !45
  %332 = extractvalue { i32, i1 } %331, 1, !nosanitize !45
  br i1 %332, label %333, label %334, !prof !46, !nosanitize !45

333:                                              ; preds = %325
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

334:                                              ; preds = %325
  %335 = extractvalue { i32, i1 } %331, 0, !nosanitize !45
  %336 = load i32, ptr %101, align 8, !tbaa !53
  %337 = shl i32 %330, %336
  %338 = zext i32 %335 to i64
  %339 = getelementptr inbounds nuw i8, ptr %326, i64 %338
  %340 = load i8, ptr %339, align 1, !tbaa !8
  %341 = zext i8 %340 to i32
  %342 = xor i32 %337, %341
  %343 = load i32, ptr %102, align 4, !tbaa !52
  %344 = and i32 %342, %343
  store i32 %344, ptr %100, align 8, !tbaa !80
  br label %345

345:                                              ; preds = %378, %334
  %346 = phi i32 [ %344, %334 ], [ %363, %378 ]
  %347 = phi i32 [ %312, %334 ], [ %374, %378 ]
  %348 = phi i32 [ %322, %334 ], [ %379, %378 ]
  %349 = icmp eq i32 %347, 0
  br i1 %349, label %382, label %350

350:                                              ; preds = %345
  %351 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %348, i32 3), !nosanitize !45
  %352 = extractvalue { i32, i1 } %351, 1, !nosanitize !45
  br i1 %352, label %353, label %354, !prof !46, !nosanitize !45

353:                                              ; preds = %350
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

354:                                              ; preds = %350
  %355 = shl i32 %346, %336
  %356 = extractvalue { i32, i1 } %351, 0, !nosanitize !45
  %357 = add i32 %356, -1
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds nuw i8, ptr %326, i64 %358
  %360 = load i8, ptr %359, align 1, !tbaa !8
  %361 = zext i8 %360 to i32
  %362 = xor i32 %355, %361
  %363 = and i32 %362, %343
  store i32 %363, ptr %100, align 8, !tbaa !80
  %364 = load ptr, ptr %97, align 8, !tbaa !37
  %365 = zext i32 %363 to i64
  %366 = getelementptr inbounds nuw [2 x i8], ptr %364, i64 %365
  %367 = load i16, ptr %366, align 2, !tbaa !62
  %368 = load ptr, ptr %98, align 8, !tbaa !35
  %369 = load i32, ptr %103, align 8, !tbaa !33
  %370 = and i32 %369, %348
  %371 = zext i32 %370 to i64
  %372 = getelementptr inbounds nuw [2 x i8], ptr %368, i64 %371
  store i16 %367, ptr %372, align 2, !tbaa !62
  %373 = trunc i32 %348 to i16
  store i16 %373, ptr %366, align 2, !tbaa !62
  %374 = add i32 %347, -1
  store i32 %374, ptr %95, align 4, !tbaa !76
  %375 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %311, i32 %374), !nosanitize !45
  %376 = extractvalue { i32, i1 } %375, 1, !nosanitize !45
  br i1 %376, label %377, label %378, !prof !46, !nosanitize !45

377:                                              ; preds = %354
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

378:                                              ; preds = %354
  %379 = add nuw i32 %348, 1
  %380 = extractvalue { i32, i1 } %375, 0, !nosanitize !45
  %381 = icmp ult i32 %380, 3
  br i1 %381, label %382, label %345, !llvm.loop !91

382:                                              ; preds = %378, %345, %316
  %383 = icmp ult i32 %311, 262
  br i1 %383, label %384, label %389

384:                                              ; preds = %382
  %385 = load ptr, ptr %15, align 8, !tbaa !20
  %386 = getelementptr inbounds nuw i8, ptr %385, i64 8
  %387 = load i32, ptr %386, align 8, !tbaa !81
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %105, !llvm.loop !92

389:                                              ; preds = %384, %382, %258
  %390 = phi i32 [ %311, %384 ], [ %311, %382 ], [ %259, %258 ]
  %391 = getelementptr inbounds nuw i8, ptr %15, i64 5952
  %392 = load i64, ptr %391, align 8, !tbaa !38
  %393 = load i64, ptr %89, align 8, !tbaa !61
  %394 = icmp ult i64 %392, %393
  br i1 %394, label %395, label %434

395:                                              ; preds = %389
  %396 = load i32, ptr %90, align 4, !tbaa !73
  %397 = zext i32 %396 to i64
  %398 = zext i32 %390 to i64
  %399 = add nuw nsw i64 %398, %397
  %400 = icmp ult i64 %392, %399
  br i1 %400, label %401, label %411

401:                                              ; preds = %395
  %402 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %393, i64 %399), !nosanitize !45
  %403 = extractvalue { i64, i1 } %402, 1, !nosanitize !45
  br i1 %403, label %404, label %405, !prof !46, !nosanitize !45

404:                                              ; preds = %401
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

405:                                              ; preds = %401
  %406 = extractvalue { i64, i1 } %402, 0, !nosanitize !45
  %407 = tail call i64 @llvm.umin.i64(i64 %406, i64 258)
  %408 = load ptr, ptr %92, align 8, !tbaa !34
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 %399
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %409, i8 0, i64 %407, i1 false)
  %410 = add nuw nsw i64 %407, %399
  br label %431

411:                                              ; preds = %395
  %412 = add nuw nsw i64 %399, 258
  %413 = icmp ult i64 %392, %412
  br i1 %413, label %414, label %434

414:                                              ; preds = %411
  %415 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %393, i64 %392), !nosanitize !45
  %416 = extractvalue { i64, i1 } %415, 1, !nosanitize !45
  br i1 %416, label %417, label %418, !prof !46, !nosanitize !45

417:                                              ; preds = %414
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

418:                                              ; preds = %414
  %419 = sub nuw nsw i64 %412, %392
  %420 = extractvalue { i64, i1 } %415, 0, !nosanitize !45
  %421 = tail call i64 @llvm.umin.i64(i64 %419, i64 %420)
  %422 = load ptr, ptr %92, align 8, !tbaa !34
  %423 = getelementptr inbounds nuw i8, ptr %422, i64 %392
  %424 = and i64 %421, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %423, i8 0, i64 %424, i1 false)
  %425 = load i64, ptr %391, align 8, !tbaa !38
  %426 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %425, i64 %421), !nosanitize !45
  %427 = extractvalue { i64, i1 } %426, 1, !nosanitize !45
  br i1 %427, label %428, label %429, !prof !46, !nosanitize !45

428:                                              ; preds = %418
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

429:                                              ; preds = %418
  %430 = extractvalue { i64, i1 } %426, 0, !nosanitize !45
  br label %431

431:                                              ; preds = %429, %405
  %432 = phi i64 [ %410, %405 ], [ %430, %429 ]
  store i64 %432, ptr %391, align 8, !tbaa !38
  %433 = load i32, ptr %82, align 4, !tbaa !75
  br label %434

434:                                              ; preds = %389, %411, %431
  %435 = phi i32 [ %390, %389 ], [ %390, %411 ], [ %433, %431 ]
  %436 = icmp ugt i32 %435, 2
  br i1 %436, label %437, label %809

437:                                              ; preds = %434, %806
  %438 = phi i32 [ %807, %806 ], [ %435, %434 ]
  %439 = load i32, ptr %90, align 4, !tbaa !73
  %440 = load i32, ptr %101, align 8, !tbaa !53
  %441 = load ptr, ptr %92, align 8, !tbaa !34
  %442 = tail call i32 @llvm.usub.sat.i32(i32 -3, i32 %439)
  %443 = add i32 %438, -3
  %444 = icmp ugt i32 %442, %443
  br i1 %444, label %445, label %474, !prof !93, !nosanitize !45

445:                                              ; preds = %437
  %446 = load i32, ptr %100, align 8, !tbaa !80
  %447 = add i32 %438, -2
  %448 = load i32, ptr %102, align 4, !tbaa !52
  %449 = load ptr, ptr %97, align 8, !tbaa !37
  %450 = load ptr, ptr %98, align 8, !tbaa !35
  %451 = load i32, ptr %103, align 8, !tbaa !33
  br label %452

452:                                              ; preds = %452, %445
  %453 = phi i32 [ %446, %445 ], [ %463, %452 ]
  %454 = phi i32 [ %439, %445 ], [ %471, %452 ]
  %455 = phi i32 [ %447, %445 ], [ %472, %452 ]
  %456 = shl i32 %453, %440
  %457 = add i32 %454, 2
  %458 = zext i32 %457 to i64
  %459 = getelementptr inbounds nuw i8, ptr %441, i64 %458
  %460 = load i8, ptr %459, align 1, !tbaa !8
  %461 = zext i8 %460 to i32
  %462 = xor i32 %456, %461
  %463 = and i32 %462, %448
  store i32 %463, ptr %100, align 8, !tbaa !80
  %464 = zext i32 %463 to i64
  %465 = getelementptr inbounds nuw [2 x i8], ptr %449, i64 %464
  %466 = load i16, ptr %465, align 2, !tbaa !62
  %467 = and i32 %451, %454
  %468 = zext i32 %467 to i64
  %469 = getelementptr inbounds nuw [2 x i8], ptr %450, i64 %468
  store i16 %466, ptr %469, align 2, !tbaa !62
  %470 = trunc i32 %454 to i16
  store i16 %470, ptr %465, align 2, !tbaa !62
  %471 = add nuw i32 %454, 1
  %472 = add i32 %455, -1
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %475, label %452, !llvm.loop !94

474:                                              ; preds = %437
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

475:                                              ; preds = %452
  store i32 %471, ptr %90, align 4, !tbaa !73
  store i32 2, ptr %82, align 4, !tbaa !75
  %476 = load i32, ptr %81, align 8, !tbaa !32
  %477 = zext i32 %476 to i64
  br label %478

478:                                              ; preds = %757, %475
  %479 = phi i32 [ %684, %757 ], [ 2, %475 ]
  %480 = load i64, ptr %89, align 8, !tbaa !61
  %481 = zext nneg i32 %479 to i64
  %482 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %480, i64 %481), !nosanitize !45
  %483 = extractvalue { i64, i1 } %482, 1, !nosanitize !45
  br i1 %483, label %484, label %485, !prof !46, !nosanitize !45

484:                                              ; preds = %478
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

485:                                              ; preds = %478
  %486 = extractvalue { i64, i1 } %482, 0, !nosanitize !45
  %487 = load i32, ptr %90, align 4, !tbaa !73
  %488 = zext i32 %487 to i64
  %489 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %486, i64 %488), !nosanitize !45
  %490 = extractvalue { i64, i1 } %489, 1, !nosanitize !45
  br i1 %490, label %491, label %492, !prof !46, !nosanitize !45

491:                                              ; preds = %485
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

492:                                              ; preds = %485
  %493 = extractvalue { i64, i1 } %489, 0, !nosanitize !45
  %494 = trunc i64 %493 to i32
  %495 = load i32, ptr %81, align 8, !tbaa !32
  %496 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %495, i32 262), !nosanitize !45
  %497 = extractvalue { i32, i1 } %496, 1, !nosanitize !45
  br i1 %497, label %498, label %499, !prof !46, !nosanitize !45

498:                                              ; preds = %492
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

499:                                              ; preds = %492
  %500 = extractvalue { i32, i1 } %496, 0, !nosanitize !45
  %501 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %476, i32 %500), !nosanitize !45
  %502 = extractvalue { i32, i1 } %501, 1, !nosanitize !45
  br i1 %502, label %503, label %504, !prof !46, !nosanitize !45

503:                                              ; preds = %499
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

504:                                              ; preds = %499
  %505 = extractvalue { i32, i1 } %501, 0, !nosanitize !45
  %506 = icmp ult i32 %487, %505
  br i1 %506, label %631, label %507

507:                                              ; preds = %504
  %508 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %476, i32 %494), !nosanitize !45
  %509 = extractvalue { i32, i1 } %508, 1, !nosanitize !45
  br i1 %509, label %510, label %511, !prof !46, !nosanitize !45

510:                                              ; preds = %507
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

511:                                              ; preds = %507
  %512 = extractvalue { i32, i1 } %508, 0, !nosanitize !45
  %513 = load ptr, ptr %92, align 8, !tbaa !34
  %514 = getelementptr inbounds nuw i8, ptr %513, i64 %477
  %515 = zext i32 %512 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %513, ptr align 1 %514, i64 %515, i1 false)
  %516 = load i32, ptr %93, align 8, !tbaa !83
  %517 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %516, i32 %476), !nosanitize !45
  %518 = extractvalue { i32, i1 } %517, 1, !nosanitize !45
  br i1 %518, label %519, label %520, !prof !46, !nosanitize !45

519:                                              ; preds = %511
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

520:                                              ; preds = %511
  %521 = extractvalue { i32, i1 } %517, 0, !nosanitize !45
  store i32 %521, ptr %93, align 8, !tbaa !83
  %522 = load i32, ptr %90, align 4, !tbaa !73
  %523 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %522, i32 %476), !nosanitize !45
  %524 = extractvalue { i32, i1 } %523, 1, !nosanitize !45
  br i1 %524, label %525, label %526, !prof !46, !nosanitize !45

525:                                              ; preds = %520
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

526:                                              ; preds = %520
  %527 = extractvalue { i32, i1 } %523, 0, !nosanitize !45
  store i32 %527, ptr %90, align 4, !tbaa !73
  %528 = load i64, ptr %94, align 8, !tbaa !74
  %529 = sub nsw i64 %528, %477
  store i64 %529, ptr %94, align 8, !tbaa !74
  %530 = load i32, ptr %95, align 4, !tbaa !76
  %531 = icmp ugt i32 %530, %527
  br i1 %531, label %532, label %533

532:                                              ; preds = %526
  store i32 %527, ptr %95, align 4, !tbaa !76
  br label %533

533:                                              ; preds = %532, %526
  %534 = load i32, ptr %81, align 8, !tbaa !32
  %535 = load i32, ptr %96, align 4, !tbaa !36
  %536 = load ptr, ptr %97, align 8, !tbaa !37
  %537 = zext i32 %535 to i64
  %538 = getelementptr inbounds nuw [2 x i8], ptr %536, i64 %537
  %539 = icmp eq i32 %535, 0
  br i1 %539, label %566, label %540, !prof !46, !nosanitize !45

540:                                              ; preds = %533
  %541 = icmp ult i32 %535, 8
  br i1 %541, label %563, label %542

542:                                              ; preds = %540
  %543 = and i64 %537, 4294967288
  %544 = mul nsw i64 %543, -2
  %545 = getelementptr i8, ptr %538, i64 %544
  %546 = trunc nuw i64 %543 to i32
  %547 = sub i32 %535, %546
  %548 = insertelement <8 x i32> poison, i32 %534, i64 0
  %549 = shufflevector <8 x i32> %548, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %550

550:                                              ; preds = %550, %542
  %551 = phi i64 [ 0, %542 ], [ %559, %550 ]
  %552 = mul i64 %551, -2
  %553 = getelementptr i8, ptr %538, i64 %552
  %554 = getelementptr inbounds i8, ptr %553, i64 -16
  %555 = load <8 x i16>, ptr %554, align 2, !tbaa !62
  %556 = zext <8 x i16> %555 to <8 x i32>
  %557 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %556, <8 x i32> %549)
  %558 = trunc nuw <8 x i32> %557 to <8 x i16>
  store <8 x i16> %558, ptr %554, align 2, !tbaa !62
  %559 = add nuw i64 %551, 8
  %560 = icmp eq i64 %559, %543
  br i1 %560, label %561, label %550, !llvm.loop !95

561:                                              ; preds = %550
  %562 = icmp eq i64 %543, %537
  br i1 %562, label %582, label %563

563:                                              ; preds = %540, %561
  %564 = phi ptr [ %538, %540 ], [ %545, %561 ]
  %565 = phi i32 [ %535, %540 ], [ %547, %561 ]
  br label %572

566:                                              ; preds = %533
  %567 = getelementptr inbounds i8, ptr %538, i64 -2
  %568 = load i16, ptr %567, align 2, !tbaa !62
  %569 = zext i16 %568 to i32
  %570 = tail call i32 @llvm.usub.sat.i32(i32 %569, i32 %534)
  %571 = trunc nuw i32 %570 to i16
  store i16 %571, ptr %567, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

572:                                              ; preds = %563, %572
  %573 = phi ptr [ %575, %572 ], [ %564, %563 ]
  %574 = phi i32 [ %580, %572 ], [ %565, %563 ]
  %575 = getelementptr inbounds i8, ptr %573, i64 -2
  %576 = load i16, ptr %575, align 2, !tbaa !62
  %577 = zext i16 %576 to i32
  %578 = tail call i32 @llvm.usub.sat.i32(i32 %577, i32 %534)
  %579 = trunc nuw i32 %578 to i16
  store i16 %579, ptr %575, align 2, !tbaa !62
  %580 = add i32 %574, -1
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %582, label %572, !llvm.loop !96

582:                                              ; preds = %572, %561
  %583 = icmp eq i32 %534, 0
  br i1 %583, label %584, label %585, !prof !46, !nosanitize !45

584:                                              ; preds = %582
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

585:                                              ; preds = %582
  %586 = load ptr, ptr %98, align 8, !tbaa !35
  %587 = zext i32 %534 to i64
  %588 = getelementptr inbounds nuw [2 x i8], ptr %586, i64 %587
  %589 = icmp ult i32 %534, 8
  br i1 %589, label %611, label %590

590:                                              ; preds = %585
  %591 = and i64 %587, 4294967288
  %592 = mul nsw i64 %591, -2
  %593 = getelementptr i8, ptr %588, i64 %592
  %594 = trunc nuw i64 %591 to i32
  %595 = sub i32 %534, %594
  %596 = insertelement <8 x i32> poison, i32 %534, i64 0
  %597 = shufflevector <8 x i32> %596, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %598

598:                                              ; preds = %598, %590
  %599 = phi i64 [ 0, %590 ], [ %607, %598 ]
  %600 = mul i64 %599, -2
  %601 = getelementptr i8, ptr %588, i64 %600
  %602 = getelementptr inbounds i8, ptr %601, i64 -16
  %603 = load <8 x i16>, ptr %602, align 2, !tbaa !62
  %604 = zext <8 x i16> %603 to <8 x i32>
  %605 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %604, <8 x i32> %597)
  %606 = trunc nuw <8 x i32> %605 to <8 x i16>
  store <8 x i16> %606, ptr %602, align 2, !tbaa !62
  %607 = add nuw i64 %599, 8
  %608 = icmp eq i64 %607, %591
  br i1 %608, label %609, label %598, !llvm.loop !97

609:                                              ; preds = %598
  %610 = icmp eq i64 %591, %587
  br i1 %610, label %624, label %611

611:                                              ; preds = %585, %609
  %612 = phi ptr [ %588, %585 ], [ %593, %609 ]
  %613 = phi i32 [ %534, %585 ], [ %595, %609 ]
  br label %614

614:                                              ; preds = %611, %614
  %615 = phi ptr [ %617, %614 ], [ %612, %611 ]
  %616 = phi i32 [ %622, %614 ], [ %613, %611 ]
  %617 = getelementptr inbounds i8, ptr %615, i64 -2
  %618 = load i16, ptr %617, align 2, !tbaa !62
  %619 = zext i16 %618 to i32
  %620 = tail call i32 @llvm.usub.sat.i32(i32 %619, i32 %534)
  %621 = trunc nuw i32 %620 to i16
  store i16 %621, ptr %617, align 2, !tbaa !62
  %622 = add i32 %616, -1
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %624, label %614, !llvm.loop !98

624:                                              ; preds = %614, %609
  store i32 1, ptr %99, align 8, !tbaa !63
  %625 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %494, i32 %476), !nosanitize !45
  %626 = extractvalue { i32, i1 } %625, 1, !nosanitize !45
  br i1 %626, label %627, label %628, !prof !46, !nosanitize !45

627:                                              ; preds = %624
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

628:                                              ; preds = %624
  %629 = extractvalue { i32, i1 } %625, 0, !nosanitize !45
  %630 = load i32, ptr %82, align 4, !tbaa !75
  br label %631

631:                                              ; preds = %628, %504
  %632 = phi i32 [ %630, %628 ], [ %479, %504 ]
  %633 = phi i32 [ %527, %628 ], [ %487, %504 ]
  %634 = phi i32 [ %629, %628 ], [ %494, %504 ]
  %635 = load ptr, ptr %15, align 8, !tbaa !20
  %636 = getelementptr inbounds nuw i8, ptr %635, i64 8
  %637 = load i32, ptr %636, align 8, !tbaa !81
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %762, label %639

639:                                              ; preds = %631
  %640 = load ptr, ptr %92, align 8, !tbaa !34
  %641 = zext i32 %633 to i64
  %642 = getelementptr inbounds nuw i8, ptr %640, i64 %641
  %643 = zext i32 %632 to i64
  %644 = getelementptr inbounds nuw i8, ptr %642, i64 %643
  %645 = tail call i32 @llvm.umin.i32(i32 %637, i32 %634)
  %646 = icmp eq i32 %634, 0
  br i1 %646, label %678, label %647

647:                                              ; preds = %639
  %648 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %637, i32 %645), !nosanitize !45
  %649 = extractvalue { i32, i1 } %648, 1, !nosanitize !45
  br i1 %649, label %650, label %651, !prof !46, !nosanitize !45

650:                                              ; preds = %647
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

651:                                              ; preds = %647
  %652 = extractvalue { i32, i1 } %648, 0, !nosanitize !45
  store i32 %652, ptr %636, align 8, !tbaa !81
  %653 = load ptr, ptr %635, align 8, !tbaa !82
  %654 = zext i32 %645 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %644, ptr align 1 %653, i64 %654, i1 false)
  %655 = getelementptr inbounds nuw i8, ptr %635, i64 56
  %656 = load ptr, ptr %655, align 8, !tbaa !19
  %657 = getelementptr inbounds nuw i8, ptr %656, i64 48
  %658 = load i32, ptr %657, align 8, !tbaa !30
  switch i32 %658, label %667 [
    i32 1, label %659
    i32 2, label %663
  ]

659:                                              ; preds = %651
  %660 = getelementptr inbounds nuw i8, ptr %635, i64 96
  %661 = load i64, ptr %660, align 8, !tbaa !59
  %662 = tail call i64 @adler32(i64 noundef %661, ptr noundef %644, i32 noundef %645) #12
  store i64 %662, ptr %660, align 8, !tbaa !59
  br label %667

663:                                              ; preds = %651
  %664 = getelementptr inbounds nuw i8, ptr %635, i64 96
  %665 = load i64, ptr %664, align 8, !tbaa !59
  %666 = tail call i64 @crc32(i64 noundef %665, ptr noundef %644, i32 noundef %645) #12
  store i64 %666, ptr %664, align 8, !tbaa !59
  br label %667

667:                                              ; preds = %663, %659, %651
  %668 = load ptr, ptr %635, align 8, !tbaa !82
  %669 = getelementptr inbounds nuw i8, ptr %668, i64 %654
  store ptr %669, ptr %635, align 8, !tbaa !82
  %670 = getelementptr inbounds nuw i8, ptr %635, i64 16
  %671 = load i64, ptr %670, align 8, !tbaa !55
  %672 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %671, i64 %654), !nosanitize !45
  %673 = extractvalue { i64, i1 } %672, 1, !nosanitize !45
  br i1 %673, label %674, label %675, !prof !46, !nosanitize !45

674:                                              ; preds = %667
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

675:                                              ; preds = %667
  %676 = extractvalue { i64, i1 } %672, 0, !nosanitize !45
  store i64 %676, ptr %670, align 8, !tbaa !55
  %677 = load i32, ptr %82, align 4, !tbaa !75
  br label %678

678:                                              ; preds = %675, %639
  %679 = phi i32 [ %632, %639 ], [ %677, %675 ]
  %680 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %679, i32 %645), !nosanitize !45
  %681 = extractvalue { i32, i1 } %680, 1, !nosanitize !45
  br i1 %681, label %682, label %683, !prof !46, !nosanitize !45

682:                                              ; preds = %678
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

683:                                              ; preds = %678
  %684 = extractvalue { i32, i1 } %680, 0, !nosanitize !45
  store i32 %684, ptr %82, align 4, !tbaa !75
  %685 = load i32, ptr %95, align 4, !tbaa !76
  %686 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %684, i32 %685), !nosanitize !45
  %687 = extractvalue { i32, i1 } %686, 1, !nosanitize !45
  br i1 %687, label %688, label %689, !prof !46, !nosanitize !45

688:                                              ; preds = %683
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

689:                                              ; preds = %683
  %690 = extractvalue { i32, i1 } %686, 0, !nosanitize !45
  %691 = icmp ugt i32 %690, 2
  br i1 %691, label %692, label %755

692:                                              ; preds = %689
  %693 = load i32, ptr %90, align 4, !tbaa !73
  %694 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %693, i32 %685), !nosanitize !45
  %695 = extractvalue { i32, i1 } %694, 0, !nosanitize !45
  %696 = extractvalue { i32, i1 } %694, 1, !nosanitize !45
  br i1 %696, label %697, label %698, !prof !46, !nosanitize !45

697:                                              ; preds = %692
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

698:                                              ; preds = %692
  %699 = load ptr, ptr %92, align 8, !tbaa !34
  %700 = zext i32 %695 to i64
  %701 = getelementptr inbounds nuw i8, ptr %699, i64 %700
  %702 = load i8, ptr %701, align 1, !tbaa !8
  %703 = zext i8 %702 to i32
  store i32 %703, ptr %100, align 8, !tbaa !80
  %704 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %695, i32 1), !nosanitize !45
  %705 = extractvalue { i32, i1 } %704, 1, !nosanitize !45
  br i1 %705, label %706, label %707, !prof !46, !nosanitize !45

706:                                              ; preds = %698
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

707:                                              ; preds = %698
  %708 = extractvalue { i32, i1 } %704, 0, !nosanitize !45
  %709 = load i32, ptr %101, align 8, !tbaa !53
  %710 = shl i32 %703, %709
  %711 = zext i32 %708 to i64
  %712 = getelementptr inbounds nuw i8, ptr %699, i64 %711
  %713 = load i8, ptr %712, align 1, !tbaa !8
  %714 = zext i8 %713 to i32
  %715 = xor i32 %710, %714
  %716 = load i32, ptr %102, align 4, !tbaa !52
  %717 = and i32 %715, %716
  store i32 %717, ptr %100, align 8, !tbaa !80
  br label %718

718:                                              ; preds = %751, %707
  %719 = phi i32 [ %717, %707 ], [ %736, %751 ]
  %720 = phi i32 [ %685, %707 ], [ %747, %751 ]
  %721 = phi i32 [ %695, %707 ], [ %752, %751 ]
  %722 = icmp eq i32 %720, 0
  br i1 %722, label %755, label %723

723:                                              ; preds = %718
  %724 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %721, i32 3), !nosanitize !45
  %725 = extractvalue { i32, i1 } %724, 1, !nosanitize !45
  br i1 %725, label %726, label %727, !prof !46, !nosanitize !45

726:                                              ; preds = %723
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

727:                                              ; preds = %723
  %728 = shl i32 %719, %709
  %729 = extractvalue { i32, i1 } %724, 0, !nosanitize !45
  %730 = add i32 %729, -1
  %731 = zext i32 %730 to i64
  %732 = getelementptr inbounds nuw i8, ptr %699, i64 %731
  %733 = load i8, ptr %732, align 1, !tbaa !8
  %734 = zext i8 %733 to i32
  %735 = xor i32 %728, %734
  %736 = and i32 %735, %716
  store i32 %736, ptr %100, align 8, !tbaa !80
  %737 = load ptr, ptr %97, align 8, !tbaa !37
  %738 = zext i32 %736 to i64
  %739 = getelementptr inbounds nuw [2 x i8], ptr %737, i64 %738
  %740 = load i16, ptr %739, align 2, !tbaa !62
  %741 = load ptr, ptr %98, align 8, !tbaa !35
  %742 = load i32, ptr %103, align 8, !tbaa !33
  %743 = and i32 %742, %721
  %744 = zext i32 %743 to i64
  %745 = getelementptr inbounds nuw [2 x i8], ptr %741, i64 %744
  store i16 %740, ptr %745, align 2, !tbaa !62
  %746 = trunc i32 %721 to i16
  store i16 %746, ptr %739, align 2, !tbaa !62
  %747 = add i32 %720, -1
  store i32 %747, ptr %95, align 4, !tbaa !76
  %748 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %684, i32 %747), !nosanitize !45
  %749 = extractvalue { i32, i1 } %748, 1, !nosanitize !45
  br i1 %749, label %750, label %751, !prof !46, !nosanitize !45

750:                                              ; preds = %727
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

751:                                              ; preds = %727
  %752 = add nuw i32 %721, 1
  %753 = extractvalue { i32, i1 } %748, 0, !nosanitize !45
  %754 = icmp ult i32 %753, 3
  br i1 %754, label %755, label %718, !llvm.loop !91

755:                                              ; preds = %751, %718, %689
  %756 = icmp ult i32 %684, 262
  br i1 %756, label %757, label %762

757:                                              ; preds = %755
  %758 = load ptr, ptr %15, align 8, !tbaa !20
  %759 = getelementptr inbounds nuw i8, ptr %758, i64 8
  %760 = load i32, ptr %759, align 8, !tbaa !81
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %762, label %478, !llvm.loop !92

762:                                              ; preds = %757, %755, %631
  %763 = phi i32 [ %684, %757 ], [ %684, %755 ], [ %632, %631 ]
  %764 = load i64, ptr %391, align 8, !tbaa !38
  %765 = load i64, ptr %89, align 8, !tbaa !61
  %766 = icmp ult i64 %764, %765
  br i1 %766, label %767, label %806

767:                                              ; preds = %762
  %768 = load i32, ptr %90, align 4, !tbaa !73
  %769 = zext i32 %768 to i64
  %770 = zext i32 %763 to i64
  %771 = add nuw nsw i64 %770, %769
  %772 = icmp ult i64 %764, %771
  br i1 %772, label %773, label %783

773:                                              ; preds = %767
  %774 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %765, i64 %771), !nosanitize !45
  %775 = extractvalue { i64, i1 } %774, 1, !nosanitize !45
  br i1 %775, label %776, label %777, !prof !46, !nosanitize !45

776:                                              ; preds = %773
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

777:                                              ; preds = %773
  %778 = extractvalue { i64, i1 } %774, 0, !nosanitize !45
  %779 = tail call i64 @llvm.umin.i64(i64 %778, i64 258)
  %780 = load ptr, ptr %92, align 8, !tbaa !34
  %781 = getelementptr inbounds nuw i8, ptr %780, i64 %771
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %781, i8 0, i64 %779, i1 false)
  %782 = add nuw nsw i64 %779, %771
  br label %803

783:                                              ; preds = %767
  %784 = add nuw nsw i64 %771, 258
  %785 = icmp ult i64 %764, %784
  br i1 %785, label %786, label %806

786:                                              ; preds = %783
  %787 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %765, i64 %764), !nosanitize !45
  %788 = extractvalue { i64, i1 } %787, 1, !nosanitize !45
  br i1 %788, label %789, label %790, !prof !46, !nosanitize !45

789:                                              ; preds = %786
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

790:                                              ; preds = %786
  %791 = sub nuw nsw i64 %784, %764
  %792 = extractvalue { i64, i1 } %787, 0, !nosanitize !45
  %793 = tail call i64 @llvm.umin.i64(i64 %791, i64 %792)
  %794 = load ptr, ptr %92, align 8, !tbaa !34
  %795 = getelementptr inbounds nuw i8, ptr %794, i64 %764
  %796 = and i64 %793, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %795, i8 0, i64 %796, i1 false)
  %797 = load i64, ptr %391, align 8, !tbaa !38
  %798 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %797, i64 %793), !nosanitize !45
  %799 = extractvalue { i64, i1 } %798, 1, !nosanitize !45
  br i1 %799, label %800, label %801, !prof !46, !nosanitize !45

800:                                              ; preds = %790
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

801:                                              ; preds = %790
  %802 = extractvalue { i64, i1 } %798, 0, !nosanitize !45
  br label %803

803:                                              ; preds = %801, %777
  %804 = phi i64 [ %782, %777 ], [ %802, %801 ]
  store i64 %804, ptr %391, align 8, !tbaa !38
  %805 = load i32, ptr %82, align 4, !tbaa !75
  br label %806

806:                                              ; preds = %762, %783, %803
  %807 = phi i32 [ %763, %762 ], [ %763, %783 ], [ %805, %803 ]
  %808 = icmp ugt i32 %807, 2
  br i1 %808, label %437, label %809, !llvm.loop !99

809:                                              ; preds = %806, %434
  %810 = phi i32 [ %435, %434 ], [ %807, %806 ]
  %811 = load i32, ptr %90, align 4, !tbaa !73
  %812 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %811, i32 %810), !nosanitize !45
  %813 = extractvalue { i32, i1 } %812, 1, !nosanitize !45
  br i1 %813, label %814, label %815, !prof !46, !nosanitize !45

814:                                              ; preds = %809
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

815:                                              ; preds = %809
  %816 = extractvalue { i32, i1 } %812, 0, !nosanitize !45
  store i32 %816, ptr %90, align 4, !tbaa !73
  %817 = zext i32 %816 to i64
  store i64 %817, ptr %94, align 8, !tbaa !74
  store i32 %810, ptr %95, align 4, !tbaa !76
  store i32 0, ptr %82, align 4, !tbaa !75
  %818 = getelementptr inbounds nuw i8, ptr %15, i64 184
  store i32 2, ptr %818, align 8, !tbaa !77
  %819 = getelementptr inbounds nuw i8, ptr %15, i64 160
  store i32 2, ptr %819, align 8, !tbaa !78
  %820 = getelementptr inbounds nuw i8, ptr %15, i64 168
  store i32 0, ptr %820, align 8, !tbaa !79
  store ptr %88, ptr %0, align 8, !tbaa !82
  store i32 %87, ptr %86, align 8, !tbaa !81
  store i32 %27, ptr %26, align 8, !tbaa !30
  br label %821

821:                                              ; preds = %25, %13, %17, %20, %5, %9, %3, %34, %28, %30, %23, %815
  %822 = phi i32 [ 0, %815 ], [ -2, %23 ], [ -2, %30 ], [ -2, %28 ], [ -2, %25 ], [ -2, %34 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %822
}

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateGetDictionary(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #5 {
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
  %24 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %25 = load i32, ptr %24, align 4, !tbaa !73
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %27 = load i32, ptr %26, align 4, !tbaa !75
  %28 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %25, i32 %27), !nosanitize !45
  %29 = extractvalue { i32, i1 } %28, 1, !nosanitize !45
  br i1 %29, label %30, label %31, !prof !46, !nosanitize !45

30:                                               ; preds = %23
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

31:                                               ; preds = %23
  %32 = extractvalue { i32, i1 } %28, 0, !nosanitize !45
  %33 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %34 = load i32, ptr %33, align 8, !tbaa !32
  %35 = tail call i32 @llvm.umin.i32(i32 %32, i32 %34)
  %36 = icmp ne ptr %1, null
  %37 = icmp ne i32 %35, 0
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %31
  %40 = getelementptr inbounds nuw i8, ptr %15, i64 96
  %41 = load ptr, ptr %40, align 8, !tbaa !34
  %42 = zext i32 %25 to i64
  %43 = getelementptr inbounds nuw i8, ptr %41, i64 %42
  %44 = zext i32 %27 to i64
  %45 = getelementptr inbounds nuw i8, ptr %43, i64 %44
  %46 = zext i32 %35 to i64
  %47 = sub nsw i64 0, %46
  %48 = getelementptr inbounds i8, ptr %45, i64 %47
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %48, i64 %46, i1 false)
  br label %49

49:                                               ; preds = %39, %31
  %50 = icmp eq ptr %2, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  store i32 %35, ptr %2, align 4, !tbaa !4
  br label %52

52:                                               ; preds = %13, %17, %20, %5, %9, %3, %49, %51
  %53 = phi i32 [ 0, %49 ], [ 0, %51 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %53
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

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
  store i64 0, ptr %23, align 8, !tbaa !55
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  store i32 2, ptr %24, align 8, !tbaa !56
  %25 = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 0, ptr %25, align 8, !tbaa !57
  %26 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %27 = load ptr, ptr %26, align 8, !tbaa !40
  %28 = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %27, ptr %28, align 8, !tbaa !58
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
  %39 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  br label %42

40:                                               ; preds = %34
  %41 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i64 [ %39, %38 ], [ %41, %40 ]
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %43, ptr %44, align 8, !tbaa !59
  %45 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %45, align 4, !tbaa !60
  tail call void @_tr_init(ptr noundef nonnull %13) #12
  br label %46

46:                                               ; preds = %11, %15, %18, %3, %7, %1, %42
  %47 = phi i32 [ 0, %42 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %47
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_tr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateSetHeader(ptr noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #7 {
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
  store ptr %1, ptr %27, align 8, !tbaa !100
  br label %28

28:                                               ; preds = %12, %16, %19, %4, %8, %2, %22, %26
  %29 = phi i32 [ 0, %26 ], [ -2, %22 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -5, 1) i32 @deflatePending(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #8 {
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
  %27 = load i32, ptr %26, align 4, !tbaa !101
  store i32 %27, ptr %2, align 4, !tbaa !4
  br label %28

28:                                               ; preds = %25, %23
  %29 = icmp eq ptr %1, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %32 = load i64, ptr %31, align 8, !tbaa !57
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
define dso_local range(i32 -2, 1) i32 @deflateUsed(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #8 {
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
  %26 = load i32, ptr %25, align 8, !tbaa !102
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
  %29 = load ptr, ptr %28, align 8, !tbaa !58
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
  %38 = load i32, ptr %33, align 4, !tbaa !101
  %39 = sub nsw i32 16, %38
  %40 = tail call i32 @llvm.smin.i32(i32 %39, i32 %36)
  %41 = shl nsw i32 -1, %40
  %42 = xor i32 %41, -1
  %43 = and i32 %37, %42
  %44 = shl i32 %43, %38
  %45 = load i16, ptr %34, align 8, !tbaa !103
  %46 = trunc i32 %44 to i16
  %47 = or i16 %45, %46
  store i16 %47, ptr %34, align 8, !tbaa !103
  %48 = add nsw i32 %40, %38
  store i32 %48, ptr %33, align 4, !tbaa !101
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #12
  %49 = ashr i32 %37, %40
  %50 = sub nsw i32 %36, %40
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %35, !llvm.loop !104

52:                                               ; preds = %35, %13, %17, %20, %5, %9, %3, %23, %25
  %53 = phi i32 [ -5, %23 ], [ -2, %13 ], [ -5, %25 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ 0, %35 ]
  ret i32 %53
}

declare void @_tr_flush_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflateParams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %1089, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %1089, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %1089, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %1089, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %1089

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %1089 [
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
  br i1 %28, label %1089, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds nuw i8, ptr %15, i64 196
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 200
  %32 = load i32, ptr %31, align 8, !tbaa !49
  %33 = icmp eq i32 %2, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load i32, ptr %30, align 4, !tbaa !48
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 8
  %39 = load ptr, ptr %38, align 8, !tbaa !105
  %40 = zext nneg i32 %25 to i64
  %41 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %40
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %43 = load ptr, ptr %42, align 8, !tbaa !105
  %44 = icmp eq ptr %39, %43
  br i1 %44, label %1046, label %45

45:                                               ; preds = %34, %29
  %46 = getelementptr inbounds nuw i8, ptr %15, i64 76
  %47 = load i32, ptr %46, align 4, !tbaa !60
  %48 = icmp eq i32 %47, -2
  br i1 %48, label %1046, label %49

49:                                               ; preds = %45
  switch i32 %22, label %1089 [
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
  %52 = load ptr, ptr %51, align 8, !tbaa !106
  %53 = icmp eq ptr %52, null
  br i1 %53, label %65, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %56 = load i32, ptr %55, align 8, !tbaa !81
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %0, align 8, !tbaa !82
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
  br label %1089

68:                                               ; preds = %58, %63
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %70 = load i32, ptr %69, align 8, !tbaa !107
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %73, ptr %74, align 8, !tbaa !9
  br label %1031

75:                                               ; preds = %68
  store i32 5, ptr %46, align 4, !tbaa !60
  %76 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %77 = load i64, ptr %76, align 8, !tbaa !57
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %124, label %79

79:                                               ; preds = %75
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #12
  %80 = load i64, ptr %76, align 8, !tbaa !57
  %81 = load i32, ptr %69, align 8, !tbaa !107
  %82 = zext i32 %81 to i64
  %83 = tail call i64 @llvm.umin.i64(i64 %80, i64 %82)
  %84 = trunc nuw i64 %83 to i32
  %85 = icmp eq i64 %83, 0
  br i1 %85, label %117, label %86

86:                                               ; preds = %79
  %87 = load ptr, ptr %51, align 8, !tbaa !106
  %88 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %89 = load ptr, ptr %88, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %87, ptr align 1 %89, i64 %83, i1 false)
  %90 = load ptr, ptr %51, align 8, !tbaa !106
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 %83
  store ptr %91, ptr %51, align 8, !tbaa !106
  %92 = load ptr, ptr %88, align 8, !tbaa !58
  %93 = getelementptr inbounds nuw i8, ptr %92, i64 %83
  store ptr %93, ptr %88, align 8, !tbaa !58
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %95 = load i64, ptr %94, align 8, !tbaa !108
  %96 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %95, i64 %83), !nosanitize !45
  %97 = extractvalue { i64, i1 } %96, 1, !nosanitize !45
  br i1 %97, label %98, label %99, !prof !46, !nosanitize !45

98:                                               ; preds = %86
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

99:                                               ; preds = %86
  %100 = extractvalue { i64, i1 } %96, 0, !nosanitize !45
  store i64 %100, ptr %94, align 8, !tbaa !108
  %101 = load i32, ptr %69, align 8, !tbaa !107
  %102 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %101, i32 %84), !nosanitize !45
  %103 = extractvalue { i32, i1 } %102, 1, !nosanitize !45
  br i1 %103, label %104, label %105, !prof !46, !nosanitize !45

104:                                              ; preds = %99
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

105:                                              ; preds = %99
  %106 = extractvalue { i32, i1 } %102, 0, !nosanitize !45
  store i32 %106, ptr %69, align 8, !tbaa !107
  %107 = load i64, ptr %76, align 8, !tbaa !57
  %108 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %107, i64 %83), !nosanitize !45
  %109 = extractvalue { i64, i1 } %108, 1, !nosanitize !45
  br i1 %109, label %110, label %111, !prof !46, !nosanitize !45

110:                                              ; preds = %105
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

111:                                              ; preds = %105
  %112 = extractvalue { i64, i1 } %108, 0, !nosanitize !45
  store i64 %112, ptr %76, align 8, !tbaa !57
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %116 = load ptr, ptr %115, align 8, !tbaa !40
  store ptr %116, ptr %88, align 8, !tbaa !58
  br label %117

117:                                              ; preds = %114, %111, %79
  %118 = phi i64 [ %80, %79 ], [ 0, %114 ], [ %112, %111 ]
  %119 = phi i32 [ %81, %79 ], [ %106, %114 ], [ %106, %111 ]
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %117
  %122 = load i32, ptr %21, align 8, !tbaa !29
  br label %134

123:                                              ; preds = %117
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1031

124:                                              ; preds = %75
  br i1 %57, label %125, label %134

125:                                              ; preds = %124
  %126 = shl nsw i32 %47, 1
  %127 = icmp sgt i32 %47, 4
  %128 = select i1 %127, i32 -9, i32 0
  %129 = add i32 %128, %126
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %132, ptr %133, align 8, !tbaa !9
  br label %1031

134:                                              ; preds = %125, %124, %121
  %135 = phi i64 [ %118, %121 ], [ 0, %124 ], [ 0, %125 ]
  %136 = phi i32 [ %122, %121 ], [ %22, %124 ], [ %22, %125 ]
  switch i32 %136, label %250 [
    i32 666, label %137
    i32 42, label %143
  ]

137:                                              ; preds = %134
  %138 = load i32, ptr %55, align 8, !tbaa !81
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %989, label %140

140:                                              ; preds = %137
  %141 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %141, ptr %142, align 8, !tbaa !9
  br label %1031

143:                                              ; preds = %134
  %144 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %145 = load i32, ptr %144, align 8, !tbaa !30
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  store i32 113, ptr %21, align 8, !tbaa !29
  br label %986

148:                                              ; preds = %143
  %149 = getelementptr inbounds nuw i8, ptr %15, i64 84
  %150 = load i32, ptr %149, align 4, !tbaa !31
  %151 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %150, i32 8), !nosanitize !45
  %152 = extractvalue { i32, i1 } %151, 1, !nosanitize !45
  br i1 %152, label %153, label %154, !prof !46, !nosanitize !45

153:                                              ; preds = %148
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

154:                                              ; preds = %148
  %155 = extractvalue { i32, i1 } %151, 0, !nosanitize !45
  %156 = shl i32 %155, 12
  %157 = load i32, ptr %31, align 8, !tbaa !49
  %158 = icmp sgt i32 %157, 1
  br i1 %158, label %167, label %159

159:                                              ; preds = %154
  %160 = load i32, ptr %30, align 4, !tbaa !48
  %161 = icmp slt i32 %160, 2
  br i1 %161, label %167, label %162

162:                                              ; preds = %159
  %163 = icmp samesign ult i32 %160, 6
  br i1 %163, label %167, label %164

164:                                              ; preds = %162
  %165 = icmp eq i32 %160, 6
  %166 = select i1 %165, i32 128, i32 192
  br label %167

167:                                              ; preds = %164, %162, %159, %154
  %168 = phi i32 [ 64, %162 ], [ 0, %154 ], [ %166, %164 ], [ 0, %159 ]
  %169 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %170 = or disjoint i32 %168, %156
  %171 = load i32, ptr %169, align 4, !tbaa !73
  %172 = icmp eq i32 %171, 0
  %173 = select i1 %172, i32 2048, i32 2080
  %174 = or disjoint i32 %173, %170
  %175 = urem i32 %174, 31
  %176 = or disjoint i32 %175, %174
  %177 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %135, i64 1), !nosanitize !45
  %178 = extractvalue { i64, i1 } %177, 1, !nosanitize !45
  br i1 %178, label %179, label %180, !prof !46, !nosanitize !45

179:                                              ; preds = %167
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

180:                                              ; preds = %167
  %181 = extractvalue { i64, i1 } %177, 0, !nosanitize !45
  %182 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %183 = load ptr, ptr %182, align 8, !tbaa !40
  %184 = lshr i32 %174, 8
  %185 = trunc i32 %184 to i8
  store i64 %181, ptr %76, align 8, !tbaa !57
  %186 = getelementptr inbounds nuw i8, ptr %183, i64 %135
  store i8 %185, ptr %186, align 1, !tbaa !8
  %187 = load i64, ptr %76, align 8, !tbaa !57
  %188 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %187, i64 1), !nosanitize !45
  %189 = extractvalue { i64, i1 } %188, 1, !nosanitize !45
  br i1 %189, label %190, label %191, !prof !46, !nosanitize !45

190:                                              ; preds = %180
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

191:                                              ; preds = %180
  %192 = extractvalue { i64, i1 } %188, 0, !nosanitize !45
  %193 = load ptr, ptr %182, align 8, !tbaa !40
  %194 = trunc i32 %176 to i8
  %195 = xor i8 %194, 31
  store i64 %192, ptr %76, align 8, !tbaa !57
  %196 = getelementptr inbounds nuw i8, ptr %193, i64 %187
  store i8 %195, ptr %196, align 1, !tbaa !8
  %197 = load i32, ptr %169, align 4, !tbaa !73
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %242, label %199

199:                                              ; preds = %191
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %201 = load i64, ptr %200, align 8, !tbaa !59
  %202 = lshr i64 %201, 16
  %203 = load i64, ptr %76, align 8, !tbaa !57
  %204 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %203, i64 1), !nosanitize !45
  %205 = extractvalue { i64, i1 } %204, 1, !nosanitize !45
  br i1 %205, label %206, label %207, !prof !46, !nosanitize !45

206:                                              ; preds = %199
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

207:                                              ; preds = %199
  %208 = extractvalue { i64, i1 } %204, 0, !nosanitize !45
  %209 = load ptr, ptr %182, align 8, !tbaa !40
  %210 = lshr i64 %201, 24
  %211 = trunc i64 %210 to i8
  store i64 %208, ptr %76, align 8, !tbaa !57
  %212 = getelementptr inbounds nuw i8, ptr %209, i64 %203
  store i8 %211, ptr %212, align 1, !tbaa !8
  %213 = load i64, ptr %76, align 8, !tbaa !57
  %214 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %213, i64 1), !nosanitize !45
  %215 = extractvalue { i64, i1 } %214, 1, !nosanitize !45
  br i1 %215, label %216, label %217, !prof !46, !nosanitize !45

216:                                              ; preds = %207
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

217:                                              ; preds = %207
  %218 = extractvalue { i64, i1 } %214, 0, !nosanitize !45
  %219 = load ptr, ptr %182, align 8, !tbaa !40
  %220 = trunc i64 %202 to i8
  store i64 %218, ptr %76, align 8, !tbaa !57
  %221 = getelementptr inbounds nuw i8, ptr %219, i64 %213
  store i8 %220, ptr %221, align 1, !tbaa !8
  %222 = load i64, ptr %200, align 8, !tbaa !59
  %223 = trunc i64 %222 to i8
  %224 = load i64, ptr %76, align 8, !tbaa !57
  %225 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %224, i64 1), !nosanitize !45
  %226 = extractvalue { i64, i1 } %225, 1, !nosanitize !45
  br i1 %226, label %227, label %228, !prof !46, !nosanitize !45

227:                                              ; preds = %217
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

228:                                              ; preds = %217
  %229 = extractvalue { i64, i1 } %225, 0, !nosanitize !45
  %230 = load ptr, ptr %182, align 8, !tbaa !40
  %231 = lshr i64 %222, 8
  %232 = trunc i64 %231 to i8
  store i64 %229, ptr %76, align 8, !tbaa !57
  %233 = getelementptr inbounds nuw i8, ptr %230, i64 %224
  store i8 %232, ptr %233, align 1, !tbaa !8
  %234 = load i64, ptr %76, align 8, !tbaa !57
  %235 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %234, i64 1), !nosanitize !45
  %236 = extractvalue { i64, i1 } %235, 1, !nosanitize !45
  br i1 %236, label %237, label %238, !prof !46, !nosanitize !45

237:                                              ; preds = %228
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

238:                                              ; preds = %228
  %239 = extractvalue { i64, i1 } %235, 0, !nosanitize !45
  %240 = load ptr, ptr %182, align 8, !tbaa !40
  store i64 %239, ptr %76, align 8, !tbaa !57
  %241 = getelementptr inbounds nuw i8, ptr %240, i64 %234
  store i8 %223, ptr %241, align 1, !tbaa !8
  br label %242

242:                                              ; preds = %238, %191
  %243 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  %244 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %243, ptr %244, align 8, !tbaa !59
  store i32 113, ptr %21, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %245 = load i64, ptr %76, align 8, !tbaa !57
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %242
  %248 = load i32, ptr %21, align 8, !tbaa !29
  br label %250

249:                                              ; preds = %242
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1031

250:                                              ; preds = %247, %134
  %251 = phi i32 [ %248, %247 ], [ %136, %134 ]
  %252 = icmp eq i32 %251, 57
  br i1 %252, label %253, label %508

253:                                              ; preds = %250
  %254 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  %255 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %254, ptr %255, align 8, !tbaa !59
  %256 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %257 = load i64, ptr %76, align 8, !tbaa !57
  %258 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %257, i64 1), !nosanitize !45
  %259 = extractvalue { i64, i1 } %258, 1, !nosanitize !45
  br i1 %259, label %260, label %261, !prof !46, !nosanitize !45

260:                                              ; preds = %253
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

261:                                              ; preds = %253
  %262 = extractvalue { i64, i1 } %258, 0, !nosanitize !45
  %263 = load ptr, ptr %256, align 8, !tbaa !40
  store i64 %262, ptr %76, align 8, !tbaa !57
  %264 = getelementptr inbounds nuw i8, ptr %263, i64 %257
  store i8 31, ptr %264, align 1, !tbaa !8
  %265 = load i64, ptr %76, align 8, !tbaa !57
  %266 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %265, i64 1), !nosanitize !45
  %267 = extractvalue { i64, i1 } %266, 1, !nosanitize !45
  br i1 %267, label %268, label %269, !prof !46, !nosanitize !45

268:                                              ; preds = %261
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

269:                                              ; preds = %261
  %270 = extractvalue { i64, i1 } %266, 0, !nosanitize !45
  %271 = load ptr, ptr %256, align 8, !tbaa !40
  store i64 %270, ptr %76, align 8, !tbaa !57
  %272 = getelementptr inbounds nuw i8, ptr %271, i64 %265
  store i8 -117, ptr %272, align 1, !tbaa !8
  %273 = load i64, ptr %76, align 8, !tbaa !57
  %274 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %273, i64 1), !nosanitize !45
  %275 = extractvalue { i64, i1 } %274, 1, !nosanitize !45
  br i1 %275, label %276, label %277, !prof !46, !nosanitize !45

276:                                              ; preds = %269
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

277:                                              ; preds = %269
  %278 = extractvalue { i64, i1 } %274, 0, !nosanitize !45
  %279 = load ptr, ptr %256, align 8, !tbaa !40
  store i64 %278, ptr %76, align 8, !tbaa !57
  %280 = getelementptr inbounds nuw i8, ptr %279, i64 %273
  store i8 8, ptr %280, align 1, !tbaa !8
  %281 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %282 = load ptr, ptr %281, align 8, !tbaa !100
  %283 = icmp eq ptr %282, null
  %284 = load i64, ptr %76, align 8, !tbaa !57
  %285 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %284, i64 1), !nosanitize !45
  %286 = extractvalue { i64, i1 } %285, 1, !nosanitize !45
  br i1 %283, label %287, label %354

287:                                              ; preds = %277
  br i1 %286, label %288, label %289, !prof !46, !nosanitize !45

288:                                              ; preds = %287
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

289:                                              ; preds = %287
  %290 = extractvalue { i64, i1 } %285, 0, !nosanitize !45
  %291 = load ptr, ptr %256, align 8, !tbaa !40
  store i64 %290, ptr %76, align 8, !tbaa !57
  %292 = getelementptr inbounds nuw i8, ptr %291, i64 %284
  store i8 0, ptr %292, align 1, !tbaa !8
  %293 = load i64, ptr %76, align 8, !tbaa !57
  %294 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %293, i64 1), !nosanitize !45
  %295 = extractvalue { i64, i1 } %294, 1, !nosanitize !45
  br i1 %295, label %296, label %297, !prof !46, !nosanitize !45

296:                                              ; preds = %289
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

297:                                              ; preds = %289
  %298 = extractvalue { i64, i1 } %294, 0, !nosanitize !45
  %299 = load ptr, ptr %256, align 8, !tbaa !40
  store i64 %298, ptr %76, align 8, !tbaa !57
  %300 = getelementptr inbounds nuw i8, ptr %299, i64 %293
  store i8 0, ptr %300, align 1, !tbaa !8
  %301 = load i64, ptr %76, align 8, !tbaa !57
  %302 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %301, i64 1), !nosanitize !45
  %303 = extractvalue { i64, i1 } %302, 1, !nosanitize !45
  br i1 %303, label %304, label %305, !prof !46, !nosanitize !45

304:                                              ; preds = %297
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

305:                                              ; preds = %297
  %306 = extractvalue { i64, i1 } %302, 0, !nosanitize !45
  %307 = load ptr, ptr %256, align 8, !tbaa !40
  store i64 %306, ptr %76, align 8, !tbaa !57
  %308 = getelementptr inbounds nuw i8, ptr %307, i64 %301
  store i8 0, ptr %308, align 1, !tbaa !8
  %309 = load i64, ptr %76, align 8, !tbaa !57
  %310 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %309, i64 1), !nosanitize !45
  %311 = extractvalue { i64, i1 } %310, 1, !nosanitize !45
  br i1 %311, label %312, label %313, !prof !46, !nosanitize !45

312:                                              ; preds = %305
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

313:                                              ; preds = %305
  %314 = extractvalue { i64, i1 } %310, 0, !nosanitize !45
  %315 = load ptr, ptr %256, align 8, !tbaa !40
  store i64 %314, ptr %76, align 8, !tbaa !57
  %316 = getelementptr inbounds nuw i8, ptr %315, i64 %309
  store i8 0, ptr %316, align 1, !tbaa !8
  %317 = load i64, ptr %76, align 8, !tbaa !57
  %318 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %317, i64 1), !nosanitize !45
  %319 = extractvalue { i64, i1 } %318, 1, !nosanitize !45
  br i1 %319, label %320, label %321, !prof !46, !nosanitize !45

320:                                              ; preds = %313
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

321:                                              ; preds = %313
  %322 = extractvalue { i64, i1 } %318, 0, !nosanitize !45
  %323 = load ptr, ptr %256, align 8, !tbaa !40
  store i64 %322, ptr %76, align 8, !tbaa !57
  %324 = getelementptr inbounds nuw i8, ptr %323, i64 %317
  store i8 0, ptr %324, align 1, !tbaa !8
  %325 = load i32, ptr %30, align 4, !tbaa !48
  %326 = icmp eq i32 %325, 9
  br i1 %326, label %333, label %327

327:                                              ; preds = %321
  %328 = load i32, ptr %31, align 8, !tbaa !49
  %329 = icmp sgt i32 %328, 1
  %330 = icmp slt i32 %325, 2
  %331 = or i1 %330, %329
  %332 = select i1 %331, i8 4, i8 0
  br label %333

333:                                              ; preds = %327, %321
  %334 = phi i8 [ %332, %327 ], [ 2, %321 ]
  %335 = load i64, ptr %76, align 8, !tbaa !57
  %336 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %335, i64 1), !nosanitize !45
  %337 = extractvalue { i64, i1 } %336, 1, !nosanitize !45
  br i1 %337, label %338, label %339, !prof !46, !nosanitize !45

338:                                              ; preds = %333
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

339:                                              ; preds = %333
  %340 = extractvalue { i64, i1 } %336, 0, !nosanitize !45
  %341 = load ptr, ptr %256, align 8, !tbaa !40
  store i64 %340, ptr %76, align 8, !tbaa !57
  %342 = getelementptr inbounds nuw i8, ptr %341, i64 %335
  store i8 %334, ptr %342, align 1, !tbaa !8
  %343 = load i64, ptr %76, align 8, !tbaa !57
  %344 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %343, i64 1), !nosanitize !45
  %345 = extractvalue { i64, i1 } %344, 1, !nosanitize !45
  br i1 %345, label %346, label %347, !prof !46, !nosanitize !45

346:                                              ; preds = %339
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

347:                                              ; preds = %339
  %348 = extractvalue { i64, i1 } %344, 0, !nosanitize !45
  %349 = load ptr, ptr %256, align 8, !tbaa !40
  store i64 %348, ptr %76, align 8, !tbaa !57
  %350 = getelementptr inbounds nuw i8, ptr %349, i64 %343
  store i8 3, ptr %350, align 1, !tbaa !8
  store i32 113, ptr %21, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %351 = load i64, ptr %76, align 8, !tbaa !57
  %352 = icmp eq i64 %351, 0
  br i1 %352, label %506, label %353

353:                                              ; preds = %347
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1031

354:                                              ; preds = %277
  br i1 %286, label %355, label %356, !prof !46, !nosanitize !45

355:                                              ; preds = %354
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

356:                                              ; preds = %354
  %357 = extractvalue { i64, i1 } %285, 0, !nosanitize !45
  %358 = load ptr, ptr %256, align 8, !tbaa !40
  %359 = getelementptr inbounds nuw i8, ptr %282, i64 56
  %360 = load ptr, ptr %359, align 8, !tbaa !109
  %361 = icmp eq ptr %360, null
  %362 = getelementptr inbounds nuw i8, ptr %282, i64 40
  %363 = load ptr, ptr %362, align 8, !tbaa !111
  %364 = icmp eq ptr %363, null
  %365 = getelementptr inbounds nuw i8, ptr %282, i64 24
  %366 = load ptr, ptr %365, align 8, !tbaa !112
  %367 = icmp eq ptr %366, null
  %368 = load i32, ptr %282, align 8, !tbaa !113
  %369 = icmp ne i32 %368, 0
  %370 = getelementptr inbounds nuw i8, ptr %282, i64 68
  %371 = load i32, ptr %370, align 4, !tbaa !114
  %372 = icmp eq i32 %371, 0
  %373 = select i1 %372, i8 0, i8 2
  %374 = zext i1 %369 to i8
  %375 = select i1 %367, i8 0, i8 4
  %376 = select i1 %364, i8 0, i8 8
  %377 = select i1 %361, i8 0, i8 16
  %378 = or disjoint i8 %376, %377
  %379 = or disjoint i8 %378, %375
  %380 = or disjoint i8 %379, %374
  %381 = or disjoint i8 %380, %373
  store i64 %357, ptr %76, align 8, !tbaa !57
  %382 = getelementptr inbounds nuw i8, ptr %358, i64 %284
  store i8 %381, ptr %382, align 1, !tbaa !8
  %383 = load i64, ptr %76, align 8, !tbaa !57
  %384 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %383, i64 1), !nosanitize !45
  %385 = extractvalue { i64, i1 } %384, 1, !nosanitize !45
  br i1 %385, label %386, label %387, !prof !46, !nosanitize !45

386:                                              ; preds = %356
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

387:                                              ; preds = %356
  %388 = extractvalue { i64, i1 } %384, 0, !nosanitize !45
  %389 = load ptr, ptr %256, align 8, !tbaa !40
  %390 = load ptr, ptr %281, align 8, !tbaa !100
  %391 = getelementptr inbounds nuw i8, ptr %390, i64 8
  %392 = load i64, ptr %391, align 8, !tbaa !115
  %393 = trunc i64 %392 to i8
  store i64 %388, ptr %76, align 8, !tbaa !57
  %394 = getelementptr inbounds nuw i8, ptr %389, i64 %383
  store i8 %393, ptr %394, align 1, !tbaa !8
  %395 = load i64, ptr %76, align 8, !tbaa !57
  %396 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %395, i64 1), !nosanitize !45
  %397 = extractvalue { i64, i1 } %396, 1, !nosanitize !45
  br i1 %397, label %398, label %399, !prof !46, !nosanitize !45

398:                                              ; preds = %387
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

399:                                              ; preds = %387
  %400 = extractvalue { i64, i1 } %396, 0, !nosanitize !45
  %401 = load ptr, ptr %256, align 8, !tbaa !40
  %402 = load ptr, ptr %281, align 8, !tbaa !100
  %403 = getelementptr inbounds nuw i8, ptr %402, i64 8
  %404 = load i64, ptr %403, align 8, !tbaa !115
  %405 = lshr i64 %404, 8
  %406 = trunc i64 %405 to i8
  store i64 %400, ptr %76, align 8, !tbaa !57
  %407 = getelementptr inbounds nuw i8, ptr %401, i64 %395
  store i8 %406, ptr %407, align 1, !tbaa !8
  %408 = load i64, ptr %76, align 8, !tbaa !57
  %409 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %408, i64 1), !nosanitize !45
  %410 = extractvalue { i64, i1 } %409, 1, !nosanitize !45
  br i1 %410, label %411, label %412, !prof !46, !nosanitize !45

411:                                              ; preds = %399
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

412:                                              ; preds = %399
  %413 = extractvalue { i64, i1 } %409, 0, !nosanitize !45
  %414 = load ptr, ptr %256, align 8, !tbaa !40
  %415 = load ptr, ptr %281, align 8, !tbaa !100
  %416 = getelementptr inbounds nuw i8, ptr %415, i64 8
  %417 = load i64, ptr %416, align 8, !tbaa !115
  %418 = lshr i64 %417, 16
  %419 = trunc i64 %418 to i8
  store i64 %413, ptr %76, align 8, !tbaa !57
  %420 = getelementptr inbounds nuw i8, ptr %414, i64 %408
  store i8 %419, ptr %420, align 1, !tbaa !8
  %421 = load i64, ptr %76, align 8, !tbaa !57
  %422 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %421, i64 1), !nosanitize !45
  %423 = extractvalue { i64, i1 } %422, 1, !nosanitize !45
  br i1 %423, label %424, label %425, !prof !46, !nosanitize !45

424:                                              ; preds = %412
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

425:                                              ; preds = %412
  %426 = extractvalue { i64, i1 } %422, 0, !nosanitize !45
  %427 = load ptr, ptr %256, align 8, !tbaa !40
  %428 = load ptr, ptr %281, align 8, !tbaa !100
  %429 = getelementptr inbounds nuw i8, ptr %428, i64 8
  %430 = load i64, ptr %429, align 8, !tbaa !115
  %431 = lshr i64 %430, 24
  %432 = trunc i64 %431 to i8
  store i64 %426, ptr %76, align 8, !tbaa !57
  %433 = getelementptr inbounds nuw i8, ptr %427, i64 %421
  store i8 %432, ptr %433, align 1, !tbaa !8
  %434 = load i32, ptr %30, align 4, !tbaa !48
  %435 = icmp eq i32 %434, 9
  br i1 %435, label %442, label %436

436:                                              ; preds = %425
  %437 = load i32, ptr %31, align 8, !tbaa !49
  %438 = icmp sgt i32 %437, 1
  %439 = icmp slt i32 %434, 2
  %440 = or i1 %439, %438
  %441 = select i1 %440, i8 4, i8 0
  br label %442

442:                                              ; preds = %436, %425
  %443 = phi i8 [ %441, %436 ], [ 2, %425 ]
  %444 = load i64, ptr %76, align 8, !tbaa !57
  %445 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %444, i64 1), !nosanitize !45
  %446 = extractvalue { i64, i1 } %445, 1, !nosanitize !45
  br i1 %446, label %447, label %448, !prof !46, !nosanitize !45

447:                                              ; preds = %442
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

448:                                              ; preds = %442
  %449 = extractvalue { i64, i1 } %445, 0, !nosanitize !45
  %450 = load ptr, ptr %256, align 8, !tbaa !40
  store i64 %449, ptr %76, align 8, !tbaa !57
  %451 = getelementptr inbounds nuw i8, ptr %450, i64 %444
  store i8 %443, ptr %451, align 1, !tbaa !8
  %452 = load i64, ptr %76, align 8, !tbaa !57
  %453 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %452, i64 1), !nosanitize !45
  %454 = extractvalue { i64, i1 } %453, 1, !nosanitize !45
  br i1 %454, label %455, label %456, !prof !46, !nosanitize !45

455:                                              ; preds = %448
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

456:                                              ; preds = %448
  %457 = extractvalue { i64, i1 } %453, 0, !nosanitize !45
  %458 = load ptr, ptr %256, align 8, !tbaa !40
  %459 = load ptr, ptr %281, align 8, !tbaa !100
  %460 = getelementptr inbounds nuw i8, ptr %459, i64 20
  %461 = load i32, ptr %460, align 4, !tbaa !116
  %462 = trunc i32 %461 to i8
  store i64 %457, ptr %76, align 8, !tbaa !57
  %463 = getelementptr inbounds nuw i8, ptr %458, i64 %452
  store i8 %462, ptr %463, align 1, !tbaa !8
  %464 = load ptr, ptr %281, align 8, !tbaa !100
  %465 = getelementptr inbounds nuw i8, ptr %464, i64 24
  %466 = load ptr, ptr %465, align 8, !tbaa !112
  %467 = icmp eq ptr %466, null
  br i1 %467, label %494, label %468

468:                                              ; preds = %456
  %469 = load i64, ptr %76, align 8, !tbaa !57
  %470 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %469, i64 1), !nosanitize !45
  %471 = extractvalue { i64, i1 } %470, 1, !nosanitize !45
  br i1 %471, label %472, label %473, !prof !46, !nosanitize !45

472:                                              ; preds = %468
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

473:                                              ; preds = %468
  %474 = extractvalue { i64, i1 } %470, 0, !nosanitize !45
  %475 = load ptr, ptr %256, align 8, !tbaa !40
  %476 = getelementptr inbounds nuw i8, ptr %464, i64 32
  %477 = load i32, ptr %476, align 8, !tbaa !117
  %478 = trunc i32 %477 to i8
  store i64 %474, ptr %76, align 8, !tbaa !57
  %479 = getelementptr inbounds nuw i8, ptr %475, i64 %469
  store i8 %478, ptr %479, align 1, !tbaa !8
  %480 = load i64, ptr %76, align 8, !tbaa !57
  %481 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %480, i64 1), !nosanitize !45
  %482 = extractvalue { i64, i1 } %481, 1, !nosanitize !45
  br i1 %482, label %483, label %484, !prof !46, !nosanitize !45

483:                                              ; preds = %473
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

484:                                              ; preds = %473
  %485 = extractvalue { i64, i1 } %481, 0, !nosanitize !45
  %486 = load ptr, ptr %256, align 8, !tbaa !40
  %487 = load ptr, ptr %281, align 8, !tbaa !100
  %488 = getelementptr inbounds nuw i8, ptr %487, i64 32
  %489 = load i32, ptr %488, align 8, !tbaa !117
  %490 = lshr i32 %489, 8
  %491 = trunc i32 %490 to i8
  store i64 %485, ptr %76, align 8, !tbaa !57
  %492 = getelementptr inbounds nuw i8, ptr %486, i64 %480
  store i8 %491, ptr %492, align 1, !tbaa !8
  %493 = load ptr, ptr %281, align 8, !tbaa !100
  br label %494

494:                                              ; preds = %484, %456
  %495 = phi ptr [ %493, %484 ], [ %464, %456 ]
  %496 = getelementptr inbounds nuw i8, ptr %495, i64 68
  %497 = load i32, ptr %496, align 4, !tbaa !114
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %504, label %499

499:                                              ; preds = %494
  %500 = load i64, ptr %255, align 8, !tbaa !59
  %501 = load ptr, ptr %256, align 8, !tbaa !40
  %502 = load i64, ptr %76, align 8, !tbaa !57
  %503 = tail call i64 @crc32_z(i64 noundef %500, ptr noundef %501, i64 noundef %502) #12
  store i64 %503, ptr %255, align 8, !tbaa !59
  br label %504

504:                                              ; preds = %499, %494
  %505 = getelementptr inbounds nuw i8, ptr %15, i64 64
  store i64 0, ptr %505, align 8, !tbaa !118
  store i32 69, ptr %21, align 8, !tbaa !29
  br label %510

506:                                              ; preds = %347
  %507 = load i32, ptr %21, align 8, !tbaa !29
  br label %508

508:                                              ; preds = %506, %250
  %509 = phi i32 [ %507, %506 ], [ %251, %250 ]
  switch i32 %509, label %986 [
    i32 69, label %510
    i32 73, label %718
    i32 91, label %830
    i32 103, label %941
  ]

510:                                              ; preds = %508, %504
  %511 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %512 = load ptr, ptr %511, align 8, !tbaa !100
  %513 = getelementptr inbounds nuw i8, ptr %512, i64 24
  %514 = load ptr, ptr %513, align 8, !tbaa !112
  %515 = icmp eq ptr %514, null
  br i1 %515, label %717, label %516

516:                                              ; preds = %510
  %517 = getelementptr inbounds nuw i8, ptr %512, i64 32
  %518 = load i32, ptr %517, align 8, !tbaa !117
  %519 = and i32 %518, 65535
  %520 = zext nneg i32 %519 to i64
  %521 = getelementptr inbounds nuw i8, ptr %15, i64 64
  %522 = load i64, ptr %521, align 8, !tbaa !118
  %523 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %520, i64 %522), !nosanitize !45
  %524 = extractvalue { i64, i1 } %523, 1, !nosanitize !45
  br i1 %524, label %525, label %526, !prof !46, !nosanitize !45

525:                                              ; preds = %516
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

526:                                              ; preds = %516
  %527 = load i64, ptr %76, align 8, !tbaa !57
  %528 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %529 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %530 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %531 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %532 = extractvalue { i64, i1 } %523, 0
  %533 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %527, i64 %532), !nosanitize !45
  %534 = extractvalue { i64, i1 } %533, 1, !nosanitize !45
  br i1 %534, label %607, label %535, !prof !46, !nosanitize !45

535:                                              ; preds = %526
  %536 = extractvalue { i64, i1 } %533, 0, !nosanitize !45
  %537 = load i64, ptr %528, align 8, !tbaa !41
  %538 = icmp ugt i64 %536, %537
  br i1 %538, label %539, label %690

539:                                              ; preds = %535
  %540 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %537, i64 %527), !nosanitize !45
  %541 = extractvalue { i64, i1 } %540, 0, !nosanitize !45
  %542 = extractvalue { i64, i1 } %540, 1, !nosanitize !45
  br i1 %542, label %613, label %543, !prof !46, !nosanitize !45

543:                                              ; preds = %539
  %544 = load ptr, ptr %529, align 8, !tbaa !40
  %545 = getelementptr inbounds nuw i8, ptr %544, i64 %527
  %546 = getelementptr inbounds nuw i8, ptr %514, i64 %522
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %545, ptr nonnull align 1 %546, i64 %541, i1 false)
  %547 = load i64, ptr %528, align 8, !tbaa !41
  store i64 %547, ptr %76, align 8, !tbaa !57
  %548 = load ptr, ptr %511, align 8, !tbaa !100
  %549 = getelementptr inbounds nuw i8, ptr %548, i64 68
  %550 = load i32, ptr %549, align 4, !tbaa !114
  %551 = icmp ne i32 %550, 0
  %552 = icmp ugt i64 %547, %527
  %553 = select i1 %551, i1 %552, i1 false
  br i1 %553, label %554, label %560

554:                                              ; preds = %543
  %555 = sub nuw i64 %547, %527
  %556 = load ptr, ptr %529, align 8, !tbaa !40
  %557 = getelementptr inbounds nuw i8, ptr %556, i64 %527
  %558 = load i64, ptr %530, align 8, !tbaa !59
  %559 = tail call i64 @crc32_z(i64 noundef %558, ptr noundef %557, i64 noundef %555) #12
  store i64 %559, ptr %530, align 8, !tbaa !59
  br label %560

560:                                              ; preds = %554, %543
  %561 = load i64, ptr %521, align 8, !tbaa !118
  %562 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %561, i64 %541), !nosanitize !45
  %563 = extractvalue { i64, i1 } %562, 1, !nosanitize !45
  br i1 %563, label %636, label %564, !prof !46, !nosanitize !45

564:                                              ; preds = %560
  %565 = extractvalue { i64, i1 } %562, 0, !nosanitize !45
  store i64 %565, ptr %521, align 8, !tbaa !118
  %566 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %566) #12
  %567 = getelementptr inbounds nuw i8, ptr %566, i64 40
  %568 = load i64, ptr %567, align 8, !tbaa !57
  %569 = load i32, ptr %69, align 8, !tbaa !107
  %570 = zext i32 %569 to i64
  %571 = tail call i64 @llvm.umin.i64(i64 %568, i64 %570)
  %572 = trunc nuw i64 %571 to i32
  %573 = icmp eq i64 %571, 0
  br i1 %573, label %601, label %574

574:                                              ; preds = %564
  %575 = load ptr, ptr %51, align 8, !tbaa !106
  %576 = getelementptr inbounds nuw i8, ptr %566, i64 32
  %577 = load ptr, ptr %576, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %575, ptr align 1 %577, i64 %571, i1 false)
  %578 = load ptr, ptr %51, align 8, !tbaa !106
  %579 = getelementptr inbounds nuw i8, ptr %578, i64 %571
  store ptr %579, ptr %51, align 8, !tbaa !106
  %580 = load ptr, ptr %576, align 8, !tbaa !58
  %581 = getelementptr inbounds nuw i8, ptr %580, i64 %571
  store ptr %581, ptr %576, align 8, !tbaa !58
  %582 = load i64, ptr %531, align 8, !tbaa !108
  %583 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %582, i64 %571), !nosanitize !45
  %584 = extractvalue { i64, i1 } %583, 1, !nosanitize !45
  br i1 %584, label %658, label %585, !prof !46, !nosanitize !45

585:                                              ; preds = %574
  %586 = extractvalue { i64, i1 } %583, 0, !nosanitize !45
  store i64 %586, ptr %531, align 8, !tbaa !108
  %587 = load i32, ptr %69, align 8, !tbaa !107
  %588 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %587, i32 %572), !nosanitize !45
  %589 = extractvalue { i32, i1 } %588, 1, !nosanitize !45
  br i1 %589, label %664, label %590, !prof !46, !nosanitize !45

590:                                              ; preds = %585
  %591 = extractvalue { i32, i1 } %588, 0, !nosanitize !45
  store i32 %591, ptr %69, align 8, !tbaa !107
  %592 = load i64, ptr %567, align 8, !tbaa !57
  %593 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %592, i64 %571), !nosanitize !45
  %594 = extractvalue { i64, i1 } %593, 1, !nosanitize !45
  br i1 %594, label %670, label %595, !prof !46, !nosanitize !45

595:                                              ; preds = %590
  %596 = extractvalue { i64, i1 } %593, 0, !nosanitize !45
  store i64 %596, ptr %567, align 8, !tbaa !57
  %597 = icmp eq i64 %596, 0
  br i1 %597, label %598, label %601

598:                                              ; preds = %595
  %599 = getelementptr inbounds nuw i8, ptr %566, i64 16
  %600 = load ptr, ptr %599, align 8, !tbaa !40
  store ptr %600, ptr %576, align 8, !tbaa !58
  br label %601

601:                                              ; preds = %598, %595, %564
  %602 = load i64, ptr %76, align 8, !tbaa !57
  %603 = icmp eq i64 %602, 0
  br i1 %603, label %604, label %680

604:                                              ; preds = %601
  %605 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %532, i64 %541), !nosanitize !45
  %606 = extractvalue { i64, i1 } %605, 1, !nosanitize !45
  br i1 %606, label %684, label %608, !prof !46, !nosanitize !45

607:                                              ; preds = %526
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

608:                                              ; preds = %604, %681
  %609 = phi { i64, i1 } [ %682, %681 ], [ %605, %604 ]
  %610 = extractvalue { i64, i1 } %609, 0
  %611 = load i64, ptr %528, align 8, !tbaa !41
  %612 = icmp ugt i64 %610, %611
  br i1 %612, label %614, label %685

613:                                              ; preds = %539
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

614:                                              ; preds = %608
  %615 = load ptr, ptr %529, align 8, !tbaa !40
  %616 = load ptr, ptr %511, align 8, !tbaa !100
  %617 = getelementptr inbounds nuw i8, ptr %616, i64 24
  %618 = load ptr, ptr %617, align 8, !tbaa !112
  %619 = load i64, ptr %521, align 8, !tbaa !118
  %620 = getelementptr inbounds nuw i8, ptr %618, i64 %619
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %615, ptr align 1 %620, i64 %611, i1 false)
  %621 = load i64, ptr %528, align 8, !tbaa !41
  store i64 %621, ptr %76, align 8, !tbaa !57
  %622 = load ptr, ptr %511, align 8, !tbaa !100
  %623 = getelementptr inbounds nuw i8, ptr %622, i64 68
  %624 = load i32, ptr %623, align 4, !tbaa !114
  %625 = icmp ne i32 %624, 0
  %626 = icmp ne i64 %621, 0
  %627 = select i1 %625, i1 %626, i1 false
  br i1 %627, label %628, label %632

628:                                              ; preds = %614
  %629 = load ptr, ptr %529, align 8, !tbaa !40
  %630 = load i64, ptr %530, align 8, !tbaa !59
  %631 = tail call i64 @crc32_z(i64 noundef %630, ptr noundef %629, i64 noundef %621) #12
  store i64 %631, ptr %530, align 8, !tbaa !59
  br label %632

632:                                              ; preds = %628, %614
  %633 = load i64, ptr %521, align 8, !tbaa !118
  %634 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %633, i64 %611), !nosanitize !45
  %635 = extractvalue { i64, i1 } %634, 1, !nosanitize !45
  br i1 %635, label %636, label %637, !prof !46, !nosanitize !45

636:                                              ; preds = %632, %560
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

637:                                              ; preds = %632
  %638 = extractvalue { i64, i1 } %634, 0, !nosanitize !45
  store i64 %638, ptr %521, align 8, !tbaa !118
  %639 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %639) #12
  %640 = getelementptr inbounds nuw i8, ptr %639, i64 40
  %641 = load i64, ptr %640, align 8, !tbaa !57
  %642 = load i32, ptr %69, align 8, !tbaa !107
  %643 = zext i32 %642 to i64
  %644 = tail call i64 @llvm.umin.i64(i64 %641, i64 %643)
  %645 = trunc nuw i64 %644 to i32
  %646 = icmp eq i64 %644, 0
  br i1 %646, label %677, label %647

647:                                              ; preds = %637
  %648 = load ptr, ptr %51, align 8, !tbaa !106
  %649 = getelementptr inbounds nuw i8, ptr %639, i64 32
  %650 = load ptr, ptr %649, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %648, ptr align 1 %650, i64 %644, i1 false)
  %651 = load ptr, ptr %51, align 8, !tbaa !106
  %652 = getelementptr inbounds nuw i8, ptr %651, i64 %644
  store ptr %652, ptr %51, align 8, !tbaa !106
  %653 = load ptr, ptr %649, align 8, !tbaa !58
  %654 = getelementptr inbounds nuw i8, ptr %653, i64 %644
  store ptr %654, ptr %649, align 8, !tbaa !58
  %655 = load i64, ptr %531, align 8, !tbaa !108
  %656 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %655, i64 %644), !nosanitize !45
  %657 = extractvalue { i64, i1 } %656, 1, !nosanitize !45
  br i1 %657, label %658, label %659, !prof !46, !nosanitize !45

658:                                              ; preds = %647, %574
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

659:                                              ; preds = %647
  %660 = extractvalue { i64, i1 } %656, 0, !nosanitize !45
  store i64 %660, ptr %531, align 8, !tbaa !108
  %661 = load i32, ptr %69, align 8, !tbaa !107
  %662 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %661, i32 %645), !nosanitize !45
  %663 = extractvalue { i32, i1 } %662, 1, !nosanitize !45
  br i1 %663, label %664, label %665, !prof !46, !nosanitize !45

664:                                              ; preds = %659, %585
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

665:                                              ; preds = %659
  %666 = extractvalue { i32, i1 } %662, 0, !nosanitize !45
  store i32 %666, ptr %69, align 8, !tbaa !107
  %667 = load i64, ptr %640, align 8, !tbaa !57
  %668 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %667, i64 %644), !nosanitize !45
  %669 = extractvalue { i64, i1 } %668, 1, !nosanitize !45
  br i1 %669, label %670, label %671, !prof !46, !nosanitize !45

670:                                              ; preds = %665, %590
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

671:                                              ; preds = %665
  %672 = extractvalue { i64, i1 } %668, 0, !nosanitize !45
  store i64 %672, ptr %640, align 8, !tbaa !57
  %673 = icmp eq i64 %672, 0
  br i1 %673, label %674, label %677

674:                                              ; preds = %671
  %675 = getelementptr inbounds nuw i8, ptr %639, i64 16
  %676 = load ptr, ptr %675, align 8, !tbaa !40
  store ptr %676, ptr %649, align 8, !tbaa !58
  br label %677

677:                                              ; preds = %674, %671, %637
  %678 = load i64, ptr %76, align 8, !tbaa !57
  %679 = icmp eq i64 %678, 0
  br i1 %679, label %681, label %680

680:                                              ; preds = %677, %601
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1031

681:                                              ; preds = %677
  %682 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %610, i64 %611), !nosanitize !45
  %683 = extractvalue { i64, i1 } %682, 1, !nosanitize !45
  br i1 %683, label %684, label %608, !prof !46, !llvm.loop !119, !nosanitize !45

684:                                              ; preds = %681, %604
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

685:                                              ; preds = %608
  %686 = load ptr, ptr %511, align 8, !tbaa !100
  %687 = getelementptr inbounds nuw i8, ptr %686, i64 24
  %688 = load ptr, ptr %687, align 8, !tbaa !112
  %689 = load i64, ptr %521, align 8, !tbaa !118
  br label %690

690:                                              ; preds = %685, %535
  %691 = phi i64 [ %522, %535 ], [ %689, %685 ]
  %692 = phi ptr [ %514, %535 ], [ %688, %685 ]
  %693 = phi i64 [ %527, %535 ], [ 0, %685 ]
  %694 = phi i64 [ %532, %535 ], [ %610, %685 ]
  %695 = load ptr, ptr %529, align 8, !tbaa !40
  %696 = getelementptr inbounds nuw i8, ptr %695, i64 %693
  %697 = getelementptr inbounds nuw i8, ptr %692, i64 %691
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %696, ptr align 1 %697, i64 %694, i1 false)
  %698 = load i64, ptr %76, align 8, !tbaa !57
  %699 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %698, i64 %694), !nosanitize !45
  %700 = extractvalue { i64, i1 } %699, 0, !nosanitize !45
  %701 = extractvalue { i64, i1 } %699, 1, !nosanitize !45
  br i1 %701, label %702, label %703, !prof !46, !nosanitize !45

702:                                              ; preds = %690
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

703:                                              ; preds = %690
  store i64 %700, ptr %76, align 8, !tbaa !57
  %704 = load ptr, ptr %511, align 8, !tbaa !100
  %705 = getelementptr inbounds nuw i8, ptr %704, i64 68
  %706 = load i32, ptr %705, align 4, !tbaa !114
  %707 = icmp ne i32 %706, 0
  %708 = icmp ugt i64 %700, %693
  %709 = select i1 %707, i1 %708, i1 false
  br i1 %709, label %710, label %716

710:                                              ; preds = %703
  %711 = sub nuw i64 %700, %693
  %712 = load ptr, ptr %529, align 8, !tbaa !40
  %713 = getelementptr inbounds nuw i8, ptr %712, i64 %693
  %714 = load i64, ptr %530, align 8, !tbaa !59
  %715 = tail call i64 @crc32_z(i64 noundef %714, ptr noundef %713, i64 noundef %711) #12
  store i64 %715, ptr %530, align 8, !tbaa !59
  br label %716

716:                                              ; preds = %710, %703
  store i64 0, ptr %521, align 8, !tbaa !118
  br label %717

717:                                              ; preds = %716, %510
  store i32 73, ptr %21, align 8, !tbaa !29
  br label %718

718:                                              ; preds = %717, %508
  %719 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %720 = load ptr, ptr %719, align 8, !tbaa !100
  %721 = getelementptr inbounds nuw i8, ptr %720, i64 40
  %722 = load ptr, ptr %721, align 8, !tbaa !111
  %723 = icmp eq ptr %722, null
  br i1 %723, label %829, label %724

724:                                              ; preds = %718
  %725 = load i64, ptr %76, align 8, !tbaa !57
  %726 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %727 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %728 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %729 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %730 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %731

731:                                              ; preds = %807, %724
  %732 = phi i64 [ %725, %724 ], [ %794, %807 ]
  %733 = load i64, ptr %76, align 8, !tbaa !57
  %734 = load i64, ptr %726, align 8, !tbaa !41
  %735 = icmp eq i64 %733, %734
  br i1 %735, label %736, label %792

736:                                              ; preds = %731
  %737 = load ptr, ptr %719, align 8, !tbaa !100
  %738 = getelementptr inbounds nuw i8, ptr %737, i64 68
  %739 = load i32, ptr %738, align 4, !tbaa !114
  %740 = icmp ne i32 %739, 0
  %741 = icmp ugt i64 %733, %732
  %742 = select i1 %740, i1 %741, i1 false
  br i1 %742, label %743, label %749

743:                                              ; preds = %736
  %744 = sub nuw i64 %733, %732
  %745 = load ptr, ptr %727, align 8, !tbaa !40
  %746 = getelementptr inbounds nuw i8, ptr %745, i64 %732
  %747 = load i64, ptr %728, align 8, !tbaa !59
  %748 = tail call i64 @crc32_z(i64 noundef %747, ptr noundef %746, i64 noundef %744) #12
  store i64 %748, ptr %728, align 8, !tbaa !59
  br label %749

749:                                              ; preds = %743, %736
  %750 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %750) #12
  %751 = getelementptr inbounds nuw i8, ptr %750, i64 40
  %752 = load i64, ptr %751, align 8, !tbaa !57
  %753 = load i32, ptr %69, align 8, !tbaa !107
  %754 = zext i32 %753 to i64
  %755 = tail call i64 @llvm.umin.i64(i64 %752, i64 %754)
  %756 = trunc nuw i64 %755 to i32
  %757 = icmp eq i64 %755, 0
  br i1 %757, label %788, label %758

758:                                              ; preds = %749
  %759 = load ptr, ptr %51, align 8, !tbaa !106
  %760 = getelementptr inbounds nuw i8, ptr %750, i64 32
  %761 = load ptr, ptr %760, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %759, ptr align 1 %761, i64 %755, i1 false)
  %762 = load ptr, ptr %51, align 8, !tbaa !106
  %763 = getelementptr inbounds nuw i8, ptr %762, i64 %755
  store ptr %763, ptr %51, align 8, !tbaa !106
  %764 = load ptr, ptr %760, align 8, !tbaa !58
  %765 = getelementptr inbounds nuw i8, ptr %764, i64 %755
  store ptr %765, ptr %760, align 8, !tbaa !58
  %766 = load i64, ptr %729, align 8, !tbaa !108
  %767 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %766, i64 %755), !nosanitize !45
  %768 = extractvalue { i64, i1 } %767, 1, !nosanitize !45
  br i1 %768, label %769, label %770, !prof !46, !nosanitize !45

769:                                              ; preds = %758
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

770:                                              ; preds = %758
  %771 = extractvalue { i64, i1 } %767, 0, !nosanitize !45
  store i64 %771, ptr %729, align 8, !tbaa !108
  %772 = load i32, ptr %69, align 8, !tbaa !107
  %773 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %772, i32 %756), !nosanitize !45
  %774 = extractvalue { i32, i1 } %773, 1, !nosanitize !45
  br i1 %774, label %775, label %776, !prof !46, !nosanitize !45

775:                                              ; preds = %770
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

776:                                              ; preds = %770
  %777 = extractvalue { i32, i1 } %773, 0, !nosanitize !45
  store i32 %777, ptr %69, align 8, !tbaa !107
  %778 = load i64, ptr %751, align 8, !tbaa !57
  %779 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %778, i64 %755), !nosanitize !45
  %780 = extractvalue { i64, i1 } %779, 1, !nosanitize !45
  br i1 %780, label %781, label %782, !prof !46, !nosanitize !45

781:                                              ; preds = %776
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

782:                                              ; preds = %776
  %783 = extractvalue { i64, i1 } %779, 0, !nosanitize !45
  store i64 %783, ptr %751, align 8, !tbaa !57
  %784 = icmp eq i64 %783, 0
  br i1 %784, label %785, label %788

785:                                              ; preds = %782
  %786 = getelementptr inbounds nuw i8, ptr %750, i64 16
  %787 = load ptr, ptr %786, align 8, !tbaa !40
  store ptr %787, ptr %760, align 8, !tbaa !58
  br label %788

788:                                              ; preds = %785, %782, %749
  %789 = load i64, ptr %76, align 8, !tbaa !57
  %790 = icmp eq i64 %789, 0
  br i1 %790, label %792, label %791

791:                                              ; preds = %788
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1031

792:                                              ; preds = %788, %731
  %793 = phi i64 [ %733, %731 ], [ 0, %788 ]
  %794 = phi i64 [ %732, %731 ], [ 0, %788 ]
  %795 = load i64, ptr %730, align 8, !tbaa !118
  %796 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %795, i64 1), !nosanitize !45
  %797 = extractvalue { i64, i1 } %796, 1, !nosanitize !45
  br i1 %797, label %798, label %799, !prof !46, !nosanitize !45

798:                                              ; preds = %792
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

799:                                              ; preds = %792
  %800 = extractvalue { i64, i1 } %796, 0, !nosanitize !45
  %801 = load ptr, ptr %719, align 8, !tbaa !100
  %802 = getelementptr inbounds nuw i8, ptr %801, i64 40
  %803 = load ptr, ptr %802, align 8, !tbaa !111
  store i64 %800, ptr %730, align 8, !tbaa !118
  %804 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %793, i64 1), !nosanitize !45
  %805 = extractvalue { i64, i1 } %804, 1, !nosanitize !45
  br i1 %805, label %806, label %807, !prof !46, !nosanitize !45

806:                                              ; preds = %799
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

807:                                              ; preds = %799
  %808 = extractvalue { i64, i1 } %804, 0, !nosanitize !45
  %809 = load ptr, ptr %727, align 8, !tbaa !40
  %810 = getelementptr inbounds nuw i8, ptr %803, i64 %795
  %811 = load i8, ptr %810, align 1, !tbaa !8
  store i64 %808, ptr %76, align 8, !tbaa !57
  %812 = getelementptr inbounds nuw i8, ptr %809, i64 %793
  store i8 %811, ptr %812, align 1, !tbaa !8
  %813 = icmp eq i8 %811, 0
  br i1 %813, label %814, label %731, !llvm.loop !122

814:                                              ; preds = %807
  %815 = load ptr, ptr %719, align 8, !tbaa !100
  %816 = getelementptr inbounds nuw i8, ptr %815, i64 68
  %817 = load i32, ptr %816, align 4, !tbaa !114
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %828, label %819

819:                                              ; preds = %814
  %820 = load i64, ptr %76, align 8, !tbaa !57
  %821 = icmp ugt i64 %820, %794
  br i1 %821, label %822, label %828

822:                                              ; preds = %819
  %823 = sub nuw i64 %820, %794
  %824 = load ptr, ptr %727, align 8, !tbaa !40
  %825 = getelementptr inbounds nuw i8, ptr %824, i64 %794
  %826 = load i64, ptr %728, align 8, !tbaa !59
  %827 = tail call i64 @crc32_z(i64 noundef %826, ptr noundef %825, i64 noundef %823) #12
  store i64 %827, ptr %728, align 8, !tbaa !59
  br label %828

828:                                              ; preds = %822, %819, %814
  store i64 0, ptr %730, align 8, !tbaa !118
  br label %829

829:                                              ; preds = %828, %718
  store i32 91, ptr %21, align 8, !tbaa !29
  br label %830

830:                                              ; preds = %829, %508
  %831 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %832 = load ptr, ptr %831, align 8, !tbaa !100
  %833 = getelementptr inbounds nuw i8, ptr %832, i64 56
  %834 = load ptr, ptr %833, align 8, !tbaa !109
  %835 = icmp eq ptr %834, null
  br i1 %835, label %940, label %836

836:                                              ; preds = %830
  %837 = load i64, ptr %76, align 8, !tbaa !57
  %838 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %839 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %840 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %841 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %842 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %843

843:                                              ; preds = %919, %836
  %844 = phi i64 [ %837, %836 ], [ %906, %919 ]
  %845 = load i64, ptr %76, align 8, !tbaa !57
  %846 = load i64, ptr %838, align 8, !tbaa !41
  %847 = icmp eq i64 %845, %846
  br i1 %847, label %848, label %904

848:                                              ; preds = %843
  %849 = load ptr, ptr %831, align 8, !tbaa !100
  %850 = getelementptr inbounds nuw i8, ptr %849, i64 68
  %851 = load i32, ptr %850, align 4, !tbaa !114
  %852 = icmp ne i32 %851, 0
  %853 = icmp ugt i64 %845, %844
  %854 = select i1 %852, i1 %853, i1 false
  br i1 %854, label %855, label %861

855:                                              ; preds = %848
  %856 = sub nuw i64 %845, %844
  %857 = load ptr, ptr %839, align 8, !tbaa !40
  %858 = getelementptr inbounds nuw i8, ptr %857, i64 %844
  %859 = load i64, ptr %840, align 8, !tbaa !59
  %860 = tail call i64 @crc32_z(i64 noundef %859, ptr noundef %858, i64 noundef %856) #12
  store i64 %860, ptr %840, align 8, !tbaa !59
  br label %861

861:                                              ; preds = %855, %848
  %862 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %862) #12
  %863 = getelementptr inbounds nuw i8, ptr %862, i64 40
  %864 = load i64, ptr %863, align 8, !tbaa !57
  %865 = load i32, ptr %69, align 8, !tbaa !107
  %866 = zext i32 %865 to i64
  %867 = tail call i64 @llvm.umin.i64(i64 %864, i64 %866)
  %868 = trunc nuw i64 %867 to i32
  %869 = icmp eq i64 %867, 0
  br i1 %869, label %900, label %870

870:                                              ; preds = %861
  %871 = load ptr, ptr %51, align 8, !tbaa !106
  %872 = getelementptr inbounds nuw i8, ptr %862, i64 32
  %873 = load ptr, ptr %872, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %871, ptr align 1 %873, i64 %867, i1 false)
  %874 = load ptr, ptr %51, align 8, !tbaa !106
  %875 = getelementptr inbounds nuw i8, ptr %874, i64 %867
  store ptr %875, ptr %51, align 8, !tbaa !106
  %876 = load ptr, ptr %872, align 8, !tbaa !58
  %877 = getelementptr inbounds nuw i8, ptr %876, i64 %867
  store ptr %877, ptr %872, align 8, !tbaa !58
  %878 = load i64, ptr %841, align 8, !tbaa !108
  %879 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %878, i64 %867), !nosanitize !45
  %880 = extractvalue { i64, i1 } %879, 1, !nosanitize !45
  br i1 %880, label %881, label %882, !prof !46, !nosanitize !45

881:                                              ; preds = %870
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

882:                                              ; preds = %870
  %883 = extractvalue { i64, i1 } %879, 0, !nosanitize !45
  store i64 %883, ptr %841, align 8, !tbaa !108
  %884 = load i32, ptr %69, align 8, !tbaa !107
  %885 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %884, i32 %868), !nosanitize !45
  %886 = extractvalue { i32, i1 } %885, 1, !nosanitize !45
  br i1 %886, label %887, label %888, !prof !46, !nosanitize !45

887:                                              ; preds = %882
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

888:                                              ; preds = %882
  %889 = extractvalue { i32, i1 } %885, 0, !nosanitize !45
  store i32 %889, ptr %69, align 8, !tbaa !107
  %890 = load i64, ptr %863, align 8, !tbaa !57
  %891 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %890, i64 %867), !nosanitize !45
  %892 = extractvalue { i64, i1 } %891, 1, !nosanitize !45
  br i1 %892, label %893, label %894, !prof !46, !nosanitize !45

893:                                              ; preds = %888
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

894:                                              ; preds = %888
  %895 = extractvalue { i64, i1 } %891, 0, !nosanitize !45
  store i64 %895, ptr %863, align 8, !tbaa !57
  %896 = icmp eq i64 %895, 0
  br i1 %896, label %897, label %900

897:                                              ; preds = %894
  %898 = getelementptr inbounds nuw i8, ptr %862, i64 16
  %899 = load ptr, ptr %898, align 8, !tbaa !40
  store ptr %899, ptr %872, align 8, !tbaa !58
  br label %900

900:                                              ; preds = %897, %894, %861
  %901 = load i64, ptr %76, align 8, !tbaa !57
  %902 = icmp eq i64 %901, 0
  br i1 %902, label %904, label %903

903:                                              ; preds = %900
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1031

904:                                              ; preds = %900, %843
  %905 = phi i64 [ %845, %843 ], [ 0, %900 ]
  %906 = phi i64 [ %844, %843 ], [ 0, %900 ]
  %907 = load i64, ptr %842, align 8, !tbaa !118
  %908 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %907, i64 1), !nosanitize !45
  %909 = extractvalue { i64, i1 } %908, 1, !nosanitize !45
  br i1 %909, label %910, label %911, !prof !46, !nosanitize !45

910:                                              ; preds = %904
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

911:                                              ; preds = %904
  %912 = extractvalue { i64, i1 } %908, 0, !nosanitize !45
  %913 = load ptr, ptr %831, align 8, !tbaa !100
  %914 = getelementptr inbounds nuw i8, ptr %913, i64 56
  %915 = load ptr, ptr %914, align 8, !tbaa !109
  store i64 %912, ptr %842, align 8, !tbaa !118
  %916 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %905, i64 1), !nosanitize !45
  %917 = extractvalue { i64, i1 } %916, 1, !nosanitize !45
  br i1 %917, label %918, label %919, !prof !46, !nosanitize !45

918:                                              ; preds = %911
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

919:                                              ; preds = %911
  %920 = extractvalue { i64, i1 } %916, 0, !nosanitize !45
  %921 = load ptr, ptr %839, align 8, !tbaa !40
  %922 = getelementptr inbounds nuw i8, ptr %915, i64 %907
  %923 = load i8, ptr %922, align 1, !tbaa !8
  store i64 %920, ptr %76, align 8, !tbaa !57
  %924 = getelementptr inbounds nuw i8, ptr %921, i64 %905
  store i8 %923, ptr %924, align 1, !tbaa !8
  %925 = icmp eq i8 %923, 0
  br i1 %925, label %926, label %843, !llvm.loop !123

926:                                              ; preds = %919
  %927 = load ptr, ptr %831, align 8, !tbaa !100
  %928 = getelementptr inbounds nuw i8, ptr %927, i64 68
  %929 = load i32, ptr %928, align 4, !tbaa !114
  %930 = icmp eq i32 %929, 0
  br i1 %930, label %940, label %931

931:                                              ; preds = %926
  %932 = load i64, ptr %76, align 8, !tbaa !57
  %933 = icmp ugt i64 %932, %906
  br i1 %933, label %934, label %940

934:                                              ; preds = %931
  %935 = sub nuw i64 %932, %906
  %936 = load ptr, ptr %839, align 8, !tbaa !40
  %937 = getelementptr inbounds nuw i8, ptr %936, i64 %906
  %938 = load i64, ptr %840, align 8, !tbaa !59
  %939 = tail call i64 @crc32_z(i64 noundef %938, ptr noundef %937, i64 noundef %935) #12
  store i64 %939, ptr %840, align 8, !tbaa !59
  br label %940

940:                                              ; preds = %934, %931, %926, %830
  store i32 103, ptr %21, align 8, !tbaa !29
  br label %941

941:                                              ; preds = %940, %508
  %942 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %943 = load ptr, ptr %942, align 8, !tbaa !100
  %944 = getelementptr inbounds nuw i8, ptr %943, i64 68
  %945 = load i32, ptr %944, align 4, !tbaa !114
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %982, label %947

947:                                              ; preds = %941
  %948 = load i64, ptr %76, align 8, !tbaa !57
  %949 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %948, i64 2), !nosanitize !45
  %950 = extractvalue { i64, i1 } %949, 1, !nosanitize !45
  br i1 %950, label %951, label %952, !prof !46, !nosanitize !45

951:                                              ; preds = %947
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

952:                                              ; preds = %947
  %953 = extractvalue { i64, i1 } %949, 0, !nosanitize !45
  %954 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %955 = load i64, ptr %954, align 8, !tbaa !41
  %956 = icmp ugt i64 %953, %955
  br i1 %956, label %957, label %961

957:                                              ; preds = %952
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %958 = load i64, ptr %76, align 8, !tbaa !57
  %959 = icmp eq i64 %958, 0
  br i1 %959, label %961, label %960

960:                                              ; preds = %957
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1031

961:                                              ; preds = %957, %952
  %962 = phi i64 [ 0, %957 ], [ %948, %952 ]
  %963 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %964 = add nuw i64 %962, 1
  %965 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %966 = load ptr, ptr %965, align 8, !tbaa !40
  %967 = load i64, ptr %963, align 8, !tbaa !59
  %968 = trunc i64 %967 to i8
  store i64 %964, ptr %76, align 8, !tbaa !57
  %969 = getelementptr inbounds nuw i8, ptr %966, i64 %962
  store i8 %968, ptr %969, align 1, !tbaa !8
  %970 = load i64, ptr %76, align 8, !tbaa !57
  %971 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %970, i64 1), !nosanitize !45
  %972 = extractvalue { i64, i1 } %971, 1, !nosanitize !45
  br i1 %972, label %973, label %974, !prof !46, !nosanitize !45

973:                                              ; preds = %961
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

974:                                              ; preds = %961
  %975 = extractvalue { i64, i1 } %971, 0, !nosanitize !45
  %976 = load ptr, ptr %965, align 8, !tbaa !40
  %977 = load i64, ptr %963, align 8, !tbaa !59
  %978 = lshr i64 %977, 8
  %979 = trunc i64 %978 to i8
  store i64 %975, ptr %76, align 8, !tbaa !57
  %980 = getelementptr inbounds nuw i8, ptr %976, i64 %970
  store i8 %979, ptr %980, align 1, !tbaa !8
  %981 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %981, ptr %963, align 8, !tbaa !59
  br label %982

982:                                              ; preds = %974, %941
  store i32 113, ptr %21, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %983 = load i64, ptr %76, align 8, !tbaa !57
  %984 = icmp eq i64 %983, 0
  br i1 %984, label %986, label %985

985:                                              ; preds = %982
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1031

986:                                              ; preds = %982, %508, %147
  %987 = load i32, ptr %55, align 8, !tbaa !81
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %989, label %996

989:                                              ; preds = %986, %137
  %990 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %991 = load i32, ptr %990, align 4, !tbaa !75
  %992 = icmp eq i32 %991, 0
  br i1 %992, label %993, label %996

993:                                              ; preds = %989
  %994 = load i32, ptr %21, align 8, !tbaa !29
  %995 = icmp eq i32 %994, 666
  br i1 %995, label %1031, label %996

996:                                              ; preds = %993, %989, %986
  %997 = load i32, ptr %30, align 4, !tbaa !48
  %998 = icmp eq i32 %997, 0
  br i1 %998, label %999, label %1001

999:                                              ; preds = %996
  %1000 = tail call i32 @deflate_stored(ptr noundef nonnull %15, i32 noundef 5)
  br label %1013

1001:                                             ; preds = %996
  %1002 = load i32, ptr %31, align 8, !tbaa !49
  switch i32 %1002, label %1007 [
    i32 2, label %1003
    i32 3, label %1005
  ]

1003:                                             ; preds = %1001
  %1004 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %15, i32 noundef 5)
  br label %1013

1005:                                             ; preds = %1001
  %1006 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %15, i32 noundef 5)
  br label %1013

1007:                                             ; preds = %1001
  %1008 = sext i32 %997 to i64
  %1009 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %1008
  %1010 = getelementptr inbounds nuw i8, ptr %1009, i64 8
  %1011 = load ptr, ptr %1010, align 8, !tbaa !105
  %1012 = tail call i32 %1011(ptr noundef nonnull %15, i32 noundef 5) #12, !inline_history !124
  br label %1013

1013:                                             ; preds = %1007, %1005, %1003, %999
  %1014 = phi i32 [ %1000, %999 ], [ %1004, %1003 ], [ %1006, %1005 ], [ %1012, %1007 ]
  %1015 = and i32 %1014, -2
  %1016 = icmp eq i32 %1015, 2
  br i1 %1016, label %1017, label %1018

1017:                                             ; preds = %1013
  store i32 666, ptr %21, align 8, !tbaa !29
  br label %1018

1018:                                             ; preds = %1017, %1013
  %1019 = and i32 %1014, -3
  %1020 = icmp eq i32 %1019, 0
  br i1 %1020, label %1021, label %1025

1021:                                             ; preds = %1018
  %1022 = load i32, ptr %69, align 8, !tbaa !107
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1024, label %1031

1024:                                             ; preds = %1021
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1031

1025:                                             ; preds = %1018
  %1026 = icmp eq i32 %1014, 1
  br i1 %1026, label %1027, label %1031

1027:                                             ; preds = %1025
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1028 = load i32, ptr %69, align 8, !tbaa !107
  %1029 = icmp eq i32 %1028, 0
  br i1 %1029, label %1030, label %1031

1030:                                             ; preds = %1027
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1031

1031:                                             ; preds = %131, %72, %123, %140, %353, %960, %985, %903, %791, %680, %249, %1024, %1030, %1021, %1027, %1025, %993
  %1032 = load i32, ptr %55, align 8, !tbaa !81
  %1033 = icmp eq i32 %1032, 0
  br i1 %1033, label %1034, label %1089

1034:                                             ; preds = %1031
  %1035 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %1036 = load i32, ptr %1035, align 4, !tbaa !73
  %1037 = zext i32 %1036 to i64
  %1038 = getelementptr inbounds nuw i8, ptr %15, i64 152
  %1039 = load i64, ptr %1038, align 8, !tbaa !74
  %1040 = sub nsw i64 %1037, %1039
  %1041 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %1042 = load i32, ptr %1041, align 4, !tbaa !75
  %1043 = zext i32 %1042 to i64
  %1044 = sub nsw i64 0, %1043
  %1045 = icmp eq i64 %1040, %1044
  br i1 %1045, label %1046, label %1089

1046:                                             ; preds = %1034, %45, %34
  %1047 = load i32, ptr %30, align 4, !tbaa !48
  %1048 = icmp eq i32 %1047, %25
  br i1 %1048, label %1088, label %1049

1049:                                             ; preds = %1046
  %1050 = icmp eq i32 %1047, 0
  br i1 %1050, label %1051, label %1070

1051:                                             ; preds = %1049
  %1052 = getelementptr inbounds nuw i8, ptr %15, i64 5928
  %1053 = load i32, ptr %1052, align 8, !tbaa !125
  switch i32 %1053, label %1055 [
    i32 0, label %1070
    i32 1, label %1054
  ]

1054:                                             ; preds = %1051
  tail call fastcc void @slide_hash(ptr noundef nonnull %15)
  br label %1069

1055:                                             ; preds = %1051
  %1056 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %1057 = load i32, ptr %1056, align 4, !tbaa !36
  %1058 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1057, i32 1), !nosanitize !45
  %1059 = extractvalue { i32, i1 } %1058, 1, !nosanitize !45
  br i1 %1059, label %1060, label %1061, !prof !46, !nosanitize !45

1060:                                             ; preds = %1055
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

1061:                                             ; preds = %1055
  %1062 = extractvalue { i32, i1 } %1058, 0, !nosanitize !45
  %1063 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %1064 = load ptr, ptr %1063, align 8, !tbaa !37
  %1065 = zext i32 %1062 to i64
  %1066 = getelementptr inbounds nuw [2 x i8], ptr %1064, i64 %1065
  store i16 0, ptr %1066, align 2, !tbaa !62
  %1067 = shl nuw nsw i64 %1065, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1064, i8 0, i64 %1067, i1 false)
  %1068 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  store i32 0, ptr %1068, align 8, !tbaa !63
  br label %1069

1069:                                             ; preds = %1061, %1054
  store i32 0, ptr %1052, align 8, !tbaa !125
  br label %1070

1070:                                             ; preds = %1051, %1069, %1049
  store i32 %25, ptr %30, align 4, !tbaa !48
  %1071 = zext nneg i32 %25 to i64
  %1072 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %1071
  %1073 = getelementptr inbounds nuw i8, ptr %1072, i64 2
  %1074 = load i16, ptr %1073, align 2, !tbaa !64
  %1075 = zext i16 %1074 to i32
  %1076 = getelementptr inbounds nuw i8, ptr %15, i64 192
  store i32 %1075, ptr %1076, align 8, !tbaa !66
  %1077 = load i16, ptr %1072, align 16, !tbaa !67
  %1078 = zext i16 %1077 to i32
  %1079 = getelementptr inbounds nuw i8, ptr %15, i64 204
  store i32 %1078, ptr %1079, align 4, !tbaa !68
  %1080 = getelementptr inbounds nuw i8, ptr %1072, i64 4
  %1081 = load i16, ptr %1080, align 4, !tbaa !69
  %1082 = zext i16 %1081 to i32
  %1083 = getelementptr inbounds nuw i8, ptr %15, i64 208
  store i32 %1082, ptr %1083, align 8, !tbaa !70
  %1084 = getelementptr inbounds nuw i8, ptr %1072, i64 6
  %1085 = load i16, ptr %1084, align 2, !tbaa !71
  %1086 = zext i16 %1085 to i32
  %1087 = getelementptr inbounds nuw i8, ptr %15, i64 188
  store i32 %1086, ptr %1087, align 4, !tbaa !72
  br label %1088

1088:                                             ; preds = %1070, %1046
  store i32 %2, ptr %31, align 8, !tbaa !49
  br label %1089

1089:                                             ; preds = %65, %49, %1031, %13, %17, %20, %5, %9, %3, %23, %1034, %1088
  %1090 = phi i32 [ -5, %1034 ], [ -2, %13 ], [ 0, %1088 ], [ -2, %23 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %65 ], [ -2, %49 ], [ -5, %1031 ]
  ret i32 %1090
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 2) i32 @deflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1196, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %1196, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1196, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %1196, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !20
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %1196

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !29
  switch i32 %21, label %1196 [
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
  br i1 %23, label %1196, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = load ptr, ptr %25, align 8, !tbaa !106
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %30 = load i32, ptr %29, align 8, !tbaa !81
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %0, align 8, !tbaa !82
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
  br label %1196

42:                                               ; preds = %35
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %44 = load i32, ptr %43, align 8, !tbaa !107
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %47, ptr %48, align 8, !tbaa !9
  br label %1196

49:                                               ; preds = %42
  %50 = getelementptr inbounds nuw i8, ptr %14, i64 76
  %51 = load i32, ptr %50, align 4, !tbaa !60
  store i32 %1, ptr %50, align 4, !tbaa !60
  %52 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %53 = load i64, ptr %52, align 8, !tbaa !57
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %100, label %55

55:                                               ; preds = %49
  tail call void @_tr_flush_bits(ptr noundef nonnull %14) #12
  %56 = load i64, ptr %52, align 8, !tbaa !57
  %57 = load i32, ptr %43, align 8, !tbaa !107
  %58 = zext i32 %57 to i64
  %59 = tail call i64 @llvm.umin.i64(i64 %56, i64 %58)
  %60 = trunc nuw i64 %59 to i32
  %61 = icmp eq i64 %59, 0
  br i1 %61, label %93, label %62

62:                                               ; preds = %55
  %63 = load ptr, ptr %25, align 8, !tbaa !106
  %64 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %65 = load ptr, ptr %64, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %65, i64 %59, i1 false)
  %66 = load ptr, ptr %25, align 8, !tbaa !106
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 %59
  store ptr %67, ptr %25, align 8, !tbaa !106
  %68 = load ptr, ptr %64, align 8, !tbaa !58
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 %59
  store ptr %69, ptr %64, align 8, !tbaa !58
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %71 = load i64, ptr %70, align 8, !tbaa !108
  %72 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %71, i64 %59), !nosanitize !45
  %73 = extractvalue { i64, i1 } %72, 1, !nosanitize !45
  br i1 %73, label %74, label %75, !prof !46, !nosanitize !45

74:                                               ; preds = %62
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

75:                                               ; preds = %62
  %76 = extractvalue { i64, i1 } %72, 0, !nosanitize !45
  store i64 %76, ptr %70, align 8, !tbaa !108
  %77 = load i32, ptr %43, align 8, !tbaa !107
  %78 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %77, i32 %60), !nosanitize !45
  %79 = extractvalue { i32, i1 } %78, 1, !nosanitize !45
  br i1 %79, label %80, label %81, !prof !46, !nosanitize !45

80:                                               ; preds = %75
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

81:                                               ; preds = %75
  %82 = extractvalue { i32, i1 } %78, 0, !nosanitize !45
  store i32 %82, ptr %43, align 8, !tbaa !107
  %83 = load i64, ptr %52, align 8, !tbaa !57
  %84 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %83, i64 %59), !nosanitize !45
  %85 = extractvalue { i64, i1 } %84, 1, !nosanitize !45
  br i1 %85, label %86, label %87, !prof !46, !nosanitize !45

86:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

87:                                               ; preds = %81
  %88 = extractvalue { i64, i1 } %84, 0, !nosanitize !45
  store i64 %88, ptr %52, align 8, !tbaa !57
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %92 = load ptr, ptr %91, align 8, !tbaa !40
  store ptr %92, ptr %64, align 8, !tbaa !58
  br label %93

93:                                               ; preds = %87, %90, %55
  %94 = phi i64 [ %56, %55 ], [ 0, %90 ], [ %88, %87 ]
  %95 = phi i32 [ %57, %55 ], [ %82, %90 ], [ %82, %87 ]
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = load i32, ptr %20, align 8, !tbaa !29
  br label %115

99:                                               ; preds = %93
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1196

100:                                              ; preds = %49
  br i1 %31, label %101, label %115

101:                                              ; preds = %100
  %102 = shl nuw nsw i32 %1, 1
  %103 = icmp eq i32 %1, 5
  %104 = select i1 %103, i32 -9, i32 0
  %105 = add nsw i32 %104, %102
  %106 = shl nsw i32 %51, 1
  %107 = icmp sgt i32 %51, 4
  %108 = select i1 %107, i32 -9, i32 0
  %109 = add i32 %108, %106
  %110 = icmp sle i32 %105, %109
  %111 = and i1 %37, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %101
  %113 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %113, ptr %114, align 8, !tbaa !9
  br label %1196

115:                                              ; preds = %97, %100, %101
  %116 = phi i64 [ %94, %97 ], [ 0, %100 ], [ 0, %101 ]
  %117 = phi i32 [ %98, %97 ], [ %21, %100 ], [ %21, %101 ]
  switch i32 %117, label %233 [
    i32 666, label %118
    i32 42, label %124
  ]

118:                                              ; preds = %115
  %119 = load i32, ptr %29, align 8, !tbaa !81
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %976, label %121

121:                                              ; preds = %118
  %122 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %122, ptr %123, align 8, !tbaa !9
  br label %1196

124:                                              ; preds = %115
  %125 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %126 = load i32, ptr %125, align 8, !tbaa !30
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store i32 113, ptr %20, align 8, !tbaa !29
  br label %973

129:                                              ; preds = %124
  %130 = getelementptr inbounds nuw i8, ptr %14, i64 84
  %131 = load i32, ptr %130, align 4, !tbaa !31
  %132 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %131, i32 8), !nosanitize !45
  %133 = extractvalue { i32, i1 } %132, 1, !nosanitize !45
  br i1 %133, label %134, label %135, !prof !46, !nosanitize !45

134:                                              ; preds = %129
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

135:                                              ; preds = %129
  %136 = extractvalue { i32, i1 } %132, 0, !nosanitize !45
  %137 = shl i32 %136, 12
  %138 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %139 = load i32, ptr %138, align 8, !tbaa !49
  %140 = icmp sgt i32 %139, 1
  br i1 %140, label %150, label %141

141:                                              ; preds = %135
  %142 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %143 = load i32, ptr %142, align 4, !tbaa !48
  %144 = icmp slt i32 %143, 2
  br i1 %144, label %150, label %145

145:                                              ; preds = %141
  %146 = icmp samesign ult i32 %143, 6
  br i1 %146, label %150, label %147

147:                                              ; preds = %145
  %148 = icmp eq i32 %143, 6
  %149 = select i1 %148, i32 128, i32 192
  br label %150

150:                                              ; preds = %147, %145, %135, %141
  %151 = phi i32 [ 64, %145 ], [ 0, %135 ], [ %149, %147 ], [ 0, %141 ]
  %152 = getelementptr inbounds nuw i8, ptr %14, i64 172
  %153 = or disjoint i32 %151, %137
  %154 = load i32, ptr %152, align 4, !tbaa !73
  %155 = icmp eq i32 %154, 0
  %156 = select i1 %155, i32 2048, i32 2080
  %157 = or disjoint i32 %156, %153
  %158 = urem i32 %157, 31
  %159 = or disjoint i32 %158, %157
  %160 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %116, i64 1), !nosanitize !45
  %161 = extractvalue { i64, i1 } %160, 1, !nosanitize !45
  br i1 %161, label %162, label %163, !prof !46, !nosanitize !45

162:                                              ; preds = %150
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

163:                                              ; preds = %150
  %164 = extractvalue { i64, i1 } %160, 0, !nosanitize !45
  %165 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %166 = load ptr, ptr %165, align 8, !tbaa !40
  %167 = lshr i32 %157, 8
  %168 = trunc i32 %167 to i8
  store i64 %164, ptr %52, align 8, !tbaa !57
  %169 = getelementptr inbounds nuw i8, ptr %166, i64 %116
  store i8 %168, ptr %169, align 1, !tbaa !8
  %170 = load i64, ptr %52, align 8, !tbaa !57
  %171 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %170, i64 1), !nosanitize !45
  %172 = extractvalue { i64, i1 } %171, 1, !nosanitize !45
  br i1 %172, label %173, label %174, !prof !46, !nosanitize !45

173:                                              ; preds = %163
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

174:                                              ; preds = %163
  %175 = extractvalue { i64, i1 } %171, 0, !nosanitize !45
  %176 = load ptr, ptr %165, align 8, !tbaa !40
  %177 = trunc i32 %159 to i8
  %178 = xor i8 %177, 31
  store i64 %175, ptr %52, align 8, !tbaa !57
  %179 = getelementptr inbounds nuw i8, ptr %176, i64 %170
  store i8 %178, ptr %179, align 1, !tbaa !8
  %180 = load i32, ptr %152, align 4, !tbaa !73
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %225, label %182

182:                                              ; preds = %174
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %184 = load i64, ptr %183, align 8, !tbaa !59
  %185 = lshr i64 %184, 16
  %186 = load i64, ptr %52, align 8, !tbaa !57
  %187 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %186, i64 1), !nosanitize !45
  %188 = extractvalue { i64, i1 } %187, 1, !nosanitize !45
  br i1 %188, label %189, label %190, !prof !46, !nosanitize !45

189:                                              ; preds = %182
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

190:                                              ; preds = %182
  %191 = extractvalue { i64, i1 } %187, 0, !nosanitize !45
  %192 = load ptr, ptr %165, align 8, !tbaa !40
  %193 = lshr i64 %184, 24
  %194 = trunc i64 %193 to i8
  store i64 %191, ptr %52, align 8, !tbaa !57
  %195 = getelementptr inbounds nuw i8, ptr %192, i64 %186
  store i8 %194, ptr %195, align 1, !tbaa !8
  %196 = load i64, ptr %52, align 8, !tbaa !57
  %197 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %196, i64 1), !nosanitize !45
  %198 = extractvalue { i64, i1 } %197, 1, !nosanitize !45
  br i1 %198, label %199, label %200, !prof !46, !nosanitize !45

199:                                              ; preds = %190
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

200:                                              ; preds = %190
  %201 = extractvalue { i64, i1 } %197, 0, !nosanitize !45
  %202 = load ptr, ptr %165, align 8, !tbaa !40
  %203 = trunc i64 %185 to i8
  store i64 %201, ptr %52, align 8, !tbaa !57
  %204 = getelementptr inbounds nuw i8, ptr %202, i64 %196
  store i8 %203, ptr %204, align 1, !tbaa !8
  %205 = load i64, ptr %183, align 8, !tbaa !59
  %206 = trunc i64 %205 to i8
  %207 = load i64, ptr %52, align 8, !tbaa !57
  %208 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %207, i64 1), !nosanitize !45
  %209 = extractvalue { i64, i1 } %208, 1, !nosanitize !45
  br i1 %209, label %210, label %211, !prof !46, !nosanitize !45

210:                                              ; preds = %200
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

211:                                              ; preds = %200
  %212 = extractvalue { i64, i1 } %208, 0, !nosanitize !45
  %213 = load ptr, ptr %165, align 8, !tbaa !40
  %214 = lshr i64 %205, 8
  %215 = trunc i64 %214 to i8
  store i64 %212, ptr %52, align 8, !tbaa !57
  %216 = getelementptr inbounds nuw i8, ptr %213, i64 %207
  store i8 %215, ptr %216, align 1, !tbaa !8
  %217 = load i64, ptr %52, align 8, !tbaa !57
  %218 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %217, i64 1), !nosanitize !45
  %219 = extractvalue { i64, i1 } %218, 1, !nosanitize !45
  br i1 %219, label %220, label %221, !prof !46, !nosanitize !45

220:                                              ; preds = %211
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

221:                                              ; preds = %211
  %222 = extractvalue { i64, i1 } %218, 0, !nosanitize !45
  %223 = load ptr, ptr %165, align 8, !tbaa !40
  store i64 %222, ptr %52, align 8, !tbaa !57
  %224 = getelementptr inbounds nuw i8, ptr %223, i64 %217
  store i8 %206, ptr %224, align 1, !tbaa !8
  br label %225

225:                                              ; preds = %221, %174
  %226 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  %227 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %226, ptr %227, align 8, !tbaa !59
  store i32 113, ptr %20, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %228 = load i64, ptr %52, align 8, !tbaa !57
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %225
  %231 = load i32, ptr %20, align 8, !tbaa !29
  br label %233

232:                                              ; preds = %225
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1196

233:                                              ; preds = %115, %230
  %234 = phi i32 [ %231, %230 ], [ %117, %115 ]
  %235 = icmp eq i32 %234, 57
  br i1 %235, label %236, label %495

236:                                              ; preds = %233
  %237 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %237, ptr %238, align 8, !tbaa !59
  %239 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %240 = load i64, ptr %52, align 8, !tbaa !57
  %241 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %240, i64 1), !nosanitize !45
  %242 = extractvalue { i64, i1 } %241, 1, !nosanitize !45
  br i1 %242, label %243, label %244, !prof !46, !nosanitize !45

243:                                              ; preds = %236
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

244:                                              ; preds = %236
  %245 = extractvalue { i64, i1 } %241, 0, !nosanitize !45
  %246 = load ptr, ptr %239, align 8, !tbaa !40
  store i64 %245, ptr %52, align 8, !tbaa !57
  %247 = getelementptr inbounds nuw i8, ptr %246, i64 %240
  store i8 31, ptr %247, align 1, !tbaa !8
  %248 = load i64, ptr %52, align 8, !tbaa !57
  %249 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %248, i64 1), !nosanitize !45
  %250 = extractvalue { i64, i1 } %249, 1, !nosanitize !45
  br i1 %250, label %251, label %252, !prof !46, !nosanitize !45

251:                                              ; preds = %244
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

252:                                              ; preds = %244
  %253 = extractvalue { i64, i1 } %249, 0, !nosanitize !45
  %254 = load ptr, ptr %239, align 8, !tbaa !40
  store i64 %253, ptr %52, align 8, !tbaa !57
  %255 = getelementptr inbounds nuw i8, ptr %254, i64 %248
  store i8 -117, ptr %255, align 1, !tbaa !8
  %256 = load i64, ptr %52, align 8, !tbaa !57
  %257 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %256, i64 1), !nosanitize !45
  %258 = extractvalue { i64, i1 } %257, 1, !nosanitize !45
  br i1 %258, label %259, label %260, !prof !46, !nosanitize !45

259:                                              ; preds = %252
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

260:                                              ; preds = %252
  %261 = extractvalue { i64, i1 } %257, 0, !nosanitize !45
  %262 = load ptr, ptr %239, align 8, !tbaa !40
  store i64 %261, ptr %52, align 8, !tbaa !57
  %263 = getelementptr inbounds nuw i8, ptr %262, i64 %256
  store i8 8, ptr %263, align 1, !tbaa !8
  %264 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %265 = load ptr, ptr %264, align 8, !tbaa !100
  %266 = icmp eq ptr %265, null
  %267 = load i64, ptr %52, align 8, !tbaa !57
  %268 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %267, i64 1), !nosanitize !45
  %269 = extractvalue { i64, i1 } %268, 1, !nosanitize !45
  br i1 %266, label %270, label %339

270:                                              ; preds = %260
  br i1 %269, label %271, label %272, !prof !46, !nosanitize !45

271:                                              ; preds = %270
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

272:                                              ; preds = %270
  %273 = extractvalue { i64, i1 } %268, 0, !nosanitize !45
  %274 = load ptr, ptr %239, align 8, !tbaa !40
  store i64 %273, ptr %52, align 8, !tbaa !57
  %275 = getelementptr inbounds nuw i8, ptr %274, i64 %267
  store i8 0, ptr %275, align 1, !tbaa !8
  %276 = load i64, ptr %52, align 8, !tbaa !57
  %277 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %276, i64 1), !nosanitize !45
  %278 = extractvalue { i64, i1 } %277, 1, !nosanitize !45
  br i1 %278, label %279, label %280, !prof !46, !nosanitize !45

279:                                              ; preds = %272
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

280:                                              ; preds = %272
  %281 = extractvalue { i64, i1 } %277, 0, !nosanitize !45
  %282 = load ptr, ptr %239, align 8, !tbaa !40
  store i64 %281, ptr %52, align 8, !tbaa !57
  %283 = getelementptr inbounds nuw i8, ptr %282, i64 %276
  store i8 0, ptr %283, align 1, !tbaa !8
  %284 = load i64, ptr %52, align 8, !tbaa !57
  %285 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %284, i64 1), !nosanitize !45
  %286 = extractvalue { i64, i1 } %285, 1, !nosanitize !45
  br i1 %286, label %287, label %288, !prof !46, !nosanitize !45

287:                                              ; preds = %280
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

288:                                              ; preds = %280
  %289 = extractvalue { i64, i1 } %285, 0, !nosanitize !45
  %290 = load ptr, ptr %239, align 8, !tbaa !40
  store i64 %289, ptr %52, align 8, !tbaa !57
  %291 = getelementptr inbounds nuw i8, ptr %290, i64 %284
  store i8 0, ptr %291, align 1, !tbaa !8
  %292 = load i64, ptr %52, align 8, !tbaa !57
  %293 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %292, i64 1), !nosanitize !45
  %294 = extractvalue { i64, i1 } %293, 1, !nosanitize !45
  br i1 %294, label %295, label %296, !prof !46, !nosanitize !45

295:                                              ; preds = %288
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

296:                                              ; preds = %288
  %297 = extractvalue { i64, i1 } %293, 0, !nosanitize !45
  %298 = load ptr, ptr %239, align 8, !tbaa !40
  store i64 %297, ptr %52, align 8, !tbaa !57
  %299 = getelementptr inbounds nuw i8, ptr %298, i64 %292
  store i8 0, ptr %299, align 1, !tbaa !8
  %300 = load i64, ptr %52, align 8, !tbaa !57
  %301 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %300, i64 1), !nosanitize !45
  %302 = extractvalue { i64, i1 } %301, 1, !nosanitize !45
  br i1 %302, label %303, label %304, !prof !46, !nosanitize !45

303:                                              ; preds = %296
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

304:                                              ; preds = %296
  %305 = extractvalue { i64, i1 } %301, 0, !nosanitize !45
  %306 = load ptr, ptr %239, align 8, !tbaa !40
  store i64 %305, ptr %52, align 8, !tbaa !57
  %307 = getelementptr inbounds nuw i8, ptr %306, i64 %300
  store i8 0, ptr %307, align 1, !tbaa !8
  %308 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %309 = load i32, ptr %308, align 4, !tbaa !48
  %310 = icmp eq i32 %309, 9
  br i1 %310, label %318, label %311

311:                                              ; preds = %304
  %312 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %313 = load i32, ptr %312, align 8, !tbaa !49
  %314 = icmp sgt i32 %313, 1
  %315 = icmp slt i32 %309, 2
  %316 = or i1 %315, %314
  %317 = select i1 %316, i8 4, i8 0
  br label %318

318:                                              ; preds = %304, %311
  %319 = phi i8 [ %317, %311 ], [ 2, %304 ]
  %320 = load i64, ptr %52, align 8, !tbaa !57
  %321 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %320, i64 1), !nosanitize !45
  %322 = extractvalue { i64, i1 } %321, 1, !nosanitize !45
  br i1 %322, label %323, label %324, !prof !46, !nosanitize !45

323:                                              ; preds = %318
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

324:                                              ; preds = %318
  %325 = extractvalue { i64, i1 } %321, 0, !nosanitize !45
  %326 = load ptr, ptr %239, align 8, !tbaa !40
  store i64 %325, ptr %52, align 8, !tbaa !57
  %327 = getelementptr inbounds nuw i8, ptr %326, i64 %320
  store i8 %319, ptr %327, align 1, !tbaa !8
  %328 = load i64, ptr %52, align 8, !tbaa !57
  %329 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %328, i64 1), !nosanitize !45
  %330 = extractvalue { i64, i1 } %329, 1, !nosanitize !45
  br i1 %330, label %331, label %332, !prof !46, !nosanitize !45

331:                                              ; preds = %324
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

332:                                              ; preds = %324
  %333 = extractvalue { i64, i1 } %329, 0, !nosanitize !45
  %334 = load ptr, ptr %239, align 8, !tbaa !40
  store i64 %333, ptr %52, align 8, !tbaa !57
  %335 = getelementptr inbounds nuw i8, ptr %334, i64 %328
  store i8 3, ptr %335, align 1, !tbaa !8
  store i32 113, ptr %20, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %336 = load i64, ptr %52, align 8, !tbaa !57
  %337 = icmp eq i64 %336, 0
  br i1 %337, label %493, label %338

338:                                              ; preds = %332
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1196

339:                                              ; preds = %260
  br i1 %269, label %340, label %341, !prof !46, !nosanitize !45

340:                                              ; preds = %339
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

341:                                              ; preds = %339
  %342 = extractvalue { i64, i1 } %268, 0, !nosanitize !45
  %343 = load ptr, ptr %239, align 8, !tbaa !40
  %344 = getelementptr inbounds nuw i8, ptr %265, i64 56
  %345 = load ptr, ptr %344, align 8, !tbaa !109
  %346 = icmp eq ptr %345, null
  %347 = getelementptr inbounds nuw i8, ptr %265, i64 40
  %348 = load ptr, ptr %347, align 8, !tbaa !111
  %349 = icmp eq ptr %348, null
  %350 = getelementptr inbounds nuw i8, ptr %265, i64 24
  %351 = load ptr, ptr %350, align 8, !tbaa !112
  %352 = icmp eq ptr %351, null
  %353 = load i32, ptr %265, align 8, !tbaa !113
  %354 = icmp ne i32 %353, 0
  %355 = getelementptr inbounds nuw i8, ptr %265, i64 68
  %356 = load i32, ptr %355, align 4, !tbaa !114
  %357 = icmp eq i32 %356, 0
  %358 = select i1 %357, i8 0, i8 2
  %359 = zext i1 %354 to i8
  %360 = select i1 %352, i8 0, i8 4
  %361 = select i1 %349, i8 0, i8 8
  %362 = select i1 %346, i8 0, i8 16
  %363 = or disjoint i8 %361, %362
  %364 = or disjoint i8 %363, %360
  %365 = or disjoint i8 %364, %359
  %366 = or disjoint i8 %365, %358
  store i64 %342, ptr %52, align 8, !tbaa !57
  %367 = getelementptr inbounds nuw i8, ptr %343, i64 %267
  store i8 %366, ptr %367, align 1, !tbaa !8
  %368 = load i64, ptr %52, align 8, !tbaa !57
  %369 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %368, i64 1), !nosanitize !45
  %370 = extractvalue { i64, i1 } %369, 1, !nosanitize !45
  br i1 %370, label %371, label %372, !prof !46, !nosanitize !45

371:                                              ; preds = %341
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

372:                                              ; preds = %341
  %373 = extractvalue { i64, i1 } %369, 0, !nosanitize !45
  %374 = load ptr, ptr %239, align 8, !tbaa !40
  %375 = load ptr, ptr %264, align 8, !tbaa !100
  %376 = getelementptr inbounds nuw i8, ptr %375, i64 8
  %377 = load i64, ptr %376, align 8, !tbaa !115
  %378 = trunc i64 %377 to i8
  store i64 %373, ptr %52, align 8, !tbaa !57
  %379 = getelementptr inbounds nuw i8, ptr %374, i64 %368
  store i8 %378, ptr %379, align 1, !tbaa !8
  %380 = load i64, ptr %52, align 8, !tbaa !57
  %381 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %380, i64 1), !nosanitize !45
  %382 = extractvalue { i64, i1 } %381, 1, !nosanitize !45
  br i1 %382, label %383, label %384, !prof !46, !nosanitize !45

383:                                              ; preds = %372
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

384:                                              ; preds = %372
  %385 = extractvalue { i64, i1 } %381, 0, !nosanitize !45
  %386 = load ptr, ptr %239, align 8, !tbaa !40
  %387 = load ptr, ptr %264, align 8, !tbaa !100
  %388 = getelementptr inbounds nuw i8, ptr %387, i64 8
  %389 = load i64, ptr %388, align 8, !tbaa !115
  %390 = lshr i64 %389, 8
  %391 = trunc i64 %390 to i8
  store i64 %385, ptr %52, align 8, !tbaa !57
  %392 = getelementptr inbounds nuw i8, ptr %386, i64 %380
  store i8 %391, ptr %392, align 1, !tbaa !8
  %393 = load i64, ptr %52, align 8, !tbaa !57
  %394 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %393, i64 1), !nosanitize !45
  %395 = extractvalue { i64, i1 } %394, 1, !nosanitize !45
  br i1 %395, label %396, label %397, !prof !46, !nosanitize !45

396:                                              ; preds = %384
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

397:                                              ; preds = %384
  %398 = extractvalue { i64, i1 } %394, 0, !nosanitize !45
  %399 = load ptr, ptr %239, align 8, !tbaa !40
  %400 = load ptr, ptr %264, align 8, !tbaa !100
  %401 = getelementptr inbounds nuw i8, ptr %400, i64 8
  %402 = load i64, ptr %401, align 8, !tbaa !115
  %403 = lshr i64 %402, 16
  %404 = trunc i64 %403 to i8
  store i64 %398, ptr %52, align 8, !tbaa !57
  %405 = getelementptr inbounds nuw i8, ptr %399, i64 %393
  store i8 %404, ptr %405, align 1, !tbaa !8
  %406 = load i64, ptr %52, align 8, !tbaa !57
  %407 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %406, i64 1), !nosanitize !45
  %408 = extractvalue { i64, i1 } %407, 1, !nosanitize !45
  br i1 %408, label %409, label %410, !prof !46, !nosanitize !45

409:                                              ; preds = %397
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

410:                                              ; preds = %397
  %411 = extractvalue { i64, i1 } %407, 0, !nosanitize !45
  %412 = load ptr, ptr %239, align 8, !tbaa !40
  %413 = load ptr, ptr %264, align 8, !tbaa !100
  %414 = getelementptr inbounds nuw i8, ptr %413, i64 8
  %415 = load i64, ptr %414, align 8, !tbaa !115
  %416 = lshr i64 %415, 24
  %417 = trunc i64 %416 to i8
  store i64 %411, ptr %52, align 8, !tbaa !57
  %418 = getelementptr inbounds nuw i8, ptr %412, i64 %406
  store i8 %417, ptr %418, align 1, !tbaa !8
  %419 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %420 = load i32, ptr %419, align 4, !tbaa !48
  %421 = icmp eq i32 %420, 9
  br i1 %421, label %429, label %422

422:                                              ; preds = %410
  %423 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %424 = load i32, ptr %423, align 8, !tbaa !49
  %425 = icmp sgt i32 %424, 1
  %426 = icmp slt i32 %420, 2
  %427 = or i1 %426, %425
  %428 = select i1 %427, i8 4, i8 0
  br label %429

429:                                              ; preds = %410, %422
  %430 = phi i8 [ %428, %422 ], [ 2, %410 ]
  %431 = load i64, ptr %52, align 8, !tbaa !57
  %432 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %431, i64 1), !nosanitize !45
  %433 = extractvalue { i64, i1 } %432, 1, !nosanitize !45
  br i1 %433, label %434, label %435, !prof !46, !nosanitize !45

434:                                              ; preds = %429
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

435:                                              ; preds = %429
  %436 = extractvalue { i64, i1 } %432, 0, !nosanitize !45
  %437 = load ptr, ptr %239, align 8, !tbaa !40
  store i64 %436, ptr %52, align 8, !tbaa !57
  %438 = getelementptr inbounds nuw i8, ptr %437, i64 %431
  store i8 %430, ptr %438, align 1, !tbaa !8
  %439 = load i64, ptr %52, align 8, !tbaa !57
  %440 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %439, i64 1), !nosanitize !45
  %441 = extractvalue { i64, i1 } %440, 1, !nosanitize !45
  br i1 %441, label %442, label %443, !prof !46, !nosanitize !45

442:                                              ; preds = %435
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

443:                                              ; preds = %435
  %444 = extractvalue { i64, i1 } %440, 0, !nosanitize !45
  %445 = load ptr, ptr %239, align 8, !tbaa !40
  %446 = load ptr, ptr %264, align 8, !tbaa !100
  %447 = getelementptr inbounds nuw i8, ptr %446, i64 20
  %448 = load i32, ptr %447, align 4, !tbaa !116
  %449 = trunc i32 %448 to i8
  store i64 %444, ptr %52, align 8, !tbaa !57
  %450 = getelementptr inbounds nuw i8, ptr %445, i64 %439
  store i8 %449, ptr %450, align 1, !tbaa !8
  %451 = load ptr, ptr %264, align 8, !tbaa !100
  %452 = getelementptr inbounds nuw i8, ptr %451, i64 24
  %453 = load ptr, ptr %452, align 8, !tbaa !112
  %454 = icmp eq ptr %453, null
  br i1 %454, label %481, label %455

455:                                              ; preds = %443
  %456 = load i64, ptr %52, align 8, !tbaa !57
  %457 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %456, i64 1), !nosanitize !45
  %458 = extractvalue { i64, i1 } %457, 1, !nosanitize !45
  br i1 %458, label %459, label %460, !prof !46, !nosanitize !45

459:                                              ; preds = %455
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

460:                                              ; preds = %455
  %461 = extractvalue { i64, i1 } %457, 0, !nosanitize !45
  %462 = load ptr, ptr %239, align 8, !tbaa !40
  %463 = getelementptr inbounds nuw i8, ptr %451, i64 32
  %464 = load i32, ptr %463, align 8, !tbaa !117
  %465 = trunc i32 %464 to i8
  store i64 %461, ptr %52, align 8, !tbaa !57
  %466 = getelementptr inbounds nuw i8, ptr %462, i64 %456
  store i8 %465, ptr %466, align 1, !tbaa !8
  %467 = load i64, ptr %52, align 8, !tbaa !57
  %468 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %467, i64 1), !nosanitize !45
  %469 = extractvalue { i64, i1 } %468, 1, !nosanitize !45
  br i1 %469, label %470, label %471, !prof !46, !nosanitize !45

470:                                              ; preds = %460
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

471:                                              ; preds = %460
  %472 = extractvalue { i64, i1 } %468, 0, !nosanitize !45
  %473 = load ptr, ptr %239, align 8, !tbaa !40
  %474 = load ptr, ptr %264, align 8, !tbaa !100
  %475 = getelementptr inbounds nuw i8, ptr %474, i64 32
  %476 = load i32, ptr %475, align 8, !tbaa !117
  %477 = lshr i32 %476, 8
  %478 = trunc i32 %477 to i8
  store i64 %472, ptr %52, align 8, !tbaa !57
  %479 = getelementptr inbounds nuw i8, ptr %473, i64 %467
  store i8 %478, ptr %479, align 1, !tbaa !8
  %480 = load ptr, ptr %264, align 8, !tbaa !100
  br label %481

481:                                              ; preds = %471, %443
  %482 = phi ptr [ %480, %471 ], [ %451, %443 ]
  %483 = getelementptr inbounds nuw i8, ptr %482, i64 68
  %484 = load i32, ptr %483, align 4, !tbaa !114
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %491, label %486

486:                                              ; preds = %481
  %487 = load i64, ptr %238, align 8, !tbaa !59
  %488 = load ptr, ptr %239, align 8, !tbaa !40
  %489 = load i64, ptr %52, align 8, !tbaa !57
  %490 = tail call i64 @crc32_z(i64 noundef %487, ptr noundef %488, i64 noundef %489) #12
  store i64 %490, ptr %238, align 8, !tbaa !59
  br label %491

491:                                              ; preds = %481, %486
  %492 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i64 0, ptr %492, align 8, !tbaa !118
  store i32 69, ptr %20, align 8, !tbaa !29
  br label %497

493:                                              ; preds = %332
  %494 = load i32, ptr %20, align 8, !tbaa !29
  br label %495

495:                                              ; preds = %493, %233
  %496 = phi i32 [ %494, %493 ], [ %234, %233 ]
  switch i32 %496, label %973 [
    i32 69, label %497
    i32 73, label %705
    i32 91, label %817
    i32 103, label %928
  ]

497:                                              ; preds = %495, %491
  %498 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %499 = load ptr, ptr %498, align 8, !tbaa !100
  %500 = getelementptr inbounds nuw i8, ptr %499, i64 24
  %501 = load ptr, ptr %500, align 8, !tbaa !112
  %502 = icmp eq ptr %501, null
  br i1 %502, label %704, label %503

503:                                              ; preds = %497
  %504 = getelementptr inbounds nuw i8, ptr %499, i64 32
  %505 = load i32, ptr %504, align 8, !tbaa !117
  %506 = and i32 %505, 65535
  %507 = zext nneg i32 %506 to i64
  %508 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %509 = load i64, ptr %508, align 8, !tbaa !118
  %510 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %507, i64 %509), !nosanitize !45
  %511 = extractvalue { i64, i1 } %510, 1, !nosanitize !45
  br i1 %511, label %512, label %513, !prof !46, !nosanitize !45

512:                                              ; preds = %503
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

513:                                              ; preds = %503
  %514 = load i64, ptr %52, align 8, !tbaa !57
  %515 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %516 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %517 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %518 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %519 = extractvalue { i64, i1 } %510, 0
  %520 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %514, i64 %519), !nosanitize !45
  %521 = extractvalue { i64, i1 } %520, 1, !nosanitize !45
  br i1 %521, label %594, label %522, !prof !46, !nosanitize !45

522:                                              ; preds = %513
  %523 = extractvalue { i64, i1 } %520, 0, !nosanitize !45
  %524 = load i64, ptr %515, align 8, !tbaa !41
  %525 = icmp ugt i64 %523, %524
  br i1 %525, label %526, label %677

526:                                              ; preds = %522
  %527 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %524, i64 %514), !nosanitize !45
  %528 = extractvalue { i64, i1 } %527, 0, !nosanitize !45
  %529 = extractvalue { i64, i1 } %527, 1, !nosanitize !45
  br i1 %529, label %600, label %530, !prof !46, !nosanitize !45

530:                                              ; preds = %526
  %531 = load ptr, ptr %516, align 8, !tbaa !40
  %532 = getelementptr inbounds nuw i8, ptr %531, i64 %514
  %533 = getelementptr inbounds nuw i8, ptr %501, i64 %509
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %532, ptr nonnull align 1 %533, i64 %528, i1 false)
  %534 = load i64, ptr %515, align 8, !tbaa !41
  store i64 %534, ptr %52, align 8, !tbaa !57
  %535 = load ptr, ptr %498, align 8, !tbaa !100
  %536 = getelementptr inbounds nuw i8, ptr %535, i64 68
  %537 = load i32, ptr %536, align 4, !tbaa !114
  %538 = icmp ne i32 %537, 0
  %539 = icmp ugt i64 %534, %514
  %540 = select i1 %538, i1 %539, i1 false
  br i1 %540, label %541, label %547

541:                                              ; preds = %530
  %542 = sub nuw i64 %534, %514
  %543 = load ptr, ptr %516, align 8, !tbaa !40
  %544 = getelementptr inbounds nuw i8, ptr %543, i64 %514
  %545 = load i64, ptr %517, align 8, !tbaa !59
  %546 = tail call i64 @crc32_z(i64 noundef %545, ptr noundef %544, i64 noundef %542) #12
  store i64 %546, ptr %517, align 8, !tbaa !59
  br label %547

547:                                              ; preds = %541, %530
  %548 = load i64, ptr %508, align 8, !tbaa !118
  %549 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %548, i64 %528), !nosanitize !45
  %550 = extractvalue { i64, i1 } %549, 1, !nosanitize !45
  br i1 %550, label %623, label %551, !prof !46, !nosanitize !45

551:                                              ; preds = %547
  %552 = extractvalue { i64, i1 } %549, 0, !nosanitize !45
  store i64 %552, ptr %508, align 8, !tbaa !118
  %553 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %553) #12
  %554 = getelementptr inbounds nuw i8, ptr %553, i64 40
  %555 = load i64, ptr %554, align 8, !tbaa !57
  %556 = load i32, ptr %43, align 8, !tbaa !107
  %557 = zext i32 %556 to i64
  %558 = tail call i64 @llvm.umin.i64(i64 %555, i64 %557)
  %559 = trunc nuw i64 %558 to i32
  %560 = icmp eq i64 %558, 0
  br i1 %560, label %588, label %561

561:                                              ; preds = %551
  %562 = load ptr, ptr %25, align 8, !tbaa !106
  %563 = getelementptr inbounds nuw i8, ptr %553, i64 32
  %564 = load ptr, ptr %563, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %562, ptr align 1 %564, i64 %558, i1 false)
  %565 = load ptr, ptr %25, align 8, !tbaa !106
  %566 = getelementptr inbounds nuw i8, ptr %565, i64 %558
  store ptr %566, ptr %25, align 8, !tbaa !106
  %567 = load ptr, ptr %563, align 8, !tbaa !58
  %568 = getelementptr inbounds nuw i8, ptr %567, i64 %558
  store ptr %568, ptr %563, align 8, !tbaa !58
  %569 = load i64, ptr %518, align 8, !tbaa !108
  %570 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %569, i64 %558), !nosanitize !45
  %571 = extractvalue { i64, i1 } %570, 1, !nosanitize !45
  br i1 %571, label %645, label %572, !prof !46, !nosanitize !45

572:                                              ; preds = %561
  %573 = extractvalue { i64, i1 } %570, 0, !nosanitize !45
  store i64 %573, ptr %518, align 8, !tbaa !108
  %574 = load i32, ptr %43, align 8, !tbaa !107
  %575 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %574, i32 %559), !nosanitize !45
  %576 = extractvalue { i32, i1 } %575, 1, !nosanitize !45
  br i1 %576, label %651, label %577, !prof !46, !nosanitize !45

577:                                              ; preds = %572
  %578 = extractvalue { i32, i1 } %575, 0, !nosanitize !45
  store i32 %578, ptr %43, align 8, !tbaa !107
  %579 = load i64, ptr %554, align 8, !tbaa !57
  %580 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %579, i64 %558), !nosanitize !45
  %581 = extractvalue { i64, i1 } %580, 1, !nosanitize !45
  br i1 %581, label %657, label %582, !prof !46, !nosanitize !45

582:                                              ; preds = %577
  %583 = extractvalue { i64, i1 } %580, 0, !nosanitize !45
  store i64 %583, ptr %554, align 8, !tbaa !57
  %584 = icmp eq i64 %583, 0
  br i1 %584, label %585, label %588

585:                                              ; preds = %582
  %586 = getelementptr inbounds nuw i8, ptr %553, i64 16
  %587 = load ptr, ptr %586, align 8, !tbaa !40
  store ptr %587, ptr %563, align 8, !tbaa !58
  br label %588

588:                                              ; preds = %585, %582, %551
  %589 = load i64, ptr %52, align 8, !tbaa !57
  %590 = icmp eq i64 %589, 0
  br i1 %590, label %591, label %667

591:                                              ; preds = %588
  %592 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %519, i64 %528), !nosanitize !45
  %593 = extractvalue { i64, i1 } %592, 1, !nosanitize !45
  br i1 %593, label %671, label %595, !prof !46, !nosanitize !45

594:                                              ; preds = %513
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

595:                                              ; preds = %591, %668
  %596 = phi { i64, i1 } [ %669, %668 ], [ %592, %591 ]
  %597 = extractvalue { i64, i1 } %596, 0
  %598 = load i64, ptr %515, align 8, !tbaa !41
  %599 = icmp ugt i64 %597, %598
  br i1 %599, label %601, label %672

600:                                              ; preds = %526
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

601:                                              ; preds = %595
  %602 = load ptr, ptr %516, align 8, !tbaa !40
  %603 = load ptr, ptr %498, align 8, !tbaa !100
  %604 = getelementptr inbounds nuw i8, ptr %603, i64 24
  %605 = load ptr, ptr %604, align 8, !tbaa !112
  %606 = load i64, ptr %508, align 8, !tbaa !118
  %607 = getelementptr inbounds nuw i8, ptr %605, i64 %606
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %602, ptr align 1 %607, i64 %598, i1 false)
  %608 = load i64, ptr %515, align 8, !tbaa !41
  store i64 %608, ptr %52, align 8, !tbaa !57
  %609 = load ptr, ptr %498, align 8, !tbaa !100
  %610 = getelementptr inbounds nuw i8, ptr %609, i64 68
  %611 = load i32, ptr %610, align 4, !tbaa !114
  %612 = icmp ne i32 %611, 0
  %613 = icmp ne i64 %608, 0
  %614 = select i1 %612, i1 %613, i1 false
  br i1 %614, label %615, label %619

615:                                              ; preds = %601
  %616 = load ptr, ptr %516, align 8, !tbaa !40
  %617 = load i64, ptr %517, align 8, !tbaa !59
  %618 = tail call i64 @crc32_z(i64 noundef %617, ptr noundef %616, i64 noundef %608) #12
  store i64 %618, ptr %517, align 8, !tbaa !59
  br label %619

619:                                              ; preds = %615, %601
  %620 = load i64, ptr %508, align 8, !tbaa !118
  %621 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %620, i64 %598), !nosanitize !45
  %622 = extractvalue { i64, i1 } %621, 1, !nosanitize !45
  br i1 %622, label %623, label %624, !prof !46, !nosanitize !45

623:                                              ; preds = %619, %547
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

624:                                              ; preds = %619
  %625 = extractvalue { i64, i1 } %621, 0, !nosanitize !45
  store i64 %625, ptr %508, align 8, !tbaa !118
  %626 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %626) #12
  %627 = getelementptr inbounds nuw i8, ptr %626, i64 40
  %628 = load i64, ptr %627, align 8, !tbaa !57
  %629 = load i32, ptr %43, align 8, !tbaa !107
  %630 = zext i32 %629 to i64
  %631 = tail call i64 @llvm.umin.i64(i64 %628, i64 %630)
  %632 = trunc nuw i64 %631 to i32
  %633 = icmp eq i64 %631, 0
  br i1 %633, label %664, label %634

634:                                              ; preds = %624
  %635 = load ptr, ptr %25, align 8, !tbaa !106
  %636 = getelementptr inbounds nuw i8, ptr %626, i64 32
  %637 = load ptr, ptr %636, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %635, ptr align 1 %637, i64 %631, i1 false)
  %638 = load ptr, ptr %25, align 8, !tbaa !106
  %639 = getelementptr inbounds nuw i8, ptr %638, i64 %631
  store ptr %639, ptr %25, align 8, !tbaa !106
  %640 = load ptr, ptr %636, align 8, !tbaa !58
  %641 = getelementptr inbounds nuw i8, ptr %640, i64 %631
  store ptr %641, ptr %636, align 8, !tbaa !58
  %642 = load i64, ptr %518, align 8, !tbaa !108
  %643 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %642, i64 %631), !nosanitize !45
  %644 = extractvalue { i64, i1 } %643, 1, !nosanitize !45
  br i1 %644, label %645, label %646, !prof !46, !nosanitize !45

645:                                              ; preds = %634, %561
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

646:                                              ; preds = %634
  %647 = extractvalue { i64, i1 } %643, 0, !nosanitize !45
  store i64 %647, ptr %518, align 8, !tbaa !108
  %648 = load i32, ptr %43, align 8, !tbaa !107
  %649 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %648, i32 %632), !nosanitize !45
  %650 = extractvalue { i32, i1 } %649, 1, !nosanitize !45
  br i1 %650, label %651, label %652, !prof !46, !nosanitize !45

651:                                              ; preds = %646, %572
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

652:                                              ; preds = %646
  %653 = extractvalue { i32, i1 } %649, 0, !nosanitize !45
  store i32 %653, ptr %43, align 8, !tbaa !107
  %654 = load i64, ptr %627, align 8, !tbaa !57
  %655 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %654, i64 %631), !nosanitize !45
  %656 = extractvalue { i64, i1 } %655, 1, !nosanitize !45
  br i1 %656, label %657, label %658, !prof !46, !nosanitize !45

657:                                              ; preds = %652, %577
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

658:                                              ; preds = %652
  %659 = extractvalue { i64, i1 } %655, 0, !nosanitize !45
  store i64 %659, ptr %627, align 8, !tbaa !57
  %660 = icmp eq i64 %659, 0
  br i1 %660, label %661, label %664

661:                                              ; preds = %658
  %662 = getelementptr inbounds nuw i8, ptr %626, i64 16
  %663 = load ptr, ptr %662, align 8, !tbaa !40
  store ptr %663, ptr %636, align 8, !tbaa !58
  br label %664

664:                                              ; preds = %624, %658, %661
  %665 = load i64, ptr %52, align 8, !tbaa !57
  %666 = icmp eq i64 %665, 0
  br i1 %666, label %668, label %667

667:                                              ; preds = %664, %588
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1196

668:                                              ; preds = %664
  %669 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %597, i64 %598), !nosanitize !45
  %670 = extractvalue { i64, i1 } %669, 1, !nosanitize !45
  br i1 %670, label %671, label %595, !prof !46, !llvm.loop !119, !nosanitize !45

671:                                              ; preds = %668, %591
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

672:                                              ; preds = %595
  %673 = load ptr, ptr %498, align 8, !tbaa !100
  %674 = getelementptr inbounds nuw i8, ptr %673, i64 24
  %675 = load ptr, ptr %674, align 8, !tbaa !112
  %676 = load i64, ptr %508, align 8, !tbaa !118
  br label %677

677:                                              ; preds = %672, %522
  %678 = phi i64 [ %509, %522 ], [ %676, %672 ]
  %679 = phi ptr [ %501, %522 ], [ %675, %672 ]
  %680 = phi i64 [ %514, %522 ], [ 0, %672 ]
  %681 = phi i64 [ %519, %522 ], [ %597, %672 ]
  %682 = load ptr, ptr %516, align 8, !tbaa !40
  %683 = getelementptr inbounds nuw i8, ptr %682, i64 %680
  %684 = getelementptr inbounds nuw i8, ptr %679, i64 %678
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %683, ptr align 1 %684, i64 %681, i1 false)
  %685 = load i64, ptr %52, align 8, !tbaa !57
  %686 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %685, i64 %681), !nosanitize !45
  %687 = extractvalue { i64, i1 } %686, 0, !nosanitize !45
  %688 = extractvalue { i64, i1 } %686, 1, !nosanitize !45
  br i1 %688, label %689, label %690, !prof !46, !nosanitize !45

689:                                              ; preds = %677
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

690:                                              ; preds = %677
  store i64 %687, ptr %52, align 8, !tbaa !57
  %691 = load ptr, ptr %498, align 8, !tbaa !100
  %692 = getelementptr inbounds nuw i8, ptr %691, i64 68
  %693 = load i32, ptr %692, align 4, !tbaa !114
  %694 = icmp ne i32 %693, 0
  %695 = icmp ugt i64 %687, %680
  %696 = select i1 %694, i1 %695, i1 false
  br i1 %696, label %697, label %703

697:                                              ; preds = %690
  %698 = sub nuw i64 %687, %680
  %699 = load ptr, ptr %516, align 8, !tbaa !40
  %700 = getelementptr inbounds nuw i8, ptr %699, i64 %680
  %701 = load i64, ptr %517, align 8, !tbaa !59
  %702 = tail call i64 @crc32_z(i64 noundef %701, ptr noundef %700, i64 noundef %698) #12
  store i64 %702, ptr %517, align 8, !tbaa !59
  br label %703

703:                                              ; preds = %690, %697
  store i64 0, ptr %508, align 8, !tbaa !118
  br label %704

704:                                              ; preds = %497, %703
  store i32 73, ptr %20, align 8, !tbaa !29
  br label %705

705:                                              ; preds = %495, %704
  %706 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %707 = load ptr, ptr %706, align 8, !tbaa !100
  %708 = getelementptr inbounds nuw i8, ptr %707, i64 40
  %709 = load ptr, ptr %708, align 8, !tbaa !111
  %710 = icmp eq ptr %709, null
  br i1 %710, label %816, label %711

711:                                              ; preds = %705
  %712 = load i64, ptr %52, align 8, !tbaa !57
  %713 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %714 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %715 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %716 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %717 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %718

718:                                              ; preds = %794, %711
  %719 = phi i64 [ %712, %711 ], [ %781, %794 ]
  %720 = load i64, ptr %52, align 8, !tbaa !57
  %721 = load i64, ptr %713, align 8, !tbaa !41
  %722 = icmp eq i64 %720, %721
  br i1 %722, label %723, label %779

723:                                              ; preds = %718
  %724 = load ptr, ptr %706, align 8, !tbaa !100
  %725 = getelementptr inbounds nuw i8, ptr %724, i64 68
  %726 = load i32, ptr %725, align 4, !tbaa !114
  %727 = icmp ne i32 %726, 0
  %728 = icmp ugt i64 %720, %719
  %729 = select i1 %727, i1 %728, i1 false
  br i1 %729, label %730, label %736

730:                                              ; preds = %723
  %731 = sub nuw i64 %720, %719
  %732 = load ptr, ptr %714, align 8, !tbaa !40
  %733 = getelementptr inbounds nuw i8, ptr %732, i64 %719
  %734 = load i64, ptr %715, align 8, !tbaa !59
  %735 = tail call i64 @crc32_z(i64 noundef %734, ptr noundef %733, i64 noundef %731) #12
  store i64 %735, ptr %715, align 8, !tbaa !59
  br label %736

736:                                              ; preds = %730, %723
  %737 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %737) #12
  %738 = getelementptr inbounds nuw i8, ptr %737, i64 40
  %739 = load i64, ptr %738, align 8, !tbaa !57
  %740 = load i32, ptr %43, align 8, !tbaa !107
  %741 = zext i32 %740 to i64
  %742 = tail call i64 @llvm.umin.i64(i64 %739, i64 %741)
  %743 = trunc nuw i64 %742 to i32
  %744 = icmp eq i64 %742, 0
  br i1 %744, label %775, label %745

745:                                              ; preds = %736
  %746 = load ptr, ptr %25, align 8, !tbaa !106
  %747 = getelementptr inbounds nuw i8, ptr %737, i64 32
  %748 = load ptr, ptr %747, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %746, ptr align 1 %748, i64 %742, i1 false)
  %749 = load ptr, ptr %25, align 8, !tbaa !106
  %750 = getelementptr inbounds nuw i8, ptr %749, i64 %742
  store ptr %750, ptr %25, align 8, !tbaa !106
  %751 = load ptr, ptr %747, align 8, !tbaa !58
  %752 = getelementptr inbounds nuw i8, ptr %751, i64 %742
  store ptr %752, ptr %747, align 8, !tbaa !58
  %753 = load i64, ptr %716, align 8, !tbaa !108
  %754 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %753, i64 %742), !nosanitize !45
  %755 = extractvalue { i64, i1 } %754, 1, !nosanitize !45
  br i1 %755, label %756, label %757, !prof !46, !nosanitize !45

756:                                              ; preds = %745
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

757:                                              ; preds = %745
  %758 = extractvalue { i64, i1 } %754, 0, !nosanitize !45
  store i64 %758, ptr %716, align 8, !tbaa !108
  %759 = load i32, ptr %43, align 8, !tbaa !107
  %760 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %759, i32 %743), !nosanitize !45
  %761 = extractvalue { i32, i1 } %760, 1, !nosanitize !45
  br i1 %761, label %762, label %763, !prof !46, !nosanitize !45

762:                                              ; preds = %757
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

763:                                              ; preds = %757
  %764 = extractvalue { i32, i1 } %760, 0, !nosanitize !45
  store i32 %764, ptr %43, align 8, !tbaa !107
  %765 = load i64, ptr %738, align 8, !tbaa !57
  %766 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %765, i64 %742), !nosanitize !45
  %767 = extractvalue { i64, i1 } %766, 1, !nosanitize !45
  br i1 %767, label %768, label %769, !prof !46, !nosanitize !45

768:                                              ; preds = %763
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

769:                                              ; preds = %763
  %770 = extractvalue { i64, i1 } %766, 0, !nosanitize !45
  store i64 %770, ptr %738, align 8, !tbaa !57
  %771 = icmp eq i64 %770, 0
  br i1 %771, label %772, label %775

772:                                              ; preds = %769
  %773 = getelementptr inbounds nuw i8, ptr %737, i64 16
  %774 = load ptr, ptr %773, align 8, !tbaa !40
  store ptr %774, ptr %747, align 8, !tbaa !58
  br label %775

775:                                              ; preds = %736, %769, %772
  %776 = load i64, ptr %52, align 8, !tbaa !57
  %777 = icmp eq i64 %776, 0
  br i1 %777, label %779, label %778

778:                                              ; preds = %775
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1196

779:                                              ; preds = %775, %718
  %780 = phi i64 [ %720, %718 ], [ 0, %775 ]
  %781 = phi i64 [ %719, %718 ], [ 0, %775 ]
  %782 = load i64, ptr %717, align 8, !tbaa !118
  %783 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %782, i64 1), !nosanitize !45
  %784 = extractvalue { i64, i1 } %783, 1, !nosanitize !45
  br i1 %784, label %785, label %786, !prof !46, !nosanitize !45

785:                                              ; preds = %779
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

786:                                              ; preds = %779
  %787 = extractvalue { i64, i1 } %783, 0, !nosanitize !45
  %788 = load ptr, ptr %706, align 8, !tbaa !100
  %789 = getelementptr inbounds nuw i8, ptr %788, i64 40
  %790 = load ptr, ptr %789, align 8, !tbaa !111
  store i64 %787, ptr %717, align 8, !tbaa !118
  %791 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %780, i64 1), !nosanitize !45
  %792 = extractvalue { i64, i1 } %791, 1, !nosanitize !45
  br i1 %792, label %793, label %794, !prof !46, !nosanitize !45

793:                                              ; preds = %786
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

794:                                              ; preds = %786
  %795 = extractvalue { i64, i1 } %791, 0, !nosanitize !45
  %796 = load ptr, ptr %714, align 8, !tbaa !40
  %797 = getelementptr inbounds nuw i8, ptr %790, i64 %782
  %798 = load i8, ptr %797, align 1, !tbaa !8
  store i64 %795, ptr %52, align 8, !tbaa !57
  %799 = getelementptr inbounds nuw i8, ptr %796, i64 %780
  store i8 %798, ptr %799, align 1, !tbaa !8
  %800 = icmp eq i8 %798, 0
  br i1 %800, label %801, label %718, !llvm.loop !122

801:                                              ; preds = %794
  %802 = load ptr, ptr %706, align 8, !tbaa !100
  %803 = getelementptr inbounds nuw i8, ptr %802, i64 68
  %804 = load i32, ptr %803, align 4, !tbaa !114
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %815, label %806

806:                                              ; preds = %801
  %807 = load i64, ptr %52, align 8, !tbaa !57
  %808 = icmp ugt i64 %807, %781
  br i1 %808, label %809, label %815

809:                                              ; preds = %806
  %810 = sub nuw i64 %807, %781
  %811 = load ptr, ptr %714, align 8, !tbaa !40
  %812 = getelementptr inbounds nuw i8, ptr %811, i64 %781
  %813 = load i64, ptr %715, align 8, !tbaa !59
  %814 = tail call i64 @crc32_z(i64 noundef %813, ptr noundef %812, i64 noundef %810) #12
  store i64 %814, ptr %715, align 8, !tbaa !59
  br label %815

815:                                              ; preds = %809, %806, %801
  store i64 0, ptr %717, align 8, !tbaa !118
  br label %816

816:                                              ; preds = %705, %815
  store i32 91, ptr %20, align 8, !tbaa !29
  br label %817

817:                                              ; preds = %495, %816
  %818 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %819 = load ptr, ptr %818, align 8, !tbaa !100
  %820 = getelementptr inbounds nuw i8, ptr %819, i64 56
  %821 = load ptr, ptr %820, align 8, !tbaa !109
  %822 = icmp eq ptr %821, null
  br i1 %822, label %927, label %823

823:                                              ; preds = %817
  %824 = load i64, ptr %52, align 8, !tbaa !57
  %825 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %826 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %827 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %828 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %829 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %830

830:                                              ; preds = %906, %823
  %831 = phi i64 [ %824, %823 ], [ %893, %906 ]
  %832 = load i64, ptr %52, align 8, !tbaa !57
  %833 = load i64, ptr %825, align 8, !tbaa !41
  %834 = icmp eq i64 %832, %833
  br i1 %834, label %835, label %891

835:                                              ; preds = %830
  %836 = load ptr, ptr %818, align 8, !tbaa !100
  %837 = getelementptr inbounds nuw i8, ptr %836, i64 68
  %838 = load i32, ptr %837, align 4, !tbaa !114
  %839 = icmp ne i32 %838, 0
  %840 = icmp ugt i64 %832, %831
  %841 = select i1 %839, i1 %840, i1 false
  br i1 %841, label %842, label %848

842:                                              ; preds = %835
  %843 = sub nuw i64 %832, %831
  %844 = load ptr, ptr %826, align 8, !tbaa !40
  %845 = getelementptr inbounds nuw i8, ptr %844, i64 %831
  %846 = load i64, ptr %827, align 8, !tbaa !59
  %847 = tail call i64 @crc32_z(i64 noundef %846, ptr noundef %845, i64 noundef %843) #12
  store i64 %847, ptr %827, align 8, !tbaa !59
  br label %848

848:                                              ; preds = %842, %835
  %849 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %849) #12
  %850 = getelementptr inbounds nuw i8, ptr %849, i64 40
  %851 = load i64, ptr %850, align 8, !tbaa !57
  %852 = load i32, ptr %43, align 8, !tbaa !107
  %853 = zext i32 %852 to i64
  %854 = tail call i64 @llvm.umin.i64(i64 %851, i64 %853)
  %855 = trunc nuw i64 %854 to i32
  %856 = icmp eq i64 %854, 0
  br i1 %856, label %887, label %857

857:                                              ; preds = %848
  %858 = load ptr, ptr %25, align 8, !tbaa !106
  %859 = getelementptr inbounds nuw i8, ptr %849, i64 32
  %860 = load ptr, ptr %859, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %858, ptr align 1 %860, i64 %854, i1 false)
  %861 = load ptr, ptr %25, align 8, !tbaa !106
  %862 = getelementptr inbounds nuw i8, ptr %861, i64 %854
  store ptr %862, ptr %25, align 8, !tbaa !106
  %863 = load ptr, ptr %859, align 8, !tbaa !58
  %864 = getelementptr inbounds nuw i8, ptr %863, i64 %854
  store ptr %864, ptr %859, align 8, !tbaa !58
  %865 = load i64, ptr %828, align 8, !tbaa !108
  %866 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %865, i64 %854), !nosanitize !45
  %867 = extractvalue { i64, i1 } %866, 1, !nosanitize !45
  br i1 %867, label %868, label %869, !prof !46, !nosanitize !45

868:                                              ; preds = %857
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

869:                                              ; preds = %857
  %870 = extractvalue { i64, i1 } %866, 0, !nosanitize !45
  store i64 %870, ptr %828, align 8, !tbaa !108
  %871 = load i32, ptr %43, align 8, !tbaa !107
  %872 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %871, i32 %855), !nosanitize !45
  %873 = extractvalue { i32, i1 } %872, 1, !nosanitize !45
  br i1 %873, label %874, label %875, !prof !46, !nosanitize !45

874:                                              ; preds = %869
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

875:                                              ; preds = %869
  %876 = extractvalue { i32, i1 } %872, 0, !nosanitize !45
  store i32 %876, ptr %43, align 8, !tbaa !107
  %877 = load i64, ptr %850, align 8, !tbaa !57
  %878 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %877, i64 %854), !nosanitize !45
  %879 = extractvalue { i64, i1 } %878, 1, !nosanitize !45
  br i1 %879, label %880, label %881, !prof !46, !nosanitize !45

880:                                              ; preds = %875
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

881:                                              ; preds = %875
  %882 = extractvalue { i64, i1 } %878, 0, !nosanitize !45
  store i64 %882, ptr %850, align 8, !tbaa !57
  %883 = icmp eq i64 %882, 0
  br i1 %883, label %884, label %887

884:                                              ; preds = %881
  %885 = getelementptr inbounds nuw i8, ptr %849, i64 16
  %886 = load ptr, ptr %885, align 8, !tbaa !40
  store ptr %886, ptr %859, align 8, !tbaa !58
  br label %887

887:                                              ; preds = %848, %881, %884
  %888 = load i64, ptr %52, align 8, !tbaa !57
  %889 = icmp eq i64 %888, 0
  br i1 %889, label %891, label %890

890:                                              ; preds = %887
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1196

891:                                              ; preds = %887, %830
  %892 = phi i64 [ %832, %830 ], [ 0, %887 ]
  %893 = phi i64 [ %831, %830 ], [ 0, %887 ]
  %894 = load i64, ptr %829, align 8, !tbaa !118
  %895 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %894, i64 1), !nosanitize !45
  %896 = extractvalue { i64, i1 } %895, 1, !nosanitize !45
  br i1 %896, label %897, label %898, !prof !46, !nosanitize !45

897:                                              ; preds = %891
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

898:                                              ; preds = %891
  %899 = extractvalue { i64, i1 } %895, 0, !nosanitize !45
  %900 = load ptr, ptr %818, align 8, !tbaa !100
  %901 = getelementptr inbounds nuw i8, ptr %900, i64 56
  %902 = load ptr, ptr %901, align 8, !tbaa !109
  store i64 %899, ptr %829, align 8, !tbaa !118
  %903 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %892, i64 1), !nosanitize !45
  %904 = extractvalue { i64, i1 } %903, 1, !nosanitize !45
  br i1 %904, label %905, label %906, !prof !46, !nosanitize !45

905:                                              ; preds = %898
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

906:                                              ; preds = %898
  %907 = extractvalue { i64, i1 } %903, 0, !nosanitize !45
  %908 = load ptr, ptr %826, align 8, !tbaa !40
  %909 = getelementptr inbounds nuw i8, ptr %902, i64 %894
  %910 = load i8, ptr %909, align 1, !tbaa !8
  store i64 %907, ptr %52, align 8, !tbaa !57
  %911 = getelementptr inbounds nuw i8, ptr %908, i64 %892
  store i8 %910, ptr %911, align 1, !tbaa !8
  %912 = icmp eq i8 %910, 0
  br i1 %912, label %913, label %830, !llvm.loop !123

913:                                              ; preds = %906
  %914 = load ptr, ptr %818, align 8, !tbaa !100
  %915 = getelementptr inbounds nuw i8, ptr %914, i64 68
  %916 = load i32, ptr %915, align 4, !tbaa !114
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %927, label %918

918:                                              ; preds = %913
  %919 = load i64, ptr %52, align 8, !tbaa !57
  %920 = icmp ugt i64 %919, %893
  br i1 %920, label %921, label %927

921:                                              ; preds = %918
  %922 = sub nuw i64 %919, %893
  %923 = load ptr, ptr %826, align 8, !tbaa !40
  %924 = getelementptr inbounds nuw i8, ptr %923, i64 %893
  %925 = load i64, ptr %827, align 8, !tbaa !59
  %926 = tail call i64 @crc32_z(i64 noundef %925, ptr noundef %924, i64 noundef %922) #12
  store i64 %926, ptr %827, align 8, !tbaa !59
  br label %927

927:                                              ; preds = %817, %913, %918, %921
  store i32 103, ptr %20, align 8, !tbaa !29
  br label %928

928:                                              ; preds = %495, %927
  %929 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %930 = load ptr, ptr %929, align 8, !tbaa !100
  %931 = getelementptr inbounds nuw i8, ptr %930, i64 68
  %932 = load i32, ptr %931, align 4, !tbaa !114
  %933 = icmp eq i32 %932, 0
  br i1 %933, label %969, label %934

934:                                              ; preds = %928
  %935 = load i64, ptr %52, align 8, !tbaa !57
  %936 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %935, i64 2), !nosanitize !45
  %937 = extractvalue { i64, i1 } %936, 1, !nosanitize !45
  br i1 %937, label %938, label %939, !prof !46, !nosanitize !45

938:                                              ; preds = %934
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

939:                                              ; preds = %934
  %940 = extractvalue { i64, i1 } %936, 0, !nosanitize !45
  %941 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %942 = load i64, ptr %941, align 8, !tbaa !41
  %943 = icmp ugt i64 %940, %942
  br i1 %943, label %944, label %948

944:                                              ; preds = %939
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %945 = load i64, ptr %52, align 8, !tbaa !57
  %946 = icmp eq i64 %945, 0
  br i1 %946, label %948, label %947

947:                                              ; preds = %944
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1196

948:                                              ; preds = %944, %939
  %949 = phi i64 [ 0, %944 ], [ %935, %939 ]
  %950 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %951 = add nuw i64 %949, 1
  %952 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %953 = load ptr, ptr %952, align 8, !tbaa !40
  %954 = load i64, ptr %950, align 8, !tbaa !59
  %955 = trunc i64 %954 to i8
  store i64 %951, ptr %52, align 8, !tbaa !57
  %956 = getelementptr inbounds nuw i8, ptr %953, i64 %949
  store i8 %955, ptr %956, align 1, !tbaa !8
  %957 = load i64, ptr %52, align 8, !tbaa !57
  %958 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %957, i64 1), !nosanitize !45
  %959 = extractvalue { i64, i1 } %958, 1, !nosanitize !45
  br i1 %959, label %960, label %961, !prof !46, !nosanitize !45

960:                                              ; preds = %948
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

961:                                              ; preds = %948
  %962 = extractvalue { i64, i1 } %958, 0, !nosanitize !45
  %963 = load ptr, ptr %952, align 8, !tbaa !40
  %964 = load i64, ptr %950, align 8, !tbaa !59
  %965 = lshr i64 %964, 8
  %966 = trunc i64 %965 to i8
  store i64 %962, ptr %52, align 8, !tbaa !57
  %967 = getelementptr inbounds nuw i8, ptr %963, i64 %957
  store i8 %966, ptr %967, align 1, !tbaa !8
  %968 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %968, ptr %950, align 8, !tbaa !59
  br label %969

969:                                              ; preds = %961, %928
  store i32 113, ptr %20, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %970 = load i64, ptr %52, align 8, !tbaa !57
  %971 = icmp eq i64 %970, 0
  br i1 %971, label %973, label %972

972:                                              ; preds = %969
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1196

973:                                              ; preds = %495, %128, %969
  %974 = load i32, ptr %29, align 8, !tbaa !81
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %976, label %985

976:                                              ; preds = %118, %973
  %977 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %978 = load i32, ptr %977, align 4, !tbaa !75
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %980, label %985

980:                                              ; preds = %976
  %981 = icmp eq i32 %1, 0
  br i1 %981, label %1196, label %982

982:                                              ; preds = %980
  %983 = load i32, ptr %20, align 8, !tbaa !29
  %984 = icmp eq i32 %983, 666
  br i1 %984, label %1047, label %985

985:                                              ; preds = %982, %976, %973
  %986 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %987 = load i32, ptr %986, align 4, !tbaa !48
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %989, label %991

989:                                              ; preds = %985
  %990 = tail call i32 @deflate_stored(ptr noundef nonnull %14, i32 noundef %1)
  br label %1004

991:                                              ; preds = %985
  %992 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %993 = load i32, ptr %992, align 8, !tbaa !49
  switch i32 %993, label %998 [
    i32 2, label %994
    i32 3, label %996
  ]

994:                                              ; preds = %991
  %995 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %14, i32 noundef %1)
  br label %1004

996:                                              ; preds = %991
  %997 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %14, i32 noundef %1)
  br label %1004

998:                                              ; preds = %991
  %999 = sext i32 %987 to i64
  %1000 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %999
  %1001 = getelementptr inbounds nuw i8, ptr %1000, i64 8
  %1002 = load ptr, ptr %1001, align 8, !tbaa !105
  %1003 = tail call i32 %1002(ptr noundef nonnull %14, i32 noundef %1) #12
  br label %1004

1004:                                             ; preds = %994, %998, %996, %989
  %1005 = phi i32 [ %990, %989 ], [ %995, %994 ], [ %997, %996 ], [ %1003, %998 ]
  %1006 = and i32 %1005, -2
  %1007 = icmp eq i32 %1006, 2
  br i1 %1007, label %1008, label %1009

1008:                                             ; preds = %1004
  store i32 666, ptr %20, align 8, !tbaa !29
  br label %1009

1009:                                             ; preds = %1004, %1008
  %1010 = and i32 %1005, -3
  %1011 = icmp eq i32 %1010, 0
  br i1 %1011, label %1012, label %1016

1012:                                             ; preds = %1009
  %1013 = load i32, ptr %43, align 8, !tbaa !107
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1015, label %1196

1015:                                             ; preds = %1012
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1196

1016:                                             ; preds = %1009
  %1017 = icmp eq i32 %1005, 1
  br i1 %1017, label %1018, label %1047

1018:                                             ; preds = %1016
  switch i32 %1, label %1020 [
    i32 1, label %1019
    i32 5, label %1043
  ]

1019:                                             ; preds = %1018
  tail call void @_tr_align(ptr noundef nonnull %14) #12
  br label %1043

1020:                                             ; preds = %1018
  tail call void @_tr_stored_block(ptr noundef nonnull %14, ptr noundef null, i64 noundef 0, i32 noundef 0) #12
  %1021 = icmp eq i32 %1, 3
  br i1 %1021, label %1022, label %1043

1022:                                             ; preds = %1020
  %1023 = getelementptr inbounds nuw i8, ptr %14, i64 132
  %1024 = load i32, ptr %1023, align 4, !tbaa !36
  %1025 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1024, i32 1), !nosanitize !45
  %1026 = extractvalue { i32, i1 } %1025, 1, !nosanitize !45
  br i1 %1026, label %1027, label %1028, !prof !46, !nosanitize !45

1027:                                             ; preds = %1022
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

1028:                                             ; preds = %1022
  %1029 = extractvalue { i32, i1 } %1025, 0, !nosanitize !45
  %1030 = getelementptr inbounds nuw i8, ptr %14, i64 120
  %1031 = load ptr, ptr %1030, align 8, !tbaa !37
  %1032 = zext i32 %1029 to i64
  %1033 = getelementptr inbounds nuw [2 x i8], ptr %1031, i64 %1032
  store i16 0, ptr %1033, align 2, !tbaa !62
  %1034 = shl nuw nsw i64 %1032, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1031, i8 0, i64 %1034, i1 false)
  %1035 = getelementptr inbounds nuw i8, ptr %14, i64 5960
  store i32 0, ptr %1035, align 8, !tbaa !63
  %1036 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %1037 = load i32, ptr %1036, align 4, !tbaa !75
  %1038 = icmp eq i32 %1037, 0
  br i1 %1038, label %1039, label %1043

1039:                                             ; preds = %1028
  %1040 = getelementptr inbounds nuw i8, ptr %14, i64 172
  store i32 0, ptr %1040, align 4, !tbaa !73
  %1041 = getelementptr inbounds nuw i8, ptr %14, i64 152
  store i64 0, ptr %1041, align 8, !tbaa !74
  %1042 = getelementptr inbounds nuw i8, ptr %14, i64 5932
  store i32 0, ptr %1042, align 4, !tbaa !76
  br label %1043

1043:                                             ; preds = %1018, %1028, %1039, %1020, %1019
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1044 = load i32, ptr %43, align 8, !tbaa !107
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1046, label %1047

1046:                                             ; preds = %1043
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1196

1047:                                             ; preds = %1043, %1016, %982
  br i1 %37, label %1196, label %1048

1048:                                             ; preds = %1047
  %1049 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %1050 = load i32, ptr %1049, align 8, !tbaa !30
  %1051 = icmp slt i32 %1050, 1
  br i1 %1051, label %1196, label %1052

1052:                                             ; preds = %1048
  %1053 = icmp eq i32 %1050, 2
  %1054 = getelementptr inbounds nuw i8, ptr %0, i64 96
  br i1 %1053, label %1055, label %1144

1055:                                             ; preds = %1052
  %1056 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1057 = load i64, ptr %52, align 8, !tbaa !57
  %1058 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1057, i64 1), !nosanitize !45
  %1059 = extractvalue { i64, i1 } %1058, 1, !nosanitize !45
  br i1 %1059, label %1060, label %1061, !prof !46, !nosanitize !45

1060:                                             ; preds = %1055
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1061:                                             ; preds = %1055
  %1062 = extractvalue { i64, i1 } %1058, 0, !nosanitize !45
  %1063 = load ptr, ptr %1056, align 8, !tbaa !40
  %1064 = load i64, ptr %1054, align 8, !tbaa !59
  %1065 = trunc i64 %1064 to i8
  store i64 %1062, ptr %52, align 8, !tbaa !57
  %1066 = getelementptr inbounds nuw i8, ptr %1063, i64 %1057
  store i8 %1065, ptr %1066, align 1, !tbaa !8
  %1067 = load i64, ptr %52, align 8, !tbaa !57
  %1068 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1067, i64 1), !nosanitize !45
  %1069 = extractvalue { i64, i1 } %1068, 1, !nosanitize !45
  br i1 %1069, label %1070, label %1071, !prof !46, !nosanitize !45

1070:                                             ; preds = %1061
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1071:                                             ; preds = %1061
  %1072 = extractvalue { i64, i1 } %1068, 0, !nosanitize !45
  %1073 = load ptr, ptr %1056, align 8, !tbaa !40
  %1074 = load i64, ptr %1054, align 8, !tbaa !59
  %1075 = lshr i64 %1074, 8
  %1076 = trunc i64 %1075 to i8
  store i64 %1072, ptr %52, align 8, !tbaa !57
  %1077 = getelementptr inbounds nuw i8, ptr %1073, i64 %1067
  store i8 %1076, ptr %1077, align 1, !tbaa !8
  %1078 = load i64, ptr %52, align 8, !tbaa !57
  %1079 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1078, i64 1), !nosanitize !45
  %1080 = extractvalue { i64, i1 } %1079, 1, !nosanitize !45
  br i1 %1080, label %1081, label %1082, !prof !46, !nosanitize !45

1081:                                             ; preds = %1071
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1082:                                             ; preds = %1071
  %1083 = extractvalue { i64, i1 } %1079, 0, !nosanitize !45
  %1084 = load ptr, ptr %1056, align 8, !tbaa !40
  %1085 = load i64, ptr %1054, align 8, !tbaa !59
  %1086 = lshr i64 %1085, 16
  %1087 = trunc i64 %1086 to i8
  store i64 %1083, ptr %52, align 8, !tbaa !57
  %1088 = getelementptr inbounds nuw i8, ptr %1084, i64 %1078
  store i8 %1087, ptr %1088, align 1, !tbaa !8
  %1089 = load i64, ptr %52, align 8, !tbaa !57
  %1090 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1089, i64 1), !nosanitize !45
  %1091 = extractvalue { i64, i1 } %1090, 1, !nosanitize !45
  br i1 %1091, label %1092, label %1093, !prof !46, !nosanitize !45

1092:                                             ; preds = %1082
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1093:                                             ; preds = %1082
  %1094 = extractvalue { i64, i1 } %1090, 0, !nosanitize !45
  %1095 = load ptr, ptr %1056, align 8, !tbaa !40
  %1096 = load i64, ptr %1054, align 8, !tbaa !59
  %1097 = lshr i64 %1096, 24
  %1098 = trunc i64 %1097 to i8
  store i64 %1094, ptr %52, align 8, !tbaa !57
  %1099 = getelementptr inbounds nuw i8, ptr %1095, i64 %1089
  store i8 %1098, ptr %1099, align 1, !tbaa !8
  %1100 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %1101 = load i64, ptr %52, align 8, !tbaa !57
  %1102 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1101, i64 1), !nosanitize !45
  %1103 = extractvalue { i64, i1 } %1102, 1, !nosanitize !45
  br i1 %1103, label %1104, label %1105, !prof !46, !nosanitize !45

1104:                                             ; preds = %1093
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1105:                                             ; preds = %1093
  %1106 = extractvalue { i64, i1 } %1102, 0, !nosanitize !45
  %1107 = load ptr, ptr %1056, align 8, !tbaa !40
  %1108 = load i64, ptr %1100, align 8, !tbaa !55
  %1109 = trunc i64 %1108 to i8
  store i64 %1106, ptr %52, align 8, !tbaa !57
  %1110 = getelementptr inbounds nuw i8, ptr %1107, i64 %1101
  store i8 %1109, ptr %1110, align 1, !tbaa !8
  %1111 = load i64, ptr %52, align 8, !tbaa !57
  %1112 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1111, i64 1), !nosanitize !45
  %1113 = extractvalue { i64, i1 } %1112, 1, !nosanitize !45
  br i1 %1113, label %1114, label %1115, !prof !46, !nosanitize !45

1114:                                             ; preds = %1105
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1115:                                             ; preds = %1105
  %1116 = extractvalue { i64, i1 } %1112, 0, !nosanitize !45
  %1117 = load ptr, ptr %1056, align 8, !tbaa !40
  %1118 = load i64, ptr %1100, align 8, !tbaa !55
  %1119 = lshr i64 %1118, 8
  %1120 = trunc i64 %1119 to i8
  store i64 %1116, ptr %52, align 8, !tbaa !57
  %1121 = getelementptr inbounds nuw i8, ptr %1117, i64 %1111
  store i8 %1120, ptr %1121, align 1, !tbaa !8
  %1122 = load i64, ptr %52, align 8, !tbaa !57
  %1123 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1122, i64 1), !nosanitize !45
  %1124 = extractvalue { i64, i1 } %1123, 1, !nosanitize !45
  br i1 %1124, label %1125, label %1126, !prof !46, !nosanitize !45

1125:                                             ; preds = %1115
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1126:                                             ; preds = %1115
  %1127 = extractvalue { i64, i1 } %1123, 0, !nosanitize !45
  %1128 = load ptr, ptr %1056, align 8, !tbaa !40
  %1129 = load i64, ptr %1100, align 8, !tbaa !55
  %1130 = lshr i64 %1129, 16
  %1131 = trunc i64 %1130 to i8
  store i64 %1127, ptr %52, align 8, !tbaa !57
  %1132 = getelementptr inbounds nuw i8, ptr %1128, i64 %1122
  store i8 %1131, ptr %1132, align 1, !tbaa !8
  %1133 = load i64, ptr %52, align 8, !tbaa !57
  %1134 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1133, i64 1), !nosanitize !45
  %1135 = extractvalue { i64, i1 } %1134, 1, !nosanitize !45
  br i1 %1135, label %1136, label %1137, !prof !46, !nosanitize !45

1136:                                             ; preds = %1126
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1137:                                             ; preds = %1126
  %1138 = extractvalue { i64, i1 } %1134, 0, !nosanitize !45
  %1139 = load ptr, ptr %1056, align 8, !tbaa !40
  %1140 = load i64, ptr %1100, align 8, !tbaa !55
  %1141 = lshr i64 %1140, 24
  %1142 = trunc i64 %1141 to i8
  store i64 %1138, ptr %52, align 8, !tbaa !57
  %1143 = getelementptr inbounds nuw i8, ptr %1139, i64 %1133
  store i8 %1142, ptr %1143, align 1, !tbaa !8
  br label %1187

1144:                                             ; preds = %1052
  %1145 = load i64, ptr %1054, align 8, !tbaa !59
  %1146 = lshr i64 %1145, 16
  %1147 = load i64, ptr %52, align 8, !tbaa !57
  %1148 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1147, i64 1), !nosanitize !45
  %1149 = extractvalue { i64, i1 } %1148, 1, !nosanitize !45
  br i1 %1149, label %1150, label %1151, !prof !46, !nosanitize !45

1150:                                             ; preds = %1144
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1151:                                             ; preds = %1144
  %1152 = extractvalue { i64, i1 } %1148, 0, !nosanitize !45
  %1153 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1154 = load ptr, ptr %1153, align 8, !tbaa !40
  %1155 = lshr i64 %1145, 24
  %1156 = trunc i64 %1155 to i8
  store i64 %1152, ptr %52, align 8, !tbaa !57
  %1157 = getelementptr inbounds nuw i8, ptr %1154, i64 %1147
  store i8 %1156, ptr %1157, align 1, !tbaa !8
  %1158 = load i64, ptr %52, align 8, !tbaa !57
  %1159 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1158, i64 1), !nosanitize !45
  %1160 = extractvalue { i64, i1 } %1159, 1, !nosanitize !45
  br i1 %1160, label %1161, label %1162, !prof !46, !nosanitize !45

1161:                                             ; preds = %1151
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1162:                                             ; preds = %1151
  %1163 = extractvalue { i64, i1 } %1159, 0, !nosanitize !45
  %1164 = load ptr, ptr %1153, align 8, !tbaa !40
  %1165 = trunc i64 %1146 to i8
  store i64 %1163, ptr %52, align 8, !tbaa !57
  %1166 = getelementptr inbounds nuw i8, ptr %1164, i64 %1158
  store i8 %1165, ptr %1166, align 1, !tbaa !8
  %1167 = load i64, ptr %1054, align 8, !tbaa !59
  %1168 = trunc i64 %1167 to i8
  %1169 = load i64, ptr %52, align 8, !tbaa !57
  %1170 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1169, i64 1), !nosanitize !45
  %1171 = extractvalue { i64, i1 } %1170, 1, !nosanitize !45
  br i1 %1171, label %1172, label %1173, !prof !46, !nosanitize !45

1172:                                             ; preds = %1162
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1173:                                             ; preds = %1162
  %1174 = extractvalue { i64, i1 } %1170, 0, !nosanitize !45
  %1175 = load ptr, ptr %1153, align 8, !tbaa !40
  %1176 = lshr i64 %1167, 8
  %1177 = trunc i64 %1176 to i8
  store i64 %1174, ptr %52, align 8, !tbaa !57
  %1178 = getelementptr inbounds nuw i8, ptr %1175, i64 %1169
  store i8 %1177, ptr %1178, align 1, !tbaa !8
  %1179 = load i64, ptr %52, align 8, !tbaa !57
  %1180 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1179, i64 1), !nosanitize !45
  %1181 = extractvalue { i64, i1 } %1180, 1, !nosanitize !45
  br i1 %1181, label %1182, label %1183, !prof !46, !nosanitize !45

1182:                                             ; preds = %1173
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1183:                                             ; preds = %1173
  %1184 = extractvalue { i64, i1 } %1180, 0, !nosanitize !45
  %1185 = load ptr, ptr %1153, align 8, !tbaa !40
  store i64 %1184, ptr %52, align 8, !tbaa !57
  %1186 = getelementptr inbounds nuw i8, ptr %1185, i64 %1179
  store i8 %1168, ptr %1186, align 1, !tbaa !8
  br label %1187

1187:                                             ; preds = %1183, %1137
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1188 = load i32, ptr %1049, align 8, !tbaa !30
  %1189 = icmp sgt i32 %1188, 0
  br i1 %1189, label %1190, label %1192

1190:                                             ; preds = %1187
  %1191 = sub nsw i32 0, %1188
  store i32 %1191, ptr %1049, align 8, !tbaa !30
  br label %1192

1192:                                             ; preds = %1190, %1187
  %1193 = load i64, ptr %52, align 8, !tbaa !57
  %1194 = icmp eq i64 %1193, 0
  %1195 = zext i1 %1194 to i32
  br label %1196

1196:                                             ; preds = %980, %12, %16, %19, %4, %8, %2, %667, %232, %1012, %1046, %1015, %1048, %1047, %890, %778, %22, %1192, %972, %947, %338, %121, %112, %99, %46, %39
  %1197 = phi i32 [ -5, %112 ], [ -2, %39 ], [ -5, %46 ], [ 0, %99 ], [ -5, %121 ], [ 0, %338 ], [ 0, %947 ], [ 0, %972 ], [ -2, %22 ], [ 0, %1047 ], [ %1195, %1192 ], [ 1, %1048 ], [ 0, %890 ], [ 0, %778 ], [ 0, %667 ], [ 0, %232 ], [ 0, %1015 ], [ 0, %1046 ], [ 0, %1012 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ 0, %980 ]
  ret i32 %1197
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @slide_hash(ptr noundef captures(none) %0) unnamed_addr #5 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %3 = load i32, ptr %2, align 8, !tbaa !32
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %5 = load i32, ptr %4, align 4, !tbaa !36
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %8
  %10 = icmp eq i32 %5, 0
  br i1 %10, label %37, label %11, !prof !46, !nosanitize !45

11:                                               ; preds = %1
  %12 = icmp ult i32 %5, 8
  br i1 %12, label %34, label %13

13:                                               ; preds = %11
  %14 = and i64 %8, 4294967288
  %15 = mul nsw i64 %14, -2
  %16 = getelementptr i8, ptr %9, i64 %15
  %17 = trunc nuw i64 %14 to i32
  %18 = sub i32 %5, %17
  %19 = insertelement <8 x i32> poison, i32 %3, i64 0
  %20 = shufflevector <8 x i32> %19, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %21

21:                                               ; preds = %21, %13
  %22 = phi i64 [ 0, %13 ], [ %30, %21 ]
  %23 = mul i64 %22, -2
  %24 = getelementptr i8, ptr %9, i64 %23
  %25 = getelementptr inbounds i8, ptr %24, i64 -16
  %26 = load <8 x i16>, ptr %25, align 2, !tbaa !62
  %27 = zext <8 x i16> %26 to <8 x i32>
  %28 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %27, <8 x i32> %20)
  %29 = trunc nuw <8 x i32> %28 to <8 x i16>
  store <8 x i16> %29, ptr %25, align 2, !tbaa !62
  %30 = add nuw i64 %22, 8
  %31 = icmp eq i64 %30, %14
  br i1 %31, label %32, label %21, !llvm.loop !126

32:                                               ; preds = %21
  %33 = icmp eq i64 %14, %8
  br i1 %33, label %53, label %34

34:                                               ; preds = %11, %32
  %35 = phi ptr [ %9, %11 ], [ %16, %32 ]
  %36 = phi i32 [ %5, %11 ], [ %18, %32 ]
  br label %43

37:                                               ; preds = %1
  %38 = getelementptr inbounds i8, ptr %9, i64 -2
  %39 = load i16, ptr %38, align 2, !tbaa !62
  %40 = zext i16 %39 to i32
  %41 = tail call i32 @llvm.usub.sat.i32(i32 %40, i32 %3)
  %42 = trunc nuw i32 %41 to i16
  store i16 %42, ptr %38, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

43:                                               ; preds = %34, %43
  %44 = phi ptr [ %46, %43 ], [ %35, %34 ]
  %45 = phi i32 [ %51, %43 ], [ %36, %34 ]
  %46 = getelementptr inbounds i8, ptr %44, i64 -2
  %47 = load i16, ptr %46, align 2, !tbaa !62
  %48 = zext i16 %47 to i32
  %49 = tail call i32 @llvm.usub.sat.i32(i32 %48, i32 %3)
  %50 = trunc nuw i32 %49 to i16
  store i16 %50, ptr %46, align 2, !tbaa !62
  %51 = add i32 %45, -1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %43, !llvm.loop !127

53:                                               ; preds = %43, %32
  %54 = icmp eq i32 %3, 0
  br i1 %54, label %55, label %56, !prof !46, !nosanitize !45

55:                                               ; preds = %53
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

56:                                               ; preds = %53
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %58 = load ptr, ptr %57, align 8, !tbaa !35
  %59 = zext i32 %3 to i64
  %60 = getelementptr inbounds nuw [2 x i8], ptr %58, i64 %59
  %61 = icmp ult i32 %3, 8
  br i1 %61, label %83, label %62

62:                                               ; preds = %56
  %63 = and i64 %59, 4294967288
  %64 = mul nsw i64 %63, -2
  %65 = getelementptr i8, ptr %60, i64 %64
  %66 = trunc nuw i64 %63 to i32
  %67 = sub i32 %3, %66
  %68 = insertelement <8 x i32> poison, i32 %3, i64 0
  %69 = shufflevector <8 x i32> %68, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %70

70:                                               ; preds = %70, %62
  %71 = phi i64 [ 0, %62 ], [ %79, %70 ]
  %72 = mul i64 %71, -2
  %73 = getelementptr i8, ptr %60, i64 %72
  %74 = getelementptr inbounds i8, ptr %73, i64 -16
  %75 = load <8 x i16>, ptr %74, align 2, !tbaa !62
  %76 = zext <8 x i16> %75 to <8 x i32>
  %77 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %76, <8 x i32> %69)
  %78 = trunc nuw <8 x i32> %77 to <8 x i16>
  store <8 x i16> %78, ptr %74, align 2, !tbaa !62
  %79 = add nuw i64 %71, 8
  %80 = icmp eq i64 %79, %63
  br i1 %80, label %81, label %70, !llvm.loop !128

81:                                               ; preds = %70
  %82 = icmp eq i64 %63, %59
  br i1 %82, label %96, label %83

83:                                               ; preds = %56, %81
  %84 = phi ptr [ %60, %56 ], [ %65, %81 ]
  %85 = phi i32 [ %3, %56 ], [ %67, %81 ]
  br label %86

86:                                               ; preds = %83, %86
  %87 = phi ptr [ %89, %86 ], [ %84, %83 ]
  %88 = phi i32 [ %94, %86 ], [ %85, %83 ]
  %89 = getelementptr inbounds i8, ptr %87, i64 -2
  %90 = load i16, ptr %89, align 2, !tbaa !62
  %91 = zext i16 %90 to i32
  %92 = tail call i32 @llvm.usub.sat.i32(i32 %91, i32 %3)
  %93 = trunc nuw i32 %92 to i16
  store i16 %93, ptr %89, align 2, !tbaa !62
  %94 = add i32 %88, -1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %86, !llvm.loop !129

96:                                               ; preds = %86, %81
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 5960
  store i32 1, ptr %97, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateTune(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 {
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
  store i32 %1, ptr %26, align 4, !tbaa !68
  %27 = getelementptr inbounds nuw i8, ptr %17, i64 192
  store i32 %2, ptr %27, align 8, !tbaa !66
  %28 = getelementptr inbounds nuw i8, ptr %17, i64 208
  store i32 %3, ptr %28, align 8, !tbaa !70
  %29 = getelementptr inbounds nuw i8, ptr %17, i64 188
  store i32 %4, ptr %29, align 4, !tbaa !72
  br label %30

30:                                               ; preds = %15, %19, %22, %7, %11, %5, %25
  %31 = phi i32 [ 0, %25 ], [ -2, %5 ], [ -2, %11 ], [ -2, %7 ], [ -2, %22 ], [ -2, %19 ], [ -2, %15 ]
  ret i32 %31
}

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i64 @deflateBound_z(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = lshr i64 %1, 3
  %4 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %3), !nosanitize !45
  %5 = extractvalue { i64, i1 } %4, 1, !nosanitize !45
  br i1 %5, label %6, label %7, !prof !46, !nosanitize !45

6:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

7:                                                ; preds = %2
  %8 = extractvalue { i64, i1 } %4, 0, !nosanitize !45
  %9 = lshr i64 %1, 8
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %9), !nosanitize !45
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !45
  br i1 %11, label %12, label %13, !prof !46, !nosanitize !45

12:                                               ; preds = %7
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

13:                                               ; preds = %7
  %14 = extractvalue { i64, i1 } %10, 0, !nosanitize !45
  %15 = lshr i64 %1, 9
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 %15), !nosanitize !45
  %17 = extractvalue { i64, i1 } %16, 1, !nosanitize !45
  br i1 %17, label %18, label %19, !prof !46, !nosanitize !45

18:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

19:                                               ; preds = %13
  %20 = extractvalue { i64, i1 } %16, 0, !nosanitize !45
  %21 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %20, i64 4), !nosanitize !45
  %22 = extractvalue { i64, i1 } %21, 1, !nosanitize !45
  br i1 %22, label %23, label %24, !prof !46, !nosanitize !45

23:                                               ; preds = %19
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

24:                                               ; preds = %19
  %25 = extractvalue { i64, i1 } %21, 0, !nosanitize !45
  %26 = icmp ult i64 %25, %1
  %27 = select i1 %26, i64 -1, i64 %25
  %28 = lshr i64 %1, 5
  %29 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %28), !nosanitize !45
  %30 = extractvalue { i64, i1 } %29, 1, !nosanitize !45
  br i1 %30, label %31, label %32, !prof !46, !nosanitize !45

31:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

32:                                               ; preds = %24
  %33 = extractvalue { i64, i1 } %29, 0, !nosanitize !45
  %34 = lshr i64 %1, 7
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %34), !nosanitize !45
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !45
  br i1 %36, label %37, label %38, !prof !46, !nosanitize !45

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !45
  %40 = lshr i64 %1, 11
  %41 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %39, i64 %40), !nosanitize !45
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !45
  br i1 %42, label %43, label %44, !prof !46, !nosanitize !45

43:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

44:                                               ; preds = %38
  %45 = extractvalue { i64, i1 } %41, 0, !nosanitize !45
  %46 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %45, i64 7), !nosanitize !45
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !45
  br i1 %47, label %48, label %49, !prof !46, !nosanitize !45

48:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

49:                                               ; preds = %44
  %50 = extractvalue { i64, i1 } %46, 0, !nosanitize !45
  %51 = icmp ult i64 %50, %1
  %52 = select i1 %51, i64 -1, i64 %50
  %53 = icmp eq ptr %0, null
  br i1 %53, label %72, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %56 = load ptr, ptr %55, align 8, !tbaa !15
  %57 = icmp eq ptr %56, null
  br i1 %57, label %72, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %60 = load ptr, ptr %59, align 8, !tbaa !17
  %61 = icmp eq ptr %60, null
  br i1 %61, label %72, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %64 = load ptr, ptr %63, align 8, !tbaa !19
  %65 = icmp eq ptr %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %64, align 8, !tbaa !20
  %68 = icmp eq ptr %67, %0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = getelementptr inbounds nuw i8, ptr %64, i64 8
  %71 = load i32, ptr %70, align 8, !tbaa !29
  switch i32 %71, label %72 [
    i32 42, label %78
    i32 57, label %78
    i32 69, label %78
    i32 73, label %78
    i32 91, label %78
    i32 103, label %78
    i32 113, label %78
    i32 666, label %78
  ]

72:                                               ; preds = %49, %58, %54, %69, %66, %62
  %73 = tail call i64 @llvm.umax.i64(i64 %27, i64 %52)
  %74 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %73, i64 18), !nosanitize !45
  %75 = extractvalue { i64, i1 } %74, 0, !nosanitize !45
  %76 = extractvalue { i64, i1 } %74, 1, !nosanitize !45
  br i1 %76, label %77, label %209, !prof !46, !nosanitize !45

77:                                               ; preds = %72
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

78:                                               ; preds = %69, %69, %69, %69, %69, %69, %69, %69
  %79 = getelementptr inbounds nuw i8, ptr %64, i64 48
  %80 = load i32, ptr %79, align 8, !tbaa !30
  %81 = tail call i32 @llvm.abs.i32(i32 %80, i1 true)
  switch i32 %81, label %154 [
    i32 0, label %155
    i32 1, label %82
    i32 2, label %87
  ]

82:                                               ; preds = %78
  %83 = getelementptr inbounds nuw i8, ptr %64, i64 172
  %84 = load i32, ptr %83, align 4, !tbaa !73
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i64 6, i64 10
  br label %155

87:                                               ; preds = %78
  %88 = getelementptr inbounds nuw i8, ptr %64, i64 56
  %89 = load ptr, ptr %88, align 8, !tbaa !100
  %90 = icmp eq ptr %89, null
  br i1 %90, label %155, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds nuw i8, ptr %89, i64 24
  %93 = load ptr, ptr %92, align 8, !tbaa !112
  %94 = icmp eq ptr %93, null
  br i1 %94, label %105, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds nuw i8, ptr %89, i64 32
  %97 = load i32, ptr %96, align 8, !tbaa !117
  %98 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %97, i32 2), !nosanitize !45
  %99 = extractvalue { i32, i1 } %98, 1, !nosanitize !45
  br i1 %99, label %100, label %101, !prof !46, !nosanitize !45

100:                                              ; preds = %95
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

101:                                              ; preds = %95
  %102 = extractvalue { i32, i1 } %98, 0, !nosanitize !45
  %103 = zext i32 %102 to i64
  %104 = add nuw nsw i64 %103, 18
  br label %105

105:                                              ; preds = %101, %91
  %106 = phi i64 [ %104, %101 ], [ 18, %91 ]
  %107 = getelementptr inbounds nuw i8, ptr %89, i64 40
  %108 = load ptr, ptr %107, align 8, !tbaa !111
  %109 = icmp eq ptr %108, null
  br i1 %109, label %124, label %110

110:                                              ; preds = %105
  %111 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %106, i64 1), !nosanitize !45
  %112 = extractvalue { i64, i1 } %111, 1, !nosanitize !45
  br i1 %112, label %117, label %118, !prof !130, !nosanitize !45

113:                                              ; preds = %118
  %114 = getelementptr inbounds nuw i8, ptr %120, i64 1
  %115 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %121, i64 1), !nosanitize !45
  %116 = extractvalue { i64, i1 } %115, 1, !nosanitize !45
  br i1 %116, label %117, label %118, !prof !131, !llvm.loop !132, !nosanitize !45

117:                                              ; preds = %113, %110
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

118:                                              ; preds = %110, %113
  %119 = phi { i64, i1 } [ %115, %113 ], [ %111, %110 ]
  %120 = phi ptr [ %114, %113 ], [ %108, %110 ]
  %121 = extractvalue { i64, i1 } %119, 0, !nosanitize !45
  %122 = load i8, ptr %120, align 1, !tbaa !8
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %113, !llvm.loop !132

124:                                              ; preds = %118, %105
  %125 = phi i64 [ %106, %105 ], [ %121, %118 ]
  %126 = getelementptr inbounds nuw i8, ptr %89, i64 56
  %127 = load ptr, ptr %126, align 8, !tbaa !109
  %128 = icmp eq ptr %127, null
  br i1 %128, label %143, label %129

129:                                              ; preds = %124
  %130 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %125, i64 1), !nosanitize !45
  %131 = extractvalue { i64, i1 } %130, 1, !nosanitize !45
  br i1 %131, label %136, label %137, !prof !130, !nosanitize !45

132:                                              ; preds = %137
  %133 = getelementptr inbounds nuw i8, ptr %139, i64 1
  %134 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %140, i64 1), !nosanitize !45
  %135 = extractvalue { i64, i1 } %134, 1, !nosanitize !45
  br i1 %135, label %136, label %137, !prof !131, !llvm.loop !133, !nosanitize !45

136:                                              ; preds = %132, %129
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

137:                                              ; preds = %129, %132
  %138 = phi { i64, i1 } [ %134, %132 ], [ %130, %129 ]
  %139 = phi ptr [ %133, %132 ], [ %127, %129 ]
  %140 = extractvalue { i64, i1 } %138, 0, !nosanitize !45
  %141 = load i8, ptr %139, align 1, !tbaa !8
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %132, !llvm.loop !133

143:                                              ; preds = %137, %124
  %144 = phi i64 [ %125, %124 ], [ %140, %137 ]
  %145 = getelementptr inbounds nuw i8, ptr %89, i64 68
  %146 = load i32, ptr %145, align 4, !tbaa !114
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %143
  %149 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %144, i64 2), !nosanitize !45
  %150 = extractvalue { i64, i1 } %149, 1, !nosanitize !45
  br i1 %150, label %151, label %152, !prof !46, !nosanitize !45

151:                                              ; preds = %148
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

152:                                              ; preds = %148
  %153 = extractvalue { i64, i1 } %149, 0, !nosanitize !45
  br label %155

154:                                              ; preds = %78
  br label %155

155:                                              ; preds = %143, %152, %78, %87, %154, %82
  %156 = phi i64 [ 18, %154 ], [ 18, %87 ], [ %86, %82 ], [ 0, %78 ], [ %153, %152 ], [ %144, %143 ]
  %157 = getelementptr inbounds nuw i8, ptr %64, i64 84
  %158 = load i32, ptr %157, align 4, !tbaa !31
  %159 = icmp eq i32 %158, 15
  %160 = getelementptr inbounds nuw i8, ptr %64, i64 136
  %161 = load i32, ptr %160, align 8, !tbaa !51
  %162 = icmp eq i32 %161, 15
  %163 = select i1 %159, i1 %162, i1 false
  br i1 %163, label %177, label %164

164:                                              ; preds = %155
  %165 = icmp ugt i32 %158, %161
  br i1 %165, label %170, label %166

166:                                              ; preds = %164
  %167 = getelementptr inbounds nuw i8, ptr %64, i64 196
  %168 = load i32, ptr %167, align 4, !tbaa !48
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %166, %164
  br label %171

171:                                              ; preds = %166, %170
  %172 = phi i64 [ %52, %170 ], [ %27, %166 ]
  %173 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %172, i64 %156), !nosanitize !45
  %174 = extractvalue { i64, i1 } %173, 0, !nosanitize !45
  %175 = extractvalue { i64, i1 } %173, 1, !nosanitize !45
  br i1 %175, label %176, label %209, !prof !46, !nosanitize !45

176:                                              ; preds = %171
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

177:                                              ; preds = %155
  %178 = lshr i64 %1, 12
  %179 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %178), !nosanitize !45
  %180 = extractvalue { i64, i1 } %179, 1, !nosanitize !45
  br i1 %180, label %181, label %182, !prof !46, !nosanitize !45

181:                                              ; preds = %177
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

182:                                              ; preds = %177
  %183 = extractvalue { i64, i1 } %179, 0, !nosanitize !45
  %184 = lshr i64 %1, 14
  %185 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %183, i64 %184), !nosanitize !45
  %186 = extractvalue { i64, i1 } %185, 1, !nosanitize !45
  br i1 %186, label %187, label %188, !prof !46, !nosanitize !45

187:                                              ; preds = %182
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

188:                                              ; preds = %182
  %189 = extractvalue { i64, i1 } %185, 0, !nosanitize !45
  %190 = lshr i64 %1, 25
  %191 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %189, i64 %190), !nosanitize !45
  %192 = extractvalue { i64, i1 } %191, 1, !nosanitize !45
  br i1 %192, label %193, label %194, !prof !46, !nosanitize !45

193:                                              ; preds = %188
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

194:                                              ; preds = %188
  %195 = extractvalue { i64, i1 } %191, 0, !nosanitize !45
  %196 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %195, i64 13), !nosanitize !45
  %197 = extractvalue { i64, i1 } %196, 1, !nosanitize !45
  br i1 %197, label %198, label %199, !prof !46, !nosanitize !45

198:                                              ; preds = %194
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

199:                                              ; preds = %194
  %200 = extractvalue { i64, i1 } %196, 0, !nosanitize !45
  %201 = add i64 %200, -6
  %202 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %201, i64 %156), !nosanitize !45
  %203 = extractvalue { i64, i1 } %202, 1, !nosanitize !45
  br i1 %203, label %204, label %205, !prof !46, !nosanitize !45

204:                                              ; preds = %199
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

205:                                              ; preds = %199
  %206 = extractvalue { i64, i1 } %202, 0, !nosanitize !45
  %207 = icmp ult i64 %206, %1
  %208 = select i1 %207, i64 -1, i64 %206
  br label %209

209:                                              ; preds = %171, %72, %205
  %210 = phi i64 [ %208, %205 ], [ %75, %72 ], [ %174, %171 ]
  ret i64 %210
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #3

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i64 @deflateBound(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = lshr i64 %1, 3
  %4 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %3), !nosanitize !45
  %5 = extractvalue { i64, i1 } %4, 1, !nosanitize !45
  br i1 %5, label %6, label %7, !prof !46, !nosanitize !45

6:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

7:                                                ; preds = %2
  %8 = extractvalue { i64, i1 } %4, 0, !nosanitize !45
  %9 = lshr i64 %1, 8
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %9), !nosanitize !45
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !45
  br i1 %11, label %12, label %13, !prof !46, !nosanitize !45

12:                                               ; preds = %7
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

13:                                               ; preds = %7
  %14 = extractvalue { i64, i1 } %10, 0, !nosanitize !45
  %15 = lshr i64 %1, 9
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 %15), !nosanitize !45
  %17 = extractvalue { i64, i1 } %16, 1, !nosanitize !45
  br i1 %17, label %18, label %19, !prof !46, !nosanitize !45

18:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

19:                                               ; preds = %13
  %20 = extractvalue { i64, i1 } %16, 0, !nosanitize !45
  %21 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %20, i64 4), !nosanitize !45
  %22 = extractvalue { i64, i1 } %21, 1, !nosanitize !45
  br i1 %22, label %23, label %24, !prof !46, !nosanitize !45

23:                                               ; preds = %19
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

24:                                               ; preds = %19
  %25 = extractvalue { i64, i1 } %21, 0, !nosanitize !45
  %26 = icmp ult i64 %25, %1
  %27 = select i1 %26, i64 -1, i64 %25
  %28 = lshr i64 %1, 5
  %29 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %28), !nosanitize !45
  %30 = extractvalue { i64, i1 } %29, 1, !nosanitize !45
  br i1 %30, label %31, label %32, !prof !46, !nosanitize !45

31:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

32:                                               ; preds = %24
  %33 = extractvalue { i64, i1 } %29, 0, !nosanitize !45
  %34 = lshr i64 %1, 7
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %34), !nosanitize !45
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !45
  br i1 %36, label %37, label %38, !prof !46, !nosanitize !45

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !45
  %40 = lshr i64 %1, 11
  %41 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %39, i64 %40), !nosanitize !45
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !45
  br i1 %42, label %43, label %44, !prof !46, !nosanitize !45

43:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

44:                                               ; preds = %38
  %45 = extractvalue { i64, i1 } %41, 0, !nosanitize !45
  %46 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %45, i64 7), !nosanitize !45
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !45
  br i1 %47, label %48, label %49, !prof !46, !nosanitize !45

48:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

49:                                               ; preds = %44
  %50 = extractvalue { i64, i1 } %46, 0, !nosanitize !45
  %51 = icmp ult i64 %50, %1
  %52 = select i1 %51, i64 -1, i64 %50
  %53 = icmp eq ptr %0, null
  br i1 %53, label %72, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %56 = load ptr, ptr %55, align 8, !tbaa !15
  %57 = icmp eq ptr %56, null
  br i1 %57, label %72, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %60 = load ptr, ptr %59, align 8, !tbaa !17
  %61 = icmp eq ptr %60, null
  br i1 %61, label %72, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %64 = load ptr, ptr %63, align 8, !tbaa !19
  %65 = icmp eq ptr %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %64, align 8, !tbaa !20
  %68 = icmp eq ptr %67, %0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = getelementptr inbounds nuw i8, ptr %64, i64 8
  %71 = load i32, ptr %70, align 8, !tbaa !29
  switch i32 %71, label %72 [
    i32 42, label %78
    i32 57, label %78
    i32 69, label %78
    i32 73, label %78
    i32 91, label %78
    i32 103, label %78
    i32 113, label %78
    i32 666, label %78
  ]

72:                                               ; preds = %69, %66, %62, %58, %54, %49
  %73 = tail call i64 @llvm.umax.i64(i64 %27, i64 %52)
  %74 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %73, i64 18), !nosanitize !45
  %75 = extractvalue { i64, i1 } %74, 0, !nosanitize !45
  %76 = extractvalue { i64, i1 } %74, 1, !nosanitize !45
  br i1 %76, label %77, label %209, !prof !46, !nosanitize !45

77:                                               ; preds = %72
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

78:                                               ; preds = %69, %69, %69, %69, %69, %69, %69, %69
  %79 = getelementptr inbounds nuw i8, ptr %64, i64 48
  %80 = load i32, ptr %79, align 8, !tbaa !30
  %81 = tail call i32 @llvm.abs.i32(i32 %80, i1 true)
  switch i32 %81, label %154 [
    i32 0, label %155
    i32 1, label %82
    i32 2, label %87
  ]

82:                                               ; preds = %78
  %83 = getelementptr inbounds nuw i8, ptr %64, i64 172
  %84 = load i32, ptr %83, align 4, !tbaa !73
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i64 6, i64 10
  br label %155

87:                                               ; preds = %78
  %88 = getelementptr inbounds nuw i8, ptr %64, i64 56
  %89 = load ptr, ptr %88, align 8, !tbaa !100
  %90 = icmp eq ptr %89, null
  br i1 %90, label %155, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds nuw i8, ptr %89, i64 24
  %93 = load ptr, ptr %92, align 8, !tbaa !112
  %94 = icmp eq ptr %93, null
  br i1 %94, label %105, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds nuw i8, ptr %89, i64 32
  %97 = load i32, ptr %96, align 8, !tbaa !117
  %98 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %97, i32 2), !nosanitize !45
  %99 = extractvalue { i32, i1 } %98, 1, !nosanitize !45
  br i1 %99, label %100, label %101, !prof !46, !nosanitize !45

100:                                              ; preds = %95
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

101:                                              ; preds = %95
  %102 = extractvalue { i32, i1 } %98, 0, !nosanitize !45
  %103 = zext i32 %102 to i64
  %104 = add nuw nsw i64 %103, 18
  br label %105

105:                                              ; preds = %101, %91
  %106 = phi i64 [ %104, %101 ], [ 18, %91 ]
  %107 = getelementptr inbounds nuw i8, ptr %89, i64 40
  %108 = load ptr, ptr %107, align 8, !tbaa !111
  %109 = icmp eq ptr %108, null
  br i1 %109, label %124, label %110

110:                                              ; preds = %105
  %111 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %106, i64 1), !nosanitize !45
  %112 = extractvalue { i64, i1 } %111, 1, !nosanitize !45
  br i1 %112, label %117, label %118, !prof !130, !nosanitize !45

113:                                              ; preds = %118
  %114 = getelementptr inbounds nuw i8, ptr %120, i64 1
  %115 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %121, i64 1), !nosanitize !45
  %116 = extractvalue { i64, i1 } %115, 1, !nosanitize !45
  br i1 %116, label %117, label %118, !prof !131, !llvm.loop !132, !nosanitize !45

117:                                              ; preds = %113, %110
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

118:                                              ; preds = %110, %113
  %119 = phi { i64, i1 } [ %115, %113 ], [ %111, %110 ]
  %120 = phi ptr [ %114, %113 ], [ %108, %110 ]
  %121 = extractvalue { i64, i1 } %119, 0, !nosanitize !45
  %122 = load i8, ptr %120, align 1, !tbaa !8
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %113, !llvm.loop !132

124:                                              ; preds = %118, %105
  %125 = phi i64 [ %106, %105 ], [ %121, %118 ]
  %126 = getelementptr inbounds nuw i8, ptr %89, i64 56
  %127 = load ptr, ptr %126, align 8, !tbaa !109
  %128 = icmp eq ptr %127, null
  br i1 %128, label %143, label %129

129:                                              ; preds = %124
  %130 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %125, i64 1), !nosanitize !45
  %131 = extractvalue { i64, i1 } %130, 1, !nosanitize !45
  br i1 %131, label %136, label %137, !prof !130, !nosanitize !45

132:                                              ; preds = %137
  %133 = getelementptr inbounds nuw i8, ptr %139, i64 1
  %134 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %140, i64 1), !nosanitize !45
  %135 = extractvalue { i64, i1 } %134, 1, !nosanitize !45
  br i1 %135, label %136, label %137, !prof !131, !llvm.loop !133, !nosanitize !45

136:                                              ; preds = %132, %129
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

137:                                              ; preds = %129, %132
  %138 = phi { i64, i1 } [ %134, %132 ], [ %130, %129 ]
  %139 = phi ptr [ %133, %132 ], [ %127, %129 ]
  %140 = extractvalue { i64, i1 } %138, 0, !nosanitize !45
  %141 = load i8, ptr %139, align 1, !tbaa !8
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %132, !llvm.loop !133

143:                                              ; preds = %137, %124
  %144 = phi i64 [ %125, %124 ], [ %140, %137 ]
  %145 = getelementptr inbounds nuw i8, ptr %89, i64 68
  %146 = load i32, ptr %145, align 4, !tbaa !114
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %143
  %149 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %144, i64 2), !nosanitize !45
  %150 = extractvalue { i64, i1 } %149, 1, !nosanitize !45
  br i1 %150, label %151, label %152, !prof !46, !nosanitize !45

151:                                              ; preds = %148
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

152:                                              ; preds = %148
  %153 = extractvalue { i64, i1 } %149, 0, !nosanitize !45
  br label %155

154:                                              ; preds = %78
  br label %155

155:                                              ; preds = %154, %152, %143, %87, %82, %78
  %156 = phi i64 [ 18, %154 ], [ 18, %87 ], [ %86, %82 ], [ 0, %78 ], [ %153, %152 ], [ %144, %143 ]
  %157 = getelementptr inbounds nuw i8, ptr %64, i64 84
  %158 = load i32, ptr %157, align 4, !tbaa !31
  %159 = icmp eq i32 %158, 15
  %160 = getelementptr inbounds nuw i8, ptr %64, i64 136
  %161 = load i32, ptr %160, align 8, !tbaa !51
  %162 = icmp eq i32 %161, 15
  %163 = select i1 %159, i1 %162, i1 false
  br i1 %163, label %177, label %164

164:                                              ; preds = %155
  %165 = icmp ugt i32 %158, %161
  br i1 %165, label %170, label %166

166:                                              ; preds = %164
  %167 = getelementptr inbounds nuw i8, ptr %64, i64 196
  %168 = load i32, ptr %167, align 4, !tbaa !48
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %166, %164
  br label %171

171:                                              ; preds = %170, %166
  %172 = phi i64 [ %52, %170 ], [ %27, %166 ]
  %173 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %172, i64 %156), !nosanitize !45
  %174 = extractvalue { i64, i1 } %173, 0, !nosanitize !45
  %175 = extractvalue { i64, i1 } %173, 1, !nosanitize !45
  br i1 %175, label %176, label %209, !prof !46, !nosanitize !45

176:                                              ; preds = %171
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

177:                                              ; preds = %155
  %178 = lshr i64 %1, 12
  %179 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %178), !nosanitize !45
  %180 = extractvalue { i64, i1 } %179, 1, !nosanitize !45
  br i1 %180, label %181, label %182, !prof !46, !nosanitize !45

181:                                              ; preds = %177
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

182:                                              ; preds = %177
  %183 = extractvalue { i64, i1 } %179, 0, !nosanitize !45
  %184 = lshr i64 %1, 14
  %185 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %183, i64 %184), !nosanitize !45
  %186 = extractvalue { i64, i1 } %185, 1, !nosanitize !45
  br i1 %186, label %187, label %188, !prof !46, !nosanitize !45

187:                                              ; preds = %182
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

188:                                              ; preds = %182
  %189 = extractvalue { i64, i1 } %185, 0, !nosanitize !45
  %190 = lshr i64 %1, 25
  %191 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %189, i64 %190), !nosanitize !45
  %192 = extractvalue { i64, i1 } %191, 1, !nosanitize !45
  br i1 %192, label %193, label %194, !prof !46, !nosanitize !45

193:                                              ; preds = %188
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

194:                                              ; preds = %188
  %195 = extractvalue { i64, i1 } %191, 0, !nosanitize !45
  %196 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %195, i64 13), !nosanitize !45
  %197 = extractvalue { i64, i1 } %196, 1, !nosanitize !45
  br i1 %197, label %198, label %199, !prof !46, !nosanitize !45

198:                                              ; preds = %194
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

199:                                              ; preds = %194
  %200 = extractvalue { i64, i1 } %196, 0, !nosanitize !45
  %201 = add i64 %200, -6
  %202 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %201, i64 %156), !nosanitize !45
  %203 = extractvalue { i64, i1 } %202, 1, !nosanitize !45
  br i1 %203, label %204, label %205, !prof !46, !nosanitize !45

204:                                              ; preds = %199
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

205:                                              ; preds = %199
  %206 = extractvalue { i64, i1 } %202, 0, !nosanitize !45
  %207 = icmp ult i64 %206, %1
  %208 = select i1 %207, i64 -1, i64 %206
  br label %209

209:                                              ; preds = %72, %171, %205
  %210 = phi i64 [ %208, %205 ], [ %75, %72 ], [ %174, %171 ]
  ret i64 %210
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_pending(ptr noundef captures(none) %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %3) #12
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %5 = load i64, ptr %4, align 8, !tbaa !57
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i32, ptr %6, align 8, !tbaa !107
  %8 = zext i32 %7 to i64
  %9 = tail call i64 @llvm.umin.i64(i64 %5, i64 %8)
  %10 = trunc nuw i64 %9 to i32
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %44, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %14 = load ptr, ptr %13, align 8, !tbaa !106
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %16, i64 %9, i1 false)
  %17 = load ptr, ptr %13, align 8, !tbaa !106
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 %9
  store ptr %18, ptr %13, align 8, !tbaa !106
  %19 = load ptr, ptr %15, align 8, !tbaa !58
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 %9
  store ptr %20, ptr %15, align 8, !tbaa !58
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %22 = load i64, ptr %21, align 8, !tbaa !108
  %23 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %22, i64 %9), !nosanitize !45
  %24 = extractvalue { i64, i1 } %23, 1, !nosanitize !45
  br i1 %24, label %25, label %26, !prof !46, !nosanitize !45

25:                                               ; preds = %12
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

26:                                               ; preds = %12
  %27 = extractvalue { i64, i1 } %23, 0, !nosanitize !45
  store i64 %27, ptr %21, align 8, !tbaa !108
  %28 = load i32, ptr %6, align 8, !tbaa !107
  %29 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %28, i32 %10), !nosanitize !45
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !45
  br i1 %30, label %31, label %32, !prof !46, !nosanitize !45

31:                                               ; preds = %26
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

32:                                               ; preds = %26
  %33 = extractvalue { i32, i1 } %29, 0, !nosanitize !45
  store i32 %33, ptr %6, align 8, !tbaa !107
  %34 = load i64, ptr %4, align 8, !tbaa !57
  %35 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %34, i64 %9), !nosanitize !45
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !45
  br i1 %36, label %37, label %38, !prof !46, !nosanitize !45

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !45
  store i64 %39, ptr %4, align 8, !tbaa !57
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %43 = load ptr, ptr %42, align 8, !tbaa !40
  store ptr %43, ptr %15, align 8, !tbaa !58
  br label %44

44:                                               ; preds = %38, %41, %1
  ret void
}

declare i64 @crc32_z(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @deflate_stored(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %4 = load i64, ptr %3, align 8, !tbaa !41
  %5 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %4, i64 5), !nosanitize !45
  %6 = extractvalue { i64, i1 } %5, 1, !nosanitize !45
  br i1 %6, label %7, label %8, !prof !46, !nosanitize !45

7:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

8:                                                ; preds = %2
  %9 = extractvalue { i64, i1 } %5, 0, !nosanitize !45
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %11 = load i32, ptr %10, align 8, !tbaa !32
  %12 = zext i32 %11 to i64
  %13 = tail call i64 @llvm.umin.i64(i64 %9, i64 %12)
  %14 = trunc nuw i64 %13 to i32
  %15 = load ptr, ptr %0, align 8, !tbaa !20
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %17 = load i32, ptr %16, align 8, !tbaa !81
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

27:                                               ; preds = %265, %8
  %28 = load i32, ptr %18, align 4, !tbaa !101
  %29 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %28, i32 42), !nosanitize !45
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !45
  br i1 %30, label %31, label %32, !prof !46, !nosanitize !45

31:                                               ; preds = %27
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

32:                                               ; preds = %27
  %33 = extractvalue { i32, i1 } %29, 0, !nosanitize !45
  %34 = lshr i32 %33, 3
  %35 = load ptr, ptr %0, align 8, !tbaa !20
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 32
  %37 = load i32, ptr %36, align 8, !tbaa !107
  %38 = icmp ult i32 %37, %34
  br i1 %38, label %269, label %39

39:                                               ; preds = %32
  %40 = sub nuw i32 %37, %34
  %41 = load i32, ptr %19, align 4, !tbaa !73
  %42 = load i64, ptr %20, align 8, !tbaa !74
  %43 = trunc i64 %42 to i32
  %44 = sub i32 %41, %43
  %45 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %46 = load i32, ptr %45, align 8, !tbaa !81
  %47 = zext i32 %44 to i64
  %48 = zext i32 %46 to i64
  %49 = add nuw nsw i64 %47, %48
  %50 = icmp samesign ult i64 %49, 65535
  br i1 %50, label %51, label %57

51:                                               ; preds = %39
  %52 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %44, i32 %46), !nosanitize !45
  %53 = extractvalue { i32, i1 } %52, 1, !nosanitize !45
  br i1 %53, label %54, label %55, !prof !46, !nosanitize !45

54:                                               ; preds = %51
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

55:                                               ; preds = %51
  %56 = extractvalue { i32, i1 } %52, 0, !nosanitize !45
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
  br i1 %64, label %269, label %65

65:                                               ; preds = %61
  %66 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %44, i32 %46), !nosanitize !45
  %67 = extractvalue { i32, i1 } %66, 1, !nosanitize !45
  br i1 %67, label %68, label %69, !prof !46, !nosanitize !45

68:                                               ; preds = %65
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

69:                                               ; preds = %65
  %70 = extractvalue { i32, i1 } %66, 0, !nosanitize !45
  %71 = icmp eq i32 %59, %70
  br i1 %71, label %72, label %269

72:                                               ; preds = %69, %57
  br i1 %23, label %73, label %81

73:                                               ; preds = %72
  %74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %44, i32 %46), !nosanitize !45
  %75 = extractvalue { i32, i1 } %74, 1, !nosanitize !45
  br i1 %75, label %76, label %77, !prof !46, !nosanitize !45

76:                                               ; preds = %73
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

77:                                               ; preds = %73
  %78 = extractvalue { i32, i1 } %74, 0, !nosanitize !45
  %79 = icmp eq i32 %59, %78
  %80 = zext i1 %79 to i32
  br label %81

81:                                               ; preds = %77, %72
  %82 = phi i32 [ 0, %72 ], [ %80, %77 ]
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i32 noundef %82) #12
  %83 = load i64, ptr %25, align 8, !tbaa !57
  %84 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %83, i64 4), !nosanitize !45
  %85 = extractvalue { i64, i1 } %84, 1, !nosanitize !45
  br i1 %85, label %86, label %87, !prof !46, !nosanitize !45

86:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

87:                                               ; preds = %81
  %88 = extractvalue { i64, i1 } %84, 0, !nosanitize !45
  %89 = load ptr, ptr %24, align 8, !tbaa !40
  %90 = trunc i32 %59 to i8
  %91 = getelementptr inbounds nuw i8, ptr %89, i64 %88
  store i8 %90, ptr %91, align 1, !tbaa !8
  %92 = load i64, ptr %25, align 8, !tbaa !57
  %93 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %92, i64 3), !nosanitize !45
  %94 = extractvalue { i64, i1 } %93, 1, !nosanitize !45
  br i1 %94, label %95, label %96, !prof !46, !nosanitize !45

95:                                               ; preds = %87
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

96:                                               ; preds = %87
  %97 = extractvalue { i64, i1 } %93, 0, !nosanitize !45
  %98 = load ptr, ptr %24, align 8, !tbaa !40
  %99 = lshr i32 %59, 8
  %100 = trunc i32 %99 to i8
  %101 = getelementptr inbounds nuw i8, ptr %98, i64 %97
  store i8 %100, ptr %101, align 1, !tbaa !8
  %102 = load i64, ptr %25, align 8, !tbaa !57
  %103 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %102, i64 2), !nosanitize !45
  %104 = extractvalue { i64, i1 } %103, 1, !nosanitize !45
  br i1 %104, label %105, label %106, !prof !46, !nosanitize !45

105:                                              ; preds = %96
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

106:                                              ; preds = %96
  %107 = extractvalue { i64, i1 } %103, 0, !nosanitize !45
  %108 = load ptr, ptr %24, align 8, !tbaa !40
  %109 = xor i32 %59, -1
  %110 = trunc i32 %109 to i8
  %111 = getelementptr inbounds nuw i8, ptr %108, i64 %107
  store i8 %110, ptr %111, align 1, !tbaa !8
  %112 = load i64, ptr %25, align 8, !tbaa !57
  %113 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %112, i64 1), !nosanitize !45
  %114 = extractvalue { i64, i1 } %113, 1, !nosanitize !45
  br i1 %114, label %115, label %116, !prof !46, !nosanitize !45

115:                                              ; preds = %106
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

116:                                              ; preds = %106
  %117 = extractvalue { i64, i1 } %113, 0, !nosanitize !45
  %118 = load ptr, ptr %24, align 8, !tbaa !40
  %119 = lshr i32 %109, 8
  %120 = trunc i32 %119 to i8
  %121 = getelementptr inbounds nuw i8, ptr %118, i64 %117
  store i8 %120, ptr %121, align 1, !tbaa !8
  %122 = load ptr, ptr %0, align 8, !tbaa !20
  %123 = getelementptr inbounds nuw i8, ptr %122, i64 56
  %124 = load ptr, ptr %123, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %124) #12
  %125 = getelementptr inbounds nuw i8, ptr %124, i64 40
  %126 = load i64, ptr %125, align 8, !tbaa !57
  %127 = getelementptr inbounds nuw i8, ptr %122, i64 32
  %128 = load i32, ptr %127, align 8, !tbaa !107
  %129 = zext i32 %128 to i64
  %130 = tail call i64 @llvm.umin.i64(i64 %126, i64 %129)
  %131 = trunc nuw i64 %130 to i32
  %132 = icmp eq i64 %130, 0
  br i1 %132, label %165, label %133

133:                                              ; preds = %116
  %134 = getelementptr inbounds nuw i8, ptr %122, i64 24
  %135 = load ptr, ptr %134, align 8, !tbaa !106
  %136 = getelementptr inbounds nuw i8, ptr %124, i64 32
  %137 = load ptr, ptr %136, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %135, ptr align 1 %137, i64 %130, i1 false)
  %138 = load ptr, ptr %134, align 8, !tbaa !106
  %139 = getelementptr inbounds nuw i8, ptr %138, i64 %130
  store ptr %139, ptr %134, align 8, !tbaa !106
  %140 = load ptr, ptr %136, align 8, !tbaa !58
  %141 = getelementptr inbounds nuw i8, ptr %140, i64 %130
  store ptr %141, ptr %136, align 8, !tbaa !58
  %142 = getelementptr inbounds nuw i8, ptr %122, i64 40
  %143 = load i64, ptr %142, align 8, !tbaa !108
  %144 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %143, i64 %130), !nosanitize !45
  %145 = extractvalue { i64, i1 } %144, 1, !nosanitize !45
  br i1 %145, label %146, label %147, !prof !46, !nosanitize !45

146:                                              ; preds = %133
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

147:                                              ; preds = %133
  %148 = extractvalue { i64, i1 } %144, 0, !nosanitize !45
  store i64 %148, ptr %142, align 8, !tbaa !108
  %149 = load i32, ptr %127, align 8, !tbaa !107
  %150 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %149, i32 %131), !nosanitize !45
  %151 = extractvalue { i32, i1 } %150, 1, !nosanitize !45
  br i1 %151, label %152, label %153, !prof !46, !nosanitize !45

152:                                              ; preds = %147
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

153:                                              ; preds = %147
  %154 = extractvalue { i32, i1 } %150, 0, !nosanitize !45
  store i32 %154, ptr %127, align 8, !tbaa !107
  %155 = load i64, ptr %125, align 8, !tbaa !57
  %156 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %155, i64 %130), !nosanitize !45
  %157 = extractvalue { i64, i1 } %156, 1, !nosanitize !45
  br i1 %157, label %158, label %159, !prof !46, !nosanitize !45

158:                                              ; preds = %153
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

159:                                              ; preds = %153
  %160 = extractvalue { i64, i1 } %156, 0, !nosanitize !45
  store i64 %160, ptr %125, align 8, !tbaa !57
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = getelementptr inbounds nuw i8, ptr %124, i64 16
  %164 = load ptr, ptr %163, align 8, !tbaa !40
  store ptr %164, ptr %136, align 8, !tbaa !58
  br label %165

165:                                              ; preds = %116, %159, %162
  %166 = icmp eq i32 %41, %43
  br i1 %166, label %201, label %167

167:                                              ; preds = %165
  %168 = tail call i32 @llvm.umin.i32(i32 %44, i32 %59)
  %169 = load ptr, ptr %0, align 8, !tbaa !20
  %170 = getelementptr inbounds nuw i8, ptr %169, i64 24
  %171 = load ptr, ptr %170, align 8, !tbaa !106
  %172 = load ptr, ptr %26, align 8, !tbaa !34
  %173 = load i64, ptr %20, align 8, !tbaa !74
  %174 = getelementptr inbounds i8, ptr %172, i64 %173
  %175 = zext i32 %168 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %171, ptr align 1 %174, i64 %175, i1 false)
  %176 = load ptr, ptr %0, align 8, !tbaa !20
  %177 = getelementptr inbounds nuw i8, ptr %176, i64 24
  %178 = load ptr, ptr %177, align 8, !tbaa !106
  %179 = getelementptr inbounds nuw i8, ptr %178, i64 %175
  store ptr %179, ptr %177, align 8, !tbaa !106
  %180 = getelementptr inbounds nuw i8, ptr %176, i64 32
  %181 = load i32, ptr %180, align 8, !tbaa !107
  %182 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %181, i32 %168), !nosanitize !45
  %183 = extractvalue { i32, i1 } %182, 1, !nosanitize !45
  br i1 %183, label %184, label %185, !prof !46, !nosanitize !45

184:                                              ; preds = %167
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

185:                                              ; preds = %167
  %186 = extractvalue { i32, i1 } %182, 0, !nosanitize !45
  store i32 %186, ptr %180, align 8, !tbaa !107
  %187 = getelementptr inbounds nuw i8, ptr %176, i64 40
  %188 = load i64, ptr %187, align 8, !tbaa !108
  %189 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %188, i64 %175), !nosanitize !45
  %190 = extractvalue { i64, i1 } %189, 1, !nosanitize !45
  br i1 %190, label %191, label %192, !prof !46, !nosanitize !45

191:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

192:                                              ; preds = %185
  %193 = extractvalue { i64, i1 } %189, 0, !nosanitize !45
  store i64 %193, ptr %187, align 8, !tbaa !108
  %194 = load i64, ptr %20, align 8, !tbaa !74
  %195 = add nsw i64 %194, %175
  store i64 %195, ptr %20, align 8, !tbaa !74
  %196 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %59, i32 %168), !nosanitize !45
  %197 = extractvalue { i32, i1 } %196, 1, !nosanitize !45
  br i1 %197, label %198, label %199, !prof !46, !nosanitize !45

198:                                              ; preds = %192
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

199:                                              ; preds = %192
  %200 = extractvalue { i32, i1 } %196, 0, !nosanitize !45
  br label %201

201:                                              ; preds = %199, %165
  %202 = phi i32 [ %200, %199 ], [ %59, %165 ]
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %265, label %204

204:                                              ; preds = %201
  %205 = load ptr, ptr %0, align 8, !tbaa !20
  %206 = getelementptr inbounds nuw i8, ptr %205, i64 24
  %207 = load ptr, ptr %206, align 8, !tbaa !106
  %208 = getelementptr inbounds nuw i8, ptr %205, i64 8
  %209 = load i32, ptr %208, align 8, !tbaa !81
  %210 = tail call i32 @llvm.umin.i32(i32 %209, i32 %202)
  %211 = icmp eq i32 %209, 0
  br i1 %211, label %245, label %212

212:                                              ; preds = %204
  %213 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %209, i32 %210), !nosanitize !45
  %214 = extractvalue { i32, i1 } %213, 1, !nosanitize !45
  br i1 %214, label %215, label %216, !prof !46, !nosanitize !45

215:                                              ; preds = %212
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

216:                                              ; preds = %212
  %217 = extractvalue { i32, i1 } %213, 0, !nosanitize !45
  store i32 %217, ptr %208, align 8, !tbaa !81
  %218 = load ptr, ptr %205, align 8, !tbaa !82
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
  %226 = load i64, ptr %225, align 8, !tbaa !59
  %227 = tail call i64 @adler32(i64 noundef %226, ptr noundef %207, i32 noundef %210) #12
  store i64 %227, ptr %225, align 8, !tbaa !59
  br label %232

228:                                              ; preds = %216
  %229 = getelementptr inbounds nuw i8, ptr %205, i64 96
  %230 = load i64, ptr %229, align 8, !tbaa !59
  %231 = tail call i64 @crc32(i64 noundef %230, ptr noundef %207, i32 noundef %210) #12
  store i64 %231, ptr %229, align 8, !tbaa !59
  br label %232

232:                                              ; preds = %228, %224, %216
  %233 = load ptr, ptr %205, align 8, !tbaa !82
  %234 = getelementptr inbounds nuw i8, ptr %233, i64 %219
  store ptr %234, ptr %205, align 8, !tbaa !82
  %235 = getelementptr inbounds nuw i8, ptr %205, i64 16
  %236 = load i64, ptr %235, align 8, !tbaa !55
  %237 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %236, i64 %219), !nosanitize !45
  %238 = extractvalue { i64, i1 } %237, 1, !nosanitize !45
  br i1 %238, label %239, label %240, !prof !46, !nosanitize !45

239:                                              ; preds = %232
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

240:                                              ; preds = %232
  %241 = extractvalue { i64, i1 } %237, 0, !nosanitize !45
  store i64 %241, ptr %235, align 8, !tbaa !55
  %242 = load ptr, ptr %0, align 8, !tbaa !20
  %243 = getelementptr inbounds nuw i8, ptr %242, i64 24
  %244 = load ptr, ptr %243, align 8, !tbaa !106
  br label %245

245:                                              ; preds = %204, %240
  %246 = phi ptr [ %207, %204 ], [ %244, %240 ]
  %247 = phi ptr [ %205, %204 ], [ %242, %240 ]
  %248 = getelementptr inbounds nuw i8, ptr %247, i64 24
  %249 = zext i32 %202 to i64
  %250 = getelementptr inbounds nuw i8, ptr %246, i64 %249
  store ptr %250, ptr %248, align 8, !tbaa !106
  %251 = getelementptr inbounds nuw i8, ptr %247, i64 32
  %252 = load i32, ptr %251, align 8, !tbaa !107
  %253 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %252, i32 %202), !nosanitize !45
  %254 = extractvalue { i32, i1 } %253, 1, !nosanitize !45
  br i1 %254, label %255, label %256, !prof !46, !nosanitize !45

255:                                              ; preds = %245
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

256:                                              ; preds = %245
  %257 = extractvalue { i32, i1 } %253, 0, !nosanitize !45
  store i32 %257, ptr %251, align 8, !tbaa !107
  %258 = getelementptr inbounds nuw i8, ptr %247, i64 40
  %259 = load i64, ptr %258, align 8, !tbaa !108
  %260 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %259, i64 %249), !nosanitize !45
  %261 = extractvalue { i64, i1 } %260, 1, !nosanitize !45
  br i1 %261, label %262, label %263, !prof !46, !nosanitize !45

262:                                              ; preds = %256
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

263:                                              ; preds = %256
  %264 = extractvalue { i64, i1 } %260, 0, !nosanitize !45
  store i64 %264, ptr %258, align 8, !tbaa !108
  br label %265

265:                                              ; preds = %201, %263
  %266 = icmp eq i32 %82, 0
  br i1 %266, label %27, label %267, !llvm.loop !134

267:                                              ; preds = %265
  %268 = load ptr, ptr %0, align 8, !tbaa !20
  br label %269, !llvm.loop !134

269:                                              ; preds = %69, %61, %32, %267
  %270 = phi ptr [ %268, %267 ], [ %35, %32 ], [ %35, %61 ], [ %35, %69 ]
  %271 = phi i1 [ false, %267 ], [ true, %32 ], [ true, %61 ], [ true, %69 ]
  %272 = getelementptr inbounds nuw i8, ptr %270, i64 8
  %273 = load i32, ptr %272, align 8, !tbaa !81
  %274 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %17, i32 %273), !nosanitize !45
  %275 = extractvalue { i32, i1 } %274, 0, !nosanitize !45
  %276 = extractvalue { i32, i1 } %274, 1, !nosanitize !45
  br i1 %276, label %277, label %278, !prof !46, !nosanitize !45

277:                                              ; preds = %269
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

278:                                              ; preds = %269
  %279 = icmp eq i32 %275, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %278
  %281 = load i32, ptr %19, align 4, !tbaa !73
  %282 = zext i32 %281 to i64
  br label %360

283:                                              ; preds = %278
  %284 = load i32, ptr %10, align 8, !tbaa !32
  %285 = icmp ult i32 %275, %284
  br i1 %285, label %295, label %286

286:                                              ; preds = %283
  %287 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 2, ptr %287, align 8, !tbaa !125
  %288 = load ptr, ptr %26, align 8, !tbaa !34
  %289 = load ptr, ptr %270, align 8, !tbaa !82
  %290 = zext i32 %284 to i64
  %291 = sub nsw i64 0, %290
  %292 = getelementptr inbounds i8, ptr %289, i64 %291
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %288, ptr align 1 %292, i64 %290, i1 false)
  %293 = load i32, ptr %10, align 8, !tbaa !32
  store i32 %293, ptr %19, align 4, !tbaa !73
  %294 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %293, ptr %294, align 4, !tbaa !76
  br label %357

295:                                              ; preds = %283
  %296 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %297 = load i64, ptr %296, align 8, !tbaa !61
  %298 = load i32, ptr %19, align 4, !tbaa !73
  %299 = zext i32 %298 to i64
  %300 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %297, i64 %299), !nosanitize !45
  %301 = extractvalue { i64, i1 } %300, 1, !nosanitize !45
  br i1 %301, label %302, label %303, !prof !46, !nosanitize !45

302:                                              ; preds = %295
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

303:                                              ; preds = %295
  %304 = extractvalue { i64, i1 } %300, 0, !nosanitize !45
  %305 = zext i32 %275 to i64
  %306 = icmp ugt i64 %304, %305
  br i1 %306, label %328, label %307

307:                                              ; preds = %303
  %308 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %298, i32 %284), !nosanitize !45
  %309 = extractvalue { i32, i1 } %308, 1, !nosanitize !45
  br i1 %309, label %310, label %311, !prof !46, !nosanitize !45

310:                                              ; preds = %307
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

311:                                              ; preds = %307
  %312 = extractvalue { i32, i1 } %308, 0, !nosanitize !45
  store i32 %312, ptr %19, align 4, !tbaa !73
  %313 = load ptr, ptr %26, align 8, !tbaa !34
  %314 = zext i32 %284 to i64
  %315 = getelementptr inbounds nuw i8, ptr %313, i64 %314
  %316 = zext i32 %312 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %313, ptr nonnull align 1 %315, i64 %316, i1 false)
  %317 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %318 = load i32, ptr %317, align 8, !tbaa !125
  %319 = icmp ult i32 %318, 2
  br i1 %319, label %320, label %322

320:                                              ; preds = %311
  %321 = add nuw nsw i32 %318, 1
  store i32 %321, ptr %317, align 8, !tbaa !125
  br label %322

322:                                              ; preds = %320, %311
  %323 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %324 = load i32, ptr %323, align 4, !tbaa !76
  %325 = load i32, ptr %19, align 4, !tbaa !73
  %326 = icmp ugt i32 %324, %325
  br i1 %326, label %327, label %328

327:                                              ; preds = %322
  store i32 %325, ptr %323, align 4, !tbaa !76
  br label %328

328:                                              ; preds = %322, %327, %303
  %329 = phi i32 [ %325, %322 ], [ %325, %327 ], [ %298, %303 ]
  %330 = load ptr, ptr %26, align 8, !tbaa !34
  %331 = zext i32 %329 to i64
  %332 = getelementptr inbounds nuw i8, ptr %330, i64 %331
  %333 = load ptr, ptr %0, align 8, !tbaa !20
  %334 = load ptr, ptr %333, align 8, !tbaa !82
  %335 = sub nsw i64 0, %305
  %336 = getelementptr inbounds i8, ptr %334, i64 %335
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %332, ptr nonnull align 1 %336, i64 %305, i1 false)
  %337 = load i32, ptr %19, align 4, !tbaa !73
  %338 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %337, i32 %275), !nosanitize !45
  %339 = extractvalue { i32, i1 } %338, 1, !nosanitize !45
  br i1 %339, label %340, label %341, !prof !46, !nosanitize !45

340:                                              ; preds = %328
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

341:                                              ; preds = %328
  %342 = extractvalue { i32, i1 } %338, 0, !nosanitize !45
  store i32 %342, ptr %19, align 4, !tbaa !73
  %343 = load i32, ptr %10, align 8, !tbaa !32
  %344 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %345 = load i32, ptr %344, align 4, !tbaa !76
  %346 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %343, i32 %345), !nosanitize !45
  %347 = extractvalue { i32, i1 } %346, 1, !nosanitize !45
  br i1 %347, label %348, label %349, !prof !46, !nosanitize !45

348:                                              ; preds = %341
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

349:                                              ; preds = %341
  %350 = extractvalue { i32, i1 } %346, 0, !nosanitize !45
  %351 = tail call i32 @llvm.umin.i32(i32 %275, i32 %350)
  %352 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %345, i32 %351), !nosanitize !45
  %353 = extractvalue { i32, i1 } %352, 1, !nosanitize !45
  br i1 %353, label %354, label %355, !prof !46, !nosanitize !45

354:                                              ; preds = %349
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

355:                                              ; preds = %349
  %356 = extractvalue { i32, i1 } %352, 0, !nosanitize !45
  store i32 %356, ptr %344, align 4, !tbaa !76
  br label %357

357:                                              ; preds = %355, %286
  %358 = phi i32 [ %342, %355 ], [ %293, %286 ]
  %359 = zext i32 %358 to i64
  store i64 %359, ptr %20, align 8, !tbaa !74
  br label %360

360:                                              ; preds = %280, %357
  %361 = phi i64 [ %282, %280 ], [ %359, %357 ]
  %362 = phi i32 [ %281, %280 ], [ %358, %357 ]
  %363 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %364 = load i64, ptr %363, align 8, !tbaa !38
  %365 = icmp ult i64 %364, %361
  br i1 %365, label %366, label %367

366:                                              ; preds = %360
  store i64 %361, ptr %363, align 8, !tbaa !38
  br label %367

367:                                              ; preds = %366, %360
  br i1 %271, label %368, label %584

368:                                              ; preds = %367
  %369 = icmp ne i32 %1, 0
  switch i32 %1, label %370 [
    i32 4, label %378
    i32 0, label %378
  ]

370:                                              ; preds = %368
  %371 = load ptr, ptr %0, align 8, !tbaa !20
  %372 = getelementptr inbounds nuw i8, ptr %371, i64 8
  %373 = load i32, ptr %372, align 8, !tbaa !81
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %378

375:                                              ; preds = %370
  %376 = load i64, ptr %20, align 8, !tbaa !74
  %377 = icmp eq i64 %376, %361
  br i1 %377, label %587, label %378

378:                                              ; preds = %368, %368, %375, %370
  %379 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %380 = load i64, ptr %379, align 8, !tbaa !61
  %381 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %380, i64 %361), !nosanitize !45
  %382 = extractvalue { i64, i1 } %381, 1, !nosanitize !45
  br i1 %382, label %383, label %384, !prof !46, !nosanitize !45

383:                                              ; preds = %378
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

384:                                              ; preds = %378
  %385 = extractvalue { i64, i1 } %381, 0, !nosanitize !45
  %386 = trunc i64 %385 to i32
  %387 = load ptr, ptr %0, align 8, !tbaa !20
  %388 = getelementptr inbounds nuw i8, ptr %387, i64 8
  %389 = load i32, ptr %388, align 8, !tbaa !81
  %390 = icmp ugt i32 %389, %386
  br i1 %390, label %391, label %423

391:                                              ; preds = %384
  %392 = load i64, ptr %20, align 8, !tbaa !74
  %393 = load i32, ptr %10, align 8, !tbaa !32
  %394 = zext i32 %393 to i64
  %395 = icmp slt i64 %392, %394
  br i1 %395, label %423, label %396

396:                                              ; preds = %391
  %397 = sub nsw i64 %392, %394
  store i64 %397, ptr %20, align 8, !tbaa !74
  %398 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %362, i32 %393), !nosanitize !45
  %399 = extractvalue { i32, i1 } %398, 1, !nosanitize !45
  br i1 %399, label %400, label %401, !prof !46, !nosanitize !45

400:                                              ; preds = %396
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

401:                                              ; preds = %396
  %402 = extractvalue { i32, i1 } %398, 0, !nosanitize !45
  store i32 %402, ptr %19, align 4, !tbaa !73
  %403 = load ptr, ptr %26, align 8, !tbaa !34
  %404 = getelementptr inbounds nuw i8, ptr %403, i64 %394
  %405 = zext i32 %402 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %403, ptr align 1 %404, i64 %405, i1 false)
  %406 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %407 = load i32, ptr %406, align 8, !tbaa !125
  %408 = icmp ult i32 %407, 2
  br i1 %408, label %409, label %411

409:                                              ; preds = %401
  %410 = add nuw nsw i32 %407, 1
  store i32 %410, ptr %406, align 8, !tbaa !125
  br label %411

411:                                              ; preds = %409, %401
  %412 = load i32, ptr %10, align 8, !tbaa !32
  %413 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %386, i32 %412), !nosanitize !45
  %414 = extractvalue { i32, i1 } %413, 0, !nosanitize !45
  %415 = extractvalue { i32, i1 } %413, 1, !nosanitize !45
  br i1 %415, label %416, label %417, !prof !46, !nosanitize !45

416:                                              ; preds = %411
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

417:                                              ; preds = %411
  %418 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %419 = load i32, ptr %418, align 4, !tbaa !76
  %420 = load i32, ptr %19, align 4, !tbaa !73
  %421 = icmp ugt i32 %419, %420
  br i1 %421, label %422, label %423

422:                                              ; preds = %417
  store i32 %420, ptr %418, align 4, !tbaa !76
  br label %423

423:                                              ; preds = %417, %422, %391, %384
  %424 = phi i32 [ %420, %422 ], [ %420, %417 ], [ %362, %391 ], [ %362, %384 ]
  %425 = phi i32 [ %414, %422 ], [ %414, %417 ], [ %386, %391 ], [ %386, %384 ]
  %426 = load ptr, ptr %0, align 8, !tbaa !20
  %427 = getelementptr inbounds nuw i8, ptr %426, i64 8
  %428 = load i32, ptr %427, align 8, !tbaa !81
  %429 = tail call i32 @llvm.umin.i32(i32 %425, i32 %428)
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %484, label %431

431:                                              ; preds = %423
  %432 = load ptr, ptr %26, align 8, !tbaa !34
  %433 = zext i32 %424 to i64
  %434 = getelementptr inbounds nuw i8, ptr %432, i64 %433
  %435 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %428, i32 %429), !nosanitize !45
  %436 = extractvalue { i32, i1 } %435, 1, !nosanitize !45
  br i1 %436, label %437, label %438, !prof !46, !nosanitize !45

437:                                              ; preds = %431
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

438:                                              ; preds = %431
  %439 = extractvalue { i32, i1 } %435, 0, !nosanitize !45
  store i32 %439, ptr %427, align 8, !tbaa !81
  %440 = load ptr, ptr %426, align 8, !tbaa !82
  %441 = zext i32 %429 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %434, ptr align 1 %440, i64 %441, i1 false)
  %442 = getelementptr inbounds nuw i8, ptr %426, i64 56
  %443 = load ptr, ptr %442, align 8, !tbaa !19
  %444 = getelementptr inbounds nuw i8, ptr %443, i64 48
  %445 = load i32, ptr %444, align 8, !tbaa !30
  switch i32 %445, label %454 [
    i32 1, label %446
    i32 2, label %450
  ]

446:                                              ; preds = %438
  %447 = getelementptr inbounds nuw i8, ptr %426, i64 96
  %448 = load i64, ptr %447, align 8, !tbaa !59
  %449 = tail call i64 @adler32(i64 noundef %448, ptr noundef %434, i32 noundef %429) #12
  store i64 %449, ptr %447, align 8, !tbaa !59
  br label %454

450:                                              ; preds = %438
  %451 = getelementptr inbounds nuw i8, ptr %426, i64 96
  %452 = load i64, ptr %451, align 8, !tbaa !59
  %453 = tail call i64 @crc32(i64 noundef %452, ptr noundef %434, i32 noundef %429) #12
  store i64 %453, ptr %451, align 8, !tbaa !59
  br label %454

454:                                              ; preds = %450, %446, %438
  %455 = load ptr, ptr %426, align 8, !tbaa !82
  %456 = getelementptr inbounds nuw i8, ptr %455, i64 %441
  store ptr %456, ptr %426, align 8, !tbaa !82
  %457 = getelementptr inbounds nuw i8, ptr %426, i64 16
  %458 = load i64, ptr %457, align 8, !tbaa !55
  %459 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %458, i64 %441), !nosanitize !45
  %460 = extractvalue { i64, i1 } %459, 1, !nosanitize !45
  br i1 %460, label %461, label %462, !prof !46, !nosanitize !45

461:                                              ; preds = %454
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

462:                                              ; preds = %454
  %463 = extractvalue { i64, i1 } %459, 0, !nosanitize !45
  store i64 %463, ptr %457, align 8, !tbaa !55
  %464 = load i32, ptr %19, align 4, !tbaa !73
  %465 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %464, i32 %429), !nosanitize !45
  %466 = extractvalue { i32, i1 } %465, 1, !nosanitize !45
  br i1 %466, label %467, label %468, !prof !46, !nosanitize !45

467:                                              ; preds = %462
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

468:                                              ; preds = %462
  %469 = extractvalue { i32, i1 } %465, 0, !nosanitize !45
  store i32 %469, ptr %19, align 4, !tbaa !73
  %470 = load i32, ptr %10, align 8, !tbaa !32
  %471 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %472 = load i32, ptr %471, align 4, !tbaa !76
  %473 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %470, i32 %472), !nosanitize !45
  %474 = extractvalue { i32, i1 } %473, 1, !nosanitize !45
  br i1 %474, label %475, label %476, !prof !46, !nosanitize !45

475:                                              ; preds = %468
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

476:                                              ; preds = %468
  %477 = extractvalue { i32, i1 } %473, 0, !nosanitize !45
  %478 = tail call i32 @llvm.umin.i32(i32 %429, i32 %477)
  %479 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %472, i32 %478), !nosanitize !45
  %480 = extractvalue { i32, i1 } %479, 1, !nosanitize !45
  br i1 %480, label %481, label %482, !prof !46, !nosanitize !45

481:                                              ; preds = %476
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

482:                                              ; preds = %476
  %483 = extractvalue { i32, i1 } %479, 0, !nosanitize !45
  store i32 %483, ptr %471, align 4, !tbaa !76
  br label %484

484:                                              ; preds = %482, %423
  %485 = phi i32 [ %469, %482 ], [ %424, %423 ]
  %486 = load i64, ptr %363, align 8, !tbaa !38
  %487 = zext i32 %485 to i64
  %488 = icmp ult i64 %486, %487
  br i1 %488, label %489, label %490

489:                                              ; preds = %484
  store i64 %487, ptr %363, align 8, !tbaa !38
  br label %490

490:                                              ; preds = %489, %484
  %491 = load i32, ptr %18, align 4, !tbaa !101
  %492 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %491, i32 42), !nosanitize !45
  %493 = extractvalue { i32, i1 } %492, 1, !nosanitize !45
  br i1 %493, label %494, label %495, !prof !46, !nosanitize !45

494:                                              ; preds = %490
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

495:                                              ; preds = %490
  %496 = extractvalue { i32, i1 } %492, 0, !nosanitize !45
  %497 = lshr i32 %496, 3
  %498 = load i64, ptr %3, align 8, !tbaa !41
  %499 = zext nneg i32 %497 to i64
  %500 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %498, i64 %499), !nosanitize !45
  %501 = extractvalue { i64, i1 } %500, 1, !nosanitize !45
  br i1 %501, label %502, label %503, !prof !46, !nosanitize !45

502:                                              ; preds = %495
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

503:                                              ; preds = %495
  %504 = extractvalue { i64, i1 } %500, 0, !nosanitize !45
  %505 = tail call i64 @llvm.umin.i64(i64 %504, i64 65535)
  %506 = trunc nuw nsw i64 %505 to i32
  %507 = load i32, ptr %10, align 8, !tbaa !32
  %508 = tail call i32 @llvm.umin.i32(i32 %507, i32 %506)
  %509 = load i64, ptr %20, align 8, !tbaa !74
  %510 = trunc i64 %509 to i32
  %511 = sub i32 %485, %510
  %512 = icmp ult i32 %511, %508
  br i1 %512, label %513, label %522

513:                                              ; preds = %503
  %514 = icmp ne i32 %485, %510
  %515 = or i1 %23, %514
  %516 = and i1 %369, %515
  br i1 %516, label %517, label %587

517:                                              ; preds = %513
  %518 = load ptr, ptr %0, align 8, !tbaa !20
  %519 = getelementptr inbounds nuw i8, ptr %518, i64 8
  %520 = load i32, ptr %519, align 8, !tbaa !81
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %587

522:                                              ; preds = %517, %503
  %523 = tail call i32 @llvm.umin.i32(i32 %511, i32 %506)
  br i1 %23, label %524, label %532

524:                                              ; preds = %522
  %525 = load ptr, ptr %0, align 8, !tbaa !20
  %526 = getelementptr inbounds nuw i8, ptr %525, i64 8
  %527 = load i32, ptr %526, align 8, !tbaa !81
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %532

529:                                              ; preds = %524
  %530 = icmp ule i32 %511, %506
  %531 = zext i1 %530 to i32
  br label %532

532:                                              ; preds = %529, %524, %522
  %533 = phi i32 [ 0, %524 ], [ 0, %522 ], [ %531, %529 ]
  %534 = load ptr, ptr %26, align 8, !tbaa !34
  %535 = getelementptr inbounds i8, ptr %534, i64 %509
  %536 = zext nneg i32 %523 to i64
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef %535, i64 noundef %536, i32 noundef %533) #12
  %537 = load i64, ptr %20, align 8, !tbaa !74
  %538 = add nsw i64 %537, %536
  store i64 %538, ptr %20, align 8, !tbaa !74
  %539 = load ptr, ptr %0, align 8, !tbaa !20
  %540 = getelementptr inbounds nuw i8, ptr %539, i64 56
  %541 = load ptr, ptr %540, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %541) #12
  %542 = getelementptr inbounds nuw i8, ptr %541, i64 40
  %543 = load i64, ptr %542, align 8, !tbaa !57
  %544 = getelementptr inbounds nuw i8, ptr %539, i64 32
  %545 = load i32, ptr %544, align 8, !tbaa !107
  %546 = zext i32 %545 to i64
  %547 = tail call i64 @llvm.umin.i64(i64 %543, i64 %546)
  %548 = trunc nuw i64 %547 to i32
  %549 = icmp eq i64 %547, 0
  br i1 %549, label %582, label %550

550:                                              ; preds = %532
  %551 = getelementptr inbounds nuw i8, ptr %539, i64 24
  %552 = load ptr, ptr %551, align 8, !tbaa !106
  %553 = getelementptr inbounds nuw i8, ptr %541, i64 32
  %554 = load ptr, ptr %553, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %552, ptr align 1 %554, i64 %547, i1 false)
  %555 = load ptr, ptr %551, align 8, !tbaa !106
  %556 = getelementptr inbounds nuw i8, ptr %555, i64 %547
  store ptr %556, ptr %551, align 8, !tbaa !106
  %557 = load ptr, ptr %553, align 8, !tbaa !58
  %558 = getelementptr inbounds nuw i8, ptr %557, i64 %547
  store ptr %558, ptr %553, align 8, !tbaa !58
  %559 = getelementptr inbounds nuw i8, ptr %539, i64 40
  %560 = load i64, ptr %559, align 8, !tbaa !108
  %561 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %560, i64 %547), !nosanitize !45
  %562 = extractvalue { i64, i1 } %561, 1, !nosanitize !45
  br i1 %562, label %563, label %564, !prof !46, !nosanitize !45

563:                                              ; preds = %550
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

564:                                              ; preds = %550
  %565 = extractvalue { i64, i1 } %561, 0, !nosanitize !45
  store i64 %565, ptr %559, align 8, !tbaa !108
  %566 = load i32, ptr %544, align 8, !tbaa !107
  %567 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %566, i32 %548), !nosanitize !45
  %568 = extractvalue { i32, i1 } %567, 1, !nosanitize !45
  br i1 %568, label %569, label %570, !prof !46, !nosanitize !45

569:                                              ; preds = %564
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

570:                                              ; preds = %564
  %571 = extractvalue { i32, i1 } %567, 0, !nosanitize !45
  store i32 %571, ptr %544, align 8, !tbaa !107
  %572 = load i64, ptr %542, align 8, !tbaa !57
  %573 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %572, i64 %547), !nosanitize !45
  %574 = extractvalue { i64, i1 } %573, 1, !nosanitize !45
  br i1 %574, label %575, label %576, !prof !46, !nosanitize !45

575:                                              ; preds = %570
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

576:                                              ; preds = %570
  %577 = extractvalue { i64, i1 } %573, 0, !nosanitize !45
  store i64 %577, ptr %542, align 8, !tbaa !57
  %578 = icmp eq i64 %577, 0
  br i1 %578, label %579, label %582

579:                                              ; preds = %576
  %580 = getelementptr inbounds nuw i8, ptr %541, i64 16
  %581 = load ptr, ptr %580, align 8, !tbaa !40
  store ptr %581, ptr %553, align 8, !tbaa !58
  br label %582

582:                                              ; preds = %532, %576, %579
  %583 = icmp eq i32 %533, 0
  br i1 %583, label %587, label %584

584:                                              ; preds = %582, %367
  %585 = phi i32 [ 3, %367 ], [ 2, %582 ]
  %586 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 8, ptr %586, align 8, !tbaa !102
  br label %587

587:                                              ; preds = %584, %582, %517, %513, %375
  %588 = phi i32 [ 0, %517 ], [ 1, %375 ], [ 0, %513 ], [ 0, %582 ], [ %585, %584 ]
  ret i32 %588
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
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  br label %25

25:                                               ; preds = %477, %2
  %26 = load i32, ptr %3, align 4, !tbaa !75
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %364

28:                                               ; preds = %25
  %29 = load i32, ptr %4, align 8, !tbaa !32
  %30 = zext i32 %29 to i64
  br label %31

31:                                               ; preds = %310, %28
  %32 = phi i32 [ %237, %310 ], [ 0, %28 ]
  %33 = load i64, ptr %5, align 8, !tbaa !61
  %34 = zext nneg i32 %32 to i64
  %35 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %33, i64 %34), !nosanitize !45
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !45
  br i1 %36, label %37, label %38, !prof !46, !nosanitize !45

37:                                               ; preds = %31
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

38:                                               ; preds = %31
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !45
  %40 = load i32, ptr %6, align 4, !tbaa !73
  %41 = zext i32 %40 to i64
  %42 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %39, i64 %41), !nosanitize !45
  %43 = extractvalue { i64, i1 } %42, 1, !nosanitize !45
  br i1 %43, label %44, label %45, !prof !46, !nosanitize !45

44:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

45:                                               ; preds = %38
  %46 = extractvalue { i64, i1 } %42, 0, !nosanitize !45
  %47 = trunc i64 %46 to i32
  %48 = load i32, ptr %4, align 8, !tbaa !32
  %49 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %48, i32 262), !nosanitize !45
  %50 = extractvalue { i32, i1 } %49, 1, !nosanitize !45
  br i1 %50, label %51, label %52, !prof !46, !nosanitize !45

51:                                               ; preds = %45
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

52:                                               ; preds = %45
  %53 = extractvalue { i32, i1 } %49, 0, !nosanitize !45
  %54 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %29, i32 %53), !nosanitize !45
  %55 = extractvalue { i32, i1 } %54, 1, !nosanitize !45
  br i1 %55, label %56, label %57, !prof !46, !nosanitize !45

56:                                               ; preds = %52
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

57:                                               ; preds = %52
  %58 = extractvalue { i32, i1 } %54, 0, !nosanitize !45
  %59 = icmp ult i32 %40, %58
  br i1 %59, label %184, label %60

60:                                               ; preds = %57
  %61 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %29, i32 %47), !nosanitize !45
  %62 = extractvalue { i32, i1 } %61, 1, !nosanitize !45
  br i1 %62, label %63, label %64, !prof !46, !nosanitize !45

63:                                               ; preds = %60
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

64:                                               ; preds = %60
  %65 = extractvalue { i32, i1 } %61, 0, !nosanitize !45
  %66 = load ptr, ptr %7, align 8, !tbaa !34
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 %30
  %68 = zext i32 %65 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %66, ptr align 1 %67, i64 %68, i1 false)
  %69 = load i32, ptr %8, align 8, !tbaa !83
  %70 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %69, i32 %29), !nosanitize !45
  %71 = extractvalue { i32, i1 } %70, 1, !nosanitize !45
  br i1 %71, label %72, label %73, !prof !46, !nosanitize !45

72:                                               ; preds = %64
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

73:                                               ; preds = %64
  %74 = extractvalue { i32, i1 } %70, 0, !nosanitize !45
  store i32 %74, ptr %8, align 8, !tbaa !83
  %75 = load i32, ptr %6, align 4, !tbaa !73
  %76 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %75, i32 %29), !nosanitize !45
  %77 = extractvalue { i32, i1 } %76, 1, !nosanitize !45
  br i1 %77, label %78, label %79, !prof !46, !nosanitize !45

78:                                               ; preds = %73
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

79:                                               ; preds = %73
  %80 = extractvalue { i32, i1 } %76, 0, !nosanitize !45
  store i32 %80, ptr %6, align 4, !tbaa !73
  %81 = load i64, ptr %9, align 8, !tbaa !74
  %82 = sub nsw i64 %81, %30
  store i64 %82, ptr %9, align 8, !tbaa !74
  %83 = load i32, ptr %10, align 4, !tbaa !76
  %84 = icmp ugt i32 %83, %80
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 %80, ptr %10, align 4, !tbaa !76
  br label %86

86:                                               ; preds = %85, %79
  %87 = load i32, ptr %4, align 8, !tbaa !32
  %88 = load i32, ptr %11, align 4, !tbaa !36
  %89 = load ptr, ptr %12, align 8, !tbaa !37
  %90 = zext i32 %88 to i64
  %91 = getelementptr inbounds nuw [2 x i8], ptr %89, i64 %90
  %92 = icmp eq i32 %88, 0
  br i1 %92, label %119, label %93, !prof !46, !nosanitize !45

93:                                               ; preds = %86
  %94 = icmp ult i32 %88, 8
  br i1 %94, label %116, label %95

95:                                               ; preds = %93
  %96 = and i64 %90, 4294967288
  %97 = mul nsw i64 %96, -2
  %98 = getelementptr i8, ptr %91, i64 %97
  %99 = trunc nuw i64 %96 to i32
  %100 = sub i32 %88, %99
  %101 = insertelement <8 x i32> poison, i32 %87, i64 0
  %102 = shufflevector <8 x i32> %101, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %103

103:                                              ; preds = %103, %95
  %104 = phi i64 [ 0, %95 ], [ %112, %103 ]
  %105 = mul i64 %104, -2
  %106 = getelementptr i8, ptr %91, i64 %105
  %107 = getelementptr inbounds i8, ptr %106, i64 -16
  %108 = load <8 x i16>, ptr %107, align 2, !tbaa !62
  %109 = zext <8 x i16> %108 to <8 x i32>
  %110 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %109, <8 x i32> %102)
  %111 = trunc nuw <8 x i32> %110 to <8 x i16>
  store <8 x i16> %111, ptr %107, align 2, !tbaa !62
  %112 = add nuw i64 %104, 8
  %113 = icmp eq i64 %112, %96
  br i1 %113, label %114, label %103, !llvm.loop !135

114:                                              ; preds = %103
  %115 = icmp eq i64 %96, %90
  br i1 %115, label %135, label %116

116:                                              ; preds = %93, %114
  %117 = phi ptr [ %91, %93 ], [ %98, %114 ]
  %118 = phi i32 [ %88, %93 ], [ %100, %114 ]
  br label %125

119:                                              ; preds = %86
  %120 = getelementptr inbounds i8, ptr %91, i64 -2
  %121 = load i16, ptr %120, align 2, !tbaa !62
  %122 = zext i16 %121 to i32
  %123 = tail call i32 @llvm.usub.sat.i32(i32 %122, i32 %87)
  %124 = trunc nuw i32 %123 to i16
  store i16 %124, ptr %120, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

125:                                              ; preds = %116, %125
  %126 = phi ptr [ %128, %125 ], [ %117, %116 ]
  %127 = phi i32 [ %133, %125 ], [ %118, %116 ]
  %128 = getelementptr inbounds i8, ptr %126, i64 -2
  %129 = load i16, ptr %128, align 2, !tbaa !62
  %130 = zext i16 %129 to i32
  %131 = tail call i32 @llvm.usub.sat.i32(i32 %130, i32 %87)
  %132 = trunc nuw i32 %131 to i16
  store i16 %132, ptr %128, align 2, !tbaa !62
  %133 = add i32 %127, -1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %125, !llvm.loop !136

135:                                              ; preds = %125, %114
  %136 = icmp eq i32 %87, 0
  br i1 %136, label %137, label %138, !prof !46, !nosanitize !45

137:                                              ; preds = %135
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

138:                                              ; preds = %135
  %139 = load ptr, ptr %13, align 8, !tbaa !35
  %140 = zext i32 %87 to i64
  %141 = getelementptr inbounds nuw [2 x i8], ptr %139, i64 %140
  %142 = icmp ult i32 %87, 8
  br i1 %142, label %164, label %143

143:                                              ; preds = %138
  %144 = and i64 %140, 4294967288
  %145 = mul nsw i64 %144, -2
  %146 = getelementptr i8, ptr %141, i64 %145
  %147 = trunc nuw i64 %144 to i32
  %148 = sub i32 %87, %147
  %149 = insertelement <8 x i32> poison, i32 %87, i64 0
  %150 = shufflevector <8 x i32> %149, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %151

151:                                              ; preds = %151, %143
  %152 = phi i64 [ 0, %143 ], [ %160, %151 ]
  %153 = mul i64 %152, -2
  %154 = getelementptr i8, ptr %141, i64 %153
  %155 = getelementptr inbounds i8, ptr %154, i64 -16
  %156 = load <8 x i16>, ptr %155, align 2, !tbaa !62
  %157 = zext <8 x i16> %156 to <8 x i32>
  %158 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %157, <8 x i32> %150)
  %159 = trunc nuw <8 x i32> %158 to <8 x i16>
  store <8 x i16> %159, ptr %155, align 2, !tbaa !62
  %160 = add nuw i64 %152, 8
  %161 = icmp eq i64 %160, %144
  br i1 %161, label %162, label %151, !llvm.loop !137

162:                                              ; preds = %151
  %163 = icmp eq i64 %144, %140
  br i1 %163, label %177, label %164

164:                                              ; preds = %138, %162
  %165 = phi ptr [ %141, %138 ], [ %146, %162 ]
  %166 = phi i32 [ %87, %138 ], [ %148, %162 ]
  br label %167

167:                                              ; preds = %164, %167
  %168 = phi ptr [ %170, %167 ], [ %165, %164 ]
  %169 = phi i32 [ %175, %167 ], [ %166, %164 ]
  %170 = getelementptr inbounds i8, ptr %168, i64 -2
  %171 = load i16, ptr %170, align 2, !tbaa !62
  %172 = zext i16 %171 to i32
  %173 = tail call i32 @llvm.usub.sat.i32(i32 %172, i32 %87)
  %174 = trunc nuw i32 %173 to i16
  store i16 %174, ptr %170, align 2, !tbaa !62
  %175 = add i32 %169, -1
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %167, !llvm.loop !138

177:                                              ; preds = %167, %162
  store i32 1, ptr %14, align 8, !tbaa !63
  %178 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %47, i32 %29), !nosanitize !45
  %179 = extractvalue { i32, i1 } %178, 1, !nosanitize !45
  br i1 %179, label %180, label %181, !prof !46, !nosanitize !45

180:                                              ; preds = %177
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

181:                                              ; preds = %177
  %182 = extractvalue { i32, i1 } %178, 0, !nosanitize !45
  %183 = load i32, ptr %3, align 4, !tbaa !75
  br label %184

184:                                              ; preds = %181, %57
  %185 = phi i32 [ %183, %181 ], [ %32, %57 ]
  %186 = phi i32 [ %80, %181 ], [ %40, %57 ]
  %187 = phi i32 [ %182, %181 ], [ %47, %57 ]
  %188 = load ptr, ptr %0, align 8, !tbaa !20
  %189 = getelementptr inbounds nuw i8, ptr %188, i64 8
  %190 = load i32, ptr %189, align 8, !tbaa !81
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %315, label %192

192:                                              ; preds = %184
  %193 = load ptr, ptr %7, align 8, !tbaa !34
  %194 = zext i32 %186 to i64
  %195 = getelementptr inbounds nuw i8, ptr %193, i64 %194
  %196 = zext i32 %185 to i64
  %197 = getelementptr inbounds nuw i8, ptr %195, i64 %196
  %198 = tail call i32 @llvm.umin.i32(i32 %190, i32 %187)
  %199 = icmp eq i32 %187, 0
  br i1 %199, label %231, label %200

200:                                              ; preds = %192
  %201 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %190, i32 %198), !nosanitize !45
  %202 = extractvalue { i32, i1 } %201, 1, !nosanitize !45
  br i1 %202, label %203, label %204, !prof !46, !nosanitize !45

203:                                              ; preds = %200
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

204:                                              ; preds = %200
  %205 = extractvalue { i32, i1 } %201, 0, !nosanitize !45
  store i32 %205, ptr %189, align 8, !tbaa !81
  %206 = load ptr, ptr %188, align 8, !tbaa !82
  %207 = zext i32 %198 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %197, ptr align 1 %206, i64 %207, i1 false)
  %208 = getelementptr inbounds nuw i8, ptr %188, i64 56
  %209 = load ptr, ptr %208, align 8, !tbaa !19
  %210 = getelementptr inbounds nuw i8, ptr %209, i64 48
  %211 = load i32, ptr %210, align 8, !tbaa !30
  switch i32 %211, label %220 [
    i32 1, label %212
    i32 2, label %216
  ]

212:                                              ; preds = %204
  %213 = getelementptr inbounds nuw i8, ptr %188, i64 96
  %214 = load i64, ptr %213, align 8, !tbaa !59
  %215 = tail call i64 @adler32(i64 noundef %214, ptr noundef %197, i32 noundef %198) #12
  store i64 %215, ptr %213, align 8, !tbaa !59
  br label %220

216:                                              ; preds = %204
  %217 = getelementptr inbounds nuw i8, ptr %188, i64 96
  %218 = load i64, ptr %217, align 8, !tbaa !59
  %219 = tail call i64 @crc32(i64 noundef %218, ptr noundef %197, i32 noundef %198) #12
  store i64 %219, ptr %217, align 8, !tbaa !59
  br label %220

220:                                              ; preds = %216, %212, %204
  %221 = load ptr, ptr %188, align 8, !tbaa !82
  %222 = getelementptr inbounds nuw i8, ptr %221, i64 %207
  store ptr %222, ptr %188, align 8, !tbaa !82
  %223 = getelementptr inbounds nuw i8, ptr %188, i64 16
  %224 = load i64, ptr %223, align 8, !tbaa !55
  %225 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %224, i64 %207), !nosanitize !45
  %226 = extractvalue { i64, i1 } %225, 1, !nosanitize !45
  br i1 %226, label %227, label %228, !prof !46, !nosanitize !45

227:                                              ; preds = %220
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

228:                                              ; preds = %220
  %229 = extractvalue { i64, i1 } %225, 0, !nosanitize !45
  store i64 %229, ptr %223, align 8, !tbaa !55
  %230 = load i32, ptr %3, align 4, !tbaa !75
  br label %231

231:                                              ; preds = %228, %192
  %232 = phi i32 [ %185, %192 ], [ %230, %228 ]
  %233 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %232, i32 %198), !nosanitize !45
  %234 = extractvalue { i32, i1 } %233, 1, !nosanitize !45
  br i1 %234, label %235, label %236, !prof !46, !nosanitize !45

235:                                              ; preds = %231
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

236:                                              ; preds = %231
  %237 = extractvalue { i32, i1 } %233, 0, !nosanitize !45
  store i32 %237, ptr %3, align 4, !tbaa !75
  %238 = load i32, ptr %10, align 4, !tbaa !76
  %239 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %237, i32 %238), !nosanitize !45
  %240 = extractvalue { i32, i1 } %239, 1, !nosanitize !45
  br i1 %240, label %241, label %242, !prof !46, !nosanitize !45

241:                                              ; preds = %236
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

242:                                              ; preds = %236
  %243 = extractvalue { i32, i1 } %239, 0, !nosanitize !45
  %244 = icmp ugt i32 %243, 2
  br i1 %244, label %245, label %308

245:                                              ; preds = %242
  %246 = load i32, ptr %6, align 4, !tbaa !73
  %247 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %246, i32 %238), !nosanitize !45
  %248 = extractvalue { i32, i1 } %247, 0, !nosanitize !45
  %249 = extractvalue { i32, i1 } %247, 1, !nosanitize !45
  br i1 %249, label %250, label %251, !prof !46, !nosanitize !45

250:                                              ; preds = %245
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

251:                                              ; preds = %245
  %252 = load ptr, ptr %7, align 8, !tbaa !34
  %253 = zext i32 %248 to i64
  %254 = getelementptr inbounds nuw i8, ptr %252, i64 %253
  %255 = load i8, ptr %254, align 1, !tbaa !8
  %256 = zext i8 %255 to i32
  store i32 %256, ptr %15, align 8, !tbaa !80
  %257 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %248, i32 1), !nosanitize !45
  %258 = extractvalue { i32, i1 } %257, 1, !nosanitize !45
  br i1 %258, label %259, label %260, !prof !46, !nosanitize !45

259:                                              ; preds = %251
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

260:                                              ; preds = %251
  %261 = extractvalue { i32, i1 } %257, 0, !nosanitize !45
  %262 = load i32, ptr %16, align 8, !tbaa !53
  %263 = shl i32 %256, %262
  %264 = zext i32 %261 to i64
  %265 = getelementptr inbounds nuw i8, ptr %252, i64 %264
  %266 = load i8, ptr %265, align 1, !tbaa !8
  %267 = zext i8 %266 to i32
  %268 = xor i32 %263, %267
  %269 = load i32, ptr %17, align 4, !tbaa !52
  %270 = and i32 %268, %269
  store i32 %270, ptr %15, align 8, !tbaa !80
  br label %271

271:                                              ; preds = %304, %260
  %272 = phi i32 [ %270, %260 ], [ %289, %304 ]
  %273 = phi i32 [ %238, %260 ], [ %300, %304 ]
  %274 = phi i32 [ %248, %260 ], [ %305, %304 ]
  %275 = icmp eq i32 %273, 0
  br i1 %275, label %308, label %276

276:                                              ; preds = %271
  %277 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %274, i32 3), !nosanitize !45
  %278 = extractvalue { i32, i1 } %277, 1, !nosanitize !45
  br i1 %278, label %279, label %280, !prof !46, !nosanitize !45

279:                                              ; preds = %276
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

280:                                              ; preds = %276
  %281 = shl i32 %272, %262
  %282 = extractvalue { i32, i1 } %277, 0, !nosanitize !45
  %283 = add i32 %282, -1
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds nuw i8, ptr %252, i64 %284
  %286 = load i8, ptr %285, align 1, !tbaa !8
  %287 = zext i8 %286 to i32
  %288 = xor i32 %281, %287
  %289 = and i32 %288, %269
  store i32 %289, ptr %15, align 8, !tbaa !80
  %290 = load ptr, ptr %12, align 8, !tbaa !37
  %291 = zext i32 %289 to i64
  %292 = getelementptr inbounds nuw [2 x i8], ptr %290, i64 %291
  %293 = load i16, ptr %292, align 2, !tbaa !62
  %294 = load ptr, ptr %13, align 8, !tbaa !35
  %295 = load i32, ptr %18, align 8, !tbaa !33
  %296 = and i32 %295, %274
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds nuw [2 x i8], ptr %294, i64 %297
  store i16 %293, ptr %298, align 2, !tbaa !62
  %299 = trunc i32 %274 to i16
  store i16 %299, ptr %292, align 2, !tbaa !62
  %300 = add i32 %273, -1
  store i32 %300, ptr %10, align 4, !tbaa !76
  %301 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %237, i32 %300), !nosanitize !45
  %302 = extractvalue { i32, i1 } %301, 1, !nosanitize !45
  br i1 %302, label %303, label %304, !prof !46, !nosanitize !45

303:                                              ; preds = %280
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

304:                                              ; preds = %280
  %305 = add nuw i32 %274, 1
  %306 = extractvalue { i32, i1 } %301, 0, !nosanitize !45
  %307 = icmp ult i32 %306, 3
  br i1 %307, label %308, label %271, !llvm.loop !91

308:                                              ; preds = %304, %271, %242
  %309 = icmp ult i32 %237, 262
  br i1 %309, label %310, label %315

310:                                              ; preds = %308
  %311 = load ptr, ptr %0, align 8, !tbaa !20
  %312 = getelementptr inbounds nuw i8, ptr %311, i64 8
  %313 = load i32, ptr %312, align 8, !tbaa !81
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %31, !llvm.loop !92

315:                                              ; preds = %310, %308, %184
  %316 = phi i32 [ %237, %310 ], [ %237, %308 ], [ %185, %184 ]
  %317 = load i64, ptr %19, align 8, !tbaa !38
  %318 = load i64, ptr %5, align 8, !tbaa !61
  %319 = icmp ult i64 %317, %318
  br i1 %319, label %320, label %359

320:                                              ; preds = %315
  %321 = load i32, ptr %6, align 4, !tbaa !73
  %322 = zext i32 %321 to i64
  %323 = zext i32 %316 to i64
  %324 = add nuw nsw i64 %323, %322
  %325 = icmp ult i64 %317, %324
  br i1 %325, label %326, label %336

326:                                              ; preds = %320
  %327 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %318, i64 %324), !nosanitize !45
  %328 = extractvalue { i64, i1 } %327, 1, !nosanitize !45
  br i1 %328, label %329, label %330, !prof !46, !nosanitize !45

329:                                              ; preds = %326
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

330:                                              ; preds = %326
  %331 = extractvalue { i64, i1 } %327, 0, !nosanitize !45
  %332 = tail call i64 @llvm.umin.i64(i64 %331, i64 258)
  %333 = load ptr, ptr %7, align 8, !tbaa !34
  %334 = getelementptr inbounds nuw i8, ptr %333, i64 %324
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %334, i8 0, i64 %332, i1 false)
  %335 = add nuw nsw i64 %332, %324
  br label %356

336:                                              ; preds = %320
  %337 = add nuw nsw i64 %324, 258
  %338 = icmp ult i64 %317, %337
  br i1 %338, label %339, label %359

339:                                              ; preds = %336
  %340 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %318, i64 %317), !nosanitize !45
  %341 = extractvalue { i64, i1 } %340, 1, !nosanitize !45
  br i1 %341, label %342, label %343, !prof !46, !nosanitize !45

342:                                              ; preds = %339
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

343:                                              ; preds = %339
  %344 = sub nuw nsw i64 %337, %317
  %345 = extractvalue { i64, i1 } %340, 0, !nosanitize !45
  %346 = tail call i64 @llvm.umin.i64(i64 %344, i64 %345)
  %347 = load ptr, ptr %7, align 8, !tbaa !34
  %348 = getelementptr inbounds nuw i8, ptr %347, i64 %317
  %349 = and i64 %346, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %348, i8 0, i64 %349, i1 false)
  %350 = load i64, ptr %19, align 8, !tbaa !38
  %351 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %350, i64 %346), !nosanitize !45
  %352 = extractvalue { i64, i1 } %351, 1, !nosanitize !45
  br i1 %352, label %353, label %354, !prof !46, !nosanitize !45

353:                                              ; preds = %343
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

354:                                              ; preds = %343
  %355 = extractvalue { i64, i1 } %351, 0, !nosanitize !45
  br label %356

356:                                              ; preds = %354, %330
  %357 = phi i64 [ %335, %330 ], [ %355, %354 ]
  store i64 %357, ptr %19, align 8, !tbaa !38
  %358 = load i32, ptr %3, align 4, !tbaa !75
  br label %359

359:                                              ; preds = %315, %336, %356
  %360 = phi i32 [ %316, %315 ], [ %316, %336 ], [ %358, %356 ]
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %364

362:                                              ; preds = %359
  %363 = icmp eq i32 %1, 0
  br i1 %363, label %609, label %478

364:                                              ; preds = %359, %25
  store i32 0, ptr %20, align 8, !tbaa !78
  %365 = load ptr, ptr %7, align 8, !tbaa !34
  %366 = load i32, ptr %6, align 4, !tbaa !73
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds nuw i8, ptr %365, i64 %367
  %369 = load i8, ptr %368, align 1, !tbaa !8
  %370 = load i32, ptr %22, align 4, !tbaa !139
  %371 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %370, i32 1), !nosanitize !45
  %372 = extractvalue { i32, i1 } %371, 1, !nosanitize !45
  br i1 %372, label %373, label %374, !prof !46, !nosanitize !45

373:                                              ; preds = %364
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

374:                                              ; preds = %364
  %375 = extractvalue { i32, i1 } %371, 0, !nosanitize !45
  %376 = load ptr, ptr %21, align 8, !tbaa !44
  store i32 %375, ptr %22, align 4, !tbaa !139
  %377 = zext i32 %370 to i64
  %378 = getelementptr inbounds nuw i8, ptr %376, i64 %377
  store i8 0, ptr %378, align 1, !tbaa !8
  %379 = load i32, ptr %22, align 4, !tbaa !139
  %380 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %379, i32 1), !nosanitize !45
  %381 = extractvalue { i32, i1 } %380, 1, !nosanitize !45
  br i1 %381, label %382, label %383, !prof !46, !nosanitize !45

382:                                              ; preds = %374
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

383:                                              ; preds = %374
  %384 = extractvalue { i32, i1 } %380, 0, !nosanitize !45
  %385 = load ptr, ptr %21, align 8, !tbaa !44
  store i32 %384, ptr %22, align 4, !tbaa !139
  %386 = zext i32 %379 to i64
  %387 = getelementptr inbounds nuw i8, ptr %385, i64 %386
  store i8 0, ptr %387, align 1, !tbaa !8
  %388 = load i32, ptr %22, align 4, !tbaa !139
  %389 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %388, i32 1), !nosanitize !45
  %390 = extractvalue { i32, i1 } %389, 1, !nosanitize !45
  br i1 %390, label %391, label %392, !prof !46, !nosanitize !45

391:                                              ; preds = %383
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

392:                                              ; preds = %383
  %393 = extractvalue { i32, i1 } %389, 0, !nosanitize !45
  %394 = load ptr, ptr %21, align 8, !tbaa !44
  store i32 %393, ptr %22, align 4, !tbaa !139
  %395 = zext i32 %388 to i64
  %396 = getelementptr inbounds nuw i8, ptr %394, i64 %395
  store i8 %369, ptr %396, align 1, !tbaa !8
  %397 = zext i8 %369 to i64
  %398 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %397
  %399 = load i16, ptr %398, align 4, !tbaa !8
  %400 = add i16 %399, 1
  store i16 %400, ptr %398, align 4, !tbaa !8
  %401 = load i32, ptr %22, align 4, !tbaa !139
  %402 = load i32, ptr %24, align 8, !tbaa !47
  %403 = icmp eq i32 %401, %402
  %404 = load i32, ptr %3, align 4, !tbaa !75
  %405 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %404, i32 1), !nosanitize !45
  %406 = extractvalue { i32, i1 } %405, 1, !nosanitize !45
  br i1 %406, label %407, label %408, !prof !46, !nosanitize !45

407:                                              ; preds = %392
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

408:                                              ; preds = %392
  %409 = extractvalue { i32, i1 } %405, 0, !nosanitize !45
  store i32 %409, ptr %3, align 4, !tbaa !75
  %410 = load i32, ptr %6, align 4, !tbaa !73
  %411 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %410, i32 1), !nosanitize !45
  %412 = extractvalue { i32, i1 } %411, 1, !nosanitize !45
  br i1 %412, label %413, label %414, !prof !46, !nosanitize !45

413:                                              ; preds = %408
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

414:                                              ; preds = %408
  %415 = extractvalue { i32, i1 } %411, 0, !nosanitize !45
  store i32 %415, ptr %6, align 4, !tbaa !73
  br i1 %403, label %416, label %477

416:                                              ; preds = %414
  %417 = load i64, ptr %9, align 8, !tbaa !74
  %418 = icmp sgt i64 %417, -1
  br i1 %418, label %419, label %423

419:                                              ; preds = %416
  %420 = load ptr, ptr %7, align 8, !tbaa !34
  %421 = and i64 %417, 4294967295
  %422 = getelementptr inbounds nuw i8, ptr %420, i64 %421
  br label %423

423:                                              ; preds = %416, %419
  %424 = phi ptr [ %422, %419 ], [ null, %416 ]
  %425 = zext i32 %415 to i64
  %426 = sub nsw i64 %425, %417
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %424, i64 noundef %426, i32 noundef 0) #12
  %427 = load i32, ptr %6, align 4, !tbaa !73
  %428 = zext i32 %427 to i64
  store i64 %428, ptr %9, align 8, !tbaa !74
  %429 = load ptr, ptr %0, align 8, !tbaa !20
  %430 = getelementptr inbounds nuw i8, ptr %429, i64 56
  %431 = load ptr, ptr %430, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %431) #12
  %432 = getelementptr inbounds nuw i8, ptr %431, i64 40
  %433 = load i64, ptr %432, align 8, !tbaa !57
  %434 = getelementptr inbounds nuw i8, ptr %429, i64 32
  %435 = load i32, ptr %434, align 8, !tbaa !107
  %436 = zext i32 %435 to i64
  %437 = tail call i64 @llvm.umin.i64(i64 %433, i64 %436)
  %438 = trunc nuw i64 %437 to i32
  %439 = icmp eq i64 %437, 0
  br i1 %439, label %472, label %440

440:                                              ; preds = %423
  %441 = getelementptr inbounds nuw i8, ptr %429, i64 24
  %442 = load ptr, ptr %441, align 8, !tbaa !106
  %443 = getelementptr inbounds nuw i8, ptr %431, i64 32
  %444 = load ptr, ptr %443, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %442, ptr align 1 %444, i64 %437, i1 false)
  %445 = load ptr, ptr %441, align 8, !tbaa !106
  %446 = getelementptr inbounds nuw i8, ptr %445, i64 %437
  store ptr %446, ptr %441, align 8, !tbaa !106
  %447 = load ptr, ptr %443, align 8, !tbaa !58
  %448 = getelementptr inbounds nuw i8, ptr %447, i64 %437
  store ptr %448, ptr %443, align 8, !tbaa !58
  %449 = getelementptr inbounds nuw i8, ptr %429, i64 40
  %450 = load i64, ptr %449, align 8, !tbaa !108
  %451 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %450, i64 %437), !nosanitize !45
  %452 = extractvalue { i64, i1 } %451, 1, !nosanitize !45
  br i1 %452, label %453, label %454, !prof !46, !nosanitize !45

453:                                              ; preds = %440
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

454:                                              ; preds = %440
  %455 = extractvalue { i64, i1 } %451, 0, !nosanitize !45
  store i64 %455, ptr %449, align 8, !tbaa !108
  %456 = load i32, ptr %434, align 8, !tbaa !107
  %457 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %456, i32 %438), !nosanitize !45
  %458 = extractvalue { i32, i1 } %457, 1, !nosanitize !45
  br i1 %458, label %459, label %460, !prof !46, !nosanitize !45

459:                                              ; preds = %454
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

460:                                              ; preds = %454
  %461 = extractvalue { i32, i1 } %457, 0, !nosanitize !45
  store i32 %461, ptr %434, align 8, !tbaa !107
  %462 = load i64, ptr %432, align 8, !tbaa !57
  %463 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %462, i64 %437), !nosanitize !45
  %464 = extractvalue { i64, i1 } %463, 1, !nosanitize !45
  br i1 %464, label %465, label %466, !prof !46, !nosanitize !45

465:                                              ; preds = %460
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

466:                                              ; preds = %460
  %467 = extractvalue { i64, i1 } %463, 0, !nosanitize !45
  store i64 %467, ptr %432, align 8, !tbaa !57
  %468 = icmp eq i64 %467, 0
  br i1 %468, label %469, label %472

469:                                              ; preds = %466
  %470 = getelementptr inbounds nuw i8, ptr %431, i64 16
  %471 = load ptr, ptr %470, align 8, !tbaa !40
  store ptr %471, ptr %443, align 8, !tbaa !58
  br label %472

472:                                              ; preds = %423, %466, %469
  %473 = load ptr, ptr %0, align 8, !tbaa !20
  %474 = getelementptr inbounds nuw i8, ptr %473, i64 32
  %475 = load i32, ptr %474, align 8, !tbaa !107
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %609, label %477

477:                                              ; preds = %472, %414
  br label %25

478:                                              ; preds = %362
  store i32 0, ptr %10, align 4, !tbaa !76
  %479 = icmp eq i32 %1, 4
  br i1 %479, label %480, label %543

480:                                              ; preds = %478
  %481 = load i64, ptr %9, align 8, !tbaa !74
  %482 = icmp sgt i64 %481, -1
  br i1 %482, label %483, label %487

483:                                              ; preds = %480
  %484 = load ptr, ptr %7, align 8, !tbaa !34
  %485 = and i64 %481, 4294967295
  %486 = getelementptr inbounds nuw i8, ptr %484, i64 %485
  br label %487

487:                                              ; preds = %480, %483
  %488 = phi ptr [ %486, %483 ], [ null, %480 ]
  %489 = load i32, ptr %6, align 4, !tbaa !73
  %490 = zext i32 %489 to i64
  %491 = sub nsw i64 %490, %481
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %488, i64 noundef %491, i32 noundef 1) #12
  %492 = load i32, ptr %6, align 4, !tbaa !73
  %493 = zext i32 %492 to i64
  store i64 %493, ptr %9, align 8, !tbaa !74
  %494 = load ptr, ptr %0, align 8, !tbaa !20
  %495 = getelementptr inbounds nuw i8, ptr %494, i64 56
  %496 = load ptr, ptr %495, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %496) #12
  %497 = getelementptr inbounds nuw i8, ptr %496, i64 40
  %498 = load i64, ptr %497, align 8, !tbaa !57
  %499 = getelementptr inbounds nuw i8, ptr %494, i64 32
  %500 = load i32, ptr %499, align 8, !tbaa !107
  %501 = zext i32 %500 to i64
  %502 = tail call i64 @llvm.umin.i64(i64 %498, i64 %501)
  %503 = trunc nuw i64 %502 to i32
  %504 = icmp eq i64 %502, 0
  br i1 %504, label %537, label %505

505:                                              ; preds = %487
  %506 = getelementptr inbounds nuw i8, ptr %494, i64 24
  %507 = load ptr, ptr %506, align 8, !tbaa !106
  %508 = getelementptr inbounds nuw i8, ptr %496, i64 32
  %509 = load ptr, ptr %508, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %507, ptr align 1 %509, i64 %502, i1 false)
  %510 = load ptr, ptr %506, align 8, !tbaa !106
  %511 = getelementptr inbounds nuw i8, ptr %510, i64 %502
  store ptr %511, ptr %506, align 8, !tbaa !106
  %512 = load ptr, ptr %508, align 8, !tbaa !58
  %513 = getelementptr inbounds nuw i8, ptr %512, i64 %502
  store ptr %513, ptr %508, align 8, !tbaa !58
  %514 = getelementptr inbounds nuw i8, ptr %494, i64 40
  %515 = load i64, ptr %514, align 8, !tbaa !108
  %516 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %515, i64 %502), !nosanitize !45
  %517 = extractvalue { i64, i1 } %516, 1, !nosanitize !45
  br i1 %517, label %518, label %519, !prof !46, !nosanitize !45

518:                                              ; preds = %505
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

519:                                              ; preds = %505
  %520 = extractvalue { i64, i1 } %516, 0, !nosanitize !45
  store i64 %520, ptr %514, align 8, !tbaa !108
  %521 = load i32, ptr %499, align 8, !tbaa !107
  %522 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %521, i32 %503), !nosanitize !45
  %523 = extractvalue { i32, i1 } %522, 1, !nosanitize !45
  br i1 %523, label %524, label %525, !prof !46, !nosanitize !45

524:                                              ; preds = %519
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

525:                                              ; preds = %519
  %526 = extractvalue { i32, i1 } %522, 0, !nosanitize !45
  store i32 %526, ptr %499, align 8, !tbaa !107
  %527 = load i64, ptr %497, align 8, !tbaa !57
  %528 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %527, i64 %502), !nosanitize !45
  %529 = extractvalue { i64, i1 } %528, 1, !nosanitize !45
  br i1 %529, label %530, label %531, !prof !46, !nosanitize !45

530:                                              ; preds = %525
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

531:                                              ; preds = %525
  %532 = extractvalue { i64, i1 } %528, 0, !nosanitize !45
  store i64 %532, ptr %497, align 8, !tbaa !57
  %533 = icmp eq i64 %532, 0
  br i1 %533, label %534, label %537

534:                                              ; preds = %531
  %535 = getelementptr inbounds nuw i8, ptr %496, i64 16
  %536 = load ptr, ptr %535, align 8, !tbaa !40
  store ptr %536, ptr %508, align 8, !tbaa !58
  br label %537

537:                                              ; preds = %487, %531, %534
  %538 = load ptr, ptr %0, align 8, !tbaa !20
  %539 = getelementptr inbounds nuw i8, ptr %538, i64 32
  %540 = load i32, ptr %539, align 8, !tbaa !107
  %541 = icmp eq i32 %540, 0
  %542 = select i1 %541, i32 2, i32 3
  br label %609

543:                                              ; preds = %478
  %544 = load i32, ptr %22, align 4, !tbaa !139
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %608, label %546

546:                                              ; preds = %543
  %547 = load i64, ptr %9, align 8, !tbaa !74
  %548 = icmp sgt i64 %547, -1
  br i1 %548, label %549, label %553

549:                                              ; preds = %546
  %550 = load ptr, ptr %7, align 8, !tbaa !34
  %551 = and i64 %547, 4294967295
  %552 = getelementptr inbounds nuw i8, ptr %550, i64 %551
  br label %553

553:                                              ; preds = %546, %549
  %554 = phi ptr [ %552, %549 ], [ null, %546 ]
  %555 = load i32, ptr %6, align 4, !tbaa !73
  %556 = zext i32 %555 to i64
  %557 = sub nsw i64 %556, %547
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %554, i64 noundef %557, i32 noundef 0) #12
  %558 = load i32, ptr %6, align 4, !tbaa !73
  %559 = zext i32 %558 to i64
  store i64 %559, ptr %9, align 8, !tbaa !74
  %560 = load ptr, ptr %0, align 8, !tbaa !20
  %561 = getelementptr inbounds nuw i8, ptr %560, i64 56
  %562 = load ptr, ptr %561, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %562) #12
  %563 = getelementptr inbounds nuw i8, ptr %562, i64 40
  %564 = load i64, ptr %563, align 8, !tbaa !57
  %565 = getelementptr inbounds nuw i8, ptr %560, i64 32
  %566 = load i32, ptr %565, align 8, !tbaa !107
  %567 = zext i32 %566 to i64
  %568 = tail call i64 @llvm.umin.i64(i64 %564, i64 %567)
  %569 = trunc nuw i64 %568 to i32
  %570 = icmp eq i64 %568, 0
  br i1 %570, label %603, label %571

571:                                              ; preds = %553
  %572 = getelementptr inbounds nuw i8, ptr %560, i64 24
  %573 = load ptr, ptr %572, align 8, !tbaa !106
  %574 = getelementptr inbounds nuw i8, ptr %562, i64 32
  %575 = load ptr, ptr %574, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %573, ptr align 1 %575, i64 %568, i1 false)
  %576 = load ptr, ptr %572, align 8, !tbaa !106
  %577 = getelementptr inbounds nuw i8, ptr %576, i64 %568
  store ptr %577, ptr %572, align 8, !tbaa !106
  %578 = load ptr, ptr %574, align 8, !tbaa !58
  %579 = getelementptr inbounds nuw i8, ptr %578, i64 %568
  store ptr %579, ptr %574, align 8, !tbaa !58
  %580 = getelementptr inbounds nuw i8, ptr %560, i64 40
  %581 = load i64, ptr %580, align 8, !tbaa !108
  %582 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %581, i64 %568), !nosanitize !45
  %583 = extractvalue { i64, i1 } %582, 1, !nosanitize !45
  br i1 %583, label %584, label %585, !prof !46, !nosanitize !45

584:                                              ; preds = %571
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

585:                                              ; preds = %571
  %586 = extractvalue { i64, i1 } %582, 0, !nosanitize !45
  store i64 %586, ptr %580, align 8, !tbaa !108
  %587 = load i32, ptr %565, align 8, !tbaa !107
  %588 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %587, i32 %569), !nosanitize !45
  %589 = extractvalue { i32, i1 } %588, 1, !nosanitize !45
  br i1 %589, label %590, label %591, !prof !46, !nosanitize !45

590:                                              ; preds = %585
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

591:                                              ; preds = %585
  %592 = extractvalue { i32, i1 } %588, 0, !nosanitize !45
  store i32 %592, ptr %565, align 8, !tbaa !107
  %593 = load i64, ptr %563, align 8, !tbaa !57
  %594 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %593, i64 %568), !nosanitize !45
  %595 = extractvalue { i64, i1 } %594, 1, !nosanitize !45
  br i1 %595, label %596, label %597, !prof !46, !nosanitize !45

596:                                              ; preds = %591
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

597:                                              ; preds = %591
  %598 = extractvalue { i64, i1 } %594, 0, !nosanitize !45
  store i64 %598, ptr %563, align 8, !tbaa !57
  %599 = icmp eq i64 %598, 0
  br i1 %599, label %600, label %603

600:                                              ; preds = %597
  %601 = getelementptr inbounds nuw i8, ptr %562, i64 16
  %602 = load ptr, ptr %601, align 8, !tbaa !40
  store ptr %602, ptr %574, align 8, !tbaa !58
  br label %603

603:                                              ; preds = %553, %597, %600
  %604 = load ptr, ptr %0, align 8, !tbaa !20
  %605 = getelementptr inbounds nuw i8, ptr %604, i64 32
  %606 = load i32, ptr %605, align 8, !tbaa !107
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %609, label %608

608:                                              ; preds = %603, %543
  br label %609

609:                                              ; preds = %472, %603, %537, %362, %608
  %610 = phi i32 [ 0, %362 ], [ %542, %537 ], [ 0, %603 ], [ 1, %608 ], [ 0, %472 ]
  ret i32 %610
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @deflate_rle(ptr noundef %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 5960
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %21 = icmp eq i32 %1, 0
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %26 = getelementptr i8, ptr %0, i64 1240
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  br label %28

28:                                               ; preds = %519, %2
  %29 = load i32, ptr %3, align 4, !tbaa !75
  %30 = icmp ult i32 %29, 259
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  store i32 0, ptr %4, align 8, !tbaa !78
  %32 = load i32, ptr %7, align 4, !tbaa !73
  br label %373

33:                                               ; preds = %28
  %34 = load i32, ptr %5, align 8, !tbaa !32
  %35 = zext i32 %34 to i64
  br label %36

36:                                               ; preds = %315, %33
  %37 = phi i32 [ %242, %315 ], [ %29, %33 ]
  %38 = load i64, ptr %6, align 8, !tbaa !61
  %39 = zext nneg i32 %37 to i64
  %40 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %38, i64 %39), !nosanitize !45
  %41 = extractvalue { i64, i1 } %40, 1, !nosanitize !45
  br i1 %41, label %42, label %43, !prof !46, !nosanitize !45

42:                                               ; preds = %36
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

43:                                               ; preds = %36
  %44 = extractvalue { i64, i1 } %40, 0, !nosanitize !45
  %45 = load i32, ptr %7, align 4, !tbaa !73
  %46 = zext i32 %45 to i64
  %47 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %44, i64 %46), !nosanitize !45
  %48 = extractvalue { i64, i1 } %47, 1, !nosanitize !45
  br i1 %48, label %49, label %50, !prof !46, !nosanitize !45

49:                                               ; preds = %43
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

50:                                               ; preds = %43
  %51 = extractvalue { i64, i1 } %47, 0, !nosanitize !45
  %52 = trunc i64 %51 to i32
  %53 = load i32, ptr %5, align 8, !tbaa !32
  %54 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %53, i32 262), !nosanitize !45
  %55 = extractvalue { i32, i1 } %54, 1, !nosanitize !45
  br i1 %55, label %56, label %57, !prof !46, !nosanitize !45

56:                                               ; preds = %50
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

57:                                               ; preds = %50
  %58 = extractvalue { i32, i1 } %54, 0, !nosanitize !45
  %59 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %34, i32 %58), !nosanitize !45
  %60 = extractvalue { i32, i1 } %59, 1, !nosanitize !45
  br i1 %60, label %61, label %62, !prof !46, !nosanitize !45

61:                                               ; preds = %57
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

62:                                               ; preds = %57
  %63 = extractvalue { i32, i1 } %59, 0, !nosanitize !45
  %64 = icmp ult i32 %45, %63
  br i1 %64, label %189, label %65

65:                                               ; preds = %62
  %66 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %34, i32 %52), !nosanitize !45
  %67 = extractvalue { i32, i1 } %66, 1, !nosanitize !45
  br i1 %67, label %68, label %69, !prof !46, !nosanitize !45

68:                                               ; preds = %65
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

69:                                               ; preds = %65
  %70 = extractvalue { i32, i1 } %66, 0, !nosanitize !45
  %71 = load ptr, ptr %8, align 8, !tbaa !34
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 %35
  %73 = zext i32 %70 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %71, ptr align 1 %72, i64 %73, i1 false)
  %74 = load i32, ptr %9, align 8, !tbaa !83
  %75 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %74, i32 %34), !nosanitize !45
  %76 = extractvalue { i32, i1 } %75, 1, !nosanitize !45
  br i1 %76, label %77, label %78, !prof !46, !nosanitize !45

77:                                               ; preds = %69
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

78:                                               ; preds = %69
  %79 = extractvalue { i32, i1 } %75, 0, !nosanitize !45
  store i32 %79, ptr %9, align 8, !tbaa !83
  %80 = load i32, ptr %7, align 4, !tbaa !73
  %81 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %80, i32 %34), !nosanitize !45
  %82 = extractvalue { i32, i1 } %81, 1, !nosanitize !45
  br i1 %82, label %83, label %84, !prof !46, !nosanitize !45

83:                                               ; preds = %78
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

84:                                               ; preds = %78
  %85 = extractvalue { i32, i1 } %81, 0, !nosanitize !45
  store i32 %85, ptr %7, align 4, !tbaa !73
  %86 = load i64, ptr %10, align 8, !tbaa !74
  %87 = sub nsw i64 %86, %35
  store i64 %87, ptr %10, align 8, !tbaa !74
  %88 = load i32, ptr %11, align 4, !tbaa !76
  %89 = icmp ugt i32 %88, %85
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i32 %85, ptr %11, align 4, !tbaa !76
  br label %91

91:                                               ; preds = %90, %84
  %92 = load i32, ptr %5, align 8, !tbaa !32
  %93 = load i32, ptr %12, align 4, !tbaa !36
  %94 = load ptr, ptr %13, align 8, !tbaa !37
  %95 = zext i32 %93 to i64
  %96 = getelementptr inbounds nuw [2 x i8], ptr %94, i64 %95
  %97 = icmp eq i32 %93, 0
  br i1 %97, label %124, label %98, !prof !46, !nosanitize !45

98:                                               ; preds = %91
  %99 = icmp ult i32 %93, 8
  br i1 %99, label %121, label %100

100:                                              ; preds = %98
  %101 = and i64 %95, 4294967288
  %102 = mul nsw i64 %101, -2
  %103 = getelementptr i8, ptr %96, i64 %102
  %104 = trunc nuw i64 %101 to i32
  %105 = sub i32 %93, %104
  %106 = insertelement <8 x i32> poison, i32 %92, i64 0
  %107 = shufflevector <8 x i32> %106, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %108

108:                                              ; preds = %108, %100
  %109 = phi i64 [ 0, %100 ], [ %117, %108 ]
  %110 = mul i64 %109, -2
  %111 = getelementptr i8, ptr %96, i64 %110
  %112 = getelementptr inbounds i8, ptr %111, i64 -16
  %113 = load <8 x i16>, ptr %112, align 2, !tbaa !62
  %114 = zext <8 x i16> %113 to <8 x i32>
  %115 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %114, <8 x i32> %107)
  %116 = trunc nuw <8 x i32> %115 to <8 x i16>
  store <8 x i16> %116, ptr %112, align 2, !tbaa !62
  %117 = add nuw i64 %109, 8
  %118 = icmp eq i64 %117, %101
  br i1 %118, label %119, label %108, !llvm.loop !140

119:                                              ; preds = %108
  %120 = icmp eq i64 %101, %95
  br i1 %120, label %140, label %121

121:                                              ; preds = %98, %119
  %122 = phi ptr [ %96, %98 ], [ %103, %119 ]
  %123 = phi i32 [ %93, %98 ], [ %105, %119 ]
  br label %130

124:                                              ; preds = %91
  %125 = getelementptr inbounds i8, ptr %96, i64 -2
  %126 = load i16, ptr %125, align 2, !tbaa !62
  %127 = zext i16 %126 to i32
  %128 = tail call i32 @llvm.usub.sat.i32(i32 %127, i32 %92)
  %129 = trunc nuw i32 %128 to i16
  store i16 %129, ptr %125, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

130:                                              ; preds = %121, %130
  %131 = phi ptr [ %133, %130 ], [ %122, %121 ]
  %132 = phi i32 [ %138, %130 ], [ %123, %121 ]
  %133 = getelementptr inbounds i8, ptr %131, i64 -2
  %134 = load i16, ptr %133, align 2, !tbaa !62
  %135 = zext i16 %134 to i32
  %136 = tail call i32 @llvm.usub.sat.i32(i32 %135, i32 %92)
  %137 = trunc nuw i32 %136 to i16
  store i16 %137, ptr %133, align 2, !tbaa !62
  %138 = add i32 %132, -1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %130, !llvm.loop !141

140:                                              ; preds = %130, %119
  %141 = icmp eq i32 %92, 0
  br i1 %141, label %142, label %143, !prof !46, !nosanitize !45

142:                                              ; preds = %140
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

143:                                              ; preds = %140
  %144 = load ptr, ptr %14, align 8, !tbaa !35
  %145 = zext i32 %92 to i64
  %146 = getelementptr inbounds nuw [2 x i8], ptr %144, i64 %145
  %147 = icmp ult i32 %92, 8
  br i1 %147, label %169, label %148

148:                                              ; preds = %143
  %149 = and i64 %145, 4294967288
  %150 = mul nsw i64 %149, -2
  %151 = getelementptr i8, ptr %146, i64 %150
  %152 = trunc nuw i64 %149 to i32
  %153 = sub i32 %92, %152
  %154 = insertelement <8 x i32> poison, i32 %92, i64 0
  %155 = shufflevector <8 x i32> %154, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %156

156:                                              ; preds = %156, %148
  %157 = phi i64 [ 0, %148 ], [ %165, %156 ]
  %158 = mul i64 %157, -2
  %159 = getelementptr i8, ptr %146, i64 %158
  %160 = getelementptr inbounds i8, ptr %159, i64 -16
  %161 = load <8 x i16>, ptr %160, align 2, !tbaa !62
  %162 = zext <8 x i16> %161 to <8 x i32>
  %163 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %162, <8 x i32> %155)
  %164 = trunc nuw <8 x i32> %163 to <8 x i16>
  store <8 x i16> %164, ptr %160, align 2, !tbaa !62
  %165 = add nuw i64 %157, 8
  %166 = icmp eq i64 %165, %149
  br i1 %166, label %167, label %156, !llvm.loop !142

167:                                              ; preds = %156
  %168 = icmp eq i64 %149, %145
  br i1 %168, label %182, label %169

169:                                              ; preds = %143, %167
  %170 = phi ptr [ %146, %143 ], [ %151, %167 ]
  %171 = phi i32 [ %92, %143 ], [ %153, %167 ]
  br label %172

172:                                              ; preds = %169, %172
  %173 = phi ptr [ %175, %172 ], [ %170, %169 ]
  %174 = phi i32 [ %180, %172 ], [ %171, %169 ]
  %175 = getelementptr inbounds i8, ptr %173, i64 -2
  %176 = load i16, ptr %175, align 2, !tbaa !62
  %177 = zext i16 %176 to i32
  %178 = tail call i32 @llvm.usub.sat.i32(i32 %177, i32 %92)
  %179 = trunc nuw i32 %178 to i16
  store i16 %179, ptr %175, align 2, !tbaa !62
  %180 = add i32 %174, -1
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %172, !llvm.loop !143

182:                                              ; preds = %172, %167
  store i32 1, ptr %15, align 8, !tbaa !63
  %183 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %52, i32 %34), !nosanitize !45
  %184 = extractvalue { i32, i1 } %183, 1, !nosanitize !45
  br i1 %184, label %185, label %186, !prof !46, !nosanitize !45

185:                                              ; preds = %182
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

186:                                              ; preds = %182
  %187 = extractvalue { i32, i1 } %183, 0, !nosanitize !45
  %188 = load i32, ptr %3, align 4, !tbaa !75
  br label %189

189:                                              ; preds = %186, %62
  %190 = phi i32 [ %188, %186 ], [ %37, %62 ]
  %191 = phi i32 [ %85, %186 ], [ %45, %62 ]
  %192 = phi i32 [ %187, %186 ], [ %52, %62 ]
  %193 = load ptr, ptr %0, align 8, !tbaa !20
  %194 = getelementptr inbounds nuw i8, ptr %193, i64 8
  %195 = load i32, ptr %194, align 8, !tbaa !81
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %320, label %197

197:                                              ; preds = %189
  %198 = load ptr, ptr %8, align 8, !tbaa !34
  %199 = zext i32 %191 to i64
  %200 = getelementptr inbounds nuw i8, ptr %198, i64 %199
  %201 = zext i32 %190 to i64
  %202 = getelementptr inbounds nuw i8, ptr %200, i64 %201
  %203 = tail call i32 @llvm.umin.i32(i32 %195, i32 %192)
  %204 = icmp eq i32 %192, 0
  br i1 %204, label %236, label %205

205:                                              ; preds = %197
  %206 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %195, i32 %203), !nosanitize !45
  %207 = extractvalue { i32, i1 } %206, 1, !nosanitize !45
  br i1 %207, label %208, label %209, !prof !46, !nosanitize !45

208:                                              ; preds = %205
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

209:                                              ; preds = %205
  %210 = extractvalue { i32, i1 } %206, 0, !nosanitize !45
  store i32 %210, ptr %194, align 8, !tbaa !81
  %211 = load ptr, ptr %193, align 8, !tbaa !82
  %212 = zext i32 %203 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %202, ptr align 1 %211, i64 %212, i1 false)
  %213 = getelementptr inbounds nuw i8, ptr %193, i64 56
  %214 = load ptr, ptr %213, align 8, !tbaa !19
  %215 = getelementptr inbounds nuw i8, ptr %214, i64 48
  %216 = load i32, ptr %215, align 8, !tbaa !30
  switch i32 %216, label %225 [
    i32 1, label %217
    i32 2, label %221
  ]

217:                                              ; preds = %209
  %218 = getelementptr inbounds nuw i8, ptr %193, i64 96
  %219 = load i64, ptr %218, align 8, !tbaa !59
  %220 = tail call i64 @adler32(i64 noundef %219, ptr noundef %202, i32 noundef %203) #12
  store i64 %220, ptr %218, align 8, !tbaa !59
  br label %225

221:                                              ; preds = %209
  %222 = getelementptr inbounds nuw i8, ptr %193, i64 96
  %223 = load i64, ptr %222, align 8, !tbaa !59
  %224 = tail call i64 @crc32(i64 noundef %223, ptr noundef %202, i32 noundef %203) #12
  store i64 %224, ptr %222, align 8, !tbaa !59
  br label %225

225:                                              ; preds = %221, %217, %209
  %226 = load ptr, ptr %193, align 8, !tbaa !82
  %227 = getelementptr inbounds nuw i8, ptr %226, i64 %212
  store ptr %227, ptr %193, align 8, !tbaa !82
  %228 = getelementptr inbounds nuw i8, ptr %193, i64 16
  %229 = load i64, ptr %228, align 8, !tbaa !55
  %230 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %229, i64 %212), !nosanitize !45
  %231 = extractvalue { i64, i1 } %230, 1, !nosanitize !45
  br i1 %231, label %232, label %233, !prof !46, !nosanitize !45

232:                                              ; preds = %225
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

233:                                              ; preds = %225
  %234 = extractvalue { i64, i1 } %230, 0, !nosanitize !45
  store i64 %234, ptr %228, align 8, !tbaa !55
  %235 = load i32, ptr %3, align 4, !tbaa !75
  br label %236

236:                                              ; preds = %233, %197
  %237 = phi i32 [ %190, %197 ], [ %235, %233 ]
  %238 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %237, i32 %203), !nosanitize !45
  %239 = extractvalue { i32, i1 } %238, 1, !nosanitize !45
  br i1 %239, label %240, label %241, !prof !46, !nosanitize !45

240:                                              ; preds = %236
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

241:                                              ; preds = %236
  %242 = extractvalue { i32, i1 } %238, 0, !nosanitize !45
  store i32 %242, ptr %3, align 4, !tbaa !75
  %243 = load i32, ptr %11, align 4, !tbaa !76
  %244 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %242, i32 %243), !nosanitize !45
  %245 = extractvalue { i32, i1 } %244, 1, !nosanitize !45
  br i1 %245, label %246, label %247, !prof !46, !nosanitize !45

246:                                              ; preds = %241
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

247:                                              ; preds = %241
  %248 = extractvalue { i32, i1 } %244, 0, !nosanitize !45
  %249 = icmp ugt i32 %248, 2
  br i1 %249, label %250, label %313

250:                                              ; preds = %247
  %251 = load i32, ptr %7, align 4, !tbaa !73
  %252 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %251, i32 %243), !nosanitize !45
  %253 = extractvalue { i32, i1 } %252, 0, !nosanitize !45
  %254 = extractvalue { i32, i1 } %252, 1, !nosanitize !45
  br i1 %254, label %255, label %256, !prof !46, !nosanitize !45

255:                                              ; preds = %250
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

256:                                              ; preds = %250
  %257 = load ptr, ptr %8, align 8, !tbaa !34
  %258 = zext i32 %253 to i64
  %259 = getelementptr inbounds nuw i8, ptr %257, i64 %258
  %260 = load i8, ptr %259, align 1, !tbaa !8
  %261 = zext i8 %260 to i32
  store i32 %261, ptr %16, align 8, !tbaa !80
  %262 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %253, i32 1), !nosanitize !45
  %263 = extractvalue { i32, i1 } %262, 1, !nosanitize !45
  br i1 %263, label %264, label %265, !prof !46, !nosanitize !45

264:                                              ; preds = %256
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

265:                                              ; preds = %256
  %266 = extractvalue { i32, i1 } %262, 0, !nosanitize !45
  %267 = load i32, ptr %17, align 8, !tbaa !53
  %268 = shl i32 %261, %267
  %269 = zext i32 %266 to i64
  %270 = getelementptr inbounds nuw i8, ptr %257, i64 %269
  %271 = load i8, ptr %270, align 1, !tbaa !8
  %272 = zext i8 %271 to i32
  %273 = xor i32 %268, %272
  %274 = load i32, ptr %18, align 4, !tbaa !52
  %275 = and i32 %273, %274
  store i32 %275, ptr %16, align 8, !tbaa !80
  br label %276

276:                                              ; preds = %309, %265
  %277 = phi i32 [ %275, %265 ], [ %294, %309 ]
  %278 = phi i32 [ %243, %265 ], [ %305, %309 ]
  %279 = phi i32 [ %253, %265 ], [ %310, %309 ]
  %280 = icmp eq i32 %278, 0
  br i1 %280, label %313, label %281

281:                                              ; preds = %276
  %282 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %279, i32 3), !nosanitize !45
  %283 = extractvalue { i32, i1 } %282, 1, !nosanitize !45
  br i1 %283, label %284, label %285, !prof !46, !nosanitize !45

284:                                              ; preds = %281
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

285:                                              ; preds = %281
  %286 = shl i32 %277, %267
  %287 = extractvalue { i32, i1 } %282, 0, !nosanitize !45
  %288 = add i32 %287, -1
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds nuw i8, ptr %257, i64 %289
  %291 = load i8, ptr %290, align 1, !tbaa !8
  %292 = zext i8 %291 to i32
  %293 = xor i32 %286, %292
  %294 = and i32 %293, %274
  store i32 %294, ptr %16, align 8, !tbaa !80
  %295 = load ptr, ptr %13, align 8, !tbaa !37
  %296 = zext i32 %294 to i64
  %297 = getelementptr inbounds nuw [2 x i8], ptr %295, i64 %296
  %298 = load i16, ptr %297, align 2, !tbaa !62
  %299 = load ptr, ptr %14, align 8, !tbaa !35
  %300 = load i32, ptr %19, align 8, !tbaa !33
  %301 = and i32 %300, %279
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds nuw [2 x i8], ptr %299, i64 %302
  store i16 %298, ptr %303, align 2, !tbaa !62
  %304 = trunc i32 %279 to i16
  store i16 %304, ptr %297, align 2, !tbaa !62
  %305 = add i32 %278, -1
  store i32 %305, ptr %11, align 4, !tbaa !76
  %306 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %242, i32 %305), !nosanitize !45
  %307 = extractvalue { i32, i1 } %306, 1, !nosanitize !45
  br i1 %307, label %308, label %309, !prof !46, !nosanitize !45

308:                                              ; preds = %285
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

309:                                              ; preds = %285
  %310 = add nuw i32 %279, 1
  %311 = extractvalue { i32, i1 } %306, 0, !nosanitize !45
  %312 = icmp ult i32 %311, 3
  br i1 %312, label %313, label %276, !llvm.loop !91

313:                                              ; preds = %309, %276, %247
  %314 = icmp ult i32 %242, 262
  br i1 %314, label %315, label %320

315:                                              ; preds = %313
  %316 = load ptr, ptr %0, align 8, !tbaa !20
  %317 = getelementptr inbounds nuw i8, ptr %316, i64 8
  %318 = load i32, ptr %317, align 8, !tbaa !81
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %36, !llvm.loop !92

320:                                              ; preds = %315, %313, %189
  %321 = phi i32 [ %242, %315 ], [ %242, %313 ], [ %190, %189 ]
  %322 = load i64, ptr %20, align 8, !tbaa !38
  %323 = load i64, ptr %6, align 8, !tbaa !61
  %324 = icmp ult i64 %322, %323
  br i1 %324, label %325, label %364

325:                                              ; preds = %320
  %326 = load i32, ptr %7, align 4, !tbaa !73
  %327 = zext i32 %326 to i64
  %328 = zext i32 %321 to i64
  %329 = add nuw nsw i64 %328, %327
  %330 = icmp ult i64 %322, %329
  br i1 %330, label %331, label %341

331:                                              ; preds = %325
  %332 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %323, i64 %329), !nosanitize !45
  %333 = extractvalue { i64, i1 } %332, 1, !nosanitize !45
  br i1 %333, label %334, label %335, !prof !46, !nosanitize !45

334:                                              ; preds = %331
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

335:                                              ; preds = %331
  %336 = extractvalue { i64, i1 } %332, 0, !nosanitize !45
  %337 = tail call i64 @llvm.umin.i64(i64 %336, i64 258)
  %338 = load ptr, ptr %8, align 8, !tbaa !34
  %339 = getelementptr inbounds nuw i8, ptr %338, i64 %329
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %339, i8 0, i64 %337, i1 false)
  %340 = add nuw nsw i64 %337, %329
  br label %361

341:                                              ; preds = %325
  %342 = add nuw nsw i64 %329, 258
  %343 = icmp ult i64 %322, %342
  br i1 %343, label %344, label %364

344:                                              ; preds = %341
  %345 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %323, i64 %322), !nosanitize !45
  %346 = extractvalue { i64, i1 } %345, 1, !nosanitize !45
  br i1 %346, label %347, label %348, !prof !46, !nosanitize !45

347:                                              ; preds = %344
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

348:                                              ; preds = %344
  %349 = sub nuw nsw i64 %342, %322
  %350 = extractvalue { i64, i1 } %345, 0, !nosanitize !45
  %351 = tail call i64 @llvm.umin.i64(i64 %349, i64 %350)
  %352 = load ptr, ptr %8, align 8, !tbaa !34
  %353 = getelementptr inbounds nuw i8, ptr %352, i64 %322
  %354 = and i64 %351, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %353, i8 0, i64 %354, i1 false)
  %355 = load i64, ptr %20, align 8, !tbaa !38
  %356 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %355, i64 %351), !nosanitize !45
  %357 = extractvalue { i64, i1 } %356, 1, !nosanitize !45
  br i1 %357, label %358, label %359, !prof !46, !nosanitize !45

358:                                              ; preds = %348
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

359:                                              ; preds = %348
  %360 = extractvalue { i64, i1 } %356, 0, !nosanitize !45
  br label %361

361:                                              ; preds = %359, %335
  %362 = phi i64 [ %340, %335 ], [ %360, %359 ]
  store i64 %362, ptr %20, align 8, !tbaa !38
  %363 = load i32, ptr %3, align 4, !tbaa !75
  br label %364

364:                                              ; preds = %320, %341, %361
  %365 = phi i32 [ %321, %320 ], [ %321, %341 ], [ %363, %361 ]
  %366 = icmp ult i32 %365, 259
  %367 = and i1 %21, %366
  br i1 %367, label %768, label %368

368:                                              ; preds = %364
  %369 = icmp eq i32 %365, 0
  br i1 %369, label %637, label %370

370:                                              ; preds = %368
  store i32 0, ptr %4, align 8, !tbaa !78
  %371 = icmp ugt i32 %365, 2
  %372 = load i32, ptr %7, align 4, !tbaa !73
  br i1 %371, label %373, label %520

373:                                              ; preds = %31, %370
  %374 = phi i32 [ %32, %31 ], [ %372, %370 ]
  %375 = phi i32 [ %29, %31 ], [ %365, %370 ]
  %376 = icmp eq i32 %374, 0
  br i1 %376, label %520, label %377

377:                                              ; preds = %373
  %378 = load ptr, ptr %8, align 8, !tbaa !34
  %379 = zext i32 %374 to i64
  %380 = getelementptr inbounds nuw i8, ptr %378, i64 %379
  %381 = getelementptr inbounds i8, ptr %380, i64 -1
  %382 = load i8, ptr %381, align 1, !tbaa !8
  %383 = load i8, ptr %380, align 1, !tbaa !8
  %384 = icmp eq i8 %382, %383
  br i1 %384, label %385, label %520

385:                                              ; preds = %377
  %386 = getelementptr inbounds nuw i8, ptr %380, i64 1
  %387 = load i8, ptr %386, align 1, !tbaa !8
  %388 = icmp eq i8 %382, %387
  br i1 %388, label %389, label %520

389:                                              ; preds = %385
  %390 = getelementptr inbounds nuw i8, ptr %380, i64 2
  %391 = load i8, ptr %390, align 1, !tbaa !8
  %392 = icmp eq i8 %382, %391
  br i1 %392, label %393, label %520

393:                                              ; preds = %389
  %394 = getelementptr inbounds nuw i8, ptr %380, i64 258
  br label %395

395:                                              ; preds = %425, %393
  %396 = phi i64 [ 2, %393 ], [ %426, %425 ]
  %397 = getelementptr inbounds nuw i8, ptr %380, i64 %396
  %398 = getelementptr inbounds nuw i8, ptr %397, i64 1
  %399 = load i8, ptr %398, align 1, !tbaa !8
  %400 = icmp eq i8 %382, %399
  br i1 %400, label %401, label %432

401:                                              ; preds = %395
  %402 = getelementptr inbounds nuw i8, ptr %397, i64 2
  %403 = load i8, ptr %402, align 1, !tbaa !8
  %404 = icmp eq i8 %382, %403
  br i1 %404, label %405, label %434

405:                                              ; preds = %401
  %406 = getelementptr inbounds nuw i8, ptr %397, i64 3
  %407 = load i8, ptr %406, align 1, !tbaa !8
  %408 = icmp eq i8 %382, %407
  br i1 %408, label %409, label %436

409:                                              ; preds = %405
  %410 = getelementptr inbounds nuw i8, ptr %397, i64 4
  %411 = load i8, ptr %410, align 1, !tbaa !8
  %412 = icmp eq i8 %382, %411
  br i1 %412, label %413, label %438

413:                                              ; preds = %409
  %414 = getelementptr inbounds nuw i8, ptr %397, i64 5
  %415 = load i8, ptr %414, align 1, !tbaa !8
  %416 = icmp eq i8 %382, %415
  br i1 %416, label %417, label %440

417:                                              ; preds = %413
  %418 = getelementptr inbounds nuw i8, ptr %397, i64 6
  %419 = load i8, ptr %418, align 1, !tbaa !8
  %420 = icmp eq i8 %382, %419
  br i1 %420, label %421, label %442

421:                                              ; preds = %417
  %422 = getelementptr inbounds nuw i8, ptr %397, i64 7
  %423 = load i8, ptr %422, align 1, !tbaa !8
  %424 = icmp eq i8 %382, %423
  br i1 %424, label %425, label %444

425:                                              ; preds = %421
  %426 = add nuw nsw i64 %396, 8
  %427 = getelementptr inbounds nuw i8, ptr %380, i64 %426
  %428 = load i8, ptr %427, align 1, !tbaa !8
  %429 = icmp eq i8 %382, %428
  %430 = icmp samesign ult i64 %396, 250
  %431 = select i1 %429, i1 %430, i1 false
  br i1 %431, label %395, label %446, !llvm.loop !144

432:                                              ; preds = %395
  %433 = getelementptr inbounds nuw i8, ptr %397, i64 1
  br label %448

434:                                              ; preds = %401
  %435 = getelementptr inbounds nuw i8, ptr %397, i64 2
  br label %448

436:                                              ; preds = %405
  %437 = getelementptr inbounds nuw i8, ptr %397, i64 3
  br label %448

438:                                              ; preds = %409
  %439 = getelementptr inbounds nuw i8, ptr %397, i64 4
  br label %448

440:                                              ; preds = %413
  %441 = getelementptr inbounds nuw i8, ptr %397, i64 5
  br label %448

442:                                              ; preds = %417
  %443 = getelementptr inbounds nuw i8, ptr %397, i64 6
  br label %448

444:                                              ; preds = %421
  %445 = getelementptr inbounds nuw i8, ptr %397, i64 7
  br label %448

446:                                              ; preds = %425
  %447 = getelementptr inbounds nuw i8, ptr %380, i64 %426
  br label %448

448:                                              ; preds = %446, %444, %442, %440, %438, %436, %434, %432
  %449 = phi ptr [ %435, %434 ], [ %437, %436 ], [ %433, %432 ], [ %445, %444 ], [ %443, %442 ], [ %441, %440 ], [ %439, %438 ], [ %447, %446 ]
  %450 = ptrtoint ptr %394 to i64
  %451 = ptrtoint ptr %449 to i64
  %452 = sub i64 %450, %451
  %453 = trunc i64 %452 to i32
  %454 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 258, i32 %453), !nosanitize !45
  %455 = extractvalue { i32, i1 } %454, 1, !nosanitize !45
  br i1 %455, label %456, label %457, !prof !46, !nosanitize !45

456:                                              ; preds = %448
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

457:                                              ; preds = %448
  %458 = extractvalue { i32, i1 } %454, 0, !nosanitize !45
  %459 = tail call i32 @llvm.umin.i32(i32 %458, i32 %375)
  store i32 %459, ptr %4, align 8
  %460 = icmp ugt i32 %459, 2
  %461 = load i32, ptr %23, align 4, !tbaa !139
  br i1 %460, label %462, label %523

462:                                              ; preds = %457
  %463 = trunc i32 %459 to i8
  %464 = add i8 %463, -3
  %465 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %461, i32 1), !nosanitize !45
  %466 = extractvalue { i32, i1 } %465, 1, !nosanitize !45
  br i1 %466, label %467, label %468, !prof !46, !nosanitize !45

467:                                              ; preds = %462
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

468:                                              ; preds = %462
  %469 = extractvalue { i32, i1 } %465, 0, !nosanitize !45
  %470 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %469, ptr %23, align 4, !tbaa !139
  %471 = zext i32 %461 to i64
  %472 = getelementptr inbounds nuw i8, ptr %470, i64 %471
  store i8 1, ptr %472, align 1, !tbaa !8
  %473 = load i32, ptr %23, align 4, !tbaa !139
  %474 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %473, i32 1), !nosanitize !45
  %475 = extractvalue { i32, i1 } %474, 1, !nosanitize !45
  br i1 %475, label %476, label %477, !prof !46, !nosanitize !45

476:                                              ; preds = %468
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

477:                                              ; preds = %468
  %478 = extractvalue { i32, i1 } %474, 0, !nosanitize !45
  %479 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %478, ptr %23, align 4, !tbaa !139
  %480 = zext i32 %473 to i64
  %481 = getelementptr inbounds nuw i8, ptr %479, i64 %480
  store i8 0, ptr %481, align 1, !tbaa !8
  %482 = load i32, ptr %23, align 4, !tbaa !139
  %483 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %482, i32 1), !nosanitize !45
  %484 = extractvalue { i32, i1 } %483, 1, !nosanitize !45
  br i1 %484, label %485, label %486, !prof !46, !nosanitize !45

485:                                              ; preds = %477
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

486:                                              ; preds = %477
  %487 = extractvalue { i32, i1 } %483, 0, !nosanitize !45
  %488 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %487, ptr %23, align 4, !tbaa !139
  %489 = zext i32 %482 to i64
  %490 = getelementptr inbounds nuw i8, ptr %488, i64 %489
  store i8 %464, ptr %490, align 1, !tbaa !8
  %491 = zext i8 %464 to i64
  %492 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %491
  %493 = load i8, ptr %492, align 1, !tbaa !8
  %494 = zext i8 %493 to i64
  %495 = getelementptr [4 x i8], ptr %26, i64 %494
  %496 = load i16, ptr %495, align 4, !tbaa !8
  %497 = add i16 %496, 1
  store i16 %497, ptr %495, align 4, !tbaa !8
  %498 = load i8, ptr @_dist_code, align 1, !tbaa !8
  %499 = zext i8 %498 to i64
  %500 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %499
  %501 = load i16, ptr %500, align 4, !tbaa !8
  %502 = add i16 %501, 1
  store i16 %502, ptr %500, align 4, !tbaa !8
  %503 = load i32, ptr %23, align 4, !tbaa !139
  %504 = load i32, ptr %25, align 8, !tbaa !47
  %505 = icmp eq i32 %503, %504
  %506 = load i32, ptr %4, align 8, !tbaa !78
  %507 = load i32, ptr %3, align 4, !tbaa !75
  %508 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %507, i32 %506), !nosanitize !45
  %509 = extractvalue { i32, i1 } %508, 1, !nosanitize !45
  br i1 %509, label %510, label %511, !prof !46, !nosanitize !45

510:                                              ; preds = %486
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

511:                                              ; preds = %486
  %512 = extractvalue { i32, i1 } %508, 0, !nosanitize !45
  store i32 %512, ptr %3, align 4, !tbaa !75
  %513 = load i32, ptr %7, align 4, !tbaa !73
  %514 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %513, i32 %506), !nosanitize !45
  %515 = extractvalue { i32, i1 } %514, 1, !nosanitize !45
  br i1 %515, label %516, label %517, !prof !46, !nosanitize !45

516:                                              ; preds = %511
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

517:                                              ; preds = %511
  %518 = extractvalue { i32, i1 } %514, 0, !nosanitize !45
  store i32 %518, ptr %7, align 4, !tbaa !73
  store i32 0, ptr %4, align 8, !tbaa !78
  br i1 %505, label %575, label %519

519:                                              ; preds = %517, %632, %573
  br label %28

520:                                              ; preds = %377, %385, %389, %373, %370
  %521 = phi i32 [ %372, %370 ], [ %374, %373 ], [ %374, %389 ], [ %374, %385 ], [ %374, %377 ]
  %522 = load i32, ptr %23, align 4, !tbaa !139
  br label %523

523:                                              ; preds = %520, %457
  %524 = phi i32 [ %461, %457 ], [ %522, %520 ]
  %525 = phi i32 [ %374, %457 ], [ %521, %520 ]
  %526 = load ptr, ptr %8, align 8, !tbaa !34
  %527 = zext i32 %525 to i64
  %528 = getelementptr inbounds nuw i8, ptr %526, i64 %527
  %529 = load i8, ptr %528, align 1, !tbaa !8
  %530 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %524, i32 1), !nosanitize !45
  %531 = extractvalue { i32, i1 } %530, 1, !nosanitize !45
  br i1 %531, label %532, label %533, !prof !46, !nosanitize !45

532:                                              ; preds = %523
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

533:                                              ; preds = %523
  %534 = extractvalue { i32, i1 } %530, 0, !nosanitize !45
  %535 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %534, ptr %23, align 4, !tbaa !139
  %536 = zext i32 %524 to i64
  %537 = getelementptr inbounds nuw i8, ptr %535, i64 %536
  store i8 0, ptr %537, align 1, !tbaa !8
  %538 = load i32, ptr %23, align 4, !tbaa !139
  %539 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %538, i32 1), !nosanitize !45
  %540 = extractvalue { i32, i1 } %539, 1, !nosanitize !45
  br i1 %540, label %541, label %542, !prof !46, !nosanitize !45

541:                                              ; preds = %533
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

542:                                              ; preds = %533
  %543 = extractvalue { i32, i1 } %539, 0, !nosanitize !45
  %544 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %543, ptr %23, align 4, !tbaa !139
  %545 = zext i32 %538 to i64
  %546 = getelementptr inbounds nuw i8, ptr %544, i64 %545
  store i8 0, ptr %546, align 1, !tbaa !8
  %547 = load i32, ptr %23, align 4, !tbaa !139
  %548 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %547, i32 1), !nosanitize !45
  %549 = extractvalue { i32, i1 } %548, 1, !nosanitize !45
  br i1 %549, label %550, label %551, !prof !46, !nosanitize !45

550:                                              ; preds = %542
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

551:                                              ; preds = %542
  %552 = extractvalue { i32, i1 } %548, 0, !nosanitize !45
  %553 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %552, ptr %23, align 4, !tbaa !139
  %554 = zext i32 %547 to i64
  %555 = getelementptr inbounds nuw i8, ptr %553, i64 %554
  store i8 %529, ptr %555, align 1, !tbaa !8
  %556 = zext i8 %529 to i64
  %557 = getelementptr inbounds nuw [4 x i8], ptr %24, i64 %556
  %558 = load i16, ptr %557, align 4, !tbaa !8
  %559 = add i16 %558, 1
  store i16 %559, ptr %557, align 4, !tbaa !8
  %560 = load i32, ptr %23, align 4, !tbaa !139
  %561 = load i32, ptr %25, align 8, !tbaa !47
  %562 = icmp eq i32 %560, %561
  %563 = load i32, ptr %3, align 4, !tbaa !75
  %564 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %563, i32 1), !nosanitize !45
  %565 = extractvalue { i32, i1 } %564, 1, !nosanitize !45
  br i1 %565, label %566, label %567, !prof !46, !nosanitize !45

566:                                              ; preds = %551
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

567:                                              ; preds = %551
  %568 = extractvalue { i32, i1 } %564, 0, !nosanitize !45
  store i32 %568, ptr %3, align 4, !tbaa !75
  %569 = load i32, ptr %7, align 4, !tbaa !73
  %570 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %569, i32 1), !nosanitize !45
  %571 = extractvalue { i32, i1 } %570, 1, !nosanitize !45
  br i1 %571, label %572, label %573, !prof !46, !nosanitize !45

572:                                              ; preds = %567
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

573:                                              ; preds = %567
  %574 = extractvalue { i32, i1 } %570, 0, !nosanitize !45
  store i32 %574, ptr %7, align 4, !tbaa !73
  br i1 %562, label %575, label %519

575:                                              ; preds = %517, %573
  %576 = phi i32 [ %518, %517 ], [ %574, %573 ]
  %577 = load i64, ptr %10, align 8, !tbaa !74
  %578 = icmp sgt i64 %577, -1
  br i1 %578, label %579, label %583

579:                                              ; preds = %575
  %580 = load ptr, ptr %8, align 8, !tbaa !34
  %581 = and i64 %577, 4294967295
  %582 = getelementptr inbounds nuw i8, ptr %580, i64 %581
  br label %583

583:                                              ; preds = %575, %579
  %584 = phi ptr [ %582, %579 ], [ null, %575 ]
  %585 = zext i32 %576 to i64
  %586 = sub nsw i64 %585, %577
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %584, i64 noundef %586, i32 noundef 0) #12
  %587 = load i32, ptr %7, align 4, !tbaa !73
  %588 = zext i32 %587 to i64
  store i64 %588, ptr %10, align 8, !tbaa !74
  %589 = load ptr, ptr %0, align 8, !tbaa !20
  %590 = getelementptr inbounds nuw i8, ptr %589, i64 56
  %591 = load ptr, ptr %590, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %591) #12
  %592 = getelementptr inbounds nuw i8, ptr %591, i64 40
  %593 = load i64, ptr %592, align 8, !tbaa !57
  %594 = getelementptr inbounds nuw i8, ptr %589, i64 32
  %595 = load i32, ptr %594, align 8, !tbaa !107
  %596 = zext i32 %595 to i64
  %597 = tail call i64 @llvm.umin.i64(i64 %593, i64 %596)
  %598 = trunc nuw i64 %597 to i32
  %599 = icmp eq i64 %597, 0
  br i1 %599, label %632, label %600

600:                                              ; preds = %583
  %601 = getelementptr inbounds nuw i8, ptr %589, i64 24
  %602 = load ptr, ptr %601, align 8, !tbaa !106
  %603 = getelementptr inbounds nuw i8, ptr %591, i64 32
  %604 = load ptr, ptr %603, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %602, ptr align 1 %604, i64 %597, i1 false)
  %605 = load ptr, ptr %601, align 8, !tbaa !106
  %606 = getelementptr inbounds nuw i8, ptr %605, i64 %597
  store ptr %606, ptr %601, align 8, !tbaa !106
  %607 = load ptr, ptr %603, align 8, !tbaa !58
  %608 = getelementptr inbounds nuw i8, ptr %607, i64 %597
  store ptr %608, ptr %603, align 8, !tbaa !58
  %609 = getelementptr inbounds nuw i8, ptr %589, i64 40
  %610 = load i64, ptr %609, align 8, !tbaa !108
  %611 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %610, i64 %597), !nosanitize !45
  %612 = extractvalue { i64, i1 } %611, 1, !nosanitize !45
  br i1 %612, label %613, label %614, !prof !46, !nosanitize !45

613:                                              ; preds = %600
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

614:                                              ; preds = %600
  %615 = extractvalue { i64, i1 } %611, 0, !nosanitize !45
  store i64 %615, ptr %609, align 8, !tbaa !108
  %616 = load i32, ptr %594, align 8, !tbaa !107
  %617 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %616, i32 %598), !nosanitize !45
  %618 = extractvalue { i32, i1 } %617, 1, !nosanitize !45
  br i1 %618, label %619, label %620, !prof !46, !nosanitize !45

619:                                              ; preds = %614
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

620:                                              ; preds = %614
  %621 = extractvalue { i32, i1 } %617, 0, !nosanitize !45
  store i32 %621, ptr %594, align 8, !tbaa !107
  %622 = load i64, ptr %592, align 8, !tbaa !57
  %623 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %622, i64 %597), !nosanitize !45
  %624 = extractvalue { i64, i1 } %623, 1, !nosanitize !45
  br i1 %624, label %625, label %626, !prof !46, !nosanitize !45

625:                                              ; preds = %620
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

626:                                              ; preds = %620
  %627 = extractvalue { i64, i1 } %623, 0, !nosanitize !45
  store i64 %627, ptr %592, align 8, !tbaa !57
  %628 = icmp eq i64 %627, 0
  br i1 %628, label %629, label %632

629:                                              ; preds = %626
  %630 = getelementptr inbounds nuw i8, ptr %591, i64 16
  %631 = load ptr, ptr %630, align 8, !tbaa !40
  store ptr %631, ptr %603, align 8, !tbaa !58
  br label %632

632:                                              ; preds = %583, %626, %629
  %633 = load ptr, ptr %0, align 8, !tbaa !20
  %634 = getelementptr inbounds nuw i8, ptr %633, i64 32
  %635 = load i32, ptr %634, align 8, !tbaa !107
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %768, label %519

637:                                              ; preds = %368
  store i32 0, ptr %11, align 4, !tbaa !76
  %638 = icmp eq i32 %1, 4
  br i1 %638, label %639, label %702

639:                                              ; preds = %637
  %640 = load i64, ptr %10, align 8, !tbaa !74
  %641 = icmp sgt i64 %640, -1
  br i1 %641, label %642, label %646

642:                                              ; preds = %639
  %643 = load ptr, ptr %8, align 8, !tbaa !34
  %644 = and i64 %640, 4294967295
  %645 = getelementptr inbounds nuw i8, ptr %643, i64 %644
  br label %646

646:                                              ; preds = %639, %642
  %647 = phi ptr [ %645, %642 ], [ null, %639 ]
  %648 = load i32, ptr %7, align 4, !tbaa !73
  %649 = zext i32 %648 to i64
  %650 = sub nsw i64 %649, %640
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %647, i64 noundef %650, i32 noundef 1) #12
  %651 = load i32, ptr %7, align 4, !tbaa !73
  %652 = zext i32 %651 to i64
  store i64 %652, ptr %10, align 8, !tbaa !74
  %653 = load ptr, ptr %0, align 8, !tbaa !20
  %654 = getelementptr inbounds nuw i8, ptr %653, i64 56
  %655 = load ptr, ptr %654, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %655) #12
  %656 = getelementptr inbounds nuw i8, ptr %655, i64 40
  %657 = load i64, ptr %656, align 8, !tbaa !57
  %658 = getelementptr inbounds nuw i8, ptr %653, i64 32
  %659 = load i32, ptr %658, align 8, !tbaa !107
  %660 = zext i32 %659 to i64
  %661 = tail call i64 @llvm.umin.i64(i64 %657, i64 %660)
  %662 = trunc nuw i64 %661 to i32
  %663 = icmp eq i64 %661, 0
  br i1 %663, label %696, label %664

664:                                              ; preds = %646
  %665 = getelementptr inbounds nuw i8, ptr %653, i64 24
  %666 = load ptr, ptr %665, align 8, !tbaa !106
  %667 = getelementptr inbounds nuw i8, ptr %655, i64 32
  %668 = load ptr, ptr %667, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %666, ptr align 1 %668, i64 %661, i1 false)
  %669 = load ptr, ptr %665, align 8, !tbaa !106
  %670 = getelementptr inbounds nuw i8, ptr %669, i64 %661
  store ptr %670, ptr %665, align 8, !tbaa !106
  %671 = load ptr, ptr %667, align 8, !tbaa !58
  %672 = getelementptr inbounds nuw i8, ptr %671, i64 %661
  store ptr %672, ptr %667, align 8, !tbaa !58
  %673 = getelementptr inbounds nuw i8, ptr %653, i64 40
  %674 = load i64, ptr %673, align 8, !tbaa !108
  %675 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %674, i64 %661), !nosanitize !45
  %676 = extractvalue { i64, i1 } %675, 1, !nosanitize !45
  br i1 %676, label %677, label %678, !prof !46, !nosanitize !45

677:                                              ; preds = %664
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

678:                                              ; preds = %664
  %679 = extractvalue { i64, i1 } %675, 0, !nosanitize !45
  store i64 %679, ptr %673, align 8, !tbaa !108
  %680 = load i32, ptr %658, align 8, !tbaa !107
  %681 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %680, i32 %662), !nosanitize !45
  %682 = extractvalue { i32, i1 } %681, 1, !nosanitize !45
  br i1 %682, label %683, label %684, !prof !46, !nosanitize !45

683:                                              ; preds = %678
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

684:                                              ; preds = %678
  %685 = extractvalue { i32, i1 } %681, 0, !nosanitize !45
  store i32 %685, ptr %658, align 8, !tbaa !107
  %686 = load i64, ptr %656, align 8, !tbaa !57
  %687 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %686, i64 %661), !nosanitize !45
  %688 = extractvalue { i64, i1 } %687, 1, !nosanitize !45
  br i1 %688, label %689, label %690, !prof !46, !nosanitize !45

689:                                              ; preds = %684
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

690:                                              ; preds = %684
  %691 = extractvalue { i64, i1 } %687, 0, !nosanitize !45
  store i64 %691, ptr %656, align 8, !tbaa !57
  %692 = icmp eq i64 %691, 0
  br i1 %692, label %693, label %696

693:                                              ; preds = %690
  %694 = getelementptr inbounds nuw i8, ptr %655, i64 16
  %695 = load ptr, ptr %694, align 8, !tbaa !40
  store ptr %695, ptr %667, align 8, !tbaa !58
  br label %696

696:                                              ; preds = %646, %690, %693
  %697 = load ptr, ptr %0, align 8, !tbaa !20
  %698 = getelementptr inbounds nuw i8, ptr %697, i64 32
  %699 = load i32, ptr %698, align 8, !tbaa !107
  %700 = icmp eq i32 %699, 0
  %701 = select i1 %700, i32 2, i32 3
  br label %768

702:                                              ; preds = %637
  %703 = load i32, ptr %23, align 4, !tbaa !139
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %767, label %705

705:                                              ; preds = %702
  %706 = load i64, ptr %10, align 8, !tbaa !74
  %707 = icmp sgt i64 %706, -1
  br i1 %707, label %708, label %712

708:                                              ; preds = %705
  %709 = load ptr, ptr %8, align 8, !tbaa !34
  %710 = and i64 %706, 4294967295
  %711 = getelementptr inbounds nuw i8, ptr %709, i64 %710
  br label %712

712:                                              ; preds = %705, %708
  %713 = phi ptr [ %711, %708 ], [ null, %705 ]
  %714 = load i32, ptr %7, align 4, !tbaa !73
  %715 = zext i32 %714 to i64
  %716 = sub nsw i64 %715, %706
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %713, i64 noundef %716, i32 noundef 0) #12
  %717 = load i32, ptr %7, align 4, !tbaa !73
  %718 = zext i32 %717 to i64
  store i64 %718, ptr %10, align 8, !tbaa !74
  %719 = load ptr, ptr %0, align 8, !tbaa !20
  %720 = getelementptr inbounds nuw i8, ptr %719, i64 56
  %721 = load ptr, ptr %720, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %721) #12
  %722 = getelementptr inbounds nuw i8, ptr %721, i64 40
  %723 = load i64, ptr %722, align 8, !tbaa !57
  %724 = getelementptr inbounds nuw i8, ptr %719, i64 32
  %725 = load i32, ptr %724, align 8, !tbaa !107
  %726 = zext i32 %725 to i64
  %727 = tail call i64 @llvm.umin.i64(i64 %723, i64 %726)
  %728 = trunc nuw i64 %727 to i32
  %729 = icmp eq i64 %727, 0
  br i1 %729, label %762, label %730

730:                                              ; preds = %712
  %731 = getelementptr inbounds nuw i8, ptr %719, i64 24
  %732 = load ptr, ptr %731, align 8, !tbaa !106
  %733 = getelementptr inbounds nuw i8, ptr %721, i64 32
  %734 = load ptr, ptr %733, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %732, ptr align 1 %734, i64 %727, i1 false)
  %735 = load ptr, ptr %731, align 8, !tbaa !106
  %736 = getelementptr inbounds nuw i8, ptr %735, i64 %727
  store ptr %736, ptr %731, align 8, !tbaa !106
  %737 = load ptr, ptr %733, align 8, !tbaa !58
  %738 = getelementptr inbounds nuw i8, ptr %737, i64 %727
  store ptr %738, ptr %733, align 8, !tbaa !58
  %739 = getelementptr inbounds nuw i8, ptr %719, i64 40
  %740 = load i64, ptr %739, align 8, !tbaa !108
  %741 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %740, i64 %727), !nosanitize !45
  %742 = extractvalue { i64, i1 } %741, 1, !nosanitize !45
  br i1 %742, label %743, label %744, !prof !46, !nosanitize !45

743:                                              ; preds = %730
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

744:                                              ; preds = %730
  %745 = extractvalue { i64, i1 } %741, 0, !nosanitize !45
  store i64 %745, ptr %739, align 8, !tbaa !108
  %746 = load i32, ptr %724, align 8, !tbaa !107
  %747 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %746, i32 %728), !nosanitize !45
  %748 = extractvalue { i32, i1 } %747, 1, !nosanitize !45
  br i1 %748, label %749, label %750, !prof !46, !nosanitize !45

749:                                              ; preds = %744
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

750:                                              ; preds = %744
  %751 = extractvalue { i32, i1 } %747, 0, !nosanitize !45
  store i32 %751, ptr %724, align 8, !tbaa !107
  %752 = load i64, ptr %722, align 8, !tbaa !57
  %753 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %752, i64 %727), !nosanitize !45
  %754 = extractvalue { i64, i1 } %753, 1, !nosanitize !45
  br i1 %754, label %755, label %756, !prof !46, !nosanitize !45

755:                                              ; preds = %750
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

756:                                              ; preds = %750
  %757 = extractvalue { i64, i1 } %753, 0, !nosanitize !45
  store i64 %757, ptr %722, align 8, !tbaa !57
  %758 = icmp eq i64 %757, 0
  br i1 %758, label %759, label %762

759:                                              ; preds = %756
  %760 = getelementptr inbounds nuw i8, ptr %721, i64 16
  %761 = load ptr, ptr %760, align 8, !tbaa !40
  store ptr %761, ptr %733, align 8, !tbaa !58
  br label %762

762:                                              ; preds = %712, %756, %759
  %763 = load ptr, ptr %0, align 8, !tbaa !20
  %764 = getelementptr inbounds nuw i8, ptr %763, i64 32
  %765 = load i32, ptr %764, align 8, !tbaa !107
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %768, label %767

767:                                              ; preds = %762, %702
  br label %768

768:                                              ; preds = %632, %364, %762, %696, %767
  %769 = phi i32 [ 1, %767 ], [ %701, %696 ], [ 0, %762 ], [ 0, %364 ], [ 0, %632 ]
  ret i32 %769
}

declare void @_tr_align(ptr noundef) local_unnamed_addr #1

declare void @_tr_stored_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -4, 1) i32 @deflateCopy(ptr noundef %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %188, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %188, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %188, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %188, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !20
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %188

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !29
  switch i32 %21, label %188 [
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
  br i1 %23, label %188, label %24

24:                                               ; preds = %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %26 = load ptr, ptr %25, align 8, !tbaa !15
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %28 = load ptr, ptr %27, align 8, !tbaa !16
  %29 = tail call ptr %26(ptr noundef %28, i32 noundef 1, i32 noundef 5968) #12
  %30 = icmp eq ptr %29, null
  br i1 %30, label %188, label %31

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
  %37 = tail call ptr %33(ptr noundef %34, i32 noundef %36, i32 noundef 2) #12
  %38 = getelementptr inbounds nuw i8, ptr %29, i64 96
  store ptr %37, ptr %38, align 8, !tbaa !34
  %39 = load ptr, ptr %25, align 8, !tbaa !15
  %40 = load ptr, ptr %27, align 8, !tbaa !16
  %41 = load i32, ptr %35, align 8, !tbaa !32
  %42 = tail call ptr %39(ptr noundef %40, i32 noundef %41, i32 noundef 2) #12
  %43 = getelementptr inbounds nuw i8, ptr %29, i64 112
  store ptr %42, ptr %43, align 8, !tbaa !35
  %44 = load ptr, ptr %25, align 8, !tbaa !15
  %45 = load ptr, ptr %27, align 8, !tbaa !16
  %46 = getelementptr inbounds nuw i8, ptr %29, i64 132
  %47 = load i32, ptr %46, align 4, !tbaa !36
  %48 = tail call ptr %44(ptr noundef %45, i32 noundef %47, i32 noundef 2) #12
  %49 = getelementptr inbounds nuw i8, ptr %29, i64 120
  store ptr %48, ptr %49, align 8, !tbaa !37
  %50 = load ptr, ptr %25, align 8, !tbaa !15
  %51 = load ptr, ptr %27, align 8, !tbaa !16
  %52 = getelementptr inbounds nuw i8, ptr %29, i64 5896
  %53 = load i32, ptr %52, align 8, !tbaa !39
  %54 = tail call ptr %50(ptr noundef %51, i32 noundef %53, i32 noundef 4) #12
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
  br i1 %68, label %188, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %71 = load ptr, ptr %70, align 8, !tbaa !17
  %72 = icmp eq ptr %71, null
  br i1 %72, label %188, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %32, align 8, !tbaa !19
  %75 = icmp eq ptr %74, null
  br i1 %75, label %188, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %74, align 8, !tbaa !20
  %78 = icmp eq ptr %77, %0
  br i1 %78, label %79, label %188

79:                                               ; preds = %76
  %80 = getelementptr inbounds nuw i8, ptr %74, i64 8
  %81 = load i32, ptr %80, align 8, !tbaa !29
  switch i32 %81, label %188 [
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
  tail call void %71(ptr noundef %87, ptr noundef nonnull %84) #12, !inline_history !54
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
  tail call void %91(ptr noundef %97, ptr noundef nonnull %94) #12, !inline_history !54
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
  tail call void %101(ptr noundef %107, ptr noundef nonnull %104) #12, !inline_history !54
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
  tail call void %111(ptr noundef %117, ptr noundef nonnull %114) #12, !inline_history !54
  %118 = load ptr, ptr %70, align 8, !tbaa !17
  %119 = load ptr, ptr %32, align 8, !tbaa !19
  br label %120

120:                                              ; preds = %116, %110
  %121 = phi ptr [ %119, %116 ], [ %112, %110 ]
  %122 = phi ptr [ %118, %116 ], [ %111, %110 ]
  %123 = load ptr, ptr %27, align 8, !tbaa !16
  tail call void %122(ptr noundef %123, ptr noundef %121) #12, !inline_history !54
  store ptr null, ptr %32, align 8, !tbaa !19
  br label %188

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
  %133 = load i32, ptr %132, align 8, !tbaa !63
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %124
  %136 = load i32, ptr %35, align 8, !tbaa !32
  br label %149

137:                                              ; preds = %124
  %138 = getelementptr inbounds nuw i8, ptr %14, i64 172
  %139 = load i32, ptr %138, align 4, !tbaa !73
  %140 = getelementptr inbounds nuw i8, ptr %14, i64 5932
  %141 = load i32, ptr %140, align 4, !tbaa !76
  %142 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %139, i32 %141), !nosanitize !45
  %143 = extractvalue { i32, i1 } %142, 1, !nosanitize !45
  br i1 %143, label %144, label %145, !prof !46, !nosanitize !45

144:                                              ; preds = %137
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

145:                                              ; preds = %137
  %146 = extractvalue { i32, i1 } %142, 0, !nosanitize !45
  %147 = load i32, ptr %35, align 8, !tbaa !32
  %148 = tail call i32 @llvm.umin.i32(i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %145, %135
  %150 = phi i32 [ %148, %145 ], [ %136, %135 ]
  %151 = zext i32 %150 to i64
  %152 = shl nuw nsw i64 %151, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %129, ptr align 2 %131, i64 %152, i1 false)
  %153 = load i32, ptr %46, align 4, !tbaa !36
  %154 = zext i32 %153 to i64
  %155 = shl nuw nsw i64 %154, 1
  %156 = getelementptr inbounds nuw i8, ptr %14, i64 120
  %157 = load ptr, ptr %156, align 8, !tbaa !37
  %158 = load ptr, ptr %49, align 8, !tbaa !37
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %158, ptr align 2 %157, i64 %155, i1 false)
  %159 = load ptr, ptr %55, align 8, !tbaa !40
  %160 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %161 = load ptr, ptr %160, align 8, !tbaa !58
  %162 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %163 = load ptr, ptr %162, align 8, !tbaa !40
  %164 = ptrtoint ptr %161 to i64
  %165 = ptrtoint ptr %163 to i64
  %166 = sub i64 %164, %165
  %167 = getelementptr inbounds i8, ptr %159, i64 %166
  %168 = getelementptr inbounds nuw i8, ptr %29, i64 32
  store ptr %167, ptr %168, align 8, !tbaa !58
  %169 = load ptr, ptr %160, align 8, !tbaa !58
  %170 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %171 = load i64, ptr %170, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %167, ptr align 1 %169, i64 %171, i1 false)
  %172 = load ptr, ptr %55, align 8, !tbaa !40
  %173 = load i32, ptr %52, align 8, !tbaa !39
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds nuw i8, ptr %172, i64 %174
  %176 = getelementptr inbounds nuw i8, ptr %29, i64 5888
  store ptr %175, ptr %176, align 8, !tbaa !44
  %177 = getelementptr inbounds nuw i8, ptr %14, i64 5888
  %178 = load ptr, ptr %177, align 8, !tbaa !44
  %179 = getelementptr inbounds nuw i8, ptr %14, i64 5900
  %180 = load i32, ptr %179, align 4, !tbaa !139
  %181 = zext i32 %180 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %175, ptr align 1 %178, i64 %181, i1 false)
  %182 = getelementptr inbounds nuw i8, ptr %29, i64 212
  %183 = getelementptr inbounds nuw i8, ptr %29, i64 2904
  store ptr %182, ptr %183, align 8, !tbaa !145
  %184 = getelementptr inbounds nuw i8, ptr %29, i64 2504
  %185 = getelementptr inbounds nuw i8, ptr %29, i64 2928
  store ptr %184, ptr %185, align 8, !tbaa !146
  %186 = getelementptr inbounds nuw i8, ptr %29, i64 2748
  %187 = getelementptr inbounds nuw i8, ptr %29, i64 2952
  store ptr %186, ptr %187, align 8, !tbaa !147
  br label %188

188:                                              ; preds = %12, %16, %19, %4, %8, %2, %120, %79, %76, %73, %69, %66, %24, %22, %149
  %189 = phi i32 [ 0, %149 ], [ -2, %22 ], [ -4, %120 ], [ -4, %24 ], [ -4, %66 ], [ -4, %69 ], [ -4, %73 ], [ -4, %76 ], [ -4, %79 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %189
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
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 188
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

33:                                               ; preds = %774, %2
  %34 = load i32, ptr %3, align 4, !tbaa !75
  %35 = icmp ult i32 %34, 262
  br i1 %35, label %36, label %375

36:                                               ; preds = %33
  %37 = load i32, ptr %4, align 8, !tbaa !32
  %38 = zext i32 %37 to i64
  br label %39

39:                                               ; preds = %318, %36
  %40 = phi i32 [ %245, %318 ], [ %34, %36 ]
  %41 = load i64, ptr %5, align 8, !tbaa !61
  %42 = zext nneg i32 %40 to i64
  %43 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %41, i64 %42), !nosanitize !45
  %44 = extractvalue { i64, i1 } %43, 1, !nosanitize !45
  br i1 %44, label %45, label %46, !prof !46, !nosanitize !45

45:                                               ; preds = %39
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

46:                                               ; preds = %39
  %47 = extractvalue { i64, i1 } %43, 0, !nosanitize !45
  %48 = load i32, ptr %6, align 4, !tbaa !73
  %49 = zext i32 %48 to i64
  %50 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %47, i64 %49), !nosanitize !45
  %51 = extractvalue { i64, i1 } %50, 1, !nosanitize !45
  br i1 %51, label %52, label %53, !prof !46, !nosanitize !45

52:                                               ; preds = %46
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

53:                                               ; preds = %46
  %54 = extractvalue { i64, i1 } %50, 0, !nosanitize !45
  %55 = trunc i64 %54 to i32
  %56 = load i32, ptr %4, align 8, !tbaa !32
  %57 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %56, i32 262), !nosanitize !45
  %58 = extractvalue { i32, i1 } %57, 1, !nosanitize !45
  br i1 %58, label %59, label %60, !prof !46, !nosanitize !45

59:                                               ; preds = %53
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

60:                                               ; preds = %53
  %61 = extractvalue { i32, i1 } %57, 0, !nosanitize !45
  %62 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %37, i32 %61), !nosanitize !45
  %63 = extractvalue { i32, i1 } %62, 1, !nosanitize !45
  br i1 %63, label %64, label %65, !prof !46, !nosanitize !45

64:                                               ; preds = %60
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

65:                                               ; preds = %60
  %66 = extractvalue { i32, i1 } %62, 0, !nosanitize !45
  %67 = icmp ult i32 %48, %66
  br i1 %67, label %192, label %68

68:                                               ; preds = %65
  %69 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %37, i32 %55), !nosanitize !45
  %70 = extractvalue { i32, i1 } %69, 1, !nosanitize !45
  br i1 %70, label %71, label %72, !prof !46, !nosanitize !45

71:                                               ; preds = %68
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

72:                                               ; preds = %68
  %73 = extractvalue { i32, i1 } %69, 0, !nosanitize !45
  %74 = load ptr, ptr %7, align 8, !tbaa !34
  %75 = getelementptr inbounds nuw i8, ptr %74, i64 %38
  %76 = zext i32 %73 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %74, ptr align 1 %75, i64 %76, i1 false)
  %77 = load i32, ptr %8, align 8, !tbaa !83
  %78 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %77, i32 %37), !nosanitize !45
  %79 = extractvalue { i32, i1 } %78, 1, !nosanitize !45
  br i1 %79, label %80, label %81, !prof !46, !nosanitize !45

80:                                               ; preds = %72
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

81:                                               ; preds = %72
  %82 = extractvalue { i32, i1 } %78, 0, !nosanitize !45
  store i32 %82, ptr %8, align 8, !tbaa !83
  %83 = load i32, ptr %6, align 4, !tbaa !73
  %84 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %83, i32 %37), !nosanitize !45
  %85 = extractvalue { i32, i1 } %84, 1, !nosanitize !45
  br i1 %85, label %86, label %87, !prof !46, !nosanitize !45

86:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

87:                                               ; preds = %81
  %88 = extractvalue { i32, i1 } %84, 0, !nosanitize !45
  store i32 %88, ptr %6, align 4, !tbaa !73
  %89 = load i64, ptr %9, align 8, !tbaa !74
  %90 = sub nsw i64 %89, %38
  store i64 %90, ptr %9, align 8, !tbaa !74
  %91 = load i32, ptr %10, align 4, !tbaa !76
  %92 = icmp ugt i32 %91, %88
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 %88, ptr %10, align 4, !tbaa !76
  br label %94

94:                                               ; preds = %93, %87
  %95 = load i32, ptr %4, align 8, !tbaa !32
  %96 = load i32, ptr %11, align 4, !tbaa !36
  %97 = load ptr, ptr %12, align 8, !tbaa !37
  %98 = zext i32 %96 to i64
  %99 = getelementptr inbounds nuw [2 x i8], ptr %97, i64 %98
  %100 = icmp eq i32 %96, 0
  br i1 %100, label %127, label %101, !prof !46, !nosanitize !45

101:                                              ; preds = %94
  %102 = icmp ult i32 %96, 8
  br i1 %102, label %124, label %103

103:                                              ; preds = %101
  %104 = and i64 %98, 4294967288
  %105 = mul nsw i64 %104, -2
  %106 = getelementptr i8, ptr %99, i64 %105
  %107 = trunc nuw i64 %104 to i32
  %108 = sub i32 %96, %107
  %109 = insertelement <8 x i32> poison, i32 %95, i64 0
  %110 = shufflevector <8 x i32> %109, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %111

111:                                              ; preds = %111, %103
  %112 = phi i64 [ 0, %103 ], [ %120, %111 ]
  %113 = mul i64 %112, -2
  %114 = getelementptr i8, ptr %99, i64 %113
  %115 = getelementptr inbounds i8, ptr %114, i64 -16
  %116 = load <8 x i16>, ptr %115, align 2, !tbaa !62
  %117 = zext <8 x i16> %116 to <8 x i32>
  %118 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %117, <8 x i32> %110)
  %119 = trunc nuw <8 x i32> %118 to <8 x i16>
  store <8 x i16> %119, ptr %115, align 2, !tbaa !62
  %120 = add nuw i64 %112, 8
  %121 = icmp eq i64 %120, %104
  br i1 %121, label %122, label %111, !llvm.loop !148

122:                                              ; preds = %111
  %123 = icmp eq i64 %104, %98
  br i1 %123, label %143, label %124

124:                                              ; preds = %101, %122
  %125 = phi ptr [ %99, %101 ], [ %106, %122 ]
  %126 = phi i32 [ %96, %101 ], [ %108, %122 ]
  br label %133

127:                                              ; preds = %94
  %128 = getelementptr inbounds i8, ptr %99, i64 -2
  %129 = load i16, ptr %128, align 2, !tbaa !62
  %130 = zext i16 %129 to i32
  %131 = tail call i32 @llvm.usub.sat.i32(i32 %130, i32 %95)
  %132 = trunc nuw i32 %131 to i16
  store i16 %132, ptr %128, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

133:                                              ; preds = %124, %133
  %134 = phi ptr [ %136, %133 ], [ %125, %124 ]
  %135 = phi i32 [ %141, %133 ], [ %126, %124 ]
  %136 = getelementptr inbounds i8, ptr %134, i64 -2
  %137 = load i16, ptr %136, align 2, !tbaa !62
  %138 = zext i16 %137 to i32
  %139 = tail call i32 @llvm.usub.sat.i32(i32 %138, i32 %95)
  %140 = trunc nuw i32 %139 to i16
  store i16 %140, ptr %136, align 2, !tbaa !62
  %141 = add i32 %135, -1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %133, !llvm.loop !149

143:                                              ; preds = %133, %122
  %144 = icmp eq i32 %95, 0
  br i1 %144, label %145, label %146, !prof !46, !nosanitize !45

145:                                              ; preds = %143
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

146:                                              ; preds = %143
  %147 = load ptr, ptr %13, align 8, !tbaa !35
  %148 = zext i32 %95 to i64
  %149 = getelementptr inbounds nuw [2 x i8], ptr %147, i64 %148
  %150 = icmp ult i32 %95, 8
  br i1 %150, label %172, label %151

151:                                              ; preds = %146
  %152 = and i64 %148, 4294967288
  %153 = mul nsw i64 %152, -2
  %154 = getelementptr i8, ptr %149, i64 %153
  %155 = trunc nuw i64 %152 to i32
  %156 = sub i32 %95, %155
  %157 = insertelement <8 x i32> poison, i32 %95, i64 0
  %158 = shufflevector <8 x i32> %157, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %159

159:                                              ; preds = %159, %151
  %160 = phi i64 [ 0, %151 ], [ %168, %159 ]
  %161 = mul i64 %160, -2
  %162 = getelementptr i8, ptr %149, i64 %161
  %163 = getelementptr inbounds i8, ptr %162, i64 -16
  %164 = load <8 x i16>, ptr %163, align 2, !tbaa !62
  %165 = zext <8 x i16> %164 to <8 x i32>
  %166 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %165, <8 x i32> %158)
  %167 = trunc nuw <8 x i32> %166 to <8 x i16>
  store <8 x i16> %167, ptr %163, align 2, !tbaa !62
  %168 = add nuw i64 %160, 8
  %169 = icmp eq i64 %168, %152
  br i1 %169, label %170, label %159, !llvm.loop !150

170:                                              ; preds = %159
  %171 = icmp eq i64 %152, %148
  br i1 %171, label %185, label %172

172:                                              ; preds = %146, %170
  %173 = phi ptr [ %149, %146 ], [ %154, %170 ]
  %174 = phi i32 [ %95, %146 ], [ %156, %170 ]
  br label %175

175:                                              ; preds = %172, %175
  %176 = phi ptr [ %178, %175 ], [ %173, %172 ]
  %177 = phi i32 [ %183, %175 ], [ %174, %172 ]
  %178 = getelementptr inbounds i8, ptr %176, i64 -2
  %179 = load i16, ptr %178, align 2, !tbaa !62
  %180 = zext i16 %179 to i32
  %181 = tail call i32 @llvm.usub.sat.i32(i32 %180, i32 %95)
  %182 = trunc nuw i32 %181 to i16
  store i16 %182, ptr %178, align 2, !tbaa !62
  %183 = add i32 %177, -1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %175, !llvm.loop !151

185:                                              ; preds = %175, %170
  store i32 1, ptr %14, align 8, !tbaa !63
  %186 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %55, i32 %37), !nosanitize !45
  %187 = extractvalue { i32, i1 } %186, 1, !nosanitize !45
  br i1 %187, label %188, label %189, !prof !46, !nosanitize !45

188:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

189:                                              ; preds = %185
  %190 = extractvalue { i32, i1 } %186, 0, !nosanitize !45
  %191 = load i32, ptr %3, align 4, !tbaa !75
  br label %192

192:                                              ; preds = %189, %65
  %193 = phi i32 [ %191, %189 ], [ %40, %65 ]
  %194 = phi i32 [ %88, %189 ], [ %48, %65 ]
  %195 = phi i32 [ %190, %189 ], [ %55, %65 ]
  %196 = load ptr, ptr %0, align 8, !tbaa !20
  %197 = getelementptr inbounds nuw i8, ptr %196, i64 8
  %198 = load i32, ptr %197, align 8, !tbaa !81
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %323, label %200

200:                                              ; preds = %192
  %201 = load ptr, ptr %7, align 8, !tbaa !34
  %202 = zext i32 %194 to i64
  %203 = getelementptr inbounds nuw i8, ptr %201, i64 %202
  %204 = zext i32 %193 to i64
  %205 = getelementptr inbounds nuw i8, ptr %203, i64 %204
  %206 = tail call i32 @llvm.umin.i32(i32 %198, i32 %195)
  %207 = icmp eq i32 %195, 0
  br i1 %207, label %239, label %208

208:                                              ; preds = %200
  %209 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %198, i32 %206), !nosanitize !45
  %210 = extractvalue { i32, i1 } %209, 1, !nosanitize !45
  br i1 %210, label %211, label %212, !prof !46, !nosanitize !45

211:                                              ; preds = %208
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

212:                                              ; preds = %208
  %213 = extractvalue { i32, i1 } %209, 0, !nosanitize !45
  store i32 %213, ptr %197, align 8, !tbaa !81
  %214 = load ptr, ptr %196, align 8, !tbaa !82
  %215 = zext i32 %206 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %205, ptr align 1 %214, i64 %215, i1 false)
  %216 = getelementptr inbounds nuw i8, ptr %196, i64 56
  %217 = load ptr, ptr %216, align 8, !tbaa !19
  %218 = getelementptr inbounds nuw i8, ptr %217, i64 48
  %219 = load i32, ptr %218, align 8, !tbaa !30
  switch i32 %219, label %228 [
    i32 1, label %220
    i32 2, label %224
  ]

220:                                              ; preds = %212
  %221 = getelementptr inbounds nuw i8, ptr %196, i64 96
  %222 = load i64, ptr %221, align 8, !tbaa !59
  %223 = tail call i64 @adler32(i64 noundef %222, ptr noundef %205, i32 noundef %206) #12
  store i64 %223, ptr %221, align 8, !tbaa !59
  br label %228

224:                                              ; preds = %212
  %225 = getelementptr inbounds nuw i8, ptr %196, i64 96
  %226 = load i64, ptr %225, align 8, !tbaa !59
  %227 = tail call i64 @crc32(i64 noundef %226, ptr noundef %205, i32 noundef %206) #12
  store i64 %227, ptr %225, align 8, !tbaa !59
  br label %228

228:                                              ; preds = %224, %220, %212
  %229 = load ptr, ptr %196, align 8, !tbaa !82
  %230 = getelementptr inbounds nuw i8, ptr %229, i64 %215
  store ptr %230, ptr %196, align 8, !tbaa !82
  %231 = getelementptr inbounds nuw i8, ptr %196, i64 16
  %232 = load i64, ptr %231, align 8, !tbaa !55
  %233 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %232, i64 %215), !nosanitize !45
  %234 = extractvalue { i64, i1 } %233, 1, !nosanitize !45
  br i1 %234, label %235, label %236, !prof !46, !nosanitize !45

235:                                              ; preds = %228
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

236:                                              ; preds = %228
  %237 = extractvalue { i64, i1 } %233, 0, !nosanitize !45
  store i64 %237, ptr %231, align 8, !tbaa !55
  %238 = load i32, ptr %3, align 4, !tbaa !75
  br label %239

239:                                              ; preds = %236, %200
  %240 = phi i32 [ %193, %200 ], [ %238, %236 ]
  %241 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %240, i32 %206), !nosanitize !45
  %242 = extractvalue { i32, i1 } %241, 1, !nosanitize !45
  br i1 %242, label %243, label %244, !prof !46, !nosanitize !45

243:                                              ; preds = %239
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

244:                                              ; preds = %239
  %245 = extractvalue { i32, i1 } %241, 0, !nosanitize !45
  store i32 %245, ptr %3, align 4, !tbaa !75
  %246 = load i32, ptr %10, align 4, !tbaa !76
  %247 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %245, i32 %246), !nosanitize !45
  %248 = extractvalue { i32, i1 } %247, 1, !nosanitize !45
  br i1 %248, label %249, label %250, !prof !46, !nosanitize !45

249:                                              ; preds = %244
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

250:                                              ; preds = %244
  %251 = extractvalue { i32, i1 } %247, 0, !nosanitize !45
  %252 = icmp ugt i32 %251, 2
  br i1 %252, label %253, label %316

253:                                              ; preds = %250
  %254 = load i32, ptr %6, align 4, !tbaa !73
  %255 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %254, i32 %246), !nosanitize !45
  %256 = extractvalue { i32, i1 } %255, 0, !nosanitize !45
  %257 = extractvalue { i32, i1 } %255, 1, !nosanitize !45
  br i1 %257, label %258, label %259, !prof !46, !nosanitize !45

258:                                              ; preds = %253
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

259:                                              ; preds = %253
  %260 = load ptr, ptr %7, align 8, !tbaa !34
  %261 = zext i32 %256 to i64
  %262 = getelementptr inbounds nuw i8, ptr %260, i64 %261
  %263 = load i8, ptr %262, align 1, !tbaa !8
  %264 = zext i8 %263 to i32
  store i32 %264, ptr %15, align 8, !tbaa !80
  %265 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %256, i32 1), !nosanitize !45
  %266 = extractvalue { i32, i1 } %265, 1, !nosanitize !45
  br i1 %266, label %267, label %268, !prof !46, !nosanitize !45

267:                                              ; preds = %259
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

268:                                              ; preds = %259
  %269 = extractvalue { i32, i1 } %265, 0, !nosanitize !45
  %270 = load i32, ptr %16, align 8, !tbaa !53
  %271 = shl i32 %264, %270
  %272 = zext i32 %269 to i64
  %273 = getelementptr inbounds nuw i8, ptr %260, i64 %272
  %274 = load i8, ptr %273, align 1, !tbaa !8
  %275 = zext i8 %274 to i32
  %276 = xor i32 %271, %275
  %277 = load i32, ptr %17, align 4, !tbaa !52
  %278 = and i32 %276, %277
  store i32 %278, ptr %15, align 8, !tbaa !80
  br label %279

279:                                              ; preds = %312, %268
  %280 = phi i32 [ %278, %268 ], [ %297, %312 ]
  %281 = phi i32 [ %246, %268 ], [ %308, %312 ]
  %282 = phi i32 [ %256, %268 ], [ %313, %312 ]
  %283 = icmp eq i32 %281, 0
  br i1 %283, label %316, label %284

284:                                              ; preds = %279
  %285 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %282, i32 3), !nosanitize !45
  %286 = extractvalue { i32, i1 } %285, 1, !nosanitize !45
  br i1 %286, label %287, label %288, !prof !46, !nosanitize !45

287:                                              ; preds = %284
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

288:                                              ; preds = %284
  %289 = shl i32 %280, %270
  %290 = extractvalue { i32, i1 } %285, 0, !nosanitize !45
  %291 = add i32 %290, -1
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds nuw i8, ptr %260, i64 %292
  %294 = load i8, ptr %293, align 1, !tbaa !8
  %295 = zext i8 %294 to i32
  %296 = xor i32 %289, %295
  %297 = and i32 %296, %277
  store i32 %297, ptr %15, align 8, !tbaa !80
  %298 = load ptr, ptr %12, align 8, !tbaa !37
  %299 = zext i32 %297 to i64
  %300 = getelementptr inbounds nuw [2 x i8], ptr %298, i64 %299
  %301 = load i16, ptr %300, align 2, !tbaa !62
  %302 = load ptr, ptr %13, align 8, !tbaa !35
  %303 = load i32, ptr %18, align 8, !tbaa !33
  %304 = and i32 %303, %282
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds nuw [2 x i8], ptr %302, i64 %305
  store i16 %301, ptr %306, align 2, !tbaa !62
  %307 = trunc i32 %282 to i16
  store i16 %307, ptr %300, align 2, !tbaa !62
  %308 = add i32 %281, -1
  store i32 %308, ptr %10, align 4, !tbaa !76
  %309 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %245, i32 %308), !nosanitize !45
  %310 = extractvalue { i32, i1 } %309, 1, !nosanitize !45
  br i1 %310, label %311, label %312, !prof !46, !nosanitize !45

311:                                              ; preds = %288
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

312:                                              ; preds = %288
  %313 = add nuw i32 %282, 1
  %314 = extractvalue { i32, i1 } %309, 0, !nosanitize !45
  %315 = icmp ult i32 %314, 3
  br i1 %315, label %316, label %279, !llvm.loop !91

316:                                              ; preds = %312, %279, %250
  %317 = icmp ult i32 %245, 262
  br i1 %317, label %318, label %323

318:                                              ; preds = %316
  %319 = load ptr, ptr %0, align 8, !tbaa !20
  %320 = getelementptr inbounds nuw i8, ptr %319, i64 8
  %321 = load i32, ptr %320, align 8, !tbaa !81
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %39, !llvm.loop !92

323:                                              ; preds = %318, %316, %192
  %324 = phi i32 [ %245, %318 ], [ %245, %316 ], [ %193, %192 ]
  %325 = load i64, ptr %19, align 8, !tbaa !38
  %326 = load i64, ptr %5, align 8, !tbaa !61
  %327 = icmp ult i64 %325, %326
  br i1 %327, label %328, label %367

328:                                              ; preds = %323
  %329 = load i32, ptr %6, align 4, !tbaa !73
  %330 = zext i32 %329 to i64
  %331 = zext i32 %324 to i64
  %332 = add nuw nsw i64 %331, %330
  %333 = icmp ult i64 %325, %332
  br i1 %333, label %334, label %344

334:                                              ; preds = %328
  %335 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %326, i64 %332), !nosanitize !45
  %336 = extractvalue { i64, i1 } %335, 1, !nosanitize !45
  br i1 %336, label %337, label %338, !prof !46, !nosanitize !45

337:                                              ; preds = %334
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

338:                                              ; preds = %334
  %339 = extractvalue { i64, i1 } %335, 0, !nosanitize !45
  %340 = tail call i64 @llvm.umin.i64(i64 %339, i64 258)
  %341 = load ptr, ptr %7, align 8, !tbaa !34
  %342 = getelementptr inbounds nuw i8, ptr %341, i64 %332
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %342, i8 0, i64 %340, i1 false)
  %343 = add nuw nsw i64 %340, %332
  br label %364

344:                                              ; preds = %328
  %345 = add nuw nsw i64 %332, 258
  %346 = icmp ult i64 %325, %345
  br i1 %346, label %347, label %367

347:                                              ; preds = %344
  %348 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %326, i64 %325), !nosanitize !45
  %349 = extractvalue { i64, i1 } %348, 1, !nosanitize !45
  br i1 %349, label %350, label %351, !prof !46, !nosanitize !45

350:                                              ; preds = %347
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

351:                                              ; preds = %347
  %352 = sub nuw nsw i64 %345, %325
  %353 = extractvalue { i64, i1 } %348, 0, !nosanitize !45
  %354 = tail call i64 @llvm.umin.i64(i64 %352, i64 %353)
  %355 = load ptr, ptr %7, align 8, !tbaa !34
  %356 = getelementptr inbounds nuw i8, ptr %355, i64 %325
  %357 = and i64 %354, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %356, i8 0, i64 %357, i1 false)
  %358 = load i64, ptr %19, align 8, !tbaa !38
  %359 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %358, i64 %354), !nosanitize !45
  %360 = extractvalue { i64, i1 } %359, 1, !nosanitize !45
  br i1 %360, label %361, label %362, !prof !46, !nosanitize !45

361:                                              ; preds = %351
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

362:                                              ; preds = %351
  %363 = extractvalue { i64, i1 } %359, 0, !nosanitize !45
  br label %364

364:                                              ; preds = %362, %338
  %365 = phi i64 [ %343, %338 ], [ %363, %362 ]
  store i64 %365, ptr %19, align 8, !tbaa !38
  %366 = load i32, ptr %3, align 4, !tbaa !75
  br label %367

367:                                              ; preds = %323, %344, %364
  %368 = phi i32 [ %324, %323 ], [ %324, %344 ], [ %366, %364 ]
  %369 = icmp ult i32 %368, 262
  %370 = and i1 %20, %369
  br i1 %370, label %979, label %371

371:                                              ; preds = %367
  %372 = icmp eq i32 %368, 0
  br i1 %372, label %848, label %373

373:                                              ; preds = %371
  %374 = icmp ugt i32 %368, 2
  br i1 %374, label %375, label %574

375:                                              ; preds = %33, %373
  %376 = phi i32 [ %368, %373 ], [ %34, %33 ]
  %377 = load i32, ptr %6, align 4, !tbaa !73
  %378 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %377, i32 2), !nosanitize !45
  %379 = extractvalue { i32, i1 } %378, 1, !nosanitize !45
  br i1 %379, label %380, label %381, !prof !46, !nosanitize !45

380:                                              ; preds = %375
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

381:                                              ; preds = %375
  %382 = extractvalue { i32, i1 } %378, 0, !nosanitize !45
  %383 = load ptr, ptr %7, align 8, !tbaa !34
  %384 = load i32, ptr %15, align 8, !tbaa !80
  %385 = load i32, ptr %16, align 8, !tbaa !53
  %386 = shl i32 %384, %385
  %387 = zext i32 %382 to i64
  %388 = getelementptr inbounds nuw i8, ptr %383, i64 %387
  %389 = load i8, ptr %388, align 1, !tbaa !8
  %390 = zext i8 %389 to i32
  %391 = xor i32 %386, %390
  %392 = load i32, ptr %17, align 4, !tbaa !52
  %393 = and i32 %391, %392
  store i32 %393, ptr %15, align 8, !tbaa !80
  %394 = load ptr, ptr %12, align 8, !tbaa !37
  %395 = zext i32 %393 to i64
  %396 = getelementptr inbounds nuw [2 x i8], ptr %394, i64 %395
  %397 = load i16, ptr %396, align 2, !tbaa !62
  %398 = load ptr, ptr %13, align 8, !tbaa !35
  %399 = load i32, ptr %18, align 8, !tbaa !33
  %400 = and i32 %399, %377
  %401 = zext i32 %400 to i64
  %402 = getelementptr inbounds nuw [2 x i8], ptr %398, i64 %401
  store i16 %397, ptr %402, align 2, !tbaa !62
  %403 = zext i16 %397 to i32
  %404 = trunc i32 %377 to i16
  store i16 %404, ptr %396, align 2, !tbaa !62
  %405 = icmp eq i16 %397, 0
  br i1 %405, label %574, label %406

406:                                              ; preds = %381
  %407 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %377, i32 %403), !nosanitize !45
  %408 = extractvalue { i32, i1 } %407, 0, !nosanitize !45
  %409 = extractvalue { i32, i1 } %407, 1, !nosanitize !45
  br i1 %409, label %410, label %411, !prof !46, !nosanitize !45

410:                                              ; preds = %406
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

411:                                              ; preds = %406
  %412 = load i32, ptr %4, align 8, !tbaa !32
  %413 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %412, i32 262), !nosanitize !45
  %414 = extractvalue { i32, i1 } %413, 1, !nosanitize !45
  br i1 %414, label %415, label %416, !prof !46, !nosanitize !45

415:                                              ; preds = %411
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

416:                                              ; preds = %411
  %417 = extractvalue { i32, i1 } %413, 0, !nosanitize !45
  %418 = icmp ugt i32 %408, %417
  br i1 %418, label %574, label %419

419:                                              ; preds = %416
  %420 = zext i32 %377 to i64
  %421 = getelementptr inbounds nuw i8, ptr %383, i64 %420
  %422 = load i32, ptr %21, align 8, !tbaa !70
  %423 = load i32, ptr %22, align 8, !tbaa !77
  %424 = load i32, ptr %23, align 4, !tbaa !72
  %425 = tail call i32 @llvm.usub.sat.i32(i32 %377, i32 %417)
  %426 = getelementptr inbounds nuw i8, ptr %421, i64 258
  %427 = sext i32 %423 to i64
  %428 = getelementptr i8, ptr %421, i64 %427
  %429 = getelementptr i8, ptr %428, i64 -1
  %430 = load i8, ptr %429, align 1, !tbaa !8
  %431 = load i8, ptr %428, align 1, !tbaa !8
  %432 = load i32, ptr %24, align 4, !tbaa !68
  %433 = icmp ult i32 %423, %432
  %434 = lshr i32 %424, 2
  %435 = select i1 %433, i32 %424, i32 %434
  %436 = tail call i32 @llvm.umin.i32(i32 %422, i32 %376)
  %437 = getelementptr inbounds nuw i8, ptr %421, i64 1
  %438 = ptrtoint ptr %426 to i64
  br label %439

439:                                              ; preds = %568, %419
  %440 = phi i32 [ %423, %419 ], [ %555, %568 ]
  %441 = phi i32 [ %435, %419 ], [ %569, %568 ]
  %442 = phi i32 [ %403, %419 ], [ %562, %568 ]
  %443 = phi i8 [ %430, %419 ], [ %556, %568 ]
  %444 = phi i8 [ %431, %419 ], [ %557, %568 ]
  %445 = zext nneg i32 %442 to i64
  %446 = getelementptr inbounds nuw i8, ptr %383, i64 %445
  %447 = sext i32 %440 to i64
  %448 = getelementptr inbounds i8, ptr %446, i64 %447
  %449 = load i8, ptr %448, align 1, !tbaa !8
  %450 = icmp eq i8 %449, %444
  br i1 %450, label %451, label %554

451:                                              ; preds = %439
  %452 = getelementptr i8, ptr %448, i64 -1
  %453 = load i8, ptr %452, align 1, !tbaa !8
  %454 = icmp eq i8 %453, %443
  br i1 %454, label %455, label %554

455:                                              ; preds = %451
  %456 = load i8, ptr %446, align 1, !tbaa !8
  %457 = load i8, ptr %421, align 1, !tbaa !8
  %458 = icmp eq i8 %456, %457
  br i1 %458, label %459, label %554

459:                                              ; preds = %455
  %460 = getelementptr inbounds nuw i8, ptr %446, i64 1
  %461 = load i8, ptr %460, align 1, !tbaa !8
  %462 = load i8, ptr %437, align 1, !tbaa !8
  %463 = icmp eq i8 %461, %462
  br i1 %463, label %464, label %554

464:                                              ; preds = %459
  %465 = getelementptr inbounds nuw i8, ptr %446, i64 2
  br label %466

466:                                              ; preds = %511, %464
  %467 = phi ptr [ %465, %464 ], [ %515, %511 ]
  %468 = phi i64 [ 2, %464 ], [ %512, %511 ]
  %469 = getelementptr inbounds nuw i8, ptr %421, i64 %468
  %470 = getelementptr inbounds nuw i8, ptr %469, i64 1
  %471 = load i8, ptr %470, align 1, !tbaa !8
  %472 = getelementptr inbounds nuw i8, ptr %467, i64 1
  %473 = load i8, ptr %472, align 1, !tbaa !8
  %474 = icmp eq i8 %471, %473
  br i1 %474, label %475, label %520

475:                                              ; preds = %466
  %476 = getelementptr inbounds nuw i8, ptr %469, i64 2
  %477 = load i8, ptr %476, align 1, !tbaa !8
  %478 = getelementptr inbounds nuw i8, ptr %467, i64 2
  %479 = load i8, ptr %478, align 1, !tbaa !8
  %480 = icmp eq i8 %477, %479
  br i1 %480, label %481, label %522

481:                                              ; preds = %475
  %482 = getelementptr inbounds nuw i8, ptr %469, i64 3
  %483 = load i8, ptr %482, align 1, !tbaa !8
  %484 = getelementptr inbounds nuw i8, ptr %467, i64 3
  %485 = load i8, ptr %484, align 1, !tbaa !8
  %486 = icmp eq i8 %483, %485
  br i1 %486, label %487, label %524

487:                                              ; preds = %481
  %488 = getelementptr inbounds nuw i8, ptr %469, i64 4
  %489 = load i8, ptr %488, align 1, !tbaa !8
  %490 = getelementptr inbounds nuw i8, ptr %467, i64 4
  %491 = load i8, ptr %490, align 1, !tbaa !8
  %492 = icmp eq i8 %489, %491
  br i1 %492, label %493, label %526

493:                                              ; preds = %487
  %494 = getelementptr inbounds nuw i8, ptr %469, i64 5
  %495 = load i8, ptr %494, align 1, !tbaa !8
  %496 = getelementptr inbounds nuw i8, ptr %467, i64 5
  %497 = load i8, ptr %496, align 1, !tbaa !8
  %498 = icmp eq i8 %495, %497
  br i1 %498, label %499, label %528

499:                                              ; preds = %493
  %500 = getelementptr inbounds nuw i8, ptr %469, i64 6
  %501 = load i8, ptr %500, align 1, !tbaa !8
  %502 = getelementptr inbounds nuw i8, ptr %467, i64 6
  %503 = load i8, ptr %502, align 1, !tbaa !8
  %504 = icmp eq i8 %501, %503
  br i1 %504, label %505, label %530

505:                                              ; preds = %499
  %506 = getelementptr inbounds nuw i8, ptr %469, i64 7
  %507 = load i8, ptr %506, align 1, !tbaa !8
  %508 = getelementptr inbounds nuw i8, ptr %467, i64 7
  %509 = load i8, ptr %508, align 1, !tbaa !8
  %510 = icmp eq i8 %507, %509
  br i1 %510, label %511, label %532

511:                                              ; preds = %505
  %512 = add nuw nsw i64 %468, 8
  %513 = getelementptr inbounds nuw i8, ptr %421, i64 %512
  %514 = load i8, ptr %513, align 1, !tbaa !8
  %515 = getelementptr inbounds nuw i8, ptr %467, i64 8
  %516 = load i8, ptr %515, align 1, !tbaa !8
  %517 = icmp eq i8 %514, %516
  %518 = icmp samesign ult i64 %468, 250
  %519 = select i1 %517, i1 %518, i1 false
  br i1 %519, label %466, label %534, !llvm.loop !152

520:                                              ; preds = %466
  %521 = getelementptr inbounds nuw i8, ptr %469, i64 1
  br label %536

522:                                              ; preds = %475
  %523 = getelementptr inbounds nuw i8, ptr %469, i64 2
  br label %536

524:                                              ; preds = %481
  %525 = getelementptr inbounds nuw i8, ptr %469, i64 3
  br label %536

526:                                              ; preds = %487
  %527 = getelementptr inbounds nuw i8, ptr %469, i64 4
  br label %536

528:                                              ; preds = %493
  %529 = getelementptr inbounds nuw i8, ptr %469, i64 5
  br label %536

530:                                              ; preds = %499
  %531 = getelementptr inbounds nuw i8, ptr %469, i64 6
  br label %536

532:                                              ; preds = %505
  %533 = getelementptr inbounds nuw i8, ptr %469, i64 7
  br label %536

534:                                              ; preds = %511
  %535 = getelementptr inbounds nuw i8, ptr %421, i64 %512
  br label %536

536:                                              ; preds = %534, %532, %530, %528, %526, %524, %522, %520
  %537 = phi ptr [ %523, %522 ], [ %525, %524 ], [ %521, %520 ], [ %533, %532 ], [ %531, %530 ], [ %529, %528 ], [ %527, %526 ], [ %535, %534 ]
  %538 = ptrtoint ptr %537 to i64
  %539 = sub i64 %538, %438
  %540 = trunc i64 %539 to i32
  %541 = add i32 %540, 258
  %542 = icmp sgt i32 %541, %440
  br i1 %542, label %543, label %554

543:                                              ; preds = %536
  store i32 %442, ptr %8, align 8, !tbaa !83
  %544 = icmp slt i32 %541, %436
  br i1 %544, label %545, label %571

545:                                              ; preds = %543
  %546 = shl i64 %539, 32
  %547 = add i64 %546, 1103806595072
  %548 = ashr exact i64 %547, 32
  %549 = getelementptr inbounds i8, ptr %421, i64 %548
  %550 = load i8, ptr %549, align 1, !tbaa !8
  %551 = sext i32 %541 to i64
  %552 = getelementptr inbounds i8, ptr %421, i64 %551
  %553 = load i8, ptr %552, align 1, !tbaa !8
  br label %554

554:                                              ; preds = %545, %536, %459, %455, %451, %439
  %555 = phi i32 [ %440, %439 ], [ %440, %451 ], [ %440, %455 ], [ %440, %459 ], [ %541, %545 ], [ %440, %536 ]
  %556 = phi i8 [ %443, %439 ], [ %443, %451 ], [ %443, %455 ], [ %443, %459 ], [ %550, %545 ], [ %443, %536 ]
  %557 = phi i8 [ %444, %439 ], [ %444, %451 ], [ %444, %455 ], [ %444, %459 ], [ %553, %545 ], [ %444, %536 ]
  %558 = and i32 %442, %399
  %559 = zext nneg i32 %558 to i64
  %560 = getelementptr inbounds nuw [2 x i8], ptr %398, i64 %559
  %561 = load i16, ptr %560, align 2, !tbaa !62
  %562 = zext i16 %561 to i32
  %563 = icmp ult i32 %425, %562
  br i1 %563, label %564, label %571

564:                                              ; preds = %554
  %565 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %441, i32 1), !nosanitize !45
  %566 = extractvalue { i32, i1 } %565, 1, !nosanitize !45
  br i1 %566, label %567, label %568, !prof !46, !nosanitize !45

567:                                              ; preds = %564
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

568:                                              ; preds = %564
  %569 = extractvalue { i32, i1 } %565, 0, !nosanitize !45
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %571, label %439, !llvm.loop !153

571:                                              ; preds = %543, %554, %568
  %572 = phi i32 [ %555, %568 ], [ %555, %554 ], [ %541, %543 ]
  %573 = tail call i32 @llvm.umin.i32(i32 %572, i32 %376)
  store i32 %573, ptr %25, align 8, !tbaa !78
  br label %576

574:                                              ; preds = %381, %416, %373
  %575 = load i32, ptr %25, align 8, !tbaa !78
  br label %576

576:                                              ; preds = %574, %571
  %577 = phi i32 [ %575, %574 ], [ %573, %571 ]
  %578 = icmp ugt i32 %577, 2
  br i1 %578, label %579, label %722

579:                                              ; preds = %576
  %580 = trunc i32 %577 to i8
  %581 = add i8 %580, -3
  %582 = load i32, ptr %6, align 4, !tbaa !73
  %583 = load i32, ptr %8, align 8, !tbaa !83
  %584 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %582, i32 %583), !nosanitize !45
  %585 = extractvalue { i32, i1 } %584, 1, !nosanitize !45
  br i1 %585, label %586, label %587, !prof !46, !nosanitize !45

586:                                              ; preds = %579
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

587:                                              ; preds = %579
  %588 = extractvalue { i32, i1 } %584, 0, !nosanitize !45
  %589 = trunc i32 %588 to i16
  %590 = load i32, ptr %27, align 4, !tbaa !139
  %591 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %590, i32 1), !nosanitize !45
  %592 = extractvalue { i32, i1 } %591, 1, !nosanitize !45
  br i1 %592, label %593, label %594, !prof !46, !nosanitize !45

593:                                              ; preds = %587
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

594:                                              ; preds = %587
  %595 = extractvalue { i32, i1 } %591, 0, !nosanitize !45
  %596 = load ptr, ptr %26, align 8, !tbaa !44
  %597 = trunc i32 %588 to i8
  store i32 %595, ptr %27, align 4, !tbaa !139
  %598 = zext i32 %590 to i64
  %599 = getelementptr inbounds nuw i8, ptr %596, i64 %598
  store i8 %597, ptr %599, align 1, !tbaa !8
  %600 = load i32, ptr %27, align 4, !tbaa !139
  %601 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %600, i32 1), !nosanitize !45
  %602 = extractvalue { i32, i1 } %601, 1, !nosanitize !45
  br i1 %602, label %603, label %604, !prof !46, !nosanitize !45

603:                                              ; preds = %594
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

604:                                              ; preds = %594
  %605 = extractvalue { i32, i1 } %601, 0, !nosanitize !45
  %606 = load ptr, ptr %26, align 8, !tbaa !44
  %607 = lshr i32 %588, 8
  %608 = trunc i32 %607 to i8
  store i32 %605, ptr %27, align 4, !tbaa !139
  %609 = zext i32 %600 to i64
  %610 = getelementptr inbounds nuw i8, ptr %606, i64 %609
  store i8 %608, ptr %610, align 1, !tbaa !8
  %611 = load i32, ptr %27, align 4, !tbaa !139
  %612 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %611, i32 1), !nosanitize !45
  %613 = extractvalue { i32, i1 } %612, 1, !nosanitize !45
  br i1 %613, label %614, label %615, !prof !46, !nosanitize !45

614:                                              ; preds = %604
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

615:                                              ; preds = %604
  %616 = extractvalue { i32, i1 } %612, 0, !nosanitize !45
  %617 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %616, ptr %27, align 4, !tbaa !139
  %618 = zext i32 %611 to i64
  %619 = getelementptr inbounds nuw i8, ptr %617, i64 %618
  store i8 %581, ptr %619, align 1, !tbaa !8
  %620 = add i16 %589, -1
  %621 = zext i8 %581 to i64
  %622 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %621
  %623 = load i8, ptr %622, align 1, !tbaa !8
  %624 = zext i8 %623 to i64
  %625 = getelementptr [4 x i8], ptr %30, i64 %624
  %626 = load i16, ptr %625, align 4, !tbaa !8
  %627 = add i16 %626, 1
  store i16 %627, ptr %625, align 4, !tbaa !8
  %628 = icmp ult i16 %620, 256
  br i1 %628, label %629, label %632

629:                                              ; preds = %615
  %630 = zext nneg i16 %620 to i64
  %631 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %630
  br label %637

632:                                              ; preds = %615
  %633 = lshr i16 %620, 7
  %634 = zext nneg i16 %633 to i64
  %635 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %634
  %636 = getelementptr inbounds nuw i8, ptr %635, i64 256
  br label %637

637:                                              ; preds = %632, %629
  %638 = phi ptr [ %631, %629 ], [ %636, %632 ]
  %639 = load i8, ptr %638, align 1, !tbaa !8
  %640 = zext i8 %639 to i64
  %641 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %640
  %642 = load i16, ptr %641, align 4, !tbaa !8
  %643 = add i16 %642, 1
  store i16 %643, ptr %641, align 4, !tbaa !8
  %644 = load i32, ptr %27, align 4, !tbaa !139
  %645 = load i32, ptr %29, align 8, !tbaa !47
  %646 = icmp eq i32 %644, %645
  %647 = load i32, ptr %25, align 8, !tbaa !78
  %648 = load i32, ptr %3, align 4, !tbaa !75
  %649 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %648, i32 %647), !nosanitize !45
  %650 = extractvalue { i32, i1 } %649, 1, !nosanitize !45
  br i1 %650, label %651, label %652, !prof !46, !nosanitize !45

651:                                              ; preds = %637
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

652:                                              ; preds = %637
  %653 = extractvalue { i32, i1 } %649, 0, !nosanitize !45
  store i32 %653, ptr %3, align 4, !tbaa !75
  %654 = load i32, ptr %32, align 8, !tbaa !66
  %655 = icmp ule i32 %647, %654
  %656 = icmp ugt i32 %653, 2
  %657 = select i1 %655, i1 %656, i1 false
  br i1 %657, label %658, label %707

658:                                              ; preds = %652
  %659 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %647, i32 1), !nosanitize !45
  %660 = extractvalue { i32, i1 } %659, 1, !nosanitize !45
  br i1 %660, label %661, label %662, !prof !46, !nosanitize !45

661:                                              ; preds = %658
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

662:                                              ; preds = %658
  %663 = extractvalue { i32, i1 } %659, 0, !nosanitize !45
  store i32 %663, ptr %25, align 8, !tbaa !78
  %664 = load i32, ptr %6, align 4, !tbaa !73
  br label %665

665:                                              ; preds = %702, %662
  %666 = phi i32 [ %703, %702 ], [ %663, %662 ]
  %667 = phi i32 [ %672, %702 ], [ %664, %662 ]
  %668 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %667, i32 1), !nosanitize !45
  %669 = extractvalue { i32, i1 } %668, 1, !nosanitize !45
  br i1 %669, label %670, label %671, !prof !46, !nosanitize !45

670:                                              ; preds = %665
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

671:                                              ; preds = %665
  %672 = extractvalue { i32, i1 } %668, 0, !nosanitize !45
  store i32 %672, ptr %6, align 4, !tbaa !73
  %673 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %672, i32 2), !nosanitize !45
  %674 = extractvalue { i32, i1 } %673, 1, !nosanitize !45
  br i1 %674, label %675, label %676, !prof !46, !nosanitize !45

675:                                              ; preds = %671
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

676:                                              ; preds = %671
  %677 = extractvalue { i32, i1 } %673, 0, !nosanitize !45
  %678 = load ptr, ptr %7, align 8, !tbaa !34
  %679 = load i32, ptr %15, align 8, !tbaa !80
  %680 = load i32, ptr %16, align 8, !tbaa !53
  %681 = shl i32 %679, %680
  %682 = zext i32 %677 to i64
  %683 = getelementptr inbounds nuw i8, ptr %678, i64 %682
  %684 = load i8, ptr %683, align 1, !tbaa !8
  %685 = zext i8 %684 to i32
  %686 = xor i32 %681, %685
  %687 = load i32, ptr %17, align 4, !tbaa !52
  %688 = and i32 %686, %687
  store i32 %688, ptr %15, align 8, !tbaa !80
  %689 = load ptr, ptr %12, align 8, !tbaa !37
  %690 = zext i32 %688 to i64
  %691 = getelementptr inbounds nuw [2 x i8], ptr %689, i64 %690
  %692 = load i16, ptr %691, align 2, !tbaa !62
  %693 = load ptr, ptr %13, align 8, !tbaa !35
  %694 = load i32, ptr %18, align 8, !tbaa !33
  %695 = and i32 %694, %672
  %696 = zext i32 %695 to i64
  %697 = getelementptr inbounds nuw [2 x i8], ptr %693, i64 %696
  store i16 %692, ptr %697, align 2, !tbaa !62
  %698 = trunc i32 %672 to i16
  store i16 %698, ptr %691, align 2, !tbaa !62
  %699 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %666, i32 1), !nosanitize !45
  %700 = extractvalue { i32, i1 } %699, 1, !nosanitize !45
  br i1 %700, label %701, label %702, !prof !46, !nosanitize !45

701:                                              ; preds = %676
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

702:                                              ; preds = %676
  %703 = extractvalue { i32, i1 } %699, 0, !nosanitize !45
  store i32 %703, ptr %25, align 8, !tbaa !78
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %705, label %665, !llvm.loop !154

705:                                              ; preds = %702
  %706 = add nuw i32 %672, 1
  store i32 %706, ptr %6, align 4, !tbaa !73
  br i1 %646, label %786, label %774

707:                                              ; preds = %652
  %708 = load i32, ptr %6, align 4, !tbaa !73
  %709 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %708, i32 %647), !nosanitize !45
  %710 = extractvalue { i32, i1 } %709, 1, !nosanitize !45
  br i1 %710, label %711, label %712, !prof !46, !nosanitize !45

711:                                              ; preds = %707
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

712:                                              ; preds = %707
  %713 = extractvalue { i32, i1 } %709, 0, !nosanitize !45
  store i32 %713, ptr %6, align 4, !tbaa !73
  store i32 0, ptr %25, align 8, !tbaa !78
  %714 = load ptr, ptr %7, align 8, !tbaa !34
  %715 = zext i32 %713 to i64
  %716 = getelementptr inbounds nuw i8, ptr %714, i64 %715
  %717 = load i8, ptr %716, align 1, !tbaa !8
  %718 = zext i8 %717 to i32
  store i32 %718, ptr %15, align 8, !tbaa !80
  %719 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %713, i32 1), !nosanitize !45
  %720 = extractvalue { i32, i1 } %719, 1, !nosanitize !45
  br i1 %720, label %721, label %775, !prof !46, !nosanitize !45

721:                                              ; preds = %712
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

722:                                              ; preds = %576
  %723 = load ptr, ptr %7, align 8, !tbaa !34
  %724 = load i32, ptr %6, align 4, !tbaa !73
  %725 = zext i32 %724 to i64
  %726 = getelementptr inbounds nuw i8, ptr %723, i64 %725
  %727 = load i8, ptr %726, align 1, !tbaa !8
  %728 = load i32, ptr %27, align 4, !tbaa !139
  %729 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %728, i32 1), !nosanitize !45
  %730 = extractvalue { i32, i1 } %729, 1, !nosanitize !45
  br i1 %730, label %731, label %732, !prof !46, !nosanitize !45

731:                                              ; preds = %722
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

732:                                              ; preds = %722
  %733 = extractvalue { i32, i1 } %729, 0, !nosanitize !45
  %734 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %733, ptr %27, align 4, !tbaa !139
  %735 = zext i32 %728 to i64
  %736 = getelementptr inbounds nuw i8, ptr %734, i64 %735
  store i8 0, ptr %736, align 1, !tbaa !8
  %737 = load i32, ptr %27, align 4, !tbaa !139
  %738 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %737, i32 1), !nosanitize !45
  %739 = extractvalue { i32, i1 } %738, 1, !nosanitize !45
  br i1 %739, label %740, label %741, !prof !46, !nosanitize !45

740:                                              ; preds = %732
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

741:                                              ; preds = %732
  %742 = extractvalue { i32, i1 } %738, 0, !nosanitize !45
  %743 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %742, ptr %27, align 4, !tbaa !139
  %744 = zext i32 %737 to i64
  %745 = getelementptr inbounds nuw i8, ptr %743, i64 %744
  store i8 0, ptr %745, align 1, !tbaa !8
  %746 = load i32, ptr %27, align 4, !tbaa !139
  %747 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %746, i32 1), !nosanitize !45
  %748 = extractvalue { i32, i1 } %747, 1, !nosanitize !45
  br i1 %748, label %749, label %750, !prof !46, !nosanitize !45

749:                                              ; preds = %741
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

750:                                              ; preds = %741
  %751 = extractvalue { i32, i1 } %747, 0, !nosanitize !45
  %752 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %751, ptr %27, align 4, !tbaa !139
  %753 = zext i32 %746 to i64
  %754 = getelementptr inbounds nuw i8, ptr %752, i64 %753
  store i8 %727, ptr %754, align 1, !tbaa !8
  %755 = zext i8 %727 to i64
  %756 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %755
  %757 = load i16, ptr %756, align 4, !tbaa !8
  %758 = add i16 %757, 1
  store i16 %758, ptr %756, align 4, !tbaa !8
  %759 = load i32, ptr %27, align 4, !tbaa !139
  %760 = load i32, ptr %29, align 8, !tbaa !47
  %761 = icmp eq i32 %759, %760
  %762 = load i32, ptr %3, align 4, !tbaa !75
  %763 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %762, i32 1), !nosanitize !45
  %764 = extractvalue { i32, i1 } %763, 1, !nosanitize !45
  br i1 %764, label %765, label %766, !prof !46, !nosanitize !45

765:                                              ; preds = %750
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

766:                                              ; preds = %750
  %767 = extractvalue { i32, i1 } %763, 0, !nosanitize !45
  store i32 %767, ptr %3, align 4, !tbaa !75
  %768 = load i32, ptr %6, align 4, !tbaa !73
  %769 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %768, i32 1), !nosanitize !45
  %770 = extractvalue { i32, i1 } %769, 1, !nosanitize !45
  br i1 %770, label %771, label %772, !prof !46, !nosanitize !45

771:                                              ; preds = %766
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

772:                                              ; preds = %766
  %773 = extractvalue { i32, i1 } %769, 0, !nosanitize !45
  store i32 %773, ptr %6, align 4, !tbaa !73
  br i1 %761, label %786, label %774

774:                                              ; preds = %772, %705, %843, %775
  br label %33

775:                                              ; preds = %712
  %776 = extractvalue { i32, i1 } %719, 0, !nosanitize !45
  %777 = load i32, ptr %16, align 8, !tbaa !53
  %778 = shl i32 %718, %777
  %779 = zext i32 %776 to i64
  %780 = getelementptr inbounds nuw i8, ptr %714, i64 %779
  %781 = load i8, ptr %780, align 1, !tbaa !8
  %782 = zext i8 %781 to i32
  %783 = xor i32 %778, %782
  %784 = load i32, ptr %17, align 4, !tbaa !52
  %785 = and i32 %783, %784
  store i32 %785, ptr %15, align 8, !tbaa !80
  br i1 %646, label %786, label %774

786:                                              ; preds = %772, %705, %775
  %787 = phi i32 [ %773, %772 ], [ %706, %705 ], [ %713, %775 ]
  %788 = load i64, ptr %9, align 8, !tbaa !74
  %789 = icmp sgt i64 %788, -1
  br i1 %789, label %790, label %794

790:                                              ; preds = %786
  %791 = load ptr, ptr %7, align 8, !tbaa !34
  %792 = and i64 %788, 4294967295
  %793 = getelementptr inbounds nuw i8, ptr %791, i64 %792
  br label %794

794:                                              ; preds = %786, %790
  %795 = phi ptr [ %793, %790 ], [ null, %786 ]
  %796 = zext i32 %787 to i64
  %797 = sub nsw i64 %796, %788
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %795, i64 noundef %797, i32 noundef 0) #12
  %798 = load i32, ptr %6, align 4, !tbaa !73
  %799 = zext i32 %798 to i64
  store i64 %799, ptr %9, align 8, !tbaa !74
  %800 = load ptr, ptr %0, align 8, !tbaa !20
  %801 = getelementptr inbounds nuw i8, ptr %800, i64 56
  %802 = load ptr, ptr %801, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %802) #12
  %803 = getelementptr inbounds nuw i8, ptr %802, i64 40
  %804 = load i64, ptr %803, align 8, !tbaa !57
  %805 = getelementptr inbounds nuw i8, ptr %800, i64 32
  %806 = load i32, ptr %805, align 8, !tbaa !107
  %807 = zext i32 %806 to i64
  %808 = tail call i64 @llvm.umin.i64(i64 %804, i64 %807)
  %809 = trunc nuw i64 %808 to i32
  %810 = icmp eq i64 %808, 0
  br i1 %810, label %843, label %811

811:                                              ; preds = %794
  %812 = getelementptr inbounds nuw i8, ptr %800, i64 24
  %813 = load ptr, ptr %812, align 8, !tbaa !106
  %814 = getelementptr inbounds nuw i8, ptr %802, i64 32
  %815 = load ptr, ptr %814, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %813, ptr align 1 %815, i64 %808, i1 false)
  %816 = load ptr, ptr %812, align 8, !tbaa !106
  %817 = getelementptr inbounds nuw i8, ptr %816, i64 %808
  store ptr %817, ptr %812, align 8, !tbaa !106
  %818 = load ptr, ptr %814, align 8, !tbaa !58
  %819 = getelementptr inbounds nuw i8, ptr %818, i64 %808
  store ptr %819, ptr %814, align 8, !tbaa !58
  %820 = getelementptr inbounds nuw i8, ptr %800, i64 40
  %821 = load i64, ptr %820, align 8, !tbaa !108
  %822 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %821, i64 %808), !nosanitize !45
  %823 = extractvalue { i64, i1 } %822, 1, !nosanitize !45
  br i1 %823, label %824, label %825, !prof !46, !nosanitize !45

824:                                              ; preds = %811
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

825:                                              ; preds = %811
  %826 = extractvalue { i64, i1 } %822, 0, !nosanitize !45
  store i64 %826, ptr %820, align 8, !tbaa !108
  %827 = load i32, ptr %805, align 8, !tbaa !107
  %828 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %827, i32 %809), !nosanitize !45
  %829 = extractvalue { i32, i1 } %828, 1, !nosanitize !45
  br i1 %829, label %830, label %831, !prof !46, !nosanitize !45

830:                                              ; preds = %825
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

831:                                              ; preds = %825
  %832 = extractvalue { i32, i1 } %828, 0, !nosanitize !45
  store i32 %832, ptr %805, align 8, !tbaa !107
  %833 = load i64, ptr %803, align 8, !tbaa !57
  %834 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %833, i64 %808), !nosanitize !45
  %835 = extractvalue { i64, i1 } %834, 1, !nosanitize !45
  br i1 %835, label %836, label %837, !prof !46, !nosanitize !45

836:                                              ; preds = %831
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

837:                                              ; preds = %831
  %838 = extractvalue { i64, i1 } %834, 0, !nosanitize !45
  store i64 %838, ptr %803, align 8, !tbaa !57
  %839 = icmp eq i64 %838, 0
  br i1 %839, label %840, label %843

840:                                              ; preds = %837
  %841 = getelementptr inbounds nuw i8, ptr %802, i64 16
  %842 = load ptr, ptr %841, align 8, !tbaa !40
  store ptr %842, ptr %814, align 8, !tbaa !58
  br label %843

843:                                              ; preds = %794, %837, %840
  %844 = load ptr, ptr %0, align 8, !tbaa !20
  %845 = getelementptr inbounds nuw i8, ptr %844, i64 32
  %846 = load i32, ptr %845, align 8, !tbaa !107
  %847 = icmp eq i32 %846, 0
  br i1 %847, label %979, label %774

848:                                              ; preds = %371
  %849 = load i32, ptr %6, align 4, !tbaa !73
  %850 = tail call i32 @llvm.umin.i32(i32 %849, i32 2)
  store i32 %850, ptr %10, align 4, !tbaa !76
  %851 = icmp eq i32 %1, 4
  br i1 %851, label %852, label %914

852:                                              ; preds = %848
  %853 = load i64, ptr %9, align 8, !tbaa !74
  %854 = icmp sgt i64 %853, -1
  br i1 %854, label %855, label %859

855:                                              ; preds = %852
  %856 = load ptr, ptr %7, align 8, !tbaa !34
  %857 = and i64 %853, 4294967295
  %858 = getelementptr inbounds nuw i8, ptr %856, i64 %857
  br label %859

859:                                              ; preds = %852, %855
  %860 = phi ptr [ %858, %855 ], [ null, %852 ]
  %861 = zext i32 %849 to i64
  %862 = sub nsw i64 %861, %853
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %860, i64 noundef %862, i32 noundef 1) #12
  %863 = load i32, ptr %6, align 4, !tbaa !73
  %864 = zext i32 %863 to i64
  store i64 %864, ptr %9, align 8, !tbaa !74
  %865 = load ptr, ptr %0, align 8, !tbaa !20
  %866 = getelementptr inbounds nuw i8, ptr %865, i64 56
  %867 = load ptr, ptr %866, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %867) #12
  %868 = getelementptr inbounds nuw i8, ptr %867, i64 40
  %869 = load i64, ptr %868, align 8, !tbaa !57
  %870 = getelementptr inbounds nuw i8, ptr %865, i64 32
  %871 = load i32, ptr %870, align 8, !tbaa !107
  %872 = zext i32 %871 to i64
  %873 = tail call i64 @llvm.umin.i64(i64 %869, i64 %872)
  %874 = trunc nuw i64 %873 to i32
  %875 = icmp eq i64 %873, 0
  br i1 %875, label %908, label %876

876:                                              ; preds = %859
  %877 = getelementptr inbounds nuw i8, ptr %865, i64 24
  %878 = load ptr, ptr %877, align 8, !tbaa !106
  %879 = getelementptr inbounds nuw i8, ptr %867, i64 32
  %880 = load ptr, ptr %879, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %878, ptr align 1 %880, i64 %873, i1 false)
  %881 = load ptr, ptr %877, align 8, !tbaa !106
  %882 = getelementptr inbounds nuw i8, ptr %881, i64 %873
  store ptr %882, ptr %877, align 8, !tbaa !106
  %883 = load ptr, ptr %879, align 8, !tbaa !58
  %884 = getelementptr inbounds nuw i8, ptr %883, i64 %873
  store ptr %884, ptr %879, align 8, !tbaa !58
  %885 = getelementptr inbounds nuw i8, ptr %865, i64 40
  %886 = load i64, ptr %885, align 8, !tbaa !108
  %887 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %886, i64 %873), !nosanitize !45
  %888 = extractvalue { i64, i1 } %887, 1, !nosanitize !45
  br i1 %888, label %889, label %890, !prof !46, !nosanitize !45

889:                                              ; preds = %876
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

890:                                              ; preds = %876
  %891 = extractvalue { i64, i1 } %887, 0, !nosanitize !45
  store i64 %891, ptr %885, align 8, !tbaa !108
  %892 = load i32, ptr %870, align 8, !tbaa !107
  %893 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %892, i32 %874), !nosanitize !45
  %894 = extractvalue { i32, i1 } %893, 1, !nosanitize !45
  br i1 %894, label %895, label %896, !prof !46, !nosanitize !45

895:                                              ; preds = %890
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

896:                                              ; preds = %890
  %897 = extractvalue { i32, i1 } %893, 0, !nosanitize !45
  store i32 %897, ptr %870, align 8, !tbaa !107
  %898 = load i64, ptr %868, align 8, !tbaa !57
  %899 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %898, i64 %873), !nosanitize !45
  %900 = extractvalue { i64, i1 } %899, 1, !nosanitize !45
  br i1 %900, label %901, label %902, !prof !46, !nosanitize !45

901:                                              ; preds = %896
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

902:                                              ; preds = %896
  %903 = extractvalue { i64, i1 } %899, 0, !nosanitize !45
  store i64 %903, ptr %868, align 8, !tbaa !57
  %904 = icmp eq i64 %903, 0
  br i1 %904, label %905, label %908

905:                                              ; preds = %902
  %906 = getelementptr inbounds nuw i8, ptr %867, i64 16
  %907 = load ptr, ptr %906, align 8, !tbaa !40
  store ptr %907, ptr %879, align 8, !tbaa !58
  br label %908

908:                                              ; preds = %859, %902, %905
  %909 = load ptr, ptr %0, align 8, !tbaa !20
  %910 = getelementptr inbounds nuw i8, ptr %909, i64 32
  %911 = load i32, ptr %910, align 8, !tbaa !107
  %912 = icmp eq i32 %911, 0
  %913 = select i1 %912, i32 2, i32 3
  br label %979

914:                                              ; preds = %848
  %915 = load i32, ptr %27, align 4, !tbaa !139
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %978, label %917

917:                                              ; preds = %914
  %918 = load i64, ptr %9, align 8, !tbaa !74
  %919 = icmp sgt i64 %918, -1
  br i1 %919, label %920, label %924

920:                                              ; preds = %917
  %921 = load ptr, ptr %7, align 8, !tbaa !34
  %922 = and i64 %918, 4294967295
  %923 = getelementptr inbounds nuw i8, ptr %921, i64 %922
  br label %924

924:                                              ; preds = %917, %920
  %925 = phi ptr [ %923, %920 ], [ null, %917 ]
  %926 = zext i32 %849 to i64
  %927 = sub nsw i64 %926, %918
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %925, i64 noundef %927, i32 noundef 0) #12
  %928 = load i32, ptr %6, align 4, !tbaa !73
  %929 = zext i32 %928 to i64
  store i64 %929, ptr %9, align 8, !tbaa !74
  %930 = load ptr, ptr %0, align 8, !tbaa !20
  %931 = getelementptr inbounds nuw i8, ptr %930, i64 56
  %932 = load ptr, ptr %931, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %932) #12
  %933 = getelementptr inbounds nuw i8, ptr %932, i64 40
  %934 = load i64, ptr %933, align 8, !tbaa !57
  %935 = getelementptr inbounds nuw i8, ptr %930, i64 32
  %936 = load i32, ptr %935, align 8, !tbaa !107
  %937 = zext i32 %936 to i64
  %938 = tail call i64 @llvm.umin.i64(i64 %934, i64 %937)
  %939 = trunc nuw i64 %938 to i32
  %940 = icmp eq i64 %938, 0
  br i1 %940, label %973, label %941

941:                                              ; preds = %924
  %942 = getelementptr inbounds nuw i8, ptr %930, i64 24
  %943 = load ptr, ptr %942, align 8, !tbaa !106
  %944 = getelementptr inbounds nuw i8, ptr %932, i64 32
  %945 = load ptr, ptr %944, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %943, ptr align 1 %945, i64 %938, i1 false)
  %946 = load ptr, ptr %942, align 8, !tbaa !106
  %947 = getelementptr inbounds nuw i8, ptr %946, i64 %938
  store ptr %947, ptr %942, align 8, !tbaa !106
  %948 = load ptr, ptr %944, align 8, !tbaa !58
  %949 = getelementptr inbounds nuw i8, ptr %948, i64 %938
  store ptr %949, ptr %944, align 8, !tbaa !58
  %950 = getelementptr inbounds nuw i8, ptr %930, i64 40
  %951 = load i64, ptr %950, align 8, !tbaa !108
  %952 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %951, i64 %938), !nosanitize !45
  %953 = extractvalue { i64, i1 } %952, 1, !nosanitize !45
  br i1 %953, label %954, label %955, !prof !46, !nosanitize !45

954:                                              ; preds = %941
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

955:                                              ; preds = %941
  %956 = extractvalue { i64, i1 } %952, 0, !nosanitize !45
  store i64 %956, ptr %950, align 8, !tbaa !108
  %957 = load i32, ptr %935, align 8, !tbaa !107
  %958 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %957, i32 %939), !nosanitize !45
  %959 = extractvalue { i32, i1 } %958, 1, !nosanitize !45
  br i1 %959, label %960, label %961, !prof !46, !nosanitize !45

960:                                              ; preds = %955
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

961:                                              ; preds = %955
  %962 = extractvalue { i32, i1 } %958, 0, !nosanitize !45
  store i32 %962, ptr %935, align 8, !tbaa !107
  %963 = load i64, ptr %933, align 8, !tbaa !57
  %964 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %963, i64 %938), !nosanitize !45
  %965 = extractvalue { i64, i1 } %964, 1, !nosanitize !45
  br i1 %965, label %966, label %967, !prof !46, !nosanitize !45

966:                                              ; preds = %961
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

967:                                              ; preds = %961
  %968 = extractvalue { i64, i1 } %964, 0, !nosanitize !45
  store i64 %968, ptr %933, align 8, !tbaa !57
  %969 = icmp eq i64 %968, 0
  br i1 %969, label %970, label %973

970:                                              ; preds = %967
  %971 = getelementptr inbounds nuw i8, ptr %932, i64 16
  %972 = load ptr, ptr %971, align 8, !tbaa !40
  store ptr %972, ptr %944, align 8, !tbaa !58
  br label %973

973:                                              ; preds = %924, %967, %970
  %974 = load ptr, ptr %0, align 8, !tbaa !20
  %975 = getelementptr inbounds nuw i8, ptr %974, i64 32
  %976 = load i32, ptr %975, align 8, !tbaa !107
  %977 = icmp eq i32 %976, 0
  br i1 %977, label %979, label %978

978:                                              ; preds = %973, %914
  br label %979

979:                                              ; preds = %843, %367, %973, %908, %978
  %980 = phi i32 [ 1, %978 ], [ %913, %908 ], [ 0, %973 ], [ 0, %367 ], [ 0, %843 ]
  ret i32 %980
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
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 188
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

36:                                               ; preds = %761, %2
  %37 = load i32, ptr %3, align 4, !tbaa !75
  %38 = icmp ult i32 %37, 262
  br i1 %38, label %39, label %381

39:                                               ; preds = %36
  %40 = load i32, ptr %4, align 8, !tbaa !32
  %41 = zext i32 %40 to i64
  br label %42

42:                                               ; preds = %321, %39
  %43 = phi i32 [ %248, %321 ], [ %37, %39 ]
  %44 = load i64, ptr %5, align 8, !tbaa !61
  %45 = zext nneg i32 %43 to i64
  %46 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %44, i64 %45), !nosanitize !45
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !45
  br i1 %47, label %48, label %49, !prof !46, !nosanitize !45

48:                                               ; preds = %42
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

49:                                               ; preds = %42
  %50 = extractvalue { i64, i1 } %46, 0, !nosanitize !45
  %51 = load i32, ptr %6, align 4, !tbaa !73
  %52 = zext i32 %51 to i64
  %53 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %50, i64 %52), !nosanitize !45
  %54 = extractvalue { i64, i1 } %53, 1, !nosanitize !45
  br i1 %54, label %55, label %56, !prof !46, !nosanitize !45

55:                                               ; preds = %49
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

56:                                               ; preds = %49
  %57 = extractvalue { i64, i1 } %53, 0, !nosanitize !45
  %58 = trunc i64 %57 to i32
  %59 = load i32, ptr %4, align 8, !tbaa !32
  %60 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %59, i32 262), !nosanitize !45
  %61 = extractvalue { i32, i1 } %60, 1, !nosanitize !45
  br i1 %61, label %62, label %63, !prof !46, !nosanitize !45

62:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

63:                                               ; preds = %56
  %64 = extractvalue { i32, i1 } %60, 0, !nosanitize !45
  %65 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %40, i32 %64), !nosanitize !45
  %66 = extractvalue { i32, i1 } %65, 1, !nosanitize !45
  br i1 %66, label %67, label %68, !prof !46, !nosanitize !45

67:                                               ; preds = %63
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

68:                                               ; preds = %63
  %69 = extractvalue { i32, i1 } %65, 0, !nosanitize !45
  %70 = icmp ult i32 %51, %69
  br i1 %70, label %195, label %71

71:                                               ; preds = %68
  %72 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %40, i32 %58), !nosanitize !45
  %73 = extractvalue { i32, i1 } %72, 1, !nosanitize !45
  br i1 %73, label %74, label %75, !prof !46, !nosanitize !45

74:                                               ; preds = %71
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

75:                                               ; preds = %71
  %76 = extractvalue { i32, i1 } %72, 0, !nosanitize !45
  %77 = load ptr, ptr %7, align 8, !tbaa !34
  %78 = getelementptr inbounds nuw i8, ptr %77, i64 %41
  %79 = zext i32 %76 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %77, ptr align 1 %78, i64 %79, i1 false)
  %80 = load i32, ptr %8, align 8, !tbaa !83
  %81 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %80, i32 %40), !nosanitize !45
  %82 = extractvalue { i32, i1 } %81, 1, !nosanitize !45
  br i1 %82, label %83, label %84, !prof !46, !nosanitize !45

83:                                               ; preds = %75
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

84:                                               ; preds = %75
  %85 = extractvalue { i32, i1 } %81, 0, !nosanitize !45
  store i32 %85, ptr %8, align 8, !tbaa !83
  %86 = load i32, ptr %6, align 4, !tbaa !73
  %87 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %86, i32 %40), !nosanitize !45
  %88 = extractvalue { i32, i1 } %87, 1, !nosanitize !45
  br i1 %88, label %89, label %90, !prof !46, !nosanitize !45

89:                                               ; preds = %84
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

90:                                               ; preds = %84
  %91 = extractvalue { i32, i1 } %87, 0, !nosanitize !45
  store i32 %91, ptr %6, align 4, !tbaa !73
  %92 = load i64, ptr %9, align 8, !tbaa !74
  %93 = sub nsw i64 %92, %41
  store i64 %93, ptr %9, align 8, !tbaa !74
  %94 = load i32, ptr %10, align 4, !tbaa !76
  %95 = icmp ugt i32 %94, %91
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i32 %91, ptr %10, align 4, !tbaa !76
  br label %97

97:                                               ; preds = %96, %90
  %98 = load i32, ptr %4, align 8, !tbaa !32
  %99 = load i32, ptr %11, align 4, !tbaa !36
  %100 = load ptr, ptr %12, align 8, !tbaa !37
  %101 = zext i32 %99 to i64
  %102 = getelementptr inbounds nuw [2 x i8], ptr %100, i64 %101
  %103 = icmp eq i32 %99, 0
  br i1 %103, label %130, label %104, !prof !46, !nosanitize !45

104:                                              ; preds = %97
  %105 = icmp ult i32 %99, 8
  br i1 %105, label %127, label %106

106:                                              ; preds = %104
  %107 = and i64 %101, 4294967288
  %108 = mul nsw i64 %107, -2
  %109 = getelementptr i8, ptr %102, i64 %108
  %110 = trunc nuw i64 %107 to i32
  %111 = sub i32 %99, %110
  %112 = insertelement <8 x i32> poison, i32 %98, i64 0
  %113 = shufflevector <8 x i32> %112, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %114

114:                                              ; preds = %114, %106
  %115 = phi i64 [ 0, %106 ], [ %123, %114 ]
  %116 = mul i64 %115, -2
  %117 = getelementptr i8, ptr %102, i64 %116
  %118 = getelementptr inbounds i8, ptr %117, i64 -16
  %119 = load <8 x i16>, ptr %118, align 2, !tbaa !62
  %120 = zext <8 x i16> %119 to <8 x i32>
  %121 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %120, <8 x i32> %113)
  %122 = trunc nuw <8 x i32> %121 to <8 x i16>
  store <8 x i16> %122, ptr %118, align 2, !tbaa !62
  %123 = add nuw i64 %115, 8
  %124 = icmp eq i64 %123, %107
  br i1 %124, label %125, label %114, !llvm.loop !155

125:                                              ; preds = %114
  %126 = icmp eq i64 %107, %101
  br i1 %126, label %146, label %127

127:                                              ; preds = %104, %125
  %128 = phi ptr [ %102, %104 ], [ %109, %125 ]
  %129 = phi i32 [ %99, %104 ], [ %111, %125 ]
  br label %136

130:                                              ; preds = %97
  %131 = getelementptr inbounds i8, ptr %102, i64 -2
  %132 = load i16, ptr %131, align 2, !tbaa !62
  %133 = zext i16 %132 to i32
  %134 = tail call i32 @llvm.usub.sat.i32(i32 %133, i32 %98)
  %135 = trunc nuw i32 %134 to i16
  store i16 %135, ptr %131, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

136:                                              ; preds = %127, %136
  %137 = phi ptr [ %139, %136 ], [ %128, %127 ]
  %138 = phi i32 [ %144, %136 ], [ %129, %127 ]
  %139 = getelementptr inbounds i8, ptr %137, i64 -2
  %140 = load i16, ptr %139, align 2, !tbaa !62
  %141 = zext i16 %140 to i32
  %142 = tail call i32 @llvm.usub.sat.i32(i32 %141, i32 %98)
  %143 = trunc nuw i32 %142 to i16
  store i16 %143, ptr %139, align 2, !tbaa !62
  %144 = add i32 %138, -1
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %136, !llvm.loop !156

146:                                              ; preds = %136, %125
  %147 = icmp eq i32 %98, 0
  br i1 %147, label %148, label %149, !prof !46, !nosanitize !45

148:                                              ; preds = %146
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

149:                                              ; preds = %146
  %150 = load ptr, ptr %13, align 8, !tbaa !35
  %151 = zext i32 %98 to i64
  %152 = getelementptr inbounds nuw [2 x i8], ptr %150, i64 %151
  %153 = icmp ult i32 %98, 8
  br i1 %153, label %175, label %154

154:                                              ; preds = %149
  %155 = and i64 %151, 4294967288
  %156 = mul nsw i64 %155, -2
  %157 = getelementptr i8, ptr %152, i64 %156
  %158 = trunc nuw i64 %155 to i32
  %159 = sub i32 %98, %158
  %160 = insertelement <8 x i32> poison, i32 %98, i64 0
  %161 = shufflevector <8 x i32> %160, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %162

162:                                              ; preds = %162, %154
  %163 = phi i64 [ 0, %154 ], [ %171, %162 ]
  %164 = mul i64 %163, -2
  %165 = getelementptr i8, ptr %152, i64 %164
  %166 = getelementptr inbounds i8, ptr %165, i64 -16
  %167 = load <8 x i16>, ptr %166, align 2, !tbaa !62
  %168 = zext <8 x i16> %167 to <8 x i32>
  %169 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %168, <8 x i32> %161)
  %170 = trunc nuw <8 x i32> %169 to <8 x i16>
  store <8 x i16> %170, ptr %166, align 2, !tbaa !62
  %171 = add nuw i64 %163, 8
  %172 = icmp eq i64 %171, %155
  br i1 %172, label %173, label %162, !llvm.loop !157

173:                                              ; preds = %162
  %174 = icmp eq i64 %155, %151
  br i1 %174, label %188, label %175

175:                                              ; preds = %149, %173
  %176 = phi ptr [ %152, %149 ], [ %157, %173 ]
  %177 = phi i32 [ %98, %149 ], [ %159, %173 ]
  br label %178

178:                                              ; preds = %175, %178
  %179 = phi ptr [ %181, %178 ], [ %176, %175 ]
  %180 = phi i32 [ %186, %178 ], [ %177, %175 ]
  %181 = getelementptr inbounds i8, ptr %179, i64 -2
  %182 = load i16, ptr %181, align 2, !tbaa !62
  %183 = zext i16 %182 to i32
  %184 = tail call i32 @llvm.usub.sat.i32(i32 %183, i32 %98)
  %185 = trunc nuw i32 %184 to i16
  store i16 %185, ptr %181, align 2, !tbaa !62
  %186 = add i32 %180, -1
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %178, !llvm.loop !158

188:                                              ; preds = %178, %173
  store i32 1, ptr %14, align 8, !tbaa !63
  %189 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %58, i32 %40), !nosanitize !45
  %190 = extractvalue { i32, i1 } %189, 1, !nosanitize !45
  br i1 %190, label %191, label %192, !prof !46, !nosanitize !45

191:                                              ; preds = %188
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

192:                                              ; preds = %188
  %193 = extractvalue { i32, i1 } %189, 0, !nosanitize !45
  %194 = load i32, ptr %3, align 4, !tbaa !75
  br label %195

195:                                              ; preds = %192, %68
  %196 = phi i32 [ %194, %192 ], [ %43, %68 ]
  %197 = phi i32 [ %91, %192 ], [ %51, %68 ]
  %198 = phi i32 [ %193, %192 ], [ %58, %68 ]
  %199 = load ptr, ptr %0, align 8, !tbaa !20
  %200 = getelementptr inbounds nuw i8, ptr %199, i64 8
  %201 = load i32, ptr %200, align 8, !tbaa !81
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %326, label %203

203:                                              ; preds = %195
  %204 = load ptr, ptr %7, align 8, !tbaa !34
  %205 = zext i32 %197 to i64
  %206 = getelementptr inbounds nuw i8, ptr %204, i64 %205
  %207 = zext i32 %196 to i64
  %208 = getelementptr inbounds nuw i8, ptr %206, i64 %207
  %209 = tail call i32 @llvm.umin.i32(i32 %201, i32 %198)
  %210 = icmp eq i32 %198, 0
  br i1 %210, label %242, label %211

211:                                              ; preds = %203
  %212 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %201, i32 %209), !nosanitize !45
  %213 = extractvalue { i32, i1 } %212, 1, !nosanitize !45
  br i1 %213, label %214, label %215, !prof !46, !nosanitize !45

214:                                              ; preds = %211
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

215:                                              ; preds = %211
  %216 = extractvalue { i32, i1 } %212, 0, !nosanitize !45
  store i32 %216, ptr %200, align 8, !tbaa !81
  %217 = load ptr, ptr %199, align 8, !tbaa !82
  %218 = zext i32 %209 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %208, ptr align 1 %217, i64 %218, i1 false)
  %219 = getelementptr inbounds nuw i8, ptr %199, i64 56
  %220 = load ptr, ptr %219, align 8, !tbaa !19
  %221 = getelementptr inbounds nuw i8, ptr %220, i64 48
  %222 = load i32, ptr %221, align 8, !tbaa !30
  switch i32 %222, label %231 [
    i32 1, label %223
    i32 2, label %227
  ]

223:                                              ; preds = %215
  %224 = getelementptr inbounds nuw i8, ptr %199, i64 96
  %225 = load i64, ptr %224, align 8, !tbaa !59
  %226 = tail call i64 @adler32(i64 noundef %225, ptr noundef %208, i32 noundef %209) #12
  store i64 %226, ptr %224, align 8, !tbaa !59
  br label %231

227:                                              ; preds = %215
  %228 = getelementptr inbounds nuw i8, ptr %199, i64 96
  %229 = load i64, ptr %228, align 8, !tbaa !59
  %230 = tail call i64 @crc32(i64 noundef %229, ptr noundef %208, i32 noundef %209) #12
  store i64 %230, ptr %228, align 8, !tbaa !59
  br label %231

231:                                              ; preds = %227, %223, %215
  %232 = load ptr, ptr %199, align 8, !tbaa !82
  %233 = getelementptr inbounds nuw i8, ptr %232, i64 %218
  store ptr %233, ptr %199, align 8, !tbaa !82
  %234 = getelementptr inbounds nuw i8, ptr %199, i64 16
  %235 = load i64, ptr %234, align 8, !tbaa !55
  %236 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %235, i64 %218), !nosanitize !45
  %237 = extractvalue { i64, i1 } %236, 1, !nosanitize !45
  br i1 %237, label %238, label %239, !prof !46, !nosanitize !45

238:                                              ; preds = %231
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

239:                                              ; preds = %231
  %240 = extractvalue { i64, i1 } %236, 0, !nosanitize !45
  store i64 %240, ptr %234, align 8, !tbaa !55
  %241 = load i32, ptr %3, align 4, !tbaa !75
  br label %242

242:                                              ; preds = %239, %203
  %243 = phi i32 [ %196, %203 ], [ %241, %239 ]
  %244 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %243, i32 %209), !nosanitize !45
  %245 = extractvalue { i32, i1 } %244, 1, !nosanitize !45
  br i1 %245, label %246, label %247, !prof !46, !nosanitize !45

246:                                              ; preds = %242
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

247:                                              ; preds = %242
  %248 = extractvalue { i32, i1 } %244, 0, !nosanitize !45
  store i32 %248, ptr %3, align 4, !tbaa !75
  %249 = load i32, ptr %10, align 4, !tbaa !76
  %250 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %248, i32 %249), !nosanitize !45
  %251 = extractvalue { i32, i1 } %250, 1, !nosanitize !45
  br i1 %251, label %252, label %253, !prof !46, !nosanitize !45

252:                                              ; preds = %247
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

253:                                              ; preds = %247
  %254 = extractvalue { i32, i1 } %250, 0, !nosanitize !45
  %255 = icmp ugt i32 %254, 2
  br i1 %255, label %256, label %319

256:                                              ; preds = %253
  %257 = load i32, ptr %6, align 4, !tbaa !73
  %258 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %257, i32 %249), !nosanitize !45
  %259 = extractvalue { i32, i1 } %258, 0, !nosanitize !45
  %260 = extractvalue { i32, i1 } %258, 1, !nosanitize !45
  br i1 %260, label %261, label %262, !prof !46, !nosanitize !45

261:                                              ; preds = %256
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

262:                                              ; preds = %256
  %263 = load ptr, ptr %7, align 8, !tbaa !34
  %264 = zext i32 %259 to i64
  %265 = getelementptr inbounds nuw i8, ptr %263, i64 %264
  %266 = load i8, ptr %265, align 1, !tbaa !8
  %267 = zext i8 %266 to i32
  store i32 %267, ptr %15, align 8, !tbaa !80
  %268 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %259, i32 1), !nosanitize !45
  %269 = extractvalue { i32, i1 } %268, 1, !nosanitize !45
  br i1 %269, label %270, label %271, !prof !46, !nosanitize !45

270:                                              ; preds = %262
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

271:                                              ; preds = %262
  %272 = extractvalue { i32, i1 } %268, 0, !nosanitize !45
  %273 = load i32, ptr %16, align 8, !tbaa !53
  %274 = shl i32 %267, %273
  %275 = zext i32 %272 to i64
  %276 = getelementptr inbounds nuw i8, ptr %263, i64 %275
  %277 = load i8, ptr %276, align 1, !tbaa !8
  %278 = zext i8 %277 to i32
  %279 = xor i32 %274, %278
  %280 = load i32, ptr %17, align 4, !tbaa !52
  %281 = and i32 %279, %280
  store i32 %281, ptr %15, align 8, !tbaa !80
  br label %282

282:                                              ; preds = %315, %271
  %283 = phi i32 [ %281, %271 ], [ %300, %315 ]
  %284 = phi i32 [ %249, %271 ], [ %311, %315 ]
  %285 = phi i32 [ %259, %271 ], [ %316, %315 ]
  %286 = icmp eq i32 %284, 0
  br i1 %286, label %319, label %287

287:                                              ; preds = %282
  %288 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %285, i32 3), !nosanitize !45
  %289 = extractvalue { i32, i1 } %288, 1, !nosanitize !45
  br i1 %289, label %290, label %291, !prof !46, !nosanitize !45

290:                                              ; preds = %287
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

291:                                              ; preds = %287
  %292 = shl i32 %283, %273
  %293 = extractvalue { i32, i1 } %288, 0, !nosanitize !45
  %294 = add i32 %293, -1
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds nuw i8, ptr %263, i64 %295
  %297 = load i8, ptr %296, align 1, !tbaa !8
  %298 = zext i8 %297 to i32
  %299 = xor i32 %292, %298
  %300 = and i32 %299, %280
  store i32 %300, ptr %15, align 8, !tbaa !80
  %301 = load ptr, ptr %12, align 8, !tbaa !37
  %302 = zext i32 %300 to i64
  %303 = getelementptr inbounds nuw [2 x i8], ptr %301, i64 %302
  %304 = load i16, ptr %303, align 2, !tbaa !62
  %305 = load ptr, ptr %13, align 8, !tbaa !35
  %306 = load i32, ptr %18, align 8, !tbaa !33
  %307 = and i32 %306, %285
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds nuw [2 x i8], ptr %305, i64 %308
  store i16 %304, ptr %309, align 2, !tbaa !62
  %310 = trunc i32 %285 to i16
  store i16 %310, ptr %303, align 2, !tbaa !62
  %311 = add i32 %284, -1
  store i32 %311, ptr %10, align 4, !tbaa !76
  %312 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %248, i32 %311), !nosanitize !45
  %313 = extractvalue { i32, i1 } %312, 1, !nosanitize !45
  br i1 %313, label %314, label %315, !prof !46, !nosanitize !45

314:                                              ; preds = %291
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

315:                                              ; preds = %291
  %316 = add nuw i32 %285, 1
  %317 = extractvalue { i32, i1 } %312, 0, !nosanitize !45
  %318 = icmp ult i32 %317, 3
  br i1 %318, label %319, label %282, !llvm.loop !91

319:                                              ; preds = %315, %282, %253
  %320 = icmp ult i32 %248, 262
  br i1 %320, label %321, label %326

321:                                              ; preds = %319
  %322 = load ptr, ptr %0, align 8, !tbaa !20
  %323 = getelementptr inbounds nuw i8, ptr %322, i64 8
  %324 = load i32, ptr %323, align 8, !tbaa !81
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %42, !llvm.loop !92

326:                                              ; preds = %321, %319, %195
  %327 = phi i32 [ %248, %321 ], [ %248, %319 ], [ %196, %195 ]
  %328 = load i64, ptr %19, align 8, !tbaa !38
  %329 = load i64, ptr %5, align 8, !tbaa !61
  %330 = icmp ult i64 %328, %329
  br i1 %330, label %331, label %370

331:                                              ; preds = %326
  %332 = load i32, ptr %6, align 4, !tbaa !73
  %333 = zext i32 %332 to i64
  %334 = zext i32 %327 to i64
  %335 = add nuw nsw i64 %334, %333
  %336 = icmp ult i64 %328, %335
  br i1 %336, label %337, label %347

337:                                              ; preds = %331
  %338 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %329, i64 %335), !nosanitize !45
  %339 = extractvalue { i64, i1 } %338, 1, !nosanitize !45
  br i1 %339, label %340, label %341, !prof !46, !nosanitize !45

340:                                              ; preds = %337
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

341:                                              ; preds = %337
  %342 = extractvalue { i64, i1 } %338, 0, !nosanitize !45
  %343 = tail call i64 @llvm.umin.i64(i64 %342, i64 258)
  %344 = load ptr, ptr %7, align 8, !tbaa !34
  %345 = getelementptr inbounds nuw i8, ptr %344, i64 %335
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %345, i8 0, i64 %343, i1 false)
  %346 = add nuw nsw i64 %343, %335
  br label %367

347:                                              ; preds = %331
  %348 = add nuw nsw i64 %335, 258
  %349 = icmp ult i64 %328, %348
  br i1 %349, label %350, label %370

350:                                              ; preds = %347
  %351 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %329, i64 %328), !nosanitize !45
  %352 = extractvalue { i64, i1 } %351, 1, !nosanitize !45
  br i1 %352, label %353, label %354, !prof !46, !nosanitize !45

353:                                              ; preds = %350
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

354:                                              ; preds = %350
  %355 = sub nuw nsw i64 %348, %328
  %356 = extractvalue { i64, i1 } %351, 0, !nosanitize !45
  %357 = tail call i64 @llvm.umin.i64(i64 %355, i64 %356)
  %358 = load ptr, ptr %7, align 8, !tbaa !34
  %359 = getelementptr inbounds nuw i8, ptr %358, i64 %328
  %360 = and i64 %357, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %359, i8 0, i64 %360, i1 false)
  %361 = load i64, ptr %19, align 8, !tbaa !38
  %362 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %361, i64 %357), !nosanitize !45
  %363 = extractvalue { i64, i1 } %362, 1, !nosanitize !45
  br i1 %363, label %364, label %365, !prof !46, !nosanitize !45

364:                                              ; preds = %354
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

365:                                              ; preds = %354
  %366 = extractvalue { i64, i1 } %362, 0, !nosanitize !45
  br label %367

367:                                              ; preds = %365, %341
  %368 = phi i64 [ %346, %341 ], [ %366, %365 ]
  store i64 %368, ptr %19, align 8, !tbaa !38
  %369 = load i32, ptr %3, align 4, !tbaa !75
  br label %370

370:                                              ; preds = %326, %347, %367
  %371 = phi i32 [ %327, %326 ], [ %327, %347 ], [ %369, %367 ]
  %372 = icmp ult i32 %371, 262
  %373 = and i1 %20, %372
  br i1 %373, label %1134, label %374

374:                                              ; preds = %370
  %375 = icmp eq i32 %371, 0
  br i1 %375, label %957, label %376

376:                                              ; preds = %374
  %377 = icmp ugt i32 %371, 2
  br i1 %377, label %381, label %378

378:                                              ; preds = %376
  %379 = load i32, ptr %21, align 8, !tbaa !78
  store i32 %379, ptr %22, align 8, !tbaa !77
  %380 = load i32, ptr %8, align 8, !tbaa !83
  store i32 %380, ptr %23, align 4, !tbaa !159
  br label %600

381:                                              ; preds = %36, %376
  %382 = phi i32 [ %371, %376 ], [ %37, %36 ]
  %383 = load i32, ptr %6, align 4, !tbaa !73
  %384 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %383, i32 2), !nosanitize !45
  %385 = extractvalue { i32, i1 } %384, 1, !nosanitize !45
  br i1 %385, label %386, label %387, !prof !46, !nosanitize !45

386:                                              ; preds = %381
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

387:                                              ; preds = %381
  %388 = extractvalue { i32, i1 } %384, 0, !nosanitize !45
  %389 = load ptr, ptr %7, align 8, !tbaa !34
  %390 = load i32, ptr %15, align 8, !tbaa !80
  %391 = load i32, ptr %16, align 8, !tbaa !53
  %392 = shl i32 %390, %391
  %393 = zext i32 %388 to i64
  %394 = getelementptr inbounds nuw i8, ptr %389, i64 %393
  %395 = load i8, ptr %394, align 1, !tbaa !8
  %396 = zext i8 %395 to i32
  %397 = xor i32 %392, %396
  %398 = load i32, ptr %17, align 4, !tbaa !52
  %399 = and i32 %397, %398
  store i32 %399, ptr %15, align 8, !tbaa !80
  %400 = load ptr, ptr %12, align 8, !tbaa !37
  %401 = zext i32 %399 to i64
  %402 = getelementptr inbounds nuw [2 x i8], ptr %400, i64 %401
  %403 = load i16, ptr %402, align 2, !tbaa !62
  %404 = load ptr, ptr %13, align 8, !tbaa !35
  %405 = load i32, ptr %18, align 8, !tbaa !33
  %406 = and i32 %405, %383
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds nuw [2 x i8], ptr %404, i64 %407
  store i16 %403, ptr %408, align 2, !tbaa !62
  %409 = zext i16 %403 to i32
  %410 = trunc i32 %383 to i16
  store i16 %410, ptr %402, align 2, !tbaa !62
  %411 = load i32, ptr %21, align 8, !tbaa !78
  store i32 %411, ptr %22, align 8, !tbaa !77
  %412 = load i32, ptr %8, align 8, !tbaa !83
  store i32 %412, ptr %23, align 4, !tbaa !159
  store i32 2, ptr %21, align 8, !tbaa !78
  %413 = icmp eq i16 %403, 0
  br i1 %413, label %604, label %414

414:                                              ; preds = %387
  %415 = load i32, ptr %24, align 8, !tbaa !66
  %416 = icmp ult i32 %411, %415
  br i1 %416, label %417, label %604

417:                                              ; preds = %414
  %418 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %383, i32 %409), !nosanitize !45
  %419 = extractvalue { i32, i1 } %418, 0, !nosanitize !45
  %420 = extractvalue { i32, i1 } %418, 1, !nosanitize !45
  br i1 %420, label %421, label %422, !prof !46, !nosanitize !45

421:                                              ; preds = %417
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

422:                                              ; preds = %417
  %423 = load i32, ptr %4, align 8, !tbaa !32
  %424 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %423, i32 262), !nosanitize !45
  %425 = extractvalue { i32, i1 } %424, 1, !nosanitize !45
  br i1 %425, label %426, label %427, !prof !46, !nosanitize !45

426:                                              ; preds = %422
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

427:                                              ; preds = %422
  %428 = extractvalue { i32, i1 } %424, 0, !nosanitize !45
  %429 = icmp ugt i32 %419, %428
  br i1 %429, label %604, label %430

430:                                              ; preds = %427
  %431 = zext i32 %383 to i64
  %432 = getelementptr inbounds nuw i8, ptr %389, i64 %431
  %433 = load i32, ptr %25, align 8, !tbaa !70
  %434 = load i32, ptr %26, align 4, !tbaa !72
  %435 = tail call i32 @llvm.usub.sat.i32(i32 %383, i32 %428)
  %436 = getelementptr inbounds nuw i8, ptr %432, i64 258
  %437 = sext i32 %411 to i64
  %438 = getelementptr i8, ptr %432, i64 %437
  %439 = getelementptr i8, ptr %438, i64 -1
  %440 = load i8, ptr %439, align 1, !tbaa !8
  %441 = load i8, ptr %438, align 1, !tbaa !8
  %442 = load i32, ptr %27, align 4, !tbaa !68
  %443 = icmp ult i32 %411, %442
  %444 = lshr i32 %434, 2
  %445 = select i1 %443, i32 %434, i32 %444
  %446 = tail call i32 @llvm.umin.i32(i32 %433, i32 %382)
  %447 = getelementptr inbounds nuw i8, ptr %432, i64 1
  %448 = ptrtoint ptr %436 to i64
  br label %449

449:                                              ; preds = %580, %430
  %450 = phi i32 [ %412, %430 ], [ %566, %580 ]
  %451 = phi i32 [ %411, %430 ], [ %567, %580 ]
  %452 = phi i32 [ %445, %430 ], [ %581, %580 ]
  %453 = phi i32 [ %409, %430 ], [ %574, %580 ]
  %454 = phi i8 [ %440, %430 ], [ %568, %580 ]
  %455 = phi i8 [ %441, %430 ], [ %569, %580 ]
  %456 = zext nneg i32 %453 to i64
  %457 = getelementptr inbounds nuw i8, ptr %389, i64 %456
  %458 = sext i32 %451 to i64
  %459 = getelementptr inbounds i8, ptr %457, i64 %458
  %460 = load i8, ptr %459, align 1, !tbaa !8
  %461 = icmp eq i8 %460, %455
  br i1 %461, label %462, label %565

462:                                              ; preds = %449
  %463 = getelementptr i8, ptr %459, i64 -1
  %464 = load i8, ptr %463, align 1, !tbaa !8
  %465 = icmp eq i8 %464, %454
  br i1 %465, label %466, label %565

466:                                              ; preds = %462
  %467 = load i8, ptr %457, align 1, !tbaa !8
  %468 = load i8, ptr %432, align 1, !tbaa !8
  %469 = icmp eq i8 %467, %468
  br i1 %469, label %470, label %565

470:                                              ; preds = %466
  %471 = getelementptr inbounds nuw i8, ptr %457, i64 1
  %472 = load i8, ptr %471, align 1, !tbaa !8
  %473 = load i8, ptr %447, align 1, !tbaa !8
  %474 = icmp eq i8 %472, %473
  br i1 %474, label %475, label %565

475:                                              ; preds = %470
  %476 = getelementptr inbounds nuw i8, ptr %457, i64 2
  br label %477

477:                                              ; preds = %522, %475
  %478 = phi ptr [ %476, %475 ], [ %526, %522 ]
  %479 = phi i64 [ 2, %475 ], [ %523, %522 ]
  %480 = getelementptr inbounds nuw i8, ptr %432, i64 %479
  %481 = getelementptr inbounds nuw i8, ptr %480, i64 1
  %482 = load i8, ptr %481, align 1, !tbaa !8
  %483 = getelementptr inbounds nuw i8, ptr %478, i64 1
  %484 = load i8, ptr %483, align 1, !tbaa !8
  %485 = icmp eq i8 %482, %484
  br i1 %485, label %486, label %531

486:                                              ; preds = %477
  %487 = getelementptr inbounds nuw i8, ptr %480, i64 2
  %488 = load i8, ptr %487, align 1, !tbaa !8
  %489 = getelementptr inbounds nuw i8, ptr %478, i64 2
  %490 = load i8, ptr %489, align 1, !tbaa !8
  %491 = icmp eq i8 %488, %490
  br i1 %491, label %492, label %533

492:                                              ; preds = %486
  %493 = getelementptr inbounds nuw i8, ptr %480, i64 3
  %494 = load i8, ptr %493, align 1, !tbaa !8
  %495 = getelementptr inbounds nuw i8, ptr %478, i64 3
  %496 = load i8, ptr %495, align 1, !tbaa !8
  %497 = icmp eq i8 %494, %496
  br i1 %497, label %498, label %535

498:                                              ; preds = %492
  %499 = getelementptr inbounds nuw i8, ptr %480, i64 4
  %500 = load i8, ptr %499, align 1, !tbaa !8
  %501 = getelementptr inbounds nuw i8, ptr %478, i64 4
  %502 = load i8, ptr %501, align 1, !tbaa !8
  %503 = icmp eq i8 %500, %502
  br i1 %503, label %504, label %537

504:                                              ; preds = %498
  %505 = getelementptr inbounds nuw i8, ptr %480, i64 5
  %506 = load i8, ptr %505, align 1, !tbaa !8
  %507 = getelementptr inbounds nuw i8, ptr %478, i64 5
  %508 = load i8, ptr %507, align 1, !tbaa !8
  %509 = icmp eq i8 %506, %508
  br i1 %509, label %510, label %539

510:                                              ; preds = %504
  %511 = getelementptr inbounds nuw i8, ptr %480, i64 6
  %512 = load i8, ptr %511, align 1, !tbaa !8
  %513 = getelementptr inbounds nuw i8, ptr %478, i64 6
  %514 = load i8, ptr %513, align 1, !tbaa !8
  %515 = icmp eq i8 %512, %514
  br i1 %515, label %516, label %541

516:                                              ; preds = %510
  %517 = getelementptr inbounds nuw i8, ptr %480, i64 7
  %518 = load i8, ptr %517, align 1, !tbaa !8
  %519 = getelementptr inbounds nuw i8, ptr %478, i64 7
  %520 = load i8, ptr %519, align 1, !tbaa !8
  %521 = icmp eq i8 %518, %520
  br i1 %521, label %522, label %543

522:                                              ; preds = %516
  %523 = add nuw nsw i64 %479, 8
  %524 = getelementptr inbounds nuw i8, ptr %432, i64 %523
  %525 = load i8, ptr %524, align 1, !tbaa !8
  %526 = getelementptr inbounds nuw i8, ptr %478, i64 8
  %527 = load i8, ptr %526, align 1, !tbaa !8
  %528 = icmp eq i8 %525, %527
  %529 = icmp samesign ult i64 %479, 250
  %530 = select i1 %528, i1 %529, i1 false
  br i1 %530, label %477, label %545, !llvm.loop !152

531:                                              ; preds = %477
  %532 = getelementptr inbounds nuw i8, ptr %480, i64 1
  br label %547

533:                                              ; preds = %486
  %534 = getelementptr inbounds nuw i8, ptr %480, i64 2
  br label %547

535:                                              ; preds = %492
  %536 = getelementptr inbounds nuw i8, ptr %480, i64 3
  br label %547

537:                                              ; preds = %498
  %538 = getelementptr inbounds nuw i8, ptr %480, i64 4
  br label %547

539:                                              ; preds = %504
  %540 = getelementptr inbounds nuw i8, ptr %480, i64 5
  br label %547

541:                                              ; preds = %510
  %542 = getelementptr inbounds nuw i8, ptr %480, i64 6
  br label %547

543:                                              ; preds = %516
  %544 = getelementptr inbounds nuw i8, ptr %480, i64 7
  br label %547

545:                                              ; preds = %522
  %546 = getelementptr inbounds nuw i8, ptr %432, i64 %523
  br label %547

547:                                              ; preds = %545, %543, %541, %539, %537, %535, %533, %531
  %548 = phi ptr [ %534, %533 ], [ %536, %535 ], [ %532, %531 ], [ %544, %543 ], [ %542, %541 ], [ %540, %539 ], [ %538, %537 ], [ %546, %545 ]
  %549 = ptrtoint ptr %548 to i64
  %550 = sub i64 %549, %448
  %551 = trunc i64 %550 to i32
  %552 = add i32 %551, 258
  %553 = icmp sgt i32 %552, %451
  br i1 %553, label %554, label %565

554:                                              ; preds = %547
  store i32 %453, ptr %8, align 8, !tbaa !83
  %555 = icmp slt i32 %552, %446
  br i1 %555, label %556, label %583

556:                                              ; preds = %554
  %557 = shl i64 %550, 32
  %558 = add i64 %557, 1103806595072
  %559 = ashr exact i64 %558, 32
  %560 = getelementptr inbounds i8, ptr %432, i64 %559
  %561 = load i8, ptr %560, align 1, !tbaa !8
  %562 = sext i32 %552 to i64
  %563 = getelementptr inbounds i8, ptr %432, i64 %562
  %564 = load i8, ptr %563, align 1, !tbaa !8
  br label %565

565:                                              ; preds = %556, %547, %470, %466, %462, %449
  %566 = phi i32 [ %450, %449 ], [ %450, %462 ], [ %450, %466 ], [ %450, %470 ], [ %453, %556 ], [ %450, %547 ]
  %567 = phi i32 [ %451, %449 ], [ %451, %462 ], [ %451, %466 ], [ %451, %470 ], [ %552, %556 ], [ %451, %547 ]
  %568 = phi i8 [ %454, %449 ], [ %454, %462 ], [ %454, %466 ], [ %454, %470 ], [ %561, %556 ], [ %454, %547 ]
  %569 = phi i8 [ %455, %449 ], [ %455, %462 ], [ %455, %466 ], [ %455, %470 ], [ %564, %556 ], [ %455, %547 ]
  %570 = and i32 %453, %405
  %571 = zext nneg i32 %570 to i64
  %572 = getelementptr inbounds nuw [2 x i8], ptr %404, i64 %571
  %573 = load i16, ptr %572, align 2, !tbaa !62
  %574 = zext i16 %573 to i32
  %575 = icmp ult i32 %435, %574
  br i1 %575, label %576, label %583

576:                                              ; preds = %565
  %577 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %452, i32 1), !nosanitize !45
  %578 = extractvalue { i32, i1 } %577, 1, !nosanitize !45
  br i1 %578, label %579, label %580, !prof !46, !nosanitize !45

579:                                              ; preds = %576
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

580:                                              ; preds = %576
  %581 = extractvalue { i32, i1 } %577, 0, !nosanitize !45
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %583, label %449, !llvm.loop !153

583:                                              ; preds = %554, %565, %580
  %584 = phi i32 [ %566, %580 ], [ %566, %565 ], [ %453, %554 ]
  %585 = phi i32 [ %567, %580 ], [ %567, %565 ], [ %552, %554 ]
  %586 = tail call i32 @llvm.umin.i32(i32 %585, i32 %382)
  store i32 %586, ptr %21, align 8, !tbaa !78
  %587 = icmp ult i32 %586, 6
  br i1 %587, label %588, label %604

588:                                              ; preds = %583
  %589 = load i32, ptr %28, align 8, !tbaa !49
  %590 = icmp eq i32 %589, 1
  br i1 %590, label %600, label %591

591:                                              ; preds = %588
  %592 = icmp eq i32 %586, 3
  br i1 %592, label %593, label %604

593:                                              ; preds = %591
  %594 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %383, i32 %584), !nosanitize !45
  %595 = extractvalue { i32, i1 } %594, 1, !nosanitize !45
  br i1 %595, label %596, label %597, !prof !46, !nosanitize !45

596:                                              ; preds = %593
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

597:                                              ; preds = %593
  %598 = extractvalue { i32, i1 } %594, 0, !nosanitize !45
  %599 = icmp ugt i32 %598, 4096
  br i1 %599, label %600, label %604

600:                                              ; preds = %588, %597, %378
  %601 = phi i32 [ %380, %378 ], [ %412, %597 ], [ %412, %588 ]
  %602 = phi i32 [ %379, %378 ], [ %411, %597 ], [ %411, %588 ]
  %603 = phi i32 [ %371, %378 ], [ %382, %597 ], [ %382, %588 ]
  store i32 2, ptr %21, align 8, !tbaa !78
  br label %604

604:                                              ; preds = %600, %583, %591, %597, %427, %414, %387
  %605 = phi i32 [ 2, %414 ], [ %586, %583 ], [ %586, %591 ], [ 3, %597 ], [ 2, %387 ], [ 2, %427 ], [ 2, %600 ]
  %606 = phi i32 [ %412, %414 ], [ %412, %583 ], [ %412, %591 ], [ %412, %597 ], [ %412, %387 ], [ %412, %427 ], [ %601, %600 ]
  %607 = phi i32 [ %411, %414 ], [ %411, %583 ], [ %411, %591 ], [ %411, %597 ], [ %411, %387 ], [ %411, %427 ], [ %602, %600 ]
  %608 = phi i32 [ %382, %414 ], [ %382, %583 ], [ %382, %591 ], [ %382, %597 ], [ %382, %387 ], [ %382, %427 ], [ %603, %600 ]
  %609 = icmp ult i32 %607, 3
  %610 = icmp ugt i32 %605, %607
  %611 = or i1 %609, %610
  br i1 %611, label %823, label %612

612:                                              ; preds = %604
  %613 = load i32, ptr %6, align 4, !tbaa !73
  %614 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %613, i32 %608), !nosanitize !45
  %615 = extractvalue { i32, i1 } %614, 1, !nosanitize !45
  br i1 %615, label %616, label %617, !prof !46, !nosanitize !45

616:                                              ; preds = %612
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

617:                                              ; preds = %612
  %618 = extractvalue { i32, i1 } %614, 0, !nosanitize !45
  %619 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %618, i32 3), !nosanitize !45
  %620 = extractvalue { i32, i1 } %619, 0, !nosanitize !45
  %621 = extractvalue { i32, i1 } %619, 1, !nosanitize !45
  br i1 %621, label %622, label %623, !prof !46, !nosanitize !45

622:                                              ; preds = %617
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

623:                                              ; preds = %617
  %624 = trunc i32 %607 to i8
  %625 = add i8 %624, -3
  %626 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %613, i32 1), !nosanitize !45
  %627 = extractvalue { i32, i1 } %626, 1, !nosanitize !45
  br i1 %627, label %628, label %629, !prof !46, !nosanitize !45

628:                                              ; preds = %623
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

629:                                              ; preds = %623
  %630 = extractvalue { i32, i1 } %626, 0, !nosanitize !45
  %631 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %630, i32 %606), !nosanitize !45
  %632 = extractvalue { i32, i1 } %631, 1, !nosanitize !45
  br i1 %632, label %633, label %634, !prof !46, !nosanitize !45

633:                                              ; preds = %629
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

634:                                              ; preds = %629
  %635 = extractvalue { i32, i1 } %631, 0, !nosanitize !45
  %636 = trunc i32 %635 to i16
  %637 = load i32, ptr %30, align 4, !tbaa !139
  %638 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %637, i32 1), !nosanitize !45
  %639 = extractvalue { i32, i1 } %638, 1, !nosanitize !45
  br i1 %639, label %640, label %641, !prof !46, !nosanitize !45

640:                                              ; preds = %634
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

641:                                              ; preds = %634
  %642 = extractvalue { i32, i1 } %638, 0, !nosanitize !45
  %643 = load ptr, ptr %29, align 8, !tbaa !44
  %644 = trunc i32 %635 to i8
  store i32 %642, ptr %30, align 4, !tbaa !139
  %645 = zext i32 %637 to i64
  %646 = getelementptr inbounds nuw i8, ptr %643, i64 %645
  store i8 %644, ptr %646, align 1, !tbaa !8
  %647 = load i32, ptr %30, align 4, !tbaa !139
  %648 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %647, i32 1), !nosanitize !45
  %649 = extractvalue { i32, i1 } %648, 1, !nosanitize !45
  br i1 %649, label %650, label %651, !prof !46, !nosanitize !45

650:                                              ; preds = %641
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

651:                                              ; preds = %641
  %652 = extractvalue { i32, i1 } %648, 0, !nosanitize !45
  %653 = load ptr, ptr %29, align 8, !tbaa !44
  %654 = lshr i32 %635, 8
  %655 = trunc i32 %654 to i8
  store i32 %652, ptr %30, align 4, !tbaa !139
  %656 = zext i32 %647 to i64
  %657 = getelementptr inbounds nuw i8, ptr %653, i64 %656
  store i8 %655, ptr %657, align 1, !tbaa !8
  %658 = load i32, ptr %30, align 4, !tbaa !139
  %659 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %658, i32 1), !nosanitize !45
  %660 = extractvalue { i32, i1 } %659, 1, !nosanitize !45
  br i1 %660, label %661, label %662, !prof !46, !nosanitize !45

661:                                              ; preds = %651
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

662:                                              ; preds = %651
  %663 = extractvalue { i32, i1 } %659, 0, !nosanitize !45
  %664 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %663, ptr %30, align 4, !tbaa !139
  %665 = zext i32 %658 to i64
  %666 = getelementptr inbounds nuw i8, ptr %664, i64 %665
  store i8 %625, ptr %666, align 1, !tbaa !8
  %667 = add i16 %636, -1
  %668 = zext i8 %625 to i64
  %669 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %668
  %670 = load i8, ptr %669, align 1, !tbaa !8
  %671 = zext i8 %670 to i64
  %672 = getelementptr [4 x i8], ptr %31, i64 %671
  %673 = load i16, ptr %672, align 4, !tbaa !8
  %674 = add i16 %673, 1
  store i16 %674, ptr %672, align 4, !tbaa !8
  %675 = icmp ult i16 %667, 256
  br i1 %675, label %676, label %679

676:                                              ; preds = %662
  %677 = zext nneg i16 %667 to i64
  %678 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %677
  br label %684

679:                                              ; preds = %662
  %680 = lshr i16 %667, 7
  %681 = zext nneg i16 %680 to i64
  %682 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %681
  %683 = getelementptr inbounds nuw i8, ptr %682, i64 256
  br label %684

684:                                              ; preds = %679, %676
  %685 = phi ptr [ %678, %676 ], [ %683, %679 ]
  %686 = load i8, ptr %685, align 1, !tbaa !8
  %687 = zext i8 %686 to i64
  %688 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %687
  %689 = load i16, ptr %688, align 4, !tbaa !8
  %690 = add i16 %689, 1
  store i16 %690, ptr %688, align 4, !tbaa !8
  %691 = load i32, ptr %30, align 4, !tbaa !139
  %692 = load i32, ptr %33, align 8, !tbaa !47
  %693 = icmp eq i32 %691, %692
  %694 = load i32, ptr %22, align 8, !tbaa !77
  %695 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %694, i32 1), !nosanitize !45
  %696 = extractvalue { i32, i1 } %695, 1, !nosanitize !45
  br i1 %696, label %697, label %698, !prof !46, !nosanitize !45

697:                                              ; preds = %684
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

698:                                              ; preds = %684
  %699 = extractvalue { i32, i1 } %695, 0, !nosanitize !45
  %700 = load i32, ptr %3, align 4, !tbaa !75
  %701 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %700, i32 %699), !nosanitize !45
  %702 = extractvalue { i32, i1 } %701, 1, !nosanitize !45
  br i1 %702, label %703, label %704, !prof !46, !nosanitize !45

703:                                              ; preds = %698
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

704:                                              ; preds = %698
  %705 = extractvalue { i32, i1 } %701, 0, !nosanitize !45
  store i32 %705, ptr %3, align 4, !tbaa !75
  %706 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %694, i32 2), !nosanitize !45
  %707 = extractvalue { i32, i1 } %706, 1, !nosanitize !45
  br i1 %707, label %708, label %709, !prof !46, !nosanitize !45

708:                                              ; preds = %704
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

709:                                              ; preds = %704
  %710 = extractvalue { i32, i1 } %706, 0, !nosanitize !45
  store i32 %710, ptr %22, align 8, !tbaa !77
  %711 = load i32, ptr %6, align 4, !tbaa !73
  br label %712

712:                                              ; preds = %752, %709
  %713 = phi i32 [ %753, %752 ], [ %710, %709 ]
  %714 = phi i32 [ %716, %752 ], [ %711, %709 ]
  %715 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %714, i32 1), !nosanitize !45
  %716 = extractvalue { i32, i1 } %715, 0, !nosanitize !45
  %717 = extractvalue { i32, i1 } %715, 1, !nosanitize !45
  br i1 %717, label %718, label %719, !prof !46, !nosanitize !45

718:                                              ; preds = %712
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

719:                                              ; preds = %712
  store i32 %716, ptr %6, align 4, !tbaa !73
  %720 = icmp ugt i32 %716, %620
  br i1 %720, label %748, label %721

721:                                              ; preds = %719
  %722 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %716, i32 2), !nosanitize !45
  %723 = extractvalue { i32, i1 } %722, 1, !nosanitize !45
  br i1 %723, label %724, label %725, !prof !46, !nosanitize !45

724:                                              ; preds = %721
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

725:                                              ; preds = %721
  %726 = extractvalue { i32, i1 } %722, 0, !nosanitize !45
  %727 = load ptr, ptr %7, align 8, !tbaa !34
  %728 = load i32, ptr %15, align 8, !tbaa !80
  %729 = load i32, ptr %16, align 8, !tbaa !53
  %730 = shl i32 %728, %729
  %731 = zext i32 %726 to i64
  %732 = getelementptr inbounds nuw i8, ptr %727, i64 %731
  %733 = load i8, ptr %732, align 1, !tbaa !8
  %734 = zext i8 %733 to i32
  %735 = xor i32 %730, %734
  %736 = load i32, ptr %17, align 4, !tbaa !52
  %737 = and i32 %735, %736
  store i32 %737, ptr %15, align 8, !tbaa !80
  %738 = load ptr, ptr %12, align 8, !tbaa !37
  %739 = zext i32 %737 to i64
  %740 = getelementptr inbounds nuw [2 x i8], ptr %738, i64 %739
  %741 = load i16, ptr %740, align 2, !tbaa !62
  %742 = load ptr, ptr %13, align 8, !tbaa !35
  %743 = load i32, ptr %18, align 8, !tbaa !33
  %744 = and i32 %743, %716
  %745 = zext i32 %744 to i64
  %746 = getelementptr inbounds nuw [2 x i8], ptr %742, i64 %745
  store i16 %741, ptr %746, align 2, !tbaa !62
  %747 = trunc i32 %716 to i16
  store i16 %747, ptr %740, align 2, !tbaa !62
  br label %748

748:                                              ; preds = %719, %725
  %749 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %713, i32 1), !nosanitize !45
  %750 = extractvalue { i32, i1 } %749, 1, !nosanitize !45
  br i1 %750, label %751, label %752, !prof !46, !nosanitize !45

751:                                              ; preds = %748
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

752:                                              ; preds = %748
  %753 = extractvalue { i32, i1 } %749, 0, !nosanitize !45
  store i32 %753, ptr %22, align 8, !tbaa !77
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %755, label %712, !llvm.loop !160

755:                                              ; preds = %752
  store i32 0, ptr %34, align 8, !tbaa !79
  store i32 2, ptr %21, align 8, !tbaa !78
  %756 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %716, i32 1), !nosanitize !45
  %757 = extractvalue { i32, i1 } %756, 1, !nosanitize !45
  br i1 %757, label %758, label %759, !prof !46, !nosanitize !45

758:                                              ; preds = %755
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

759:                                              ; preds = %755
  %760 = extractvalue { i32, i1 } %756, 0, !nosanitize !45
  store i32 %760, ptr %6, align 4, !tbaa !73
  br i1 %693, label %762, label %761

761:                                              ; preds = %759, %818, %955, %939
  br label %36

762:                                              ; preds = %759
  %763 = load i64, ptr %9, align 8, !tbaa !74
  %764 = icmp sgt i64 %763, -1
  br i1 %764, label %765, label %769

765:                                              ; preds = %762
  %766 = load ptr, ptr %7, align 8, !tbaa !34
  %767 = and i64 %763, 4294967295
  %768 = getelementptr inbounds nuw i8, ptr %766, i64 %767
  br label %769

769:                                              ; preds = %762, %765
  %770 = phi ptr [ %768, %765 ], [ null, %762 ]
  %771 = zext i32 %760 to i64
  %772 = sub nsw i64 %771, %763
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %770, i64 noundef %772, i32 noundef 0) #12
  %773 = load i32, ptr %6, align 4, !tbaa !73
  %774 = zext i32 %773 to i64
  store i64 %774, ptr %9, align 8, !tbaa !74
  %775 = load ptr, ptr %0, align 8, !tbaa !20
  %776 = getelementptr inbounds nuw i8, ptr %775, i64 56
  %777 = load ptr, ptr %776, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %777) #12
  %778 = getelementptr inbounds nuw i8, ptr %777, i64 40
  %779 = load i64, ptr %778, align 8, !tbaa !57
  %780 = getelementptr inbounds nuw i8, ptr %775, i64 32
  %781 = load i32, ptr %780, align 8, !tbaa !107
  %782 = zext i32 %781 to i64
  %783 = tail call i64 @llvm.umin.i64(i64 %779, i64 %782)
  %784 = trunc nuw i64 %783 to i32
  %785 = icmp eq i64 %783, 0
  br i1 %785, label %818, label %786

786:                                              ; preds = %769
  %787 = getelementptr inbounds nuw i8, ptr %775, i64 24
  %788 = load ptr, ptr %787, align 8, !tbaa !106
  %789 = getelementptr inbounds nuw i8, ptr %777, i64 32
  %790 = load ptr, ptr %789, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %788, ptr align 1 %790, i64 %783, i1 false)
  %791 = load ptr, ptr %787, align 8, !tbaa !106
  %792 = getelementptr inbounds nuw i8, ptr %791, i64 %783
  store ptr %792, ptr %787, align 8, !tbaa !106
  %793 = load ptr, ptr %789, align 8, !tbaa !58
  %794 = getelementptr inbounds nuw i8, ptr %793, i64 %783
  store ptr %794, ptr %789, align 8, !tbaa !58
  %795 = getelementptr inbounds nuw i8, ptr %775, i64 40
  %796 = load i64, ptr %795, align 8, !tbaa !108
  %797 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %796, i64 %783), !nosanitize !45
  %798 = extractvalue { i64, i1 } %797, 1, !nosanitize !45
  br i1 %798, label %799, label %800, !prof !46, !nosanitize !45

799:                                              ; preds = %786
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

800:                                              ; preds = %786
  %801 = extractvalue { i64, i1 } %797, 0, !nosanitize !45
  store i64 %801, ptr %795, align 8, !tbaa !108
  %802 = load i32, ptr %780, align 8, !tbaa !107
  %803 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %802, i32 %784), !nosanitize !45
  %804 = extractvalue { i32, i1 } %803, 1, !nosanitize !45
  br i1 %804, label %805, label %806, !prof !46, !nosanitize !45

805:                                              ; preds = %800
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

806:                                              ; preds = %800
  %807 = extractvalue { i32, i1 } %803, 0, !nosanitize !45
  store i32 %807, ptr %780, align 8, !tbaa !107
  %808 = load i64, ptr %778, align 8, !tbaa !57
  %809 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %808, i64 %783), !nosanitize !45
  %810 = extractvalue { i64, i1 } %809, 1, !nosanitize !45
  br i1 %810, label %811, label %812, !prof !46, !nosanitize !45

811:                                              ; preds = %806
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

812:                                              ; preds = %806
  %813 = extractvalue { i64, i1 } %809, 0, !nosanitize !45
  store i64 %813, ptr %778, align 8, !tbaa !57
  %814 = icmp eq i64 %813, 0
  br i1 %814, label %815, label %818

815:                                              ; preds = %812
  %816 = getelementptr inbounds nuw i8, ptr %777, i64 16
  %817 = load ptr, ptr %816, align 8, !tbaa !40
  store ptr %817, ptr %789, align 8, !tbaa !58
  br label %818

818:                                              ; preds = %769, %812, %815
  %819 = load ptr, ptr %0, align 8, !tbaa !20
  %820 = getelementptr inbounds nuw i8, ptr %819, i64 32
  %821 = load i32, ptr %820, align 8, !tbaa !107
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %1134, label %761

823:                                              ; preds = %604
  %824 = load i32, ptr %34, align 8, !tbaa !79
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %945, label %826

826:                                              ; preds = %823
  %827 = load i32, ptr %6, align 4, !tbaa !73
  %828 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %827, i32 1), !nosanitize !45
  %829 = extractvalue { i32, i1 } %828, 1, !nosanitize !45
  br i1 %829, label %830, label %831, !prof !46, !nosanitize !45

830:                                              ; preds = %826
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

831:                                              ; preds = %826
  %832 = extractvalue { i32, i1 } %828, 0, !nosanitize !45
  %833 = load ptr, ptr %7, align 8, !tbaa !34
  %834 = zext i32 %832 to i64
  %835 = getelementptr inbounds nuw i8, ptr %833, i64 %834
  %836 = load i8, ptr %835, align 1, !tbaa !8
  %837 = load i32, ptr %30, align 4, !tbaa !139
  %838 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %837, i32 1), !nosanitize !45
  %839 = extractvalue { i32, i1 } %838, 1, !nosanitize !45
  br i1 %839, label %840, label %841, !prof !46, !nosanitize !45

840:                                              ; preds = %831
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

841:                                              ; preds = %831
  %842 = extractvalue { i32, i1 } %838, 0, !nosanitize !45
  %843 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %842, ptr %30, align 4, !tbaa !139
  %844 = zext i32 %837 to i64
  %845 = getelementptr inbounds nuw i8, ptr %843, i64 %844
  store i8 0, ptr %845, align 1, !tbaa !8
  %846 = load i32, ptr %30, align 4, !tbaa !139
  %847 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %846, i32 1), !nosanitize !45
  %848 = extractvalue { i32, i1 } %847, 1, !nosanitize !45
  br i1 %848, label %849, label %850, !prof !46, !nosanitize !45

849:                                              ; preds = %841
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

850:                                              ; preds = %841
  %851 = extractvalue { i32, i1 } %847, 0, !nosanitize !45
  %852 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %851, ptr %30, align 4, !tbaa !139
  %853 = zext i32 %846 to i64
  %854 = getelementptr inbounds nuw i8, ptr %852, i64 %853
  store i8 0, ptr %854, align 1, !tbaa !8
  %855 = load i32, ptr %30, align 4, !tbaa !139
  %856 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %855, i32 1), !nosanitize !45
  %857 = extractvalue { i32, i1 } %856, 1, !nosanitize !45
  br i1 %857, label %858, label %859, !prof !46, !nosanitize !45

858:                                              ; preds = %850
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

859:                                              ; preds = %850
  %860 = extractvalue { i32, i1 } %856, 0, !nosanitize !45
  %861 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %860, ptr %30, align 4, !tbaa !139
  %862 = zext i32 %855 to i64
  %863 = getelementptr inbounds nuw i8, ptr %861, i64 %862
  store i8 %836, ptr %863, align 1, !tbaa !8
  %864 = zext i8 %836 to i64
  %865 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %864
  %866 = load i16, ptr %865, align 4, !tbaa !8
  %867 = add i16 %866, 1
  store i16 %867, ptr %865, align 4, !tbaa !8
  %868 = load i32, ptr %30, align 4, !tbaa !139
  %869 = load i32, ptr %33, align 8, !tbaa !47
  %870 = icmp eq i32 %868, %869
  br i1 %870, label %871, label %928

871:                                              ; preds = %859
  %872 = load i64, ptr %9, align 8, !tbaa !74
  %873 = icmp sgt i64 %872, -1
  br i1 %873, label %874, label %878

874:                                              ; preds = %871
  %875 = load ptr, ptr %7, align 8, !tbaa !34
  %876 = and i64 %872, 4294967295
  %877 = getelementptr inbounds nuw i8, ptr %875, i64 %876
  br label %878

878:                                              ; preds = %871, %874
  %879 = phi ptr [ %877, %874 ], [ null, %871 ]
  %880 = load i32, ptr %6, align 4, !tbaa !73
  %881 = zext i32 %880 to i64
  %882 = sub nsw i64 %881, %872
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %879, i64 noundef %882, i32 noundef 0) #12
  %883 = load i32, ptr %6, align 4, !tbaa !73
  %884 = zext i32 %883 to i64
  store i64 %884, ptr %9, align 8, !tbaa !74
  %885 = load ptr, ptr %0, align 8, !tbaa !20
  %886 = getelementptr inbounds nuw i8, ptr %885, i64 56
  %887 = load ptr, ptr %886, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %887) #12
  %888 = getelementptr inbounds nuw i8, ptr %887, i64 40
  %889 = load i64, ptr %888, align 8, !tbaa !57
  %890 = getelementptr inbounds nuw i8, ptr %885, i64 32
  %891 = load i32, ptr %890, align 8, !tbaa !107
  %892 = zext i32 %891 to i64
  %893 = tail call i64 @llvm.umin.i64(i64 %889, i64 %892)
  %894 = trunc nuw i64 %893 to i32
  %895 = icmp eq i64 %893, 0
  br i1 %895, label %928, label %896

896:                                              ; preds = %878
  %897 = getelementptr inbounds nuw i8, ptr %885, i64 24
  %898 = load ptr, ptr %897, align 8, !tbaa !106
  %899 = getelementptr inbounds nuw i8, ptr %887, i64 32
  %900 = load ptr, ptr %899, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %898, ptr align 1 %900, i64 %893, i1 false)
  %901 = load ptr, ptr %897, align 8, !tbaa !106
  %902 = getelementptr inbounds nuw i8, ptr %901, i64 %893
  store ptr %902, ptr %897, align 8, !tbaa !106
  %903 = load ptr, ptr %899, align 8, !tbaa !58
  %904 = getelementptr inbounds nuw i8, ptr %903, i64 %893
  store ptr %904, ptr %899, align 8, !tbaa !58
  %905 = getelementptr inbounds nuw i8, ptr %885, i64 40
  %906 = load i64, ptr %905, align 8, !tbaa !108
  %907 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %906, i64 %893), !nosanitize !45
  %908 = extractvalue { i64, i1 } %907, 1, !nosanitize !45
  br i1 %908, label %909, label %910, !prof !46, !nosanitize !45

909:                                              ; preds = %896
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

910:                                              ; preds = %896
  %911 = extractvalue { i64, i1 } %907, 0, !nosanitize !45
  store i64 %911, ptr %905, align 8, !tbaa !108
  %912 = load i32, ptr %890, align 8, !tbaa !107
  %913 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %912, i32 %894), !nosanitize !45
  %914 = extractvalue { i32, i1 } %913, 1, !nosanitize !45
  br i1 %914, label %915, label %916, !prof !46, !nosanitize !45

915:                                              ; preds = %910
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

916:                                              ; preds = %910
  %917 = extractvalue { i32, i1 } %913, 0, !nosanitize !45
  store i32 %917, ptr %890, align 8, !tbaa !107
  %918 = load i64, ptr %888, align 8, !tbaa !57
  %919 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %918, i64 %893), !nosanitize !45
  %920 = extractvalue { i64, i1 } %919, 1, !nosanitize !45
  br i1 %920, label %921, label %922, !prof !46, !nosanitize !45

921:                                              ; preds = %916
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

922:                                              ; preds = %916
  %923 = extractvalue { i64, i1 } %919, 0, !nosanitize !45
  store i64 %923, ptr %888, align 8, !tbaa !57
  %924 = icmp eq i64 %923, 0
  br i1 %924, label %925, label %928

925:                                              ; preds = %922
  %926 = getelementptr inbounds nuw i8, ptr %887, i64 16
  %927 = load ptr, ptr %926, align 8, !tbaa !40
  store ptr %927, ptr %899, align 8, !tbaa !58
  br label %928

928:                                              ; preds = %925, %922, %878, %859
  %929 = load i32, ptr %6, align 4, !tbaa !73
  %930 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %929, i32 1), !nosanitize !45
  %931 = extractvalue { i32, i1 } %930, 1, !nosanitize !45
  br i1 %931, label %932, label %933, !prof !46, !nosanitize !45

932:                                              ; preds = %928
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

933:                                              ; preds = %928
  %934 = extractvalue { i32, i1 } %930, 0, !nosanitize !45
  store i32 %934, ptr %6, align 4, !tbaa !73
  %935 = load i32, ptr %3, align 4, !tbaa !75
  %936 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %935, i32 1), !nosanitize !45
  %937 = extractvalue { i32, i1 } %936, 1, !nosanitize !45
  br i1 %937, label %938, label %939, !prof !46, !nosanitize !45

938:                                              ; preds = %933
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

939:                                              ; preds = %933
  %940 = extractvalue { i32, i1 } %936, 0, !nosanitize !45
  store i32 %940, ptr %3, align 4, !tbaa !75
  %941 = load ptr, ptr %0, align 8, !tbaa !20
  %942 = getelementptr inbounds nuw i8, ptr %941, i64 32
  %943 = load i32, ptr %942, align 8, !tbaa !107
  %944 = icmp eq i32 %943, 0
  br i1 %944, label %1134, label %761

945:                                              ; preds = %823
  store i32 1, ptr %34, align 8, !tbaa !79
  %946 = load i32, ptr %6, align 4, !tbaa !73
  %947 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %946, i32 1), !nosanitize !45
  %948 = extractvalue { i32, i1 } %947, 1, !nosanitize !45
  br i1 %948, label %949, label %950, !prof !46, !nosanitize !45

949:                                              ; preds = %945
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

950:                                              ; preds = %945
  %951 = extractvalue { i32, i1 } %947, 0, !nosanitize !45
  store i32 %951, ptr %6, align 4, !tbaa !73
  %952 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %608, i32 1), !nosanitize !45
  %953 = extractvalue { i32, i1 } %952, 1, !nosanitize !45
  br i1 %953, label %954, label %955, !prof !46, !nosanitize !45

954:                                              ; preds = %950
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

955:                                              ; preds = %950
  %956 = extractvalue { i32, i1 } %952, 0, !nosanitize !45
  store i32 %956, ptr %3, align 4, !tbaa !75
  br label %761

957:                                              ; preds = %374
  %958 = load i32, ptr %34, align 8, !tbaa !79
  %959 = icmp eq i32 %958, 0
  %960 = load i32, ptr %6, align 4, !tbaa !73
  br i1 %959, label %1003, label %961

961:                                              ; preds = %957
  %962 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %960, i32 1), !nosanitize !45
  %963 = extractvalue { i32, i1 } %962, 1, !nosanitize !45
  br i1 %963, label %964, label %965, !prof !46, !nosanitize !45

964:                                              ; preds = %961
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

965:                                              ; preds = %961
  %966 = extractvalue { i32, i1 } %962, 0, !nosanitize !45
  %967 = load ptr, ptr %7, align 8, !tbaa !34
  %968 = zext i32 %966 to i64
  %969 = getelementptr inbounds nuw i8, ptr %967, i64 %968
  %970 = load i8, ptr %969, align 1, !tbaa !8
  %971 = load i32, ptr %30, align 4, !tbaa !139
  %972 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %971, i32 1), !nosanitize !45
  %973 = extractvalue { i32, i1 } %972, 1, !nosanitize !45
  br i1 %973, label %974, label %975, !prof !46, !nosanitize !45

974:                                              ; preds = %965
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

975:                                              ; preds = %965
  %976 = extractvalue { i32, i1 } %972, 0, !nosanitize !45
  %977 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %976, ptr %30, align 4, !tbaa !139
  %978 = zext i32 %971 to i64
  %979 = getelementptr inbounds nuw i8, ptr %977, i64 %978
  store i8 0, ptr %979, align 1, !tbaa !8
  %980 = load i32, ptr %30, align 4, !tbaa !139
  %981 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %980, i32 1), !nosanitize !45
  %982 = extractvalue { i32, i1 } %981, 1, !nosanitize !45
  br i1 %982, label %983, label %984, !prof !46, !nosanitize !45

983:                                              ; preds = %975
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

984:                                              ; preds = %975
  %985 = extractvalue { i32, i1 } %981, 0, !nosanitize !45
  %986 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %985, ptr %30, align 4, !tbaa !139
  %987 = zext i32 %980 to i64
  %988 = getelementptr inbounds nuw i8, ptr %986, i64 %987
  store i8 0, ptr %988, align 1, !tbaa !8
  %989 = load i32, ptr %30, align 4, !tbaa !139
  %990 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %989, i32 1), !nosanitize !45
  %991 = extractvalue { i32, i1 } %990, 1, !nosanitize !45
  br i1 %991, label %992, label %993, !prof !46, !nosanitize !45

992:                                              ; preds = %984
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

993:                                              ; preds = %984
  %994 = extractvalue { i32, i1 } %990, 0, !nosanitize !45
  %995 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %994, ptr %30, align 4, !tbaa !139
  %996 = zext i32 %989 to i64
  %997 = getelementptr inbounds nuw i8, ptr %995, i64 %996
  store i8 %970, ptr %997, align 1, !tbaa !8
  %998 = zext i8 %970 to i64
  %999 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %998
  %1000 = load i16, ptr %999, align 4, !tbaa !8
  %1001 = add i16 %1000, 1
  store i16 %1001, ptr %999, align 4, !tbaa !8
  store i32 0, ptr %34, align 8, !tbaa !79
  %1002 = load i32, ptr %6, align 4, !tbaa !73
  br label %1003

1003:                                             ; preds = %993, %957
  %1004 = phi i32 [ %1002, %993 ], [ %960, %957 ]
  %1005 = tail call i32 @llvm.umin.i32(i32 %1004, i32 2)
  store i32 %1005, ptr %10, align 4, !tbaa !76
  %1006 = icmp eq i32 %1, 4
  br i1 %1006, label %1007, label %1069

1007:                                             ; preds = %1003
  %1008 = load i64, ptr %9, align 8, !tbaa !74
  %1009 = icmp sgt i64 %1008, -1
  br i1 %1009, label %1010, label %1014

1010:                                             ; preds = %1007
  %1011 = load ptr, ptr %7, align 8, !tbaa !34
  %1012 = and i64 %1008, 4294967295
  %1013 = getelementptr inbounds nuw i8, ptr %1011, i64 %1012
  br label %1014

1014:                                             ; preds = %1007, %1010
  %1015 = phi ptr [ %1013, %1010 ], [ null, %1007 ]
  %1016 = zext i32 %1004 to i64
  %1017 = sub nsw i64 %1016, %1008
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1015, i64 noundef %1017, i32 noundef 1) #12
  %1018 = load i32, ptr %6, align 4, !tbaa !73
  %1019 = zext i32 %1018 to i64
  store i64 %1019, ptr %9, align 8, !tbaa !74
  %1020 = load ptr, ptr %0, align 8, !tbaa !20
  %1021 = getelementptr inbounds nuw i8, ptr %1020, i64 56
  %1022 = load ptr, ptr %1021, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %1022) #12
  %1023 = getelementptr inbounds nuw i8, ptr %1022, i64 40
  %1024 = load i64, ptr %1023, align 8, !tbaa !57
  %1025 = getelementptr inbounds nuw i8, ptr %1020, i64 32
  %1026 = load i32, ptr %1025, align 8, !tbaa !107
  %1027 = zext i32 %1026 to i64
  %1028 = tail call i64 @llvm.umin.i64(i64 %1024, i64 %1027)
  %1029 = trunc nuw i64 %1028 to i32
  %1030 = icmp eq i64 %1028, 0
  br i1 %1030, label %1063, label %1031

1031:                                             ; preds = %1014
  %1032 = getelementptr inbounds nuw i8, ptr %1020, i64 24
  %1033 = load ptr, ptr %1032, align 8, !tbaa !106
  %1034 = getelementptr inbounds nuw i8, ptr %1022, i64 32
  %1035 = load ptr, ptr %1034, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1033, ptr align 1 %1035, i64 %1028, i1 false)
  %1036 = load ptr, ptr %1032, align 8, !tbaa !106
  %1037 = getelementptr inbounds nuw i8, ptr %1036, i64 %1028
  store ptr %1037, ptr %1032, align 8, !tbaa !106
  %1038 = load ptr, ptr %1034, align 8, !tbaa !58
  %1039 = getelementptr inbounds nuw i8, ptr %1038, i64 %1028
  store ptr %1039, ptr %1034, align 8, !tbaa !58
  %1040 = getelementptr inbounds nuw i8, ptr %1020, i64 40
  %1041 = load i64, ptr %1040, align 8, !tbaa !108
  %1042 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1041, i64 %1028), !nosanitize !45
  %1043 = extractvalue { i64, i1 } %1042, 1, !nosanitize !45
  br i1 %1043, label %1044, label %1045, !prof !46, !nosanitize !45

1044:                                             ; preds = %1031
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1045:                                             ; preds = %1031
  %1046 = extractvalue { i64, i1 } %1042, 0, !nosanitize !45
  store i64 %1046, ptr %1040, align 8, !tbaa !108
  %1047 = load i32, ptr %1025, align 8, !tbaa !107
  %1048 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1047, i32 %1029), !nosanitize !45
  %1049 = extractvalue { i32, i1 } %1048, 1, !nosanitize !45
  br i1 %1049, label %1050, label %1051, !prof !46, !nosanitize !45

1050:                                             ; preds = %1045
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

1051:                                             ; preds = %1045
  %1052 = extractvalue { i32, i1 } %1048, 0, !nosanitize !45
  store i32 %1052, ptr %1025, align 8, !tbaa !107
  %1053 = load i64, ptr %1023, align 8, !tbaa !57
  %1054 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1053, i64 %1028), !nosanitize !45
  %1055 = extractvalue { i64, i1 } %1054, 1, !nosanitize !45
  br i1 %1055, label %1056, label %1057, !prof !46, !nosanitize !45

1056:                                             ; preds = %1051
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

1057:                                             ; preds = %1051
  %1058 = extractvalue { i64, i1 } %1054, 0, !nosanitize !45
  store i64 %1058, ptr %1023, align 8, !tbaa !57
  %1059 = icmp eq i64 %1058, 0
  br i1 %1059, label %1060, label %1063

1060:                                             ; preds = %1057
  %1061 = getelementptr inbounds nuw i8, ptr %1022, i64 16
  %1062 = load ptr, ptr %1061, align 8, !tbaa !40
  store ptr %1062, ptr %1034, align 8, !tbaa !58
  br label %1063

1063:                                             ; preds = %1014, %1057, %1060
  %1064 = load ptr, ptr %0, align 8, !tbaa !20
  %1065 = getelementptr inbounds nuw i8, ptr %1064, i64 32
  %1066 = load i32, ptr %1065, align 8, !tbaa !107
  %1067 = icmp eq i32 %1066, 0
  %1068 = select i1 %1067, i32 2, i32 3
  br label %1134

1069:                                             ; preds = %1003
  %1070 = load i32, ptr %30, align 4, !tbaa !139
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1133, label %1072

1072:                                             ; preds = %1069
  %1073 = load i64, ptr %9, align 8, !tbaa !74
  %1074 = icmp sgt i64 %1073, -1
  br i1 %1074, label %1075, label %1079

1075:                                             ; preds = %1072
  %1076 = load ptr, ptr %7, align 8, !tbaa !34
  %1077 = and i64 %1073, 4294967295
  %1078 = getelementptr inbounds nuw i8, ptr %1076, i64 %1077
  br label %1079

1079:                                             ; preds = %1072, %1075
  %1080 = phi ptr [ %1078, %1075 ], [ null, %1072 ]
  %1081 = zext i32 %1004 to i64
  %1082 = sub nsw i64 %1081, %1073
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1080, i64 noundef %1082, i32 noundef 0) #12
  %1083 = load i32, ptr %6, align 4, !tbaa !73
  %1084 = zext i32 %1083 to i64
  store i64 %1084, ptr %9, align 8, !tbaa !74
  %1085 = load ptr, ptr %0, align 8, !tbaa !20
  %1086 = getelementptr inbounds nuw i8, ptr %1085, i64 56
  %1087 = load ptr, ptr %1086, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %1087) #12
  %1088 = getelementptr inbounds nuw i8, ptr %1087, i64 40
  %1089 = load i64, ptr %1088, align 8, !tbaa !57
  %1090 = getelementptr inbounds nuw i8, ptr %1085, i64 32
  %1091 = load i32, ptr %1090, align 8, !tbaa !107
  %1092 = zext i32 %1091 to i64
  %1093 = tail call i64 @llvm.umin.i64(i64 %1089, i64 %1092)
  %1094 = trunc nuw i64 %1093 to i32
  %1095 = icmp eq i64 %1093, 0
  br i1 %1095, label %1128, label %1096

1096:                                             ; preds = %1079
  %1097 = getelementptr inbounds nuw i8, ptr %1085, i64 24
  %1098 = load ptr, ptr %1097, align 8, !tbaa !106
  %1099 = getelementptr inbounds nuw i8, ptr %1087, i64 32
  %1100 = load ptr, ptr %1099, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1098, ptr align 1 %1100, i64 %1093, i1 false)
  %1101 = load ptr, ptr %1097, align 8, !tbaa !106
  %1102 = getelementptr inbounds nuw i8, ptr %1101, i64 %1093
  store ptr %1102, ptr %1097, align 8, !tbaa !106
  %1103 = load ptr, ptr %1099, align 8, !tbaa !58
  %1104 = getelementptr inbounds nuw i8, ptr %1103, i64 %1093
  store ptr %1104, ptr %1099, align 8, !tbaa !58
  %1105 = getelementptr inbounds nuw i8, ptr %1085, i64 40
  %1106 = load i64, ptr %1105, align 8, !tbaa !108
  %1107 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1106, i64 %1093), !nosanitize !45
  %1108 = extractvalue { i64, i1 } %1107, 1, !nosanitize !45
  br i1 %1108, label %1109, label %1110, !prof !46, !nosanitize !45

1109:                                             ; preds = %1096
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !45
  unreachable, !nosanitize !45

1110:                                             ; preds = %1096
  %1111 = extractvalue { i64, i1 } %1107, 0, !nosanitize !45
  store i64 %1111, ptr %1105, align 8, !tbaa !108
  %1112 = load i32, ptr %1090, align 8, !tbaa !107
  %1113 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1112, i32 %1094), !nosanitize !45
  %1114 = extractvalue { i32, i1 } %1113, 1, !nosanitize !45
  br i1 %1114, label %1115, label %1116, !prof !46, !nosanitize !45

1115:                                             ; preds = %1110
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

1116:                                             ; preds = %1110
  %1117 = extractvalue { i32, i1 } %1113, 0, !nosanitize !45
  store i32 %1117, ptr %1090, align 8, !tbaa !107
  %1118 = load i64, ptr %1088, align 8, !tbaa !57
  %1119 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1118, i64 %1093), !nosanitize !45
  %1120 = extractvalue { i64, i1 } %1119, 1, !nosanitize !45
  br i1 %1120, label %1121, label %1122, !prof !46, !nosanitize !45

1121:                                             ; preds = %1116
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !45
  unreachable, !nosanitize !45

1122:                                             ; preds = %1116
  %1123 = extractvalue { i64, i1 } %1119, 0, !nosanitize !45
  store i64 %1123, ptr %1088, align 8, !tbaa !57
  %1124 = icmp eq i64 %1123, 0
  br i1 %1124, label %1125, label %1128

1125:                                             ; preds = %1122
  %1126 = getelementptr inbounds nuw i8, ptr %1087, i64 16
  %1127 = load ptr, ptr %1126, align 8, !tbaa !40
  store ptr %1127, ptr %1099, align 8, !tbaa !58
  br label %1128

1128:                                             ; preds = %1079, %1122, %1125
  %1129 = load ptr, ptr %0, align 8, !tbaa !20
  %1130 = getelementptr inbounds nuw i8, ptr %1129, i64 32
  %1131 = load i32, ptr %1130, align 8, !tbaa !107
  %1132 = icmp eq i32 %1131, 0
  br i1 %1132, label %1134, label %1133

1133:                                             ; preds = %1128, %1069
  br label %1134

1134:                                             ; preds = %939, %818, %370, %1128, %1063, %1133
  %1135 = phi i32 [ 0, %1128 ], [ %1068, %1063 ], [ 1, %1133 ], [ 0, %370 ], [ 0, %818 ], [ 0, %939 ]
  ret i32 %1135
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.usub.sat.v8i32(<8 x i32>, <8 x i32>) #10

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
!45 = !{}
!46 = !{!"branch_weights", i32 1, i32 1048575}
!47 = !{!21, !5, i64 5904}
!48 = !{!21, !5, i64 196}
!49 = !{!21, !5, i64 200}
!50 = !{!21, !6, i64 72}
!51 = !{!21, !5, i64 136}
!52 = !{!21, !5, i64 140}
!53 = !{!21, !5, i64 144}
!54 = !{ptr @deflateEnd}
!55 = !{!10, !13, i64 16}
!56 = !{!10, !5, i64 88}
!57 = !{!21, !13, i64 40}
!58 = !{!21, !11, i64 32}
!59 = !{!10, !13, i64 96}
!60 = !{!21, !5, i64 76}
!61 = !{!21, !13, i64 104}
!62 = !{!28, !28, i64 0}
!63 = !{!21, !5, i64 5960}
!64 = !{!65, !28, i64 2}
!65 = !{!"config_s", !28, i64 0, !28, i64 2, !28, i64 4, !28, i64 6, !12, i64 8}
!66 = !{!21, !5, i64 192}
!67 = !{!65, !28, i64 0}
!68 = !{!21, !5, i64 204}
!69 = !{!65, !28, i64 4}
!70 = !{!21, !5, i64 208}
!71 = !{!65, !28, i64 6}
!72 = !{!21, !5, i64 188}
!73 = !{!21, !5, i64 172}
!74 = !{!21, !13, i64 152}
!75 = !{!21, !5, i64 180}
!76 = !{!21, !5, i64 5932}
!77 = !{!21, !5, i64 184}
!78 = !{!21, !5, i64 160}
!79 = !{!21, !5, i64 168}
!80 = !{!21, !5, i64 128}
!81 = !{!10, !5, i64 8}
!82 = !{!10, !11, i64 0}
!83 = !{!21, !5, i64 176}
!84 = distinct !{!84, !85, !86, !87}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!"llvm.loop.isvectorized", i32 1}
!87 = !{!"llvm.loop.unroll.runtime.disable"}
!88 = distinct !{!88, !85, !87, !86}
!89 = distinct !{!89, !85, !86, !87}
!90 = distinct !{!90, !85, !87, !86}
!91 = distinct !{!91, !85}
!92 = distinct !{!92, !85}
!93 = !{!"branch_weights", i32 1048575, i32 1}
!94 = distinct !{!94, !85}
!95 = distinct !{!95, !85, !86, !87}
!96 = distinct !{!96, !85, !87, !86}
!97 = distinct !{!97, !85, !86, !87}
!98 = distinct !{!98, !85, !87, !86}
!99 = distinct !{!99, !85}
!100 = !{!21, !23, i64 56}
!101 = !{!21, !5, i64 5940}
!102 = !{!21, !5, i64 5944}
!103 = !{!21, !28, i64 5936}
!104 = distinct !{!104, !85}
!105 = !{!65, !12, i64 8}
!106 = !{!10, !11, i64 24}
!107 = !{!10, !5, i64 32}
!108 = !{!10, !13, i64 40}
!109 = !{!110, !11, i64 56}
!110 = !{!"gz_header_s", !5, i64 0, !13, i64 8, !5, i64 16, !5, i64 20, !11, i64 24, !5, i64 32, !5, i64 36, !11, i64 40, !5, i64 48, !11, i64 56, !5, i64 64, !5, i64 68, !5, i64 72}
!111 = !{!110, !11, i64 40}
!112 = !{!110, !11, i64 24}
!113 = !{!110, !5, i64 0}
!114 = !{!110, !5, i64 68}
!115 = !{!110, !13, i64 8}
!116 = !{!110, !5, i64 20}
!117 = !{!110, !5, i64 32}
!118 = !{!21, !13, i64 64}
!119 = distinct !{!119, !85, !120, !121}
!120 = !{!"llvm.loop.peeled.count", i32 1}
!121 = !{!"llvm.loop.estimated_trip_count", i32 1048575}
!122 = distinct !{!122, !85}
!123 = distinct !{!123, !85}
!124 = !{ptr @deflate}
!125 = !{!21, !5, i64 5928}
!126 = distinct !{!126, !85, !86, !87}
!127 = distinct !{!127, !85, !87, !86}
!128 = distinct !{!128, !85, !86, !87}
!129 = distinct !{!129, !85, !87, !86}
!130 = !{!"branch_weights", i32 1, i32 127}
!131 = !{!"branch_weights", i32 127, i32 134217473}
!132 = distinct !{!132, !85}
!133 = distinct !{!133, !85}
!134 = distinct !{!134, !85}
!135 = distinct !{!135, !85, !86, !87}
!136 = distinct !{!136, !85, !87, !86}
!137 = distinct !{!137, !85, !86, !87}
!138 = distinct !{!138, !85, !87, !86}
!139 = !{!21, !5, i64 5900}
!140 = distinct !{!140, !85, !86, !87}
!141 = distinct !{!141, !85, !87, !86}
!142 = distinct !{!142, !85, !86, !87}
!143 = distinct !{!143, !85, !87, !86}
!144 = distinct !{!144, !85}
!145 = !{!21, !26, i64 2904}
!146 = !{!21, !26, i64 2928}
!147 = !{!21, !26, i64 2952}
!148 = distinct !{!148, !85, !86, !87}
!149 = distinct !{!149, !85, !87, !86}
!150 = distinct !{!150, !85, !86, !87}
!151 = distinct !{!151, !85, !87, !86}
!152 = distinct !{!152, !85}
!153 = distinct !{!153, !85}
!154 = distinct !{!154, !85}
!155 = distinct !{!155, !85, !86, !87}
!156 = distinct !{!156, !85, !87, !86}
!157 = distinct !{!157, !85, !86, !87}
!158 = distinct !{!158, !85, !87, !86}
!159 = !{!21, !5, i64 164}
!160 = distinct !{!160, !85}
