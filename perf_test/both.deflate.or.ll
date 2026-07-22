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
  br i1 %4, label %815, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %815, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %815, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %815, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %815

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %815 [
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
  br i1 %24, label %815, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %27 = load i32, ptr %26, align 8, !tbaa !30
  switch i32 %27, label %34 [
    i32 2, label %815
    i32 1, label %28
  ]

28:                                               ; preds = %25
  %29 = icmp eq i32 %22, 42
  br i1 %29, label %30, label %815

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %32 = load i32, ptr %31, align 4, !tbaa !75
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %815

34:                                               ; preds = %25
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %36 = load i32, ptr %35, align 4, !tbaa !75
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %815

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

105:                                              ; preds = %384, %80
  %106 = phi i32 [ %311, %384 ], [ %104, %80 ]
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
  br i1 %268, label %389, label %269

269:                                              ; preds = %261
  %270 = load ptr, ptr %92, align 8, !tbaa !34
  %271 = zext i32 %263 to i64
  %272 = getelementptr inbounds nuw i8, ptr %270, i64 %271
  %273 = zext i32 %262 to i64
  %274 = getelementptr inbounds nuw i8, ptr %272, i64 %273
  %275 = tail call i32 @llvm.umin.i32(i32 %267, i32 %264)
  %276 = icmp eq i32 %264, 0
  br i1 %276, label %305, label %277

277:                                              ; preds = %269
  %278 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %267, i32 %275), !nosanitize !45
  %279 = extractvalue { i32, i1 } %278, 0, !nosanitize !45
  store i32 %279, ptr %266, align 8, !tbaa !81
  %280 = load ptr, ptr %265, align 8, !tbaa !82
  %281 = zext i32 %275 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %274, ptr align 1 %280, i64 %281, i1 false)
  %282 = getelementptr inbounds nuw i8, ptr %265, i64 56
  %283 = load ptr, ptr %282, align 8, !tbaa !19
  %284 = getelementptr inbounds nuw i8, ptr %283, i64 48
  %285 = load i32, ptr %284, align 8, !tbaa !30
  switch i32 %285, label %294 [
    i32 1, label %286
    i32 2, label %290
  ]

286:                                              ; preds = %277
  %287 = getelementptr inbounds nuw i8, ptr %265, i64 96
  %288 = load i64, ptr %287, align 8, !tbaa !59
  %289 = tail call i64 @adler32(i64 noundef %288, ptr noundef %274, i32 noundef %275) #10
  store i64 %289, ptr %287, align 8, !tbaa !59
  br label %294

290:                                              ; preds = %277
  %291 = getelementptr inbounds nuw i8, ptr %265, i64 96
  %292 = load i64, ptr %291, align 8, !tbaa !59
  %293 = tail call i64 @crc32(i64 noundef %292, ptr noundef %274, i32 noundef %275) #10
  store i64 %293, ptr %291, align 8, !tbaa !59
  br label %294

294:                                              ; preds = %290, %286, %277
  %295 = load ptr, ptr %265, align 8, !tbaa !82
  %296 = getelementptr inbounds nuw i8, ptr %295, i64 %281
  store ptr %296, ptr %265, align 8, !tbaa !82
  %297 = getelementptr inbounds nuw i8, ptr %265, i64 16
  %298 = load i64, ptr %297, align 8, !tbaa !55
  %299 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %298, i64 %281), !nosanitize !45
  %300 = extractvalue { i64, i1 } %299, 1, !nosanitize !45
  br i1 %300, label %301, label %302, !prof !46, !nosanitize !45

301:                                              ; preds = %294
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

302:                                              ; preds = %294
  %303 = extractvalue { i64, i1 } %299, 0, !nosanitize !45
  store i64 %303, ptr %297, align 8, !tbaa !55
  %304 = load i32, ptr %82, align 4, !tbaa !75
  br label %305

305:                                              ; preds = %302, %269
  %306 = phi i32 [ %262, %269 ], [ %304, %302 ]
  %307 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %306, i32 %275), !nosanitize !45
  %308 = extractvalue { i32, i1 } %307, 1, !nosanitize !45
  br i1 %308, label %309, label %310, !prof !46, !nosanitize !45

309:                                              ; preds = %305
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

310:                                              ; preds = %305
  %311 = extractvalue { i32, i1 } %307, 0, !nosanitize !45
  store i32 %311, ptr %82, align 4, !tbaa !75
  %312 = load i32, ptr %95, align 4, !tbaa !76
  %313 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %311, i32 %312), !nosanitize !45
  %314 = extractvalue { i32, i1 } %313, 1, !nosanitize !45
  br i1 %314, label %315, label %316, !prof !46, !nosanitize !45

315:                                              ; preds = %310
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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

389:                                              ; preds = %384, %382, %261
  %390 = phi i32 [ %311, %384 ], [ %311, %382 ], [ %262, %261 ]
  %391 = getelementptr inbounds nuw i8, ptr %15, i64 5952
  %392 = load i64, ptr %391, align 8, !tbaa !38
  %393 = load i64, ptr %89, align 8, !tbaa !61
  %394 = icmp ult i64 %392, %393
  br i1 %394, label %395, label %431

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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

405:                                              ; preds = %401
  %406 = extractvalue { i64, i1 } %402, 0, !nosanitize !45
  %407 = tail call i64 @llvm.umin.i64(i64 %406, i64 258)
  %408 = load ptr, ptr %92, align 8, !tbaa !34
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 %399
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %409, i8 0, i64 %407, i1 false)
  %410 = add nuw nsw i64 %407, %399
  br label %428

411:                                              ; preds = %395
  %412 = add nuw nsw i64 %399, 258
  %413 = icmp ult i64 %392, %412
  br i1 %413, label %414, label %431

414:                                              ; preds = %411
  %415 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %393, i64 %392), !nosanitize !45
  %416 = sub nuw nsw i64 %412, %392
  %417 = extractvalue { i64, i1 } %415, 0, !nosanitize !45
  %418 = tail call i64 @llvm.umin.i64(i64 %416, i64 %417)
  %419 = load ptr, ptr %92, align 8, !tbaa !34
  %420 = getelementptr inbounds nuw i8, ptr %419, i64 %392
  %421 = and i64 %418, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %420, i8 0, i64 %421, i1 false)
  %422 = load i64, ptr %391, align 8, !tbaa !38
  %423 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %422, i64 %418), !nosanitize !45
  %424 = extractvalue { i64, i1 } %423, 1, !nosanitize !45
  br i1 %424, label %425, label %426, !prof !46, !nosanitize !45

425:                                              ; preds = %414
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

426:                                              ; preds = %414
  %427 = extractvalue { i64, i1 } %423, 0, !nosanitize !45
  br label %428

428:                                              ; preds = %426, %405
  %429 = phi i64 [ %410, %405 ], [ %427, %426 ]
  store i64 %429, ptr %391, align 8, !tbaa !38
  %430 = load i32, ptr %82, align 4, !tbaa !75
  br label %431

431:                                              ; preds = %428, %411, %389
  %432 = phi i32 [ %390, %389 ], [ %390, %411 ], [ %430, %428 ]
  %433 = icmp ugt i32 %432, 2
  br i1 %433, label %434, label %803

434:                                              ; preds = %800, %431
  %435 = phi i32 [ %801, %800 ], [ %432, %431 ]
  %436 = load i32, ptr %90, align 4, !tbaa !73
  %437 = load i32, ptr %101, align 8, !tbaa !53
  %438 = load ptr, ptr %92, align 8, !tbaa !34
  %439 = tail call i32 @llvm.usub.sat.i32(i32 -3, i32 %436)
  %440 = add i32 %435, -3
  %441 = icmp ugt i32 %439, %440
  br i1 %441, label %442, label %471, !prof !93, !nosanitize !45

442:                                              ; preds = %434
  %443 = load i32, ptr %100, align 8, !tbaa !80
  %444 = add i32 %435, -2
  %445 = load i32, ptr %102, align 4, !tbaa !52
  %446 = load ptr, ptr %97, align 8, !tbaa !37
  %447 = load ptr, ptr %98, align 8, !tbaa !35
  %448 = load i32, ptr %103, align 8, !tbaa !33
  br label %449

449:                                              ; preds = %449, %442
  %450 = phi i32 [ %443, %442 ], [ %460, %449 ]
  %451 = phi i32 [ %436, %442 ], [ %468, %449 ]
  %452 = phi i32 [ %444, %442 ], [ %469, %449 ]
  %453 = shl i32 %450, %437
  %454 = add i32 %451, 2
  %455 = zext i32 %454 to i64
  %456 = getelementptr inbounds nuw i8, ptr %438, i64 %455
  %457 = load i8, ptr %456, align 1, !tbaa !8
  %458 = zext i8 %457 to i32
  %459 = xor i32 %453, %458
  %460 = and i32 %459, %445
  store i32 %460, ptr %100, align 8, !tbaa !80
  %461 = zext i32 %460 to i64
  %462 = getelementptr inbounds nuw [2 x i8], ptr %446, i64 %461
  %463 = load i16, ptr %462, align 2, !tbaa !62
  %464 = and i32 %448, %451
  %465 = zext i32 %464 to i64
  %466 = getelementptr inbounds nuw [2 x i8], ptr %447, i64 %465
  store i16 %463, ptr %466, align 2, !tbaa !62
  %467 = trunc i32 %451 to i16
  store i16 %467, ptr %462, align 2, !tbaa !62
  %468 = add nuw i32 %451, 1
  %469 = add i32 %452, -1
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %472, label %449, !llvm.loop !94

471:                                              ; preds = %434
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

472:                                              ; preds = %449
  store i32 %468, ptr %90, align 4, !tbaa !73
  store i32 2, ptr %82, align 4, !tbaa !75
  %473 = load i32, ptr %81, align 8, !tbaa !32
  %474 = zext i32 %473 to i64
  br label %475

475:                                              ; preds = %754, %472
  %476 = phi i32 [ %681, %754 ], [ 2, %472 ]
  %477 = load i64, ptr %89, align 8, !tbaa !61
  %478 = zext nneg i32 %476 to i64
  %479 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %477, i64 %478), !nosanitize !45
  %480 = extractvalue { i64, i1 } %479, 1, !nosanitize !45
  br i1 %480, label %481, label %482, !prof !46, !nosanitize !45

481:                                              ; preds = %475
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

482:                                              ; preds = %475
  %483 = extractvalue { i64, i1 } %479, 0, !nosanitize !45
  %484 = load i32, ptr %90, align 4, !tbaa !73
  %485 = zext i32 %484 to i64
  %486 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %483, i64 %485), !nosanitize !45
  %487 = extractvalue { i64, i1 } %486, 1, !nosanitize !45
  br i1 %487, label %488, label %489, !prof !46, !nosanitize !45

488:                                              ; preds = %482
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

489:                                              ; preds = %482
  %490 = extractvalue { i64, i1 } %486, 0, !nosanitize !45
  %491 = trunc i64 %490 to i32
  %492 = load i32, ptr %81, align 8, !tbaa !32
  %493 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %492, i32 262), !nosanitize !45
  %494 = extractvalue { i32, i1 } %493, 1, !nosanitize !45
  br i1 %494, label %495, label %496, !prof !46, !nosanitize !45

495:                                              ; preds = %489
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

496:                                              ; preds = %489
  %497 = extractvalue { i32, i1 } %493, 0, !nosanitize !45
  %498 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %473, i32 %497), !nosanitize !45
  %499 = extractvalue { i32, i1 } %498, 1, !nosanitize !45
  br i1 %499, label %500, label %501, !prof !46, !nosanitize !45

500:                                              ; preds = %496
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

501:                                              ; preds = %496
  %502 = extractvalue { i32, i1 } %498, 0, !nosanitize !45
  %503 = icmp ult i32 %484, %502
  br i1 %503, label %631, label %504

504:                                              ; preds = %501
  %505 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %473, i32 %491), !nosanitize !45
  %506 = extractvalue { i32, i1 } %505, 1, !nosanitize !45
  br i1 %506, label %507, label %508, !prof !46, !nosanitize !45

507:                                              ; preds = %504
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

508:                                              ; preds = %504
  %509 = extractvalue { i32, i1 } %505, 0, !nosanitize !45
  %510 = load ptr, ptr %92, align 8, !tbaa !34
  %511 = getelementptr inbounds nuw i8, ptr %510, i64 %474
  %512 = zext i32 %509 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %510, ptr align 1 %511, i64 %512, i1 false)
  %513 = load i32, ptr %93, align 8, !tbaa !83
  %514 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %513, i32 %473), !nosanitize !45
  %515 = extractvalue { i32, i1 } %514, 1, !nosanitize !45
  br i1 %515, label %516, label %517, !prof !46, !nosanitize !45

516:                                              ; preds = %508
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

517:                                              ; preds = %508
  %518 = extractvalue { i32, i1 } %514, 0, !nosanitize !45
  store i32 %518, ptr %93, align 8, !tbaa !83
  %519 = load i32, ptr %90, align 4, !tbaa !73
  %520 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %519, i32 %473), !nosanitize !45
  %521 = extractvalue { i32, i1 } %520, 1, !nosanitize !45
  br i1 %521, label %522, label %523, !prof !46, !nosanitize !45

522:                                              ; preds = %523, %517
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

523:                                              ; preds = %517
  %524 = extractvalue { i32, i1 } %520, 0, !nosanitize !45
  store i32 %524, ptr %90, align 4, !tbaa !73
  %525 = load i64, ptr %94, align 8, !tbaa !74
  %526 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %525, i64 %474), !nosanitize !45
  %527 = extractvalue { i64, i1 } %526, 1, !nosanitize !45
  br i1 %527, label %522, label %528, !prof !46, !nosanitize !45

528:                                              ; preds = %523
  %529 = extractvalue { i64, i1 } %526, 0, !nosanitize !45
  store i64 %529, ptr %94, align 8, !tbaa !74
  %530 = load i32, ptr %95, align 4, !tbaa !76
  %531 = icmp ugt i32 %530, %524
  br i1 %531, label %532, label %533

532:                                              ; preds = %528
  store i32 %524, ptr %95, align 4, !tbaa !76
  br label %533

533:                                              ; preds = %532, %528
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

563:                                              ; preds = %561, %540
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

572:                                              ; preds = %572, %563
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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

611:                                              ; preds = %609, %585
  %612 = phi ptr [ %588, %585 ], [ %593, %609 ]
  %613 = phi i32 [ %534, %585 ], [ %595, %609 ]
  br label %614

614:                                              ; preds = %614, %611
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
  %625 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %491, i32 %473), !nosanitize !45
  %626 = extractvalue { i32, i1 } %625, 1, !nosanitize !45
  br i1 %626, label %627, label %628, !prof !46, !nosanitize !45

627:                                              ; preds = %624
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

628:                                              ; preds = %624
  %629 = extractvalue { i32, i1 } %625, 0, !nosanitize !45
  %630 = load i32, ptr %82, align 4, !tbaa !75
  br label %631

631:                                              ; preds = %628, %501
  %632 = phi i32 [ %630, %628 ], [ %476, %501 ]
  %633 = phi i32 [ %524, %628 ], [ %484, %501 ]
  %634 = phi i32 [ %629, %628 ], [ %491, %501 ]
  %635 = load ptr, ptr %15, align 8, !tbaa !20
  %636 = getelementptr inbounds nuw i8, ptr %635, i64 8
  %637 = load i32, ptr %636, align 8, !tbaa !81
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %759, label %639

639:                                              ; preds = %631
  %640 = load ptr, ptr %92, align 8, !tbaa !34
  %641 = zext i32 %633 to i64
  %642 = getelementptr inbounds nuw i8, ptr %640, i64 %641
  %643 = zext i32 %632 to i64
  %644 = getelementptr inbounds nuw i8, ptr %642, i64 %643
  %645 = tail call i32 @llvm.umin.i32(i32 %637, i32 %634)
  %646 = icmp eq i32 %634, 0
  br i1 %646, label %675, label %647

647:                                              ; preds = %639
  %648 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %637, i32 %645), !nosanitize !45
  %649 = extractvalue { i32, i1 } %648, 0, !nosanitize !45
  store i32 %649, ptr %636, align 8, !tbaa !81
  %650 = load ptr, ptr %635, align 8, !tbaa !82
  %651 = zext i32 %645 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %644, ptr align 1 %650, i64 %651, i1 false)
  %652 = getelementptr inbounds nuw i8, ptr %635, i64 56
  %653 = load ptr, ptr %652, align 8, !tbaa !19
  %654 = getelementptr inbounds nuw i8, ptr %653, i64 48
  %655 = load i32, ptr %654, align 8, !tbaa !30
  switch i32 %655, label %664 [
    i32 1, label %656
    i32 2, label %660
  ]

656:                                              ; preds = %647
  %657 = getelementptr inbounds nuw i8, ptr %635, i64 96
  %658 = load i64, ptr %657, align 8, !tbaa !59
  %659 = tail call i64 @adler32(i64 noundef %658, ptr noundef %644, i32 noundef %645) #10
  store i64 %659, ptr %657, align 8, !tbaa !59
  br label %664

660:                                              ; preds = %647
  %661 = getelementptr inbounds nuw i8, ptr %635, i64 96
  %662 = load i64, ptr %661, align 8, !tbaa !59
  %663 = tail call i64 @crc32(i64 noundef %662, ptr noundef %644, i32 noundef %645) #10
  store i64 %663, ptr %661, align 8, !tbaa !59
  br label %664

664:                                              ; preds = %660, %656, %647
  %665 = load ptr, ptr %635, align 8, !tbaa !82
  %666 = getelementptr inbounds nuw i8, ptr %665, i64 %651
  store ptr %666, ptr %635, align 8, !tbaa !82
  %667 = getelementptr inbounds nuw i8, ptr %635, i64 16
  %668 = load i64, ptr %667, align 8, !tbaa !55
  %669 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %668, i64 %651), !nosanitize !45
  %670 = extractvalue { i64, i1 } %669, 1, !nosanitize !45
  br i1 %670, label %671, label %672, !prof !46, !nosanitize !45

671:                                              ; preds = %664
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

672:                                              ; preds = %664
  %673 = extractvalue { i64, i1 } %669, 0, !nosanitize !45
  store i64 %673, ptr %667, align 8, !tbaa !55
  %674 = load i32, ptr %82, align 4, !tbaa !75
  br label %675

675:                                              ; preds = %672, %639
  %676 = phi i32 [ %632, %639 ], [ %674, %672 ]
  %677 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %676, i32 %645), !nosanitize !45
  %678 = extractvalue { i32, i1 } %677, 1, !nosanitize !45
  br i1 %678, label %679, label %680, !prof !46, !nosanitize !45

679:                                              ; preds = %675
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

680:                                              ; preds = %675
  %681 = extractvalue { i32, i1 } %677, 0, !nosanitize !45
  store i32 %681, ptr %82, align 4, !tbaa !75
  %682 = load i32, ptr %95, align 4, !tbaa !76
  %683 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %681, i32 %682), !nosanitize !45
  %684 = extractvalue { i32, i1 } %683, 1, !nosanitize !45
  br i1 %684, label %685, label %686, !prof !46, !nosanitize !45

685:                                              ; preds = %680
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

686:                                              ; preds = %680
  %687 = extractvalue { i32, i1 } %683, 0, !nosanitize !45
  %688 = icmp ugt i32 %687, 2
  br i1 %688, label %689, label %752

689:                                              ; preds = %686
  %690 = load i32, ptr %90, align 4, !tbaa !73
  %691 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %690, i32 %682), !nosanitize !45
  %692 = extractvalue { i32, i1 } %691, 0, !nosanitize !45
  %693 = extractvalue { i32, i1 } %691, 1, !nosanitize !45
  br i1 %693, label %694, label %695, !prof !46, !nosanitize !45

694:                                              ; preds = %689
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

695:                                              ; preds = %689
  %696 = load ptr, ptr %92, align 8, !tbaa !34
  %697 = zext i32 %692 to i64
  %698 = getelementptr inbounds nuw i8, ptr %696, i64 %697
  %699 = load i8, ptr %698, align 1, !tbaa !8
  %700 = zext i8 %699 to i32
  store i32 %700, ptr %100, align 8, !tbaa !80
  %701 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %692, i32 1), !nosanitize !45
  %702 = extractvalue { i32, i1 } %701, 1, !nosanitize !45
  br i1 %702, label %703, label %704, !prof !46, !nosanitize !45

703:                                              ; preds = %695
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

704:                                              ; preds = %695
  %705 = extractvalue { i32, i1 } %701, 0, !nosanitize !45
  %706 = load i32, ptr %101, align 8, !tbaa !53
  %707 = shl i32 %700, %706
  %708 = zext i32 %705 to i64
  %709 = getelementptr inbounds nuw i8, ptr %696, i64 %708
  %710 = load i8, ptr %709, align 1, !tbaa !8
  %711 = zext i8 %710 to i32
  %712 = xor i32 %707, %711
  %713 = load i32, ptr %102, align 4, !tbaa !52
  %714 = and i32 %712, %713
  store i32 %714, ptr %100, align 8, !tbaa !80
  br label %715

715:                                              ; preds = %748, %704
  %716 = phi i32 [ %714, %704 ], [ %733, %748 ]
  %717 = phi i32 [ %682, %704 ], [ %744, %748 ]
  %718 = phi i32 [ %692, %704 ], [ %749, %748 ]
  %719 = icmp eq i32 %717, 0
  br i1 %719, label %752, label %720

720:                                              ; preds = %715
  %721 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %718, i32 3), !nosanitize !45
  %722 = extractvalue { i32, i1 } %721, 1, !nosanitize !45
  br i1 %722, label %723, label %724, !prof !46, !nosanitize !45

723:                                              ; preds = %720
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

724:                                              ; preds = %720
  %725 = shl i32 %716, %706
  %726 = extractvalue { i32, i1 } %721, 0, !nosanitize !45
  %727 = add i32 %726, -1
  %728 = zext i32 %727 to i64
  %729 = getelementptr inbounds nuw i8, ptr %696, i64 %728
  %730 = load i8, ptr %729, align 1, !tbaa !8
  %731 = zext i8 %730 to i32
  %732 = xor i32 %725, %731
  %733 = and i32 %732, %713
  store i32 %733, ptr %100, align 8, !tbaa !80
  %734 = load ptr, ptr %97, align 8, !tbaa !37
  %735 = zext i32 %733 to i64
  %736 = getelementptr inbounds nuw [2 x i8], ptr %734, i64 %735
  %737 = load i16, ptr %736, align 2, !tbaa !62
  %738 = load ptr, ptr %98, align 8, !tbaa !35
  %739 = load i32, ptr %103, align 8, !tbaa !33
  %740 = and i32 %739, %718
  %741 = zext i32 %740 to i64
  %742 = getelementptr inbounds nuw [2 x i8], ptr %738, i64 %741
  store i16 %737, ptr %742, align 2, !tbaa !62
  %743 = trunc i32 %718 to i16
  store i16 %743, ptr %736, align 2, !tbaa !62
  %744 = add i32 %717, -1
  store i32 %744, ptr %95, align 4, !tbaa !76
  %745 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %681, i32 %744), !nosanitize !45
  %746 = extractvalue { i32, i1 } %745, 1, !nosanitize !45
  br i1 %746, label %747, label %748, !prof !46, !nosanitize !45

747:                                              ; preds = %724
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

748:                                              ; preds = %724
  %749 = add nuw i32 %718, 1
  %750 = extractvalue { i32, i1 } %745, 0, !nosanitize !45
  %751 = icmp ult i32 %750, 3
  br i1 %751, label %752, label %715, !llvm.loop !91

752:                                              ; preds = %748, %715, %686
  %753 = icmp ult i32 %681, 262
  br i1 %753, label %754, label %759

754:                                              ; preds = %752
  %755 = load ptr, ptr %15, align 8, !tbaa !20
  %756 = getelementptr inbounds nuw i8, ptr %755, i64 8
  %757 = load i32, ptr %756, align 8, !tbaa !81
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %759, label %475, !llvm.loop !92

759:                                              ; preds = %754, %752, %631
  %760 = phi i32 [ %681, %754 ], [ %681, %752 ], [ %632, %631 ]
  %761 = load i64, ptr %391, align 8, !tbaa !38
  %762 = load i64, ptr %89, align 8, !tbaa !61
  %763 = icmp ult i64 %761, %762
  br i1 %763, label %764, label %800

764:                                              ; preds = %759
  %765 = load i32, ptr %90, align 4, !tbaa !73
  %766 = zext i32 %765 to i64
  %767 = zext i32 %760 to i64
  %768 = add nuw nsw i64 %767, %766
  %769 = icmp ult i64 %761, %768
  br i1 %769, label %770, label %780

770:                                              ; preds = %764
  %771 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %762, i64 %768), !nosanitize !45
  %772 = extractvalue { i64, i1 } %771, 1, !nosanitize !45
  br i1 %772, label %773, label %774, !prof !46, !nosanitize !45

773:                                              ; preds = %770
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

774:                                              ; preds = %770
  %775 = extractvalue { i64, i1 } %771, 0, !nosanitize !45
  %776 = tail call i64 @llvm.umin.i64(i64 %775, i64 258)
  %777 = load ptr, ptr %92, align 8, !tbaa !34
  %778 = getelementptr inbounds nuw i8, ptr %777, i64 %768
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %778, i8 0, i64 %776, i1 false)
  %779 = add nuw nsw i64 %776, %768
  br label %797

780:                                              ; preds = %764
  %781 = add nuw nsw i64 %768, 258
  %782 = icmp ult i64 %761, %781
  br i1 %782, label %783, label %800

783:                                              ; preds = %780
  %784 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %762, i64 %761), !nosanitize !45
  %785 = sub nuw nsw i64 %781, %761
  %786 = extractvalue { i64, i1 } %784, 0, !nosanitize !45
  %787 = tail call i64 @llvm.umin.i64(i64 %785, i64 %786)
  %788 = load ptr, ptr %92, align 8, !tbaa !34
  %789 = getelementptr inbounds nuw i8, ptr %788, i64 %761
  %790 = and i64 %787, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %789, i8 0, i64 %790, i1 false)
  %791 = load i64, ptr %391, align 8, !tbaa !38
  %792 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %791, i64 %787), !nosanitize !45
  %793 = extractvalue { i64, i1 } %792, 1, !nosanitize !45
  br i1 %793, label %794, label %795, !prof !46, !nosanitize !45

794:                                              ; preds = %783
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

795:                                              ; preds = %783
  %796 = extractvalue { i64, i1 } %792, 0, !nosanitize !45
  br label %797

797:                                              ; preds = %795, %774
  %798 = phi i64 [ %779, %774 ], [ %796, %795 ]
  store i64 %798, ptr %391, align 8, !tbaa !38
  %799 = load i32, ptr %82, align 4, !tbaa !75
  br label %800

800:                                              ; preds = %797, %780, %759
  %801 = phi i32 [ %760, %759 ], [ %760, %780 ], [ %799, %797 ]
  %802 = icmp ugt i32 %801, 2
  br i1 %802, label %434, label %803, !llvm.loop !99

803:                                              ; preds = %800, %431
  %804 = phi i32 [ %432, %431 ], [ %801, %800 ]
  %805 = load i32, ptr %90, align 4, !tbaa !73
  %806 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %805, i32 %804), !nosanitize !45
  %807 = extractvalue { i32, i1 } %806, 1, !nosanitize !45
  br i1 %807, label %808, label %809, !prof !46, !nosanitize !45

808:                                              ; preds = %803
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

