; ModuleID = 'evaluation/zlib/deflate_integer_O3.ll'
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
  %33 = tail call ptr %21(ptr noundef %32, i32 noundef 1, i32 noundef 5968) #10, !inline_history !18
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
  %45 = tail call ptr %43(ptr noundef %44, i32 noundef 32768, i32 noundef 2) #10, !inline_history !18
  %46 = getelementptr inbounds nuw i8, ptr %33, i64 96
  store ptr %45, ptr %46, align 8, !tbaa !34
  %47 = load ptr, ptr %15, align 8, !tbaa !15
  %48 = load ptr, ptr %31, align 8, !tbaa !16
  %49 = load i32, ptr %40, align 8, !tbaa !32
  %50 = tail call ptr %47(ptr noundef %48, i32 noundef %49, i32 noundef 2) #10, !inline_history !18
  %51 = getelementptr inbounds nuw i8, ptr %33, i64 112
  store ptr %50, ptr %51, align 8, !tbaa !35
  %52 = load ptr, ptr %15, align 8, !tbaa !15
  %53 = load ptr, ptr %31, align 8, !tbaa !16
  %54 = load i32, ptr %42, align 4, !tbaa !36
  %55 = tail call ptr %52(ptr noundef %53, i32 noundef %54, i32 noundef 2) #10, !inline_history !18
  %56 = getelementptr inbounds nuw i8, ptr %33, i64 120
  store ptr %55, ptr %56, align 8, !tbaa !37
  %57 = getelementptr inbounds nuw i8, ptr %33, i64 5952
  store i64 0, ptr %57, align 8, !tbaa !38
  %58 = getelementptr inbounds nuw i8, ptr %33, i64 5896
  store i32 16384, ptr %58, align 8, !tbaa !39
  %59 = load ptr, ptr %15, align 8, !tbaa !15
  %60 = load ptr, ptr %31, align 8, !tbaa !16
  %61 = tail call ptr %59(ptr noundef %60, i32 noundef 16384, i32 noundef 4) #10, !inline_history !18
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
  tail call void %82(ptr noundef %98, ptr noundef nonnull %95) #10, !inline_history !43
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
  tail call void %102(ptr noundef %108, ptr noundef nonnull %105) #10, !inline_history !43
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
  tail call void %112(ptr noundef %118, ptr noundef nonnull %115) #10, !inline_history !43
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
  tail call void %122(ptr noundef %128, ptr noundef nonnull %125) #10, !inline_history !43
  %129 = load ptr, ptr %22, align 8, !tbaa !17
  %130 = load ptr, ptr %37, align 8, !tbaa !19
  br label %131

131:                                              ; preds = %127, %121
  %132 = phi ptr [ %130, %127 ], [ %123, %121 ]
  %133 = phi ptr [ %129, %127 ], [ %122, %121 ]
  %134 = load ptr, ptr %31, align 8, !tbaa !16
  tail call void %133(ptr noundef %134, ptr noundef %132) #10, !inline_history !43
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

141:                                              ; preds = %135
  %142 = extractvalue { i32, i1 } %138, 0, !nosanitize !45
  %143 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %142, i32 3), !nosanitize !45
  %144 = extractvalue { i32, i1 } %143, 1, !nosanitize !45
  br i1 %144, label %145, label %146, !prof !46, !nosanitize !45

145:                                              ; preds = %141
  tail call void @llvm.ubsantrap(i8 12) #11, !nosanitize !45
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

153:                                              ; preds = %146, %131, %90, %87, %84, %81, %77, %30, %26, %11, %6, %4
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

42:                                               ; preds = %40, %38, %36
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
  %63 = tail call ptr %25(ptr noundef %62, i32 noundef 1, i32 noundef 5968) #10
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
  %89 = tail call ptr %87(ptr noundef %88, i32 noundef %72, i32 noundef 2) #10
  %90 = getelementptr inbounds nuw i8, ptr %63, i64 96
  store ptr %89, ptr %90, align 8, !tbaa !34
  %91 = load ptr, ptr %19, align 8, !tbaa !15
  %92 = load ptr, ptr %61, align 8, !tbaa !16
  %93 = load i32, ptr %73, align 8, !tbaa !32
  %94 = tail call ptr %91(ptr noundef %92, i32 noundef %93, i32 noundef 2) #10
  %95 = getelementptr inbounds nuw i8, ptr %63, i64 112
  store ptr %94, ptr %95, align 8, !tbaa !35
  %96 = load ptr, ptr %19, align 8, !tbaa !15
  %97 = load ptr, ptr %61, align 8, !tbaa !16
  %98 = load i32, ptr %79, align 4, !tbaa !36
  %99 = tail call ptr %96(ptr noundef %97, i32 noundef %98, i32 noundef 2) #10
  %100 = getelementptr inbounds nuw i8, ptr %63, i64 120
  store ptr %99, ptr %100, align 8, !tbaa !37
  %101 = getelementptr inbounds nuw i8, ptr %63, i64 5952
  store i64 0, ptr %101, align 8, !tbaa !38
  %102 = shl nuw nsw i32 64, %4
  %103 = getelementptr inbounds nuw i8, ptr %63, i64 5896
  store i32 %102, ptr %103, align 8, !tbaa !39
  %104 = load ptr, ptr %19, align 8, !tbaa !15
  %105 = load ptr, ptr %61, align 8, !tbaa !16
  %106 = tail call ptr %104(ptr noundef %105, i32 noundef %102, i32 noundef 4) #10
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

122:                                              ; preds = %117, %114, %65
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
  tail call void %127(ptr noundef %143, ptr noundef nonnull %140) #10, !inline_history !54
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
  tail call void %147(ptr noundef %153, ptr noundef nonnull %150) #10, !inline_history !54
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
  tail call void %157(ptr noundef %163, ptr noundef nonnull %160) #10, !inline_history !54
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
  tail call void %167(ptr noundef %173, ptr noundef nonnull %170) #10, !inline_history !54
  %174 = load ptr, ptr %26, align 8, !tbaa !17
  %175 = load ptr, ptr %68, align 8, !tbaa !19
  br label %176

176:                                              ; preds = %172, %166
  %177 = phi ptr [ %175, %172 ], [ %168, %166 ]
  %178 = phi ptr [ %174, %172 ], [ %167, %166 ]
  %179 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %178(ptr noundef %179, ptr noundef %177) #10, !inline_history !54
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

186:                                              ; preds = %180
  %187 = extractvalue { i32, i1 } %183, 0, !nosanitize !45
  %188 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %187, i32 3), !nosanitize !45
  %189 = extractvalue { i32, i1 } %188, 1, !nosanitize !45
  br i1 %189, label %190, label %191, !prof !46, !nosanitize !45

190:                                              ; preds = %186
  tail call void @llvm.ubsantrap(i8 12) #11, !nosanitize !45
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

198:                                              ; preds = %191, %176, %135, %132, %129, %126, %122, %60, %57, %42, %34, %15, %10, %8
  %199 = phi i32 [ %197, %191 ], [ -6, %8 ], [ -2, %15 ], [ -2, %34 ], [ -2, %42 ], [ -4, %60 ], [ -6, %10 ], [ -2, %57 ], [ -4, %122 ], [ -4, %126 ], [ -4, %129 ], [ -4, %132 ], [ -4, %135 ], [ -4, %176 ]
  ret i32 %199
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
  tail call void %9(ptr noundef %27, ptr noundef nonnull %23) #10
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
  tail call void %31(ptr noundef %38, ptr noundef nonnull %34) #10
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
  tail call void %42(ptr noundef %49, ptr noundef nonnull %45) #10
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
  tail call void %53(ptr noundef %60, ptr noundef nonnull %56) #10
  %61 = load ptr, ptr %8, align 8, !tbaa !17
  %62 = load ptr, ptr %12, align 8, !tbaa !19
  br label %63

63:                                               ; preds = %58, %52
  %64 = phi ptr [ %62, %58 ], [ %54, %52 ]
  %65 = phi ptr [ %61, %58 ], [ %53, %52 ]
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %67 = load ptr, ptr %66, align 8, !tbaa !16
  tail call void %65(ptr noundef %67, ptr noundef %64) #10
  store ptr null, ptr %12, align 8, !tbaa !19
  %68 = icmp eq i32 %20, 113
  %69 = select i1 %68, i32 -3, i32 0
  br label %70

70:                                               ; preds = %63, %18, %15, %11, %7, %3, %1
  %71 = phi i32 [ %69, %63 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %71
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateReset(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %96, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %96, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %96, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %96, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !20
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %96

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !29
  switch i32 %20, label %96 [
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
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %30), !nosanitize !45
  %34 = extractvalue { i32, i1 } %33, 1, !nosanitize !45
  br i1 %34, label %35, label %36, !prof !46, !nosanitize !45

35:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 13) #12, !nosanitize !45
  unreachable, !nosanitize !45

36:                                               ; preds = %32
  %37 = extractvalue { i32, i1 } %33, 0, !nosanitize !45
  store i32 %37, ptr %29, align 8, !tbaa !30
  br label %38

38:                                               ; preds = %36, %21
  %39 = phi i32 [ %37, %36 ], [ %30, %21 ]
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
  store i64 %47, ptr %48, align 8, !tbaa !59
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %49, align 4, !tbaa !60
  tail call void @_tr_init(ptr noundef nonnull %13) #10
  %50 = load ptr, ptr %12, align 8, !tbaa !19
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 80
  %52 = load i32, ptr %51, align 8, !tbaa !32
  %53 = zext i32 %52 to i64
  %54 = shl nuw nsw i64 %53, 1
  %55 = getelementptr inbounds nuw i8, ptr %50, i64 104
  store i64 %54, ptr %55, align 8, !tbaa !61
  %56 = getelementptr inbounds nuw i8, ptr %50, i64 132
  %57 = load i32, ptr %56, align 4, !tbaa !36
  %58 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %57, i32 1), !nosanitize !45
  %59 = extractvalue { i32, i1 } %58, 1, !nosanitize !45
  br i1 %59, label %60, label %61, !prof !46, !nosanitize !45

60:                                               ; preds = %46
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

61:                                               ; preds = %46
  %62 = extractvalue { i32, i1 } %58, 0, !nosanitize !45
  %63 = getelementptr inbounds nuw i8, ptr %50, i64 120
  %64 = load ptr, ptr %63, align 8, !tbaa !37
  %65 = zext i32 %62 to i64
  %66 = getelementptr inbounds nuw [2 x i8], ptr %64, i64 %65
  store i16 0, ptr %66, align 2, !tbaa !62
  %67 = shl nuw nsw i64 %65, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %64, i8 0, i64 %67, i1 false)
  %68 = getelementptr inbounds nuw i8, ptr %50, i64 5960
  store i32 0, ptr %68, align 8, !tbaa !63
  %69 = getelementptr inbounds nuw i8, ptr %50, i64 196
  %70 = load i32, ptr %69, align 4, !tbaa !48
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %71
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 2
  %74 = load i16, ptr %73, align 2, !tbaa !64
  %75 = zext i16 %74 to i32
  %76 = getelementptr inbounds nuw i8, ptr %50, i64 192
  store i32 %75, ptr %76, align 8, !tbaa !66
  %77 = load i16, ptr %72, align 16, !tbaa !67
  %78 = zext i16 %77 to i32
  %79 = getelementptr inbounds nuw i8, ptr %50, i64 204
  store i32 %78, ptr %79, align 4, !tbaa !68
  %80 = getelementptr inbounds nuw i8, ptr %72, i64 4
  %81 = load i16, ptr %80, align 4, !tbaa !69
  %82 = zext i16 %81 to i32
  %83 = getelementptr inbounds nuw i8, ptr %50, i64 208
  store i32 %82, ptr %83, align 8, !tbaa !70
  %84 = getelementptr inbounds nuw i8, ptr %72, i64 6
  %85 = load i16, ptr %84, align 2, !tbaa !71
  %86 = zext i16 %85 to i32
  %87 = getelementptr inbounds nuw i8, ptr %50, i64 188
  store i32 %86, ptr %87, align 4, !tbaa !72
  %88 = getelementptr inbounds nuw i8, ptr %50, i64 172
  store i32 0, ptr %88, align 4, !tbaa !73
  %89 = getelementptr inbounds nuw i8, ptr %50, i64 152
  store i64 0, ptr %89, align 8, !tbaa !74
  %90 = getelementptr inbounds nuw i8, ptr %50, i64 180
  store i32 0, ptr %90, align 4, !tbaa !75
  %91 = getelementptr inbounds nuw i8, ptr %50, i64 5932
  store i32 0, ptr %91, align 4, !tbaa !76
  %92 = getelementptr inbounds nuw i8, ptr %50, i64 184
  store i32 2, ptr %92, align 8, !tbaa !77
  %93 = getelementptr inbounds nuw i8, ptr %50, i64 160
  store i32 2, ptr %93, align 8, !tbaa !78
  %94 = getelementptr inbounds nuw i8, ptr %50, i64 168
  store i32 0, ptr %94, align 8, !tbaa !79
  %95 = getelementptr inbounds nuw i8, ptr %50, i64 128
  store i32 0, ptr %95, align 8, !tbaa !80
  br label %96

96:                                               ; preds = %61, %18, %15, %11, %7, %3, %1
  %97 = phi i32 [ 0, %61 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %97
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateSetDictionary(ptr noundef captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %827, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %827, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %827, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %827, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %827

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %827 [
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
  br i1 %24, label %827, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %27 = load i32, ptr %26, align 8, !tbaa !30
  switch i32 %27, label %34 [
    i32 2, label %827
    i32 1, label %28
  ]

28:                                               ; preds = %25
  %29 = icmp eq i32 %22, 42
  br i1 %29, label %30, label %827

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %32 = load i32, ptr %31, align 4, !tbaa !75
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %827

34:                                               ; preds = %25
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %36 = load i32, ptr %35, align 4, !tbaa !75
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %827

38:                                               ; preds = %34
  store i32 0, ptr %26, align 8, !tbaa !30
  %39 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %40 = load i32, ptr %39, align 8, !tbaa !32
  %41 = icmp ult i32 %2, %40
  br i1 %41, label %80, label %49

42:                                               ; preds = %30
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %44 = load i64, ptr %43, align 8, !tbaa !59
  %45 = tail call i64 @adler32(i64 noundef %44, ptr noundef nonnull %1, i32 noundef %2) #10
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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

69:                                               ; preds = %57, %49, %42
  %70 = phi ptr [ %35, %57 ], [ %35, %49 ], [ %31, %42 ]
  %71 = phi ptr [ %39, %57 ], [ %39, %49 ], [ %46, %42 ]
  %72 = phi i32 [ %68, %57 ], [ %40, %49 ], [ %47, %42 ]
  %73 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2, i32 %72), !nosanitize !45
  %74 = extractvalue { i32, i1 } %73, 1, !nosanitize !45
  br i1 %74, label %75, label %76, !prof !46, !nosanitize !45

75:                                               ; preds = %69
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

76:                                               ; preds = %69
  %77 = extractvalue { i32, i1 } %73, 0, !nosanitize !45
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds nuw i8, ptr %1, i64 %78
  br label %80

80:                                               ; preds = %76, %42, %38
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

105:                                              ; preds = %387, %80
  %106 = phi i32 [ %314, %387 ], [ %104, %80 ]
  %107 = load i64, ptr %89, align 8, !tbaa !61
  %108 = zext i32 %106 to i64
  %109 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %107, i64 %108), !nosanitize !45
  %110 = extractvalue { i64, i1 } %109, 1, !nosanitize !45
  br i1 %110, label %111, label %112, !prof !46, !nosanitize !45

111:                                              ; preds = %105
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

112:                                              ; preds = %105
  %113 = extractvalue { i64, i1 } %109, 0, !nosanitize !45
  %114 = load i32, ptr %90, align 4, !tbaa !73
  %115 = zext i32 %114 to i64
  %116 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %113, i64 %115), !nosanitize !45
  %117 = extractvalue { i64, i1 } %116, 1, !nosanitize !45
  br i1 %117, label %118, label %119, !prof !46, !nosanitize !45

118:                                              ; preds = %112
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

119:                                              ; preds = %112
  %120 = extractvalue { i64, i1 } %116, 0, !nosanitize !45
  %121 = trunc i64 %120 to i32
  %122 = load i32, ptr %81, align 8, !tbaa !32
  %123 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %122, i32 262), !nosanitize !45
  %124 = extractvalue { i32, i1 } %123, 1, !nosanitize !45
  br i1 %124, label %125, label %126, !prof !46, !nosanitize !45

125:                                              ; preds = %119
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

126:                                              ; preds = %119
  %127 = extractvalue { i32, i1 } %123, 0, !nosanitize !45
  %128 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %83, i32 %127), !nosanitize !45
  %129 = extractvalue { i32, i1 } %128, 1, !nosanitize !45
  br i1 %129, label %130, label %131, !prof !46, !nosanitize !45

130:                                              ; preds = %126
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

131:                                              ; preds = %126
  %132 = extractvalue { i32, i1 } %128, 0, !nosanitize !45
  %133 = icmp ult i32 %114, %132
  br i1 %133, label %261, label %134

134:                                              ; preds = %131
  %135 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %83, i32 %121), !nosanitize !45
  %136 = extractvalue { i32, i1 } %135, 1, !nosanitize !45
  br i1 %136, label %137, label %138, !prof !46, !nosanitize !45

137:                                              ; preds = %134
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

147:                                              ; preds = %138
  %148 = extractvalue { i32, i1 } %144, 0, !nosanitize !45
  store i32 %148, ptr %93, align 8, !tbaa !83
  %149 = load i32, ptr %90, align 4, !tbaa !73
  %150 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %149, i32 %83), !nosanitize !45
  %151 = extractvalue { i32, i1 } %150, 1, !nosanitize !45
  br i1 %151, label %152, label %153, !prof !46, !nosanitize !45

152:                                              ; preds = %153, %147
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

153:                                              ; preds = %147
  %154 = extractvalue { i32, i1 } %150, 0, !nosanitize !45
  store i32 %154, ptr %90, align 4, !tbaa !73
  %155 = load i64, ptr %94, align 8, !tbaa !74
  %156 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %155, i64 %91), !nosanitize !45
  %157 = extractvalue { i64, i1 } %156, 1, !nosanitize !45
  br i1 %157, label %152, label %158, !prof !46, !nosanitize !45

158:                                              ; preds = %153
  %159 = extractvalue { i64, i1 } %156, 0, !nosanitize !45
  store i64 %159, ptr %94, align 8, !tbaa !74
  %160 = load i32, ptr %95, align 4, !tbaa !76
  %161 = icmp ugt i32 %160, %154
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  store i32 %154, ptr %95, align 4, !tbaa !76
  br label %163

163:                                              ; preds = %162, %158
  %164 = load i32, ptr %81, align 8, !tbaa !32
  %165 = load i32, ptr %96, align 4, !tbaa !36
  %166 = load ptr, ptr %97, align 8, !tbaa !37
  %167 = zext i32 %165 to i64
  %168 = getelementptr inbounds nuw [2 x i8], ptr %166, i64 %167
  %169 = icmp eq i32 %165, 0
  br i1 %169, label %196, label %170, !prof !46, !nosanitize !45

170:                                              ; preds = %163
  %171 = icmp ult i32 %165, 8
  br i1 %171, label %193, label %172

172:                                              ; preds = %170
  %173 = and i64 %167, 4294967288
  %174 = mul nsw i64 %173, -2
  %175 = getelementptr i8, ptr %168, i64 %174
  %176 = trunc nuw i64 %173 to i32
  %177 = sub i32 %165, %176
  %178 = insertelement <8 x i32> poison, i32 %164, i64 0
  %179 = shufflevector <8 x i32> %178, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %180

180:                                              ; preds = %180, %172
  %181 = phi i64 [ 0, %172 ], [ %189, %180 ]
  %182 = mul i64 %181, -2
  %183 = getelementptr i8, ptr %168, i64 %182
  %184 = getelementptr inbounds i8, ptr %183, i64 -16
  %185 = load <8 x i16>, ptr %184, align 2, !tbaa !62
  %186 = zext <8 x i16> %185 to <8 x i32>
  %187 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %186, <8 x i32> %179)
  %188 = trunc nuw <8 x i32> %187 to <8 x i16>
  store <8 x i16> %188, ptr %184, align 2, !tbaa !62
  %189 = add nuw i64 %181, 8
  %190 = icmp eq i64 %189, %173
  br i1 %190, label %191, label %180, !llvm.loop !84

191:                                              ; preds = %180
  %192 = icmp eq i64 %173, %167
  br i1 %192, label %212, label %193

193:                                              ; preds = %191, %170
  %194 = phi ptr [ %168, %170 ], [ %175, %191 ]
  %195 = phi i32 [ %165, %170 ], [ %177, %191 ]
  br label %202

196:                                              ; preds = %163
  %197 = getelementptr inbounds i8, ptr %168, i64 -2
  %198 = load i16, ptr %197, align 2, !tbaa !62
  %199 = zext i16 %198 to i32
  %200 = tail call i32 @llvm.usub.sat.i32(i32 %199, i32 %164)
  %201 = trunc nuw i32 %200 to i16
  store i16 %201, ptr %197, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

202:                                              ; preds = %202, %193
  %203 = phi ptr [ %205, %202 ], [ %194, %193 ]
  %204 = phi i32 [ %210, %202 ], [ %195, %193 ]
  %205 = getelementptr inbounds i8, ptr %203, i64 -2
  %206 = load i16, ptr %205, align 2, !tbaa !62
  %207 = zext i16 %206 to i32
  %208 = tail call i32 @llvm.usub.sat.i32(i32 %207, i32 %164)
  %209 = trunc nuw i32 %208 to i16
  store i16 %209, ptr %205, align 2, !tbaa !62
  %210 = add i32 %204, -1
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %202, !llvm.loop !88

212:                                              ; preds = %202, %191
  %213 = icmp eq i32 %164, 0
  br i1 %213, label %214, label %215, !prof !46, !nosanitize !45

214:                                              ; preds = %212
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

215:                                              ; preds = %212
  %216 = load ptr, ptr %98, align 8, !tbaa !35
  %217 = zext i32 %164 to i64
  %218 = getelementptr inbounds nuw [2 x i8], ptr %216, i64 %217
  %219 = icmp ult i32 %164, 8
  br i1 %219, label %241, label %220

220:                                              ; preds = %215
  %221 = and i64 %217, 4294967288
  %222 = mul nsw i64 %221, -2
  %223 = getelementptr i8, ptr %218, i64 %222
  %224 = trunc nuw i64 %221 to i32
  %225 = sub i32 %164, %224
  %226 = insertelement <8 x i32> poison, i32 %164, i64 0
  %227 = shufflevector <8 x i32> %226, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %228

228:                                              ; preds = %228, %220
  %229 = phi i64 [ 0, %220 ], [ %237, %228 ]
  %230 = mul i64 %229, -2
  %231 = getelementptr i8, ptr %218, i64 %230
  %232 = getelementptr inbounds i8, ptr %231, i64 -16
  %233 = load <8 x i16>, ptr %232, align 2, !tbaa !62
  %234 = zext <8 x i16> %233 to <8 x i32>
  %235 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %234, <8 x i32> %227)
  %236 = trunc nuw <8 x i32> %235 to <8 x i16>
  store <8 x i16> %236, ptr %232, align 2, !tbaa !62
  %237 = add nuw i64 %229, 8
  %238 = icmp eq i64 %237, %221
  br i1 %238, label %239, label %228, !llvm.loop !89

239:                                              ; preds = %228
  %240 = icmp eq i64 %221, %217
  br i1 %240, label %254, label %241

241:                                              ; preds = %239, %215
  %242 = phi ptr [ %218, %215 ], [ %223, %239 ]
  %243 = phi i32 [ %164, %215 ], [ %225, %239 ]
  br label %244

244:                                              ; preds = %244, %241
  %245 = phi ptr [ %247, %244 ], [ %242, %241 ]
  %246 = phi i32 [ %252, %244 ], [ %243, %241 ]
  %247 = getelementptr inbounds i8, ptr %245, i64 -2
  %248 = load i16, ptr %247, align 2, !tbaa !62
  %249 = zext i16 %248 to i32
  %250 = tail call i32 @llvm.usub.sat.i32(i32 %249, i32 %164)
  %251 = trunc nuw i32 %250 to i16
  store i16 %251, ptr %247, align 2, !tbaa !62
  %252 = add i32 %246, -1
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %244, !llvm.loop !90

254:                                              ; preds = %244, %239
  store i32 1, ptr %99, align 8, !tbaa !63
  %255 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %121, i32 %83), !nosanitize !45
  %256 = extractvalue { i32, i1 } %255, 1, !nosanitize !45
  br i1 %256, label %257, label %258, !prof !46, !nosanitize !45

257:                                              ; preds = %254
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

258:                                              ; preds = %254
  %259 = extractvalue { i32, i1 } %255, 0, !nosanitize !45
  %260 = load i32, ptr %82, align 4, !tbaa !75
  br label %261

261:                                              ; preds = %258, %131
  %262 = phi i32 [ %260, %258 ], [ %106, %131 ]
  %263 = phi i32 [ %154, %258 ], [ %114, %131 ]
  %264 = phi i32 [ %259, %258 ], [ %121, %131 ]
  %265 = load ptr, ptr %15, align 8, !tbaa !20
  %266 = getelementptr inbounds nuw i8, ptr %265, i64 8
  %267 = load i32, ptr %266, align 8, !tbaa !81
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %392, label %269

269:                                              ; preds = %261
  %270 = load ptr, ptr %92, align 8, !tbaa !34
  %271 = zext i32 %263 to i64
  %272 = getelementptr inbounds nuw i8, ptr %270, i64 %271
  %273 = zext i32 %262 to i64
  %274 = getelementptr inbounds nuw i8, ptr %272, i64 %273
  %275 = tail call i32 @llvm.umin.i32(i32 %267, i32 %264)
  %276 = icmp eq i32 %264, 0
  br i1 %276, label %308, label %277

277:                                              ; preds = %269
  %278 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %267, i32 %275), !nosanitize !45
  %279 = extractvalue { i32, i1 } %278, 1, !nosanitize !45
  br i1 %279, label %280, label %281, !prof !46, !nosanitize !45

280:                                              ; preds = %277
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

281:                                              ; preds = %277
  %282 = extractvalue { i32, i1 } %278, 0, !nosanitize !45
  store i32 %282, ptr %266, align 8, !tbaa !81
  %283 = load ptr, ptr %265, align 8, !tbaa !82
  %284 = zext i32 %275 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %274, ptr align 1 %283, i64 %284, i1 false)
  %285 = getelementptr inbounds nuw i8, ptr %265, i64 56
  %286 = load ptr, ptr %285, align 8, !tbaa !19
  %287 = getelementptr inbounds nuw i8, ptr %286, i64 48
  %288 = load i32, ptr %287, align 8, !tbaa !30
  switch i32 %288, label %297 [
    i32 1, label %289
    i32 2, label %293
  ]

289:                                              ; preds = %281
  %290 = getelementptr inbounds nuw i8, ptr %265, i64 96
  %291 = load i64, ptr %290, align 8, !tbaa !59
  %292 = tail call i64 @adler32(i64 noundef %291, ptr noundef %274, i32 noundef %275) #10
  store i64 %292, ptr %290, align 8, !tbaa !59
  br label %297

293:                                              ; preds = %281
  %294 = getelementptr inbounds nuw i8, ptr %265, i64 96
  %295 = load i64, ptr %294, align 8, !tbaa !59
  %296 = tail call i64 @crc32(i64 noundef %295, ptr noundef %274, i32 noundef %275) #10
  store i64 %296, ptr %294, align 8, !tbaa !59
  br label %297

297:                                              ; preds = %293, %289, %281
  %298 = load ptr, ptr %265, align 8, !tbaa !82
  %299 = getelementptr inbounds nuw i8, ptr %298, i64 %284
  store ptr %299, ptr %265, align 8, !tbaa !82
  %300 = getelementptr inbounds nuw i8, ptr %265, i64 16
  %301 = load i64, ptr %300, align 8, !tbaa !55
  %302 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %301, i64 %284), !nosanitize !45
  %303 = extractvalue { i64, i1 } %302, 1, !nosanitize !45
  br i1 %303, label %304, label %305, !prof !46, !nosanitize !45

304:                                              ; preds = %297
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

305:                                              ; preds = %297
  %306 = extractvalue { i64, i1 } %302, 0, !nosanitize !45
  store i64 %306, ptr %300, align 8, !tbaa !55
  %307 = load i32, ptr %82, align 4, !tbaa !75
  br label %308

308:                                              ; preds = %305, %269
  %309 = phi i32 [ %262, %269 ], [ %307, %305 ]
  %310 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %309, i32 %275), !nosanitize !45
  %311 = extractvalue { i32, i1 } %310, 1, !nosanitize !45
  br i1 %311, label %312, label %313, !prof !46, !nosanitize !45

312:                                              ; preds = %308
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

313:                                              ; preds = %308
  %314 = extractvalue { i32, i1 } %310, 0, !nosanitize !45
  store i32 %314, ptr %82, align 4, !tbaa !75
  %315 = load i32, ptr %95, align 4, !tbaa !76
  %316 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %314, i32 %315), !nosanitize !45
  %317 = extractvalue { i32, i1 } %316, 1, !nosanitize !45
  br i1 %317, label %318, label %319, !prof !46, !nosanitize !45

318:                                              ; preds = %313
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

319:                                              ; preds = %313
  %320 = extractvalue { i32, i1 } %316, 0, !nosanitize !45
  %321 = icmp ugt i32 %320, 2
  br i1 %321, label %322, label %385

322:                                              ; preds = %319
  %323 = load i32, ptr %90, align 4, !tbaa !73
  %324 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %323, i32 %315), !nosanitize !45
  %325 = extractvalue { i32, i1 } %324, 0, !nosanitize !45
  %326 = extractvalue { i32, i1 } %324, 1, !nosanitize !45
  br i1 %326, label %327, label %328, !prof !46, !nosanitize !45

327:                                              ; preds = %322
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

328:                                              ; preds = %322
  %329 = load ptr, ptr %92, align 8, !tbaa !34
  %330 = zext i32 %325 to i64
  %331 = getelementptr inbounds nuw i8, ptr %329, i64 %330
  %332 = load i8, ptr %331, align 1, !tbaa !8
  %333 = zext i8 %332 to i32
  store i32 %333, ptr %100, align 8, !tbaa !80
  %334 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %325, i32 1), !nosanitize !45
  %335 = extractvalue { i32, i1 } %334, 1, !nosanitize !45
  br i1 %335, label %336, label %337, !prof !46, !nosanitize !45

336:                                              ; preds = %328
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

337:                                              ; preds = %328
  %338 = extractvalue { i32, i1 } %334, 0, !nosanitize !45
  %339 = load i32, ptr %101, align 8, !tbaa !53
  %340 = shl i32 %333, %339
  %341 = zext i32 %338 to i64
  %342 = getelementptr inbounds nuw i8, ptr %329, i64 %341
  %343 = load i8, ptr %342, align 1, !tbaa !8
  %344 = zext i8 %343 to i32
  %345 = xor i32 %340, %344
  %346 = load i32, ptr %102, align 4, !tbaa !52
  %347 = and i32 %345, %346
  store i32 %347, ptr %100, align 8, !tbaa !80
  br label %348

348:                                              ; preds = %381, %337
  %349 = phi i32 [ %347, %337 ], [ %366, %381 ]
  %350 = phi i32 [ %315, %337 ], [ %377, %381 ]
  %351 = phi i32 [ %325, %337 ], [ %382, %381 ]
  %352 = icmp eq i32 %350, 0
  br i1 %352, label %385, label %353

353:                                              ; preds = %348
  %354 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %351, i32 3), !nosanitize !45
  %355 = extractvalue { i32, i1 } %354, 1, !nosanitize !45
  br i1 %355, label %356, label %357, !prof !46, !nosanitize !45

356:                                              ; preds = %353
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

357:                                              ; preds = %353
  %358 = shl i32 %349, %339
  %359 = extractvalue { i32, i1 } %354, 0, !nosanitize !45
  %360 = add i32 %359, -1
  %361 = zext i32 %360 to i64
  %362 = getelementptr inbounds nuw i8, ptr %329, i64 %361
  %363 = load i8, ptr %362, align 1, !tbaa !8
  %364 = zext i8 %363 to i32
  %365 = xor i32 %358, %364
  %366 = and i32 %365, %346
  store i32 %366, ptr %100, align 8, !tbaa !80
  %367 = load ptr, ptr %97, align 8, !tbaa !37
  %368 = zext i32 %366 to i64
  %369 = getelementptr inbounds nuw [2 x i8], ptr %367, i64 %368
  %370 = load i16, ptr %369, align 2, !tbaa !62
  %371 = load ptr, ptr %98, align 8, !tbaa !35
  %372 = load i32, ptr %103, align 8, !tbaa !33
  %373 = and i32 %372, %351
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds nuw [2 x i8], ptr %371, i64 %374
  store i16 %370, ptr %375, align 2, !tbaa !62
  %376 = trunc i32 %351 to i16
  store i16 %376, ptr %369, align 2, !tbaa !62
  %377 = add i32 %350, -1
  store i32 %377, ptr %95, align 4, !tbaa !76
  %378 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %314, i32 %377), !nosanitize !45
  %379 = extractvalue { i32, i1 } %378, 1, !nosanitize !45
  br i1 %379, label %380, label %381, !prof !46, !nosanitize !45

380:                                              ; preds = %357
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

381:                                              ; preds = %357
  %382 = add nuw i32 %351, 1
  %383 = extractvalue { i32, i1 } %378, 0, !nosanitize !45
  %384 = icmp ult i32 %383, 3
  br i1 %384, label %385, label %348, !llvm.loop !91

385:                                              ; preds = %381, %348, %319
  %386 = icmp ult i32 %314, 262
  br i1 %386, label %387, label %392

387:                                              ; preds = %385
  %388 = load ptr, ptr %15, align 8, !tbaa !20
  %389 = getelementptr inbounds nuw i8, ptr %388, i64 8
  %390 = load i32, ptr %389, align 8, !tbaa !81
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %105, !llvm.loop !92

392:                                              ; preds = %387, %385, %261
  %393 = phi i32 [ %314, %387 ], [ %314, %385 ], [ %262, %261 ]
  %394 = getelementptr inbounds nuw i8, ptr %15, i64 5952
  %395 = load i64, ptr %394, align 8, !tbaa !38
  %396 = load i64, ptr %89, align 8, !tbaa !61
  %397 = icmp ult i64 %395, %396
  br i1 %397, label %398, label %437

398:                                              ; preds = %392
  %399 = load i32, ptr %90, align 4, !tbaa !73
  %400 = zext i32 %399 to i64
  %401 = zext i32 %393 to i64
  %402 = add nuw nsw i64 %401, %400
  %403 = icmp ult i64 %395, %402
  br i1 %403, label %404, label %414

404:                                              ; preds = %398
  %405 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %396, i64 %402), !nosanitize !45
  %406 = extractvalue { i64, i1 } %405, 1, !nosanitize !45
  br i1 %406, label %407, label %408, !prof !46, !nosanitize !45

407:                                              ; preds = %404
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

408:                                              ; preds = %404
  %409 = extractvalue { i64, i1 } %405, 0, !nosanitize !45
  %410 = tail call i64 @llvm.umin.i64(i64 %409, i64 258)
  %411 = load ptr, ptr %92, align 8, !tbaa !34
  %412 = getelementptr inbounds nuw i8, ptr %411, i64 %402
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %412, i8 0, i64 %410, i1 false)
  %413 = add nuw nsw i64 %410, %402
  br label %434

414:                                              ; preds = %398
  %415 = add nuw nsw i64 %402, 258
  %416 = icmp ult i64 %395, %415
  br i1 %416, label %417, label %437

417:                                              ; preds = %414
  %418 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %396, i64 %395), !nosanitize !45
  %419 = extractvalue { i64, i1 } %418, 1, !nosanitize !45
  br i1 %419, label %420, label %421, !prof !46, !nosanitize !45

420:                                              ; preds = %417
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

421:                                              ; preds = %417
  %422 = sub nuw nsw i64 %415, %395
  %423 = extractvalue { i64, i1 } %418, 0, !nosanitize !45
  %424 = tail call i64 @llvm.umin.i64(i64 %422, i64 %423)
  %425 = load ptr, ptr %92, align 8, !tbaa !34
  %426 = getelementptr inbounds nuw i8, ptr %425, i64 %395
  %427 = and i64 %424, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %426, i8 0, i64 %427, i1 false)
  %428 = load i64, ptr %394, align 8, !tbaa !38
  %429 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %428, i64 %424), !nosanitize !45
  %430 = extractvalue { i64, i1 } %429, 1, !nosanitize !45
  br i1 %430, label %431, label %432, !prof !46, !nosanitize !45

431:                                              ; preds = %421
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

432:                                              ; preds = %421
  %433 = extractvalue { i64, i1 } %429, 0, !nosanitize !45
  br label %434

434:                                              ; preds = %432, %408
  %435 = phi i64 [ %413, %408 ], [ %433, %432 ]
  store i64 %435, ptr %394, align 8, !tbaa !38
  %436 = load i32, ptr %82, align 4, !tbaa !75
  br label %437

437:                                              ; preds = %434, %414, %392
  %438 = phi i32 [ %393, %392 ], [ %393, %414 ], [ %436, %434 ]
  %439 = icmp ugt i32 %438, 2
  br i1 %439, label %440, label %815

440:                                              ; preds = %812, %437
  %441 = phi i32 [ %813, %812 ], [ %438, %437 ]
  %442 = load i32, ptr %90, align 4, !tbaa !73
  %443 = load i32, ptr %101, align 8, !tbaa !53
  %444 = load ptr, ptr %92, align 8, !tbaa !34
  %445 = tail call i32 @llvm.usub.sat.i32(i32 -3, i32 %442)
  %446 = add i32 %441, -3
  %447 = icmp ugt i32 %445, %446
  br i1 %447, label %448, label %477, !prof !93, !nosanitize !45

448:                                              ; preds = %440
  %449 = load i32, ptr %100, align 8, !tbaa !80
  %450 = add i32 %441, -2
  %451 = load i32, ptr %102, align 4, !tbaa !52
  %452 = load ptr, ptr %97, align 8, !tbaa !37
  %453 = load ptr, ptr %98, align 8, !tbaa !35
  %454 = load i32, ptr %103, align 8, !tbaa !33
  br label %455

455:                                              ; preds = %455, %448
  %456 = phi i32 [ %449, %448 ], [ %466, %455 ]
  %457 = phi i32 [ %442, %448 ], [ %474, %455 ]
  %458 = phi i32 [ %450, %448 ], [ %475, %455 ]
  %459 = shl i32 %456, %443
  %460 = add i32 %457, 2
  %461 = zext i32 %460 to i64
  %462 = getelementptr inbounds nuw i8, ptr %444, i64 %461
  %463 = load i8, ptr %462, align 1, !tbaa !8
  %464 = zext i8 %463 to i32
  %465 = xor i32 %459, %464
  %466 = and i32 %465, %451
  store i32 %466, ptr %100, align 8, !tbaa !80
  %467 = zext i32 %466 to i64
  %468 = getelementptr inbounds nuw [2 x i8], ptr %452, i64 %467
  %469 = load i16, ptr %468, align 2, !tbaa !62
  %470 = and i32 %454, %457
  %471 = zext i32 %470 to i64
  %472 = getelementptr inbounds nuw [2 x i8], ptr %453, i64 %471
  store i16 %469, ptr %472, align 2, !tbaa !62
  %473 = trunc i32 %457 to i16
  store i16 %473, ptr %468, align 2, !tbaa !62
  %474 = add nuw i32 %457, 1
  %475 = add i32 %458, -1
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %478, label %455, !llvm.loop !94

477:                                              ; preds = %440
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

478:                                              ; preds = %455
  store i32 %474, ptr %90, align 4, !tbaa !73
  store i32 2, ptr %82, align 4, !tbaa !75
  %479 = load i32, ptr %81, align 8, !tbaa !32
  %480 = zext i32 %479 to i64
  br label %481

481:                                              ; preds = %763, %478
  %482 = phi i32 [ %690, %763 ], [ 2, %478 ]
  %483 = load i64, ptr %89, align 8, !tbaa !61
  %484 = zext nneg i32 %482 to i64
  %485 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %483, i64 %484), !nosanitize !45
  %486 = extractvalue { i64, i1 } %485, 1, !nosanitize !45
  br i1 %486, label %487, label %488, !prof !46, !nosanitize !45

487:                                              ; preds = %481
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

488:                                              ; preds = %481
  %489 = extractvalue { i64, i1 } %485, 0, !nosanitize !45
  %490 = load i32, ptr %90, align 4, !tbaa !73
  %491 = zext i32 %490 to i64
  %492 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %489, i64 %491), !nosanitize !45
  %493 = extractvalue { i64, i1 } %492, 1, !nosanitize !45
  br i1 %493, label %494, label %495, !prof !46, !nosanitize !45

494:                                              ; preds = %488
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

495:                                              ; preds = %488
  %496 = extractvalue { i64, i1 } %492, 0, !nosanitize !45
  %497 = trunc i64 %496 to i32
  %498 = load i32, ptr %81, align 8, !tbaa !32
  %499 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %498, i32 262), !nosanitize !45
  %500 = extractvalue { i32, i1 } %499, 1, !nosanitize !45
  br i1 %500, label %501, label %502, !prof !46, !nosanitize !45

501:                                              ; preds = %495
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

502:                                              ; preds = %495
  %503 = extractvalue { i32, i1 } %499, 0, !nosanitize !45
  %504 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %479, i32 %503), !nosanitize !45
  %505 = extractvalue { i32, i1 } %504, 1, !nosanitize !45
  br i1 %505, label %506, label %507, !prof !46, !nosanitize !45

506:                                              ; preds = %502
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

507:                                              ; preds = %502
  %508 = extractvalue { i32, i1 } %504, 0, !nosanitize !45
  %509 = icmp ult i32 %490, %508
  br i1 %509, label %637, label %510

510:                                              ; preds = %507
  %511 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %479, i32 %497), !nosanitize !45
  %512 = extractvalue { i32, i1 } %511, 1, !nosanitize !45
  br i1 %512, label %513, label %514, !prof !46, !nosanitize !45

513:                                              ; preds = %510
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

514:                                              ; preds = %510
  %515 = extractvalue { i32, i1 } %511, 0, !nosanitize !45
  %516 = load ptr, ptr %92, align 8, !tbaa !34
  %517 = getelementptr inbounds nuw i8, ptr %516, i64 %480
  %518 = zext i32 %515 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %516, ptr align 1 %517, i64 %518, i1 false)
  %519 = load i32, ptr %93, align 8, !tbaa !83
  %520 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %519, i32 %479), !nosanitize !45
  %521 = extractvalue { i32, i1 } %520, 1, !nosanitize !45
  br i1 %521, label %522, label %523, !prof !46, !nosanitize !45

522:                                              ; preds = %514
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

523:                                              ; preds = %514
  %524 = extractvalue { i32, i1 } %520, 0, !nosanitize !45
  store i32 %524, ptr %93, align 8, !tbaa !83
  %525 = load i32, ptr %90, align 4, !tbaa !73
  %526 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %525, i32 %479), !nosanitize !45
  %527 = extractvalue { i32, i1 } %526, 1, !nosanitize !45
  br i1 %527, label %528, label %529, !prof !46, !nosanitize !45

528:                                              ; preds = %529, %523
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

529:                                              ; preds = %523
  %530 = extractvalue { i32, i1 } %526, 0, !nosanitize !45
  store i32 %530, ptr %90, align 4, !tbaa !73
  %531 = load i64, ptr %94, align 8, !tbaa !74
  %532 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %531, i64 %480), !nosanitize !45
  %533 = extractvalue { i64, i1 } %532, 1, !nosanitize !45
  br i1 %533, label %528, label %534, !prof !46, !nosanitize !45

534:                                              ; preds = %529
  %535 = extractvalue { i64, i1 } %532, 0, !nosanitize !45
  store i64 %535, ptr %94, align 8, !tbaa !74
  %536 = load i32, ptr %95, align 4, !tbaa !76
  %537 = icmp ugt i32 %536, %530
  br i1 %537, label %538, label %539

538:                                              ; preds = %534
  store i32 %530, ptr %95, align 4, !tbaa !76
  br label %539

539:                                              ; preds = %538, %534
  %540 = load i32, ptr %81, align 8, !tbaa !32
  %541 = load i32, ptr %96, align 4, !tbaa !36
  %542 = load ptr, ptr %97, align 8, !tbaa !37
  %543 = zext i32 %541 to i64
  %544 = getelementptr inbounds nuw [2 x i8], ptr %542, i64 %543
  %545 = icmp eq i32 %541, 0
  br i1 %545, label %572, label %546, !prof !46, !nosanitize !45

546:                                              ; preds = %539
  %547 = icmp ult i32 %541, 8
  br i1 %547, label %569, label %548

548:                                              ; preds = %546
  %549 = and i64 %543, 4294967288
  %550 = mul nsw i64 %549, -2
  %551 = getelementptr i8, ptr %544, i64 %550
  %552 = trunc nuw i64 %549 to i32
  %553 = sub i32 %541, %552
  %554 = insertelement <8 x i32> poison, i32 %540, i64 0
  %555 = shufflevector <8 x i32> %554, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %556

556:                                              ; preds = %556, %548
  %557 = phi i64 [ 0, %548 ], [ %565, %556 ]
  %558 = mul i64 %557, -2
  %559 = getelementptr i8, ptr %544, i64 %558
  %560 = getelementptr inbounds i8, ptr %559, i64 -16
  %561 = load <8 x i16>, ptr %560, align 2, !tbaa !62
  %562 = zext <8 x i16> %561 to <8 x i32>
  %563 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %562, <8 x i32> %555)
  %564 = trunc nuw <8 x i32> %563 to <8 x i16>
  store <8 x i16> %564, ptr %560, align 2, !tbaa !62
  %565 = add nuw i64 %557, 8
  %566 = icmp eq i64 %565, %549
  br i1 %566, label %567, label %556, !llvm.loop !95

567:                                              ; preds = %556
  %568 = icmp eq i64 %549, %543
  br i1 %568, label %588, label %569

569:                                              ; preds = %567, %546
  %570 = phi ptr [ %544, %546 ], [ %551, %567 ]
  %571 = phi i32 [ %541, %546 ], [ %553, %567 ]
  br label %578

572:                                              ; preds = %539
  %573 = getelementptr inbounds i8, ptr %544, i64 -2
  %574 = load i16, ptr %573, align 2, !tbaa !62
  %575 = zext i16 %574 to i32
  %576 = tail call i32 @llvm.usub.sat.i32(i32 %575, i32 %540)
  %577 = trunc nuw i32 %576 to i16
  store i16 %577, ptr %573, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

578:                                              ; preds = %578, %569
  %579 = phi ptr [ %581, %578 ], [ %570, %569 ]
  %580 = phi i32 [ %586, %578 ], [ %571, %569 ]
  %581 = getelementptr inbounds i8, ptr %579, i64 -2
  %582 = load i16, ptr %581, align 2, !tbaa !62
  %583 = zext i16 %582 to i32
  %584 = tail call i32 @llvm.usub.sat.i32(i32 %583, i32 %540)
  %585 = trunc nuw i32 %584 to i16
  store i16 %585, ptr %581, align 2, !tbaa !62
  %586 = add i32 %580, -1
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %588, label %578, !llvm.loop !96

588:                                              ; preds = %578, %567
  %589 = icmp eq i32 %540, 0
  br i1 %589, label %590, label %591, !prof !46, !nosanitize !45

590:                                              ; preds = %588
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

591:                                              ; preds = %588
  %592 = load ptr, ptr %98, align 8, !tbaa !35
  %593 = zext i32 %540 to i64
  %594 = getelementptr inbounds nuw [2 x i8], ptr %592, i64 %593
  %595 = icmp ult i32 %540, 8
  br i1 %595, label %617, label %596

596:                                              ; preds = %591
  %597 = and i64 %593, 4294967288
  %598 = mul nsw i64 %597, -2
  %599 = getelementptr i8, ptr %594, i64 %598
  %600 = trunc nuw i64 %597 to i32
  %601 = sub i32 %540, %600
  %602 = insertelement <8 x i32> poison, i32 %540, i64 0
  %603 = shufflevector <8 x i32> %602, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %604

604:                                              ; preds = %604, %596
  %605 = phi i64 [ 0, %596 ], [ %613, %604 ]
  %606 = mul i64 %605, -2
  %607 = getelementptr i8, ptr %594, i64 %606
  %608 = getelementptr inbounds i8, ptr %607, i64 -16
  %609 = load <8 x i16>, ptr %608, align 2, !tbaa !62
  %610 = zext <8 x i16> %609 to <8 x i32>
  %611 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %610, <8 x i32> %603)
  %612 = trunc nuw <8 x i32> %611 to <8 x i16>
  store <8 x i16> %612, ptr %608, align 2, !tbaa !62
  %613 = add nuw i64 %605, 8
  %614 = icmp eq i64 %613, %597
  br i1 %614, label %615, label %604, !llvm.loop !97

615:                                              ; preds = %604
  %616 = icmp eq i64 %597, %593
  br i1 %616, label %630, label %617

617:                                              ; preds = %615, %591
  %618 = phi ptr [ %594, %591 ], [ %599, %615 ]
  %619 = phi i32 [ %540, %591 ], [ %601, %615 ]
  br label %620

620:                                              ; preds = %620, %617
  %621 = phi ptr [ %623, %620 ], [ %618, %617 ]
  %622 = phi i32 [ %628, %620 ], [ %619, %617 ]
  %623 = getelementptr inbounds i8, ptr %621, i64 -2
  %624 = load i16, ptr %623, align 2, !tbaa !62
  %625 = zext i16 %624 to i32
  %626 = tail call i32 @llvm.usub.sat.i32(i32 %625, i32 %540)
  %627 = trunc nuw i32 %626 to i16
  store i16 %627, ptr %623, align 2, !tbaa !62
  %628 = add i32 %622, -1
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %630, label %620, !llvm.loop !98

630:                                              ; preds = %620, %615
  store i32 1, ptr %99, align 8, !tbaa !63
  %631 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %497, i32 %479), !nosanitize !45
  %632 = extractvalue { i32, i1 } %631, 1, !nosanitize !45
  br i1 %632, label %633, label %634, !prof !46, !nosanitize !45

633:                                              ; preds = %630
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

634:                                              ; preds = %630
  %635 = extractvalue { i32, i1 } %631, 0, !nosanitize !45
  %636 = load i32, ptr %82, align 4, !tbaa !75
  br label %637

637:                                              ; preds = %634, %507
  %638 = phi i32 [ %636, %634 ], [ %482, %507 ]
  %639 = phi i32 [ %530, %634 ], [ %490, %507 ]
  %640 = phi i32 [ %635, %634 ], [ %497, %507 ]
  %641 = load ptr, ptr %15, align 8, !tbaa !20
  %642 = getelementptr inbounds nuw i8, ptr %641, i64 8
  %643 = load i32, ptr %642, align 8, !tbaa !81
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %768, label %645

645:                                              ; preds = %637
  %646 = load ptr, ptr %92, align 8, !tbaa !34
  %647 = zext i32 %639 to i64
  %648 = getelementptr inbounds nuw i8, ptr %646, i64 %647
  %649 = zext i32 %638 to i64
  %650 = getelementptr inbounds nuw i8, ptr %648, i64 %649
  %651 = tail call i32 @llvm.umin.i32(i32 %643, i32 %640)
  %652 = icmp eq i32 %640, 0
  br i1 %652, label %684, label %653

653:                                              ; preds = %645
  %654 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %643, i32 %651), !nosanitize !45
  %655 = extractvalue { i32, i1 } %654, 1, !nosanitize !45
  br i1 %655, label %656, label %657, !prof !46, !nosanitize !45

656:                                              ; preds = %653
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

657:                                              ; preds = %653
  %658 = extractvalue { i32, i1 } %654, 0, !nosanitize !45
  store i32 %658, ptr %642, align 8, !tbaa !81
  %659 = load ptr, ptr %641, align 8, !tbaa !82
  %660 = zext i32 %651 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %650, ptr align 1 %659, i64 %660, i1 false)
  %661 = getelementptr inbounds nuw i8, ptr %641, i64 56
  %662 = load ptr, ptr %661, align 8, !tbaa !19
  %663 = getelementptr inbounds nuw i8, ptr %662, i64 48
  %664 = load i32, ptr %663, align 8, !tbaa !30
  switch i32 %664, label %673 [
    i32 1, label %665
    i32 2, label %669
  ]

665:                                              ; preds = %657
  %666 = getelementptr inbounds nuw i8, ptr %641, i64 96
  %667 = load i64, ptr %666, align 8, !tbaa !59
  %668 = tail call i64 @adler32(i64 noundef %667, ptr noundef %650, i32 noundef %651) #10
  store i64 %668, ptr %666, align 8, !tbaa !59
  br label %673

669:                                              ; preds = %657
  %670 = getelementptr inbounds nuw i8, ptr %641, i64 96
  %671 = load i64, ptr %670, align 8, !tbaa !59
  %672 = tail call i64 @crc32(i64 noundef %671, ptr noundef %650, i32 noundef %651) #10
  store i64 %672, ptr %670, align 8, !tbaa !59
  br label %673

673:                                              ; preds = %669, %665, %657
  %674 = load ptr, ptr %641, align 8, !tbaa !82
  %675 = getelementptr inbounds nuw i8, ptr %674, i64 %660
  store ptr %675, ptr %641, align 8, !tbaa !82
  %676 = getelementptr inbounds nuw i8, ptr %641, i64 16
  %677 = load i64, ptr %676, align 8, !tbaa !55
  %678 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %677, i64 %660), !nosanitize !45
  %679 = extractvalue { i64, i1 } %678, 1, !nosanitize !45
  br i1 %679, label %680, label %681, !prof !46, !nosanitize !45

680:                                              ; preds = %673
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

681:                                              ; preds = %673
  %682 = extractvalue { i64, i1 } %678, 0, !nosanitize !45
  store i64 %682, ptr %676, align 8, !tbaa !55
  %683 = load i32, ptr %82, align 4, !tbaa !75
  br label %684

684:                                              ; preds = %681, %645
  %685 = phi i32 [ %638, %645 ], [ %683, %681 ]
  %686 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %685, i32 %651), !nosanitize !45
  %687 = extractvalue { i32, i1 } %686, 1, !nosanitize !45
  br i1 %687, label %688, label %689, !prof !46, !nosanitize !45

688:                                              ; preds = %684
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

689:                                              ; preds = %684
  %690 = extractvalue { i32, i1 } %686, 0, !nosanitize !45
  store i32 %690, ptr %82, align 4, !tbaa !75
  %691 = load i32, ptr %95, align 4, !tbaa !76
  %692 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %690, i32 %691), !nosanitize !45
  %693 = extractvalue { i32, i1 } %692, 1, !nosanitize !45
  br i1 %693, label %694, label %695, !prof !46, !nosanitize !45

694:                                              ; preds = %689
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

695:                                              ; preds = %689
  %696 = extractvalue { i32, i1 } %692, 0, !nosanitize !45
  %697 = icmp ugt i32 %696, 2
  br i1 %697, label %698, label %761

698:                                              ; preds = %695
  %699 = load i32, ptr %90, align 4, !tbaa !73
  %700 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %699, i32 %691), !nosanitize !45
  %701 = extractvalue { i32, i1 } %700, 0, !nosanitize !45
  %702 = extractvalue { i32, i1 } %700, 1, !nosanitize !45
  br i1 %702, label %703, label %704, !prof !46, !nosanitize !45

703:                                              ; preds = %698
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

704:                                              ; preds = %698
  %705 = load ptr, ptr %92, align 8, !tbaa !34
  %706 = zext i32 %701 to i64
  %707 = getelementptr inbounds nuw i8, ptr %705, i64 %706
  %708 = load i8, ptr %707, align 1, !tbaa !8
  %709 = zext i8 %708 to i32
  store i32 %709, ptr %100, align 8, !tbaa !80
  %710 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %701, i32 1), !nosanitize !45
  %711 = extractvalue { i32, i1 } %710, 1, !nosanitize !45
  br i1 %711, label %712, label %713, !prof !46, !nosanitize !45

712:                                              ; preds = %704
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

713:                                              ; preds = %704
  %714 = extractvalue { i32, i1 } %710, 0, !nosanitize !45
  %715 = load i32, ptr %101, align 8, !tbaa !53
  %716 = shl i32 %709, %715
  %717 = zext i32 %714 to i64
  %718 = getelementptr inbounds nuw i8, ptr %705, i64 %717
  %719 = load i8, ptr %718, align 1, !tbaa !8
  %720 = zext i8 %719 to i32
  %721 = xor i32 %716, %720
  %722 = load i32, ptr %102, align 4, !tbaa !52
  %723 = and i32 %721, %722
  store i32 %723, ptr %100, align 8, !tbaa !80
  br label %724

724:                                              ; preds = %757, %713
  %725 = phi i32 [ %723, %713 ], [ %742, %757 ]
  %726 = phi i32 [ %691, %713 ], [ %753, %757 ]
  %727 = phi i32 [ %701, %713 ], [ %758, %757 ]
  %728 = icmp eq i32 %726, 0
  br i1 %728, label %761, label %729

729:                                              ; preds = %724
  %730 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %727, i32 3), !nosanitize !45
  %731 = extractvalue { i32, i1 } %730, 1, !nosanitize !45
  br i1 %731, label %732, label %733, !prof !46, !nosanitize !45

732:                                              ; preds = %729
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

733:                                              ; preds = %729
  %734 = shl i32 %725, %715
  %735 = extractvalue { i32, i1 } %730, 0, !nosanitize !45
  %736 = add i32 %735, -1
  %737 = zext i32 %736 to i64
  %738 = getelementptr inbounds nuw i8, ptr %705, i64 %737
  %739 = load i8, ptr %738, align 1, !tbaa !8
  %740 = zext i8 %739 to i32
  %741 = xor i32 %734, %740
  %742 = and i32 %741, %722
  store i32 %742, ptr %100, align 8, !tbaa !80
  %743 = load ptr, ptr %97, align 8, !tbaa !37
  %744 = zext i32 %742 to i64
  %745 = getelementptr inbounds nuw [2 x i8], ptr %743, i64 %744
  %746 = load i16, ptr %745, align 2, !tbaa !62
  %747 = load ptr, ptr %98, align 8, !tbaa !35
  %748 = load i32, ptr %103, align 8, !tbaa !33
  %749 = and i32 %748, %727
  %750 = zext i32 %749 to i64
  %751 = getelementptr inbounds nuw [2 x i8], ptr %747, i64 %750
  store i16 %746, ptr %751, align 2, !tbaa !62
  %752 = trunc i32 %727 to i16
  store i16 %752, ptr %745, align 2, !tbaa !62
  %753 = add i32 %726, -1
  store i32 %753, ptr %95, align 4, !tbaa !76
  %754 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %690, i32 %753), !nosanitize !45
  %755 = extractvalue { i32, i1 } %754, 1, !nosanitize !45
  br i1 %755, label %756, label %757, !prof !46, !nosanitize !45

756:                                              ; preds = %733
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

757:                                              ; preds = %733
  %758 = add nuw i32 %727, 1
  %759 = extractvalue { i32, i1 } %754, 0, !nosanitize !45
  %760 = icmp ult i32 %759, 3
  br i1 %760, label %761, label %724, !llvm.loop !91

761:                                              ; preds = %757, %724, %695
  %762 = icmp ult i32 %690, 262
  br i1 %762, label %763, label %768

763:                                              ; preds = %761
  %764 = load ptr, ptr %15, align 8, !tbaa !20
  %765 = getelementptr inbounds nuw i8, ptr %764, i64 8
  %766 = load i32, ptr %765, align 8, !tbaa !81
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %768, label %481, !llvm.loop !92

768:                                              ; preds = %763, %761, %637
  %769 = phi i32 [ %690, %763 ], [ %690, %761 ], [ %638, %637 ]
  %770 = load i64, ptr %394, align 8, !tbaa !38
  %771 = load i64, ptr %89, align 8, !tbaa !61
  %772 = icmp ult i64 %770, %771
  br i1 %772, label %773, label %812

773:                                              ; preds = %768
  %774 = load i32, ptr %90, align 4, !tbaa !73
  %775 = zext i32 %774 to i64
  %776 = zext i32 %769 to i64
  %777 = add nuw nsw i64 %776, %775
  %778 = icmp ult i64 %770, %777
  br i1 %778, label %779, label %789

779:                                              ; preds = %773
  %780 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %771, i64 %777), !nosanitize !45
  %781 = extractvalue { i64, i1 } %780, 1, !nosanitize !45
  br i1 %781, label %782, label %783, !prof !46, !nosanitize !45

782:                                              ; preds = %779
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

783:                                              ; preds = %779
  %784 = extractvalue { i64, i1 } %780, 0, !nosanitize !45
  %785 = tail call i64 @llvm.umin.i64(i64 %784, i64 258)
  %786 = load ptr, ptr %92, align 8, !tbaa !34
  %787 = getelementptr inbounds nuw i8, ptr %786, i64 %777
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %787, i8 0, i64 %785, i1 false)
  %788 = add nuw nsw i64 %785, %777
  br label %809

789:                                              ; preds = %773
  %790 = add nuw nsw i64 %777, 258
  %791 = icmp ult i64 %770, %790
  br i1 %791, label %792, label %812

792:                                              ; preds = %789
  %793 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %771, i64 %770), !nosanitize !45
  %794 = extractvalue { i64, i1 } %793, 1, !nosanitize !45
  br i1 %794, label %795, label %796, !prof !46, !nosanitize !45

795:                                              ; preds = %792
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

796:                                              ; preds = %792
  %797 = sub nuw nsw i64 %790, %770
  %798 = extractvalue { i64, i1 } %793, 0, !nosanitize !45
  %799 = tail call i64 @llvm.umin.i64(i64 %797, i64 %798)
  %800 = load ptr, ptr %92, align 8, !tbaa !34
  %801 = getelementptr inbounds nuw i8, ptr %800, i64 %770
  %802 = and i64 %799, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %801, i8 0, i64 %802, i1 false)
  %803 = load i64, ptr %394, align 8, !tbaa !38
  %804 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %803, i64 %799), !nosanitize !45
  %805 = extractvalue { i64, i1 } %804, 1, !nosanitize !45
  br i1 %805, label %806, label %807, !prof !46, !nosanitize !45

806:                                              ; preds = %796
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

807:                                              ; preds = %796
  %808 = extractvalue { i64, i1 } %804, 0, !nosanitize !45
  br label %809

809:                                              ; preds = %807, %783
  %810 = phi i64 [ %788, %783 ], [ %808, %807 ]
  store i64 %810, ptr %394, align 8, !tbaa !38
  %811 = load i32, ptr %82, align 4, !tbaa !75
  br label %812

812:                                              ; preds = %809, %789, %768
  %813 = phi i32 [ %769, %768 ], [ %769, %789 ], [ %811, %809 ]
  %814 = icmp ugt i32 %813, 2
  br i1 %814, label %440, label %815, !llvm.loop !99

815:                                              ; preds = %812, %437
  %816 = phi i32 [ %438, %437 ], [ %813, %812 ]
  %817 = load i32, ptr %90, align 4, !tbaa !73
  %818 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %817, i32 %816), !nosanitize !45
  %819 = extractvalue { i32, i1 } %818, 1, !nosanitize !45
  br i1 %819, label %820, label %821, !prof !46, !nosanitize !45

820:                                              ; preds = %815
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

821:                                              ; preds = %815
  %822 = extractvalue { i32, i1 } %818, 0, !nosanitize !45
  store i32 %822, ptr %90, align 4, !tbaa !73
  %823 = zext i32 %822 to i64
  store i64 %823, ptr %94, align 8, !tbaa !74
  store i32 %816, ptr %95, align 4, !tbaa !76
  store i32 0, ptr %82, align 4, !tbaa !75
  %824 = getelementptr inbounds nuw i8, ptr %15, i64 184
  store i32 2, ptr %824, align 8, !tbaa !77
  %825 = getelementptr inbounds nuw i8, ptr %15, i64 160
  store i32 2, ptr %825, align 8, !tbaa !78
  %826 = getelementptr inbounds nuw i8, ptr %15, i64 168
  store i32 0, ptr %826, align 8, !tbaa !79
  store ptr %88, ptr %0, align 8, !tbaa !82
  store i32 %87, ptr %86, align 8, !tbaa !81
  store i32 %27, ptr %26, align 8, !tbaa !30
  br label %827

827:                                              ; preds = %821, %34, %30, %28, %25, %23, %20, %17, %13, %9, %5, %3
  %828 = phi i32 [ 0, %821 ], [ -2, %23 ], [ -2, %30 ], [ -2, %28 ], [ -2, %25 ], [ -2, %34 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %828
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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

52:                                               ; preds = %51, %49, %20, %17, %13, %9, %5, %3
  %53 = phi i32 [ 0, %49 ], [ 0, %51 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %53
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateResetKeep(ptr noundef captures(address) %0) local_unnamed_addr #0 {
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
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %30), !nosanitize !45
  %34 = extractvalue { i32, i1 } %33, 1, !nosanitize !45
  br i1 %34, label %35, label %36, !prof !46, !nosanitize !45

35:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 13) #12, !nosanitize !45
  unreachable, !nosanitize !45

36:                                               ; preds = %32
  %37 = extractvalue { i32, i1 } %33, 0, !nosanitize !45
  store i32 %37, ptr %29, align 8, !tbaa !30
  br label %38

38:                                               ; preds = %36, %21
  %39 = phi i32 [ %37, %36 ], [ %30, %21 ]
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
  store i64 %47, ptr %48, align 8, !tbaa !59
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %49, align 4, !tbaa !60
  tail call void @_tr_init(ptr noundef nonnull %13) #10
  br label %50

50:                                               ; preds = %46, %18, %15, %11, %7, %3, %1
  %51 = phi i32 [ 0, %46 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %51
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

28:                                               ; preds = %26, %22, %19, %16, %12, %8, %4, %2
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

37:                                               ; preds = %30, %28, %20, %17, %13, %9, %5, %3
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

27:                                               ; preds = %24, %22, %19, %16, %12, %8, %4, %2
  %28 = phi i32 [ 0, %22 ], [ 0, %24 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflatePrime(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %66, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %66, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %66, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %66, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %66

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %66 [
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
  br i1 %24, label %66, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 5888
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  %28 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %29 = load ptr, ptr %28, align 8, !tbaa !58
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 2
  %31 = icmp ult ptr %27, %30
  br i1 %31, label %66, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds nuw i8, ptr %15, i64 5940
  %34 = getelementptr inbounds nuw i8, ptr %15, i64 5936
  br label %35

35:                                               ; preds = %62, %32
  %36 = phi i32 [ %63, %62 ], [ %1, %32 ]
  %37 = phi i32 [ %64, %62 ], [ %2, %32 ]
  %38 = load i32, ptr %33, align 4, !tbaa !101
  %39 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %38), !nosanitize !45
  %40 = extractvalue { i32, i1 } %39, 1, !nosanitize !45
  br i1 %40, label %41, label %42, !prof !46, !nosanitize !45

41:                                               ; preds = %58, %42, %35
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

42:                                               ; preds = %35
  %43 = extractvalue { i32, i1 } %39, 0, !nosanitize !45
  %44 = tail call i32 @llvm.smin.i32(i32 %43, i32 %36)
  %45 = shl nuw i32 1, %44
  %46 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %45, i32 -1)
  %47 = extractvalue { i32, i1 } %46, 1, !nosanitize !45
  br i1 %47, label %41, label %48, !prof !46, !nosanitize !45

48:                                               ; preds = %42
  %49 = extractvalue { i32, i1 } %46, 0, !nosanitize !45
  %50 = and i32 %49, %37
  %51 = shl i32 %50, %38
  %52 = load i16, ptr %34, align 8, !tbaa !103
  %53 = trunc i32 %51 to i16
  %54 = or i16 %52, %53
  store i16 %54, ptr %34, align 8, !tbaa !103
  %55 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %38, i32 %44), !nosanitize !45
  %56 = extractvalue { i32, i1 } %55, 1, !nosanitize !45
  br i1 %56, label %57, label %58, !prof !46, !nosanitize !45

57:                                               ; preds = %48
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

58:                                               ; preds = %48
  %59 = extractvalue { i32, i1 } %55, 0, !nosanitize !45
  store i32 %59, ptr %33, align 4, !tbaa !101
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #10
  %60 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %36, i32 %44), !nosanitize !45
  %61 = extractvalue { i32, i1 } %60, 1, !nosanitize !45
  br i1 %61, label %41, label %62, !prof !46, !nosanitize !45

62:                                               ; preds = %58
  %63 = extractvalue { i32, i1 } %60, 0, !nosanitize !45
  %64 = ashr i32 %37, %44
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %66, label %35, !llvm.loop !104

66:                                               ; preds = %62, %25, %23, %20, %17, %13, %9, %5, %3
  %67 = phi i32 [ -5, %23 ], [ -2, %13 ], [ -5, %25 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ 0, %62 ]
  ret i32 %67
}

declare void @_tr_flush_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflateParams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %1105, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %1105, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %1105, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %1105, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %1105

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %1105 [
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
  br i1 %28, label %1105, label %29

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
  br i1 %44, label %1062, label %45

45:                                               ; preds = %34, %29
  %46 = getelementptr inbounds nuw i8, ptr %15, i64 76
  %47 = load i32, ptr %46, align 4, !tbaa !60
  %48 = icmp eq i32 %47, -2
  br i1 %48, label %1062, label %49

49:                                               ; preds = %45
  switch i32 %22, label %1105 [
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
  br label %1105

68:                                               ; preds = %63, %58
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %70 = load i32, ptr %69, align 8, !tbaa !107
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %73, ptr %74, align 8, !tbaa !9
  br label %1039

75:                                               ; preds = %68
  store i32 5, ptr %46, align 4, !tbaa !60
  %76 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %77 = load i64, ptr %76, align 8, !tbaa !57
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %124, label %79

79:                                               ; preds = %75
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #10
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

99:                                               ; preds = %86
  %100 = extractvalue { i64, i1 } %96, 0, !nosanitize !45
  store i64 %100, ptr %94, align 8, !tbaa !108
  %101 = load i32, ptr %69, align 8, !tbaa !107
  %102 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %101, i32 %84), !nosanitize !45
  %103 = extractvalue { i32, i1 } %102, 1, !nosanitize !45
  br i1 %103, label %104, label %105, !prof !46, !nosanitize !45

104:                                              ; preds = %99
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

105:                                              ; preds = %99
  %106 = extractvalue { i32, i1 } %102, 0, !nosanitize !45
  store i32 %106, ptr %69, align 8, !tbaa !107
  %107 = load i64, ptr %76, align 8, !tbaa !57
  %108 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %107, i64 %83), !nosanitize !45
  %109 = extractvalue { i64, i1 } %108, 1, !nosanitize !45
  br i1 %109, label %110, label %111, !prof !46, !nosanitize !45

110:                                              ; preds = %105
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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
  br label %142

123:                                              ; preds = %117
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1039

124:                                              ; preds = %75
  br i1 %57, label %126, label %142

125:                                              ; preds = %126
  tail call void @llvm.ubsantrap(i8 12) #12, !nosanitize !45
  unreachable, !nosanitize !45

126:                                              ; preds = %124
  %127 = add i32 %47, 1073741824
  %128 = icmp sgt i32 %127, -1
  br i1 %128, label %130, label %125, !prof !93, !nosanitize !45

129:                                              ; preds = %130
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

130:                                              ; preds = %126
  %131 = shl nsw i32 %47, 1
  %132 = icmp sgt i32 %47, 4
  %133 = select i1 %132, i32 9, i32 0
  %134 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %131, i32 %133), !nosanitize !45
  %135 = extractvalue { i32, i1 } %134, 1, !nosanitize !45
  br i1 %135, label %129, label %136, !prof !46, !nosanitize !45

136:                                              ; preds = %130
  %137 = extractvalue { i32, i1 } %134, 0, !nosanitize !45
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %140, ptr %141, align 8, !tbaa !9
  br label %1039

142:                                              ; preds = %136, %124, %121
  %143 = phi i64 [ %118, %121 ], [ 0, %124 ], [ 0, %136 ]
  %144 = phi i32 [ %122, %121 ], [ %22, %124 ], [ %22, %136 ]
  switch i32 %144, label %258 [
    i32 666, label %145
    i32 42, label %151
  ]

145:                                              ; preds = %142
  %146 = load i32, ptr %55, align 8, !tbaa !81
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %997, label %148

148:                                              ; preds = %145
  %149 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %149, ptr %150, align 8, !tbaa !9
  br label %1039

151:                                              ; preds = %142
  %152 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %153 = load i32, ptr %152, align 8, !tbaa !30
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  store i32 113, ptr %21, align 8, !tbaa !29
  br label %994

156:                                              ; preds = %151
  %157 = getelementptr inbounds nuw i8, ptr %15, i64 84
  %158 = load i32, ptr %157, align 4, !tbaa !31
  %159 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %158, i32 8), !nosanitize !45
  %160 = extractvalue { i32, i1 } %159, 1, !nosanitize !45
  br i1 %160, label %161, label %162, !prof !46, !nosanitize !45

161:                                              ; preds = %156
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

162:                                              ; preds = %156
  %163 = extractvalue { i32, i1 } %159, 0, !nosanitize !45
  %164 = shl i32 %163, 12
  %165 = load i32, ptr %31, align 8, !tbaa !49
  %166 = icmp sgt i32 %165, 1
  br i1 %166, label %175, label %167

167:                                              ; preds = %162
  %168 = load i32, ptr %30, align 4, !tbaa !48
  %169 = icmp slt i32 %168, 2
  br i1 %169, label %175, label %170

170:                                              ; preds = %167
  %171 = icmp samesign ult i32 %168, 6
  br i1 %171, label %175, label %172

172:                                              ; preds = %170
  %173 = icmp eq i32 %168, 6
  %174 = select i1 %173, i32 128, i32 192
  br label %175

175:                                              ; preds = %172, %170, %167, %162
  %176 = phi i32 [ 64, %170 ], [ 0, %162 ], [ %174, %172 ], [ 0, %167 ]
  %177 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %178 = or disjoint i32 %176, %164
  %179 = load i32, ptr %177, align 4, !tbaa !73
  %180 = icmp eq i32 %179, 0
  %181 = select i1 %180, i32 2048, i32 2080
  %182 = or disjoint i32 %181, %178
  %183 = urem i32 %182, 31
  %184 = or disjoint i32 %183, %182
  %185 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %143, i64 1), !nosanitize !45
  %186 = extractvalue { i64, i1 } %185, 1, !nosanitize !45
  br i1 %186, label %187, label %188, !prof !46, !nosanitize !45

187:                                              ; preds = %175
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

188:                                              ; preds = %175
  %189 = extractvalue { i64, i1 } %185, 0, !nosanitize !45
  %190 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %191 = load ptr, ptr %190, align 8, !tbaa !40
  %192 = lshr i32 %182, 8
  %193 = trunc i32 %192 to i8
  store i64 %189, ptr %76, align 8, !tbaa !57
  %194 = getelementptr inbounds nuw i8, ptr %191, i64 %143
  store i8 %193, ptr %194, align 1, !tbaa !8
  %195 = load i64, ptr %76, align 8, !tbaa !57
  %196 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %195, i64 1), !nosanitize !45
  %197 = extractvalue { i64, i1 } %196, 1, !nosanitize !45
  br i1 %197, label %198, label %199, !prof !46, !nosanitize !45

198:                                              ; preds = %188
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

199:                                              ; preds = %188
  %200 = extractvalue { i64, i1 } %196, 0, !nosanitize !45
  %201 = load ptr, ptr %190, align 8, !tbaa !40
  %202 = trunc i32 %184 to i8
  %203 = xor i8 %202, 31
  store i64 %200, ptr %76, align 8, !tbaa !57
  %204 = getelementptr inbounds nuw i8, ptr %201, i64 %195
  store i8 %203, ptr %204, align 1, !tbaa !8
  %205 = load i32, ptr %177, align 4, !tbaa !73
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %250, label %207

207:                                              ; preds = %199
  %208 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %209 = load i64, ptr %208, align 8, !tbaa !59
  %210 = lshr i64 %209, 16
  %211 = load i64, ptr %76, align 8, !tbaa !57
  %212 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %211, i64 1), !nosanitize !45
  %213 = extractvalue { i64, i1 } %212, 1, !nosanitize !45
  br i1 %213, label %214, label %215, !prof !46, !nosanitize !45

214:                                              ; preds = %207
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

215:                                              ; preds = %207
  %216 = extractvalue { i64, i1 } %212, 0, !nosanitize !45
  %217 = load ptr, ptr %190, align 8, !tbaa !40
  %218 = lshr i64 %209, 24
  %219 = trunc i64 %218 to i8
  store i64 %216, ptr %76, align 8, !tbaa !57
  %220 = getelementptr inbounds nuw i8, ptr %217, i64 %211
  store i8 %219, ptr %220, align 1, !tbaa !8
  %221 = load i64, ptr %76, align 8, !tbaa !57
  %222 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %221, i64 1), !nosanitize !45
  %223 = extractvalue { i64, i1 } %222, 1, !nosanitize !45
  br i1 %223, label %224, label %225, !prof !46, !nosanitize !45

224:                                              ; preds = %215
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

225:                                              ; preds = %215
  %226 = extractvalue { i64, i1 } %222, 0, !nosanitize !45
  %227 = load ptr, ptr %190, align 8, !tbaa !40
  %228 = trunc i64 %210 to i8
  store i64 %226, ptr %76, align 8, !tbaa !57
  %229 = getelementptr inbounds nuw i8, ptr %227, i64 %221
  store i8 %228, ptr %229, align 1, !tbaa !8
  %230 = load i64, ptr %208, align 8, !tbaa !59
  %231 = trunc i64 %230 to i8
  %232 = load i64, ptr %76, align 8, !tbaa !57
  %233 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %232, i64 1), !nosanitize !45
  %234 = extractvalue { i64, i1 } %233, 1, !nosanitize !45
  br i1 %234, label %235, label %236, !prof !46, !nosanitize !45

235:                                              ; preds = %225
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

236:                                              ; preds = %225
  %237 = extractvalue { i64, i1 } %233, 0, !nosanitize !45
  %238 = load ptr, ptr %190, align 8, !tbaa !40
  %239 = lshr i64 %230, 8
  %240 = trunc i64 %239 to i8
  store i64 %237, ptr %76, align 8, !tbaa !57
  %241 = getelementptr inbounds nuw i8, ptr %238, i64 %232
  store i8 %240, ptr %241, align 1, !tbaa !8
  %242 = load i64, ptr %76, align 8, !tbaa !57
  %243 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %242, i64 1), !nosanitize !45
  %244 = extractvalue { i64, i1 } %243, 1, !nosanitize !45
  br i1 %244, label %245, label %246, !prof !46, !nosanitize !45

245:                                              ; preds = %236
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

246:                                              ; preds = %236
  %247 = extractvalue { i64, i1 } %243, 0, !nosanitize !45
  %248 = load ptr, ptr %190, align 8, !tbaa !40
  store i64 %247, ptr %76, align 8, !tbaa !57
  %249 = getelementptr inbounds nuw i8, ptr %248, i64 %242
  store i8 %231, ptr %249, align 1, !tbaa !8
  br label %250

250:                                              ; preds = %246, %199
  %251 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  %252 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %251, ptr %252, align 8, !tbaa !59
  store i32 113, ptr %21, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %253 = load i64, ptr %76, align 8, !tbaa !57
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %250
  %256 = load i32, ptr %21, align 8, !tbaa !29
  br label %258

257:                                              ; preds = %250
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1039

258:                                              ; preds = %255, %142
  %259 = phi i32 [ %256, %255 ], [ %144, %142 ]
  %260 = icmp eq i32 %259, 57
  br i1 %260, label %261, label %516

261:                                              ; preds = %258
  %262 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  %263 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %262, ptr %263, align 8, !tbaa !59
  %264 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %265 = load i64, ptr %76, align 8, !tbaa !57
  %266 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %265, i64 1), !nosanitize !45
  %267 = extractvalue { i64, i1 } %266, 1, !nosanitize !45
  br i1 %267, label %268, label %269, !prof !46, !nosanitize !45

268:                                              ; preds = %261
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

269:                                              ; preds = %261
  %270 = extractvalue { i64, i1 } %266, 0, !nosanitize !45
  %271 = load ptr, ptr %264, align 8, !tbaa !40
  store i64 %270, ptr %76, align 8, !tbaa !57
  %272 = getelementptr inbounds nuw i8, ptr %271, i64 %265
  store i8 31, ptr %272, align 1, !tbaa !8
  %273 = load i64, ptr %76, align 8, !tbaa !57
  %274 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %273, i64 1), !nosanitize !45
  %275 = extractvalue { i64, i1 } %274, 1, !nosanitize !45
  br i1 %275, label %276, label %277, !prof !46, !nosanitize !45

276:                                              ; preds = %269
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

277:                                              ; preds = %269
  %278 = extractvalue { i64, i1 } %274, 0, !nosanitize !45
  %279 = load ptr, ptr %264, align 8, !tbaa !40
  store i64 %278, ptr %76, align 8, !tbaa !57
  %280 = getelementptr inbounds nuw i8, ptr %279, i64 %273
  store i8 -117, ptr %280, align 1, !tbaa !8
  %281 = load i64, ptr %76, align 8, !tbaa !57
  %282 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %281, i64 1), !nosanitize !45
  %283 = extractvalue { i64, i1 } %282, 1, !nosanitize !45
  br i1 %283, label %284, label %285, !prof !46, !nosanitize !45

284:                                              ; preds = %277
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

285:                                              ; preds = %277
  %286 = extractvalue { i64, i1 } %282, 0, !nosanitize !45
  %287 = load ptr, ptr %264, align 8, !tbaa !40
  store i64 %286, ptr %76, align 8, !tbaa !57
  %288 = getelementptr inbounds nuw i8, ptr %287, i64 %281
  store i8 8, ptr %288, align 1, !tbaa !8
  %289 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %290 = load ptr, ptr %289, align 8, !tbaa !100
  %291 = icmp eq ptr %290, null
  %292 = load i64, ptr %76, align 8, !tbaa !57
  %293 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %292, i64 1), !nosanitize !45
  %294 = extractvalue { i64, i1 } %293, 1, !nosanitize !45
  br i1 %291, label %295, label %362

295:                                              ; preds = %285
  br i1 %294, label %296, label %297, !prof !46, !nosanitize !45

296:                                              ; preds = %295
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

297:                                              ; preds = %295
  %298 = extractvalue { i64, i1 } %293, 0, !nosanitize !45
  %299 = load ptr, ptr %264, align 8, !tbaa !40
  store i64 %298, ptr %76, align 8, !tbaa !57
  %300 = getelementptr inbounds nuw i8, ptr %299, i64 %292
  store i8 0, ptr %300, align 1, !tbaa !8
  %301 = load i64, ptr %76, align 8, !tbaa !57
  %302 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %301, i64 1), !nosanitize !45
  %303 = extractvalue { i64, i1 } %302, 1, !nosanitize !45
  br i1 %303, label %304, label %305, !prof !46, !nosanitize !45

304:                                              ; preds = %297
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

305:                                              ; preds = %297
  %306 = extractvalue { i64, i1 } %302, 0, !nosanitize !45
  %307 = load ptr, ptr %264, align 8, !tbaa !40
  store i64 %306, ptr %76, align 8, !tbaa !57
  %308 = getelementptr inbounds nuw i8, ptr %307, i64 %301
  store i8 0, ptr %308, align 1, !tbaa !8
  %309 = load i64, ptr %76, align 8, !tbaa !57
  %310 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %309, i64 1), !nosanitize !45
  %311 = extractvalue { i64, i1 } %310, 1, !nosanitize !45
  br i1 %311, label %312, label %313, !prof !46, !nosanitize !45

312:                                              ; preds = %305
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

313:                                              ; preds = %305
  %314 = extractvalue { i64, i1 } %310, 0, !nosanitize !45
  %315 = load ptr, ptr %264, align 8, !tbaa !40
  store i64 %314, ptr %76, align 8, !tbaa !57
  %316 = getelementptr inbounds nuw i8, ptr %315, i64 %309
  store i8 0, ptr %316, align 1, !tbaa !8
  %317 = load i64, ptr %76, align 8, !tbaa !57
  %318 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %317, i64 1), !nosanitize !45
  %319 = extractvalue { i64, i1 } %318, 1, !nosanitize !45
  br i1 %319, label %320, label %321, !prof !46, !nosanitize !45

320:                                              ; preds = %313
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

321:                                              ; preds = %313
  %322 = extractvalue { i64, i1 } %318, 0, !nosanitize !45
  %323 = load ptr, ptr %264, align 8, !tbaa !40
  store i64 %322, ptr %76, align 8, !tbaa !57
  %324 = getelementptr inbounds nuw i8, ptr %323, i64 %317
  store i8 0, ptr %324, align 1, !tbaa !8
  %325 = load i64, ptr %76, align 8, !tbaa !57
  %326 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %325, i64 1), !nosanitize !45
  %327 = extractvalue { i64, i1 } %326, 1, !nosanitize !45
  br i1 %327, label %328, label %329, !prof !46, !nosanitize !45

328:                                              ; preds = %321
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

329:                                              ; preds = %321
  %330 = extractvalue { i64, i1 } %326, 0, !nosanitize !45
  %331 = load ptr, ptr %264, align 8, !tbaa !40
  store i64 %330, ptr %76, align 8, !tbaa !57
  %332 = getelementptr inbounds nuw i8, ptr %331, i64 %325
  store i8 0, ptr %332, align 1, !tbaa !8
  %333 = load i32, ptr %30, align 4, !tbaa !48
  %334 = icmp eq i32 %333, 9
  br i1 %334, label %341, label %335

335:                                              ; preds = %329
  %336 = load i32, ptr %31, align 8, !tbaa !49
  %337 = icmp sgt i32 %336, 1
  %338 = icmp slt i32 %333, 2
  %339 = or i1 %338, %337
  %340 = select i1 %339, i8 4, i8 0
  br label %341

341:                                              ; preds = %335, %329
  %342 = phi i8 [ %340, %335 ], [ 2, %329 ]
  %343 = load i64, ptr %76, align 8, !tbaa !57
  %344 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %343, i64 1), !nosanitize !45
  %345 = extractvalue { i64, i1 } %344, 1, !nosanitize !45
  br i1 %345, label %346, label %347, !prof !46, !nosanitize !45

346:                                              ; preds = %341
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

347:                                              ; preds = %341
  %348 = extractvalue { i64, i1 } %344, 0, !nosanitize !45
  %349 = load ptr, ptr %264, align 8, !tbaa !40
  store i64 %348, ptr %76, align 8, !tbaa !57
  %350 = getelementptr inbounds nuw i8, ptr %349, i64 %343
  store i8 %342, ptr %350, align 1, !tbaa !8
  %351 = load i64, ptr %76, align 8, !tbaa !57
  %352 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %351, i64 1), !nosanitize !45
  %353 = extractvalue { i64, i1 } %352, 1, !nosanitize !45
  br i1 %353, label %354, label %355, !prof !46, !nosanitize !45

354:                                              ; preds = %347
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

355:                                              ; preds = %347
  %356 = extractvalue { i64, i1 } %352, 0, !nosanitize !45
  %357 = load ptr, ptr %264, align 8, !tbaa !40
  store i64 %356, ptr %76, align 8, !tbaa !57
  %358 = getelementptr inbounds nuw i8, ptr %357, i64 %351
  store i8 3, ptr %358, align 1, !tbaa !8
  store i32 113, ptr %21, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %359 = load i64, ptr %76, align 8, !tbaa !57
  %360 = icmp eq i64 %359, 0
  br i1 %360, label %514, label %361

361:                                              ; preds = %355
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1039

362:                                              ; preds = %285
  br i1 %294, label %363, label %364, !prof !46, !nosanitize !45

363:                                              ; preds = %362
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

364:                                              ; preds = %362
  %365 = extractvalue { i64, i1 } %293, 0, !nosanitize !45
  %366 = load ptr, ptr %264, align 8, !tbaa !40
  %367 = getelementptr inbounds nuw i8, ptr %290, i64 56
  %368 = load ptr, ptr %367, align 8, !tbaa !109
  %369 = icmp eq ptr %368, null
  %370 = getelementptr inbounds nuw i8, ptr %290, i64 40
  %371 = load ptr, ptr %370, align 8, !tbaa !111
  %372 = icmp eq ptr %371, null
  %373 = getelementptr inbounds nuw i8, ptr %290, i64 24
  %374 = load ptr, ptr %373, align 8, !tbaa !112
  %375 = icmp eq ptr %374, null
  %376 = load i32, ptr %290, align 8, !tbaa !113
  %377 = icmp ne i32 %376, 0
  %378 = getelementptr inbounds nuw i8, ptr %290, i64 68
  %379 = load i32, ptr %378, align 4, !tbaa !114
  %380 = icmp eq i32 %379, 0
  %381 = select i1 %380, i8 0, i8 2
  %382 = zext i1 %377 to i8
  %383 = select i1 %375, i8 0, i8 4
  %384 = select i1 %372, i8 0, i8 8
  %385 = select i1 %369, i8 0, i8 16
  %386 = or disjoint i8 %384, %385
  %387 = or disjoint i8 %386, %383
  %388 = or disjoint i8 %387, %382
  %389 = or disjoint i8 %388, %381
  store i64 %365, ptr %76, align 8, !tbaa !57
  %390 = getelementptr inbounds nuw i8, ptr %366, i64 %292
  store i8 %389, ptr %390, align 1, !tbaa !8
  %391 = load i64, ptr %76, align 8, !tbaa !57
  %392 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %391, i64 1), !nosanitize !45
  %393 = extractvalue { i64, i1 } %392, 1, !nosanitize !45
  br i1 %393, label %394, label %395, !prof !46, !nosanitize !45

394:                                              ; preds = %364
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

395:                                              ; preds = %364
  %396 = extractvalue { i64, i1 } %392, 0, !nosanitize !45
  %397 = load ptr, ptr %264, align 8, !tbaa !40
  %398 = load ptr, ptr %289, align 8, !tbaa !100
  %399 = getelementptr inbounds nuw i8, ptr %398, i64 8
  %400 = load i64, ptr %399, align 8, !tbaa !115
  %401 = trunc i64 %400 to i8
  store i64 %396, ptr %76, align 8, !tbaa !57
  %402 = getelementptr inbounds nuw i8, ptr %397, i64 %391
  store i8 %401, ptr %402, align 1, !tbaa !8
  %403 = load i64, ptr %76, align 8, !tbaa !57
  %404 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %403, i64 1), !nosanitize !45
  %405 = extractvalue { i64, i1 } %404, 1, !nosanitize !45
  br i1 %405, label %406, label %407, !prof !46, !nosanitize !45

406:                                              ; preds = %395
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

407:                                              ; preds = %395
  %408 = extractvalue { i64, i1 } %404, 0, !nosanitize !45
  %409 = load ptr, ptr %264, align 8, !tbaa !40
  %410 = load ptr, ptr %289, align 8, !tbaa !100
  %411 = getelementptr inbounds nuw i8, ptr %410, i64 8
  %412 = load i64, ptr %411, align 8, !tbaa !115
  %413 = lshr i64 %412, 8
  %414 = trunc i64 %413 to i8
  store i64 %408, ptr %76, align 8, !tbaa !57
  %415 = getelementptr inbounds nuw i8, ptr %409, i64 %403
  store i8 %414, ptr %415, align 1, !tbaa !8
  %416 = load i64, ptr %76, align 8, !tbaa !57
  %417 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %416, i64 1), !nosanitize !45
  %418 = extractvalue { i64, i1 } %417, 1, !nosanitize !45
  br i1 %418, label %419, label %420, !prof !46, !nosanitize !45

419:                                              ; preds = %407
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

420:                                              ; preds = %407
  %421 = extractvalue { i64, i1 } %417, 0, !nosanitize !45
  %422 = load ptr, ptr %264, align 8, !tbaa !40
  %423 = load ptr, ptr %289, align 8, !tbaa !100
  %424 = getelementptr inbounds nuw i8, ptr %423, i64 8
  %425 = load i64, ptr %424, align 8, !tbaa !115
  %426 = lshr i64 %425, 16
  %427 = trunc i64 %426 to i8
  store i64 %421, ptr %76, align 8, !tbaa !57
  %428 = getelementptr inbounds nuw i8, ptr %422, i64 %416
  store i8 %427, ptr %428, align 1, !tbaa !8
  %429 = load i64, ptr %76, align 8, !tbaa !57
  %430 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %429, i64 1), !nosanitize !45
  %431 = extractvalue { i64, i1 } %430, 1, !nosanitize !45
  br i1 %431, label %432, label %433, !prof !46, !nosanitize !45

432:                                              ; preds = %420
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

433:                                              ; preds = %420
  %434 = extractvalue { i64, i1 } %430, 0, !nosanitize !45
  %435 = load ptr, ptr %264, align 8, !tbaa !40
  %436 = load ptr, ptr %289, align 8, !tbaa !100
  %437 = getelementptr inbounds nuw i8, ptr %436, i64 8
  %438 = load i64, ptr %437, align 8, !tbaa !115
  %439 = lshr i64 %438, 24
  %440 = trunc i64 %439 to i8
  store i64 %434, ptr %76, align 8, !tbaa !57
  %441 = getelementptr inbounds nuw i8, ptr %435, i64 %429
  store i8 %440, ptr %441, align 1, !tbaa !8
  %442 = load i32, ptr %30, align 4, !tbaa !48
  %443 = icmp eq i32 %442, 9
  br i1 %443, label %450, label %444

444:                                              ; preds = %433
  %445 = load i32, ptr %31, align 8, !tbaa !49
  %446 = icmp sgt i32 %445, 1
  %447 = icmp slt i32 %442, 2
  %448 = or i1 %447, %446
  %449 = select i1 %448, i8 4, i8 0
  br label %450

450:                                              ; preds = %444, %433
  %451 = phi i8 [ %449, %444 ], [ 2, %433 ]
  %452 = load i64, ptr %76, align 8, !tbaa !57
  %453 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %452, i64 1), !nosanitize !45
  %454 = extractvalue { i64, i1 } %453, 1, !nosanitize !45
  br i1 %454, label %455, label %456, !prof !46, !nosanitize !45

455:                                              ; preds = %450
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

456:                                              ; preds = %450
  %457 = extractvalue { i64, i1 } %453, 0, !nosanitize !45
  %458 = load ptr, ptr %264, align 8, !tbaa !40
  store i64 %457, ptr %76, align 8, !tbaa !57
  %459 = getelementptr inbounds nuw i8, ptr %458, i64 %452
  store i8 %451, ptr %459, align 1, !tbaa !8
  %460 = load i64, ptr %76, align 8, !tbaa !57
  %461 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %460, i64 1), !nosanitize !45
  %462 = extractvalue { i64, i1 } %461, 1, !nosanitize !45
  br i1 %462, label %463, label %464, !prof !46, !nosanitize !45

463:                                              ; preds = %456
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

464:                                              ; preds = %456
  %465 = extractvalue { i64, i1 } %461, 0, !nosanitize !45
  %466 = load ptr, ptr %264, align 8, !tbaa !40
  %467 = load ptr, ptr %289, align 8, !tbaa !100
  %468 = getelementptr inbounds nuw i8, ptr %467, i64 20
  %469 = load i32, ptr %468, align 4, !tbaa !116
  %470 = trunc i32 %469 to i8
  store i64 %465, ptr %76, align 8, !tbaa !57
  %471 = getelementptr inbounds nuw i8, ptr %466, i64 %460
  store i8 %470, ptr %471, align 1, !tbaa !8
  %472 = load ptr, ptr %289, align 8, !tbaa !100
  %473 = getelementptr inbounds nuw i8, ptr %472, i64 24
  %474 = load ptr, ptr %473, align 8, !tbaa !112
  %475 = icmp eq ptr %474, null
  br i1 %475, label %502, label %476

476:                                              ; preds = %464
  %477 = load i64, ptr %76, align 8, !tbaa !57
  %478 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %477, i64 1), !nosanitize !45
  %479 = extractvalue { i64, i1 } %478, 1, !nosanitize !45
  br i1 %479, label %480, label %481, !prof !46, !nosanitize !45

480:                                              ; preds = %476
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

481:                                              ; preds = %476
  %482 = extractvalue { i64, i1 } %478, 0, !nosanitize !45
  %483 = load ptr, ptr %264, align 8, !tbaa !40
  %484 = getelementptr inbounds nuw i8, ptr %472, i64 32
  %485 = load i32, ptr %484, align 8, !tbaa !117
  %486 = trunc i32 %485 to i8
  store i64 %482, ptr %76, align 8, !tbaa !57
  %487 = getelementptr inbounds nuw i8, ptr %483, i64 %477
  store i8 %486, ptr %487, align 1, !tbaa !8
  %488 = load i64, ptr %76, align 8, !tbaa !57
  %489 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %488, i64 1), !nosanitize !45
  %490 = extractvalue { i64, i1 } %489, 1, !nosanitize !45
  br i1 %490, label %491, label %492, !prof !46, !nosanitize !45

491:                                              ; preds = %481
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

492:                                              ; preds = %481
  %493 = extractvalue { i64, i1 } %489, 0, !nosanitize !45
  %494 = load ptr, ptr %264, align 8, !tbaa !40
  %495 = load ptr, ptr %289, align 8, !tbaa !100
  %496 = getelementptr inbounds nuw i8, ptr %495, i64 32
  %497 = load i32, ptr %496, align 8, !tbaa !117
  %498 = lshr i32 %497, 8
  %499 = trunc i32 %498 to i8
  store i64 %493, ptr %76, align 8, !tbaa !57
  %500 = getelementptr inbounds nuw i8, ptr %494, i64 %488
  store i8 %499, ptr %500, align 1, !tbaa !8
  %501 = load ptr, ptr %289, align 8, !tbaa !100
  br label %502

502:                                              ; preds = %492, %464
  %503 = phi ptr [ %501, %492 ], [ %472, %464 ]
  %504 = getelementptr inbounds nuw i8, ptr %503, i64 68
  %505 = load i32, ptr %504, align 4, !tbaa !114
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %512, label %507

507:                                              ; preds = %502
  %508 = load i64, ptr %263, align 8, !tbaa !59
  %509 = load ptr, ptr %264, align 8, !tbaa !40
  %510 = load i64, ptr %76, align 8, !tbaa !57
  %511 = tail call i64 @crc32_z(i64 noundef %508, ptr noundef %509, i64 noundef %510) #10
  store i64 %511, ptr %263, align 8, !tbaa !59
  br label %512

512:                                              ; preds = %507, %502
  %513 = getelementptr inbounds nuw i8, ptr %15, i64 64
  store i64 0, ptr %513, align 8, !tbaa !118
  store i32 69, ptr %21, align 8, !tbaa !29
  br label %518

514:                                              ; preds = %355
  %515 = load i32, ptr %21, align 8, !tbaa !29
  br label %516

516:                                              ; preds = %514, %258
  %517 = phi i32 [ %515, %514 ], [ %259, %258 ]
  switch i32 %517, label %994 [
    i32 69, label %518
    i32 73, label %726
    i32 91, label %838
    i32 103, label %949
  ]

518:                                              ; preds = %516, %512
  %519 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %520 = load ptr, ptr %519, align 8, !tbaa !100
  %521 = getelementptr inbounds nuw i8, ptr %520, i64 24
  %522 = load ptr, ptr %521, align 8, !tbaa !112
  %523 = icmp eq ptr %522, null
  br i1 %523, label %725, label %524

524:                                              ; preds = %518
  %525 = getelementptr inbounds nuw i8, ptr %520, i64 32
  %526 = load i32, ptr %525, align 8, !tbaa !117
  %527 = and i32 %526, 65535
  %528 = zext nneg i32 %527 to i64
  %529 = getelementptr inbounds nuw i8, ptr %15, i64 64
  %530 = load i64, ptr %529, align 8, !tbaa !118
  %531 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %528, i64 %530), !nosanitize !45
  %532 = extractvalue { i64, i1 } %531, 1, !nosanitize !45
  br i1 %532, label %533, label %534, !prof !46, !nosanitize !45

533:                                              ; preds = %524
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

534:                                              ; preds = %524
  %535 = load i64, ptr %76, align 8, !tbaa !57
  %536 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %537 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %538 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %539 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %540 = extractvalue { i64, i1 } %531, 0
  %541 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %535, i64 %540), !nosanitize !45
  %542 = extractvalue { i64, i1 } %541, 1, !nosanitize !45
  br i1 %542, label %615, label %543, !prof !46, !nosanitize !45

543:                                              ; preds = %534
  %544 = extractvalue { i64, i1 } %541, 0, !nosanitize !45
  %545 = load i64, ptr %536, align 8, !tbaa !41
  %546 = icmp ugt i64 %544, %545
  br i1 %546, label %547, label %698

547:                                              ; preds = %543
  %548 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %545, i64 %535), !nosanitize !45
  %549 = extractvalue { i64, i1 } %548, 0, !nosanitize !45
  %550 = extractvalue { i64, i1 } %548, 1, !nosanitize !45
  br i1 %550, label %621, label %551, !prof !46, !nosanitize !45

551:                                              ; preds = %547
  %552 = load ptr, ptr %537, align 8, !tbaa !40
  %553 = getelementptr inbounds nuw i8, ptr %552, i64 %535
  %554 = getelementptr inbounds nuw i8, ptr %522, i64 %530
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %553, ptr nonnull align 1 %554, i64 %549, i1 false)
  %555 = load i64, ptr %536, align 8, !tbaa !41
  store i64 %555, ptr %76, align 8, !tbaa !57
  %556 = load ptr, ptr %519, align 8, !tbaa !100
  %557 = getelementptr inbounds nuw i8, ptr %556, i64 68
  %558 = load i32, ptr %557, align 4, !tbaa !114
  %559 = icmp ne i32 %558, 0
  %560 = icmp ugt i64 %555, %535
  %561 = select i1 %559, i1 %560, i1 false
  br i1 %561, label %562, label %568

562:                                              ; preds = %551
  %563 = sub nuw i64 %555, %535
  %564 = load ptr, ptr %537, align 8, !tbaa !40
  %565 = getelementptr inbounds nuw i8, ptr %564, i64 %535
  %566 = load i64, ptr %538, align 8, !tbaa !59
  %567 = tail call i64 @crc32_z(i64 noundef %566, ptr noundef %565, i64 noundef %563) #10
  store i64 %567, ptr %538, align 8, !tbaa !59
  br label %568

568:                                              ; preds = %562, %551
  %569 = load i64, ptr %529, align 8, !tbaa !118
  %570 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %569, i64 %549), !nosanitize !45
  %571 = extractvalue { i64, i1 } %570, 1, !nosanitize !45
  br i1 %571, label %644, label %572, !prof !46, !nosanitize !45

572:                                              ; preds = %568
  %573 = extractvalue { i64, i1 } %570, 0, !nosanitize !45
  store i64 %573, ptr %529, align 8, !tbaa !118
  %574 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %574) #10
  %575 = getelementptr inbounds nuw i8, ptr %574, i64 40
  %576 = load i64, ptr %575, align 8, !tbaa !57
  %577 = load i32, ptr %69, align 8, !tbaa !107
  %578 = zext i32 %577 to i64
  %579 = tail call i64 @llvm.umin.i64(i64 %576, i64 %578)
  %580 = trunc nuw i64 %579 to i32
  %581 = icmp eq i64 %579, 0
  br i1 %581, label %609, label %582

582:                                              ; preds = %572
  %583 = load ptr, ptr %51, align 8, !tbaa !106
  %584 = getelementptr inbounds nuw i8, ptr %574, i64 32
  %585 = load ptr, ptr %584, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %583, ptr align 1 %585, i64 %579, i1 false)
  %586 = load ptr, ptr %51, align 8, !tbaa !106
  %587 = getelementptr inbounds nuw i8, ptr %586, i64 %579
  store ptr %587, ptr %51, align 8, !tbaa !106
  %588 = load ptr, ptr %584, align 8, !tbaa !58
  %589 = getelementptr inbounds nuw i8, ptr %588, i64 %579
  store ptr %589, ptr %584, align 8, !tbaa !58
  %590 = load i64, ptr %539, align 8, !tbaa !108
  %591 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %590, i64 %579), !nosanitize !45
  %592 = extractvalue { i64, i1 } %591, 1, !nosanitize !45
  br i1 %592, label %666, label %593, !prof !46, !nosanitize !45

593:                                              ; preds = %582
  %594 = extractvalue { i64, i1 } %591, 0, !nosanitize !45
  store i64 %594, ptr %539, align 8, !tbaa !108
  %595 = load i32, ptr %69, align 8, !tbaa !107
  %596 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %595, i32 %580), !nosanitize !45
  %597 = extractvalue { i32, i1 } %596, 1, !nosanitize !45
  br i1 %597, label %672, label %598, !prof !46, !nosanitize !45

598:                                              ; preds = %593
  %599 = extractvalue { i32, i1 } %596, 0, !nosanitize !45
  store i32 %599, ptr %69, align 8, !tbaa !107
  %600 = load i64, ptr %575, align 8, !tbaa !57
  %601 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %600, i64 %579), !nosanitize !45
  %602 = extractvalue { i64, i1 } %601, 1, !nosanitize !45
  br i1 %602, label %678, label %603, !prof !46, !nosanitize !45

603:                                              ; preds = %598
  %604 = extractvalue { i64, i1 } %601, 0, !nosanitize !45
  store i64 %604, ptr %575, align 8, !tbaa !57
  %605 = icmp eq i64 %604, 0
  br i1 %605, label %606, label %609

606:                                              ; preds = %603
  %607 = getelementptr inbounds nuw i8, ptr %574, i64 16
  %608 = load ptr, ptr %607, align 8, !tbaa !40
  store ptr %608, ptr %584, align 8, !tbaa !58
  br label %609

609:                                              ; preds = %606, %603, %572
  %610 = load i64, ptr %76, align 8, !tbaa !57
  %611 = icmp eq i64 %610, 0
  br i1 %611, label %612, label %688

612:                                              ; preds = %609
  %613 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %540, i64 %549), !nosanitize !45
  %614 = extractvalue { i64, i1 } %613, 1, !nosanitize !45
  br i1 %614, label %692, label %616, !prof !46, !nosanitize !45

615:                                              ; preds = %534
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

616:                                              ; preds = %689, %612
  %617 = phi { i64, i1 } [ %690, %689 ], [ %613, %612 ]
  %618 = extractvalue { i64, i1 } %617, 0
  %619 = load i64, ptr %536, align 8, !tbaa !41
  %620 = icmp ugt i64 %618, %619
  br i1 %620, label %622, label %693

621:                                              ; preds = %547
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

622:                                              ; preds = %616
  %623 = load ptr, ptr %537, align 8, !tbaa !40
  %624 = load ptr, ptr %519, align 8, !tbaa !100
  %625 = getelementptr inbounds nuw i8, ptr %624, i64 24
  %626 = load ptr, ptr %625, align 8, !tbaa !112
  %627 = load i64, ptr %529, align 8, !tbaa !118
  %628 = getelementptr inbounds nuw i8, ptr %626, i64 %627
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %623, ptr align 1 %628, i64 %619, i1 false)
  %629 = load i64, ptr %536, align 8, !tbaa !41
  store i64 %629, ptr %76, align 8, !tbaa !57
  %630 = load ptr, ptr %519, align 8, !tbaa !100
  %631 = getelementptr inbounds nuw i8, ptr %630, i64 68
  %632 = load i32, ptr %631, align 4, !tbaa !114
  %633 = icmp ne i32 %632, 0
  %634 = icmp ne i64 %629, 0
  %635 = select i1 %633, i1 %634, i1 false
  br i1 %635, label %636, label %640

636:                                              ; preds = %622
  %637 = load ptr, ptr %537, align 8, !tbaa !40
  %638 = load i64, ptr %538, align 8, !tbaa !59
  %639 = tail call i64 @crc32_z(i64 noundef %638, ptr noundef %637, i64 noundef %629) #10
  store i64 %639, ptr %538, align 8, !tbaa !59
  br label %640

640:                                              ; preds = %636, %622
  %641 = load i64, ptr %529, align 8, !tbaa !118
  %642 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %641, i64 %619), !nosanitize !45
  %643 = extractvalue { i64, i1 } %642, 1, !nosanitize !45
  br i1 %643, label %644, label %645, !prof !46, !nosanitize !45

644:                                              ; preds = %640, %568
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

645:                                              ; preds = %640
  %646 = extractvalue { i64, i1 } %642, 0, !nosanitize !45
  store i64 %646, ptr %529, align 8, !tbaa !118
  %647 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %647) #10
  %648 = getelementptr inbounds nuw i8, ptr %647, i64 40
  %649 = load i64, ptr %648, align 8, !tbaa !57
  %650 = load i32, ptr %69, align 8, !tbaa !107
  %651 = zext i32 %650 to i64
  %652 = tail call i64 @llvm.umin.i64(i64 %649, i64 %651)
  %653 = trunc nuw i64 %652 to i32
  %654 = icmp eq i64 %652, 0
  br i1 %654, label %685, label %655

655:                                              ; preds = %645
  %656 = load ptr, ptr %51, align 8, !tbaa !106
  %657 = getelementptr inbounds nuw i8, ptr %647, i64 32
  %658 = load ptr, ptr %657, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %656, ptr align 1 %658, i64 %652, i1 false)
  %659 = load ptr, ptr %51, align 8, !tbaa !106
  %660 = getelementptr inbounds nuw i8, ptr %659, i64 %652
  store ptr %660, ptr %51, align 8, !tbaa !106
  %661 = load ptr, ptr %657, align 8, !tbaa !58
  %662 = getelementptr inbounds nuw i8, ptr %661, i64 %652
  store ptr %662, ptr %657, align 8, !tbaa !58
  %663 = load i64, ptr %539, align 8, !tbaa !108
  %664 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %663, i64 %652), !nosanitize !45
  %665 = extractvalue { i64, i1 } %664, 1, !nosanitize !45
  br i1 %665, label %666, label %667, !prof !46, !nosanitize !45

666:                                              ; preds = %655, %582
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

667:                                              ; preds = %655
  %668 = extractvalue { i64, i1 } %664, 0, !nosanitize !45
  store i64 %668, ptr %539, align 8, !tbaa !108
  %669 = load i32, ptr %69, align 8, !tbaa !107
  %670 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %669, i32 %653), !nosanitize !45
  %671 = extractvalue { i32, i1 } %670, 1, !nosanitize !45
  br i1 %671, label %672, label %673, !prof !46, !nosanitize !45

672:                                              ; preds = %667, %593
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

673:                                              ; preds = %667
  %674 = extractvalue { i32, i1 } %670, 0, !nosanitize !45
  store i32 %674, ptr %69, align 8, !tbaa !107
  %675 = load i64, ptr %648, align 8, !tbaa !57
  %676 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %675, i64 %652), !nosanitize !45
  %677 = extractvalue { i64, i1 } %676, 1, !nosanitize !45
  br i1 %677, label %678, label %679, !prof !46, !nosanitize !45

678:                                              ; preds = %673, %598
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

679:                                              ; preds = %673
  %680 = extractvalue { i64, i1 } %676, 0, !nosanitize !45
  store i64 %680, ptr %648, align 8, !tbaa !57
  %681 = icmp eq i64 %680, 0
  br i1 %681, label %682, label %685

682:                                              ; preds = %679
  %683 = getelementptr inbounds nuw i8, ptr %647, i64 16
  %684 = load ptr, ptr %683, align 8, !tbaa !40
  store ptr %684, ptr %657, align 8, !tbaa !58
  br label %685

685:                                              ; preds = %682, %679, %645
  %686 = load i64, ptr %76, align 8, !tbaa !57
  %687 = icmp eq i64 %686, 0
  br i1 %687, label %689, label %688

688:                                              ; preds = %685, %609
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1039

689:                                              ; preds = %685
  %690 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %618, i64 %619), !nosanitize !45
  %691 = extractvalue { i64, i1 } %690, 1, !nosanitize !45
  br i1 %691, label %692, label %616, !prof !46, !llvm.loop !119, !nosanitize !45

692:                                              ; preds = %689, %612
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

693:                                              ; preds = %616
  %694 = load ptr, ptr %519, align 8, !tbaa !100
  %695 = getelementptr inbounds nuw i8, ptr %694, i64 24
  %696 = load ptr, ptr %695, align 8, !tbaa !112
  %697 = load i64, ptr %529, align 8, !tbaa !118
  br label %698

698:                                              ; preds = %693, %543
  %699 = phi i64 [ %530, %543 ], [ %697, %693 ]
  %700 = phi ptr [ %522, %543 ], [ %696, %693 ]
  %701 = phi i64 [ %535, %543 ], [ 0, %693 ]
  %702 = phi i64 [ %540, %543 ], [ %618, %693 ]
  %703 = load ptr, ptr %537, align 8, !tbaa !40
  %704 = getelementptr inbounds nuw i8, ptr %703, i64 %701
  %705 = getelementptr inbounds nuw i8, ptr %700, i64 %699
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %704, ptr align 1 %705, i64 %702, i1 false)
  %706 = load i64, ptr %76, align 8, !tbaa !57
  %707 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %706, i64 %702), !nosanitize !45
  %708 = extractvalue { i64, i1 } %707, 0, !nosanitize !45
  %709 = extractvalue { i64, i1 } %707, 1, !nosanitize !45
  br i1 %709, label %710, label %711, !prof !46, !nosanitize !45

710:                                              ; preds = %698
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

711:                                              ; preds = %698
  store i64 %708, ptr %76, align 8, !tbaa !57
  %712 = load ptr, ptr %519, align 8, !tbaa !100
  %713 = getelementptr inbounds nuw i8, ptr %712, i64 68
  %714 = load i32, ptr %713, align 4, !tbaa !114
  %715 = icmp ne i32 %714, 0
  %716 = icmp ugt i64 %708, %701
  %717 = select i1 %715, i1 %716, i1 false
  br i1 %717, label %718, label %724

718:                                              ; preds = %711
  %719 = sub nuw i64 %708, %701
  %720 = load ptr, ptr %537, align 8, !tbaa !40
  %721 = getelementptr inbounds nuw i8, ptr %720, i64 %701
  %722 = load i64, ptr %538, align 8, !tbaa !59
  %723 = tail call i64 @crc32_z(i64 noundef %722, ptr noundef %721, i64 noundef %719) #10
  store i64 %723, ptr %538, align 8, !tbaa !59
  br label %724

724:                                              ; preds = %718, %711
  store i64 0, ptr %529, align 8, !tbaa !118
  br label %725

725:                                              ; preds = %724, %518
  store i32 73, ptr %21, align 8, !tbaa !29
  br label %726

726:                                              ; preds = %725, %516
  %727 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %728 = load ptr, ptr %727, align 8, !tbaa !100
  %729 = getelementptr inbounds nuw i8, ptr %728, i64 40
  %730 = load ptr, ptr %729, align 8, !tbaa !111
  %731 = icmp eq ptr %730, null
  br i1 %731, label %837, label %732

732:                                              ; preds = %726
  %733 = load i64, ptr %76, align 8, !tbaa !57
  %734 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %735 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %736 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %737 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %738 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %739

739:                                              ; preds = %815, %732
  %740 = phi i64 [ %733, %732 ], [ %802, %815 ]
  %741 = load i64, ptr %76, align 8, !tbaa !57
  %742 = load i64, ptr %734, align 8, !tbaa !41
  %743 = icmp eq i64 %741, %742
  br i1 %743, label %744, label %800

744:                                              ; preds = %739
  %745 = load ptr, ptr %727, align 8, !tbaa !100
  %746 = getelementptr inbounds nuw i8, ptr %745, i64 68
  %747 = load i32, ptr %746, align 4, !tbaa !114
  %748 = icmp ne i32 %747, 0
  %749 = icmp ugt i64 %741, %740
  %750 = select i1 %748, i1 %749, i1 false
  br i1 %750, label %751, label %757

751:                                              ; preds = %744
  %752 = sub nuw i64 %741, %740
  %753 = load ptr, ptr %735, align 8, !tbaa !40
  %754 = getelementptr inbounds nuw i8, ptr %753, i64 %740
  %755 = load i64, ptr %736, align 8, !tbaa !59
  %756 = tail call i64 @crc32_z(i64 noundef %755, ptr noundef %754, i64 noundef %752) #10
  store i64 %756, ptr %736, align 8, !tbaa !59
  br label %757

757:                                              ; preds = %751, %744
  %758 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %758) #10
  %759 = getelementptr inbounds nuw i8, ptr %758, i64 40
  %760 = load i64, ptr %759, align 8, !tbaa !57
  %761 = load i32, ptr %69, align 8, !tbaa !107
  %762 = zext i32 %761 to i64
  %763 = tail call i64 @llvm.umin.i64(i64 %760, i64 %762)
  %764 = trunc nuw i64 %763 to i32
  %765 = icmp eq i64 %763, 0
  br i1 %765, label %796, label %766

766:                                              ; preds = %757
  %767 = load ptr, ptr %51, align 8, !tbaa !106
  %768 = getelementptr inbounds nuw i8, ptr %758, i64 32
  %769 = load ptr, ptr %768, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %767, ptr align 1 %769, i64 %763, i1 false)
  %770 = load ptr, ptr %51, align 8, !tbaa !106
  %771 = getelementptr inbounds nuw i8, ptr %770, i64 %763
  store ptr %771, ptr %51, align 8, !tbaa !106
  %772 = load ptr, ptr %768, align 8, !tbaa !58
  %773 = getelementptr inbounds nuw i8, ptr %772, i64 %763
  store ptr %773, ptr %768, align 8, !tbaa !58
  %774 = load i64, ptr %737, align 8, !tbaa !108
  %775 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %774, i64 %763), !nosanitize !45
  %776 = extractvalue { i64, i1 } %775, 1, !nosanitize !45
  br i1 %776, label %777, label %778, !prof !46, !nosanitize !45

777:                                              ; preds = %766
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

778:                                              ; preds = %766
  %779 = extractvalue { i64, i1 } %775, 0, !nosanitize !45
  store i64 %779, ptr %737, align 8, !tbaa !108
  %780 = load i32, ptr %69, align 8, !tbaa !107
  %781 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %780, i32 %764), !nosanitize !45
  %782 = extractvalue { i32, i1 } %781, 1, !nosanitize !45
  br i1 %782, label %783, label %784, !prof !46, !nosanitize !45

783:                                              ; preds = %778
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

784:                                              ; preds = %778
  %785 = extractvalue { i32, i1 } %781, 0, !nosanitize !45
  store i32 %785, ptr %69, align 8, !tbaa !107
  %786 = load i64, ptr %759, align 8, !tbaa !57
  %787 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %786, i64 %763), !nosanitize !45
  %788 = extractvalue { i64, i1 } %787, 1, !nosanitize !45
  br i1 %788, label %789, label %790, !prof !46, !nosanitize !45

789:                                              ; preds = %784
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

790:                                              ; preds = %784
  %791 = extractvalue { i64, i1 } %787, 0, !nosanitize !45
  store i64 %791, ptr %759, align 8, !tbaa !57
  %792 = icmp eq i64 %791, 0
  br i1 %792, label %793, label %796

793:                                              ; preds = %790
  %794 = getelementptr inbounds nuw i8, ptr %758, i64 16
  %795 = load ptr, ptr %794, align 8, !tbaa !40
  store ptr %795, ptr %768, align 8, !tbaa !58
  br label %796

796:                                              ; preds = %793, %790, %757
  %797 = load i64, ptr %76, align 8, !tbaa !57
  %798 = icmp eq i64 %797, 0
  br i1 %798, label %800, label %799

799:                                              ; preds = %796
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1039

800:                                              ; preds = %796, %739
  %801 = phi i64 [ %741, %739 ], [ 0, %796 ]
  %802 = phi i64 [ %740, %739 ], [ 0, %796 ]
  %803 = load i64, ptr %738, align 8, !tbaa !118
  %804 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %803, i64 1), !nosanitize !45
  %805 = extractvalue { i64, i1 } %804, 1, !nosanitize !45
  br i1 %805, label %806, label %807, !prof !46, !nosanitize !45

806:                                              ; preds = %800
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

807:                                              ; preds = %800
  %808 = extractvalue { i64, i1 } %804, 0, !nosanitize !45
  %809 = load ptr, ptr %727, align 8, !tbaa !100
  %810 = getelementptr inbounds nuw i8, ptr %809, i64 40
  %811 = load ptr, ptr %810, align 8, !tbaa !111
  store i64 %808, ptr %738, align 8, !tbaa !118
  %812 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %801, i64 1), !nosanitize !45
  %813 = extractvalue { i64, i1 } %812, 1, !nosanitize !45
  br i1 %813, label %814, label %815, !prof !46, !nosanitize !45

814:                                              ; preds = %807
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

815:                                              ; preds = %807
  %816 = extractvalue { i64, i1 } %812, 0, !nosanitize !45
  %817 = load ptr, ptr %735, align 8, !tbaa !40
  %818 = getelementptr inbounds nuw i8, ptr %811, i64 %803
  %819 = load i8, ptr %818, align 1, !tbaa !8
  store i64 %816, ptr %76, align 8, !tbaa !57
  %820 = getelementptr inbounds nuw i8, ptr %817, i64 %801
  store i8 %819, ptr %820, align 1, !tbaa !8
  %821 = icmp eq i8 %819, 0
  br i1 %821, label %822, label %739, !llvm.loop !122

822:                                              ; preds = %815
  %823 = load ptr, ptr %727, align 8, !tbaa !100
  %824 = getelementptr inbounds nuw i8, ptr %823, i64 68
  %825 = load i32, ptr %824, align 4, !tbaa !114
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %836, label %827

827:                                              ; preds = %822
  %828 = load i64, ptr %76, align 8, !tbaa !57
  %829 = icmp ugt i64 %828, %802
  br i1 %829, label %830, label %836

830:                                              ; preds = %827
  %831 = sub nuw i64 %828, %802
  %832 = load ptr, ptr %735, align 8, !tbaa !40
  %833 = getelementptr inbounds nuw i8, ptr %832, i64 %802
  %834 = load i64, ptr %736, align 8, !tbaa !59
  %835 = tail call i64 @crc32_z(i64 noundef %834, ptr noundef %833, i64 noundef %831) #10
  store i64 %835, ptr %736, align 8, !tbaa !59
  br label %836

836:                                              ; preds = %830, %827, %822
  store i64 0, ptr %738, align 8, !tbaa !118
  br label %837

837:                                              ; preds = %836, %726
  store i32 91, ptr %21, align 8, !tbaa !29
  br label %838

838:                                              ; preds = %837, %516
  %839 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %840 = load ptr, ptr %839, align 8, !tbaa !100
  %841 = getelementptr inbounds nuw i8, ptr %840, i64 56
  %842 = load ptr, ptr %841, align 8, !tbaa !109
  %843 = icmp eq ptr %842, null
  br i1 %843, label %948, label %844

844:                                              ; preds = %838
  %845 = load i64, ptr %76, align 8, !tbaa !57
  %846 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %847 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %848 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %849 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %850 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %851

851:                                              ; preds = %927, %844
  %852 = phi i64 [ %845, %844 ], [ %914, %927 ]
  %853 = load i64, ptr %76, align 8, !tbaa !57
  %854 = load i64, ptr %846, align 8, !tbaa !41
  %855 = icmp eq i64 %853, %854
  br i1 %855, label %856, label %912

856:                                              ; preds = %851
  %857 = load ptr, ptr %839, align 8, !tbaa !100
  %858 = getelementptr inbounds nuw i8, ptr %857, i64 68
  %859 = load i32, ptr %858, align 4, !tbaa !114
  %860 = icmp ne i32 %859, 0
  %861 = icmp ugt i64 %853, %852
  %862 = select i1 %860, i1 %861, i1 false
  br i1 %862, label %863, label %869

863:                                              ; preds = %856
  %864 = sub nuw i64 %853, %852
  %865 = load ptr, ptr %847, align 8, !tbaa !40
  %866 = getelementptr inbounds nuw i8, ptr %865, i64 %852
  %867 = load i64, ptr %848, align 8, !tbaa !59
  %868 = tail call i64 @crc32_z(i64 noundef %867, ptr noundef %866, i64 noundef %864) #10
  store i64 %868, ptr %848, align 8, !tbaa !59
  br label %869

869:                                              ; preds = %863, %856
  %870 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %870) #10
  %871 = getelementptr inbounds nuw i8, ptr %870, i64 40
  %872 = load i64, ptr %871, align 8, !tbaa !57
  %873 = load i32, ptr %69, align 8, !tbaa !107
  %874 = zext i32 %873 to i64
  %875 = tail call i64 @llvm.umin.i64(i64 %872, i64 %874)
  %876 = trunc nuw i64 %875 to i32
  %877 = icmp eq i64 %875, 0
  br i1 %877, label %908, label %878

878:                                              ; preds = %869
  %879 = load ptr, ptr %51, align 8, !tbaa !106
  %880 = getelementptr inbounds nuw i8, ptr %870, i64 32
  %881 = load ptr, ptr %880, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %879, ptr align 1 %881, i64 %875, i1 false)
  %882 = load ptr, ptr %51, align 8, !tbaa !106
  %883 = getelementptr inbounds nuw i8, ptr %882, i64 %875
  store ptr %883, ptr %51, align 8, !tbaa !106
  %884 = load ptr, ptr %880, align 8, !tbaa !58
  %885 = getelementptr inbounds nuw i8, ptr %884, i64 %875
  store ptr %885, ptr %880, align 8, !tbaa !58
  %886 = load i64, ptr %849, align 8, !tbaa !108
  %887 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %886, i64 %875), !nosanitize !45
  %888 = extractvalue { i64, i1 } %887, 1, !nosanitize !45
  br i1 %888, label %889, label %890, !prof !46, !nosanitize !45

889:                                              ; preds = %878
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

890:                                              ; preds = %878
  %891 = extractvalue { i64, i1 } %887, 0, !nosanitize !45
  store i64 %891, ptr %849, align 8, !tbaa !108
  %892 = load i32, ptr %69, align 8, !tbaa !107
  %893 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %892, i32 %876), !nosanitize !45
  %894 = extractvalue { i32, i1 } %893, 1, !nosanitize !45
  br i1 %894, label %895, label %896, !prof !46, !nosanitize !45

895:                                              ; preds = %890
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

896:                                              ; preds = %890
  %897 = extractvalue { i32, i1 } %893, 0, !nosanitize !45
  store i32 %897, ptr %69, align 8, !tbaa !107
  %898 = load i64, ptr %871, align 8, !tbaa !57
  %899 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %898, i64 %875), !nosanitize !45
  %900 = extractvalue { i64, i1 } %899, 1, !nosanitize !45
  br i1 %900, label %901, label %902, !prof !46, !nosanitize !45

901:                                              ; preds = %896
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

902:                                              ; preds = %896
  %903 = extractvalue { i64, i1 } %899, 0, !nosanitize !45
  store i64 %903, ptr %871, align 8, !tbaa !57
  %904 = icmp eq i64 %903, 0
  br i1 %904, label %905, label %908

905:                                              ; preds = %902
  %906 = getelementptr inbounds nuw i8, ptr %870, i64 16
  %907 = load ptr, ptr %906, align 8, !tbaa !40
  store ptr %907, ptr %880, align 8, !tbaa !58
  br label %908

908:                                              ; preds = %905, %902, %869
  %909 = load i64, ptr %76, align 8, !tbaa !57
  %910 = icmp eq i64 %909, 0
  br i1 %910, label %912, label %911

911:                                              ; preds = %908
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1039

912:                                              ; preds = %908, %851
  %913 = phi i64 [ %853, %851 ], [ 0, %908 ]
  %914 = phi i64 [ %852, %851 ], [ 0, %908 ]
  %915 = load i64, ptr %850, align 8, !tbaa !118
  %916 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %915, i64 1), !nosanitize !45
  %917 = extractvalue { i64, i1 } %916, 1, !nosanitize !45
  br i1 %917, label %918, label %919, !prof !46, !nosanitize !45

918:                                              ; preds = %912
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

919:                                              ; preds = %912
  %920 = extractvalue { i64, i1 } %916, 0, !nosanitize !45
  %921 = load ptr, ptr %839, align 8, !tbaa !100
  %922 = getelementptr inbounds nuw i8, ptr %921, i64 56
  %923 = load ptr, ptr %922, align 8, !tbaa !109
  store i64 %920, ptr %850, align 8, !tbaa !118
  %924 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %913, i64 1), !nosanitize !45
  %925 = extractvalue { i64, i1 } %924, 1, !nosanitize !45
  br i1 %925, label %926, label %927, !prof !46, !nosanitize !45

926:                                              ; preds = %919
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

927:                                              ; preds = %919
  %928 = extractvalue { i64, i1 } %924, 0, !nosanitize !45
  %929 = load ptr, ptr %847, align 8, !tbaa !40
  %930 = getelementptr inbounds nuw i8, ptr %923, i64 %915
  %931 = load i8, ptr %930, align 1, !tbaa !8
  store i64 %928, ptr %76, align 8, !tbaa !57
  %932 = getelementptr inbounds nuw i8, ptr %929, i64 %913
  store i8 %931, ptr %932, align 1, !tbaa !8
  %933 = icmp eq i8 %931, 0
  br i1 %933, label %934, label %851, !llvm.loop !123

934:                                              ; preds = %927
  %935 = load ptr, ptr %839, align 8, !tbaa !100
  %936 = getelementptr inbounds nuw i8, ptr %935, i64 68
  %937 = load i32, ptr %936, align 4, !tbaa !114
  %938 = icmp eq i32 %937, 0
  br i1 %938, label %948, label %939

939:                                              ; preds = %934
  %940 = load i64, ptr %76, align 8, !tbaa !57
  %941 = icmp ugt i64 %940, %914
  br i1 %941, label %942, label %948

942:                                              ; preds = %939
  %943 = sub nuw i64 %940, %914
  %944 = load ptr, ptr %847, align 8, !tbaa !40
  %945 = getelementptr inbounds nuw i8, ptr %944, i64 %914
  %946 = load i64, ptr %848, align 8, !tbaa !59
  %947 = tail call i64 @crc32_z(i64 noundef %946, ptr noundef %945, i64 noundef %943) #10
  store i64 %947, ptr %848, align 8, !tbaa !59
  br label %948

948:                                              ; preds = %942, %939, %934, %838
  store i32 103, ptr %21, align 8, !tbaa !29
  br label %949

949:                                              ; preds = %948, %516
  %950 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %951 = load ptr, ptr %950, align 8, !tbaa !100
  %952 = getelementptr inbounds nuw i8, ptr %951, i64 68
  %953 = load i32, ptr %952, align 4, !tbaa !114
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %990, label %955

955:                                              ; preds = %949
  %956 = load i64, ptr %76, align 8, !tbaa !57
  %957 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %956, i64 2), !nosanitize !45
  %958 = extractvalue { i64, i1 } %957, 1, !nosanitize !45
  br i1 %958, label %959, label %960, !prof !46, !nosanitize !45

959:                                              ; preds = %955
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

960:                                              ; preds = %955
  %961 = extractvalue { i64, i1 } %957, 0, !nosanitize !45
  %962 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %963 = load i64, ptr %962, align 8, !tbaa !41
  %964 = icmp ugt i64 %961, %963
  br i1 %964, label %965, label %969

965:                                              ; preds = %960
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %966 = load i64, ptr %76, align 8, !tbaa !57
  %967 = icmp eq i64 %966, 0
  br i1 %967, label %969, label %968

968:                                              ; preds = %965
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1039

969:                                              ; preds = %965, %960
  %970 = phi i64 [ 0, %965 ], [ %956, %960 ]
  %971 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %972 = add nuw i64 %970, 1
  %973 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %974 = load ptr, ptr %973, align 8, !tbaa !40
  %975 = load i64, ptr %971, align 8, !tbaa !59
  %976 = trunc i64 %975 to i8
  store i64 %972, ptr %76, align 8, !tbaa !57
  %977 = getelementptr inbounds nuw i8, ptr %974, i64 %970
  store i8 %976, ptr %977, align 1, !tbaa !8
  %978 = load i64, ptr %76, align 8, !tbaa !57
  %979 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %978, i64 1), !nosanitize !45
  %980 = extractvalue { i64, i1 } %979, 1, !nosanitize !45
  br i1 %980, label %981, label %982, !prof !46, !nosanitize !45

981:                                              ; preds = %969
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

982:                                              ; preds = %969
  %983 = extractvalue { i64, i1 } %979, 0, !nosanitize !45
  %984 = load ptr, ptr %973, align 8, !tbaa !40
  %985 = load i64, ptr %971, align 8, !tbaa !59
  %986 = lshr i64 %985, 8
  %987 = trunc i64 %986 to i8
  store i64 %983, ptr %76, align 8, !tbaa !57
  %988 = getelementptr inbounds nuw i8, ptr %984, i64 %978
  store i8 %987, ptr %988, align 1, !tbaa !8
  %989 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  store i64 %989, ptr %971, align 8, !tbaa !59
  br label %990

990:                                              ; preds = %982, %949
  store i32 113, ptr %21, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %991 = load i64, ptr %76, align 8, !tbaa !57
  %992 = icmp eq i64 %991, 0
  br i1 %992, label %994, label %993

993:                                              ; preds = %990
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1039

994:                                              ; preds = %990, %516, %155
  %995 = load i32, ptr %55, align 8, !tbaa !81
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %997, label %1004

997:                                              ; preds = %994, %145
  %998 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %999 = load i32, ptr %998, align 4, !tbaa !75
  %1000 = icmp eq i32 %999, 0
  br i1 %1000, label %1001, label %1004

1001:                                             ; preds = %997
  %1002 = load i32, ptr %21, align 8, !tbaa !29
  %1003 = icmp eq i32 %1002, 666
  br i1 %1003, label %1039, label %1004

1004:                                             ; preds = %1001, %997, %994
  %1005 = load i32, ptr %30, align 4, !tbaa !48
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1007, label %1009

1007:                                             ; preds = %1004
  %1008 = tail call i32 @deflate_stored(ptr noundef nonnull %15, i32 noundef 5)
  br label %1021

1009:                                             ; preds = %1004
  %1010 = load i32, ptr %31, align 8, !tbaa !49
  switch i32 %1010, label %1015 [
    i32 2, label %1011
    i32 3, label %1013
  ]

1011:                                             ; preds = %1009
  %1012 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %15, i32 noundef 5)
  br label %1021

1013:                                             ; preds = %1009
  %1014 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %15, i32 noundef 5)
  br label %1021

1015:                                             ; preds = %1009
  %1016 = sext i32 %1005 to i64
  %1017 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %1016
  %1018 = getelementptr inbounds nuw i8, ptr %1017, i64 8
  %1019 = load ptr, ptr %1018, align 8, !tbaa !105
  %1020 = tail call i32 %1019(ptr noundef nonnull %15, i32 noundef 5) #10, !inline_history !124
  br label %1021

1021:                                             ; preds = %1015, %1013, %1011, %1007
  %1022 = phi i32 [ %1008, %1007 ], [ %1012, %1011 ], [ %1014, %1013 ], [ %1020, %1015 ]
  %1023 = and i32 %1022, -2
  %1024 = icmp eq i32 %1023, 2
  br i1 %1024, label %1025, label %1026

1025:                                             ; preds = %1021
  store i32 666, ptr %21, align 8, !tbaa !29
  br label %1026

1026:                                             ; preds = %1025, %1021
  %1027 = and i32 %1022, -3
  %1028 = icmp eq i32 %1027, 0
  br i1 %1028, label %1029, label %1033

1029:                                             ; preds = %1026
  %1030 = load i32, ptr %69, align 8, !tbaa !107
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1032, label %1039

1032:                                             ; preds = %1029
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1039

1033:                                             ; preds = %1026
  %1034 = icmp eq i32 %1022, 1
  br i1 %1034, label %1035, label %1039

1035:                                             ; preds = %1033
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1036 = load i32, ptr %69, align 8, !tbaa !107
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1038, label %1039

1038:                                             ; preds = %1035
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1039

1039:                                             ; preds = %1038, %1035, %1033, %1032, %1029, %1001, %993, %968, %911, %799, %688, %361, %257, %148, %139, %123, %72
  %1040 = load i32, ptr %55, align 8, !tbaa !81
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1042, label %1105

1042:                                             ; preds = %1039
  %1043 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %1044 = load i32, ptr %1043, align 4, !tbaa !73
  %1045 = zext i32 %1044 to i64
  %1046 = getelementptr inbounds nuw i8, ptr %15, i64 152
  %1047 = load i64, ptr %1046, align 8, !tbaa !74
  %1048 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1045, i64 %1047), !nosanitize !45
  %1049 = extractvalue { i64, i1 } %1048, 1, !nosanitize !45
  br i1 %1049, label %1050, label %1051, !prof !46, !nosanitize !45

1050:                                             ; preds = %1042
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

1051:                                             ; preds = %1042
  %1052 = extractvalue { i64, i1 } %1048, 0, !nosanitize !45
  %1053 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %1054 = load i32, ptr %1053, align 4, !tbaa !75
  %1055 = zext i32 %1054 to i64
  %1056 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1052, i64 %1055), !nosanitize !45
  %1057 = extractvalue { i64, i1 } %1056, 1, !nosanitize !45
  br i1 %1057, label %1058, label %1059, !prof !46, !nosanitize !45

1058:                                             ; preds = %1051
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1059:                                             ; preds = %1051
  %1060 = extractvalue { i64, i1 } %1056, 0, !nosanitize !45
  %1061 = icmp eq i64 %1060, 0
  br i1 %1061, label %1062, label %1105

1062:                                             ; preds = %1059, %45, %34
  %1063 = load i32, ptr %30, align 4, !tbaa !48
  %1064 = icmp eq i32 %1063, %25
  br i1 %1064, label %1104, label %1065

1065:                                             ; preds = %1062
  %1066 = icmp eq i32 %1063, 0
  br i1 %1066, label %1067, label %1086

1067:                                             ; preds = %1065
  %1068 = getelementptr inbounds nuw i8, ptr %15, i64 5928
  %1069 = load i32, ptr %1068, align 8, !tbaa !125
  switch i32 %1069, label %1071 [
    i32 0, label %1086
    i32 1, label %1070
  ]

1070:                                             ; preds = %1067
  tail call fastcc void @slide_hash(ptr noundef nonnull %15)
  br label %1085

1071:                                             ; preds = %1067
  %1072 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %1073 = load i32, ptr %1072, align 4, !tbaa !36
  %1074 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1073, i32 1), !nosanitize !45
  %1075 = extractvalue { i32, i1 } %1074, 1, !nosanitize !45
  br i1 %1075, label %1076, label %1077, !prof !46, !nosanitize !45

1076:                                             ; preds = %1071
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

1077:                                             ; preds = %1071
  %1078 = extractvalue { i32, i1 } %1074, 0, !nosanitize !45
  %1079 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %1080 = load ptr, ptr %1079, align 8, !tbaa !37
  %1081 = zext i32 %1078 to i64
  %1082 = getelementptr inbounds nuw [2 x i8], ptr %1080, i64 %1081
  store i16 0, ptr %1082, align 2, !tbaa !62
  %1083 = shl nuw nsw i64 %1081, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1080, i8 0, i64 %1083, i1 false)
  %1084 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  store i32 0, ptr %1084, align 8, !tbaa !63
  br label %1085

1085:                                             ; preds = %1077, %1070
  store i32 0, ptr %1068, align 8, !tbaa !125
  br label %1086

1086:                                             ; preds = %1085, %1067, %1065
  store i32 %25, ptr %30, align 4, !tbaa !48
  %1087 = zext nneg i32 %25 to i64
  %1088 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %1087
  %1089 = getelementptr inbounds nuw i8, ptr %1088, i64 2
  %1090 = load i16, ptr %1089, align 2, !tbaa !64
  %1091 = zext i16 %1090 to i32
  %1092 = getelementptr inbounds nuw i8, ptr %15, i64 192
  store i32 %1091, ptr %1092, align 8, !tbaa !66
  %1093 = load i16, ptr %1088, align 16, !tbaa !67
  %1094 = zext i16 %1093 to i32
  %1095 = getelementptr inbounds nuw i8, ptr %15, i64 204
  store i32 %1094, ptr %1095, align 4, !tbaa !68
  %1096 = getelementptr inbounds nuw i8, ptr %1088, i64 4
  %1097 = load i16, ptr %1096, align 4, !tbaa !69
  %1098 = zext i16 %1097 to i32
  %1099 = getelementptr inbounds nuw i8, ptr %15, i64 208
  store i32 %1098, ptr %1099, align 8, !tbaa !70
  %1100 = getelementptr inbounds nuw i8, ptr %1088, i64 6
  %1101 = load i16, ptr %1100, align 2, !tbaa !71
  %1102 = zext i16 %1101 to i32
  %1103 = getelementptr inbounds nuw i8, ptr %15, i64 188
  store i32 %1102, ptr %1103, align 4, !tbaa !72
  br label %1104

1104:                                             ; preds = %1086, %1062
  store i32 %2, ptr %31, align 8, !tbaa !49
  br label %1105

1105:                                             ; preds = %1104, %1059, %1039, %65, %49, %23, %20, %17, %13, %9, %5, %3
  %1106 = phi i32 [ -5, %1059 ], [ -2, %13 ], [ 0, %1104 ], [ -2, %23 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %65 ], [ -2, %49 ], [ -5, %1039 ]
  ret i32 %1106
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 2) i32 @deflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1204, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %1204, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1204, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %1204, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !20
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %1204

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !29
  switch i32 %21, label %1204 [
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
  br i1 %23, label %1204, label %24

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
  br label %1204

42:                                               ; preds = %35
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %44 = load i32, ptr %43, align 8, !tbaa !107
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %47, ptr %48, align 8, !tbaa !9
  br label %1204

49:                                               ; preds = %42
  %50 = getelementptr inbounds nuw i8, ptr %14, i64 76
  %51 = load i32, ptr %50, align 4, !tbaa !60
  store i32 %1, ptr %50, align 4, !tbaa !60
  %52 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %53 = load i64, ptr %52, align 8, !tbaa !57
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %100, label %55

55:                                               ; preds = %49
  tail call void @_tr_flush_bits(ptr noundef nonnull %14) #10
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

75:                                               ; preds = %62
  %76 = extractvalue { i64, i1 } %72, 0, !nosanitize !45
  store i64 %76, ptr %70, align 8, !tbaa !108
  %77 = load i32, ptr %43, align 8, !tbaa !107
  %78 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %77, i32 %60), !nosanitize !45
  %79 = extractvalue { i32, i1 } %78, 1, !nosanitize !45
  br i1 %79, label %80, label %81, !prof !46, !nosanitize !45

80:                                               ; preds = %75
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

81:                                               ; preds = %75
  %82 = extractvalue { i32, i1 } %78, 0, !nosanitize !45
  store i32 %82, ptr %43, align 8, !tbaa !107
  %83 = load i64, ptr %52, align 8, !tbaa !57
  %84 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %83, i64 %59), !nosanitize !45
  %85 = extractvalue { i64, i1 } %84, 1, !nosanitize !45
  br i1 %85, label %86, label %87, !prof !46, !nosanitize !45

86:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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

93:                                               ; preds = %90, %87, %55
  %94 = phi i64 [ %56, %55 ], [ 0, %90 ], [ %88, %87 ]
  %95 = phi i32 [ %57, %55 ], [ %82, %90 ], [ %82, %87 ]
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = load i32, ptr %20, align 8, !tbaa !29
  br label %123

99:                                               ; preds = %93
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1204

100:                                              ; preds = %49
  br i1 %31, label %102, label %123

101:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 12) #12, !nosanitize !45
  unreachable, !nosanitize !45

102:                                              ; preds = %100
  %103 = shl nuw nsw i32 %1, 1
  %104 = icmp eq i32 %1, 5
  %105 = select i1 %104, i32 -9, i32 0
  %106 = add nsw i32 %105, %103
  %107 = add i32 %51, 1073741824
  %108 = icmp sgt i32 %107, -1
  br i1 %108, label %110, label %101, !prof !93, !nosanitize !45

109:                                              ; preds = %110
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

110:                                              ; preds = %102
  %111 = shl nsw i32 %51, 1
  %112 = icmp sgt i32 %51, 4
  %113 = select i1 %112, i32 9, i32 0
  %114 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %111, i32 %113), !nosanitize !45
  %115 = extractvalue { i32, i1 } %114, 1, !nosanitize !45
  br i1 %115, label %109, label %116, !prof !46, !nosanitize !45

116:                                              ; preds = %110
  %117 = extractvalue { i32, i1 } %114, 0, !nosanitize !45
  %118 = icmp sle i32 %106, %117
  %119 = and i1 %37, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %121, ptr %122, align 8, !tbaa !9
  br label %1204

123:                                              ; preds = %116, %100, %97
  %124 = phi i64 [ %94, %97 ], [ 0, %100 ], [ 0, %116 ]
  %125 = phi i32 [ %98, %97 ], [ %21, %100 ], [ %21, %116 ]
  switch i32 %125, label %241 [
    i32 666, label %126
    i32 42, label %132
  ]

126:                                              ; preds = %123
  %127 = load i32, ptr %29, align 8, !tbaa !81
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %984, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %130, ptr %131, align 8, !tbaa !9
  br label %1204

132:                                              ; preds = %123
  %133 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %134 = load i32, ptr %133, align 8, !tbaa !30
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store i32 113, ptr %20, align 8, !tbaa !29
  br label %981

137:                                              ; preds = %132
  %138 = getelementptr inbounds nuw i8, ptr %14, i64 84
  %139 = load i32, ptr %138, align 4, !tbaa !31
  %140 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %139, i32 8), !nosanitize !45
  %141 = extractvalue { i32, i1 } %140, 1, !nosanitize !45
  br i1 %141, label %142, label %143, !prof !46, !nosanitize !45

142:                                              ; preds = %137
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

143:                                              ; preds = %137
  %144 = extractvalue { i32, i1 } %140, 0, !nosanitize !45
  %145 = shl i32 %144, 12
  %146 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %147 = load i32, ptr %146, align 8, !tbaa !49
  %148 = icmp sgt i32 %147, 1
  br i1 %148, label %158, label %149

149:                                              ; preds = %143
  %150 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %151 = load i32, ptr %150, align 4, !tbaa !48
  %152 = icmp slt i32 %151, 2
  br i1 %152, label %158, label %153

153:                                              ; preds = %149
  %154 = icmp samesign ult i32 %151, 6
  br i1 %154, label %158, label %155

155:                                              ; preds = %153
  %156 = icmp eq i32 %151, 6
  %157 = select i1 %156, i32 128, i32 192
  br label %158

158:                                              ; preds = %155, %153, %149, %143
  %159 = phi i32 [ 64, %153 ], [ 0, %143 ], [ %157, %155 ], [ 0, %149 ]
  %160 = getelementptr inbounds nuw i8, ptr %14, i64 172
  %161 = or disjoint i32 %159, %145
  %162 = load i32, ptr %160, align 4, !tbaa !73
  %163 = icmp eq i32 %162, 0
  %164 = select i1 %163, i32 2048, i32 2080
  %165 = or disjoint i32 %164, %161
  %166 = urem i32 %165, 31
  %167 = or disjoint i32 %166, %165
  %168 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %124, i64 1), !nosanitize !45
  %169 = extractvalue { i64, i1 } %168, 1, !nosanitize !45
  br i1 %169, label %170, label %171, !prof !46, !nosanitize !45

170:                                              ; preds = %158
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

171:                                              ; preds = %158
  %172 = extractvalue { i64, i1 } %168, 0, !nosanitize !45
  %173 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %174 = load ptr, ptr %173, align 8, !tbaa !40
  %175 = lshr i32 %165, 8
  %176 = trunc i32 %175 to i8
  store i64 %172, ptr %52, align 8, !tbaa !57
  %177 = getelementptr inbounds nuw i8, ptr %174, i64 %124
  store i8 %176, ptr %177, align 1, !tbaa !8
  %178 = load i64, ptr %52, align 8, !tbaa !57
  %179 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %178, i64 1), !nosanitize !45
  %180 = extractvalue { i64, i1 } %179, 1, !nosanitize !45
  br i1 %180, label %181, label %182, !prof !46, !nosanitize !45

181:                                              ; preds = %171
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

182:                                              ; preds = %171
  %183 = extractvalue { i64, i1 } %179, 0, !nosanitize !45
  %184 = load ptr, ptr %173, align 8, !tbaa !40
  %185 = trunc i32 %167 to i8
  %186 = xor i8 %185, 31
  store i64 %183, ptr %52, align 8, !tbaa !57
  %187 = getelementptr inbounds nuw i8, ptr %184, i64 %178
  store i8 %186, ptr %187, align 1, !tbaa !8
  %188 = load i32, ptr %160, align 4, !tbaa !73
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %233, label %190

190:                                              ; preds = %182
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %192 = load i64, ptr %191, align 8, !tbaa !59
  %193 = lshr i64 %192, 16
  %194 = load i64, ptr %52, align 8, !tbaa !57
  %195 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %194, i64 1), !nosanitize !45
  %196 = extractvalue { i64, i1 } %195, 1, !nosanitize !45
  br i1 %196, label %197, label %198, !prof !46, !nosanitize !45

197:                                              ; preds = %190
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

198:                                              ; preds = %190
  %199 = extractvalue { i64, i1 } %195, 0, !nosanitize !45
  %200 = load ptr, ptr %173, align 8, !tbaa !40
  %201 = lshr i64 %192, 24
  %202 = trunc i64 %201 to i8
  store i64 %199, ptr %52, align 8, !tbaa !57
  %203 = getelementptr inbounds nuw i8, ptr %200, i64 %194
  store i8 %202, ptr %203, align 1, !tbaa !8
  %204 = load i64, ptr %52, align 8, !tbaa !57
  %205 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %204, i64 1), !nosanitize !45
  %206 = extractvalue { i64, i1 } %205, 1, !nosanitize !45
  br i1 %206, label %207, label %208, !prof !46, !nosanitize !45

207:                                              ; preds = %198
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

208:                                              ; preds = %198
  %209 = extractvalue { i64, i1 } %205, 0, !nosanitize !45
  %210 = load ptr, ptr %173, align 8, !tbaa !40
  %211 = trunc i64 %193 to i8
  store i64 %209, ptr %52, align 8, !tbaa !57
  %212 = getelementptr inbounds nuw i8, ptr %210, i64 %204
  store i8 %211, ptr %212, align 1, !tbaa !8
  %213 = load i64, ptr %191, align 8, !tbaa !59
  %214 = trunc i64 %213 to i8
  %215 = load i64, ptr %52, align 8, !tbaa !57
  %216 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %215, i64 1), !nosanitize !45
  %217 = extractvalue { i64, i1 } %216, 1, !nosanitize !45
  br i1 %217, label %218, label %219, !prof !46, !nosanitize !45

218:                                              ; preds = %208
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

219:                                              ; preds = %208
  %220 = extractvalue { i64, i1 } %216, 0, !nosanitize !45
  %221 = load ptr, ptr %173, align 8, !tbaa !40
  %222 = lshr i64 %213, 8
  %223 = trunc i64 %222 to i8
  store i64 %220, ptr %52, align 8, !tbaa !57
  %224 = getelementptr inbounds nuw i8, ptr %221, i64 %215
  store i8 %223, ptr %224, align 1, !tbaa !8
  %225 = load i64, ptr %52, align 8, !tbaa !57
  %226 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %225, i64 1), !nosanitize !45
  %227 = extractvalue { i64, i1 } %226, 1, !nosanitize !45
  br i1 %227, label %228, label %229, !prof !46, !nosanitize !45

228:                                              ; preds = %219
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

229:                                              ; preds = %219
  %230 = extractvalue { i64, i1 } %226, 0, !nosanitize !45
  %231 = load ptr, ptr %173, align 8, !tbaa !40
  store i64 %230, ptr %52, align 8, !tbaa !57
  %232 = getelementptr inbounds nuw i8, ptr %231, i64 %225
  store i8 %214, ptr %232, align 1, !tbaa !8
  br label %233

233:                                              ; preds = %229, %182
  %234 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %234, ptr %235, align 8, !tbaa !59
  store i32 113, ptr %20, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %236 = load i64, ptr %52, align 8, !tbaa !57
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %233
  %239 = load i32, ptr %20, align 8, !tbaa !29
  br label %241

240:                                              ; preds = %233
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1204

241:                                              ; preds = %238, %123
  %242 = phi i32 [ %239, %238 ], [ %125, %123 ]
  %243 = icmp eq i32 %242, 57
  br i1 %243, label %244, label %503

244:                                              ; preds = %241
  %245 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  %246 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %245, ptr %246, align 8, !tbaa !59
  %247 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %248 = load i64, ptr %52, align 8, !tbaa !57
  %249 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %248, i64 1), !nosanitize !45
  %250 = extractvalue { i64, i1 } %249, 1, !nosanitize !45
  br i1 %250, label %251, label %252, !prof !46, !nosanitize !45

251:                                              ; preds = %244
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

252:                                              ; preds = %244
  %253 = extractvalue { i64, i1 } %249, 0, !nosanitize !45
  %254 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %253, ptr %52, align 8, !tbaa !57
  %255 = getelementptr inbounds nuw i8, ptr %254, i64 %248
  store i8 31, ptr %255, align 1, !tbaa !8
  %256 = load i64, ptr %52, align 8, !tbaa !57
  %257 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %256, i64 1), !nosanitize !45
  %258 = extractvalue { i64, i1 } %257, 1, !nosanitize !45
  br i1 %258, label %259, label %260, !prof !46, !nosanitize !45

259:                                              ; preds = %252
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

260:                                              ; preds = %252
  %261 = extractvalue { i64, i1 } %257, 0, !nosanitize !45
  %262 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %261, ptr %52, align 8, !tbaa !57
  %263 = getelementptr inbounds nuw i8, ptr %262, i64 %256
  store i8 -117, ptr %263, align 1, !tbaa !8
  %264 = load i64, ptr %52, align 8, !tbaa !57
  %265 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %264, i64 1), !nosanitize !45
  %266 = extractvalue { i64, i1 } %265, 1, !nosanitize !45
  br i1 %266, label %267, label %268, !prof !46, !nosanitize !45

267:                                              ; preds = %260
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

268:                                              ; preds = %260
  %269 = extractvalue { i64, i1 } %265, 0, !nosanitize !45
  %270 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %269, ptr %52, align 8, !tbaa !57
  %271 = getelementptr inbounds nuw i8, ptr %270, i64 %264
  store i8 8, ptr %271, align 1, !tbaa !8
  %272 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %273 = load ptr, ptr %272, align 8, !tbaa !100
  %274 = icmp eq ptr %273, null
  %275 = load i64, ptr %52, align 8, !tbaa !57
  %276 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %275, i64 1), !nosanitize !45
  %277 = extractvalue { i64, i1 } %276, 1, !nosanitize !45
  br i1 %274, label %278, label %347

278:                                              ; preds = %268
  br i1 %277, label %279, label %280, !prof !46, !nosanitize !45

279:                                              ; preds = %278
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

280:                                              ; preds = %278
  %281 = extractvalue { i64, i1 } %276, 0, !nosanitize !45
  %282 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %281, ptr %52, align 8, !tbaa !57
  %283 = getelementptr inbounds nuw i8, ptr %282, i64 %275
  store i8 0, ptr %283, align 1, !tbaa !8
  %284 = load i64, ptr %52, align 8, !tbaa !57
  %285 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %284, i64 1), !nosanitize !45
  %286 = extractvalue { i64, i1 } %285, 1, !nosanitize !45
  br i1 %286, label %287, label %288, !prof !46, !nosanitize !45

287:                                              ; preds = %280
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

288:                                              ; preds = %280
  %289 = extractvalue { i64, i1 } %285, 0, !nosanitize !45
  %290 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %289, ptr %52, align 8, !tbaa !57
  %291 = getelementptr inbounds nuw i8, ptr %290, i64 %284
  store i8 0, ptr %291, align 1, !tbaa !8
  %292 = load i64, ptr %52, align 8, !tbaa !57
  %293 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %292, i64 1), !nosanitize !45
  %294 = extractvalue { i64, i1 } %293, 1, !nosanitize !45
  br i1 %294, label %295, label %296, !prof !46, !nosanitize !45

295:                                              ; preds = %288
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

296:                                              ; preds = %288
  %297 = extractvalue { i64, i1 } %293, 0, !nosanitize !45
  %298 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %297, ptr %52, align 8, !tbaa !57
  %299 = getelementptr inbounds nuw i8, ptr %298, i64 %292
  store i8 0, ptr %299, align 1, !tbaa !8
  %300 = load i64, ptr %52, align 8, !tbaa !57
  %301 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %300, i64 1), !nosanitize !45
  %302 = extractvalue { i64, i1 } %301, 1, !nosanitize !45
  br i1 %302, label %303, label %304, !prof !46, !nosanitize !45

303:                                              ; preds = %296
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

304:                                              ; preds = %296
  %305 = extractvalue { i64, i1 } %301, 0, !nosanitize !45
  %306 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %305, ptr %52, align 8, !tbaa !57
  %307 = getelementptr inbounds nuw i8, ptr %306, i64 %300
  store i8 0, ptr %307, align 1, !tbaa !8
  %308 = load i64, ptr %52, align 8, !tbaa !57
  %309 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %308, i64 1), !nosanitize !45
  %310 = extractvalue { i64, i1 } %309, 1, !nosanitize !45
  br i1 %310, label %311, label %312, !prof !46, !nosanitize !45

311:                                              ; preds = %304
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

312:                                              ; preds = %304
  %313 = extractvalue { i64, i1 } %309, 0, !nosanitize !45
  %314 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %313, ptr %52, align 8, !tbaa !57
  %315 = getelementptr inbounds nuw i8, ptr %314, i64 %308
  store i8 0, ptr %315, align 1, !tbaa !8
  %316 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %317 = load i32, ptr %316, align 4, !tbaa !48
  %318 = icmp eq i32 %317, 9
  br i1 %318, label %326, label %319

319:                                              ; preds = %312
  %320 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %321 = load i32, ptr %320, align 8, !tbaa !49
  %322 = icmp sgt i32 %321, 1
  %323 = icmp slt i32 %317, 2
  %324 = or i1 %323, %322
  %325 = select i1 %324, i8 4, i8 0
  br label %326

326:                                              ; preds = %319, %312
  %327 = phi i8 [ %325, %319 ], [ 2, %312 ]
  %328 = load i64, ptr %52, align 8, !tbaa !57
  %329 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %328, i64 1), !nosanitize !45
  %330 = extractvalue { i64, i1 } %329, 1, !nosanitize !45
  br i1 %330, label %331, label %332, !prof !46, !nosanitize !45

331:                                              ; preds = %326
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

332:                                              ; preds = %326
  %333 = extractvalue { i64, i1 } %329, 0, !nosanitize !45
  %334 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %333, ptr %52, align 8, !tbaa !57
  %335 = getelementptr inbounds nuw i8, ptr %334, i64 %328
  store i8 %327, ptr %335, align 1, !tbaa !8
  %336 = load i64, ptr %52, align 8, !tbaa !57
  %337 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %336, i64 1), !nosanitize !45
  %338 = extractvalue { i64, i1 } %337, 1, !nosanitize !45
  br i1 %338, label %339, label %340, !prof !46, !nosanitize !45

339:                                              ; preds = %332
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

340:                                              ; preds = %332
  %341 = extractvalue { i64, i1 } %337, 0, !nosanitize !45
  %342 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %341, ptr %52, align 8, !tbaa !57
  %343 = getelementptr inbounds nuw i8, ptr %342, i64 %336
  store i8 3, ptr %343, align 1, !tbaa !8
  store i32 113, ptr %20, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %344 = load i64, ptr %52, align 8, !tbaa !57
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %501, label %346

346:                                              ; preds = %340
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1204

347:                                              ; preds = %268
  br i1 %277, label %348, label %349, !prof !46, !nosanitize !45

348:                                              ; preds = %347
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

349:                                              ; preds = %347
  %350 = extractvalue { i64, i1 } %276, 0, !nosanitize !45
  %351 = load ptr, ptr %247, align 8, !tbaa !40
  %352 = getelementptr inbounds nuw i8, ptr %273, i64 56
  %353 = load ptr, ptr %352, align 8, !tbaa !109
  %354 = icmp eq ptr %353, null
  %355 = getelementptr inbounds nuw i8, ptr %273, i64 40
  %356 = load ptr, ptr %355, align 8, !tbaa !111
  %357 = icmp eq ptr %356, null
  %358 = getelementptr inbounds nuw i8, ptr %273, i64 24
  %359 = load ptr, ptr %358, align 8, !tbaa !112
  %360 = icmp eq ptr %359, null
  %361 = load i32, ptr %273, align 8, !tbaa !113
  %362 = icmp ne i32 %361, 0
  %363 = getelementptr inbounds nuw i8, ptr %273, i64 68
  %364 = load i32, ptr %363, align 4, !tbaa !114
  %365 = icmp eq i32 %364, 0
  %366 = select i1 %365, i8 0, i8 2
  %367 = zext i1 %362 to i8
  %368 = select i1 %360, i8 0, i8 4
  %369 = select i1 %357, i8 0, i8 8
  %370 = select i1 %354, i8 0, i8 16
  %371 = or disjoint i8 %369, %370
  %372 = or disjoint i8 %371, %368
  %373 = or disjoint i8 %372, %367
  %374 = or disjoint i8 %373, %366
  store i64 %350, ptr %52, align 8, !tbaa !57
  %375 = getelementptr inbounds nuw i8, ptr %351, i64 %275
  store i8 %374, ptr %375, align 1, !tbaa !8
  %376 = load i64, ptr %52, align 8, !tbaa !57
  %377 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %376, i64 1), !nosanitize !45
  %378 = extractvalue { i64, i1 } %377, 1, !nosanitize !45
  br i1 %378, label %379, label %380, !prof !46, !nosanitize !45

379:                                              ; preds = %349
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

380:                                              ; preds = %349
  %381 = extractvalue { i64, i1 } %377, 0, !nosanitize !45
  %382 = load ptr, ptr %247, align 8, !tbaa !40
  %383 = load ptr, ptr %272, align 8, !tbaa !100
  %384 = getelementptr inbounds nuw i8, ptr %383, i64 8
  %385 = load i64, ptr %384, align 8, !tbaa !115
  %386 = trunc i64 %385 to i8
  store i64 %381, ptr %52, align 8, !tbaa !57
  %387 = getelementptr inbounds nuw i8, ptr %382, i64 %376
  store i8 %386, ptr %387, align 1, !tbaa !8
  %388 = load i64, ptr %52, align 8, !tbaa !57
  %389 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %388, i64 1), !nosanitize !45
  %390 = extractvalue { i64, i1 } %389, 1, !nosanitize !45
  br i1 %390, label %391, label %392, !prof !46, !nosanitize !45

391:                                              ; preds = %380
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

392:                                              ; preds = %380
  %393 = extractvalue { i64, i1 } %389, 0, !nosanitize !45
  %394 = load ptr, ptr %247, align 8, !tbaa !40
  %395 = load ptr, ptr %272, align 8, !tbaa !100
  %396 = getelementptr inbounds nuw i8, ptr %395, i64 8
  %397 = load i64, ptr %396, align 8, !tbaa !115
  %398 = lshr i64 %397, 8
  %399 = trunc i64 %398 to i8
  store i64 %393, ptr %52, align 8, !tbaa !57
  %400 = getelementptr inbounds nuw i8, ptr %394, i64 %388
  store i8 %399, ptr %400, align 1, !tbaa !8
  %401 = load i64, ptr %52, align 8, !tbaa !57
  %402 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %401, i64 1), !nosanitize !45
  %403 = extractvalue { i64, i1 } %402, 1, !nosanitize !45
  br i1 %403, label %404, label %405, !prof !46, !nosanitize !45

404:                                              ; preds = %392
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

405:                                              ; preds = %392
  %406 = extractvalue { i64, i1 } %402, 0, !nosanitize !45
  %407 = load ptr, ptr %247, align 8, !tbaa !40
  %408 = load ptr, ptr %272, align 8, !tbaa !100
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 8
  %410 = load i64, ptr %409, align 8, !tbaa !115
  %411 = lshr i64 %410, 16
  %412 = trunc i64 %411 to i8
  store i64 %406, ptr %52, align 8, !tbaa !57
  %413 = getelementptr inbounds nuw i8, ptr %407, i64 %401
  store i8 %412, ptr %413, align 1, !tbaa !8
  %414 = load i64, ptr %52, align 8, !tbaa !57
  %415 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %414, i64 1), !nosanitize !45
  %416 = extractvalue { i64, i1 } %415, 1, !nosanitize !45
  br i1 %416, label %417, label %418, !prof !46, !nosanitize !45

417:                                              ; preds = %405
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

418:                                              ; preds = %405
  %419 = extractvalue { i64, i1 } %415, 0, !nosanitize !45
  %420 = load ptr, ptr %247, align 8, !tbaa !40
  %421 = load ptr, ptr %272, align 8, !tbaa !100
  %422 = getelementptr inbounds nuw i8, ptr %421, i64 8
  %423 = load i64, ptr %422, align 8, !tbaa !115
  %424 = lshr i64 %423, 24
  %425 = trunc i64 %424 to i8
  store i64 %419, ptr %52, align 8, !tbaa !57
  %426 = getelementptr inbounds nuw i8, ptr %420, i64 %414
  store i8 %425, ptr %426, align 1, !tbaa !8
  %427 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %428 = load i32, ptr %427, align 4, !tbaa !48
  %429 = icmp eq i32 %428, 9
  br i1 %429, label %437, label %430

430:                                              ; preds = %418
  %431 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %432 = load i32, ptr %431, align 8, !tbaa !49
  %433 = icmp sgt i32 %432, 1
  %434 = icmp slt i32 %428, 2
  %435 = or i1 %434, %433
  %436 = select i1 %435, i8 4, i8 0
  br label %437

437:                                              ; preds = %430, %418
  %438 = phi i8 [ %436, %430 ], [ 2, %418 ]
  %439 = load i64, ptr %52, align 8, !tbaa !57
  %440 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %439, i64 1), !nosanitize !45
  %441 = extractvalue { i64, i1 } %440, 1, !nosanitize !45
  br i1 %441, label %442, label %443, !prof !46, !nosanitize !45

442:                                              ; preds = %437
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

443:                                              ; preds = %437
  %444 = extractvalue { i64, i1 } %440, 0, !nosanitize !45
  %445 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %444, ptr %52, align 8, !tbaa !57
  %446 = getelementptr inbounds nuw i8, ptr %445, i64 %439
  store i8 %438, ptr %446, align 1, !tbaa !8
  %447 = load i64, ptr %52, align 8, !tbaa !57
  %448 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %447, i64 1), !nosanitize !45
  %449 = extractvalue { i64, i1 } %448, 1, !nosanitize !45
  br i1 %449, label %450, label %451, !prof !46, !nosanitize !45

450:                                              ; preds = %443
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

451:                                              ; preds = %443
  %452 = extractvalue { i64, i1 } %448, 0, !nosanitize !45
  %453 = load ptr, ptr %247, align 8, !tbaa !40
  %454 = load ptr, ptr %272, align 8, !tbaa !100
  %455 = getelementptr inbounds nuw i8, ptr %454, i64 20
  %456 = load i32, ptr %455, align 4, !tbaa !116
  %457 = trunc i32 %456 to i8
  store i64 %452, ptr %52, align 8, !tbaa !57
  %458 = getelementptr inbounds nuw i8, ptr %453, i64 %447
  store i8 %457, ptr %458, align 1, !tbaa !8
  %459 = load ptr, ptr %272, align 8, !tbaa !100
  %460 = getelementptr inbounds nuw i8, ptr %459, i64 24
  %461 = load ptr, ptr %460, align 8, !tbaa !112
  %462 = icmp eq ptr %461, null
  br i1 %462, label %489, label %463

463:                                              ; preds = %451
  %464 = load i64, ptr %52, align 8, !tbaa !57
  %465 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %464, i64 1), !nosanitize !45
  %466 = extractvalue { i64, i1 } %465, 1, !nosanitize !45
  br i1 %466, label %467, label %468, !prof !46, !nosanitize !45

467:                                              ; preds = %463
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

468:                                              ; preds = %463
  %469 = extractvalue { i64, i1 } %465, 0, !nosanitize !45
  %470 = load ptr, ptr %247, align 8, !tbaa !40
  %471 = getelementptr inbounds nuw i8, ptr %459, i64 32
  %472 = load i32, ptr %471, align 8, !tbaa !117
  %473 = trunc i32 %472 to i8
  store i64 %469, ptr %52, align 8, !tbaa !57
  %474 = getelementptr inbounds nuw i8, ptr %470, i64 %464
  store i8 %473, ptr %474, align 1, !tbaa !8
  %475 = load i64, ptr %52, align 8, !tbaa !57
  %476 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %475, i64 1), !nosanitize !45
  %477 = extractvalue { i64, i1 } %476, 1, !nosanitize !45
  br i1 %477, label %478, label %479, !prof !46, !nosanitize !45

478:                                              ; preds = %468
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

479:                                              ; preds = %468
  %480 = extractvalue { i64, i1 } %476, 0, !nosanitize !45
  %481 = load ptr, ptr %247, align 8, !tbaa !40
  %482 = load ptr, ptr %272, align 8, !tbaa !100
  %483 = getelementptr inbounds nuw i8, ptr %482, i64 32
  %484 = load i32, ptr %483, align 8, !tbaa !117
  %485 = lshr i32 %484, 8
  %486 = trunc i32 %485 to i8
  store i64 %480, ptr %52, align 8, !tbaa !57
  %487 = getelementptr inbounds nuw i8, ptr %481, i64 %475
  store i8 %486, ptr %487, align 1, !tbaa !8
  %488 = load ptr, ptr %272, align 8, !tbaa !100
  br label %489

489:                                              ; preds = %479, %451
  %490 = phi ptr [ %488, %479 ], [ %459, %451 ]
  %491 = getelementptr inbounds nuw i8, ptr %490, i64 68
  %492 = load i32, ptr %491, align 4, !tbaa !114
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %499, label %494

494:                                              ; preds = %489
  %495 = load i64, ptr %246, align 8, !tbaa !59
  %496 = load ptr, ptr %247, align 8, !tbaa !40
  %497 = load i64, ptr %52, align 8, !tbaa !57
  %498 = tail call i64 @crc32_z(i64 noundef %495, ptr noundef %496, i64 noundef %497) #10
  store i64 %498, ptr %246, align 8, !tbaa !59
  br label %499

499:                                              ; preds = %494, %489
  %500 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i64 0, ptr %500, align 8, !tbaa !118
  store i32 69, ptr %20, align 8, !tbaa !29
  br label %505

501:                                              ; preds = %340
  %502 = load i32, ptr %20, align 8, !tbaa !29
  br label %503

503:                                              ; preds = %501, %241
  %504 = phi i32 [ %502, %501 ], [ %242, %241 ]
  switch i32 %504, label %981 [
    i32 69, label %505
    i32 73, label %713
    i32 91, label %825
    i32 103, label %936
  ]

505:                                              ; preds = %503, %499
  %506 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %507 = load ptr, ptr %506, align 8, !tbaa !100
  %508 = getelementptr inbounds nuw i8, ptr %507, i64 24
  %509 = load ptr, ptr %508, align 8, !tbaa !112
  %510 = icmp eq ptr %509, null
  br i1 %510, label %712, label %511

511:                                              ; preds = %505
  %512 = getelementptr inbounds nuw i8, ptr %507, i64 32
  %513 = load i32, ptr %512, align 8, !tbaa !117
  %514 = and i32 %513, 65535
  %515 = zext nneg i32 %514 to i64
  %516 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %517 = load i64, ptr %516, align 8, !tbaa !118
  %518 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %515, i64 %517), !nosanitize !45
  %519 = extractvalue { i64, i1 } %518, 1, !nosanitize !45
  br i1 %519, label %520, label %521, !prof !46, !nosanitize !45

520:                                              ; preds = %511
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

521:                                              ; preds = %511
  %522 = load i64, ptr %52, align 8, !tbaa !57
  %523 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %524 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %525 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %526 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %527 = extractvalue { i64, i1 } %518, 0
  %528 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %522, i64 %527), !nosanitize !45
  %529 = extractvalue { i64, i1 } %528, 1, !nosanitize !45
  br i1 %529, label %602, label %530, !prof !46, !nosanitize !45

530:                                              ; preds = %521
  %531 = extractvalue { i64, i1 } %528, 0, !nosanitize !45
  %532 = load i64, ptr %523, align 8, !tbaa !41
  %533 = icmp ugt i64 %531, %532
  br i1 %533, label %534, label %685

534:                                              ; preds = %530
  %535 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %532, i64 %522), !nosanitize !45
  %536 = extractvalue { i64, i1 } %535, 0, !nosanitize !45
  %537 = extractvalue { i64, i1 } %535, 1, !nosanitize !45
  br i1 %537, label %608, label %538, !prof !46, !nosanitize !45

538:                                              ; preds = %534
  %539 = load ptr, ptr %524, align 8, !tbaa !40
  %540 = getelementptr inbounds nuw i8, ptr %539, i64 %522
  %541 = getelementptr inbounds nuw i8, ptr %509, i64 %517
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %540, ptr nonnull align 1 %541, i64 %536, i1 false)
  %542 = load i64, ptr %523, align 8, !tbaa !41
  store i64 %542, ptr %52, align 8, !tbaa !57
  %543 = load ptr, ptr %506, align 8, !tbaa !100
  %544 = getelementptr inbounds nuw i8, ptr %543, i64 68
  %545 = load i32, ptr %544, align 4, !tbaa !114
  %546 = icmp ne i32 %545, 0
  %547 = icmp ugt i64 %542, %522
  %548 = select i1 %546, i1 %547, i1 false
  br i1 %548, label %549, label %555

549:                                              ; preds = %538
  %550 = sub nuw i64 %542, %522
  %551 = load ptr, ptr %524, align 8, !tbaa !40
  %552 = getelementptr inbounds nuw i8, ptr %551, i64 %522
  %553 = load i64, ptr %525, align 8, !tbaa !59
  %554 = tail call i64 @crc32_z(i64 noundef %553, ptr noundef %552, i64 noundef %550) #10
  store i64 %554, ptr %525, align 8, !tbaa !59
  br label %555

555:                                              ; preds = %549, %538
  %556 = load i64, ptr %516, align 8, !tbaa !118
  %557 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %556, i64 %536), !nosanitize !45
  %558 = extractvalue { i64, i1 } %557, 1, !nosanitize !45
  br i1 %558, label %631, label %559, !prof !46, !nosanitize !45

559:                                              ; preds = %555
  %560 = extractvalue { i64, i1 } %557, 0, !nosanitize !45
  store i64 %560, ptr %516, align 8, !tbaa !118
  %561 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %561) #10
  %562 = getelementptr inbounds nuw i8, ptr %561, i64 40
  %563 = load i64, ptr %562, align 8, !tbaa !57
  %564 = load i32, ptr %43, align 8, !tbaa !107
  %565 = zext i32 %564 to i64
  %566 = tail call i64 @llvm.umin.i64(i64 %563, i64 %565)
  %567 = trunc nuw i64 %566 to i32
  %568 = icmp eq i64 %566, 0
  br i1 %568, label %596, label %569

569:                                              ; preds = %559
  %570 = load ptr, ptr %25, align 8, !tbaa !106
  %571 = getelementptr inbounds nuw i8, ptr %561, i64 32
  %572 = load ptr, ptr %571, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %570, ptr align 1 %572, i64 %566, i1 false)
  %573 = load ptr, ptr %25, align 8, !tbaa !106
  %574 = getelementptr inbounds nuw i8, ptr %573, i64 %566
  store ptr %574, ptr %25, align 8, !tbaa !106
  %575 = load ptr, ptr %571, align 8, !tbaa !58
  %576 = getelementptr inbounds nuw i8, ptr %575, i64 %566
  store ptr %576, ptr %571, align 8, !tbaa !58
  %577 = load i64, ptr %526, align 8, !tbaa !108
  %578 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %577, i64 %566), !nosanitize !45
  %579 = extractvalue { i64, i1 } %578, 1, !nosanitize !45
  br i1 %579, label %653, label %580, !prof !46, !nosanitize !45

580:                                              ; preds = %569
  %581 = extractvalue { i64, i1 } %578, 0, !nosanitize !45
  store i64 %581, ptr %526, align 8, !tbaa !108
  %582 = load i32, ptr %43, align 8, !tbaa !107
  %583 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %582, i32 %567), !nosanitize !45
  %584 = extractvalue { i32, i1 } %583, 1, !nosanitize !45
  br i1 %584, label %659, label %585, !prof !46, !nosanitize !45

585:                                              ; preds = %580
  %586 = extractvalue { i32, i1 } %583, 0, !nosanitize !45
  store i32 %586, ptr %43, align 8, !tbaa !107
  %587 = load i64, ptr %562, align 8, !tbaa !57
  %588 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %587, i64 %566), !nosanitize !45
  %589 = extractvalue { i64, i1 } %588, 1, !nosanitize !45
  br i1 %589, label %665, label %590, !prof !46, !nosanitize !45

590:                                              ; preds = %585
  %591 = extractvalue { i64, i1 } %588, 0, !nosanitize !45
  store i64 %591, ptr %562, align 8, !tbaa !57
  %592 = icmp eq i64 %591, 0
  br i1 %592, label %593, label %596

593:                                              ; preds = %590
  %594 = getelementptr inbounds nuw i8, ptr %561, i64 16
  %595 = load ptr, ptr %594, align 8, !tbaa !40
  store ptr %595, ptr %571, align 8, !tbaa !58
  br label %596

596:                                              ; preds = %593, %590, %559
  %597 = load i64, ptr %52, align 8, !tbaa !57
  %598 = icmp eq i64 %597, 0
  br i1 %598, label %599, label %675

599:                                              ; preds = %596
  %600 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %527, i64 %536), !nosanitize !45
  %601 = extractvalue { i64, i1 } %600, 1, !nosanitize !45
  br i1 %601, label %679, label %603, !prof !46, !nosanitize !45

602:                                              ; preds = %521
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

603:                                              ; preds = %676, %599
  %604 = phi { i64, i1 } [ %677, %676 ], [ %600, %599 ]
  %605 = extractvalue { i64, i1 } %604, 0
  %606 = load i64, ptr %523, align 8, !tbaa !41
  %607 = icmp ugt i64 %605, %606
  br i1 %607, label %609, label %680

608:                                              ; preds = %534
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

609:                                              ; preds = %603
  %610 = load ptr, ptr %524, align 8, !tbaa !40
  %611 = load ptr, ptr %506, align 8, !tbaa !100
  %612 = getelementptr inbounds nuw i8, ptr %611, i64 24
  %613 = load ptr, ptr %612, align 8, !tbaa !112
  %614 = load i64, ptr %516, align 8, !tbaa !118
  %615 = getelementptr inbounds nuw i8, ptr %613, i64 %614
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %610, ptr align 1 %615, i64 %606, i1 false)
  %616 = load i64, ptr %523, align 8, !tbaa !41
  store i64 %616, ptr %52, align 8, !tbaa !57
  %617 = load ptr, ptr %506, align 8, !tbaa !100
  %618 = getelementptr inbounds nuw i8, ptr %617, i64 68
  %619 = load i32, ptr %618, align 4, !tbaa !114
  %620 = icmp ne i32 %619, 0
  %621 = icmp ne i64 %616, 0
  %622 = select i1 %620, i1 %621, i1 false
  br i1 %622, label %623, label %627

623:                                              ; preds = %609
  %624 = load ptr, ptr %524, align 8, !tbaa !40
  %625 = load i64, ptr %525, align 8, !tbaa !59
  %626 = tail call i64 @crc32_z(i64 noundef %625, ptr noundef %624, i64 noundef %616) #10
  store i64 %626, ptr %525, align 8, !tbaa !59
  br label %627

627:                                              ; preds = %623, %609
  %628 = load i64, ptr %516, align 8, !tbaa !118
  %629 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %628, i64 %606), !nosanitize !45
  %630 = extractvalue { i64, i1 } %629, 1, !nosanitize !45
  br i1 %630, label %631, label %632, !prof !46, !nosanitize !45

631:                                              ; preds = %627, %555
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

632:                                              ; preds = %627
  %633 = extractvalue { i64, i1 } %629, 0, !nosanitize !45
  store i64 %633, ptr %516, align 8, !tbaa !118
  %634 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %634) #10
  %635 = getelementptr inbounds nuw i8, ptr %634, i64 40
  %636 = load i64, ptr %635, align 8, !tbaa !57
  %637 = load i32, ptr %43, align 8, !tbaa !107
  %638 = zext i32 %637 to i64
  %639 = tail call i64 @llvm.umin.i64(i64 %636, i64 %638)
  %640 = trunc nuw i64 %639 to i32
  %641 = icmp eq i64 %639, 0
  br i1 %641, label %672, label %642

642:                                              ; preds = %632
  %643 = load ptr, ptr %25, align 8, !tbaa !106
  %644 = getelementptr inbounds nuw i8, ptr %634, i64 32
  %645 = load ptr, ptr %644, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %643, ptr align 1 %645, i64 %639, i1 false)
  %646 = load ptr, ptr %25, align 8, !tbaa !106
  %647 = getelementptr inbounds nuw i8, ptr %646, i64 %639
  store ptr %647, ptr %25, align 8, !tbaa !106
  %648 = load ptr, ptr %644, align 8, !tbaa !58
  %649 = getelementptr inbounds nuw i8, ptr %648, i64 %639
  store ptr %649, ptr %644, align 8, !tbaa !58
  %650 = load i64, ptr %526, align 8, !tbaa !108
  %651 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %650, i64 %639), !nosanitize !45
  %652 = extractvalue { i64, i1 } %651, 1, !nosanitize !45
  br i1 %652, label %653, label %654, !prof !46, !nosanitize !45

653:                                              ; preds = %642, %569
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

654:                                              ; preds = %642
  %655 = extractvalue { i64, i1 } %651, 0, !nosanitize !45
  store i64 %655, ptr %526, align 8, !tbaa !108
  %656 = load i32, ptr %43, align 8, !tbaa !107
  %657 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %656, i32 %640), !nosanitize !45
  %658 = extractvalue { i32, i1 } %657, 1, !nosanitize !45
  br i1 %658, label %659, label %660, !prof !46, !nosanitize !45

659:                                              ; preds = %654, %580
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

660:                                              ; preds = %654
  %661 = extractvalue { i32, i1 } %657, 0, !nosanitize !45
  store i32 %661, ptr %43, align 8, !tbaa !107
  %662 = load i64, ptr %635, align 8, !tbaa !57
  %663 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %662, i64 %639), !nosanitize !45
  %664 = extractvalue { i64, i1 } %663, 1, !nosanitize !45
  br i1 %664, label %665, label %666, !prof !46, !nosanitize !45

665:                                              ; preds = %660, %585
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

666:                                              ; preds = %660
  %667 = extractvalue { i64, i1 } %663, 0, !nosanitize !45
  store i64 %667, ptr %635, align 8, !tbaa !57
  %668 = icmp eq i64 %667, 0
  br i1 %668, label %669, label %672

669:                                              ; preds = %666
  %670 = getelementptr inbounds nuw i8, ptr %634, i64 16
  %671 = load ptr, ptr %670, align 8, !tbaa !40
  store ptr %671, ptr %644, align 8, !tbaa !58
  br label %672

672:                                              ; preds = %669, %666, %632
  %673 = load i64, ptr %52, align 8, !tbaa !57
  %674 = icmp eq i64 %673, 0
  br i1 %674, label %676, label %675

675:                                              ; preds = %672, %596
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1204

676:                                              ; preds = %672
  %677 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %605, i64 %606), !nosanitize !45
  %678 = extractvalue { i64, i1 } %677, 1, !nosanitize !45
  br i1 %678, label %679, label %603, !prof !46, !llvm.loop !119, !nosanitize !45

679:                                              ; preds = %676, %599
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

680:                                              ; preds = %603
  %681 = load ptr, ptr %506, align 8, !tbaa !100
  %682 = getelementptr inbounds nuw i8, ptr %681, i64 24
  %683 = load ptr, ptr %682, align 8, !tbaa !112
  %684 = load i64, ptr %516, align 8, !tbaa !118
  br label %685

685:                                              ; preds = %680, %530
  %686 = phi i64 [ %517, %530 ], [ %684, %680 ]
  %687 = phi ptr [ %509, %530 ], [ %683, %680 ]
  %688 = phi i64 [ %522, %530 ], [ 0, %680 ]
  %689 = phi i64 [ %527, %530 ], [ %605, %680 ]
  %690 = load ptr, ptr %524, align 8, !tbaa !40
  %691 = getelementptr inbounds nuw i8, ptr %690, i64 %688
  %692 = getelementptr inbounds nuw i8, ptr %687, i64 %686
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %691, ptr align 1 %692, i64 %689, i1 false)
  %693 = load i64, ptr %52, align 8, !tbaa !57
  %694 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %693, i64 %689), !nosanitize !45
  %695 = extractvalue { i64, i1 } %694, 0, !nosanitize !45
  %696 = extractvalue { i64, i1 } %694, 1, !nosanitize !45
  br i1 %696, label %697, label %698, !prof !46, !nosanitize !45

697:                                              ; preds = %685
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

698:                                              ; preds = %685
  store i64 %695, ptr %52, align 8, !tbaa !57
  %699 = load ptr, ptr %506, align 8, !tbaa !100
  %700 = getelementptr inbounds nuw i8, ptr %699, i64 68
  %701 = load i32, ptr %700, align 4, !tbaa !114
  %702 = icmp ne i32 %701, 0
  %703 = icmp ugt i64 %695, %688
  %704 = select i1 %702, i1 %703, i1 false
  br i1 %704, label %705, label %711

705:                                              ; preds = %698
  %706 = sub nuw i64 %695, %688
  %707 = load ptr, ptr %524, align 8, !tbaa !40
  %708 = getelementptr inbounds nuw i8, ptr %707, i64 %688
  %709 = load i64, ptr %525, align 8, !tbaa !59
  %710 = tail call i64 @crc32_z(i64 noundef %709, ptr noundef %708, i64 noundef %706) #10
  store i64 %710, ptr %525, align 8, !tbaa !59
  br label %711

711:                                              ; preds = %705, %698
  store i64 0, ptr %516, align 8, !tbaa !118
  br label %712

712:                                              ; preds = %711, %505
  store i32 73, ptr %20, align 8, !tbaa !29
  br label %713

713:                                              ; preds = %712, %503
  %714 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %715 = load ptr, ptr %714, align 8, !tbaa !100
  %716 = getelementptr inbounds nuw i8, ptr %715, i64 40
  %717 = load ptr, ptr %716, align 8, !tbaa !111
  %718 = icmp eq ptr %717, null
  br i1 %718, label %824, label %719

719:                                              ; preds = %713
  %720 = load i64, ptr %52, align 8, !tbaa !57
  %721 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %722 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %723 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %724 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %725 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %726

726:                                              ; preds = %802, %719
  %727 = phi i64 [ %720, %719 ], [ %789, %802 ]
  %728 = load i64, ptr %52, align 8, !tbaa !57
  %729 = load i64, ptr %721, align 8, !tbaa !41
  %730 = icmp eq i64 %728, %729
  br i1 %730, label %731, label %787

731:                                              ; preds = %726
  %732 = load ptr, ptr %714, align 8, !tbaa !100
  %733 = getelementptr inbounds nuw i8, ptr %732, i64 68
  %734 = load i32, ptr %733, align 4, !tbaa !114
  %735 = icmp ne i32 %734, 0
  %736 = icmp ugt i64 %728, %727
  %737 = select i1 %735, i1 %736, i1 false
  br i1 %737, label %738, label %744

738:                                              ; preds = %731
  %739 = sub nuw i64 %728, %727
  %740 = load ptr, ptr %722, align 8, !tbaa !40
  %741 = getelementptr inbounds nuw i8, ptr %740, i64 %727
  %742 = load i64, ptr %723, align 8, !tbaa !59
  %743 = tail call i64 @crc32_z(i64 noundef %742, ptr noundef %741, i64 noundef %739) #10
  store i64 %743, ptr %723, align 8, !tbaa !59
  br label %744

744:                                              ; preds = %738, %731
  %745 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %745) #10
  %746 = getelementptr inbounds nuw i8, ptr %745, i64 40
  %747 = load i64, ptr %746, align 8, !tbaa !57
  %748 = load i32, ptr %43, align 8, !tbaa !107
  %749 = zext i32 %748 to i64
  %750 = tail call i64 @llvm.umin.i64(i64 %747, i64 %749)
  %751 = trunc nuw i64 %750 to i32
  %752 = icmp eq i64 %750, 0
  br i1 %752, label %783, label %753

753:                                              ; preds = %744
  %754 = load ptr, ptr %25, align 8, !tbaa !106
  %755 = getelementptr inbounds nuw i8, ptr %745, i64 32
  %756 = load ptr, ptr %755, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %754, ptr align 1 %756, i64 %750, i1 false)
  %757 = load ptr, ptr %25, align 8, !tbaa !106
  %758 = getelementptr inbounds nuw i8, ptr %757, i64 %750
  store ptr %758, ptr %25, align 8, !tbaa !106
  %759 = load ptr, ptr %755, align 8, !tbaa !58
  %760 = getelementptr inbounds nuw i8, ptr %759, i64 %750
  store ptr %760, ptr %755, align 8, !tbaa !58
  %761 = load i64, ptr %724, align 8, !tbaa !108
  %762 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %761, i64 %750), !nosanitize !45
  %763 = extractvalue { i64, i1 } %762, 1, !nosanitize !45
  br i1 %763, label %764, label %765, !prof !46, !nosanitize !45

764:                                              ; preds = %753
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

765:                                              ; preds = %753
  %766 = extractvalue { i64, i1 } %762, 0, !nosanitize !45
  store i64 %766, ptr %724, align 8, !tbaa !108
  %767 = load i32, ptr %43, align 8, !tbaa !107
  %768 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %767, i32 %751), !nosanitize !45
  %769 = extractvalue { i32, i1 } %768, 1, !nosanitize !45
  br i1 %769, label %770, label %771, !prof !46, !nosanitize !45

770:                                              ; preds = %765
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

771:                                              ; preds = %765
  %772 = extractvalue { i32, i1 } %768, 0, !nosanitize !45
  store i32 %772, ptr %43, align 8, !tbaa !107
  %773 = load i64, ptr %746, align 8, !tbaa !57
  %774 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %773, i64 %750), !nosanitize !45
  %775 = extractvalue { i64, i1 } %774, 1, !nosanitize !45
  br i1 %775, label %776, label %777, !prof !46, !nosanitize !45

776:                                              ; preds = %771
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

777:                                              ; preds = %771
  %778 = extractvalue { i64, i1 } %774, 0, !nosanitize !45
  store i64 %778, ptr %746, align 8, !tbaa !57
  %779 = icmp eq i64 %778, 0
  br i1 %779, label %780, label %783

780:                                              ; preds = %777
  %781 = getelementptr inbounds nuw i8, ptr %745, i64 16
  %782 = load ptr, ptr %781, align 8, !tbaa !40
  store ptr %782, ptr %755, align 8, !tbaa !58
  br label %783

783:                                              ; preds = %780, %777, %744
  %784 = load i64, ptr %52, align 8, !tbaa !57
  %785 = icmp eq i64 %784, 0
  br i1 %785, label %787, label %786

786:                                              ; preds = %783
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1204

787:                                              ; preds = %783, %726
  %788 = phi i64 [ %728, %726 ], [ 0, %783 ]
  %789 = phi i64 [ %727, %726 ], [ 0, %783 ]
  %790 = load i64, ptr %725, align 8, !tbaa !118
  %791 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %790, i64 1), !nosanitize !45
  %792 = extractvalue { i64, i1 } %791, 1, !nosanitize !45
  br i1 %792, label %793, label %794, !prof !46, !nosanitize !45

793:                                              ; preds = %787
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

794:                                              ; preds = %787
  %795 = extractvalue { i64, i1 } %791, 0, !nosanitize !45
  %796 = load ptr, ptr %714, align 8, !tbaa !100
  %797 = getelementptr inbounds nuw i8, ptr %796, i64 40
  %798 = load ptr, ptr %797, align 8, !tbaa !111
  store i64 %795, ptr %725, align 8, !tbaa !118
  %799 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %788, i64 1), !nosanitize !45
  %800 = extractvalue { i64, i1 } %799, 1, !nosanitize !45
  br i1 %800, label %801, label %802, !prof !46, !nosanitize !45

801:                                              ; preds = %794
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

802:                                              ; preds = %794
  %803 = extractvalue { i64, i1 } %799, 0, !nosanitize !45
  %804 = load ptr, ptr %722, align 8, !tbaa !40
  %805 = getelementptr inbounds nuw i8, ptr %798, i64 %790
  %806 = load i8, ptr %805, align 1, !tbaa !8
  store i64 %803, ptr %52, align 8, !tbaa !57
  %807 = getelementptr inbounds nuw i8, ptr %804, i64 %788
  store i8 %806, ptr %807, align 1, !tbaa !8
  %808 = icmp eq i8 %806, 0
  br i1 %808, label %809, label %726, !llvm.loop !122

809:                                              ; preds = %802
  %810 = load ptr, ptr %714, align 8, !tbaa !100
  %811 = getelementptr inbounds nuw i8, ptr %810, i64 68
  %812 = load i32, ptr %811, align 4, !tbaa !114
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %823, label %814

814:                                              ; preds = %809
  %815 = load i64, ptr %52, align 8, !tbaa !57
  %816 = icmp ugt i64 %815, %789
  br i1 %816, label %817, label %823

817:                                              ; preds = %814
  %818 = sub nuw i64 %815, %789
  %819 = load ptr, ptr %722, align 8, !tbaa !40
  %820 = getelementptr inbounds nuw i8, ptr %819, i64 %789
  %821 = load i64, ptr %723, align 8, !tbaa !59
  %822 = tail call i64 @crc32_z(i64 noundef %821, ptr noundef %820, i64 noundef %818) #10
  store i64 %822, ptr %723, align 8, !tbaa !59
  br label %823

823:                                              ; preds = %817, %814, %809
  store i64 0, ptr %725, align 8, !tbaa !118
  br label %824

824:                                              ; preds = %823, %713
  store i32 91, ptr %20, align 8, !tbaa !29
  br label %825

825:                                              ; preds = %824, %503
  %826 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %827 = load ptr, ptr %826, align 8, !tbaa !100
  %828 = getelementptr inbounds nuw i8, ptr %827, i64 56
  %829 = load ptr, ptr %828, align 8, !tbaa !109
  %830 = icmp eq ptr %829, null
  br i1 %830, label %935, label %831

831:                                              ; preds = %825
  %832 = load i64, ptr %52, align 8, !tbaa !57
  %833 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %834 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %835 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %836 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %837 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %838

838:                                              ; preds = %914, %831
  %839 = phi i64 [ %832, %831 ], [ %901, %914 ]
  %840 = load i64, ptr %52, align 8, !tbaa !57
  %841 = load i64, ptr %833, align 8, !tbaa !41
  %842 = icmp eq i64 %840, %841
  br i1 %842, label %843, label %899

843:                                              ; preds = %838
  %844 = load ptr, ptr %826, align 8, !tbaa !100
  %845 = getelementptr inbounds nuw i8, ptr %844, i64 68
  %846 = load i32, ptr %845, align 4, !tbaa !114
  %847 = icmp ne i32 %846, 0
  %848 = icmp ugt i64 %840, %839
  %849 = select i1 %847, i1 %848, i1 false
  br i1 %849, label %850, label %856

850:                                              ; preds = %843
  %851 = sub nuw i64 %840, %839
  %852 = load ptr, ptr %834, align 8, !tbaa !40
  %853 = getelementptr inbounds nuw i8, ptr %852, i64 %839
  %854 = load i64, ptr %835, align 8, !tbaa !59
  %855 = tail call i64 @crc32_z(i64 noundef %854, ptr noundef %853, i64 noundef %851) #10
  store i64 %855, ptr %835, align 8, !tbaa !59
  br label %856

856:                                              ; preds = %850, %843
  %857 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %857) #10
  %858 = getelementptr inbounds nuw i8, ptr %857, i64 40
  %859 = load i64, ptr %858, align 8, !tbaa !57
  %860 = load i32, ptr %43, align 8, !tbaa !107
  %861 = zext i32 %860 to i64
  %862 = tail call i64 @llvm.umin.i64(i64 %859, i64 %861)
  %863 = trunc nuw i64 %862 to i32
  %864 = icmp eq i64 %862, 0
  br i1 %864, label %895, label %865

865:                                              ; preds = %856
  %866 = load ptr, ptr %25, align 8, !tbaa !106
  %867 = getelementptr inbounds nuw i8, ptr %857, i64 32
  %868 = load ptr, ptr %867, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %866, ptr align 1 %868, i64 %862, i1 false)
  %869 = load ptr, ptr %25, align 8, !tbaa !106
  %870 = getelementptr inbounds nuw i8, ptr %869, i64 %862
  store ptr %870, ptr %25, align 8, !tbaa !106
  %871 = load ptr, ptr %867, align 8, !tbaa !58
  %872 = getelementptr inbounds nuw i8, ptr %871, i64 %862
  store ptr %872, ptr %867, align 8, !tbaa !58
  %873 = load i64, ptr %836, align 8, !tbaa !108
  %874 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %873, i64 %862), !nosanitize !45
  %875 = extractvalue { i64, i1 } %874, 1, !nosanitize !45
  br i1 %875, label %876, label %877, !prof !46, !nosanitize !45

876:                                              ; preds = %865
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

877:                                              ; preds = %865
  %878 = extractvalue { i64, i1 } %874, 0, !nosanitize !45
  store i64 %878, ptr %836, align 8, !tbaa !108
  %879 = load i32, ptr %43, align 8, !tbaa !107
  %880 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %879, i32 %863), !nosanitize !45
  %881 = extractvalue { i32, i1 } %880, 1, !nosanitize !45
  br i1 %881, label %882, label %883, !prof !46, !nosanitize !45

882:                                              ; preds = %877
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

883:                                              ; preds = %877
  %884 = extractvalue { i32, i1 } %880, 0, !nosanitize !45
  store i32 %884, ptr %43, align 8, !tbaa !107
  %885 = load i64, ptr %858, align 8, !tbaa !57
  %886 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %885, i64 %862), !nosanitize !45
  %887 = extractvalue { i64, i1 } %886, 1, !nosanitize !45
  br i1 %887, label %888, label %889, !prof !46, !nosanitize !45

888:                                              ; preds = %883
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

889:                                              ; preds = %883
  %890 = extractvalue { i64, i1 } %886, 0, !nosanitize !45
  store i64 %890, ptr %858, align 8, !tbaa !57
  %891 = icmp eq i64 %890, 0
  br i1 %891, label %892, label %895

892:                                              ; preds = %889
  %893 = getelementptr inbounds nuw i8, ptr %857, i64 16
  %894 = load ptr, ptr %893, align 8, !tbaa !40
  store ptr %894, ptr %867, align 8, !tbaa !58
  br label %895

895:                                              ; preds = %892, %889, %856
  %896 = load i64, ptr %52, align 8, !tbaa !57
  %897 = icmp eq i64 %896, 0
  br i1 %897, label %899, label %898

898:                                              ; preds = %895
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1204

899:                                              ; preds = %895, %838
  %900 = phi i64 [ %840, %838 ], [ 0, %895 ]
  %901 = phi i64 [ %839, %838 ], [ 0, %895 ]
  %902 = load i64, ptr %837, align 8, !tbaa !118
  %903 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %902, i64 1), !nosanitize !45
  %904 = extractvalue { i64, i1 } %903, 1, !nosanitize !45
  br i1 %904, label %905, label %906, !prof !46, !nosanitize !45

905:                                              ; preds = %899
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

906:                                              ; preds = %899
  %907 = extractvalue { i64, i1 } %903, 0, !nosanitize !45
  %908 = load ptr, ptr %826, align 8, !tbaa !100
  %909 = getelementptr inbounds nuw i8, ptr %908, i64 56
  %910 = load ptr, ptr %909, align 8, !tbaa !109
  store i64 %907, ptr %837, align 8, !tbaa !118
  %911 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %900, i64 1), !nosanitize !45
  %912 = extractvalue { i64, i1 } %911, 1, !nosanitize !45
  br i1 %912, label %913, label %914, !prof !46, !nosanitize !45

913:                                              ; preds = %906
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

914:                                              ; preds = %906
  %915 = extractvalue { i64, i1 } %911, 0, !nosanitize !45
  %916 = load ptr, ptr %834, align 8, !tbaa !40
  %917 = getelementptr inbounds nuw i8, ptr %910, i64 %902
  %918 = load i8, ptr %917, align 1, !tbaa !8
  store i64 %915, ptr %52, align 8, !tbaa !57
  %919 = getelementptr inbounds nuw i8, ptr %916, i64 %900
  store i8 %918, ptr %919, align 1, !tbaa !8
  %920 = icmp eq i8 %918, 0
  br i1 %920, label %921, label %838, !llvm.loop !123

921:                                              ; preds = %914
  %922 = load ptr, ptr %826, align 8, !tbaa !100
  %923 = getelementptr inbounds nuw i8, ptr %922, i64 68
  %924 = load i32, ptr %923, align 4, !tbaa !114
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %935, label %926

926:                                              ; preds = %921
  %927 = load i64, ptr %52, align 8, !tbaa !57
  %928 = icmp ugt i64 %927, %901
  br i1 %928, label %929, label %935

929:                                              ; preds = %926
  %930 = sub nuw i64 %927, %901
  %931 = load ptr, ptr %834, align 8, !tbaa !40
  %932 = getelementptr inbounds nuw i8, ptr %931, i64 %901
  %933 = load i64, ptr %835, align 8, !tbaa !59
  %934 = tail call i64 @crc32_z(i64 noundef %933, ptr noundef %932, i64 noundef %930) #10
  store i64 %934, ptr %835, align 8, !tbaa !59
  br label %935

935:                                              ; preds = %929, %926, %921, %825
  store i32 103, ptr %20, align 8, !tbaa !29
  br label %936

936:                                              ; preds = %935, %503
  %937 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %938 = load ptr, ptr %937, align 8, !tbaa !100
  %939 = getelementptr inbounds nuw i8, ptr %938, i64 68
  %940 = load i32, ptr %939, align 4, !tbaa !114
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %977, label %942

942:                                              ; preds = %936
  %943 = load i64, ptr %52, align 8, !tbaa !57
  %944 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %943, i64 2), !nosanitize !45
  %945 = extractvalue { i64, i1 } %944, 1, !nosanitize !45
  br i1 %945, label %946, label %947, !prof !46, !nosanitize !45

946:                                              ; preds = %942
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

947:                                              ; preds = %942
  %948 = extractvalue { i64, i1 } %944, 0, !nosanitize !45
  %949 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %950 = load i64, ptr %949, align 8, !tbaa !41
  %951 = icmp ugt i64 %948, %950
  br i1 %951, label %952, label %956

952:                                              ; preds = %947
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %953 = load i64, ptr %52, align 8, !tbaa !57
  %954 = icmp eq i64 %953, 0
  br i1 %954, label %956, label %955

955:                                              ; preds = %952
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1204

956:                                              ; preds = %952, %947
  %957 = phi i64 [ 0, %952 ], [ %943, %947 ]
  %958 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %959 = add nuw i64 %957, 1
  %960 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %961 = load ptr, ptr %960, align 8, !tbaa !40
  %962 = load i64, ptr %958, align 8, !tbaa !59
  %963 = trunc i64 %962 to i8
  store i64 %959, ptr %52, align 8, !tbaa !57
  %964 = getelementptr inbounds nuw i8, ptr %961, i64 %957
  store i8 %963, ptr %964, align 1, !tbaa !8
  %965 = load i64, ptr %52, align 8, !tbaa !57
  %966 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %965, i64 1), !nosanitize !45
  %967 = extractvalue { i64, i1 } %966, 1, !nosanitize !45
  br i1 %967, label %968, label %969, !prof !46, !nosanitize !45

968:                                              ; preds = %956
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

969:                                              ; preds = %956
  %970 = extractvalue { i64, i1 } %966, 0, !nosanitize !45
  %971 = load ptr, ptr %960, align 8, !tbaa !40
  %972 = load i64, ptr %958, align 8, !tbaa !59
  %973 = lshr i64 %972, 8
  %974 = trunc i64 %973 to i8
  store i64 %970, ptr %52, align 8, !tbaa !57
  %975 = getelementptr inbounds nuw i8, ptr %971, i64 %965
  store i8 %974, ptr %975, align 1, !tbaa !8
  %976 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  store i64 %976, ptr %958, align 8, !tbaa !59
  br label %977

977:                                              ; preds = %969, %936
  store i32 113, ptr %20, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %978 = load i64, ptr %52, align 8, !tbaa !57
  %979 = icmp eq i64 %978, 0
  br i1 %979, label %981, label %980

980:                                              ; preds = %977
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1204

981:                                              ; preds = %977, %503, %136
  %982 = load i32, ptr %29, align 8, !tbaa !81
  %983 = icmp eq i32 %982, 0
  br i1 %983, label %984, label %993

984:                                              ; preds = %981, %126
  %985 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %986 = load i32, ptr %985, align 4, !tbaa !75
  %987 = icmp eq i32 %986, 0
  br i1 %987, label %988, label %993

988:                                              ; preds = %984
  %989 = icmp eq i32 %1, 0
  br i1 %989, label %1204, label %990

990:                                              ; preds = %988
  %991 = load i32, ptr %20, align 8, !tbaa !29
  %992 = icmp eq i32 %991, 666
  br i1 %992, label %1055, label %993

993:                                              ; preds = %990, %984, %981
  %994 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %995 = load i32, ptr %994, align 4, !tbaa !48
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %997, label %999

997:                                              ; preds = %993
  %998 = tail call i32 @deflate_stored(ptr noundef nonnull %14, i32 noundef %1)
  br label %1012

999:                                              ; preds = %993
  %1000 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %1001 = load i32, ptr %1000, align 8, !tbaa !49
  switch i32 %1001, label %1006 [
    i32 2, label %1002
    i32 3, label %1004
  ]

1002:                                             ; preds = %999
  %1003 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %14, i32 noundef %1)
  br label %1012

1004:                                             ; preds = %999
  %1005 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %14, i32 noundef %1)
  br label %1012

1006:                                             ; preds = %999
  %1007 = sext i32 %995 to i64
  %1008 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %1007
  %1009 = getelementptr inbounds nuw i8, ptr %1008, i64 8
  %1010 = load ptr, ptr %1009, align 8, !tbaa !105
  %1011 = tail call i32 %1010(ptr noundef nonnull %14, i32 noundef %1) #10
  br label %1012

1012:                                             ; preds = %1006, %1004, %1002, %997
  %1013 = phi i32 [ %998, %997 ], [ %1003, %1002 ], [ %1005, %1004 ], [ %1011, %1006 ]
  %1014 = and i32 %1013, -2
  %1015 = icmp eq i32 %1014, 2
  br i1 %1015, label %1016, label %1017

1016:                                             ; preds = %1012
  store i32 666, ptr %20, align 8, !tbaa !29
  br label %1017

1017:                                             ; preds = %1016, %1012
  %1018 = and i32 %1013, -3
  %1019 = icmp eq i32 %1018, 0
  br i1 %1019, label %1020, label %1024

1020:                                             ; preds = %1017
  %1021 = load i32, ptr %43, align 8, !tbaa !107
  %1022 = icmp eq i32 %1021, 0
  br i1 %1022, label %1023, label %1204

1023:                                             ; preds = %1020
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1204

1024:                                             ; preds = %1017
  %1025 = icmp eq i32 %1013, 1
  br i1 %1025, label %1026, label %1055

1026:                                             ; preds = %1024
  switch i32 %1, label %1028 [
    i32 1, label %1027
    i32 5, label %1051
  ]

1027:                                             ; preds = %1026
  tail call void @_tr_align(ptr noundef nonnull %14) #10
  br label %1051

1028:                                             ; preds = %1026
  tail call void @_tr_stored_block(ptr noundef nonnull %14, ptr noundef null, i64 noundef 0, i32 noundef 0) #10
  %1029 = icmp eq i32 %1, 3
  br i1 %1029, label %1030, label %1051

1030:                                             ; preds = %1028
  %1031 = getelementptr inbounds nuw i8, ptr %14, i64 132
  %1032 = load i32, ptr %1031, align 4, !tbaa !36
  %1033 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1032, i32 1), !nosanitize !45
  %1034 = extractvalue { i32, i1 } %1033, 1, !nosanitize !45
  br i1 %1034, label %1035, label %1036, !prof !46, !nosanitize !45

1035:                                             ; preds = %1030
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

1036:                                             ; preds = %1030
  %1037 = extractvalue { i32, i1 } %1033, 0, !nosanitize !45
  %1038 = getelementptr inbounds nuw i8, ptr %14, i64 120
  %1039 = load ptr, ptr %1038, align 8, !tbaa !37
  %1040 = zext i32 %1037 to i64
  %1041 = getelementptr inbounds nuw [2 x i8], ptr %1039, i64 %1040
  store i16 0, ptr %1041, align 2, !tbaa !62
  %1042 = shl nuw nsw i64 %1040, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1039, i8 0, i64 %1042, i1 false)
  %1043 = getelementptr inbounds nuw i8, ptr %14, i64 5960
  store i32 0, ptr %1043, align 8, !tbaa !63
  %1044 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %1045 = load i32, ptr %1044, align 4, !tbaa !75
  %1046 = icmp eq i32 %1045, 0
  br i1 %1046, label %1047, label %1051

1047:                                             ; preds = %1036
  %1048 = getelementptr inbounds nuw i8, ptr %14, i64 172
  store i32 0, ptr %1048, align 4, !tbaa !73
  %1049 = getelementptr inbounds nuw i8, ptr %14, i64 152
  store i64 0, ptr %1049, align 8, !tbaa !74
  %1050 = getelementptr inbounds nuw i8, ptr %14, i64 5932
  store i32 0, ptr %1050, align 4, !tbaa !76
  br label %1051

1051:                                             ; preds = %1047, %1036, %1028, %1027, %1026
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1052 = load i32, ptr %43, align 8, !tbaa !107
  %1053 = icmp eq i32 %1052, 0
  br i1 %1053, label %1054, label %1055

1054:                                             ; preds = %1051
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1204

1055:                                             ; preds = %1051, %1024, %990
  br i1 %37, label %1204, label %1056

1056:                                             ; preds = %1055
  %1057 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %1058 = load i32, ptr %1057, align 8, !tbaa !30
  %1059 = icmp slt i32 %1058, 1
  br i1 %1059, label %1204, label %1060

1060:                                             ; preds = %1056
  %1061 = icmp eq i32 %1058, 2
  %1062 = getelementptr inbounds nuw i8, ptr %0, i64 96
  br i1 %1061, label %1063, label %1152

1063:                                             ; preds = %1060
  %1064 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1065 = load i64, ptr %52, align 8, !tbaa !57
  %1066 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1065, i64 1), !nosanitize !45
  %1067 = extractvalue { i64, i1 } %1066, 1, !nosanitize !45
  br i1 %1067, label %1068, label %1069, !prof !46, !nosanitize !45

1068:                                             ; preds = %1063
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1069:                                             ; preds = %1063
  %1070 = extractvalue { i64, i1 } %1066, 0, !nosanitize !45
  %1071 = load ptr, ptr %1064, align 8, !tbaa !40
  %1072 = load i64, ptr %1062, align 8, !tbaa !59
  %1073 = trunc i64 %1072 to i8
  store i64 %1070, ptr %52, align 8, !tbaa !57
  %1074 = getelementptr inbounds nuw i8, ptr %1071, i64 %1065
  store i8 %1073, ptr %1074, align 1, !tbaa !8
  %1075 = load i64, ptr %52, align 8, !tbaa !57
  %1076 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1075, i64 1), !nosanitize !45
  %1077 = extractvalue { i64, i1 } %1076, 1, !nosanitize !45
  br i1 %1077, label %1078, label %1079, !prof !46, !nosanitize !45

1078:                                             ; preds = %1069
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1079:                                             ; preds = %1069
  %1080 = extractvalue { i64, i1 } %1076, 0, !nosanitize !45
  %1081 = load ptr, ptr %1064, align 8, !tbaa !40
  %1082 = load i64, ptr %1062, align 8, !tbaa !59
  %1083 = lshr i64 %1082, 8
  %1084 = trunc i64 %1083 to i8
  store i64 %1080, ptr %52, align 8, !tbaa !57
  %1085 = getelementptr inbounds nuw i8, ptr %1081, i64 %1075
  store i8 %1084, ptr %1085, align 1, !tbaa !8
  %1086 = load i64, ptr %52, align 8, !tbaa !57
  %1087 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1086, i64 1), !nosanitize !45
  %1088 = extractvalue { i64, i1 } %1087, 1, !nosanitize !45
  br i1 %1088, label %1089, label %1090, !prof !46, !nosanitize !45

1089:                                             ; preds = %1079
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1090:                                             ; preds = %1079
  %1091 = extractvalue { i64, i1 } %1087, 0, !nosanitize !45
  %1092 = load ptr, ptr %1064, align 8, !tbaa !40
  %1093 = load i64, ptr %1062, align 8, !tbaa !59
  %1094 = lshr i64 %1093, 16
  %1095 = trunc i64 %1094 to i8
  store i64 %1091, ptr %52, align 8, !tbaa !57
  %1096 = getelementptr inbounds nuw i8, ptr %1092, i64 %1086
  store i8 %1095, ptr %1096, align 1, !tbaa !8
  %1097 = load i64, ptr %52, align 8, !tbaa !57
  %1098 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1097, i64 1), !nosanitize !45
  %1099 = extractvalue { i64, i1 } %1098, 1, !nosanitize !45
  br i1 %1099, label %1100, label %1101, !prof !46, !nosanitize !45

1100:                                             ; preds = %1090
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1101:                                             ; preds = %1090
  %1102 = extractvalue { i64, i1 } %1098, 0, !nosanitize !45
  %1103 = load ptr, ptr %1064, align 8, !tbaa !40
  %1104 = load i64, ptr %1062, align 8, !tbaa !59
  %1105 = lshr i64 %1104, 24
  %1106 = trunc i64 %1105 to i8
  store i64 %1102, ptr %52, align 8, !tbaa !57
  %1107 = getelementptr inbounds nuw i8, ptr %1103, i64 %1097
  store i8 %1106, ptr %1107, align 1, !tbaa !8
  %1108 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %1109 = load i64, ptr %52, align 8, !tbaa !57
  %1110 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1109, i64 1), !nosanitize !45
  %1111 = extractvalue { i64, i1 } %1110, 1, !nosanitize !45
  br i1 %1111, label %1112, label %1113, !prof !46, !nosanitize !45

1112:                                             ; preds = %1101
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1113:                                             ; preds = %1101
  %1114 = extractvalue { i64, i1 } %1110, 0, !nosanitize !45
  %1115 = load ptr, ptr %1064, align 8, !tbaa !40
  %1116 = load i64, ptr %1108, align 8, !tbaa !55
  %1117 = trunc i64 %1116 to i8
  store i64 %1114, ptr %52, align 8, !tbaa !57
  %1118 = getelementptr inbounds nuw i8, ptr %1115, i64 %1109
  store i8 %1117, ptr %1118, align 1, !tbaa !8
  %1119 = load i64, ptr %52, align 8, !tbaa !57
  %1120 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1119, i64 1), !nosanitize !45
  %1121 = extractvalue { i64, i1 } %1120, 1, !nosanitize !45
  br i1 %1121, label %1122, label %1123, !prof !46, !nosanitize !45

1122:                                             ; preds = %1113
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1123:                                             ; preds = %1113
  %1124 = extractvalue { i64, i1 } %1120, 0, !nosanitize !45
  %1125 = load ptr, ptr %1064, align 8, !tbaa !40
  %1126 = load i64, ptr %1108, align 8, !tbaa !55
  %1127 = lshr i64 %1126, 8
  %1128 = trunc i64 %1127 to i8
  store i64 %1124, ptr %52, align 8, !tbaa !57
  %1129 = getelementptr inbounds nuw i8, ptr %1125, i64 %1119
  store i8 %1128, ptr %1129, align 1, !tbaa !8
  %1130 = load i64, ptr %52, align 8, !tbaa !57
  %1131 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1130, i64 1), !nosanitize !45
  %1132 = extractvalue { i64, i1 } %1131, 1, !nosanitize !45
  br i1 %1132, label %1133, label %1134, !prof !46, !nosanitize !45

1133:                                             ; preds = %1123
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1134:                                             ; preds = %1123
  %1135 = extractvalue { i64, i1 } %1131, 0, !nosanitize !45
  %1136 = load ptr, ptr %1064, align 8, !tbaa !40
  %1137 = load i64, ptr %1108, align 8, !tbaa !55
  %1138 = lshr i64 %1137, 16
  %1139 = trunc i64 %1138 to i8
  store i64 %1135, ptr %52, align 8, !tbaa !57
  %1140 = getelementptr inbounds nuw i8, ptr %1136, i64 %1130
  store i8 %1139, ptr %1140, align 1, !tbaa !8
  %1141 = load i64, ptr %52, align 8, !tbaa !57
  %1142 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1141, i64 1), !nosanitize !45
  %1143 = extractvalue { i64, i1 } %1142, 1, !nosanitize !45
  br i1 %1143, label %1144, label %1145, !prof !46, !nosanitize !45

1144:                                             ; preds = %1134
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1145:                                             ; preds = %1134
  %1146 = extractvalue { i64, i1 } %1142, 0, !nosanitize !45
  %1147 = load ptr, ptr %1064, align 8, !tbaa !40
  %1148 = load i64, ptr %1108, align 8, !tbaa !55
  %1149 = lshr i64 %1148, 24
  %1150 = trunc i64 %1149 to i8
  store i64 %1146, ptr %52, align 8, !tbaa !57
  %1151 = getelementptr inbounds nuw i8, ptr %1147, i64 %1141
  store i8 %1150, ptr %1151, align 1, !tbaa !8
  br label %1195

1152:                                             ; preds = %1060
  %1153 = load i64, ptr %1062, align 8, !tbaa !59
  %1154 = lshr i64 %1153, 16
  %1155 = load i64, ptr %52, align 8, !tbaa !57
  %1156 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1155, i64 1), !nosanitize !45
  %1157 = extractvalue { i64, i1 } %1156, 1, !nosanitize !45
  br i1 %1157, label %1158, label %1159, !prof !46, !nosanitize !45

1158:                                             ; preds = %1152
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1159:                                             ; preds = %1152
  %1160 = extractvalue { i64, i1 } %1156, 0, !nosanitize !45
  %1161 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1162 = load ptr, ptr %1161, align 8, !tbaa !40
  %1163 = lshr i64 %1153, 24
  %1164 = trunc i64 %1163 to i8
  store i64 %1160, ptr %52, align 8, !tbaa !57
  %1165 = getelementptr inbounds nuw i8, ptr %1162, i64 %1155
  store i8 %1164, ptr %1165, align 1, !tbaa !8
  %1166 = load i64, ptr %52, align 8, !tbaa !57
  %1167 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1166, i64 1), !nosanitize !45
  %1168 = extractvalue { i64, i1 } %1167, 1, !nosanitize !45
  br i1 %1168, label %1169, label %1170, !prof !46, !nosanitize !45

1169:                                             ; preds = %1159
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1170:                                             ; preds = %1159
  %1171 = extractvalue { i64, i1 } %1167, 0, !nosanitize !45
  %1172 = load ptr, ptr %1161, align 8, !tbaa !40
  %1173 = trunc i64 %1154 to i8
  store i64 %1171, ptr %52, align 8, !tbaa !57
  %1174 = getelementptr inbounds nuw i8, ptr %1172, i64 %1166
  store i8 %1173, ptr %1174, align 1, !tbaa !8
  %1175 = load i64, ptr %1062, align 8, !tbaa !59
  %1176 = trunc i64 %1175 to i8
  %1177 = load i64, ptr %52, align 8, !tbaa !57
  %1178 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1177, i64 1), !nosanitize !45
  %1179 = extractvalue { i64, i1 } %1178, 1, !nosanitize !45
  br i1 %1179, label %1180, label %1181, !prof !46, !nosanitize !45

1180:                                             ; preds = %1170
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1181:                                             ; preds = %1170
  %1182 = extractvalue { i64, i1 } %1178, 0, !nosanitize !45
  %1183 = load ptr, ptr %1161, align 8, !tbaa !40
  %1184 = lshr i64 %1175, 8
  %1185 = trunc i64 %1184 to i8
  store i64 %1182, ptr %52, align 8, !tbaa !57
  %1186 = getelementptr inbounds nuw i8, ptr %1183, i64 %1177
  store i8 %1185, ptr %1186, align 1, !tbaa !8
  %1187 = load i64, ptr %52, align 8, !tbaa !57
  %1188 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1187, i64 1), !nosanitize !45
  %1189 = extractvalue { i64, i1 } %1188, 1, !nosanitize !45
  br i1 %1189, label %1190, label %1191, !prof !46, !nosanitize !45

1190:                                             ; preds = %1181
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1191:                                             ; preds = %1181
  %1192 = extractvalue { i64, i1 } %1188, 0, !nosanitize !45
  %1193 = load ptr, ptr %1161, align 8, !tbaa !40
  store i64 %1192, ptr %52, align 8, !tbaa !57
  %1194 = getelementptr inbounds nuw i8, ptr %1193, i64 %1187
  store i8 %1176, ptr %1194, align 1, !tbaa !8
  br label %1195

1195:                                             ; preds = %1191, %1145
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1196 = load i32, ptr %1057, align 8, !tbaa !30
  %1197 = icmp sgt i32 %1196, 0
  br i1 %1197, label %1198, label %1200

1198:                                             ; preds = %1195
  %1199 = sub nsw i32 0, %1196
  store i32 %1199, ptr %1057, align 8, !tbaa !30
  br label %1200

1200:                                             ; preds = %1198, %1195
  %1201 = load i64, ptr %52, align 8, !tbaa !57
  %1202 = icmp eq i64 %1201, 0
  %1203 = zext i1 %1202 to i32
  br label %1204

1204:                                             ; preds = %1200, %1056, %1055, %1054, %1023, %1020, %988, %980, %955, %898, %786, %675, %346, %240, %129, %120, %99, %46, %39, %22, %19, %16, %12, %8, %4, %2
  %1205 = phi i32 [ -5, %120 ], [ -2, %39 ], [ -5, %46 ], [ 0, %99 ], [ -5, %129 ], [ 0, %346 ], [ 0, %955 ], [ 0, %980 ], [ -2, %22 ], [ 0, %1055 ], [ %1203, %1200 ], [ 1, %1056 ], [ 0, %898 ], [ 0, %786 ], [ 0, %675 ], [ 0, %240 ], [ 0, %1023 ], [ 0, %1054 ], [ 0, %1020 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ 0, %988 ]
  ret i32 %1205
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #2

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

34:                                               ; preds = %32, %11
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

43:                                               ; preds = %43, %34
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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

83:                                               ; preds = %81, %56
  %84 = phi ptr [ %60, %56 ], [ %65, %81 ]
  %85 = phi i32 [ %3, %56 ], [ %67, %81 ]
  br label %86

86:                                               ; preds = %86, %83
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

30:                                               ; preds = %25, %22, %19, %15, %11, %7, %5
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

7:                                                ; preds = %2
  %8 = extractvalue { i64, i1 } %4, 0, !nosanitize !45
  %9 = lshr i64 %1, 8
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %9), !nosanitize !45
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !45
  br i1 %11, label %12, label %13, !prof !46, !nosanitize !45

12:                                               ; preds = %7
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

13:                                               ; preds = %7
  %14 = extractvalue { i64, i1 } %10, 0, !nosanitize !45
  %15 = lshr i64 %1, 9
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 %15), !nosanitize !45
  %17 = extractvalue { i64, i1 } %16, 1, !nosanitize !45
  br i1 %17, label %18, label %19, !prof !46, !nosanitize !45

18:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

19:                                               ; preds = %13
  %20 = extractvalue { i64, i1 } %16, 0, !nosanitize !45
  %21 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %20, i64 4), !nosanitize !45
  %22 = extractvalue { i64, i1 } %21, 1, !nosanitize !45
  br i1 %22, label %23, label %24, !prof !46, !nosanitize !45

23:                                               ; preds = %19
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

32:                                               ; preds = %24
  %33 = extractvalue { i64, i1 } %29, 0, !nosanitize !45
  %34 = lshr i64 %1, 7
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %34), !nosanitize !45
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !45
  br i1 %36, label %37, label %38, !prof !46, !nosanitize !45

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !45
  %40 = lshr i64 %1, 11
  %41 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %39, i64 %40), !nosanitize !45
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !45
  br i1 %42, label %43, label %44, !prof !46, !nosanitize !45

43:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

44:                                               ; preds = %38
  %45 = extractvalue { i64, i1 } %41, 0, !nosanitize !45
  %46 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %45, i64 7), !nosanitize !45
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !45
  br i1 %47, label %48, label %49, !prof !46, !nosanitize !45

48:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  br i1 %76, label %77, label %216, !prof !46, !nosanitize !45

77:                                               ; preds = %72
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

78:                                               ; preds = %69, %69, %69, %69, %69, %69, %69, %69
  %79 = getelementptr inbounds nuw i8, ptr %64, i64 48
  %80 = load i32, ptr %79, align 8, !tbaa !30
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %80), !nosanitize !45
  %84 = extractvalue { i32, i1 } %83, 0, !nosanitize !45
  %85 = extractvalue { i32, i1 } %83, 1, !nosanitize !45
  br i1 %85, label %86, label %87, !prof !46, !nosanitize !45

86:                                               ; preds = %82
  tail call void @llvm.ubsantrap(i8 13) #12, !nosanitize !45
  unreachable, !nosanitize !45

87:                                               ; preds = %82, %78
  %88 = phi i32 [ %84, %82 ], [ %80, %78 ]
  switch i32 %88, label %161 [
    i32 0, label %162
    i32 1, label %89
    i32 2, label %94
  ]

89:                                               ; preds = %87
  %90 = getelementptr inbounds nuw i8, ptr %64, i64 172
  %91 = load i32, ptr %90, align 4, !tbaa !73
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i64 6, i64 10
  br label %162

94:                                               ; preds = %87
  %95 = getelementptr inbounds nuw i8, ptr %64, i64 56
  %96 = load ptr, ptr %95, align 8, !tbaa !100
  %97 = icmp eq ptr %96, null
  br i1 %97, label %162, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds nuw i8, ptr %96, i64 24
  %100 = load ptr, ptr %99, align 8, !tbaa !112
  %101 = icmp eq ptr %100, null
  br i1 %101, label %112, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds nuw i8, ptr %96, i64 32
  %104 = load i32, ptr %103, align 8, !tbaa !117
  %105 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %104, i32 2), !nosanitize !45
  %106 = extractvalue { i32, i1 } %105, 1, !nosanitize !45
  br i1 %106, label %107, label %108, !prof !46, !nosanitize !45

107:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

108:                                              ; preds = %102
  %109 = extractvalue { i32, i1 } %105, 0, !nosanitize !45
  %110 = zext i32 %109 to i64
  %111 = add nuw nsw i64 %110, 18
  br label %112

112:                                              ; preds = %108, %98
  %113 = phi i64 [ %111, %108 ], [ 18, %98 ]
  %114 = getelementptr inbounds nuw i8, ptr %96, i64 40
  %115 = load ptr, ptr %114, align 8, !tbaa !111
  %116 = icmp eq ptr %115, null
  br i1 %116, label %131, label %117

117:                                              ; preds = %112
  %118 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %113, i64 1), !nosanitize !45
  %119 = extractvalue { i64, i1 } %118, 1, !nosanitize !45
  br i1 %119, label %124, label %125, !prof !130, !nosanitize !45

120:                                              ; preds = %125
  %121 = getelementptr inbounds nuw i8, ptr %127, i64 1
  %122 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %128, i64 1), !nosanitize !45
  %123 = extractvalue { i64, i1 } %122, 1, !nosanitize !45
  br i1 %123, label %124, label %125, !prof !131, !llvm.loop !132, !nosanitize !45

124:                                              ; preds = %120, %117
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

125:                                              ; preds = %120, %117
  %126 = phi { i64, i1 } [ %122, %120 ], [ %118, %117 ]
  %127 = phi ptr [ %121, %120 ], [ %115, %117 ]
  %128 = extractvalue { i64, i1 } %126, 0, !nosanitize !45
  %129 = load i8, ptr %127, align 1, !tbaa !8
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %120, !llvm.loop !132

131:                                              ; preds = %125, %112
  %132 = phi i64 [ %113, %112 ], [ %128, %125 ]
  %133 = getelementptr inbounds nuw i8, ptr %96, i64 56
  %134 = load ptr, ptr %133, align 8, !tbaa !109
  %135 = icmp eq ptr %134, null
  br i1 %135, label %150, label %136

136:                                              ; preds = %131
  %137 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %132, i64 1), !nosanitize !45
  %138 = extractvalue { i64, i1 } %137, 1, !nosanitize !45
  br i1 %138, label %143, label %144, !prof !130, !nosanitize !45

139:                                              ; preds = %144
  %140 = getelementptr inbounds nuw i8, ptr %146, i64 1
  %141 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %147, i64 1), !nosanitize !45
  %142 = extractvalue { i64, i1 } %141, 1, !nosanitize !45
  br i1 %142, label %143, label %144, !prof !131, !llvm.loop !133, !nosanitize !45

143:                                              ; preds = %139, %136
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

144:                                              ; preds = %139, %136
  %145 = phi { i64, i1 } [ %141, %139 ], [ %137, %136 ]
  %146 = phi ptr [ %140, %139 ], [ %134, %136 ]
  %147 = extractvalue { i64, i1 } %145, 0, !nosanitize !45
  %148 = load i8, ptr %146, align 1, !tbaa !8
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %139, !llvm.loop !133

150:                                              ; preds = %144, %131
  %151 = phi i64 [ %132, %131 ], [ %147, %144 ]
  %152 = getelementptr inbounds nuw i8, ptr %96, i64 68
  %153 = load i32, ptr %152, align 4, !tbaa !114
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %150
  %156 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %151, i64 2), !nosanitize !45
  %157 = extractvalue { i64, i1 } %156, 1, !nosanitize !45
  br i1 %157, label %158, label %159, !prof !46, !nosanitize !45

158:                                              ; preds = %155
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

159:                                              ; preds = %155
  %160 = extractvalue { i64, i1 } %156, 0, !nosanitize !45
  br label %162

161:                                              ; preds = %87
  br label %162

162:                                              ; preds = %161, %159, %150, %94, %89, %87
  %163 = phi i64 [ 18, %161 ], [ 18, %94 ], [ %93, %89 ], [ 0, %87 ], [ %160, %159 ], [ %151, %150 ]
  %164 = getelementptr inbounds nuw i8, ptr %64, i64 84
  %165 = load i32, ptr %164, align 4, !tbaa !31
  %166 = icmp eq i32 %165, 15
  %167 = getelementptr inbounds nuw i8, ptr %64, i64 136
  %168 = load i32, ptr %167, align 8, !tbaa !51
  %169 = icmp eq i32 %168, 15
  %170 = select i1 %166, i1 %169, i1 false
  br i1 %170, label %184, label %171

171:                                              ; preds = %162
  %172 = icmp ugt i32 %165, %168
  br i1 %172, label %177, label %173

173:                                              ; preds = %171
  %174 = getelementptr inbounds nuw i8, ptr %64, i64 196
  %175 = load i32, ptr %174, align 4, !tbaa !48
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %173, %171
  br label %178

178:                                              ; preds = %177, %173
  %179 = phi i64 [ %52, %177 ], [ %27, %173 ]
  %180 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %179, i64 %163), !nosanitize !45
  %181 = extractvalue { i64, i1 } %180, 0, !nosanitize !45
  %182 = extractvalue { i64, i1 } %180, 1, !nosanitize !45
  br i1 %182, label %183, label %216, !prof !46, !nosanitize !45

183:                                              ; preds = %178
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

184:                                              ; preds = %162
  %185 = lshr i64 %1, 12
  %186 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %185), !nosanitize !45
  %187 = extractvalue { i64, i1 } %186, 1, !nosanitize !45
  br i1 %187, label %188, label %189, !prof !46, !nosanitize !45

188:                                              ; preds = %184
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

189:                                              ; preds = %184
  %190 = extractvalue { i64, i1 } %186, 0, !nosanitize !45
  %191 = lshr i64 %1, 14
  %192 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %190, i64 %191), !nosanitize !45
  %193 = extractvalue { i64, i1 } %192, 1, !nosanitize !45
  br i1 %193, label %194, label %195, !prof !46, !nosanitize !45

194:                                              ; preds = %189
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

195:                                              ; preds = %189
  %196 = extractvalue { i64, i1 } %192, 0, !nosanitize !45
  %197 = lshr i64 %1, 25
  %198 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %196, i64 %197), !nosanitize !45
  %199 = extractvalue { i64, i1 } %198, 1, !nosanitize !45
  br i1 %199, label %200, label %201, !prof !46, !nosanitize !45

200:                                              ; preds = %195
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

201:                                              ; preds = %195
  %202 = extractvalue { i64, i1 } %198, 0, !nosanitize !45
  %203 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %202, i64 13), !nosanitize !45
  %204 = extractvalue { i64, i1 } %203, 1, !nosanitize !45
  br i1 %204, label %205, label %206, !prof !46, !nosanitize !45

205:                                              ; preds = %201
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

206:                                              ; preds = %201
  %207 = extractvalue { i64, i1 } %203, 0, !nosanitize !45
  %208 = add i64 %207, -6
  %209 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %208, i64 %163), !nosanitize !45
  %210 = extractvalue { i64, i1 } %209, 1, !nosanitize !45
  br i1 %210, label %211, label %212, !prof !46, !nosanitize !45

211:                                              ; preds = %206
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

212:                                              ; preds = %206
  %213 = extractvalue { i64, i1 } %209, 0, !nosanitize !45
  %214 = icmp ult i64 %213, %1
  %215 = select i1 %214, i64 -1, i64 %213
  br label %216

216:                                              ; preds = %212, %178, %72
  %217 = phi i64 [ %215, %212 ], [ %75, %72 ], [ %181, %178 ]
  ret i64 %217
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i64 @deflateBound(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = lshr i64 %1, 3
  %4 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %3), !nosanitize !45
  %5 = extractvalue { i64, i1 } %4, 1, !nosanitize !45
  br i1 %5, label %6, label %7, !prof !46, !nosanitize !45

6:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

7:                                                ; preds = %2
  %8 = extractvalue { i64, i1 } %4, 0, !nosanitize !45
  %9 = lshr i64 %1, 8
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %9), !nosanitize !45
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !45
  br i1 %11, label %12, label %13, !prof !46, !nosanitize !45

12:                                               ; preds = %7
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

13:                                               ; preds = %7
  %14 = extractvalue { i64, i1 } %10, 0, !nosanitize !45
  %15 = lshr i64 %1, 9
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 %15), !nosanitize !45
  %17 = extractvalue { i64, i1 } %16, 1, !nosanitize !45
  br i1 %17, label %18, label %19, !prof !46, !nosanitize !45

18:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

19:                                               ; preds = %13
  %20 = extractvalue { i64, i1 } %16, 0, !nosanitize !45
  %21 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %20, i64 4), !nosanitize !45
  %22 = extractvalue { i64, i1 } %21, 1, !nosanitize !45
  br i1 %22, label %23, label %24, !prof !46, !nosanitize !45

23:                                               ; preds = %19
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

32:                                               ; preds = %24
  %33 = extractvalue { i64, i1 } %29, 0, !nosanitize !45
  %34 = lshr i64 %1, 7
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %34), !nosanitize !45
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !45
  br i1 %36, label %37, label %38, !prof !46, !nosanitize !45

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !45
  %40 = lshr i64 %1, 11
  %41 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %39, i64 %40), !nosanitize !45
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !45
  br i1 %42, label %43, label %44, !prof !46, !nosanitize !45

43:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

44:                                               ; preds = %38
  %45 = extractvalue { i64, i1 } %41, 0, !nosanitize !45
  %46 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %45, i64 7), !nosanitize !45
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !45
  br i1 %47, label %48, label %49, !prof !46, !nosanitize !45

48:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  br i1 %76, label %77, label %216, !prof !46, !nosanitize !45

77:                                               ; preds = %72
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

78:                                               ; preds = %69, %69, %69, %69, %69, %69, %69, %69
  %79 = getelementptr inbounds nuw i8, ptr %64, i64 48
  %80 = load i32, ptr %79, align 8, !tbaa !30
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %80), !nosanitize !45
  %84 = extractvalue { i32, i1 } %83, 0, !nosanitize !45
  %85 = extractvalue { i32, i1 } %83, 1, !nosanitize !45
  br i1 %85, label %86, label %87, !prof !46, !nosanitize !45

86:                                               ; preds = %82
  tail call void @llvm.ubsantrap(i8 13) #12, !nosanitize !45
  unreachable, !nosanitize !45

87:                                               ; preds = %82, %78
  %88 = phi i32 [ %84, %82 ], [ %80, %78 ]
  switch i32 %88, label %161 [
    i32 0, label %162
    i32 1, label %89
    i32 2, label %94
  ]

89:                                               ; preds = %87
  %90 = getelementptr inbounds nuw i8, ptr %64, i64 172
  %91 = load i32, ptr %90, align 4, !tbaa !73
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i64 6, i64 10
  br label %162

94:                                               ; preds = %87
  %95 = getelementptr inbounds nuw i8, ptr %64, i64 56
  %96 = load ptr, ptr %95, align 8, !tbaa !100
  %97 = icmp eq ptr %96, null
  br i1 %97, label %162, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds nuw i8, ptr %96, i64 24
  %100 = load ptr, ptr %99, align 8, !tbaa !112
  %101 = icmp eq ptr %100, null
  br i1 %101, label %112, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds nuw i8, ptr %96, i64 32
  %104 = load i32, ptr %103, align 8, !tbaa !117
  %105 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %104, i32 2), !nosanitize !45
  %106 = extractvalue { i32, i1 } %105, 1, !nosanitize !45
  br i1 %106, label %107, label %108, !prof !46, !nosanitize !45

107:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

108:                                              ; preds = %102
  %109 = extractvalue { i32, i1 } %105, 0, !nosanitize !45
  %110 = zext i32 %109 to i64
  %111 = add nuw nsw i64 %110, 18
  br label %112

112:                                              ; preds = %108, %98
  %113 = phi i64 [ %111, %108 ], [ 18, %98 ]
  %114 = getelementptr inbounds nuw i8, ptr %96, i64 40
  %115 = load ptr, ptr %114, align 8, !tbaa !111
  %116 = icmp eq ptr %115, null
  br i1 %116, label %131, label %117

117:                                              ; preds = %112
  %118 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %113, i64 1), !nosanitize !45
  %119 = extractvalue { i64, i1 } %118, 1, !nosanitize !45
  br i1 %119, label %124, label %125, !prof !130, !nosanitize !45

120:                                              ; preds = %125
  %121 = getelementptr inbounds nuw i8, ptr %127, i64 1
  %122 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %128, i64 1), !nosanitize !45
  %123 = extractvalue { i64, i1 } %122, 1, !nosanitize !45
  br i1 %123, label %124, label %125, !prof !131, !llvm.loop !132, !nosanitize !45

124:                                              ; preds = %120, %117
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

125:                                              ; preds = %120, %117
  %126 = phi { i64, i1 } [ %122, %120 ], [ %118, %117 ]
  %127 = phi ptr [ %121, %120 ], [ %115, %117 ]
  %128 = extractvalue { i64, i1 } %126, 0, !nosanitize !45
  %129 = load i8, ptr %127, align 1, !tbaa !8
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %120, !llvm.loop !132

131:                                              ; preds = %125, %112
  %132 = phi i64 [ %113, %112 ], [ %128, %125 ]
  %133 = getelementptr inbounds nuw i8, ptr %96, i64 56
  %134 = load ptr, ptr %133, align 8, !tbaa !109
  %135 = icmp eq ptr %134, null
  br i1 %135, label %150, label %136

136:                                              ; preds = %131
  %137 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %132, i64 1), !nosanitize !45
  %138 = extractvalue { i64, i1 } %137, 1, !nosanitize !45
  br i1 %138, label %143, label %144, !prof !130, !nosanitize !45

139:                                              ; preds = %144
  %140 = getelementptr inbounds nuw i8, ptr %146, i64 1
  %141 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %147, i64 1), !nosanitize !45
  %142 = extractvalue { i64, i1 } %141, 1, !nosanitize !45
  br i1 %142, label %143, label %144, !prof !131, !llvm.loop !133, !nosanitize !45

143:                                              ; preds = %139, %136
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

144:                                              ; preds = %139, %136
  %145 = phi { i64, i1 } [ %141, %139 ], [ %137, %136 ]
  %146 = phi ptr [ %140, %139 ], [ %134, %136 ]
  %147 = extractvalue { i64, i1 } %145, 0, !nosanitize !45
  %148 = load i8, ptr %146, align 1, !tbaa !8
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %139, !llvm.loop !133

150:                                              ; preds = %144, %131
  %151 = phi i64 [ %132, %131 ], [ %147, %144 ]
  %152 = getelementptr inbounds nuw i8, ptr %96, i64 68
  %153 = load i32, ptr %152, align 4, !tbaa !114
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %150
  %156 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %151, i64 2), !nosanitize !45
  %157 = extractvalue { i64, i1 } %156, 1, !nosanitize !45
  br i1 %157, label %158, label %159, !prof !46, !nosanitize !45

158:                                              ; preds = %155
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

159:                                              ; preds = %155
  %160 = extractvalue { i64, i1 } %156, 0, !nosanitize !45
  br label %162

161:                                              ; preds = %87
  br label %162

162:                                              ; preds = %161, %159, %150, %94, %89, %87
  %163 = phi i64 [ 18, %161 ], [ 18, %94 ], [ %93, %89 ], [ 0, %87 ], [ %160, %159 ], [ %151, %150 ]
  %164 = getelementptr inbounds nuw i8, ptr %64, i64 84
  %165 = load i32, ptr %164, align 4, !tbaa !31
  %166 = icmp eq i32 %165, 15
  %167 = getelementptr inbounds nuw i8, ptr %64, i64 136
  %168 = load i32, ptr %167, align 8, !tbaa !51
  %169 = icmp eq i32 %168, 15
  %170 = select i1 %166, i1 %169, i1 false
  br i1 %170, label %184, label %171

171:                                              ; preds = %162
  %172 = icmp ugt i32 %165, %168
  br i1 %172, label %177, label %173

173:                                              ; preds = %171
  %174 = getelementptr inbounds nuw i8, ptr %64, i64 196
  %175 = load i32, ptr %174, align 4, !tbaa !48
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %173, %171
  br label %178

178:                                              ; preds = %177, %173
  %179 = phi i64 [ %52, %177 ], [ %27, %173 ]
  %180 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %179, i64 %163), !nosanitize !45
  %181 = extractvalue { i64, i1 } %180, 0, !nosanitize !45
  %182 = extractvalue { i64, i1 } %180, 1, !nosanitize !45
  br i1 %182, label %183, label %216, !prof !46, !nosanitize !45

183:                                              ; preds = %178
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

184:                                              ; preds = %162
  %185 = lshr i64 %1, 12
  %186 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %185), !nosanitize !45
  %187 = extractvalue { i64, i1 } %186, 1, !nosanitize !45
  br i1 %187, label %188, label %189, !prof !46, !nosanitize !45

188:                                              ; preds = %184
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

189:                                              ; preds = %184
  %190 = extractvalue { i64, i1 } %186, 0, !nosanitize !45
  %191 = lshr i64 %1, 14
  %192 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %190, i64 %191), !nosanitize !45
  %193 = extractvalue { i64, i1 } %192, 1, !nosanitize !45
  br i1 %193, label %194, label %195, !prof !46, !nosanitize !45

194:                                              ; preds = %189
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

195:                                              ; preds = %189
  %196 = extractvalue { i64, i1 } %192, 0, !nosanitize !45
  %197 = lshr i64 %1, 25
  %198 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %196, i64 %197), !nosanitize !45
  %199 = extractvalue { i64, i1 } %198, 1, !nosanitize !45
  br i1 %199, label %200, label %201, !prof !46, !nosanitize !45

200:                                              ; preds = %195
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

201:                                              ; preds = %195
  %202 = extractvalue { i64, i1 } %198, 0, !nosanitize !45
  %203 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %202, i64 13), !nosanitize !45
  %204 = extractvalue { i64, i1 } %203, 1, !nosanitize !45
  br i1 %204, label %205, label %206, !prof !46, !nosanitize !45

205:                                              ; preds = %201
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

206:                                              ; preds = %201
  %207 = extractvalue { i64, i1 } %203, 0, !nosanitize !45
  %208 = add i64 %207, -6
  %209 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %208, i64 %163), !nosanitize !45
  %210 = extractvalue { i64, i1 } %209, 1, !nosanitize !45
  br i1 %210, label %211, label %212, !prof !46, !nosanitize !45

211:                                              ; preds = %206
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

212:                                              ; preds = %206
  %213 = extractvalue { i64, i1 } %209, 0, !nosanitize !45
  %214 = icmp ult i64 %213, %1
  %215 = select i1 %214, i64 -1, i64 %213
  br label %216

216:                                              ; preds = %212, %178, %72
  %217 = phi i64 [ %215, %212 ], [ %75, %72 ], [ %181, %178 ]
  ret i64 %217
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_pending(ptr noundef captures(none) %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %3) #10
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

26:                                               ; preds = %12
  %27 = extractvalue { i64, i1 } %23, 0, !nosanitize !45
  store i64 %27, ptr %21, align 8, !tbaa !108
  %28 = load i32, ptr %6, align 8, !tbaa !107
  %29 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %28, i32 %10), !nosanitize !45
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !45
  br i1 %30, label %31, label %32, !prof !46, !nosanitize !45

31:                                               ; preds = %26
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

32:                                               ; preds = %26
  %33 = extractvalue { i32, i1 } %29, 0, !nosanitize !45
  store i32 %33, ptr %6, align 8, !tbaa !107
  %34 = load i64, ptr %4, align 8, !tbaa !57
  %35 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %34, i64 %9), !nosanitize !45
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !45
  br i1 %36, label %37, label %38, !prof !46, !nosanitize !45

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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

44:                                               ; preds = %41, %38, %1
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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

27:                                               ; preds = %273, %8
  %28 = load i32, ptr %18, align 4, !tbaa !101
  %29 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %28, i32 42), !nosanitize !45
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !45
  br i1 %30, label %31, label %32, !prof !46, !nosanitize !45

31:                                               ; preds = %27
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

32:                                               ; preds = %27
  %33 = extractvalue { i32, i1 } %29, 0, !nosanitize !45
  %34 = lshr i32 %33, 3
  %35 = load ptr, ptr %0, align 8, !tbaa !20
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 32
  %37 = load i32, ptr %36, align 8, !tbaa !107
  %38 = icmp ult i32 %37, %34
  br i1 %38, label %277, label %39

39:                                               ; preds = %32
  %40 = sub nuw i32 %37, %34
  %41 = load i32, ptr %19, align 4, !tbaa !73
  %42 = zext i32 %41 to i64
  %43 = load i64, ptr %20, align 8, !tbaa !74
  %44 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %42, i64 %43), !nosanitize !45
  %45 = extractvalue { i64, i1 } %44, 1, !nosanitize !45
  br i1 %45, label %46, label %47, !prof !46, !nosanitize !45

46:                                               ; preds = %39
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

47:                                               ; preds = %39
  %48 = extractvalue { i64, i1 } %44, 0, !nosanitize !45
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %51 = load i32, ptr %50, align 8, !tbaa !81
  %52 = and i64 %48, 4294967295
  %53 = zext i32 %51 to i64
  %54 = add nuw nsw i64 %52, %53
  %55 = icmp samesign ult i64 %54, 65535
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !45
  %58 = extractvalue { i32, i1 } %57, 1, !nosanitize !45
  br i1 %58, label %59, label %60, !prof !46, !nosanitize !45

59:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

60:                                               ; preds = %56
  %61 = extractvalue { i32, i1 } %57, 0, !nosanitize !45
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
  br i1 %69, label %277, label %70

70:                                               ; preds = %66
  %71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !45
  %72 = extractvalue { i32, i1 } %71, 1, !nosanitize !45
  br i1 %72, label %73, label %74, !prof !46, !nosanitize !45

73:                                               ; preds = %70
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

74:                                               ; preds = %70
  %75 = extractvalue { i32, i1 } %71, 0, !nosanitize !45
  %76 = icmp eq i32 %64, %75
  br i1 %76, label %77, label %277

77:                                               ; preds = %74, %62
  br i1 %23, label %78, label %86

78:                                               ; preds = %77
  %79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !45
  %80 = extractvalue { i32, i1 } %79, 1, !nosanitize !45
  br i1 %80, label %81, label %82, !prof !46, !nosanitize !45

81:                                               ; preds = %78
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

82:                                               ; preds = %78
  %83 = extractvalue { i32, i1 } %79, 0, !nosanitize !45
  %84 = icmp eq i32 %64, %83
  %85 = zext i1 %84 to i32
  br label %86

86:                                               ; preds = %82, %77
  %87 = phi i32 [ 0, %77 ], [ %85, %82 ]
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i32 noundef %87) #10
  %88 = load i64, ptr %25, align 8, !tbaa !57
  %89 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %88, i64 4), !nosanitize !45
  %90 = extractvalue { i64, i1 } %89, 1, !nosanitize !45
  br i1 %90, label %91, label %92, !prof !46, !nosanitize !45

91:                                               ; preds = %86
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

92:                                               ; preds = %86
  %93 = extractvalue { i64, i1 } %89, 0, !nosanitize !45
  %94 = load ptr, ptr %24, align 8, !tbaa !40
  %95 = trunc i32 %64 to i8
  %96 = getelementptr inbounds nuw i8, ptr %94, i64 %93
  store i8 %95, ptr %96, align 1, !tbaa !8
  %97 = load i64, ptr %25, align 8, !tbaa !57
  %98 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %97, i64 3), !nosanitize !45
  %99 = extractvalue { i64, i1 } %98, 1, !nosanitize !45
  br i1 %99, label %100, label %101, !prof !46, !nosanitize !45

100:                                              ; preds = %92
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

101:                                              ; preds = %92
  %102 = extractvalue { i64, i1 } %98, 0, !nosanitize !45
  %103 = load ptr, ptr %24, align 8, !tbaa !40
  %104 = lshr i32 %64, 8
  %105 = trunc i32 %104 to i8
  %106 = getelementptr inbounds nuw i8, ptr %103, i64 %102
  store i8 %105, ptr %106, align 1, !tbaa !8
  %107 = load i64, ptr %25, align 8, !tbaa !57
  %108 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %107, i64 2), !nosanitize !45
  %109 = extractvalue { i64, i1 } %108, 1, !nosanitize !45
  br i1 %109, label %110, label %111, !prof !46, !nosanitize !45

110:                                              ; preds = %101
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

111:                                              ; preds = %101
  %112 = extractvalue { i64, i1 } %108, 0, !nosanitize !45
  %113 = load ptr, ptr %24, align 8, !tbaa !40
  %114 = xor i32 %64, -1
  %115 = trunc i32 %114 to i8
  %116 = getelementptr inbounds nuw i8, ptr %113, i64 %112
  store i8 %115, ptr %116, align 1, !tbaa !8
  %117 = load i64, ptr %25, align 8, !tbaa !57
  %118 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %117, i64 1), !nosanitize !45
  %119 = extractvalue { i64, i1 } %118, 1, !nosanitize !45
  br i1 %119, label %120, label %121, !prof !46, !nosanitize !45

120:                                              ; preds = %111
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

121:                                              ; preds = %111
  %122 = extractvalue { i64, i1 } %118, 0, !nosanitize !45
  %123 = load ptr, ptr %24, align 8, !tbaa !40
  %124 = lshr i32 %114, 8
  %125 = trunc i32 %124 to i8
  %126 = getelementptr inbounds nuw i8, ptr %123, i64 %122
  store i8 %125, ptr %126, align 1, !tbaa !8
  %127 = load ptr, ptr %0, align 8, !tbaa !20
  %128 = getelementptr inbounds nuw i8, ptr %127, i64 56
  %129 = load ptr, ptr %128, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %129) #10
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 40
  %131 = load i64, ptr %130, align 8, !tbaa !57
  %132 = getelementptr inbounds nuw i8, ptr %127, i64 32
  %133 = load i32, ptr %132, align 8, !tbaa !107
  %134 = zext i32 %133 to i64
  %135 = tail call i64 @llvm.umin.i64(i64 %131, i64 %134)
  %136 = trunc nuw i64 %135 to i32
  %137 = icmp eq i64 %135, 0
  br i1 %137, label %170, label %138

138:                                              ; preds = %121
  %139 = getelementptr inbounds nuw i8, ptr %127, i64 24
  %140 = load ptr, ptr %139, align 8, !tbaa !106
  %141 = getelementptr inbounds nuw i8, ptr %129, i64 32
  %142 = load ptr, ptr %141, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %140, ptr align 1 %142, i64 %135, i1 false)
  %143 = load ptr, ptr %139, align 8, !tbaa !106
  %144 = getelementptr inbounds nuw i8, ptr %143, i64 %135
  store ptr %144, ptr %139, align 8, !tbaa !106
  %145 = load ptr, ptr %141, align 8, !tbaa !58
  %146 = getelementptr inbounds nuw i8, ptr %145, i64 %135
  store ptr %146, ptr %141, align 8, !tbaa !58
  %147 = getelementptr inbounds nuw i8, ptr %127, i64 40
  %148 = load i64, ptr %147, align 8, !tbaa !108
  %149 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %148, i64 %135), !nosanitize !45
  %150 = extractvalue { i64, i1 } %149, 1, !nosanitize !45
  br i1 %150, label %151, label %152, !prof !46, !nosanitize !45

151:                                              ; preds = %138
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

152:                                              ; preds = %138
  %153 = extractvalue { i64, i1 } %149, 0, !nosanitize !45
  store i64 %153, ptr %147, align 8, !tbaa !108
  %154 = load i32, ptr %132, align 8, !tbaa !107
  %155 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %154, i32 %136), !nosanitize !45
  %156 = extractvalue { i32, i1 } %155, 1, !nosanitize !45
  br i1 %156, label %157, label %158, !prof !46, !nosanitize !45

157:                                              ; preds = %152
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

158:                                              ; preds = %152
  %159 = extractvalue { i32, i1 } %155, 0, !nosanitize !45
  store i32 %159, ptr %132, align 8, !tbaa !107
  %160 = load i64, ptr %130, align 8, !tbaa !57
  %161 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %160, i64 %135), !nosanitize !45
  %162 = extractvalue { i64, i1 } %161, 1, !nosanitize !45
  br i1 %162, label %163, label %164, !prof !46, !nosanitize !45

163:                                              ; preds = %158
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

164:                                              ; preds = %158
  %165 = extractvalue { i64, i1 } %161, 0, !nosanitize !45
  store i64 %165, ptr %130, align 8, !tbaa !57
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = getelementptr inbounds nuw i8, ptr %129, i64 16
  %169 = load ptr, ptr %168, align 8, !tbaa !40
  store ptr %169, ptr %141, align 8, !tbaa !58
  br label %170

170:                                              ; preds = %167, %164, %121
  %171 = icmp eq i32 %49, 0
  br i1 %171, label %209, label %172

172:                                              ; preds = %170
  %173 = tail call i32 @llvm.umin.i32(i32 %64, i32 %49)
  %174 = load ptr, ptr %0, align 8, !tbaa !20
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 24
  %176 = load ptr, ptr %175, align 8, !tbaa !106
  %177 = load ptr, ptr %26, align 8, !tbaa !34
  %178 = load i64, ptr %20, align 8, !tbaa !74
  %179 = getelementptr inbounds i8, ptr %177, i64 %178
  %180 = zext i32 %173 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %176, ptr align 1 %179, i64 %180, i1 false)
  %181 = load ptr, ptr %0, align 8, !tbaa !20
  %182 = getelementptr inbounds nuw i8, ptr %181, i64 24
  %183 = load ptr, ptr %182, align 8, !tbaa !106
  %184 = getelementptr inbounds nuw i8, ptr %183, i64 %180
  store ptr %184, ptr %182, align 8, !tbaa !106
  %185 = getelementptr inbounds nuw i8, ptr %181, i64 32
  %186 = load i32, ptr %185, align 8, !tbaa !107
  %187 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %186, i32 %173), !nosanitize !45
  %188 = extractvalue { i32, i1 } %187, 1, !nosanitize !45
  br i1 %188, label %189, label %190, !prof !46, !nosanitize !45

189:                                              ; preds = %172
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

190:                                              ; preds = %172
  %191 = extractvalue { i32, i1 } %187, 0, !nosanitize !45
  store i32 %191, ptr %185, align 8, !tbaa !107
  %192 = getelementptr inbounds nuw i8, ptr %181, i64 40
  %193 = load i64, ptr %192, align 8, !tbaa !108
  %194 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %193, i64 %180), !nosanitize !45
  %195 = extractvalue { i64, i1 } %194, 1, !nosanitize !45
  br i1 %195, label %196, label %197, !prof !46, !nosanitize !45

196:                                              ; preds = %197, %190
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

197:                                              ; preds = %190
  %198 = extractvalue { i64, i1 } %194, 0, !nosanitize !45
  store i64 %198, ptr %192, align 8, !tbaa !108
  %199 = load i64, ptr %20, align 8, !tbaa !74
  %200 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %199, i64 %180), !nosanitize !45
  %201 = extractvalue { i64, i1 } %200, 1, !nosanitize !45
  br i1 %201, label %196, label %202, !prof !46, !nosanitize !45

202:                                              ; preds = %197
  %203 = extractvalue { i64, i1 } %200, 0, !nosanitize !45
  store i64 %203, ptr %20, align 8, !tbaa !74
  %204 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %64, i32 %173), !nosanitize !45
  %205 = extractvalue { i32, i1 } %204, 1, !nosanitize !45
  br i1 %205, label %206, label %207, !prof !46, !nosanitize !45

206:                                              ; preds = %202
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

207:                                              ; preds = %202
  %208 = extractvalue { i32, i1 } %204, 0, !nosanitize !45
  br label %209

209:                                              ; preds = %207, %170
  %210 = phi i32 [ %208, %207 ], [ %64, %170 ]
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %273, label %212

212:                                              ; preds = %209
  %213 = load ptr, ptr %0, align 8, !tbaa !20
  %214 = getelementptr inbounds nuw i8, ptr %213, i64 24
  %215 = load ptr, ptr %214, align 8, !tbaa !106
  %216 = getelementptr inbounds nuw i8, ptr %213, i64 8
  %217 = load i32, ptr %216, align 8, !tbaa !81
  %218 = tail call i32 @llvm.umin.i32(i32 %217, i32 %210)
  %219 = icmp eq i32 %217, 0
  br i1 %219, label %253, label %220

220:                                              ; preds = %212
  %221 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %217, i32 %218), !nosanitize !45
  %222 = extractvalue { i32, i1 } %221, 1, !nosanitize !45
  br i1 %222, label %223, label %224, !prof !46, !nosanitize !45

223:                                              ; preds = %220
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

224:                                              ; preds = %220
  %225 = extractvalue { i32, i1 } %221, 0, !nosanitize !45
  store i32 %225, ptr %216, align 8, !tbaa !81
  %226 = load ptr, ptr %213, align 8, !tbaa !82
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
  %234 = load i64, ptr %233, align 8, !tbaa !59
  %235 = tail call i64 @adler32(i64 noundef %234, ptr noundef %215, i32 noundef %218) #10
  store i64 %235, ptr %233, align 8, !tbaa !59
  br label %240

236:                                              ; preds = %224
  %237 = getelementptr inbounds nuw i8, ptr %213, i64 96
  %238 = load i64, ptr %237, align 8, !tbaa !59
  %239 = tail call i64 @crc32(i64 noundef %238, ptr noundef %215, i32 noundef %218) #10
  store i64 %239, ptr %237, align 8, !tbaa !59
  br label %240

240:                                              ; preds = %236, %232, %224
  %241 = load ptr, ptr %213, align 8, !tbaa !82
  %242 = getelementptr inbounds nuw i8, ptr %241, i64 %227
  store ptr %242, ptr %213, align 8, !tbaa !82
  %243 = getelementptr inbounds nuw i8, ptr %213, i64 16
  %244 = load i64, ptr %243, align 8, !tbaa !55
  %245 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %244, i64 %227), !nosanitize !45
  %246 = extractvalue { i64, i1 } %245, 1, !nosanitize !45
  br i1 %246, label %247, label %248, !prof !46, !nosanitize !45

247:                                              ; preds = %240
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

248:                                              ; preds = %240
  %249 = extractvalue { i64, i1 } %245, 0, !nosanitize !45
  store i64 %249, ptr %243, align 8, !tbaa !55
  %250 = load ptr, ptr %0, align 8, !tbaa !20
  %251 = getelementptr inbounds nuw i8, ptr %250, i64 24
  %252 = load ptr, ptr %251, align 8, !tbaa !106
  br label %253

253:                                              ; preds = %248, %212
  %254 = phi ptr [ %215, %212 ], [ %252, %248 ]
  %255 = phi ptr [ %213, %212 ], [ %250, %248 ]
  %256 = getelementptr inbounds nuw i8, ptr %255, i64 24
  %257 = zext i32 %210 to i64
  %258 = getelementptr inbounds nuw i8, ptr %254, i64 %257
  store ptr %258, ptr %256, align 8, !tbaa !106
  %259 = getelementptr inbounds nuw i8, ptr %255, i64 32
  %260 = load i32, ptr %259, align 8, !tbaa !107
  %261 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %260, i32 %210), !nosanitize !45
  %262 = extractvalue { i32, i1 } %261, 1, !nosanitize !45
  br i1 %262, label %263, label %264, !prof !46, !nosanitize !45

263:                                              ; preds = %253
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

264:                                              ; preds = %253
  %265 = extractvalue { i32, i1 } %261, 0, !nosanitize !45
  store i32 %265, ptr %259, align 8, !tbaa !107
  %266 = getelementptr inbounds nuw i8, ptr %255, i64 40
  %267 = load i64, ptr %266, align 8, !tbaa !108
  %268 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %267, i64 %257), !nosanitize !45
  %269 = extractvalue { i64, i1 } %268, 1, !nosanitize !45
  br i1 %269, label %270, label %271, !prof !46, !nosanitize !45

270:                                              ; preds = %264
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

271:                                              ; preds = %264
  %272 = extractvalue { i64, i1 } %268, 0, !nosanitize !45
  store i64 %272, ptr %266, align 8, !tbaa !108
  br label %273

273:                                              ; preds = %271, %209
  %274 = icmp eq i32 %87, 0
  br i1 %274, label %27, label %275, !llvm.loop !134

275:                                              ; preds = %273
  %276 = load ptr, ptr %0, align 8, !tbaa !20
  br label %277, !llvm.loop !134

277:                                              ; preds = %275, %74, %66, %32
  %278 = phi ptr [ %276, %275 ], [ %35, %32 ], [ %35, %66 ], [ %35, %74 ]
  %279 = phi i1 [ false, %275 ], [ true, %32 ], [ true, %66 ], [ true, %74 ]
  %280 = getelementptr inbounds nuw i8, ptr %278, i64 8
  %281 = load i32, ptr %280, align 8, !tbaa !81
  %282 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %17, i32 %281), !nosanitize !45
  %283 = extractvalue { i32, i1 } %282, 0, !nosanitize !45
  %284 = extractvalue { i32, i1 } %282, 1, !nosanitize !45
  br i1 %284, label %285, label %286, !prof !46, !nosanitize !45

285:                                              ; preds = %277
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

286:                                              ; preds = %277
  %287 = icmp eq i32 %283, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %286
  %289 = load i32, ptr %19, align 4, !tbaa !73
  %290 = zext i32 %289 to i64
  br label %368

291:                                              ; preds = %286
  %292 = load i32, ptr %10, align 8, !tbaa !32
  %293 = icmp ult i32 %283, %292
  br i1 %293, label %303, label %294

294:                                              ; preds = %291
  %295 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 2, ptr %295, align 8, !tbaa !125
  %296 = load ptr, ptr %26, align 8, !tbaa !34
  %297 = load ptr, ptr %278, align 8, !tbaa !82
  %298 = zext i32 %292 to i64
  %299 = sub nsw i64 0, %298
  %300 = getelementptr inbounds i8, ptr %297, i64 %299
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %296, ptr align 1 %300, i64 %298, i1 false)
  %301 = load i32, ptr %10, align 8, !tbaa !32
  store i32 %301, ptr %19, align 4, !tbaa !73
  %302 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %301, ptr %302, align 4, !tbaa !76
  br label %365

303:                                              ; preds = %291
  %304 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %305 = load i64, ptr %304, align 8, !tbaa !61
  %306 = load i32, ptr %19, align 4, !tbaa !73
  %307 = zext i32 %306 to i64
  %308 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %305, i64 %307), !nosanitize !45
  %309 = extractvalue { i64, i1 } %308, 1, !nosanitize !45
  br i1 %309, label %310, label %311, !prof !46, !nosanitize !45

310:                                              ; preds = %303
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

311:                                              ; preds = %303
  %312 = extractvalue { i64, i1 } %308, 0, !nosanitize !45
  %313 = zext i32 %283 to i64
  %314 = icmp ugt i64 %312, %313
  br i1 %314, label %336, label %315

315:                                              ; preds = %311
  %316 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %306, i32 %292), !nosanitize !45
  %317 = extractvalue { i32, i1 } %316, 1, !nosanitize !45
  br i1 %317, label %318, label %319, !prof !46, !nosanitize !45

318:                                              ; preds = %315
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

319:                                              ; preds = %315
  %320 = extractvalue { i32, i1 } %316, 0, !nosanitize !45
  store i32 %320, ptr %19, align 4, !tbaa !73
  %321 = load ptr, ptr %26, align 8, !tbaa !34
  %322 = zext i32 %292 to i64
  %323 = getelementptr inbounds nuw i8, ptr %321, i64 %322
  %324 = zext i32 %320 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %321, ptr nonnull align 1 %323, i64 %324, i1 false)
  %325 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %326 = load i32, ptr %325, align 8, !tbaa !125
  %327 = icmp ult i32 %326, 2
  br i1 %327, label %328, label %330

328:                                              ; preds = %319
  %329 = add nuw nsw i32 %326, 1
  store i32 %329, ptr %325, align 8, !tbaa !125
  br label %330

330:                                              ; preds = %328, %319
  %331 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %332 = load i32, ptr %331, align 4, !tbaa !76
  %333 = load i32, ptr %19, align 4, !tbaa !73
  %334 = icmp ugt i32 %332, %333
  br i1 %334, label %335, label %336

335:                                              ; preds = %330
  store i32 %333, ptr %331, align 4, !tbaa !76
  br label %336

336:                                              ; preds = %335, %330, %311
  %337 = phi i32 [ %333, %330 ], [ %333, %335 ], [ %306, %311 ]
  %338 = load ptr, ptr %26, align 8, !tbaa !34
  %339 = zext i32 %337 to i64
  %340 = getelementptr inbounds nuw i8, ptr %338, i64 %339
  %341 = load ptr, ptr %0, align 8, !tbaa !20
  %342 = load ptr, ptr %341, align 8, !tbaa !82
  %343 = sub nsw i64 0, %313
  %344 = getelementptr inbounds i8, ptr %342, i64 %343
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %340, ptr nonnull align 1 %344, i64 %313, i1 false)
  %345 = load i32, ptr %19, align 4, !tbaa !73
  %346 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %345, i32 %283), !nosanitize !45
  %347 = extractvalue { i32, i1 } %346, 1, !nosanitize !45
  br i1 %347, label %348, label %349, !prof !46, !nosanitize !45

348:                                              ; preds = %336
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

349:                                              ; preds = %336
  %350 = extractvalue { i32, i1 } %346, 0, !nosanitize !45
  store i32 %350, ptr %19, align 4, !tbaa !73
  %351 = load i32, ptr %10, align 8, !tbaa !32
  %352 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %353 = load i32, ptr %352, align 4, !tbaa !76
  %354 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %351, i32 %353), !nosanitize !45
  %355 = extractvalue { i32, i1 } %354, 1, !nosanitize !45
  br i1 %355, label %356, label %357, !prof !46, !nosanitize !45

356:                                              ; preds = %349
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

357:                                              ; preds = %349
  %358 = extractvalue { i32, i1 } %354, 0, !nosanitize !45
  %359 = tail call i32 @llvm.umin.i32(i32 %283, i32 %358)
  %360 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %353, i32 %359), !nosanitize !45
  %361 = extractvalue { i32, i1 } %360, 1, !nosanitize !45
  br i1 %361, label %362, label %363, !prof !46, !nosanitize !45

362:                                              ; preds = %357
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

363:                                              ; preds = %357
  %364 = extractvalue { i32, i1 } %360, 0, !nosanitize !45
  store i32 %364, ptr %352, align 4, !tbaa !76
  br label %365

365:                                              ; preds = %363, %294
  %366 = phi i32 [ %350, %363 ], [ %301, %294 ]
  %367 = zext i32 %366 to i64
  store i64 %367, ptr %20, align 8, !tbaa !74
  br label %368

368:                                              ; preds = %365, %288
  %369 = phi i64 [ %290, %288 ], [ %367, %365 ]
  %370 = phi i32 [ %289, %288 ], [ %366, %365 ]
  %371 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %372 = load i64, ptr %371, align 8, !tbaa !38
  %373 = icmp ult i64 %372, %369
  br i1 %373, label %374, label %375

374:                                              ; preds = %368
  store i64 %369, ptr %371, align 8, !tbaa !38
  br label %375

375:                                              ; preds = %374, %368
  br i1 %279, label %376, label %599

376:                                              ; preds = %375
  %377 = icmp ne i32 %1, 0
  switch i32 %1, label %378 [
    i32 4, label %386
    i32 0, label %386
  ]

378:                                              ; preds = %376
  %379 = load ptr, ptr %0, align 8, !tbaa !20
  %380 = getelementptr inbounds nuw i8, ptr %379, i64 8
  %381 = load i32, ptr %380, align 8, !tbaa !81
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %386

383:                                              ; preds = %378
  %384 = load i64, ptr %20, align 8, !tbaa !74
  %385 = icmp eq i64 %384, %369
  br i1 %385, label %602, label %386

386:                                              ; preds = %383, %378, %376, %376
  %387 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %388 = load i64, ptr %387, align 8, !tbaa !61
  %389 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %388, i64 %369), !nosanitize !45
  %390 = extractvalue { i64, i1 } %389, 1, !nosanitize !45
  br i1 %390, label %391, label %392, !prof !46, !nosanitize !45

391:                                              ; preds = %386
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

392:                                              ; preds = %386
  %393 = extractvalue { i64, i1 } %389, 0, !nosanitize !45
  %394 = trunc i64 %393 to i32
  %395 = load ptr, ptr %0, align 8, !tbaa !20
  %396 = getelementptr inbounds nuw i8, ptr %395, i64 8
  %397 = load i32, ptr %396, align 8, !tbaa !81
  %398 = icmp ugt i32 %397, %394
  br i1 %398, label %399, label %431

399:                                              ; preds = %392
  %400 = load i64, ptr %20, align 8, !tbaa !74
  %401 = load i32, ptr %10, align 8, !tbaa !32
  %402 = zext i32 %401 to i64
  %403 = icmp slt i64 %400, %402
  br i1 %403, label %431, label %404

404:                                              ; preds = %399
  %405 = sub nsw i64 %400, %402
  store i64 %405, ptr %20, align 8, !tbaa !74
  %406 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %370, i32 %401), !nosanitize !45
  %407 = extractvalue { i32, i1 } %406, 1, !nosanitize !45
  br i1 %407, label %408, label %409, !prof !46, !nosanitize !45

408:                                              ; preds = %404
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

409:                                              ; preds = %404
  %410 = extractvalue { i32, i1 } %406, 0, !nosanitize !45
  store i32 %410, ptr %19, align 4, !tbaa !73
  %411 = load ptr, ptr %26, align 8, !tbaa !34
  %412 = getelementptr inbounds nuw i8, ptr %411, i64 %402
  %413 = zext i32 %410 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %411, ptr align 1 %412, i64 %413, i1 false)
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %415 = load i32, ptr %414, align 8, !tbaa !125
  %416 = icmp ult i32 %415, 2
  br i1 %416, label %417, label %419

417:                                              ; preds = %409
  %418 = add nuw nsw i32 %415, 1
  store i32 %418, ptr %414, align 8, !tbaa !125
  br label %419

419:                                              ; preds = %417, %409
  %420 = load i32, ptr %10, align 8, !tbaa !32
  %421 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %394, i32 %420), !nosanitize !45
  %422 = extractvalue { i32, i1 } %421, 0, !nosanitize !45
  %423 = extractvalue { i32, i1 } %421, 1, !nosanitize !45
  br i1 %423, label %424, label %425, !prof !46, !nosanitize !45

424:                                              ; preds = %419
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

425:                                              ; preds = %419
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %427 = load i32, ptr %426, align 4, !tbaa !76
  %428 = load i32, ptr %19, align 4, !tbaa !73
  %429 = icmp ugt i32 %427, %428
  br i1 %429, label %430, label %431

430:                                              ; preds = %425
  store i32 %428, ptr %426, align 4, !tbaa !76
  br label %431

431:                                              ; preds = %430, %425, %399, %392
  %432 = phi i32 [ %428, %430 ], [ %428, %425 ], [ %370, %399 ], [ %370, %392 ]
  %433 = phi i32 [ %422, %430 ], [ %422, %425 ], [ %394, %399 ], [ %394, %392 ]
  %434 = load ptr, ptr %0, align 8, !tbaa !20
  %435 = getelementptr inbounds nuw i8, ptr %434, i64 8
  %436 = load i32, ptr %435, align 8, !tbaa !81
  %437 = tail call i32 @llvm.umin.i32(i32 %433, i32 %436)
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %492, label %439

439:                                              ; preds = %431
  %440 = load ptr, ptr %26, align 8, !tbaa !34
  %441 = zext i32 %432 to i64
  %442 = getelementptr inbounds nuw i8, ptr %440, i64 %441
  %443 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %436, i32 %437), !nosanitize !45
  %444 = extractvalue { i32, i1 } %443, 1, !nosanitize !45
  br i1 %444, label %445, label %446, !prof !46, !nosanitize !45

445:                                              ; preds = %439
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

446:                                              ; preds = %439
  %447 = extractvalue { i32, i1 } %443, 0, !nosanitize !45
  store i32 %447, ptr %435, align 8, !tbaa !81
  %448 = load ptr, ptr %434, align 8, !tbaa !82
  %449 = zext i32 %437 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %442, ptr align 1 %448, i64 %449, i1 false)
  %450 = getelementptr inbounds nuw i8, ptr %434, i64 56
  %451 = load ptr, ptr %450, align 8, !tbaa !19
  %452 = getelementptr inbounds nuw i8, ptr %451, i64 48
  %453 = load i32, ptr %452, align 8, !tbaa !30
  switch i32 %453, label %462 [
    i32 1, label %454
    i32 2, label %458
  ]

454:                                              ; preds = %446
  %455 = getelementptr inbounds nuw i8, ptr %434, i64 96
  %456 = load i64, ptr %455, align 8, !tbaa !59
  %457 = tail call i64 @adler32(i64 noundef %456, ptr noundef %442, i32 noundef %437) #10
  store i64 %457, ptr %455, align 8, !tbaa !59
  br label %462

458:                                              ; preds = %446
  %459 = getelementptr inbounds nuw i8, ptr %434, i64 96
  %460 = load i64, ptr %459, align 8, !tbaa !59
  %461 = tail call i64 @crc32(i64 noundef %460, ptr noundef %442, i32 noundef %437) #10
  store i64 %461, ptr %459, align 8, !tbaa !59
  br label %462

462:                                              ; preds = %458, %454, %446
  %463 = load ptr, ptr %434, align 8, !tbaa !82
  %464 = getelementptr inbounds nuw i8, ptr %463, i64 %449
  store ptr %464, ptr %434, align 8, !tbaa !82
  %465 = getelementptr inbounds nuw i8, ptr %434, i64 16
  %466 = load i64, ptr %465, align 8, !tbaa !55
  %467 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %466, i64 %449), !nosanitize !45
  %468 = extractvalue { i64, i1 } %467, 1, !nosanitize !45
  br i1 %468, label %469, label %470, !prof !46, !nosanitize !45

469:                                              ; preds = %462
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

470:                                              ; preds = %462
  %471 = extractvalue { i64, i1 } %467, 0, !nosanitize !45
  store i64 %471, ptr %465, align 8, !tbaa !55
  %472 = load i32, ptr %19, align 4, !tbaa !73
  %473 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %472, i32 %437), !nosanitize !45
  %474 = extractvalue { i32, i1 } %473, 1, !nosanitize !45
  br i1 %474, label %475, label %476, !prof !46, !nosanitize !45

475:                                              ; preds = %470
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

476:                                              ; preds = %470
  %477 = extractvalue { i32, i1 } %473, 0, !nosanitize !45
  store i32 %477, ptr %19, align 4, !tbaa !73
  %478 = load i32, ptr %10, align 8, !tbaa !32
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %480 = load i32, ptr %479, align 4, !tbaa !76
  %481 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %478, i32 %480), !nosanitize !45
  %482 = extractvalue { i32, i1 } %481, 1, !nosanitize !45
  br i1 %482, label %483, label %484, !prof !46, !nosanitize !45

483:                                              ; preds = %476
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

484:                                              ; preds = %476
  %485 = extractvalue { i32, i1 } %481, 0, !nosanitize !45
  %486 = tail call i32 @llvm.umin.i32(i32 %437, i32 %485)
  %487 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %480, i32 %486), !nosanitize !45
  %488 = extractvalue { i32, i1 } %487, 1, !nosanitize !45
  br i1 %488, label %489, label %490, !prof !46, !nosanitize !45

489:                                              ; preds = %484
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

490:                                              ; preds = %484
  %491 = extractvalue { i32, i1 } %487, 0, !nosanitize !45
  store i32 %491, ptr %479, align 4, !tbaa !76
  br label %492

492:                                              ; preds = %490, %431
  %493 = phi i32 [ %477, %490 ], [ %432, %431 ]
  %494 = load i64, ptr %371, align 8, !tbaa !38
  %495 = zext i32 %493 to i64
  %496 = icmp ult i64 %494, %495
  br i1 %496, label %497, label %498

497:                                              ; preds = %492
  store i64 %495, ptr %371, align 8, !tbaa !38
  br label %498

498:                                              ; preds = %497, %492
  %499 = load i32, ptr %18, align 4, !tbaa !101
  %500 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %499, i32 42), !nosanitize !45
  %501 = extractvalue { i32, i1 } %500, 1, !nosanitize !45
  br i1 %501, label %502, label %503, !prof !46, !nosanitize !45

502:                                              ; preds = %544, %498
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

503:                                              ; preds = %498
  %504 = extractvalue { i32, i1 } %500, 0, !nosanitize !45
  %505 = lshr i32 %504, 3
  %506 = load i64, ptr %3, align 8, !tbaa !41
  %507 = zext nneg i32 %505 to i64
  %508 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %506, i64 %507), !nosanitize !45
  %509 = extractvalue { i64, i1 } %508, 1, !nosanitize !45
  br i1 %509, label %510, label %511, !prof !46, !nosanitize !45

510:                                              ; preds = %503
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

511:                                              ; preds = %503
  %512 = extractvalue { i64, i1 } %508, 0, !nosanitize !45
  %513 = tail call i64 @llvm.umin.i64(i64 %512, i64 65535)
  %514 = trunc nuw nsw i64 %513 to i32
  %515 = load i64, ptr %20, align 8, !tbaa !74
  %516 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %495, i64 %515), !nosanitize !45
  %517 = extractvalue { i64, i1 } %516, 1, !nosanitize !45
  br i1 %517, label %518, label %519, !prof !46, !nosanitize !45

518:                                              ; preds = %511
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

519:                                              ; preds = %511
  %520 = load i32, ptr %10, align 8, !tbaa !32
  %521 = tail call i32 @llvm.umin.i32(i32 %520, i32 %514)
  %522 = extractvalue { i64, i1 } %516, 0, !nosanitize !45
  %523 = trunc i64 %522 to i32
  %524 = icmp ugt i32 %521, %523
  br i1 %524, label %525, label %534

525:                                              ; preds = %519
  %526 = icmp ne i32 %523, 0
  %527 = or i1 %23, %526
  %528 = and i1 %377, %527
  br i1 %528, label %529, label %602

529:                                              ; preds = %525
  %530 = load ptr, ptr %0, align 8, !tbaa !20
  %531 = getelementptr inbounds nuw i8, ptr %530, i64 8
  %532 = load i32, ptr %531, align 8, !tbaa !81
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %602

534:                                              ; preds = %529, %519
  %535 = tail call i32 @llvm.umin.i32(i32 %514, i32 %523)
  br i1 %23, label %536, label %544

536:                                              ; preds = %534
  %537 = load ptr, ptr %0, align 8, !tbaa !20
  %538 = getelementptr inbounds nuw i8, ptr %537, i64 8
  %539 = load i32, ptr %538, align 8, !tbaa !81
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %541, label %544

541:                                              ; preds = %536
  %542 = icmp uge i32 %514, %523
  %543 = zext i1 %542 to i32
  br label %544

544:                                              ; preds = %541, %536, %534
  %545 = phi i32 [ 0, %536 ], [ 0, %534 ], [ %543, %541 ]
  %546 = load ptr, ptr %26, align 8, !tbaa !34
  %547 = getelementptr inbounds i8, ptr %546, i64 %515
  %548 = zext nneg i32 %535 to i64
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef %547, i64 noundef %548, i32 noundef %545) #10
  %549 = load i64, ptr %20, align 8, !tbaa !74
  %550 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %549, i64 %548), !nosanitize !45
  %551 = extractvalue { i64, i1 } %550, 1, !nosanitize !45
  br i1 %551, label %502, label %552, !prof !46, !nosanitize !45

552:                                              ; preds = %544
  %553 = extractvalue { i64, i1 } %550, 0, !nosanitize !45
  store i64 %553, ptr %20, align 8, !tbaa !74
  %554 = load ptr, ptr %0, align 8, !tbaa !20
  %555 = getelementptr inbounds nuw i8, ptr %554, i64 56
  %556 = load ptr, ptr %555, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %556) #10
  %557 = getelementptr inbounds nuw i8, ptr %556, i64 40
  %558 = load i64, ptr %557, align 8, !tbaa !57
  %559 = getelementptr inbounds nuw i8, ptr %554, i64 32
  %560 = load i32, ptr %559, align 8, !tbaa !107
  %561 = zext i32 %560 to i64
  %562 = tail call i64 @llvm.umin.i64(i64 %558, i64 %561)
  %563 = trunc nuw i64 %562 to i32
  %564 = icmp eq i64 %562, 0
  br i1 %564, label %597, label %565

565:                                              ; preds = %552
  %566 = getelementptr inbounds nuw i8, ptr %554, i64 24
  %567 = load ptr, ptr %566, align 8, !tbaa !106
  %568 = getelementptr inbounds nuw i8, ptr %556, i64 32
  %569 = load ptr, ptr %568, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %567, ptr align 1 %569, i64 %562, i1 false)
  %570 = load ptr, ptr %566, align 8, !tbaa !106
  %571 = getelementptr inbounds nuw i8, ptr %570, i64 %562
  store ptr %571, ptr %566, align 8, !tbaa !106
  %572 = load ptr, ptr %568, align 8, !tbaa !58
  %573 = getelementptr inbounds nuw i8, ptr %572, i64 %562
  store ptr %573, ptr %568, align 8, !tbaa !58
  %574 = getelementptr inbounds nuw i8, ptr %554, i64 40
  %575 = load i64, ptr %574, align 8, !tbaa !108
  %576 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %575, i64 %562), !nosanitize !45
  %577 = extractvalue { i64, i1 } %576, 1, !nosanitize !45
  br i1 %577, label %578, label %579, !prof !46, !nosanitize !45

578:                                              ; preds = %565
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

579:                                              ; preds = %565
  %580 = extractvalue { i64, i1 } %576, 0, !nosanitize !45
  store i64 %580, ptr %574, align 8, !tbaa !108
  %581 = load i32, ptr %559, align 8, !tbaa !107
  %582 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %581, i32 %563), !nosanitize !45
  %583 = extractvalue { i32, i1 } %582, 1, !nosanitize !45
  br i1 %583, label %584, label %585, !prof !46, !nosanitize !45

584:                                              ; preds = %579
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

585:                                              ; preds = %579
  %586 = extractvalue { i32, i1 } %582, 0, !nosanitize !45
  store i32 %586, ptr %559, align 8, !tbaa !107
  %587 = load i64, ptr %557, align 8, !tbaa !57
  %588 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %587, i64 %562), !nosanitize !45
  %589 = extractvalue { i64, i1 } %588, 1, !nosanitize !45
  br i1 %589, label %590, label %591, !prof !46, !nosanitize !45

590:                                              ; preds = %585
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

591:                                              ; preds = %585
  %592 = extractvalue { i64, i1 } %588, 0, !nosanitize !45
  store i64 %592, ptr %557, align 8, !tbaa !57
  %593 = icmp eq i64 %592, 0
  br i1 %593, label %594, label %597

594:                                              ; preds = %591
  %595 = getelementptr inbounds nuw i8, ptr %556, i64 16
  %596 = load ptr, ptr %595, align 8, !tbaa !40
  store ptr %596, ptr %568, align 8, !tbaa !58
  br label %597

597:                                              ; preds = %594, %591, %552
  %598 = icmp eq i32 %545, 0
  br i1 %598, label %602, label %599

599:                                              ; preds = %597, %375
  %600 = phi i32 [ 3, %375 ], [ 2, %597 ]
  %601 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 8, ptr %601, align 8, !tbaa !102
  br label %602

602:                                              ; preds = %599, %597, %529, %525, %383
  %603 = phi i32 [ 0, %529 ], [ 1, %383 ], [ 0, %525 ], [ 0, %597 ], [ %600, %599 ]
  ret i32 %603
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

25:                                               ; preds = %483, %2
  %26 = load i32, ptr %3, align 4, !tbaa !75
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %367

28:                                               ; preds = %25
  %29 = load i32, ptr %4, align 8, !tbaa !32
  %30 = zext i32 %29 to i64
  br label %31

31:                                               ; preds = %313, %28
  %32 = phi i32 [ %240, %313 ], [ 0, %28 ]
  %33 = load i64, ptr %5, align 8, !tbaa !61
  %34 = zext nneg i32 %32 to i64
  %35 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %33, i64 %34), !nosanitize !45
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !45
  br i1 %36, label %37, label %38, !prof !46, !nosanitize !45

37:                                               ; preds = %31
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

38:                                               ; preds = %31
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !45
  %40 = load i32, ptr %6, align 4, !tbaa !73
  %41 = zext i32 %40 to i64
  %42 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %39, i64 %41), !nosanitize !45
  %43 = extractvalue { i64, i1 } %42, 1, !nosanitize !45
  br i1 %43, label %44, label %45, !prof !46, !nosanitize !45

44:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

45:                                               ; preds = %38
  %46 = extractvalue { i64, i1 } %42, 0, !nosanitize !45
  %47 = trunc i64 %46 to i32
  %48 = load i32, ptr %4, align 8, !tbaa !32
  %49 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %48, i32 262), !nosanitize !45
  %50 = extractvalue { i32, i1 } %49, 1, !nosanitize !45
  br i1 %50, label %51, label %52, !prof !46, !nosanitize !45

51:                                               ; preds = %45
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

52:                                               ; preds = %45
  %53 = extractvalue { i32, i1 } %49, 0, !nosanitize !45
  %54 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %29, i32 %53), !nosanitize !45
  %55 = extractvalue { i32, i1 } %54, 1, !nosanitize !45
  br i1 %55, label %56, label %57, !prof !46, !nosanitize !45

56:                                               ; preds = %52
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

57:                                               ; preds = %52
  %58 = extractvalue { i32, i1 } %54, 0, !nosanitize !45
  %59 = icmp ult i32 %40, %58
  br i1 %59, label %187, label %60

60:                                               ; preds = %57
  %61 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %29, i32 %47), !nosanitize !45
  %62 = extractvalue { i32, i1 } %61, 1, !nosanitize !45
  br i1 %62, label %63, label %64, !prof !46, !nosanitize !45

63:                                               ; preds = %60
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

73:                                               ; preds = %64
  %74 = extractvalue { i32, i1 } %70, 0, !nosanitize !45
  store i32 %74, ptr %8, align 8, !tbaa !83
  %75 = load i32, ptr %6, align 4, !tbaa !73
  %76 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %75, i32 %29), !nosanitize !45
  %77 = extractvalue { i32, i1 } %76, 1, !nosanitize !45
  br i1 %77, label %78, label %79, !prof !46, !nosanitize !45

78:                                               ; preds = %79, %73
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

79:                                               ; preds = %73
  %80 = extractvalue { i32, i1 } %76, 0, !nosanitize !45
  store i32 %80, ptr %6, align 4, !tbaa !73
  %81 = load i64, ptr %9, align 8, !tbaa !74
  %82 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %81, i64 %30), !nosanitize !45
  %83 = extractvalue { i64, i1 } %82, 1, !nosanitize !45
  br i1 %83, label %78, label %84, !prof !46, !nosanitize !45

84:                                               ; preds = %79
  %85 = extractvalue { i64, i1 } %82, 0, !nosanitize !45
  store i64 %85, ptr %9, align 8, !tbaa !74
  %86 = load i32, ptr %10, align 4, !tbaa !76
  %87 = icmp ugt i32 %86, %80
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 %80, ptr %10, align 4, !tbaa !76
  br label %89

89:                                               ; preds = %88, %84
  %90 = load i32, ptr %4, align 8, !tbaa !32
  %91 = load i32, ptr %11, align 4, !tbaa !36
  %92 = load ptr, ptr %12, align 8, !tbaa !37
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds nuw [2 x i8], ptr %92, i64 %93
  %95 = icmp eq i32 %91, 0
  br i1 %95, label %122, label %96, !prof !46, !nosanitize !45

96:                                               ; preds = %89
  %97 = icmp ult i32 %91, 8
  br i1 %97, label %119, label %98

98:                                               ; preds = %96
  %99 = and i64 %93, 4294967288
  %100 = mul nsw i64 %99, -2
  %101 = getelementptr i8, ptr %94, i64 %100
  %102 = trunc nuw i64 %99 to i32
  %103 = sub i32 %91, %102
  %104 = insertelement <8 x i32> poison, i32 %90, i64 0
  %105 = shufflevector <8 x i32> %104, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %106

106:                                              ; preds = %106, %98
  %107 = phi i64 [ 0, %98 ], [ %115, %106 ]
  %108 = mul i64 %107, -2
  %109 = getelementptr i8, ptr %94, i64 %108
  %110 = getelementptr inbounds i8, ptr %109, i64 -16
  %111 = load <8 x i16>, ptr %110, align 2, !tbaa !62
  %112 = zext <8 x i16> %111 to <8 x i32>
  %113 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %112, <8 x i32> %105)
  %114 = trunc nuw <8 x i32> %113 to <8 x i16>
  store <8 x i16> %114, ptr %110, align 2, !tbaa !62
  %115 = add nuw i64 %107, 8
  %116 = icmp eq i64 %115, %99
  br i1 %116, label %117, label %106, !llvm.loop !135

117:                                              ; preds = %106
  %118 = icmp eq i64 %99, %93
  br i1 %118, label %138, label %119

119:                                              ; preds = %117, %96
  %120 = phi ptr [ %94, %96 ], [ %101, %117 ]
  %121 = phi i32 [ %91, %96 ], [ %103, %117 ]
  br label %128

122:                                              ; preds = %89
  %123 = getelementptr inbounds i8, ptr %94, i64 -2
  %124 = load i16, ptr %123, align 2, !tbaa !62
  %125 = zext i16 %124 to i32
  %126 = tail call i32 @llvm.usub.sat.i32(i32 %125, i32 %90)
  %127 = trunc nuw i32 %126 to i16
  store i16 %127, ptr %123, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

128:                                              ; preds = %128, %119
  %129 = phi ptr [ %131, %128 ], [ %120, %119 ]
  %130 = phi i32 [ %136, %128 ], [ %121, %119 ]
  %131 = getelementptr inbounds i8, ptr %129, i64 -2
  %132 = load i16, ptr %131, align 2, !tbaa !62
  %133 = zext i16 %132 to i32
  %134 = tail call i32 @llvm.usub.sat.i32(i32 %133, i32 %90)
  %135 = trunc nuw i32 %134 to i16
  store i16 %135, ptr %131, align 2, !tbaa !62
  %136 = add i32 %130, -1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %128, !llvm.loop !136

138:                                              ; preds = %128, %117
  %139 = icmp eq i32 %90, 0
  br i1 %139, label %140, label %141, !prof !46, !nosanitize !45

140:                                              ; preds = %138
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

141:                                              ; preds = %138
  %142 = load ptr, ptr %13, align 8, !tbaa !35
  %143 = zext i32 %90 to i64
  %144 = getelementptr inbounds nuw [2 x i8], ptr %142, i64 %143
  %145 = icmp ult i32 %90, 8
  br i1 %145, label %167, label %146

146:                                              ; preds = %141
  %147 = and i64 %143, 4294967288
  %148 = mul nsw i64 %147, -2
  %149 = getelementptr i8, ptr %144, i64 %148
  %150 = trunc nuw i64 %147 to i32
  %151 = sub i32 %90, %150
  %152 = insertelement <8 x i32> poison, i32 %90, i64 0
  %153 = shufflevector <8 x i32> %152, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %154

154:                                              ; preds = %154, %146
  %155 = phi i64 [ 0, %146 ], [ %163, %154 ]
  %156 = mul i64 %155, -2
  %157 = getelementptr i8, ptr %144, i64 %156
  %158 = getelementptr inbounds i8, ptr %157, i64 -16
  %159 = load <8 x i16>, ptr %158, align 2, !tbaa !62
  %160 = zext <8 x i16> %159 to <8 x i32>
  %161 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %160, <8 x i32> %153)
  %162 = trunc nuw <8 x i32> %161 to <8 x i16>
  store <8 x i16> %162, ptr %158, align 2, !tbaa !62
  %163 = add nuw i64 %155, 8
  %164 = icmp eq i64 %163, %147
  br i1 %164, label %165, label %154, !llvm.loop !137

165:                                              ; preds = %154
  %166 = icmp eq i64 %147, %143
  br i1 %166, label %180, label %167

167:                                              ; preds = %165, %141
  %168 = phi ptr [ %144, %141 ], [ %149, %165 ]
  %169 = phi i32 [ %90, %141 ], [ %151, %165 ]
  br label %170

170:                                              ; preds = %170, %167
  %171 = phi ptr [ %173, %170 ], [ %168, %167 ]
  %172 = phi i32 [ %178, %170 ], [ %169, %167 ]
  %173 = getelementptr inbounds i8, ptr %171, i64 -2
  %174 = load i16, ptr %173, align 2, !tbaa !62
  %175 = zext i16 %174 to i32
  %176 = tail call i32 @llvm.usub.sat.i32(i32 %175, i32 %90)
  %177 = trunc nuw i32 %176 to i16
  store i16 %177, ptr %173, align 2, !tbaa !62
  %178 = add i32 %172, -1
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %170, !llvm.loop !138

180:                                              ; preds = %170, %165
  store i32 1, ptr %14, align 8, !tbaa !63
  %181 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %47, i32 %29), !nosanitize !45
  %182 = extractvalue { i32, i1 } %181, 1, !nosanitize !45
  br i1 %182, label %183, label %184, !prof !46, !nosanitize !45

183:                                              ; preds = %180
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

184:                                              ; preds = %180
  %185 = extractvalue { i32, i1 } %181, 0, !nosanitize !45
  %186 = load i32, ptr %3, align 4, !tbaa !75
  br label %187

187:                                              ; preds = %184, %57
  %188 = phi i32 [ %186, %184 ], [ %32, %57 ]
  %189 = phi i32 [ %80, %184 ], [ %40, %57 ]
  %190 = phi i32 [ %185, %184 ], [ %47, %57 ]
  %191 = load ptr, ptr %0, align 8, !tbaa !20
  %192 = getelementptr inbounds nuw i8, ptr %191, i64 8
  %193 = load i32, ptr %192, align 8, !tbaa !81
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %318, label %195

195:                                              ; preds = %187
  %196 = load ptr, ptr %7, align 8, !tbaa !34
  %197 = zext i32 %189 to i64
  %198 = getelementptr inbounds nuw i8, ptr %196, i64 %197
  %199 = zext i32 %188 to i64
  %200 = getelementptr inbounds nuw i8, ptr %198, i64 %199
  %201 = tail call i32 @llvm.umin.i32(i32 %193, i32 %190)
  %202 = icmp eq i32 %190, 0
  br i1 %202, label %234, label %203

203:                                              ; preds = %195
  %204 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %193, i32 %201), !nosanitize !45
  %205 = extractvalue { i32, i1 } %204, 1, !nosanitize !45
  br i1 %205, label %206, label %207, !prof !46, !nosanitize !45

206:                                              ; preds = %203
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

207:                                              ; preds = %203
  %208 = extractvalue { i32, i1 } %204, 0, !nosanitize !45
  store i32 %208, ptr %192, align 8, !tbaa !81
  %209 = load ptr, ptr %191, align 8, !tbaa !82
  %210 = zext i32 %201 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %200, ptr align 1 %209, i64 %210, i1 false)
  %211 = getelementptr inbounds nuw i8, ptr %191, i64 56
  %212 = load ptr, ptr %211, align 8, !tbaa !19
  %213 = getelementptr inbounds nuw i8, ptr %212, i64 48
  %214 = load i32, ptr %213, align 8, !tbaa !30
  switch i32 %214, label %223 [
    i32 1, label %215
    i32 2, label %219
  ]

215:                                              ; preds = %207
  %216 = getelementptr inbounds nuw i8, ptr %191, i64 96
  %217 = load i64, ptr %216, align 8, !tbaa !59
  %218 = tail call i64 @adler32(i64 noundef %217, ptr noundef %200, i32 noundef %201) #10
  store i64 %218, ptr %216, align 8, !tbaa !59
  br label %223

219:                                              ; preds = %207
  %220 = getelementptr inbounds nuw i8, ptr %191, i64 96
  %221 = load i64, ptr %220, align 8, !tbaa !59
  %222 = tail call i64 @crc32(i64 noundef %221, ptr noundef %200, i32 noundef %201) #10
  store i64 %222, ptr %220, align 8, !tbaa !59
  br label %223

223:                                              ; preds = %219, %215, %207
  %224 = load ptr, ptr %191, align 8, !tbaa !82
  %225 = getelementptr inbounds nuw i8, ptr %224, i64 %210
  store ptr %225, ptr %191, align 8, !tbaa !82
  %226 = getelementptr inbounds nuw i8, ptr %191, i64 16
  %227 = load i64, ptr %226, align 8, !tbaa !55
  %228 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %227, i64 %210), !nosanitize !45
  %229 = extractvalue { i64, i1 } %228, 1, !nosanitize !45
  br i1 %229, label %230, label %231, !prof !46, !nosanitize !45

230:                                              ; preds = %223
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

231:                                              ; preds = %223
  %232 = extractvalue { i64, i1 } %228, 0, !nosanitize !45
  store i64 %232, ptr %226, align 8, !tbaa !55
  %233 = load i32, ptr %3, align 4, !tbaa !75
  br label %234

234:                                              ; preds = %231, %195
  %235 = phi i32 [ %188, %195 ], [ %233, %231 ]
  %236 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %235, i32 %201), !nosanitize !45
  %237 = extractvalue { i32, i1 } %236, 1, !nosanitize !45
  br i1 %237, label %238, label %239, !prof !46, !nosanitize !45

238:                                              ; preds = %234
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

239:                                              ; preds = %234
  %240 = extractvalue { i32, i1 } %236, 0, !nosanitize !45
  store i32 %240, ptr %3, align 4, !tbaa !75
  %241 = load i32, ptr %10, align 4, !tbaa !76
  %242 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %240, i32 %241), !nosanitize !45
  %243 = extractvalue { i32, i1 } %242, 1, !nosanitize !45
  br i1 %243, label %244, label %245, !prof !46, !nosanitize !45

244:                                              ; preds = %239
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

245:                                              ; preds = %239
  %246 = extractvalue { i32, i1 } %242, 0, !nosanitize !45
  %247 = icmp ugt i32 %246, 2
  br i1 %247, label %248, label %311

248:                                              ; preds = %245
  %249 = load i32, ptr %6, align 4, !tbaa !73
  %250 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %249, i32 %241), !nosanitize !45
  %251 = extractvalue { i32, i1 } %250, 0, !nosanitize !45
  %252 = extractvalue { i32, i1 } %250, 1, !nosanitize !45
  br i1 %252, label %253, label %254, !prof !46, !nosanitize !45

253:                                              ; preds = %248
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

254:                                              ; preds = %248
  %255 = load ptr, ptr %7, align 8, !tbaa !34
  %256 = zext i32 %251 to i64
  %257 = getelementptr inbounds nuw i8, ptr %255, i64 %256
  %258 = load i8, ptr %257, align 1, !tbaa !8
  %259 = zext i8 %258 to i32
  store i32 %259, ptr %15, align 8, !tbaa !80
  %260 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %251, i32 1), !nosanitize !45
  %261 = extractvalue { i32, i1 } %260, 1, !nosanitize !45
  br i1 %261, label %262, label %263, !prof !46, !nosanitize !45

262:                                              ; preds = %254
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

263:                                              ; preds = %254
  %264 = extractvalue { i32, i1 } %260, 0, !nosanitize !45
  %265 = load i32, ptr %16, align 8, !tbaa !53
  %266 = shl i32 %259, %265
  %267 = zext i32 %264 to i64
  %268 = getelementptr inbounds nuw i8, ptr %255, i64 %267
  %269 = load i8, ptr %268, align 1, !tbaa !8
  %270 = zext i8 %269 to i32
  %271 = xor i32 %266, %270
  %272 = load i32, ptr %17, align 4, !tbaa !52
  %273 = and i32 %271, %272
  store i32 %273, ptr %15, align 8, !tbaa !80
  br label %274

274:                                              ; preds = %307, %263
  %275 = phi i32 [ %273, %263 ], [ %292, %307 ]
  %276 = phi i32 [ %241, %263 ], [ %303, %307 ]
  %277 = phi i32 [ %251, %263 ], [ %308, %307 ]
  %278 = icmp eq i32 %276, 0
  br i1 %278, label %311, label %279

279:                                              ; preds = %274
  %280 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %277, i32 3), !nosanitize !45
  %281 = extractvalue { i32, i1 } %280, 1, !nosanitize !45
  br i1 %281, label %282, label %283, !prof !46, !nosanitize !45

282:                                              ; preds = %279
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

283:                                              ; preds = %279
  %284 = shl i32 %275, %265
  %285 = extractvalue { i32, i1 } %280, 0, !nosanitize !45
  %286 = add i32 %285, -1
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds nuw i8, ptr %255, i64 %287
  %289 = load i8, ptr %288, align 1, !tbaa !8
  %290 = zext i8 %289 to i32
  %291 = xor i32 %284, %290
  %292 = and i32 %291, %272
  store i32 %292, ptr %15, align 8, !tbaa !80
  %293 = load ptr, ptr %12, align 8, !tbaa !37
  %294 = zext i32 %292 to i64
  %295 = getelementptr inbounds nuw [2 x i8], ptr %293, i64 %294
  %296 = load i16, ptr %295, align 2, !tbaa !62
  %297 = load ptr, ptr %13, align 8, !tbaa !35
  %298 = load i32, ptr %18, align 8, !tbaa !33
  %299 = and i32 %298, %277
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds nuw [2 x i8], ptr %297, i64 %300
  store i16 %296, ptr %301, align 2, !tbaa !62
  %302 = trunc i32 %277 to i16
  store i16 %302, ptr %295, align 2, !tbaa !62
  %303 = add i32 %276, -1
  store i32 %303, ptr %10, align 4, !tbaa !76
  %304 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %240, i32 %303), !nosanitize !45
  %305 = extractvalue { i32, i1 } %304, 1, !nosanitize !45
  br i1 %305, label %306, label %307, !prof !46, !nosanitize !45

306:                                              ; preds = %283
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

307:                                              ; preds = %283
  %308 = add nuw i32 %277, 1
  %309 = extractvalue { i32, i1 } %304, 0, !nosanitize !45
  %310 = icmp ult i32 %309, 3
  br i1 %310, label %311, label %274, !llvm.loop !91

311:                                              ; preds = %307, %274, %245
  %312 = icmp ult i32 %240, 262
  br i1 %312, label %313, label %318

313:                                              ; preds = %311
  %314 = load ptr, ptr %0, align 8, !tbaa !20
  %315 = getelementptr inbounds nuw i8, ptr %314, i64 8
  %316 = load i32, ptr %315, align 8, !tbaa !81
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %31, !llvm.loop !92

318:                                              ; preds = %313, %311, %187
  %319 = phi i32 [ %240, %313 ], [ %240, %311 ], [ %188, %187 ]
  %320 = load i64, ptr %19, align 8, !tbaa !38
  %321 = load i64, ptr %5, align 8, !tbaa !61
  %322 = icmp ult i64 %320, %321
  br i1 %322, label %323, label %362

323:                                              ; preds = %318
  %324 = load i32, ptr %6, align 4, !tbaa !73
  %325 = zext i32 %324 to i64
  %326 = zext i32 %319 to i64
  %327 = add nuw nsw i64 %326, %325
  %328 = icmp ult i64 %320, %327
  br i1 %328, label %329, label %339

329:                                              ; preds = %323
  %330 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %321, i64 %327), !nosanitize !45
  %331 = extractvalue { i64, i1 } %330, 1, !nosanitize !45
  br i1 %331, label %332, label %333, !prof !46, !nosanitize !45

332:                                              ; preds = %329
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

333:                                              ; preds = %329
  %334 = extractvalue { i64, i1 } %330, 0, !nosanitize !45
  %335 = tail call i64 @llvm.umin.i64(i64 %334, i64 258)
  %336 = load ptr, ptr %7, align 8, !tbaa !34
  %337 = getelementptr inbounds nuw i8, ptr %336, i64 %327
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %337, i8 0, i64 %335, i1 false)
  %338 = add nuw nsw i64 %335, %327
  br label %359

339:                                              ; preds = %323
  %340 = add nuw nsw i64 %327, 258
  %341 = icmp ult i64 %320, %340
  br i1 %341, label %342, label %362

342:                                              ; preds = %339
  %343 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %321, i64 %320), !nosanitize !45
  %344 = extractvalue { i64, i1 } %343, 1, !nosanitize !45
  br i1 %344, label %345, label %346, !prof !46, !nosanitize !45

345:                                              ; preds = %342
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

346:                                              ; preds = %342
  %347 = sub nuw nsw i64 %340, %320
  %348 = extractvalue { i64, i1 } %343, 0, !nosanitize !45
  %349 = tail call i64 @llvm.umin.i64(i64 %347, i64 %348)
  %350 = load ptr, ptr %7, align 8, !tbaa !34
  %351 = getelementptr inbounds nuw i8, ptr %350, i64 %320
  %352 = and i64 %349, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %351, i8 0, i64 %352, i1 false)
  %353 = load i64, ptr %19, align 8, !tbaa !38
  %354 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %353, i64 %349), !nosanitize !45
  %355 = extractvalue { i64, i1 } %354, 1, !nosanitize !45
  br i1 %355, label %356, label %357, !prof !46, !nosanitize !45

356:                                              ; preds = %346
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

357:                                              ; preds = %346
  %358 = extractvalue { i64, i1 } %354, 0, !nosanitize !45
  br label %359

359:                                              ; preds = %357, %333
  %360 = phi i64 [ %338, %333 ], [ %358, %357 ]
  store i64 %360, ptr %19, align 8, !tbaa !38
  %361 = load i32, ptr %3, align 4, !tbaa !75
  br label %362

362:                                              ; preds = %359, %339, %318
  %363 = phi i32 [ %319, %318 ], [ %319, %339 ], [ %361, %359 ]
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %362
  %366 = icmp eq i32 %1, 0
  br i1 %366, label %621, label %484

367:                                              ; preds = %362, %25
  store i32 0, ptr %20, align 8, !tbaa !78
  %368 = load ptr, ptr %7, align 8, !tbaa !34
  %369 = load i32, ptr %6, align 4, !tbaa !73
  %370 = zext i32 %369 to i64
  %371 = getelementptr inbounds nuw i8, ptr %368, i64 %370
  %372 = load i8, ptr %371, align 1, !tbaa !8
  %373 = load i32, ptr %22, align 4, !tbaa !139
  %374 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %373, i32 1), !nosanitize !45
  %375 = extractvalue { i32, i1 } %374, 1, !nosanitize !45
  br i1 %375, label %376, label %377, !prof !46, !nosanitize !45

376:                                              ; preds = %367
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

377:                                              ; preds = %367
  %378 = extractvalue { i32, i1 } %374, 0, !nosanitize !45
  %379 = load ptr, ptr %21, align 8, !tbaa !44
  store i32 %378, ptr %22, align 4, !tbaa !139
  %380 = zext i32 %373 to i64
  %381 = getelementptr inbounds nuw i8, ptr %379, i64 %380
  store i8 0, ptr %381, align 1, !tbaa !8
  %382 = load i32, ptr %22, align 4, !tbaa !139
  %383 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %382, i32 1), !nosanitize !45
  %384 = extractvalue { i32, i1 } %383, 1, !nosanitize !45
  br i1 %384, label %385, label %386, !prof !46, !nosanitize !45

385:                                              ; preds = %377
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

386:                                              ; preds = %377
  %387 = extractvalue { i32, i1 } %383, 0, !nosanitize !45
  %388 = load ptr, ptr %21, align 8, !tbaa !44
  store i32 %387, ptr %22, align 4, !tbaa !139
  %389 = zext i32 %382 to i64
  %390 = getelementptr inbounds nuw i8, ptr %388, i64 %389
  store i8 0, ptr %390, align 1, !tbaa !8
  %391 = load i32, ptr %22, align 4, !tbaa !139
  %392 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %391, i32 1), !nosanitize !45
  %393 = extractvalue { i32, i1 } %392, 1, !nosanitize !45
  br i1 %393, label %394, label %395, !prof !46, !nosanitize !45

394:                                              ; preds = %386
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

395:                                              ; preds = %386
  %396 = extractvalue { i32, i1 } %392, 0, !nosanitize !45
  %397 = load ptr, ptr %21, align 8, !tbaa !44
  store i32 %396, ptr %22, align 4, !tbaa !139
  %398 = zext i32 %391 to i64
  %399 = getelementptr inbounds nuw i8, ptr %397, i64 %398
  store i8 %372, ptr %399, align 1, !tbaa !8
  %400 = zext i8 %372 to i64
  %401 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %400
  %402 = load i16, ptr %401, align 4, !tbaa !8
  %403 = add i16 %402, 1
  store i16 %403, ptr %401, align 4, !tbaa !8
  %404 = load i32, ptr %22, align 4, !tbaa !139
  %405 = load i32, ptr %24, align 8, !tbaa !47
  %406 = icmp eq i32 %404, %405
  %407 = load i32, ptr %3, align 4, !tbaa !75
  %408 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %407, i32 1), !nosanitize !45
  %409 = extractvalue { i32, i1 } %408, 1, !nosanitize !45
  br i1 %409, label %410, label %411, !prof !46, !nosanitize !45

410:                                              ; preds = %562, %493, %426, %395
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

411:                                              ; preds = %395
  %412 = extractvalue { i32, i1 } %408, 0, !nosanitize !45
  store i32 %412, ptr %3, align 4, !tbaa !75
  %413 = load i32, ptr %6, align 4, !tbaa !73
  %414 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %413, i32 1), !nosanitize !45
  %415 = extractvalue { i32, i1 } %414, 1, !nosanitize !45
  br i1 %415, label %416, label %417, !prof !46, !nosanitize !45

416:                                              ; preds = %411
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

417:                                              ; preds = %411
  %418 = extractvalue { i32, i1 } %414, 0, !nosanitize !45
  store i32 %418, ptr %6, align 4, !tbaa !73
  br i1 %406, label %419, label %483

419:                                              ; preds = %417
  %420 = load i64, ptr %9, align 8, !tbaa !74
  %421 = icmp sgt i64 %420, -1
  br i1 %421, label %422, label %426

422:                                              ; preds = %419
  %423 = load ptr, ptr %7, align 8, !tbaa !34
  %424 = and i64 %420, 4294967295
  %425 = getelementptr inbounds nuw i8, ptr %423, i64 %424
  br label %426

426:                                              ; preds = %422, %419
  %427 = phi ptr [ %425, %422 ], [ null, %419 ]
  %428 = zext i32 %418 to i64
  %429 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %428, i64 %420), !nosanitize !45
  %430 = extractvalue { i64, i1 } %429, 1, !nosanitize !45
  br i1 %430, label %410, label %431, !prof !46, !nosanitize !45

431:                                              ; preds = %426
  %432 = extractvalue { i64, i1 } %429, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %427, i64 noundef %432, i32 noundef 0) #10
  %433 = load i32, ptr %6, align 4, !tbaa !73
  %434 = zext i32 %433 to i64
  store i64 %434, ptr %9, align 8, !tbaa !74
  %435 = load ptr, ptr %0, align 8, !tbaa !20
  %436 = getelementptr inbounds nuw i8, ptr %435, i64 56
  %437 = load ptr, ptr %436, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %437) #10
  %438 = getelementptr inbounds nuw i8, ptr %437, i64 40
  %439 = load i64, ptr %438, align 8, !tbaa !57
  %440 = getelementptr inbounds nuw i8, ptr %435, i64 32
  %441 = load i32, ptr %440, align 8, !tbaa !107
  %442 = zext i32 %441 to i64
  %443 = tail call i64 @llvm.umin.i64(i64 %439, i64 %442)
  %444 = trunc nuw i64 %443 to i32
  %445 = icmp eq i64 %443, 0
  br i1 %445, label %478, label %446

446:                                              ; preds = %431
  %447 = getelementptr inbounds nuw i8, ptr %435, i64 24
  %448 = load ptr, ptr %447, align 8, !tbaa !106
  %449 = getelementptr inbounds nuw i8, ptr %437, i64 32
  %450 = load ptr, ptr %449, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %448, ptr align 1 %450, i64 %443, i1 false)
  %451 = load ptr, ptr %447, align 8, !tbaa !106
  %452 = getelementptr inbounds nuw i8, ptr %451, i64 %443
  store ptr %452, ptr %447, align 8, !tbaa !106
  %453 = load ptr, ptr %449, align 8, !tbaa !58
  %454 = getelementptr inbounds nuw i8, ptr %453, i64 %443
  store ptr %454, ptr %449, align 8, !tbaa !58
  %455 = getelementptr inbounds nuw i8, ptr %435, i64 40
  %456 = load i64, ptr %455, align 8, !tbaa !108
  %457 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %456, i64 %443), !nosanitize !45
  %458 = extractvalue { i64, i1 } %457, 1, !nosanitize !45
  br i1 %458, label %459, label %460, !prof !46, !nosanitize !45

459:                                              ; preds = %446
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

460:                                              ; preds = %446
  %461 = extractvalue { i64, i1 } %457, 0, !nosanitize !45
  store i64 %461, ptr %455, align 8, !tbaa !108
  %462 = load i32, ptr %440, align 8, !tbaa !107
  %463 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %462, i32 %444), !nosanitize !45
  %464 = extractvalue { i32, i1 } %463, 1, !nosanitize !45
  br i1 %464, label %465, label %466, !prof !46, !nosanitize !45

465:                                              ; preds = %460
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

466:                                              ; preds = %460
  %467 = extractvalue { i32, i1 } %463, 0, !nosanitize !45
  store i32 %467, ptr %440, align 8, !tbaa !107
  %468 = load i64, ptr %438, align 8, !tbaa !57
  %469 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %468, i64 %443), !nosanitize !45
  %470 = extractvalue { i64, i1 } %469, 1, !nosanitize !45
  br i1 %470, label %471, label %472, !prof !46, !nosanitize !45

471:                                              ; preds = %466
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

472:                                              ; preds = %466
  %473 = extractvalue { i64, i1 } %469, 0, !nosanitize !45
  store i64 %473, ptr %438, align 8, !tbaa !57
  %474 = icmp eq i64 %473, 0
  br i1 %474, label %475, label %478

475:                                              ; preds = %472
  %476 = getelementptr inbounds nuw i8, ptr %437, i64 16
  %477 = load ptr, ptr %476, align 8, !tbaa !40
  store ptr %477, ptr %449, align 8, !tbaa !58
  br label %478

478:                                              ; preds = %475, %472, %431
  %479 = load ptr, ptr %0, align 8, !tbaa !20
  %480 = getelementptr inbounds nuw i8, ptr %479, i64 32
  %481 = load i32, ptr %480, align 8, !tbaa !107
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %621, label %483

483:                                              ; preds = %478, %417
  br label %25

484:                                              ; preds = %365
  store i32 0, ptr %10, align 4, !tbaa !76
  %485 = icmp eq i32 %1, 4
  br i1 %485, label %486, label %552

486:                                              ; preds = %484
  %487 = load i64, ptr %9, align 8, !tbaa !74
  %488 = icmp sgt i64 %487, -1
  br i1 %488, label %489, label %493

489:                                              ; preds = %486
  %490 = load ptr, ptr %7, align 8, !tbaa !34
  %491 = and i64 %487, 4294967295
  %492 = getelementptr inbounds nuw i8, ptr %490, i64 %491
  br label %493

493:                                              ; preds = %489, %486
  %494 = phi ptr [ %492, %489 ], [ null, %486 ]
  %495 = load i32, ptr %6, align 4, !tbaa !73
  %496 = zext i32 %495 to i64
  %497 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %496, i64 %487), !nosanitize !45
  %498 = extractvalue { i64, i1 } %497, 1, !nosanitize !45
  br i1 %498, label %410, label %499, !prof !46, !nosanitize !45

499:                                              ; preds = %493
  %500 = extractvalue { i64, i1 } %497, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %494, i64 noundef %500, i32 noundef 1) #10
  %501 = load i32, ptr %6, align 4, !tbaa !73
  %502 = zext i32 %501 to i64
  store i64 %502, ptr %9, align 8, !tbaa !74
  %503 = load ptr, ptr %0, align 8, !tbaa !20
  %504 = getelementptr inbounds nuw i8, ptr %503, i64 56
  %505 = load ptr, ptr %504, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %505) #10
  %506 = getelementptr inbounds nuw i8, ptr %505, i64 40
  %507 = load i64, ptr %506, align 8, !tbaa !57
  %508 = getelementptr inbounds nuw i8, ptr %503, i64 32
  %509 = load i32, ptr %508, align 8, !tbaa !107
  %510 = zext i32 %509 to i64
  %511 = tail call i64 @llvm.umin.i64(i64 %507, i64 %510)
  %512 = trunc nuw i64 %511 to i32
  %513 = icmp eq i64 %511, 0
  br i1 %513, label %546, label %514

514:                                              ; preds = %499
  %515 = getelementptr inbounds nuw i8, ptr %503, i64 24
  %516 = load ptr, ptr %515, align 8, !tbaa !106
  %517 = getelementptr inbounds nuw i8, ptr %505, i64 32
  %518 = load ptr, ptr %517, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %516, ptr align 1 %518, i64 %511, i1 false)
  %519 = load ptr, ptr %515, align 8, !tbaa !106
  %520 = getelementptr inbounds nuw i8, ptr %519, i64 %511
  store ptr %520, ptr %515, align 8, !tbaa !106
  %521 = load ptr, ptr %517, align 8, !tbaa !58
  %522 = getelementptr inbounds nuw i8, ptr %521, i64 %511
  store ptr %522, ptr %517, align 8, !tbaa !58
  %523 = getelementptr inbounds nuw i8, ptr %503, i64 40
  %524 = load i64, ptr %523, align 8, !tbaa !108
  %525 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %524, i64 %511), !nosanitize !45
  %526 = extractvalue { i64, i1 } %525, 1, !nosanitize !45
  br i1 %526, label %527, label %528, !prof !46, !nosanitize !45

527:                                              ; preds = %514
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

528:                                              ; preds = %514
  %529 = extractvalue { i64, i1 } %525, 0, !nosanitize !45
  store i64 %529, ptr %523, align 8, !tbaa !108
  %530 = load i32, ptr %508, align 8, !tbaa !107
  %531 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %530, i32 %512), !nosanitize !45
  %532 = extractvalue { i32, i1 } %531, 1, !nosanitize !45
  br i1 %532, label %533, label %534, !prof !46, !nosanitize !45

533:                                              ; preds = %528
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

534:                                              ; preds = %528
  %535 = extractvalue { i32, i1 } %531, 0, !nosanitize !45
  store i32 %535, ptr %508, align 8, !tbaa !107
  %536 = load i64, ptr %506, align 8, !tbaa !57
  %537 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %536, i64 %511), !nosanitize !45
  %538 = extractvalue { i64, i1 } %537, 1, !nosanitize !45
  br i1 %538, label %539, label %540, !prof !46, !nosanitize !45

539:                                              ; preds = %534
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

540:                                              ; preds = %534
  %541 = extractvalue { i64, i1 } %537, 0, !nosanitize !45
  store i64 %541, ptr %506, align 8, !tbaa !57
  %542 = icmp eq i64 %541, 0
  br i1 %542, label %543, label %546

543:                                              ; preds = %540
  %544 = getelementptr inbounds nuw i8, ptr %505, i64 16
  %545 = load ptr, ptr %544, align 8, !tbaa !40
  store ptr %545, ptr %517, align 8, !tbaa !58
  br label %546

546:                                              ; preds = %543, %540, %499
  %547 = load ptr, ptr %0, align 8, !tbaa !20
  %548 = getelementptr inbounds nuw i8, ptr %547, i64 32
  %549 = load i32, ptr %548, align 8, !tbaa !107
  %550 = icmp eq i32 %549, 0
  %551 = select i1 %550, i32 2, i32 3
  br label %621

552:                                              ; preds = %484
  %553 = load i32, ptr %22, align 4, !tbaa !139
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %620, label %555

555:                                              ; preds = %552
  %556 = load i64, ptr %9, align 8, !tbaa !74
  %557 = icmp sgt i64 %556, -1
  br i1 %557, label %558, label %562

558:                                              ; preds = %555
  %559 = load ptr, ptr %7, align 8, !tbaa !34
  %560 = and i64 %556, 4294967295
  %561 = getelementptr inbounds nuw i8, ptr %559, i64 %560
  br label %562

562:                                              ; preds = %558, %555
  %563 = phi ptr [ %561, %558 ], [ null, %555 ]
  %564 = load i32, ptr %6, align 4, !tbaa !73
  %565 = zext i32 %564 to i64
  %566 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %565, i64 %556), !nosanitize !45
  %567 = extractvalue { i64, i1 } %566, 1, !nosanitize !45
  br i1 %567, label %410, label %568, !prof !46, !nosanitize !45

568:                                              ; preds = %562
  %569 = extractvalue { i64, i1 } %566, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %563, i64 noundef %569, i32 noundef 0) #10
  %570 = load i32, ptr %6, align 4, !tbaa !73
  %571 = zext i32 %570 to i64
  store i64 %571, ptr %9, align 8, !tbaa !74
  %572 = load ptr, ptr %0, align 8, !tbaa !20
  %573 = getelementptr inbounds nuw i8, ptr %572, i64 56
  %574 = load ptr, ptr %573, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %574) #10
  %575 = getelementptr inbounds nuw i8, ptr %574, i64 40
  %576 = load i64, ptr %575, align 8, !tbaa !57
  %577 = getelementptr inbounds nuw i8, ptr %572, i64 32
  %578 = load i32, ptr %577, align 8, !tbaa !107
  %579 = zext i32 %578 to i64
  %580 = tail call i64 @llvm.umin.i64(i64 %576, i64 %579)
  %581 = trunc nuw i64 %580 to i32
  %582 = icmp eq i64 %580, 0
  br i1 %582, label %615, label %583

583:                                              ; preds = %568
  %584 = getelementptr inbounds nuw i8, ptr %572, i64 24
  %585 = load ptr, ptr %584, align 8, !tbaa !106
  %586 = getelementptr inbounds nuw i8, ptr %574, i64 32
  %587 = load ptr, ptr %586, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %585, ptr align 1 %587, i64 %580, i1 false)
  %588 = load ptr, ptr %584, align 8, !tbaa !106
  %589 = getelementptr inbounds nuw i8, ptr %588, i64 %580
  store ptr %589, ptr %584, align 8, !tbaa !106
  %590 = load ptr, ptr %586, align 8, !tbaa !58
  %591 = getelementptr inbounds nuw i8, ptr %590, i64 %580
  store ptr %591, ptr %586, align 8, !tbaa !58
  %592 = getelementptr inbounds nuw i8, ptr %572, i64 40
  %593 = load i64, ptr %592, align 8, !tbaa !108
  %594 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %593, i64 %580), !nosanitize !45
  %595 = extractvalue { i64, i1 } %594, 1, !nosanitize !45
  br i1 %595, label %596, label %597, !prof !46, !nosanitize !45

596:                                              ; preds = %583
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

597:                                              ; preds = %583
  %598 = extractvalue { i64, i1 } %594, 0, !nosanitize !45
  store i64 %598, ptr %592, align 8, !tbaa !108
  %599 = load i32, ptr %577, align 8, !tbaa !107
  %600 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %599, i32 %581), !nosanitize !45
  %601 = extractvalue { i32, i1 } %600, 1, !nosanitize !45
  br i1 %601, label %602, label %603, !prof !46, !nosanitize !45

602:                                              ; preds = %597
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

603:                                              ; preds = %597
  %604 = extractvalue { i32, i1 } %600, 0, !nosanitize !45
  store i32 %604, ptr %577, align 8, !tbaa !107
  %605 = load i64, ptr %575, align 8, !tbaa !57
  %606 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %605, i64 %580), !nosanitize !45
  %607 = extractvalue { i64, i1 } %606, 1, !nosanitize !45
  br i1 %607, label %608, label %609, !prof !46, !nosanitize !45

608:                                              ; preds = %603
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

609:                                              ; preds = %603
  %610 = extractvalue { i64, i1 } %606, 0, !nosanitize !45
  store i64 %610, ptr %575, align 8, !tbaa !57
  %611 = icmp eq i64 %610, 0
  br i1 %611, label %612, label %615

612:                                              ; preds = %609
  %613 = getelementptr inbounds nuw i8, ptr %574, i64 16
  %614 = load ptr, ptr %613, align 8, !tbaa !40
  store ptr %614, ptr %586, align 8, !tbaa !58
  br label %615

615:                                              ; preds = %612, %609, %568
  %616 = load ptr, ptr %0, align 8, !tbaa !20
  %617 = getelementptr inbounds nuw i8, ptr %616, i64 32
  %618 = load i32, ptr %617, align 8, !tbaa !107
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %621, label %620

620:                                              ; preds = %615, %552
  br label %621

621:                                              ; preds = %620, %615, %546, %478, %365
  %622 = phi i32 [ 0, %365 ], [ %551, %546 ], [ 0, %615 ], [ 1, %620 ], [ 0, %478 ]
  ret i32 %622
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

28:                                               ; preds = %522, %2
  %29 = load i32, ptr %3, align 4, !tbaa !75
  %30 = icmp ult i32 %29, 259
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  store i32 0, ptr %4, align 8, !tbaa !78
  %32 = load i32, ptr %7, align 4, !tbaa !73
  br label %376

33:                                               ; preds = %28
  %34 = load i32, ptr %5, align 8, !tbaa !32
  %35 = zext i32 %34 to i64
  br label %36

36:                                               ; preds = %318, %33
  %37 = phi i32 [ %245, %318 ], [ %29, %33 ]
  %38 = load i64, ptr %6, align 8, !tbaa !61
  %39 = zext nneg i32 %37 to i64
  %40 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %38, i64 %39), !nosanitize !45
  %41 = extractvalue { i64, i1 } %40, 1, !nosanitize !45
  br i1 %41, label %42, label %43, !prof !46, !nosanitize !45

42:                                               ; preds = %36
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

43:                                               ; preds = %36
  %44 = extractvalue { i64, i1 } %40, 0, !nosanitize !45
  %45 = load i32, ptr %7, align 4, !tbaa !73
  %46 = zext i32 %45 to i64
  %47 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %44, i64 %46), !nosanitize !45
  %48 = extractvalue { i64, i1 } %47, 1, !nosanitize !45
  br i1 %48, label %49, label %50, !prof !46, !nosanitize !45

49:                                               ; preds = %43
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

50:                                               ; preds = %43
  %51 = extractvalue { i64, i1 } %47, 0, !nosanitize !45
  %52 = trunc i64 %51 to i32
  %53 = load i32, ptr %5, align 8, !tbaa !32
  %54 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %53, i32 262), !nosanitize !45
  %55 = extractvalue { i32, i1 } %54, 1, !nosanitize !45
  br i1 %55, label %56, label %57, !prof !46, !nosanitize !45

56:                                               ; preds = %50
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

57:                                               ; preds = %50
  %58 = extractvalue { i32, i1 } %54, 0, !nosanitize !45
  %59 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %34, i32 %58), !nosanitize !45
  %60 = extractvalue { i32, i1 } %59, 1, !nosanitize !45
  br i1 %60, label %61, label %62, !prof !46, !nosanitize !45

61:                                               ; preds = %57
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

62:                                               ; preds = %57
  %63 = extractvalue { i32, i1 } %59, 0, !nosanitize !45
  %64 = icmp ult i32 %45, %63
  br i1 %64, label %192, label %65

65:                                               ; preds = %62
  %66 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %34, i32 %52), !nosanitize !45
  %67 = extractvalue { i32, i1 } %66, 1, !nosanitize !45
  br i1 %67, label %68, label %69, !prof !46, !nosanitize !45

68:                                               ; preds = %65
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

78:                                               ; preds = %69
  %79 = extractvalue { i32, i1 } %75, 0, !nosanitize !45
  store i32 %79, ptr %9, align 8, !tbaa !83
  %80 = load i32, ptr %7, align 4, !tbaa !73
  %81 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %80, i32 %34), !nosanitize !45
  %82 = extractvalue { i32, i1 } %81, 1, !nosanitize !45
  br i1 %82, label %83, label %84, !prof !46, !nosanitize !45

83:                                               ; preds = %84, %78
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

84:                                               ; preds = %78
  %85 = extractvalue { i32, i1 } %81, 0, !nosanitize !45
  store i32 %85, ptr %7, align 4, !tbaa !73
  %86 = load i64, ptr %10, align 8, !tbaa !74
  %87 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %86, i64 %35), !nosanitize !45
  %88 = extractvalue { i64, i1 } %87, 1, !nosanitize !45
  br i1 %88, label %83, label %89, !prof !46, !nosanitize !45

89:                                               ; preds = %84
  %90 = extractvalue { i64, i1 } %87, 0, !nosanitize !45
  store i64 %90, ptr %10, align 8, !tbaa !74
  %91 = load i32, ptr %11, align 4, !tbaa !76
  %92 = icmp ugt i32 %91, %85
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i32 %85, ptr %11, align 4, !tbaa !76
  br label %94

94:                                               ; preds = %93, %89
  %95 = load i32, ptr %5, align 8, !tbaa !32
  %96 = load i32, ptr %12, align 4, !tbaa !36
  %97 = load ptr, ptr %13, align 8, !tbaa !37
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
  br i1 %121, label %122, label %111, !llvm.loop !140

122:                                              ; preds = %111
  %123 = icmp eq i64 %104, %98
  br i1 %123, label %143, label %124

124:                                              ; preds = %122, %101
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

133:                                              ; preds = %133, %124
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
  br i1 %142, label %143, label %133, !llvm.loop !141

143:                                              ; preds = %133, %122
  %144 = icmp eq i32 %95, 0
  br i1 %144, label %145, label %146, !prof !46, !nosanitize !45

145:                                              ; preds = %143
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

146:                                              ; preds = %143
  %147 = load ptr, ptr %14, align 8, !tbaa !35
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
  br i1 %169, label %170, label %159, !llvm.loop !142

170:                                              ; preds = %159
  %171 = icmp eq i64 %152, %148
  br i1 %171, label %185, label %172

172:                                              ; preds = %170, %146
  %173 = phi ptr [ %149, %146 ], [ %154, %170 ]
  %174 = phi i32 [ %95, %146 ], [ %156, %170 ]
  br label %175

175:                                              ; preds = %175, %172
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
  br i1 %184, label %185, label %175, !llvm.loop !143

185:                                              ; preds = %175, %170
  store i32 1, ptr %15, align 8, !tbaa !63
  %186 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %52, i32 %34), !nosanitize !45
  %187 = extractvalue { i32, i1 } %186, 1, !nosanitize !45
  br i1 %187, label %188, label %189, !prof !46, !nosanitize !45

188:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

189:                                              ; preds = %185
  %190 = extractvalue { i32, i1 } %186, 0, !nosanitize !45
  %191 = load i32, ptr %3, align 4, !tbaa !75
  br label %192

192:                                              ; preds = %189, %62
  %193 = phi i32 [ %191, %189 ], [ %37, %62 ]
  %194 = phi i32 [ %85, %189 ], [ %45, %62 ]
  %195 = phi i32 [ %190, %189 ], [ %52, %62 ]
  %196 = load ptr, ptr %0, align 8, !tbaa !20
  %197 = getelementptr inbounds nuw i8, ptr %196, i64 8
  %198 = load i32, ptr %197, align 8, !tbaa !81
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %323, label %200

200:                                              ; preds = %192
  %201 = load ptr, ptr %8, align 8, !tbaa !34
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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
  %223 = tail call i64 @adler32(i64 noundef %222, ptr noundef %205, i32 noundef %206) #10
  store i64 %223, ptr %221, align 8, !tbaa !59
  br label %228

224:                                              ; preds = %212
  %225 = getelementptr inbounds nuw i8, ptr %196, i64 96
  %226 = load i64, ptr %225, align 8, !tbaa !59
  %227 = tail call i64 @crc32(i64 noundef %226, ptr noundef %205, i32 noundef %206) #10
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

244:                                              ; preds = %239
  %245 = extractvalue { i32, i1 } %241, 0, !nosanitize !45
  store i32 %245, ptr %3, align 4, !tbaa !75
  %246 = load i32, ptr %11, align 4, !tbaa !76
  %247 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %245, i32 %246), !nosanitize !45
  %248 = extractvalue { i32, i1 } %247, 1, !nosanitize !45
  br i1 %248, label %249, label %250, !prof !46, !nosanitize !45

249:                                              ; preds = %244
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

250:                                              ; preds = %244
  %251 = extractvalue { i32, i1 } %247, 0, !nosanitize !45
  %252 = icmp ugt i32 %251, 2
  br i1 %252, label %253, label %316

253:                                              ; preds = %250
  %254 = load i32, ptr %7, align 4, !tbaa !73
  %255 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %254, i32 %246), !nosanitize !45
  %256 = extractvalue { i32, i1 } %255, 0, !nosanitize !45
  %257 = extractvalue { i32, i1 } %255, 1, !nosanitize !45
  br i1 %257, label %258, label %259, !prof !46, !nosanitize !45

258:                                              ; preds = %253
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

259:                                              ; preds = %253
  %260 = load ptr, ptr %8, align 8, !tbaa !34
  %261 = zext i32 %256 to i64
  %262 = getelementptr inbounds nuw i8, ptr %260, i64 %261
  %263 = load i8, ptr %262, align 1, !tbaa !8
  %264 = zext i8 %263 to i32
  store i32 %264, ptr %16, align 8, !tbaa !80
  %265 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %256, i32 1), !nosanitize !45
  %266 = extractvalue { i32, i1 } %265, 1, !nosanitize !45
  br i1 %266, label %267, label %268, !prof !46, !nosanitize !45

267:                                              ; preds = %259
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

268:                                              ; preds = %259
  %269 = extractvalue { i32, i1 } %265, 0, !nosanitize !45
  %270 = load i32, ptr %17, align 8, !tbaa !53
  %271 = shl i32 %264, %270
  %272 = zext i32 %269 to i64
  %273 = getelementptr inbounds nuw i8, ptr %260, i64 %272
  %274 = load i8, ptr %273, align 1, !tbaa !8
  %275 = zext i8 %274 to i32
  %276 = xor i32 %271, %275
  %277 = load i32, ptr %18, align 4, !tbaa !52
  %278 = and i32 %276, %277
  store i32 %278, ptr %16, align 8, !tbaa !80
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  store i32 %297, ptr %16, align 8, !tbaa !80
  %298 = load ptr, ptr %13, align 8, !tbaa !37
  %299 = zext i32 %297 to i64
  %300 = getelementptr inbounds nuw [2 x i8], ptr %298, i64 %299
  %301 = load i16, ptr %300, align 2, !tbaa !62
  %302 = load ptr, ptr %14, align 8, !tbaa !35
  %303 = load i32, ptr %19, align 8, !tbaa !33
  %304 = and i32 %303, %282
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds nuw [2 x i8], ptr %302, i64 %305
  store i16 %301, ptr %306, align 2, !tbaa !62
  %307 = trunc i32 %282 to i16
  store i16 %307, ptr %300, align 2, !tbaa !62
  %308 = add i32 %281, -1
  store i32 %308, ptr %11, align 4, !tbaa !76
  %309 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %245, i32 %308), !nosanitize !45
  %310 = extractvalue { i32, i1 } %309, 1, !nosanitize !45
  br i1 %310, label %311, label %312, !prof !46, !nosanitize !45

311:                                              ; preds = %288
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  br i1 %322, label %323, label %36, !llvm.loop !92

323:                                              ; preds = %318, %316, %192
  %324 = phi i32 [ %245, %318 ], [ %245, %316 ], [ %193, %192 ]
  %325 = load i64, ptr %20, align 8, !tbaa !38
  %326 = load i64, ptr %6, align 8, !tbaa !61
  %327 = icmp ult i64 %325, %326
  br i1 %327, label %328, label %367

328:                                              ; preds = %323
  %329 = load i32, ptr %7, align 4, !tbaa !73
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

338:                                              ; preds = %334
  %339 = extractvalue { i64, i1 } %335, 0, !nosanitize !45
  %340 = tail call i64 @llvm.umin.i64(i64 %339, i64 258)
  %341 = load ptr, ptr %8, align 8, !tbaa !34
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

351:                                              ; preds = %347
  %352 = sub nuw nsw i64 %345, %325
  %353 = extractvalue { i64, i1 } %348, 0, !nosanitize !45
  %354 = tail call i64 @llvm.umin.i64(i64 %352, i64 %353)
  %355 = load ptr, ptr %8, align 8, !tbaa !34
  %356 = getelementptr inbounds nuw i8, ptr %355, i64 %325
  %357 = and i64 %354, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %356, i8 0, i64 %357, i1 false)
  %358 = load i64, ptr %20, align 8, !tbaa !38
  %359 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %358, i64 %354), !nosanitize !45
  %360 = extractvalue { i64, i1 } %359, 1, !nosanitize !45
  br i1 %360, label %361, label %362, !prof !46, !nosanitize !45

361:                                              ; preds = %351
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

362:                                              ; preds = %351
  %363 = extractvalue { i64, i1 } %359, 0, !nosanitize !45
  br label %364

364:                                              ; preds = %362, %338
  %365 = phi i64 [ %343, %338 ], [ %363, %362 ]
  store i64 %365, ptr %20, align 8, !tbaa !38
  %366 = load i32, ptr %3, align 4, !tbaa !75
  br label %367

367:                                              ; preds = %364, %344, %323
  %368 = phi i32 [ %324, %323 ], [ %324, %344 ], [ %366, %364 ]
  %369 = icmp ult i32 %368, 259
  %370 = and i1 %21, %369
  br i1 %370, label %780, label %371

371:                                              ; preds = %367
  %372 = icmp eq i32 %368, 0
  br i1 %372, label %643, label %373

373:                                              ; preds = %371
  store i32 0, ptr %4, align 8, !tbaa !78
  %374 = icmp ugt i32 %368, 2
  %375 = load i32, ptr %7, align 4, !tbaa !73
  br i1 %374, label %376, label %523

376:                                              ; preds = %373, %31
  %377 = phi i32 [ %32, %31 ], [ %375, %373 ]
  %378 = phi i32 [ %29, %31 ], [ %368, %373 ]
  %379 = icmp eq i32 %377, 0
  br i1 %379, label %523, label %380

380:                                              ; preds = %376
  %381 = load ptr, ptr %8, align 8, !tbaa !34
  %382 = zext i32 %377 to i64
  %383 = getelementptr inbounds nuw i8, ptr %381, i64 %382
  %384 = getelementptr inbounds i8, ptr %383, i64 -1
  %385 = load i8, ptr %384, align 1, !tbaa !8
  %386 = load i8, ptr %383, align 1, !tbaa !8
  %387 = icmp eq i8 %385, %386
  br i1 %387, label %388, label %523

388:                                              ; preds = %380
  %389 = getelementptr inbounds nuw i8, ptr %383, i64 1
  %390 = load i8, ptr %389, align 1, !tbaa !8
  %391 = icmp eq i8 %385, %390
  br i1 %391, label %392, label %523

392:                                              ; preds = %388
  %393 = getelementptr inbounds nuw i8, ptr %383, i64 2
  %394 = load i8, ptr %393, align 1, !tbaa !8
  %395 = icmp eq i8 %385, %394
  br i1 %395, label %396, label %523

396:                                              ; preds = %392
  %397 = getelementptr inbounds nuw i8, ptr %383, i64 258
  br label %398

398:                                              ; preds = %428, %396
  %399 = phi i64 [ 2, %396 ], [ %429, %428 ]
  %400 = getelementptr inbounds nuw i8, ptr %383, i64 %399
  %401 = getelementptr inbounds nuw i8, ptr %400, i64 1
  %402 = load i8, ptr %401, align 1, !tbaa !8
  %403 = icmp eq i8 %385, %402
  br i1 %403, label %404, label %435

404:                                              ; preds = %398
  %405 = getelementptr inbounds nuw i8, ptr %400, i64 2
  %406 = load i8, ptr %405, align 1, !tbaa !8
  %407 = icmp eq i8 %385, %406
  br i1 %407, label %408, label %437

408:                                              ; preds = %404
  %409 = getelementptr inbounds nuw i8, ptr %400, i64 3
  %410 = load i8, ptr %409, align 1, !tbaa !8
  %411 = icmp eq i8 %385, %410
  br i1 %411, label %412, label %439

412:                                              ; preds = %408
  %413 = getelementptr inbounds nuw i8, ptr %400, i64 4
  %414 = load i8, ptr %413, align 1, !tbaa !8
  %415 = icmp eq i8 %385, %414
  br i1 %415, label %416, label %441

416:                                              ; preds = %412
  %417 = getelementptr inbounds nuw i8, ptr %400, i64 5
  %418 = load i8, ptr %417, align 1, !tbaa !8
  %419 = icmp eq i8 %385, %418
  br i1 %419, label %420, label %443

420:                                              ; preds = %416
  %421 = getelementptr inbounds nuw i8, ptr %400, i64 6
  %422 = load i8, ptr %421, align 1, !tbaa !8
  %423 = icmp eq i8 %385, %422
  br i1 %423, label %424, label %445

424:                                              ; preds = %420
  %425 = getelementptr inbounds nuw i8, ptr %400, i64 7
  %426 = load i8, ptr %425, align 1, !tbaa !8
  %427 = icmp eq i8 %385, %426
  br i1 %427, label %428, label %447

428:                                              ; preds = %424
  %429 = add nuw nsw i64 %399, 8
  %430 = getelementptr inbounds nuw i8, ptr %383, i64 %429
  %431 = load i8, ptr %430, align 1, !tbaa !8
  %432 = icmp eq i8 %385, %431
  %433 = icmp samesign ult i64 %399, 250
  %434 = select i1 %432, i1 %433, i1 false
  br i1 %434, label %398, label %449, !llvm.loop !144

435:                                              ; preds = %398
  %436 = getelementptr inbounds nuw i8, ptr %400, i64 1
  br label %451

437:                                              ; preds = %404
  %438 = getelementptr inbounds nuw i8, ptr %400, i64 2
  br label %451

439:                                              ; preds = %408
  %440 = getelementptr inbounds nuw i8, ptr %400, i64 3
  br label %451

441:                                              ; preds = %412
  %442 = getelementptr inbounds nuw i8, ptr %400, i64 4
  br label %451

443:                                              ; preds = %416
  %444 = getelementptr inbounds nuw i8, ptr %400, i64 5
  br label %451

445:                                              ; preds = %420
  %446 = getelementptr inbounds nuw i8, ptr %400, i64 6
  br label %451

447:                                              ; preds = %424
  %448 = getelementptr inbounds nuw i8, ptr %400, i64 7
  br label %451

449:                                              ; preds = %428
  %450 = getelementptr inbounds nuw i8, ptr %383, i64 %429
  br label %451

451:                                              ; preds = %449, %447, %445, %443, %441, %439, %437, %435
  %452 = phi ptr [ %438, %437 ], [ %440, %439 ], [ %436, %435 ], [ %448, %447 ], [ %446, %445 ], [ %444, %443 ], [ %442, %441 ], [ %450, %449 ]
  %453 = ptrtoint ptr %397 to i64
  %454 = ptrtoint ptr %452 to i64
  %455 = sub i64 %453, %454
  %456 = trunc i64 %455 to i32
  %457 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 258, i32 %456), !nosanitize !45
  %458 = extractvalue { i32, i1 } %457, 1, !nosanitize !45
  br i1 %458, label %459, label %460, !prof !46, !nosanitize !45

459:                                              ; preds = %451
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

460:                                              ; preds = %451
  %461 = extractvalue { i32, i1 } %457, 0, !nosanitize !45
  %462 = tail call i32 @llvm.umin.i32(i32 %461, i32 %378)
  store i32 %462, ptr %4, align 8
  %463 = icmp ugt i32 %462, 2
  %464 = load i32, ptr %23, align 4, !tbaa !139
  br i1 %463, label %465, label %526

465:                                              ; preds = %460
  %466 = trunc i32 %462 to i8
  %467 = add i8 %466, -3
  %468 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %464, i32 1), !nosanitize !45
  %469 = extractvalue { i32, i1 } %468, 1, !nosanitize !45
  br i1 %469, label %470, label %471, !prof !46, !nosanitize !45

470:                                              ; preds = %465
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

471:                                              ; preds = %465
  %472 = extractvalue { i32, i1 } %468, 0, !nosanitize !45
  %473 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %472, ptr %23, align 4, !tbaa !139
  %474 = zext i32 %464 to i64
  %475 = getelementptr inbounds nuw i8, ptr %473, i64 %474
  store i8 1, ptr %475, align 1, !tbaa !8
  %476 = load i32, ptr %23, align 4, !tbaa !139
  %477 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %476, i32 1), !nosanitize !45
  %478 = extractvalue { i32, i1 } %477, 1, !nosanitize !45
  br i1 %478, label %479, label %480, !prof !46, !nosanitize !45

479:                                              ; preds = %471
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

480:                                              ; preds = %471
  %481 = extractvalue { i32, i1 } %477, 0, !nosanitize !45
  %482 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %481, ptr %23, align 4, !tbaa !139
  %483 = zext i32 %476 to i64
  %484 = getelementptr inbounds nuw i8, ptr %482, i64 %483
  store i8 0, ptr %484, align 1, !tbaa !8
  %485 = load i32, ptr %23, align 4, !tbaa !139
  %486 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %485, i32 1), !nosanitize !45
  %487 = extractvalue { i32, i1 } %486, 1, !nosanitize !45
  br i1 %487, label %488, label %489, !prof !46, !nosanitize !45

488:                                              ; preds = %480
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

489:                                              ; preds = %480
  %490 = extractvalue { i32, i1 } %486, 0, !nosanitize !45
  %491 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %490, ptr %23, align 4, !tbaa !139
  %492 = zext i32 %485 to i64
  %493 = getelementptr inbounds nuw i8, ptr %491, i64 %492
  store i8 %467, ptr %493, align 1, !tbaa !8
  %494 = zext i8 %467 to i64
  %495 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %494
  %496 = load i8, ptr %495, align 1, !tbaa !8
  %497 = zext i8 %496 to i64
  %498 = getelementptr [4 x i8], ptr %26, i64 %497
  %499 = load i16, ptr %498, align 4, !tbaa !8
  %500 = add i16 %499, 1
  store i16 %500, ptr %498, align 4, !tbaa !8
  %501 = load i8, ptr @_dist_code, align 1, !tbaa !8
  %502 = zext i8 %501 to i64
  %503 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %502
  %504 = load i16, ptr %503, align 4, !tbaa !8
  %505 = add i16 %504, 1
  store i16 %505, ptr %503, align 4, !tbaa !8
  %506 = load i32, ptr %23, align 4, !tbaa !139
  %507 = load i32, ptr %25, align 8, !tbaa !47
  %508 = icmp eq i32 %506, %507
  %509 = load i32, ptr %4, align 8, !tbaa !78
  %510 = load i32, ptr %3, align 4, !tbaa !75
  %511 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %510, i32 %509), !nosanitize !45
  %512 = extractvalue { i32, i1 } %511, 1, !nosanitize !45
  br i1 %512, label %513, label %514, !prof !46, !nosanitize !45

513:                                              ; preds = %489
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

514:                                              ; preds = %489
  %515 = extractvalue { i32, i1 } %511, 0, !nosanitize !45
  store i32 %515, ptr %3, align 4, !tbaa !75
  %516 = load i32, ptr %7, align 4, !tbaa !73
  %517 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %516, i32 %509), !nosanitize !45
  %518 = extractvalue { i32, i1 } %517, 1, !nosanitize !45
  br i1 %518, label %519, label %520, !prof !46, !nosanitize !45

519:                                              ; preds = %514
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

520:                                              ; preds = %514
  %521 = extractvalue { i32, i1 } %517, 0, !nosanitize !45
  store i32 %521, ptr %7, align 4, !tbaa !73
  store i32 0, ptr %4, align 8, !tbaa !78
  br i1 %508, label %578, label %522

522:                                              ; preds = %638, %576, %520
  br label %28

523:                                              ; preds = %392, %388, %380, %376, %373
  %524 = phi i32 [ %375, %373 ], [ %377, %376 ], [ %377, %392 ], [ %377, %388 ], [ %377, %380 ]
  %525 = load i32, ptr %23, align 4, !tbaa !139
  br label %526

526:                                              ; preds = %523, %460
  %527 = phi i32 [ %464, %460 ], [ %525, %523 ]
  %528 = phi i32 [ %377, %460 ], [ %524, %523 ]
  %529 = load ptr, ptr %8, align 8, !tbaa !34
  %530 = zext i32 %528 to i64
  %531 = getelementptr inbounds nuw i8, ptr %529, i64 %530
  %532 = load i8, ptr %531, align 1, !tbaa !8
  %533 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %527, i32 1), !nosanitize !45
  %534 = extractvalue { i32, i1 } %533, 1, !nosanitize !45
  br i1 %534, label %535, label %536, !prof !46, !nosanitize !45

535:                                              ; preds = %526
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

536:                                              ; preds = %526
  %537 = extractvalue { i32, i1 } %533, 0, !nosanitize !45
  %538 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %537, ptr %23, align 4, !tbaa !139
  %539 = zext i32 %527 to i64
  %540 = getelementptr inbounds nuw i8, ptr %538, i64 %539
  store i8 0, ptr %540, align 1, !tbaa !8
  %541 = load i32, ptr %23, align 4, !tbaa !139
  %542 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %541, i32 1), !nosanitize !45
  %543 = extractvalue { i32, i1 } %542, 1, !nosanitize !45
  br i1 %543, label %544, label %545, !prof !46, !nosanitize !45

544:                                              ; preds = %536
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

545:                                              ; preds = %536
  %546 = extractvalue { i32, i1 } %542, 0, !nosanitize !45
  %547 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %546, ptr %23, align 4, !tbaa !139
  %548 = zext i32 %541 to i64
  %549 = getelementptr inbounds nuw i8, ptr %547, i64 %548
  store i8 0, ptr %549, align 1, !tbaa !8
  %550 = load i32, ptr %23, align 4, !tbaa !139
  %551 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %550, i32 1), !nosanitize !45
  %552 = extractvalue { i32, i1 } %551, 1, !nosanitize !45
  br i1 %552, label %553, label %554, !prof !46, !nosanitize !45

553:                                              ; preds = %545
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

554:                                              ; preds = %545
  %555 = extractvalue { i32, i1 } %551, 0, !nosanitize !45
  %556 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %555, ptr %23, align 4, !tbaa !139
  %557 = zext i32 %550 to i64
  %558 = getelementptr inbounds nuw i8, ptr %556, i64 %557
  store i8 %532, ptr %558, align 1, !tbaa !8
  %559 = zext i8 %532 to i64
  %560 = getelementptr inbounds nuw [4 x i8], ptr %24, i64 %559
  %561 = load i16, ptr %560, align 4, !tbaa !8
  %562 = add i16 %561, 1
  store i16 %562, ptr %560, align 4, !tbaa !8
  %563 = load i32, ptr %23, align 4, !tbaa !139
  %564 = load i32, ptr %25, align 8, !tbaa !47
  %565 = icmp eq i32 %563, %564
  %566 = load i32, ptr %3, align 4, !tbaa !75
  %567 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %566, i32 1), !nosanitize !45
  %568 = extractvalue { i32, i1 } %567, 1, !nosanitize !45
  br i1 %568, label %569, label %570, !prof !46, !nosanitize !45

569:                                              ; preds = %721, %652, %586, %554
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

570:                                              ; preds = %554
  %571 = extractvalue { i32, i1 } %567, 0, !nosanitize !45
  store i32 %571, ptr %3, align 4, !tbaa !75
  %572 = load i32, ptr %7, align 4, !tbaa !73
  %573 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %572, i32 1), !nosanitize !45
  %574 = extractvalue { i32, i1 } %573, 1, !nosanitize !45
  br i1 %574, label %575, label %576, !prof !46, !nosanitize !45

575:                                              ; preds = %570
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

576:                                              ; preds = %570
  %577 = extractvalue { i32, i1 } %573, 0, !nosanitize !45
  store i32 %577, ptr %7, align 4, !tbaa !73
  br i1 %565, label %578, label %522

578:                                              ; preds = %576, %520
  %579 = phi i32 [ %521, %520 ], [ %577, %576 ]
  %580 = load i64, ptr %10, align 8, !tbaa !74
  %581 = icmp sgt i64 %580, -1
  br i1 %581, label %582, label %586

582:                                              ; preds = %578
  %583 = load ptr, ptr %8, align 8, !tbaa !34
  %584 = and i64 %580, 4294967295
  %585 = getelementptr inbounds nuw i8, ptr %583, i64 %584
  br label %586

586:                                              ; preds = %582, %578
  %587 = phi ptr [ %585, %582 ], [ null, %578 ]
  %588 = zext i32 %579 to i64
  %589 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %588, i64 %580), !nosanitize !45
  %590 = extractvalue { i64, i1 } %589, 1, !nosanitize !45
  br i1 %590, label %569, label %591, !prof !46, !nosanitize !45

591:                                              ; preds = %586
  %592 = extractvalue { i64, i1 } %589, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %587, i64 noundef %592, i32 noundef 0) #10
  %593 = load i32, ptr %7, align 4, !tbaa !73
  %594 = zext i32 %593 to i64
  store i64 %594, ptr %10, align 8, !tbaa !74
  %595 = load ptr, ptr %0, align 8, !tbaa !20
  %596 = getelementptr inbounds nuw i8, ptr %595, i64 56
  %597 = load ptr, ptr %596, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %597) #10
  %598 = getelementptr inbounds nuw i8, ptr %597, i64 40
  %599 = load i64, ptr %598, align 8, !tbaa !57
  %600 = getelementptr inbounds nuw i8, ptr %595, i64 32
  %601 = load i32, ptr %600, align 8, !tbaa !107
  %602 = zext i32 %601 to i64
  %603 = tail call i64 @llvm.umin.i64(i64 %599, i64 %602)
  %604 = trunc nuw i64 %603 to i32
  %605 = icmp eq i64 %603, 0
  br i1 %605, label %638, label %606

606:                                              ; preds = %591
  %607 = getelementptr inbounds nuw i8, ptr %595, i64 24
  %608 = load ptr, ptr %607, align 8, !tbaa !106
  %609 = getelementptr inbounds nuw i8, ptr %597, i64 32
  %610 = load ptr, ptr %609, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %608, ptr align 1 %610, i64 %603, i1 false)
  %611 = load ptr, ptr %607, align 8, !tbaa !106
  %612 = getelementptr inbounds nuw i8, ptr %611, i64 %603
  store ptr %612, ptr %607, align 8, !tbaa !106
  %613 = load ptr, ptr %609, align 8, !tbaa !58
  %614 = getelementptr inbounds nuw i8, ptr %613, i64 %603
  store ptr %614, ptr %609, align 8, !tbaa !58
  %615 = getelementptr inbounds nuw i8, ptr %595, i64 40
  %616 = load i64, ptr %615, align 8, !tbaa !108
  %617 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %616, i64 %603), !nosanitize !45
  %618 = extractvalue { i64, i1 } %617, 1, !nosanitize !45
  br i1 %618, label %619, label %620, !prof !46, !nosanitize !45

619:                                              ; preds = %606
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

620:                                              ; preds = %606
  %621 = extractvalue { i64, i1 } %617, 0, !nosanitize !45
  store i64 %621, ptr %615, align 8, !tbaa !108
  %622 = load i32, ptr %600, align 8, !tbaa !107
  %623 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %622, i32 %604), !nosanitize !45
  %624 = extractvalue { i32, i1 } %623, 1, !nosanitize !45
  br i1 %624, label %625, label %626, !prof !46, !nosanitize !45

625:                                              ; preds = %620
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

626:                                              ; preds = %620
  %627 = extractvalue { i32, i1 } %623, 0, !nosanitize !45
  store i32 %627, ptr %600, align 8, !tbaa !107
  %628 = load i64, ptr %598, align 8, !tbaa !57
  %629 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %628, i64 %603), !nosanitize !45
  %630 = extractvalue { i64, i1 } %629, 1, !nosanitize !45
  br i1 %630, label %631, label %632, !prof !46, !nosanitize !45

631:                                              ; preds = %626
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

632:                                              ; preds = %626
  %633 = extractvalue { i64, i1 } %629, 0, !nosanitize !45
  store i64 %633, ptr %598, align 8, !tbaa !57
  %634 = icmp eq i64 %633, 0
  br i1 %634, label %635, label %638

635:                                              ; preds = %632
  %636 = getelementptr inbounds nuw i8, ptr %597, i64 16
  %637 = load ptr, ptr %636, align 8, !tbaa !40
  store ptr %637, ptr %609, align 8, !tbaa !58
  br label %638

638:                                              ; preds = %635, %632, %591
  %639 = load ptr, ptr %0, align 8, !tbaa !20
  %640 = getelementptr inbounds nuw i8, ptr %639, i64 32
  %641 = load i32, ptr %640, align 8, !tbaa !107
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %780, label %522

643:                                              ; preds = %371
  store i32 0, ptr %11, align 4, !tbaa !76
  %644 = icmp eq i32 %1, 4
  br i1 %644, label %645, label %711

645:                                              ; preds = %643
  %646 = load i64, ptr %10, align 8, !tbaa !74
  %647 = icmp sgt i64 %646, -1
  br i1 %647, label %648, label %652

648:                                              ; preds = %645
  %649 = load ptr, ptr %8, align 8, !tbaa !34
  %650 = and i64 %646, 4294967295
  %651 = getelementptr inbounds nuw i8, ptr %649, i64 %650
  br label %652

652:                                              ; preds = %648, %645
  %653 = phi ptr [ %651, %648 ], [ null, %645 ]
  %654 = load i32, ptr %7, align 4, !tbaa !73
  %655 = zext i32 %654 to i64
  %656 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %655, i64 %646), !nosanitize !45
  %657 = extractvalue { i64, i1 } %656, 1, !nosanitize !45
  br i1 %657, label %569, label %658, !prof !46, !nosanitize !45

658:                                              ; preds = %652
  %659 = extractvalue { i64, i1 } %656, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %653, i64 noundef %659, i32 noundef 1) #10
  %660 = load i32, ptr %7, align 4, !tbaa !73
  %661 = zext i32 %660 to i64
  store i64 %661, ptr %10, align 8, !tbaa !74
  %662 = load ptr, ptr %0, align 8, !tbaa !20
  %663 = getelementptr inbounds nuw i8, ptr %662, i64 56
  %664 = load ptr, ptr %663, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %664) #10
  %665 = getelementptr inbounds nuw i8, ptr %664, i64 40
  %666 = load i64, ptr %665, align 8, !tbaa !57
  %667 = getelementptr inbounds nuw i8, ptr %662, i64 32
  %668 = load i32, ptr %667, align 8, !tbaa !107
  %669 = zext i32 %668 to i64
  %670 = tail call i64 @llvm.umin.i64(i64 %666, i64 %669)
  %671 = trunc nuw i64 %670 to i32
  %672 = icmp eq i64 %670, 0
  br i1 %672, label %705, label %673

673:                                              ; preds = %658
  %674 = getelementptr inbounds nuw i8, ptr %662, i64 24
  %675 = load ptr, ptr %674, align 8, !tbaa !106
  %676 = getelementptr inbounds nuw i8, ptr %664, i64 32
  %677 = load ptr, ptr %676, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %675, ptr align 1 %677, i64 %670, i1 false)
  %678 = load ptr, ptr %674, align 8, !tbaa !106
  %679 = getelementptr inbounds nuw i8, ptr %678, i64 %670
  store ptr %679, ptr %674, align 8, !tbaa !106
  %680 = load ptr, ptr %676, align 8, !tbaa !58
  %681 = getelementptr inbounds nuw i8, ptr %680, i64 %670
  store ptr %681, ptr %676, align 8, !tbaa !58
  %682 = getelementptr inbounds nuw i8, ptr %662, i64 40
  %683 = load i64, ptr %682, align 8, !tbaa !108
  %684 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %683, i64 %670), !nosanitize !45
  %685 = extractvalue { i64, i1 } %684, 1, !nosanitize !45
  br i1 %685, label %686, label %687, !prof !46, !nosanitize !45

686:                                              ; preds = %673
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

687:                                              ; preds = %673
  %688 = extractvalue { i64, i1 } %684, 0, !nosanitize !45
  store i64 %688, ptr %682, align 8, !tbaa !108
  %689 = load i32, ptr %667, align 8, !tbaa !107
  %690 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %689, i32 %671), !nosanitize !45
  %691 = extractvalue { i32, i1 } %690, 1, !nosanitize !45
  br i1 %691, label %692, label %693, !prof !46, !nosanitize !45

692:                                              ; preds = %687
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

693:                                              ; preds = %687
  %694 = extractvalue { i32, i1 } %690, 0, !nosanitize !45
  store i32 %694, ptr %667, align 8, !tbaa !107
  %695 = load i64, ptr %665, align 8, !tbaa !57
  %696 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %695, i64 %670), !nosanitize !45
  %697 = extractvalue { i64, i1 } %696, 1, !nosanitize !45
  br i1 %697, label %698, label %699, !prof !46, !nosanitize !45

698:                                              ; preds = %693
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

699:                                              ; preds = %693
  %700 = extractvalue { i64, i1 } %696, 0, !nosanitize !45
  store i64 %700, ptr %665, align 8, !tbaa !57
  %701 = icmp eq i64 %700, 0
  br i1 %701, label %702, label %705

702:                                              ; preds = %699
  %703 = getelementptr inbounds nuw i8, ptr %664, i64 16
  %704 = load ptr, ptr %703, align 8, !tbaa !40
  store ptr %704, ptr %676, align 8, !tbaa !58
  br label %705

705:                                              ; preds = %702, %699, %658
  %706 = load ptr, ptr %0, align 8, !tbaa !20
  %707 = getelementptr inbounds nuw i8, ptr %706, i64 32
  %708 = load i32, ptr %707, align 8, !tbaa !107
  %709 = icmp eq i32 %708, 0
  %710 = select i1 %709, i32 2, i32 3
  br label %780

711:                                              ; preds = %643
  %712 = load i32, ptr %23, align 4, !tbaa !139
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %779, label %714

714:                                              ; preds = %711
  %715 = load i64, ptr %10, align 8, !tbaa !74
  %716 = icmp sgt i64 %715, -1
  br i1 %716, label %717, label %721

717:                                              ; preds = %714
  %718 = load ptr, ptr %8, align 8, !tbaa !34
  %719 = and i64 %715, 4294967295
  %720 = getelementptr inbounds nuw i8, ptr %718, i64 %719
  br label %721

721:                                              ; preds = %717, %714
  %722 = phi ptr [ %720, %717 ], [ null, %714 ]
  %723 = load i32, ptr %7, align 4, !tbaa !73
  %724 = zext i32 %723 to i64
  %725 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %724, i64 %715), !nosanitize !45
  %726 = extractvalue { i64, i1 } %725, 1, !nosanitize !45
  br i1 %726, label %569, label %727, !prof !46, !nosanitize !45

727:                                              ; preds = %721
  %728 = extractvalue { i64, i1 } %725, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %722, i64 noundef %728, i32 noundef 0) #10
  %729 = load i32, ptr %7, align 4, !tbaa !73
  %730 = zext i32 %729 to i64
  store i64 %730, ptr %10, align 8, !tbaa !74
  %731 = load ptr, ptr %0, align 8, !tbaa !20
  %732 = getelementptr inbounds nuw i8, ptr %731, i64 56
  %733 = load ptr, ptr %732, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %733) #10
  %734 = getelementptr inbounds nuw i8, ptr %733, i64 40
  %735 = load i64, ptr %734, align 8, !tbaa !57
  %736 = getelementptr inbounds nuw i8, ptr %731, i64 32
  %737 = load i32, ptr %736, align 8, !tbaa !107
  %738 = zext i32 %737 to i64
  %739 = tail call i64 @llvm.umin.i64(i64 %735, i64 %738)
  %740 = trunc nuw i64 %739 to i32
  %741 = icmp eq i64 %739, 0
  br i1 %741, label %774, label %742

742:                                              ; preds = %727
  %743 = getelementptr inbounds nuw i8, ptr %731, i64 24
  %744 = load ptr, ptr %743, align 8, !tbaa !106
  %745 = getelementptr inbounds nuw i8, ptr %733, i64 32
  %746 = load ptr, ptr %745, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %744, ptr align 1 %746, i64 %739, i1 false)
  %747 = load ptr, ptr %743, align 8, !tbaa !106
  %748 = getelementptr inbounds nuw i8, ptr %747, i64 %739
  store ptr %748, ptr %743, align 8, !tbaa !106
  %749 = load ptr, ptr %745, align 8, !tbaa !58
  %750 = getelementptr inbounds nuw i8, ptr %749, i64 %739
  store ptr %750, ptr %745, align 8, !tbaa !58
  %751 = getelementptr inbounds nuw i8, ptr %731, i64 40
  %752 = load i64, ptr %751, align 8, !tbaa !108
  %753 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %752, i64 %739), !nosanitize !45
  %754 = extractvalue { i64, i1 } %753, 1, !nosanitize !45
  br i1 %754, label %755, label %756, !prof !46, !nosanitize !45

755:                                              ; preds = %742
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

756:                                              ; preds = %742
  %757 = extractvalue { i64, i1 } %753, 0, !nosanitize !45
  store i64 %757, ptr %751, align 8, !tbaa !108
  %758 = load i32, ptr %736, align 8, !tbaa !107
  %759 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %758, i32 %740), !nosanitize !45
  %760 = extractvalue { i32, i1 } %759, 1, !nosanitize !45
  br i1 %760, label %761, label %762, !prof !46, !nosanitize !45

761:                                              ; preds = %756
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

762:                                              ; preds = %756
  %763 = extractvalue { i32, i1 } %759, 0, !nosanitize !45
  store i32 %763, ptr %736, align 8, !tbaa !107
  %764 = load i64, ptr %734, align 8, !tbaa !57
  %765 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %764, i64 %739), !nosanitize !45
  %766 = extractvalue { i64, i1 } %765, 1, !nosanitize !45
  br i1 %766, label %767, label %768, !prof !46, !nosanitize !45

767:                                              ; preds = %762
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

768:                                              ; preds = %762
  %769 = extractvalue { i64, i1 } %765, 0, !nosanitize !45
  store i64 %769, ptr %734, align 8, !tbaa !57
  %770 = icmp eq i64 %769, 0
  br i1 %770, label %771, label %774

771:                                              ; preds = %768
  %772 = getelementptr inbounds nuw i8, ptr %733, i64 16
  %773 = load ptr, ptr %772, align 8, !tbaa !40
  store ptr %773, ptr %745, align 8, !tbaa !58
  br label %774

774:                                              ; preds = %771, %768, %727
  %775 = load ptr, ptr %0, align 8, !tbaa !20
  %776 = getelementptr inbounds nuw i8, ptr %775, i64 32
  %777 = load i32, ptr %776, align 8, !tbaa !107
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %780, label %779

779:                                              ; preds = %774, %711
  br label %780

780:                                              ; preds = %779, %774, %705, %638, %367
  %781 = phi i32 [ 1, %779 ], [ %710, %705 ], [ 0, %774 ], [ 0, %367 ], [ 0, %638 ]
  ret i32 %781
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
  %29 = tail call ptr %26(ptr noundef %28, i32 noundef 1, i32 noundef 5968) #10
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
  %37 = tail call ptr %33(ptr noundef %34, i32 noundef %36, i32 noundef 2) #10
  %38 = getelementptr inbounds nuw i8, ptr %29, i64 96
  store ptr %37, ptr %38, align 8, !tbaa !34
  %39 = load ptr, ptr %25, align 8, !tbaa !15
  %40 = load ptr, ptr %27, align 8, !tbaa !16
  %41 = load i32, ptr %35, align 8, !tbaa !32
  %42 = tail call ptr %39(ptr noundef %40, i32 noundef %41, i32 noundef 2) #10
  %43 = getelementptr inbounds nuw i8, ptr %29, i64 112
  store ptr %42, ptr %43, align 8, !tbaa !35
  %44 = load ptr, ptr %25, align 8, !tbaa !15
  %45 = load ptr, ptr %27, align 8, !tbaa !16
  %46 = getelementptr inbounds nuw i8, ptr %29, i64 132
  %47 = load i32, ptr %46, align 4, !tbaa !36
  %48 = tail call ptr %44(ptr noundef %45, i32 noundef %47, i32 noundef 2) #10
  %49 = getelementptr inbounds nuw i8, ptr %29, i64 120
  store ptr %48, ptr %49, align 8, !tbaa !37
  %50 = load ptr, ptr %25, align 8, !tbaa !15
  %51 = load ptr, ptr %27, align 8, !tbaa !16
  %52 = getelementptr inbounds nuw i8, ptr %29, i64 5896
  %53 = load i32, ptr %52, align 8, !tbaa !39
  %54 = tail call ptr %50(ptr noundef %51, i32 noundef %53, i32 noundef 4) #10
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

66:                                               ; preds = %61, %58, %31
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
  tail call void %71(ptr noundef %87, ptr noundef nonnull %84) #10, !inline_history !54
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
  tail call void %91(ptr noundef %97, ptr noundef nonnull %94) #10, !inline_history !54
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
  tail call void %101(ptr noundef %107, ptr noundef nonnull %104) #10, !inline_history !54
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
  tail call void %111(ptr noundef %117, ptr noundef nonnull %114) #10, !inline_history !54
  %118 = load ptr, ptr %70, align 8, !tbaa !17
  %119 = load ptr, ptr %32, align 8, !tbaa !19
  br label %120

120:                                              ; preds = %116, %110
  %121 = phi ptr [ %119, %116 ], [ %112, %110 ]
  %122 = phi ptr [ %118, %116 ], [ %111, %110 ]
  %123 = load ptr, ptr %27, align 8, !tbaa !16
  tail call void %122(ptr noundef %123, ptr noundef %121) #10, !inline_history !54
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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

188:                                              ; preds = %149, %120, %79, %76, %73, %69, %66, %24, %22, %19, %16, %12, %8, %4, %2
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
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 208
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

33:                                               ; preds = %788, %2
  %34 = load i32, ptr %3, align 4, !tbaa !75
  %35 = icmp ult i32 %34, 262
  br i1 %35, label %36, label %378

36:                                               ; preds = %33
  %37 = load i32, ptr %4, align 8, !tbaa !32
  %38 = zext i32 %37 to i64
  br label %39

39:                                               ; preds = %321, %36
  %40 = phi i32 [ %248, %321 ], [ %34, %36 ]
  %41 = load i64, ptr %5, align 8, !tbaa !61
  %42 = zext nneg i32 %40 to i64
  %43 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %41, i64 %42), !nosanitize !45
  %44 = extractvalue { i64, i1 } %43, 1, !nosanitize !45
  br i1 %44, label %45, label %46, !prof !46, !nosanitize !45

45:                                               ; preds = %39
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

46:                                               ; preds = %39
  %47 = extractvalue { i64, i1 } %43, 0, !nosanitize !45
  %48 = load i32, ptr %6, align 4, !tbaa !73
  %49 = zext i32 %48 to i64
  %50 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %47, i64 %49), !nosanitize !45
  %51 = extractvalue { i64, i1 } %50, 1, !nosanitize !45
  br i1 %51, label %52, label %53, !prof !46, !nosanitize !45

52:                                               ; preds = %46
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

53:                                               ; preds = %46
  %54 = extractvalue { i64, i1 } %50, 0, !nosanitize !45
  %55 = trunc i64 %54 to i32
  %56 = load i32, ptr %4, align 8, !tbaa !32
  %57 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %56, i32 262), !nosanitize !45
  %58 = extractvalue { i32, i1 } %57, 1, !nosanitize !45
  br i1 %58, label %59, label %60, !prof !46, !nosanitize !45

59:                                               ; preds = %53
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

60:                                               ; preds = %53
  %61 = extractvalue { i32, i1 } %57, 0, !nosanitize !45
  %62 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %37, i32 %61), !nosanitize !45
  %63 = extractvalue { i32, i1 } %62, 1, !nosanitize !45
  br i1 %63, label %64, label %65, !prof !46, !nosanitize !45

64:                                               ; preds = %60
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

65:                                               ; preds = %60
  %66 = extractvalue { i32, i1 } %62, 0, !nosanitize !45
  %67 = icmp ult i32 %48, %66
  br i1 %67, label %195, label %68

68:                                               ; preds = %65
  %69 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %37, i32 %55), !nosanitize !45
  %70 = extractvalue { i32, i1 } %69, 1, !nosanitize !45
  br i1 %70, label %71, label %72, !prof !46, !nosanitize !45

71:                                               ; preds = %68
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

81:                                               ; preds = %72
  %82 = extractvalue { i32, i1 } %78, 0, !nosanitize !45
  store i32 %82, ptr %8, align 8, !tbaa !83
  %83 = load i32, ptr %6, align 4, !tbaa !73
  %84 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %83, i32 %37), !nosanitize !45
  %85 = extractvalue { i32, i1 } %84, 1, !nosanitize !45
  br i1 %85, label %86, label %87, !prof !46, !nosanitize !45

86:                                               ; preds = %87, %81
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

87:                                               ; preds = %81
  %88 = extractvalue { i32, i1 } %84, 0, !nosanitize !45
  store i32 %88, ptr %6, align 4, !tbaa !73
  %89 = load i64, ptr %9, align 8, !tbaa !74
  %90 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %89, i64 %38), !nosanitize !45
  %91 = extractvalue { i64, i1 } %90, 1, !nosanitize !45
  br i1 %91, label %86, label %92, !prof !46, !nosanitize !45

92:                                               ; preds = %87
  %93 = extractvalue { i64, i1 } %90, 0, !nosanitize !45
  store i64 %93, ptr %9, align 8, !tbaa !74
  %94 = load i32, ptr %10, align 4, !tbaa !76
  %95 = icmp ugt i32 %94, %88
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 %88, ptr %10, align 4, !tbaa !76
  br label %97

97:                                               ; preds = %96, %92
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
  br i1 %124, label %125, label %114, !llvm.loop !148

125:                                              ; preds = %114
  %126 = icmp eq i64 %107, %101
  br i1 %126, label %146, label %127

127:                                              ; preds = %125, %104
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

136:                                              ; preds = %136, %127
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
  br i1 %145, label %146, label %136, !llvm.loop !149

146:                                              ; preds = %136, %125
  %147 = icmp eq i32 %98, 0
  br i1 %147, label %148, label %149, !prof !46, !nosanitize !45

148:                                              ; preds = %146
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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
  br i1 %172, label %173, label %162, !llvm.loop !150

173:                                              ; preds = %162
  %174 = icmp eq i64 %155, %151
  br i1 %174, label %188, label %175

175:                                              ; preds = %173, %149
  %176 = phi ptr [ %152, %149 ], [ %157, %173 ]
  %177 = phi i32 [ %98, %149 ], [ %159, %173 ]
  br label %178

178:                                              ; preds = %178, %175
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
  br i1 %187, label %188, label %178, !llvm.loop !151

188:                                              ; preds = %178, %173
  store i32 1, ptr %14, align 8, !tbaa !63
  %189 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %55, i32 %37), !nosanitize !45
  %190 = extractvalue { i32, i1 } %189, 1, !nosanitize !45
  br i1 %190, label %191, label %192, !prof !46, !nosanitize !45

191:                                              ; preds = %188
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

192:                                              ; preds = %188
  %193 = extractvalue { i32, i1 } %189, 0, !nosanitize !45
  %194 = load i32, ptr %3, align 4, !tbaa !75
  br label %195

195:                                              ; preds = %192, %65
  %196 = phi i32 [ %194, %192 ], [ %40, %65 ]
  %197 = phi i32 [ %88, %192 ], [ %48, %65 ]
  %198 = phi i32 [ %193, %192 ], [ %55, %65 ]
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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
  %226 = tail call i64 @adler32(i64 noundef %225, ptr noundef %208, i32 noundef %209) #10
  store i64 %226, ptr %224, align 8, !tbaa !59
  br label %231

227:                                              ; preds = %215
  %228 = getelementptr inbounds nuw i8, ptr %199, i64 96
  %229 = load i64, ptr %228, align 8, !tbaa !59
  %230 = tail call i64 @crc32(i64 noundef %229, ptr noundef %208, i32 noundef %209) #10
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

247:                                              ; preds = %242
  %248 = extractvalue { i32, i1 } %244, 0, !nosanitize !45
  store i32 %248, ptr %3, align 4, !tbaa !75
  %249 = load i32, ptr %10, align 4, !tbaa !76
  %250 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %248, i32 %249), !nosanitize !45
  %251 = extractvalue { i32, i1 } %250, 1, !nosanitize !45
  br i1 %251, label %252, label %253, !prof !46, !nosanitize !45

252:                                              ; preds = %247
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  br i1 %325, label %326, label %39, !llvm.loop !92

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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

365:                                              ; preds = %354
  %366 = extractvalue { i64, i1 } %362, 0, !nosanitize !45
  br label %367

367:                                              ; preds = %365, %341
  %368 = phi i64 [ %346, %341 ], [ %366, %365 ]
  store i64 %368, ptr %19, align 8, !tbaa !38
  %369 = load i32, ptr %3, align 4, !tbaa !75
  br label %370

370:                                              ; preds = %367, %347, %326
  %371 = phi i32 [ %327, %326 ], [ %327, %347 ], [ %369, %367 ]
  %372 = icmp ult i32 %371, 262
  %373 = and i1 %20, %372
  br i1 %373, label %1002, label %374

374:                                              ; preds = %370
  %375 = icmp eq i32 %371, 0
  br i1 %375, label %865, label %376

376:                                              ; preds = %374
  %377 = icmp ugt i32 %371, 2
  br i1 %377, label %378, label %588

378:                                              ; preds = %376, %33
  %379 = phi i32 [ %371, %376 ], [ %34, %33 ]
  %380 = load i32, ptr %6, align 4, !tbaa !73
  %381 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %380, i32 2), !nosanitize !45
  %382 = extractvalue { i32, i1 } %381, 1, !nosanitize !45
  br i1 %382, label %383, label %384, !prof !46, !nosanitize !45

383:                                              ; preds = %378
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

384:                                              ; preds = %378
  %385 = extractvalue { i32, i1 } %381, 0, !nosanitize !45
  %386 = load ptr, ptr %7, align 8, !tbaa !34
  %387 = load i32, ptr %15, align 8, !tbaa !80
  %388 = load i32, ptr %16, align 8, !tbaa !53
  %389 = shl i32 %387, %388
  %390 = zext i32 %385 to i64
  %391 = getelementptr inbounds nuw i8, ptr %386, i64 %390
  %392 = load i8, ptr %391, align 1, !tbaa !8
  %393 = zext i8 %392 to i32
  %394 = xor i32 %389, %393
  %395 = load i32, ptr %17, align 4, !tbaa !52
  %396 = and i32 %394, %395
  store i32 %396, ptr %15, align 8, !tbaa !80
  %397 = load ptr, ptr %12, align 8, !tbaa !37
  %398 = zext i32 %396 to i64
  %399 = getelementptr inbounds nuw [2 x i8], ptr %397, i64 %398
  %400 = load i16, ptr %399, align 2, !tbaa !62
  %401 = load ptr, ptr %13, align 8, !tbaa !35
  %402 = load i32, ptr %18, align 8, !tbaa !33
  %403 = and i32 %402, %380
  %404 = zext i32 %403 to i64
  %405 = getelementptr inbounds nuw [2 x i8], ptr %401, i64 %404
  store i16 %400, ptr %405, align 2, !tbaa !62
  %406 = zext i16 %400 to i32
  %407 = trunc i32 %380 to i16
  store i16 %407, ptr %399, align 2, !tbaa !62
  %408 = icmp eq i16 %400, 0
  br i1 %408, label %588, label %409

409:                                              ; preds = %384
  %410 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %380, i32 %406), !nosanitize !45
  %411 = extractvalue { i32, i1 } %410, 0, !nosanitize !45
  %412 = extractvalue { i32, i1 } %410, 1, !nosanitize !45
  br i1 %412, label %413, label %414, !prof !46, !nosanitize !45

413:                                              ; preds = %409
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

414:                                              ; preds = %409
  %415 = load i32, ptr %4, align 8, !tbaa !32
  %416 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %415, i32 262), !nosanitize !45
  %417 = extractvalue { i32, i1 } %416, 1, !nosanitize !45
  br i1 %417, label %418, label %419, !prof !46, !nosanitize !45

418:                                              ; preds = %414
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

419:                                              ; preds = %414
  %420 = extractvalue { i32, i1 } %416, 0, !nosanitize !45
  %421 = icmp ugt i32 %411, %420
  br i1 %421, label %588, label %422

422:                                              ; preds = %419
  %423 = zext i32 %380 to i64
  %424 = getelementptr inbounds nuw i8, ptr %386, i64 %423
  %425 = load i32, ptr %21, align 8, !tbaa !77
  %426 = tail call i32 @llvm.usub.sat.i32(i32 %380, i32 %420)
  %427 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %425, i32 -1)
  %428 = extractvalue { i32, i1 } %427, 1, !nosanitize !45
  br i1 %428, label %429, label %430, !prof !46, !nosanitize !45

429:                                              ; preds = %550, %460, %422
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

430:                                              ; preds = %422
  %431 = load i32, ptr %22, align 8, !tbaa !70
  %432 = load i32, ptr %23, align 4, !tbaa !72
  %433 = getelementptr inbounds nuw i8, ptr %424, i64 258
  %434 = extractvalue { i32, i1 } %427, 0, !nosanitize !45
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i8, ptr %424, i64 %435
  %437 = load i8, ptr %436, align 1, !tbaa !8
  %438 = sext i32 %425 to i64
  %439 = getelementptr inbounds i8, ptr %424, i64 %438
  %440 = load i8, ptr %439, align 1, !tbaa !8
  %441 = load i32, ptr %24, align 4, !tbaa !68
  %442 = icmp ult i32 %425, %441
  %443 = lshr i32 %432, 2
  %444 = select i1 %442, i32 %432, i32 %443
  %445 = tail call i32 @llvm.umin.i32(i32 %431, i32 %379)
  %446 = getelementptr inbounds nuw i8, ptr %424, i64 1
  %447 = ptrtoint ptr %433 to i64
  br label %448

448:                                              ; preds = %582, %430
  %449 = phi i32 [ %425, %430 ], [ %569, %582 ]
  %450 = phi i32 [ %444, %430 ], [ %583, %582 ]
  %451 = phi i32 [ %406, %430 ], [ %576, %582 ]
  %452 = phi i8 [ %437, %430 ], [ %570, %582 ]
  %453 = phi i8 [ %440, %430 ], [ %571, %582 ]
  %454 = zext nneg i32 %451 to i64
  %455 = getelementptr inbounds nuw i8, ptr %386, i64 %454
  %456 = sext i32 %449 to i64
  %457 = getelementptr inbounds i8, ptr %455, i64 %456
  %458 = load i8, ptr %457, align 1, !tbaa !8
  %459 = icmp eq i8 %458, %453
  br i1 %459, label %460, label %568

460:                                              ; preds = %448
  %461 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %449, i32 -1)
  %462 = extractvalue { i32, i1 } %461, 1, !nosanitize !45
  br i1 %462, label %429, label %463, !prof !46, !nosanitize !45

463:                                              ; preds = %460
  %464 = extractvalue { i32, i1 } %461, 0, !nosanitize !45
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i8, ptr %455, i64 %465
  %467 = load i8, ptr %466, align 1, !tbaa !8
  %468 = icmp eq i8 %467, %452
  br i1 %468, label %469, label %568

469:                                              ; preds = %463
  %470 = load i8, ptr %455, align 1, !tbaa !8
  %471 = load i8, ptr %424, align 1, !tbaa !8
  %472 = icmp eq i8 %470, %471
  br i1 %472, label %473, label %568

473:                                              ; preds = %469
  %474 = getelementptr inbounds nuw i8, ptr %455, i64 1
  %475 = load i8, ptr %474, align 1, !tbaa !8
  %476 = load i8, ptr %446, align 1, !tbaa !8
  %477 = icmp eq i8 %475, %476
  br i1 %477, label %478, label %568

478:                                              ; preds = %473
  %479 = getelementptr inbounds nuw i8, ptr %455, i64 2
  br label %480

480:                                              ; preds = %525, %478
  %481 = phi ptr [ %479, %478 ], [ %529, %525 ]
  %482 = phi i64 [ 2, %478 ], [ %526, %525 ]
  %483 = getelementptr inbounds nuw i8, ptr %424, i64 %482
  %484 = getelementptr inbounds nuw i8, ptr %483, i64 1
  %485 = load i8, ptr %484, align 1, !tbaa !8
  %486 = getelementptr inbounds nuw i8, ptr %481, i64 1
  %487 = load i8, ptr %486, align 1, !tbaa !8
  %488 = icmp eq i8 %485, %487
  br i1 %488, label %489, label %534

489:                                              ; preds = %480
  %490 = getelementptr inbounds nuw i8, ptr %483, i64 2
  %491 = load i8, ptr %490, align 1, !tbaa !8
  %492 = getelementptr inbounds nuw i8, ptr %481, i64 2
  %493 = load i8, ptr %492, align 1, !tbaa !8
  %494 = icmp eq i8 %491, %493
  br i1 %494, label %495, label %536

495:                                              ; preds = %489
  %496 = getelementptr inbounds nuw i8, ptr %483, i64 3
  %497 = load i8, ptr %496, align 1, !tbaa !8
  %498 = getelementptr inbounds nuw i8, ptr %481, i64 3
  %499 = load i8, ptr %498, align 1, !tbaa !8
  %500 = icmp eq i8 %497, %499
  br i1 %500, label %501, label %538

501:                                              ; preds = %495
  %502 = getelementptr inbounds nuw i8, ptr %483, i64 4
  %503 = load i8, ptr %502, align 1, !tbaa !8
  %504 = getelementptr inbounds nuw i8, ptr %481, i64 4
  %505 = load i8, ptr %504, align 1, !tbaa !8
  %506 = icmp eq i8 %503, %505
  br i1 %506, label %507, label %540

507:                                              ; preds = %501
  %508 = getelementptr inbounds nuw i8, ptr %483, i64 5
  %509 = load i8, ptr %508, align 1, !tbaa !8
  %510 = getelementptr inbounds nuw i8, ptr %481, i64 5
  %511 = load i8, ptr %510, align 1, !tbaa !8
  %512 = icmp eq i8 %509, %511
  br i1 %512, label %513, label %542

513:                                              ; preds = %507
  %514 = getelementptr inbounds nuw i8, ptr %483, i64 6
  %515 = load i8, ptr %514, align 1, !tbaa !8
  %516 = getelementptr inbounds nuw i8, ptr %481, i64 6
  %517 = load i8, ptr %516, align 1, !tbaa !8
  %518 = icmp eq i8 %515, %517
  br i1 %518, label %519, label %544

519:                                              ; preds = %513
  %520 = getelementptr inbounds nuw i8, ptr %483, i64 7
  %521 = load i8, ptr %520, align 1, !tbaa !8
  %522 = getelementptr inbounds nuw i8, ptr %481, i64 7
  %523 = load i8, ptr %522, align 1, !tbaa !8
  %524 = icmp eq i8 %521, %523
  br i1 %524, label %525, label %546

525:                                              ; preds = %519
  %526 = add nuw nsw i64 %482, 8
  %527 = getelementptr inbounds nuw i8, ptr %424, i64 %526
  %528 = load i8, ptr %527, align 1, !tbaa !8
  %529 = getelementptr inbounds nuw i8, ptr %481, i64 8
  %530 = load i8, ptr %529, align 1, !tbaa !8
  %531 = icmp eq i8 %528, %530
  %532 = icmp samesign ult i64 %482, 250
  %533 = select i1 %531, i1 %532, i1 false
  br i1 %533, label %480, label %548, !llvm.loop !152

534:                                              ; preds = %480
  %535 = getelementptr inbounds nuw i8, ptr %483, i64 1
  br label %550

536:                                              ; preds = %489
  %537 = getelementptr inbounds nuw i8, ptr %483, i64 2
  br label %550

538:                                              ; preds = %495
  %539 = getelementptr inbounds nuw i8, ptr %483, i64 3
  br label %550

540:                                              ; preds = %501
  %541 = getelementptr inbounds nuw i8, ptr %483, i64 4
  br label %550

542:                                              ; preds = %507
  %543 = getelementptr inbounds nuw i8, ptr %483, i64 5
  br label %550

544:                                              ; preds = %513
  %545 = getelementptr inbounds nuw i8, ptr %483, i64 6
  br label %550

546:                                              ; preds = %519
  %547 = getelementptr inbounds nuw i8, ptr %483, i64 7
  br label %550

548:                                              ; preds = %525
  %549 = getelementptr inbounds nuw i8, ptr %424, i64 %526
  br label %550

550:                                              ; preds = %548, %546, %544, %542, %540, %538, %536, %534
  %551 = phi ptr [ %537, %536 ], [ %539, %538 ], [ %535, %534 ], [ %547, %546 ], [ %545, %544 ], [ %543, %542 ], [ %541, %540 ], [ %549, %548 ]
  %552 = ptrtoint ptr %551 to i64
  %553 = sub i64 %447, %552
  %554 = trunc i64 %553 to i32
  %555 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %554), !nosanitize !45
  %556 = extractvalue { i32, i1 } %555, 0, !nosanitize !45
  %557 = extractvalue { i32, i1 } %555, 1, !nosanitize !45
  br i1 %557, label %429, label %558, !prof !46, !nosanitize !45

558:                                              ; preds = %550
  %559 = icmp sgt i32 %556, %449
  br i1 %559, label %560, label %568

560:                                              ; preds = %558
  store i32 %451, ptr %8, align 8, !tbaa !83
  %561 = icmp slt i32 %556, %445
  br i1 %561, label %562, label %585

562:                                              ; preds = %560
  %563 = sext i32 %556 to i64
  %564 = getelementptr i8, ptr %424, i64 %563
  %565 = getelementptr i8, ptr %564, i64 -1
  %566 = load i8, ptr %565, align 1, !tbaa !8
  %567 = load i8, ptr %564, align 1, !tbaa !8
  br label %568

568:                                              ; preds = %562, %558, %473, %469, %463, %448
  %569 = phi i32 [ %449, %448 ], [ %449, %463 ], [ %449, %469 ], [ %449, %473 ], [ %556, %562 ], [ %449, %558 ]
  %570 = phi i8 [ %452, %448 ], [ %452, %463 ], [ %452, %469 ], [ %452, %473 ], [ %566, %562 ], [ %452, %558 ]
  %571 = phi i8 [ %453, %448 ], [ %453, %463 ], [ %453, %469 ], [ %453, %473 ], [ %567, %562 ], [ %453, %558 ]
  %572 = and i32 %451, %402
  %573 = zext nneg i32 %572 to i64
  %574 = getelementptr inbounds nuw [2 x i8], ptr %401, i64 %573
  %575 = load i16, ptr %574, align 2, !tbaa !62
  %576 = zext i16 %575 to i32
  %577 = icmp ult i32 %426, %576
  br i1 %577, label %578, label %585

578:                                              ; preds = %568
  %579 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %450, i32 1), !nosanitize !45
  %580 = extractvalue { i32, i1 } %579, 1, !nosanitize !45
  br i1 %580, label %581, label %582, !prof !46, !nosanitize !45

581:                                              ; preds = %578
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

582:                                              ; preds = %578
  %583 = extractvalue { i32, i1 } %579, 0, !nosanitize !45
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %585, label %448, !llvm.loop !153

585:                                              ; preds = %582, %568, %560
  %586 = phi i32 [ %569, %582 ], [ %569, %568 ], [ %556, %560 ]
  %587 = tail call i32 @llvm.umin.i32(i32 %586, i32 %379)
  store i32 %587, ptr %25, align 8, !tbaa !78
  br label %590

588:                                              ; preds = %419, %384, %376
  %589 = load i32, ptr %25, align 8, !tbaa !78
  br label %590

590:                                              ; preds = %588, %585
  %591 = phi i32 [ %589, %588 ], [ %587, %585 ]
  %592 = icmp ugt i32 %591, 2
  br i1 %592, label %593, label %736

593:                                              ; preds = %590
  %594 = trunc i32 %591 to i8
  %595 = add i8 %594, -3
  %596 = load i32, ptr %6, align 4, !tbaa !73
  %597 = load i32, ptr %8, align 8, !tbaa !83
  %598 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %596, i32 %597), !nosanitize !45
  %599 = extractvalue { i32, i1 } %598, 1, !nosanitize !45
  br i1 %599, label %600, label %601, !prof !46, !nosanitize !45

600:                                              ; preds = %593
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

601:                                              ; preds = %593
  %602 = extractvalue { i32, i1 } %598, 0, !nosanitize !45
  %603 = trunc i32 %602 to i16
  %604 = load i32, ptr %27, align 4, !tbaa !139
  %605 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %604, i32 1), !nosanitize !45
  %606 = extractvalue { i32, i1 } %605, 1, !nosanitize !45
  br i1 %606, label %607, label %608, !prof !46, !nosanitize !45

607:                                              ; preds = %601
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

608:                                              ; preds = %601
  %609 = extractvalue { i32, i1 } %605, 0, !nosanitize !45
  %610 = load ptr, ptr %26, align 8, !tbaa !44
  %611 = trunc i32 %602 to i8
  store i32 %609, ptr %27, align 4, !tbaa !139
  %612 = zext i32 %604 to i64
  %613 = getelementptr inbounds nuw i8, ptr %610, i64 %612
  store i8 %611, ptr %613, align 1, !tbaa !8
  %614 = load i32, ptr %27, align 4, !tbaa !139
  %615 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %614, i32 1), !nosanitize !45
  %616 = extractvalue { i32, i1 } %615, 1, !nosanitize !45
  br i1 %616, label %617, label %618, !prof !46, !nosanitize !45

617:                                              ; preds = %608
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

618:                                              ; preds = %608
  %619 = extractvalue { i32, i1 } %615, 0, !nosanitize !45
  %620 = load ptr, ptr %26, align 8, !tbaa !44
  %621 = lshr i32 %602, 8
  %622 = trunc i32 %621 to i8
  store i32 %619, ptr %27, align 4, !tbaa !139
  %623 = zext i32 %614 to i64
  %624 = getelementptr inbounds nuw i8, ptr %620, i64 %623
  store i8 %622, ptr %624, align 1, !tbaa !8
  %625 = load i32, ptr %27, align 4, !tbaa !139
  %626 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %625, i32 1), !nosanitize !45
  %627 = extractvalue { i32, i1 } %626, 1, !nosanitize !45
  br i1 %627, label %628, label %629, !prof !46, !nosanitize !45

628:                                              ; preds = %618
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

629:                                              ; preds = %618
  %630 = extractvalue { i32, i1 } %626, 0, !nosanitize !45
  %631 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %630, ptr %27, align 4, !tbaa !139
  %632 = zext i32 %625 to i64
  %633 = getelementptr inbounds nuw i8, ptr %631, i64 %632
  store i8 %595, ptr %633, align 1, !tbaa !8
  %634 = add i16 %603, -1
  %635 = zext i8 %595 to i64
  %636 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %635
  %637 = load i8, ptr %636, align 1, !tbaa !8
  %638 = zext i8 %637 to i64
  %639 = getelementptr [4 x i8], ptr %30, i64 %638
  %640 = load i16, ptr %639, align 4, !tbaa !8
  %641 = add i16 %640, 1
  store i16 %641, ptr %639, align 4, !tbaa !8
  %642 = icmp ult i16 %634, 256
  br i1 %642, label %643, label %646

643:                                              ; preds = %629
  %644 = zext nneg i16 %634 to i64
  %645 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %644
  br label %651

646:                                              ; preds = %629
  %647 = lshr i16 %634, 7
  %648 = zext nneg i16 %647 to i64
  %649 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %648
  %650 = getelementptr inbounds nuw i8, ptr %649, i64 256
  br label %651

651:                                              ; preds = %646, %643
  %652 = phi ptr [ %645, %643 ], [ %650, %646 ]
  %653 = load i8, ptr %652, align 1, !tbaa !8
  %654 = zext i8 %653 to i64
  %655 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %654
  %656 = load i16, ptr %655, align 4, !tbaa !8
  %657 = add i16 %656, 1
  store i16 %657, ptr %655, align 4, !tbaa !8
  %658 = load i32, ptr %27, align 4, !tbaa !139
  %659 = load i32, ptr %29, align 8, !tbaa !47
  %660 = icmp eq i32 %658, %659
  %661 = load i32, ptr %25, align 8, !tbaa !78
  %662 = load i32, ptr %3, align 4, !tbaa !75
  %663 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %662, i32 %661), !nosanitize !45
  %664 = extractvalue { i32, i1 } %663, 1, !nosanitize !45
  br i1 %664, label %665, label %666, !prof !46, !nosanitize !45

665:                                              ; preds = %651
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

666:                                              ; preds = %651
  %667 = extractvalue { i32, i1 } %663, 0, !nosanitize !45
  store i32 %667, ptr %3, align 4, !tbaa !75
  %668 = load i32, ptr %32, align 8, !tbaa !66
  %669 = icmp ule i32 %661, %668
  %670 = icmp ugt i32 %667, 2
  %671 = select i1 %669, i1 %670, i1 false
  br i1 %671, label %672, label %721

672:                                              ; preds = %666
  %673 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %661, i32 1), !nosanitize !45
  %674 = extractvalue { i32, i1 } %673, 1, !nosanitize !45
  br i1 %674, label %675, label %676, !prof !46, !nosanitize !45

675:                                              ; preds = %672
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

676:                                              ; preds = %672
  %677 = extractvalue { i32, i1 } %673, 0, !nosanitize !45
  store i32 %677, ptr %25, align 8, !tbaa !78
  %678 = load i32, ptr %6, align 4, !tbaa !73
  br label %679

679:                                              ; preds = %716, %676
  %680 = phi i32 [ %717, %716 ], [ %677, %676 ]
  %681 = phi i32 [ %686, %716 ], [ %678, %676 ]
  %682 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %681, i32 1), !nosanitize !45
  %683 = extractvalue { i32, i1 } %682, 1, !nosanitize !45
  br i1 %683, label %684, label %685, !prof !46, !nosanitize !45

684:                                              ; preds = %679
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

685:                                              ; preds = %679
  %686 = extractvalue { i32, i1 } %682, 0, !nosanitize !45
  store i32 %686, ptr %6, align 4, !tbaa !73
  %687 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %686, i32 2), !nosanitize !45
  %688 = extractvalue { i32, i1 } %687, 1, !nosanitize !45
  br i1 %688, label %689, label %690, !prof !46, !nosanitize !45

689:                                              ; preds = %685
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

690:                                              ; preds = %685
  %691 = extractvalue { i32, i1 } %687, 0, !nosanitize !45
  %692 = load ptr, ptr %7, align 8, !tbaa !34
  %693 = load i32, ptr %15, align 8, !tbaa !80
  %694 = load i32, ptr %16, align 8, !tbaa !53
  %695 = shl i32 %693, %694
  %696 = zext i32 %691 to i64
  %697 = getelementptr inbounds nuw i8, ptr %692, i64 %696
  %698 = load i8, ptr %697, align 1, !tbaa !8
  %699 = zext i8 %698 to i32
  %700 = xor i32 %695, %699
  %701 = load i32, ptr %17, align 4, !tbaa !52
  %702 = and i32 %700, %701
  store i32 %702, ptr %15, align 8, !tbaa !80
  %703 = load ptr, ptr %12, align 8, !tbaa !37
  %704 = zext i32 %702 to i64
  %705 = getelementptr inbounds nuw [2 x i8], ptr %703, i64 %704
  %706 = load i16, ptr %705, align 2, !tbaa !62
  %707 = load ptr, ptr %13, align 8, !tbaa !35
  %708 = load i32, ptr %18, align 8, !tbaa !33
  %709 = and i32 %708, %686
  %710 = zext i32 %709 to i64
  %711 = getelementptr inbounds nuw [2 x i8], ptr %707, i64 %710
  store i16 %706, ptr %711, align 2, !tbaa !62
  %712 = trunc i32 %686 to i16
  store i16 %712, ptr %705, align 2, !tbaa !62
  %713 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %680, i32 1), !nosanitize !45
  %714 = extractvalue { i32, i1 } %713, 1, !nosanitize !45
  br i1 %714, label %715, label %716, !prof !46, !nosanitize !45

715:                                              ; preds = %690
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

716:                                              ; preds = %690
  %717 = extractvalue { i32, i1 } %713, 0, !nosanitize !45
  store i32 %717, ptr %25, align 8, !tbaa !78
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %719, label %679, !llvm.loop !154

719:                                              ; preds = %716
  %720 = add nuw i32 %686, 1
  store i32 %720, ptr %6, align 4, !tbaa !73
  br i1 %660, label %800, label %788

721:                                              ; preds = %666
  %722 = load i32, ptr %6, align 4, !tbaa !73
  %723 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %722, i32 %661), !nosanitize !45
  %724 = extractvalue { i32, i1 } %723, 1, !nosanitize !45
  br i1 %724, label %725, label %726, !prof !46, !nosanitize !45

725:                                              ; preds = %721
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

726:                                              ; preds = %721
  %727 = extractvalue { i32, i1 } %723, 0, !nosanitize !45
  store i32 %727, ptr %6, align 4, !tbaa !73
  store i32 0, ptr %25, align 8, !tbaa !78
  %728 = load ptr, ptr %7, align 8, !tbaa !34
  %729 = zext i32 %727 to i64
  %730 = getelementptr inbounds nuw i8, ptr %728, i64 %729
  %731 = load i8, ptr %730, align 1, !tbaa !8
  %732 = zext i8 %731 to i32
  store i32 %732, ptr %15, align 8, !tbaa !80
  %733 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %727, i32 1), !nosanitize !45
  %734 = extractvalue { i32, i1 } %733, 1, !nosanitize !45
  br i1 %734, label %735, label %789, !prof !46, !nosanitize !45

735:                                              ; preds = %726
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

736:                                              ; preds = %590
  %737 = load ptr, ptr %7, align 8, !tbaa !34
  %738 = load i32, ptr %6, align 4, !tbaa !73
  %739 = zext i32 %738 to i64
  %740 = getelementptr inbounds nuw i8, ptr %737, i64 %739
  %741 = load i8, ptr %740, align 1, !tbaa !8
  %742 = load i32, ptr %27, align 4, !tbaa !139
  %743 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %742, i32 1), !nosanitize !45
  %744 = extractvalue { i32, i1 } %743, 1, !nosanitize !45
  br i1 %744, label %745, label %746, !prof !46, !nosanitize !45

745:                                              ; preds = %736
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

746:                                              ; preds = %736
  %747 = extractvalue { i32, i1 } %743, 0, !nosanitize !45
  %748 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %747, ptr %27, align 4, !tbaa !139
  %749 = zext i32 %742 to i64
  %750 = getelementptr inbounds nuw i8, ptr %748, i64 %749
  store i8 0, ptr %750, align 1, !tbaa !8
  %751 = load i32, ptr %27, align 4, !tbaa !139
  %752 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %751, i32 1), !nosanitize !45
  %753 = extractvalue { i32, i1 } %752, 1, !nosanitize !45
  br i1 %753, label %754, label %755, !prof !46, !nosanitize !45

754:                                              ; preds = %746
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

755:                                              ; preds = %746
  %756 = extractvalue { i32, i1 } %752, 0, !nosanitize !45
  %757 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %756, ptr %27, align 4, !tbaa !139
  %758 = zext i32 %751 to i64
  %759 = getelementptr inbounds nuw i8, ptr %757, i64 %758
  store i8 0, ptr %759, align 1, !tbaa !8
  %760 = load i32, ptr %27, align 4, !tbaa !139
  %761 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %760, i32 1), !nosanitize !45
  %762 = extractvalue { i32, i1 } %761, 1, !nosanitize !45
  br i1 %762, label %763, label %764, !prof !46, !nosanitize !45

763:                                              ; preds = %755
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

764:                                              ; preds = %755
  %765 = extractvalue { i32, i1 } %761, 0, !nosanitize !45
  %766 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %765, ptr %27, align 4, !tbaa !139
  %767 = zext i32 %760 to i64
  %768 = getelementptr inbounds nuw i8, ptr %766, i64 %767
  store i8 %741, ptr %768, align 1, !tbaa !8
  %769 = zext i8 %741 to i64
  %770 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %769
  %771 = load i16, ptr %770, align 4, !tbaa !8
  %772 = add i16 %771, 1
  store i16 %772, ptr %770, align 4, !tbaa !8
  %773 = load i32, ptr %27, align 4, !tbaa !139
  %774 = load i32, ptr %29, align 8, !tbaa !47
  %775 = icmp eq i32 %773, %774
  %776 = load i32, ptr %3, align 4, !tbaa !75
  %777 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %776, i32 1), !nosanitize !45
  %778 = extractvalue { i32, i1 } %777, 1, !nosanitize !45
  br i1 %778, label %779, label %780, !prof !46, !nosanitize !45

779:                                              ; preds = %944, %876, %808, %764
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

780:                                              ; preds = %764
  %781 = extractvalue { i32, i1 } %777, 0, !nosanitize !45
  store i32 %781, ptr %3, align 4, !tbaa !75
  %782 = load i32, ptr %6, align 4, !tbaa !73
  %783 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %782, i32 1), !nosanitize !45
  %784 = extractvalue { i32, i1 } %783, 1, !nosanitize !45
  br i1 %784, label %785, label %786, !prof !46, !nosanitize !45

785:                                              ; preds = %780
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

786:                                              ; preds = %780
  %787 = extractvalue { i32, i1 } %783, 0, !nosanitize !45
  store i32 %787, ptr %6, align 4, !tbaa !73
  br i1 %775, label %800, label %788

788:                                              ; preds = %860, %789, %786, %719
  br label %33

789:                                              ; preds = %726
  %790 = extractvalue { i32, i1 } %733, 0, !nosanitize !45
  %791 = load i32, ptr %16, align 8, !tbaa !53
  %792 = shl i32 %732, %791
  %793 = zext i32 %790 to i64
  %794 = getelementptr inbounds nuw i8, ptr %728, i64 %793
  %795 = load i8, ptr %794, align 1, !tbaa !8
  %796 = zext i8 %795 to i32
  %797 = xor i32 %792, %796
  %798 = load i32, ptr %17, align 4, !tbaa !52
  %799 = and i32 %797, %798
  store i32 %799, ptr %15, align 8, !tbaa !80
  br i1 %660, label %800, label %788

800:                                              ; preds = %789, %786, %719
  %801 = phi i32 [ %787, %786 ], [ %720, %719 ], [ %727, %789 ]
  %802 = load i64, ptr %9, align 8, !tbaa !74
  %803 = icmp sgt i64 %802, -1
  br i1 %803, label %804, label %808

804:                                              ; preds = %800
  %805 = load ptr, ptr %7, align 8, !tbaa !34
  %806 = and i64 %802, 4294967295
  %807 = getelementptr inbounds nuw i8, ptr %805, i64 %806
  br label %808

808:                                              ; preds = %804, %800
  %809 = phi ptr [ %807, %804 ], [ null, %800 ]
  %810 = zext i32 %801 to i64
  %811 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %810, i64 %802), !nosanitize !45
  %812 = extractvalue { i64, i1 } %811, 1, !nosanitize !45
  br i1 %812, label %779, label %813, !prof !46, !nosanitize !45

813:                                              ; preds = %808
  %814 = extractvalue { i64, i1 } %811, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %809, i64 noundef %814, i32 noundef 0) #10
  %815 = load i32, ptr %6, align 4, !tbaa !73
  %816 = zext i32 %815 to i64
  store i64 %816, ptr %9, align 8, !tbaa !74
  %817 = load ptr, ptr %0, align 8, !tbaa !20
  %818 = getelementptr inbounds nuw i8, ptr %817, i64 56
  %819 = load ptr, ptr %818, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %819) #10
  %820 = getelementptr inbounds nuw i8, ptr %819, i64 40
  %821 = load i64, ptr %820, align 8, !tbaa !57
  %822 = getelementptr inbounds nuw i8, ptr %817, i64 32
  %823 = load i32, ptr %822, align 8, !tbaa !107
  %824 = zext i32 %823 to i64
  %825 = tail call i64 @llvm.umin.i64(i64 %821, i64 %824)
  %826 = trunc nuw i64 %825 to i32
  %827 = icmp eq i64 %825, 0
  br i1 %827, label %860, label %828

828:                                              ; preds = %813
  %829 = getelementptr inbounds nuw i8, ptr %817, i64 24
  %830 = load ptr, ptr %829, align 8, !tbaa !106
  %831 = getelementptr inbounds nuw i8, ptr %819, i64 32
  %832 = load ptr, ptr %831, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %830, ptr align 1 %832, i64 %825, i1 false)
  %833 = load ptr, ptr %829, align 8, !tbaa !106
  %834 = getelementptr inbounds nuw i8, ptr %833, i64 %825
  store ptr %834, ptr %829, align 8, !tbaa !106
  %835 = load ptr, ptr %831, align 8, !tbaa !58
  %836 = getelementptr inbounds nuw i8, ptr %835, i64 %825
  store ptr %836, ptr %831, align 8, !tbaa !58
  %837 = getelementptr inbounds nuw i8, ptr %817, i64 40
  %838 = load i64, ptr %837, align 8, !tbaa !108
  %839 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %838, i64 %825), !nosanitize !45
  %840 = extractvalue { i64, i1 } %839, 1, !nosanitize !45
  br i1 %840, label %841, label %842, !prof !46, !nosanitize !45

841:                                              ; preds = %828
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

842:                                              ; preds = %828
  %843 = extractvalue { i64, i1 } %839, 0, !nosanitize !45
  store i64 %843, ptr %837, align 8, !tbaa !108
  %844 = load i32, ptr %822, align 8, !tbaa !107
  %845 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %844, i32 %826), !nosanitize !45
  %846 = extractvalue { i32, i1 } %845, 1, !nosanitize !45
  br i1 %846, label %847, label %848, !prof !46, !nosanitize !45

847:                                              ; preds = %842
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

848:                                              ; preds = %842
  %849 = extractvalue { i32, i1 } %845, 0, !nosanitize !45
  store i32 %849, ptr %822, align 8, !tbaa !107
  %850 = load i64, ptr %820, align 8, !tbaa !57
  %851 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %850, i64 %825), !nosanitize !45
  %852 = extractvalue { i64, i1 } %851, 1, !nosanitize !45
  br i1 %852, label %853, label %854, !prof !46, !nosanitize !45

853:                                              ; preds = %848
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

854:                                              ; preds = %848
  %855 = extractvalue { i64, i1 } %851, 0, !nosanitize !45
  store i64 %855, ptr %820, align 8, !tbaa !57
  %856 = icmp eq i64 %855, 0
  br i1 %856, label %857, label %860

857:                                              ; preds = %854
  %858 = getelementptr inbounds nuw i8, ptr %819, i64 16
  %859 = load ptr, ptr %858, align 8, !tbaa !40
  store ptr %859, ptr %831, align 8, !tbaa !58
  br label %860

860:                                              ; preds = %857, %854, %813
  %861 = load ptr, ptr %0, align 8, !tbaa !20
  %862 = getelementptr inbounds nuw i8, ptr %861, i64 32
  %863 = load i32, ptr %862, align 8, !tbaa !107
  %864 = icmp eq i32 %863, 0
  br i1 %864, label %1002, label %788

865:                                              ; preds = %374
  %866 = load i32, ptr %6, align 4, !tbaa !73
  %867 = tail call i32 @llvm.umin.i32(i32 %866, i32 2)
  store i32 %867, ptr %10, align 4, !tbaa !76
  %868 = icmp eq i32 %1, 4
  br i1 %868, label %869, label %934

869:                                              ; preds = %865
  %870 = load i64, ptr %9, align 8, !tbaa !74
  %871 = icmp sgt i64 %870, -1
  br i1 %871, label %872, label %876

872:                                              ; preds = %869
  %873 = load ptr, ptr %7, align 8, !tbaa !34
  %874 = and i64 %870, 4294967295
  %875 = getelementptr inbounds nuw i8, ptr %873, i64 %874
  br label %876

876:                                              ; preds = %872, %869
  %877 = phi ptr [ %875, %872 ], [ null, %869 ]
  %878 = zext i32 %866 to i64
  %879 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %878, i64 %870), !nosanitize !45
  %880 = extractvalue { i64, i1 } %879, 1, !nosanitize !45
  br i1 %880, label %779, label %881, !prof !46, !nosanitize !45

881:                                              ; preds = %876
  %882 = extractvalue { i64, i1 } %879, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %877, i64 noundef %882, i32 noundef 1) #10
  %883 = load i32, ptr %6, align 4, !tbaa !73
  %884 = zext i32 %883 to i64
  store i64 %884, ptr %9, align 8, !tbaa !74
  %885 = load ptr, ptr %0, align 8, !tbaa !20
  %886 = getelementptr inbounds nuw i8, ptr %885, i64 56
  %887 = load ptr, ptr %886, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %887) #10
  %888 = getelementptr inbounds nuw i8, ptr %887, i64 40
  %889 = load i64, ptr %888, align 8, !tbaa !57
  %890 = getelementptr inbounds nuw i8, ptr %885, i64 32
  %891 = load i32, ptr %890, align 8, !tbaa !107
  %892 = zext i32 %891 to i64
  %893 = tail call i64 @llvm.umin.i64(i64 %889, i64 %892)
  %894 = trunc nuw i64 %893 to i32
  %895 = icmp eq i64 %893, 0
  br i1 %895, label %928, label %896

896:                                              ; preds = %881
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

910:                                              ; preds = %896
  %911 = extractvalue { i64, i1 } %907, 0, !nosanitize !45
  store i64 %911, ptr %905, align 8, !tbaa !108
  %912 = load i32, ptr %890, align 8, !tbaa !107
  %913 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %912, i32 %894), !nosanitize !45
  %914 = extractvalue { i32, i1 } %913, 1, !nosanitize !45
  br i1 %914, label %915, label %916, !prof !46, !nosanitize !45

915:                                              ; preds = %910
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

916:                                              ; preds = %910
  %917 = extractvalue { i32, i1 } %913, 0, !nosanitize !45
  store i32 %917, ptr %890, align 8, !tbaa !107
  %918 = load i64, ptr %888, align 8, !tbaa !57
  %919 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %918, i64 %893), !nosanitize !45
  %920 = extractvalue { i64, i1 } %919, 1, !nosanitize !45
  br i1 %920, label %921, label %922, !prof !46, !nosanitize !45

921:                                              ; preds = %916
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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

928:                                              ; preds = %925, %922, %881
  %929 = load ptr, ptr %0, align 8, !tbaa !20
  %930 = getelementptr inbounds nuw i8, ptr %929, i64 32
  %931 = load i32, ptr %930, align 8, !tbaa !107
  %932 = icmp eq i32 %931, 0
  %933 = select i1 %932, i32 2, i32 3
  br label %1002

934:                                              ; preds = %865
  %935 = load i32, ptr %27, align 4, !tbaa !139
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %1001, label %937

937:                                              ; preds = %934
  %938 = load i64, ptr %9, align 8, !tbaa !74
  %939 = icmp sgt i64 %938, -1
  br i1 %939, label %940, label %944

940:                                              ; preds = %937
  %941 = load ptr, ptr %7, align 8, !tbaa !34
  %942 = and i64 %938, 4294967295
  %943 = getelementptr inbounds nuw i8, ptr %941, i64 %942
  br label %944

944:                                              ; preds = %940, %937
  %945 = phi ptr [ %943, %940 ], [ null, %937 ]
  %946 = zext i32 %866 to i64
  %947 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %946, i64 %938), !nosanitize !45
  %948 = extractvalue { i64, i1 } %947, 1, !nosanitize !45
  br i1 %948, label %779, label %949, !prof !46, !nosanitize !45

949:                                              ; preds = %944
  %950 = extractvalue { i64, i1 } %947, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %945, i64 noundef %950, i32 noundef 0) #10
  %951 = load i32, ptr %6, align 4, !tbaa !73
  %952 = zext i32 %951 to i64
  store i64 %952, ptr %9, align 8, !tbaa !74
  %953 = load ptr, ptr %0, align 8, !tbaa !20
  %954 = getelementptr inbounds nuw i8, ptr %953, i64 56
  %955 = load ptr, ptr %954, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %955) #10
  %956 = getelementptr inbounds nuw i8, ptr %955, i64 40
  %957 = load i64, ptr %956, align 8, !tbaa !57
  %958 = getelementptr inbounds nuw i8, ptr %953, i64 32
  %959 = load i32, ptr %958, align 8, !tbaa !107
  %960 = zext i32 %959 to i64
  %961 = tail call i64 @llvm.umin.i64(i64 %957, i64 %960)
  %962 = trunc nuw i64 %961 to i32
  %963 = icmp eq i64 %961, 0
  br i1 %963, label %996, label %964

964:                                              ; preds = %949
  %965 = getelementptr inbounds nuw i8, ptr %953, i64 24
  %966 = load ptr, ptr %965, align 8, !tbaa !106
  %967 = getelementptr inbounds nuw i8, ptr %955, i64 32
  %968 = load ptr, ptr %967, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %966, ptr align 1 %968, i64 %961, i1 false)
  %969 = load ptr, ptr %965, align 8, !tbaa !106
  %970 = getelementptr inbounds nuw i8, ptr %969, i64 %961
  store ptr %970, ptr %965, align 8, !tbaa !106
  %971 = load ptr, ptr %967, align 8, !tbaa !58
  %972 = getelementptr inbounds nuw i8, ptr %971, i64 %961
  store ptr %972, ptr %967, align 8, !tbaa !58
  %973 = getelementptr inbounds nuw i8, ptr %953, i64 40
  %974 = load i64, ptr %973, align 8, !tbaa !108
  %975 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %974, i64 %961), !nosanitize !45
  %976 = extractvalue { i64, i1 } %975, 1, !nosanitize !45
  br i1 %976, label %977, label %978, !prof !46, !nosanitize !45

977:                                              ; preds = %964
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

978:                                              ; preds = %964
  %979 = extractvalue { i64, i1 } %975, 0, !nosanitize !45
  store i64 %979, ptr %973, align 8, !tbaa !108
  %980 = load i32, ptr %958, align 8, !tbaa !107
  %981 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %980, i32 %962), !nosanitize !45
  %982 = extractvalue { i32, i1 } %981, 1, !nosanitize !45
  br i1 %982, label %983, label %984, !prof !46, !nosanitize !45

983:                                              ; preds = %978
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

984:                                              ; preds = %978
  %985 = extractvalue { i32, i1 } %981, 0, !nosanitize !45
  store i32 %985, ptr %958, align 8, !tbaa !107
  %986 = load i64, ptr %956, align 8, !tbaa !57
  %987 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %986, i64 %961), !nosanitize !45
  %988 = extractvalue { i64, i1 } %987, 1, !nosanitize !45
  br i1 %988, label %989, label %990, !prof !46, !nosanitize !45

989:                                              ; preds = %984
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

990:                                              ; preds = %984
  %991 = extractvalue { i64, i1 } %987, 0, !nosanitize !45
  store i64 %991, ptr %956, align 8, !tbaa !57
  %992 = icmp eq i64 %991, 0
  br i1 %992, label %993, label %996

993:                                              ; preds = %990
  %994 = getelementptr inbounds nuw i8, ptr %955, i64 16
  %995 = load ptr, ptr %994, align 8, !tbaa !40
  store ptr %995, ptr %967, align 8, !tbaa !58
  br label %996

996:                                              ; preds = %993, %990, %949
  %997 = load ptr, ptr %0, align 8, !tbaa !20
  %998 = getelementptr inbounds nuw i8, ptr %997, i64 32
  %999 = load i32, ptr %998, align 8, !tbaa !107
  %1000 = icmp eq i32 %999, 0
  br i1 %1000, label %1002, label %1001

1001:                                             ; preds = %996, %934
  br label %1002

1002:                                             ; preds = %1001, %996, %928, %860, %370
  %1003 = phi i32 [ 1, %1001 ], [ %933, %928 ], [ 0, %996 ], [ 0, %370 ], [ 0, %860 ]
  ret i32 %1003
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

36:                                               ; preds = %775, %2
  %37 = load i32, ptr %3, align 4, !tbaa !75
  %38 = icmp ult i32 %37, 262
  br i1 %38, label %39, label %384

39:                                               ; preds = %36
  %40 = load i32, ptr %4, align 8, !tbaa !32
  %41 = zext i32 %40 to i64
  br label %42

42:                                               ; preds = %324, %39
  %43 = phi i32 [ %251, %324 ], [ %37, %39 ]
  %44 = load i64, ptr %5, align 8, !tbaa !61
  %45 = zext nneg i32 %43 to i64
  %46 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %44, i64 %45), !nosanitize !45
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !45
  br i1 %47, label %48, label %49, !prof !46, !nosanitize !45

48:                                               ; preds = %42
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

49:                                               ; preds = %42
  %50 = extractvalue { i64, i1 } %46, 0, !nosanitize !45
  %51 = load i32, ptr %6, align 4, !tbaa !73
  %52 = zext i32 %51 to i64
  %53 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %50, i64 %52), !nosanitize !45
  %54 = extractvalue { i64, i1 } %53, 1, !nosanitize !45
  br i1 %54, label %55, label %56, !prof !46, !nosanitize !45

55:                                               ; preds = %49
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

56:                                               ; preds = %49
  %57 = extractvalue { i64, i1 } %53, 0, !nosanitize !45
  %58 = trunc i64 %57 to i32
  %59 = load i32, ptr %4, align 8, !tbaa !32
  %60 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %59, i32 262), !nosanitize !45
  %61 = extractvalue { i32, i1 } %60, 1, !nosanitize !45
  br i1 %61, label %62, label %63, !prof !46, !nosanitize !45

62:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

63:                                               ; preds = %56
  %64 = extractvalue { i32, i1 } %60, 0, !nosanitize !45
  %65 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %40, i32 %64), !nosanitize !45
  %66 = extractvalue { i32, i1 } %65, 1, !nosanitize !45
  br i1 %66, label %67, label %68, !prof !46, !nosanitize !45

67:                                               ; preds = %63
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

68:                                               ; preds = %63
  %69 = extractvalue { i32, i1 } %65, 0, !nosanitize !45
  %70 = icmp ult i32 %51, %69
  br i1 %70, label %198, label %71

71:                                               ; preds = %68
  %72 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %40, i32 %58), !nosanitize !45
  %73 = extractvalue { i32, i1 } %72, 1, !nosanitize !45
  br i1 %73, label %74, label %75, !prof !46, !nosanitize !45

74:                                               ; preds = %71
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

84:                                               ; preds = %75
  %85 = extractvalue { i32, i1 } %81, 0, !nosanitize !45
  store i32 %85, ptr %8, align 8, !tbaa !83
  %86 = load i32, ptr %6, align 4, !tbaa !73
  %87 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %86, i32 %40), !nosanitize !45
  %88 = extractvalue { i32, i1 } %87, 1, !nosanitize !45
  br i1 %88, label %89, label %90, !prof !46, !nosanitize !45

89:                                               ; preds = %90, %84
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

90:                                               ; preds = %84
  %91 = extractvalue { i32, i1 } %87, 0, !nosanitize !45
  store i32 %91, ptr %6, align 4, !tbaa !73
  %92 = load i64, ptr %9, align 8, !tbaa !74
  %93 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %92, i64 %41), !nosanitize !45
  %94 = extractvalue { i64, i1 } %93, 1, !nosanitize !45
  br i1 %94, label %89, label %95, !prof !46, !nosanitize !45

95:                                               ; preds = %90
  %96 = extractvalue { i64, i1 } %93, 0, !nosanitize !45
  store i64 %96, ptr %9, align 8, !tbaa !74
  %97 = load i32, ptr %10, align 4, !tbaa !76
  %98 = icmp ugt i32 %97, %91
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i32 %91, ptr %10, align 4, !tbaa !76
  br label %100

100:                                              ; preds = %99, %95
  %101 = load i32, ptr %4, align 8, !tbaa !32
  %102 = load i32, ptr %11, align 4, !tbaa !36
  %103 = load ptr, ptr %12, align 8, !tbaa !37
  %104 = zext i32 %102 to i64
  %105 = getelementptr inbounds nuw [2 x i8], ptr %103, i64 %104
  %106 = icmp eq i32 %102, 0
  br i1 %106, label %133, label %107, !prof !46, !nosanitize !45

107:                                              ; preds = %100
  %108 = icmp ult i32 %102, 8
  br i1 %108, label %130, label %109

109:                                              ; preds = %107
  %110 = and i64 %104, 4294967288
  %111 = mul nsw i64 %110, -2
  %112 = getelementptr i8, ptr %105, i64 %111
  %113 = trunc nuw i64 %110 to i32
  %114 = sub i32 %102, %113
  %115 = insertelement <8 x i32> poison, i32 %101, i64 0
  %116 = shufflevector <8 x i32> %115, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %117

117:                                              ; preds = %117, %109
  %118 = phi i64 [ 0, %109 ], [ %126, %117 ]
  %119 = mul i64 %118, -2
  %120 = getelementptr i8, ptr %105, i64 %119
  %121 = getelementptr inbounds i8, ptr %120, i64 -16
  %122 = load <8 x i16>, ptr %121, align 2, !tbaa !62
  %123 = zext <8 x i16> %122 to <8 x i32>
  %124 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %123, <8 x i32> %116)
  %125 = trunc nuw <8 x i32> %124 to <8 x i16>
  store <8 x i16> %125, ptr %121, align 2, !tbaa !62
  %126 = add nuw i64 %118, 8
  %127 = icmp eq i64 %126, %110
  br i1 %127, label %128, label %117, !llvm.loop !155

128:                                              ; preds = %117
  %129 = icmp eq i64 %110, %104
  br i1 %129, label %149, label %130

130:                                              ; preds = %128, %107
  %131 = phi ptr [ %105, %107 ], [ %112, %128 ]
  %132 = phi i32 [ %102, %107 ], [ %114, %128 ]
  br label %139

133:                                              ; preds = %100
  %134 = getelementptr inbounds i8, ptr %105, i64 -2
  %135 = load i16, ptr %134, align 2, !tbaa !62
  %136 = zext i16 %135 to i32
  %137 = tail call i32 @llvm.usub.sat.i32(i32 %136, i32 %101)
  %138 = trunc nuw i32 %137 to i16
  store i16 %138, ptr %134, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

139:                                              ; preds = %139, %130
  %140 = phi ptr [ %142, %139 ], [ %131, %130 ]
  %141 = phi i32 [ %147, %139 ], [ %132, %130 ]
  %142 = getelementptr inbounds i8, ptr %140, i64 -2
  %143 = load i16, ptr %142, align 2, !tbaa !62
  %144 = zext i16 %143 to i32
  %145 = tail call i32 @llvm.usub.sat.i32(i32 %144, i32 %101)
  %146 = trunc nuw i32 %145 to i16
  store i16 %146, ptr %142, align 2, !tbaa !62
  %147 = add i32 %141, -1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %139, !llvm.loop !156

149:                                              ; preds = %139, %128
  %150 = icmp eq i32 %101, 0
  br i1 %150, label %151, label %152, !prof !46, !nosanitize !45

151:                                              ; preds = %149
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

152:                                              ; preds = %149
  %153 = load ptr, ptr %13, align 8, !tbaa !35
  %154 = zext i32 %101 to i64
  %155 = getelementptr inbounds nuw [2 x i8], ptr %153, i64 %154
  %156 = icmp ult i32 %101, 8
  br i1 %156, label %178, label %157

157:                                              ; preds = %152
  %158 = and i64 %154, 4294967288
  %159 = mul nsw i64 %158, -2
  %160 = getelementptr i8, ptr %155, i64 %159
  %161 = trunc nuw i64 %158 to i32
  %162 = sub i32 %101, %161
  %163 = insertelement <8 x i32> poison, i32 %101, i64 0
  %164 = shufflevector <8 x i32> %163, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %165

165:                                              ; preds = %165, %157
  %166 = phi i64 [ 0, %157 ], [ %174, %165 ]
  %167 = mul i64 %166, -2
  %168 = getelementptr i8, ptr %155, i64 %167
  %169 = getelementptr inbounds i8, ptr %168, i64 -16
  %170 = load <8 x i16>, ptr %169, align 2, !tbaa !62
  %171 = zext <8 x i16> %170 to <8 x i32>
  %172 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %171, <8 x i32> %164)
  %173 = trunc nuw <8 x i32> %172 to <8 x i16>
  store <8 x i16> %173, ptr %169, align 2, !tbaa !62
  %174 = add nuw i64 %166, 8
  %175 = icmp eq i64 %174, %158
  br i1 %175, label %176, label %165, !llvm.loop !157

176:                                              ; preds = %165
  %177 = icmp eq i64 %158, %154
  br i1 %177, label %191, label %178

178:                                              ; preds = %176, %152
  %179 = phi ptr [ %155, %152 ], [ %160, %176 ]
  %180 = phi i32 [ %101, %152 ], [ %162, %176 ]
  br label %181

181:                                              ; preds = %181, %178
  %182 = phi ptr [ %184, %181 ], [ %179, %178 ]
  %183 = phi i32 [ %189, %181 ], [ %180, %178 ]
  %184 = getelementptr inbounds i8, ptr %182, i64 -2
  %185 = load i16, ptr %184, align 2, !tbaa !62
  %186 = zext i16 %185 to i32
  %187 = tail call i32 @llvm.usub.sat.i32(i32 %186, i32 %101)
  %188 = trunc nuw i32 %187 to i16
  store i16 %188, ptr %184, align 2, !tbaa !62
  %189 = add i32 %183, -1
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %181, !llvm.loop !158

191:                                              ; preds = %181, %176
  store i32 1, ptr %14, align 8, !tbaa !63
  %192 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %58, i32 %40), !nosanitize !45
  %193 = extractvalue { i32, i1 } %192, 1, !nosanitize !45
  br i1 %193, label %194, label %195, !prof !46, !nosanitize !45

194:                                              ; preds = %191
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

195:                                              ; preds = %191
  %196 = extractvalue { i32, i1 } %192, 0, !nosanitize !45
  %197 = load i32, ptr %3, align 4, !tbaa !75
  br label %198

198:                                              ; preds = %195, %68
  %199 = phi i32 [ %197, %195 ], [ %43, %68 ]
  %200 = phi i32 [ %91, %195 ], [ %51, %68 ]
  %201 = phi i32 [ %196, %195 ], [ %58, %68 ]
  %202 = load ptr, ptr %0, align 8, !tbaa !20
  %203 = getelementptr inbounds nuw i8, ptr %202, i64 8
  %204 = load i32, ptr %203, align 8, !tbaa !81
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %329, label %206

206:                                              ; preds = %198
  %207 = load ptr, ptr %7, align 8, !tbaa !34
  %208 = zext i32 %200 to i64
  %209 = getelementptr inbounds nuw i8, ptr %207, i64 %208
  %210 = zext i32 %199 to i64
  %211 = getelementptr inbounds nuw i8, ptr %209, i64 %210
  %212 = tail call i32 @llvm.umin.i32(i32 %204, i32 %201)
  %213 = icmp eq i32 %201, 0
  br i1 %213, label %245, label %214

214:                                              ; preds = %206
  %215 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %204, i32 %212), !nosanitize !45
  %216 = extractvalue { i32, i1 } %215, 1, !nosanitize !45
  br i1 %216, label %217, label %218, !prof !46, !nosanitize !45

217:                                              ; preds = %214
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

218:                                              ; preds = %214
  %219 = extractvalue { i32, i1 } %215, 0, !nosanitize !45
  store i32 %219, ptr %203, align 8, !tbaa !81
  %220 = load ptr, ptr %202, align 8, !tbaa !82
  %221 = zext i32 %212 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %211, ptr align 1 %220, i64 %221, i1 false)
  %222 = getelementptr inbounds nuw i8, ptr %202, i64 56
  %223 = load ptr, ptr %222, align 8, !tbaa !19
  %224 = getelementptr inbounds nuw i8, ptr %223, i64 48
  %225 = load i32, ptr %224, align 8, !tbaa !30
  switch i32 %225, label %234 [
    i32 1, label %226
    i32 2, label %230
  ]

226:                                              ; preds = %218
  %227 = getelementptr inbounds nuw i8, ptr %202, i64 96
  %228 = load i64, ptr %227, align 8, !tbaa !59
  %229 = tail call i64 @adler32(i64 noundef %228, ptr noundef %211, i32 noundef %212) #10
  store i64 %229, ptr %227, align 8, !tbaa !59
  br label %234

230:                                              ; preds = %218
  %231 = getelementptr inbounds nuw i8, ptr %202, i64 96
  %232 = load i64, ptr %231, align 8, !tbaa !59
  %233 = tail call i64 @crc32(i64 noundef %232, ptr noundef %211, i32 noundef %212) #10
  store i64 %233, ptr %231, align 8, !tbaa !59
  br label %234

234:                                              ; preds = %230, %226, %218
  %235 = load ptr, ptr %202, align 8, !tbaa !82
  %236 = getelementptr inbounds nuw i8, ptr %235, i64 %221
  store ptr %236, ptr %202, align 8, !tbaa !82
  %237 = getelementptr inbounds nuw i8, ptr %202, i64 16
  %238 = load i64, ptr %237, align 8, !tbaa !55
  %239 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %238, i64 %221), !nosanitize !45
  %240 = extractvalue { i64, i1 } %239, 1, !nosanitize !45
  br i1 %240, label %241, label %242, !prof !46, !nosanitize !45

241:                                              ; preds = %234
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

242:                                              ; preds = %234
  %243 = extractvalue { i64, i1 } %239, 0, !nosanitize !45
  store i64 %243, ptr %237, align 8, !tbaa !55
  %244 = load i32, ptr %3, align 4, !tbaa !75
  br label %245

245:                                              ; preds = %242, %206
  %246 = phi i32 [ %199, %206 ], [ %244, %242 ]
  %247 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %246, i32 %212), !nosanitize !45
  %248 = extractvalue { i32, i1 } %247, 1, !nosanitize !45
  br i1 %248, label %249, label %250, !prof !46, !nosanitize !45

249:                                              ; preds = %245
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

250:                                              ; preds = %245
  %251 = extractvalue { i32, i1 } %247, 0, !nosanitize !45
  store i32 %251, ptr %3, align 4, !tbaa !75
  %252 = load i32, ptr %10, align 4, !tbaa !76
  %253 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %251, i32 %252), !nosanitize !45
  %254 = extractvalue { i32, i1 } %253, 1, !nosanitize !45
  br i1 %254, label %255, label %256, !prof !46, !nosanitize !45

255:                                              ; preds = %250
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

256:                                              ; preds = %250
  %257 = extractvalue { i32, i1 } %253, 0, !nosanitize !45
  %258 = icmp ugt i32 %257, 2
  br i1 %258, label %259, label %322

259:                                              ; preds = %256
  %260 = load i32, ptr %6, align 4, !tbaa !73
  %261 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %260, i32 %252), !nosanitize !45
  %262 = extractvalue { i32, i1 } %261, 0, !nosanitize !45
  %263 = extractvalue { i32, i1 } %261, 1, !nosanitize !45
  br i1 %263, label %264, label %265, !prof !46, !nosanitize !45

264:                                              ; preds = %259
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

265:                                              ; preds = %259
  %266 = load ptr, ptr %7, align 8, !tbaa !34
  %267 = zext i32 %262 to i64
  %268 = getelementptr inbounds nuw i8, ptr %266, i64 %267
  %269 = load i8, ptr %268, align 1, !tbaa !8
  %270 = zext i8 %269 to i32
  store i32 %270, ptr %15, align 8, !tbaa !80
  %271 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %262, i32 1), !nosanitize !45
  %272 = extractvalue { i32, i1 } %271, 1, !nosanitize !45
  br i1 %272, label %273, label %274, !prof !46, !nosanitize !45

273:                                              ; preds = %265
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

274:                                              ; preds = %265
  %275 = extractvalue { i32, i1 } %271, 0, !nosanitize !45
  %276 = load i32, ptr %16, align 8, !tbaa !53
  %277 = shl i32 %270, %276
  %278 = zext i32 %275 to i64
  %279 = getelementptr inbounds nuw i8, ptr %266, i64 %278
  %280 = load i8, ptr %279, align 1, !tbaa !8
  %281 = zext i8 %280 to i32
  %282 = xor i32 %277, %281
  %283 = load i32, ptr %17, align 4, !tbaa !52
  %284 = and i32 %282, %283
  store i32 %284, ptr %15, align 8, !tbaa !80
  br label %285

285:                                              ; preds = %318, %274
  %286 = phi i32 [ %284, %274 ], [ %303, %318 ]
  %287 = phi i32 [ %252, %274 ], [ %314, %318 ]
  %288 = phi i32 [ %262, %274 ], [ %319, %318 ]
  %289 = icmp eq i32 %287, 0
  br i1 %289, label %322, label %290

290:                                              ; preds = %285
  %291 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %288, i32 3), !nosanitize !45
  %292 = extractvalue { i32, i1 } %291, 1, !nosanitize !45
  br i1 %292, label %293, label %294, !prof !46, !nosanitize !45

293:                                              ; preds = %290
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

294:                                              ; preds = %290
  %295 = shl i32 %286, %276
  %296 = extractvalue { i32, i1 } %291, 0, !nosanitize !45
  %297 = add i32 %296, -1
  %298 = zext i32 %297 to i64
  %299 = getelementptr inbounds nuw i8, ptr %266, i64 %298
  %300 = load i8, ptr %299, align 1, !tbaa !8
  %301 = zext i8 %300 to i32
  %302 = xor i32 %295, %301
  %303 = and i32 %302, %283
  store i32 %303, ptr %15, align 8, !tbaa !80
  %304 = load ptr, ptr %12, align 8, !tbaa !37
  %305 = zext i32 %303 to i64
  %306 = getelementptr inbounds nuw [2 x i8], ptr %304, i64 %305
  %307 = load i16, ptr %306, align 2, !tbaa !62
  %308 = load ptr, ptr %13, align 8, !tbaa !35
  %309 = load i32, ptr %18, align 8, !tbaa !33
  %310 = and i32 %309, %288
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds nuw [2 x i8], ptr %308, i64 %311
  store i16 %307, ptr %312, align 2, !tbaa !62
  %313 = trunc i32 %288 to i16
  store i16 %313, ptr %306, align 2, !tbaa !62
  %314 = add i32 %287, -1
  store i32 %314, ptr %10, align 4, !tbaa !76
  %315 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %251, i32 %314), !nosanitize !45
  %316 = extractvalue { i32, i1 } %315, 1, !nosanitize !45
  br i1 %316, label %317, label %318, !prof !46, !nosanitize !45

317:                                              ; preds = %294
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

318:                                              ; preds = %294
  %319 = add nuw i32 %288, 1
  %320 = extractvalue { i32, i1 } %315, 0, !nosanitize !45
  %321 = icmp ult i32 %320, 3
  br i1 %321, label %322, label %285, !llvm.loop !91

322:                                              ; preds = %318, %285, %256
  %323 = icmp ult i32 %251, 262
  br i1 %323, label %324, label %329

324:                                              ; preds = %322
  %325 = load ptr, ptr %0, align 8, !tbaa !20
  %326 = getelementptr inbounds nuw i8, ptr %325, i64 8
  %327 = load i32, ptr %326, align 8, !tbaa !81
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %42, !llvm.loop !92

329:                                              ; preds = %324, %322, %198
  %330 = phi i32 [ %251, %324 ], [ %251, %322 ], [ %199, %198 ]
  %331 = load i64, ptr %19, align 8, !tbaa !38
  %332 = load i64, ptr %5, align 8, !tbaa !61
  %333 = icmp ult i64 %331, %332
  br i1 %333, label %334, label %373

334:                                              ; preds = %329
  %335 = load i32, ptr %6, align 4, !tbaa !73
  %336 = zext i32 %335 to i64
  %337 = zext i32 %330 to i64
  %338 = add nuw nsw i64 %337, %336
  %339 = icmp ult i64 %331, %338
  br i1 %339, label %340, label %350

340:                                              ; preds = %334
  %341 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %332, i64 %338), !nosanitize !45
  %342 = extractvalue { i64, i1 } %341, 1, !nosanitize !45
  br i1 %342, label %343, label %344, !prof !46, !nosanitize !45

343:                                              ; preds = %340
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

344:                                              ; preds = %340
  %345 = extractvalue { i64, i1 } %341, 0, !nosanitize !45
  %346 = tail call i64 @llvm.umin.i64(i64 %345, i64 258)
  %347 = load ptr, ptr %7, align 8, !tbaa !34
  %348 = getelementptr inbounds nuw i8, ptr %347, i64 %338
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %348, i8 0, i64 %346, i1 false)
  %349 = add nuw nsw i64 %346, %338
  br label %370

350:                                              ; preds = %334
  %351 = add nuw nsw i64 %338, 258
  %352 = icmp ult i64 %331, %351
  br i1 %352, label %353, label %373

353:                                              ; preds = %350
  %354 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %332, i64 %331), !nosanitize !45
  %355 = extractvalue { i64, i1 } %354, 1, !nosanitize !45
  br i1 %355, label %356, label %357, !prof !46, !nosanitize !45

356:                                              ; preds = %353
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

357:                                              ; preds = %353
  %358 = sub nuw nsw i64 %351, %331
  %359 = extractvalue { i64, i1 } %354, 0, !nosanitize !45
  %360 = tail call i64 @llvm.umin.i64(i64 %358, i64 %359)
  %361 = load ptr, ptr %7, align 8, !tbaa !34
  %362 = getelementptr inbounds nuw i8, ptr %361, i64 %331
  %363 = and i64 %360, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %362, i8 0, i64 %363, i1 false)
  %364 = load i64, ptr %19, align 8, !tbaa !38
  %365 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %364, i64 %360), !nosanitize !45
  %366 = extractvalue { i64, i1 } %365, 1, !nosanitize !45
  br i1 %366, label %367, label %368, !prof !46, !nosanitize !45

367:                                              ; preds = %357
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

368:                                              ; preds = %357
  %369 = extractvalue { i64, i1 } %365, 0, !nosanitize !45
  br label %370

370:                                              ; preds = %368, %344
  %371 = phi i64 [ %349, %344 ], [ %369, %368 ]
  store i64 %371, ptr %19, align 8, !tbaa !38
  %372 = load i32, ptr %3, align 4, !tbaa !75
  br label %373

373:                                              ; preds = %370, %350, %329
  %374 = phi i32 [ %330, %329 ], [ %330, %350 ], [ %372, %370 ]
  %375 = icmp ult i32 %374, 262
  %376 = and i1 %20, %375
  br i1 %376, label %1160, label %377

377:                                              ; preds = %373
  %378 = icmp eq i32 %374, 0
  br i1 %378, label %977, label %379

379:                                              ; preds = %377
  %380 = icmp ugt i32 %374, 2
  br i1 %380, label %384, label %381

381:                                              ; preds = %379
  %382 = load i32, ptr %21, align 8, !tbaa !78
  store i32 %382, ptr %22, align 8, !tbaa !77
  %383 = load i32, ptr %8, align 8, !tbaa !83
  store i32 %383, ptr %23, align 4, !tbaa !159
  br label %614

384:                                              ; preds = %379, %36
  %385 = phi i32 [ %374, %379 ], [ %37, %36 ]
  %386 = load i32, ptr %6, align 4, !tbaa !73
  %387 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %386, i32 2), !nosanitize !45
  %388 = extractvalue { i32, i1 } %387, 1, !nosanitize !45
  br i1 %388, label %389, label %390, !prof !46, !nosanitize !45

389:                                              ; preds = %384
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

390:                                              ; preds = %384
  %391 = extractvalue { i32, i1 } %387, 0, !nosanitize !45
  %392 = load ptr, ptr %7, align 8, !tbaa !34
  %393 = load i32, ptr %15, align 8, !tbaa !80
  %394 = load i32, ptr %16, align 8, !tbaa !53
  %395 = shl i32 %393, %394
  %396 = zext i32 %391 to i64
  %397 = getelementptr inbounds nuw i8, ptr %392, i64 %396
  %398 = load i8, ptr %397, align 1, !tbaa !8
  %399 = zext i8 %398 to i32
  %400 = xor i32 %395, %399
  %401 = load i32, ptr %17, align 4, !tbaa !52
  %402 = and i32 %400, %401
  store i32 %402, ptr %15, align 8, !tbaa !80
  %403 = load ptr, ptr %12, align 8, !tbaa !37
  %404 = zext i32 %402 to i64
  %405 = getelementptr inbounds nuw [2 x i8], ptr %403, i64 %404
  %406 = load i16, ptr %405, align 2, !tbaa !62
  %407 = load ptr, ptr %13, align 8, !tbaa !35
  %408 = load i32, ptr %18, align 8, !tbaa !33
  %409 = and i32 %408, %386
  %410 = zext i32 %409 to i64
  %411 = getelementptr inbounds nuw [2 x i8], ptr %407, i64 %410
  store i16 %406, ptr %411, align 2, !tbaa !62
  %412 = zext i16 %406 to i32
  %413 = trunc i32 %386 to i16
  store i16 %413, ptr %405, align 2, !tbaa !62
  %414 = load i32, ptr %21, align 8, !tbaa !78
  store i32 %414, ptr %22, align 8, !tbaa !77
  %415 = load i32, ptr %8, align 8, !tbaa !83
  store i32 %415, ptr %23, align 4, !tbaa !159
  store i32 2, ptr %21, align 8, !tbaa !78
  %416 = icmp eq i16 %406, 0
  br i1 %416, label %618, label %417

417:                                              ; preds = %390
  %418 = load i32, ptr %24, align 8, !tbaa !66
  %419 = icmp ult i32 %414, %418
  br i1 %419, label %420, label %618

420:                                              ; preds = %417
  %421 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %386, i32 %412), !nosanitize !45
  %422 = extractvalue { i32, i1 } %421, 0, !nosanitize !45
  %423 = extractvalue { i32, i1 } %421, 1, !nosanitize !45
  br i1 %423, label %424, label %425, !prof !46, !nosanitize !45

424:                                              ; preds = %420
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

425:                                              ; preds = %420
  %426 = load i32, ptr %4, align 8, !tbaa !32
  %427 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %426, i32 262), !nosanitize !45
  %428 = extractvalue { i32, i1 } %427, 1, !nosanitize !45
  br i1 %428, label %429, label %430, !prof !46, !nosanitize !45

429:                                              ; preds = %425
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

430:                                              ; preds = %425
  %431 = extractvalue { i32, i1 } %427, 0, !nosanitize !45
  %432 = icmp ugt i32 %422, %431
  br i1 %432, label %618, label %433

433:                                              ; preds = %430
  %434 = zext i32 %386 to i64
  %435 = getelementptr inbounds nuw i8, ptr %392, i64 %434
  %436 = tail call i32 @llvm.usub.sat.i32(i32 %386, i32 %431)
  %437 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %414, i32 -1)
  %438 = extractvalue { i32, i1 } %437, 1, !nosanitize !45
  br i1 %438, label %439, label %440, !prof !46, !nosanitize !45

439:                                              ; preds = %561, %471, %433
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

440:                                              ; preds = %433
  %441 = load i32, ptr %25, align 8, !tbaa !70
  %442 = load i32, ptr %26, align 4, !tbaa !72
  %443 = getelementptr inbounds nuw i8, ptr %435, i64 258
  %444 = extractvalue { i32, i1 } %437, 0, !nosanitize !45
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i8, ptr %435, i64 %445
  %447 = load i8, ptr %446, align 1, !tbaa !8
  %448 = sext i32 %414 to i64
  %449 = getelementptr inbounds i8, ptr %435, i64 %448
  %450 = load i8, ptr %449, align 1, !tbaa !8
  %451 = load i32, ptr %27, align 4, !tbaa !68
  %452 = icmp ult i32 %414, %451
  %453 = lshr i32 %442, 2
  %454 = select i1 %452, i32 %442, i32 %453
  %455 = tail call i32 @llvm.umin.i32(i32 %441, i32 %385)
  %456 = getelementptr inbounds nuw i8, ptr %435, i64 1
  %457 = ptrtoint ptr %443 to i64
  br label %458

458:                                              ; preds = %594, %440
  %459 = phi i32 [ %415, %440 ], [ %580, %594 ]
  %460 = phi i32 [ %414, %440 ], [ %581, %594 ]
  %461 = phi i32 [ %454, %440 ], [ %595, %594 ]
  %462 = phi i32 [ %412, %440 ], [ %588, %594 ]
  %463 = phi i8 [ %447, %440 ], [ %582, %594 ]
  %464 = phi i8 [ %450, %440 ], [ %583, %594 ]
  %465 = zext nneg i32 %462 to i64
  %466 = getelementptr inbounds nuw i8, ptr %392, i64 %465
  %467 = sext i32 %460 to i64
  %468 = getelementptr inbounds i8, ptr %466, i64 %467
  %469 = load i8, ptr %468, align 1, !tbaa !8
  %470 = icmp eq i8 %469, %464
  br i1 %470, label %471, label %579

471:                                              ; preds = %458
  %472 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %460, i32 -1)
  %473 = extractvalue { i32, i1 } %472, 1, !nosanitize !45
  br i1 %473, label %439, label %474, !prof !46, !nosanitize !45

474:                                              ; preds = %471
  %475 = extractvalue { i32, i1 } %472, 0, !nosanitize !45
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i8, ptr %466, i64 %476
  %478 = load i8, ptr %477, align 1, !tbaa !8
  %479 = icmp eq i8 %478, %463
  br i1 %479, label %480, label %579

480:                                              ; preds = %474
  %481 = load i8, ptr %466, align 1, !tbaa !8
  %482 = load i8, ptr %435, align 1, !tbaa !8
  %483 = icmp eq i8 %481, %482
  br i1 %483, label %484, label %579

484:                                              ; preds = %480
  %485 = getelementptr inbounds nuw i8, ptr %466, i64 1
  %486 = load i8, ptr %485, align 1, !tbaa !8
  %487 = load i8, ptr %456, align 1, !tbaa !8
  %488 = icmp eq i8 %486, %487
  br i1 %488, label %489, label %579

489:                                              ; preds = %484
  %490 = getelementptr inbounds nuw i8, ptr %466, i64 2
  br label %491

491:                                              ; preds = %536, %489
  %492 = phi ptr [ %490, %489 ], [ %540, %536 ]
  %493 = phi i64 [ 2, %489 ], [ %537, %536 ]
  %494 = getelementptr inbounds nuw i8, ptr %435, i64 %493
  %495 = getelementptr inbounds nuw i8, ptr %494, i64 1
  %496 = load i8, ptr %495, align 1, !tbaa !8
  %497 = getelementptr inbounds nuw i8, ptr %492, i64 1
  %498 = load i8, ptr %497, align 1, !tbaa !8
  %499 = icmp eq i8 %496, %498
  br i1 %499, label %500, label %545

500:                                              ; preds = %491
  %501 = getelementptr inbounds nuw i8, ptr %494, i64 2
  %502 = load i8, ptr %501, align 1, !tbaa !8
  %503 = getelementptr inbounds nuw i8, ptr %492, i64 2
  %504 = load i8, ptr %503, align 1, !tbaa !8
  %505 = icmp eq i8 %502, %504
  br i1 %505, label %506, label %547

506:                                              ; preds = %500
  %507 = getelementptr inbounds nuw i8, ptr %494, i64 3
  %508 = load i8, ptr %507, align 1, !tbaa !8
  %509 = getelementptr inbounds nuw i8, ptr %492, i64 3
  %510 = load i8, ptr %509, align 1, !tbaa !8
  %511 = icmp eq i8 %508, %510
  br i1 %511, label %512, label %549

512:                                              ; preds = %506
  %513 = getelementptr inbounds nuw i8, ptr %494, i64 4
  %514 = load i8, ptr %513, align 1, !tbaa !8
  %515 = getelementptr inbounds nuw i8, ptr %492, i64 4
  %516 = load i8, ptr %515, align 1, !tbaa !8
  %517 = icmp eq i8 %514, %516
  br i1 %517, label %518, label %551

518:                                              ; preds = %512
  %519 = getelementptr inbounds nuw i8, ptr %494, i64 5
  %520 = load i8, ptr %519, align 1, !tbaa !8
  %521 = getelementptr inbounds nuw i8, ptr %492, i64 5
  %522 = load i8, ptr %521, align 1, !tbaa !8
  %523 = icmp eq i8 %520, %522
  br i1 %523, label %524, label %553

524:                                              ; preds = %518
  %525 = getelementptr inbounds nuw i8, ptr %494, i64 6
  %526 = load i8, ptr %525, align 1, !tbaa !8
  %527 = getelementptr inbounds nuw i8, ptr %492, i64 6
  %528 = load i8, ptr %527, align 1, !tbaa !8
  %529 = icmp eq i8 %526, %528
  br i1 %529, label %530, label %555

530:                                              ; preds = %524
  %531 = getelementptr inbounds nuw i8, ptr %494, i64 7
  %532 = load i8, ptr %531, align 1, !tbaa !8
  %533 = getelementptr inbounds nuw i8, ptr %492, i64 7
  %534 = load i8, ptr %533, align 1, !tbaa !8
  %535 = icmp eq i8 %532, %534
  br i1 %535, label %536, label %557

536:                                              ; preds = %530
  %537 = add nuw nsw i64 %493, 8
  %538 = getelementptr inbounds nuw i8, ptr %435, i64 %537
  %539 = load i8, ptr %538, align 1, !tbaa !8
  %540 = getelementptr inbounds nuw i8, ptr %492, i64 8
  %541 = load i8, ptr %540, align 1, !tbaa !8
  %542 = icmp eq i8 %539, %541
  %543 = icmp samesign ult i64 %493, 250
  %544 = select i1 %542, i1 %543, i1 false
  br i1 %544, label %491, label %559, !llvm.loop !152

545:                                              ; preds = %491
  %546 = getelementptr inbounds nuw i8, ptr %494, i64 1
  br label %561

547:                                              ; preds = %500
  %548 = getelementptr inbounds nuw i8, ptr %494, i64 2
  br label %561

549:                                              ; preds = %506
  %550 = getelementptr inbounds nuw i8, ptr %494, i64 3
  br label %561

551:                                              ; preds = %512
  %552 = getelementptr inbounds nuw i8, ptr %494, i64 4
  br label %561

553:                                              ; preds = %518
  %554 = getelementptr inbounds nuw i8, ptr %494, i64 5
  br label %561

555:                                              ; preds = %524
  %556 = getelementptr inbounds nuw i8, ptr %494, i64 6
  br label %561

557:                                              ; preds = %530
  %558 = getelementptr inbounds nuw i8, ptr %494, i64 7
  br label %561

559:                                              ; preds = %536
  %560 = getelementptr inbounds nuw i8, ptr %435, i64 %537
  br label %561

561:                                              ; preds = %559, %557, %555, %553, %551, %549, %547, %545
  %562 = phi ptr [ %548, %547 ], [ %550, %549 ], [ %546, %545 ], [ %558, %557 ], [ %556, %555 ], [ %554, %553 ], [ %552, %551 ], [ %560, %559 ]
  %563 = ptrtoint ptr %562 to i64
  %564 = sub i64 %457, %563
  %565 = trunc i64 %564 to i32
  %566 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %565), !nosanitize !45
  %567 = extractvalue { i32, i1 } %566, 0, !nosanitize !45
  %568 = extractvalue { i32, i1 } %566, 1, !nosanitize !45
  br i1 %568, label %439, label %569, !prof !46, !nosanitize !45

569:                                              ; preds = %561
  %570 = icmp sgt i32 %567, %460
  br i1 %570, label %571, label %579

571:                                              ; preds = %569
  store i32 %462, ptr %8, align 8, !tbaa !83
  %572 = icmp slt i32 %567, %455
  br i1 %572, label %573, label %597

573:                                              ; preds = %571
  %574 = sext i32 %567 to i64
  %575 = getelementptr i8, ptr %435, i64 %574
  %576 = getelementptr i8, ptr %575, i64 -1
  %577 = load i8, ptr %576, align 1, !tbaa !8
  %578 = load i8, ptr %575, align 1, !tbaa !8
  br label %579

579:                                              ; preds = %573, %569, %484, %480, %474, %458
  %580 = phi i32 [ %459, %458 ], [ %459, %474 ], [ %459, %480 ], [ %459, %484 ], [ %462, %573 ], [ %459, %569 ]
  %581 = phi i32 [ %460, %458 ], [ %460, %474 ], [ %460, %480 ], [ %460, %484 ], [ %567, %573 ], [ %460, %569 ]
  %582 = phi i8 [ %463, %458 ], [ %463, %474 ], [ %463, %480 ], [ %463, %484 ], [ %577, %573 ], [ %463, %569 ]
  %583 = phi i8 [ %464, %458 ], [ %464, %474 ], [ %464, %480 ], [ %464, %484 ], [ %578, %573 ], [ %464, %569 ]
  %584 = and i32 %462, %408
  %585 = zext nneg i32 %584 to i64
  %586 = getelementptr inbounds nuw [2 x i8], ptr %407, i64 %585
  %587 = load i16, ptr %586, align 2, !tbaa !62
  %588 = zext i16 %587 to i32
  %589 = icmp ult i32 %436, %588
  br i1 %589, label %590, label %597

590:                                              ; preds = %579
  %591 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %461, i32 1), !nosanitize !45
  %592 = extractvalue { i32, i1 } %591, 1, !nosanitize !45
  br i1 %592, label %593, label %594, !prof !46, !nosanitize !45

593:                                              ; preds = %590
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

594:                                              ; preds = %590
  %595 = extractvalue { i32, i1 } %591, 0, !nosanitize !45
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %597, label %458, !llvm.loop !153

597:                                              ; preds = %594, %579, %571
  %598 = phi i32 [ %580, %594 ], [ %580, %579 ], [ %462, %571 ]
  %599 = phi i32 [ %581, %594 ], [ %581, %579 ], [ %567, %571 ]
  %600 = tail call i32 @llvm.umin.i32(i32 %599, i32 %385)
  store i32 %600, ptr %21, align 8, !tbaa !78
  %601 = icmp ult i32 %600, 6
  br i1 %601, label %602, label %618

602:                                              ; preds = %597
  %603 = load i32, ptr %28, align 8, !tbaa !49
  %604 = icmp eq i32 %603, 1
  br i1 %604, label %614, label %605

605:                                              ; preds = %602
  %606 = icmp eq i32 %600, 3
  br i1 %606, label %607, label %618

607:                                              ; preds = %605
  %608 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %386, i32 %598), !nosanitize !45
  %609 = extractvalue { i32, i1 } %608, 1, !nosanitize !45
  br i1 %609, label %610, label %611, !prof !46, !nosanitize !45

610:                                              ; preds = %607
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

611:                                              ; preds = %607
  %612 = extractvalue { i32, i1 } %608, 0, !nosanitize !45
  %613 = icmp ugt i32 %612, 4096
  br i1 %613, label %614, label %618

614:                                              ; preds = %611, %602, %381
  %615 = phi i32 [ %383, %381 ], [ %415, %611 ], [ %415, %602 ]
  %616 = phi i32 [ %382, %381 ], [ %414, %611 ], [ %414, %602 ]
  %617 = phi i32 [ %374, %381 ], [ %385, %611 ], [ %385, %602 ]
  store i32 2, ptr %21, align 8, !tbaa !78
  br label %618

618:                                              ; preds = %614, %611, %605, %597, %430, %417, %390
  %619 = phi i32 [ 2, %417 ], [ %600, %597 ], [ %600, %605 ], [ 3, %611 ], [ 2, %390 ], [ 2, %430 ], [ 2, %614 ]
  %620 = phi i32 [ %415, %417 ], [ %415, %597 ], [ %415, %605 ], [ %415, %611 ], [ %415, %390 ], [ %415, %430 ], [ %615, %614 ]
  %621 = phi i32 [ %414, %417 ], [ %414, %597 ], [ %414, %605 ], [ %414, %611 ], [ %414, %390 ], [ %414, %430 ], [ %616, %614 ]
  %622 = phi i32 [ %385, %417 ], [ %385, %597 ], [ %385, %605 ], [ %385, %611 ], [ %385, %390 ], [ %385, %430 ], [ %617, %614 ]
  %623 = icmp ult i32 %621, 3
  %624 = icmp ugt i32 %619, %621
  %625 = or i1 %623, %624
  br i1 %625, label %840, label %626

626:                                              ; preds = %618
  %627 = load i32, ptr %6, align 4, !tbaa !73
  %628 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %627, i32 %622), !nosanitize !45
  %629 = extractvalue { i32, i1 } %628, 1, !nosanitize !45
  br i1 %629, label %630, label %631, !prof !46, !nosanitize !45

630:                                              ; preds = %626
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

631:                                              ; preds = %626
  %632 = extractvalue { i32, i1 } %628, 0, !nosanitize !45
  %633 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %632, i32 3), !nosanitize !45
  %634 = extractvalue { i32, i1 } %633, 0, !nosanitize !45
  %635 = extractvalue { i32, i1 } %633, 1, !nosanitize !45
  br i1 %635, label %636, label %637, !prof !46, !nosanitize !45

636:                                              ; preds = %631
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

637:                                              ; preds = %631
  %638 = trunc i32 %621 to i8
  %639 = add i8 %638, -3
  %640 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %627, i32 1), !nosanitize !45
  %641 = extractvalue { i32, i1 } %640, 1, !nosanitize !45
  br i1 %641, label %642, label %643, !prof !46, !nosanitize !45

642:                                              ; preds = %637
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

643:                                              ; preds = %637
  %644 = extractvalue { i32, i1 } %640, 0, !nosanitize !45
  %645 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %644, i32 %620), !nosanitize !45
  %646 = extractvalue { i32, i1 } %645, 1, !nosanitize !45
  br i1 %646, label %647, label %648, !prof !46, !nosanitize !45

647:                                              ; preds = %643
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

648:                                              ; preds = %643
  %649 = extractvalue { i32, i1 } %645, 0, !nosanitize !45
  %650 = trunc i32 %649 to i16
  %651 = load i32, ptr %30, align 4, !tbaa !139
  %652 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %651, i32 1), !nosanitize !45
  %653 = extractvalue { i32, i1 } %652, 1, !nosanitize !45
  br i1 %653, label %654, label %655, !prof !46, !nosanitize !45

654:                                              ; preds = %648
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

655:                                              ; preds = %648
  %656 = extractvalue { i32, i1 } %652, 0, !nosanitize !45
  %657 = load ptr, ptr %29, align 8, !tbaa !44
  %658 = trunc i32 %649 to i8
  store i32 %656, ptr %30, align 4, !tbaa !139
  %659 = zext i32 %651 to i64
  %660 = getelementptr inbounds nuw i8, ptr %657, i64 %659
  store i8 %658, ptr %660, align 1, !tbaa !8
  %661 = load i32, ptr %30, align 4, !tbaa !139
  %662 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %661, i32 1), !nosanitize !45
  %663 = extractvalue { i32, i1 } %662, 1, !nosanitize !45
  br i1 %663, label %664, label %665, !prof !46, !nosanitize !45

664:                                              ; preds = %655
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

665:                                              ; preds = %655
  %666 = extractvalue { i32, i1 } %662, 0, !nosanitize !45
  %667 = load ptr, ptr %29, align 8, !tbaa !44
  %668 = lshr i32 %649, 8
  %669 = trunc i32 %668 to i8
  store i32 %666, ptr %30, align 4, !tbaa !139
  %670 = zext i32 %661 to i64
  %671 = getelementptr inbounds nuw i8, ptr %667, i64 %670
  store i8 %669, ptr %671, align 1, !tbaa !8
  %672 = load i32, ptr %30, align 4, !tbaa !139
  %673 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %672, i32 1), !nosanitize !45
  %674 = extractvalue { i32, i1 } %673, 1, !nosanitize !45
  br i1 %674, label %675, label %676, !prof !46, !nosanitize !45

675:                                              ; preds = %665
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

676:                                              ; preds = %665
  %677 = extractvalue { i32, i1 } %673, 0, !nosanitize !45
  %678 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %677, ptr %30, align 4, !tbaa !139
  %679 = zext i32 %672 to i64
  %680 = getelementptr inbounds nuw i8, ptr %678, i64 %679
  store i8 %639, ptr %680, align 1, !tbaa !8
  %681 = add i16 %650, -1
  %682 = zext i8 %639 to i64
  %683 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %682
  %684 = load i8, ptr %683, align 1, !tbaa !8
  %685 = zext i8 %684 to i64
  %686 = getelementptr [4 x i8], ptr %31, i64 %685
  %687 = load i16, ptr %686, align 4, !tbaa !8
  %688 = add i16 %687, 1
  store i16 %688, ptr %686, align 4, !tbaa !8
  %689 = icmp ult i16 %681, 256
  br i1 %689, label %690, label %693

690:                                              ; preds = %676
  %691 = zext nneg i16 %681 to i64
  %692 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %691
  br label %698

693:                                              ; preds = %676
  %694 = lshr i16 %681, 7
  %695 = zext nneg i16 %694 to i64
  %696 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %695
  %697 = getelementptr inbounds nuw i8, ptr %696, i64 256
  br label %698

698:                                              ; preds = %693, %690
  %699 = phi ptr [ %692, %690 ], [ %697, %693 ]
  %700 = load i8, ptr %699, align 1, !tbaa !8
  %701 = zext i8 %700 to i64
  %702 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %701
  %703 = load i16, ptr %702, align 4, !tbaa !8
  %704 = add i16 %703, 1
  store i16 %704, ptr %702, align 4, !tbaa !8
  %705 = load i32, ptr %30, align 4, !tbaa !139
  %706 = load i32, ptr %33, align 8, !tbaa !47
  %707 = icmp eq i32 %705, %706
  %708 = load i32, ptr %22, align 8, !tbaa !77
  %709 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %708, i32 1), !nosanitize !45
  %710 = extractvalue { i32, i1 } %709, 1, !nosanitize !45
  br i1 %710, label %711, label %712, !prof !46, !nosanitize !45

711:                                              ; preds = %698
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

712:                                              ; preds = %698
  %713 = extractvalue { i32, i1 } %709, 0, !nosanitize !45
  %714 = load i32, ptr %3, align 4, !tbaa !75
  %715 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %714, i32 %713), !nosanitize !45
  %716 = extractvalue { i32, i1 } %715, 1, !nosanitize !45
  br i1 %716, label %717, label %718, !prof !46, !nosanitize !45

717:                                              ; preds = %712
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

718:                                              ; preds = %712
  %719 = extractvalue { i32, i1 } %715, 0, !nosanitize !45
  store i32 %719, ptr %3, align 4, !tbaa !75
  %720 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %708, i32 2), !nosanitize !45
  %721 = extractvalue { i32, i1 } %720, 1, !nosanitize !45
  br i1 %721, label %722, label %723, !prof !46, !nosanitize !45

722:                                              ; preds = %718
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

723:                                              ; preds = %718
  %724 = extractvalue { i32, i1 } %720, 0, !nosanitize !45
  store i32 %724, ptr %22, align 8, !tbaa !77
  %725 = load i32, ptr %6, align 4, !tbaa !73
  br label %726

726:                                              ; preds = %766, %723
  %727 = phi i32 [ %767, %766 ], [ %724, %723 ]
  %728 = phi i32 [ %730, %766 ], [ %725, %723 ]
  %729 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %728, i32 1), !nosanitize !45
  %730 = extractvalue { i32, i1 } %729, 0, !nosanitize !45
  %731 = extractvalue { i32, i1 } %729, 1, !nosanitize !45
  br i1 %731, label %732, label %733, !prof !46, !nosanitize !45

732:                                              ; preds = %726
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

733:                                              ; preds = %726
  store i32 %730, ptr %6, align 4, !tbaa !73
  %734 = icmp ugt i32 %730, %634
  br i1 %734, label %762, label %735

735:                                              ; preds = %733
  %736 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %730, i32 2), !nosanitize !45
  %737 = extractvalue { i32, i1 } %736, 1, !nosanitize !45
  br i1 %737, label %738, label %739, !prof !46, !nosanitize !45

738:                                              ; preds = %735
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

739:                                              ; preds = %735
  %740 = extractvalue { i32, i1 } %736, 0, !nosanitize !45
  %741 = load ptr, ptr %7, align 8, !tbaa !34
  %742 = load i32, ptr %15, align 8, !tbaa !80
  %743 = load i32, ptr %16, align 8, !tbaa !53
  %744 = shl i32 %742, %743
  %745 = zext i32 %740 to i64
  %746 = getelementptr inbounds nuw i8, ptr %741, i64 %745
  %747 = load i8, ptr %746, align 1, !tbaa !8
  %748 = zext i8 %747 to i32
  %749 = xor i32 %744, %748
  %750 = load i32, ptr %17, align 4, !tbaa !52
  %751 = and i32 %749, %750
  store i32 %751, ptr %15, align 8, !tbaa !80
  %752 = load ptr, ptr %12, align 8, !tbaa !37
  %753 = zext i32 %751 to i64
  %754 = getelementptr inbounds nuw [2 x i8], ptr %752, i64 %753
  %755 = load i16, ptr %754, align 2, !tbaa !62
  %756 = load ptr, ptr %13, align 8, !tbaa !35
  %757 = load i32, ptr %18, align 8, !tbaa !33
  %758 = and i32 %757, %730
  %759 = zext i32 %758 to i64
  %760 = getelementptr inbounds nuw [2 x i8], ptr %756, i64 %759
  store i16 %755, ptr %760, align 2, !tbaa !62
  %761 = trunc i32 %730 to i16
  store i16 %761, ptr %754, align 2, !tbaa !62
  br label %762

762:                                              ; preds = %739, %733
  %763 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %727, i32 1), !nosanitize !45
  %764 = extractvalue { i32, i1 } %763, 1, !nosanitize !45
  br i1 %764, label %765, label %766, !prof !46, !nosanitize !45

765:                                              ; preds = %783, %762
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

766:                                              ; preds = %762
  %767 = extractvalue { i32, i1 } %763, 0, !nosanitize !45
  store i32 %767, ptr %22, align 8, !tbaa !77
  %768 = icmp eq i32 %767, 0
  br i1 %768, label %769, label %726, !llvm.loop !160

769:                                              ; preds = %766
  store i32 0, ptr %34, align 8, !tbaa !79
  store i32 2, ptr %21, align 8, !tbaa !78
  %770 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %730, i32 1), !nosanitize !45
  %771 = extractvalue { i32, i1 } %770, 1, !nosanitize !45
  br i1 %771, label %772, label %773, !prof !46, !nosanitize !45

772:                                              ; preds = %769
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

773:                                              ; preds = %769
  %774 = extractvalue { i32, i1 } %770, 0, !nosanitize !45
  store i32 %774, ptr %6, align 4, !tbaa !73
  br i1 %707, label %776, label %775

775:                                              ; preds = %975, %959, %835, %773
  br label %36

776:                                              ; preds = %773
  %777 = load i64, ptr %9, align 8, !tbaa !74
  %778 = icmp sgt i64 %777, -1
  br i1 %778, label %779, label %783

779:                                              ; preds = %776
  %780 = load ptr, ptr %7, align 8, !tbaa !34
  %781 = and i64 %777, 4294967295
  %782 = getelementptr inbounds nuw i8, ptr %780, i64 %781
  br label %783

783:                                              ; preds = %779, %776
  %784 = phi ptr [ %782, %779 ], [ null, %776 ]
  %785 = zext i32 %774 to i64
  %786 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %785, i64 %777), !nosanitize !45
  %787 = extractvalue { i64, i1 } %786, 1, !nosanitize !45
  br i1 %787, label %765, label %788, !prof !46, !nosanitize !45

788:                                              ; preds = %783
  %789 = extractvalue { i64, i1 } %786, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %784, i64 noundef %789, i32 noundef 0) #10
  %790 = load i32, ptr %6, align 4, !tbaa !73
  %791 = zext i32 %790 to i64
  store i64 %791, ptr %9, align 8, !tbaa !74
  %792 = load ptr, ptr %0, align 8, !tbaa !20
  %793 = getelementptr inbounds nuw i8, ptr %792, i64 56
  %794 = load ptr, ptr %793, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %794) #10
  %795 = getelementptr inbounds nuw i8, ptr %794, i64 40
  %796 = load i64, ptr %795, align 8, !tbaa !57
  %797 = getelementptr inbounds nuw i8, ptr %792, i64 32
  %798 = load i32, ptr %797, align 8, !tbaa !107
  %799 = zext i32 %798 to i64
  %800 = tail call i64 @llvm.umin.i64(i64 %796, i64 %799)
  %801 = trunc nuw i64 %800 to i32
  %802 = icmp eq i64 %800, 0
  br i1 %802, label %835, label %803

803:                                              ; preds = %788
  %804 = getelementptr inbounds nuw i8, ptr %792, i64 24
  %805 = load ptr, ptr %804, align 8, !tbaa !106
  %806 = getelementptr inbounds nuw i8, ptr %794, i64 32
  %807 = load ptr, ptr %806, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %805, ptr align 1 %807, i64 %800, i1 false)
  %808 = load ptr, ptr %804, align 8, !tbaa !106
  %809 = getelementptr inbounds nuw i8, ptr %808, i64 %800
  store ptr %809, ptr %804, align 8, !tbaa !106
  %810 = load ptr, ptr %806, align 8, !tbaa !58
  %811 = getelementptr inbounds nuw i8, ptr %810, i64 %800
  store ptr %811, ptr %806, align 8, !tbaa !58
  %812 = getelementptr inbounds nuw i8, ptr %792, i64 40
  %813 = load i64, ptr %812, align 8, !tbaa !108
  %814 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %813, i64 %800), !nosanitize !45
  %815 = extractvalue { i64, i1 } %814, 1, !nosanitize !45
  br i1 %815, label %816, label %817, !prof !46, !nosanitize !45

816:                                              ; preds = %803
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

817:                                              ; preds = %803
  %818 = extractvalue { i64, i1 } %814, 0, !nosanitize !45
  store i64 %818, ptr %812, align 8, !tbaa !108
  %819 = load i32, ptr %797, align 8, !tbaa !107
  %820 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %819, i32 %801), !nosanitize !45
  %821 = extractvalue { i32, i1 } %820, 1, !nosanitize !45
  br i1 %821, label %822, label %823, !prof !46, !nosanitize !45

822:                                              ; preds = %817
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

823:                                              ; preds = %817
  %824 = extractvalue { i32, i1 } %820, 0, !nosanitize !45
  store i32 %824, ptr %797, align 8, !tbaa !107
  %825 = load i64, ptr %795, align 8, !tbaa !57
  %826 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %825, i64 %800), !nosanitize !45
  %827 = extractvalue { i64, i1 } %826, 1, !nosanitize !45
  br i1 %827, label %828, label %829, !prof !46, !nosanitize !45

828:                                              ; preds = %823
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

829:                                              ; preds = %823
  %830 = extractvalue { i64, i1 } %826, 0, !nosanitize !45
  store i64 %830, ptr %795, align 8, !tbaa !57
  %831 = icmp eq i64 %830, 0
  br i1 %831, label %832, label %835

832:                                              ; preds = %829
  %833 = getelementptr inbounds nuw i8, ptr %794, i64 16
  %834 = load ptr, ptr %833, align 8, !tbaa !40
  store ptr %834, ptr %806, align 8, !tbaa !58
  br label %835

835:                                              ; preds = %832, %829, %788
  %836 = load ptr, ptr %0, align 8, !tbaa !20
  %837 = getelementptr inbounds nuw i8, ptr %836, i64 32
  %838 = load i32, ptr %837, align 8, !tbaa !107
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %1160, label %775

840:                                              ; preds = %618
  %841 = load i32, ptr %34, align 8, !tbaa !79
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %965, label %843

843:                                              ; preds = %840
  %844 = load i32, ptr %6, align 4, !tbaa !73
  %845 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %844, i32 1), !nosanitize !45
  %846 = extractvalue { i32, i1 } %845, 1, !nosanitize !45
  br i1 %846, label %847, label %848, !prof !46, !nosanitize !45

847:                                              ; preds = %895, %843
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

848:                                              ; preds = %843
  %849 = extractvalue { i32, i1 } %845, 0, !nosanitize !45
  %850 = load ptr, ptr %7, align 8, !tbaa !34
  %851 = zext i32 %849 to i64
  %852 = getelementptr inbounds nuw i8, ptr %850, i64 %851
  %853 = load i8, ptr %852, align 1, !tbaa !8
  %854 = load i32, ptr %30, align 4, !tbaa !139
  %855 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %854, i32 1), !nosanitize !45
  %856 = extractvalue { i32, i1 } %855, 1, !nosanitize !45
  br i1 %856, label %857, label %858, !prof !46, !nosanitize !45

857:                                              ; preds = %848
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

858:                                              ; preds = %848
  %859 = extractvalue { i32, i1 } %855, 0, !nosanitize !45
  %860 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %859, ptr %30, align 4, !tbaa !139
  %861 = zext i32 %854 to i64
  %862 = getelementptr inbounds nuw i8, ptr %860, i64 %861
  store i8 0, ptr %862, align 1, !tbaa !8
  %863 = load i32, ptr %30, align 4, !tbaa !139
  %864 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %863, i32 1), !nosanitize !45
  %865 = extractvalue { i32, i1 } %864, 1, !nosanitize !45
  br i1 %865, label %866, label %867, !prof !46, !nosanitize !45

866:                                              ; preds = %858
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

867:                                              ; preds = %858
  %868 = extractvalue { i32, i1 } %864, 0, !nosanitize !45
  %869 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %868, ptr %30, align 4, !tbaa !139
  %870 = zext i32 %863 to i64
  %871 = getelementptr inbounds nuw i8, ptr %869, i64 %870
  store i8 0, ptr %871, align 1, !tbaa !8
  %872 = load i32, ptr %30, align 4, !tbaa !139
  %873 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %872, i32 1), !nosanitize !45
  %874 = extractvalue { i32, i1 } %873, 1, !nosanitize !45
  br i1 %874, label %875, label %876, !prof !46, !nosanitize !45

875:                                              ; preds = %867
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

876:                                              ; preds = %867
  %877 = extractvalue { i32, i1 } %873, 0, !nosanitize !45
  %878 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %877, ptr %30, align 4, !tbaa !139
  %879 = zext i32 %872 to i64
  %880 = getelementptr inbounds nuw i8, ptr %878, i64 %879
  store i8 %853, ptr %880, align 1, !tbaa !8
  %881 = zext i8 %853 to i64
  %882 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %881
  %883 = load i16, ptr %882, align 4, !tbaa !8
  %884 = add i16 %883, 1
  store i16 %884, ptr %882, align 4, !tbaa !8
  %885 = load i32, ptr %30, align 4, !tbaa !139
  %886 = load i32, ptr %33, align 8, !tbaa !47
  %887 = icmp eq i32 %885, %886
  br i1 %887, label %888, label %948

888:                                              ; preds = %876
  %889 = load i64, ptr %9, align 8, !tbaa !74
  %890 = icmp sgt i64 %889, -1
  br i1 %890, label %891, label %895

891:                                              ; preds = %888
  %892 = load ptr, ptr %7, align 8, !tbaa !34
  %893 = and i64 %889, 4294967295
  %894 = getelementptr inbounds nuw i8, ptr %892, i64 %893
  br label %895

895:                                              ; preds = %891, %888
  %896 = phi ptr [ %894, %891 ], [ null, %888 ]
  %897 = load i32, ptr %6, align 4, !tbaa !73
  %898 = zext i32 %897 to i64
  %899 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %898, i64 %889), !nosanitize !45
  %900 = extractvalue { i64, i1 } %899, 1, !nosanitize !45
  br i1 %900, label %847, label %901, !prof !46, !nosanitize !45

901:                                              ; preds = %895
  %902 = extractvalue { i64, i1 } %899, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %896, i64 noundef %902, i32 noundef 0) #10
  %903 = load i32, ptr %6, align 4, !tbaa !73
  %904 = zext i32 %903 to i64
  store i64 %904, ptr %9, align 8, !tbaa !74
  %905 = load ptr, ptr %0, align 8, !tbaa !20
  %906 = getelementptr inbounds nuw i8, ptr %905, i64 56
  %907 = load ptr, ptr %906, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %907) #10
  %908 = getelementptr inbounds nuw i8, ptr %907, i64 40
  %909 = load i64, ptr %908, align 8, !tbaa !57
  %910 = getelementptr inbounds nuw i8, ptr %905, i64 32
  %911 = load i32, ptr %910, align 8, !tbaa !107
  %912 = zext i32 %911 to i64
  %913 = tail call i64 @llvm.umin.i64(i64 %909, i64 %912)
  %914 = trunc nuw i64 %913 to i32
  %915 = icmp eq i64 %913, 0
  br i1 %915, label %948, label %916

916:                                              ; preds = %901
  %917 = getelementptr inbounds nuw i8, ptr %905, i64 24
  %918 = load ptr, ptr %917, align 8, !tbaa !106
  %919 = getelementptr inbounds nuw i8, ptr %907, i64 32
  %920 = load ptr, ptr %919, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %918, ptr align 1 %920, i64 %913, i1 false)
  %921 = load ptr, ptr %917, align 8, !tbaa !106
  %922 = getelementptr inbounds nuw i8, ptr %921, i64 %913
  store ptr %922, ptr %917, align 8, !tbaa !106
  %923 = load ptr, ptr %919, align 8, !tbaa !58
  %924 = getelementptr inbounds nuw i8, ptr %923, i64 %913
  store ptr %924, ptr %919, align 8, !tbaa !58
  %925 = getelementptr inbounds nuw i8, ptr %905, i64 40
  %926 = load i64, ptr %925, align 8, !tbaa !108
  %927 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %926, i64 %913), !nosanitize !45
  %928 = extractvalue { i64, i1 } %927, 1, !nosanitize !45
  br i1 %928, label %929, label %930, !prof !46, !nosanitize !45

929:                                              ; preds = %916
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

930:                                              ; preds = %916
  %931 = extractvalue { i64, i1 } %927, 0, !nosanitize !45
  store i64 %931, ptr %925, align 8, !tbaa !108
  %932 = load i32, ptr %910, align 8, !tbaa !107
  %933 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %932, i32 %914), !nosanitize !45
  %934 = extractvalue { i32, i1 } %933, 1, !nosanitize !45
  br i1 %934, label %935, label %936, !prof !46, !nosanitize !45

935:                                              ; preds = %930
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

936:                                              ; preds = %930
  %937 = extractvalue { i32, i1 } %933, 0, !nosanitize !45
  store i32 %937, ptr %910, align 8, !tbaa !107
  %938 = load i64, ptr %908, align 8, !tbaa !57
  %939 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %938, i64 %913), !nosanitize !45
  %940 = extractvalue { i64, i1 } %939, 1, !nosanitize !45
  br i1 %940, label %941, label %942, !prof !46, !nosanitize !45

941:                                              ; preds = %936
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

942:                                              ; preds = %936
  %943 = extractvalue { i64, i1 } %939, 0, !nosanitize !45
  store i64 %943, ptr %908, align 8, !tbaa !57
  %944 = icmp eq i64 %943, 0
  br i1 %944, label %945, label %948

945:                                              ; preds = %942
  %946 = getelementptr inbounds nuw i8, ptr %907, i64 16
  %947 = load ptr, ptr %946, align 8, !tbaa !40
  store ptr %947, ptr %919, align 8, !tbaa !58
  br label %948

948:                                              ; preds = %945, %942, %901, %876
  %949 = load i32, ptr %6, align 4, !tbaa !73
  %950 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %949, i32 1), !nosanitize !45
  %951 = extractvalue { i32, i1 } %950, 1, !nosanitize !45
  br i1 %951, label %952, label %953, !prof !46, !nosanitize !45

952:                                              ; preds = %948
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

953:                                              ; preds = %948
  %954 = extractvalue { i32, i1 } %950, 0, !nosanitize !45
  store i32 %954, ptr %6, align 4, !tbaa !73
  %955 = load i32, ptr %3, align 4, !tbaa !75
  %956 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %955, i32 1), !nosanitize !45
  %957 = extractvalue { i32, i1 } %956, 1, !nosanitize !45
  br i1 %957, label %958, label %959, !prof !46, !nosanitize !45

958:                                              ; preds = %953
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

959:                                              ; preds = %953
  %960 = extractvalue { i32, i1 } %956, 0, !nosanitize !45
  store i32 %960, ptr %3, align 4, !tbaa !75
  %961 = load ptr, ptr %0, align 8, !tbaa !20
  %962 = getelementptr inbounds nuw i8, ptr %961, i64 32
  %963 = load i32, ptr %962, align 8, !tbaa !107
  %964 = icmp eq i32 %963, 0
  br i1 %964, label %1160, label %775

965:                                              ; preds = %840
  store i32 1, ptr %34, align 8, !tbaa !79
  %966 = load i32, ptr %6, align 4, !tbaa !73
  %967 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %966, i32 1), !nosanitize !45
  %968 = extractvalue { i32, i1 } %967, 1, !nosanitize !45
  br i1 %968, label %969, label %970, !prof !46, !nosanitize !45

969:                                              ; preds = %965
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

970:                                              ; preds = %965
  %971 = extractvalue { i32, i1 } %967, 0, !nosanitize !45
  store i32 %971, ptr %6, align 4, !tbaa !73
  %972 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %622, i32 1), !nosanitize !45
  %973 = extractvalue { i32, i1 } %972, 1, !nosanitize !45
  br i1 %973, label %974, label %975, !prof !46, !nosanitize !45

974:                                              ; preds = %970
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

975:                                              ; preds = %970
  %976 = extractvalue { i32, i1 } %972, 0, !nosanitize !45
  store i32 %976, ptr %3, align 4, !tbaa !75
  br label %775

977:                                              ; preds = %377
  %978 = load i32, ptr %34, align 8, !tbaa !79
  %979 = icmp eq i32 %978, 0
  %980 = load i32, ptr %6, align 4, !tbaa !73
  br i1 %979, label %1023, label %981

981:                                              ; preds = %977
  %982 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %980, i32 1), !nosanitize !45
  %983 = extractvalue { i32, i1 } %982, 1, !nosanitize !45
  br i1 %983, label %984, label %985, !prof !46, !nosanitize !45

984:                                              ; preds = %1102, %1034, %981
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

985:                                              ; preds = %981
  %986 = extractvalue { i32, i1 } %982, 0, !nosanitize !45
  %987 = load ptr, ptr %7, align 8, !tbaa !34
  %988 = zext i32 %986 to i64
  %989 = getelementptr inbounds nuw i8, ptr %987, i64 %988
  %990 = load i8, ptr %989, align 1, !tbaa !8
  %991 = load i32, ptr %30, align 4, !tbaa !139
  %992 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %991, i32 1), !nosanitize !45
  %993 = extractvalue { i32, i1 } %992, 1, !nosanitize !45
  br i1 %993, label %994, label %995, !prof !46, !nosanitize !45

994:                                              ; preds = %985
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

995:                                              ; preds = %985
  %996 = extractvalue { i32, i1 } %992, 0, !nosanitize !45
  %997 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %996, ptr %30, align 4, !tbaa !139
  %998 = zext i32 %991 to i64
  %999 = getelementptr inbounds nuw i8, ptr %997, i64 %998
  store i8 0, ptr %999, align 1, !tbaa !8
  %1000 = load i32, ptr %30, align 4, !tbaa !139
  %1001 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1000, i32 1), !nosanitize !45
  %1002 = extractvalue { i32, i1 } %1001, 1, !nosanitize !45
  br i1 %1002, label %1003, label %1004, !prof !46, !nosanitize !45

1003:                                             ; preds = %995
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1004:                                             ; preds = %995
  %1005 = extractvalue { i32, i1 } %1001, 0, !nosanitize !45
  %1006 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %1005, ptr %30, align 4, !tbaa !139
  %1007 = zext i32 %1000 to i64
  %1008 = getelementptr inbounds nuw i8, ptr %1006, i64 %1007
  store i8 0, ptr %1008, align 1, !tbaa !8
  %1009 = load i32, ptr %30, align 4, !tbaa !139
  %1010 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1009, i32 1), !nosanitize !45
  %1011 = extractvalue { i32, i1 } %1010, 1, !nosanitize !45
  br i1 %1011, label %1012, label %1013, !prof !46, !nosanitize !45

1012:                                             ; preds = %1004
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1013:                                             ; preds = %1004
  %1014 = extractvalue { i32, i1 } %1010, 0, !nosanitize !45
  %1015 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %1014, ptr %30, align 4, !tbaa !139
  %1016 = zext i32 %1009 to i64
  %1017 = getelementptr inbounds nuw i8, ptr %1015, i64 %1016
  store i8 %990, ptr %1017, align 1, !tbaa !8
  %1018 = zext i8 %990 to i64
  %1019 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %1018
  %1020 = load i16, ptr %1019, align 4, !tbaa !8
  %1021 = add i16 %1020, 1
  store i16 %1021, ptr %1019, align 4, !tbaa !8
  store i32 0, ptr %34, align 8, !tbaa !79
  %1022 = load i32, ptr %6, align 4, !tbaa !73
  br label %1023

1023:                                             ; preds = %1013, %977
  %1024 = phi i32 [ %1022, %1013 ], [ %980, %977 ]
  %1025 = tail call i32 @llvm.umin.i32(i32 %1024, i32 2)
  store i32 %1025, ptr %10, align 4, !tbaa !76
  %1026 = icmp eq i32 %1, 4
  br i1 %1026, label %1027, label %1092

1027:                                             ; preds = %1023
  %1028 = load i64, ptr %9, align 8, !tbaa !74
  %1029 = icmp sgt i64 %1028, -1
  br i1 %1029, label %1030, label %1034

1030:                                             ; preds = %1027
  %1031 = load ptr, ptr %7, align 8, !tbaa !34
  %1032 = and i64 %1028, 4294967295
  %1033 = getelementptr inbounds nuw i8, ptr %1031, i64 %1032
  br label %1034

1034:                                             ; preds = %1030, %1027
  %1035 = phi ptr [ %1033, %1030 ], [ null, %1027 ]
  %1036 = zext i32 %1024 to i64
  %1037 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1036, i64 %1028), !nosanitize !45
  %1038 = extractvalue { i64, i1 } %1037, 1, !nosanitize !45
  br i1 %1038, label %984, label %1039, !prof !46, !nosanitize !45

1039:                                             ; preds = %1034
  %1040 = extractvalue { i64, i1 } %1037, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1035, i64 noundef %1040, i32 noundef 1) #10
  %1041 = load i32, ptr %6, align 4, !tbaa !73
  %1042 = zext i32 %1041 to i64
  store i64 %1042, ptr %9, align 8, !tbaa !74
  %1043 = load ptr, ptr %0, align 8, !tbaa !20
  %1044 = getelementptr inbounds nuw i8, ptr %1043, i64 56
  %1045 = load ptr, ptr %1044, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %1045) #10
  %1046 = getelementptr inbounds nuw i8, ptr %1045, i64 40
  %1047 = load i64, ptr %1046, align 8, !tbaa !57
  %1048 = getelementptr inbounds nuw i8, ptr %1043, i64 32
  %1049 = load i32, ptr %1048, align 8, !tbaa !107
  %1050 = zext i32 %1049 to i64
  %1051 = tail call i64 @llvm.umin.i64(i64 %1047, i64 %1050)
  %1052 = trunc nuw i64 %1051 to i32
  %1053 = icmp eq i64 %1051, 0
  br i1 %1053, label %1086, label %1054

1054:                                             ; preds = %1039
  %1055 = getelementptr inbounds nuw i8, ptr %1043, i64 24
  %1056 = load ptr, ptr %1055, align 8, !tbaa !106
  %1057 = getelementptr inbounds nuw i8, ptr %1045, i64 32
  %1058 = load ptr, ptr %1057, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1056, ptr align 1 %1058, i64 %1051, i1 false)
  %1059 = load ptr, ptr %1055, align 8, !tbaa !106
  %1060 = getelementptr inbounds nuw i8, ptr %1059, i64 %1051
  store ptr %1060, ptr %1055, align 8, !tbaa !106
  %1061 = load ptr, ptr %1057, align 8, !tbaa !58
  %1062 = getelementptr inbounds nuw i8, ptr %1061, i64 %1051
  store ptr %1062, ptr %1057, align 8, !tbaa !58
  %1063 = getelementptr inbounds nuw i8, ptr %1043, i64 40
  %1064 = load i64, ptr %1063, align 8, !tbaa !108
  %1065 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1064, i64 %1051), !nosanitize !45
  %1066 = extractvalue { i64, i1 } %1065, 1, !nosanitize !45
  br i1 %1066, label %1067, label %1068, !prof !46, !nosanitize !45

1067:                                             ; preds = %1054
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1068:                                             ; preds = %1054
  %1069 = extractvalue { i64, i1 } %1065, 0, !nosanitize !45
  store i64 %1069, ptr %1063, align 8, !tbaa !108
  %1070 = load i32, ptr %1048, align 8, !tbaa !107
  %1071 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1070, i32 %1052), !nosanitize !45
  %1072 = extractvalue { i32, i1 } %1071, 1, !nosanitize !45
  br i1 %1072, label %1073, label %1074, !prof !46, !nosanitize !45

1073:                                             ; preds = %1068
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

1074:                                             ; preds = %1068
  %1075 = extractvalue { i32, i1 } %1071, 0, !nosanitize !45
  store i32 %1075, ptr %1048, align 8, !tbaa !107
  %1076 = load i64, ptr %1046, align 8, !tbaa !57
  %1077 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1076, i64 %1051), !nosanitize !45
  %1078 = extractvalue { i64, i1 } %1077, 1, !nosanitize !45
  br i1 %1078, label %1079, label %1080, !prof !46, !nosanitize !45

1079:                                             ; preds = %1074
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

1080:                                             ; preds = %1074
  %1081 = extractvalue { i64, i1 } %1077, 0, !nosanitize !45
  store i64 %1081, ptr %1046, align 8, !tbaa !57
  %1082 = icmp eq i64 %1081, 0
  br i1 %1082, label %1083, label %1086

1083:                                             ; preds = %1080
  %1084 = getelementptr inbounds nuw i8, ptr %1045, i64 16
  %1085 = load ptr, ptr %1084, align 8, !tbaa !40
  store ptr %1085, ptr %1057, align 8, !tbaa !58
  br label %1086

1086:                                             ; preds = %1083, %1080, %1039
  %1087 = load ptr, ptr %0, align 8, !tbaa !20
  %1088 = getelementptr inbounds nuw i8, ptr %1087, i64 32
  %1089 = load i32, ptr %1088, align 8, !tbaa !107
  %1090 = icmp eq i32 %1089, 0
  %1091 = select i1 %1090, i32 2, i32 3
  br label %1160

1092:                                             ; preds = %1023
  %1093 = load i32, ptr %30, align 4, !tbaa !139
  %1094 = icmp eq i32 %1093, 0
  br i1 %1094, label %1159, label %1095

1095:                                             ; preds = %1092
  %1096 = load i64, ptr %9, align 8, !tbaa !74
  %1097 = icmp sgt i64 %1096, -1
  br i1 %1097, label %1098, label %1102

1098:                                             ; preds = %1095
  %1099 = load ptr, ptr %7, align 8, !tbaa !34
  %1100 = and i64 %1096, 4294967295
  %1101 = getelementptr inbounds nuw i8, ptr %1099, i64 %1100
  br label %1102

1102:                                             ; preds = %1098, %1095
  %1103 = phi ptr [ %1101, %1098 ], [ null, %1095 ]
  %1104 = zext i32 %1024 to i64
  %1105 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1104, i64 %1096), !nosanitize !45
  %1106 = extractvalue { i64, i1 } %1105, 1, !nosanitize !45
  br i1 %1106, label %984, label %1107, !prof !46, !nosanitize !45

1107:                                             ; preds = %1102
  %1108 = extractvalue { i64, i1 } %1105, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1103, i64 noundef %1108, i32 noundef 0) #10
  %1109 = load i32, ptr %6, align 4, !tbaa !73
  %1110 = zext i32 %1109 to i64
  store i64 %1110, ptr %9, align 8, !tbaa !74
  %1111 = load ptr, ptr %0, align 8, !tbaa !20
  %1112 = getelementptr inbounds nuw i8, ptr %1111, i64 56
  %1113 = load ptr, ptr %1112, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %1113) #10
  %1114 = getelementptr inbounds nuw i8, ptr %1113, i64 40
  %1115 = load i64, ptr %1114, align 8, !tbaa !57
  %1116 = getelementptr inbounds nuw i8, ptr %1111, i64 32
  %1117 = load i32, ptr %1116, align 8, !tbaa !107
  %1118 = zext i32 %1117 to i64
  %1119 = tail call i64 @llvm.umin.i64(i64 %1115, i64 %1118)
  %1120 = trunc nuw i64 %1119 to i32
  %1121 = icmp eq i64 %1119, 0
  br i1 %1121, label %1154, label %1122

1122:                                             ; preds = %1107
  %1123 = getelementptr inbounds nuw i8, ptr %1111, i64 24
  %1124 = load ptr, ptr %1123, align 8, !tbaa !106
  %1125 = getelementptr inbounds nuw i8, ptr %1113, i64 32
  %1126 = load ptr, ptr %1125, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1124, ptr align 1 %1126, i64 %1119, i1 false)
  %1127 = load ptr, ptr %1123, align 8, !tbaa !106
  %1128 = getelementptr inbounds nuw i8, ptr %1127, i64 %1119
  store ptr %1128, ptr %1123, align 8, !tbaa !106
  %1129 = load ptr, ptr %1125, align 8, !tbaa !58
  %1130 = getelementptr inbounds nuw i8, ptr %1129, i64 %1119
  store ptr %1130, ptr %1125, align 8, !tbaa !58
  %1131 = getelementptr inbounds nuw i8, ptr %1111, i64 40
  %1132 = load i64, ptr %1131, align 8, !tbaa !108
  %1133 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1132, i64 %1119), !nosanitize !45
  %1134 = extractvalue { i64, i1 } %1133, 1, !nosanitize !45
  br i1 %1134, label %1135, label %1136, !prof !46, !nosanitize !45

1135:                                             ; preds = %1122
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1136:                                             ; preds = %1122
  %1137 = extractvalue { i64, i1 } %1133, 0, !nosanitize !45
  store i64 %1137, ptr %1131, align 8, !tbaa !108
  %1138 = load i32, ptr %1116, align 8, !tbaa !107
  %1139 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1138, i32 %1120), !nosanitize !45
  %1140 = extractvalue { i32, i1 } %1139, 1, !nosanitize !45
  br i1 %1140, label %1141, label %1142, !prof !46, !nosanitize !45

1141:                                             ; preds = %1136
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

1142:                                             ; preds = %1136
  %1143 = extractvalue { i32, i1 } %1139, 0, !nosanitize !45
  store i32 %1143, ptr %1116, align 8, !tbaa !107
  %1144 = load i64, ptr %1114, align 8, !tbaa !57
  %1145 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1144, i64 %1119), !nosanitize !45
  %1146 = extractvalue { i64, i1 } %1145, 1, !nosanitize !45
  br i1 %1146, label %1147, label %1148, !prof !46, !nosanitize !45

1147:                                             ; preds = %1142
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

1148:                                             ; preds = %1142
  %1149 = extractvalue { i64, i1 } %1145, 0, !nosanitize !45
  store i64 %1149, ptr %1114, align 8, !tbaa !57
  %1150 = icmp eq i64 %1149, 0
  br i1 %1150, label %1151, label %1154

1151:                                             ; preds = %1148
  %1152 = getelementptr inbounds nuw i8, ptr %1113, i64 16
  %1153 = load ptr, ptr %1152, align 8, !tbaa !40
  store ptr %1153, ptr %1125, align 8, !tbaa !58
  br label %1154

1154:                                             ; preds = %1151, %1148, %1107
  %1155 = load ptr, ptr %0, align 8, !tbaa !20
  %1156 = getelementptr inbounds nuw i8, ptr %1155, i64 32
  %1157 = load i32, ptr %1156, align 8, !tbaa !107
  %1158 = icmp eq i32 %1157, 0
  br i1 %1158, label %1160, label %1159

1159:                                             ; preds = %1154, %1092
  br label %1160

1160:                                             ; preds = %1159, %1154, %1086, %959, %835, %373
  %1161 = phi i32 [ 0, %1154 ], [ %1091, %1086 ], [ 1, %1159 ], [ 0, %373 ], [ 0, %835 ], [ 0, %959 ]
  ret i32 %1161
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.usub.sat.v8i32(<8 x i32>, <8 x i32>) #2

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
