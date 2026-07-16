; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/both.deflate.ll'
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
  br i1 %397, label %398, label %434

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
  br label %431

414:                                              ; preds = %398
  %415 = add nuw nsw i64 %402, 258
  %416 = icmp ult i64 %395, %415
  br i1 %416, label %417, label %434

417:                                              ; preds = %414
  %418 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %396, i64 %395), !nosanitize !45
  %419 = sub nuw nsw i64 %415, %395
  %420 = extractvalue { i64, i1 } %418, 0, !nosanitize !45
  %421 = tail call i64 @llvm.umin.i64(i64 %419, i64 %420)
  %422 = load ptr, ptr %92, align 8, !tbaa !34
  %423 = getelementptr inbounds nuw i8, ptr %422, i64 %395
  %424 = and i64 %421, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %423, i8 0, i64 %424, i1 false)
  %425 = load i64, ptr %394, align 8, !tbaa !38
  %426 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %425, i64 %421), !nosanitize !45
  %427 = extractvalue { i64, i1 } %426, 1, !nosanitize !45
  br i1 %427, label %428, label %429, !prof !46, !nosanitize !45

428:                                              ; preds = %417
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

429:                                              ; preds = %417
  %430 = extractvalue { i64, i1 } %426, 0, !nosanitize !45
  br label %431

431:                                              ; preds = %429, %408
  %432 = phi i64 [ %413, %408 ], [ %430, %429 ]
  store i64 %432, ptr %394, align 8, !tbaa !38
  %433 = load i32, ptr %82, align 4, !tbaa !75
  br label %434

434:                                              ; preds = %431, %414, %392
  %435 = phi i32 [ %393, %392 ], [ %393, %414 ], [ %433, %431 ]
  %436 = icmp ugt i32 %435, 2
  br i1 %436, label %437, label %809

437:                                              ; preds = %806, %434
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

475:                                              ; preds = %452
  store i32 %471, ptr %90, align 4, !tbaa !73
  store i32 2, ptr %82, align 4, !tbaa !75
  %476 = load i32, ptr %81, align 8, !tbaa !32
  %477 = zext i32 %476 to i64
  br label %478

478:                                              ; preds = %760, %475
  %479 = phi i32 [ %687, %760 ], [ 2, %475 ]
  %480 = load i64, ptr %89, align 8, !tbaa !61
  %481 = zext nneg i32 %479 to i64
  %482 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %480, i64 %481), !nosanitize !45
  %483 = extractvalue { i64, i1 } %482, 1, !nosanitize !45
  br i1 %483, label %484, label %485, !prof !46, !nosanitize !45

484:                                              ; preds = %478
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

485:                                              ; preds = %478
  %486 = extractvalue { i64, i1 } %482, 0, !nosanitize !45
  %487 = load i32, ptr %90, align 4, !tbaa !73
  %488 = zext i32 %487 to i64
  %489 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %486, i64 %488), !nosanitize !45
  %490 = extractvalue { i64, i1 } %489, 1, !nosanitize !45
  br i1 %490, label %491, label %492, !prof !46, !nosanitize !45

491:                                              ; preds = %485
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

492:                                              ; preds = %485
  %493 = extractvalue { i64, i1 } %489, 0, !nosanitize !45
  %494 = trunc i64 %493 to i32
  %495 = load i32, ptr %81, align 8, !tbaa !32
  %496 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %495, i32 262), !nosanitize !45
  %497 = extractvalue { i32, i1 } %496, 1, !nosanitize !45
  br i1 %497, label %498, label %499, !prof !46, !nosanitize !45

498:                                              ; preds = %492
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

499:                                              ; preds = %492
  %500 = extractvalue { i32, i1 } %496, 0, !nosanitize !45
  %501 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %476, i32 %500), !nosanitize !45
  %502 = extractvalue { i32, i1 } %501, 1, !nosanitize !45
  br i1 %502, label %503, label %504, !prof !46, !nosanitize !45

503:                                              ; preds = %499
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

504:                                              ; preds = %499
  %505 = extractvalue { i32, i1 } %501, 0, !nosanitize !45
  %506 = icmp ult i32 %487, %505
  br i1 %506, label %634, label %507

507:                                              ; preds = %504
  %508 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %476, i32 %494), !nosanitize !45
  %509 = extractvalue { i32, i1 } %508, 1, !nosanitize !45
  br i1 %509, label %510, label %511, !prof !46, !nosanitize !45

510:                                              ; preds = %507
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

520:                                              ; preds = %511
  %521 = extractvalue { i32, i1 } %517, 0, !nosanitize !45
  store i32 %521, ptr %93, align 8, !tbaa !83
  %522 = load i32, ptr %90, align 4, !tbaa !73
  %523 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %522, i32 %476), !nosanitize !45
  %524 = extractvalue { i32, i1 } %523, 1, !nosanitize !45
  br i1 %524, label %525, label %526, !prof !46, !nosanitize !45

525:                                              ; preds = %526, %520
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

526:                                              ; preds = %520
  %527 = extractvalue { i32, i1 } %523, 0, !nosanitize !45
  store i32 %527, ptr %90, align 4, !tbaa !73
  %528 = load i64, ptr %94, align 8, !tbaa !74
  %529 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %528, i64 %477), !nosanitize !45
  %530 = extractvalue { i64, i1 } %529, 1, !nosanitize !45
  br i1 %530, label %525, label %531, !prof !46, !nosanitize !45

531:                                              ; preds = %526
  %532 = extractvalue { i64, i1 } %529, 0, !nosanitize !45
  store i64 %532, ptr %94, align 8, !tbaa !74
  %533 = load i32, ptr %95, align 4, !tbaa !76
  %534 = icmp ugt i32 %533, %527
  br i1 %534, label %535, label %536

535:                                              ; preds = %531
  store i32 %527, ptr %95, align 4, !tbaa !76
  br label %536

536:                                              ; preds = %535, %531
  %537 = load i32, ptr %81, align 8, !tbaa !32
  %538 = load i32, ptr %96, align 4, !tbaa !36
  %539 = load ptr, ptr %97, align 8, !tbaa !37
  %540 = zext i32 %538 to i64
  %541 = getelementptr inbounds nuw [2 x i8], ptr %539, i64 %540
  %542 = icmp eq i32 %538, 0
  br i1 %542, label %569, label %543, !prof !46, !nosanitize !45

543:                                              ; preds = %536
  %544 = icmp ult i32 %538, 8
  br i1 %544, label %566, label %545

545:                                              ; preds = %543
  %546 = and i64 %540, 4294967288
  %547 = mul nsw i64 %546, -2
  %548 = getelementptr i8, ptr %541, i64 %547
  %549 = trunc nuw i64 %546 to i32
  %550 = sub i32 %538, %549
  %551 = insertelement <8 x i32> poison, i32 %537, i64 0
  %552 = shufflevector <8 x i32> %551, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %553

553:                                              ; preds = %553, %545
  %554 = phi i64 [ 0, %545 ], [ %562, %553 ]
  %555 = mul i64 %554, -2
  %556 = getelementptr i8, ptr %541, i64 %555
  %557 = getelementptr inbounds i8, ptr %556, i64 -16
  %558 = load <8 x i16>, ptr %557, align 2, !tbaa !62
  %559 = zext <8 x i16> %558 to <8 x i32>
  %560 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %559, <8 x i32> %552)
  %561 = trunc nuw <8 x i32> %560 to <8 x i16>
  store <8 x i16> %561, ptr %557, align 2, !tbaa !62
  %562 = add nuw i64 %554, 8
  %563 = icmp eq i64 %562, %546
  br i1 %563, label %564, label %553, !llvm.loop !95

564:                                              ; preds = %553
  %565 = icmp eq i64 %546, %540
  br i1 %565, label %585, label %566

566:                                              ; preds = %564, %543
  %567 = phi ptr [ %541, %543 ], [ %548, %564 ]
  %568 = phi i32 [ %538, %543 ], [ %550, %564 ]
  br label %575

569:                                              ; preds = %536
  %570 = getelementptr inbounds i8, ptr %541, i64 -2
  %571 = load i16, ptr %570, align 2, !tbaa !62
  %572 = zext i16 %571 to i32
  %573 = tail call i32 @llvm.usub.sat.i32(i32 %572, i32 %537)
  %574 = trunc nuw i32 %573 to i16
  store i16 %574, ptr %570, align 2, !tbaa !62
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

575:                                              ; preds = %575, %566
  %576 = phi ptr [ %578, %575 ], [ %567, %566 ]
  %577 = phi i32 [ %583, %575 ], [ %568, %566 ]
  %578 = getelementptr inbounds i8, ptr %576, i64 -2
  %579 = load i16, ptr %578, align 2, !tbaa !62
  %580 = zext i16 %579 to i32
  %581 = tail call i32 @llvm.usub.sat.i32(i32 %580, i32 %537)
  %582 = trunc nuw i32 %581 to i16
  store i16 %582, ptr %578, align 2, !tbaa !62
  %583 = add i32 %577, -1
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %585, label %575, !llvm.loop !96

585:                                              ; preds = %575, %564
  %586 = icmp eq i32 %537, 0
  br i1 %586, label %587, label %588, !prof !46, !nosanitize !45

587:                                              ; preds = %585
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

588:                                              ; preds = %585
  %589 = load ptr, ptr %98, align 8, !tbaa !35
  %590 = zext i32 %537 to i64
  %591 = getelementptr inbounds nuw [2 x i8], ptr %589, i64 %590
  %592 = icmp ult i32 %537, 8
  br i1 %592, label %614, label %593

593:                                              ; preds = %588
  %594 = and i64 %590, 4294967288
  %595 = mul nsw i64 %594, -2
  %596 = getelementptr i8, ptr %591, i64 %595
  %597 = trunc nuw i64 %594 to i32
  %598 = sub i32 %537, %597
  %599 = insertelement <8 x i32> poison, i32 %537, i64 0
  %600 = shufflevector <8 x i32> %599, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %601

601:                                              ; preds = %601, %593
  %602 = phi i64 [ 0, %593 ], [ %610, %601 ]
  %603 = mul i64 %602, -2
  %604 = getelementptr i8, ptr %591, i64 %603
  %605 = getelementptr inbounds i8, ptr %604, i64 -16
  %606 = load <8 x i16>, ptr %605, align 2, !tbaa !62
  %607 = zext <8 x i16> %606 to <8 x i32>
  %608 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %607, <8 x i32> %600)
  %609 = trunc nuw <8 x i32> %608 to <8 x i16>
  store <8 x i16> %609, ptr %605, align 2, !tbaa !62
  %610 = add nuw i64 %602, 8
  %611 = icmp eq i64 %610, %594
  br i1 %611, label %612, label %601, !llvm.loop !97

612:                                              ; preds = %601
  %613 = icmp eq i64 %594, %590
  br i1 %613, label %627, label %614

614:                                              ; preds = %612, %588
  %615 = phi ptr [ %591, %588 ], [ %596, %612 ]
  %616 = phi i32 [ %537, %588 ], [ %598, %612 ]
  br label %617

617:                                              ; preds = %617, %614
  %618 = phi ptr [ %620, %617 ], [ %615, %614 ]
  %619 = phi i32 [ %625, %617 ], [ %616, %614 ]
  %620 = getelementptr inbounds i8, ptr %618, i64 -2
  %621 = load i16, ptr %620, align 2, !tbaa !62
  %622 = zext i16 %621 to i32
  %623 = tail call i32 @llvm.usub.sat.i32(i32 %622, i32 %537)
  %624 = trunc nuw i32 %623 to i16
  store i16 %624, ptr %620, align 2, !tbaa !62
  %625 = add i32 %619, -1
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %627, label %617, !llvm.loop !98

627:                                              ; preds = %617, %612
  store i32 1, ptr %99, align 8, !tbaa !63
  %628 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %494, i32 %476), !nosanitize !45
  %629 = extractvalue { i32, i1 } %628, 1, !nosanitize !45
  br i1 %629, label %630, label %631, !prof !46, !nosanitize !45

630:                                              ; preds = %627
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

631:                                              ; preds = %627
  %632 = extractvalue { i32, i1 } %628, 0, !nosanitize !45
  %633 = load i32, ptr %82, align 4, !tbaa !75
  br label %634

634:                                              ; preds = %631, %504
  %635 = phi i32 [ %633, %631 ], [ %479, %504 ]
  %636 = phi i32 [ %527, %631 ], [ %487, %504 ]
  %637 = phi i32 [ %632, %631 ], [ %494, %504 ]
  %638 = load ptr, ptr %15, align 8, !tbaa !20
  %639 = getelementptr inbounds nuw i8, ptr %638, i64 8
  %640 = load i32, ptr %639, align 8, !tbaa !81
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %765, label %642

642:                                              ; preds = %634
  %643 = load ptr, ptr %92, align 8, !tbaa !34
  %644 = zext i32 %636 to i64
  %645 = getelementptr inbounds nuw i8, ptr %643, i64 %644
  %646 = zext i32 %635 to i64
  %647 = getelementptr inbounds nuw i8, ptr %645, i64 %646
  %648 = tail call i32 @llvm.umin.i32(i32 %640, i32 %637)
  %649 = icmp eq i32 %637, 0
  br i1 %649, label %681, label %650

650:                                              ; preds = %642
  %651 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %640, i32 %648), !nosanitize !45
  %652 = extractvalue { i32, i1 } %651, 1, !nosanitize !45
  br i1 %652, label %653, label %654, !prof !46, !nosanitize !45

653:                                              ; preds = %650
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

654:                                              ; preds = %650
  %655 = extractvalue { i32, i1 } %651, 0, !nosanitize !45
  store i32 %655, ptr %639, align 8, !tbaa !81
  %656 = load ptr, ptr %638, align 8, !tbaa !82
  %657 = zext i32 %648 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %647, ptr align 1 %656, i64 %657, i1 false)
  %658 = getelementptr inbounds nuw i8, ptr %638, i64 56
  %659 = load ptr, ptr %658, align 8, !tbaa !19
  %660 = getelementptr inbounds nuw i8, ptr %659, i64 48
  %661 = load i32, ptr %660, align 8, !tbaa !30
  switch i32 %661, label %670 [
    i32 1, label %662
    i32 2, label %666
  ]

662:                                              ; preds = %654
  %663 = getelementptr inbounds nuw i8, ptr %638, i64 96
  %664 = load i64, ptr %663, align 8, !tbaa !59
  %665 = tail call i64 @adler32(i64 noundef %664, ptr noundef %647, i32 noundef %648) #10
  store i64 %665, ptr %663, align 8, !tbaa !59
  br label %670

666:                                              ; preds = %654
  %667 = getelementptr inbounds nuw i8, ptr %638, i64 96
  %668 = load i64, ptr %667, align 8, !tbaa !59
  %669 = tail call i64 @crc32(i64 noundef %668, ptr noundef %647, i32 noundef %648) #10
  store i64 %669, ptr %667, align 8, !tbaa !59
  br label %670

670:                                              ; preds = %666, %662, %654
  %671 = load ptr, ptr %638, align 8, !tbaa !82
  %672 = getelementptr inbounds nuw i8, ptr %671, i64 %657
  store ptr %672, ptr %638, align 8, !tbaa !82
  %673 = getelementptr inbounds nuw i8, ptr %638, i64 16
  %674 = load i64, ptr %673, align 8, !tbaa !55
  %675 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %674, i64 %657), !nosanitize !45
  %676 = extractvalue { i64, i1 } %675, 1, !nosanitize !45
  br i1 %676, label %677, label %678, !prof !46, !nosanitize !45

677:                                              ; preds = %670
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

678:                                              ; preds = %670
  %679 = extractvalue { i64, i1 } %675, 0, !nosanitize !45
  store i64 %679, ptr %673, align 8, !tbaa !55
  %680 = load i32, ptr %82, align 4, !tbaa !75
  br label %681

681:                                              ; preds = %678, %642
  %682 = phi i32 [ %635, %642 ], [ %680, %678 ]
  %683 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %682, i32 %648), !nosanitize !45
  %684 = extractvalue { i32, i1 } %683, 1, !nosanitize !45
  br i1 %684, label %685, label %686, !prof !46, !nosanitize !45

685:                                              ; preds = %681
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

686:                                              ; preds = %681
  %687 = extractvalue { i32, i1 } %683, 0, !nosanitize !45
  store i32 %687, ptr %82, align 4, !tbaa !75
  %688 = load i32, ptr %95, align 4, !tbaa !76
  %689 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %687, i32 %688), !nosanitize !45
  %690 = extractvalue { i32, i1 } %689, 1, !nosanitize !45
  br i1 %690, label %691, label %692, !prof !46, !nosanitize !45

691:                                              ; preds = %686
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

692:                                              ; preds = %686
  %693 = extractvalue { i32, i1 } %689, 0, !nosanitize !45
  %694 = icmp ugt i32 %693, 2
  br i1 %694, label %695, label %758

695:                                              ; preds = %692
  %696 = load i32, ptr %90, align 4, !tbaa !73
  %697 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %696, i32 %688), !nosanitize !45
  %698 = extractvalue { i32, i1 } %697, 0, !nosanitize !45
  %699 = extractvalue { i32, i1 } %697, 1, !nosanitize !45
  br i1 %699, label %700, label %701, !prof !46, !nosanitize !45

700:                                              ; preds = %695
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

701:                                              ; preds = %695
  %702 = load ptr, ptr %92, align 8, !tbaa !34
  %703 = zext i32 %698 to i64
  %704 = getelementptr inbounds nuw i8, ptr %702, i64 %703
  %705 = load i8, ptr %704, align 1, !tbaa !8
  %706 = zext i8 %705 to i32
  store i32 %706, ptr %100, align 8, !tbaa !80
  %707 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %698, i32 1), !nosanitize !45
  %708 = extractvalue { i32, i1 } %707, 1, !nosanitize !45
  br i1 %708, label %709, label %710, !prof !46, !nosanitize !45

709:                                              ; preds = %701
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

710:                                              ; preds = %701
  %711 = extractvalue { i32, i1 } %707, 0, !nosanitize !45
  %712 = load i32, ptr %101, align 8, !tbaa !53
  %713 = shl i32 %706, %712
  %714 = zext i32 %711 to i64
  %715 = getelementptr inbounds nuw i8, ptr %702, i64 %714
  %716 = load i8, ptr %715, align 1, !tbaa !8
  %717 = zext i8 %716 to i32
  %718 = xor i32 %713, %717
  %719 = load i32, ptr %102, align 4, !tbaa !52
  %720 = and i32 %718, %719
  store i32 %720, ptr %100, align 8, !tbaa !80
  br label %721

721:                                              ; preds = %754, %710
  %722 = phi i32 [ %720, %710 ], [ %739, %754 ]
  %723 = phi i32 [ %688, %710 ], [ %750, %754 ]
  %724 = phi i32 [ %698, %710 ], [ %755, %754 ]
  %725 = icmp eq i32 %723, 0
  br i1 %725, label %758, label %726

726:                                              ; preds = %721
  %727 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %724, i32 3), !nosanitize !45
  %728 = extractvalue { i32, i1 } %727, 1, !nosanitize !45
  br i1 %728, label %729, label %730, !prof !46, !nosanitize !45

729:                                              ; preds = %726
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

730:                                              ; preds = %726
  %731 = shl i32 %722, %712
  %732 = extractvalue { i32, i1 } %727, 0, !nosanitize !45
  %733 = add i32 %732, -1
  %734 = zext i32 %733 to i64
  %735 = getelementptr inbounds nuw i8, ptr %702, i64 %734
  %736 = load i8, ptr %735, align 1, !tbaa !8
  %737 = zext i8 %736 to i32
  %738 = xor i32 %731, %737
  %739 = and i32 %738, %719
  store i32 %739, ptr %100, align 8, !tbaa !80
  %740 = load ptr, ptr %97, align 8, !tbaa !37
  %741 = zext i32 %739 to i64
  %742 = getelementptr inbounds nuw [2 x i8], ptr %740, i64 %741
  %743 = load i16, ptr %742, align 2, !tbaa !62
  %744 = load ptr, ptr %98, align 8, !tbaa !35
  %745 = load i32, ptr %103, align 8, !tbaa !33
  %746 = and i32 %745, %724
  %747 = zext i32 %746 to i64
  %748 = getelementptr inbounds nuw [2 x i8], ptr %744, i64 %747
  store i16 %743, ptr %748, align 2, !tbaa !62
  %749 = trunc i32 %724 to i16
  store i16 %749, ptr %742, align 2, !tbaa !62
  %750 = add i32 %723, -1
  store i32 %750, ptr %95, align 4, !tbaa !76
  %751 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %687, i32 %750), !nosanitize !45
  %752 = extractvalue { i32, i1 } %751, 1, !nosanitize !45
  br i1 %752, label %753, label %754, !prof !46, !nosanitize !45

753:                                              ; preds = %730
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

754:                                              ; preds = %730
  %755 = add nuw i32 %724, 1
  %756 = extractvalue { i32, i1 } %751, 0, !nosanitize !45
  %757 = icmp ult i32 %756, 3
  br i1 %757, label %758, label %721, !llvm.loop !91

758:                                              ; preds = %754, %721, %692
  %759 = icmp ult i32 %687, 262
  br i1 %759, label %760, label %765

760:                                              ; preds = %758
  %761 = load ptr, ptr %15, align 8, !tbaa !20
  %762 = getelementptr inbounds nuw i8, ptr %761, i64 8
  %763 = load i32, ptr %762, align 8, !tbaa !81
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %765, label %478, !llvm.loop !92

765:                                              ; preds = %760, %758, %634
  %766 = phi i32 [ %687, %760 ], [ %687, %758 ], [ %635, %634 ]
  %767 = load i64, ptr %394, align 8, !tbaa !38
  %768 = load i64, ptr %89, align 8, !tbaa !61
  %769 = icmp ult i64 %767, %768
  br i1 %769, label %770, label %806

770:                                              ; preds = %765
  %771 = load i32, ptr %90, align 4, !tbaa !73
  %772 = zext i32 %771 to i64
  %773 = zext i32 %766 to i64
  %774 = add nuw nsw i64 %773, %772
  %775 = icmp ult i64 %767, %774
  br i1 %775, label %776, label %786

776:                                              ; preds = %770
  %777 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %768, i64 %774), !nosanitize !45
  %778 = extractvalue { i64, i1 } %777, 1, !nosanitize !45
  br i1 %778, label %779, label %780, !prof !46, !nosanitize !45

779:                                              ; preds = %776
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

780:                                              ; preds = %776
  %781 = extractvalue { i64, i1 } %777, 0, !nosanitize !45
  %782 = tail call i64 @llvm.umin.i64(i64 %781, i64 258)
  %783 = load ptr, ptr %92, align 8, !tbaa !34
  %784 = getelementptr inbounds nuw i8, ptr %783, i64 %774
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %784, i8 0, i64 %782, i1 false)
  %785 = add nuw nsw i64 %782, %774
  br label %803

786:                                              ; preds = %770
  %787 = add nuw nsw i64 %774, 258
  %788 = icmp ult i64 %767, %787
  br i1 %788, label %789, label %806

789:                                              ; preds = %786
  %790 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %768, i64 %767), !nosanitize !45
  %791 = sub nuw nsw i64 %787, %767
  %792 = extractvalue { i64, i1 } %790, 0, !nosanitize !45
  %793 = tail call i64 @llvm.umin.i64(i64 %791, i64 %792)
  %794 = load ptr, ptr %92, align 8, !tbaa !34
  %795 = getelementptr inbounds nuw i8, ptr %794, i64 %767
  %796 = and i64 %793, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %795, i8 0, i64 %796, i1 false)
  %797 = load i64, ptr %394, align 8, !tbaa !38
  %798 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %797, i64 %793), !nosanitize !45
  %799 = extractvalue { i64, i1 } %798, 1, !nosanitize !45
  br i1 %799, label %800, label %801, !prof !46, !nosanitize !45

800:                                              ; preds = %789
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

801:                                              ; preds = %789
  %802 = extractvalue { i64, i1 } %798, 0, !nosanitize !45
  br label %803

803:                                              ; preds = %801, %780
  %804 = phi i64 [ %785, %780 ], [ %802, %801 ]
  store i64 %804, ptr %394, align 8, !tbaa !38
  %805 = load i32, ptr %82, align 4, !tbaa !75
  br label %806

806:                                              ; preds = %803, %786, %765
  %807 = phi i32 [ %766, %765 ], [ %766, %786 ], [ %805, %803 ]
  %808 = icmp ugt i32 %807, 2
  br i1 %808, label %437, label %809, !llvm.loop !99

809:                                              ; preds = %806, %434
  %810 = phi i32 [ %435, %434 ], [ %807, %806 ]
  %811 = load i32, ptr %90, align 4, !tbaa !73
  %812 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %811, i32 %810), !nosanitize !45
  %813 = extractvalue { i32, i1 } %812, 1, !nosanitize !45
  br i1 %813, label %814, label %815, !prof !46, !nosanitize !45

814:                                              ; preds = %809
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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

821:                                              ; preds = %815, %34, %30, %28, %25, %23, %20, %17, %13, %9, %5, %3
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
  br i1 %4, label %1102, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %1102, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %1102, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %1102, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %1102

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %1102 [
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
  br i1 %28, label %1102, label %29

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
  br i1 %44, label %1059, label %45

45:                                               ; preds = %34, %29
  %46 = getelementptr inbounds nuw i8, ptr %15, i64 76
  %47 = load i32, ptr %46, align 4, !tbaa !60
  %48 = icmp eq i32 %47, -2
  br i1 %48, label %1059, label %49

49:                                               ; preds = %45
  switch i32 %22, label %1102 [
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
  br label %1102

68:                                               ; preds = %63, %58
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %70 = load i32, ptr %69, align 8, !tbaa !107
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %73, ptr %74, align 8, !tbaa !9
  br label %1036

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
  br label %139

123:                                              ; preds = %117
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1036

124:                                              ; preds = %75
  br i1 %57, label %126, label %139

125:                                              ; preds = %126
  tail call void @llvm.ubsantrap(i8 12) #12, !nosanitize !45
  unreachable, !nosanitize !45

126:                                              ; preds = %124
  %127 = add i32 %47, 1073741824
  %128 = icmp sgt i32 %127, -1
  br i1 %128, label %129, label %125, !prof !93, !nosanitize !45

129:                                              ; preds = %126
  %130 = shl nsw i32 %47, 1
  %131 = icmp sgt i32 %47, 4
  %132 = select i1 %131, i32 9, i32 0
  %133 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %130, i32 %132), !nosanitize !45
  %134 = extractvalue { i32, i1 } %133, 0, !nosanitize !45
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %137, ptr %138, align 8, !tbaa !9
  br label %1036

139:                                              ; preds = %129, %124, %121
  %140 = phi i64 [ %118, %121 ], [ 0, %124 ], [ 0, %129 ]
  %141 = phi i32 [ %122, %121 ], [ %22, %124 ], [ %22, %129 ]
  switch i32 %141, label %255 [
    i32 666, label %142
    i32 42, label %148
  ]

142:                                              ; preds = %139
  %143 = load i32, ptr %55, align 8, !tbaa !81
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %994, label %145

145:                                              ; preds = %142
  %146 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %146, ptr %147, align 8, !tbaa !9
  br label %1036

148:                                              ; preds = %139
  %149 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %150 = load i32, ptr %149, align 8, !tbaa !30
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  store i32 113, ptr %21, align 8, !tbaa !29
  br label %991

153:                                              ; preds = %148
  %154 = getelementptr inbounds nuw i8, ptr %15, i64 84
  %155 = load i32, ptr %154, align 4, !tbaa !31
  %156 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %155, i32 8), !nosanitize !45
  %157 = extractvalue { i32, i1 } %156, 1, !nosanitize !45
  br i1 %157, label %158, label %159, !prof !46, !nosanitize !45

158:                                              ; preds = %153
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

159:                                              ; preds = %153
  %160 = extractvalue { i32, i1 } %156, 0, !nosanitize !45
  %161 = shl i32 %160, 12
  %162 = load i32, ptr %31, align 8, !tbaa !49
  %163 = icmp sgt i32 %162, 1
  br i1 %163, label %172, label %164

164:                                              ; preds = %159
  %165 = load i32, ptr %30, align 4, !tbaa !48
  %166 = icmp slt i32 %165, 2
  br i1 %166, label %172, label %167

167:                                              ; preds = %164
  %168 = icmp samesign ult i32 %165, 6
  br i1 %168, label %172, label %169

169:                                              ; preds = %167
  %170 = icmp eq i32 %165, 6
  %171 = select i1 %170, i32 128, i32 192
  br label %172

172:                                              ; preds = %169, %167, %164, %159
  %173 = phi i32 [ 64, %167 ], [ 0, %159 ], [ %171, %169 ], [ 0, %164 ]
  %174 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %175 = or disjoint i32 %173, %161
  %176 = load i32, ptr %174, align 4, !tbaa !73
  %177 = icmp eq i32 %176, 0
  %178 = select i1 %177, i32 2048, i32 2080
  %179 = or disjoint i32 %178, %175
  %180 = urem i32 %179, 31
  %181 = or disjoint i32 %180, %179
  %182 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %140, i64 1), !nosanitize !45
  %183 = extractvalue { i64, i1 } %182, 1, !nosanitize !45
  br i1 %183, label %184, label %185, !prof !46, !nosanitize !45

184:                                              ; preds = %172
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

185:                                              ; preds = %172
  %186 = extractvalue { i64, i1 } %182, 0, !nosanitize !45
  %187 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %188 = load ptr, ptr %187, align 8, !tbaa !40
  %189 = lshr i32 %179, 8
  %190 = trunc i32 %189 to i8
  store i64 %186, ptr %76, align 8, !tbaa !57
  %191 = getelementptr inbounds nuw i8, ptr %188, i64 %140
  store i8 %190, ptr %191, align 1, !tbaa !8
  %192 = load i64, ptr %76, align 8, !tbaa !57
  %193 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %192, i64 1), !nosanitize !45
  %194 = extractvalue { i64, i1 } %193, 1, !nosanitize !45
  br i1 %194, label %195, label %196, !prof !46, !nosanitize !45

195:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

196:                                              ; preds = %185
  %197 = extractvalue { i64, i1 } %193, 0, !nosanitize !45
  %198 = load ptr, ptr %187, align 8, !tbaa !40
  %199 = trunc i32 %181 to i8
  %200 = xor i8 %199, 31
  store i64 %197, ptr %76, align 8, !tbaa !57
  %201 = getelementptr inbounds nuw i8, ptr %198, i64 %192
  store i8 %200, ptr %201, align 1, !tbaa !8
  %202 = load i32, ptr %174, align 4, !tbaa !73
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %247, label %204

204:                                              ; preds = %196
  %205 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %206 = load i64, ptr %205, align 8, !tbaa !59
  %207 = lshr i64 %206, 16
  %208 = load i64, ptr %76, align 8, !tbaa !57
  %209 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %208, i64 1), !nosanitize !45
  %210 = extractvalue { i64, i1 } %209, 1, !nosanitize !45
  br i1 %210, label %211, label %212, !prof !46, !nosanitize !45

211:                                              ; preds = %204
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

212:                                              ; preds = %204
  %213 = extractvalue { i64, i1 } %209, 0, !nosanitize !45
  %214 = load ptr, ptr %187, align 8, !tbaa !40
  %215 = lshr i64 %206, 24
  %216 = trunc i64 %215 to i8
  store i64 %213, ptr %76, align 8, !tbaa !57
  %217 = getelementptr inbounds nuw i8, ptr %214, i64 %208
  store i8 %216, ptr %217, align 1, !tbaa !8
  %218 = load i64, ptr %76, align 8, !tbaa !57
  %219 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %218, i64 1), !nosanitize !45
  %220 = extractvalue { i64, i1 } %219, 1, !nosanitize !45
  br i1 %220, label %221, label %222, !prof !46, !nosanitize !45

221:                                              ; preds = %212
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

222:                                              ; preds = %212
  %223 = extractvalue { i64, i1 } %219, 0, !nosanitize !45
  %224 = load ptr, ptr %187, align 8, !tbaa !40
  %225 = trunc i64 %207 to i8
  store i64 %223, ptr %76, align 8, !tbaa !57
  %226 = getelementptr inbounds nuw i8, ptr %224, i64 %218
  store i8 %225, ptr %226, align 1, !tbaa !8
  %227 = load i64, ptr %205, align 8, !tbaa !59
  %228 = trunc i64 %227 to i8
  %229 = load i64, ptr %76, align 8, !tbaa !57
  %230 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %229, i64 1), !nosanitize !45
  %231 = extractvalue { i64, i1 } %230, 1, !nosanitize !45
  br i1 %231, label %232, label %233, !prof !46, !nosanitize !45

232:                                              ; preds = %222
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

233:                                              ; preds = %222
  %234 = extractvalue { i64, i1 } %230, 0, !nosanitize !45
  %235 = load ptr, ptr %187, align 8, !tbaa !40
  %236 = lshr i64 %227, 8
  %237 = trunc i64 %236 to i8
  store i64 %234, ptr %76, align 8, !tbaa !57
  %238 = getelementptr inbounds nuw i8, ptr %235, i64 %229
  store i8 %237, ptr %238, align 1, !tbaa !8
  %239 = load i64, ptr %76, align 8, !tbaa !57
  %240 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %239, i64 1), !nosanitize !45
  %241 = extractvalue { i64, i1 } %240, 1, !nosanitize !45
  br i1 %241, label %242, label %243, !prof !46, !nosanitize !45

242:                                              ; preds = %233
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

243:                                              ; preds = %233
  %244 = extractvalue { i64, i1 } %240, 0, !nosanitize !45
  %245 = load ptr, ptr %187, align 8, !tbaa !40
  store i64 %244, ptr %76, align 8, !tbaa !57
  %246 = getelementptr inbounds nuw i8, ptr %245, i64 %239
  store i8 %228, ptr %246, align 1, !tbaa !8
  br label %247

247:                                              ; preds = %243, %196
  %248 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  %249 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %248, ptr %249, align 8, !tbaa !59
  store i32 113, ptr %21, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %250 = load i64, ptr %76, align 8, !tbaa !57
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %247
  %253 = load i32, ptr %21, align 8, !tbaa !29
  br label %255

254:                                              ; preds = %247
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1036

255:                                              ; preds = %252, %139
  %256 = phi i32 [ %253, %252 ], [ %141, %139 ]
  %257 = icmp eq i32 %256, 57
  br i1 %257, label %258, label %513

258:                                              ; preds = %255
  %259 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  %260 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %259, ptr %260, align 8, !tbaa !59
  %261 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %262 = load i64, ptr %76, align 8, !tbaa !57
  %263 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %262, i64 1), !nosanitize !45
  %264 = extractvalue { i64, i1 } %263, 1, !nosanitize !45
  br i1 %264, label %265, label %266, !prof !46, !nosanitize !45

265:                                              ; preds = %258
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

266:                                              ; preds = %258
  %267 = extractvalue { i64, i1 } %263, 0, !nosanitize !45
  %268 = load ptr, ptr %261, align 8, !tbaa !40
  store i64 %267, ptr %76, align 8, !tbaa !57
  %269 = getelementptr inbounds nuw i8, ptr %268, i64 %262
  store i8 31, ptr %269, align 1, !tbaa !8
  %270 = load i64, ptr %76, align 8, !tbaa !57
  %271 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %270, i64 1), !nosanitize !45
  %272 = extractvalue { i64, i1 } %271, 1, !nosanitize !45
  br i1 %272, label %273, label %274, !prof !46, !nosanitize !45

273:                                              ; preds = %266
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

274:                                              ; preds = %266
  %275 = extractvalue { i64, i1 } %271, 0, !nosanitize !45
  %276 = load ptr, ptr %261, align 8, !tbaa !40
  store i64 %275, ptr %76, align 8, !tbaa !57
  %277 = getelementptr inbounds nuw i8, ptr %276, i64 %270
  store i8 -117, ptr %277, align 1, !tbaa !8
  %278 = load i64, ptr %76, align 8, !tbaa !57
  %279 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %278, i64 1), !nosanitize !45
  %280 = extractvalue { i64, i1 } %279, 1, !nosanitize !45
  br i1 %280, label %281, label %282, !prof !46, !nosanitize !45

281:                                              ; preds = %274
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

282:                                              ; preds = %274
  %283 = extractvalue { i64, i1 } %279, 0, !nosanitize !45
  %284 = load ptr, ptr %261, align 8, !tbaa !40
  store i64 %283, ptr %76, align 8, !tbaa !57
  %285 = getelementptr inbounds nuw i8, ptr %284, i64 %278
  store i8 8, ptr %285, align 1, !tbaa !8
  %286 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %287 = load ptr, ptr %286, align 8, !tbaa !100
  %288 = icmp eq ptr %287, null
  %289 = load i64, ptr %76, align 8, !tbaa !57
  %290 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %289, i64 1), !nosanitize !45
  %291 = extractvalue { i64, i1 } %290, 1, !nosanitize !45
  br i1 %288, label %292, label %359

292:                                              ; preds = %282
  br i1 %291, label %293, label %294, !prof !46, !nosanitize !45

293:                                              ; preds = %292
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

294:                                              ; preds = %292
  %295 = extractvalue { i64, i1 } %290, 0, !nosanitize !45
  %296 = load ptr, ptr %261, align 8, !tbaa !40
  store i64 %295, ptr %76, align 8, !tbaa !57
  %297 = getelementptr inbounds nuw i8, ptr %296, i64 %289
  store i8 0, ptr %297, align 1, !tbaa !8
  %298 = load i64, ptr %76, align 8, !tbaa !57
  %299 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %298, i64 1), !nosanitize !45
  %300 = extractvalue { i64, i1 } %299, 1, !nosanitize !45
  br i1 %300, label %301, label %302, !prof !46, !nosanitize !45

301:                                              ; preds = %294
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

302:                                              ; preds = %294
  %303 = extractvalue { i64, i1 } %299, 0, !nosanitize !45
  %304 = load ptr, ptr %261, align 8, !tbaa !40
  store i64 %303, ptr %76, align 8, !tbaa !57
  %305 = getelementptr inbounds nuw i8, ptr %304, i64 %298
  store i8 0, ptr %305, align 1, !tbaa !8
  %306 = load i64, ptr %76, align 8, !tbaa !57
  %307 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %306, i64 1), !nosanitize !45
  %308 = extractvalue { i64, i1 } %307, 1, !nosanitize !45
  br i1 %308, label %309, label %310, !prof !46, !nosanitize !45

309:                                              ; preds = %302
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

310:                                              ; preds = %302
  %311 = extractvalue { i64, i1 } %307, 0, !nosanitize !45
  %312 = load ptr, ptr %261, align 8, !tbaa !40
  store i64 %311, ptr %76, align 8, !tbaa !57
  %313 = getelementptr inbounds nuw i8, ptr %312, i64 %306
  store i8 0, ptr %313, align 1, !tbaa !8
  %314 = load i64, ptr %76, align 8, !tbaa !57
  %315 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %314, i64 1), !nosanitize !45
  %316 = extractvalue { i64, i1 } %315, 1, !nosanitize !45
  br i1 %316, label %317, label %318, !prof !46, !nosanitize !45

317:                                              ; preds = %310
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

318:                                              ; preds = %310
  %319 = extractvalue { i64, i1 } %315, 0, !nosanitize !45
  %320 = load ptr, ptr %261, align 8, !tbaa !40
  store i64 %319, ptr %76, align 8, !tbaa !57
  %321 = getelementptr inbounds nuw i8, ptr %320, i64 %314
  store i8 0, ptr %321, align 1, !tbaa !8
  %322 = load i64, ptr %76, align 8, !tbaa !57
  %323 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %322, i64 1), !nosanitize !45
  %324 = extractvalue { i64, i1 } %323, 1, !nosanitize !45
  br i1 %324, label %325, label %326, !prof !46, !nosanitize !45

325:                                              ; preds = %318
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

326:                                              ; preds = %318
  %327 = extractvalue { i64, i1 } %323, 0, !nosanitize !45
  %328 = load ptr, ptr %261, align 8, !tbaa !40
  store i64 %327, ptr %76, align 8, !tbaa !57
  %329 = getelementptr inbounds nuw i8, ptr %328, i64 %322
  store i8 0, ptr %329, align 1, !tbaa !8
  %330 = load i32, ptr %30, align 4, !tbaa !48
  %331 = icmp eq i32 %330, 9
  br i1 %331, label %338, label %332

332:                                              ; preds = %326
  %333 = load i32, ptr %31, align 8, !tbaa !49
  %334 = icmp sgt i32 %333, 1
  %335 = icmp slt i32 %330, 2
  %336 = or i1 %335, %334
  %337 = select i1 %336, i8 4, i8 0
  br label %338

338:                                              ; preds = %332, %326
  %339 = phi i8 [ %337, %332 ], [ 2, %326 ]
  %340 = load i64, ptr %76, align 8, !tbaa !57
  %341 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %340, i64 1), !nosanitize !45
  %342 = extractvalue { i64, i1 } %341, 1, !nosanitize !45
  br i1 %342, label %343, label %344, !prof !46, !nosanitize !45

343:                                              ; preds = %338
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

344:                                              ; preds = %338
  %345 = extractvalue { i64, i1 } %341, 0, !nosanitize !45
  %346 = load ptr, ptr %261, align 8, !tbaa !40
  store i64 %345, ptr %76, align 8, !tbaa !57
  %347 = getelementptr inbounds nuw i8, ptr %346, i64 %340
  store i8 %339, ptr %347, align 1, !tbaa !8
  %348 = load i64, ptr %76, align 8, !tbaa !57
  %349 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %348, i64 1), !nosanitize !45
  %350 = extractvalue { i64, i1 } %349, 1, !nosanitize !45
  br i1 %350, label %351, label %352, !prof !46, !nosanitize !45

351:                                              ; preds = %344
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

352:                                              ; preds = %344
  %353 = extractvalue { i64, i1 } %349, 0, !nosanitize !45
  %354 = load ptr, ptr %261, align 8, !tbaa !40
  store i64 %353, ptr %76, align 8, !tbaa !57
  %355 = getelementptr inbounds nuw i8, ptr %354, i64 %348
  store i8 3, ptr %355, align 1, !tbaa !8
  store i32 113, ptr %21, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %356 = load i64, ptr %76, align 8, !tbaa !57
  %357 = icmp eq i64 %356, 0
  br i1 %357, label %511, label %358

358:                                              ; preds = %352
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1036

359:                                              ; preds = %282
  br i1 %291, label %360, label %361, !prof !46, !nosanitize !45

360:                                              ; preds = %359
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

361:                                              ; preds = %359
  %362 = extractvalue { i64, i1 } %290, 0, !nosanitize !45
  %363 = load ptr, ptr %261, align 8, !tbaa !40
  %364 = getelementptr inbounds nuw i8, ptr %287, i64 56
  %365 = load ptr, ptr %364, align 8, !tbaa !109
  %366 = icmp eq ptr %365, null
  %367 = getelementptr inbounds nuw i8, ptr %287, i64 40
  %368 = load ptr, ptr %367, align 8, !tbaa !111
  %369 = icmp eq ptr %368, null
  %370 = getelementptr inbounds nuw i8, ptr %287, i64 24
  %371 = load ptr, ptr %370, align 8, !tbaa !112
  %372 = icmp eq ptr %371, null
  %373 = load i32, ptr %287, align 8, !tbaa !113
  %374 = icmp ne i32 %373, 0
  %375 = getelementptr inbounds nuw i8, ptr %287, i64 68
  %376 = load i32, ptr %375, align 4, !tbaa !114
  %377 = icmp eq i32 %376, 0
  %378 = select i1 %377, i8 0, i8 2
  %379 = zext i1 %374 to i8
  %380 = select i1 %372, i8 0, i8 4
  %381 = select i1 %369, i8 0, i8 8
  %382 = select i1 %366, i8 0, i8 16
  %383 = or disjoint i8 %381, %382
  %384 = or disjoint i8 %383, %380
  %385 = or disjoint i8 %384, %379
  %386 = or disjoint i8 %385, %378
  store i64 %362, ptr %76, align 8, !tbaa !57
  %387 = getelementptr inbounds nuw i8, ptr %363, i64 %289
  store i8 %386, ptr %387, align 1, !tbaa !8
  %388 = load i64, ptr %76, align 8, !tbaa !57
  %389 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %388, i64 1), !nosanitize !45
  %390 = extractvalue { i64, i1 } %389, 1, !nosanitize !45
  br i1 %390, label %391, label %392, !prof !46, !nosanitize !45

391:                                              ; preds = %361
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

392:                                              ; preds = %361
  %393 = extractvalue { i64, i1 } %389, 0, !nosanitize !45
  %394 = load ptr, ptr %261, align 8, !tbaa !40
  %395 = load ptr, ptr %286, align 8, !tbaa !100
  %396 = getelementptr inbounds nuw i8, ptr %395, i64 8
  %397 = load i64, ptr %396, align 8, !tbaa !115
  %398 = trunc i64 %397 to i8
  store i64 %393, ptr %76, align 8, !tbaa !57
  %399 = getelementptr inbounds nuw i8, ptr %394, i64 %388
  store i8 %398, ptr %399, align 1, !tbaa !8
  %400 = load i64, ptr %76, align 8, !tbaa !57
  %401 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %400, i64 1), !nosanitize !45
  %402 = extractvalue { i64, i1 } %401, 1, !nosanitize !45
  br i1 %402, label %403, label %404, !prof !46, !nosanitize !45

403:                                              ; preds = %392
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

404:                                              ; preds = %392
  %405 = extractvalue { i64, i1 } %401, 0, !nosanitize !45
  %406 = load ptr, ptr %261, align 8, !tbaa !40
  %407 = load ptr, ptr %286, align 8, !tbaa !100
  %408 = getelementptr inbounds nuw i8, ptr %407, i64 8
  %409 = load i64, ptr %408, align 8, !tbaa !115
  %410 = lshr i64 %409, 8
  %411 = trunc i64 %410 to i8
  store i64 %405, ptr %76, align 8, !tbaa !57
  %412 = getelementptr inbounds nuw i8, ptr %406, i64 %400
  store i8 %411, ptr %412, align 1, !tbaa !8
  %413 = load i64, ptr %76, align 8, !tbaa !57
  %414 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %413, i64 1), !nosanitize !45
  %415 = extractvalue { i64, i1 } %414, 1, !nosanitize !45
  br i1 %415, label %416, label %417, !prof !46, !nosanitize !45

416:                                              ; preds = %404
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

417:                                              ; preds = %404
  %418 = extractvalue { i64, i1 } %414, 0, !nosanitize !45
  %419 = load ptr, ptr %261, align 8, !tbaa !40
  %420 = load ptr, ptr %286, align 8, !tbaa !100
  %421 = getelementptr inbounds nuw i8, ptr %420, i64 8
  %422 = load i64, ptr %421, align 8, !tbaa !115
  %423 = lshr i64 %422, 16
  %424 = trunc i64 %423 to i8
  store i64 %418, ptr %76, align 8, !tbaa !57
  %425 = getelementptr inbounds nuw i8, ptr %419, i64 %413
  store i8 %424, ptr %425, align 1, !tbaa !8
  %426 = load i64, ptr %76, align 8, !tbaa !57
  %427 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %426, i64 1), !nosanitize !45
  %428 = extractvalue { i64, i1 } %427, 1, !nosanitize !45
  br i1 %428, label %429, label %430, !prof !46, !nosanitize !45

429:                                              ; preds = %417
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

430:                                              ; preds = %417
  %431 = extractvalue { i64, i1 } %427, 0, !nosanitize !45
  %432 = load ptr, ptr %261, align 8, !tbaa !40
  %433 = load ptr, ptr %286, align 8, !tbaa !100
  %434 = getelementptr inbounds nuw i8, ptr %433, i64 8
  %435 = load i64, ptr %434, align 8, !tbaa !115
  %436 = lshr i64 %435, 24
  %437 = trunc i64 %436 to i8
  store i64 %431, ptr %76, align 8, !tbaa !57
  %438 = getelementptr inbounds nuw i8, ptr %432, i64 %426
  store i8 %437, ptr %438, align 1, !tbaa !8
  %439 = load i32, ptr %30, align 4, !tbaa !48
  %440 = icmp eq i32 %439, 9
  br i1 %440, label %447, label %441

441:                                              ; preds = %430
  %442 = load i32, ptr %31, align 8, !tbaa !49
  %443 = icmp sgt i32 %442, 1
  %444 = icmp slt i32 %439, 2
  %445 = or i1 %444, %443
  %446 = select i1 %445, i8 4, i8 0
  br label %447

447:                                              ; preds = %441, %430
  %448 = phi i8 [ %446, %441 ], [ 2, %430 ]
  %449 = load i64, ptr %76, align 8, !tbaa !57
  %450 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %449, i64 1), !nosanitize !45
  %451 = extractvalue { i64, i1 } %450, 1, !nosanitize !45
  br i1 %451, label %452, label %453, !prof !46, !nosanitize !45

452:                                              ; preds = %447
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

453:                                              ; preds = %447
  %454 = extractvalue { i64, i1 } %450, 0, !nosanitize !45
  %455 = load ptr, ptr %261, align 8, !tbaa !40
  store i64 %454, ptr %76, align 8, !tbaa !57
  %456 = getelementptr inbounds nuw i8, ptr %455, i64 %449
  store i8 %448, ptr %456, align 1, !tbaa !8
  %457 = load i64, ptr %76, align 8, !tbaa !57
  %458 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %457, i64 1), !nosanitize !45
  %459 = extractvalue { i64, i1 } %458, 1, !nosanitize !45
  br i1 %459, label %460, label %461, !prof !46, !nosanitize !45

460:                                              ; preds = %453
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

461:                                              ; preds = %453
  %462 = extractvalue { i64, i1 } %458, 0, !nosanitize !45
  %463 = load ptr, ptr %261, align 8, !tbaa !40
  %464 = load ptr, ptr %286, align 8, !tbaa !100
  %465 = getelementptr inbounds nuw i8, ptr %464, i64 20
  %466 = load i32, ptr %465, align 4, !tbaa !116
  %467 = trunc i32 %466 to i8
  store i64 %462, ptr %76, align 8, !tbaa !57
  %468 = getelementptr inbounds nuw i8, ptr %463, i64 %457
  store i8 %467, ptr %468, align 1, !tbaa !8
  %469 = load ptr, ptr %286, align 8, !tbaa !100
  %470 = getelementptr inbounds nuw i8, ptr %469, i64 24
  %471 = load ptr, ptr %470, align 8, !tbaa !112
  %472 = icmp eq ptr %471, null
  br i1 %472, label %499, label %473

473:                                              ; preds = %461
  %474 = load i64, ptr %76, align 8, !tbaa !57
  %475 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %474, i64 1), !nosanitize !45
  %476 = extractvalue { i64, i1 } %475, 1, !nosanitize !45
  br i1 %476, label %477, label %478, !prof !46, !nosanitize !45

477:                                              ; preds = %473
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

478:                                              ; preds = %473
  %479 = extractvalue { i64, i1 } %475, 0, !nosanitize !45
  %480 = load ptr, ptr %261, align 8, !tbaa !40
  %481 = getelementptr inbounds nuw i8, ptr %469, i64 32
  %482 = load i32, ptr %481, align 8, !tbaa !117
  %483 = trunc i32 %482 to i8
  store i64 %479, ptr %76, align 8, !tbaa !57
  %484 = getelementptr inbounds nuw i8, ptr %480, i64 %474
  store i8 %483, ptr %484, align 1, !tbaa !8
  %485 = load i64, ptr %76, align 8, !tbaa !57
  %486 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %485, i64 1), !nosanitize !45
  %487 = extractvalue { i64, i1 } %486, 1, !nosanitize !45
  br i1 %487, label %488, label %489, !prof !46, !nosanitize !45

488:                                              ; preds = %478
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

489:                                              ; preds = %478
  %490 = extractvalue { i64, i1 } %486, 0, !nosanitize !45
  %491 = load ptr, ptr %261, align 8, !tbaa !40
  %492 = load ptr, ptr %286, align 8, !tbaa !100
  %493 = getelementptr inbounds nuw i8, ptr %492, i64 32
  %494 = load i32, ptr %493, align 8, !tbaa !117
  %495 = lshr i32 %494, 8
  %496 = trunc i32 %495 to i8
  store i64 %490, ptr %76, align 8, !tbaa !57
  %497 = getelementptr inbounds nuw i8, ptr %491, i64 %485
  store i8 %496, ptr %497, align 1, !tbaa !8
  %498 = load ptr, ptr %286, align 8, !tbaa !100
  br label %499

499:                                              ; preds = %489, %461
  %500 = phi ptr [ %498, %489 ], [ %469, %461 ]
  %501 = getelementptr inbounds nuw i8, ptr %500, i64 68
  %502 = load i32, ptr %501, align 4, !tbaa !114
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %509, label %504

504:                                              ; preds = %499
  %505 = load i64, ptr %260, align 8, !tbaa !59
  %506 = load ptr, ptr %261, align 8, !tbaa !40
  %507 = load i64, ptr %76, align 8, !tbaa !57
  %508 = tail call i64 @crc32_z(i64 noundef %505, ptr noundef %506, i64 noundef %507) #10
  store i64 %508, ptr %260, align 8, !tbaa !59
  br label %509

509:                                              ; preds = %504, %499
  %510 = getelementptr inbounds nuw i8, ptr %15, i64 64
  store i64 0, ptr %510, align 8, !tbaa !118
  store i32 69, ptr %21, align 8, !tbaa !29
  br label %515

511:                                              ; preds = %352
  %512 = load i32, ptr %21, align 8, !tbaa !29
  br label %513

513:                                              ; preds = %511, %255
  %514 = phi i32 [ %512, %511 ], [ %256, %255 ]
  switch i32 %514, label %991 [
    i32 69, label %515
    i32 73, label %723
    i32 91, label %835
    i32 103, label %946
  ]

515:                                              ; preds = %513, %509
  %516 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %517 = load ptr, ptr %516, align 8, !tbaa !100
  %518 = getelementptr inbounds nuw i8, ptr %517, i64 24
  %519 = load ptr, ptr %518, align 8, !tbaa !112
  %520 = icmp eq ptr %519, null
  br i1 %520, label %722, label %521

521:                                              ; preds = %515
  %522 = getelementptr inbounds nuw i8, ptr %517, i64 32
  %523 = load i32, ptr %522, align 8, !tbaa !117
  %524 = and i32 %523, 65535
  %525 = zext nneg i32 %524 to i64
  %526 = getelementptr inbounds nuw i8, ptr %15, i64 64
  %527 = load i64, ptr %526, align 8, !tbaa !118
  %528 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %525, i64 %527), !nosanitize !45
  %529 = extractvalue { i64, i1 } %528, 1, !nosanitize !45
  br i1 %529, label %530, label %531, !prof !46, !nosanitize !45

530:                                              ; preds = %521
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

531:                                              ; preds = %521
  %532 = load i64, ptr %76, align 8, !tbaa !57
  %533 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %534 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %535 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %536 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %537 = extractvalue { i64, i1 } %528, 0
  %538 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %532, i64 %537), !nosanitize !45
  %539 = extractvalue { i64, i1 } %538, 1, !nosanitize !45
  br i1 %539, label %612, label %540, !prof !46, !nosanitize !45

540:                                              ; preds = %531
  %541 = extractvalue { i64, i1 } %538, 0, !nosanitize !45
  %542 = load i64, ptr %533, align 8, !tbaa !41
  %543 = icmp ugt i64 %541, %542
  br i1 %543, label %544, label %695

544:                                              ; preds = %540
  %545 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %542, i64 %532), !nosanitize !45
  %546 = extractvalue { i64, i1 } %545, 0, !nosanitize !45
  %547 = extractvalue { i64, i1 } %545, 1, !nosanitize !45
  br i1 %547, label %618, label %548, !prof !46, !nosanitize !45

548:                                              ; preds = %544
  %549 = load ptr, ptr %534, align 8, !tbaa !40
  %550 = getelementptr inbounds nuw i8, ptr %549, i64 %532
  %551 = getelementptr inbounds nuw i8, ptr %519, i64 %527
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %550, ptr nonnull align 1 %551, i64 %546, i1 false)
  %552 = load i64, ptr %533, align 8, !tbaa !41
  store i64 %552, ptr %76, align 8, !tbaa !57
  %553 = load ptr, ptr %516, align 8, !tbaa !100
  %554 = getelementptr inbounds nuw i8, ptr %553, i64 68
  %555 = load i32, ptr %554, align 4, !tbaa !114
  %556 = icmp ne i32 %555, 0
  %557 = icmp ugt i64 %552, %532
  %558 = select i1 %556, i1 %557, i1 false
  br i1 %558, label %559, label %565

559:                                              ; preds = %548
  %560 = sub nuw i64 %552, %532
  %561 = load ptr, ptr %534, align 8, !tbaa !40
  %562 = getelementptr inbounds nuw i8, ptr %561, i64 %532
  %563 = load i64, ptr %535, align 8, !tbaa !59
  %564 = tail call i64 @crc32_z(i64 noundef %563, ptr noundef %562, i64 noundef %560) #10
  store i64 %564, ptr %535, align 8, !tbaa !59
  br label %565

565:                                              ; preds = %559, %548
  %566 = load i64, ptr %526, align 8, !tbaa !118
  %567 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %566, i64 %546), !nosanitize !45
  %568 = extractvalue { i64, i1 } %567, 1, !nosanitize !45
  br i1 %568, label %641, label %569, !prof !46, !nosanitize !45

569:                                              ; preds = %565
  %570 = extractvalue { i64, i1 } %567, 0, !nosanitize !45
  store i64 %570, ptr %526, align 8, !tbaa !118
  %571 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %571) #10
  %572 = getelementptr inbounds nuw i8, ptr %571, i64 40
  %573 = load i64, ptr %572, align 8, !tbaa !57
  %574 = load i32, ptr %69, align 8, !tbaa !107
  %575 = zext i32 %574 to i64
  %576 = tail call i64 @llvm.umin.i64(i64 %573, i64 %575)
  %577 = trunc nuw i64 %576 to i32
  %578 = icmp eq i64 %576, 0
  br i1 %578, label %606, label %579

579:                                              ; preds = %569
  %580 = load ptr, ptr %51, align 8, !tbaa !106
  %581 = getelementptr inbounds nuw i8, ptr %571, i64 32
  %582 = load ptr, ptr %581, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %580, ptr align 1 %582, i64 %576, i1 false)
  %583 = load ptr, ptr %51, align 8, !tbaa !106
  %584 = getelementptr inbounds nuw i8, ptr %583, i64 %576
  store ptr %584, ptr %51, align 8, !tbaa !106
  %585 = load ptr, ptr %581, align 8, !tbaa !58
  %586 = getelementptr inbounds nuw i8, ptr %585, i64 %576
  store ptr %586, ptr %581, align 8, !tbaa !58
  %587 = load i64, ptr %536, align 8, !tbaa !108
  %588 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %587, i64 %576), !nosanitize !45
  %589 = extractvalue { i64, i1 } %588, 1, !nosanitize !45
  br i1 %589, label %663, label %590, !prof !46, !nosanitize !45

590:                                              ; preds = %579
  %591 = extractvalue { i64, i1 } %588, 0, !nosanitize !45
  store i64 %591, ptr %536, align 8, !tbaa !108
  %592 = load i32, ptr %69, align 8, !tbaa !107
  %593 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %592, i32 %577), !nosanitize !45
  %594 = extractvalue { i32, i1 } %593, 1, !nosanitize !45
  br i1 %594, label %669, label %595, !prof !46, !nosanitize !45

595:                                              ; preds = %590
  %596 = extractvalue { i32, i1 } %593, 0, !nosanitize !45
  store i32 %596, ptr %69, align 8, !tbaa !107
  %597 = load i64, ptr %572, align 8, !tbaa !57
  %598 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %597, i64 %576), !nosanitize !45
  %599 = extractvalue { i64, i1 } %598, 1, !nosanitize !45
  br i1 %599, label %675, label %600, !prof !46, !nosanitize !45

600:                                              ; preds = %595
  %601 = extractvalue { i64, i1 } %598, 0, !nosanitize !45
  store i64 %601, ptr %572, align 8, !tbaa !57
  %602 = icmp eq i64 %601, 0
  br i1 %602, label %603, label %606

603:                                              ; preds = %600
  %604 = getelementptr inbounds nuw i8, ptr %571, i64 16
  %605 = load ptr, ptr %604, align 8, !tbaa !40
  store ptr %605, ptr %581, align 8, !tbaa !58
  br label %606

606:                                              ; preds = %603, %600, %569
  %607 = load i64, ptr %76, align 8, !tbaa !57
  %608 = icmp eq i64 %607, 0
  br i1 %608, label %609, label %685

609:                                              ; preds = %606
  %610 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %537, i64 %546), !nosanitize !45
  %611 = extractvalue { i64, i1 } %610, 1, !nosanitize !45
  br i1 %611, label %689, label %613, !prof !46, !nosanitize !45

612:                                              ; preds = %531
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

613:                                              ; preds = %686, %609
  %614 = phi { i64, i1 } [ %687, %686 ], [ %610, %609 ]
  %615 = extractvalue { i64, i1 } %614, 0
  %616 = load i64, ptr %533, align 8, !tbaa !41
  %617 = icmp ugt i64 %615, %616
  br i1 %617, label %619, label %690

618:                                              ; preds = %544
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

619:                                              ; preds = %613
  %620 = load ptr, ptr %534, align 8, !tbaa !40
  %621 = load ptr, ptr %516, align 8, !tbaa !100
  %622 = getelementptr inbounds nuw i8, ptr %621, i64 24
  %623 = load ptr, ptr %622, align 8, !tbaa !112
  %624 = load i64, ptr %526, align 8, !tbaa !118
  %625 = getelementptr inbounds nuw i8, ptr %623, i64 %624
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %620, ptr align 1 %625, i64 %616, i1 false)
  %626 = load i64, ptr %533, align 8, !tbaa !41
  store i64 %626, ptr %76, align 8, !tbaa !57
  %627 = load ptr, ptr %516, align 8, !tbaa !100
  %628 = getelementptr inbounds nuw i8, ptr %627, i64 68
  %629 = load i32, ptr %628, align 4, !tbaa !114
  %630 = icmp ne i32 %629, 0
  %631 = icmp ne i64 %626, 0
  %632 = select i1 %630, i1 %631, i1 false
  br i1 %632, label %633, label %637

633:                                              ; preds = %619
  %634 = load ptr, ptr %534, align 8, !tbaa !40
  %635 = load i64, ptr %535, align 8, !tbaa !59
  %636 = tail call i64 @crc32_z(i64 noundef %635, ptr noundef %634, i64 noundef %626) #10
  store i64 %636, ptr %535, align 8, !tbaa !59
  br label %637

637:                                              ; preds = %633, %619
  %638 = load i64, ptr %526, align 8, !tbaa !118
  %639 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %638, i64 %616), !nosanitize !45
  %640 = extractvalue { i64, i1 } %639, 1, !nosanitize !45
  br i1 %640, label %641, label %642, !prof !46, !nosanitize !45

641:                                              ; preds = %637, %565
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

642:                                              ; preds = %637
  %643 = extractvalue { i64, i1 } %639, 0, !nosanitize !45
  store i64 %643, ptr %526, align 8, !tbaa !118
  %644 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %644) #10
  %645 = getelementptr inbounds nuw i8, ptr %644, i64 40
  %646 = load i64, ptr %645, align 8, !tbaa !57
  %647 = load i32, ptr %69, align 8, !tbaa !107
  %648 = zext i32 %647 to i64
  %649 = tail call i64 @llvm.umin.i64(i64 %646, i64 %648)
  %650 = trunc nuw i64 %649 to i32
  %651 = icmp eq i64 %649, 0
  br i1 %651, label %682, label %652

652:                                              ; preds = %642
  %653 = load ptr, ptr %51, align 8, !tbaa !106
  %654 = getelementptr inbounds nuw i8, ptr %644, i64 32
  %655 = load ptr, ptr %654, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %653, ptr align 1 %655, i64 %649, i1 false)
  %656 = load ptr, ptr %51, align 8, !tbaa !106
  %657 = getelementptr inbounds nuw i8, ptr %656, i64 %649
  store ptr %657, ptr %51, align 8, !tbaa !106
  %658 = load ptr, ptr %654, align 8, !tbaa !58
  %659 = getelementptr inbounds nuw i8, ptr %658, i64 %649
  store ptr %659, ptr %654, align 8, !tbaa !58
  %660 = load i64, ptr %536, align 8, !tbaa !108
  %661 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %660, i64 %649), !nosanitize !45
  %662 = extractvalue { i64, i1 } %661, 1, !nosanitize !45
  br i1 %662, label %663, label %664, !prof !46, !nosanitize !45

663:                                              ; preds = %652, %579
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

664:                                              ; preds = %652
  %665 = extractvalue { i64, i1 } %661, 0, !nosanitize !45
  store i64 %665, ptr %536, align 8, !tbaa !108
  %666 = load i32, ptr %69, align 8, !tbaa !107
  %667 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %666, i32 %650), !nosanitize !45
  %668 = extractvalue { i32, i1 } %667, 1, !nosanitize !45
  br i1 %668, label %669, label %670, !prof !46, !nosanitize !45

669:                                              ; preds = %664, %590
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

670:                                              ; preds = %664
  %671 = extractvalue { i32, i1 } %667, 0, !nosanitize !45
  store i32 %671, ptr %69, align 8, !tbaa !107
  %672 = load i64, ptr %645, align 8, !tbaa !57
  %673 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %672, i64 %649), !nosanitize !45
  %674 = extractvalue { i64, i1 } %673, 1, !nosanitize !45
  br i1 %674, label %675, label %676, !prof !46, !nosanitize !45

675:                                              ; preds = %670, %595
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

676:                                              ; preds = %670
  %677 = extractvalue { i64, i1 } %673, 0, !nosanitize !45
  store i64 %677, ptr %645, align 8, !tbaa !57
  %678 = icmp eq i64 %677, 0
  br i1 %678, label %679, label %682

679:                                              ; preds = %676
  %680 = getelementptr inbounds nuw i8, ptr %644, i64 16
  %681 = load ptr, ptr %680, align 8, !tbaa !40
  store ptr %681, ptr %654, align 8, !tbaa !58
  br label %682

682:                                              ; preds = %679, %676, %642
  %683 = load i64, ptr %76, align 8, !tbaa !57
  %684 = icmp eq i64 %683, 0
  br i1 %684, label %686, label %685

685:                                              ; preds = %682, %606
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1036

686:                                              ; preds = %682
  %687 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %615, i64 %616), !nosanitize !45
  %688 = extractvalue { i64, i1 } %687, 1, !nosanitize !45
  br i1 %688, label %689, label %613, !prof !46, !llvm.loop !119, !nosanitize !45

689:                                              ; preds = %686, %609
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

690:                                              ; preds = %613
  %691 = load ptr, ptr %516, align 8, !tbaa !100
  %692 = getelementptr inbounds nuw i8, ptr %691, i64 24
  %693 = load ptr, ptr %692, align 8, !tbaa !112
  %694 = load i64, ptr %526, align 8, !tbaa !118
  br label %695

695:                                              ; preds = %690, %540
  %696 = phi i64 [ %527, %540 ], [ %694, %690 ]
  %697 = phi ptr [ %519, %540 ], [ %693, %690 ]
  %698 = phi i64 [ %532, %540 ], [ 0, %690 ]
  %699 = phi i64 [ %537, %540 ], [ %615, %690 ]
  %700 = load ptr, ptr %534, align 8, !tbaa !40
  %701 = getelementptr inbounds nuw i8, ptr %700, i64 %698
  %702 = getelementptr inbounds nuw i8, ptr %697, i64 %696
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %701, ptr align 1 %702, i64 %699, i1 false)
  %703 = load i64, ptr %76, align 8, !tbaa !57
  %704 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %703, i64 %699), !nosanitize !45
  %705 = extractvalue { i64, i1 } %704, 0, !nosanitize !45
  %706 = extractvalue { i64, i1 } %704, 1, !nosanitize !45
  br i1 %706, label %707, label %708, !prof !46, !nosanitize !45

707:                                              ; preds = %695
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

708:                                              ; preds = %695
  store i64 %705, ptr %76, align 8, !tbaa !57
  %709 = load ptr, ptr %516, align 8, !tbaa !100
  %710 = getelementptr inbounds nuw i8, ptr %709, i64 68
  %711 = load i32, ptr %710, align 4, !tbaa !114
  %712 = icmp ne i32 %711, 0
  %713 = icmp ugt i64 %705, %698
  %714 = select i1 %712, i1 %713, i1 false
  br i1 %714, label %715, label %721

715:                                              ; preds = %708
  %716 = sub nuw i64 %705, %698
  %717 = load ptr, ptr %534, align 8, !tbaa !40
  %718 = getelementptr inbounds nuw i8, ptr %717, i64 %698
  %719 = load i64, ptr %535, align 8, !tbaa !59
  %720 = tail call i64 @crc32_z(i64 noundef %719, ptr noundef %718, i64 noundef %716) #10
  store i64 %720, ptr %535, align 8, !tbaa !59
  br label %721

721:                                              ; preds = %715, %708
  store i64 0, ptr %526, align 8, !tbaa !118
  br label %722

722:                                              ; preds = %721, %515
  store i32 73, ptr %21, align 8, !tbaa !29
  br label %723

723:                                              ; preds = %722, %513
  %724 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %725 = load ptr, ptr %724, align 8, !tbaa !100
  %726 = getelementptr inbounds nuw i8, ptr %725, i64 40
  %727 = load ptr, ptr %726, align 8, !tbaa !111
  %728 = icmp eq ptr %727, null
  br i1 %728, label %834, label %729

729:                                              ; preds = %723
  %730 = load i64, ptr %76, align 8, !tbaa !57
  %731 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %732 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %733 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %734 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %735 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %736

736:                                              ; preds = %812, %729
  %737 = phi i64 [ %730, %729 ], [ %799, %812 ]
  %738 = load i64, ptr %76, align 8, !tbaa !57
  %739 = load i64, ptr %731, align 8, !tbaa !41
  %740 = icmp eq i64 %738, %739
  br i1 %740, label %741, label %797

741:                                              ; preds = %736
  %742 = load ptr, ptr %724, align 8, !tbaa !100
  %743 = getelementptr inbounds nuw i8, ptr %742, i64 68
  %744 = load i32, ptr %743, align 4, !tbaa !114
  %745 = icmp ne i32 %744, 0
  %746 = icmp ugt i64 %738, %737
  %747 = select i1 %745, i1 %746, i1 false
  br i1 %747, label %748, label %754

748:                                              ; preds = %741
  %749 = sub nuw i64 %738, %737
  %750 = load ptr, ptr %732, align 8, !tbaa !40
  %751 = getelementptr inbounds nuw i8, ptr %750, i64 %737
  %752 = load i64, ptr %733, align 8, !tbaa !59
  %753 = tail call i64 @crc32_z(i64 noundef %752, ptr noundef %751, i64 noundef %749) #10
  store i64 %753, ptr %733, align 8, !tbaa !59
  br label %754

754:                                              ; preds = %748, %741
  %755 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %755) #10
  %756 = getelementptr inbounds nuw i8, ptr %755, i64 40
  %757 = load i64, ptr %756, align 8, !tbaa !57
  %758 = load i32, ptr %69, align 8, !tbaa !107
  %759 = zext i32 %758 to i64
  %760 = tail call i64 @llvm.umin.i64(i64 %757, i64 %759)
  %761 = trunc nuw i64 %760 to i32
  %762 = icmp eq i64 %760, 0
  br i1 %762, label %793, label %763

763:                                              ; preds = %754
  %764 = load ptr, ptr %51, align 8, !tbaa !106
  %765 = getelementptr inbounds nuw i8, ptr %755, i64 32
  %766 = load ptr, ptr %765, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %764, ptr align 1 %766, i64 %760, i1 false)
  %767 = load ptr, ptr %51, align 8, !tbaa !106
  %768 = getelementptr inbounds nuw i8, ptr %767, i64 %760
  store ptr %768, ptr %51, align 8, !tbaa !106
  %769 = load ptr, ptr %765, align 8, !tbaa !58
  %770 = getelementptr inbounds nuw i8, ptr %769, i64 %760
  store ptr %770, ptr %765, align 8, !tbaa !58
  %771 = load i64, ptr %734, align 8, !tbaa !108
  %772 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %771, i64 %760), !nosanitize !45
  %773 = extractvalue { i64, i1 } %772, 1, !nosanitize !45
  br i1 %773, label %774, label %775, !prof !46, !nosanitize !45

774:                                              ; preds = %763
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

775:                                              ; preds = %763
  %776 = extractvalue { i64, i1 } %772, 0, !nosanitize !45
  store i64 %776, ptr %734, align 8, !tbaa !108
  %777 = load i32, ptr %69, align 8, !tbaa !107
  %778 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %777, i32 %761), !nosanitize !45
  %779 = extractvalue { i32, i1 } %778, 1, !nosanitize !45
  br i1 %779, label %780, label %781, !prof !46, !nosanitize !45

780:                                              ; preds = %775
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

781:                                              ; preds = %775
  %782 = extractvalue { i32, i1 } %778, 0, !nosanitize !45
  store i32 %782, ptr %69, align 8, !tbaa !107
  %783 = load i64, ptr %756, align 8, !tbaa !57
  %784 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %783, i64 %760), !nosanitize !45
  %785 = extractvalue { i64, i1 } %784, 1, !nosanitize !45
  br i1 %785, label %786, label %787, !prof !46, !nosanitize !45

786:                                              ; preds = %781
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

787:                                              ; preds = %781
  %788 = extractvalue { i64, i1 } %784, 0, !nosanitize !45
  store i64 %788, ptr %756, align 8, !tbaa !57
  %789 = icmp eq i64 %788, 0
  br i1 %789, label %790, label %793

790:                                              ; preds = %787
  %791 = getelementptr inbounds nuw i8, ptr %755, i64 16
  %792 = load ptr, ptr %791, align 8, !tbaa !40
  store ptr %792, ptr %765, align 8, !tbaa !58
  br label %793

793:                                              ; preds = %790, %787, %754
  %794 = load i64, ptr %76, align 8, !tbaa !57
  %795 = icmp eq i64 %794, 0
  br i1 %795, label %797, label %796

796:                                              ; preds = %793
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1036

797:                                              ; preds = %793, %736
  %798 = phi i64 [ %738, %736 ], [ 0, %793 ]
  %799 = phi i64 [ %737, %736 ], [ 0, %793 ]
  %800 = load i64, ptr %735, align 8, !tbaa !118
  %801 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %800, i64 1), !nosanitize !45
  %802 = extractvalue { i64, i1 } %801, 1, !nosanitize !45
  br i1 %802, label %803, label %804, !prof !46, !nosanitize !45

803:                                              ; preds = %797
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

804:                                              ; preds = %797
  %805 = extractvalue { i64, i1 } %801, 0, !nosanitize !45
  %806 = load ptr, ptr %724, align 8, !tbaa !100
  %807 = getelementptr inbounds nuw i8, ptr %806, i64 40
  %808 = load ptr, ptr %807, align 8, !tbaa !111
  store i64 %805, ptr %735, align 8, !tbaa !118
  %809 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %798, i64 1), !nosanitize !45
  %810 = extractvalue { i64, i1 } %809, 1, !nosanitize !45
  br i1 %810, label %811, label %812, !prof !46, !nosanitize !45

811:                                              ; preds = %804
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

812:                                              ; preds = %804
  %813 = extractvalue { i64, i1 } %809, 0, !nosanitize !45
  %814 = load ptr, ptr %732, align 8, !tbaa !40
  %815 = getelementptr inbounds nuw i8, ptr %808, i64 %800
  %816 = load i8, ptr %815, align 1, !tbaa !8
  store i64 %813, ptr %76, align 8, !tbaa !57
  %817 = getelementptr inbounds nuw i8, ptr %814, i64 %798
  store i8 %816, ptr %817, align 1, !tbaa !8
  %818 = icmp eq i8 %816, 0
  br i1 %818, label %819, label %736, !llvm.loop !122

819:                                              ; preds = %812
  %820 = load ptr, ptr %724, align 8, !tbaa !100
  %821 = getelementptr inbounds nuw i8, ptr %820, i64 68
  %822 = load i32, ptr %821, align 4, !tbaa !114
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %833, label %824

824:                                              ; preds = %819
  %825 = load i64, ptr %76, align 8, !tbaa !57
  %826 = icmp ugt i64 %825, %799
  br i1 %826, label %827, label %833

827:                                              ; preds = %824
  %828 = sub nuw i64 %825, %799
  %829 = load ptr, ptr %732, align 8, !tbaa !40
  %830 = getelementptr inbounds nuw i8, ptr %829, i64 %799
  %831 = load i64, ptr %733, align 8, !tbaa !59
  %832 = tail call i64 @crc32_z(i64 noundef %831, ptr noundef %830, i64 noundef %828) #10
  store i64 %832, ptr %733, align 8, !tbaa !59
  br label %833

833:                                              ; preds = %827, %824, %819
  store i64 0, ptr %735, align 8, !tbaa !118
  br label %834

834:                                              ; preds = %833, %723
  store i32 91, ptr %21, align 8, !tbaa !29
  br label %835

835:                                              ; preds = %834, %513
  %836 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %837 = load ptr, ptr %836, align 8, !tbaa !100
  %838 = getelementptr inbounds nuw i8, ptr %837, i64 56
  %839 = load ptr, ptr %838, align 8, !tbaa !109
  %840 = icmp eq ptr %839, null
  br i1 %840, label %945, label %841

841:                                              ; preds = %835
  %842 = load i64, ptr %76, align 8, !tbaa !57
  %843 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %844 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %845 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %846 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %847 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %848

848:                                              ; preds = %924, %841
  %849 = phi i64 [ %842, %841 ], [ %911, %924 ]
  %850 = load i64, ptr %76, align 8, !tbaa !57
  %851 = load i64, ptr %843, align 8, !tbaa !41
  %852 = icmp eq i64 %850, %851
  br i1 %852, label %853, label %909

853:                                              ; preds = %848
  %854 = load ptr, ptr %836, align 8, !tbaa !100
  %855 = getelementptr inbounds nuw i8, ptr %854, i64 68
  %856 = load i32, ptr %855, align 4, !tbaa !114
  %857 = icmp ne i32 %856, 0
  %858 = icmp ugt i64 %850, %849
  %859 = select i1 %857, i1 %858, i1 false
  br i1 %859, label %860, label %866

860:                                              ; preds = %853
  %861 = sub nuw i64 %850, %849
  %862 = load ptr, ptr %844, align 8, !tbaa !40
  %863 = getelementptr inbounds nuw i8, ptr %862, i64 %849
  %864 = load i64, ptr %845, align 8, !tbaa !59
  %865 = tail call i64 @crc32_z(i64 noundef %864, ptr noundef %863, i64 noundef %861) #10
  store i64 %865, ptr %845, align 8, !tbaa !59
  br label %866

866:                                              ; preds = %860, %853
  %867 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %867) #10
  %868 = getelementptr inbounds nuw i8, ptr %867, i64 40
  %869 = load i64, ptr %868, align 8, !tbaa !57
  %870 = load i32, ptr %69, align 8, !tbaa !107
  %871 = zext i32 %870 to i64
  %872 = tail call i64 @llvm.umin.i64(i64 %869, i64 %871)
  %873 = trunc nuw i64 %872 to i32
  %874 = icmp eq i64 %872, 0
  br i1 %874, label %905, label %875

875:                                              ; preds = %866
  %876 = load ptr, ptr %51, align 8, !tbaa !106
  %877 = getelementptr inbounds nuw i8, ptr %867, i64 32
  %878 = load ptr, ptr %877, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %876, ptr align 1 %878, i64 %872, i1 false)
  %879 = load ptr, ptr %51, align 8, !tbaa !106
  %880 = getelementptr inbounds nuw i8, ptr %879, i64 %872
  store ptr %880, ptr %51, align 8, !tbaa !106
  %881 = load ptr, ptr %877, align 8, !tbaa !58
  %882 = getelementptr inbounds nuw i8, ptr %881, i64 %872
  store ptr %882, ptr %877, align 8, !tbaa !58
  %883 = load i64, ptr %846, align 8, !tbaa !108
  %884 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %883, i64 %872), !nosanitize !45
  %885 = extractvalue { i64, i1 } %884, 1, !nosanitize !45
  br i1 %885, label %886, label %887, !prof !46, !nosanitize !45

886:                                              ; preds = %875
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

887:                                              ; preds = %875
  %888 = extractvalue { i64, i1 } %884, 0, !nosanitize !45
  store i64 %888, ptr %846, align 8, !tbaa !108
  %889 = load i32, ptr %69, align 8, !tbaa !107
  %890 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %889, i32 %873), !nosanitize !45
  %891 = extractvalue { i32, i1 } %890, 1, !nosanitize !45
  br i1 %891, label %892, label %893, !prof !46, !nosanitize !45

892:                                              ; preds = %887
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

893:                                              ; preds = %887
  %894 = extractvalue { i32, i1 } %890, 0, !nosanitize !45
  store i32 %894, ptr %69, align 8, !tbaa !107
  %895 = load i64, ptr %868, align 8, !tbaa !57
  %896 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %895, i64 %872), !nosanitize !45
  %897 = extractvalue { i64, i1 } %896, 1, !nosanitize !45
  br i1 %897, label %898, label %899, !prof !46, !nosanitize !45

898:                                              ; preds = %893
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

899:                                              ; preds = %893
  %900 = extractvalue { i64, i1 } %896, 0, !nosanitize !45
  store i64 %900, ptr %868, align 8, !tbaa !57
  %901 = icmp eq i64 %900, 0
  br i1 %901, label %902, label %905

902:                                              ; preds = %899
  %903 = getelementptr inbounds nuw i8, ptr %867, i64 16
  %904 = load ptr, ptr %903, align 8, !tbaa !40
  store ptr %904, ptr %877, align 8, !tbaa !58
  br label %905

905:                                              ; preds = %902, %899, %866
  %906 = load i64, ptr %76, align 8, !tbaa !57
  %907 = icmp eq i64 %906, 0
  br i1 %907, label %909, label %908

908:                                              ; preds = %905
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1036

909:                                              ; preds = %905, %848
  %910 = phi i64 [ %850, %848 ], [ 0, %905 ]
  %911 = phi i64 [ %849, %848 ], [ 0, %905 ]
  %912 = load i64, ptr %847, align 8, !tbaa !118
  %913 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %912, i64 1), !nosanitize !45
  %914 = extractvalue { i64, i1 } %913, 1, !nosanitize !45
  br i1 %914, label %915, label %916, !prof !46, !nosanitize !45

915:                                              ; preds = %909
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

916:                                              ; preds = %909
  %917 = extractvalue { i64, i1 } %913, 0, !nosanitize !45
  %918 = load ptr, ptr %836, align 8, !tbaa !100
  %919 = getelementptr inbounds nuw i8, ptr %918, i64 56
  %920 = load ptr, ptr %919, align 8, !tbaa !109
  store i64 %917, ptr %847, align 8, !tbaa !118
  %921 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %910, i64 1), !nosanitize !45
  %922 = extractvalue { i64, i1 } %921, 1, !nosanitize !45
  br i1 %922, label %923, label %924, !prof !46, !nosanitize !45

923:                                              ; preds = %916
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

924:                                              ; preds = %916
  %925 = extractvalue { i64, i1 } %921, 0, !nosanitize !45
  %926 = load ptr, ptr %844, align 8, !tbaa !40
  %927 = getelementptr inbounds nuw i8, ptr %920, i64 %912
  %928 = load i8, ptr %927, align 1, !tbaa !8
  store i64 %925, ptr %76, align 8, !tbaa !57
  %929 = getelementptr inbounds nuw i8, ptr %926, i64 %910
  store i8 %928, ptr %929, align 1, !tbaa !8
  %930 = icmp eq i8 %928, 0
  br i1 %930, label %931, label %848, !llvm.loop !123

931:                                              ; preds = %924
  %932 = load ptr, ptr %836, align 8, !tbaa !100
  %933 = getelementptr inbounds nuw i8, ptr %932, i64 68
  %934 = load i32, ptr %933, align 4, !tbaa !114
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %945, label %936

936:                                              ; preds = %931
  %937 = load i64, ptr %76, align 8, !tbaa !57
  %938 = icmp ugt i64 %937, %911
  br i1 %938, label %939, label %945

939:                                              ; preds = %936
  %940 = sub nuw i64 %937, %911
  %941 = load ptr, ptr %844, align 8, !tbaa !40
  %942 = getelementptr inbounds nuw i8, ptr %941, i64 %911
  %943 = load i64, ptr %845, align 8, !tbaa !59
  %944 = tail call i64 @crc32_z(i64 noundef %943, ptr noundef %942, i64 noundef %940) #10
  store i64 %944, ptr %845, align 8, !tbaa !59
  br label %945

945:                                              ; preds = %939, %936, %931, %835
  store i32 103, ptr %21, align 8, !tbaa !29
  br label %946

946:                                              ; preds = %945, %513
  %947 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %948 = load ptr, ptr %947, align 8, !tbaa !100
  %949 = getelementptr inbounds nuw i8, ptr %948, i64 68
  %950 = load i32, ptr %949, align 4, !tbaa !114
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %987, label %952

952:                                              ; preds = %946
  %953 = load i64, ptr %76, align 8, !tbaa !57
  %954 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %953, i64 2), !nosanitize !45
  %955 = extractvalue { i64, i1 } %954, 1, !nosanitize !45
  br i1 %955, label %956, label %957, !prof !46, !nosanitize !45

956:                                              ; preds = %952
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

957:                                              ; preds = %952
  %958 = extractvalue { i64, i1 } %954, 0, !nosanitize !45
  %959 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %960 = load i64, ptr %959, align 8, !tbaa !41
  %961 = icmp ugt i64 %958, %960
  br i1 %961, label %962, label %966

962:                                              ; preds = %957
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %963 = load i64, ptr %76, align 8, !tbaa !57
  %964 = icmp eq i64 %963, 0
  br i1 %964, label %966, label %965

965:                                              ; preds = %962
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1036

966:                                              ; preds = %962, %957
  %967 = phi i64 [ 0, %962 ], [ %953, %957 ]
  %968 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %969 = add nuw i64 %967, 1
  %970 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %971 = load ptr, ptr %970, align 8, !tbaa !40
  %972 = load i64, ptr %968, align 8, !tbaa !59
  %973 = trunc i64 %972 to i8
  store i64 %969, ptr %76, align 8, !tbaa !57
  %974 = getelementptr inbounds nuw i8, ptr %971, i64 %967
  store i8 %973, ptr %974, align 1, !tbaa !8
  %975 = load i64, ptr %76, align 8, !tbaa !57
  %976 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %975, i64 1), !nosanitize !45
  %977 = extractvalue { i64, i1 } %976, 1, !nosanitize !45
  br i1 %977, label %978, label %979, !prof !46, !nosanitize !45

978:                                              ; preds = %966
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

979:                                              ; preds = %966
  %980 = extractvalue { i64, i1 } %976, 0, !nosanitize !45
  %981 = load ptr, ptr %970, align 8, !tbaa !40
  %982 = load i64, ptr %968, align 8, !tbaa !59
  %983 = lshr i64 %982, 8
  %984 = trunc i64 %983 to i8
  store i64 %980, ptr %76, align 8, !tbaa !57
  %985 = getelementptr inbounds nuw i8, ptr %981, i64 %975
  store i8 %984, ptr %985, align 1, !tbaa !8
  %986 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  store i64 %986, ptr %968, align 8, !tbaa !59
  br label %987

987:                                              ; preds = %979, %946
  store i32 113, ptr %21, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %988 = load i64, ptr %76, align 8, !tbaa !57
  %989 = icmp eq i64 %988, 0
  br i1 %989, label %991, label %990

990:                                              ; preds = %987
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1036

991:                                              ; preds = %987, %513, %152
  %992 = load i32, ptr %55, align 8, !tbaa !81
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %994, label %1001

994:                                              ; preds = %991, %142
  %995 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %996 = load i32, ptr %995, align 4, !tbaa !75
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %998, label %1001

998:                                              ; preds = %994
  %999 = load i32, ptr %21, align 8, !tbaa !29
  %1000 = icmp eq i32 %999, 666
  br i1 %1000, label %1036, label %1001

1001:                                             ; preds = %998, %994, %991
  %1002 = load i32, ptr %30, align 4, !tbaa !48
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1004, label %1006

1004:                                             ; preds = %1001
  %1005 = tail call i32 @deflate_stored(ptr noundef nonnull %15, i32 noundef 5)
  br label %1018

1006:                                             ; preds = %1001
  %1007 = load i32, ptr %31, align 8, !tbaa !49
  switch i32 %1007, label %1012 [
    i32 2, label %1008
    i32 3, label %1010
  ]

1008:                                             ; preds = %1006
  %1009 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %15, i32 noundef 5)
  br label %1018

1010:                                             ; preds = %1006
  %1011 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %15, i32 noundef 5)
  br label %1018

1012:                                             ; preds = %1006
  %1013 = sext i32 %1002 to i64
  %1014 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %1013
  %1015 = getelementptr inbounds nuw i8, ptr %1014, i64 8
  %1016 = load ptr, ptr %1015, align 8, !tbaa !105
  %1017 = tail call i32 %1016(ptr noundef nonnull %15, i32 noundef 5) #10, !inline_history !124
  br label %1018

1018:                                             ; preds = %1012, %1010, %1008, %1004
  %1019 = phi i32 [ %1005, %1004 ], [ %1009, %1008 ], [ %1011, %1010 ], [ %1017, %1012 ]
  %1020 = and i32 %1019, -2
  %1021 = icmp eq i32 %1020, 2
  br i1 %1021, label %1022, label %1023

1022:                                             ; preds = %1018
  store i32 666, ptr %21, align 8, !tbaa !29
  br label %1023

1023:                                             ; preds = %1022, %1018
  %1024 = and i32 %1019, -3
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %1026, label %1030

1026:                                             ; preds = %1023
  %1027 = load i32, ptr %69, align 8, !tbaa !107
  %1028 = icmp eq i32 %1027, 0
  br i1 %1028, label %1029, label %1036

1029:                                             ; preds = %1026
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1036

1030:                                             ; preds = %1023
  %1031 = icmp eq i32 %1019, 1
  br i1 %1031, label %1032, label %1036

1032:                                             ; preds = %1030
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1033 = load i32, ptr %69, align 8, !tbaa !107
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1035, label %1036

1035:                                             ; preds = %1032
  store i32 -1, ptr %46, align 4, !tbaa !60
  br label %1036

1036:                                             ; preds = %1035, %1032, %1030, %1029, %1026, %998, %990, %965, %908, %796, %685, %358, %254, %145, %136, %123, %72
  %1037 = load i32, ptr %55, align 8, !tbaa !81
  %1038 = icmp eq i32 %1037, 0
  br i1 %1038, label %1039, label %1102

1039:                                             ; preds = %1036
  %1040 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %1041 = load i32, ptr %1040, align 4, !tbaa !73
  %1042 = zext i32 %1041 to i64
  %1043 = getelementptr inbounds nuw i8, ptr %15, i64 152
  %1044 = load i64, ptr %1043, align 8, !tbaa !74
  %1045 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1042, i64 %1044), !nosanitize !45
  %1046 = extractvalue { i64, i1 } %1045, 1, !nosanitize !45
  br i1 %1046, label %1047, label %1048, !prof !46, !nosanitize !45

1047:                                             ; preds = %1039
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !45
  unreachable, !nosanitize !45

1048:                                             ; preds = %1039
  %1049 = extractvalue { i64, i1 } %1045, 0, !nosanitize !45
  %1050 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %1051 = load i32, ptr %1050, align 4, !tbaa !75
  %1052 = zext i32 %1051 to i64
  %1053 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1049, i64 %1052), !nosanitize !45
  %1054 = extractvalue { i64, i1 } %1053, 1, !nosanitize !45
  br i1 %1054, label %1055, label %1056, !prof !46, !nosanitize !45

1055:                                             ; preds = %1048
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !45
  unreachable, !nosanitize !45

1056:                                             ; preds = %1048
  %1057 = extractvalue { i64, i1 } %1053, 0, !nosanitize !45
  %1058 = icmp eq i64 %1057, 0
  br i1 %1058, label %1059, label %1102

1059:                                             ; preds = %1056, %45, %34
  %1060 = load i32, ptr %30, align 4, !tbaa !48
  %1061 = icmp eq i32 %1060, %25
  br i1 %1061, label %1101, label %1062

1062:                                             ; preds = %1059
  %1063 = icmp eq i32 %1060, 0
  br i1 %1063, label %1064, label %1083

1064:                                             ; preds = %1062
  %1065 = getelementptr inbounds nuw i8, ptr %15, i64 5928
  %1066 = load i32, ptr %1065, align 8, !tbaa !125
  switch i32 %1066, label %1068 [
    i32 0, label %1083
    i32 1, label %1067
  ]

1067:                                             ; preds = %1064
  tail call fastcc void @slide_hash(ptr noundef nonnull %15)
  br label %1082

1068:                                             ; preds = %1064
  %1069 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %1070 = load i32, ptr %1069, align 4, !tbaa !36
  %1071 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1070, i32 1), !nosanitize !45
  %1072 = extractvalue { i32, i1 } %1071, 1, !nosanitize !45
  br i1 %1072, label %1073, label %1074, !prof !46, !nosanitize !45

1073:                                             ; preds = %1068
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

1074:                                             ; preds = %1068
  %1075 = extractvalue { i32, i1 } %1071, 0, !nosanitize !45
  %1076 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %1077 = load ptr, ptr %1076, align 8, !tbaa !37
  %1078 = zext i32 %1075 to i64
  %1079 = getelementptr inbounds nuw [2 x i8], ptr %1077, i64 %1078
  store i16 0, ptr %1079, align 2, !tbaa !62
  %1080 = shl nuw nsw i64 %1078, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1077, i8 0, i64 %1080, i1 false)
  %1081 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  store i32 0, ptr %1081, align 8, !tbaa !63
  br label %1082

1082:                                             ; preds = %1074, %1067
  store i32 0, ptr %1065, align 8, !tbaa !125
  br label %1083

1083:                                             ; preds = %1082, %1064, %1062
  store i32 %25, ptr %30, align 4, !tbaa !48
  %1084 = zext nneg i32 %25 to i64
  %1085 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %1084
  %1086 = getelementptr inbounds nuw i8, ptr %1085, i64 2
  %1087 = load i16, ptr %1086, align 2, !tbaa !64
  %1088 = zext i16 %1087 to i32
  %1089 = getelementptr inbounds nuw i8, ptr %15, i64 192
  store i32 %1088, ptr %1089, align 8, !tbaa !66
  %1090 = load i16, ptr %1085, align 16, !tbaa !67
  %1091 = zext i16 %1090 to i32
  %1092 = getelementptr inbounds nuw i8, ptr %15, i64 204
  store i32 %1091, ptr %1092, align 4, !tbaa !68
  %1093 = getelementptr inbounds nuw i8, ptr %1085, i64 4
  %1094 = load i16, ptr %1093, align 4, !tbaa !69
  %1095 = zext i16 %1094 to i32
  %1096 = getelementptr inbounds nuw i8, ptr %15, i64 208
  store i32 %1095, ptr %1096, align 8, !tbaa !70
  %1097 = getelementptr inbounds nuw i8, ptr %1085, i64 6
  %1098 = load i16, ptr %1097, align 2, !tbaa !71
  %1099 = zext i16 %1098 to i32
  %1100 = getelementptr inbounds nuw i8, ptr %15, i64 188
  store i32 %1099, ptr %1100, align 4, !tbaa !72
  br label %1101

1101:                                             ; preds = %1083, %1059
  store i32 %2, ptr %31, align 8, !tbaa !49
  br label %1102

1102:                                             ; preds = %1101, %1056, %1036, %65, %49, %23, %20, %17, %13, %9, %5, %3
  %1103 = phi i32 [ -5, %1056 ], [ -2, %13 ], [ 0, %1101 ], [ -2, %23 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %65 ], [ -2, %49 ], [ -5, %1036 ]
  ret i32 %1103
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 2) i32 @deflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1201, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %1201, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1201, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %1201, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !20
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %1201

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !29
  switch i32 %21, label %1201 [
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
  br i1 %23, label %1201, label %24

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
  br label %1201

42:                                               ; preds = %35
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %44 = load i32, ptr %43, align 8, !tbaa !107
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %47, ptr %48, align 8, !tbaa !9
  br label %1201

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
  br label %120

99:                                               ; preds = %93
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1201

100:                                              ; preds = %49
  br i1 %31, label %102, label %120

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
  br i1 %108, label %109, label %101, !prof !93, !nosanitize !45

109:                                              ; preds = %102
  %110 = shl nsw i32 %51, 1
  %111 = icmp sgt i32 %51, 4
  %112 = select i1 %111, i32 9, i32 0
  %113 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %110, i32 %112), !nosanitize !45
  %114 = extractvalue { i32, i1 } %113, 0, !nosanitize !45
  %115 = icmp sle i32 %106, %114
  %116 = and i1 %37, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %109
  %118 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %118, ptr %119, align 8, !tbaa !9
  br label %1201

120:                                              ; preds = %109, %100, %97
  %121 = phi i64 [ %94, %97 ], [ 0, %100 ], [ 0, %109 ]
  %122 = phi i32 [ %98, %97 ], [ %21, %100 ], [ %21, %109 ]
  switch i32 %122, label %238 [
    i32 666, label %123
    i32 42, label %129
  ]

123:                                              ; preds = %120
  %124 = load i32, ptr %29, align 8, !tbaa !81
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %981, label %126

126:                                              ; preds = %123
  %127 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %127, ptr %128, align 8, !tbaa !9
  br label %1201

129:                                              ; preds = %120
  %130 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %131 = load i32, ptr %130, align 8, !tbaa !30
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store i32 113, ptr %20, align 8, !tbaa !29
  br label %978

134:                                              ; preds = %129
  %135 = getelementptr inbounds nuw i8, ptr %14, i64 84
  %136 = load i32, ptr %135, align 4, !tbaa !31
  %137 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %136, i32 8), !nosanitize !45
  %138 = extractvalue { i32, i1 } %137, 1, !nosanitize !45
  br i1 %138, label %139, label %140, !prof !46, !nosanitize !45

139:                                              ; preds = %134
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

140:                                              ; preds = %134
  %141 = extractvalue { i32, i1 } %137, 0, !nosanitize !45
  %142 = shl i32 %141, 12
  %143 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %144 = load i32, ptr %143, align 8, !tbaa !49
  %145 = icmp sgt i32 %144, 1
  br i1 %145, label %155, label %146

146:                                              ; preds = %140
  %147 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %148 = load i32, ptr %147, align 4, !tbaa !48
  %149 = icmp slt i32 %148, 2
  br i1 %149, label %155, label %150

150:                                              ; preds = %146
  %151 = icmp samesign ult i32 %148, 6
  br i1 %151, label %155, label %152

152:                                              ; preds = %150
  %153 = icmp eq i32 %148, 6
  %154 = select i1 %153, i32 128, i32 192
  br label %155

155:                                              ; preds = %152, %150, %146, %140
  %156 = phi i32 [ 64, %150 ], [ 0, %140 ], [ %154, %152 ], [ 0, %146 ]
  %157 = getelementptr inbounds nuw i8, ptr %14, i64 172
  %158 = or disjoint i32 %156, %142
  %159 = load i32, ptr %157, align 4, !tbaa !73
  %160 = icmp eq i32 %159, 0
  %161 = select i1 %160, i32 2048, i32 2080
  %162 = or disjoint i32 %161, %158
  %163 = urem i32 %162, 31
  %164 = or disjoint i32 %163, %162
  %165 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %121, i64 1), !nosanitize !45
  %166 = extractvalue { i64, i1 } %165, 1, !nosanitize !45
  br i1 %166, label %167, label %168, !prof !46, !nosanitize !45

167:                                              ; preds = %155
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

168:                                              ; preds = %155
  %169 = extractvalue { i64, i1 } %165, 0, !nosanitize !45
  %170 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %171 = load ptr, ptr %170, align 8, !tbaa !40
  %172 = lshr i32 %162, 8
  %173 = trunc i32 %172 to i8
  store i64 %169, ptr %52, align 8, !tbaa !57
  %174 = getelementptr inbounds nuw i8, ptr %171, i64 %121
  store i8 %173, ptr %174, align 1, !tbaa !8
  %175 = load i64, ptr %52, align 8, !tbaa !57
  %176 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %175, i64 1), !nosanitize !45
  %177 = extractvalue { i64, i1 } %176, 1, !nosanitize !45
  br i1 %177, label %178, label %179, !prof !46, !nosanitize !45

178:                                              ; preds = %168
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

179:                                              ; preds = %168
  %180 = extractvalue { i64, i1 } %176, 0, !nosanitize !45
  %181 = load ptr, ptr %170, align 8, !tbaa !40
  %182 = trunc i32 %164 to i8
  %183 = xor i8 %182, 31
  store i64 %180, ptr %52, align 8, !tbaa !57
  %184 = getelementptr inbounds nuw i8, ptr %181, i64 %175
  store i8 %183, ptr %184, align 1, !tbaa !8
  %185 = load i32, ptr %157, align 4, !tbaa !73
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %230, label %187

187:                                              ; preds = %179
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %189 = load i64, ptr %188, align 8, !tbaa !59
  %190 = lshr i64 %189, 16
  %191 = load i64, ptr %52, align 8, !tbaa !57
  %192 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %191, i64 1), !nosanitize !45
  %193 = extractvalue { i64, i1 } %192, 1, !nosanitize !45
  br i1 %193, label %194, label %195, !prof !46, !nosanitize !45

194:                                              ; preds = %187
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

195:                                              ; preds = %187
  %196 = extractvalue { i64, i1 } %192, 0, !nosanitize !45
  %197 = load ptr, ptr %170, align 8, !tbaa !40
  %198 = lshr i64 %189, 24
  %199 = trunc i64 %198 to i8
  store i64 %196, ptr %52, align 8, !tbaa !57
  %200 = getelementptr inbounds nuw i8, ptr %197, i64 %191
  store i8 %199, ptr %200, align 1, !tbaa !8
  %201 = load i64, ptr %52, align 8, !tbaa !57
  %202 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %201, i64 1), !nosanitize !45
  %203 = extractvalue { i64, i1 } %202, 1, !nosanitize !45
  br i1 %203, label %204, label %205, !prof !46, !nosanitize !45

204:                                              ; preds = %195
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

205:                                              ; preds = %195
  %206 = extractvalue { i64, i1 } %202, 0, !nosanitize !45
  %207 = load ptr, ptr %170, align 8, !tbaa !40
  %208 = trunc i64 %190 to i8
  store i64 %206, ptr %52, align 8, !tbaa !57
  %209 = getelementptr inbounds nuw i8, ptr %207, i64 %201
  store i8 %208, ptr %209, align 1, !tbaa !8
  %210 = load i64, ptr %188, align 8, !tbaa !59
  %211 = trunc i64 %210 to i8
  %212 = load i64, ptr %52, align 8, !tbaa !57
  %213 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %212, i64 1), !nosanitize !45
  %214 = extractvalue { i64, i1 } %213, 1, !nosanitize !45
  br i1 %214, label %215, label %216, !prof !46, !nosanitize !45

215:                                              ; preds = %205
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

216:                                              ; preds = %205
  %217 = extractvalue { i64, i1 } %213, 0, !nosanitize !45
  %218 = load ptr, ptr %170, align 8, !tbaa !40
  %219 = lshr i64 %210, 8
  %220 = trunc i64 %219 to i8
  store i64 %217, ptr %52, align 8, !tbaa !57
  %221 = getelementptr inbounds nuw i8, ptr %218, i64 %212
  store i8 %220, ptr %221, align 1, !tbaa !8
  %222 = load i64, ptr %52, align 8, !tbaa !57
  %223 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %222, i64 1), !nosanitize !45
  %224 = extractvalue { i64, i1 } %223, 1, !nosanitize !45
  br i1 %224, label %225, label %226, !prof !46, !nosanitize !45

225:                                              ; preds = %216
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

226:                                              ; preds = %216
  %227 = extractvalue { i64, i1 } %223, 0, !nosanitize !45
  %228 = load ptr, ptr %170, align 8, !tbaa !40
  store i64 %227, ptr %52, align 8, !tbaa !57
  %229 = getelementptr inbounds nuw i8, ptr %228, i64 %222
  store i8 %211, ptr %229, align 1, !tbaa !8
  br label %230

230:                                              ; preds = %226, %179
  %231 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %231, ptr %232, align 8, !tbaa !59
  store i32 113, ptr %20, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %233 = load i64, ptr %52, align 8, !tbaa !57
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %230
  %236 = load i32, ptr %20, align 8, !tbaa !29
  br label %238

237:                                              ; preds = %230
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1201

238:                                              ; preds = %235, %120
  %239 = phi i32 [ %236, %235 ], [ %122, %120 ]
  %240 = icmp eq i32 %239, 57
  br i1 %240, label %241, label %500

241:                                              ; preds = %238
  %242 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  %243 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %242, ptr %243, align 8, !tbaa !59
  %244 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %245 = load i64, ptr %52, align 8, !tbaa !57
  %246 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %245, i64 1), !nosanitize !45
  %247 = extractvalue { i64, i1 } %246, 1, !nosanitize !45
  br i1 %247, label %248, label %249, !prof !46, !nosanitize !45

248:                                              ; preds = %241
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

249:                                              ; preds = %241
  %250 = extractvalue { i64, i1 } %246, 0, !nosanitize !45
  %251 = load ptr, ptr %244, align 8, !tbaa !40
  store i64 %250, ptr %52, align 8, !tbaa !57
  %252 = getelementptr inbounds nuw i8, ptr %251, i64 %245
  store i8 31, ptr %252, align 1, !tbaa !8
  %253 = load i64, ptr %52, align 8, !tbaa !57
  %254 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %253, i64 1), !nosanitize !45
  %255 = extractvalue { i64, i1 } %254, 1, !nosanitize !45
  br i1 %255, label %256, label %257, !prof !46, !nosanitize !45

256:                                              ; preds = %249
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

257:                                              ; preds = %249
  %258 = extractvalue { i64, i1 } %254, 0, !nosanitize !45
  %259 = load ptr, ptr %244, align 8, !tbaa !40
  store i64 %258, ptr %52, align 8, !tbaa !57
  %260 = getelementptr inbounds nuw i8, ptr %259, i64 %253
  store i8 -117, ptr %260, align 1, !tbaa !8
  %261 = load i64, ptr %52, align 8, !tbaa !57
  %262 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %261, i64 1), !nosanitize !45
  %263 = extractvalue { i64, i1 } %262, 1, !nosanitize !45
  br i1 %263, label %264, label %265, !prof !46, !nosanitize !45

264:                                              ; preds = %257
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

265:                                              ; preds = %257
  %266 = extractvalue { i64, i1 } %262, 0, !nosanitize !45
  %267 = load ptr, ptr %244, align 8, !tbaa !40
  store i64 %266, ptr %52, align 8, !tbaa !57
  %268 = getelementptr inbounds nuw i8, ptr %267, i64 %261
  store i8 8, ptr %268, align 1, !tbaa !8
  %269 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %270 = load ptr, ptr %269, align 8, !tbaa !100
  %271 = icmp eq ptr %270, null
  %272 = load i64, ptr %52, align 8, !tbaa !57
  %273 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %272, i64 1), !nosanitize !45
  %274 = extractvalue { i64, i1 } %273, 1, !nosanitize !45
  br i1 %271, label %275, label %344

275:                                              ; preds = %265
  br i1 %274, label %276, label %277, !prof !46, !nosanitize !45

276:                                              ; preds = %275
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

277:                                              ; preds = %275
  %278 = extractvalue { i64, i1 } %273, 0, !nosanitize !45
  %279 = load ptr, ptr %244, align 8, !tbaa !40
  store i64 %278, ptr %52, align 8, !tbaa !57
  %280 = getelementptr inbounds nuw i8, ptr %279, i64 %272
  store i8 0, ptr %280, align 1, !tbaa !8
  %281 = load i64, ptr %52, align 8, !tbaa !57
  %282 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %281, i64 1), !nosanitize !45
  %283 = extractvalue { i64, i1 } %282, 1, !nosanitize !45
  br i1 %283, label %284, label %285, !prof !46, !nosanitize !45

284:                                              ; preds = %277
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

285:                                              ; preds = %277
  %286 = extractvalue { i64, i1 } %282, 0, !nosanitize !45
  %287 = load ptr, ptr %244, align 8, !tbaa !40
  store i64 %286, ptr %52, align 8, !tbaa !57
  %288 = getelementptr inbounds nuw i8, ptr %287, i64 %281
  store i8 0, ptr %288, align 1, !tbaa !8
  %289 = load i64, ptr %52, align 8, !tbaa !57
  %290 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %289, i64 1), !nosanitize !45
  %291 = extractvalue { i64, i1 } %290, 1, !nosanitize !45
  br i1 %291, label %292, label %293, !prof !46, !nosanitize !45

292:                                              ; preds = %285
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

293:                                              ; preds = %285
  %294 = extractvalue { i64, i1 } %290, 0, !nosanitize !45
  %295 = load ptr, ptr %244, align 8, !tbaa !40
  store i64 %294, ptr %52, align 8, !tbaa !57
  %296 = getelementptr inbounds nuw i8, ptr %295, i64 %289
  store i8 0, ptr %296, align 1, !tbaa !8
  %297 = load i64, ptr %52, align 8, !tbaa !57
  %298 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %297, i64 1), !nosanitize !45
  %299 = extractvalue { i64, i1 } %298, 1, !nosanitize !45
  br i1 %299, label %300, label %301, !prof !46, !nosanitize !45

300:                                              ; preds = %293
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

301:                                              ; preds = %293
  %302 = extractvalue { i64, i1 } %298, 0, !nosanitize !45
  %303 = load ptr, ptr %244, align 8, !tbaa !40
  store i64 %302, ptr %52, align 8, !tbaa !57
  %304 = getelementptr inbounds nuw i8, ptr %303, i64 %297
  store i8 0, ptr %304, align 1, !tbaa !8
  %305 = load i64, ptr %52, align 8, !tbaa !57
  %306 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %305, i64 1), !nosanitize !45
  %307 = extractvalue { i64, i1 } %306, 1, !nosanitize !45
  br i1 %307, label %308, label %309, !prof !46, !nosanitize !45

308:                                              ; preds = %301
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

309:                                              ; preds = %301
  %310 = extractvalue { i64, i1 } %306, 0, !nosanitize !45
  %311 = load ptr, ptr %244, align 8, !tbaa !40
  store i64 %310, ptr %52, align 8, !tbaa !57
  %312 = getelementptr inbounds nuw i8, ptr %311, i64 %305
  store i8 0, ptr %312, align 1, !tbaa !8
  %313 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %314 = load i32, ptr %313, align 4, !tbaa !48
  %315 = icmp eq i32 %314, 9
  br i1 %315, label %323, label %316

316:                                              ; preds = %309
  %317 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %318 = load i32, ptr %317, align 8, !tbaa !49
  %319 = icmp sgt i32 %318, 1
  %320 = icmp slt i32 %314, 2
  %321 = or i1 %320, %319
  %322 = select i1 %321, i8 4, i8 0
  br label %323

323:                                              ; preds = %316, %309
  %324 = phi i8 [ %322, %316 ], [ 2, %309 ]
  %325 = load i64, ptr %52, align 8, !tbaa !57
  %326 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %325, i64 1), !nosanitize !45
  %327 = extractvalue { i64, i1 } %326, 1, !nosanitize !45
  br i1 %327, label %328, label %329, !prof !46, !nosanitize !45

328:                                              ; preds = %323
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

329:                                              ; preds = %323
  %330 = extractvalue { i64, i1 } %326, 0, !nosanitize !45
  %331 = load ptr, ptr %244, align 8, !tbaa !40
  store i64 %330, ptr %52, align 8, !tbaa !57
  %332 = getelementptr inbounds nuw i8, ptr %331, i64 %325
  store i8 %324, ptr %332, align 1, !tbaa !8
  %333 = load i64, ptr %52, align 8, !tbaa !57
  %334 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %333, i64 1), !nosanitize !45
  %335 = extractvalue { i64, i1 } %334, 1, !nosanitize !45
  br i1 %335, label %336, label %337, !prof !46, !nosanitize !45

336:                                              ; preds = %329
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

337:                                              ; preds = %329
  %338 = extractvalue { i64, i1 } %334, 0, !nosanitize !45
  %339 = load ptr, ptr %244, align 8, !tbaa !40
  store i64 %338, ptr %52, align 8, !tbaa !57
  %340 = getelementptr inbounds nuw i8, ptr %339, i64 %333
  store i8 3, ptr %340, align 1, !tbaa !8
  store i32 113, ptr %20, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %341 = load i64, ptr %52, align 8, !tbaa !57
  %342 = icmp eq i64 %341, 0
  br i1 %342, label %498, label %343

343:                                              ; preds = %337
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1201

344:                                              ; preds = %265
  br i1 %274, label %345, label %346, !prof !46, !nosanitize !45

345:                                              ; preds = %344
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

346:                                              ; preds = %344
  %347 = extractvalue { i64, i1 } %273, 0, !nosanitize !45
  %348 = load ptr, ptr %244, align 8, !tbaa !40
  %349 = getelementptr inbounds nuw i8, ptr %270, i64 56
  %350 = load ptr, ptr %349, align 8, !tbaa !109
  %351 = icmp eq ptr %350, null
  %352 = getelementptr inbounds nuw i8, ptr %270, i64 40
  %353 = load ptr, ptr %352, align 8, !tbaa !111
  %354 = icmp eq ptr %353, null
  %355 = getelementptr inbounds nuw i8, ptr %270, i64 24
  %356 = load ptr, ptr %355, align 8, !tbaa !112
  %357 = icmp eq ptr %356, null
  %358 = load i32, ptr %270, align 8, !tbaa !113
  %359 = icmp ne i32 %358, 0
  %360 = getelementptr inbounds nuw i8, ptr %270, i64 68
  %361 = load i32, ptr %360, align 4, !tbaa !114
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
  store i64 %347, ptr %52, align 8, !tbaa !57
  %372 = getelementptr inbounds nuw i8, ptr %348, i64 %272
  store i8 %371, ptr %372, align 1, !tbaa !8
  %373 = load i64, ptr %52, align 8, !tbaa !57
  %374 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %373, i64 1), !nosanitize !45
  %375 = extractvalue { i64, i1 } %374, 1, !nosanitize !45
  br i1 %375, label %376, label %377, !prof !46, !nosanitize !45

376:                                              ; preds = %346
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

377:                                              ; preds = %346
  %378 = extractvalue { i64, i1 } %374, 0, !nosanitize !45
  %379 = load ptr, ptr %244, align 8, !tbaa !40
  %380 = load ptr, ptr %269, align 8, !tbaa !100
  %381 = getelementptr inbounds nuw i8, ptr %380, i64 8
  %382 = load i64, ptr %381, align 8, !tbaa !115
  %383 = trunc i64 %382 to i8
  store i64 %378, ptr %52, align 8, !tbaa !57
  %384 = getelementptr inbounds nuw i8, ptr %379, i64 %373
  store i8 %383, ptr %384, align 1, !tbaa !8
  %385 = load i64, ptr %52, align 8, !tbaa !57
  %386 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %385, i64 1), !nosanitize !45
  %387 = extractvalue { i64, i1 } %386, 1, !nosanitize !45
  br i1 %387, label %388, label %389, !prof !46, !nosanitize !45

388:                                              ; preds = %377
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

389:                                              ; preds = %377
  %390 = extractvalue { i64, i1 } %386, 0, !nosanitize !45
  %391 = load ptr, ptr %244, align 8, !tbaa !40
  %392 = load ptr, ptr %269, align 8, !tbaa !100
  %393 = getelementptr inbounds nuw i8, ptr %392, i64 8
  %394 = load i64, ptr %393, align 8, !tbaa !115
  %395 = lshr i64 %394, 8
  %396 = trunc i64 %395 to i8
  store i64 %390, ptr %52, align 8, !tbaa !57
  %397 = getelementptr inbounds nuw i8, ptr %391, i64 %385
  store i8 %396, ptr %397, align 1, !tbaa !8
  %398 = load i64, ptr %52, align 8, !tbaa !57
  %399 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %398, i64 1), !nosanitize !45
  %400 = extractvalue { i64, i1 } %399, 1, !nosanitize !45
  br i1 %400, label %401, label %402, !prof !46, !nosanitize !45

401:                                              ; preds = %389
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

402:                                              ; preds = %389
  %403 = extractvalue { i64, i1 } %399, 0, !nosanitize !45
  %404 = load ptr, ptr %244, align 8, !tbaa !40
  %405 = load ptr, ptr %269, align 8, !tbaa !100
  %406 = getelementptr inbounds nuw i8, ptr %405, i64 8
  %407 = load i64, ptr %406, align 8, !tbaa !115
  %408 = lshr i64 %407, 16
  %409 = trunc i64 %408 to i8
  store i64 %403, ptr %52, align 8, !tbaa !57
  %410 = getelementptr inbounds nuw i8, ptr %404, i64 %398
  store i8 %409, ptr %410, align 1, !tbaa !8
  %411 = load i64, ptr %52, align 8, !tbaa !57
  %412 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %411, i64 1), !nosanitize !45
  %413 = extractvalue { i64, i1 } %412, 1, !nosanitize !45
  br i1 %413, label %414, label %415, !prof !46, !nosanitize !45

414:                                              ; preds = %402
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

415:                                              ; preds = %402
  %416 = extractvalue { i64, i1 } %412, 0, !nosanitize !45
  %417 = load ptr, ptr %244, align 8, !tbaa !40
  %418 = load ptr, ptr %269, align 8, !tbaa !100
  %419 = getelementptr inbounds nuw i8, ptr %418, i64 8
  %420 = load i64, ptr %419, align 8, !tbaa !115
  %421 = lshr i64 %420, 24
  %422 = trunc i64 %421 to i8
  store i64 %416, ptr %52, align 8, !tbaa !57
  %423 = getelementptr inbounds nuw i8, ptr %417, i64 %411
  store i8 %422, ptr %423, align 1, !tbaa !8
  %424 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %425 = load i32, ptr %424, align 4, !tbaa !48
  %426 = icmp eq i32 %425, 9
  br i1 %426, label %434, label %427

427:                                              ; preds = %415
  %428 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %429 = load i32, ptr %428, align 8, !tbaa !49
  %430 = icmp sgt i32 %429, 1
  %431 = icmp slt i32 %425, 2
  %432 = or i1 %431, %430
  %433 = select i1 %432, i8 4, i8 0
  br label %434

434:                                              ; preds = %427, %415
  %435 = phi i8 [ %433, %427 ], [ 2, %415 ]
  %436 = load i64, ptr %52, align 8, !tbaa !57
  %437 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %436, i64 1), !nosanitize !45
  %438 = extractvalue { i64, i1 } %437, 1, !nosanitize !45
  br i1 %438, label %439, label %440, !prof !46, !nosanitize !45

439:                                              ; preds = %434
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

440:                                              ; preds = %434
  %441 = extractvalue { i64, i1 } %437, 0, !nosanitize !45
  %442 = load ptr, ptr %244, align 8, !tbaa !40
  store i64 %441, ptr %52, align 8, !tbaa !57
  %443 = getelementptr inbounds nuw i8, ptr %442, i64 %436
  store i8 %435, ptr %443, align 1, !tbaa !8
  %444 = load i64, ptr %52, align 8, !tbaa !57
  %445 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %444, i64 1), !nosanitize !45
  %446 = extractvalue { i64, i1 } %445, 1, !nosanitize !45
  br i1 %446, label %447, label %448, !prof !46, !nosanitize !45

447:                                              ; preds = %440
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

448:                                              ; preds = %440
  %449 = extractvalue { i64, i1 } %445, 0, !nosanitize !45
  %450 = load ptr, ptr %244, align 8, !tbaa !40
  %451 = load ptr, ptr %269, align 8, !tbaa !100
  %452 = getelementptr inbounds nuw i8, ptr %451, i64 20
  %453 = load i32, ptr %452, align 4, !tbaa !116
  %454 = trunc i32 %453 to i8
  store i64 %449, ptr %52, align 8, !tbaa !57
  %455 = getelementptr inbounds nuw i8, ptr %450, i64 %444
  store i8 %454, ptr %455, align 1, !tbaa !8
  %456 = load ptr, ptr %269, align 8, !tbaa !100
  %457 = getelementptr inbounds nuw i8, ptr %456, i64 24
  %458 = load ptr, ptr %457, align 8, !tbaa !112
  %459 = icmp eq ptr %458, null
  br i1 %459, label %486, label %460

460:                                              ; preds = %448
  %461 = load i64, ptr %52, align 8, !tbaa !57
  %462 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %461, i64 1), !nosanitize !45
  %463 = extractvalue { i64, i1 } %462, 1, !nosanitize !45
  br i1 %463, label %464, label %465, !prof !46, !nosanitize !45

464:                                              ; preds = %460
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

465:                                              ; preds = %460
  %466 = extractvalue { i64, i1 } %462, 0, !nosanitize !45
  %467 = load ptr, ptr %244, align 8, !tbaa !40
  %468 = getelementptr inbounds nuw i8, ptr %456, i64 32
  %469 = load i32, ptr %468, align 8, !tbaa !117
  %470 = trunc i32 %469 to i8
  store i64 %466, ptr %52, align 8, !tbaa !57
  %471 = getelementptr inbounds nuw i8, ptr %467, i64 %461
  store i8 %470, ptr %471, align 1, !tbaa !8
  %472 = load i64, ptr %52, align 8, !tbaa !57
  %473 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %472, i64 1), !nosanitize !45
  %474 = extractvalue { i64, i1 } %473, 1, !nosanitize !45
  br i1 %474, label %475, label %476, !prof !46, !nosanitize !45

475:                                              ; preds = %465
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

476:                                              ; preds = %465
  %477 = extractvalue { i64, i1 } %473, 0, !nosanitize !45
  %478 = load ptr, ptr %244, align 8, !tbaa !40
  %479 = load ptr, ptr %269, align 8, !tbaa !100
  %480 = getelementptr inbounds nuw i8, ptr %479, i64 32
  %481 = load i32, ptr %480, align 8, !tbaa !117
  %482 = lshr i32 %481, 8
  %483 = trunc i32 %482 to i8
  store i64 %477, ptr %52, align 8, !tbaa !57
  %484 = getelementptr inbounds nuw i8, ptr %478, i64 %472
  store i8 %483, ptr %484, align 1, !tbaa !8
  %485 = load ptr, ptr %269, align 8, !tbaa !100
  br label %486

486:                                              ; preds = %476, %448
  %487 = phi ptr [ %485, %476 ], [ %456, %448 ]
  %488 = getelementptr inbounds nuw i8, ptr %487, i64 68
  %489 = load i32, ptr %488, align 4, !tbaa !114
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %496, label %491

491:                                              ; preds = %486
  %492 = load i64, ptr %243, align 8, !tbaa !59
  %493 = load ptr, ptr %244, align 8, !tbaa !40
  %494 = load i64, ptr %52, align 8, !tbaa !57
  %495 = tail call i64 @crc32_z(i64 noundef %492, ptr noundef %493, i64 noundef %494) #10
  store i64 %495, ptr %243, align 8, !tbaa !59
  br label %496

496:                                              ; preds = %491, %486
  %497 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i64 0, ptr %497, align 8, !tbaa !118
  store i32 69, ptr %20, align 8, !tbaa !29
  br label %502

498:                                              ; preds = %337
  %499 = load i32, ptr %20, align 8, !tbaa !29
  br label %500

500:                                              ; preds = %498, %238
  %501 = phi i32 [ %499, %498 ], [ %239, %238 ]
  switch i32 %501, label %978 [
    i32 69, label %502
    i32 73, label %710
    i32 91, label %822
    i32 103, label %933
  ]

502:                                              ; preds = %500, %496
  %503 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %504 = load ptr, ptr %503, align 8, !tbaa !100
  %505 = getelementptr inbounds nuw i8, ptr %504, i64 24
  %506 = load ptr, ptr %505, align 8, !tbaa !112
  %507 = icmp eq ptr %506, null
  br i1 %507, label %709, label %508

508:                                              ; preds = %502
  %509 = getelementptr inbounds nuw i8, ptr %504, i64 32
  %510 = load i32, ptr %509, align 8, !tbaa !117
  %511 = and i32 %510, 65535
  %512 = zext nneg i32 %511 to i64
  %513 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %514 = load i64, ptr %513, align 8, !tbaa !118
  %515 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %512, i64 %514), !nosanitize !45
  %516 = extractvalue { i64, i1 } %515, 1, !nosanitize !45
  br i1 %516, label %517, label %518, !prof !46, !nosanitize !45

517:                                              ; preds = %508
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

518:                                              ; preds = %508
  %519 = load i64, ptr %52, align 8, !tbaa !57
  %520 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %521 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %522 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %523 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %524 = extractvalue { i64, i1 } %515, 0
  %525 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %519, i64 %524), !nosanitize !45
  %526 = extractvalue { i64, i1 } %525, 1, !nosanitize !45
  br i1 %526, label %599, label %527, !prof !46, !nosanitize !45

527:                                              ; preds = %518
  %528 = extractvalue { i64, i1 } %525, 0, !nosanitize !45
  %529 = load i64, ptr %520, align 8, !tbaa !41
  %530 = icmp ugt i64 %528, %529
  br i1 %530, label %531, label %682

531:                                              ; preds = %527
  %532 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %529, i64 %519), !nosanitize !45
  %533 = extractvalue { i64, i1 } %532, 0, !nosanitize !45
  %534 = extractvalue { i64, i1 } %532, 1, !nosanitize !45
  br i1 %534, label %605, label %535, !prof !46, !nosanitize !45

535:                                              ; preds = %531
  %536 = load ptr, ptr %521, align 8, !tbaa !40
  %537 = getelementptr inbounds nuw i8, ptr %536, i64 %519
  %538 = getelementptr inbounds nuw i8, ptr %506, i64 %514
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %537, ptr nonnull align 1 %538, i64 %533, i1 false)
  %539 = load i64, ptr %520, align 8, !tbaa !41
  store i64 %539, ptr %52, align 8, !tbaa !57
  %540 = load ptr, ptr %503, align 8, !tbaa !100
  %541 = getelementptr inbounds nuw i8, ptr %540, i64 68
  %542 = load i32, ptr %541, align 4, !tbaa !114
  %543 = icmp ne i32 %542, 0
  %544 = icmp ugt i64 %539, %519
  %545 = select i1 %543, i1 %544, i1 false
  br i1 %545, label %546, label %552

546:                                              ; preds = %535
  %547 = sub nuw i64 %539, %519
  %548 = load ptr, ptr %521, align 8, !tbaa !40
  %549 = getelementptr inbounds nuw i8, ptr %548, i64 %519
  %550 = load i64, ptr %522, align 8, !tbaa !59
  %551 = tail call i64 @crc32_z(i64 noundef %550, ptr noundef %549, i64 noundef %547) #10
  store i64 %551, ptr %522, align 8, !tbaa !59
  br label %552

552:                                              ; preds = %546, %535
  %553 = load i64, ptr %513, align 8, !tbaa !118
  %554 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %553, i64 %533), !nosanitize !45
  %555 = extractvalue { i64, i1 } %554, 1, !nosanitize !45
  br i1 %555, label %628, label %556, !prof !46, !nosanitize !45

556:                                              ; preds = %552
  %557 = extractvalue { i64, i1 } %554, 0, !nosanitize !45
  store i64 %557, ptr %513, align 8, !tbaa !118
  %558 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %558) #10
  %559 = getelementptr inbounds nuw i8, ptr %558, i64 40
  %560 = load i64, ptr %559, align 8, !tbaa !57
  %561 = load i32, ptr %43, align 8, !tbaa !107
  %562 = zext i32 %561 to i64
  %563 = tail call i64 @llvm.umin.i64(i64 %560, i64 %562)
  %564 = trunc nuw i64 %563 to i32
  %565 = icmp eq i64 %563, 0
  br i1 %565, label %593, label %566

566:                                              ; preds = %556
  %567 = load ptr, ptr %25, align 8, !tbaa !106
  %568 = getelementptr inbounds nuw i8, ptr %558, i64 32
  %569 = load ptr, ptr %568, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %567, ptr align 1 %569, i64 %563, i1 false)
  %570 = load ptr, ptr %25, align 8, !tbaa !106
  %571 = getelementptr inbounds nuw i8, ptr %570, i64 %563
  store ptr %571, ptr %25, align 8, !tbaa !106
  %572 = load ptr, ptr %568, align 8, !tbaa !58
  %573 = getelementptr inbounds nuw i8, ptr %572, i64 %563
  store ptr %573, ptr %568, align 8, !tbaa !58
  %574 = load i64, ptr %523, align 8, !tbaa !108
  %575 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %574, i64 %563), !nosanitize !45
  %576 = extractvalue { i64, i1 } %575, 1, !nosanitize !45
  br i1 %576, label %650, label %577, !prof !46, !nosanitize !45

577:                                              ; preds = %566
  %578 = extractvalue { i64, i1 } %575, 0, !nosanitize !45
  store i64 %578, ptr %523, align 8, !tbaa !108
  %579 = load i32, ptr %43, align 8, !tbaa !107
  %580 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %579, i32 %564), !nosanitize !45
  %581 = extractvalue { i32, i1 } %580, 1, !nosanitize !45
  br i1 %581, label %656, label %582, !prof !46, !nosanitize !45

582:                                              ; preds = %577
  %583 = extractvalue { i32, i1 } %580, 0, !nosanitize !45
  store i32 %583, ptr %43, align 8, !tbaa !107
  %584 = load i64, ptr %559, align 8, !tbaa !57
  %585 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %584, i64 %563), !nosanitize !45
  %586 = extractvalue { i64, i1 } %585, 1, !nosanitize !45
  br i1 %586, label %662, label %587, !prof !46, !nosanitize !45

587:                                              ; preds = %582
  %588 = extractvalue { i64, i1 } %585, 0, !nosanitize !45
  store i64 %588, ptr %559, align 8, !tbaa !57
  %589 = icmp eq i64 %588, 0
  br i1 %589, label %590, label %593

590:                                              ; preds = %587
  %591 = getelementptr inbounds nuw i8, ptr %558, i64 16
  %592 = load ptr, ptr %591, align 8, !tbaa !40
  store ptr %592, ptr %568, align 8, !tbaa !58
  br label %593

593:                                              ; preds = %590, %587, %556
  %594 = load i64, ptr %52, align 8, !tbaa !57
  %595 = icmp eq i64 %594, 0
  br i1 %595, label %596, label %672

596:                                              ; preds = %593
  %597 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %524, i64 %533), !nosanitize !45
  %598 = extractvalue { i64, i1 } %597, 1, !nosanitize !45
  br i1 %598, label %676, label %600, !prof !46, !nosanitize !45

599:                                              ; preds = %518
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

600:                                              ; preds = %673, %596
  %601 = phi { i64, i1 } [ %674, %673 ], [ %597, %596 ]
  %602 = extractvalue { i64, i1 } %601, 0
  %603 = load i64, ptr %520, align 8, !tbaa !41
  %604 = icmp ugt i64 %602, %603
  br i1 %604, label %606, label %677

605:                                              ; preds = %531
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

606:                                              ; preds = %600
  %607 = load ptr, ptr %521, align 8, !tbaa !40
  %608 = load ptr, ptr %503, align 8, !tbaa !100
  %609 = getelementptr inbounds nuw i8, ptr %608, i64 24
  %610 = load ptr, ptr %609, align 8, !tbaa !112
  %611 = load i64, ptr %513, align 8, !tbaa !118
  %612 = getelementptr inbounds nuw i8, ptr %610, i64 %611
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %607, ptr align 1 %612, i64 %603, i1 false)
  %613 = load i64, ptr %520, align 8, !tbaa !41
  store i64 %613, ptr %52, align 8, !tbaa !57
  %614 = load ptr, ptr %503, align 8, !tbaa !100
  %615 = getelementptr inbounds nuw i8, ptr %614, i64 68
  %616 = load i32, ptr %615, align 4, !tbaa !114
  %617 = icmp ne i32 %616, 0
  %618 = icmp ne i64 %613, 0
  %619 = select i1 %617, i1 %618, i1 false
  br i1 %619, label %620, label %624

620:                                              ; preds = %606
  %621 = load ptr, ptr %521, align 8, !tbaa !40
  %622 = load i64, ptr %522, align 8, !tbaa !59
  %623 = tail call i64 @crc32_z(i64 noundef %622, ptr noundef %621, i64 noundef %613) #10
  store i64 %623, ptr %522, align 8, !tbaa !59
  br label %624

624:                                              ; preds = %620, %606
  %625 = load i64, ptr %513, align 8, !tbaa !118
  %626 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %625, i64 %603), !nosanitize !45
  %627 = extractvalue { i64, i1 } %626, 1, !nosanitize !45
  br i1 %627, label %628, label %629, !prof !46, !nosanitize !45

628:                                              ; preds = %624, %552
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

629:                                              ; preds = %624
  %630 = extractvalue { i64, i1 } %626, 0, !nosanitize !45
  store i64 %630, ptr %513, align 8, !tbaa !118
  %631 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %631) #10
  %632 = getelementptr inbounds nuw i8, ptr %631, i64 40
  %633 = load i64, ptr %632, align 8, !tbaa !57
  %634 = load i32, ptr %43, align 8, !tbaa !107
  %635 = zext i32 %634 to i64
  %636 = tail call i64 @llvm.umin.i64(i64 %633, i64 %635)
  %637 = trunc nuw i64 %636 to i32
  %638 = icmp eq i64 %636, 0
  br i1 %638, label %669, label %639

639:                                              ; preds = %629
  %640 = load ptr, ptr %25, align 8, !tbaa !106
  %641 = getelementptr inbounds nuw i8, ptr %631, i64 32
  %642 = load ptr, ptr %641, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %640, ptr align 1 %642, i64 %636, i1 false)
  %643 = load ptr, ptr %25, align 8, !tbaa !106
  %644 = getelementptr inbounds nuw i8, ptr %643, i64 %636
  store ptr %644, ptr %25, align 8, !tbaa !106
  %645 = load ptr, ptr %641, align 8, !tbaa !58
  %646 = getelementptr inbounds nuw i8, ptr %645, i64 %636
  store ptr %646, ptr %641, align 8, !tbaa !58
  %647 = load i64, ptr %523, align 8, !tbaa !108
  %648 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %647, i64 %636), !nosanitize !45
  %649 = extractvalue { i64, i1 } %648, 1, !nosanitize !45
  br i1 %649, label %650, label %651, !prof !46, !nosanitize !45

650:                                              ; preds = %639, %566
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

651:                                              ; preds = %639
  %652 = extractvalue { i64, i1 } %648, 0, !nosanitize !45
  store i64 %652, ptr %523, align 8, !tbaa !108
  %653 = load i32, ptr %43, align 8, !tbaa !107
  %654 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %653, i32 %637), !nosanitize !45
  %655 = extractvalue { i32, i1 } %654, 1, !nosanitize !45
  br i1 %655, label %656, label %657, !prof !46, !nosanitize !45

656:                                              ; preds = %651, %577
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

657:                                              ; preds = %651
  %658 = extractvalue { i32, i1 } %654, 0, !nosanitize !45
  store i32 %658, ptr %43, align 8, !tbaa !107
  %659 = load i64, ptr %632, align 8, !tbaa !57
  %660 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %659, i64 %636), !nosanitize !45
  %661 = extractvalue { i64, i1 } %660, 1, !nosanitize !45
  br i1 %661, label %662, label %663, !prof !46, !nosanitize !45

662:                                              ; preds = %657, %582
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

663:                                              ; preds = %657
  %664 = extractvalue { i64, i1 } %660, 0, !nosanitize !45
  store i64 %664, ptr %632, align 8, !tbaa !57
  %665 = icmp eq i64 %664, 0
  br i1 %665, label %666, label %669

666:                                              ; preds = %663
  %667 = getelementptr inbounds nuw i8, ptr %631, i64 16
  %668 = load ptr, ptr %667, align 8, !tbaa !40
  store ptr %668, ptr %641, align 8, !tbaa !58
  br label %669

669:                                              ; preds = %666, %663, %629
  %670 = load i64, ptr %52, align 8, !tbaa !57
  %671 = icmp eq i64 %670, 0
  br i1 %671, label %673, label %672

672:                                              ; preds = %669, %593
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1201

673:                                              ; preds = %669
  %674 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %602, i64 %603), !nosanitize !45
  %675 = extractvalue { i64, i1 } %674, 1, !nosanitize !45
  br i1 %675, label %676, label %600, !prof !46, !llvm.loop !119, !nosanitize !45

676:                                              ; preds = %673, %596
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

677:                                              ; preds = %600
  %678 = load ptr, ptr %503, align 8, !tbaa !100
  %679 = getelementptr inbounds nuw i8, ptr %678, i64 24
  %680 = load ptr, ptr %679, align 8, !tbaa !112
  %681 = load i64, ptr %513, align 8, !tbaa !118
  br label %682

682:                                              ; preds = %677, %527
  %683 = phi i64 [ %514, %527 ], [ %681, %677 ]
  %684 = phi ptr [ %506, %527 ], [ %680, %677 ]
  %685 = phi i64 [ %519, %527 ], [ 0, %677 ]
  %686 = phi i64 [ %524, %527 ], [ %602, %677 ]
  %687 = load ptr, ptr %521, align 8, !tbaa !40
  %688 = getelementptr inbounds nuw i8, ptr %687, i64 %685
  %689 = getelementptr inbounds nuw i8, ptr %684, i64 %683
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %688, ptr align 1 %689, i64 %686, i1 false)
  %690 = load i64, ptr %52, align 8, !tbaa !57
  %691 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %690, i64 %686), !nosanitize !45
  %692 = extractvalue { i64, i1 } %691, 0, !nosanitize !45
  %693 = extractvalue { i64, i1 } %691, 1, !nosanitize !45
  br i1 %693, label %694, label %695, !prof !46, !nosanitize !45

694:                                              ; preds = %682
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

695:                                              ; preds = %682
  store i64 %692, ptr %52, align 8, !tbaa !57
  %696 = load ptr, ptr %503, align 8, !tbaa !100
  %697 = getelementptr inbounds nuw i8, ptr %696, i64 68
  %698 = load i32, ptr %697, align 4, !tbaa !114
  %699 = icmp ne i32 %698, 0
  %700 = icmp ugt i64 %692, %685
  %701 = select i1 %699, i1 %700, i1 false
  br i1 %701, label %702, label %708

702:                                              ; preds = %695
  %703 = sub nuw i64 %692, %685
  %704 = load ptr, ptr %521, align 8, !tbaa !40
  %705 = getelementptr inbounds nuw i8, ptr %704, i64 %685
  %706 = load i64, ptr %522, align 8, !tbaa !59
  %707 = tail call i64 @crc32_z(i64 noundef %706, ptr noundef %705, i64 noundef %703) #10
  store i64 %707, ptr %522, align 8, !tbaa !59
  br label %708

708:                                              ; preds = %702, %695
  store i64 0, ptr %513, align 8, !tbaa !118
  br label %709

709:                                              ; preds = %708, %502
  store i32 73, ptr %20, align 8, !tbaa !29
  br label %710

710:                                              ; preds = %709, %500
  %711 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %712 = load ptr, ptr %711, align 8, !tbaa !100
  %713 = getelementptr inbounds nuw i8, ptr %712, i64 40
  %714 = load ptr, ptr %713, align 8, !tbaa !111
  %715 = icmp eq ptr %714, null
  br i1 %715, label %821, label %716

716:                                              ; preds = %710
  %717 = load i64, ptr %52, align 8, !tbaa !57
  %718 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %719 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %720 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %721 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %722 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %723

723:                                              ; preds = %799, %716
  %724 = phi i64 [ %717, %716 ], [ %786, %799 ]
  %725 = load i64, ptr %52, align 8, !tbaa !57
  %726 = load i64, ptr %718, align 8, !tbaa !41
  %727 = icmp eq i64 %725, %726
  br i1 %727, label %728, label %784

728:                                              ; preds = %723
  %729 = load ptr, ptr %711, align 8, !tbaa !100
  %730 = getelementptr inbounds nuw i8, ptr %729, i64 68
  %731 = load i32, ptr %730, align 4, !tbaa !114
  %732 = icmp ne i32 %731, 0
  %733 = icmp ugt i64 %725, %724
  %734 = select i1 %732, i1 %733, i1 false
  br i1 %734, label %735, label %741

735:                                              ; preds = %728
  %736 = sub nuw i64 %725, %724
  %737 = load ptr, ptr %719, align 8, !tbaa !40
  %738 = getelementptr inbounds nuw i8, ptr %737, i64 %724
  %739 = load i64, ptr %720, align 8, !tbaa !59
  %740 = tail call i64 @crc32_z(i64 noundef %739, ptr noundef %738, i64 noundef %736) #10
  store i64 %740, ptr %720, align 8, !tbaa !59
  br label %741

741:                                              ; preds = %735, %728
  %742 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %742) #10
  %743 = getelementptr inbounds nuw i8, ptr %742, i64 40
  %744 = load i64, ptr %743, align 8, !tbaa !57
  %745 = load i32, ptr %43, align 8, !tbaa !107
  %746 = zext i32 %745 to i64
  %747 = tail call i64 @llvm.umin.i64(i64 %744, i64 %746)
  %748 = trunc nuw i64 %747 to i32
  %749 = icmp eq i64 %747, 0
  br i1 %749, label %780, label %750

750:                                              ; preds = %741
  %751 = load ptr, ptr %25, align 8, !tbaa !106
  %752 = getelementptr inbounds nuw i8, ptr %742, i64 32
  %753 = load ptr, ptr %752, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %751, ptr align 1 %753, i64 %747, i1 false)
  %754 = load ptr, ptr %25, align 8, !tbaa !106
  %755 = getelementptr inbounds nuw i8, ptr %754, i64 %747
  store ptr %755, ptr %25, align 8, !tbaa !106
  %756 = load ptr, ptr %752, align 8, !tbaa !58
  %757 = getelementptr inbounds nuw i8, ptr %756, i64 %747
  store ptr %757, ptr %752, align 8, !tbaa !58
  %758 = load i64, ptr %721, align 8, !tbaa !108
  %759 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %758, i64 %747), !nosanitize !45
  %760 = extractvalue { i64, i1 } %759, 1, !nosanitize !45
  br i1 %760, label %761, label %762, !prof !46, !nosanitize !45

761:                                              ; preds = %750
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

762:                                              ; preds = %750
  %763 = extractvalue { i64, i1 } %759, 0, !nosanitize !45
  store i64 %763, ptr %721, align 8, !tbaa !108
  %764 = load i32, ptr %43, align 8, !tbaa !107
  %765 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %764, i32 %748), !nosanitize !45
  %766 = extractvalue { i32, i1 } %765, 1, !nosanitize !45
  br i1 %766, label %767, label %768, !prof !46, !nosanitize !45

767:                                              ; preds = %762
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

768:                                              ; preds = %762
  %769 = extractvalue { i32, i1 } %765, 0, !nosanitize !45
  store i32 %769, ptr %43, align 8, !tbaa !107
  %770 = load i64, ptr %743, align 8, !tbaa !57
  %771 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %770, i64 %747), !nosanitize !45
  %772 = extractvalue { i64, i1 } %771, 1, !nosanitize !45
  br i1 %772, label %773, label %774, !prof !46, !nosanitize !45

773:                                              ; preds = %768
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

774:                                              ; preds = %768
  %775 = extractvalue { i64, i1 } %771, 0, !nosanitize !45
  store i64 %775, ptr %743, align 8, !tbaa !57
  %776 = icmp eq i64 %775, 0
  br i1 %776, label %777, label %780

777:                                              ; preds = %774
  %778 = getelementptr inbounds nuw i8, ptr %742, i64 16
  %779 = load ptr, ptr %778, align 8, !tbaa !40
  store ptr %779, ptr %752, align 8, !tbaa !58
  br label %780

780:                                              ; preds = %777, %774, %741
  %781 = load i64, ptr %52, align 8, !tbaa !57
  %782 = icmp eq i64 %781, 0
  br i1 %782, label %784, label %783

783:                                              ; preds = %780
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1201

784:                                              ; preds = %780, %723
  %785 = phi i64 [ %725, %723 ], [ 0, %780 ]
  %786 = phi i64 [ %724, %723 ], [ 0, %780 ]
  %787 = load i64, ptr %722, align 8, !tbaa !118
  %788 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %787, i64 1), !nosanitize !45
  %789 = extractvalue { i64, i1 } %788, 1, !nosanitize !45
  br i1 %789, label %790, label %791, !prof !46, !nosanitize !45

790:                                              ; preds = %784
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

791:                                              ; preds = %784
  %792 = extractvalue { i64, i1 } %788, 0, !nosanitize !45
  %793 = load ptr, ptr %711, align 8, !tbaa !100
  %794 = getelementptr inbounds nuw i8, ptr %793, i64 40
  %795 = load ptr, ptr %794, align 8, !tbaa !111
  store i64 %792, ptr %722, align 8, !tbaa !118
  %796 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %785, i64 1), !nosanitize !45
  %797 = extractvalue { i64, i1 } %796, 1, !nosanitize !45
  br i1 %797, label %798, label %799, !prof !46, !nosanitize !45

798:                                              ; preds = %791
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

799:                                              ; preds = %791
  %800 = extractvalue { i64, i1 } %796, 0, !nosanitize !45
  %801 = load ptr, ptr %719, align 8, !tbaa !40
  %802 = getelementptr inbounds nuw i8, ptr %795, i64 %787
  %803 = load i8, ptr %802, align 1, !tbaa !8
  store i64 %800, ptr %52, align 8, !tbaa !57
  %804 = getelementptr inbounds nuw i8, ptr %801, i64 %785
  store i8 %803, ptr %804, align 1, !tbaa !8
  %805 = icmp eq i8 %803, 0
  br i1 %805, label %806, label %723, !llvm.loop !122

806:                                              ; preds = %799
  %807 = load ptr, ptr %711, align 8, !tbaa !100
  %808 = getelementptr inbounds nuw i8, ptr %807, i64 68
  %809 = load i32, ptr %808, align 4, !tbaa !114
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %820, label %811

811:                                              ; preds = %806
  %812 = load i64, ptr %52, align 8, !tbaa !57
  %813 = icmp ugt i64 %812, %786
  br i1 %813, label %814, label %820

814:                                              ; preds = %811
  %815 = sub nuw i64 %812, %786
  %816 = load ptr, ptr %719, align 8, !tbaa !40
  %817 = getelementptr inbounds nuw i8, ptr %816, i64 %786
  %818 = load i64, ptr %720, align 8, !tbaa !59
  %819 = tail call i64 @crc32_z(i64 noundef %818, ptr noundef %817, i64 noundef %815) #10
  store i64 %819, ptr %720, align 8, !tbaa !59
  br label %820

820:                                              ; preds = %814, %811, %806
  store i64 0, ptr %722, align 8, !tbaa !118
  br label %821

821:                                              ; preds = %820, %710
  store i32 91, ptr %20, align 8, !tbaa !29
  br label %822

822:                                              ; preds = %821, %500
  %823 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %824 = load ptr, ptr %823, align 8, !tbaa !100
  %825 = getelementptr inbounds nuw i8, ptr %824, i64 56
  %826 = load ptr, ptr %825, align 8, !tbaa !109
  %827 = icmp eq ptr %826, null
  br i1 %827, label %932, label %828

828:                                              ; preds = %822
  %829 = load i64, ptr %52, align 8, !tbaa !57
  %830 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %831 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %832 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %833 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %834 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %835

835:                                              ; preds = %911, %828
  %836 = phi i64 [ %829, %828 ], [ %898, %911 ]
  %837 = load i64, ptr %52, align 8, !tbaa !57
  %838 = load i64, ptr %830, align 8, !tbaa !41
  %839 = icmp eq i64 %837, %838
  br i1 %839, label %840, label %896

840:                                              ; preds = %835
  %841 = load ptr, ptr %823, align 8, !tbaa !100
  %842 = getelementptr inbounds nuw i8, ptr %841, i64 68
  %843 = load i32, ptr %842, align 4, !tbaa !114
  %844 = icmp ne i32 %843, 0
  %845 = icmp ugt i64 %837, %836
  %846 = select i1 %844, i1 %845, i1 false
  br i1 %846, label %847, label %853

847:                                              ; preds = %840
  %848 = sub nuw i64 %837, %836
  %849 = load ptr, ptr %831, align 8, !tbaa !40
  %850 = getelementptr inbounds nuw i8, ptr %849, i64 %836
  %851 = load i64, ptr %832, align 8, !tbaa !59
  %852 = tail call i64 @crc32_z(i64 noundef %851, ptr noundef %850, i64 noundef %848) #10
  store i64 %852, ptr %832, align 8, !tbaa !59
  br label %853

853:                                              ; preds = %847, %840
  %854 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %854) #10
  %855 = getelementptr inbounds nuw i8, ptr %854, i64 40
  %856 = load i64, ptr %855, align 8, !tbaa !57
  %857 = load i32, ptr %43, align 8, !tbaa !107
  %858 = zext i32 %857 to i64
  %859 = tail call i64 @llvm.umin.i64(i64 %856, i64 %858)
  %860 = trunc nuw i64 %859 to i32
  %861 = icmp eq i64 %859, 0
  br i1 %861, label %892, label %862

862:                                              ; preds = %853
  %863 = load ptr, ptr %25, align 8, !tbaa !106
  %864 = getelementptr inbounds nuw i8, ptr %854, i64 32
  %865 = load ptr, ptr %864, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %863, ptr align 1 %865, i64 %859, i1 false)
  %866 = load ptr, ptr %25, align 8, !tbaa !106
  %867 = getelementptr inbounds nuw i8, ptr %866, i64 %859
  store ptr %867, ptr %25, align 8, !tbaa !106
  %868 = load ptr, ptr %864, align 8, !tbaa !58
  %869 = getelementptr inbounds nuw i8, ptr %868, i64 %859
  store ptr %869, ptr %864, align 8, !tbaa !58
  %870 = load i64, ptr %833, align 8, !tbaa !108
  %871 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %870, i64 %859), !nosanitize !45
  %872 = extractvalue { i64, i1 } %871, 1, !nosanitize !45
  br i1 %872, label %873, label %874, !prof !46, !nosanitize !45

873:                                              ; preds = %862
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

874:                                              ; preds = %862
  %875 = extractvalue { i64, i1 } %871, 0, !nosanitize !45
  store i64 %875, ptr %833, align 8, !tbaa !108
  %876 = load i32, ptr %43, align 8, !tbaa !107
  %877 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %876, i32 %860), !nosanitize !45
  %878 = extractvalue { i32, i1 } %877, 1, !nosanitize !45
  br i1 %878, label %879, label %880, !prof !46, !nosanitize !45

879:                                              ; preds = %874
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

880:                                              ; preds = %874
  %881 = extractvalue { i32, i1 } %877, 0, !nosanitize !45
  store i32 %881, ptr %43, align 8, !tbaa !107
  %882 = load i64, ptr %855, align 8, !tbaa !57
  %883 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %882, i64 %859), !nosanitize !45
  %884 = extractvalue { i64, i1 } %883, 1, !nosanitize !45
  br i1 %884, label %885, label %886, !prof !46, !nosanitize !45

885:                                              ; preds = %880
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

886:                                              ; preds = %880
  %887 = extractvalue { i64, i1 } %883, 0, !nosanitize !45
  store i64 %887, ptr %855, align 8, !tbaa !57
  %888 = icmp eq i64 %887, 0
  br i1 %888, label %889, label %892

889:                                              ; preds = %886
  %890 = getelementptr inbounds nuw i8, ptr %854, i64 16
  %891 = load ptr, ptr %890, align 8, !tbaa !40
  store ptr %891, ptr %864, align 8, !tbaa !58
  br label %892

892:                                              ; preds = %889, %886, %853
  %893 = load i64, ptr %52, align 8, !tbaa !57
  %894 = icmp eq i64 %893, 0
  br i1 %894, label %896, label %895

895:                                              ; preds = %892
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1201

896:                                              ; preds = %892, %835
  %897 = phi i64 [ %837, %835 ], [ 0, %892 ]
  %898 = phi i64 [ %836, %835 ], [ 0, %892 ]
  %899 = load i64, ptr %834, align 8, !tbaa !118
  %900 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %899, i64 1), !nosanitize !45
  %901 = extractvalue { i64, i1 } %900, 1, !nosanitize !45
  br i1 %901, label %902, label %903, !prof !46, !nosanitize !45

902:                                              ; preds = %896
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

903:                                              ; preds = %896
  %904 = extractvalue { i64, i1 } %900, 0, !nosanitize !45
  %905 = load ptr, ptr %823, align 8, !tbaa !100
  %906 = getelementptr inbounds nuw i8, ptr %905, i64 56
  %907 = load ptr, ptr %906, align 8, !tbaa !109
  store i64 %904, ptr %834, align 8, !tbaa !118
  %908 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %897, i64 1), !nosanitize !45
  %909 = extractvalue { i64, i1 } %908, 1, !nosanitize !45
  br i1 %909, label %910, label %911, !prof !46, !nosanitize !45

910:                                              ; preds = %903
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

911:                                              ; preds = %903
  %912 = extractvalue { i64, i1 } %908, 0, !nosanitize !45
  %913 = load ptr, ptr %831, align 8, !tbaa !40
  %914 = getelementptr inbounds nuw i8, ptr %907, i64 %899
  %915 = load i8, ptr %914, align 1, !tbaa !8
  store i64 %912, ptr %52, align 8, !tbaa !57
  %916 = getelementptr inbounds nuw i8, ptr %913, i64 %897
  store i8 %915, ptr %916, align 1, !tbaa !8
  %917 = icmp eq i8 %915, 0
  br i1 %917, label %918, label %835, !llvm.loop !123

918:                                              ; preds = %911
  %919 = load ptr, ptr %823, align 8, !tbaa !100
  %920 = getelementptr inbounds nuw i8, ptr %919, i64 68
  %921 = load i32, ptr %920, align 4, !tbaa !114
  %922 = icmp eq i32 %921, 0
  br i1 %922, label %932, label %923

923:                                              ; preds = %918
  %924 = load i64, ptr %52, align 8, !tbaa !57
  %925 = icmp ugt i64 %924, %898
  br i1 %925, label %926, label %932

926:                                              ; preds = %923
  %927 = sub nuw i64 %924, %898
  %928 = load ptr, ptr %831, align 8, !tbaa !40
  %929 = getelementptr inbounds nuw i8, ptr %928, i64 %898
  %930 = load i64, ptr %832, align 8, !tbaa !59
  %931 = tail call i64 @crc32_z(i64 noundef %930, ptr noundef %929, i64 noundef %927) #10
  store i64 %931, ptr %832, align 8, !tbaa !59
  br label %932

932:                                              ; preds = %926, %923, %918, %822
  store i32 103, ptr %20, align 8, !tbaa !29
  br label %933

933:                                              ; preds = %932, %500
  %934 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %935 = load ptr, ptr %934, align 8, !tbaa !100
  %936 = getelementptr inbounds nuw i8, ptr %935, i64 68
  %937 = load i32, ptr %936, align 4, !tbaa !114
  %938 = icmp eq i32 %937, 0
  br i1 %938, label %974, label %939

939:                                              ; preds = %933
  %940 = load i64, ptr %52, align 8, !tbaa !57
  %941 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %940, i64 2), !nosanitize !45
  %942 = extractvalue { i64, i1 } %941, 1, !nosanitize !45
  br i1 %942, label %943, label %944, !prof !46, !nosanitize !45

943:                                              ; preds = %939
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

944:                                              ; preds = %939
  %945 = extractvalue { i64, i1 } %941, 0, !nosanitize !45
  %946 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %947 = load i64, ptr %946, align 8, !tbaa !41
  %948 = icmp ugt i64 %945, %947
  br i1 %948, label %949, label %953

949:                                              ; preds = %944
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %950 = load i64, ptr %52, align 8, !tbaa !57
  %951 = icmp eq i64 %950, 0
  br i1 %951, label %953, label %952

952:                                              ; preds = %949
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1201

953:                                              ; preds = %949, %944
  %954 = phi i64 [ 0, %949 ], [ %940, %944 ]
  %955 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %956 = add nuw i64 %954, 1
  %957 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %958 = load ptr, ptr %957, align 8, !tbaa !40
  %959 = load i64, ptr %955, align 8, !tbaa !59
  %960 = trunc i64 %959 to i8
  store i64 %956, ptr %52, align 8, !tbaa !57
  %961 = getelementptr inbounds nuw i8, ptr %958, i64 %954
  store i8 %960, ptr %961, align 1, !tbaa !8
  %962 = load i64, ptr %52, align 8, !tbaa !57
  %963 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %962, i64 1), !nosanitize !45
  %964 = extractvalue { i64, i1 } %963, 1, !nosanitize !45
  br i1 %964, label %965, label %966, !prof !46, !nosanitize !45

965:                                              ; preds = %953
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

966:                                              ; preds = %953
  %967 = extractvalue { i64, i1 } %963, 0, !nosanitize !45
  %968 = load ptr, ptr %957, align 8, !tbaa !40
  %969 = load i64, ptr %955, align 8, !tbaa !59
  %970 = lshr i64 %969, 8
  %971 = trunc i64 %970 to i8
  store i64 %967, ptr %52, align 8, !tbaa !57
  %972 = getelementptr inbounds nuw i8, ptr %968, i64 %962
  store i8 %971, ptr %972, align 1, !tbaa !8
  %973 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  store i64 %973, ptr %955, align 8, !tbaa !59
  br label %974

974:                                              ; preds = %966, %933
  store i32 113, ptr %20, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %975 = load i64, ptr %52, align 8, !tbaa !57
  %976 = icmp eq i64 %975, 0
  br i1 %976, label %978, label %977

977:                                              ; preds = %974
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1201

978:                                              ; preds = %974, %500, %133
  %979 = load i32, ptr %29, align 8, !tbaa !81
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %981, label %990

981:                                              ; preds = %978, %123
  %982 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %983 = load i32, ptr %982, align 4, !tbaa !75
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %985, label %990

985:                                              ; preds = %981
  %986 = icmp eq i32 %1, 0
  br i1 %986, label %1201, label %987

987:                                              ; preds = %985
  %988 = load i32, ptr %20, align 8, !tbaa !29
  %989 = icmp eq i32 %988, 666
  br i1 %989, label %1052, label %990

990:                                              ; preds = %987, %981, %978
  %991 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %992 = load i32, ptr %991, align 4, !tbaa !48
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %994, label %996

994:                                              ; preds = %990
  %995 = tail call i32 @deflate_stored(ptr noundef nonnull %14, i32 noundef %1)
  br label %1009

996:                                              ; preds = %990
  %997 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %998 = load i32, ptr %997, align 8, !tbaa !49
  switch i32 %998, label %1003 [
    i32 2, label %999
    i32 3, label %1001
  ]

999:                                              ; preds = %996
  %1000 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %14, i32 noundef %1)
  br label %1009

1001:                                             ; preds = %996
  %1002 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %14, i32 noundef %1)
  br label %1009

1003:                                             ; preds = %996
  %1004 = sext i32 %992 to i64
  %1005 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %1004
  %1006 = getelementptr inbounds nuw i8, ptr %1005, i64 8
  %1007 = load ptr, ptr %1006, align 8, !tbaa !105
  %1008 = tail call i32 %1007(ptr noundef nonnull %14, i32 noundef %1) #10
  br label %1009

1009:                                             ; preds = %1003, %1001, %999, %994
  %1010 = phi i32 [ %995, %994 ], [ %1000, %999 ], [ %1002, %1001 ], [ %1008, %1003 ]
  %1011 = and i32 %1010, -2
  %1012 = icmp eq i32 %1011, 2
  br i1 %1012, label %1013, label %1014

1013:                                             ; preds = %1009
  store i32 666, ptr %20, align 8, !tbaa !29
  br label %1014

1014:                                             ; preds = %1013, %1009
  %1015 = and i32 %1010, -3
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1017, label %1021

1017:                                             ; preds = %1014
  %1018 = load i32, ptr %43, align 8, !tbaa !107
  %1019 = icmp eq i32 %1018, 0
  br i1 %1019, label %1020, label %1201

1020:                                             ; preds = %1017
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1201

1021:                                             ; preds = %1014
  %1022 = icmp eq i32 %1010, 1
  br i1 %1022, label %1023, label %1052

1023:                                             ; preds = %1021
  switch i32 %1, label %1025 [
    i32 1, label %1024
    i32 5, label %1048
  ]

1024:                                             ; preds = %1023
  tail call void @_tr_align(ptr noundef nonnull %14) #10
  br label %1048

1025:                                             ; preds = %1023
  tail call void @_tr_stored_block(ptr noundef nonnull %14, ptr noundef null, i64 noundef 0, i32 noundef 0) #10
  %1026 = icmp eq i32 %1, 3
  br i1 %1026, label %1027, label %1048

1027:                                             ; preds = %1025
  %1028 = getelementptr inbounds nuw i8, ptr %14, i64 132
  %1029 = load i32, ptr %1028, align 4, !tbaa !36
  %1030 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1029, i32 1), !nosanitize !45
  %1031 = extractvalue { i32, i1 } %1030, 1, !nosanitize !45
  br i1 %1031, label %1032, label %1033, !prof !46, !nosanitize !45

1032:                                             ; preds = %1027
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

1033:                                             ; preds = %1027
  %1034 = extractvalue { i32, i1 } %1030, 0, !nosanitize !45
  %1035 = getelementptr inbounds nuw i8, ptr %14, i64 120
  %1036 = load ptr, ptr %1035, align 8, !tbaa !37
  %1037 = zext i32 %1034 to i64
  %1038 = getelementptr inbounds nuw [2 x i8], ptr %1036, i64 %1037
  store i16 0, ptr %1038, align 2, !tbaa !62
  %1039 = shl nuw nsw i64 %1037, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1036, i8 0, i64 %1039, i1 false)
  %1040 = getelementptr inbounds nuw i8, ptr %14, i64 5960
  store i32 0, ptr %1040, align 8, !tbaa !63
  %1041 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %1042 = load i32, ptr %1041, align 4, !tbaa !75
  %1043 = icmp eq i32 %1042, 0
  br i1 %1043, label %1044, label %1048

1044:                                             ; preds = %1033
  %1045 = getelementptr inbounds nuw i8, ptr %14, i64 172
  store i32 0, ptr %1045, align 4, !tbaa !73
  %1046 = getelementptr inbounds nuw i8, ptr %14, i64 152
  store i64 0, ptr %1046, align 8, !tbaa !74
  %1047 = getelementptr inbounds nuw i8, ptr %14, i64 5932
  store i32 0, ptr %1047, align 4, !tbaa !76
  br label %1048

1048:                                             ; preds = %1044, %1033, %1025, %1024, %1023
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1049 = load i32, ptr %43, align 8, !tbaa !107
  %1050 = icmp eq i32 %1049, 0
  br i1 %1050, label %1051, label %1052

1051:                                             ; preds = %1048
  store i32 -1, ptr %50, align 4, !tbaa !60
  br label %1201

1052:                                             ; preds = %1048, %1021, %987
  br i1 %37, label %1201, label %1053

1053:                                             ; preds = %1052
  %1054 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %1055 = load i32, ptr %1054, align 8, !tbaa !30
  %1056 = icmp slt i32 %1055, 1
  br i1 %1056, label %1201, label %1057

1057:                                             ; preds = %1053
  %1058 = icmp eq i32 %1055, 2
  %1059 = getelementptr inbounds nuw i8, ptr %0, i64 96
  br i1 %1058, label %1060, label %1149

1060:                                             ; preds = %1057
  %1061 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1062 = load i64, ptr %52, align 8, !tbaa !57
  %1063 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1062, i64 1), !nosanitize !45
  %1064 = extractvalue { i64, i1 } %1063, 1, !nosanitize !45
  br i1 %1064, label %1065, label %1066, !prof !46, !nosanitize !45

1065:                                             ; preds = %1060
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1066:                                             ; preds = %1060
  %1067 = extractvalue { i64, i1 } %1063, 0, !nosanitize !45
  %1068 = load ptr, ptr %1061, align 8, !tbaa !40
  %1069 = load i64, ptr %1059, align 8, !tbaa !59
  %1070 = trunc i64 %1069 to i8
  store i64 %1067, ptr %52, align 8, !tbaa !57
  %1071 = getelementptr inbounds nuw i8, ptr %1068, i64 %1062
  store i8 %1070, ptr %1071, align 1, !tbaa !8
  %1072 = load i64, ptr %52, align 8, !tbaa !57
  %1073 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1072, i64 1), !nosanitize !45
  %1074 = extractvalue { i64, i1 } %1073, 1, !nosanitize !45
  br i1 %1074, label %1075, label %1076, !prof !46, !nosanitize !45

1075:                                             ; preds = %1066
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1076:                                             ; preds = %1066
  %1077 = extractvalue { i64, i1 } %1073, 0, !nosanitize !45
  %1078 = load ptr, ptr %1061, align 8, !tbaa !40
  %1079 = load i64, ptr %1059, align 8, !tbaa !59
  %1080 = lshr i64 %1079, 8
  %1081 = trunc i64 %1080 to i8
  store i64 %1077, ptr %52, align 8, !tbaa !57
  %1082 = getelementptr inbounds nuw i8, ptr %1078, i64 %1072
  store i8 %1081, ptr %1082, align 1, !tbaa !8
  %1083 = load i64, ptr %52, align 8, !tbaa !57
  %1084 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1083, i64 1), !nosanitize !45
  %1085 = extractvalue { i64, i1 } %1084, 1, !nosanitize !45
  br i1 %1085, label %1086, label %1087, !prof !46, !nosanitize !45

1086:                                             ; preds = %1076
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1087:                                             ; preds = %1076
  %1088 = extractvalue { i64, i1 } %1084, 0, !nosanitize !45
  %1089 = load ptr, ptr %1061, align 8, !tbaa !40
  %1090 = load i64, ptr %1059, align 8, !tbaa !59
  %1091 = lshr i64 %1090, 16
  %1092 = trunc i64 %1091 to i8
  store i64 %1088, ptr %52, align 8, !tbaa !57
  %1093 = getelementptr inbounds nuw i8, ptr %1089, i64 %1083
  store i8 %1092, ptr %1093, align 1, !tbaa !8
  %1094 = load i64, ptr %52, align 8, !tbaa !57
  %1095 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1094, i64 1), !nosanitize !45
  %1096 = extractvalue { i64, i1 } %1095, 1, !nosanitize !45
  br i1 %1096, label %1097, label %1098, !prof !46, !nosanitize !45

1097:                                             ; preds = %1087
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1098:                                             ; preds = %1087
  %1099 = extractvalue { i64, i1 } %1095, 0, !nosanitize !45
  %1100 = load ptr, ptr %1061, align 8, !tbaa !40
  %1101 = load i64, ptr %1059, align 8, !tbaa !59
  %1102 = lshr i64 %1101, 24
  %1103 = trunc i64 %1102 to i8
  store i64 %1099, ptr %52, align 8, !tbaa !57
  %1104 = getelementptr inbounds nuw i8, ptr %1100, i64 %1094
  store i8 %1103, ptr %1104, align 1, !tbaa !8
  %1105 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %1106 = load i64, ptr %52, align 8, !tbaa !57
  %1107 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1106, i64 1), !nosanitize !45
  %1108 = extractvalue { i64, i1 } %1107, 1, !nosanitize !45
  br i1 %1108, label %1109, label %1110, !prof !46, !nosanitize !45

1109:                                             ; preds = %1098
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1110:                                             ; preds = %1098
  %1111 = extractvalue { i64, i1 } %1107, 0, !nosanitize !45
  %1112 = load ptr, ptr %1061, align 8, !tbaa !40
  %1113 = load i64, ptr %1105, align 8, !tbaa !55
  %1114 = trunc i64 %1113 to i8
  store i64 %1111, ptr %52, align 8, !tbaa !57
  %1115 = getelementptr inbounds nuw i8, ptr %1112, i64 %1106
  store i8 %1114, ptr %1115, align 1, !tbaa !8
  %1116 = load i64, ptr %52, align 8, !tbaa !57
  %1117 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1116, i64 1), !nosanitize !45
  %1118 = extractvalue { i64, i1 } %1117, 1, !nosanitize !45
  br i1 %1118, label %1119, label %1120, !prof !46, !nosanitize !45

1119:                                             ; preds = %1110
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1120:                                             ; preds = %1110
  %1121 = extractvalue { i64, i1 } %1117, 0, !nosanitize !45
  %1122 = load ptr, ptr %1061, align 8, !tbaa !40
  %1123 = load i64, ptr %1105, align 8, !tbaa !55
  %1124 = lshr i64 %1123, 8
  %1125 = trunc i64 %1124 to i8
  store i64 %1121, ptr %52, align 8, !tbaa !57
  %1126 = getelementptr inbounds nuw i8, ptr %1122, i64 %1116
  store i8 %1125, ptr %1126, align 1, !tbaa !8
  %1127 = load i64, ptr %52, align 8, !tbaa !57
  %1128 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1127, i64 1), !nosanitize !45
  %1129 = extractvalue { i64, i1 } %1128, 1, !nosanitize !45
  br i1 %1129, label %1130, label %1131, !prof !46, !nosanitize !45

1130:                                             ; preds = %1120
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1131:                                             ; preds = %1120
  %1132 = extractvalue { i64, i1 } %1128, 0, !nosanitize !45
  %1133 = load ptr, ptr %1061, align 8, !tbaa !40
  %1134 = load i64, ptr %1105, align 8, !tbaa !55
  %1135 = lshr i64 %1134, 16
  %1136 = trunc i64 %1135 to i8
  store i64 %1132, ptr %52, align 8, !tbaa !57
  %1137 = getelementptr inbounds nuw i8, ptr %1133, i64 %1127
  store i8 %1136, ptr %1137, align 1, !tbaa !8
  %1138 = load i64, ptr %52, align 8, !tbaa !57
  %1139 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1138, i64 1), !nosanitize !45
  %1140 = extractvalue { i64, i1 } %1139, 1, !nosanitize !45
  br i1 %1140, label %1141, label %1142, !prof !46, !nosanitize !45

1141:                                             ; preds = %1131
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1142:                                             ; preds = %1131
  %1143 = extractvalue { i64, i1 } %1139, 0, !nosanitize !45
  %1144 = load ptr, ptr %1061, align 8, !tbaa !40
  %1145 = load i64, ptr %1105, align 8, !tbaa !55
  %1146 = lshr i64 %1145, 24
  %1147 = trunc i64 %1146 to i8
  store i64 %1143, ptr %52, align 8, !tbaa !57
  %1148 = getelementptr inbounds nuw i8, ptr %1144, i64 %1138
  store i8 %1147, ptr %1148, align 1, !tbaa !8
  br label %1192

1149:                                             ; preds = %1057
  %1150 = load i64, ptr %1059, align 8, !tbaa !59
  %1151 = lshr i64 %1150, 16
  %1152 = load i64, ptr %52, align 8, !tbaa !57
  %1153 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1152, i64 1), !nosanitize !45
  %1154 = extractvalue { i64, i1 } %1153, 1, !nosanitize !45
  br i1 %1154, label %1155, label %1156, !prof !46, !nosanitize !45

1155:                                             ; preds = %1149
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1156:                                             ; preds = %1149
  %1157 = extractvalue { i64, i1 } %1153, 0, !nosanitize !45
  %1158 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1159 = load ptr, ptr %1158, align 8, !tbaa !40
  %1160 = lshr i64 %1150, 24
  %1161 = trunc i64 %1160 to i8
  store i64 %1157, ptr %52, align 8, !tbaa !57
  %1162 = getelementptr inbounds nuw i8, ptr %1159, i64 %1152
  store i8 %1161, ptr %1162, align 1, !tbaa !8
  %1163 = load i64, ptr %52, align 8, !tbaa !57
  %1164 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1163, i64 1), !nosanitize !45
  %1165 = extractvalue { i64, i1 } %1164, 1, !nosanitize !45
  br i1 %1165, label %1166, label %1167, !prof !46, !nosanitize !45

1166:                                             ; preds = %1156
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1167:                                             ; preds = %1156
  %1168 = extractvalue { i64, i1 } %1164, 0, !nosanitize !45
  %1169 = load ptr, ptr %1158, align 8, !tbaa !40
  %1170 = trunc i64 %1151 to i8
  store i64 %1168, ptr %52, align 8, !tbaa !57
  %1171 = getelementptr inbounds nuw i8, ptr %1169, i64 %1163
  store i8 %1170, ptr %1171, align 1, !tbaa !8
  %1172 = load i64, ptr %1059, align 8, !tbaa !59
  %1173 = trunc i64 %1172 to i8
  %1174 = load i64, ptr %52, align 8, !tbaa !57
  %1175 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1174, i64 1), !nosanitize !45
  %1176 = extractvalue { i64, i1 } %1175, 1, !nosanitize !45
  br i1 %1176, label %1177, label %1178, !prof !46, !nosanitize !45

1177:                                             ; preds = %1167
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1178:                                             ; preds = %1167
  %1179 = extractvalue { i64, i1 } %1175, 0, !nosanitize !45
  %1180 = load ptr, ptr %1158, align 8, !tbaa !40
  %1181 = lshr i64 %1172, 8
  %1182 = trunc i64 %1181 to i8
  store i64 %1179, ptr %52, align 8, !tbaa !57
  %1183 = getelementptr inbounds nuw i8, ptr %1180, i64 %1174
  store i8 %1182, ptr %1183, align 1, !tbaa !8
  %1184 = load i64, ptr %52, align 8, !tbaa !57
  %1185 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1184, i64 1), !nosanitize !45
  %1186 = extractvalue { i64, i1 } %1185, 1, !nosanitize !45
  br i1 %1186, label %1187, label %1188, !prof !46, !nosanitize !45

1187:                                             ; preds = %1178
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1188:                                             ; preds = %1178
  %1189 = extractvalue { i64, i1 } %1185, 0, !nosanitize !45
  %1190 = load ptr, ptr %1158, align 8, !tbaa !40
  store i64 %1189, ptr %52, align 8, !tbaa !57
  %1191 = getelementptr inbounds nuw i8, ptr %1190, i64 %1184
  store i8 %1173, ptr %1191, align 1, !tbaa !8
  br label %1192

1192:                                             ; preds = %1188, %1142
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1193 = load i32, ptr %1054, align 8, !tbaa !30
  %1194 = icmp sgt i32 %1193, 0
  br i1 %1194, label %1195, label %1197

1195:                                             ; preds = %1192
  %1196 = sub nsw i32 0, %1193
  store i32 %1196, ptr %1054, align 8, !tbaa !30
  br label %1197

1197:                                             ; preds = %1195, %1192
  %1198 = load i64, ptr %52, align 8, !tbaa !57
  %1199 = icmp eq i64 %1198, 0
  %1200 = zext i1 %1199 to i32
  br label %1201

1201:                                             ; preds = %1197, %1053, %1052, %1051, %1020, %1017, %985, %977, %952, %895, %783, %672, %343, %237, %126, %117, %99, %46, %39, %22, %19, %16, %12, %8, %4, %2
  %1202 = phi i32 [ -5, %117 ], [ -2, %39 ], [ -5, %46 ], [ 0, %99 ], [ -5, %126 ], [ 0, %343 ], [ 0, %952 ], [ 0, %977 ], [ -2, %22 ], [ 0, %1052 ], [ %1200, %1197 ], [ 1, %1053 ], [ 0, %895 ], [ 0, %783 ], [ 0, %672 ], [ 0, %237 ], [ 0, %1020 ], [ 0, %1051 ], [ 0, %1017 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %19 ], [ -2, %16 ], [ 0, %985 ]
  ret i32 %1202
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
  %30 = extractvalue { i64, i1 } %29, 0, !nosanitize !45
  %31 = lshr i64 %1, 7
  %32 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %30, i64 %31), !nosanitize !45
  %33 = extractvalue { i64, i1 } %32, 0, !nosanitize !45
  %34 = lshr i64 %1, 11
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %34), !nosanitize !45
  %36 = extractvalue { i64, i1 } %35, 0, !nosanitize !45
  %37 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %36, i64 7), !nosanitize !45
  %38 = extractvalue { i64, i1 } %37, 0, !nosanitize !45
  %39 = icmp ult i64 %38, %1
  %40 = select i1 %39, i64 -1, i64 %38
  %41 = icmp eq ptr %0, null
  br i1 %41, label %60, label %42

42:                                               ; preds = %24
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !15
  %45 = icmp eq ptr %44, null
  br i1 %45, label %60, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %48 = load ptr, ptr %47, align 8, !tbaa !17
  %49 = icmp eq ptr %48, null
  br i1 %49, label %60, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %52 = load ptr, ptr %51, align 8, !tbaa !19
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %52, align 8, !tbaa !20
  %56 = icmp eq ptr %55, %0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = getelementptr inbounds nuw i8, ptr %52, i64 8
  %59 = load i32, ptr %58, align 8, !tbaa !29
  switch i32 %59, label %60 [
    i32 42, label %66
    i32 57, label %66
    i32 69, label %66
    i32 73, label %66
    i32 91, label %66
    i32 103, label %66
    i32 113, label %66
    i32 666, label %66
  ]

60:                                               ; preds = %57, %54, %50, %46, %42, %24
  %61 = tail call i64 @llvm.umax.i64(i64 %27, i64 %40)
  %62 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %61, i64 18), !nosanitize !45
  %63 = extractvalue { i64, i1 } %62, 0, !nosanitize !45
  %64 = extractvalue { i64, i1 } %62, 1, !nosanitize !45
  br i1 %64, label %65, label %192, !prof !46, !nosanitize !45

65:                                               ; preds = %60
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

66:                                               ; preds = %57, %57, %57, %57, %57, %57, %57, %57
  %67 = getelementptr inbounds nuw i8, ptr %52, i64 48
  %68 = load i32, ptr %67, align 8, !tbaa !30
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %68), !nosanitize !45
  %72 = extractvalue { i32, i1 } %71, 0, !nosanitize !45
  %73 = extractvalue { i32, i1 } %71, 1, !nosanitize !45
  br i1 %73, label %74, label %75, !prof !46, !nosanitize !45

74:                                               ; preds = %70
  tail call void @llvm.ubsantrap(i8 13) #12, !nosanitize !45
  unreachable, !nosanitize !45

75:                                               ; preds = %70, %66
  %76 = phi i32 [ %72, %70 ], [ %68, %66 ]
  switch i32 %76, label %149 [
    i32 0, label %150
    i32 1, label %77
    i32 2, label %82
  ]

77:                                               ; preds = %75
  %78 = getelementptr inbounds nuw i8, ptr %52, i64 172
  %79 = load i32, ptr %78, align 4, !tbaa !73
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i64 6, i64 10
  br label %150

82:                                               ; preds = %75
  %83 = getelementptr inbounds nuw i8, ptr %52, i64 56
  %84 = load ptr, ptr %83, align 8, !tbaa !100
  %85 = icmp eq ptr %84, null
  br i1 %85, label %150, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds nuw i8, ptr %84, i64 24
  %88 = load ptr, ptr %87, align 8, !tbaa !112
  %89 = icmp eq ptr %88, null
  br i1 %89, label %100, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds nuw i8, ptr %84, i64 32
  %92 = load i32, ptr %91, align 8, !tbaa !117
  %93 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %92, i32 2), !nosanitize !45
  %94 = extractvalue { i32, i1 } %93, 1, !nosanitize !45
  br i1 %94, label %95, label %96, !prof !46, !nosanitize !45

95:                                               ; preds = %90
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

96:                                               ; preds = %90
  %97 = extractvalue { i32, i1 } %93, 0, !nosanitize !45
  %98 = zext i32 %97 to i64
  %99 = add nuw nsw i64 %98, 18
  br label %100

100:                                              ; preds = %96, %86
  %101 = phi i64 [ %99, %96 ], [ 18, %86 ]
  %102 = getelementptr inbounds nuw i8, ptr %84, i64 40
  %103 = load ptr, ptr %102, align 8, !tbaa !111
  %104 = icmp eq ptr %103, null
  br i1 %104, label %119, label %105

105:                                              ; preds = %100
  %106 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %101, i64 1), !nosanitize !45
  %107 = extractvalue { i64, i1 } %106, 1, !nosanitize !45
  br i1 %107, label %112, label %113, !prof !130, !nosanitize !45

108:                                              ; preds = %113
  %109 = getelementptr inbounds nuw i8, ptr %115, i64 1
  %110 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %116, i64 1), !nosanitize !45
  %111 = extractvalue { i64, i1 } %110, 1, !nosanitize !45
  br i1 %111, label %112, label %113, !prof !131, !llvm.loop !132, !nosanitize !45

112:                                              ; preds = %108, %105
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

113:                                              ; preds = %108, %105
  %114 = phi { i64, i1 } [ %110, %108 ], [ %106, %105 ]
  %115 = phi ptr [ %109, %108 ], [ %103, %105 ]
  %116 = extractvalue { i64, i1 } %114, 0, !nosanitize !45
  %117 = load i8, ptr %115, align 1, !tbaa !8
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %108, !llvm.loop !132

119:                                              ; preds = %113, %100
  %120 = phi i64 [ %101, %100 ], [ %116, %113 ]
  %121 = getelementptr inbounds nuw i8, ptr %84, i64 56
  %122 = load ptr, ptr %121, align 8, !tbaa !109
  %123 = icmp eq ptr %122, null
  br i1 %123, label %138, label %124

124:                                              ; preds = %119
  %125 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %120, i64 1), !nosanitize !45
  %126 = extractvalue { i64, i1 } %125, 1, !nosanitize !45
  br i1 %126, label %131, label %132, !prof !130, !nosanitize !45

127:                                              ; preds = %132
  %128 = getelementptr inbounds nuw i8, ptr %134, i64 1
  %129 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %135, i64 1), !nosanitize !45
  %130 = extractvalue { i64, i1 } %129, 1, !nosanitize !45
  br i1 %130, label %131, label %132, !prof !131, !llvm.loop !133, !nosanitize !45

131:                                              ; preds = %127, %124
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

132:                                              ; preds = %127, %124
  %133 = phi { i64, i1 } [ %129, %127 ], [ %125, %124 ]
  %134 = phi ptr [ %128, %127 ], [ %122, %124 ]
  %135 = extractvalue { i64, i1 } %133, 0, !nosanitize !45
  %136 = load i8, ptr %134, align 1, !tbaa !8
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %127, !llvm.loop !133

138:                                              ; preds = %132, %119
  %139 = phi i64 [ %120, %119 ], [ %135, %132 ]
  %140 = getelementptr inbounds nuw i8, ptr %84, i64 68
  %141 = load i32, ptr %140, align 4, !tbaa !114
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %150, label %143

143:                                              ; preds = %138
  %144 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %139, i64 2), !nosanitize !45
  %145 = extractvalue { i64, i1 } %144, 1, !nosanitize !45
  br i1 %145, label %146, label %147, !prof !46, !nosanitize !45

146:                                              ; preds = %143
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

147:                                              ; preds = %143
  %148 = extractvalue { i64, i1 } %144, 0, !nosanitize !45
  br label %150

149:                                              ; preds = %75
  br label %150

150:                                              ; preds = %149, %147, %138, %82, %77, %75
  %151 = phi i64 [ 18, %149 ], [ 18, %82 ], [ %81, %77 ], [ 0, %75 ], [ %148, %147 ], [ %139, %138 ]
  %152 = getelementptr inbounds nuw i8, ptr %52, i64 84
  %153 = load i32, ptr %152, align 4, !tbaa !31
  %154 = icmp eq i32 %153, 15
  %155 = getelementptr inbounds nuw i8, ptr %52, i64 136
  %156 = load i32, ptr %155, align 8, !tbaa !51
  %157 = icmp eq i32 %156, 15
  %158 = select i1 %154, i1 %157, i1 false
  br i1 %158, label %172, label %159

159:                                              ; preds = %150
  %160 = icmp ugt i32 %153, %156
  br i1 %160, label %165, label %161

161:                                              ; preds = %159
  %162 = getelementptr inbounds nuw i8, ptr %52, i64 196
  %163 = load i32, ptr %162, align 4, !tbaa !48
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %161, %159
  br label %166

166:                                              ; preds = %165, %161
  %167 = phi i64 [ %40, %165 ], [ %27, %161 ]
  %168 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %167, i64 %151), !nosanitize !45
  %169 = extractvalue { i64, i1 } %168, 0, !nosanitize !45
  %170 = extractvalue { i64, i1 } %168, 1, !nosanitize !45
  br i1 %170, label %171, label %192, !prof !46, !nosanitize !45

171:                                              ; preds = %166
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

172:                                              ; preds = %150
  %173 = lshr i64 %1, 12
  %174 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %173), !nosanitize !45
  %175 = extractvalue { i64, i1 } %174, 0, !nosanitize !45
  %176 = lshr i64 %1, 14
  %177 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %175, i64 %176), !nosanitize !45
  %178 = extractvalue { i64, i1 } %177, 0, !nosanitize !45
  %179 = lshr i64 %1, 25
  %180 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %178, i64 %179), !nosanitize !45
  %181 = extractvalue { i64, i1 } %180, 0, !nosanitize !45
  %182 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %181, i64 13), !nosanitize !45
  %183 = extractvalue { i64, i1 } %182, 0, !nosanitize !45
  %184 = add i64 %183, -6
  %185 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %184, i64 %151), !nosanitize !45
  %186 = extractvalue { i64, i1 } %185, 1, !nosanitize !45
  br i1 %186, label %187, label %188, !prof !46, !nosanitize !45

187:                                              ; preds = %172
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

188:                                              ; preds = %172
  %189 = extractvalue { i64, i1 } %185, 0, !nosanitize !45
  %190 = icmp ult i64 %189, %1
  %191 = select i1 %190, i64 -1, i64 %189
  br label %192

192:                                              ; preds = %188, %166, %60
  %193 = phi i64 [ %191, %188 ], [ %63, %60 ], [ %169, %166 ]
  ret i64 %193
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
  %30 = extractvalue { i64, i1 } %29, 0, !nosanitize !45
  %31 = lshr i64 %1, 7
  %32 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %30, i64 %31), !nosanitize !45
  %33 = extractvalue { i64, i1 } %32, 0, !nosanitize !45
  %34 = lshr i64 %1, 11
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %34), !nosanitize !45
  %36 = extractvalue { i64, i1 } %35, 0, !nosanitize !45
  %37 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %36, i64 7), !nosanitize !45
  %38 = extractvalue { i64, i1 } %37, 0, !nosanitize !45
  %39 = icmp ult i64 %38, %1
  %40 = select i1 %39, i64 -1, i64 %38
  %41 = icmp eq ptr %0, null
  br i1 %41, label %60, label %42

42:                                               ; preds = %24
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !15
  %45 = icmp eq ptr %44, null
  br i1 %45, label %60, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %48 = load ptr, ptr %47, align 8, !tbaa !17
  %49 = icmp eq ptr %48, null
  br i1 %49, label %60, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %52 = load ptr, ptr %51, align 8, !tbaa !19
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %52, align 8, !tbaa !20
  %56 = icmp eq ptr %55, %0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = getelementptr inbounds nuw i8, ptr %52, i64 8
  %59 = load i32, ptr %58, align 8, !tbaa !29
  switch i32 %59, label %60 [
    i32 42, label %66
    i32 57, label %66
    i32 69, label %66
    i32 73, label %66
    i32 91, label %66
    i32 103, label %66
    i32 113, label %66
    i32 666, label %66
  ]

60:                                               ; preds = %57, %54, %50, %46, %42, %24
  %61 = tail call i64 @llvm.umax.i64(i64 %27, i64 %40)
  %62 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %61, i64 18), !nosanitize !45
  %63 = extractvalue { i64, i1 } %62, 0, !nosanitize !45
  %64 = extractvalue { i64, i1 } %62, 1, !nosanitize !45
  br i1 %64, label %65, label %192, !prof !46, !nosanitize !45

65:                                               ; preds = %60
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

66:                                               ; preds = %57, %57, %57, %57, %57, %57, %57, %57
  %67 = getelementptr inbounds nuw i8, ptr %52, i64 48
  %68 = load i32, ptr %67, align 8, !tbaa !30
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %68), !nosanitize !45
  %72 = extractvalue { i32, i1 } %71, 0, !nosanitize !45
  %73 = extractvalue { i32, i1 } %71, 1, !nosanitize !45
  br i1 %73, label %74, label %75, !prof !46, !nosanitize !45

74:                                               ; preds = %70
  tail call void @llvm.ubsantrap(i8 13) #12, !nosanitize !45
  unreachable, !nosanitize !45

75:                                               ; preds = %70, %66
  %76 = phi i32 [ %72, %70 ], [ %68, %66 ]
  switch i32 %76, label %149 [
    i32 0, label %150
    i32 1, label %77
    i32 2, label %82
  ]

77:                                               ; preds = %75
  %78 = getelementptr inbounds nuw i8, ptr %52, i64 172
  %79 = load i32, ptr %78, align 4, !tbaa !73
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i64 6, i64 10
  br label %150

82:                                               ; preds = %75
  %83 = getelementptr inbounds nuw i8, ptr %52, i64 56
  %84 = load ptr, ptr %83, align 8, !tbaa !100
  %85 = icmp eq ptr %84, null
  br i1 %85, label %150, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds nuw i8, ptr %84, i64 24
  %88 = load ptr, ptr %87, align 8, !tbaa !112
  %89 = icmp eq ptr %88, null
  br i1 %89, label %100, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds nuw i8, ptr %84, i64 32
  %92 = load i32, ptr %91, align 8, !tbaa !117
  %93 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %92, i32 2), !nosanitize !45
  %94 = extractvalue { i32, i1 } %93, 1, !nosanitize !45
  br i1 %94, label %95, label %96, !prof !46, !nosanitize !45

95:                                               ; preds = %90
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

96:                                               ; preds = %90
  %97 = extractvalue { i32, i1 } %93, 0, !nosanitize !45
  %98 = zext i32 %97 to i64
  %99 = add nuw nsw i64 %98, 18
  br label %100

100:                                              ; preds = %96, %86
  %101 = phi i64 [ %99, %96 ], [ 18, %86 ]
  %102 = getelementptr inbounds nuw i8, ptr %84, i64 40
  %103 = load ptr, ptr %102, align 8, !tbaa !111
  %104 = icmp eq ptr %103, null
  br i1 %104, label %119, label %105

105:                                              ; preds = %100
  %106 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %101, i64 1), !nosanitize !45
  %107 = extractvalue { i64, i1 } %106, 1, !nosanitize !45
  br i1 %107, label %112, label %113, !prof !130, !nosanitize !45

108:                                              ; preds = %113
  %109 = getelementptr inbounds nuw i8, ptr %115, i64 1
  %110 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %116, i64 1), !nosanitize !45
  %111 = extractvalue { i64, i1 } %110, 1, !nosanitize !45
  br i1 %111, label %112, label %113, !prof !131, !llvm.loop !132, !nosanitize !45

112:                                              ; preds = %108, %105
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

113:                                              ; preds = %108, %105
  %114 = phi { i64, i1 } [ %110, %108 ], [ %106, %105 ]
  %115 = phi ptr [ %109, %108 ], [ %103, %105 ]
  %116 = extractvalue { i64, i1 } %114, 0, !nosanitize !45
  %117 = load i8, ptr %115, align 1, !tbaa !8
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %108, !llvm.loop !132

119:                                              ; preds = %113, %100
  %120 = phi i64 [ %101, %100 ], [ %116, %113 ]
  %121 = getelementptr inbounds nuw i8, ptr %84, i64 56
  %122 = load ptr, ptr %121, align 8, !tbaa !109
  %123 = icmp eq ptr %122, null
  br i1 %123, label %138, label %124

124:                                              ; preds = %119
  %125 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %120, i64 1), !nosanitize !45
  %126 = extractvalue { i64, i1 } %125, 1, !nosanitize !45
  br i1 %126, label %131, label %132, !prof !130, !nosanitize !45

127:                                              ; preds = %132
  %128 = getelementptr inbounds nuw i8, ptr %134, i64 1
  %129 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %135, i64 1), !nosanitize !45
  %130 = extractvalue { i64, i1 } %129, 1, !nosanitize !45
  br i1 %130, label %131, label %132, !prof !131, !llvm.loop !133, !nosanitize !45

131:                                              ; preds = %127, %124
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

132:                                              ; preds = %127, %124
  %133 = phi { i64, i1 } [ %129, %127 ], [ %125, %124 ]
  %134 = phi ptr [ %128, %127 ], [ %122, %124 ]
  %135 = extractvalue { i64, i1 } %133, 0, !nosanitize !45
  %136 = load i8, ptr %134, align 1, !tbaa !8
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %127, !llvm.loop !133

138:                                              ; preds = %132, %119
  %139 = phi i64 [ %120, %119 ], [ %135, %132 ]
  %140 = getelementptr inbounds nuw i8, ptr %84, i64 68
  %141 = load i32, ptr %140, align 4, !tbaa !114
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %150, label %143

143:                                              ; preds = %138
  %144 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %139, i64 2), !nosanitize !45
  %145 = extractvalue { i64, i1 } %144, 1, !nosanitize !45
  br i1 %145, label %146, label %147, !prof !46, !nosanitize !45

146:                                              ; preds = %143
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

147:                                              ; preds = %143
  %148 = extractvalue { i64, i1 } %144, 0, !nosanitize !45
  br label %150

149:                                              ; preds = %75
  br label %150

150:                                              ; preds = %149, %147, %138, %82, %77, %75
  %151 = phi i64 [ 18, %149 ], [ 18, %82 ], [ %81, %77 ], [ 0, %75 ], [ %148, %147 ], [ %139, %138 ]
  %152 = getelementptr inbounds nuw i8, ptr %52, i64 84
  %153 = load i32, ptr %152, align 4, !tbaa !31
  %154 = icmp eq i32 %153, 15
  %155 = getelementptr inbounds nuw i8, ptr %52, i64 136
  %156 = load i32, ptr %155, align 8, !tbaa !51
  %157 = icmp eq i32 %156, 15
  %158 = select i1 %154, i1 %157, i1 false
  br i1 %158, label %172, label %159

159:                                              ; preds = %150
  %160 = icmp ugt i32 %153, %156
  br i1 %160, label %165, label %161

161:                                              ; preds = %159
  %162 = getelementptr inbounds nuw i8, ptr %52, i64 196
  %163 = load i32, ptr %162, align 4, !tbaa !48
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %161, %159
  br label %166

166:                                              ; preds = %165, %161
  %167 = phi i64 [ %40, %165 ], [ %27, %161 ]
  %168 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %167, i64 %151), !nosanitize !45
  %169 = extractvalue { i64, i1 } %168, 0, !nosanitize !45
  %170 = extractvalue { i64, i1 } %168, 1, !nosanitize !45
  br i1 %170, label %171, label %192, !prof !46, !nosanitize !45

171:                                              ; preds = %166
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

172:                                              ; preds = %150
  %173 = lshr i64 %1, 12
  %174 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %173), !nosanitize !45
  %175 = extractvalue { i64, i1 } %174, 0, !nosanitize !45
  %176 = lshr i64 %1, 14
  %177 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %175, i64 %176), !nosanitize !45
  %178 = extractvalue { i64, i1 } %177, 0, !nosanitize !45
  %179 = lshr i64 %1, 25
  %180 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %178, i64 %179), !nosanitize !45
  %181 = extractvalue { i64, i1 } %180, 0, !nosanitize !45
  %182 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %181, i64 13), !nosanitize !45
  %183 = extractvalue { i64, i1 } %182, 0, !nosanitize !45
  %184 = add i64 %183, -6
  %185 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %184, i64 %151), !nosanitize !45
  %186 = extractvalue { i64, i1 } %185, 1, !nosanitize !45
  br i1 %186, label %187, label %188, !prof !46, !nosanitize !45

187:                                              ; preds = %172
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

188:                                              ; preds = %172
  %189 = extractvalue { i64, i1 } %185, 0, !nosanitize !45
  %190 = icmp ult i64 %189, %1
  %191 = select i1 %190, i64 -1, i64 %189
  br label %192

192:                                              ; preds = %188, %166, %60
  %193 = phi i64 [ %191, %188 ], [ %63, %60 ], [ %169, %166 ]
  ret i64 %193
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

27:                                               ; preds = %270, %8
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
  br i1 %38, label %274, label %39

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
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !45
  %58 = extractvalue { i32, i1 } %57, 0, !nosanitize !45
  br label %59

59:                                               ; preds = %56, %47
  %60 = phi i32 [ %58, %56 ], [ 65535, %47 ]
  %61 = tail call i32 @llvm.umin.i32(i32 %60, i32 %40)
  %62 = icmp ult i32 %61, %14
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = icmp eq i32 %61, 0
  %65 = and i1 %21, %64
  %66 = or i1 %22, %65
  br i1 %66, label %274, label %67

67:                                               ; preds = %63
  %68 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !45
  %69 = extractvalue { i32, i1 } %68, 1, !nosanitize !45
  br i1 %69, label %70, label %71, !prof !46, !nosanitize !45

70:                                               ; preds = %67
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

71:                                               ; preds = %67
  %72 = extractvalue { i32, i1 } %68, 0, !nosanitize !45
  %73 = icmp eq i32 %61, %72
  br i1 %73, label %74, label %274

74:                                               ; preds = %71, %59
  br i1 %23, label %75, label %83

75:                                               ; preds = %74
  %76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !45
  %77 = extractvalue { i32, i1 } %76, 1, !nosanitize !45
  br i1 %77, label %78, label %79, !prof !46, !nosanitize !45

78:                                               ; preds = %75
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

79:                                               ; preds = %75
  %80 = extractvalue { i32, i1 } %76, 0, !nosanitize !45
  %81 = icmp eq i32 %61, %80
  %82 = zext i1 %81 to i32
  br label %83

83:                                               ; preds = %79, %74
  %84 = phi i32 [ 0, %74 ], [ %82, %79 ]
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i32 noundef %84) #10
  %85 = load i64, ptr %25, align 8, !tbaa !57
  %86 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %85, i64 4), !nosanitize !45
  %87 = extractvalue { i64, i1 } %86, 1, !nosanitize !45
  br i1 %87, label %88, label %89, !prof !46, !nosanitize !45

88:                                               ; preds = %83
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

89:                                               ; preds = %83
  %90 = extractvalue { i64, i1 } %86, 0, !nosanitize !45
  %91 = load ptr, ptr %24, align 8, !tbaa !40
  %92 = trunc i32 %61 to i8
  %93 = getelementptr inbounds nuw i8, ptr %91, i64 %90
  store i8 %92, ptr %93, align 1, !tbaa !8
  %94 = load i64, ptr %25, align 8, !tbaa !57
  %95 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %94, i64 3), !nosanitize !45
  %96 = extractvalue { i64, i1 } %95, 1, !nosanitize !45
  br i1 %96, label %97, label %98, !prof !46, !nosanitize !45

97:                                               ; preds = %89
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

98:                                               ; preds = %89
  %99 = extractvalue { i64, i1 } %95, 0, !nosanitize !45
  %100 = load ptr, ptr %24, align 8, !tbaa !40
  %101 = lshr i32 %61, 8
  %102 = trunc i32 %101 to i8
  %103 = getelementptr inbounds nuw i8, ptr %100, i64 %99
  store i8 %102, ptr %103, align 1, !tbaa !8
  %104 = load i64, ptr %25, align 8, !tbaa !57
  %105 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %104, i64 2), !nosanitize !45
  %106 = extractvalue { i64, i1 } %105, 1, !nosanitize !45
  br i1 %106, label %107, label %108, !prof !46, !nosanitize !45

107:                                              ; preds = %98
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

108:                                              ; preds = %98
  %109 = extractvalue { i64, i1 } %105, 0, !nosanitize !45
  %110 = load ptr, ptr %24, align 8, !tbaa !40
  %111 = xor i32 %61, -1
  %112 = trunc i32 %111 to i8
  %113 = getelementptr inbounds nuw i8, ptr %110, i64 %109
  store i8 %112, ptr %113, align 1, !tbaa !8
  %114 = load i64, ptr %25, align 8, !tbaa !57
  %115 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %114, i64 1), !nosanitize !45
  %116 = extractvalue { i64, i1 } %115, 1, !nosanitize !45
  br i1 %116, label %117, label %118, !prof !46, !nosanitize !45

117:                                              ; preds = %108
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

118:                                              ; preds = %108
  %119 = extractvalue { i64, i1 } %115, 0, !nosanitize !45
  %120 = load ptr, ptr %24, align 8, !tbaa !40
  %121 = lshr i32 %111, 8
  %122 = trunc i32 %121 to i8
  %123 = getelementptr inbounds nuw i8, ptr %120, i64 %119
  store i8 %122, ptr %123, align 1, !tbaa !8
  %124 = load ptr, ptr %0, align 8, !tbaa !20
  %125 = getelementptr inbounds nuw i8, ptr %124, i64 56
  %126 = load ptr, ptr %125, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %126) #10
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 40
  %128 = load i64, ptr %127, align 8, !tbaa !57
  %129 = getelementptr inbounds nuw i8, ptr %124, i64 32
  %130 = load i32, ptr %129, align 8, !tbaa !107
  %131 = zext i32 %130 to i64
  %132 = tail call i64 @llvm.umin.i64(i64 %128, i64 %131)
  %133 = trunc nuw i64 %132 to i32
  %134 = icmp eq i64 %132, 0
  br i1 %134, label %167, label %135

135:                                              ; preds = %118
  %136 = getelementptr inbounds nuw i8, ptr %124, i64 24
  %137 = load ptr, ptr %136, align 8, !tbaa !106
  %138 = getelementptr inbounds nuw i8, ptr %126, i64 32
  %139 = load ptr, ptr %138, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %137, ptr align 1 %139, i64 %132, i1 false)
  %140 = load ptr, ptr %136, align 8, !tbaa !106
  %141 = getelementptr inbounds nuw i8, ptr %140, i64 %132
  store ptr %141, ptr %136, align 8, !tbaa !106
  %142 = load ptr, ptr %138, align 8, !tbaa !58
  %143 = getelementptr inbounds nuw i8, ptr %142, i64 %132
  store ptr %143, ptr %138, align 8, !tbaa !58
  %144 = getelementptr inbounds nuw i8, ptr %124, i64 40
  %145 = load i64, ptr %144, align 8, !tbaa !108
  %146 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %145, i64 %132), !nosanitize !45
  %147 = extractvalue { i64, i1 } %146, 1, !nosanitize !45
  br i1 %147, label %148, label %149, !prof !46, !nosanitize !45

148:                                              ; preds = %135
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

149:                                              ; preds = %135
  %150 = extractvalue { i64, i1 } %146, 0, !nosanitize !45
  store i64 %150, ptr %144, align 8, !tbaa !108
  %151 = load i32, ptr %129, align 8, !tbaa !107
  %152 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %151, i32 %133), !nosanitize !45
  %153 = extractvalue { i32, i1 } %152, 1, !nosanitize !45
  br i1 %153, label %154, label %155, !prof !46, !nosanitize !45

154:                                              ; preds = %149
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

155:                                              ; preds = %149
  %156 = extractvalue { i32, i1 } %152, 0, !nosanitize !45
  store i32 %156, ptr %129, align 8, !tbaa !107
  %157 = load i64, ptr %127, align 8, !tbaa !57
  %158 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %157, i64 %132), !nosanitize !45
  %159 = extractvalue { i64, i1 } %158, 1, !nosanitize !45
  br i1 %159, label %160, label %161, !prof !46, !nosanitize !45

160:                                              ; preds = %155
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

161:                                              ; preds = %155
  %162 = extractvalue { i64, i1 } %158, 0, !nosanitize !45
  store i64 %162, ptr %127, align 8, !tbaa !57
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = getelementptr inbounds nuw i8, ptr %126, i64 16
  %166 = load ptr, ptr %165, align 8, !tbaa !40
  store ptr %166, ptr %138, align 8, !tbaa !58
  br label %167

167:                                              ; preds = %164, %161, %118
  %168 = icmp eq i32 %49, 0
  br i1 %168, label %206, label %169

169:                                              ; preds = %167
  %170 = tail call i32 @llvm.umin.i32(i32 %61, i32 %49)
  %171 = load ptr, ptr %0, align 8, !tbaa !20
  %172 = getelementptr inbounds nuw i8, ptr %171, i64 24
  %173 = load ptr, ptr %172, align 8, !tbaa !106
  %174 = load ptr, ptr %26, align 8, !tbaa !34
  %175 = load i64, ptr %20, align 8, !tbaa !74
  %176 = getelementptr inbounds i8, ptr %174, i64 %175
  %177 = zext i32 %170 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %173, ptr align 1 %176, i64 %177, i1 false)
  %178 = load ptr, ptr %0, align 8, !tbaa !20
  %179 = getelementptr inbounds nuw i8, ptr %178, i64 24
  %180 = load ptr, ptr %179, align 8, !tbaa !106
  %181 = getelementptr inbounds nuw i8, ptr %180, i64 %177
  store ptr %181, ptr %179, align 8, !tbaa !106
  %182 = getelementptr inbounds nuw i8, ptr %178, i64 32
  %183 = load i32, ptr %182, align 8, !tbaa !107
  %184 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %183, i32 %170), !nosanitize !45
  %185 = extractvalue { i32, i1 } %184, 1, !nosanitize !45
  br i1 %185, label %186, label %187, !prof !46, !nosanitize !45

186:                                              ; preds = %169
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

187:                                              ; preds = %169
  %188 = extractvalue { i32, i1 } %184, 0, !nosanitize !45
  store i32 %188, ptr %182, align 8, !tbaa !107
  %189 = getelementptr inbounds nuw i8, ptr %178, i64 40
  %190 = load i64, ptr %189, align 8, !tbaa !108
  %191 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %190, i64 %177), !nosanitize !45
  %192 = extractvalue { i64, i1 } %191, 1, !nosanitize !45
  br i1 %192, label %193, label %194, !prof !46, !nosanitize !45

193:                                              ; preds = %194, %187
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

194:                                              ; preds = %187
  %195 = extractvalue { i64, i1 } %191, 0, !nosanitize !45
  store i64 %195, ptr %189, align 8, !tbaa !108
  %196 = load i64, ptr %20, align 8, !tbaa !74
  %197 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %196, i64 %177), !nosanitize !45
  %198 = extractvalue { i64, i1 } %197, 1, !nosanitize !45
  br i1 %198, label %193, label %199, !prof !46, !nosanitize !45

199:                                              ; preds = %194
  %200 = extractvalue { i64, i1 } %197, 0, !nosanitize !45
  store i64 %200, ptr %20, align 8, !tbaa !74
  %201 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %61, i32 %170), !nosanitize !45
  %202 = extractvalue { i32, i1 } %201, 1, !nosanitize !45
  br i1 %202, label %203, label %204, !prof !46, !nosanitize !45

203:                                              ; preds = %199
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

204:                                              ; preds = %199
  %205 = extractvalue { i32, i1 } %201, 0, !nosanitize !45
  br label %206

206:                                              ; preds = %204, %167
  %207 = phi i32 [ %205, %204 ], [ %61, %167 ]
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %270, label %209

209:                                              ; preds = %206
  %210 = load ptr, ptr %0, align 8, !tbaa !20
  %211 = getelementptr inbounds nuw i8, ptr %210, i64 24
  %212 = load ptr, ptr %211, align 8, !tbaa !106
  %213 = getelementptr inbounds nuw i8, ptr %210, i64 8
  %214 = load i32, ptr %213, align 8, !tbaa !81
  %215 = tail call i32 @llvm.umin.i32(i32 %214, i32 %207)
  %216 = icmp eq i32 %214, 0
  br i1 %216, label %250, label %217

217:                                              ; preds = %209
  %218 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %214, i32 %215), !nosanitize !45
  %219 = extractvalue { i32, i1 } %218, 1, !nosanitize !45
  br i1 %219, label %220, label %221, !prof !46, !nosanitize !45

220:                                              ; preds = %217
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

221:                                              ; preds = %217
  %222 = extractvalue { i32, i1 } %218, 0, !nosanitize !45
  store i32 %222, ptr %213, align 8, !tbaa !81
  %223 = load ptr, ptr %210, align 8, !tbaa !82
  %224 = zext i32 %215 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %212, ptr align 1 %223, i64 %224, i1 false)
  %225 = getelementptr inbounds nuw i8, ptr %210, i64 56
  %226 = load ptr, ptr %225, align 8, !tbaa !19
  %227 = getelementptr inbounds nuw i8, ptr %226, i64 48
  %228 = load i32, ptr %227, align 8, !tbaa !30
  switch i32 %228, label %237 [
    i32 1, label %229
    i32 2, label %233
  ]

229:                                              ; preds = %221
  %230 = getelementptr inbounds nuw i8, ptr %210, i64 96
  %231 = load i64, ptr %230, align 8, !tbaa !59
  %232 = tail call i64 @adler32(i64 noundef %231, ptr noundef %212, i32 noundef %215) #10
  store i64 %232, ptr %230, align 8, !tbaa !59
  br label %237

233:                                              ; preds = %221
  %234 = getelementptr inbounds nuw i8, ptr %210, i64 96
  %235 = load i64, ptr %234, align 8, !tbaa !59
  %236 = tail call i64 @crc32(i64 noundef %235, ptr noundef %212, i32 noundef %215) #10
  store i64 %236, ptr %234, align 8, !tbaa !59
  br label %237

237:                                              ; preds = %233, %229, %221
  %238 = load ptr, ptr %210, align 8, !tbaa !82
  %239 = getelementptr inbounds nuw i8, ptr %238, i64 %224
  store ptr %239, ptr %210, align 8, !tbaa !82
  %240 = getelementptr inbounds nuw i8, ptr %210, i64 16
  %241 = load i64, ptr %240, align 8, !tbaa !55
  %242 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %241, i64 %224), !nosanitize !45
  %243 = extractvalue { i64, i1 } %242, 1, !nosanitize !45
  br i1 %243, label %244, label %245, !prof !46, !nosanitize !45

244:                                              ; preds = %237
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

245:                                              ; preds = %237
  %246 = extractvalue { i64, i1 } %242, 0, !nosanitize !45
  store i64 %246, ptr %240, align 8, !tbaa !55
  %247 = load ptr, ptr %0, align 8, !tbaa !20
  %248 = getelementptr inbounds nuw i8, ptr %247, i64 24
  %249 = load ptr, ptr %248, align 8, !tbaa !106
  br label %250

250:                                              ; preds = %245, %209
  %251 = phi ptr [ %212, %209 ], [ %249, %245 ]
  %252 = phi ptr [ %210, %209 ], [ %247, %245 ]
  %253 = getelementptr inbounds nuw i8, ptr %252, i64 24
  %254 = zext i32 %207 to i64
  %255 = getelementptr inbounds nuw i8, ptr %251, i64 %254
  store ptr %255, ptr %253, align 8, !tbaa !106
  %256 = getelementptr inbounds nuw i8, ptr %252, i64 32
  %257 = load i32, ptr %256, align 8, !tbaa !107
  %258 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %257, i32 %207), !nosanitize !45
  %259 = extractvalue { i32, i1 } %258, 1, !nosanitize !45
  br i1 %259, label %260, label %261, !prof !46, !nosanitize !45

260:                                              ; preds = %250
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

261:                                              ; preds = %250
  %262 = extractvalue { i32, i1 } %258, 0, !nosanitize !45
  store i32 %262, ptr %256, align 8, !tbaa !107
  %263 = getelementptr inbounds nuw i8, ptr %252, i64 40
  %264 = load i64, ptr %263, align 8, !tbaa !108
  %265 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %264, i64 %254), !nosanitize !45
  %266 = extractvalue { i64, i1 } %265, 1, !nosanitize !45
  br i1 %266, label %267, label %268, !prof !46, !nosanitize !45

267:                                              ; preds = %261
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

268:                                              ; preds = %261
  %269 = extractvalue { i64, i1 } %265, 0, !nosanitize !45
  store i64 %269, ptr %263, align 8, !tbaa !108
  br label %270

270:                                              ; preds = %268, %206
  %271 = icmp eq i32 %84, 0
  br i1 %271, label %27, label %272, !llvm.loop !134

272:                                              ; preds = %270
  %273 = load ptr, ptr %0, align 8, !tbaa !20
  br label %274, !llvm.loop !134

274:                                              ; preds = %272, %71, %63, %32
  %275 = phi ptr [ %273, %272 ], [ %35, %32 ], [ %35, %63 ], [ %35, %71 ]
  %276 = phi i1 [ false, %272 ], [ true, %32 ], [ true, %63 ], [ true, %71 ]
  %277 = getelementptr inbounds nuw i8, ptr %275, i64 8
  %278 = load i32, ptr %277, align 8, !tbaa !81
  %279 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %17, i32 %278), !nosanitize !45
  %280 = extractvalue { i32, i1 } %279, 0, !nosanitize !45
  %281 = extractvalue { i32, i1 } %279, 1, !nosanitize !45
  br i1 %281, label %282, label %283, !prof !46, !nosanitize !45

282:                                              ; preds = %274
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

283:                                              ; preds = %274
  %284 = icmp eq i32 %280, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %283
  %286 = load i32, ptr %19, align 4, !tbaa !73
  %287 = zext i32 %286 to i64
  br label %365

288:                                              ; preds = %283
  %289 = load i32, ptr %10, align 8, !tbaa !32
  %290 = icmp ult i32 %280, %289
  br i1 %290, label %300, label %291

291:                                              ; preds = %288
  %292 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 2, ptr %292, align 8, !tbaa !125
  %293 = load ptr, ptr %26, align 8, !tbaa !34
  %294 = load ptr, ptr %275, align 8, !tbaa !82
  %295 = zext i32 %289 to i64
  %296 = sub nsw i64 0, %295
  %297 = getelementptr inbounds i8, ptr %294, i64 %296
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %293, ptr align 1 %297, i64 %295, i1 false)
  %298 = load i32, ptr %10, align 8, !tbaa !32
  store i32 %298, ptr %19, align 4, !tbaa !73
  %299 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %298, ptr %299, align 4, !tbaa !76
  br label %362

300:                                              ; preds = %288
  %301 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %302 = load i64, ptr %301, align 8, !tbaa !61
  %303 = load i32, ptr %19, align 4, !tbaa !73
  %304 = zext i32 %303 to i64
  %305 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %302, i64 %304), !nosanitize !45
  %306 = extractvalue { i64, i1 } %305, 1, !nosanitize !45
  br i1 %306, label %307, label %308, !prof !46, !nosanitize !45

307:                                              ; preds = %300
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

308:                                              ; preds = %300
  %309 = extractvalue { i64, i1 } %305, 0, !nosanitize !45
  %310 = zext i32 %280 to i64
  %311 = icmp ugt i64 %309, %310
  br i1 %311, label %333, label %312

312:                                              ; preds = %308
  %313 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %303, i32 %289), !nosanitize !45
  %314 = extractvalue { i32, i1 } %313, 1, !nosanitize !45
  br i1 %314, label %315, label %316, !prof !46, !nosanitize !45

315:                                              ; preds = %312
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

316:                                              ; preds = %312
  %317 = extractvalue { i32, i1 } %313, 0, !nosanitize !45
  store i32 %317, ptr %19, align 4, !tbaa !73
  %318 = load ptr, ptr %26, align 8, !tbaa !34
  %319 = zext i32 %289 to i64
  %320 = getelementptr inbounds nuw i8, ptr %318, i64 %319
  %321 = zext i32 %317 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %318, ptr nonnull align 1 %320, i64 %321, i1 false)
  %322 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %323 = load i32, ptr %322, align 8, !tbaa !125
  %324 = icmp ult i32 %323, 2
  br i1 %324, label %325, label %327

325:                                              ; preds = %316
  %326 = add nuw nsw i32 %323, 1
  store i32 %326, ptr %322, align 8, !tbaa !125
  br label %327

327:                                              ; preds = %325, %316
  %328 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %329 = load i32, ptr %328, align 4, !tbaa !76
  %330 = load i32, ptr %19, align 4, !tbaa !73
  %331 = icmp ugt i32 %329, %330
  br i1 %331, label %332, label %333

332:                                              ; preds = %327
  store i32 %330, ptr %328, align 4, !tbaa !76
  br label %333

333:                                              ; preds = %332, %327, %308
  %334 = phi i32 [ %330, %327 ], [ %330, %332 ], [ %303, %308 ]
  %335 = load ptr, ptr %26, align 8, !tbaa !34
  %336 = zext i32 %334 to i64
  %337 = getelementptr inbounds nuw i8, ptr %335, i64 %336
  %338 = load ptr, ptr %0, align 8, !tbaa !20
  %339 = load ptr, ptr %338, align 8, !tbaa !82
  %340 = sub nsw i64 0, %310
  %341 = getelementptr inbounds i8, ptr %339, i64 %340
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %337, ptr nonnull align 1 %341, i64 %310, i1 false)
  %342 = load i32, ptr %19, align 4, !tbaa !73
  %343 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %342, i32 %280), !nosanitize !45
  %344 = extractvalue { i32, i1 } %343, 1, !nosanitize !45
  br i1 %344, label %345, label %346, !prof !46, !nosanitize !45

345:                                              ; preds = %333
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

346:                                              ; preds = %333
  %347 = extractvalue { i32, i1 } %343, 0, !nosanitize !45
  store i32 %347, ptr %19, align 4, !tbaa !73
  %348 = load i32, ptr %10, align 8, !tbaa !32
  %349 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %350 = load i32, ptr %349, align 4, !tbaa !76
  %351 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %348, i32 %350), !nosanitize !45
  %352 = extractvalue { i32, i1 } %351, 1, !nosanitize !45
  br i1 %352, label %353, label %354, !prof !46, !nosanitize !45

353:                                              ; preds = %346
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

354:                                              ; preds = %346
  %355 = extractvalue { i32, i1 } %351, 0, !nosanitize !45
  %356 = tail call i32 @llvm.umin.i32(i32 %280, i32 %355)
  %357 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %350, i32 %356), !nosanitize !45
  %358 = extractvalue { i32, i1 } %357, 1, !nosanitize !45
  br i1 %358, label %359, label %360, !prof !46, !nosanitize !45

359:                                              ; preds = %354
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

360:                                              ; preds = %354
  %361 = extractvalue { i32, i1 } %357, 0, !nosanitize !45
  store i32 %361, ptr %349, align 4, !tbaa !76
  br label %362

362:                                              ; preds = %360, %291
  %363 = phi i32 [ %347, %360 ], [ %298, %291 ]
  %364 = zext i32 %363 to i64
  store i64 %364, ptr %20, align 8, !tbaa !74
  br label %365

365:                                              ; preds = %362, %285
  %366 = phi i64 [ %287, %285 ], [ %364, %362 ]
  %367 = phi i32 [ %286, %285 ], [ %363, %362 ]
  %368 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %369 = load i64, ptr %368, align 8, !tbaa !38
  %370 = icmp ult i64 %369, %366
  br i1 %370, label %371, label %372

371:                                              ; preds = %365
  store i64 %366, ptr %368, align 8, !tbaa !38
  br label %372

372:                                              ; preds = %371, %365
  br i1 %276, label %373, label %596

373:                                              ; preds = %372
  %374 = icmp ne i32 %1, 0
  switch i32 %1, label %375 [
    i32 4, label %383
    i32 0, label %383
  ]

375:                                              ; preds = %373
  %376 = load ptr, ptr %0, align 8, !tbaa !20
  %377 = getelementptr inbounds nuw i8, ptr %376, i64 8
  %378 = load i32, ptr %377, align 8, !tbaa !81
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %375
  %381 = load i64, ptr %20, align 8, !tbaa !74
  %382 = icmp eq i64 %381, %366
  br i1 %382, label %599, label %383

383:                                              ; preds = %380, %375, %373, %373
  %384 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %385 = load i64, ptr %384, align 8, !tbaa !61
  %386 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %385, i64 %366), !nosanitize !45
  %387 = extractvalue { i64, i1 } %386, 1, !nosanitize !45
  br i1 %387, label %388, label %389, !prof !46, !nosanitize !45

388:                                              ; preds = %383
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

389:                                              ; preds = %383
  %390 = extractvalue { i64, i1 } %386, 0, !nosanitize !45
  %391 = trunc i64 %390 to i32
  %392 = load ptr, ptr %0, align 8, !tbaa !20
  %393 = getelementptr inbounds nuw i8, ptr %392, i64 8
  %394 = load i32, ptr %393, align 8, !tbaa !81
  %395 = icmp ugt i32 %394, %391
  br i1 %395, label %396, label %428

396:                                              ; preds = %389
  %397 = load i64, ptr %20, align 8, !tbaa !74
  %398 = load i32, ptr %10, align 8, !tbaa !32
  %399 = zext i32 %398 to i64
  %400 = icmp slt i64 %397, %399
  br i1 %400, label %428, label %401

401:                                              ; preds = %396
  %402 = sub nsw i64 %397, %399
  store i64 %402, ptr %20, align 8, !tbaa !74
  %403 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %367, i32 %398), !nosanitize !45
  %404 = extractvalue { i32, i1 } %403, 1, !nosanitize !45
  br i1 %404, label %405, label %406, !prof !46, !nosanitize !45

405:                                              ; preds = %401
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

406:                                              ; preds = %401
  %407 = extractvalue { i32, i1 } %403, 0, !nosanitize !45
  store i32 %407, ptr %19, align 4, !tbaa !73
  %408 = load ptr, ptr %26, align 8, !tbaa !34
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 %399
  %410 = zext i32 %407 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %408, ptr align 1 %409, i64 %410, i1 false)
  %411 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %412 = load i32, ptr %411, align 8, !tbaa !125
  %413 = icmp ult i32 %412, 2
  br i1 %413, label %414, label %416

414:                                              ; preds = %406
  %415 = add nuw nsw i32 %412, 1
  store i32 %415, ptr %411, align 8, !tbaa !125
  br label %416

416:                                              ; preds = %414, %406
  %417 = load i32, ptr %10, align 8, !tbaa !32
  %418 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %391, i32 %417), !nosanitize !45
  %419 = extractvalue { i32, i1 } %418, 0, !nosanitize !45
  %420 = extractvalue { i32, i1 } %418, 1, !nosanitize !45
  br i1 %420, label %421, label %422, !prof !46, !nosanitize !45

421:                                              ; preds = %416
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

422:                                              ; preds = %416
  %423 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %424 = load i32, ptr %423, align 4, !tbaa !76
  %425 = load i32, ptr %19, align 4, !tbaa !73
  %426 = icmp ugt i32 %424, %425
  br i1 %426, label %427, label %428

427:                                              ; preds = %422
  store i32 %425, ptr %423, align 4, !tbaa !76
  br label %428

428:                                              ; preds = %427, %422, %396, %389
  %429 = phi i32 [ %425, %427 ], [ %425, %422 ], [ %367, %396 ], [ %367, %389 ]
  %430 = phi i32 [ %419, %427 ], [ %419, %422 ], [ %391, %396 ], [ %391, %389 ]
  %431 = load ptr, ptr %0, align 8, !tbaa !20
  %432 = getelementptr inbounds nuw i8, ptr %431, i64 8
  %433 = load i32, ptr %432, align 8, !tbaa !81
  %434 = tail call i32 @llvm.umin.i32(i32 %430, i32 %433)
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %489, label %436

436:                                              ; preds = %428
  %437 = load ptr, ptr %26, align 8, !tbaa !34
  %438 = zext i32 %429 to i64
  %439 = getelementptr inbounds nuw i8, ptr %437, i64 %438
  %440 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %433, i32 %434), !nosanitize !45
  %441 = extractvalue { i32, i1 } %440, 1, !nosanitize !45
  br i1 %441, label %442, label %443, !prof !46, !nosanitize !45

442:                                              ; preds = %436
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

443:                                              ; preds = %436
  %444 = extractvalue { i32, i1 } %440, 0, !nosanitize !45
  store i32 %444, ptr %432, align 8, !tbaa !81
  %445 = load ptr, ptr %431, align 8, !tbaa !82
  %446 = zext i32 %434 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %439, ptr align 1 %445, i64 %446, i1 false)
  %447 = getelementptr inbounds nuw i8, ptr %431, i64 56
  %448 = load ptr, ptr %447, align 8, !tbaa !19
  %449 = getelementptr inbounds nuw i8, ptr %448, i64 48
  %450 = load i32, ptr %449, align 8, !tbaa !30
  switch i32 %450, label %459 [
    i32 1, label %451
    i32 2, label %455
  ]

451:                                              ; preds = %443
  %452 = getelementptr inbounds nuw i8, ptr %431, i64 96
  %453 = load i64, ptr %452, align 8, !tbaa !59
  %454 = tail call i64 @adler32(i64 noundef %453, ptr noundef %439, i32 noundef %434) #10
  store i64 %454, ptr %452, align 8, !tbaa !59
  br label %459

455:                                              ; preds = %443
  %456 = getelementptr inbounds nuw i8, ptr %431, i64 96
  %457 = load i64, ptr %456, align 8, !tbaa !59
  %458 = tail call i64 @crc32(i64 noundef %457, ptr noundef %439, i32 noundef %434) #10
  store i64 %458, ptr %456, align 8, !tbaa !59
  br label %459

459:                                              ; preds = %455, %451, %443
  %460 = load ptr, ptr %431, align 8, !tbaa !82
  %461 = getelementptr inbounds nuw i8, ptr %460, i64 %446
  store ptr %461, ptr %431, align 8, !tbaa !82
  %462 = getelementptr inbounds nuw i8, ptr %431, i64 16
  %463 = load i64, ptr %462, align 8, !tbaa !55
  %464 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %463, i64 %446), !nosanitize !45
  %465 = extractvalue { i64, i1 } %464, 1, !nosanitize !45
  br i1 %465, label %466, label %467, !prof !46, !nosanitize !45

466:                                              ; preds = %459
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

467:                                              ; preds = %459
  %468 = extractvalue { i64, i1 } %464, 0, !nosanitize !45
  store i64 %468, ptr %462, align 8, !tbaa !55
  %469 = load i32, ptr %19, align 4, !tbaa !73
  %470 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %469, i32 %434), !nosanitize !45
  %471 = extractvalue { i32, i1 } %470, 1, !nosanitize !45
  br i1 %471, label %472, label %473, !prof !46, !nosanitize !45

472:                                              ; preds = %467
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

473:                                              ; preds = %467
  %474 = extractvalue { i32, i1 } %470, 0, !nosanitize !45
  store i32 %474, ptr %19, align 4, !tbaa !73
  %475 = load i32, ptr %10, align 8, !tbaa !32
  %476 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %477 = load i32, ptr %476, align 4, !tbaa !76
  %478 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %475, i32 %477), !nosanitize !45
  %479 = extractvalue { i32, i1 } %478, 1, !nosanitize !45
  br i1 %479, label %480, label %481, !prof !46, !nosanitize !45

480:                                              ; preds = %473
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

481:                                              ; preds = %473
  %482 = extractvalue { i32, i1 } %478, 0, !nosanitize !45
  %483 = tail call i32 @llvm.umin.i32(i32 %434, i32 %482)
  %484 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %477, i32 %483), !nosanitize !45
  %485 = extractvalue { i32, i1 } %484, 1, !nosanitize !45
  br i1 %485, label %486, label %487, !prof !46, !nosanitize !45

486:                                              ; preds = %481
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

487:                                              ; preds = %481
  %488 = extractvalue { i32, i1 } %484, 0, !nosanitize !45
  store i32 %488, ptr %476, align 4, !tbaa !76
  br label %489

489:                                              ; preds = %487, %428
  %490 = phi i32 [ %474, %487 ], [ %429, %428 ]
  %491 = load i64, ptr %368, align 8, !tbaa !38
  %492 = zext i32 %490 to i64
  %493 = icmp ult i64 %491, %492
  br i1 %493, label %494, label %495

494:                                              ; preds = %489
  store i64 %492, ptr %368, align 8, !tbaa !38
  br label %495

495:                                              ; preds = %494, %489
  %496 = load i32, ptr %18, align 4, !tbaa !101
  %497 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %496, i32 42), !nosanitize !45
  %498 = extractvalue { i32, i1 } %497, 1, !nosanitize !45
  br i1 %498, label %499, label %500, !prof !46, !nosanitize !45

499:                                              ; preds = %541, %495
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

500:                                              ; preds = %495
  %501 = extractvalue { i32, i1 } %497, 0, !nosanitize !45
  %502 = lshr i32 %501, 3
  %503 = load i64, ptr %3, align 8, !tbaa !41
  %504 = zext nneg i32 %502 to i64
  %505 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %503, i64 %504), !nosanitize !45
  %506 = extractvalue { i64, i1 } %505, 1, !nosanitize !45
  br i1 %506, label %507, label %508, !prof !46, !nosanitize !45

507:                                              ; preds = %500
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

508:                                              ; preds = %500
  %509 = extractvalue { i64, i1 } %505, 0, !nosanitize !45
  %510 = tail call i64 @llvm.umin.i64(i64 %509, i64 65535)
  %511 = trunc nuw nsw i64 %510 to i32
  %512 = load i64, ptr %20, align 8, !tbaa !74
  %513 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %492, i64 %512), !nosanitize !45
  %514 = extractvalue { i64, i1 } %513, 1, !nosanitize !45
  br i1 %514, label %515, label %516, !prof !46, !nosanitize !45

515:                                              ; preds = %508
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

516:                                              ; preds = %508
  %517 = load i32, ptr %10, align 8, !tbaa !32
  %518 = tail call i32 @llvm.umin.i32(i32 %517, i32 %511)
  %519 = extractvalue { i64, i1 } %513, 0, !nosanitize !45
  %520 = trunc i64 %519 to i32
  %521 = icmp ugt i32 %518, %520
  br i1 %521, label %522, label %531

522:                                              ; preds = %516
  %523 = icmp ne i32 %520, 0
  %524 = or i1 %23, %523
  %525 = and i1 %374, %524
  br i1 %525, label %526, label %599

526:                                              ; preds = %522
  %527 = load ptr, ptr %0, align 8, !tbaa !20
  %528 = getelementptr inbounds nuw i8, ptr %527, i64 8
  %529 = load i32, ptr %528, align 8, !tbaa !81
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %531, label %599

531:                                              ; preds = %526, %516
  %532 = tail call i32 @llvm.umin.i32(i32 %511, i32 %520)
  br i1 %23, label %533, label %541

533:                                              ; preds = %531
  %534 = load ptr, ptr %0, align 8, !tbaa !20
  %535 = getelementptr inbounds nuw i8, ptr %534, i64 8
  %536 = load i32, ptr %535, align 8, !tbaa !81
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %541

538:                                              ; preds = %533
  %539 = icmp uge i32 %511, %520
  %540 = zext i1 %539 to i32
  br label %541

541:                                              ; preds = %538, %533, %531
  %542 = phi i32 [ 0, %533 ], [ 0, %531 ], [ %540, %538 ]
  %543 = load ptr, ptr %26, align 8, !tbaa !34
  %544 = getelementptr inbounds i8, ptr %543, i64 %512
  %545 = zext nneg i32 %532 to i64
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef %544, i64 noundef %545, i32 noundef %542) #10
  %546 = load i64, ptr %20, align 8, !tbaa !74
  %547 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %546, i64 %545), !nosanitize !45
  %548 = extractvalue { i64, i1 } %547, 1, !nosanitize !45
  br i1 %548, label %499, label %549, !prof !46, !nosanitize !45

549:                                              ; preds = %541
  %550 = extractvalue { i64, i1 } %547, 0, !nosanitize !45
  store i64 %550, ptr %20, align 8, !tbaa !74
  %551 = load ptr, ptr %0, align 8, !tbaa !20
  %552 = getelementptr inbounds nuw i8, ptr %551, i64 56
  %553 = load ptr, ptr %552, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %553) #10
  %554 = getelementptr inbounds nuw i8, ptr %553, i64 40
  %555 = load i64, ptr %554, align 8, !tbaa !57
  %556 = getelementptr inbounds nuw i8, ptr %551, i64 32
  %557 = load i32, ptr %556, align 8, !tbaa !107
  %558 = zext i32 %557 to i64
  %559 = tail call i64 @llvm.umin.i64(i64 %555, i64 %558)
  %560 = trunc nuw i64 %559 to i32
  %561 = icmp eq i64 %559, 0
  br i1 %561, label %594, label %562

562:                                              ; preds = %549
  %563 = getelementptr inbounds nuw i8, ptr %551, i64 24
  %564 = load ptr, ptr %563, align 8, !tbaa !106
  %565 = getelementptr inbounds nuw i8, ptr %553, i64 32
  %566 = load ptr, ptr %565, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %564, ptr align 1 %566, i64 %559, i1 false)
  %567 = load ptr, ptr %563, align 8, !tbaa !106
  %568 = getelementptr inbounds nuw i8, ptr %567, i64 %559
  store ptr %568, ptr %563, align 8, !tbaa !106
  %569 = load ptr, ptr %565, align 8, !tbaa !58
  %570 = getelementptr inbounds nuw i8, ptr %569, i64 %559
  store ptr %570, ptr %565, align 8, !tbaa !58
  %571 = getelementptr inbounds nuw i8, ptr %551, i64 40
  %572 = load i64, ptr %571, align 8, !tbaa !108
  %573 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %572, i64 %559), !nosanitize !45
  %574 = extractvalue { i64, i1 } %573, 1, !nosanitize !45
  br i1 %574, label %575, label %576, !prof !46, !nosanitize !45

575:                                              ; preds = %562
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

576:                                              ; preds = %562
  %577 = extractvalue { i64, i1 } %573, 0, !nosanitize !45
  store i64 %577, ptr %571, align 8, !tbaa !108
  %578 = load i32, ptr %556, align 8, !tbaa !107
  %579 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %578, i32 %560), !nosanitize !45
  %580 = extractvalue { i32, i1 } %579, 1, !nosanitize !45
  br i1 %580, label %581, label %582, !prof !46, !nosanitize !45

581:                                              ; preds = %576
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

582:                                              ; preds = %576
  %583 = extractvalue { i32, i1 } %579, 0, !nosanitize !45
  store i32 %583, ptr %556, align 8, !tbaa !107
  %584 = load i64, ptr %554, align 8, !tbaa !57
  %585 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %584, i64 %559), !nosanitize !45
  %586 = extractvalue { i64, i1 } %585, 1, !nosanitize !45
  br i1 %586, label %587, label %588, !prof !46, !nosanitize !45

587:                                              ; preds = %582
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

588:                                              ; preds = %582
  %589 = extractvalue { i64, i1 } %585, 0, !nosanitize !45
  store i64 %589, ptr %554, align 8, !tbaa !57
  %590 = icmp eq i64 %589, 0
  br i1 %590, label %591, label %594

591:                                              ; preds = %588
  %592 = getelementptr inbounds nuw i8, ptr %553, i64 16
  %593 = load ptr, ptr %592, align 8, !tbaa !40
  store ptr %593, ptr %565, align 8, !tbaa !58
  br label %594

594:                                              ; preds = %591, %588, %549
  %595 = icmp eq i32 %542, 0
  br i1 %595, label %599, label %596

596:                                              ; preds = %594, %372
  %597 = phi i32 [ 3, %372 ], [ 2, %594 ]
  %598 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 8, ptr %598, align 8, !tbaa !102
  br label %599

599:                                              ; preds = %596, %594, %526, %522, %380
  %600 = phi i32 [ 0, %526 ], [ 1, %380 ], [ 0, %522 ], [ 0, %594 ], [ %597, %596 ]
  ret i32 %600
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

25:                                               ; preds = %480, %2
  %26 = load i32, ptr %3, align 4, !tbaa !75
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %364

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
  br i1 %322, label %323, label %359

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
  br label %356

339:                                              ; preds = %323
  %340 = add nuw nsw i64 %327, 258
  %341 = icmp ult i64 %320, %340
  br i1 %341, label %342, label %359

342:                                              ; preds = %339
  %343 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %321, i64 %320), !nosanitize !45
  %344 = sub nuw nsw i64 %340, %320
  %345 = extractvalue { i64, i1 } %343, 0, !nosanitize !45
  %346 = tail call i64 @llvm.umin.i64(i64 %344, i64 %345)
  %347 = load ptr, ptr %7, align 8, !tbaa !34
  %348 = getelementptr inbounds nuw i8, ptr %347, i64 %320
  %349 = and i64 %346, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %348, i8 0, i64 %349, i1 false)
  %350 = load i64, ptr %19, align 8, !tbaa !38
  %351 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %350, i64 %346), !nosanitize !45
  %352 = extractvalue { i64, i1 } %351, 1, !nosanitize !45
  br i1 %352, label %353, label %354, !prof !46, !nosanitize !45

353:                                              ; preds = %342
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

354:                                              ; preds = %342
  %355 = extractvalue { i64, i1 } %351, 0, !nosanitize !45
  br label %356

356:                                              ; preds = %354, %333
  %357 = phi i64 [ %338, %333 ], [ %355, %354 ]
  store i64 %357, ptr %19, align 8, !tbaa !38
  %358 = load i32, ptr %3, align 4, !tbaa !75
  br label %359

359:                                              ; preds = %356, %339, %318
  %360 = phi i32 [ %319, %318 ], [ %319, %339 ], [ %358, %356 ]
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %364

362:                                              ; preds = %359
  %363 = icmp eq i32 %1, 0
  br i1 %363, label %618, label %481

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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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

407:                                              ; preds = %559, %490, %423, %392
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

408:                                              ; preds = %392
  %409 = extractvalue { i32, i1 } %405, 0, !nosanitize !45
  store i32 %409, ptr %3, align 4, !tbaa !75
  %410 = load i32, ptr %6, align 4, !tbaa !73
  %411 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %410, i32 1), !nosanitize !45
  %412 = extractvalue { i32, i1 } %411, 1, !nosanitize !45
  br i1 %412, label %413, label %414, !prof !46, !nosanitize !45

413:                                              ; preds = %408
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

414:                                              ; preds = %408
  %415 = extractvalue { i32, i1 } %411, 0, !nosanitize !45
  store i32 %415, ptr %6, align 4, !tbaa !73
  br i1 %403, label %416, label %480

416:                                              ; preds = %414
  %417 = load i64, ptr %9, align 8, !tbaa !74
  %418 = icmp sgt i64 %417, -1
  br i1 %418, label %419, label %423

419:                                              ; preds = %416
  %420 = load ptr, ptr %7, align 8, !tbaa !34
  %421 = and i64 %417, 4294967295
  %422 = getelementptr inbounds nuw i8, ptr %420, i64 %421
  br label %423

423:                                              ; preds = %419, %416
  %424 = phi ptr [ %422, %419 ], [ null, %416 ]
  %425 = zext i32 %415 to i64
  %426 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %425, i64 %417), !nosanitize !45
  %427 = extractvalue { i64, i1 } %426, 1, !nosanitize !45
  br i1 %427, label %407, label %428, !prof !46, !nosanitize !45

428:                                              ; preds = %423
  %429 = extractvalue { i64, i1 } %426, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %424, i64 noundef %429, i32 noundef 0) #10
  %430 = load i32, ptr %6, align 4, !tbaa !73
  %431 = zext i32 %430 to i64
  store i64 %431, ptr %9, align 8, !tbaa !74
  %432 = load ptr, ptr %0, align 8, !tbaa !20
  %433 = getelementptr inbounds nuw i8, ptr %432, i64 56
  %434 = load ptr, ptr %433, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %434) #10
  %435 = getelementptr inbounds nuw i8, ptr %434, i64 40
  %436 = load i64, ptr %435, align 8, !tbaa !57
  %437 = getelementptr inbounds nuw i8, ptr %432, i64 32
  %438 = load i32, ptr %437, align 8, !tbaa !107
  %439 = zext i32 %438 to i64
  %440 = tail call i64 @llvm.umin.i64(i64 %436, i64 %439)
  %441 = trunc nuw i64 %440 to i32
  %442 = icmp eq i64 %440, 0
  br i1 %442, label %475, label %443

443:                                              ; preds = %428
  %444 = getelementptr inbounds nuw i8, ptr %432, i64 24
  %445 = load ptr, ptr %444, align 8, !tbaa !106
  %446 = getelementptr inbounds nuw i8, ptr %434, i64 32
  %447 = load ptr, ptr %446, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %445, ptr align 1 %447, i64 %440, i1 false)
  %448 = load ptr, ptr %444, align 8, !tbaa !106
  %449 = getelementptr inbounds nuw i8, ptr %448, i64 %440
  store ptr %449, ptr %444, align 8, !tbaa !106
  %450 = load ptr, ptr %446, align 8, !tbaa !58
  %451 = getelementptr inbounds nuw i8, ptr %450, i64 %440
  store ptr %451, ptr %446, align 8, !tbaa !58
  %452 = getelementptr inbounds nuw i8, ptr %432, i64 40
  %453 = load i64, ptr %452, align 8, !tbaa !108
  %454 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %453, i64 %440), !nosanitize !45
  %455 = extractvalue { i64, i1 } %454, 1, !nosanitize !45
  br i1 %455, label %456, label %457, !prof !46, !nosanitize !45

456:                                              ; preds = %443
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

457:                                              ; preds = %443
  %458 = extractvalue { i64, i1 } %454, 0, !nosanitize !45
  store i64 %458, ptr %452, align 8, !tbaa !108
  %459 = load i32, ptr %437, align 8, !tbaa !107
  %460 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %459, i32 %441), !nosanitize !45
  %461 = extractvalue { i32, i1 } %460, 1, !nosanitize !45
  br i1 %461, label %462, label %463, !prof !46, !nosanitize !45

462:                                              ; preds = %457
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

463:                                              ; preds = %457
  %464 = extractvalue { i32, i1 } %460, 0, !nosanitize !45
  store i32 %464, ptr %437, align 8, !tbaa !107
  %465 = load i64, ptr %435, align 8, !tbaa !57
  %466 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %465, i64 %440), !nosanitize !45
  %467 = extractvalue { i64, i1 } %466, 1, !nosanitize !45
  br i1 %467, label %468, label %469, !prof !46, !nosanitize !45

468:                                              ; preds = %463
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

469:                                              ; preds = %463
  %470 = extractvalue { i64, i1 } %466, 0, !nosanitize !45
  store i64 %470, ptr %435, align 8, !tbaa !57
  %471 = icmp eq i64 %470, 0
  br i1 %471, label %472, label %475

472:                                              ; preds = %469
  %473 = getelementptr inbounds nuw i8, ptr %434, i64 16
  %474 = load ptr, ptr %473, align 8, !tbaa !40
  store ptr %474, ptr %446, align 8, !tbaa !58
  br label %475

475:                                              ; preds = %472, %469, %428
  %476 = load ptr, ptr %0, align 8, !tbaa !20
  %477 = getelementptr inbounds nuw i8, ptr %476, i64 32
  %478 = load i32, ptr %477, align 8, !tbaa !107
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %618, label %480

480:                                              ; preds = %475, %414
  br label %25

481:                                              ; preds = %362
  store i32 0, ptr %10, align 4, !tbaa !76
  %482 = icmp eq i32 %1, 4
  br i1 %482, label %483, label %549

483:                                              ; preds = %481
  %484 = load i64, ptr %9, align 8, !tbaa !74
  %485 = icmp sgt i64 %484, -1
  br i1 %485, label %486, label %490

486:                                              ; preds = %483
  %487 = load ptr, ptr %7, align 8, !tbaa !34
  %488 = and i64 %484, 4294967295
  %489 = getelementptr inbounds nuw i8, ptr %487, i64 %488
  br label %490

490:                                              ; preds = %486, %483
  %491 = phi ptr [ %489, %486 ], [ null, %483 ]
  %492 = load i32, ptr %6, align 4, !tbaa !73
  %493 = zext i32 %492 to i64
  %494 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %493, i64 %484), !nosanitize !45
  %495 = extractvalue { i64, i1 } %494, 1, !nosanitize !45
  br i1 %495, label %407, label %496, !prof !46, !nosanitize !45

496:                                              ; preds = %490
  %497 = extractvalue { i64, i1 } %494, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %491, i64 noundef %497, i32 noundef 1) #10
  %498 = load i32, ptr %6, align 4, !tbaa !73
  %499 = zext i32 %498 to i64
  store i64 %499, ptr %9, align 8, !tbaa !74
  %500 = load ptr, ptr %0, align 8, !tbaa !20
  %501 = getelementptr inbounds nuw i8, ptr %500, i64 56
  %502 = load ptr, ptr %501, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %502) #10
  %503 = getelementptr inbounds nuw i8, ptr %502, i64 40
  %504 = load i64, ptr %503, align 8, !tbaa !57
  %505 = getelementptr inbounds nuw i8, ptr %500, i64 32
  %506 = load i32, ptr %505, align 8, !tbaa !107
  %507 = zext i32 %506 to i64
  %508 = tail call i64 @llvm.umin.i64(i64 %504, i64 %507)
  %509 = trunc nuw i64 %508 to i32
  %510 = icmp eq i64 %508, 0
  br i1 %510, label %543, label %511

511:                                              ; preds = %496
  %512 = getelementptr inbounds nuw i8, ptr %500, i64 24
  %513 = load ptr, ptr %512, align 8, !tbaa !106
  %514 = getelementptr inbounds nuw i8, ptr %502, i64 32
  %515 = load ptr, ptr %514, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %513, ptr align 1 %515, i64 %508, i1 false)
  %516 = load ptr, ptr %512, align 8, !tbaa !106
  %517 = getelementptr inbounds nuw i8, ptr %516, i64 %508
  store ptr %517, ptr %512, align 8, !tbaa !106
  %518 = load ptr, ptr %514, align 8, !tbaa !58
  %519 = getelementptr inbounds nuw i8, ptr %518, i64 %508
  store ptr %519, ptr %514, align 8, !tbaa !58
  %520 = getelementptr inbounds nuw i8, ptr %500, i64 40
  %521 = load i64, ptr %520, align 8, !tbaa !108
  %522 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %521, i64 %508), !nosanitize !45
  %523 = extractvalue { i64, i1 } %522, 1, !nosanitize !45
  br i1 %523, label %524, label %525, !prof !46, !nosanitize !45

524:                                              ; preds = %511
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

525:                                              ; preds = %511
  %526 = extractvalue { i64, i1 } %522, 0, !nosanitize !45
  store i64 %526, ptr %520, align 8, !tbaa !108
  %527 = load i32, ptr %505, align 8, !tbaa !107
  %528 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %527, i32 %509), !nosanitize !45
  %529 = extractvalue { i32, i1 } %528, 1, !nosanitize !45
  br i1 %529, label %530, label %531, !prof !46, !nosanitize !45

530:                                              ; preds = %525
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

531:                                              ; preds = %525
  %532 = extractvalue { i32, i1 } %528, 0, !nosanitize !45
  store i32 %532, ptr %505, align 8, !tbaa !107
  %533 = load i64, ptr %503, align 8, !tbaa !57
  %534 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %533, i64 %508), !nosanitize !45
  %535 = extractvalue { i64, i1 } %534, 1, !nosanitize !45
  br i1 %535, label %536, label %537, !prof !46, !nosanitize !45

536:                                              ; preds = %531
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

537:                                              ; preds = %531
  %538 = extractvalue { i64, i1 } %534, 0, !nosanitize !45
  store i64 %538, ptr %503, align 8, !tbaa !57
  %539 = icmp eq i64 %538, 0
  br i1 %539, label %540, label %543

540:                                              ; preds = %537
  %541 = getelementptr inbounds nuw i8, ptr %502, i64 16
  %542 = load ptr, ptr %541, align 8, !tbaa !40
  store ptr %542, ptr %514, align 8, !tbaa !58
  br label %543

543:                                              ; preds = %540, %537, %496
  %544 = load ptr, ptr %0, align 8, !tbaa !20
  %545 = getelementptr inbounds nuw i8, ptr %544, i64 32
  %546 = load i32, ptr %545, align 8, !tbaa !107
  %547 = icmp eq i32 %546, 0
  %548 = select i1 %547, i32 2, i32 3
  br label %618

549:                                              ; preds = %481
  %550 = load i32, ptr %22, align 4, !tbaa !139
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %617, label %552

552:                                              ; preds = %549
  %553 = load i64, ptr %9, align 8, !tbaa !74
  %554 = icmp sgt i64 %553, -1
  br i1 %554, label %555, label %559

555:                                              ; preds = %552
  %556 = load ptr, ptr %7, align 8, !tbaa !34
  %557 = and i64 %553, 4294967295
  %558 = getelementptr inbounds nuw i8, ptr %556, i64 %557
  br label %559

559:                                              ; preds = %555, %552
  %560 = phi ptr [ %558, %555 ], [ null, %552 ]
  %561 = load i32, ptr %6, align 4, !tbaa !73
  %562 = zext i32 %561 to i64
  %563 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %562, i64 %553), !nosanitize !45
  %564 = extractvalue { i64, i1 } %563, 1, !nosanitize !45
  br i1 %564, label %407, label %565, !prof !46, !nosanitize !45

565:                                              ; preds = %559
  %566 = extractvalue { i64, i1 } %563, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %560, i64 noundef %566, i32 noundef 0) #10
  %567 = load i32, ptr %6, align 4, !tbaa !73
  %568 = zext i32 %567 to i64
  store i64 %568, ptr %9, align 8, !tbaa !74
  %569 = load ptr, ptr %0, align 8, !tbaa !20
  %570 = getelementptr inbounds nuw i8, ptr %569, i64 56
  %571 = load ptr, ptr %570, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %571) #10
  %572 = getelementptr inbounds nuw i8, ptr %571, i64 40
  %573 = load i64, ptr %572, align 8, !tbaa !57
  %574 = getelementptr inbounds nuw i8, ptr %569, i64 32
  %575 = load i32, ptr %574, align 8, !tbaa !107
  %576 = zext i32 %575 to i64
  %577 = tail call i64 @llvm.umin.i64(i64 %573, i64 %576)
  %578 = trunc nuw i64 %577 to i32
  %579 = icmp eq i64 %577, 0
  br i1 %579, label %612, label %580

580:                                              ; preds = %565
  %581 = getelementptr inbounds nuw i8, ptr %569, i64 24
  %582 = load ptr, ptr %581, align 8, !tbaa !106
  %583 = getelementptr inbounds nuw i8, ptr %571, i64 32
  %584 = load ptr, ptr %583, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %582, ptr align 1 %584, i64 %577, i1 false)
  %585 = load ptr, ptr %581, align 8, !tbaa !106
  %586 = getelementptr inbounds nuw i8, ptr %585, i64 %577
  store ptr %586, ptr %581, align 8, !tbaa !106
  %587 = load ptr, ptr %583, align 8, !tbaa !58
  %588 = getelementptr inbounds nuw i8, ptr %587, i64 %577
  store ptr %588, ptr %583, align 8, !tbaa !58
  %589 = getelementptr inbounds nuw i8, ptr %569, i64 40
  %590 = load i64, ptr %589, align 8, !tbaa !108
  %591 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %590, i64 %577), !nosanitize !45
  %592 = extractvalue { i64, i1 } %591, 1, !nosanitize !45
  br i1 %592, label %593, label %594, !prof !46, !nosanitize !45

593:                                              ; preds = %580
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

594:                                              ; preds = %580
  %595 = extractvalue { i64, i1 } %591, 0, !nosanitize !45
  store i64 %595, ptr %589, align 8, !tbaa !108
  %596 = load i32, ptr %574, align 8, !tbaa !107
  %597 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %596, i32 %578), !nosanitize !45
  %598 = extractvalue { i32, i1 } %597, 1, !nosanitize !45
  br i1 %598, label %599, label %600, !prof !46, !nosanitize !45

599:                                              ; preds = %594
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

600:                                              ; preds = %594
  %601 = extractvalue { i32, i1 } %597, 0, !nosanitize !45
  store i32 %601, ptr %574, align 8, !tbaa !107
  %602 = load i64, ptr %572, align 8, !tbaa !57
  %603 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %602, i64 %577), !nosanitize !45
  %604 = extractvalue { i64, i1 } %603, 1, !nosanitize !45
  br i1 %604, label %605, label %606, !prof !46, !nosanitize !45

605:                                              ; preds = %600
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

606:                                              ; preds = %600
  %607 = extractvalue { i64, i1 } %603, 0, !nosanitize !45
  store i64 %607, ptr %572, align 8, !tbaa !57
  %608 = icmp eq i64 %607, 0
  br i1 %608, label %609, label %612

609:                                              ; preds = %606
  %610 = getelementptr inbounds nuw i8, ptr %571, i64 16
  %611 = load ptr, ptr %610, align 8, !tbaa !40
  store ptr %611, ptr %583, align 8, !tbaa !58
  br label %612

612:                                              ; preds = %609, %606, %565
  %613 = load ptr, ptr %0, align 8, !tbaa !20
  %614 = getelementptr inbounds nuw i8, ptr %613, i64 32
  %615 = load i32, ptr %614, align 8, !tbaa !107
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %618, label %617

617:                                              ; preds = %612, %549
  br label %618

618:                                              ; preds = %617, %612, %543, %475, %362
  %619 = phi i32 [ 0, %362 ], [ %548, %543 ], [ 0, %612 ], [ 1, %617 ], [ 0, %475 ]
  ret i32 %619
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
  br i1 %327, label %328, label %364

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
  br label %361

344:                                              ; preds = %328
  %345 = add nuw nsw i64 %332, 258
  %346 = icmp ult i64 %325, %345
  br i1 %346, label %347, label %364

347:                                              ; preds = %344
  %348 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %326, i64 %325), !nosanitize !45
  %349 = sub nuw nsw i64 %345, %325
  %350 = extractvalue { i64, i1 } %348, 0, !nosanitize !45
  %351 = tail call i64 @llvm.umin.i64(i64 %349, i64 %350)
  %352 = load ptr, ptr %8, align 8, !tbaa !34
  %353 = getelementptr inbounds nuw i8, ptr %352, i64 %325
  %354 = and i64 %351, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %353, i8 0, i64 %354, i1 false)
  %355 = load i64, ptr %20, align 8, !tbaa !38
  %356 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %355, i64 %351), !nosanitize !45
  %357 = extractvalue { i64, i1 } %356, 1, !nosanitize !45
  br i1 %357, label %358, label %359, !prof !46, !nosanitize !45

358:                                              ; preds = %347
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

359:                                              ; preds = %347
  %360 = extractvalue { i64, i1 } %356, 0, !nosanitize !45
  br label %361

361:                                              ; preds = %359, %338
  %362 = phi i64 [ %343, %338 ], [ %360, %359 ]
  store i64 %362, ptr %20, align 8, !tbaa !38
  %363 = load i32, ptr %3, align 4, !tbaa !75
  br label %364

364:                                              ; preds = %361, %344, %323
  %365 = phi i32 [ %324, %323 ], [ %324, %344 ], [ %363, %361 ]
  %366 = icmp ult i32 %365, 259
  %367 = and i1 %21, %366
  br i1 %367, label %777, label %368

368:                                              ; preds = %364
  %369 = icmp eq i32 %365, 0
  br i1 %369, label %640, label %370

370:                                              ; preds = %368
  store i32 0, ptr %4, align 8, !tbaa !78
  %371 = icmp ugt i32 %365, 2
  %372 = load i32, ptr %7, align 4, !tbaa !73
  br i1 %371, label %373, label %520

373:                                              ; preds = %370, %31
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

511:                                              ; preds = %486
  %512 = extractvalue { i32, i1 } %508, 0, !nosanitize !45
  store i32 %512, ptr %3, align 4, !tbaa !75
  %513 = load i32, ptr %7, align 4, !tbaa !73
  %514 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %513, i32 %506), !nosanitize !45
  %515 = extractvalue { i32, i1 } %514, 1, !nosanitize !45
  br i1 %515, label %516, label %517, !prof !46, !nosanitize !45

516:                                              ; preds = %511
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

517:                                              ; preds = %511
  %518 = extractvalue { i32, i1 } %514, 0, !nosanitize !45
  store i32 %518, ptr %7, align 4, !tbaa !73
  store i32 0, ptr %4, align 8, !tbaa !78
  br i1 %505, label %575, label %519

519:                                              ; preds = %635, %573, %517
  br label %28

520:                                              ; preds = %389, %385, %377, %373, %370
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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

566:                                              ; preds = %718, %649, %583, %551
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

567:                                              ; preds = %551
  %568 = extractvalue { i32, i1 } %564, 0, !nosanitize !45
  store i32 %568, ptr %3, align 4, !tbaa !75
  %569 = load i32, ptr %7, align 4, !tbaa !73
  %570 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %569, i32 1), !nosanitize !45
  %571 = extractvalue { i32, i1 } %570, 1, !nosanitize !45
  br i1 %571, label %572, label %573, !prof !46, !nosanitize !45

572:                                              ; preds = %567
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

573:                                              ; preds = %567
  %574 = extractvalue { i32, i1 } %570, 0, !nosanitize !45
  store i32 %574, ptr %7, align 4, !tbaa !73
  br i1 %562, label %575, label %519

575:                                              ; preds = %573, %517
  %576 = phi i32 [ %518, %517 ], [ %574, %573 ]
  %577 = load i64, ptr %10, align 8, !tbaa !74
  %578 = icmp sgt i64 %577, -1
  br i1 %578, label %579, label %583

579:                                              ; preds = %575
  %580 = load ptr, ptr %8, align 8, !tbaa !34
  %581 = and i64 %577, 4294967295
  %582 = getelementptr inbounds nuw i8, ptr %580, i64 %581
  br label %583

583:                                              ; preds = %579, %575
  %584 = phi ptr [ %582, %579 ], [ null, %575 ]
  %585 = zext i32 %576 to i64
  %586 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %585, i64 %577), !nosanitize !45
  %587 = extractvalue { i64, i1 } %586, 1, !nosanitize !45
  br i1 %587, label %566, label %588, !prof !46, !nosanitize !45

588:                                              ; preds = %583
  %589 = extractvalue { i64, i1 } %586, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %584, i64 noundef %589, i32 noundef 0) #10
  %590 = load i32, ptr %7, align 4, !tbaa !73
  %591 = zext i32 %590 to i64
  store i64 %591, ptr %10, align 8, !tbaa !74
  %592 = load ptr, ptr %0, align 8, !tbaa !20
  %593 = getelementptr inbounds nuw i8, ptr %592, i64 56
  %594 = load ptr, ptr %593, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %594) #10
  %595 = getelementptr inbounds nuw i8, ptr %594, i64 40
  %596 = load i64, ptr %595, align 8, !tbaa !57
  %597 = getelementptr inbounds nuw i8, ptr %592, i64 32
  %598 = load i32, ptr %597, align 8, !tbaa !107
  %599 = zext i32 %598 to i64
  %600 = tail call i64 @llvm.umin.i64(i64 %596, i64 %599)
  %601 = trunc nuw i64 %600 to i32
  %602 = icmp eq i64 %600, 0
  br i1 %602, label %635, label %603

603:                                              ; preds = %588
  %604 = getelementptr inbounds nuw i8, ptr %592, i64 24
  %605 = load ptr, ptr %604, align 8, !tbaa !106
  %606 = getelementptr inbounds nuw i8, ptr %594, i64 32
  %607 = load ptr, ptr %606, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %605, ptr align 1 %607, i64 %600, i1 false)
  %608 = load ptr, ptr %604, align 8, !tbaa !106
  %609 = getelementptr inbounds nuw i8, ptr %608, i64 %600
  store ptr %609, ptr %604, align 8, !tbaa !106
  %610 = load ptr, ptr %606, align 8, !tbaa !58
  %611 = getelementptr inbounds nuw i8, ptr %610, i64 %600
  store ptr %611, ptr %606, align 8, !tbaa !58
  %612 = getelementptr inbounds nuw i8, ptr %592, i64 40
  %613 = load i64, ptr %612, align 8, !tbaa !108
  %614 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %613, i64 %600), !nosanitize !45
  %615 = extractvalue { i64, i1 } %614, 1, !nosanitize !45
  br i1 %615, label %616, label %617, !prof !46, !nosanitize !45

616:                                              ; preds = %603
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

617:                                              ; preds = %603
  %618 = extractvalue { i64, i1 } %614, 0, !nosanitize !45
  store i64 %618, ptr %612, align 8, !tbaa !108
  %619 = load i32, ptr %597, align 8, !tbaa !107
  %620 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %619, i32 %601), !nosanitize !45
  %621 = extractvalue { i32, i1 } %620, 1, !nosanitize !45
  br i1 %621, label %622, label %623, !prof !46, !nosanitize !45

622:                                              ; preds = %617
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

623:                                              ; preds = %617
  %624 = extractvalue { i32, i1 } %620, 0, !nosanitize !45
  store i32 %624, ptr %597, align 8, !tbaa !107
  %625 = load i64, ptr %595, align 8, !tbaa !57
  %626 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %625, i64 %600), !nosanitize !45
  %627 = extractvalue { i64, i1 } %626, 1, !nosanitize !45
  br i1 %627, label %628, label %629, !prof !46, !nosanitize !45

628:                                              ; preds = %623
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

629:                                              ; preds = %623
  %630 = extractvalue { i64, i1 } %626, 0, !nosanitize !45
  store i64 %630, ptr %595, align 8, !tbaa !57
  %631 = icmp eq i64 %630, 0
  br i1 %631, label %632, label %635

632:                                              ; preds = %629
  %633 = getelementptr inbounds nuw i8, ptr %594, i64 16
  %634 = load ptr, ptr %633, align 8, !tbaa !40
  store ptr %634, ptr %606, align 8, !tbaa !58
  br label %635

635:                                              ; preds = %632, %629, %588
  %636 = load ptr, ptr %0, align 8, !tbaa !20
  %637 = getelementptr inbounds nuw i8, ptr %636, i64 32
  %638 = load i32, ptr %637, align 8, !tbaa !107
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %777, label %519

640:                                              ; preds = %368
  store i32 0, ptr %11, align 4, !tbaa !76
  %641 = icmp eq i32 %1, 4
  br i1 %641, label %642, label %708

642:                                              ; preds = %640
  %643 = load i64, ptr %10, align 8, !tbaa !74
  %644 = icmp sgt i64 %643, -1
  br i1 %644, label %645, label %649

645:                                              ; preds = %642
  %646 = load ptr, ptr %8, align 8, !tbaa !34
  %647 = and i64 %643, 4294967295
  %648 = getelementptr inbounds nuw i8, ptr %646, i64 %647
  br label %649

649:                                              ; preds = %645, %642
  %650 = phi ptr [ %648, %645 ], [ null, %642 ]
  %651 = load i32, ptr %7, align 4, !tbaa !73
  %652 = zext i32 %651 to i64
  %653 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %652, i64 %643), !nosanitize !45
  %654 = extractvalue { i64, i1 } %653, 1, !nosanitize !45
  br i1 %654, label %566, label %655, !prof !46, !nosanitize !45

655:                                              ; preds = %649
  %656 = extractvalue { i64, i1 } %653, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %650, i64 noundef %656, i32 noundef 1) #10
  %657 = load i32, ptr %7, align 4, !tbaa !73
  %658 = zext i32 %657 to i64
  store i64 %658, ptr %10, align 8, !tbaa !74
  %659 = load ptr, ptr %0, align 8, !tbaa !20
  %660 = getelementptr inbounds nuw i8, ptr %659, i64 56
  %661 = load ptr, ptr %660, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %661) #10
  %662 = getelementptr inbounds nuw i8, ptr %661, i64 40
  %663 = load i64, ptr %662, align 8, !tbaa !57
  %664 = getelementptr inbounds nuw i8, ptr %659, i64 32
  %665 = load i32, ptr %664, align 8, !tbaa !107
  %666 = zext i32 %665 to i64
  %667 = tail call i64 @llvm.umin.i64(i64 %663, i64 %666)
  %668 = trunc nuw i64 %667 to i32
  %669 = icmp eq i64 %667, 0
  br i1 %669, label %702, label %670

670:                                              ; preds = %655
  %671 = getelementptr inbounds nuw i8, ptr %659, i64 24
  %672 = load ptr, ptr %671, align 8, !tbaa !106
  %673 = getelementptr inbounds nuw i8, ptr %661, i64 32
  %674 = load ptr, ptr %673, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %672, ptr align 1 %674, i64 %667, i1 false)
  %675 = load ptr, ptr %671, align 8, !tbaa !106
  %676 = getelementptr inbounds nuw i8, ptr %675, i64 %667
  store ptr %676, ptr %671, align 8, !tbaa !106
  %677 = load ptr, ptr %673, align 8, !tbaa !58
  %678 = getelementptr inbounds nuw i8, ptr %677, i64 %667
  store ptr %678, ptr %673, align 8, !tbaa !58
  %679 = getelementptr inbounds nuw i8, ptr %659, i64 40
  %680 = load i64, ptr %679, align 8, !tbaa !108
  %681 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %680, i64 %667), !nosanitize !45
  %682 = extractvalue { i64, i1 } %681, 1, !nosanitize !45
  br i1 %682, label %683, label %684, !prof !46, !nosanitize !45

683:                                              ; preds = %670
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

684:                                              ; preds = %670
  %685 = extractvalue { i64, i1 } %681, 0, !nosanitize !45
  store i64 %685, ptr %679, align 8, !tbaa !108
  %686 = load i32, ptr %664, align 8, !tbaa !107
  %687 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %686, i32 %668), !nosanitize !45
  %688 = extractvalue { i32, i1 } %687, 1, !nosanitize !45
  br i1 %688, label %689, label %690, !prof !46, !nosanitize !45

689:                                              ; preds = %684
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

690:                                              ; preds = %684
  %691 = extractvalue { i32, i1 } %687, 0, !nosanitize !45
  store i32 %691, ptr %664, align 8, !tbaa !107
  %692 = load i64, ptr %662, align 8, !tbaa !57
  %693 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %692, i64 %667), !nosanitize !45
  %694 = extractvalue { i64, i1 } %693, 1, !nosanitize !45
  br i1 %694, label %695, label %696, !prof !46, !nosanitize !45

695:                                              ; preds = %690
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

696:                                              ; preds = %690
  %697 = extractvalue { i64, i1 } %693, 0, !nosanitize !45
  store i64 %697, ptr %662, align 8, !tbaa !57
  %698 = icmp eq i64 %697, 0
  br i1 %698, label %699, label %702

699:                                              ; preds = %696
  %700 = getelementptr inbounds nuw i8, ptr %661, i64 16
  %701 = load ptr, ptr %700, align 8, !tbaa !40
  store ptr %701, ptr %673, align 8, !tbaa !58
  br label %702

702:                                              ; preds = %699, %696, %655
  %703 = load ptr, ptr %0, align 8, !tbaa !20
  %704 = getelementptr inbounds nuw i8, ptr %703, i64 32
  %705 = load i32, ptr %704, align 8, !tbaa !107
  %706 = icmp eq i32 %705, 0
  %707 = select i1 %706, i32 2, i32 3
  br label %777

708:                                              ; preds = %640
  %709 = load i32, ptr %23, align 4, !tbaa !139
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %776, label %711

711:                                              ; preds = %708
  %712 = load i64, ptr %10, align 8, !tbaa !74
  %713 = icmp sgt i64 %712, -1
  br i1 %713, label %714, label %718

714:                                              ; preds = %711
  %715 = load ptr, ptr %8, align 8, !tbaa !34
  %716 = and i64 %712, 4294967295
  %717 = getelementptr inbounds nuw i8, ptr %715, i64 %716
  br label %718

718:                                              ; preds = %714, %711
  %719 = phi ptr [ %717, %714 ], [ null, %711 ]
  %720 = load i32, ptr %7, align 4, !tbaa !73
  %721 = zext i32 %720 to i64
  %722 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %721, i64 %712), !nosanitize !45
  %723 = extractvalue { i64, i1 } %722, 1, !nosanitize !45
  br i1 %723, label %566, label %724, !prof !46, !nosanitize !45

724:                                              ; preds = %718
  %725 = extractvalue { i64, i1 } %722, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %719, i64 noundef %725, i32 noundef 0) #10
  %726 = load i32, ptr %7, align 4, !tbaa !73
  %727 = zext i32 %726 to i64
  store i64 %727, ptr %10, align 8, !tbaa !74
  %728 = load ptr, ptr %0, align 8, !tbaa !20
  %729 = getelementptr inbounds nuw i8, ptr %728, i64 56
  %730 = load ptr, ptr %729, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %730) #10
  %731 = getelementptr inbounds nuw i8, ptr %730, i64 40
  %732 = load i64, ptr %731, align 8, !tbaa !57
  %733 = getelementptr inbounds nuw i8, ptr %728, i64 32
  %734 = load i32, ptr %733, align 8, !tbaa !107
  %735 = zext i32 %734 to i64
  %736 = tail call i64 @llvm.umin.i64(i64 %732, i64 %735)
  %737 = trunc nuw i64 %736 to i32
  %738 = icmp eq i64 %736, 0
  br i1 %738, label %771, label %739

739:                                              ; preds = %724
  %740 = getelementptr inbounds nuw i8, ptr %728, i64 24
  %741 = load ptr, ptr %740, align 8, !tbaa !106
  %742 = getelementptr inbounds nuw i8, ptr %730, i64 32
  %743 = load ptr, ptr %742, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %741, ptr align 1 %743, i64 %736, i1 false)
  %744 = load ptr, ptr %740, align 8, !tbaa !106
  %745 = getelementptr inbounds nuw i8, ptr %744, i64 %736
  store ptr %745, ptr %740, align 8, !tbaa !106
  %746 = load ptr, ptr %742, align 8, !tbaa !58
  %747 = getelementptr inbounds nuw i8, ptr %746, i64 %736
  store ptr %747, ptr %742, align 8, !tbaa !58
  %748 = getelementptr inbounds nuw i8, ptr %728, i64 40
  %749 = load i64, ptr %748, align 8, !tbaa !108
  %750 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %749, i64 %736), !nosanitize !45
  %751 = extractvalue { i64, i1 } %750, 1, !nosanitize !45
  br i1 %751, label %752, label %753, !prof !46, !nosanitize !45

752:                                              ; preds = %739
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

753:                                              ; preds = %739
  %754 = extractvalue { i64, i1 } %750, 0, !nosanitize !45
  store i64 %754, ptr %748, align 8, !tbaa !108
  %755 = load i32, ptr %733, align 8, !tbaa !107
  %756 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %755, i32 %737), !nosanitize !45
  %757 = extractvalue { i32, i1 } %756, 1, !nosanitize !45
  br i1 %757, label %758, label %759, !prof !46, !nosanitize !45

758:                                              ; preds = %753
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

759:                                              ; preds = %753
  %760 = extractvalue { i32, i1 } %756, 0, !nosanitize !45
  store i32 %760, ptr %733, align 8, !tbaa !107
  %761 = load i64, ptr %731, align 8, !tbaa !57
  %762 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %761, i64 %736), !nosanitize !45
  %763 = extractvalue { i64, i1 } %762, 1, !nosanitize !45
  br i1 %763, label %764, label %765, !prof !46, !nosanitize !45

764:                                              ; preds = %759
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

765:                                              ; preds = %759
  %766 = extractvalue { i64, i1 } %762, 0, !nosanitize !45
  store i64 %766, ptr %731, align 8, !tbaa !57
  %767 = icmp eq i64 %766, 0
  br i1 %767, label %768, label %771

768:                                              ; preds = %765
  %769 = getelementptr inbounds nuw i8, ptr %730, i64 16
  %770 = load ptr, ptr %769, align 8, !tbaa !40
  store ptr %770, ptr %742, align 8, !tbaa !58
  br label %771

771:                                              ; preds = %768, %765, %724
  %772 = load ptr, ptr %0, align 8, !tbaa !20
  %773 = getelementptr inbounds nuw i8, ptr %772, i64 32
  %774 = load i32, ptr %773, align 8, !tbaa !107
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %777, label %776

776:                                              ; preds = %771, %708
  br label %777

777:                                              ; preds = %776, %771, %702, %635, %364
  %778 = phi i32 [ 1, %776 ], [ %707, %702 ], [ 0, %771 ], [ 0, %364 ], [ 0, %635 ]
  ret i32 %778
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

33:                                               ; preds = %785, %2
  %34 = load i32, ptr %3, align 4, !tbaa !75
  %35 = icmp ult i32 %34, 262
  br i1 %35, label %36, label %375

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
  br i1 %330, label %331, label %367

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
  br label %364

347:                                              ; preds = %331
  %348 = add nuw nsw i64 %335, 258
  %349 = icmp ult i64 %328, %348
  br i1 %349, label %350, label %367

350:                                              ; preds = %347
  %351 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %329, i64 %328), !nosanitize !45
  %352 = sub nuw nsw i64 %348, %328
  %353 = extractvalue { i64, i1 } %351, 0, !nosanitize !45
  %354 = tail call i64 @llvm.umin.i64(i64 %352, i64 %353)
  %355 = load ptr, ptr %7, align 8, !tbaa !34
  %356 = getelementptr inbounds nuw i8, ptr %355, i64 %328
  %357 = and i64 %354, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %356, i8 0, i64 %357, i1 false)
  %358 = load i64, ptr %19, align 8, !tbaa !38
  %359 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %358, i64 %354), !nosanitize !45
  %360 = extractvalue { i64, i1 } %359, 1, !nosanitize !45
  br i1 %360, label %361, label %362, !prof !46, !nosanitize !45

361:                                              ; preds = %350
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

362:                                              ; preds = %350
  %363 = extractvalue { i64, i1 } %359, 0, !nosanitize !45
  br label %364

364:                                              ; preds = %362, %341
  %365 = phi i64 [ %346, %341 ], [ %363, %362 ]
  store i64 %365, ptr %19, align 8, !tbaa !38
  %366 = load i32, ptr %3, align 4, !tbaa !75
  br label %367

367:                                              ; preds = %364, %347, %326
  %368 = phi i32 [ %327, %326 ], [ %327, %347 ], [ %366, %364 ]
  %369 = icmp ult i32 %368, 262
  %370 = and i1 %20, %369
  br i1 %370, label %999, label %371

371:                                              ; preds = %367
  %372 = icmp eq i32 %368, 0
  br i1 %372, label %862, label %373

373:                                              ; preds = %371
  %374 = icmp ugt i32 %368, 2
  br i1 %374, label %375, label %585

375:                                              ; preds = %373, %33
  %376 = phi i32 [ %368, %373 ], [ %34, %33 ]
  %377 = load i32, ptr %6, align 4, !tbaa !73
  %378 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %377, i32 2), !nosanitize !45
  %379 = extractvalue { i32, i1 } %378, 1, !nosanitize !45
  br i1 %379, label %380, label %381, !prof !46, !nosanitize !45

380:                                              ; preds = %375
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  br i1 %405, label %585, label %406

406:                                              ; preds = %381
  %407 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %377, i32 %403), !nosanitize !45
  %408 = extractvalue { i32, i1 } %407, 0, !nosanitize !45
  %409 = extractvalue { i32, i1 } %407, 1, !nosanitize !45
  br i1 %409, label %410, label %411, !prof !46, !nosanitize !45

410:                                              ; preds = %406
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

411:                                              ; preds = %406
  %412 = load i32, ptr %4, align 8, !tbaa !32
  %413 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %412, i32 262), !nosanitize !45
  %414 = extractvalue { i32, i1 } %413, 1, !nosanitize !45
  br i1 %414, label %415, label %416, !prof !46, !nosanitize !45

415:                                              ; preds = %411
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

416:                                              ; preds = %411
  %417 = extractvalue { i32, i1 } %413, 0, !nosanitize !45
  %418 = icmp ugt i32 %408, %417
  br i1 %418, label %585, label %419

419:                                              ; preds = %416
  %420 = zext i32 %377 to i64
  %421 = getelementptr inbounds nuw i8, ptr %383, i64 %420
  %422 = load i32, ptr %21, align 8, !tbaa !77
  %423 = tail call i32 @llvm.usub.sat.i32(i32 %377, i32 %417)
  %424 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %422, i32 -1)
  %425 = extractvalue { i32, i1 } %424, 1, !nosanitize !45
  br i1 %425, label %426, label %427, !prof !46, !nosanitize !45

426:                                              ; preds = %547, %457, %419
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

427:                                              ; preds = %419
  %428 = load i32, ptr %22, align 8, !tbaa !70
  %429 = load i32, ptr %23, align 4, !tbaa !72
  %430 = getelementptr inbounds nuw i8, ptr %421, i64 258
  %431 = extractvalue { i32, i1 } %424, 0, !nosanitize !45
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i8, ptr %421, i64 %432
  %434 = load i8, ptr %433, align 1, !tbaa !8
  %435 = sext i32 %422 to i64
  %436 = getelementptr inbounds i8, ptr %421, i64 %435
  %437 = load i8, ptr %436, align 1, !tbaa !8
  %438 = load i32, ptr %24, align 4, !tbaa !68
  %439 = icmp ult i32 %422, %438
  %440 = lshr i32 %429, 2
  %441 = select i1 %439, i32 %429, i32 %440
  %442 = tail call i32 @llvm.umin.i32(i32 %428, i32 %376)
  %443 = getelementptr inbounds nuw i8, ptr %421, i64 1
  %444 = ptrtoint ptr %430 to i64
  br label %445

445:                                              ; preds = %579, %427
  %446 = phi i32 [ %422, %427 ], [ %566, %579 ]
  %447 = phi i32 [ %441, %427 ], [ %580, %579 ]
  %448 = phi i32 [ %403, %427 ], [ %573, %579 ]
  %449 = phi i8 [ %434, %427 ], [ %567, %579 ]
  %450 = phi i8 [ %437, %427 ], [ %568, %579 ]
  %451 = zext nneg i32 %448 to i64
  %452 = getelementptr inbounds nuw i8, ptr %383, i64 %451
  %453 = sext i32 %446 to i64
  %454 = getelementptr inbounds i8, ptr %452, i64 %453
  %455 = load i8, ptr %454, align 1, !tbaa !8
  %456 = icmp eq i8 %455, %450
  br i1 %456, label %457, label %565

457:                                              ; preds = %445
  %458 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %446, i32 -1)
  %459 = extractvalue { i32, i1 } %458, 1, !nosanitize !45
  br i1 %459, label %426, label %460, !prof !46, !nosanitize !45

460:                                              ; preds = %457
  %461 = extractvalue { i32, i1 } %458, 0, !nosanitize !45
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i8, ptr %452, i64 %462
  %464 = load i8, ptr %463, align 1, !tbaa !8
  %465 = icmp eq i8 %464, %449
  br i1 %465, label %466, label %565

466:                                              ; preds = %460
  %467 = load i8, ptr %452, align 1, !tbaa !8
  %468 = load i8, ptr %421, align 1, !tbaa !8
  %469 = icmp eq i8 %467, %468
  br i1 %469, label %470, label %565

470:                                              ; preds = %466
  %471 = getelementptr inbounds nuw i8, ptr %452, i64 1
  %472 = load i8, ptr %471, align 1, !tbaa !8
  %473 = load i8, ptr %443, align 1, !tbaa !8
  %474 = icmp eq i8 %472, %473
  br i1 %474, label %475, label %565

475:                                              ; preds = %470
  %476 = getelementptr inbounds nuw i8, ptr %452, i64 2
  br label %477

477:                                              ; preds = %522, %475
  %478 = phi ptr [ %476, %475 ], [ %526, %522 ]
  %479 = phi i64 [ 2, %475 ], [ %523, %522 ]
  %480 = getelementptr inbounds nuw i8, ptr %421, i64 %479
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
  %524 = getelementptr inbounds nuw i8, ptr %421, i64 %523
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
  %546 = getelementptr inbounds nuw i8, ptr %421, i64 %523
  br label %547

547:                                              ; preds = %545, %543, %541, %539, %537, %535, %533, %531
  %548 = phi ptr [ %534, %533 ], [ %536, %535 ], [ %532, %531 ], [ %544, %543 ], [ %542, %541 ], [ %540, %539 ], [ %538, %537 ], [ %546, %545 ]
  %549 = ptrtoint ptr %548 to i64
  %550 = sub i64 %444, %549
  %551 = trunc i64 %550 to i32
  %552 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %551), !nosanitize !45
  %553 = extractvalue { i32, i1 } %552, 0, !nosanitize !45
  %554 = extractvalue { i32, i1 } %552, 1, !nosanitize !45
  br i1 %554, label %426, label %555, !prof !46, !nosanitize !45

555:                                              ; preds = %547
  %556 = icmp sgt i32 %553, %446
  br i1 %556, label %557, label %565

557:                                              ; preds = %555
  store i32 %448, ptr %8, align 8, !tbaa !83
  %558 = icmp slt i32 %553, %442
  br i1 %558, label %559, label %582

559:                                              ; preds = %557
  %560 = sext i32 %553 to i64
  %561 = getelementptr i8, ptr %421, i64 %560
  %562 = getelementptr i8, ptr %561, i64 -1
  %563 = load i8, ptr %562, align 1, !tbaa !8
  %564 = load i8, ptr %561, align 1, !tbaa !8
  br label %565

565:                                              ; preds = %559, %555, %470, %466, %460, %445
  %566 = phi i32 [ %446, %445 ], [ %446, %460 ], [ %446, %466 ], [ %446, %470 ], [ %553, %559 ], [ %446, %555 ]
  %567 = phi i8 [ %449, %445 ], [ %449, %460 ], [ %449, %466 ], [ %449, %470 ], [ %563, %559 ], [ %449, %555 ]
  %568 = phi i8 [ %450, %445 ], [ %450, %460 ], [ %450, %466 ], [ %450, %470 ], [ %564, %559 ], [ %450, %555 ]
  %569 = and i32 %448, %399
  %570 = zext nneg i32 %569 to i64
  %571 = getelementptr inbounds nuw [2 x i8], ptr %398, i64 %570
  %572 = load i16, ptr %571, align 2, !tbaa !62
  %573 = zext i16 %572 to i32
  %574 = icmp ult i32 %423, %573
  br i1 %574, label %575, label %582

575:                                              ; preds = %565
  %576 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %447, i32 1), !nosanitize !45
  %577 = extractvalue { i32, i1 } %576, 1, !nosanitize !45
  br i1 %577, label %578, label %579, !prof !46, !nosanitize !45

578:                                              ; preds = %575
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

579:                                              ; preds = %575
  %580 = extractvalue { i32, i1 } %576, 0, !nosanitize !45
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %582, label %445, !llvm.loop !153

582:                                              ; preds = %579, %565, %557
  %583 = phi i32 [ %566, %579 ], [ %566, %565 ], [ %553, %557 ]
  %584 = tail call i32 @llvm.umin.i32(i32 %583, i32 %376)
  store i32 %584, ptr %25, align 8, !tbaa !78
  br label %587

585:                                              ; preds = %416, %381, %373
  %586 = load i32, ptr %25, align 8, !tbaa !78
  br label %587

587:                                              ; preds = %585, %582
  %588 = phi i32 [ %586, %585 ], [ %584, %582 ]
  %589 = icmp ugt i32 %588, 2
  br i1 %589, label %590, label %733

590:                                              ; preds = %587
  %591 = trunc i32 %588 to i8
  %592 = add i8 %591, -3
  %593 = load i32, ptr %6, align 4, !tbaa !73
  %594 = load i32, ptr %8, align 8, !tbaa !83
  %595 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %593, i32 %594), !nosanitize !45
  %596 = extractvalue { i32, i1 } %595, 1, !nosanitize !45
  br i1 %596, label %597, label %598, !prof !46, !nosanitize !45

597:                                              ; preds = %590
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

598:                                              ; preds = %590
  %599 = extractvalue { i32, i1 } %595, 0, !nosanitize !45
  %600 = trunc i32 %599 to i16
  %601 = load i32, ptr %27, align 4, !tbaa !139
  %602 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %601, i32 1), !nosanitize !45
  %603 = extractvalue { i32, i1 } %602, 1, !nosanitize !45
  br i1 %603, label %604, label %605, !prof !46, !nosanitize !45

604:                                              ; preds = %598
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

605:                                              ; preds = %598
  %606 = extractvalue { i32, i1 } %602, 0, !nosanitize !45
  %607 = load ptr, ptr %26, align 8, !tbaa !44
  %608 = trunc i32 %599 to i8
  store i32 %606, ptr %27, align 4, !tbaa !139
  %609 = zext i32 %601 to i64
  %610 = getelementptr inbounds nuw i8, ptr %607, i64 %609
  store i8 %608, ptr %610, align 1, !tbaa !8
  %611 = load i32, ptr %27, align 4, !tbaa !139
  %612 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %611, i32 1), !nosanitize !45
  %613 = extractvalue { i32, i1 } %612, 1, !nosanitize !45
  br i1 %613, label %614, label %615, !prof !46, !nosanitize !45

614:                                              ; preds = %605
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

615:                                              ; preds = %605
  %616 = extractvalue { i32, i1 } %612, 0, !nosanitize !45
  %617 = load ptr, ptr %26, align 8, !tbaa !44
  %618 = lshr i32 %599, 8
  %619 = trunc i32 %618 to i8
  store i32 %616, ptr %27, align 4, !tbaa !139
  %620 = zext i32 %611 to i64
  %621 = getelementptr inbounds nuw i8, ptr %617, i64 %620
  store i8 %619, ptr %621, align 1, !tbaa !8
  %622 = load i32, ptr %27, align 4, !tbaa !139
  %623 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %622, i32 1), !nosanitize !45
  %624 = extractvalue { i32, i1 } %623, 1, !nosanitize !45
  br i1 %624, label %625, label %626, !prof !46, !nosanitize !45

625:                                              ; preds = %615
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

626:                                              ; preds = %615
  %627 = extractvalue { i32, i1 } %623, 0, !nosanitize !45
  %628 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %627, ptr %27, align 4, !tbaa !139
  %629 = zext i32 %622 to i64
  %630 = getelementptr inbounds nuw i8, ptr %628, i64 %629
  store i8 %592, ptr %630, align 1, !tbaa !8
  %631 = add i16 %600, -1
  %632 = zext i8 %592 to i64
  %633 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %632
  %634 = load i8, ptr %633, align 1, !tbaa !8
  %635 = zext i8 %634 to i64
  %636 = getelementptr [4 x i8], ptr %30, i64 %635
  %637 = load i16, ptr %636, align 4, !tbaa !8
  %638 = add i16 %637, 1
  store i16 %638, ptr %636, align 4, !tbaa !8
  %639 = icmp ult i16 %631, 256
  br i1 %639, label %640, label %643

640:                                              ; preds = %626
  %641 = zext nneg i16 %631 to i64
  %642 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %641
  br label %648

643:                                              ; preds = %626
  %644 = lshr i16 %631, 7
  %645 = zext nneg i16 %644 to i64
  %646 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %645
  %647 = getelementptr inbounds nuw i8, ptr %646, i64 256
  br label %648

648:                                              ; preds = %643, %640
  %649 = phi ptr [ %642, %640 ], [ %647, %643 ]
  %650 = load i8, ptr %649, align 1, !tbaa !8
  %651 = zext i8 %650 to i64
  %652 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %651
  %653 = load i16, ptr %652, align 4, !tbaa !8
  %654 = add i16 %653, 1
  store i16 %654, ptr %652, align 4, !tbaa !8
  %655 = load i32, ptr %27, align 4, !tbaa !139
  %656 = load i32, ptr %29, align 8, !tbaa !47
  %657 = icmp eq i32 %655, %656
  %658 = load i32, ptr %25, align 8, !tbaa !78
  %659 = load i32, ptr %3, align 4, !tbaa !75
  %660 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %659, i32 %658), !nosanitize !45
  %661 = extractvalue { i32, i1 } %660, 1, !nosanitize !45
  br i1 %661, label %662, label %663, !prof !46, !nosanitize !45

662:                                              ; preds = %648
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

663:                                              ; preds = %648
  %664 = extractvalue { i32, i1 } %660, 0, !nosanitize !45
  store i32 %664, ptr %3, align 4, !tbaa !75
  %665 = load i32, ptr %32, align 8, !tbaa !66
  %666 = icmp ule i32 %658, %665
  %667 = icmp ugt i32 %664, 2
  %668 = select i1 %666, i1 %667, i1 false
  br i1 %668, label %669, label %718

669:                                              ; preds = %663
  %670 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %658, i32 1), !nosanitize !45
  %671 = extractvalue { i32, i1 } %670, 1, !nosanitize !45
  br i1 %671, label %672, label %673, !prof !46, !nosanitize !45

672:                                              ; preds = %669
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

673:                                              ; preds = %669
  %674 = extractvalue { i32, i1 } %670, 0, !nosanitize !45
  store i32 %674, ptr %25, align 8, !tbaa !78
  %675 = load i32, ptr %6, align 4, !tbaa !73
  br label %676

676:                                              ; preds = %713, %673
  %677 = phi i32 [ %714, %713 ], [ %674, %673 ]
  %678 = phi i32 [ %683, %713 ], [ %675, %673 ]
  %679 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %678, i32 1), !nosanitize !45
  %680 = extractvalue { i32, i1 } %679, 1, !nosanitize !45
  br i1 %680, label %681, label %682, !prof !46, !nosanitize !45

681:                                              ; preds = %676
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

682:                                              ; preds = %676
  %683 = extractvalue { i32, i1 } %679, 0, !nosanitize !45
  store i32 %683, ptr %6, align 4, !tbaa !73
  %684 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %683, i32 2), !nosanitize !45
  %685 = extractvalue { i32, i1 } %684, 1, !nosanitize !45
  br i1 %685, label %686, label %687, !prof !46, !nosanitize !45

686:                                              ; preds = %682
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

687:                                              ; preds = %682
  %688 = extractvalue { i32, i1 } %684, 0, !nosanitize !45
  %689 = load ptr, ptr %7, align 8, !tbaa !34
  %690 = load i32, ptr %15, align 8, !tbaa !80
  %691 = load i32, ptr %16, align 8, !tbaa !53
  %692 = shl i32 %690, %691
  %693 = zext i32 %688 to i64
  %694 = getelementptr inbounds nuw i8, ptr %689, i64 %693
  %695 = load i8, ptr %694, align 1, !tbaa !8
  %696 = zext i8 %695 to i32
  %697 = xor i32 %692, %696
  %698 = load i32, ptr %17, align 4, !tbaa !52
  %699 = and i32 %697, %698
  store i32 %699, ptr %15, align 8, !tbaa !80
  %700 = load ptr, ptr %12, align 8, !tbaa !37
  %701 = zext i32 %699 to i64
  %702 = getelementptr inbounds nuw [2 x i8], ptr %700, i64 %701
  %703 = load i16, ptr %702, align 2, !tbaa !62
  %704 = load ptr, ptr %13, align 8, !tbaa !35
  %705 = load i32, ptr %18, align 8, !tbaa !33
  %706 = and i32 %705, %683
  %707 = zext i32 %706 to i64
  %708 = getelementptr inbounds nuw [2 x i8], ptr %704, i64 %707
  store i16 %703, ptr %708, align 2, !tbaa !62
  %709 = trunc i32 %683 to i16
  store i16 %709, ptr %702, align 2, !tbaa !62
  %710 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %677, i32 1), !nosanitize !45
  %711 = extractvalue { i32, i1 } %710, 1, !nosanitize !45
  br i1 %711, label %712, label %713, !prof !46, !nosanitize !45

712:                                              ; preds = %687
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

713:                                              ; preds = %687
  %714 = extractvalue { i32, i1 } %710, 0, !nosanitize !45
  store i32 %714, ptr %25, align 8, !tbaa !78
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %716, label %676, !llvm.loop !154

716:                                              ; preds = %713
  %717 = add nuw i32 %683, 1
  store i32 %717, ptr %6, align 4, !tbaa !73
  br i1 %657, label %797, label %785

718:                                              ; preds = %663
  %719 = load i32, ptr %6, align 4, !tbaa !73
  %720 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %719, i32 %658), !nosanitize !45
  %721 = extractvalue { i32, i1 } %720, 1, !nosanitize !45
  br i1 %721, label %722, label %723, !prof !46, !nosanitize !45

722:                                              ; preds = %718
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

723:                                              ; preds = %718
  %724 = extractvalue { i32, i1 } %720, 0, !nosanitize !45
  store i32 %724, ptr %6, align 4, !tbaa !73
  store i32 0, ptr %25, align 8, !tbaa !78
  %725 = load ptr, ptr %7, align 8, !tbaa !34
  %726 = zext i32 %724 to i64
  %727 = getelementptr inbounds nuw i8, ptr %725, i64 %726
  %728 = load i8, ptr %727, align 1, !tbaa !8
  %729 = zext i8 %728 to i32
  store i32 %729, ptr %15, align 8, !tbaa !80
  %730 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %724, i32 1), !nosanitize !45
  %731 = extractvalue { i32, i1 } %730, 1, !nosanitize !45
  br i1 %731, label %732, label %786, !prof !46, !nosanitize !45

732:                                              ; preds = %723
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

733:                                              ; preds = %587
  %734 = load ptr, ptr %7, align 8, !tbaa !34
  %735 = load i32, ptr %6, align 4, !tbaa !73
  %736 = zext i32 %735 to i64
  %737 = getelementptr inbounds nuw i8, ptr %734, i64 %736
  %738 = load i8, ptr %737, align 1, !tbaa !8
  %739 = load i32, ptr %27, align 4, !tbaa !139
  %740 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %739, i32 1), !nosanitize !45
  %741 = extractvalue { i32, i1 } %740, 1, !nosanitize !45
  br i1 %741, label %742, label %743, !prof !46, !nosanitize !45

742:                                              ; preds = %733
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

743:                                              ; preds = %733
  %744 = extractvalue { i32, i1 } %740, 0, !nosanitize !45
  %745 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %744, ptr %27, align 4, !tbaa !139
  %746 = zext i32 %739 to i64
  %747 = getelementptr inbounds nuw i8, ptr %745, i64 %746
  store i8 0, ptr %747, align 1, !tbaa !8
  %748 = load i32, ptr %27, align 4, !tbaa !139
  %749 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %748, i32 1), !nosanitize !45
  %750 = extractvalue { i32, i1 } %749, 1, !nosanitize !45
  br i1 %750, label %751, label %752, !prof !46, !nosanitize !45

751:                                              ; preds = %743
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

752:                                              ; preds = %743
  %753 = extractvalue { i32, i1 } %749, 0, !nosanitize !45
  %754 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %753, ptr %27, align 4, !tbaa !139
  %755 = zext i32 %748 to i64
  %756 = getelementptr inbounds nuw i8, ptr %754, i64 %755
  store i8 0, ptr %756, align 1, !tbaa !8
  %757 = load i32, ptr %27, align 4, !tbaa !139
  %758 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %757, i32 1), !nosanitize !45
  %759 = extractvalue { i32, i1 } %758, 1, !nosanitize !45
  br i1 %759, label %760, label %761, !prof !46, !nosanitize !45

760:                                              ; preds = %752
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

761:                                              ; preds = %752
  %762 = extractvalue { i32, i1 } %758, 0, !nosanitize !45
  %763 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %762, ptr %27, align 4, !tbaa !139
  %764 = zext i32 %757 to i64
  %765 = getelementptr inbounds nuw i8, ptr %763, i64 %764
  store i8 %738, ptr %765, align 1, !tbaa !8
  %766 = zext i8 %738 to i64
  %767 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %766
  %768 = load i16, ptr %767, align 4, !tbaa !8
  %769 = add i16 %768, 1
  store i16 %769, ptr %767, align 4, !tbaa !8
  %770 = load i32, ptr %27, align 4, !tbaa !139
  %771 = load i32, ptr %29, align 8, !tbaa !47
  %772 = icmp eq i32 %770, %771
  %773 = load i32, ptr %3, align 4, !tbaa !75
  %774 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %773, i32 1), !nosanitize !45
  %775 = extractvalue { i32, i1 } %774, 1, !nosanitize !45
  br i1 %775, label %776, label %777, !prof !46, !nosanitize !45

776:                                              ; preds = %941, %873, %805, %761
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

777:                                              ; preds = %761
  %778 = extractvalue { i32, i1 } %774, 0, !nosanitize !45
  store i32 %778, ptr %3, align 4, !tbaa !75
  %779 = load i32, ptr %6, align 4, !tbaa !73
  %780 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %779, i32 1), !nosanitize !45
  %781 = extractvalue { i32, i1 } %780, 1, !nosanitize !45
  br i1 %781, label %782, label %783, !prof !46, !nosanitize !45

782:                                              ; preds = %777
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

783:                                              ; preds = %777
  %784 = extractvalue { i32, i1 } %780, 0, !nosanitize !45
  store i32 %784, ptr %6, align 4, !tbaa !73
  br i1 %772, label %797, label %785

785:                                              ; preds = %857, %786, %783, %716
  br label %33

786:                                              ; preds = %723
  %787 = extractvalue { i32, i1 } %730, 0, !nosanitize !45
  %788 = load i32, ptr %16, align 8, !tbaa !53
  %789 = shl i32 %729, %788
  %790 = zext i32 %787 to i64
  %791 = getelementptr inbounds nuw i8, ptr %725, i64 %790
  %792 = load i8, ptr %791, align 1, !tbaa !8
  %793 = zext i8 %792 to i32
  %794 = xor i32 %789, %793
  %795 = load i32, ptr %17, align 4, !tbaa !52
  %796 = and i32 %794, %795
  store i32 %796, ptr %15, align 8, !tbaa !80
  br i1 %657, label %797, label %785

797:                                              ; preds = %786, %783, %716
  %798 = phi i32 [ %784, %783 ], [ %717, %716 ], [ %724, %786 ]
  %799 = load i64, ptr %9, align 8, !tbaa !74
  %800 = icmp sgt i64 %799, -1
  br i1 %800, label %801, label %805

801:                                              ; preds = %797
  %802 = load ptr, ptr %7, align 8, !tbaa !34
  %803 = and i64 %799, 4294967295
  %804 = getelementptr inbounds nuw i8, ptr %802, i64 %803
  br label %805

805:                                              ; preds = %801, %797
  %806 = phi ptr [ %804, %801 ], [ null, %797 ]
  %807 = zext i32 %798 to i64
  %808 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %807, i64 %799), !nosanitize !45
  %809 = extractvalue { i64, i1 } %808, 1, !nosanitize !45
  br i1 %809, label %776, label %810, !prof !46, !nosanitize !45

810:                                              ; preds = %805
  %811 = extractvalue { i64, i1 } %808, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %806, i64 noundef %811, i32 noundef 0) #10
  %812 = load i32, ptr %6, align 4, !tbaa !73
  %813 = zext i32 %812 to i64
  store i64 %813, ptr %9, align 8, !tbaa !74
  %814 = load ptr, ptr %0, align 8, !tbaa !20
  %815 = getelementptr inbounds nuw i8, ptr %814, i64 56
  %816 = load ptr, ptr %815, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %816) #10
  %817 = getelementptr inbounds nuw i8, ptr %816, i64 40
  %818 = load i64, ptr %817, align 8, !tbaa !57
  %819 = getelementptr inbounds nuw i8, ptr %814, i64 32
  %820 = load i32, ptr %819, align 8, !tbaa !107
  %821 = zext i32 %820 to i64
  %822 = tail call i64 @llvm.umin.i64(i64 %818, i64 %821)
  %823 = trunc nuw i64 %822 to i32
  %824 = icmp eq i64 %822, 0
  br i1 %824, label %857, label %825

825:                                              ; preds = %810
  %826 = getelementptr inbounds nuw i8, ptr %814, i64 24
  %827 = load ptr, ptr %826, align 8, !tbaa !106
  %828 = getelementptr inbounds nuw i8, ptr %816, i64 32
  %829 = load ptr, ptr %828, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %827, ptr align 1 %829, i64 %822, i1 false)
  %830 = load ptr, ptr %826, align 8, !tbaa !106
  %831 = getelementptr inbounds nuw i8, ptr %830, i64 %822
  store ptr %831, ptr %826, align 8, !tbaa !106
  %832 = load ptr, ptr %828, align 8, !tbaa !58
  %833 = getelementptr inbounds nuw i8, ptr %832, i64 %822
  store ptr %833, ptr %828, align 8, !tbaa !58
  %834 = getelementptr inbounds nuw i8, ptr %814, i64 40
  %835 = load i64, ptr %834, align 8, !tbaa !108
  %836 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %835, i64 %822), !nosanitize !45
  %837 = extractvalue { i64, i1 } %836, 1, !nosanitize !45
  br i1 %837, label %838, label %839, !prof !46, !nosanitize !45

838:                                              ; preds = %825
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

839:                                              ; preds = %825
  %840 = extractvalue { i64, i1 } %836, 0, !nosanitize !45
  store i64 %840, ptr %834, align 8, !tbaa !108
  %841 = load i32, ptr %819, align 8, !tbaa !107
  %842 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %841, i32 %823), !nosanitize !45
  %843 = extractvalue { i32, i1 } %842, 1, !nosanitize !45
  br i1 %843, label %844, label %845, !prof !46, !nosanitize !45

844:                                              ; preds = %839
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

845:                                              ; preds = %839
  %846 = extractvalue { i32, i1 } %842, 0, !nosanitize !45
  store i32 %846, ptr %819, align 8, !tbaa !107
  %847 = load i64, ptr %817, align 8, !tbaa !57
  %848 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %847, i64 %822), !nosanitize !45
  %849 = extractvalue { i64, i1 } %848, 1, !nosanitize !45
  br i1 %849, label %850, label %851, !prof !46, !nosanitize !45

850:                                              ; preds = %845
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

851:                                              ; preds = %845
  %852 = extractvalue { i64, i1 } %848, 0, !nosanitize !45
  store i64 %852, ptr %817, align 8, !tbaa !57
  %853 = icmp eq i64 %852, 0
  br i1 %853, label %854, label %857

854:                                              ; preds = %851
  %855 = getelementptr inbounds nuw i8, ptr %816, i64 16
  %856 = load ptr, ptr %855, align 8, !tbaa !40
  store ptr %856, ptr %828, align 8, !tbaa !58
  br label %857

857:                                              ; preds = %854, %851, %810
  %858 = load ptr, ptr %0, align 8, !tbaa !20
  %859 = getelementptr inbounds nuw i8, ptr %858, i64 32
  %860 = load i32, ptr %859, align 8, !tbaa !107
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %999, label %785

862:                                              ; preds = %371
  %863 = load i32, ptr %6, align 4, !tbaa !73
  %864 = tail call i32 @llvm.umin.i32(i32 %863, i32 2)
  store i32 %864, ptr %10, align 4, !tbaa !76
  %865 = icmp eq i32 %1, 4
  br i1 %865, label %866, label %931

866:                                              ; preds = %862
  %867 = load i64, ptr %9, align 8, !tbaa !74
  %868 = icmp sgt i64 %867, -1
  br i1 %868, label %869, label %873

869:                                              ; preds = %866
  %870 = load ptr, ptr %7, align 8, !tbaa !34
  %871 = and i64 %867, 4294967295
  %872 = getelementptr inbounds nuw i8, ptr %870, i64 %871
  br label %873

873:                                              ; preds = %869, %866
  %874 = phi ptr [ %872, %869 ], [ null, %866 ]
  %875 = zext i32 %863 to i64
  %876 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %875, i64 %867), !nosanitize !45
  %877 = extractvalue { i64, i1 } %876, 1, !nosanitize !45
  br i1 %877, label %776, label %878, !prof !46, !nosanitize !45

878:                                              ; preds = %873
  %879 = extractvalue { i64, i1 } %876, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %874, i64 noundef %879, i32 noundef 1) #10
  %880 = load i32, ptr %6, align 4, !tbaa !73
  %881 = zext i32 %880 to i64
  store i64 %881, ptr %9, align 8, !tbaa !74
  %882 = load ptr, ptr %0, align 8, !tbaa !20
  %883 = getelementptr inbounds nuw i8, ptr %882, i64 56
  %884 = load ptr, ptr %883, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %884) #10
  %885 = getelementptr inbounds nuw i8, ptr %884, i64 40
  %886 = load i64, ptr %885, align 8, !tbaa !57
  %887 = getelementptr inbounds nuw i8, ptr %882, i64 32
  %888 = load i32, ptr %887, align 8, !tbaa !107
  %889 = zext i32 %888 to i64
  %890 = tail call i64 @llvm.umin.i64(i64 %886, i64 %889)
  %891 = trunc nuw i64 %890 to i32
  %892 = icmp eq i64 %890, 0
  br i1 %892, label %925, label %893

893:                                              ; preds = %878
  %894 = getelementptr inbounds nuw i8, ptr %882, i64 24
  %895 = load ptr, ptr %894, align 8, !tbaa !106
  %896 = getelementptr inbounds nuw i8, ptr %884, i64 32
  %897 = load ptr, ptr %896, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %895, ptr align 1 %897, i64 %890, i1 false)
  %898 = load ptr, ptr %894, align 8, !tbaa !106
  %899 = getelementptr inbounds nuw i8, ptr %898, i64 %890
  store ptr %899, ptr %894, align 8, !tbaa !106
  %900 = load ptr, ptr %896, align 8, !tbaa !58
  %901 = getelementptr inbounds nuw i8, ptr %900, i64 %890
  store ptr %901, ptr %896, align 8, !tbaa !58
  %902 = getelementptr inbounds nuw i8, ptr %882, i64 40
  %903 = load i64, ptr %902, align 8, !tbaa !108
  %904 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %903, i64 %890), !nosanitize !45
  %905 = extractvalue { i64, i1 } %904, 1, !nosanitize !45
  br i1 %905, label %906, label %907, !prof !46, !nosanitize !45

906:                                              ; preds = %893
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

907:                                              ; preds = %893
  %908 = extractvalue { i64, i1 } %904, 0, !nosanitize !45
  store i64 %908, ptr %902, align 8, !tbaa !108
  %909 = load i32, ptr %887, align 8, !tbaa !107
  %910 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %909, i32 %891), !nosanitize !45
  %911 = extractvalue { i32, i1 } %910, 1, !nosanitize !45
  br i1 %911, label %912, label %913, !prof !46, !nosanitize !45

912:                                              ; preds = %907
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

913:                                              ; preds = %907
  %914 = extractvalue { i32, i1 } %910, 0, !nosanitize !45
  store i32 %914, ptr %887, align 8, !tbaa !107
  %915 = load i64, ptr %885, align 8, !tbaa !57
  %916 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %915, i64 %890), !nosanitize !45
  %917 = extractvalue { i64, i1 } %916, 1, !nosanitize !45
  br i1 %917, label %918, label %919, !prof !46, !nosanitize !45

918:                                              ; preds = %913
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

919:                                              ; preds = %913
  %920 = extractvalue { i64, i1 } %916, 0, !nosanitize !45
  store i64 %920, ptr %885, align 8, !tbaa !57
  %921 = icmp eq i64 %920, 0
  br i1 %921, label %922, label %925

922:                                              ; preds = %919
  %923 = getelementptr inbounds nuw i8, ptr %884, i64 16
  %924 = load ptr, ptr %923, align 8, !tbaa !40
  store ptr %924, ptr %896, align 8, !tbaa !58
  br label %925

925:                                              ; preds = %922, %919, %878
  %926 = load ptr, ptr %0, align 8, !tbaa !20
  %927 = getelementptr inbounds nuw i8, ptr %926, i64 32
  %928 = load i32, ptr %927, align 8, !tbaa !107
  %929 = icmp eq i32 %928, 0
  %930 = select i1 %929, i32 2, i32 3
  br label %999

931:                                              ; preds = %862
  %932 = load i32, ptr %27, align 4, !tbaa !139
  %933 = icmp eq i32 %932, 0
  br i1 %933, label %998, label %934

934:                                              ; preds = %931
  %935 = load i64, ptr %9, align 8, !tbaa !74
  %936 = icmp sgt i64 %935, -1
  br i1 %936, label %937, label %941

937:                                              ; preds = %934
  %938 = load ptr, ptr %7, align 8, !tbaa !34
  %939 = and i64 %935, 4294967295
  %940 = getelementptr inbounds nuw i8, ptr %938, i64 %939
  br label %941

941:                                              ; preds = %937, %934
  %942 = phi ptr [ %940, %937 ], [ null, %934 ]
  %943 = zext i32 %863 to i64
  %944 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %943, i64 %935), !nosanitize !45
  %945 = extractvalue { i64, i1 } %944, 1, !nosanitize !45
  br i1 %945, label %776, label %946, !prof !46, !nosanitize !45

946:                                              ; preds = %941
  %947 = extractvalue { i64, i1 } %944, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %942, i64 noundef %947, i32 noundef 0) #10
  %948 = load i32, ptr %6, align 4, !tbaa !73
  %949 = zext i32 %948 to i64
  store i64 %949, ptr %9, align 8, !tbaa !74
  %950 = load ptr, ptr %0, align 8, !tbaa !20
  %951 = getelementptr inbounds nuw i8, ptr %950, i64 56
  %952 = load ptr, ptr %951, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %952) #10
  %953 = getelementptr inbounds nuw i8, ptr %952, i64 40
  %954 = load i64, ptr %953, align 8, !tbaa !57
  %955 = getelementptr inbounds nuw i8, ptr %950, i64 32
  %956 = load i32, ptr %955, align 8, !tbaa !107
  %957 = zext i32 %956 to i64
  %958 = tail call i64 @llvm.umin.i64(i64 %954, i64 %957)
  %959 = trunc nuw i64 %958 to i32
  %960 = icmp eq i64 %958, 0
  br i1 %960, label %993, label %961

961:                                              ; preds = %946
  %962 = getelementptr inbounds nuw i8, ptr %950, i64 24
  %963 = load ptr, ptr %962, align 8, !tbaa !106
  %964 = getelementptr inbounds nuw i8, ptr %952, i64 32
  %965 = load ptr, ptr %964, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %963, ptr align 1 %965, i64 %958, i1 false)
  %966 = load ptr, ptr %962, align 8, !tbaa !106
  %967 = getelementptr inbounds nuw i8, ptr %966, i64 %958
  store ptr %967, ptr %962, align 8, !tbaa !106
  %968 = load ptr, ptr %964, align 8, !tbaa !58
  %969 = getelementptr inbounds nuw i8, ptr %968, i64 %958
  store ptr %969, ptr %964, align 8, !tbaa !58
  %970 = getelementptr inbounds nuw i8, ptr %950, i64 40
  %971 = load i64, ptr %970, align 8, !tbaa !108
  %972 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %971, i64 %958), !nosanitize !45
  %973 = extractvalue { i64, i1 } %972, 1, !nosanitize !45
  br i1 %973, label %974, label %975, !prof !46, !nosanitize !45

974:                                              ; preds = %961
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

975:                                              ; preds = %961
  %976 = extractvalue { i64, i1 } %972, 0, !nosanitize !45
  store i64 %976, ptr %970, align 8, !tbaa !108
  %977 = load i32, ptr %955, align 8, !tbaa !107
  %978 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %977, i32 %959), !nosanitize !45
  %979 = extractvalue { i32, i1 } %978, 1, !nosanitize !45
  br i1 %979, label %980, label %981, !prof !46, !nosanitize !45

980:                                              ; preds = %975
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

981:                                              ; preds = %975
  %982 = extractvalue { i32, i1 } %978, 0, !nosanitize !45
  store i32 %982, ptr %955, align 8, !tbaa !107
  %983 = load i64, ptr %953, align 8, !tbaa !57
  %984 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %983, i64 %958), !nosanitize !45
  %985 = extractvalue { i64, i1 } %984, 1, !nosanitize !45
  br i1 %985, label %986, label %987, !prof !46, !nosanitize !45

986:                                              ; preds = %981
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

987:                                              ; preds = %981
  %988 = extractvalue { i64, i1 } %984, 0, !nosanitize !45
  store i64 %988, ptr %953, align 8, !tbaa !57
  %989 = icmp eq i64 %988, 0
  br i1 %989, label %990, label %993

990:                                              ; preds = %987
  %991 = getelementptr inbounds nuw i8, ptr %952, i64 16
  %992 = load ptr, ptr %991, align 8, !tbaa !40
  store ptr %992, ptr %964, align 8, !tbaa !58
  br label %993

993:                                              ; preds = %990, %987, %946
  %994 = load ptr, ptr %0, align 8, !tbaa !20
  %995 = getelementptr inbounds nuw i8, ptr %994, i64 32
  %996 = load i32, ptr %995, align 8, !tbaa !107
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %999, label %998

998:                                              ; preds = %993, %931
  br label %999

999:                                              ; preds = %998, %993, %925, %857, %367
  %1000 = phi i32 [ 1, %998 ], [ %930, %925 ], [ 0, %993 ], [ 0, %367 ], [ 0, %857 ]
  ret i32 %1000
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

36:                                               ; preds = %769, %2
  %37 = load i32, ptr %3, align 4, !tbaa !75
  %38 = icmp ult i32 %37, 262
  br i1 %38, label %39, label %381

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
  br i1 %333, label %334, label %370

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
  br label %367

350:                                              ; preds = %334
  %351 = add nuw nsw i64 %338, 258
  %352 = icmp ult i64 %331, %351
  br i1 %352, label %353, label %370

353:                                              ; preds = %350
  %354 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %332, i64 %331), !nosanitize !45
  %355 = sub nuw nsw i64 %351, %331
  %356 = extractvalue { i64, i1 } %354, 0, !nosanitize !45
  %357 = tail call i64 @llvm.umin.i64(i64 %355, i64 %356)
  %358 = load ptr, ptr %7, align 8, !tbaa !34
  %359 = getelementptr inbounds nuw i8, ptr %358, i64 %331
  %360 = and i64 %357, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %359, i8 0, i64 %360, i1 false)
  %361 = load i64, ptr %19, align 8, !tbaa !38
  %362 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %361, i64 %357), !nosanitize !45
  %363 = extractvalue { i64, i1 } %362, 1, !nosanitize !45
  br i1 %363, label %364, label %365, !prof !46, !nosanitize !45

364:                                              ; preds = %353
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

365:                                              ; preds = %353
  %366 = extractvalue { i64, i1 } %362, 0, !nosanitize !45
  br label %367

367:                                              ; preds = %365, %344
  %368 = phi i64 [ %349, %344 ], [ %366, %365 ]
  store i64 %368, ptr %19, align 8, !tbaa !38
  %369 = load i32, ptr %3, align 4, !tbaa !75
  br label %370

370:                                              ; preds = %367, %350, %329
  %371 = phi i32 [ %330, %329 ], [ %330, %350 ], [ %369, %367 ]
  %372 = icmp ult i32 %371, 262
  %373 = and i1 %20, %372
  br i1 %373, label %1154, label %374

374:                                              ; preds = %370
  %375 = icmp eq i32 %371, 0
  br i1 %375, label %971, label %376

376:                                              ; preds = %374
  %377 = icmp ugt i32 %371, 2
  br i1 %377, label %381, label %378

378:                                              ; preds = %376
  %379 = load i32, ptr %21, align 8, !tbaa !78
  store i32 %379, ptr %22, align 8, !tbaa !77
  %380 = load i32, ptr %8, align 8, !tbaa !83
  store i32 %380, ptr %23, align 4, !tbaa !159
  br label %611

381:                                              ; preds = %376, %36
  %382 = phi i32 [ %371, %376 ], [ %37, %36 ]
  %383 = load i32, ptr %6, align 4, !tbaa !73
  %384 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %383, i32 2), !nosanitize !45
  %385 = extractvalue { i32, i1 } %384, 1, !nosanitize !45
  br i1 %385, label %386, label %387, !prof !46, !nosanitize !45

386:                                              ; preds = %381
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  br i1 %413, label %615, label %414

414:                                              ; preds = %387
  %415 = load i32, ptr %24, align 8, !tbaa !66
  %416 = icmp ult i32 %411, %415
  br i1 %416, label %417, label %615

417:                                              ; preds = %414
  %418 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %383, i32 %409), !nosanitize !45
  %419 = extractvalue { i32, i1 } %418, 0, !nosanitize !45
  %420 = extractvalue { i32, i1 } %418, 1, !nosanitize !45
  br i1 %420, label %421, label %422, !prof !46, !nosanitize !45

421:                                              ; preds = %417
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

422:                                              ; preds = %417
  %423 = load i32, ptr %4, align 8, !tbaa !32
  %424 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %423, i32 262), !nosanitize !45
  %425 = extractvalue { i32, i1 } %424, 1, !nosanitize !45
  br i1 %425, label %426, label %427, !prof !46, !nosanitize !45

426:                                              ; preds = %422
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

427:                                              ; preds = %422
  %428 = extractvalue { i32, i1 } %424, 0, !nosanitize !45
  %429 = icmp ugt i32 %419, %428
  br i1 %429, label %615, label %430

430:                                              ; preds = %427
  %431 = zext i32 %383 to i64
  %432 = getelementptr inbounds nuw i8, ptr %389, i64 %431
  %433 = tail call i32 @llvm.usub.sat.i32(i32 %383, i32 %428)
  %434 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %411, i32 -1)
  %435 = extractvalue { i32, i1 } %434, 1, !nosanitize !45
  br i1 %435, label %436, label %437, !prof !46, !nosanitize !45

436:                                              ; preds = %558, %468, %430
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

437:                                              ; preds = %430
  %438 = load i32, ptr %25, align 8, !tbaa !70
  %439 = load i32, ptr %26, align 4, !tbaa !72
  %440 = getelementptr inbounds nuw i8, ptr %432, i64 258
  %441 = extractvalue { i32, i1 } %434, 0, !nosanitize !45
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i8, ptr %432, i64 %442
  %444 = load i8, ptr %443, align 1, !tbaa !8
  %445 = sext i32 %411 to i64
  %446 = getelementptr inbounds i8, ptr %432, i64 %445
  %447 = load i8, ptr %446, align 1, !tbaa !8
  %448 = load i32, ptr %27, align 4, !tbaa !68
  %449 = icmp ult i32 %411, %448
  %450 = lshr i32 %439, 2
  %451 = select i1 %449, i32 %439, i32 %450
  %452 = tail call i32 @llvm.umin.i32(i32 %438, i32 %382)
  %453 = getelementptr inbounds nuw i8, ptr %432, i64 1
  %454 = ptrtoint ptr %440 to i64
  br label %455

455:                                              ; preds = %591, %437
  %456 = phi i32 [ %412, %437 ], [ %577, %591 ]
  %457 = phi i32 [ %411, %437 ], [ %578, %591 ]
  %458 = phi i32 [ %451, %437 ], [ %592, %591 ]
  %459 = phi i32 [ %409, %437 ], [ %585, %591 ]
  %460 = phi i8 [ %444, %437 ], [ %579, %591 ]
  %461 = phi i8 [ %447, %437 ], [ %580, %591 ]
  %462 = zext nneg i32 %459 to i64
  %463 = getelementptr inbounds nuw i8, ptr %389, i64 %462
  %464 = sext i32 %457 to i64
  %465 = getelementptr inbounds i8, ptr %463, i64 %464
  %466 = load i8, ptr %465, align 1, !tbaa !8
  %467 = icmp eq i8 %466, %461
  br i1 %467, label %468, label %576

468:                                              ; preds = %455
  %469 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %457, i32 -1)
  %470 = extractvalue { i32, i1 } %469, 1, !nosanitize !45
  br i1 %470, label %436, label %471, !prof !46, !nosanitize !45

471:                                              ; preds = %468
  %472 = extractvalue { i32, i1 } %469, 0, !nosanitize !45
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i8, ptr %463, i64 %473
  %475 = load i8, ptr %474, align 1, !tbaa !8
  %476 = icmp eq i8 %475, %460
  br i1 %476, label %477, label %576

477:                                              ; preds = %471
  %478 = load i8, ptr %463, align 1, !tbaa !8
  %479 = load i8, ptr %432, align 1, !tbaa !8
  %480 = icmp eq i8 %478, %479
  br i1 %480, label %481, label %576

481:                                              ; preds = %477
  %482 = getelementptr inbounds nuw i8, ptr %463, i64 1
  %483 = load i8, ptr %482, align 1, !tbaa !8
  %484 = load i8, ptr %453, align 1, !tbaa !8
  %485 = icmp eq i8 %483, %484
  br i1 %485, label %486, label %576

486:                                              ; preds = %481
  %487 = getelementptr inbounds nuw i8, ptr %463, i64 2
  br label %488

488:                                              ; preds = %533, %486
  %489 = phi ptr [ %487, %486 ], [ %537, %533 ]
  %490 = phi i64 [ 2, %486 ], [ %534, %533 ]
  %491 = getelementptr inbounds nuw i8, ptr %432, i64 %490
  %492 = getelementptr inbounds nuw i8, ptr %491, i64 1
  %493 = load i8, ptr %492, align 1, !tbaa !8
  %494 = getelementptr inbounds nuw i8, ptr %489, i64 1
  %495 = load i8, ptr %494, align 1, !tbaa !8
  %496 = icmp eq i8 %493, %495
  br i1 %496, label %497, label %542

497:                                              ; preds = %488
  %498 = getelementptr inbounds nuw i8, ptr %491, i64 2
  %499 = load i8, ptr %498, align 1, !tbaa !8
  %500 = getelementptr inbounds nuw i8, ptr %489, i64 2
  %501 = load i8, ptr %500, align 1, !tbaa !8
  %502 = icmp eq i8 %499, %501
  br i1 %502, label %503, label %544

503:                                              ; preds = %497
  %504 = getelementptr inbounds nuw i8, ptr %491, i64 3
  %505 = load i8, ptr %504, align 1, !tbaa !8
  %506 = getelementptr inbounds nuw i8, ptr %489, i64 3
  %507 = load i8, ptr %506, align 1, !tbaa !8
  %508 = icmp eq i8 %505, %507
  br i1 %508, label %509, label %546

509:                                              ; preds = %503
  %510 = getelementptr inbounds nuw i8, ptr %491, i64 4
  %511 = load i8, ptr %510, align 1, !tbaa !8
  %512 = getelementptr inbounds nuw i8, ptr %489, i64 4
  %513 = load i8, ptr %512, align 1, !tbaa !8
  %514 = icmp eq i8 %511, %513
  br i1 %514, label %515, label %548

515:                                              ; preds = %509
  %516 = getelementptr inbounds nuw i8, ptr %491, i64 5
  %517 = load i8, ptr %516, align 1, !tbaa !8
  %518 = getelementptr inbounds nuw i8, ptr %489, i64 5
  %519 = load i8, ptr %518, align 1, !tbaa !8
  %520 = icmp eq i8 %517, %519
  br i1 %520, label %521, label %550

521:                                              ; preds = %515
  %522 = getelementptr inbounds nuw i8, ptr %491, i64 6
  %523 = load i8, ptr %522, align 1, !tbaa !8
  %524 = getelementptr inbounds nuw i8, ptr %489, i64 6
  %525 = load i8, ptr %524, align 1, !tbaa !8
  %526 = icmp eq i8 %523, %525
  br i1 %526, label %527, label %552

527:                                              ; preds = %521
  %528 = getelementptr inbounds nuw i8, ptr %491, i64 7
  %529 = load i8, ptr %528, align 1, !tbaa !8
  %530 = getelementptr inbounds nuw i8, ptr %489, i64 7
  %531 = load i8, ptr %530, align 1, !tbaa !8
  %532 = icmp eq i8 %529, %531
  br i1 %532, label %533, label %554

533:                                              ; preds = %527
  %534 = add nuw nsw i64 %490, 8
  %535 = getelementptr inbounds nuw i8, ptr %432, i64 %534
  %536 = load i8, ptr %535, align 1, !tbaa !8
  %537 = getelementptr inbounds nuw i8, ptr %489, i64 8
  %538 = load i8, ptr %537, align 1, !tbaa !8
  %539 = icmp eq i8 %536, %538
  %540 = icmp samesign ult i64 %490, 250
  %541 = select i1 %539, i1 %540, i1 false
  br i1 %541, label %488, label %556, !llvm.loop !152

542:                                              ; preds = %488
  %543 = getelementptr inbounds nuw i8, ptr %491, i64 1
  br label %558

544:                                              ; preds = %497
  %545 = getelementptr inbounds nuw i8, ptr %491, i64 2
  br label %558

546:                                              ; preds = %503
  %547 = getelementptr inbounds nuw i8, ptr %491, i64 3
  br label %558

548:                                              ; preds = %509
  %549 = getelementptr inbounds nuw i8, ptr %491, i64 4
  br label %558

550:                                              ; preds = %515
  %551 = getelementptr inbounds nuw i8, ptr %491, i64 5
  br label %558

552:                                              ; preds = %521
  %553 = getelementptr inbounds nuw i8, ptr %491, i64 6
  br label %558

554:                                              ; preds = %527
  %555 = getelementptr inbounds nuw i8, ptr %491, i64 7
  br label %558

556:                                              ; preds = %533
  %557 = getelementptr inbounds nuw i8, ptr %432, i64 %534
  br label %558

558:                                              ; preds = %556, %554, %552, %550, %548, %546, %544, %542
  %559 = phi ptr [ %545, %544 ], [ %547, %546 ], [ %543, %542 ], [ %555, %554 ], [ %553, %552 ], [ %551, %550 ], [ %549, %548 ], [ %557, %556 ]
  %560 = ptrtoint ptr %559 to i64
  %561 = sub i64 %454, %560
  %562 = trunc i64 %561 to i32
  %563 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %562), !nosanitize !45
  %564 = extractvalue { i32, i1 } %563, 0, !nosanitize !45
  %565 = extractvalue { i32, i1 } %563, 1, !nosanitize !45
  br i1 %565, label %436, label %566, !prof !46, !nosanitize !45

566:                                              ; preds = %558
  %567 = icmp sgt i32 %564, %457
  br i1 %567, label %568, label %576

568:                                              ; preds = %566
  store i32 %459, ptr %8, align 8, !tbaa !83
  %569 = icmp slt i32 %564, %452
  br i1 %569, label %570, label %594

570:                                              ; preds = %568
  %571 = sext i32 %564 to i64
  %572 = getelementptr i8, ptr %432, i64 %571
  %573 = getelementptr i8, ptr %572, i64 -1
  %574 = load i8, ptr %573, align 1, !tbaa !8
  %575 = load i8, ptr %572, align 1, !tbaa !8
  br label %576

576:                                              ; preds = %570, %566, %481, %477, %471, %455
  %577 = phi i32 [ %456, %455 ], [ %456, %471 ], [ %456, %477 ], [ %456, %481 ], [ %459, %570 ], [ %456, %566 ]
  %578 = phi i32 [ %457, %455 ], [ %457, %471 ], [ %457, %477 ], [ %457, %481 ], [ %564, %570 ], [ %457, %566 ]
  %579 = phi i8 [ %460, %455 ], [ %460, %471 ], [ %460, %477 ], [ %460, %481 ], [ %574, %570 ], [ %460, %566 ]
  %580 = phi i8 [ %461, %455 ], [ %461, %471 ], [ %461, %477 ], [ %461, %481 ], [ %575, %570 ], [ %461, %566 ]
  %581 = and i32 %459, %405
  %582 = zext nneg i32 %581 to i64
  %583 = getelementptr inbounds nuw [2 x i8], ptr %404, i64 %582
  %584 = load i16, ptr %583, align 2, !tbaa !62
  %585 = zext i16 %584 to i32
  %586 = icmp ult i32 %433, %585
  br i1 %586, label %587, label %594

587:                                              ; preds = %576
  %588 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %458, i32 1), !nosanitize !45
  %589 = extractvalue { i32, i1 } %588, 1, !nosanitize !45
  br i1 %589, label %590, label %591, !prof !46, !nosanitize !45

590:                                              ; preds = %587
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

591:                                              ; preds = %587
  %592 = extractvalue { i32, i1 } %588, 0, !nosanitize !45
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %594, label %455, !llvm.loop !153

594:                                              ; preds = %591, %576, %568
  %595 = phi i32 [ %577, %591 ], [ %577, %576 ], [ %459, %568 ]
  %596 = phi i32 [ %578, %591 ], [ %578, %576 ], [ %564, %568 ]
  %597 = tail call i32 @llvm.umin.i32(i32 %596, i32 %382)
  store i32 %597, ptr %21, align 8, !tbaa !78
  %598 = icmp ult i32 %597, 6
  br i1 %598, label %599, label %615

599:                                              ; preds = %594
  %600 = load i32, ptr %28, align 8, !tbaa !49
  %601 = icmp eq i32 %600, 1
  br i1 %601, label %611, label %602

602:                                              ; preds = %599
  %603 = icmp eq i32 %597, 3
  br i1 %603, label %604, label %615

604:                                              ; preds = %602
  %605 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %383, i32 %595), !nosanitize !45
  %606 = extractvalue { i32, i1 } %605, 1, !nosanitize !45
  br i1 %606, label %607, label %608, !prof !46, !nosanitize !45

607:                                              ; preds = %604
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

608:                                              ; preds = %604
  %609 = extractvalue { i32, i1 } %605, 0, !nosanitize !45
  %610 = icmp ugt i32 %609, 4096
  br i1 %610, label %611, label %615

611:                                              ; preds = %608, %599, %378
  %612 = phi i32 [ %380, %378 ], [ %412, %608 ], [ %412, %599 ]
  %613 = phi i32 [ %379, %378 ], [ %411, %608 ], [ %411, %599 ]
  %614 = phi i32 [ %371, %378 ], [ %382, %608 ], [ %382, %599 ]
  store i32 2, ptr %21, align 8, !tbaa !78
  br label %615

615:                                              ; preds = %611, %608, %602, %594, %427, %414, %387
  %616 = phi i32 [ 2, %414 ], [ %597, %594 ], [ %597, %602 ], [ 3, %608 ], [ 2, %387 ], [ 2, %427 ], [ 2, %611 ]
  %617 = phi i32 [ %412, %414 ], [ %412, %594 ], [ %412, %602 ], [ %412, %608 ], [ %412, %387 ], [ %412, %427 ], [ %612, %611 ]
  %618 = phi i32 [ %411, %414 ], [ %411, %594 ], [ %411, %602 ], [ %411, %608 ], [ %411, %387 ], [ %411, %427 ], [ %613, %611 ]
  %619 = phi i32 [ %382, %414 ], [ %382, %594 ], [ %382, %602 ], [ %382, %608 ], [ %382, %387 ], [ %382, %427 ], [ %614, %611 ]
  %620 = icmp ult i32 %618, 3
  %621 = icmp ugt i32 %616, %618
  %622 = or i1 %620, %621
  br i1 %622, label %834, label %623

623:                                              ; preds = %615
  %624 = load i32, ptr %6, align 4, !tbaa !73
  %625 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %624, i32 %619), !nosanitize !45
  %626 = extractvalue { i32, i1 } %625, 1, !nosanitize !45
  br i1 %626, label %627, label %628, !prof !46, !nosanitize !45

627:                                              ; preds = %623
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

628:                                              ; preds = %623
  %629 = extractvalue { i32, i1 } %625, 0, !nosanitize !45
  %630 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %629, i32 3), !nosanitize !45
  %631 = extractvalue { i32, i1 } %630, 0, !nosanitize !45
  %632 = extractvalue { i32, i1 } %630, 1, !nosanitize !45
  br i1 %632, label %633, label %634, !prof !46, !nosanitize !45

633:                                              ; preds = %628
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

634:                                              ; preds = %628
  %635 = trunc i32 %618 to i8
  %636 = add i8 %635, -3
  %637 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %624, i32 1), !nosanitize !45
  %638 = extractvalue { i32, i1 } %637, 1, !nosanitize !45
  br i1 %638, label %639, label %640, !prof !46, !nosanitize !45

639:                                              ; preds = %634
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

640:                                              ; preds = %634
  %641 = extractvalue { i32, i1 } %637, 0, !nosanitize !45
  %642 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %641, i32 %617), !nosanitize !45
  %643 = extractvalue { i32, i1 } %642, 1, !nosanitize !45
  br i1 %643, label %644, label %645, !prof !46, !nosanitize !45

644:                                              ; preds = %640
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

645:                                              ; preds = %640
  %646 = extractvalue { i32, i1 } %642, 0, !nosanitize !45
  %647 = trunc i32 %646 to i16
  %648 = load i32, ptr %30, align 4, !tbaa !139
  %649 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %648, i32 1), !nosanitize !45
  %650 = extractvalue { i32, i1 } %649, 1, !nosanitize !45
  br i1 %650, label %651, label %652, !prof !46, !nosanitize !45

651:                                              ; preds = %645
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

652:                                              ; preds = %645
  %653 = extractvalue { i32, i1 } %649, 0, !nosanitize !45
  %654 = load ptr, ptr %29, align 8, !tbaa !44
  %655 = trunc i32 %646 to i8
  store i32 %653, ptr %30, align 4, !tbaa !139
  %656 = zext i32 %648 to i64
  %657 = getelementptr inbounds nuw i8, ptr %654, i64 %656
  store i8 %655, ptr %657, align 1, !tbaa !8
  %658 = load i32, ptr %30, align 4, !tbaa !139
  %659 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %658, i32 1), !nosanitize !45
  %660 = extractvalue { i32, i1 } %659, 1, !nosanitize !45
  br i1 %660, label %661, label %662, !prof !46, !nosanitize !45

661:                                              ; preds = %652
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

662:                                              ; preds = %652
  %663 = extractvalue { i32, i1 } %659, 0, !nosanitize !45
  %664 = load ptr, ptr %29, align 8, !tbaa !44
  %665 = lshr i32 %646, 8
  %666 = trunc i32 %665 to i8
  store i32 %663, ptr %30, align 4, !tbaa !139
  %667 = zext i32 %658 to i64
  %668 = getelementptr inbounds nuw i8, ptr %664, i64 %667
  store i8 %666, ptr %668, align 1, !tbaa !8
  %669 = load i32, ptr %30, align 4, !tbaa !139
  %670 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %669, i32 1), !nosanitize !45
  %671 = extractvalue { i32, i1 } %670, 1, !nosanitize !45
  br i1 %671, label %672, label %673, !prof !46, !nosanitize !45

672:                                              ; preds = %662
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

673:                                              ; preds = %662
  %674 = extractvalue { i32, i1 } %670, 0, !nosanitize !45
  %675 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %674, ptr %30, align 4, !tbaa !139
  %676 = zext i32 %669 to i64
  %677 = getelementptr inbounds nuw i8, ptr %675, i64 %676
  store i8 %636, ptr %677, align 1, !tbaa !8
  %678 = add i16 %647, -1
  %679 = zext i8 %636 to i64
  %680 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %679
  %681 = load i8, ptr %680, align 1, !tbaa !8
  %682 = zext i8 %681 to i64
  %683 = getelementptr [4 x i8], ptr %31, i64 %682
  %684 = load i16, ptr %683, align 4, !tbaa !8
  %685 = add i16 %684, 1
  store i16 %685, ptr %683, align 4, !tbaa !8
  %686 = icmp ult i16 %678, 256
  br i1 %686, label %687, label %690

687:                                              ; preds = %673
  %688 = zext nneg i16 %678 to i64
  %689 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %688
  br label %695

690:                                              ; preds = %673
  %691 = lshr i16 %678, 7
  %692 = zext nneg i16 %691 to i64
  %693 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %692
  %694 = getelementptr inbounds nuw i8, ptr %693, i64 256
  br label %695

695:                                              ; preds = %690, %687
  %696 = phi ptr [ %689, %687 ], [ %694, %690 ]
  %697 = load i8, ptr %696, align 1, !tbaa !8
  %698 = zext i8 %697 to i64
  %699 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %698
  %700 = load i16, ptr %699, align 4, !tbaa !8
  %701 = add i16 %700, 1
  store i16 %701, ptr %699, align 4, !tbaa !8
  %702 = load i32, ptr %30, align 4, !tbaa !139
  %703 = load i32, ptr %33, align 8, !tbaa !47
  %704 = icmp eq i32 %702, %703
  %705 = load i32, ptr %22, align 8, !tbaa !77
  %706 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %705, i32 1), !nosanitize !45
  %707 = extractvalue { i32, i1 } %706, 1, !nosanitize !45
  br i1 %707, label %708, label %709, !prof !46, !nosanitize !45

708:                                              ; preds = %695
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

709:                                              ; preds = %695
  %710 = extractvalue { i32, i1 } %706, 0, !nosanitize !45
  %711 = load i32, ptr %3, align 4, !tbaa !75
  %712 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %711, i32 %710), !nosanitize !45
  %713 = extractvalue { i32, i1 } %712, 1, !nosanitize !45
  br i1 %713, label %714, label %715, !prof !46, !nosanitize !45

714:                                              ; preds = %709
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

715:                                              ; preds = %709
  %716 = extractvalue { i32, i1 } %712, 0, !nosanitize !45
  store i32 %716, ptr %3, align 4, !tbaa !75
  %717 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %705, i32 2), !nosanitize !45
  %718 = extractvalue { i32, i1 } %717, 1, !nosanitize !45
  br i1 %718, label %719, label %720, !prof !46, !nosanitize !45

719:                                              ; preds = %715
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

720:                                              ; preds = %715
  %721 = extractvalue { i32, i1 } %717, 0, !nosanitize !45
  store i32 %721, ptr %22, align 8, !tbaa !77
  %722 = load i32, ptr %6, align 4, !tbaa !73
  br label %723

723:                                              ; preds = %760, %720
  %724 = phi i32 [ %761, %760 ], [ %721, %720 ]
  %725 = phi i32 [ %727, %760 ], [ %722, %720 ]
  %726 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %725, i32 1), !nosanitize !45
  %727 = extractvalue { i32, i1 } %726, 0, !nosanitize !45
  %728 = extractvalue { i32, i1 } %726, 1, !nosanitize !45
  br i1 %728, label %729, label %730, !prof !46, !nosanitize !45

729:                                              ; preds = %723
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

730:                                              ; preds = %723
  store i32 %727, ptr %6, align 4, !tbaa !73
  %731 = icmp ugt i32 %727, %631
  br i1 %731, label %756, label %732

732:                                              ; preds = %730
  %733 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %727, i32 2), !nosanitize !45
  %734 = extractvalue { i32, i1 } %733, 0, !nosanitize !45
  %735 = load ptr, ptr %7, align 8, !tbaa !34
  %736 = load i32, ptr %15, align 8, !tbaa !80
  %737 = load i32, ptr %16, align 8, !tbaa !53
  %738 = shl i32 %736, %737
  %739 = zext i32 %734 to i64
  %740 = getelementptr inbounds nuw i8, ptr %735, i64 %739
  %741 = load i8, ptr %740, align 1, !tbaa !8
  %742 = zext i8 %741 to i32
  %743 = xor i32 %738, %742
  %744 = load i32, ptr %17, align 4, !tbaa !52
  %745 = and i32 %743, %744
  store i32 %745, ptr %15, align 8, !tbaa !80
  %746 = load ptr, ptr %12, align 8, !tbaa !37
  %747 = zext i32 %745 to i64
  %748 = getelementptr inbounds nuw [2 x i8], ptr %746, i64 %747
  %749 = load i16, ptr %748, align 2, !tbaa !62
  %750 = load ptr, ptr %13, align 8, !tbaa !35
  %751 = load i32, ptr %18, align 8, !tbaa !33
  %752 = and i32 %751, %727
  %753 = zext i32 %752 to i64
  %754 = getelementptr inbounds nuw [2 x i8], ptr %750, i64 %753
  store i16 %749, ptr %754, align 2, !tbaa !62
  %755 = trunc i32 %727 to i16
  store i16 %755, ptr %748, align 2, !tbaa !62
  br label %756

756:                                              ; preds = %732, %730
  %757 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %724, i32 1), !nosanitize !45
  %758 = extractvalue { i32, i1 } %757, 1, !nosanitize !45
  br i1 %758, label %759, label %760, !prof !46, !nosanitize !45

759:                                              ; preds = %777, %756
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

760:                                              ; preds = %756
  %761 = extractvalue { i32, i1 } %757, 0, !nosanitize !45
  store i32 %761, ptr %22, align 8, !tbaa !77
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %763, label %723, !llvm.loop !160

763:                                              ; preds = %760
  store i32 0, ptr %34, align 8, !tbaa !79
  store i32 2, ptr %21, align 8, !tbaa !78
  %764 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %727, i32 1), !nosanitize !45
  %765 = extractvalue { i32, i1 } %764, 1, !nosanitize !45
  br i1 %765, label %766, label %767, !prof !46, !nosanitize !45

766:                                              ; preds = %763
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

767:                                              ; preds = %763
  %768 = extractvalue { i32, i1 } %764, 0, !nosanitize !45
  store i32 %768, ptr %6, align 4, !tbaa !73
  br i1 %704, label %770, label %769

769:                                              ; preds = %969, %953, %829, %767
  br label %36

770:                                              ; preds = %767
  %771 = load i64, ptr %9, align 8, !tbaa !74
  %772 = icmp sgt i64 %771, -1
  br i1 %772, label %773, label %777

773:                                              ; preds = %770
  %774 = load ptr, ptr %7, align 8, !tbaa !34
  %775 = and i64 %771, 4294967295
  %776 = getelementptr inbounds nuw i8, ptr %774, i64 %775
  br label %777

777:                                              ; preds = %773, %770
  %778 = phi ptr [ %776, %773 ], [ null, %770 ]
  %779 = zext i32 %768 to i64
  %780 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %779, i64 %771), !nosanitize !45
  %781 = extractvalue { i64, i1 } %780, 1, !nosanitize !45
  br i1 %781, label %759, label %782, !prof !46, !nosanitize !45

782:                                              ; preds = %777
  %783 = extractvalue { i64, i1 } %780, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %778, i64 noundef %783, i32 noundef 0) #10
  %784 = load i32, ptr %6, align 4, !tbaa !73
  %785 = zext i32 %784 to i64
  store i64 %785, ptr %9, align 8, !tbaa !74
  %786 = load ptr, ptr %0, align 8, !tbaa !20
  %787 = getelementptr inbounds nuw i8, ptr %786, i64 56
  %788 = load ptr, ptr %787, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %788) #10
  %789 = getelementptr inbounds nuw i8, ptr %788, i64 40
  %790 = load i64, ptr %789, align 8, !tbaa !57
  %791 = getelementptr inbounds nuw i8, ptr %786, i64 32
  %792 = load i32, ptr %791, align 8, !tbaa !107
  %793 = zext i32 %792 to i64
  %794 = tail call i64 @llvm.umin.i64(i64 %790, i64 %793)
  %795 = trunc nuw i64 %794 to i32
  %796 = icmp eq i64 %794, 0
  br i1 %796, label %829, label %797

797:                                              ; preds = %782
  %798 = getelementptr inbounds nuw i8, ptr %786, i64 24
  %799 = load ptr, ptr %798, align 8, !tbaa !106
  %800 = getelementptr inbounds nuw i8, ptr %788, i64 32
  %801 = load ptr, ptr %800, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %799, ptr align 1 %801, i64 %794, i1 false)
  %802 = load ptr, ptr %798, align 8, !tbaa !106
  %803 = getelementptr inbounds nuw i8, ptr %802, i64 %794
  store ptr %803, ptr %798, align 8, !tbaa !106
  %804 = load ptr, ptr %800, align 8, !tbaa !58
  %805 = getelementptr inbounds nuw i8, ptr %804, i64 %794
  store ptr %805, ptr %800, align 8, !tbaa !58
  %806 = getelementptr inbounds nuw i8, ptr %786, i64 40
  %807 = load i64, ptr %806, align 8, !tbaa !108
  %808 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %807, i64 %794), !nosanitize !45
  %809 = extractvalue { i64, i1 } %808, 1, !nosanitize !45
  br i1 %809, label %810, label %811, !prof !46, !nosanitize !45

810:                                              ; preds = %797
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

811:                                              ; preds = %797
  %812 = extractvalue { i64, i1 } %808, 0, !nosanitize !45
  store i64 %812, ptr %806, align 8, !tbaa !108
  %813 = load i32, ptr %791, align 8, !tbaa !107
  %814 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %813, i32 %795), !nosanitize !45
  %815 = extractvalue { i32, i1 } %814, 1, !nosanitize !45
  br i1 %815, label %816, label %817, !prof !46, !nosanitize !45

816:                                              ; preds = %811
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

817:                                              ; preds = %811
  %818 = extractvalue { i32, i1 } %814, 0, !nosanitize !45
  store i32 %818, ptr %791, align 8, !tbaa !107
  %819 = load i64, ptr %789, align 8, !tbaa !57
  %820 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %819, i64 %794), !nosanitize !45
  %821 = extractvalue { i64, i1 } %820, 1, !nosanitize !45
  br i1 %821, label %822, label %823, !prof !46, !nosanitize !45

822:                                              ; preds = %817
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

823:                                              ; preds = %817
  %824 = extractvalue { i64, i1 } %820, 0, !nosanitize !45
  store i64 %824, ptr %789, align 8, !tbaa !57
  %825 = icmp eq i64 %824, 0
  br i1 %825, label %826, label %829

826:                                              ; preds = %823
  %827 = getelementptr inbounds nuw i8, ptr %788, i64 16
  %828 = load ptr, ptr %827, align 8, !tbaa !40
  store ptr %828, ptr %800, align 8, !tbaa !58
  br label %829

829:                                              ; preds = %826, %823, %782
  %830 = load ptr, ptr %0, align 8, !tbaa !20
  %831 = getelementptr inbounds nuw i8, ptr %830, i64 32
  %832 = load i32, ptr %831, align 8, !tbaa !107
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %1154, label %769

834:                                              ; preds = %615
  %835 = load i32, ptr %34, align 8, !tbaa !79
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %959, label %837

837:                                              ; preds = %834
  %838 = load i32, ptr %6, align 4, !tbaa !73
  %839 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %838, i32 1), !nosanitize !45
  %840 = extractvalue { i32, i1 } %839, 1, !nosanitize !45
  br i1 %840, label %841, label %842, !prof !46, !nosanitize !45

841:                                              ; preds = %889, %837
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

842:                                              ; preds = %837
  %843 = extractvalue { i32, i1 } %839, 0, !nosanitize !45
  %844 = load ptr, ptr %7, align 8, !tbaa !34
  %845 = zext i32 %843 to i64
  %846 = getelementptr inbounds nuw i8, ptr %844, i64 %845
  %847 = load i8, ptr %846, align 1, !tbaa !8
  %848 = load i32, ptr %30, align 4, !tbaa !139
  %849 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %848, i32 1), !nosanitize !45
  %850 = extractvalue { i32, i1 } %849, 1, !nosanitize !45
  br i1 %850, label %851, label %852, !prof !46, !nosanitize !45

851:                                              ; preds = %842
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

852:                                              ; preds = %842
  %853 = extractvalue { i32, i1 } %849, 0, !nosanitize !45
  %854 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %853, ptr %30, align 4, !tbaa !139
  %855 = zext i32 %848 to i64
  %856 = getelementptr inbounds nuw i8, ptr %854, i64 %855
  store i8 0, ptr %856, align 1, !tbaa !8
  %857 = load i32, ptr %30, align 4, !tbaa !139
  %858 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %857, i32 1), !nosanitize !45
  %859 = extractvalue { i32, i1 } %858, 1, !nosanitize !45
  br i1 %859, label %860, label %861, !prof !46, !nosanitize !45

860:                                              ; preds = %852
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

861:                                              ; preds = %852
  %862 = extractvalue { i32, i1 } %858, 0, !nosanitize !45
  %863 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %862, ptr %30, align 4, !tbaa !139
  %864 = zext i32 %857 to i64
  %865 = getelementptr inbounds nuw i8, ptr %863, i64 %864
  store i8 0, ptr %865, align 1, !tbaa !8
  %866 = load i32, ptr %30, align 4, !tbaa !139
  %867 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %866, i32 1), !nosanitize !45
  %868 = extractvalue { i32, i1 } %867, 1, !nosanitize !45
  br i1 %868, label %869, label %870, !prof !46, !nosanitize !45

869:                                              ; preds = %861
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

870:                                              ; preds = %861
  %871 = extractvalue { i32, i1 } %867, 0, !nosanitize !45
  %872 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %871, ptr %30, align 4, !tbaa !139
  %873 = zext i32 %866 to i64
  %874 = getelementptr inbounds nuw i8, ptr %872, i64 %873
  store i8 %847, ptr %874, align 1, !tbaa !8
  %875 = zext i8 %847 to i64
  %876 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %875
  %877 = load i16, ptr %876, align 4, !tbaa !8
  %878 = add i16 %877, 1
  store i16 %878, ptr %876, align 4, !tbaa !8
  %879 = load i32, ptr %30, align 4, !tbaa !139
  %880 = load i32, ptr %33, align 8, !tbaa !47
  %881 = icmp eq i32 %879, %880
  br i1 %881, label %882, label %942

882:                                              ; preds = %870
  %883 = load i64, ptr %9, align 8, !tbaa !74
  %884 = icmp sgt i64 %883, -1
  br i1 %884, label %885, label %889

885:                                              ; preds = %882
  %886 = load ptr, ptr %7, align 8, !tbaa !34
  %887 = and i64 %883, 4294967295
  %888 = getelementptr inbounds nuw i8, ptr %886, i64 %887
  br label %889

889:                                              ; preds = %885, %882
  %890 = phi ptr [ %888, %885 ], [ null, %882 ]
  %891 = load i32, ptr %6, align 4, !tbaa !73
  %892 = zext i32 %891 to i64
  %893 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %892, i64 %883), !nosanitize !45
  %894 = extractvalue { i64, i1 } %893, 1, !nosanitize !45
  br i1 %894, label %841, label %895, !prof !46, !nosanitize !45

895:                                              ; preds = %889
  %896 = extractvalue { i64, i1 } %893, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %890, i64 noundef %896, i32 noundef 0) #10
  %897 = load i32, ptr %6, align 4, !tbaa !73
  %898 = zext i32 %897 to i64
  store i64 %898, ptr %9, align 8, !tbaa !74
  %899 = load ptr, ptr %0, align 8, !tbaa !20
  %900 = getelementptr inbounds nuw i8, ptr %899, i64 56
  %901 = load ptr, ptr %900, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %901) #10
  %902 = getelementptr inbounds nuw i8, ptr %901, i64 40
  %903 = load i64, ptr %902, align 8, !tbaa !57
  %904 = getelementptr inbounds nuw i8, ptr %899, i64 32
  %905 = load i32, ptr %904, align 8, !tbaa !107
  %906 = zext i32 %905 to i64
  %907 = tail call i64 @llvm.umin.i64(i64 %903, i64 %906)
  %908 = trunc nuw i64 %907 to i32
  %909 = icmp eq i64 %907, 0
  br i1 %909, label %942, label %910

910:                                              ; preds = %895
  %911 = getelementptr inbounds nuw i8, ptr %899, i64 24
  %912 = load ptr, ptr %911, align 8, !tbaa !106
  %913 = getelementptr inbounds nuw i8, ptr %901, i64 32
  %914 = load ptr, ptr %913, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %912, ptr align 1 %914, i64 %907, i1 false)
  %915 = load ptr, ptr %911, align 8, !tbaa !106
  %916 = getelementptr inbounds nuw i8, ptr %915, i64 %907
  store ptr %916, ptr %911, align 8, !tbaa !106
  %917 = load ptr, ptr %913, align 8, !tbaa !58
  %918 = getelementptr inbounds nuw i8, ptr %917, i64 %907
  store ptr %918, ptr %913, align 8, !tbaa !58
  %919 = getelementptr inbounds nuw i8, ptr %899, i64 40
  %920 = load i64, ptr %919, align 8, !tbaa !108
  %921 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %920, i64 %907), !nosanitize !45
  %922 = extractvalue { i64, i1 } %921, 1, !nosanitize !45
  br i1 %922, label %923, label %924, !prof !46, !nosanitize !45

923:                                              ; preds = %910
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

924:                                              ; preds = %910
  %925 = extractvalue { i64, i1 } %921, 0, !nosanitize !45
  store i64 %925, ptr %919, align 8, !tbaa !108
  %926 = load i32, ptr %904, align 8, !tbaa !107
  %927 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %926, i32 %908), !nosanitize !45
  %928 = extractvalue { i32, i1 } %927, 1, !nosanitize !45
  br i1 %928, label %929, label %930, !prof !46, !nosanitize !45

929:                                              ; preds = %924
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

930:                                              ; preds = %924
  %931 = extractvalue { i32, i1 } %927, 0, !nosanitize !45
  store i32 %931, ptr %904, align 8, !tbaa !107
  %932 = load i64, ptr %902, align 8, !tbaa !57
  %933 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %932, i64 %907), !nosanitize !45
  %934 = extractvalue { i64, i1 } %933, 1, !nosanitize !45
  br i1 %934, label %935, label %936, !prof !46, !nosanitize !45

935:                                              ; preds = %930
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

936:                                              ; preds = %930
  %937 = extractvalue { i64, i1 } %933, 0, !nosanitize !45
  store i64 %937, ptr %902, align 8, !tbaa !57
  %938 = icmp eq i64 %937, 0
  br i1 %938, label %939, label %942

939:                                              ; preds = %936
  %940 = getelementptr inbounds nuw i8, ptr %901, i64 16
  %941 = load ptr, ptr %940, align 8, !tbaa !40
  store ptr %941, ptr %913, align 8, !tbaa !58
  br label %942

942:                                              ; preds = %939, %936, %895, %870
  %943 = load i32, ptr %6, align 4, !tbaa !73
  %944 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %943, i32 1), !nosanitize !45
  %945 = extractvalue { i32, i1 } %944, 1, !nosanitize !45
  br i1 %945, label %946, label %947, !prof !46, !nosanitize !45

946:                                              ; preds = %942
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

947:                                              ; preds = %942
  %948 = extractvalue { i32, i1 } %944, 0, !nosanitize !45
  store i32 %948, ptr %6, align 4, !tbaa !73
  %949 = load i32, ptr %3, align 4, !tbaa !75
  %950 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %949, i32 1), !nosanitize !45
  %951 = extractvalue { i32, i1 } %950, 1, !nosanitize !45
  br i1 %951, label %952, label %953, !prof !46, !nosanitize !45

952:                                              ; preds = %947
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

953:                                              ; preds = %947
  %954 = extractvalue { i32, i1 } %950, 0, !nosanitize !45
  store i32 %954, ptr %3, align 4, !tbaa !75
  %955 = load ptr, ptr %0, align 8, !tbaa !20
  %956 = getelementptr inbounds nuw i8, ptr %955, i64 32
  %957 = load i32, ptr %956, align 8, !tbaa !107
  %958 = icmp eq i32 %957, 0
  br i1 %958, label %1154, label %769

959:                                              ; preds = %834
  store i32 1, ptr %34, align 8, !tbaa !79
  %960 = load i32, ptr %6, align 4, !tbaa !73
  %961 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %960, i32 1), !nosanitize !45
  %962 = extractvalue { i32, i1 } %961, 1, !nosanitize !45
  br i1 %962, label %963, label %964, !prof !46, !nosanitize !45

963:                                              ; preds = %959
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

964:                                              ; preds = %959
  %965 = extractvalue { i32, i1 } %961, 0, !nosanitize !45
  store i32 %965, ptr %6, align 4, !tbaa !73
  %966 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %619, i32 1), !nosanitize !45
  %967 = extractvalue { i32, i1 } %966, 1, !nosanitize !45
  br i1 %967, label %968, label %969, !prof !46, !nosanitize !45

968:                                              ; preds = %964
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

969:                                              ; preds = %964
  %970 = extractvalue { i32, i1 } %966, 0, !nosanitize !45
  store i32 %970, ptr %3, align 4, !tbaa !75
  br label %769

971:                                              ; preds = %374
  %972 = load i32, ptr %34, align 8, !tbaa !79
  %973 = icmp eq i32 %972, 0
  %974 = load i32, ptr %6, align 4, !tbaa !73
  br i1 %973, label %1017, label %975

975:                                              ; preds = %971
  %976 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %974, i32 1), !nosanitize !45
  %977 = extractvalue { i32, i1 } %976, 1, !nosanitize !45
  br i1 %977, label %978, label %979, !prof !46, !nosanitize !45

978:                                              ; preds = %1096, %1028, %975
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

979:                                              ; preds = %975
  %980 = extractvalue { i32, i1 } %976, 0, !nosanitize !45
  %981 = load ptr, ptr %7, align 8, !tbaa !34
  %982 = zext i32 %980 to i64
  %983 = getelementptr inbounds nuw i8, ptr %981, i64 %982
  %984 = load i8, ptr %983, align 1, !tbaa !8
  %985 = load i32, ptr %30, align 4, !tbaa !139
  %986 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %985, i32 1), !nosanitize !45
  %987 = extractvalue { i32, i1 } %986, 1, !nosanitize !45
  br i1 %987, label %988, label %989, !prof !46, !nosanitize !45

988:                                              ; preds = %979
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

989:                                              ; preds = %979
  %990 = extractvalue { i32, i1 } %986, 0, !nosanitize !45
  %991 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %990, ptr %30, align 4, !tbaa !139
  %992 = zext i32 %985 to i64
  %993 = getelementptr inbounds nuw i8, ptr %991, i64 %992
  store i8 0, ptr %993, align 1, !tbaa !8
  %994 = load i32, ptr %30, align 4, !tbaa !139
  %995 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %994, i32 1), !nosanitize !45
  %996 = extractvalue { i32, i1 } %995, 1, !nosanitize !45
  br i1 %996, label %997, label %998, !prof !46, !nosanitize !45

997:                                              ; preds = %989
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

998:                                              ; preds = %989
  %999 = extractvalue { i32, i1 } %995, 0, !nosanitize !45
  %1000 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %999, ptr %30, align 4, !tbaa !139
  %1001 = zext i32 %994 to i64
  %1002 = getelementptr inbounds nuw i8, ptr %1000, i64 %1001
  store i8 0, ptr %1002, align 1, !tbaa !8
  %1003 = load i32, ptr %30, align 4, !tbaa !139
  %1004 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1003, i32 1), !nosanitize !45
  %1005 = extractvalue { i32, i1 } %1004, 1, !nosanitize !45
  br i1 %1005, label %1006, label %1007, !prof !46, !nosanitize !45

1006:                                             ; preds = %998
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1007:                                             ; preds = %998
  %1008 = extractvalue { i32, i1 } %1004, 0, !nosanitize !45
  %1009 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %1008, ptr %30, align 4, !tbaa !139
  %1010 = zext i32 %1003 to i64
  %1011 = getelementptr inbounds nuw i8, ptr %1009, i64 %1010
  store i8 %984, ptr %1011, align 1, !tbaa !8
  %1012 = zext i8 %984 to i64
  %1013 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %1012
  %1014 = load i16, ptr %1013, align 4, !tbaa !8
  %1015 = add i16 %1014, 1
  store i16 %1015, ptr %1013, align 4, !tbaa !8
  store i32 0, ptr %34, align 8, !tbaa !79
  %1016 = load i32, ptr %6, align 4, !tbaa !73
  br label %1017

1017:                                             ; preds = %1007, %971
  %1018 = phi i32 [ %1016, %1007 ], [ %974, %971 ]
  %1019 = tail call i32 @llvm.umin.i32(i32 %1018, i32 2)
  store i32 %1019, ptr %10, align 4, !tbaa !76
  %1020 = icmp eq i32 %1, 4
  br i1 %1020, label %1021, label %1086

1021:                                             ; preds = %1017
  %1022 = load i64, ptr %9, align 8, !tbaa !74
  %1023 = icmp sgt i64 %1022, -1
  br i1 %1023, label %1024, label %1028

1024:                                             ; preds = %1021
  %1025 = load ptr, ptr %7, align 8, !tbaa !34
  %1026 = and i64 %1022, 4294967295
  %1027 = getelementptr inbounds nuw i8, ptr %1025, i64 %1026
  br label %1028

1028:                                             ; preds = %1024, %1021
  %1029 = phi ptr [ %1027, %1024 ], [ null, %1021 ]
  %1030 = zext i32 %1018 to i64
  %1031 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1030, i64 %1022), !nosanitize !45
  %1032 = extractvalue { i64, i1 } %1031, 1, !nosanitize !45
  br i1 %1032, label %978, label %1033, !prof !46, !nosanitize !45

1033:                                             ; preds = %1028
  %1034 = extractvalue { i64, i1 } %1031, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1029, i64 noundef %1034, i32 noundef 1) #10
  %1035 = load i32, ptr %6, align 4, !tbaa !73
  %1036 = zext i32 %1035 to i64
  store i64 %1036, ptr %9, align 8, !tbaa !74
  %1037 = load ptr, ptr %0, align 8, !tbaa !20
  %1038 = getelementptr inbounds nuw i8, ptr %1037, i64 56
  %1039 = load ptr, ptr %1038, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %1039) #10
  %1040 = getelementptr inbounds nuw i8, ptr %1039, i64 40
  %1041 = load i64, ptr %1040, align 8, !tbaa !57
  %1042 = getelementptr inbounds nuw i8, ptr %1037, i64 32
  %1043 = load i32, ptr %1042, align 8, !tbaa !107
  %1044 = zext i32 %1043 to i64
  %1045 = tail call i64 @llvm.umin.i64(i64 %1041, i64 %1044)
  %1046 = trunc nuw i64 %1045 to i32
  %1047 = icmp eq i64 %1045, 0
  br i1 %1047, label %1080, label %1048

1048:                                             ; preds = %1033
  %1049 = getelementptr inbounds nuw i8, ptr %1037, i64 24
  %1050 = load ptr, ptr %1049, align 8, !tbaa !106
  %1051 = getelementptr inbounds nuw i8, ptr %1039, i64 32
  %1052 = load ptr, ptr %1051, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1050, ptr align 1 %1052, i64 %1045, i1 false)
  %1053 = load ptr, ptr %1049, align 8, !tbaa !106
  %1054 = getelementptr inbounds nuw i8, ptr %1053, i64 %1045
  store ptr %1054, ptr %1049, align 8, !tbaa !106
  %1055 = load ptr, ptr %1051, align 8, !tbaa !58
  %1056 = getelementptr inbounds nuw i8, ptr %1055, i64 %1045
  store ptr %1056, ptr %1051, align 8, !tbaa !58
  %1057 = getelementptr inbounds nuw i8, ptr %1037, i64 40
  %1058 = load i64, ptr %1057, align 8, !tbaa !108
  %1059 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1058, i64 %1045), !nosanitize !45
  %1060 = extractvalue { i64, i1 } %1059, 1, !nosanitize !45
  br i1 %1060, label %1061, label %1062, !prof !46, !nosanitize !45

1061:                                             ; preds = %1048
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1062:                                             ; preds = %1048
  %1063 = extractvalue { i64, i1 } %1059, 0, !nosanitize !45
  store i64 %1063, ptr %1057, align 8, !tbaa !108
  %1064 = load i32, ptr %1042, align 8, !tbaa !107
  %1065 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1064, i32 %1046), !nosanitize !45
  %1066 = extractvalue { i32, i1 } %1065, 1, !nosanitize !45
  br i1 %1066, label %1067, label %1068, !prof !46, !nosanitize !45

1067:                                             ; preds = %1062
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

1068:                                             ; preds = %1062
  %1069 = extractvalue { i32, i1 } %1065, 0, !nosanitize !45
  store i32 %1069, ptr %1042, align 8, !tbaa !107
  %1070 = load i64, ptr %1040, align 8, !tbaa !57
  %1071 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1070, i64 %1045), !nosanitize !45
  %1072 = extractvalue { i64, i1 } %1071, 1, !nosanitize !45
  br i1 %1072, label %1073, label %1074, !prof !46, !nosanitize !45

1073:                                             ; preds = %1068
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

1074:                                             ; preds = %1068
  %1075 = extractvalue { i64, i1 } %1071, 0, !nosanitize !45
  store i64 %1075, ptr %1040, align 8, !tbaa !57
  %1076 = icmp eq i64 %1075, 0
  br i1 %1076, label %1077, label %1080

1077:                                             ; preds = %1074
  %1078 = getelementptr inbounds nuw i8, ptr %1039, i64 16
  %1079 = load ptr, ptr %1078, align 8, !tbaa !40
  store ptr %1079, ptr %1051, align 8, !tbaa !58
  br label %1080

1080:                                             ; preds = %1077, %1074, %1033
  %1081 = load ptr, ptr %0, align 8, !tbaa !20
  %1082 = getelementptr inbounds nuw i8, ptr %1081, i64 32
  %1083 = load i32, ptr %1082, align 8, !tbaa !107
  %1084 = icmp eq i32 %1083, 0
  %1085 = select i1 %1084, i32 2, i32 3
  br label %1154

1086:                                             ; preds = %1017
  %1087 = load i32, ptr %30, align 4, !tbaa !139
  %1088 = icmp eq i32 %1087, 0
  br i1 %1088, label %1153, label %1089

1089:                                             ; preds = %1086
  %1090 = load i64, ptr %9, align 8, !tbaa !74
  %1091 = icmp sgt i64 %1090, -1
  br i1 %1091, label %1092, label %1096

1092:                                             ; preds = %1089
  %1093 = load ptr, ptr %7, align 8, !tbaa !34
  %1094 = and i64 %1090, 4294967295
  %1095 = getelementptr inbounds nuw i8, ptr %1093, i64 %1094
  br label %1096

1096:                                             ; preds = %1092, %1089
  %1097 = phi ptr [ %1095, %1092 ], [ null, %1089 ]
  %1098 = zext i32 %1018 to i64
  %1099 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1098, i64 %1090), !nosanitize !45
  %1100 = extractvalue { i64, i1 } %1099, 1, !nosanitize !45
  br i1 %1100, label %978, label %1101, !prof !46, !nosanitize !45

1101:                                             ; preds = %1096
  %1102 = extractvalue { i64, i1 } %1099, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1097, i64 noundef %1102, i32 noundef 0) #10
  %1103 = load i32, ptr %6, align 4, !tbaa !73
  %1104 = zext i32 %1103 to i64
  store i64 %1104, ptr %9, align 8, !tbaa !74
  %1105 = load ptr, ptr %0, align 8, !tbaa !20
  %1106 = getelementptr inbounds nuw i8, ptr %1105, i64 56
  %1107 = load ptr, ptr %1106, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %1107) #10
  %1108 = getelementptr inbounds nuw i8, ptr %1107, i64 40
  %1109 = load i64, ptr %1108, align 8, !tbaa !57
  %1110 = getelementptr inbounds nuw i8, ptr %1105, i64 32
  %1111 = load i32, ptr %1110, align 8, !tbaa !107
  %1112 = zext i32 %1111 to i64
  %1113 = tail call i64 @llvm.umin.i64(i64 %1109, i64 %1112)
  %1114 = trunc nuw i64 %1113 to i32
  %1115 = icmp eq i64 %1113, 0
  br i1 %1115, label %1148, label %1116

1116:                                             ; preds = %1101
  %1117 = getelementptr inbounds nuw i8, ptr %1105, i64 24
  %1118 = load ptr, ptr %1117, align 8, !tbaa !106
  %1119 = getelementptr inbounds nuw i8, ptr %1107, i64 32
  %1120 = load ptr, ptr %1119, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1118, ptr align 1 %1120, i64 %1113, i1 false)
  %1121 = load ptr, ptr %1117, align 8, !tbaa !106
  %1122 = getelementptr inbounds nuw i8, ptr %1121, i64 %1113
  store ptr %1122, ptr %1117, align 8, !tbaa !106
  %1123 = load ptr, ptr %1119, align 8, !tbaa !58
  %1124 = getelementptr inbounds nuw i8, ptr %1123, i64 %1113
  store ptr %1124, ptr %1119, align 8, !tbaa !58
  %1125 = getelementptr inbounds nuw i8, ptr %1105, i64 40
  %1126 = load i64, ptr %1125, align 8, !tbaa !108
  %1127 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1126, i64 %1113), !nosanitize !45
  %1128 = extractvalue { i64, i1 } %1127, 1, !nosanitize !45
  br i1 %1128, label %1129, label %1130, !prof !46, !nosanitize !45

1129:                                             ; preds = %1116
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1130:                                             ; preds = %1116
  %1131 = extractvalue { i64, i1 } %1127, 0, !nosanitize !45
  store i64 %1131, ptr %1125, align 8, !tbaa !108
  %1132 = load i32, ptr %1110, align 8, !tbaa !107
  %1133 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1132, i32 %1114), !nosanitize !45
  %1134 = extractvalue { i32, i1 } %1133, 1, !nosanitize !45
  br i1 %1134, label %1135, label %1136, !prof !46, !nosanitize !45

1135:                                             ; preds = %1130
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

1136:                                             ; preds = %1130
  %1137 = extractvalue { i32, i1 } %1133, 0, !nosanitize !45
  store i32 %1137, ptr %1110, align 8, !tbaa !107
  %1138 = load i64, ptr %1108, align 8, !tbaa !57
  %1139 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1138, i64 %1113), !nosanitize !45
  %1140 = extractvalue { i64, i1 } %1139, 1, !nosanitize !45
  br i1 %1140, label %1141, label %1142, !prof !46, !nosanitize !45

1141:                                             ; preds = %1136
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

1142:                                             ; preds = %1136
  %1143 = extractvalue { i64, i1 } %1139, 0, !nosanitize !45
  store i64 %1143, ptr %1108, align 8, !tbaa !57
  %1144 = icmp eq i64 %1143, 0
  br i1 %1144, label %1145, label %1148

1145:                                             ; preds = %1142
  %1146 = getelementptr inbounds nuw i8, ptr %1107, i64 16
  %1147 = load ptr, ptr %1146, align 8, !tbaa !40
  store ptr %1147, ptr %1119, align 8, !tbaa !58
  br label %1148

1148:                                             ; preds = %1145, %1142, %1101
  %1149 = load ptr, ptr %0, align 8, !tbaa !20
  %1150 = getelementptr inbounds nuw i8, ptr %1149, i64 32
  %1151 = load i32, ptr %1150, align 8, !tbaa !107
  %1152 = icmp eq i32 %1151, 0
  br i1 %1152, label %1154, label %1153

1153:                                             ; preds = %1148, %1086
  br label %1154

1154:                                             ; preds = %1153, %1148, %1080, %953, %829, %370
  %1155 = phi i32 [ 0, %1148 ], [ %1085, %1080 ], [ 1, %1153 ], [ 0, %370 ], [ 0, %829 ], [ 0, %953 ]
  ret i32 %1155
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