809:                                              ; preds = %803
  %810 = extractvalue { i32, i1 } %806, 0, !nosanitize !45
  store i32 %810, ptr %90, align 4, !tbaa !73
  %811 = zext i32 %810 to i64
  store i64 %811, ptr %94, align 8, !tbaa !74
  store i32 %804, ptr %95, align 4, !tbaa !76
  store i32 0, ptr %82, align 4, !tbaa !75
  %812 = getelementptr inbounds nuw i8, ptr %15, i64 184
  store i32 2, ptr %812, align 8, !tbaa !77
  %813 = getelementptr inbounds nuw i8, ptr %15, i64 160
  store i32 2, ptr %813, align 8, !tbaa !78
  %814 = getelementptr inbounds nuw i8, ptr %15, i64 168
  store i32 0, ptr %814, align 8, !tbaa !79
  store ptr %88, ptr %0, align 8, !tbaa !82
  store i32 %87, ptr %86, align 8, !tbaa !81
  store i32 %27, ptr %26, align 8, !tbaa !30
  br label %815

815:                                              ; preds = %809, %34, %30, %28, %25, %23, %20, %17, %13, %9, %5, %3
  %816 = phi i32 [ 0, %809 ], [ -2, %23 ], [ -2, %30 ], [ -2, %28 ], [ -2, %25 ], [ -2, %34 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %816
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

27:                                               ; preds = %264, %8
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
  br i1 %38, label %268, label %39

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
  br i1 %66, label %268, label %67

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
  br i1 %73, label %74, label %268

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
  br i1 %168, label %203, label %169

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
  %202 = extractvalue { i32, i1 } %201, 0, !nosanitize !45
  br label %203

203:                                              ; preds = %199, %167
  %204 = phi i32 [ %202, %199 ], [ %61, %167 ]
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %264, label %206

206:                                              ; preds = %203
  %207 = load ptr, ptr %0, align 8, !tbaa !20
  %208 = getelementptr inbounds nuw i8, ptr %207, i64 24
  %209 = load ptr, ptr %208, align 8, !tbaa !106
  %210 = getelementptr inbounds nuw i8, ptr %207, i64 8
  %211 = load i32, ptr %210, align 8, !tbaa !81
  %212 = tail call i32 @llvm.umin.i32(i32 %211, i32 %204)
  %213 = icmp eq i32 %211, 0
  br i1 %213, label %244, label %214

214:                                              ; preds = %206
  %215 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %211, i32 %212), !nosanitize !45
  %216 = extractvalue { i32, i1 } %215, 0, !nosanitize !45
  store i32 %216, ptr %210, align 8, !tbaa !81
  %217 = load ptr, ptr %207, align 8, !tbaa !82
  %218 = zext i32 %212 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %209, ptr align 1 %217, i64 %218, i1 false)
  %219 = getelementptr inbounds nuw i8, ptr %207, i64 56
  %220 = load ptr, ptr %219, align 8, !tbaa !19
  %221 = getelementptr inbounds nuw i8, ptr %220, i64 48
  %222 = load i32, ptr %221, align 8, !tbaa !30
  switch i32 %222, label %231 [
    i32 1, label %223
    i32 2, label %227
  ]

223:                                              ; preds = %214
  %224 = getelementptr inbounds nuw i8, ptr %207, i64 96
  %225 = load i64, ptr %224, align 8, !tbaa !59
  %226 = tail call i64 @adler32(i64 noundef %225, ptr noundef %209, i32 noundef %212) #10
  store i64 %226, ptr %224, align 8, !tbaa !59
  br label %231

227:                                              ; preds = %214
  %228 = getelementptr inbounds nuw i8, ptr %207, i64 96
  %229 = load i64, ptr %228, align 8, !tbaa !59
  %230 = tail call i64 @crc32(i64 noundef %229, ptr noundef %209, i32 noundef %212) #10
  store i64 %230, ptr %228, align 8, !tbaa !59
  br label %231

231:                                              ; preds = %227, %223, %214
  %232 = load ptr, ptr %207, align 8, !tbaa !82
  %233 = getelementptr inbounds nuw i8, ptr %232, i64 %218
  store ptr %233, ptr %207, align 8, !tbaa !82
  %234 = getelementptr inbounds nuw i8, ptr %207, i64 16
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
  %241 = load ptr, ptr %0, align 8, !tbaa !20
  %242 = getelementptr inbounds nuw i8, ptr %241, i64 24
  %243 = load ptr, ptr %242, align 8, !tbaa !106
  br label %244

244:                                              ; preds = %239, %206
  %245 = phi ptr [ %209, %206 ], [ %243, %239 ]
  %246 = phi ptr [ %207, %206 ], [ %241, %239 ]
  %247 = getelementptr inbounds nuw i8, ptr %246, i64 24
  %248 = zext i32 %204 to i64
  %249 = getelementptr inbounds nuw i8, ptr %245, i64 %248
  store ptr %249, ptr %247, align 8, !tbaa !106
  %250 = getelementptr inbounds nuw i8, ptr %246, i64 32
  %251 = load i32, ptr %250, align 8, !tbaa !107
  %252 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %251, i32 %204), !nosanitize !45
  %253 = extractvalue { i32, i1 } %252, 1, !nosanitize !45
  br i1 %253, label %254, label %255, !prof !46, !nosanitize !45

254:                                              ; preds = %244
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

255:                                              ; preds = %244
  %256 = extractvalue { i32, i1 } %252, 0, !nosanitize !45
  store i32 %256, ptr %250, align 8, !tbaa !107
  %257 = getelementptr inbounds nuw i8, ptr %246, i64 40
  %258 = load i64, ptr %257, align 8, !tbaa !108
  %259 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %258, i64 %248), !nosanitize !45
  %260 = extractvalue { i64, i1 } %259, 1, !nosanitize !45
  br i1 %260, label %261, label %262, !prof !46, !nosanitize !45

261:                                              ; preds = %255
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

262:                                              ; preds = %255
  %263 = extractvalue { i64, i1 } %259, 0, !nosanitize !45
  store i64 %263, ptr %257, align 8, !tbaa !108
  br label %264

264:                                              ; preds = %262, %203
  %265 = icmp eq i32 %84, 0
  br i1 %265, label %27, label %266, !llvm.loop !134

266:                                              ; preds = %264
  %267 = load ptr, ptr %0, align 8, !tbaa !20
  br label %268, !llvm.loop !134

268:                                              ; preds = %266, %71, %63, %32
  %269 = phi ptr [ %267, %266 ], [ %35, %32 ], [ %35, %63 ], [ %35, %71 ]
  %270 = phi i1 [ false, %266 ], [ true, %32 ], [ true, %63 ], [ true, %71 ]
  %271 = getelementptr inbounds nuw i8, ptr %269, i64 8
  %272 = load i32, ptr %271, align 8, !tbaa !81
  %273 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %17, i32 %272), !nosanitize !45
  %274 = extractvalue { i32, i1 } %273, 0, !nosanitize !45
  %275 = extractvalue { i32, i1 } %273, 1, !nosanitize !45
  br i1 %275, label %276, label %277, !prof !46, !nosanitize !45

276:                                              ; preds = %268
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

277:                                              ; preds = %268
  %278 = icmp eq i32 %274, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %277
  %280 = load i32, ptr %19, align 4, !tbaa !73
  %281 = zext i32 %280 to i64
  br label %359

282:                                              ; preds = %277
  %283 = load i32, ptr %10, align 8, !tbaa !32
  %284 = icmp ult i32 %274, %283
  br i1 %284, label %294, label %285

285:                                              ; preds = %282
  %286 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 2, ptr %286, align 8, !tbaa !125
  %287 = load ptr, ptr %26, align 8, !tbaa !34
  %288 = load ptr, ptr %269, align 8, !tbaa !82
  %289 = zext i32 %283 to i64
  %290 = sub nsw i64 0, %289
  %291 = getelementptr inbounds i8, ptr %288, i64 %290
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %287, ptr align 1 %291, i64 %289, i1 false)
  %292 = load i32, ptr %10, align 8, !tbaa !32
  store i32 %292, ptr %19, align 4, !tbaa !73
  %293 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %292, ptr %293, align 4, !tbaa !76
  br label %356

294:                                              ; preds = %282
  %295 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %296 = load i64, ptr %295, align 8, !tbaa !61
  %297 = load i32, ptr %19, align 4, !tbaa !73
  %298 = zext i32 %297 to i64
  %299 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %296, i64 %298), !nosanitize !45
  %300 = extractvalue { i64, i1 } %299, 1, !nosanitize !45
  br i1 %300, label %301, label %302, !prof !46, !nosanitize !45

301:                                              ; preds = %294
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

302:                                              ; preds = %294
  %303 = extractvalue { i64, i1 } %299, 0, !nosanitize !45
  %304 = zext i32 %274 to i64
  %305 = icmp ugt i64 %303, %304
  br i1 %305, label %327, label %306

306:                                              ; preds = %302
  %307 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %297, i32 %283), !nosanitize !45
  %308 = extractvalue { i32, i1 } %307, 1, !nosanitize !45
  br i1 %308, label %309, label %310, !prof !46, !nosanitize !45

309:                                              ; preds = %306
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

310:                                              ; preds = %306
  %311 = extractvalue { i32, i1 } %307, 0, !nosanitize !45
  store i32 %311, ptr %19, align 4, !tbaa !73
  %312 = load ptr, ptr %26, align 8, !tbaa !34
  %313 = zext i32 %283 to i64
  %314 = getelementptr inbounds nuw i8, ptr %312, i64 %313
  %315 = zext i32 %311 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %312, ptr nonnull align 1 %314, i64 %315, i1 false)
  %316 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %317 = load i32, ptr %316, align 8, !tbaa !125
  %318 = icmp ult i32 %317, 2
  br i1 %318, label %319, label %321

319:                                              ; preds = %310
  %320 = add nuw nsw i32 %317, 1
  store i32 %320, ptr %316, align 8, !tbaa !125
  br label %321

321:                                              ; preds = %319, %310
  %322 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %323 = load i32, ptr %322, align 4, !tbaa !76
  %324 = load i32, ptr %19, align 4, !tbaa !73
  %325 = icmp ugt i32 %323, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %321
  store i32 %324, ptr %322, align 4, !tbaa !76
  br label %327

327:                                              ; preds = %326, %321, %302
  %328 = phi i32 [ %324, %321 ], [ %324, %326 ], [ %297, %302 ]
  %329 = load ptr, ptr %26, align 8, !tbaa !34
  %330 = zext i32 %328 to i64
  %331 = getelementptr inbounds nuw i8, ptr %329, i64 %330
  %332 = load ptr, ptr %0, align 8, !tbaa !20
  %333 = load ptr, ptr %332, align 8, !tbaa !82
  %334 = sub nsw i64 0, %304
  %335 = getelementptr inbounds i8, ptr %333, i64 %334
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %331, ptr nonnull align 1 %335, i64 %304, i1 false)
  %336 = load i32, ptr %19, align 4, !tbaa !73
  %337 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %336, i32 %274), !nosanitize !45
  %338 = extractvalue { i32, i1 } %337, 1, !nosanitize !45
  br i1 %338, label %339, label %340, !prof !46, !nosanitize !45

339:                                              ; preds = %327
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

340:                                              ; preds = %327
  %341 = extractvalue { i32, i1 } %337, 0, !nosanitize !45
  store i32 %341, ptr %19, align 4, !tbaa !73
  %342 = load i32, ptr %10, align 8, !tbaa !32
  %343 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %344 = load i32, ptr %343, align 4, !tbaa !76
  %345 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %342, i32 %344), !nosanitize !45
  %346 = extractvalue { i32, i1 } %345, 1, !nosanitize !45
  br i1 %346, label %347, label %348, !prof !46, !nosanitize !45

347:                                              ; preds = %340
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

348:                                              ; preds = %340
  %349 = extractvalue { i32, i1 } %345, 0, !nosanitize !45
  %350 = tail call i32 @llvm.umin.i32(i32 %274, i32 %349)
  %351 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %344, i32 %350), !nosanitize !45
  %352 = extractvalue { i32, i1 } %351, 1, !nosanitize !45
  br i1 %352, label %353, label %354, !prof !46, !nosanitize !45

353:                                              ; preds = %348
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

354:                                              ; preds = %348
  %355 = extractvalue { i32, i1 } %351, 0, !nosanitize !45
  store i32 %355, ptr %343, align 4, !tbaa !76
  br label %356

356:                                              ; preds = %354, %285
  %357 = phi i32 [ %341, %354 ], [ %292, %285 ]
  %358 = zext i32 %357 to i64
  store i64 %358, ptr %20, align 8, !tbaa !74
  br label %359

359:                                              ; preds = %356, %279
  %360 = phi i64 [ %281, %279 ], [ %358, %356 ]
  %361 = phi i32 [ %280, %279 ], [ %357, %356 ]
  %362 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %363 = load i64, ptr %362, align 8, !tbaa !38
  %364 = icmp ult i64 %363, %360
  br i1 %364, label %365, label %366

365:                                              ; preds = %359
  store i64 %360, ptr %362, align 8, !tbaa !38
  br label %366

366:                                              ; preds = %365, %359
  br i1 %270, label %367, label %587

367:                                              ; preds = %366
  %368 = icmp ne i32 %1, 0
  switch i32 %1, label %369 [
    i32 4, label %377
    i32 0, label %377
  ]

369:                                              ; preds = %367
  %370 = load ptr, ptr %0, align 8, !tbaa !20
  %371 = getelementptr inbounds nuw i8, ptr %370, i64 8
  %372 = load i32, ptr %371, align 8, !tbaa !81
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %377

374:                                              ; preds = %369
  %375 = load i64, ptr %20, align 8, !tbaa !74
  %376 = icmp eq i64 %375, %360
  br i1 %376, label %590, label %377

377:                                              ; preds = %374, %369, %367, %367
  %378 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %379 = load i64, ptr %378, align 8, !tbaa !61
  %380 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %379, i64 %360), !nosanitize !45
  %381 = extractvalue { i64, i1 } %380, 1, !nosanitize !45
  br i1 %381, label %382, label %383, !prof !46, !nosanitize !45

382:                                              ; preds = %377
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

383:                                              ; preds = %377
  %384 = extractvalue { i64, i1 } %380, 0, !nosanitize !45
  %385 = trunc i64 %384 to i32
  %386 = load ptr, ptr %0, align 8, !tbaa !20
  %387 = getelementptr inbounds nuw i8, ptr %386, i64 8
  %388 = load i32, ptr %387, align 8, !tbaa !81
  %389 = icmp ugt i32 %388, %385
  br i1 %389, label %390, label %422

390:                                              ; preds = %383
  %391 = load i64, ptr %20, align 8, !tbaa !74
  %392 = load i32, ptr %10, align 8, !tbaa !32
  %393 = zext i32 %392 to i64
  %394 = icmp slt i64 %391, %393
  br i1 %394, label %422, label %395

395:                                              ; preds = %390
  %396 = sub nsw i64 %391, %393
  store i64 %396, ptr %20, align 8, !tbaa !74
  %397 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %361, i32 %392), !nosanitize !45
  %398 = extractvalue { i32, i1 } %397, 1, !nosanitize !45
  br i1 %398, label %399, label %400, !prof !46, !nosanitize !45

399:                                              ; preds = %395
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

400:                                              ; preds = %395
  %401 = extractvalue { i32, i1 } %397, 0, !nosanitize !45
  store i32 %401, ptr %19, align 4, !tbaa !73
  %402 = load ptr, ptr %26, align 8, !tbaa !34
  %403 = getelementptr inbounds nuw i8, ptr %402, i64 %393
  %404 = zext i32 %401 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %402, ptr align 1 %403, i64 %404, i1 false)
  %405 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %406 = load i32, ptr %405, align 8, !tbaa !125
  %407 = icmp ult i32 %406, 2
  br i1 %407, label %408, label %410

408:                                              ; preds = %400
  %409 = add nuw nsw i32 %406, 1
  store i32 %409, ptr %405, align 8, !tbaa !125
  br label %410

410:                                              ; preds = %408, %400
  %411 = load i32, ptr %10, align 8, !tbaa !32
  %412 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %385, i32 %411), !nosanitize !45
  %413 = extractvalue { i32, i1 } %412, 0, !nosanitize !45
  %414 = extractvalue { i32, i1 } %412, 1, !nosanitize !45
  br i1 %414, label %415, label %416, !prof !46, !nosanitize !45

415:                                              ; preds = %410
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

416:                                              ; preds = %410
  %417 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %418 = load i32, ptr %417, align 4, !tbaa !76
  %419 = load i32, ptr %19, align 4, !tbaa !73
  %420 = icmp ugt i32 %418, %419
  br i1 %420, label %421, label %422

421:                                              ; preds = %416
  store i32 %419, ptr %417, align 4, !tbaa !76
  br label %422

422:                                              ; preds = %421, %416, %390, %383
  %423 = phi i32 [ %419, %421 ], [ %419, %416 ], [ %361, %390 ], [ %361, %383 ]
  %424 = phi i32 [ %413, %421 ], [ %413, %416 ], [ %385, %390 ], [ %385, %383 ]
  %425 = load ptr, ptr %0, align 8, !tbaa !20
  %426 = getelementptr inbounds nuw i8, ptr %425, i64 8
  %427 = load i32, ptr %426, align 8, !tbaa !81
  %428 = tail call i32 @llvm.umin.i32(i32 %424, i32 %427)
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %480, label %430

430:                                              ; preds = %422
  %431 = load ptr, ptr %26, align 8, !tbaa !34
  %432 = zext i32 %423 to i64
  %433 = getelementptr inbounds nuw i8, ptr %431, i64 %432
  %434 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %427, i32 %428), !nosanitize !45
  %435 = extractvalue { i32, i1 } %434, 0, !nosanitize !45
  store i32 %435, ptr %426, align 8, !tbaa !81
  %436 = load ptr, ptr %425, align 8, !tbaa !82
  %437 = zext i32 %428 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %433, ptr align 1 %436, i64 %437, i1 false)
  %438 = getelementptr inbounds nuw i8, ptr %425, i64 56
  %439 = load ptr, ptr %438, align 8, !tbaa !19
  %440 = getelementptr inbounds nuw i8, ptr %439, i64 48
  %441 = load i32, ptr %440, align 8, !tbaa !30
  switch i32 %441, label %450 [
    i32 1, label %442
    i32 2, label %446
  ]

442:                                              ; preds = %430
  %443 = getelementptr inbounds nuw i8, ptr %425, i64 96
  %444 = load i64, ptr %443, align 8, !tbaa !59
  %445 = tail call i64 @adler32(i64 noundef %444, ptr noundef %433, i32 noundef %428) #10
  store i64 %445, ptr %443, align 8, !tbaa !59
  br label %450

446:                                              ; preds = %430
  %447 = getelementptr inbounds nuw i8, ptr %425, i64 96
  %448 = load i64, ptr %447, align 8, !tbaa !59
  %449 = tail call i64 @crc32(i64 noundef %448, ptr noundef %433, i32 noundef %428) #10
  store i64 %449, ptr %447, align 8, !tbaa !59
  br label %450

450:                                              ; preds = %446, %442, %430
  %451 = load ptr, ptr %425, align 8, !tbaa !82
  %452 = getelementptr inbounds nuw i8, ptr %451, i64 %437
  store ptr %452, ptr %425, align 8, !tbaa !82
  %453 = getelementptr inbounds nuw i8, ptr %425, i64 16
  %454 = load i64, ptr %453, align 8, !tbaa !55
  %455 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %454, i64 %437), !nosanitize !45
  %456 = extractvalue { i64, i1 } %455, 1, !nosanitize !45
  br i1 %456, label %457, label %458, !prof !46, !nosanitize !45

457:                                              ; preds = %450
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

458:                                              ; preds = %450
  %459 = extractvalue { i64, i1 } %455, 0, !nosanitize !45
  store i64 %459, ptr %453, align 8, !tbaa !55
  %460 = load i32, ptr %19, align 4, !tbaa !73
  %461 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %460, i32 %428), !nosanitize !45
  %462 = extractvalue { i32, i1 } %461, 1, !nosanitize !45
  br i1 %462, label %463, label %464, !prof !46, !nosanitize !45

463:                                              ; preds = %458
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

464:                                              ; preds = %458
  %465 = extractvalue { i32, i1 } %461, 0, !nosanitize !45
  store i32 %465, ptr %19, align 4, !tbaa !73
  %466 = load i32, ptr %10, align 8, !tbaa !32
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %468 = load i32, ptr %467, align 4, !tbaa !76
  %469 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %466, i32 %468), !nosanitize !45
  %470 = extractvalue { i32, i1 } %469, 1, !nosanitize !45
  br i1 %470, label %471, label %472, !prof !46, !nosanitize !45

471:                                              ; preds = %464
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

472:                                              ; preds = %464
  %473 = extractvalue { i32, i1 } %469, 0, !nosanitize !45
  %474 = tail call i32 @llvm.umin.i32(i32 %428, i32 %473)
  %475 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %468, i32 %474), !nosanitize !45
  %476 = extractvalue { i32, i1 } %475, 1, !nosanitize !45
  br i1 %476, label %477, label %478, !prof !46, !nosanitize !45

477:                                              ; preds = %472
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

478:                                              ; preds = %472
  %479 = extractvalue { i32, i1 } %475, 0, !nosanitize !45
  store i32 %479, ptr %467, align 4, !tbaa !76
  br label %480

480:                                              ; preds = %478, %422
  %481 = phi i32 [ %465, %478 ], [ %423, %422 ]
  %482 = load i64, ptr %362, align 8, !tbaa !38
  %483 = zext i32 %481 to i64
  %484 = icmp ult i64 %482, %483
  br i1 %484, label %485, label %486

485:                                              ; preds = %480
  store i64 %483, ptr %362, align 8, !tbaa !38
  br label %486

486:                                              ; preds = %485, %480
  %487 = load i32, ptr %18, align 4, !tbaa !101
  %488 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %487, i32 42), !nosanitize !45
  %489 = extractvalue { i32, i1 } %488, 1, !nosanitize !45
  br i1 %489, label %490, label %491, !prof !46, !nosanitize !45

490:                                              ; preds = %532, %486
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

491:                                              ; preds = %486
  %492 = extractvalue { i32, i1 } %488, 0, !nosanitize !45
  %493 = lshr i32 %492, 3
  %494 = load i64, ptr %3, align 8, !tbaa !41
  %495 = zext nneg i32 %493 to i64
  %496 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %494, i64 %495), !nosanitize !45
  %497 = extractvalue { i64, i1 } %496, 1, !nosanitize !45
  br i1 %497, label %498, label %499, !prof !46, !nosanitize !45

498:                                              ; preds = %491
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

499:                                              ; preds = %491
  %500 = extractvalue { i64, i1 } %496, 0, !nosanitize !45
  %501 = tail call i64 @llvm.umin.i64(i64 %500, i64 65535)
  %502 = trunc nuw nsw i64 %501 to i32
  %503 = load i64, ptr %20, align 8, !tbaa !74
  %504 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %483, i64 %503), !nosanitize !45
  %505 = extractvalue { i64, i1 } %504, 1, !nosanitize !45
  br i1 %505, label %506, label %507, !prof !46, !nosanitize !45

506:                                              ; preds = %499
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

507:                                              ; preds = %499
  %508 = load i32, ptr %10, align 8, !tbaa !32
  %509 = tail call i32 @llvm.umin.i32(i32 %508, i32 %502)
  %510 = extractvalue { i64, i1 } %504, 0, !nosanitize !45
  %511 = trunc i64 %510 to i32
  %512 = icmp ugt i32 %509, %511
  br i1 %512, label %513, label %522

513:                                              ; preds = %507
  %514 = icmp ne i32 %511, 0
  %515 = or i1 %23, %514
  %516 = and i1 %368, %515
  br i1 %516, label %517, label %590

517:                                              ; preds = %513
  %518 = load ptr, ptr %0, align 8, !tbaa !20
  %519 = getelementptr inbounds nuw i8, ptr %518, i64 8
  %520 = load i32, ptr %519, align 8, !tbaa !81
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %590

522:                                              ; preds = %517, %507
  %523 = tail call i32 @llvm.umin.i32(i32 %502, i32 %511)
  br i1 %23, label %524, label %532

524:                                              ; preds = %522
  %525 = load ptr, ptr %0, align 8, !tbaa !20
  %526 = getelementptr inbounds nuw i8, ptr %525, i64 8
  %527 = load i32, ptr %526, align 8, !tbaa !81
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %532

529:                                              ; preds = %524
  %530 = icmp uge i32 %502, %511
  %531 = zext i1 %530 to i32
  br label %532

532:                                              ; preds = %529, %524, %522
  %533 = phi i32 [ 0, %524 ], [ 0, %522 ], [ %531, %529 ]
  %534 = load ptr, ptr %26, align 8, !tbaa !34
  %535 = getelementptr inbounds i8, ptr %534, i64 %503
  %536 = zext nneg i32 %523 to i64
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef %535, i64 noundef %536, i32 noundef %533) #10
  %537 = load i64, ptr %20, align 8, !tbaa !74
  %538 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %537, i64 %536), !nosanitize !45
  %539 = extractvalue { i64, i1 } %538, 1, !nosanitize !45
  br i1 %539, label %490, label %540, !prof !46, !nosanitize !45

540:                                              ; preds = %532
  %541 = extractvalue { i64, i1 } %538, 0, !nosanitize !45
  store i64 %541, ptr %20, align 8, !tbaa !74
  %542 = load ptr, ptr %0, align 8, !tbaa !20
  %543 = getelementptr inbounds nuw i8, ptr %542, i64 56
  %544 = load ptr, ptr %543, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %544) #10
  %545 = getelementptr inbounds nuw i8, ptr %544, i64 40
  %546 = load i64, ptr %545, align 8, !tbaa !57
  %547 = getelementptr inbounds nuw i8, ptr %542, i64 32
  %548 = load i32, ptr %547, align 8, !tbaa !107
  %549 = zext i32 %548 to i64
  %550 = tail call i64 @llvm.umin.i64(i64 %546, i64 %549)
  %551 = trunc nuw i64 %550 to i32
  %552 = icmp eq i64 %550, 0
  br i1 %552, label %585, label %553

553:                                              ; preds = %540
  %554 = getelementptr inbounds nuw i8, ptr %542, i64 24
  %555 = load ptr, ptr %554, align 8, !tbaa !106
  %556 = getelementptr inbounds nuw i8, ptr %544, i64 32
  %557 = load ptr, ptr %556, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %555, ptr align 1 %557, i64 %550, i1 false)
  %558 = load ptr, ptr %554, align 8, !tbaa !106
  %559 = getelementptr inbounds nuw i8, ptr %558, i64 %550
  store ptr %559, ptr %554, align 8, !tbaa !106
  %560 = load ptr, ptr %556, align 8, !tbaa !58
  %561 = getelementptr inbounds nuw i8, ptr %560, i64 %550
  store ptr %561, ptr %556, align 8, !tbaa !58
  %562 = getelementptr inbounds nuw i8, ptr %542, i64 40
  %563 = load i64, ptr %562, align 8, !tbaa !108
  %564 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %563, i64 %550), !nosanitize !45
  %565 = extractvalue { i64, i1 } %564, 1, !nosanitize !45
  br i1 %565, label %566, label %567, !prof !46, !nosanitize !45

566:                                              ; preds = %553
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

567:                                              ; preds = %553
  %568 = extractvalue { i64, i1 } %564, 0, !nosanitize !45
  store i64 %568, ptr %562, align 8, !tbaa !108
  %569 = load i32, ptr %547, align 8, !tbaa !107
  %570 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %569, i32 %551), !nosanitize !45
  %571 = extractvalue { i32, i1 } %570, 1, !nosanitize !45
  br i1 %571, label %572, label %573, !prof !46, !nosanitize !45

572:                                              ; preds = %567
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

573:                                              ; preds = %567
  %574 = extractvalue { i32, i1 } %570, 0, !nosanitize !45
  store i32 %574, ptr %547, align 8, !tbaa !107
  %575 = load i64, ptr %545, align 8, !tbaa !57
  %576 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %575, i64 %550), !nosanitize !45
  %577 = extractvalue { i64, i1 } %576, 1, !nosanitize !45
  br i1 %577, label %578, label %579, !prof !46, !nosanitize !45

578:                                              ; preds = %573
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

579:                                              ; preds = %573
  %580 = extractvalue { i64, i1 } %576, 0, !nosanitize !45
  store i64 %580, ptr %545, align 8, !tbaa !57
  %581 = icmp eq i64 %580, 0
  br i1 %581, label %582, label %585

582:                                              ; preds = %579
  %583 = getelementptr inbounds nuw i8, ptr %544, i64 16
  %584 = load ptr, ptr %583, align 8, !tbaa !40
  store ptr %584, ptr %556, align 8, !tbaa !58
  br label %585

585:                                              ; preds = %582, %579, %540
  %586 = icmp eq i32 %533, 0
  br i1 %586, label %590, label %587

587:                                              ; preds = %585, %366
  %588 = phi i32 [ 3, %366 ], [ 2, %585 ]
  %589 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 8, ptr %589, align 8, !tbaa !102
  br label %590

590:                                              ; preds = %587, %585, %517, %513, %374
  %591 = phi i32 [ 0, %517 ], [ 1, %374 ], [ 0, %513 ], [ 0, %585 ], [ %588, %587 ]
  ret i32 %591
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
  br i1 %27, label %28, label %361

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
  br i1 %194, label %315, label %195

195:                                              ; preds = %187
  %196 = load ptr, ptr %7, align 8, !tbaa !34
  %197 = zext i32 %189 to i64
  %198 = getelementptr inbounds nuw i8, ptr %196, i64 %197
  %199 = zext i32 %188 to i64
  %200 = getelementptr inbounds nuw i8, ptr %198, i64 %199
  %201 = tail call i32 @llvm.umin.i32(i32 %193, i32 %190)
  %202 = icmp eq i32 %190, 0
  br i1 %202, label %231, label %203

203:                                              ; preds = %195
  %204 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %193, i32 %201), !nosanitize !45
  %205 = extractvalue { i32, i1 } %204, 0, !nosanitize !45
  store i32 %205, ptr %192, align 8, !tbaa !81
  %206 = load ptr, ptr %191, align 8, !tbaa !82
  %207 = zext i32 %201 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %200, ptr align 1 %206, i64 %207, i1 false)
  %208 = getelementptr inbounds nuw i8, ptr %191, i64 56
  %209 = load ptr, ptr %208, align 8, !tbaa !19
  %210 = getelementptr inbounds nuw i8, ptr %209, i64 48
  %211 = load i32, ptr %210, align 8, !tbaa !30
  switch i32 %211, label %220 [
    i32 1, label %212
    i32 2, label %216
  ]

212:                                              ; preds = %203
  %213 = getelementptr inbounds nuw i8, ptr %191, i64 96
  %214 = load i64, ptr %213, align 8, !tbaa !59
  %215 = tail call i64 @adler32(i64 noundef %214, ptr noundef %200, i32 noundef %201) #10
  store i64 %215, ptr %213, align 8, !tbaa !59
  br label %220

216:                                              ; preds = %203
  %217 = getelementptr inbounds nuw i8, ptr %191, i64 96
  %218 = load i64, ptr %217, align 8, !tbaa !59
  %219 = tail call i64 @crc32(i64 noundef %218, ptr noundef %200, i32 noundef %201) #10
  store i64 %219, ptr %217, align 8, !tbaa !59
  br label %220

220:                                              ; preds = %216, %212, %203
  %221 = load ptr, ptr %191, align 8, !tbaa !82
  %222 = getelementptr inbounds nuw i8, ptr %221, i64 %207
  store ptr %222, ptr %191, align 8, !tbaa !82
  %223 = getelementptr inbounds nuw i8, ptr %191, i64 16
  %224 = load i64, ptr %223, align 8, !tbaa !55
  %225 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %224, i64 %207), !nosanitize !45
  %226 = extractvalue { i64, i1 } %225, 1, !nosanitize !45
  br i1 %226, label %227, label %228, !prof !46, !nosanitize !45

227:                                              ; preds = %220
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

228:                                              ; preds = %220
  %229 = extractvalue { i64, i1 } %225, 0, !nosanitize !45
  store i64 %229, ptr %223, align 8, !tbaa !55
  %230 = load i32, ptr %3, align 4, !tbaa !75
  br label %231

231:                                              ; preds = %228, %195
  %232 = phi i32 [ %188, %195 ], [ %230, %228 ]
  %233 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %232, i32 %201), !nosanitize !45
  %234 = extractvalue { i32, i1 } %233, 1, !nosanitize !45
  br i1 %234, label %235, label %236, !prof !46, !nosanitize !45

235:                                              ; preds = %231
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

236:                                              ; preds = %231
  %237 = extractvalue { i32, i1 } %233, 0, !nosanitize !45
  store i32 %237, ptr %3, align 4, !tbaa !75
  %238 = load i32, ptr %10, align 4, !tbaa !76
  %239 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %237, i32 %238), !nosanitize !45
  %240 = extractvalue { i32, i1 } %239, 1, !nosanitize !45
  br i1 %240, label %241, label %242, !prof !46, !nosanitize !45

241:                                              ; preds = %236
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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

315:                                              ; preds = %310, %308, %187
  %316 = phi i32 [ %237, %310 ], [ %237, %308 ], [ %188, %187 ]
  %317 = load i64, ptr %19, align 8, !tbaa !38
  %318 = load i64, ptr %5, align 8, !tbaa !61
  %319 = icmp ult i64 %317, %318
  br i1 %319, label %320, label %356

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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

330:                                              ; preds = %326
  %331 = extractvalue { i64, i1 } %327, 0, !nosanitize !45
  %332 = tail call i64 @llvm.umin.i64(i64 %331, i64 258)
  %333 = load ptr, ptr %7, align 8, !tbaa !34
  %334 = getelementptr inbounds nuw i8, ptr %333, i64 %324
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %334, i8 0, i64 %332, i1 false)
  %335 = add nuw nsw i64 %332, %324
  br label %353

336:                                              ; preds = %320
  %337 = add nuw nsw i64 %324, 258
  %338 = icmp ult i64 %317, %337
  br i1 %338, label %339, label %356

339:                                              ; preds = %336
  %340 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %318, i64 %317), !nosanitize !45
  %341 = sub nuw nsw i64 %337, %317
  %342 = extractvalue { i64, i1 } %340, 0, !nosanitize !45
  %343 = tail call i64 @llvm.umin.i64(i64 %341, i64 %342)
  %344 = load ptr, ptr %7, align 8, !tbaa !34
  %345 = getelementptr inbounds nuw i8, ptr %344, i64 %317
  %346 = and i64 %343, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %345, i8 0, i64 %346, i1 false)
  %347 = load i64, ptr %19, align 8, !tbaa !38
  %348 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %347, i64 %343), !nosanitize !45
  %349 = extractvalue { i64, i1 } %348, 1, !nosanitize !45
  br i1 %349, label %350, label %351, !prof !46, !nosanitize !45

350:                                              ; preds = %339
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

351:                                              ; preds = %339
  %352 = extractvalue { i64, i1 } %348, 0, !nosanitize !45
  br label %353

353:                                              ; preds = %351, %330
  %354 = phi i64 [ %335, %330 ], [ %352, %351 ]
  store i64 %354, ptr %19, align 8, !tbaa !38
  %355 = load i32, ptr %3, align 4, !tbaa !75
  br label %356

356:                                              ; preds = %353, %336, %315
  %357 = phi i32 [ %316, %315 ], [ %316, %336 ], [ %355, %353 ]
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %361

359:                                              ; preds = %356
  %360 = icmp eq i32 %1, 0
  br i1 %360, label %615, label %478

361:                                              ; preds = %356, %25
  store i32 0, ptr %20, align 8, !tbaa !78
  %362 = load ptr, ptr %7, align 8, !tbaa !34
  %363 = load i32, ptr %6, align 4, !tbaa !73
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds nuw i8, ptr %362, i64 %364
  %366 = load i8, ptr %365, align 1, !tbaa !8
  %367 = load i32, ptr %22, align 4, !tbaa !139
  %368 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %367, i32 1), !nosanitize !45
  %369 = extractvalue { i32, i1 } %368, 1, !nosanitize !45
  br i1 %369, label %370, label %371, !prof !46, !nosanitize !45

370:                                              ; preds = %361
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

371:                                              ; preds = %361
  %372 = extractvalue { i32, i1 } %368, 0, !nosanitize !45
  %373 = load ptr, ptr %21, align 8, !tbaa !44
  store i32 %372, ptr %22, align 4, !tbaa !139
  %374 = zext i32 %367 to i64
  %375 = getelementptr inbounds nuw i8, ptr %373, i64 %374
  store i8 0, ptr %375, align 1, !tbaa !8
  %376 = load i32, ptr %22, align 4, !tbaa !139
  %377 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %376, i32 1), !nosanitize !45
  %378 = extractvalue { i32, i1 } %377, 1, !nosanitize !45
  br i1 %378, label %379, label %380, !prof !46, !nosanitize !45

379:                                              ; preds = %371
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

380:                                              ; preds = %371
  %381 = extractvalue { i32, i1 } %377, 0, !nosanitize !45
  %382 = load ptr, ptr %21, align 8, !tbaa !44
  store i32 %381, ptr %22, align 4, !tbaa !139
  %383 = zext i32 %376 to i64
  %384 = getelementptr inbounds nuw i8, ptr %382, i64 %383
  store i8 0, ptr %384, align 1, !tbaa !8
  %385 = load i32, ptr %22, align 4, !tbaa !139
  %386 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %385, i32 1), !nosanitize !45
  %387 = extractvalue { i32, i1 } %386, 1, !nosanitize !45
  br i1 %387, label %388, label %389, !prof !46, !nosanitize !45

388:                                              ; preds = %380
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

389:                                              ; preds = %380
  %390 = extractvalue { i32, i1 } %386, 0, !nosanitize !45
  %391 = load ptr, ptr %21, align 8, !tbaa !44
  store i32 %390, ptr %22, align 4, !tbaa !139
  %392 = zext i32 %385 to i64
  %393 = getelementptr inbounds nuw i8, ptr %391, i64 %392
  store i8 %366, ptr %393, align 1, !tbaa !8
  %394 = zext i8 %366 to i64
  %395 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %394
  %396 = load i16, ptr %395, align 4, !tbaa !8
  %397 = add i16 %396, 1
  store i16 %397, ptr %395, align 4, !tbaa !8
  %398 = load i32, ptr %22, align 4, !tbaa !139
  %399 = load i32, ptr %24, align 8, !tbaa !47
  %400 = icmp eq i32 %398, %399
  %401 = load i32, ptr %3, align 4, !tbaa !75
  %402 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %401, i32 1), !nosanitize !45
  %403 = extractvalue { i32, i1 } %402, 1, !nosanitize !45
  br i1 %403, label %404, label %405, !prof !46, !nosanitize !45

404:                                              ; preds = %556, %487, %420, %389
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

405:                                              ; preds = %389
  %406 = extractvalue { i32, i1 } %402, 0, !nosanitize !45
  store i32 %406, ptr %3, align 4, !tbaa !75
  %407 = load i32, ptr %6, align 4, !tbaa !73
  %408 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %407, i32 1), !nosanitize !45
  %409 = extractvalue { i32, i1 } %408, 1, !nosanitize !45
  br i1 %409, label %410, label %411, !prof !46, !nosanitize !45

410:                                              ; preds = %405
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

411:                                              ; preds = %405
  %412 = extractvalue { i32, i1 } %408, 0, !nosanitize !45
  store i32 %412, ptr %6, align 4, !tbaa !73
  br i1 %400, label %413, label %477

413:                                              ; preds = %411
  %414 = load i64, ptr %9, align 8, !tbaa !74
  %415 = icmp sgt i64 %414, -1
  br i1 %415, label %416, label %420

416:                                              ; preds = %413
  %417 = load ptr, ptr %7, align 8, !tbaa !34
  %418 = and i64 %414, 4294967295
  %419 = getelementptr inbounds nuw i8, ptr %417, i64 %418
  br label %420

420:                                              ; preds = %416, %413
  %421 = phi ptr [ %419, %416 ], [ null, %413 ]
  %422 = zext i32 %412 to i64
  %423 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %422, i64 %414), !nosanitize !45
  %424 = extractvalue { i64, i1 } %423, 1, !nosanitize !45
  br i1 %424, label %404, label %425, !prof !46, !nosanitize !45

425:                                              ; preds = %420
  %426 = extractvalue { i64, i1 } %423, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %421, i64 noundef %426, i32 noundef 0) #10
  %427 = load i32, ptr %6, align 4, !tbaa !73
  %428 = zext i32 %427 to i64
  store i64 %428, ptr %9, align 8, !tbaa !74
  %429 = load ptr, ptr %0, align 8, !tbaa !20
  %430 = getelementptr inbounds nuw i8, ptr %429, i64 56
  %431 = load ptr, ptr %430, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %431) #10
  %432 = getelementptr inbounds nuw i8, ptr %431, i64 40
  %433 = load i64, ptr %432, align 8, !tbaa !57
  %434 = getelementptr inbounds nuw i8, ptr %429, i64 32
  %435 = load i32, ptr %434, align 8, !tbaa !107
  %436 = zext i32 %435 to i64
  %437 = tail call i64 @llvm.umin.i64(i64 %433, i64 %436)
  %438 = trunc nuw i64 %437 to i32
  %439 = icmp eq i64 %437, 0
  br i1 %439, label %472, label %440

440:                                              ; preds = %425
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

454:                                              ; preds = %440
  %455 = extractvalue { i64, i1 } %451, 0, !nosanitize !45
  store i64 %455, ptr %449, align 8, !tbaa !108
  %456 = load i32, ptr %434, align 8, !tbaa !107
  %457 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %456, i32 %438), !nosanitize !45
  %458 = extractvalue { i32, i1 } %457, 1, !nosanitize !45
  br i1 %458, label %459, label %460, !prof !46, !nosanitize !45

459:                                              ; preds = %454
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

460:                                              ; preds = %454
  %461 = extractvalue { i32, i1 } %457, 0, !nosanitize !45
  store i32 %461, ptr %434, align 8, !tbaa !107
  %462 = load i64, ptr %432, align 8, !tbaa !57
  %463 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %462, i64 %437), !nosanitize !45
  %464 = extractvalue { i64, i1 } %463, 1, !nosanitize !45
  br i1 %464, label %465, label %466, !prof !46, !nosanitize !45

465:                                              ; preds = %460
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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

472:                                              ; preds = %469, %466, %425
  %473 = load ptr, ptr %0, align 8, !tbaa !20
  %474 = getelementptr inbounds nuw i8, ptr %473, i64 32
  %475 = load i32, ptr %474, align 8, !tbaa !107
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %615, label %477

477:                                              ; preds = %472, %411
  br label %25

478:                                              ; preds = %359
  store i32 0, ptr %10, align 4, !tbaa !76
  %479 = icmp eq i32 %1, 4
  br i1 %479, label %480, label %546

480:                                              ; preds = %478
  %481 = load i64, ptr %9, align 8, !tbaa !74
  %482 = icmp sgt i64 %481, -1
  br i1 %482, label %483, label %487

483:                                              ; preds = %480
  %484 = load ptr, ptr %7, align 8, !tbaa !34
  %485 = and i64 %481, 4294967295
  %486 = getelementptr inbounds nuw i8, ptr %484, i64 %485
  br label %487

487:                                              ; preds = %483, %480
  %488 = phi ptr [ %486, %483 ], [ null, %480 ]
  %489 = load i32, ptr %6, align 4, !tbaa !73
  %490 = zext i32 %489 to i64
  %491 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %490, i64 %481), !nosanitize !45
  %492 = extractvalue { i64, i1 } %491, 1, !nosanitize !45
  br i1 %492, label %404, label %493, !prof !46, !nosanitize !45

493:                                              ; preds = %487
  %494 = extractvalue { i64, i1 } %491, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %488, i64 noundef %494, i32 noundef 1) #10
  %495 = load i32, ptr %6, align 4, !tbaa !73
  %496 = zext i32 %495 to i64
  store i64 %496, ptr %9, align 8, !tbaa !74
  %497 = load ptr, ptr %0, align 8, !tbaa !20
  %498 = getelementptr inbounds nuw i8, ptr %497, i64 56
  %499 = load ptr, ptr %498, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %499) #10
  %500 = getelementptr inbounds nuw i8, ptr %499, i64 40
  %501 = load i64, ptr %500, align 8, !tbaa !57
  %502 = getelementptr inbounds nuw i8, ptr %497, i64 32
  %503 = load i32, ptr %502, align 8, !tbaa !107
  %504 = zext i32 %503 to i64
  %505 = tail call i64 @llvm.umin.i64(i64 %501, i64 %504)
  %506 = trunc nuw i64 %505 to i32
  %507 = icmp eq i64 %505, 0
  br i1 %507, label %540, label %508

508:                                              ; preds = %493
  %509 = getelementptr inbounds nuw i8, ptr %497, i64 24
  %510 = load ptr, ptr %509, align 8, !tbaa !106
  %511 = getelementptr inbounds nuw i8, ptr %499, i64 32
  %512 = load ptr, ptr %511, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %510, ptr align 1 %512, i64 %505, i1 false)
  %513 = load ptr, ptr %509, align 8, !tbaa !106
  %514 = getelementptr inbounds nuw i8, ptr %513, i64 %505
  store ptr %514, ptr %509, align 8, !tbaa !106
  %515 = load ptr, ptr %511, align 8, !tbaa !58
  %516 = getelementptr inbounds nuw i8, ptr %515, i64 %505
  store ptr %516, ptr %511, align 8, !tbaa !58
  %517 = getelementptr inbounds nuw i8, ptr %497, i64 40
  %518 = load i64, ptr %517, align 8, !tbaa !108
  %519 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %518, i64 %505), !nosanitize !45
  %520 = extractvalue { i64, i1 } %519, 1, !nosanitize !45
  br i1 %520, label %521, label %522, !prof !46, !nosanitize !45

521:                                              ; preds = %508
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

522:                                              ; preds = %508
  %523 = extractvalue { i64, i1 } %519, 0, !nosanitize !45
  store i64 %523, ptr %517, align 8, !tbaa !108
  %524 = load i32, ptr %502, align 8, !tbaa !107
  %525 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %524, i32 %506), !nosanitize !45
  %526 = extractvalue { i32, i1 } %525, 1, !nosanitize !45
  br i1 %526, label %527, label %528, !prof !46, !nosanitize !45

527:                                              ; preds = %522
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

528:                                              ; preds = %522
  %529 = extractvalue { i32, i1 } %525, 0, !nosanitize !45
  store i32 %529, ptr %502, align 8, !tbaa !107
  %530 = load i64, ptr %500, align 8, !tbaa !57
  %531 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %530, i64 %505), !nosanitize !45
  %532 = extractvalue { i64, i1 } %531, 1, !nosanitize !45
  br i1 %532, label %533, label %534, !prof !46, !nosanitize !45

533:                                              ; preds = %528
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

534:                                              ; preds = %528
  %535 = extractvalue { i64, i1 } %531, 0, !nosanitize !45
  store i64 %535, ptr %500, align 8, !tbaa !57
  %536 = icmp eq i64 %535, 0
  br i1 %536, label %537, label %540

537:                                              ; preds = %534
  %538 = getelementptr inbounds nuw i8, ptr %499, i64 16
  %539 = load ptr, ptr %538, align 8, !tbaa !40
  store ptr %539, ptr %511, align 8, !tbaa !58
  br label %540

540:                                              ; preds = %537, %534, %493
  %541 = load ptr, ptr %0, align 8, !tbaa !20
  %542 = getelementptr inbounds nuw i8, ptr %541, i64 32
  %543 = load i32, ptr %542, align 8, !tbaa !107
  %544 = icmp eq i32 %543, 0
  %545 = select i1 %544, i32 2, i32 3
  br label %615

546:                                              ; preds = %478
  %547 = load i32, ptr %22, align 4, !tbaa !139
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %614, label %549

549:                                              ; preds = %546
  %550 = load i64, ptr %9, align 8, !tbaa !74
  %551 = icmp sgt i64 %550, -1
  br i1 %551, label %552, label %556

552:                                              ; preds = %549
  %553 = load ptr, ptr %7, align 8, !tbaa !34
  %554 = and i64 %550, 4294967295
  %555 = getelementptr inbounds nuw i8, ptr %553, i64 %554
  br label %556

556:                                              ; preds = %552, %549
  %557 = phi ptr [ %555, %552 ], [ null, %549 ]
  %558 = load i32, ptr %6, align 4, !tbaa !73
  %559 = zext i32 %558 to i64
  %560 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %559, i64 %550), !nosanitize !45
  %561 = extractvalue { i64, i1 } %560, 1, !nosanitize !45
  br i1 %561, label %404, label %562, !prof !46, !nosanitize !45

562:                                              ; preds = %556
  %563 = extractvalue { i64, i1 } %560, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %557, i64 noundef %563, i32 noundef 0) #10
  %564 = load i32, ptr %6, align 4, !tbaa !73
  %565 = zext i32 %564 to i64
  store i64 %565, ptr %9, align 8, !tbaa !74
  %566 = load ptr, ptr %0, align 8, !tbaa !20
  %567 = getelementptr inbounds nuw i8, ptr %566, i64 56
  %568 = load ptr, ptr %567, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %568) #10
  %569 = getelementptr inbounds nuw i8, ptr %568, i64 40
  %570 = load i64, ptr %569, align 8, !tbaa !57
  %571 = getelementptr inbounds nuw i8, ptr %566, i64 32
  %572 = load i32, ptr %571, align 8, !tbaa !107
  %573 = zext i32 %572 to i64
  %574 = tail call i64 @llvm.umin.i64(i64 %570, i64 %573)
  %575 = trunc nuw i64 %574 to i32
  %576 = icmp eq i64 %574, 0
  br i1 %576, label %609, label %577

577:                                              ; preds = %562
  %578 = getelementptr inbounds nuw i8, ptr %566, i64 24
  %579 = load ptr, ptr %578, align 8, !tbaa !106
  %580 = getelementptr inbounds nuw i8, ptr %568, i64 32
  %581 = load ptr, ptr %580, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %579, ptr align 1 %581, i64 %574, i1 false)
  %582 = load ptr, ptr %578, align 8, !tbaa !106
  %583 = getelementptr inbounds nuw i8, ptr %582, i64 %574
  store ptr %583, ptr %578, align 8, !tbaa !106
  %584 = load ptr, ptr %580, align 8, !tbaa !58
  %585 = getelementptr inbounds nuw i8, ptr %584, i64 %574
  store ptr %585, ptr %580, align 8, !tbaa !58
  %586 = getelementptr inbounds nuw i8, ptr %566, i64 40
  %587 = load i64, ptr %586, align 8, !tbaa !108
  %588 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %587, i64 %574), !nosanitize !45
  %589 = extractvalue { i64, i1 } %588, 1, !nosanitize !45
  br i1 %589, label %590, label %591, !prof !46, !nosanitize !45

590:                                              ; preds = %577
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

591:                                              ; preds = %577
  %592 = extractvalue { i64, i1 } %588, 0, !nosanitize !45
  store i64 %592, ptr %586, align 8, !tbaa !108
  %593 = load i32, ptr %571, align 8, !tbaa !107
  %594 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %593, i32 %575), !nosanitize !45
  %595 = extractvalue { i32, i1 } %594, 1, !nosanitize !45
  br i1 %595, label %596, label %597, !prof !46, !nosanitize !45

596:                                              ; preds = %591
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

597:                                              ; preds = %591
  %598 = extractvalue { i32, i1 } %594, 0, !nosanitize !45
  store i32 %598, ptr %571, align 8, !tbaa !107
  %599 = load i64, ptr %569, align 8, !tbaa !57
  %600 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %599, i64 %574), !nosanitize !45
  %601 = extractvalue { i64, i1 } %600, 1, !nosanitize !45
  br i1 %601, label %602, label %603, !prof !46, !nosanitize !45

602:                                              ; preds = %597
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

603:                                              ; preds = %597
  %604 = extractvalue { i64, i1 } %600, 0, !nosanitize !45
  store i64 %604, ptr %569, align 8, !tbaa !57
  %605 = icmp eq i64 %604, 0
  br i1 %605, label %606, label %609

606:                                              ; preds = %603
  %607 = getelementptr inbounds nuw i8, ptr %568, i64 16
  %608 = load ptr, ptr %607, align 8, !tbaa !40
  store ptr %608, ptr %580, align 8, !tbaa !58
  br label %609

609:                                              ; preds = %606, %603, %562
  %610 = load ptr, ptr %0, align 8, !tbaa !20
  %611 = getelementptr inbounds nuw i8, ptr %610, i64 32
  %612 = load i32, ptr %611, align 8, !tbaa !107
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %615, label %614

614:                                              ; preds = %609, %546
  br label %615

615:                                              ; preds = %614, %609, %540, %472, %359
  %616 = phi i32 [ 0, %359 ], [ %545, %540 ], [ 0, %609 ], [ 1, %614 ], [ 0, %472 ]
  ret i32 %616
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

28:                                               ; preds = %516, %2
  %29 = load i32, ptr %3, align 4, !tbaa !75
  %30 = icmp ult i32 %29, 259
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  store i32 0, ptr %4, align 8, !tbaa !78
  %32 = load i32, ptr %7, align 4, !tbaa !73
  br label %370

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
  br i1 %199, label %320, label %200

200:                                              ; preds = %192
  %201 = load ptr, ptr %8, align 8, !tbaa !34
  %202 = zext i32 %194 to i64
  %203 = getelementptr inbounds nuw i8, ptr %201, i64 %202
  %204 = zext i32 %193 to i64
  %205 = getelementptr inbounds nuw i8, ptr %203, i64 %204
  %206 = tail call i32 @llvm.umin.i32(i32 %198, i32 %195)
  %207 = icmp eq i32 %195, 0
  br i1 %207, label %236, label %208

208:                                              ; preds = %200
  %209 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %198, i32 %206), !nosanitize !45
  %210 = extractvalue { i32, i1 } %209, 0, !nosanitize !45
  store i32 %210, ptr %197, align 8, !tbaa !81
  %211 = load ptr, ptr %196, align 8, !tbaa !82
  %212 = zext i32 %206 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %205, ptr align 1 %211, i64 %212, i1 false)
  %213 = getelementptr inbounds nuw i8, ptr %196, i64 56
  %214 = load ptr, ptr %213, align 8, !tbaa !19
  %215 = getelementptr inbounds nuw i8, ptr %214, i64 48
  %216 = load i32, ptr %215, align 8, !tbaa !30
  switch i32 %216, label %225 [
    i32 1, label %217
    i32 2, label %221
  ]

217:                                              ; preds = %208
  %218 = getelementptr inbounds nuw i8, ptr %196, i64 96
  %219 = load i64, ptr %218, align 8, !tbaa !59
  %220 = tail call i64 @adler32(i64 noundef %219, ptr noundef %205, i32 noundef %206) #10
  store i64 %220, ptr %218, align 8, !tbaa !59
  br label %225

221:                                              ; preds = %208
  %222 = getelementptr inbounds nuw i8, ptr %196, i64 96
  %223 = load i64, ptr %222, align 8, !tbaa !59
  %224 = tail call i64 @crc32(i64 noundef %223, ptr noundef %205, i32 noundef %206) #10
  store i64 %224, ptr %222, align 8, !tbaa !59
  br label %225

225:                                              ; preds = %221, %217, %208
  %226 = load ptr, ptr %196, align 8, !tbaa !82
  %227 = getelementptr inbounds nuw i8, ptr %226, i64 %212
  store ptr %227, ptr %196, align 8, !tbaa !82
  %228 = getelementptr inbounds nuw i8, ptr %196, i64 16
  %229 = load i64, ptr %228, align 8, !tbaa !55
  %230 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %229, i64 %212), !nosanitize !45
  %231 = extractvalue { i64, i1 } %230, 1, !nosanitize !45
  br i1 %231, label %232, label %233, !prof !46, !nosanitize !45

232:                                              ; preds = %225
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

233:                                              ; preds = %225
  %234 = extractvalue { i64, i1 } %230, 0, !nosanitize !45
  store i64 %234, ptr %228, align 8, !tbaa !55
  %235 = load i32, ptr %3, align 4, !tbaa !75
  br label %236

236:                                              ; preds = %233, %200
  %237 = phi i32 [ %193, %200 ], [ %235, %233 ]
  %238 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %237, i32 %206), !nosanitize !45
  %239 = extractvalue { i32, i1 } %238, 1, !nosanitize !45
  br i1 %239, label %240, label %241, !prof !46, !nosanitize !45

240:                                              ; preds = %236
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

241:                                              ; preds = %236
  %242 = extractvalue { i32, i1 } %238, 0, !nosanitize !45
  store i32 %242, ptr %3, align 4, !tbaa !75
  %243 = load i32, ptr %11, align 4, !tbaa !76
  %244 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %242, i32 %243), !nosanitize !45
  %245 = extractvalue { i32, i1 } %244, 1, !nosanitize !45
  br i1 %245, label %246, label %247, !prof !46, !nosanitize !45

246:                                              ; preds = %241
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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

320:                                              ; preds = %315, %313, %192
  %321 = phi i32 [ %242, %315 ], [ %242, %313 ], [ %193, %192 ]
  %322 = load i64, ptr %20, align 8, !tbaa !38
  %323 = load i64, ptr %6, align 8, !tbaa !61
  %324 = icmp ult i64 %322, %323
  br i1 %324, label %325, label %361

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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

335:                                              ; preds = %331
  %336 = extractvalue { i64, i1 } %332, 0, !nosanitize !45
  %337 = tail call i64 @llvm.umin.i64(i64 %336, i64 258)
  %338 = load ptr, ptr %8, align 8, !tbaa !34
  %339 = getelementptr inbounds nuw i8, ptr %338, i64 %329
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %339, i8 0, i64 %337, i1 false)
  %340 = add nuw nsw i64 %337, %329
  br label %358

341:                                              ; preds = %325
  %342 = add nuw nsw i64 %329, 258
  %343 = icmp ult i64 %322, %342
  br i1 %343, label %344, label %361

344:                                              ; preds = %341
  %345 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %323, i64 %322), !nosanitize !45
  %346 = sub nuw nsw i64 %342, %322
  %347 = extractvalue { i64, i1 } %345, 0, !nosanitize !45
  %348 = tail call i64 @llvm.umin.i64(i64 %346, i64 %347)
  %349 = load ptr, ptr %8, align 8, !tbaa !34
  %350 = getelementptr inbounds nuw i8, ptr %349, i64 %322
  %351 = and i64 %348, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %350, i8 0, i64 %351, i1 false)
  %352 = load i64, ptr %20, align 8, !tbaa !38
  %353 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %352, i64 %348), !nosanitize !45
  %354 = extractvalue { i64, i1 } %353, 1, !nosanitize !45
  br i1 %354, label %355, label %356, !prof !46, !nosanitize !45

355:                                              ; preds = %344
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

356:                                              ; preds = %344
  %357 = extractvalue { i64, i1 } %353, 0, !nosanitize !45
  br label %358

358:                                              ; preds = %356, %335
  %359 = phi i64 [ %340, %335 ], [ %357, %356 ]
  store i64 %359, ptr %20, align 8, !tbaa !38
  %360 = load i32, ptr %3, align 4, !tbaa !75
  br label %361

361:                                              ; preds = %358, %341, %320
  %362 = phi i32 [ %321, %320 ], [ %321, %341 ], [ %360, %358 ]
  %363 = icmp ult i32 %362, 259
  %364 = and i1 %21, %363
  br i1 %364, label %774, label %365

365:                                              ; preds = %361
  %366 = icmp eq i32 %362, 0
  br i1 %366, label %637, label %367

367:                                              ; preds = %365
  store i32 0, ptr %4, align 8, !tbaa !78
  %368 = icmp ugt i32 %362, 2
  %369 = load i32, ptr %7, align 4, !tbaa !73
  br i1 %368, label %370, label %517

370:                                              ; preds = %367, %31
  %371 = phi i32 [ %32, %31 ], [ %369, %367 ]
  %372 = phi i32 [ %29, %31 ], [ %362, %367 ]
  %373 = icmp eq i32 %371, 0
  br i1 %373, label %517, label %374

374:                                              ; preds = %370
  %375 = load ptr, ptr %8, align 8, !tbaa !34
  %376 = zext i32 %371 to i64
  %377 = getelementptr inbounds nuw i8, ptr %375, i64 %376
  %378 = getelementptr inbounds i8, ptr %377, i64 -1
  %379 = load i8, ptr %378, align 1, !tbaa !8
  %380 = load i8, ptr %377, align 1, !tbaa !8
  %381 = icmp eq i8 %379, %380
  br i1 %381, label %382, label %517

382:                                              ; preds = %374
  %383 = getelementptr inbounds nuw i8, ptr %377, i64 1
  %384 = load i8, ptr %383, align 1, !tbaa !8
  %385 = icmp eq i8 %379, %384
  br i1 %385, label %386, label %517

386:                                              ; preds = %382
  %387 = getelementptr inbounds nuw i8, ptr %377, i64 2
  %388 = load i8, ptr %387, align 1, !tbaa !8
  %389 = icmp eq i8 %379, %388
  br i1 %389, label %390, label %517

390:                                              ; preds = %386
  %391 = getelementptr inbounds nuw i8, ptr %377, i64 258
  br label %392

392:                                              ; preds = %422, %390
  %393 = phi i64 [ 2, %390 ], [ %423, %422 ]
  %394 = getelementptr inbounds nuw i8, ptr %377, i64 %393
  %395 = getelementptr inbounds nuw i8, ptr %394, i64 1
  %396 = load i8, ptr %395, align 1, !tbaa !8
  %397 = icmp eq i8 %379, %396
  br i1 %397, label %398, label %429

398:                                              ; preds = %392
  %399 = getelementptr inbounds nuw i8, ptr %394, i64 2
  %400 = load i8, ptr %399, align 1, !tbaa !8
  %401 = icmp eq i8 %379, %400
  br i1 %401, label %402, label %431

402:                                              ; preds = %398
  %403 = getelementptr inbounds nuw i8, ptr %394, i64 3
  %404 = load i8, ptr %403, align 1, !tbaa !8
  %405 = icmp eq i8 %379, %404
  br i1 %405, label %406, label %433

406:                                              ; preds = %402
  %407 = getelementptr inbounds nuw i8, ptr %394, i64 4
  %408 = load i8, ptr %407, align 1, !tbaa !8
  %409 = icmp eq i8 %379, %408
  br i1 %409, label %410, label %435

410:                                              ; preds = %406
  %411 = getelementptr inbounds nuw i8, ptr %394, i64 5
  %412 = load i8, ptr %411, align 1, !tbaa !8
  %413 = icmp eq i8 %379, %412
  br i1 %413, label %414, label %437

414:                                              ; preds = %410
  %415 = getelementptr inbounds nuw i8, ptr %394, i64 6
  %416 = load i8, ptr %415, align 1, !tbaa !8
  %417 = icmp eq i8 %379, %416
  br i1 %417, label %418, label %439

418:                                              ; preds = %414
  %419 = getelementptr inbounds nuw i8, ptr %394, i64 7
  %420 = load i8, ptr %419, align 1, !tbaa !8
  %421 = icmp eq i8 %379, %420
  br i1 %421, label %422, label %441

422:                                              ; preds = %418
  %423 = add nuw nsw i64 %393, 8
  %424 = getelementptr inbounds nuw i8, ptr %377, i64 %423
  %425 = load i8, ptr %424, align 1, !tbaa !8
  %426 = icmp eq i8 %379, %425
  %427 = icmp samesign ult i64 %393, 250
  %428 = select i1 %426, i1 %427, i1 false
  br i1 %428, label %392, label %443, !llvm.loop !144

429:                                              ; preds = %392
  %430 = getelementptr inbounds nuw i8, ptr %394, i64 1
  br label %445

431:                                              ; preds = %398
  %432 = getelementptr inbounds nuw i8, ptr %394, i64 2
  br label %445

433:                                              ; preds = %402
  %434 = getelementptr inbounds nuw i8, ptr %394, i64 3
  br label %445

435:                                              ; preds = %406
  %436 = getelementptr inbounds nuw i8, ptr %394, i64 4
  br label %445

437:                                              ; preds = %410
  %438 = getelementptr inbounds nuw i8, ptr %394, i64 5
  br label %445

439:                                              ; preds = %414
  %440 = getelementptr inbounds nuw i8, ptr %394, i64 6
  br label %445

441:                                              ; preds = %418
  %442 = getelementptr inbounds nuw i8, ptr %394, i64 7
  br label %445

443:                                              ; preds = %422
  %444 = getelementptr inbounds nuw i8, ptr %377, i64 %423
  br label %445

445:                                              ; preds = %443, %441, %439, %437, %435, %433, %431, %429
  %446 = phi ptr [ %432, %431 ], [ %434, %433 ], [ %430, %429 ], [ %442, %441 ], [ %440, %439 ], [ %438, %437 ], [ %436, %435 ], [ %444, %443 ]
  %447 = ptrtoint ptr %391 to i64
  %448 = ptrtoint ptr %446 to i64
  %449 = sub i64 %447, %448
  %450 = trunc i64 %449 to i32
  %451 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 258, i32 %450), !nosanitize !45
  %452 = extractvalue { i32, i1 } %451, 1, !nosanitize !45
  br i1 %452, label %453, label %454, !prof !46, !nosanitize !45

453:                                              ; preds = %445
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

454:                                              ; preds = %445
  %455 = extractvalue { i32, i1 } %451, 0, !nosanitize !45
  %456 = tail call i32 @llvm.umin.i32(i32 %455, i32 %372)
  store i32 %456, ptr %4, align 8
  %457 = icmp ugt i32 %456, 2
  %458 = load i32, ptr %23, align 4, !tbaa !139
  br i1 %457, label %459, label %520

459:                                              ; preds = %454
  %460 = trunc i32 %456 to i8
  %461 = add i8 %460, -3
  %462 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %458, i32 1), !nosanitize !45
  %463 = extractvalue { i32, i1 } %462, 1, !nosanitize !45
  br i1 %463, label %464, label %465, !prof !46, !nosanitize !45

464:                                              ; preds = %459
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

465:                                              ; preds = %459
  %466 = extractvalue { i32, i1 } %462, 0, !nosanitize !45
  %467 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %466, ptr %23, align 4, !tbaa !139
  %468 = zext i32 %458 to i64
  %469 = getelementptr inbounds nuw i8, ptr %467, i64 %468
  store i8 1, ptr %469, align 1, !tbaa !8
  %470 = load i32, ptr %23, align 4, !tbaa !139
  %471 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %470, i32 1), !nosanitize !45
  %472 = extractvalue { i32, i1 } %471, 1, !nosanitize !45
  br i1 %472, label %473, label %474, !prof !46, !nosanitize !45

473:                                              ; preds = %465
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

474:                                              ; preds = %465
  %475 = extractvalue { i32, i1 } %471, 0, !nosanitize !45
  %476 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %475, ptr %23, align 4, !tbaa !139
  %477 = zext i32 %470 to i64
  %478 = getelementptr inbounds nuw i8, ptr %476, i64 %477
  store i8 0, ptr %478, align 1, !tbaa !8
  %479 = load i32, ptr %23, align 4, !tbaa !139
  %480 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %479, i32 1), !nosanitize !45
  %481 = extractvalue { i32, i1 } %480, 1, !nosanitize !45
  br i1 %481, label %482, label %483, !prof !46, !nosanitize !45

482:                                              ; preds = %474
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

483:                                              ; preds = %474
  %484 = extractvalue { i32, i1 } %480, 0, !nosanitize !45
  %485 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %484, ptr %23, align 4, !tbaa !139
  %486 = zext i32 %479 to i64
  %487 = getelementptr inbounds nuw i8, ptr %485, i64 %486
  store i8 %461, ptr %487, align 1, !tbaa !8
  %488 = zext i8 %461 to i64
  %489 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %488
  %490 = load i8, ptr %489, align 1, !tbaa !8
  %491 = zext i8 %490 to i64
  %492 = getelementptr [4 x i8], ptr %26, i64 %491
  %493 = load i16, ptr %492, align 4, !tbaa !8
  %494 = add i16 %493, 1
  store i16 %494, ptr %492, align 4, !tbaa !8
  %495 = load i8, ptr @_dist_code, align 1, !tbaa !8
  %496 = zext i8 %495 to i64
  %497 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %496
  %498 = load i16, ptr %497, align 4, !tbaa !8
  %499 = add i16 %498, 1
  store i16 %499, ptr %497, align 4, !tbaa !8
  %500 = load i32, ptr %23, align 4, !tbaa !139
  %501 = load i32, ptr %25, align 8, !tbaa !47
  %502 = icmp eq i32 %500, %501
  %503 = load i32, ptr %4, align 8, !tbaa !78
  %504 = load i32, ptr %3, align 4, !tbaa !75
  %505 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %504, i32 %503), !nosanitize !45
  %506 = extractvalue { i32, i1 } %505, 1, !nosanitize !45
  br i1 %506, label %507, label %508, !prof !46, !nosanitize !45

507:                                              ; preds = %483
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

508:                                              ; preds = %483
  %509 = extractvalue { i32, i1 } %505, 0, !nosanitize !45
  store i32 %509, ptr %3, align 4, !tbaa !75
  %510 = load i32, ptr %7, align 4, !tbaa !73
  %511 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %510, i32 %503), !nosanitize !45
  %512 = extractvalue { i32, i1 } %511, 1, !nosanitize !45
  br i1 %512, label %513, label %514, !prof !46, !nosanitize !45

513:                                              ; preds = %508
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

514:                                              ; preds = %508
  %515 = extractvalue { i32, i1 } %511, 0, !nosanitize !45
  store i32 %515, ptr %7, align 4, !tbaa !73
  store i32 0, ptr %4, align 8, !tbaa !78
  br i1 %502, label %572, label %516

516:                                              ; preds = %632, %570, %514
  br label %28

517:                                              ; preds = %386, %382, %374, %370, %367
  %518 = phi i32 [ %369, %367 ], [ %371, %370 ], [ %371, %386 ], [ %371, %382 ], [ %371, %374 ]
  %519 = load i32, ptr %23, align 4, !tbaa !139
  br label %520

520:                                              ; preds = %517, %454
  %521 = phi i32 [ %458, %454 ], [ %519, %517 ]
  %522 = phi i32 [ %371, %454 ], [ %518, %517 ]
  %523 = load ptr, ptr %8, align 8, !tbaa !34
  %524 = zext i32 %522 to i64
  %525 = getelementptr inbounds nuw i8, ptr %523, i64 %524
  %526 = load i8, ptr %525, align 1, !tbaa !8
  %527 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %521, i32 1), !nosanitize !45
  %528 = extractvalue { i32, i1 } %527, 1, !nosanitize !45
  br i1 %528, label %529, label %530, !prof !46, !nosanitize !45

529:                                              ; preds = %520
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

530:                                              ; preds = %520
  %531 = extractvalue { i32, i1 } %527, 0, !nosanitize !45
  %532 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %531, ptr %23, align 4, !tbaa !139
  %533 = zext i32 %521 to i64
  %534 = getelementptr inbounds nuw i8, ptr %532, i64 %533
  store i8 0, ptr %534, align 1, !tbaa !8
  %535 = load i32, ptr %23, align 4, !tbaa !139
  %536 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %535, i32 1), !nosanitize !45
  %537 = extractvalue { i32, i1 } %536, 1, !nosanitize !45
  br i1 %537, label %538, label %539, !prof !46, !nosanitize !45

538:                                              ; preds = %530
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

539:                                              ; preds = %530
  %540 = extractvalue { i32, i1 } %536, 0, !nosanitize !45
  %541 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %540, ptr %23, align 4, !tbaa !139
  %542 = zext i32 %535 to i64
  %543 = getelementptr inbounds nuw i8, ptr %541, i64 %542
  store i8 0, ptr %543, align 1, !tbaa !8
  %544 = load i32, ptr %23, align 4, !tbaa !139
  %545 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %544, i32 1), !nosanitize !45
  %546 = extractvalue { i32, i1 } %545, 1, !nosanitize !45
  br i1 %546, label %547, label %548, !prof !46, !nosanitize !45

547:                                              ; preds = %539
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

548:                                              ; preds = %539
  %549 = extractvalue { i32, i1 } %545, 0, !nosanitize !45
  %550 = load ptr, ptr %22, align 8, !tbaa !44
  store i32 %549, ptr %23, align 4, !tbaa !139
  %551 = zext i32 %544 to i64
  %552 = getelementptr inbounds nuw i8, ptr %550, i64 %551
  store i8 %526, ptr %552, align 1, !tbaa !8
  %553 = zext i8 %526 to i64
  %554 = getelementptr inbounds nuw [4 x i8], ptr %24, i64 %553
  %555 = load i16, ptr %554, align 4, !tbaa !8
  %556 = add i16 %555, 1
  store i16 %556, ptr %554, align 4, !tbaa !8
  %557 = load i32, ptr %23, align 4, !tbaa !139
  %558 = load i32, ptr %25, align 8, !tbaa !47
  %559 = icmp eq i32 %557, %558
  %560 = load i32, ptr %3, align 4, !tbaa !75
  %561 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %560, i32 1), !nosanitize !45
  %562 = extractvalue { i32, i1 } %561, 1, !nosanitize !45
  br i1 %562, label %563, label %564, !prof !46, !nosanitize !45

563:                                              ; preds = %715, %646, %580, %548
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

564:                                              ; preds = %548
  %565 = extractvalue { i32, i1 } %561, 0, !nosanitize !45
  store i32 %565, ptr %3, align 4, !tbaa !75
  %566 = load i32, ptr %7, align 4, !tbaa !73
  %567 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %566, i32 1), !nosanitize !45
  %568 = extractvalue { i32, i1 } %567, 1, !nosanitize !45
  br i1 %568, label %569, label %570, !prof !46, !nosanitize !45

569:                                              ; preds = %564
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

570:                                              ; preds = %564
  %571 = extractvalue { i32, i1 } %567, 0, !nosanitize !45
  store i32 %571, ptr %7, align 4, !tbaa !73
  br i1 %559, label %572, label %516

572:                                              ; preds = %570, %514
  %573 = phi i32 [ %515, %514 ], [ %571, %570 ]
  %574 = load i64, ptr %10, align 8, !tbaa !74
  %575 = icmp sgt i64 %574, -1
  br i1 %575, label %576, label %580

576:                                              ; preds = %572
  %577 = load ptr, ptr %8, align 8, !tbaa !34
  %578 = and i64 %574, 4294967295
  %579 = getelementptr inbounds nuw i8, ptr %577, i64 %578
  br label %580

580:                                              ; preds = %576, %572
  %581 = phi ptr [ %579, %576 ], [ null, %572 ]
  %582 = zext i32 %573 to i64
  %583 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %582, i64 %574), !nosanitize !45
  %584 = extractvalue { i64, i1 } %583, 1, !nosanitize !45
  br i1 %584, label %563, label %585, !prof !46, !nosanitize !45

585:                                              ; preds = %580
  %586 = extractvalue { i64, i1 } %583, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %581, i64 noundef %586, i32 noundef 0) #10
  %587 = load i32, ptr %7, align 4, !tbaa !73
  %588 = zext i32 %587 to i64
  store i64 %588, ptr %10, align 8, !tbaa !74
  %589 = load ptr, ptr %0, align 8, !tbaa !20
  %590 = getelementptr inbounds nuw i8, ptr %589, i64 56
  %591 = load ptr, ptr %590, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %591) #10
  %592 = getelementptr inbounds nuw i8, ptr %591, i64 40
  %593 = load i64, ptr %592, align 8, !tbaa !57
  %594 = getelementptr inbounds nuw i8, ptr %589, i64 32
  %595 = load i32, ptr %594, align 8, !tbaa !107
  %596 = zext i32 %595 to i64
  %597 = tail call i64 @llvm.umin.i64(i64 %593, i64 %596)
  %598 = trunc nuw i64 %597 to i32
  %599 = icmp eq i64 %597, 0
  br i1 %599, label %632, label %600

600:                                              ; preds = %585
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

614:                                              ; preds = %600
  %615 = extractvalue { i64, i1 } %611, 0, !nosanitize !45
  store i64 %615, ptr %609, align 8, !tbaa !108
  %616 = load i32, ptr %594, align 8, !tbaa !107
  %617 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %616, i32 %598), !nosanitize !45
  %618 = extractvalue { i32, i1 } %617, 1, !nosanitize !45
  br i1 %618, label %619, label %620, !prof !46, !nosanitize !45

619:                                              ; preds = %614
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

620:                                              ; preds = %614
  %621 = extractvalue { i32, i1 } %617, 0, !nosanitize !45
  store i32 %621, ptr %594, align 8, !tbaa !107
  %622 = load i64, ptr %592, align 8, !tbaa !57
  %623 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %622, i64 %597), !nosanitize !45
  %624 = extractvalue { i64, i1 } %623, 1, !nosanitize !45
  br i1 %624, label %625, label %626, !prof !46, !nosanitize !45

625:                                              ; preds = %620
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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

632:                                              ; preds = %629, %626, %585
  %633 = load ptr, ptr %0, align 8, !tbaa !20
  %634 = getelementptr inbounds nuw i8, ptr %633, i64 32
  %635 = load i32, ptr %634, align 8, !tbaa !107
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %774, label %516

637:                                              ; preds = %365
  store i32 0, ptr %11, align 4, !tbaa !76
  %638 = icmp eq i32 %1, 4
  br i1 %638, label %639, label %705

639:                                              ; preds = %637
  %640 = load i64, ptr %10, align 8, !tbaa !74
  %641 = icmp sgt i64 %640, -1
  br i1 %641, label %642, label %646

642:                                              ; preds = %639
  %643 = load ptr, ptr %8, align 8, !tbaa !34
  %644 = and i64 %640, 4294967295
  %645 = getelementptr inbounds nuw i8, ptr %643, i64 %644
  br label %646

646:                                              ; preds = %642, %639
  %647 = phi ptr [ %645, %642 ], [ null, %639 ]
  %648 = load i32, ptr %7, align 4, !tbaa !73
  %649 = zext i32 %648 to i64
  %650 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %649, i64 %640), !nosanitize !45
  %651 = extractvalue { i64, i1 } %650, 1, !nosanitize !45
  br i1 %651, label %563, label %652, !prof !46, !nosanitize !45

652:                                              ; preds = %646
  %653 = extractvalue { i64, i1 } %650, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %647, i64 noundef %653, i32 noundef 1) #10
  %654 = load i32, ptr %7, align 4, !tbaa !73
  %655 = zext i32 %654 to i64
  store i64 %655, ptr %10, align 8, !tbaa !74
  %656 = load ptr, ptr %0, align 8, !tbaa !20
  %657 = getelementptr inbounds nuw i8, ptr %656, i64 56
  %658 = load ptr, ptr %657, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %658) #10
  %659 = getelementptr inbounds nuw i8, ptr %658, i64 40
  %660 = load i64, ptr %659, align 8, !tbaa !57
  %661 = getelementptr inbounds nuw i8, ptr %656, i64 32
  %662 = load i32, ptr %661, align 8, !tbaa !107
  %663 = zext i32 %662 to i64
  %664 = tail call i64 @llvm.umin.i64(i64 %660, i64 %663)
  %665 = trunc nuw i64 %664 to i32
  %666 = icmp eq i64 %664, 0
  br i1 %666, label %699, label %667

667:                                              ; preds = %652
  %668 = getelementptr inbounds nuw i8, ptr %656, i64 24
  %669 = load ptr, ptr %668, align 8, !tbaa !106
  %670 = getelementptr inbounds nuw i8, ptr %658, i64 32
  %671 = load ptr, ptr %670, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %669, ptr align 1 %671, i64 %664, i1 false)
  %672 = load ptr, ptr %668, align 8, !tbaa !106
  %673 = getelementptr inbounds nuw i8, ptr %672, i64 %664
  store ptr %673, ptr %668, align 8, !tbaa !106
  %674 = load ptr, ptr %670, align 8, !tbaa !58
  %675 = getelementptr inbounds nuw i8, ptr %674, i64 %664
  store ptr %675, ptr %670, align 8, !tbaa !58
  %676 = getelementptr inbounds nuw i8, ptr %656, i64 40
  %677 = load i64, ptr %676, align 8, !tbaa !108
  %678 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %677, i64 %664), !nosanitize !45
  %679 = extractvalue { i64, i1 } %678, 1, !nosanitize !45
  br i1 %679, label %680, label %681, !prof !46, !nosanitize !45

680:                                              ; preds = %667
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

681:                                              ; preds = %667
  %682 = extractvalue { i64, i1 } %678, 0, !nosanitize !45
  store i64 %682, ptr %676, align 8, !tbaa !108
  %683 = load i32, ptr %661, align 8, !tbaa !107
  %684 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %683, i32 %665), !nosanitize !45
  %685 = extractvalue { i32, i1 } %684, 1, !nosanitize !45
  br i1 %685, label %686, label %687, !prof !46, !nosanitize !45

686:                                              ; preds = %681
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

687:                                              ; preds = %681
  %688 = extractvalue { i32, i1 } %684, 0, !nosanitize !45
  store i32 %688, ptr %661, align 8, !tbaa !107
  %689 = load i64, ptr %659, align 8, !tbaa !57
  %690 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %689, i64 %664), !nosanitize !45
  %691 = extractvalue { i64, i1 } %690, 1, !nosanitize !45
  br i1 %691, label %692, label %693, !prof !46, !nosanitize !45

692:                                              ; preds = %687
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

693:                                              ; preds = %687
  %694 = extractvalue { i64, i1 } %690, 0, !nosanitize !45
  store i64 %694, ptr %659, align 8, !tbaa !57
  %695 = icmp eq i64 %694, 0
  br i1 %695, label %696, label %699

696:                                              ; preds = %693
  %697 = getelementptr inbounds nuw i8, ptr %658, i64 16
  %698 = load ptr, ptr %697, align 8, !tbaa !40
  store ptr %698, ptr %670, align 8, !tbaa !58
  br label %699

699:                                              ; preds = %696, %693, %652
  %700 = load ptr, ptr %0, align 8, !tbaa !20
  %701 = getelementptr inbounds nuw i8, ptr %700, i64 32
  %702 = load i32, ptr %701, align 8, !tbaa !107
  %703 = icmp eq i32 %702, 0
  %704 = select i1 %703, i32 2, i32 3
  br label %774

705:                                              ; preds = %637
  %706 = load i32, ptr %23, align 4, !tbaa !139
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %773, label %708

708:                                              ; preds = %705
  %709 = load i64, ptr %10, align 8, !tbaa !74
  %710 = icmp sgt i64 %709, -1
  br i1 %710, label %711, label %715

711:                                              ; preds = %708
  %712 = load ptr, ptr %8, align 8, !tbaa !34
  %713 = and i64 %709, 4294967295
  %714 = getelementptr inbounds nuw i8, ptr %712, i64 %713
  br label %715

715:                                              ; preds = %711, %708
  %716 = phi ptr [ %714, %711 ], [ null, %708 ]
  %717 = load i32, ptr %7, align 4, !tbaa !73
  %718 = zext i32 %717 to i64
  %719 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %718, i64 %709), !nosanitize !45
  %720 = extractvalue { i64, i1 } %719, 1, !nosanitize !45
  br i1 %720, label %563, label %721, !prof !46, !nosanitize !45

721:                                              ; preds = %715
  %722 = extractvalue { i64, i1 } %719, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %716, i64 noundef %722, i32 noundef 0) #10
  %723 = load i32, ptr %7, align 4, !tbaa !73
  %724 = zext i32 %723 to i64
  store i64 %724, ptr %10, align 8, !tbaa !74
  %725 = load ptr, ptr %0, align 8, !tbaa !20
  %726 = getelementptr inbounds nuw i8, ptr %725, i64 56
  %727 = load ptr, ptr %726, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %727) #10
  %728 = getelementptr inbounds nuw i8, ptr %727, i64 40
  %729 = load i64, ptr %728, align 8, !tbaa !57
  %730 = getelementptr inbounds nuw i8, ptr %725, i64 32
  %731 = load i32, ptr %730, align 8, !tbaa !107
  %732 = zext i32 %731 to i64
  %733 = tail call i64 @llvm.umin.i64(i64 %729, i64 %732)
  %734 = trunc nuw i64 %733 to i32
  %735 = icmp eq i64 %733, 0
  br i1 %735, label %768, label %736

736:                                              ; preds = %721
  %737 = getelementptr inbounds nuw i8, ptr %725, i64 24
  %738 = load ptr, ptr %737, align 8, !tbaa !106
  %739 = getelementptr inbounds nuw i8, ptr %727, i64 32
  %740 = load ptr, ptr %739, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %738, ptr align 1 %740, i64 %733, i1 false)
  %741 = load ptr, ptr %737, align 8, !tbaa !106
  %742 = getelementptr inbounds nuw i8, ptr %741, i64 %733
  store ptr %742, ptr %737, align 8, !tbaa !106
  %743 = load ptr, ptr %739, align 8, !tbaa !58
  %744 = getelementptr inbounds nuw i8, ptr %743, i64 %733
  store ptr %744, ptr %739, align 8, !tbaa !58
  %745 = getelementptr inbounds nuw i8, ptr %725, i64 40
  %746 = load i64, ptr %745, align 8, !tbaa !108
  %747 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %746, i64 %733), !nosanitize !45
  %748 = extractvalue { i64, i1 } %747, 1, !nosanitize !45
  br i1 %748, label %749, label %750, !prof !46, !nosanitize !45

749:                                              ; preds = %736
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

750:                                              ; preds = %736
  %751 = extractvalue { i64, i1 } %747, 0, !nosanitize !45
  store i64 %751, ptr %745, align 8, !tbaa !108
  %752 = load i32, ptr %730, align 8, !tbaa !107
  %753 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %752, i32 %734), !nosanitize !45
  %754 = extractvalue { i32, i1 } %753, 1, !nosanitize !45
  br i1 %754, label %755, label %756, !prof !46, !nosanitize !45

755:                                              ; preds = %750
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

756:                                              ; preds = %750
  %757 = extractvalue { i32, i1 } %753, 0, !nosanitize !45
  store i32 %757, ptr %730, align 8, !tbaa !107
  %758 = load i64, ptr %728, align 8, !tbaa !57
  %759 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %758, i64 %733), !nosanitize !45
  %760 = extractvalue { i64, i1 } %759, 1, !nosanitize !45
  br i1 %760, label %761, label %762, !prof !46, !nosanitize !45

761:                                              ; preds = %756
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

762:                                              ; preds = %756
  %763 = extractvalue { i64, i1 } %759, 0, !nosanitize !45
  store i64 %763, ptr %728, align 8, !tbaa !57
  %764 = icmp eq i64 %763, 0
  br i1 %764, label %765, label %768

765:                                              ; preds = %762
  %766 = getelementptr inbounds nuw i8, ptr %727, i64 16
  %767 = load ptr, ptr %766, align 8, !tbaa !40
  store ptr %767, ptr %739, align 8, !tbaa !58
  br label %768

768:                                              ; preds = %765, %762, %721
  %769 = load ptr, ptr %0, align 8, !tbaa !20
  %770 = getelementptr inbounds nuw i8, ptr %769, i64 32
  %771 = load i32, ptr %770, align 8, !tbaa !107
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %774, label %773

773:                                              ; preds = %768, %705
  br label %774

774:                                              ; preds = %773, %768, %699, %632, %361
  %775 = phi i32 [ 1, %773 ], [ %704, %699 ], [ 0, %768 ], [ 0, %361 ], [ 0, %632 ]
  ret i32 %775
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

33:                                               ; preds = %782, %2
  %34 = load i32, ptr %3, align 4, !tbaa !75
  %35 = icmp ult i32 %34, 262
  br i1 %35, label %36, label %372

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
  br i1 %202, label %323, label %203

203:                                              ; preds = %195
  %204 = load ptr, ptr %7, align 8, !tbaa !34
  %205 = zext i32 %197 to i64
  %206 = getelementptr inbounds nuw i8, ptr %204, i64 %205
  %207 = zext i32 %196 to i64
  %208 = getelementptr inbounds nuw i8, ptr %206, i64 %207
  %209 = tail call i32 @llvm.umin.i32(i32 %201, i32 %198)
  %210 = icmp eq i32 %198, 0
  br i1 %210, label %239, label %211

211:                                              ; preds = %203
  %212 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %201, i32 %209), !nosanitize !45
  %213 = extractvalue { i32, i1 } %212, 0, !nosanitize !45
  store i32 %213, ptr %200, align 8, !tbaa !81
  %214 = load ptr, ptr %199, align 8, !tbaa !82
  %215 = zext i32 %209 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %208, ptr align 1 %214, i64 %215, i1 false)
  %216 = getelementptr inbounds nuw i8, ptr %199, i64 56
  %217 = load ptr, ptr %216, align 8, !tbaa !19
  %218 = getelementptr inbounds nuw i8, ptr %217, i64 48
  %219 = load i32, ptr %218, align 8, !tbaa !30
  switch i32 %219, label %228 [
    i32 1, label %220
    i32 2, label %224
  ]

220:                                              ; preds = %211
  %221 = getelementptr inbounds nuw i8, ptr %199, i64 96
  %222 = load i64, ptr %221, align 8, !tbaa !59
  %223 = tail call i64 @adler32(i64 noundef %222, ptr noundef %208, i32 noundef %209) #10
  store i64 %223, ptr %221, align 8, !tbaa !59
  br label %228

224:                                              ; preds = %211
  %225 = getelementptr inbounds nuw i8, ptr %199, i64 96
  %226 = load i64, ptr %225, align 8, !tbaa !59
  %227 = tail call i64 @crc32(i64 noundef %226, ptr noundef %208, i32 noundef %209) #10
  store i64 %227, ptr %225, align 8, !tbaa !59
  br label %228

228:                                              ; preds = %224, %220, %211
  %229 = load ptr, ptr %199, align 8, !tbaa !82
  %230 = getelementptr inbounds nuw i8, ptr %229, i64 %215
  store ptr %230, ptr %199, align 8, !tbaa !82
  %231 = getelementptr inbounds nuw i8, ptr %199, i64 16
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

239:                                              ; preds = %236, %203
  %240 = phi i32 [ %196, %203 ], [ %238, %236 ]
  %241 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %240, i32 %209), !nosanitize !45
  %242 = extractvalue { i32, i1 } %241, 1, !nosanitize !45
  br i1 %242, label %243, label %244, !prof !46, !nosanitize !45

243:                                              ; preds = %239
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

244:                                              ; preds = %239
  %245 = extractvalue { i32, i1 } %241, 0, !nosanitize !45
  store i32 %245, ptr %3, align 4, !tbaa !75
  %246 = load i32, ptr %10, align 4, !tbaa !76
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
  %254 = load i32, ptr %6, align 4, !tbaa !73
  %255 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %254, i32 %246), !nosanitize !45
  %256 = extractvalue { i32, i1 } %255, 0, !nosanitize !45
  %257 = extractvalue { i32, i1 } %255, 1, !nosanitize !45
  br i1 %257, label %258, label %259, !prof !46, !nosanitize !45

258:                                              ; preds = %253
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
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
  br i1 %322, label %323, label %39, !llvm.loop !92

323:                                              ; preds = %318, %316, %195
  %324 = phi i32 [ %245, %318 ], [ %245, %316 ], [ %196, %195 ]
  %325 = load i64, ptr %19, align 8, !tbaa !38
  %326 = load i64, ptr %5, align 8, !tbaa !61
  %327 = icmp ult i64 %325, %326
  br i1 %327, label %328, label %364

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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

338:                                              ; preds = %334
  %339 = extractvalue { i64, i1 } %335, 0, !nosanitize !45
  %340 = tail call i64 @llvm.umin.i64(i64 %339, i64 258)
  %341 = load ptr, ptr %7, align 8, !tbaa !34
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
  %352 = load ptr, ptr %7, align 8, !tbaa !34
  %353 = getelementptr inbounds nuw i8, ptr %352, i64 %325
  %354 = and i64 %351, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %353, i8 0, i64 %354, i1 false)
  %355 = load i64, ptr %19, align 8, !tbaa !38
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
  store i64 %362, ptr %19, align 8, !tbaa !38
  %363 = load i32, ptr %3, align 4, !tbaa !75
  br label %364

364:                                              ; preds = %361, %344, %323
  %365 = phi i32 [ %324, %323 ], [ %324, %344 ], [ %363, %361 ]
  %366 = icmp ult i32 %365, 262
  %367 = and i1 %20, %366
  br i1 %367, label %996, label %368

368:                                              ; preds = %364
  %369 = icmp eq i32 %365, 0
  br i1 %369, label %859, label %370

370:                                              ; preds = %368
  %371 = icmp ugt i32 %365, 2
  br i1 %371, label %372, label %582

372:                                              ; preds = %370, %33
  %373 = phi i32 [ %365, %370 ], [ %34, %33 ]
  %374 = load i32, ptr %6, align 4, !tbaa !73
  %375 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %374, i32 2), !nosanitize !45
  %376 = extractvalue { i32, i1 } %375, 1, !nosanitize !45
  br i1 %376, label %377, label %378, !prof !46, !nosanitize !45

377:                                              ; preds = %372
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

378:                                              ; preds = %372
  %379 = extractvalue { i32, i1 } %375, 0, !nosanitize !45
  %380 = load ptr, ptr %7, align 8, !tbaa !34
  %381 = load i32, ptr %15, align 8, !tbaa !80
  %382 = load i32, ptr %16, align 8, !tbaa !53
  %383 = shl i32 %381, %382
  %384 = zext i32 %379 to i64
  %385 = getelementptr inbounds nuw i8, ptr %380, i64 %384
  %386 = load i8, ptr %385, align 1, !tbaa !8
  %387 = zext i8 %386 to i32
  %388 = xor i32 %383, %387
  %389 = load i32, ptr %17, align 4, !tbaa !52
  %390 = and i32 %388, %389
  store i32 %390, ptr %15, align 8, !tbaa !80
  %391 = load ptr, ptr %12, align 8, !tbaa !37
  %392 = zext i32 %390 to i64
  %393 = getelementptr inbounds nuw [2 x i8], ptr %391, i64 %392
  %394 = load i16, ptr %393, align 2, !tbaa !62
  %395 = load ptr, ptr %13, align 8, !tbaa !35
  %396 = load i32, ptr %18, align 8, !tbaa !33
  %397 = and i32 %396, %374
  %398 = zext i32 %397 to i64
  %399 = getelementptr inbounds nuw [2 x i8], ptr %395, i64 %398
  store i16 %394, ptr %399, align 2, !tbaa !62
  %400 = zext i16 %394 to i32
  %401 = trunc i32 %374 to i16
  store i16 %401, ptr %393, align 2, !tbaa !62
  %402 = icmp eq i16 %394, 0
  br i1 %402, label %582, label %403

403:                                              ; preds = %378
  %404 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %374, i32 %400), !nosanitize !45
  %405 = extractvalue { i32, i1 } %404, 0, !nosanitize !45
  %406 = extractvalue { i32, i1 } %404, 1, !nosanitize !45
  br i1 %406, label %407, label %408, !prof !46, !nosanitize !45

407:                                              ; preds = %403
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

408:                                              ; preds = %403
  %409 = load i32, ptr %4, align 8, !tbaa !32
  %410 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %409, i32 262), !nosanitize !45
  %411 = extractvalue { i32, i1 } %410, 1, !nosanitize !45
  br i1 %411, label %412, label %413, !prof !46, !nosanitize !45

412:                                              ; preds = %408
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

413:                                              ; preds = %408
  %414 = extractvalue { i32, i1 } %410, 0, !nosanitize !45
  %415 = icmp ugt i32 %405, %414
  br i1 %415, label %582, label %416

416:                                              ; preds = %413
  %417 = zext i32 %374 to i64
  %418 = getelementptr inbounds nuw i8, ptr %380, i64 %417
  %419 = load i32, ptr %21, align 8, !tbaa !77
  %420 = tail call i32 @llvm.usub.sat.i32(i32 %374, i32 %414)
  %421 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %419, i32 -1)
  %422 = extractvalue { i32, i1 } %421, 1, !nosanitize !45
  br i1 %422, label %423, label %424, !prof !46, !nosanitize !45

423:                                              ; preds = %544, %454, %416
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

424:                                              ; preds = %416
  %425 = load i32, ptr %22, align 8, !tbaa !70
  %426 = load i32, ptr %23, align 4, !tbaa !72
  %427 = getelementptr inbounds nuw i8, ptr %418, i64 258
  %428 = extractvalue { i32, i1 } %421, 0, !nosanitize !45
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i8, ptr %418, i64 %429
  %431 = load i8, ptr %430, align 1, !tbaa !8
  %432 = sext i32 %419 to i64
  %433 = getelementptr inbounds i8, ptr %418, i64 %432
  %434 = load i8, ptr %433, align 1, !tbaa !8
  %435 = load i32, ptr %24, align 4, !tbaa !68
  %436 = icmp ult i32 %419, %435
  %437 = lshr i32 %426, 2
  %438 = select i1 %436, i32 %426, i32 %437
  %439 = tail call i32 @llvm.umin.i32(i32 %425, i32 %373)
  %440 = getelementptr inbounds nuw i8, ptr %418, i64 1
  %441 = ptrtoint ptr %427 to i64
  br label %442

442:                                              ; preds = %576, %424
  %443 = phi i32 [ %419, %424 ], [ %563, %576 ]
  %444 = phi i32 [ %438, %424 ], [ %577, %576 ]
  %445 = phi i32 [ %400, %424 ], [ %570, %576 ]
  %446 = phi i8 [ %431, %424 ], [ %564, %576 ]
  %447 = phi i8 [ %434, %424 ], [ %565, %576 ]
  %448 = zext nneg i32 %445 to i64
  %449 = getelementptr inbounds nuw i8, ptr %380, i64 %448
  %450 = sext i32 %443 to i64
  %451 = getelementptr inbounds i8, ptr %449, i64 %450
  %452 = load i8, ptr %451, align 1, !tbaa !8
  %453 = icmp eq i8 %452, %447
  br i1 %453, label %454, label %562

454:                                              ; preds = %442
  %455 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %443, i32 -1)
  %456 = extractvalue { i32, i1 } %455, 1, !nosanitize !45
  br i1 %456, label %423, label %457, !prof !46, !nosanitize !45

457:                                              ; preds = %454
  %458 = extractvalue { i32, i1 } %455, 0, !nosanitize !45
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i8, ptr %449, i64 %459
  %461 = load i8, ptr %460, align 1, !tbaa !8
  %462 = icmp eq i8 %461, %446
  br i1 %462, label %463, label %562

463:                                              ; preds = %457
  %464 = load i8, ptr %449, align 1, !tbaa !8
  %465 = load i8, ptr %418, align 1, !tbaa !8
  %466 = icmp eq i8 %464, %465
  br i1 %466, label %467, label %562

467:                                              ; preds = %463
  %468 = getelementptr inbounds nuw i8, ptr %449, i64 1
  %469 = load i8, ptr %468, align 1, !tbaa !8
  %470 = load i8, ptr %440, align 1, !tbaa !8
  %471 = icmp eq i8 %469, %470
  br i1 %471, label %472, label %562

472:                                              ; preds = %467
  %473 = getelementptr inbounds nuw i8, ptr %449, i64 2
  br label %474

474:                                              ; preds = %519, %472
  %475 = phi ptr [ %473, %472 ], [ %523, %519 ]
  %476 = phi i64 [ 2, %472 ], [ %520, %519 ]
  %477 = getelementptr inbounds nuw i8, ptr %418, i64 %476
  %478 = getelementptr inbounds nuw i8, ptr %477, i64 1
  %479 = load i8, ptr %478, align 1, !tbaa !8
  %480 = getelementptr inbounds nuw i8, ptr %475, i64 1
  %481 = load i8, ptr %480, align 1, !tbaa !8
  %482 = icmp eq i8 %479, %481
  br i1 %482, label %483, label %528

483:                                              ; preds = %474
  %484 = getelementptr inbounds nuw i8, ptr %477, i64 2
  %485 = load i8, ptr %484, align 1, !tbaa !8
  %486 = getelementptr inbounds nuw i8, ptr %475, i64 2
  %487 = load i8, ptr %486, align 1, !tbaa !8
  %488 = icmp eq i8 %485, %487
  br i1 %488, label %489, label %530

489:                                              ; preds = %483
  %490 = getelementptr inbounds nuw i8, ptr %477, i64 3
  %491 = load i8, ptr %490, align 1, !tbaa !8
  %492 = getelementptr inbounds nuw i8, ptr %475, i64 3
  %493 = load i8, ptr %492, align 1, !tbaa !8
  %494 = icmp eq i8 %491, %493
  br i1 %494, label %495, label %532

495:                                              ; preds = %489
  %496 = getelementptr inbounds nuw i8, ptr %477, i64 4
  %497 = load i8, ptr %496, align 1, !tbaa !8
  %498 = getelementptr inbounds nuw i8, ptr %475, i64 4
  %499 = load i8, ptr %498, align 1, !tbaa !8
  %500 = icmp eq i8 %497, %499
  br i1 %500, label %501, label %534

501:                                              ; preds = %495
  %502 = getelementptr inbounds nuw i8, ptr %477, i64 5
  %503 = load i8, ptr %502, align 1, !tbaa !8
  %504 = getelementptr inbounds nuw i8, ptr %475, i64 5
  %505 = load i8, ptr %504, align 1, !tbaa !8
  %506 = icmp eq i8 %503, %505
  br i1 %506, label %507, label %536

507:                                              ; preds = %501
  %508 = getelementptr inbounds nuw i8, ptr %477, i64 6
  %509 = load i8, ptr %508, align 1, !tbaa !8
  %510 = getelementptr inbounds nuw i8, ptr %475, i64 6
  %511 = load i8, ptr %510, align 1, !tbaa !8
  %512 = icmp eq i8 %509, %511
  br i1 %512, label %513, label %538

513:                                              ; preds = %507
  %514 = getelementptr inbounds nuw i8, ptr %477, i64 7
  %515 = load i8, ptr %514, align 1, !tbaa !8
  %516 = getelementptr inbounds nuw i8, ptr %475, i64 7
  %517 = load i8, ptr %516, align 1, !tbaa !8
  %518 = icmp eq i8 %515, %517
  br i1 %518, label %519, label %540

519:                                              ; preds = %513
  %520 = add nuw nsw i64 %476, 8
  %521 = getelementptr inbounds nuw i8, ptr %418, i64 %520
  %522 = load i8, ptr %521, align 1, !tbaa !8
  %523 = getelementptr inbounds nuw i8, ptr %475, i64 8
  %524 = load i8, ptr %523, align 1, !tbaa !8
  %525 = icmp eq i8 %522, %524
  %526 = icmp samesign ult i64 %476, 250
  %527 = select i1 %525, i1 %526, i1 false
  br i1 %527, label %474, label %542, !llvm.loop !152

528:                                              ; preds = %474
  %529 = getelementptr inbounds nuw i8, ptr %477, i64 1
  br label %544

530:                                              ; preds = %483
  %531 = getelementptr inbounds nuw i8, ptr %477, i64 2
  br label %544

532:                                              ; preds = %489
  %533 = getelementptr inbounds nuw i8, ptr %477, i64 3
  br label %544

534:                                              ; preds = %495
  %535 = getelementptr inbounds nuw i8, ptr %477, i64 4
  br label %544

536:                                              ; preds = %501
  %537 = getelementptr inbounds nuw i8, ptr %477, i64 5
  br label %544

538:                                              ; preds = %507
  %539 = getelementptr inbounds nuw i8, ptr %477, i64 6
  br label %544

540:                                              ; preds = %513
  %541 = getelementptr inbounds nuw i8, ptr %477, i64 7
  br label %544

542:                                              ; preds = %519
  %543 = getelementptr inbounds nuw i8, ptr %418, i64 %520
  br label %544

544:                                              ; preds = %542, %540, %538, %536, %534, %532, %530, %528
  %545 = phi ptr [ %531, %530 ], [ %533, %532 ], [ %529, %528 ], [ %541, %540 ], [ %539, %538 ], [ %537, %536 ], [ %535, %534 ], [ %543, %542 ]
  %546 = ptrtoint ptr %545 to i64
  %547 = sub i64 %441, %546
  %548 = trunc i64 %547 to i32
  %549 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %548), !nosanitize !45
  %550 = extractvalue { i32, i1 } %549, 0, !nosanitize !45
  %551 = extractvalue { i32, i1 } %549, 1, !nosanitize !45
  br i1 %551, label %423, label %552, !prof !46, !nosanitize !45

552:                                              ; preds = %544
  %553 = icmp sgt i32 %550, %443
  br i1 %553, label %554, label %562

554:                                              ; preds = %552
  store i32 %445, ptr %8, align 8, !tbaa !83
  %555 = icmp slt i32 %550, %439
  br i1 %555, label %556, label %579

556:                                              ; preds = %554
  %557 = sext i32 %550 to i64
  %558 = getelementptr i8, ptr %418, i64 %557
  %559 = getelementptr i8, ptr %558, i64 -1
  %560 = load i8, ptr %559, align 1, !tbaa !8
  %561 = load i8, ptr %558, align 1, !tbaa !8
  br label %562

562:                                              ; preds = %556, %552, %467, %463, %457, %442
  %563 = phi i32 [ %443, %442 ], [ %443, %457 ], [ %443, %463 ], [ %443, %467 ], [ %550, %556 ], [ %443, %552 ]
  %564 = phi i8 [ %446, %442 ], [ %446, %457 ], [ %446, %463 ], [ %446, %467 ], [ %560, %556 ], [ %446, %552 ]
  %565 = phi i8 [ %447, %442 ], [ %447, %457 ], [ %447, %463 ], [ %447, %467 ], [ %561, %556 ], [ %447, %552 ]
  %566 = and i32 %445, %396
  %567 = zext nneg i32 %566 to i64
  %568 = getelementptr inbounds nuw [2 x i8], ptr %395, i64 %567
  %569 = load i16, ptr %568, align 2, !tbaa !62
  %570 = zext i16 %569 to i32
  %571 = icmp ult i32 %420, %570
  br i1 %571, label %572, label %579

572:                                              ; preds = %562
  %573 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %444, i32 1), !nosanitize !45
  %574 = extractvalue { i32, i1 } %573, 1, !nosanitize !45
  br i1 %574, label %575, label %576, !prof !46, !nosanitize !45

575:                                              ; preds = %572
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

576:                                              ; preds = %572
  %577 = extractvalue { i32, i1 } %573, 0, !nosanitize !45
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %579, label %442, !llvm.loop !153

579:                                              ; preds = %576, %562, %554
  %580 = phi i32 [ %563, %576 ], [ %563, %562 ], [ %550, %554 ]
  %581 = tail call i32 @llvm.umin.i32(i32 %580, i32 %373)
  store i32 %581, ptr %25, align 8, !tbaa !78
  br label %584

582:                                              ; preds = %413, %378, %370
  %583 = load i32, ptr %25, align 8, !tbaa !78
  br label %584

584:                                              ; preds = %582, %579
  %585 = phi i32 [ %583, %582 ], [ %581, %579 ]
  %586 = icmp ugt i32 %585, 2
  br i1 %586, label %587, label %730

587:                                              ; preds = %584
  %588 = trunc i32 %585 to i8
  %589 = add i8 %588, -3
  %590 = load i32, ptr %6, align 4, !tbaa !73
  %591 = load i32, ptr %8, align 8, !tbaa !83
  %592 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %590, i32 %591), !nosanitize !45
  %593 = extractvalue { i32, i1 } %592, 1, !nosanitize !45
  br i1 %593, label %594, label %595, !prof !46, !nosanitize !45

594:                                              ; preds = %587
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

595:                                              ; preds = %587
  %596 = extractvalue { i32, i1 } %592, 0, !nosanitize !45
  %597 = trunc i32 %596 to i16
  %598 = load i32, ptr %27, align 4, !tbaa !139
  %599 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %598, i32 1), !nosanitize !45
  %600 = extractvalue { i32, i1 } %599, 1, !nosanitize !45
  br i1 %600, label %601, label %602, !prof !46, !nosanitize !45

601:                                              ; preds = %595
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

602:                                              ; preds = %595
  %603 = extractvalue { i32, i1 } %599, 0, !nosanitize !45
  %604 = load ptr, ptr %26, align 8, !tbaa !44
  %605 = trunc i32 %596 to i8
  store i32 %603, ptr %27, align 4, !tbaa !139
  %606 = zext i32 %598 to i64
  %607 = getelementptr inbounds nuw i8, ptr %604, i64 %606
  store i8 %605, ptr %607, align 1, !tbaa !8
  %608 = load i32, ptr %27, align 4, !tbaa !139
  %609 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %608, i32 1), !nosanitize !45
  %610 = extractvalue { i32, i1 } %609, 1, !nosanitize !45
  br i1 %610, label %611, label %612, !prof !46, !nosanitize !45

611:                                              ; preds = %602
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

612:                                              ; preds = %602
  %613 = extractvalue { i32, i1 } %609, 0, !nosanitize !45
  %614 = load ptr, ptr %26, align 8, !tbaa !44
  %615 = lshr i32 %596, 8
  %616 = trunc i32 %615 to i8
  store i32 %613, ptr %27, align 4, !tbaa !139
  %617 = zext i32 %608 to i64
  %618 = getelementptr inbounds nuw i8, ptr %614, i64 %617
  store i8 %616, ptr %618, align 1, !tbaa !8
  %619 = load i32, ptr %27, align 4, !tbaa !139
  %620 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %619, i32 1), !nosanitize !45
  %621 = extractvalue { i32, i1 } %620, 1, !nosanitize !45
  br i1 %621, label %622, label %623, !prof !46, !nosanitize !45

622:                                              ; preds = %612
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

623:                                              ; preds = %612
  %624 = extractvalue { i32, i1 } %620, 0, !nosanitize !45
  %625 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %624, ptr %27, align 4, !tbaa !139
  %626 = zext i32 %619 to i64
  %627 = getelementptr inbounds nuw i8, ptr %625, i64 %626
  store i8 %589, ptr %627, align 1, !tbaa !8
  %628 = add i16 %597, -1
  %629 = zext i8 %589 to i64
  %630 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %629
  %631 = load i8, ptr %630, align 1, !tbaa !8
  %632 = zext i8 %631 to i64
  %633 = getelementptr [4 x i8], ptr %30, i64 %632
  %634 = load i16, ptr %633, align 4, !tbaa !8
  %635 = add i16 %634, 1
  store i16 %635, ptr %633, align 4, !tbaa !8
  %636 = icmp ult i16 %628, 256
  br i1 %636, label %637, label %640

637:                                              ; preds = %623
  %638 = zext nneg i16 %628 to i64
  %639 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %638
  br label %645

640:                                              ; preds = %623
  %641 = lshr i16 %628, 7
  %642 = zext nneg i16 %641 to i64
  %643 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %642
  %644 = getelementptr inbounds nuw i8, ptr %643, i64 256
  br label %645

645:                                              ; preds = %640, %637
  %646 = phi ptr [ %639, %637 ], [ %644, %640 ]
  %647 = load i8, ptr %646, align 1, !tbaa !8
  %648 = zext i8 %647 to i64
  %649 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %648
  %650 = load i16, ptr %649, align 4, !tbaa !8
  %651 = add i16 %650, 1
  store i16 %651, ptr %649, align 4, !tbaa !8
  %652 = load i32, ptr %27, align 4, !tbaa !139
  %653 = load i32, ptr %29, align 8, !tbaa !47
  %654 = icmp eq i32 %652, %653
  %655 = load i32, ptr %25, align 8, !tbaa !78
  %656 = load i32, ptr %3, align 4, !tbaa !75
  %657 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %656, i32 %655), !nosanitize !45
  %658 = extractvalue { i32, i1 } %657, 1, !nosanitize !45
  br i1 %658, label %659, label %660, !prof !46, !nosanitize !45

659:                                              ; preds = %645
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

660:                                              ; preds = %645
  %661 = extractvalue { i32, i1 } %657, 0, !nosanitize !45
  store i32 %661, ptr %3, align 4, !tbaa !75
  %662 = load i32, ptr %32, align 8, !tbaa !66
  %663 = icmp ule i32 %655, %662
  %664 = icmp ugt i32 %661, 2
  %665 = select i1 %663, i1 %664, i1 false
  br i1 %665, label %666, label %715

666:                                              ; preds = %660
  %667 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %655, i32 1), !nosanitize !45
  %668 = extractvalue { i32, i1 } %667, 1, !nosanitize !45
  br i1 %668, label %669, label %670, !prof !46, !nosanitize !45

669:                                              ; preds = %666
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

670:                                              ; preds = %666
  %671 = extractvalue { i32, i1 } %667, 0, !nosanitize !45
  store i32 %671, ptr %25, align 8, !tbaa !78
  %672 = load i32, ptr %6, align 4, !tbaa !73
  br label %673

673:                                              ; preds = %710, %670
  %674 = phi i32 [ %711, %710 ], [ %671, %670 ]
  %675 = phi i32 [ %680, %710 ], [ %672, %670 ]
  %676 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %675, i32 1), !nosanitize !45
  %677 = extractvalue { i32, i1 } %676, 1, !nosanitize !45
  br i1 %677, label %678, label %679, !prof !46, !nosanitize !45

678:                                              ; preds = %673
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

679:                                              ; preds = %673
  %680 = extractvalue { i32, i1 } %676, 0, !nosanitize !45
  store i32 %680, ptr %6, align 4, !tbaa !73
  %681 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %680, i32 2), !nosanitize !45
  %682 = extractvalue { i32, i1 } %681, 1, !nosanitize !45
  br i1 %682, label %683, label %684, !prof !46, !nosanitize !45

683:                                              ; preds = %679
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

684:                                              ; preds = %679
  %685 = extractvalue { i32, i1 } %681, 0, !nosanitize !45
  %686 = load ptr, ptr %7, align 8, !tbaa !34
  %687 = load i32, ptr %15, align 8, !tbaa !80
  %688 = load i32, ptr %16, align 8, !tbaa !53
  %689 = shl i32 %687, %688
  %690 = zext i32 %685 to i64
  %691 = getelementptr inbounds nuw i8, ptr %686, i64 %690
  %692 = load i8, ptr %691, align 1, !tbaa !8
  %693 = zext i8 %692 to i32
  %694 = xor i32 %689, %693
  %695 = load i32, ptr %17, align 4, !tbaa !52
  %696 = and i32 %694, %695
  store i32 %696, ptr %15, align 8, !tbaa !80
  %697 = load ptr, ptr %12, align 8, !tbaa !37
  %698 = zext i32 %696 to i64
  %699 = getelementptr inbounds nuw [2 x i8], ptr %697, i64 %698
  %700 = load i16, ptr %699, align 2, !tbaa !62
  %701 = load ptr, ptr %13, align 8, !tbaa !35
  %702 = load i32, ptr %18, align 8, !tbaa !33
  %703 = and i32 %702, %680
  %704 = zext i32 %703 to i64
  %705 = getelementptr inbounds nuw [2 x i8], ptr %701, i64 %704
  store i16 %700, ptr %705, align 2, !tbaa !62
  %706 = trunc i32 %680 to i16
  store i16 %706, ptr %699, align 2, !tbaa !62
  %707 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %674, i32 1), !nosanitize !45
  %708 = extractvalue { i32, i1 } %707, 1, !nosanitize !45
  br i1 %708, label %709, label %710, !prof !46, !nosanitize !45

709:                                              ; preds = %684
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

710:                                              ; preds = %684
  %711 = extractvalue { i32, i1 } %707, 0, !nosanitize !45
  store i32 %711, ptr %25, align 8, !tbaa !78
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %713, label %673, !llvm.loop !154

713:                                              ; preds = %710
  %714 = add nuw i32 %680, 1
  store i32 %714, ptr %6, align 4, !tbaa !73
  br i1 %654, label %794, label %782

715:                                              ; preds = %660
  %716 = load i32, ptr %6, align 4, !tbaa !73
  %717 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %716, i32 %655), !nosanitize !45
  %718 = extractvalue { i32, i1 } %717, 1, !nosanitize !45
  br i1 %718, label %719, label %720, !prof !46, !nosanitize !45

719:                                              ; preds = %715
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

720:                                              ; preds = %715
  %721 = extractvalue { i32, i1 } %717, 0, !nosanitize !45
  store i32 %721, ptr %6, align 4, !tbaa !73
  store i32 0, ptr %25, align 8, !tbaa !78
  %722 = load ptr, ptr %7, align 8, !tbaa !34
  %723 = zext i32 %721 to i64
  %724 = getelementptr inbounds nuw i8, ptr %722, i64 %723
  %725 = load i8, ptr %724, align 1, !tbaa !8
  %726 = zext i8 %725 to i32
  store i32 %726, ptr %15, align 8, !tbaa !80
  %727 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %721, i32 1), !nosanitize !45
  %728 = extractvalue { i32, i1 } %727, 1, !nosanitize !45
  br i1 %728, label %729, label %783, !prof !46, !nosanitize !45

729:                                              ; preds = %720
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

730:                                              ; preds = %584
  %731 = load ptr, ptr %7, align 8, !tbaa !34
  %732 = load i32, ptr %6, align 4, !tbaa !73
  %733 = zext i32 %732 to i64
  %734 = getelementptr inbounds nuw i8, ptr %731, i64 %733
  %735 = load i8, ptr %734, align 1, !tbaa !8
  %736 = load i32, ptr %27, align 4, !tbaa !139
  %737 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %736, i32 1), !nosanitize !45
  %738 = extractvalue { i32, i1 } %737, 1, !nosanitize !45
  br i1 %738, label %739, label %740, !prof !46, !nosanitize !45

739:                                              ; preds = %730
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

740:                                              ; preds = %730
  %741 = extractvalue { i32, i1 } %737, 0, !nosanitize !45
  %742 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %741, ptr %27, align 4, !tbaa !139
  %743 = zext i32 %736 to i64
  %744 = getelementptr inbounds nuw i8, ptr %742, i64 %743
  store i8 0, ptr %744, align 1, !tbaa !8
  %745 = load i32, ptr %27, align 4, !tbaa !139
  %746 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %745, i32 1), !nosanitize !45
  %747 = extractvalue { i32, i1 } %746, 1, !nosanitize !45
  br i1 %747, label %748, label %749, !prof !46, !nosanitize !45

748:                                              ; preds = %740
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

749:                                              ; preds = %740
  %750 = extractvalue { i32, i1 } %746, 0, !nosanitize !45
  %751 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %750, ptr %27, align 4, !tbaa !139
  %752 = zext i32 %745 to i64
  %753 = getelementptr inbounds nuw i8, ptr %751, i64 %752
  store i8 0, ptr %753, align 1, !tbaa !8
  %754 = load i32, ptr %27, align 4, !tbaa !139
  %755 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %754, i32 1), !nosanitize !45
  %756 = extractvalue { i32, i1 } %755, 1, !nosanitize !45
  br i1 %756, label %757, label %758, !prof !46, !nosanitize !45

757:                                              ; preds = %749
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

758:                                              ; preds = %749
  %759 = extractvalue { i32, i1 } %755, 0, !nosanitize !45
  %760 = load ptr, ptr %26, align 8, !tbaa !44
  store i32 %759, ptr %27, align 4, !tbaa !139
  %761 = zext i32 %754 to i64
  %762 = getelementptr inbounds nuw i8, ptr %760, i64 %761
  store i8 %735, ptr %762, align 1, !tbaa !8
  %763 = zext i8 %735 to i64
  %764 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %763
  %765 = load i16, ptr %764, align 4, !tbaa !8
  %766 = add i16 %765, 1
  store i16 %766, ptr %764, align 4, !tbaa !8
  %767 = load i32, ptr %27, align 4, !tbaa !139
  %768 = load i32, ptr %29, align 8, !tbaa !47
  %769 = icmp eq i32 %767, %768
  %770 = load i32, ptr %3, align 4, !tbaa !75
  %771 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %770, i32 1), !nosanitize !45
  %772 = extractvalue { i32, i1 } %771, 1, !nosanitize !45
  br i1 %772, label %773, label %774, !prof !46, !nosanitize !45

773:                                              ; preds = %938, %870, %802, %758
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

774:                                              ; preds = %758
  %775 = extractvalue { i32, i1 } %771, 0, !nosanitize !45
  store i32 %775, ptr %3, align 4, !tbaa !75
  %776 = load i32, ptr %6, align 4, !tbaa !73
  %777 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %776, i32 1), !nosanitize !45
  %778 = extractvalue { i32, i1 } %777, 1, !nosanitize !45
  br i1 %778, label %779, label %780, !prof !46, !nosanitize !45

779:                                              ; preds = %774
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

780:                                              ; preds = %774
  %781 = extractvalue { i32, i1 } %777, 0, !nosanitize !45
  store i32 %781, ptr %6, align 4, !tbaa !73
  br i1 %769, label %794, label %782

782:                                              ; preds = %854, %783, %780, %713
  br label %33

783:                                              ; preds = %720
  %784 = extractvalue { i32, i1 } %727, 0, !nosanitize !45
  %785 = load i32, ptr %16, align 8, !tbaa !53
  %786 = shl i32 %726, %785
  %787 = zext i32 %784 to i64
  %788 = getelementptr inbounds nuw i8, ptr %722, i64 %787
  %789 = load i8, ptr %788, align 1, !tbaa !8
  %790 = zext i8 %789 to i32
  %791 = xor i32 %786, %790
  %792 = load i32, ptr %17, align 4, !tbaa !52
  %793 = and i32 %791, %792
  store i32 %793, ptr %15, align 8, !tbaa !80
  br i1 %654, label %794, label %782

794:                                              ; preds = %783, %780, %713
  %795 = phi i32 [ %781, %780 ], [ %714, %713 ], [ %721, %783 ]
  %796 = load i64, ptr %9, align 8, !tbaa !74
  %797 = icmp sgt i64 %796, -1
  br i1 %797, label %798, label %802

798:                                              ; preds = %794
  %799 = load ptr, ptr %7, align 8, !tbaa !34
  %800 = and i64 %796, 4294967295
  %801 = getelementptr inbounds nuw i8, ptr %799, i64 %800
  br label %802

802:                                              ; preds = %798, %794
  %803 = phi ptr [ %801, %798 ], [ null, %794 ]
  %804 = zext i32 %795 to i64
  %805 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %804, i64 %796), !nosanitize !45
  %806 = extractvalue { i64, i1 } %805, 1, !nosanitize !45
  br i1 %806, label %773, label %807, !prof !46, !nosanitize !45

807:                                              ; preds = %802
  %808 = extractvalue { i64, i1 } %805, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %803, i64 noundef %808, i32 noundef 0) #10
  %809 = load i32, ptr %6, align 4, !tbaa !73
  %810 = zext i32 %809 to i64
  store i64 %810, ptr %9, align 8, !tbaa !74
  %811 = load ptr, ptr %0, align 8, !tbaa !20
  %812 = getelementptr inbounds nuw i8, ptr %811, i64 56
  %813 = load ptr, ptr %812, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %813) #10
  %814 = getelementptr inbounds nuw i8, ptr %813, i64 40
  %815 = load i64, ptr %814, align 8, !tbaa !57
  %816 = getelementptr inbounds nuw i8, ptr %811, i64 32
  %817 = load i32, ptr %816, align 8, !tbaa !107
  %818 = zext i32 %817 to i64
  %819 = tail call i64 @llvm.umin.i64(i64 %815, i64 %818)
  %820 = trunc nuw i64 %819 to i32
  %821 = icmp eq i64 %819, 0
  br i1 %821, label %854, label %822

822:                                              ; preds = %807
  %823 = getelementptr inbounds nuw i8, ptr %811, i64 24
  %824 = load ptr, ptr %823, align 8, !tbaa !106
  %825 = getelementptr inbounds nuw i8, ptr %813, i64 32
  %826 = load ptr, ptr %825, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %824, ptr align 1 %826, i64 %819, i1 false)
  %827 = load ptr, ptr %823, align 8, !tbaa !106
  %828 = getelementptr inbounds nuw i8, ptr %827, i64 %819
  store ptr %828, ptr %823, align 8, !tbaa !106
  %829 = load ptr, ptr %825, align 8, !tbaa !58
  %830 = getelementptr inbounds nuw i8, ptr %829, i64 %819
  store ptr %830, ptr %825, align 8, !tbaa !58
  %831 = getelementptr inbounds nuw i8, ptr %811, i64 40
  %832 = load i64, ptr %831, align 8, !tbaa !108
  %833 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %832, i64 %819), !nosanitize !45
  %834 = extractvalue { i64, i1 } %833, 1, !nosanitize !45
  br i1 %834, label %835, label %836, !prof !46, !nosanitize !45

835:                                              ; preds = %822
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

836:                                              ; preds = %822
  %837 = extractvalue { i64, i1 } %833, 0, !nosanitize !45
  store i64 %837, ptr %831, align 8, !tbaa !108
  %838 = load i32, ptr %816, align 8, !tbaa !107
  %839 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %838, i32 %820), !nosanitize !45
  %840 = extractvalue { i32, i1 } %839, 1, !nosanitize !45
  br i1 %840, label %841, label %842, !prof !46, !nosanitize !45

841:                                              ; preds = %836
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

842:                                              ; preds = %836
  %843 = extractvalue { i32, i1 } %839, 0, !nosanitize !45
  store i32 %843, ptr %816, align 8, !tbaa !107
  %844 = load i64, ptr %814, align 8, !tbaa !57
  %845 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %844, i64 %819), !nosanitize !45
  %846 = extractvalue { i64, i1 } %845, 1, !nosanitize !45
  br i1 %846, label %847, label %848, !prof !46, !nosanitize !45

847:                                              ; preds = %842
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

848:                                              ; preds = %842
  %849 = extractvalue { i64, i1 } %845, 0, !nosanitize !45
  store i64 %849, ptr %814, align 8, !tbaa !57
  %850 = icmp eq i64 %849, 0
  br i1 %850, label %851, label %854

851:                                              ; preds = %848
  %852 = getelementptr inbounds nuw i8, ptr %813, i64 16
  %853 = load ptr, ptr %852, align 8, !tbaa !40
  store ptr %853, ptr %825, align 8, !tbaa !58
  br label %854

854:                                              ; preds = %851, %848, %807
  %855 = load ptr, ptr %0, align 8, !tbaa !20
  %856 = getelementptr inbounds nuw i8, ptr %855, i64 32
  %857 = load i32, ptr %856, align 8, !tbaa !107
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %996, label %782

859:                                              ; preds = %368
  %860 = load i32, ptr %6, align 4, !tbaa !73
  %861 = tail call i32 @llvm.umin.i32(i32 %860, i32 2)
  store i32 %861, ptr %10, align 4, !tbaa !76
  %862 = icmp eq i32 %1, 4
  br i1 %862, label %863, label %928

863:                                              ; preds = %859
  %864 = load i64, ptr %9, align 8, !tbaa !74
  %865 = icmp sgt i64 %864, -1
  br i1 %865, label %866, label %870

866:                                              ; preds = %863
  %867 = load ptr, ptr %7, align 8, !tbaa !34
  %868 = and i64 %864, 4294967295
  %869 = getelementptr inbounds nuw i8, ptr %867, i64 %868
  br label %870

870:                                              ; preds = %866, %863
  %871 = phi ptr [ %869, %866 ], [ null, %863 ]
  %872 = zext i32 %860 to i64
  %873 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %872, i64 %864), !nosanitize !45
  %874 = extractvalue { i64, i1 } %873, 1, !nosanitize !45
  br i1 %874, label %773, label %875, !prof !46, !nosanitize !45

875:                                              ; preds = %870
  %876 = extractvalue { i64, i1 } %873, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %871, i64 noundef %876, i32 noundef 1) #10
  %877 = load i32, ptr %6, align 4, !tbaa !73
  %878 = zext i32 %877 to i64
  store i64 %878, ptr %9, align 8, !tbaa !74
  %879 = load ptr, ptr %0, align 8, !tbaa !20
  %880 = getelementptr inbounds nuw i8, ptr %879, i64 56
  %881 = load ptr, ptr %880, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %881) #10
  %882 = getelementptr inbounds nuw i8, ptr %881, i64 40
  %883 = load i64, ptr %882, align 8, !tbaa !57
  %884 = getelementptr inbounds nuw i8, ptr %879, i64 32
  %885 = load i32, ptr %884, align 8, !tbaa !107
  %886 = zext i32 %885 to i64
  %887 = tail call i64 @llvm.umin.i64(i64 %883, i64 %886)
  %888 = trunc nuw i64 %887 to i32
  %889 = icmp eq i64 %887, 0
  br i1 %889, label %922, label %890

890:                                              ; preds = %875
  %891 = getelementptr inbounds nuw i8, ptr %879, i64 24
  %892 = load ptr, ptr %891, align 8, !tbaa !106
  %893 = getelementptr inbounds nuw i8, ptr %881, i64 32
  %894 = load ptr, ptr %893, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %892, ptr align 1 %894, i64 %887, i1 false)
  %895 = load ptr, ptr %891, align 8, !tbaa !106
  %896 = getelementptr inbounds nuw i8, ptr %895, i64 %887
  store ptr %896, ptr %891, align 8, !tbaa !106
  %897 = load ptr, ptr %893, align 8, !tbaa !58
  %898 = getelementptr inbounds nuw i8, ptr %897, i64 %887
  store ptr %898, ptr %893, align 8, !tbaa !58
  %899 = getelementptr inbounds nuw i8, ptr %879, i64 40
  %900 = load i64, ptr %899, align 8, !tbaa !108
  %901 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %900, i64 %887), !nosanitize !45
  %902 = extractvalue { i64, i1 } %901, 1, !nosanitize !45
  br i1 %902, label %903, label %904, !prof !46, !nosanitize !45

903:                                              ; preds = %890
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

904:                                              ; preds = %890
  %905 = extractvalue { i64, i1 } %901, 0, !nosanitize !45
  store i64 %905, ptr %899, align 8, !tbaa !108
  %906 = load i32, ptr %884, align 8, !tbaa !107
  %907 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %906, i32 %888), !nosanitize !45
  %908 = extractvalue { i32, i1 } %907, 1, !nosanitize !45
  br i1 %908, label %909, label %910, !prof !46, !nosanitize !45

909:                                              ; preds = %904
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

910:                                              ; preds = %904
  %911 = extractvalue { i32, i1 } %907, 0, !nosanitize !45
  store i32 %911, ptr %884, align 8, !tbaa !107
  %912 = load i64, ptr %882, align 8, !tbaa !57
  %913 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %912, i64 %887), !nosanitize !45
  %914 = extractvalue { i64, i1 } %913, 1, !nosanitize !45
  br i1 %914, label %915, label %916, !prof !46, !nosanitize !45

915:                                              ; preds = %910
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

916:                                              ; preds = %910
  %917 = extractvalue { i64, i1 } %913, 0, !nosanitize !45
  store i64 %917, ptr %882, align 8, !tbaa !57
  %918 = icmp eq i64 %917, 0
  br i1 %918, label %919, label %922

919:                                              ; preds = %916
  %920 = getelementptr inbounds nuw i8, ptr %881, i64 16
  %921 = load ptr, ptr %920, align 8, !tbaa !40
  store ptr %921, ptr %893, align 8, !tbaa !58
  br label %922

922:                                              ; preds = %919, %916, %875
  %923 = load ptr, ptr %0, align 8, !tbaa !20
  %924 = getelementptr inbounds nuw i8, ptr %923, i64 32
  %925 = load i32, ptr %924, align 8, !tbaa !107
  %926 = icmp eq i32 %925, 0
  %927 = select i1 %926, i32 2, i32 3
  br label %996

928:                                              ; preds = %859
  %929 = load i32, ptr %27, align 4, !tbaa !139
  %930 = icmp eq i32 %929, 0
  br i1 %930, label %995, label %931

931:                                              ; preds = %928
  %932 = load i64, ptr %9, align 8, !tbaa !74
  %933 = icmp sgt i64 %932, -1
  br i1 %933, label %934, label %938

934:                                              ; preds = %931
  %935 = load ptr, ptr %7, align 8, !tbaa !34
  %936 = and i64 %932, 4294967295
  %937 = getelementptr inbounds nuw i8, ptr %935, i64 %936
  br label %938

938:                                              ; preds = %934, %931
  %939 = phi ptr [ %937, %934 ], [ null, %931 ]
  %940 = zext i32 %860 to i64
  %941 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %940, i64 %932), !nosanitize !45
  %942 = extractvalue { i64, i1 } %941, 1, !nosanitize !45
  br i1 %942, label %773, label %943, !prof !46, !nosanitize !45

943:                                              ; preds = %938
  %944 = extractvalue { i64, i1 } %941, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %939, i64 noundef %944, i32 noundef 0) #10
  %945 = load i32, ptr %6, align 4, !tbaa !73
  %946 = zext i32 %945 to i64
  store i64 %946, ptr %9, align 8, !tbaa !74
  %947 = load ptr, ptr %0, align 8, !tbaa !20
  %948 = getelementptr inbounds nuw i8, ptr %947, i64 56
  %949 = load ptr, ptr %948, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %949) #10
  %950 = getelementptr inbounds nuw i8, ptr %949, i64 40
  %951 = load i64, ptr %950, align 8, !tbaa !57
  %952 = getelementptr inbounds nuw i8, ptr %947, i64 32
  %953 = load i32, ptr %952, align 8, !tbaa !107
  %954 = zext i32 %953 to i64
  %955 = tail call i64 @llvm.umin.i64(i64 %951, i64 %954)
  %956 = trunc nuw i64 %955 to i32
  %957 = icmp eq i64 %955, 0
  br i1 %957, label %990, label %958

958:                                              ; preds = %943
  %959 = getelementptr inbounds nuw i8, ptr %947, i64 24
  %960 = load ptr, ptr %959, align 8, !tbaa !106
  %961 = getelementptr inbounds nuw i8, ptr %949, i64 32
  %962 = load ptr, ptr %961, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %960, ptr align 1 %962, i64 %955, i1 false)
  %963 = load ptr, ptr %959, align 8, !tbaa !106
  %964 = getelementptr inbounds nuw i8, ptr %963, i64 %955
  store ptr %964, ptr %959, align 8, !tbaa !106
  %965 = load ptr, ptr %961, align 8, !tbaa !58
  %966 = getelementptr inbounds nuw i8, ptr %965, i64 %955
  store ptr %966, ptr %961, align 8, !tbaa !58
  %967 = getelementptr inbounds nuw i8, ptr %947, i64 40
  %968 = load i64, ptr %967, align 8, !tbaa !108
  %969 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %968, i64 %955), !nosanitize !45
  %970 = extractvalue { i64, i1 } %969, 1, !nosanitize !45
  br i1 %970, label %971, label %972, !prof !46, !nosanitize !45

971:                                              ; preds = %958
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

972:                                              ; preds = %958
  %973 = extractvalue { i64, i1 } %969, 0, !nosanitize !45
  store i64 %973, ptr %967, align 8, !tbaa !108
  %974 = load i32, ptr %952, align 8, !tbaa !107
  %975 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %974, i32 %956), !nosanitize !45
  %976 = extractvalue { i32, i1 } %975, 1, !nosanitize !45
  br i1 %976, label %977, label %978, !prof !46, !nosanitize !45

977:                                              ; preds = %972
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

978:                                              ; preds = %972
  %979 = extractvalue { i32, i1 } %975, 0, !nosanitize !45
  store i32 %979, ptr %952, align 8, !tbaa !107
  %980 = load i64, ptr %950, align 8, !tbaa !57
  %981 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %980, i64 %955), !nosanitize !45
  %982 = extractvalue { i64, i1 } %981, 1, !nosanitize !45
  br i1 %982, label %983, label %984, !prof !46, !nosanitize !45

983:                                              ; preds = %978
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

984:                                              ; preds = %978
  %985 = extractvalue { i64, i1 } %981, 0, !nosanitize !45
  store i64 %985, ptr %950, align 8, !tbaa !57
  %986 = icmp eq i64 %985, 0
  br i1 %986, label %987, label %990

987:                                              ; preds = %984
  %988 = getelementptr inbounds nuw i8, ptr %949, i64 16
  %989 = load ptr, ptr %988, align 8, !tbaa !40
  store ptr %989, ptr %961, align 8, !tbaa !58
  br label %990

990:                                              ; preds = %987, %984, %943
  %991 = load ptr, ptr %0, align 8, !tbaa !20
  %992 = getelementptr inbounds nuw i8, ptr %991, i64 32
  %993 = load i32, ptr %992, align 8, !tbaa !107
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %996, label %995

995:                                              ; preds = %990, %928
  br label %996

996:                                              ; preds = %995, %990, %922, %854, %364
  %997 = phi i32 [ 1, %995 ], [ %927, %922 ], [ 0, %990 ], [ 0, %364 ], [ 0, %854 ]
  ret i32 %997
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

36:                                               ; preds = %766, %2
  %37 = load i32, ptr %3, align 4, !tbaa !75
  %38 = icmp ult i32 %37, 262
  br i1 %38, label %39, label %378

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
  br i1 %205, label %326, label %206

206:                                              ; preds = %198
  %207 = load ptr, ptr %7, align 8, !tbaa !34
  %208 = zext i32 %200 to i64
  %209 = getelementptr inbounds nuw i8, ptr %207, i64 %208
  %210 = zext i32 %199 to i64
  %211 = getelementptr inbounds nuw i8, ptr %209, i64 %210
  %212 = tail call i32 @llvm.umin.i32(i32 %204, i32 %201)
  %213 = icmp eq i32 %201, 0
  br i1 %213, label %242, label %214

214:                                              ; preds = %206
  %215 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %204, i32 %212), !nosanitize !45
  %216 = extractvalue { i32, i1 } %215, 0, !nosanitize !45
  store i32 %216, ptr %203, align 8, !tbaa !81
  %217 = load ptr, ptr %202, align 8, !tbaa !82
  %218 = zext i32 %212 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %211, ptr align 1 %217, i64 %218, i1 false)
  %219 = getelementptr inbounds nuw i8, ptr %202, i64 56
  %220 = load ptr, ptr %219, align 8, !tbaa !19
  %221 = getelementptr inbounds nuw i8, ptr %220, i64 48
  %222 = load i32, ptr %221, align 8, !tbaa !30
  switch i32 %222, label %231 [
    i32 1, label %223
    i32 2, label %227
  ]

223:                                              ; preds = %214
  %224 = getelementptr inbounds nuw i8, ptr %202, i64 96
  %225 = load i64, ptr %224, align 8, !tbaa !59
  %226 = tail call i64 @adler32(i64 noundef %225, ptr noundef %211, i32 noundef %212) #10
  store i64 %226, ptr %224, align 8, !tbaa !59
  br label %231

227:                                              ; preds = %214
  %228 = getelementptr inbounds nuw i8, ptr %202, i64 96
  %229 = load i64, ptr %228, align 8, !tbaa !59
  %230 = tail call i64 @crc32(i64 noundef %229, ptr noundef %211, i32 noundef %212) #10
  store i64 %230, ptr %228, align 8, !tbaa !59
  br label %231

231:                                              ; preds = %227, %223, %214
  %232 = load ptr, ptr %202, align 8, !tbaa !82
  %233 = getelementptr inbounds nuw i8, ptr %232, i64 %218
  store ptr %233, ptr %202, align 8, !tbaa !82
  %234 = getelementptr inbounds nuw i8, ptr %202, i64 16
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

242:                                              ; preds = %239, %206
  %243 = phi i32 [ %199, %206 ], [ %241, %239 ]
  %244 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %243, i32 %212), !nosanitize !45
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
  br i1 %325, label %326, label %42, !llvm.loop !92

326:                                              ; preds = %321, %319, %198
  %327 = phi i32 [ %248, %321 ], [ %248, %319 ], [ %199, %198 ]
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
  br i1 %370, label %1151, label %371

371:                                              ; preds = %367
  %372 = icmp eq i32 %368, 0
  br i1 %372, label %968, label %373

373:                                              ; preds = %371
  %374 = icmp ugt i32 %368, 2
  br i1 %374, label %378, label %375

375:                                              ; preds = %373
  %376 = load i32, ptr %21, align 8, !tbaa !78
  store i32 %376, ptr %22, align 8, !tbaa !77
  %377 = load i32, ptr %8, align 8, !tbaa !83
  store i32 %377, ptr %23, align 4, !tbaa !159
  br label %608

378:                                              ; preds = %373, %36
  %379 = phi i32 [ %368, %373 ], [ %37, %36 ]
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
  %408 = load i32, ptr %21, align 8, !tbaa !78
  store i32 %408, ptr %22, align 8, !tbaa !77
  %409 = load i32, ptr %8, align 8, !tbaa !83
  store i32 %409, ptr %23, align 4, !tbaa !159
  store i32 2, ptr %21, align 8, !tbaa !78
  %410 = icmp eq i16 %400, 0
  br i1 %410, label %612, label %411

411:                                              ; preds = %384
  %412 = load i32, ptr %24, align 8, !tbaa !66
  %413 = icmp ult i32 %408, %412
  br i1 %413, label %414, label %612

414:                                              ; preds = %411
  %415 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %380, i32 %406), !nosanitize !45
  %416 = extractvalue { i32, i1 } %415, 0, !nosanitize !45
  %417 = extractvalue { i32, i1 } %415, 1, !nosanitize !45
  br i1 %417, label %418, label %419, !prof !46, !nosanitize !45

418:                                              ; preds = %414
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

419:                                              ; preds = %414
  %420 = load i32, ptr %4, align 8, !tbaa !32
  %421 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %420, i32 262), !nosanitize !45
  %422 = extractvalue { i32, i1 } %421, 1, !nosanitize !45
  br i1 %422, label %423, label %424, !prof !46, !nosanitize !45

423:                                              ; preds = %419
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

424:                                              ; preds = %419
  %425 = extractvalue { i32, i1 } %421, 0, !nosanitize !45
  %426 = icmp ugt i32 %416, %425
  br i1 %426, label %612, label %427

427:                                              ; preds = %424
  %428 = zext i32 %380 to i64
  %429 = getelementptr inbounds nuw i8, ptr %386, i64 %428
  %430 = tail call i32 @llvm.usub.sat.i32(i32 %380, i32 %425)
  %431 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %408, i32 -1)
  %432 = extractvalue { i32, i1 } %431, 1, !nosanitize !45
  br i1 %432, label %433, label %434, !prof !46, !nosanitize !45

433:                                              ; preds = %555, %465, %427
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

434:                                              ; preds = %427
  %435 = load i32, ptr %25, align 8, !tbaa !70
  %436 = load i32, ptr %26, align 4, !tbaa !72
  %437 = getelementptr inbounds nuw i8, ptr %429, i64 258
  %438 = extractvalue { i32, i1 } %431, 0, !nosanitize !45
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i8, ptr %429, i64 %439
  %441 = load i8, ptr %440, align 1, !tbaa !8
  %442 = sext i32 %408 to i64
  %443 = getelementptr inbounds i8, ptr %429, i64 %442
  %444 = load i8, ptr %443, align 1, !tbaa !8
  %445 = load i32, ptr %27, align 4, !tbaa !68
  %446 = icmp ult i32 %408, %445
  %447 = lshr i32 %436, 2
  %448 = select i1 %446, i32 %436, i32 %447
  %449 = tail call i32 @llvm.umin.i32(i32 %435, i32 %379)
  %450 = getelementptr inbounds nuw i8, ptr %429, i64 1
  %451 = ptrtoint ptr %437 to i64
  br label %452

452:                                              ; preds = %588, %434
  %453 = phi i32 [ %409, %434 ], [ %574, %588 ]
  %454 = phi i32 [ %408, %434 ], [ %575, %588 ]
  %455 = phi i32 [ %448, %434 ], [ %589, %588 ]
  %456 = phi i32 [ %406, %434 ], [ %582, %588 ]
  %457 = phi i8 [ %441, %434 ], [ %576, %588 ]
  %458 = phi i8 [ %444, %434 ], [ %577, %588 ]
  %459 = zext nneg i32 %456 to i64
  %460 = getelementptr inbounds nuw i8, ptr %386, i64 %459
  %461 = sext i32 %454 to i64
  %462 = getelementptr inbounds i8, ptr %460, i64 %461
  %463 = load i8, ptr %462, align 1, !tbaa !8
  %464 = icmp eq i8 %463, %458
  br i1 %464, label %465, label %573

465:                                              ; preds = %452
  %466 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %454, i32 -1)
  %467 = extractvalue { i32, i1 } %466, 1, !nosanitize !45
  br i1 %467, label %433, label %468, !prof !46, !nosanitize !45

468:                                              ; preds = %465
  %469 = extractvalue { i32, i1 } %466, 0, !nosanitize !45
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i8, ptr %460, i64 %470
  %472 = load i8, ptr %471, align 1, !tbaa !8
  %473 = icmp eq i8 %472, %457
  br i1 %473, label %474, label %573

474:                                              ; preds = %468
  %475 = load i8, ptr %460, align 1, !tbaa !8
  %476 = load i8, ptr %429, align 1, !tbaa !8
  %477 = icmp eq i8 %475, %476
  br i1 %477, label %478, label %573

478:                                              ; preds = %474
  %479 = getelementptr inbounds nuw i8, ptr %460, i64 1
  %480 = load i8, ptr %479, align 1, !tbaa !8
  %481 = load i8, ptr %450, align 1, !tbaa !8
  %482 = icmp eq i8 %480, %481
  br i1 %482, label %483, label %573

483:                                              ; preds = %478
  %484 = getelementptr inbounds nuw i8, ptr %460, i64 2
  br label %485

485:                                              ; preds = %530, %483
  %486 = phi ptr [ %484, %483 ], [ %534, %530 ]
  %487 = phi i64 [ 2, %483 ], [ %531, %530 ]
  %488 = getelementptr inbounds nuw i8, ptr %429, i64 %487
  %489 = getelementptr inbounds nuw i8, ptr %488, i64 1
  %490 = load i8, ptr %489, align 1, !tbaa !8
  %491 = getelementptr inbounds nuw i8, ptr %486, i64 1
  %492 = load i8, ptr %491, align 1, !tbaa !8
  %493 = icmp eq i8 %490, %492
  br i1 %493, label %494, label %539

494:                                              ; preds = %485
  %495 = getelementptr inbounds nuw i8, ptr %488, i64 2
  %496 = load i8, ptr %495, align 1, !tbaa !8
  %497 = getelementptr inbounds nuw i8, ptr %486, i64 2
  %498 = load i8, ptr %497, align 1, !tbaa !8
  %499 = icmp eq i8 %496, %498
  br i1 %499, label %500, label %541

500:                                              ; preds = %494
  %501 = getelementptr inbounds nuw i8, ptr %488, i64 3
  %502 = load i8, ptr %501, align 1, !tbaa !8
  %503 = getelementptr inbounds nuw i8, ptr %486, i64 3
  %504 = load i8, ptr %503, align 1, !tbaa !8
  %505 = icmp eq i8 %502, %504
  br i1 %505, label %506, label %543

506:                                              ; preds = %500
  %507 = getelementptr inbounds nuw i8, ptr %488, i64 4
  %508 = load i8, ptr %507, align 1, !tbaa !8
  %509 = getelementptr inbounds nuw i8, ptr %486, i64 4
  %510 = load i8, ptr %509, align 1, !tbaa !8
  %511 = icmp eq i8 %508, %510
  br i1 %511, label %512, label %545

512:                                              ; preds = %506
  %513 = getelementptr inbounds nuw i8, ptr %488, i64 5
  %514 = load i8, ptr %513, align 1, !tbaa !8
  %515 = getelementptr inbounds nuw i8, ptr %486, i64 5
  %516 = load i8, ptr %515, align 1, !tbaa !8
  %517 = icmp eq i8 %514, %516
  br i1 %517, label %518, label %547

518:                                              ; preds = %512
  %519 = getelementptr inbounds nuw i8, ptr %488, i64 6
  %520 = load i8, ptr %519, align 1, !tbaa !8
  %521 = getelementptr inbounds nuw i8, ptr %486, i64 6
  %522 = load i8, ptr %521, align 1, !tbaa !8
  %523 = icmp eq i8 %520, %522
  br i1 %523, label %524, label %549

524:                                              ; preds = %518
  %525 = getelementptr inbounds nuw i8, ptr %488, i64 7
  %526 = load i8, ptr %525, align 1, !tbaa !8
  %527 = getelementptr inbounds nuw i8, ptr %486, i64 7
  %528 = load i8, ptr %527, align 1, !tbaa !8
  %529 = icmp eq i8 %526, %528
  br i1 %529, label %530, label %551

530:                                              ; preds = %524
  %531 = add nuw nsw i64 %487, 8
  %532 = getelementptr inbounds nuw i8, ptr %429, i64 %531
  %533 = load i8, ptr %532, align 1, !tbaa !8
  %534 = getelementptr inbounds nuw i8, ptr %486, i64 8
  %535 = load i8, ptr %534, align 1, !tbaa !8
  %536 = icmp eq i8 %533, %535
  %537 = icmp samesign ult i64 %487, 250
  %538 = select i1 %536, i1 %537, i1 false
  br i1 %538, label %485, label %553, !llvm.loop !152

539:                                              ; preds = %485
  %540 = getelementptr inbounds nuw i8, ptr %488, i64 1
  br label %555

541:                                              ; preds = %494
  %542 = getelementptr inbounds nuw i8, ptr %488, i64 2
  br label %555

543:                                              ; preds = %500
  %544 = getelementptr inbounds nuw i8, ptr %488, i64 3
  br label %555

545:                                              ; preds = %506
  %546 = getelementptr inbounds nuw i8, ptr %488, i64 4
  br label %555

547:                                              ; preds = %512
  %548 = getelementptr inbounds nuw i8, ptr %488, i64 5
  br label %555

549:                                              ; preds = %518
  %550 = getelementptr inbounds nuw i8, ptr %488, i64 6
  br label %555

551:                                              ; preds = %524
  %552 = getelementptr inbounds nuw i8, ptr %488, i64 7
  br label %555

553:                                              ; preds = %530
  %554 = getelementptr inbounds nuw i8, ptr %429, i64 %531
  br label %555

555:                                              ; preds = %553, %551, %549, %547, %545, %543, %541, %539
  %556 = phi ptr [ %542, %541 ], [ %544, %543 ], [ %540, %539 ], [ %552, %551 ], [ %550, %549 ], [ %548, %547 ], [ %546, %545 ], [ %554, %553 ]
  %557 = ptrtoint ptr %556 to i64
  %558 = sub i64 %451, %557
  %559 = trunc i64 %558 to i32
  %560 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %559), !nosanitize !45
  %561 = extractvalue { i32, i1 } %560, 0, !nosanitize !45
  %562 = extractvalue { i32, i1 } %560, 1, !nosanitize !45
  br i1 %562, label %433, label %563, !prof !46, !nosanitize !45

563:                                              ; preds = %555
  %564 = icmp sgt i32 %561, %454
  br i1 %564, label %565, label %573

565:                                              ; preds = %563
  store i32 %456, ptr %8, align 8, !tbaa !83
  %566 = icmp slt i32 %561, %449
  br i1 %566, label %567, label %591

567:                                              ; preds = %565
  %568 = sext i32 %561 to i64
  %569 = getelementptr i8, ptr %429, i64 %568
  %570 = getelementptr i8, ptr %569, i64 -1
  %571 = load i8, ptr %570, align 1, !tbaa !8
  %572 = load i8, ptr %569, align 1, !tbaa !8
  br label %573

573:                                              ; preds = %567, %563, %478, %474, %468, %452
  %574 = phi i32 [ %453, %452 ], [ %453, %468 ], [ %453, %474 ], [ %453, %478 ], [ %456, %567 ], [ %453, %563 ]
  %575 = phi i32 [ %454, %452 ], [ %454, %468 ], [ %454, %474 ], [ %454, %478 ], [ %561, %567 ], [ %454, %563 ]
  %576 = phi i8 [ %457, %452 ], [ %457, %468 ], [ %457, %474 ], [ %457, %478 ], [ %571, %567 ], [ %457, %563 ]
  %577 = phi i8 [ %458, %452 ], [ %458, %468 ], [ %458, %474 ], [ %458, %478 ], [ %572, %567 ], [ %458, %563 ]
  %578 = and i32 %456, %402
  %579 = zext nneg i32 %578 to i64
  %580 = getelementptr inbounds nuw [2 x i8], ptr %401, i64 %579
  %581 = load i16, ptr %580, align 2, !tbaa !62
  %582 = zext i16 %581 to i32
  %583 = icmp ult i32 %430, %582
  br i1 %583, label %584, label %591

584:                                              ; preds = %573
  %585 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %455, i32 1), !nosanitize !45
  %586 = extractvalue { i32, i1 } %585, 1, !nosanitize !45
  br i1 %586, label %587, label %588, !prof !46, !nosanitize !45

587:                                              ; preds = %584
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

588:                                              ; preds = %584
  %589 = extractvalue { i32, i1 } %585, 0, !nosanitize !45
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %591, label %452, !llvm.loop !153

591:                                              ; preds = %588, %573, %565
  %592 = phi i32 [ %574, %588 ], [ %574, %573 ], [ %456, %565 ]
  %593 = phi i32 [ %575, %588 ], [ %575, %573 ], [ %561, %565 ]
  %594 = tail call i32 @llvm.umin.i32(i32 %593, i32 %379)
  store i32 %594, ptr %21, align 8, !tbaa !78
  %595 = icmp ult i32 %594, 6
  br i1 %595, label %596, label %612

596:                                              ; preds = %591
  %597 = load i32, ptr %28, align 8, !tbaa !49
  %598 = icmp eq i32 %597, 1
  br i1 %598, label %608, label %599

599:                                              ; preds = %596
  %600 = icmp eq i32 %594, 3
  br i1 %600, label %601, label %612

601:                                              ; preds = %599
  %602 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %380, i32 %592), !nosanitize !45
  %603 = extractvalue { i32, i1 } %602, 1, !nosanitize !45
  br i1 %603, label %604, label %605, !prof !46, !nosanitize !45

604:                                              ; preds = %601
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

605:                                              ; preds = %601
  %606 = extractvalue { i32, i1 } %602, 0, !nosanitize !45
  %607 = icmp ugt i32 %606, 4096
  br i1 %607, label %608, label %612

608:                                              ; preds = %605, %596, %375
  %609 = phi i32 [ %377, %375 ], [ %409, %605 ], [ %409, %596 ]
  %610 = phi i32 [ %376, %375 ], [ %408, %605 ], [ %408, %596 ]
  %611 = phi i32 [ %368, %375 ], [ %379, %605 ], [ %379, %596 ]
  store i32 2, ptr %21, align 8, !tbaa !78
  br label %612

612:                                              ; preds = %608, %605, %599, %591, %424, %411, %384
  %613 = phi i32 [ 2, %411 ], [ %594, %591 ], [ %594, %599 ], [ 3, %605 ], [ 2, %384 ], [ 2, %424 ], [ 2, %608 ]
  %614 = phi i32 [ %409, %411 ], [ %409, %591 ], [ %409, %599 ], [ %409, %605 ], [ %409, %384 ], [ %409, %424 ], [ %609, %608 ]
  %615 = phi i32 [ %408, %411 ], [ %408, %591 ], [ %408, %599 ], [ %408, %605 ], [ %408, %384 ], [ %408, %424 ], [ %610, %608 ]
  %616 = phi i32 [ %379, %411 ], [ %379, %591 ], [ %379, %599 ], [ %379, %605 ], [ %379, %384 ], [ %379, %424 ], [ %611, %608 ]
  %617 = icmp ult i32 %615, 3
  %618 = icmp ugt i32 %613, %615
  %619 = or i1 %617, %618
  br i1 %619, label %831, label %620

620:                                              ; preds = %612
  %621 = load i32, ptr %6, align 4, !tbaa !73
  %622 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %621, i32 %616), !nosanitize !45
  %623 = extractvalue { i32, i1 } %622, 1, !nosanitize !45
  br i1 %623, label %624, label %625, !prof !46, !nosanitize !45

624:                                              ; preds = %620
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

625:                                              ; preds = %620
  %626 = extractvalue { i32, i1 } %622, 0, !nosanitize !45
  %627 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %626, i32 3), !nosanitize !45
  %628 = extractvalue { i32, i1 } %627, 0, !nosanitize !45
  %629 = extractvalue { i32, i1 } %627, 1, !nosanitize !45
  br i1 %629, label %630, label %631, !prof !46, !nosanitize !45

630:                                              ; preds = %625
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

631:                                              ; preds = %625
  %632 = trunc i32 %615 to i8
  %633 = add i8 %632, -3
  %634 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %621, i32 1), !nosanitize !45
  %635 = extractvalue { i32, i1 } %634, 1, !nosanitize !45
  br i1 %635, label %636, label %637, !prof !46, !nosanitize !45

636:                                              ; preds = %631
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

637:                                              ; preds = %631
  %638 = extractvalue { i32, i1 } %634, 0, !nosanitize !45
  %639 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %638, i32 %614), !nosanitize !45
  %640 = extractvalue { i32, i1 } %639, 1, !nosanitize !45
  br i1 %640, label %641, label %642, !prof !46, !nosanitize !45

641:                                              ; preds = %637
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

642:                                              ; preds = %637
  %643 = extractvalue { i32, i1 } %639, 0, !nosanitize !45
  %644 = trunc i32 %643 to i16
  %645 = load i32, ptr %30, align 4, !tbaa !139
  %646 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %645, i32 1), !nosanitize !45
  %647 = extractvalue { i32, i1 } %646, 1, !nosanitize !45
  br i1 %647, label %648, label %649, !prof !46, !nosanitize !45

648:                                              ; preds = %642
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

649:                                              ; preds = %642
  %650 = extractvalue { i32, i1 } %646, 0, !nosanitize !45
  %651 = load ptr, ptr %29, align 8, !tbaa !44
  %652 = trunc i32 %643 to i8
  store i32 %650, ptr %30, align 4, !tbaa !139
  %653 = zext i32 %645 to i64
  %654 = getelementptr inbounds nuw i8, ptr %651, i64 %653
  store i8 %652, ptr %654, align 1, !tbaa !8
  %655 = load i32, ptr %30, align 4, !tbaa !139
  %656 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %655, i32 1), !nosanitize !45
  %657 = extractvalue { i32, i1 } %656, 1, !nosanitize !45
  br i1 %657, label %658, label %659, !prof !46, !nosanitize !45

658:                                              ; preds = %649
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

659:                                              ; preds = %649
  %660 = extractvalue { i32, i1 } %656, 0, !nosanitize !45
  %661 = load ptr, ptr %29, align 8, !tbaa !44
  %662 = lshr i32 %643, 8
  %663 = trunc i32 %662 to i8
  store i32 %660, ptr %30, align 4, !tbaa !139
  %664 = zext i32 %655 to i64
  %665 = getelementptr inbounds nuw i8, ptr %661, i64 %664
  store i8 %663, ptr %665, align 1, !tbaa !8
  %666 = load i32, ptr %30, align 4, !tbaa !139
  %667 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %666, i32 1), !nosanitize !45
  %668 = extractvalue { i32, i1 } %667, 1, !nosanitize !45
  br i1 %668, label %669, label %670, !prof !46, !nosanitize !45

669:                                              ; preds = %659
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

670:                                              ; preds = %659
  %671 = extractvalue { i32, i1 } %667, 0, !nosanitize !45
  %672 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %671, ptr %30, align 4, !tbaa !139
  %673 = zext i32 %666 to i64
  %674 = getelementptr inbounds nuw i8, ptr %672, i64 %673
  store i8 %633, ptr %674, align 1, !tbaa !8
  %675 = add i16 %644, -1
  %676 = zext i8 %633 to i64
  %677 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %676
  %678 = load i8, ptr %677, align 1, !tbaa !8
  %679 = zext i8 %678 to i64
  %680 = getelementptr [4 x i8], ptr %31, i64 %679
  %681 = load i16, ptr %680, align 4, !tbaa !8
  %682 = add i16 %681, 1
  store i16 %682, ptr %680, align 4, !tbaa !8
  %683 = icmp ult i16 %675, 256
  br i1 %683, label %684, label %687

684:                                              ; preds = %670
  %685 = zext nneg i16 %675 to i64
  %686 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %685
  br label %692

687:                                              ; preds = %670
  %688 = lshr i16 %675, 7
  %689 = zext nneg i16 %688 to i64
  %690 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %689
  %691 = getelementptr inbounds nuw i8, ptr %690, i64 256
  br label %692

692:                                              ; preds = %687, %684
  %693 = phi ptr [ %686, %684 ], [ %691, %687 ]
  %694 = load i8, ptr %693, align 1, !tbaa !8
  %695 = zext i8 %694 to i64
  %696 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %695
  %697 = load i16, ptr %696, align 4, !tbaa !8
  %698 = add i16 %697, 1
  store i16 %698, ptr %696, align 4, !tbaa !8
  %699 = load i32, ptr %30, align 4, !tbaa !139
  %700 = load i32, ptr %33, align 8, !tbaa !47
  %701 = icmp eq i32 %699, %700
  %702 = load i32, ptr %22, align 8, !tbaa !77
  %703 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %702, i32 1), !nosanitize !45
  %704 = extractvalue { i32, i1 } %703, 1, !nosanitize !45
  br i1 %704, label %705, label %706, !prof !46, !nosanitize !45

705:                                              ; preds = %692
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

706:                                              ; preds = %692
  %707 = extractvalue { i32, i1 } %703, 0, !nosanitize !45
  %708 = load i32, ptr %3, align 4, !tbaa !75
  %709 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %708, i32 %707), !nosanitize !45
  %710 = extractvalue { i32, i1 } %709, 1, !nosanitize !45
  br i1 %710, label %711, label %712, !prof !46, !nosanitize !45

711:                                              ; preds = %706
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

712:                                              ; preds = %706
  %713 = extractvalue { i32, i1 } %709, 0, !nosanitize !45
  store i32 %713, ptr %3, align 4, !tbaa !75
  %714 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %702, i32 2), !nosanitize !45
  %715 = extractvalue { i32, i1 } %714, 1, !nosanitize !45
  br i1 %715, label %716, label %717, !prof !46, !nosanitize !45

716:                                              ; preds = %712
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

717:                                              ; preds = %712
  %718 = extractvalue { i32, i1 } %714, 0, !nosanitize !45
  store i32 %718, ptr %22, align 8, !tbaa !77
  %719 = load i32, ptr %6, align 4, !tbaa !73
  br label %720

720:                                              ; preds = %757, %717
  %721 = phi i32 [ %758, %757 ], [ %718, %717 ]
  %722 = phi i32 [ %724, %757 ], [ %719, %717 ]
  %723 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %722, i32 1), !nosanitize !45
  %724 = extractvalue { i32, i1 } %723, 0, !nosanitize !45
  %725 = extractvalue { i32, i1 } %723, 1, !nosanitize !45
  br i1 %725, label %726, label %727, !prof !46, !nosanitize !45

726:                                              ; preds = %720
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

727:                                              ; preds = %720
  store i32 %724, ptr %6, align 4, !tbaa !73
  %728 = icmp ugt i32 %724, %628
  br i1 %728, label %753, label %729

729:                                              ; preds = %727
  %730 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %724, i32 2), !nosanitize !45
  %731 = extractvalue { i32, i1 } %730, 0, !nosanitize !45
  %732 = load ptr, ptr %7, align 8, !tbaa !34
  %733 = load i32, ptr %15, align 8, !tbaa !80
  %734 = load i32, ptr %16, align 8, !tbaa !53
  %735 = shl i32 %733, %734
  %736 = zext i32 %731 to i64
  %737 = getelementptr inbounds nuw i8, ptr %732, i64 %736
  %738 = load i8, ptr %737, align 1, !tbaa !8
  %739 = zext i8 %738 to i32
  %740 = xor i32 %735, %739
  %741 = load i32, ptr %17, align 4, !tbaa !52
  %742 = and i32 %740, %741
  store i32 %742, ptr %15, align 8, !tbaa !80
  %743 = load ptr, ptr %12, align 8, !tbaa !37
  %744 = zext i32 %742 to i64
  %745 = getelementptr inbounds nuw [2 x i8], ptr %743, i64 %744
  %746 = load i16, ptr %745, align 2, !tbaa !62
  %747 = load ptr, ptr %13, align 8, !tbaa !35
  %748 = load i32, ptr %18, align 8, !tbaa !33
  %749 = and i32 %748, %724
  %750 = zext i32 %749 to i64
  %751 = getelementptr inbounds nuw [2 x i8], ptr %747, i64 %750
  store i16 %746, ptr %751, align 2, !tbaa !62
  %752 = trunc i32 %724 to i16
  store i16 %752, ptr %745, align 2, !tbaa !62
  br label %753

753:                                              ; preds = %729, %727
  %754 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %721, i32 1), !nosanitize !45
  %755 = extractvalue { i32, i1 } %754, 1, !nosanitize !45
  br i1 %755, label %756, label %757, !prof !46, !nosanitize !45

756:                                              ; preds = %774, %753
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

757:                                              ; preds = %753
  %758 = extractvalue { i32, i1 } %754, 0, !nosanitize !45
  store i32 %758, ptr %22, align 8, !tbaa !77
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %760, label %720, !llvm.loop !160

760:                                              ; preds = %757
  store i32 0, ptr %34, align 8, !tbaa !79
  store i32 2, ptr %21, align 8, !tbaa !78
  %761 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %724, i32 1), !nosanitize !45
  %762 = extractvalue { i32, i1 } %761, 1, !nosanitize !45
  br i1 %762, label %763, label %764, !prof !46, !nosanitize !45

763:                                              ; preds = %760
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

764:                                              ; preds = %760
  %765 = extractvalue { i32, i1 } %761, 0, !nosanitize !45
  store i32 %765, ptr %6, align 4, !tbaa !73
  br i1 %701, label %767, label %766

766:                                              ; preds = %966, %950, %826, %764
  br label %36

767:                                              ; preds = %764
  %768 = load i64, ptr %9, align 8, !tbaa !74
  %769 = icmp sgt i64 %768, -1
  br i1 %769, label %770, label %774

770:                                              ; preds = %767
  %771 = load ptr, ptr %7, align 8, !tbaa !34
  %772 = and i64 %768, 4294967295
  %773 = getelementptr inbounds nuw i8, ptr %771, i64 %772
  br label %774

774:                                              ; preds = %770, %767
  %775 = phi ptr [ %773, %770 ], [ null, %767 ]
  %776 = zext i32 %765 to i64
  %777 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %776, i64 %768), !nosanitize !45
  %778 = extractvalue { i64, i1 } %777, 1, !nosanitize !45
  br i1 %778, label %756, label %779, !prof !46, !nosanitize !45

779:                                              ; preds = %774
  %780 = extractvalue { i64, i1 } %777, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %775, i64 noundef %780, i32 noundef 0) #10
  %781 = load i32, ptr %6, align 4, !tbaa !73
  %782 = zext i32 %781 to i64
  store i64 %782, ptr %9, align 8, !tbaa !74
  %783 = load ptr, ptr %0, align 8, !tbaa !20
  %784 = getelementptr inbounds nuw i8, ptr %783, i64 56
  %785 = load ptr, ptr %784, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %785) #10
  %786 = getelementptr inbounds nuw i8, ptr %785, i64 40
  %787 = load i64, ptr %786, align 8, !tbaa !57
  %788 = getelementptr inbounds nuw i8, ptr %783, i64 32
  %789 = load i32, ptr %788, align 8, !tbaa !107
  %790 = zext i32 %789 to i64
  %791 = tail call i64 @llvm.umin.i64(i64 %787, i64 %790)
  %792 = trunc nuw i64 %791 to i32
  %793 = icmp eq i64 %791, 0
  br i1 %793, label %826, label %794

794:                                              ; preds = %779
  %795 = getelementptr inbounds nuw i8, ptr %783, i64 24
  %796 = load ptr, ptr %795, align 8, !tbaa !106
  %797 = getelementptr inbounds nuw i8, ptr %785, i64 32
  %798 = load ptr, ptr %797, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %796, ptr align 1 %798, i64 %791, i1 false)
  %799 = load ptr, ptr %795, align 8, !tbaa !106
  %800 = getelementptr inbounds nuw i8, ptr %799, i64 %791
  store ptr %800, ptr %795, align 8, !tbaa !106
  %801 = load ptr, ptr %797, align 8, !tbaa !58
  %802 = getelementptr inbounds nuw i8, ptr %801, i64 %791
  store ptr %802, ptr %797, align 8, !tbaa !58
  %803 = getelementptr inbounds nuw i8, ptr %783, i64 40
  %804 = load i64, ptr %803, align 8, !tbaa !108
  %805 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %804, i64 %791), !nosanitize !45
  %806 = extractvalue { i64, i1 } %805, 1, !nosanitize !45
  br i1 %806, label %807, label %808, !prof !46, !nosanitize !45

807:                                              ; preds = %794
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

808:                                              ; preds = %794
  %809 = extractvalue { i64, i1 } %805, 0, !nosanitize !45
  store i64 %809, ptr %803, align 8, !tbaa !108
  %810 = load i32, ptr %788, align 8, !tbaa !107
  %811 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %810, i32 %792), !nosanitize !45
  %812 = extractvalue { i32, i1 } %811, 1, !nosanitize !45
  br i1 %812, label %813, label %814, !prof !46, !nosanitize !45

813:                                              ; preds = %808
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

814:                                              ; preds = %808
  %815 = extractvalue { i32, i1 } %811, 0, !nosanitize !45
  store i32 %815, ptr %788, align 8, !tbaa !107
  %816 = load i64, ptr %786, align 8, !tbaa !57
  %817 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %816, i64 %791), !nosanitize !45
  %818 = extractvalue { i64, i1 } %817, 1, !nosanitize !45
  br i1 %818, label %819, label %820, !prof !46, !nosanitize !45

819:                                              ; preds = %814
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

820:                                              ; preds = %814
  %821 = extractvalue { i64, i1 } %817, 0, !nosanitize !45
  store i64 %821, ptr %786, align 8, !tbaa !57
  %822 = icmp eq i64 %821, 0
  br i1 %822, label %823, label %826

823:                                              ; preds = %820
  %824 = getelementptr inbounds nuw i8, ptr %785, i64 16
  %825 = load ptr, ptr %824, align 8, !tbaa !40
  store ptr %825, ptr %797, align 8, !tbaa !58
  br label %826

826:                                              ; preds = %823, %820, %779
  %827 = load ptr, ptr %0, align 8, !tbaa !20
  %828 = getelementptr inbounds nuw i8, ptr %827, i64 32
  %829 = load i32, ptr %828, align 8, !tbaa !107
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %1151, label %766

831:                                              ; preds = %612
  %832 = load i32, ptr %34, align 8, !tbaa !79
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %956, label %834

834:                                              ; preds = %831
  %835 = load i32, ptr %6, align 4, !tbaa !73
  %836 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %835, i32 1), !nosanitize !45
  %837 = extractvalue { i32, i1 } %836, 1, !nosanitize !45
  br i1 %837, label %838, label %839, !prof !46, !nosanitize !45

838:                                              ; preds = %886, %834
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

839:                                              ; preds = %834
  %840 = extractvalue { i32, i1 } %836, 0, !nosanitize !45
  %841 = load ptr, ptr %7, align 8, !tbaa !34
  %842 = zext i32 %840 to i64
  %843 = getelementptr inbounds nuw i8, ptr %841, i64 %842
  %844 = load i8, ptr %843, align 1, !tbaa !8
  %845 = load i32, ptr %30, align 4, !tbaa !139
  %846 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %845, i32 1), !nosanitize !45
  %847 = extractvalue { i32, i1 } %846, 1, !nosanitize !45
  br i1 %847, label %848, label %849, !prof !46, !nosanitize !45

848:                                              ; preds = %839
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

849:                                              ; preds = %839
  %850 = extractvalue { i32, i1 } %846, 0, !nosanitize !45
  %851 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %850, ptr %30, align 4, !tbaa !139
  %852 = zext i32 %845 to i64
  %853 = getelementptr inbounds nuw i8, ptr %851, i64 %852
  store i8 0, ptr %853, align 1, !tbaa !8
  %854 = load i32, ptr %30, align 4, !tbaa !139
  %855 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %854, i32 1), !nosanitize !45
  %856 = extractvalue { i32, i1 } %855, 1, !nosanitize !45
  br i1 %856, label %857, label %858, !prof !46, !nosanitize !45

857:                                              ; preds = %849
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

858:                                              ; preds = %849
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
  store i8 %844, ptr %871, align 1, !tbaa !8
  %872 = zext i8 %844 to i64
  %873 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %872
  %874 = load i16, ptr %873, align 4, !tbaa !8
  %875 = add i16 %874, 1
  store i16 %875, ptr %873, align 4, !tbaa !8
  %876 = load i32, ptr %30, align 4, !tbaa !139
  %877 = load i32, ptr %33, align 8, !tbaa !47
  %878 = icmp eq i32 %876, %877
  br i1 %878, label %879, label %939

879:                                              ; preds = %867
  %880 = load i64, ptr %9, align 8, !tbaa !74
  %881 = icmp sgt i64 %880, -1
  br i1 %881, label %882, label %886

882:                                              ; preds = %879
  %883 = load ptr, ptr %7, align 8, !tbaa !34
  %884 = and i64 %880, 4294967295
  %885 = getelementptr inbounds nuw i8, ptr %883, i64 %884
  br label %886

886:                                              ; preds = %882, %879
  %887 = phi ptr [ %885, %882 ], [ null, %879 ]
  %888 = load i32, ptr %6, align 4, !tbaa !73
  %889 = zext i32 %888 to i64
  %890 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %889, i64 %880), !nosanitize !45
  %891 = extractvalue { i64, i1 } %890, 1, !nosanitize !45
  br i1 %891, label %838, label %892, !prof !46, !nosanitize !45

892:                                              ; preds = %886
  %893 = extractvalue { i64, i1 } %890, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %887, i64 noundef %893, i32 noundef 0) #10
  %894 = load i32, ptr %6, align 4, !tbaa !73
  %895 = zext i32 %894 to i64
  store i64 %895, ptr %9, align 8, !tbaa !74
  %896 = load ptr, ptr %0, align 8, !tbaa !20
  %897 = getelementptr inbounds nuw i8, ptr %896, i64 56
  %898 = load ptr, ptr %897, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %898) #10
  %899 = getelementptr inbounds nuw i8, ptr %898, i64 40
  %900 = load i64, ptr %899, align 8, !tbaa !57
  %901 = getelementptr inbounds nuw i8, ptr %896, i64 32
  %902 = load i32, ptr %901, align 8, !tbaa !107
  %903 = zext i32 %902 to i64
  %904 = tail call i64 @llvm.umin.i64(i64 %900, i64 %903)
  %905 = trunc nuw i64 %904 to i32
  %906 = icmp eq i64 %904, 0
  br i1 %906, label %939, label %907

907:                                              ; preds = %892
  %908 = getelementptr inbounds nuw i8, ptr %896, i64 24
  %909 = load ptr, ptr %908, align 8, !tbaa !106
  %910 = getelementptr inbounds nuw i8, ptr %898, i64 32
  %911 = load ptr, ptr %910, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %909, ptr align 1 %911, i64 %904, i1 false)
  %912 = load ptr, ptr %908, align 8, !tbaa !106
  %913 = getelementptr inbounds nuw i8, ptr %912, i64 %904
  store ptr %913, ptr %908, align 8, !tbaa !106
  %914 = load ptr, ptr %910, align 8, !tbaa !58
  %915 = getelementptr inbounds nuw i8, ptr %914, i64 %904
  store ptr %915, ptr %910, align 8, !tbaa !58
  %916 = getelementptr inbounds nuw i8, ptr %896, i64 40
  %917 = load i64, ptr %916, align 8, !tbaa !108
  %918 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %917, i64 %904), !nosanitize !45
  %919 = extractvalue { i64, i1 } %918, 1, !nosanitize !45
  br i1 %919, label %920, label %921, !prof !46, !nosanitize !45

920:                                              ; preds = %907
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

921:                                              ; preds = %907
  %922 = extractvalue { i64, i1 } %918, 0, !nosanitize !45
  store i64 %922, ptr %916, align 8, !tbaa !108
  %923 = load i32, ptr %901, align 8, !tbaa !107
  %924 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %923, i32 %905), !nosanitize !45
  %925 = extractvalue { i32, i1 } %924, 1, !nosanitize !45
  br i1 %925, label %926, label %927, !prof !46, !nosanitize !45

926:                                              ; preds = %921
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

927:                                              ; preds = %921
  %928 = extractvalue { i32, i1 } %924, 0, !nosanitize !45
  store i32 %928, ptr %901, align 8, !tbaa !107
  %929 = load i64, ptr %899, align 8, !tbaa !57
  %930 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %929, i64 %904), !nosanitize !45
  %931 = extractvalue { i64, i1 } %930, 1, !nosanitize !45
  br i1 %931, label %932, label %933, !prof !46, !nosanitize !45

932:                                              ; preds = %927
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

933:                                              ; preds = %927
  %934 = extractvalue { i64, i1 } %930, 0, !nosanitize !45
  store i64 %934, ptr %899, align 8, !tbaa !57
  %935 = icmp eq i64 %934, 0
  br i1 %935, label %936, label %939

936:                                              ; preds = %933
  %937 = getelementptr inbounds nuw i8, ptr %898, i64 16
  %938 = load ptr, ptr %937, align 8, !tbaa !40
  store ptr %938, ptr %910, align 8, !tbaa !58
  br label %939

939:                                              ; preds = %936, %933, %892, %867
  %940 = load i32, ptr %6, align 4, !tbaa !73
  %941 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %940, i32 1), !nosanitize !45
  %942 = extractvalue { i32, i1 } %941, 1, !nosanitize !45
  br i1 %942, label %943, label %944, !prof !46, !nosanitize !45

943:                                              ; preds = %939
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

944:                                              ; preds = %939
  %945 = extractvalue { i32, i1 } %941, 0, !nosanitize !45
  store i32 %945, ptr %6, align 4, !tbaa !73
  %946 = load i32, ptr %3, align 4, !tbaa !75
  %947 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %946, i32 1), !nosanitize !45
  %948 = extractvalue { i32, i1 } %947, 1, !nosanitize !45
  br i1 %948, label %949, label %950, !prof !46, !nosanitize !45

949:                                              ; preds = %944
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

950:                                              ; preds = %944
  %951 = extractvalue { i32, i1 } %947, 0, !nosanitize !45
  store i32 %951, ptr %3, align 4, !tbaa !75
  %952 = load ptr, ptr %0, align 8, !tbaa !20
  %953 = getelementptr inbounds nuw i8, ptr %952, i64 32
  %954 = load i32, ptr %953, align 8, !tbaa !107
  %955 = icmp eq i32 %954, 0
  br i1 %955, label %1151, label %766

956:                                              ; preds = %831
  store i32 1, ptr %34, align 8, !tbaa !79
  %957 = load i32, ptr %6, align 4, !tbaa !73
  %958 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %957, i32 1), !nosanitize !45
  %959 = extractvalue { i32, i1 } %958, 1, !nosanitize !45
  br i1 %959, label %960, label %961, !prof !46, !nosanitize !45

960:                                              ; preds = %956
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

961:                                              ; preds = %956
  %962 = extractvalue { i32, i1 } %958, 0, !nosanitize !45
  store i32 %962, ptr %6, align 4, !tbaa !73
  %963 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %616, i32 1), !nosanitize !45
  %964 = extractvalue { i32, i1 } %963, 1, !nosanitize !45
  br i1 %964, label %965, label %966, !prof !46, !nosanitize !45

965:                                              ; preds = %961
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

966:                                              ; preds = %961
  %967 = extractvalue { i32, i1 } %963, 0, !nosanitize !45
  store i32 %967, ptr %3, align 4, !tbaa !75
  br label %766

968:                                              ; preds = %371
  %969 = load i32, ptr %34, align 8, !tbaa !79
  %970 = icmp eq i32 %969, 0
  %971 = load i32, ptr %6, align 4, !tbaa !73
  br i1 %970, label %1014, label %972

972:                                              ; preds = %968
  %973 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %971, i32 1), !nosanitize !45
  %974 = extractvalue { i32, i1 } %973, 1, !nosanitize !45
  br i1 %974, label %975, label %976, !prof !46, !nosanitize !45

975:                                              ; preds = %1093, %1025, %972
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

976:                                              ; preds = %972
  %977 = extractvalue { i32, i1 } %973, 0, !nosanitize !45
  %978 = load ptr, ptr %7, align 8, !tbaa !34
  %979 = zext i32 %977 to i64
  %980 = getelementptr inbounds nuw i8, ptr %978, i64 %979
  %981 = load i8, ptr %980, align 1, !tbaa !8
  %982 = load i32, ptr %30, align 4, !tbaa !139
  %983 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %982, i32 1), !nosanitize !45
  %984 = extractvalue { i32, i1 } %983, 1, !nosanitize !45
  br i1 %984, label %985, label %986, !prof !46, !nosanitize !45

985:                                              ; preds = %976
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

986:                                              ; preds = %976
  %987 = extractvalue { i32, i1 } %983, 0, !nosanitize !45
  %988 = load ptr, ptr %29, align 8, !tbaa !44
  store i32 %987, ptr %30, align 4, !tbaa !139
  %989 = zext i32 %982 to i64
  %990 = getelementptr inbounds nuw i8, ptr %988, i64 %989
  store i8 0, ptr %990, align 1, !tbaa !8
  %991 = load i32, ptr %30, align 4, !tbaa !139
  %992 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %991, i32 1), !nosanitize !45
  %993 = extractvalue { i32, i1 } %992, 1, !nosanitize !45
  br i1 %993, label %994, label %995, !prof !46, !nosanitize !45

994:                                              ; preds = %986
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

995:                                              ; preds = %986
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
  store i8 %981, ptr %1008, align 1, !tbaa !8
  %1009 = zext i8 %981 to i64
  %1010 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %1009
  %1011 = load i16, ptr %1010, align 4, !tbaa !8
  %1012 = add i16 %1011, 1
  store i16 %1012, ptr %1010, align 4, !tbaa !8
  store i32 0, ptr %34, align 8, !tbaa !79
  %1013 = load i32, ptr %6, align 4, !tbaa !73
  br label %1014

1014:                                             ; preds = %1004, %968
  %1015 = phi i32 [ %1013, %1004 ], [ %971, %968 ]
  %1016 = tail call i32 @llvm.umin.i32(i32 %1015, i32 2)
  store i32 %1016, ptr %10, align 4, !tbaa !76
  %1017 = icmp eq i32 %1, 4
  br i1 %1017, label %1018, label %1083

1018:                                             ; preds = %1014
  %1019 = load i64, ptr %9, align 8, !tbaa !74
  %1020 = icmp sgt i64 %1019, -1
  br i1 %1020, label %1021, label %1025

1021:                                             ; preds = %1018
  %1022 = load ptr, ptr %7, align 8, !tbaa !34
  %1023 = and i64 %1019, 4294967295
  %1024 = getelementptr inbounds nuw i8, ptr %1022, i64 %1023
  br label %1025

1025:                                             ; preds = %1021, %1018
  %1026 = phi ptr [ %1024, %1021 ], [ null, %1018 ]
  %1027 = zext i32 %1015 to i64
  %1028 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1027, i64 %1019), !nosanitize !45
  %1029 = extractvalue { i64, i1 } %1028, 1, !nosanitize !45
  br i1 %1029, label %975, label %1030, !prof !46, !nosanitize !45

1030:                                             ; preds = %1025
  %1031 = extractvalue { i64, i1 } %1028, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1026, i64 noundef %1031, i32 noundef 1) #10
  %1032 = load i32, ptr %6, align 4, !tbaa !73
  %1033 = zext i32 %1032 to i64
  store i64 %1033, ptr %9, align 8, !tbaa !74
  %1034 = load ptr, ptr %0, align 8, !tbaa !20
  %1035 = getelementptr inbounds nuw i8, ptr %1034, i64 56
  %1036 = load ptr, ptr %1035, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %1036) #10
  %1037 = getelementptr inbounds nuw i8, ptr %1036, i64 40
  %1038 = load i64, ptr %1037, align 8, !tbaa !57
  %1039 = getelementptr inbounds nuw i8, ptr %1034, i64 32
  %1040 = load i32, ptr %1039, align 8, !tbaa !107
  %1041 = zext i32 %1040 to i64
  %1042 = tail call i64 @llvm.umin.i64(i64 %1038, i64 %1041)
  %1043 = trunc nuw i64 %1042 to i32
  %1044 = icmp eq i64 %1042, 0
  br i1 %1044, label %1077, label %1045

1045:                                             ; preds = %1030
  %1046 = getelementptr inbounds nuw i8, ptr %1034, i64 24
  %1047 = load ptr, ptr %1046, align 8, !tbaa !106
  %1048 = getelementptr inbounds nuw i8, ptr %1036, i64 32
  %1049 = load ptr, ptr %1048, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1047, ptr align 1 %1049, i64 %1042, i1 false)
  %1050 = load ptr, ptr %1046, align 8, !tbaa !106
  %1051 = getelementptr inbounds nuw i8, ptr %1050, i64 %1042
  store ptr %1051, ptr %1046, align 8, !tbaa !106
  %1052 = load ptr, ptr %1048, align 8, !tbaa !58
  %1053 = getelementptr inbounds nuw i8, ptr %1052, i64 %1042
  store ptr %1053, ptr %1048, align 8, !tbaa !58
  %1054 = getelementptr inbounds nuw i8, ptr %1034, i64 40
  %1055 = load i64, ptr %1054, align 8, !tbaa !108
  %1056 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1055, i64 %1042), !nosanitize !45
  %1057 = extractvalue { i64, i1 } %1056, 1, !nosanitize !45
  br i1 %1057, label %1058, label %1059, !prof !46, !nosanitize !45

1058:                                             ; preds = %1045
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1059:                                             ; preds = %1045
  %1060 = extractvalue { i64, i1 } %1056, 0, !nosanitize !45
  store i64 %1060, ptr %1054, align 8, !tbaa !108
  %1061 = load i32, ptr %1039, align 8, !tbaa !107
  %1062 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1061, i32 %1043), !nosanitize !45
  %1063 = extractvalue { i32, i1 } %1062, 1, !nosanitize !45
  br i1 %1063, label %1064, label %1065, !prof !46, !nosanitize !45

1064:                                             ; preds = %1059
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

1065:                                             ; preds = %1059
  %1066 = extractvalue { i32, i1 } %1062, 0, !nosanitize !45
  store i32 %1066, ptr %1039, align 8, !tbaa !107
  %1067 = load i64, ptr %1037, align 8, !tbaa !57
  %1068 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1067, i64 %1042), !nosanitize !45
  %1069 = extractvalue { i64, i1 } %1068, 1, !nosanitize !45
  br i1 %1069, label %1070, label %1071, !prof !46, !nosanitize !45

1070:                                             ; preds = %1065
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

1071:                                             ; preds = %1065
  %1072 = extractvalue { i64, i1 } %1068, 0, !nosanitize !45
  store i64 %1072, ptr %1037, align 8, !tbaa !57
  %1073 = icmp eq i64 %1072, 0
  br i1 %1073, label %1074, label %1077

1074:                                             ; preds = %1071
  %1075 = getelementptr inbounds nuw i8, ptr %1036, i64 16
  %1076 = load ptr, ptr %1075, align 8, !tbaa !40
  store ptr %1076, ptr %1048, align 8, !tbaa !58
  br label %1077

1077:                                             ; preds = %1074, %1071, %1030
  %1078 = load ptr, ptr %0, align 8, !tbaa !20
  %1079 = getelementptr inbounds nuw i8, ptr %1078, i64 32
  %1080 = load i32, ptr %1079, align 8, !tbaa !107
  %1081 = icmp eq i32 %1080, 0
  %1082 = select i1 %1081, i32 2, i32 3
  br label %1151

1083:                                             ; preds = %1014
  %1084 = load i32, ptr %30, align 4, !tbaa !139
  %1085 = icmp eq i32 %1084, 0
  br i1 %1085, label %1150, label %1086

1086:                                             ; preds = %1083
  %1087 = load i64, ptr %9, align 8, !tbaa !74
  %1088 = icmp sgt i64 %1087, -1
  br i1 %1088, label %1089, label %1093

1089:                                             ; preds = %1086
  %1090 = load ptr, ptr %7, align 8, !tbaa !34
  %1091 = and i64 %1087, 4294967295
  %1092 = getelementptr inbounds nuw i8, ptr %1090, i64 %1091
  br label %1093

1093:                                             ; preds = %1089, %1086
  %1094 = phi ptr [ %1092, %1089 ], [ null, %1086 ]
  %1095 = zext i32 %1015 to i64
  %1096 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1095, i64 %1087), !nosanitize !45
  %1097 = extractvalue { i64, i1 } %1096, 1, !nosanitize !45
  br i1 %1097, label %975, label %1098, !prof !46, !nosanitize !45

1098:                                             ; preds = %1093
  %1099 = extractvalue { i64, i1 } %1096, 0, !nosanitize !45
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1094, i64 noundef %1099, i32 noundef 0) #10
  %1100 = load i32, ptr %6, align 4, !tbaa !73
  %1101 = zext i32 %1100 to i64
  store i64 %1101, ptr %9, align 8, !tbaa !74
  %1102 = load ptr, ptr %0, align 8, !tbaa !20
  %1103 = getelementptr inbounds nuw i8, ptr %1102, i64 56
  %1104 = load ptr, ptr %1103, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %1104) #10
  %1105 = getelementptr inbounds nuw i8, ptr %1104, i64 40
  %1106 = load i64, ptr %1105, align 8, !tbaa !57
  %1107 = getelementptr inbounds nuw i8, ptr %1102, i64 32
  %1108 = load i32, ptr %1107, align 8, !tbaa !107
  %1109 = zext i32 %1108 to i64
  %1110 = tail call i64 @llvm.umin.i64(i64 %1106, i64 %1109)
  %1111 = trunc nuw i64 %1110 to i32
  %1112 = icmp eq i64 %1110, 0
  br i1 %1112, label %1145, label %1113

1113:                                             ; preds = %1098
  %1114 = getelementptr inbounds nuw i8, ptr %1102, i64 24
  %1115 = load ptr, ptr %1114, align 8, !tbaa !106
  %1116 = getelementptr inbounds nuw i8, ptr %1104, i64 32
  %1117 = load ptr, ptr %1116, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1115, ptr align 1 %1117, i64 %1110, i1 false)
  %1118 = load ptr, ptr %1114, align 8, !tbaa !106
  %1119 = getelementptr inbounds nuw i8, ptr %1118, i64 %1110
  store ptr %1119, ptr %1114, align 8, !tbaa !106
  %1120 = load ptr, ptr %1116, align 8, !tbaa !58
  %1121 = getelementptr inbounds nuw i8, ptr %1120, i64 %1110
  store ptr %1121, ptr %1116, align 8, !tbaa !58
  %1122 = getelementptr inbounds nuw i8, ptr %1102, i64 40
  %1123 = load i64, ptr %1122, align 8, !tbaa !108
  %1124 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1123, i64 %1110), !nosanitize !45
  %1125 = extractvalue { i64, i1 } %1124, 1, !nosanitize !45
  br i1 %1125, label %1126, label %1127, !prof !46, !nosanitize !45

1126:                                             ; preds = %1113
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !45
  unreachable, !nosanitize !45

1127:                                             ; preds = %1113
  %1128 = extractvalue { i64, i1 } %1124, 0, !nosanitize !45
  store i64 %1128, ptr %1122, align 8, !tbaa !108
  %1129 = load i32, ptr %1107, align 8, !tbaa !107
  %1130 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1129, i32 %1111), !nosanitize !45
  %1131 = extractvalue { i32, i1 } %1130, 1, !nosanitize !45
  br i1 %1131, label %1132, label %1133, !prof !46, !nosanitize !45

1132:                                             ; preds = %1127
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

1133:                                             ; preds = %1127
  %1134 = extractvalue { i32, i1 } %1130, 0, !nosanitize !45
  store i32 %1134, ptr %1107, align 8, !tbaa !107
  %1135 = load i64, ptr %1105, align 8, !tbaa !57
  %1136 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1135, i64 %1110), !nosanitize !45
  %1137 = extractvalue { i64, i1 } %1136, 1, !nosanitize !45
  br i1 %1137, label %1138, label %1139, !prof !46, !nosanitize !45

1138:                                             ; preds = %1133
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !45
  unreachable, !nosanitize !45

1139:                                             ; preds = %1133
  %1140 = extractvalue { i64, i1 } %1136, 0, !nosanitize !45
  store i64 %1140, ptr %1105, align 8, !tbaa !57
  %1141 = icmp eq i64 %1140, 0
  br i1 %1141, label %1142, label %1145

1142:                                             ; preds = %1139
  %1143 = getelementptr inbounds nuw i8, ptr %1104, i64 16
  %1144 = load ptr, ptr %1143, align 8, !tbaa !40
  store ptr %1144, ptr %1116, align 8, !tbaa !58
  br label %1145

1145:                                             ; preds = %1142, %1139, %1098
  %1146 = load ptr, ptr %0, align 8, !tbaa !20
  %1147 = getelementptr inbounds nuw i8, ptr %1146, i64 32
  %1148 = load i32, ptr %1147, align 8, !tbaa !107
  %1149 = icmp eq i32 %1148, 0
  br i1 %1149, label %1151, label %1150

1150:                                             ; preds = %1145, %1083
  br label %1151

1151:                                             ; preds = %1150, %1145, %1077, %950, %826, %367
  %1152 = phi i32 [ 0, %1145 ], [ %1082, %1077 ], [ 1, %1150 ], [ 0, %367 ], [ 0, %826 ], [ 0, %950 ]
  ret i32 %1152
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
