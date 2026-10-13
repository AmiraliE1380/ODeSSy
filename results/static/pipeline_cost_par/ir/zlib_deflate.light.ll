; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_deflate.light.mid.ll'
source_filename = "/mydata/zlib/deflate.c"
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
  %7 = load i8, ptr %2, align 1, !tbaa !5
  %8 = icmp ne i8 %7, 49
  %9 = icmp ne i32 %3, 112
  %10 = or i1 %9, %8
  br i1 %10, label %153, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %0, null
  br i1 %12, label %153, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %14, align 8, !tbaa !8
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
  %33 = tail call ptr %21(ptr noundef %32, i32 noundef 1, i32 noundef 5968) #11
  %34 = icmp eq ptr %33, null
  br i1 %34, label %153, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds nuw i8, ptr %33, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5960) %36, i8 0, i64 5960, i1 false)
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %33, ptr %37, align 8, !tbaa !18
  store ptr %0, ptr %33, align 8, !tbaa !19
  store i32 42, ptr %36, align 8, !tbaa !28
  %38 = getelementptr inbounds nuw i8, ptr %33, i64 48
  store i32 1, ptr %38, align 8, !tbaa !29
  %39 = getelementptr inbounds nuw i8, ptr %33, i64 84
  store i32 15, ptr %39, align 4, !tbaa !30
  %40 = getelementptr inbounds nuw i8, ptr %33, i64 80
  store i32 32768, ptr %40, align 8, !tbaa !31
  %41 = getelementptr inbounds nuw i8, ptr %33, i64 88
  store i32 32767, ptr %41, align 8, !tbaa !32
  %42 = getelementptr inbounds nuw i8, ptr %33, i64 132
  store <4 x i32> <i32 32768, i32 15, i32 32767, i32 5>, ptr %42, align 4, !tbaa !33
  %43 = load ptr, ptr %15, align 8, !tbaa !15
  %44 = load ptr, ptr %31, align 8, !tbaa !16
  %45 = tail call ptr %43(ptr noundef %44, i32 noundef 32768, i32 noundef 2) #11
  %46 = getelementptr inbounds nuw i8, ptr %33, i64 96
  store ptr %45, ptr %46, align 8, !tbaa !34
  %47 = load ptr, ptr %15, align 8, !tbaa !15
  %48 = load ptr, ptr %31, align 8, !tbaa !16
  %49 = load i32, ptr %40, align 8, !tbaa !31
  %50 = tail call ptr %47(ptr noundef %48, i32 noundef %49, i32 noundef 2) #11
  %51 = getelementptr inbounds nuw i8, ptr %33, i64 112
  store ptr %50, ptr %51, align 8, !tbaa !35
  %52 = load ptr, ptr %15, align 8, !tbaa !15
  %53 = load ptr, ptr %31, align 8, !tbaa !16
  %54 = load i32, ptr %42, align 4, !tbaa !36
  %55 = tail call ptr %52(ptr noundef %53, i32 noundef %54, i32 noundef 2) #11
  %56 = getelementptr inbounds nuw i8, ptr %33, i64 120
  store ptr %55, ptr %56, align 8, !tbaa !37
  %57 = getelementptr inbounds nuw i8, ptr %33, i64 5952
  store i64 0, ptr %57, align 8, !tbaa !38
  %58 = getelementptr inbounds nuw i8, ptr %33, i64 5896
  store i32 16384, ptr %58, align 8, !tbaa !39
  %59 = load ptr, ptr %15, align 8, !tbaa !15
  %60 = load ptr, ptr %31, align 8, !tbaa !16
  %61 = tail call ptr %59(ptr noundef %60, i32 noundef 16384, i32 noundef 4) #11
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
  store i32 666, ptr %36, align 8, !tbaa !28
  %78 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 48), align 16, !tbaa !42
  store ptr %78, ptr %14, align 8, !tbaa !8
  %79 = load ptr, ptr %15, align 8, !tbaa !15
  %80 = icmp eq ptr %79, null
  br i1 %80, label %153, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %22, align 8, !tbaa !17
  %83 = icmp eq ptr %82, null
  br i1 %83, label %153, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr %37, align 8, !tbaa !18
  %86 = icmp eq ptr %85, null
  br i1 %86, label %153, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %85, align 8, !tbaa !19
  %89 = icmp eq ptr %88, %0
  br i1 %89, label %90, label %153

90:                                               ; preds = %87
  %91 = getelementptr inbounds nuw i8, ptr %85, i64 8
  %92 = load i32, ptr %91, align 8, !tbaa !28
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
  tail call void %82(ptr noundef %98, ptr noundef nonnull %95) #11
  %99 = load ptr, ptr %37, align 8, !tbaa !18
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
  tail call void %102(ptr noundef %108, ptr noundef nonnull %105) #11
  %109 = load ptr, ptr %37, align 8, !tbaa !18
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
  tail call void %112(ptr noundef %118, ptr noundef nonnull %115) #11
  %119 = load ptr, ptr %37, align 8, !tbaa !18
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
  tail call void %122(ptr noundef %128, ptr noundef nonnull %125) #11
  %129 = load ptr, ptr %22, align 8, !tbaa !17
  %130 = load ptr, ptr %37, align 8, !tbaa !18
  br label %131

131:                                              ; preds = %127, %121
  %132 = phi ptr [ %130, %127 ], [ %123, %121 ]
  %133 = phi ptr [ %129, %127 ], [ %122, %121 ]
  %134 = load ptr, ptr %31, align 8, !tbaa !16
  tail call void %133(ptr noundef %134, ptr noundef %132) #11
  store ptr null, ptr %37, align 8, !tbaa !18
  br label %153

135:                                              ; preds = %72
  %136 = getelementptr inbounds nuw i8, ptr %61, i64 %64
  %137 = getelementptr inbounds nuw i8, ptr %33, i64 5888
  store ptr %136, ptr %137, align 8, !tbaa !43
  %138 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %63, i32 1), !nosanitize !44
  %139 = extractvalue { i32, i1 } %138, 1, !nosanitize !44
  br i1 %139, label %140, label %141, !prof !45, !nosanitize !44

140:                                              ; preds = %135
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

141:                                              ; preds = %135
  %142 = extractvalue { i32, i1 } %138, 0, !nosanitize !44
  %143 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %142, i32 3), !nosanitize !44
  %144 = extractvalue { i32, i1 } %143, 1, !nosanitize !44
  br i1 %144, label %145, label %146, !prof !45, !nosanitize !44

145:                                              ; preds = %141
  tail call void @llvm.ubsantrap(i8 12) #12, !nosanitize !44
  unreachable, !nosanitize !44

146:                                              ; preds = %141
  %147 = extractvalue { i32, i1 } %143, 0, !nosanitize !44
  %148 = getelementptr inbounds nuw i8, ptr %33, i64 5904
  store i32 %147, ptr %148, align 8, !tbaa !46
  %149 = getelementptr inbounds nuw i8, ptr %33, i64 196
  store i32 %28, ptr %149, align 4, !tbaa !47
  %150 = getelementptr inbounds nuw i8, ptr %33, i64 200
  store i32 0, ptr %150, align 8, !tbaa !48
  %151 = getelementptr inbounds nuw i8, ptr %33, i64 72
  store i8 8, ptr %151, align 8, !tbaa !49
  %152 = tail call i32 @deflateReset(ptr noundef nonnull %0)
  br label %153

153:                                              ; preds = %146, %131, %90, %87, %84, %81, %77, %30, %26, %11, %6, %4
  %154 = phi i32 [ %152, %146 ], [ -6, %6 ], [ -6, %4 ], [ -2, %11 ], [ -2, %26 ], [ -4, %30 ], [ -4, %77 ], [ -4, %81 ], [ -4, %84 ], [ -4, %87 ], [ -4, %90 ], [ -4, %131 ]
  ret i32 %154
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @deflateInit2_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly captures(address_is_null) %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq ptr %6, null
  br i1 %9, label %197, label %10

10:                                               ; preds = %8
  %11 = load i8, ptr %6, align 1, !tbaa !5
  %12 = icmp ne i8 %11, 49
  %13 = icmp ne i32 %7, 112
  %14 = or i1 %13, %12
  br i1 %14, label %197, label %15

15:                                               ; preds = %10
  %16 = icmp eq ptr %0, null
  br i1 %16, label %197, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %18, align 8, !tbaa !8
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
  br i1 %35, label %197, label %36

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
  br i1 %56, label %197, label %57

57:                                               ; preds = %42
  %58 = icmp eq i32 %43, 8
  %59 = and i1 %58, %44
  br i1 %59, label %197, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %62 = load ptr, ptr %61, align 8, !tbaa !16
  %63 = tail call ptr %25(ptr noundef %62, i32 noundef 1, i32 noundef 5968) #11
  %64 = icmp eq ptr %63, null
  br i1 %64, label %197, label %65

65:                                               ; preds = %60
  %66 = select i1 %58, i32 9, i32 %43
  %67 = getelementptr inbounds nuw i8, ptr %63, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5960) %67, i8 0, i64 5960, i1 false)
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %63, ptr %68, align 8, !tbaa !18
  store ptr %0, ptr %63, align 8, !tbaa !19
  store i32 42, ptr %67, align 8, !tbaa !28
  %69 = getelementptr inbounds nuw i8, ptr %63, i64 48
  store i32 %45, ptr %69, align 8, !tbaa !29
  %70 = getelementptr inbounds nuw i8, ptr %63, i64 84
  store i32 %66, ptr %70, align 4, !tbaa !30
  %71 = shl nuw nsw i32 1, %66
  %72 = getelementptr inbounds nuw i8, ptr %63, i64 80
  store i32 %71, ptr %72, align 8, !tbaa !31
  %73 = add nsw i32 %71, -1
  %74 = getelementptr inbounds nuw i8, ptr %63, i64 88
  store i32 %73, ptr %74, align 8, !tbaa !32
  %75 = add nuw nsw i32 %4, 7
  %76 = getelementptr inbounds nuw i8, ptr %63, i64 136
  store i32 %75, ptr %76, align 8, !tbaa !50
  %77 = shl nuw nsw i32 128, %4
  %78 = getelementptr inbounds nuw i8, ptr %63, i64 132
  store i32 %77, ptr %78, align 4, !tbaa !36
  %79 = add nsw i32 %77, -1
  %80 = getelementptr inbounds nuw i8, ptr %63, i64 140
  store i32 %79, ptr %80, align 4, !tbaa !51
  %81 = trunc nuw nsw i32 %4 to i8
  %82 = add nuw nsw i8 %81, 9
  %83 = udiv i8 %82, 3
  %84 = zext nneg i8 %83 to i32
  %85 = getelementptr inbounds nuw i8, ptr %63, i64 144
  store i32 %84, ptr %85, align 8, !tbaa !52
  %86 = load ptr, ptr %19, align 8, !tbaa !15
  %87 = load ptr, ptr %61, align 8, !tbaa !16
  %88 = tail call ptr %86(ptr noundef %87, i32 noundef %71, i32 noundef 2) #11
  %89 = getelementptr inbounds nuw i8, ptr %63, i64 96
  store ptr %88, ptr %89, align 8, !tbaa !34
  %90 = load ptr, ptr %19, align 8, !tbaa !15
  %91 = load ptr, ptr %61, align 8, !tbaa !16
  %92 = load i32, ptr %72, align 8, !tbaa !31
  %93 = tail call ptr %90(ptr noundef %91, i32 noundef %92, i32 noundef 2) #11
  %94 = getelementptr inbounds nuw i8, ptr %63, i64 112
  store ptr %93, ptr %94, align 8, !tbaa !35
  %95 = load ptr, ptr %19, align 8, !tbaa !15
  %96 = load ptr, ptr %61, align 8, !tbaa !16
  %97 = load i32, ptr %78, align 4, !tbaa !36
  %98 = tail call ptr %95(ptr noundef %96, i32 noundef %97, i32 noundef 2) #11
  %99 = getelementptr inbounds nuw i8, ptr %63, i64 120
  store ptr %98, ptr %99, align 8, !tbaa !37
  %100 = getelementptr inbounds nuw i8, ptr %63, i64 5952
  store i64 0, ptr %100, align 8, !tbaa !38
  %101 = shl nuw nsw i32 64, %4
  %102 = getelementptr inbounds nuw i8, ptr %63, i64 5896
  store i32 %101, ptr %102, align 8, !tbaa !39
  %103 = load ptr, ptr %19, align 8, !tbaa !15
  %104 = load ptr, ptr %61, align 8, !tbaa !16
  %105 = tail call ptr %103(ptr noundef %104, i32 noundef %101, i32 noundef 4) #11
  %106 = getelementptr inbounds nuw i8, ptr %63, i64 16
  store ptr %105, ptr %106, align 8, !tbaa !40
  %107 = load i32, ptr %102, align 8, !tbaa !39
  %108 = zext i32 %107 to i64
  %109 = shl nuw nsw i64 %108, 2
  %110 = getelementptr inbounds nuw i8, ptr %63, i64 24
  store i64 %109, ptr %110, align 8, !tbaa !41
  %111 = load ptr, ptr %89, align 8, !tbaa !34
  %112 = icmp eq ptr %111, null
  br i1 %112, label %121, label %113

113:                                              ; preds = %65
  %114 = load ptr, ptr %94, align 8, !tbaa !35
  %115 = icmp eq ptr %114, null
  br i1 %115, label %121, label %116

116:                                              ; preds = %113
  %117 = load ptr, ptr %99, align 8, !tbaa !37
  %118 = icmp eq ptr %117, null
  %119 = icmp eq ptr %105, null
  %120 = select i1 %118, i1 true, i1 %119
  br i1 %120, label %121, label %179

121:                                              ; preds = %116, %113, %65
  store i32 666, ptr %67, align 8, !tbaa !28
  %122 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 48), align 16, !tbaa !42
  store ptr %122, ptr %18, align 8, !tbaa !8
  %123 = load ptr, ptr %19, align 8, !tbaa !15
  %124 = icmp eq ptr %123, null
  br i1 %124, label %197, label %125

125:                                              ; preds = %121
  %126 = load ptr, ptr %26, align 8, !tbaa !17
  %127 = icmp eq ptr %126, null
  br i1 %127, label %197, label %128

128:                                              ; preds = %125
  %129 = load ptr, ptr %68, align 8, !tbaa !18
  %130 = icmp eq ptr %129, null
  br i1 %130, label %197, label %131

131:                                              ; preds = %128
  %132 = load ptr, ptr %129, align 8, !tbaa !19
  %133 = icmp eq ptr %132, %0
  br i1 %133, label %134, label %197

134:                                              ; preds = %131
  %135 = getelementptr inbounds nuw i8, ptr %129, i64 8
  %136 = load i32, ptr %135, align 8, !tbaa !28
  switch i32 %136, label %197 [
    i32 42, label %137
    i32 57, label %137
    i32 69, label %137
    i32 73, label %137
    i32 91, label %137
    i32 103, label %137
    i32 113, label %137
    i32 666, label %137
  ]

137:                                              ; preds = %134, %134, %134, %134, %134, %134, %134, %134
  %138 = getelementptr inbounds nuw i8, ptr %129, i64 16
  %139 = load ptr, ptr %138, align 8, !tbaa !40
  %140 = icmp eq ptr %139, null
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %126(ptr noundef %142, ptr noundef nonnull %139) #11
  %143 = load ptr, ptr %68, align 8, !tbaa !18
  %144 = load ptr, ptr %26, align 8, !tbaa !17
  br label %145

145:                                              ; preds = %141, %137
  %146 = phi ptr [ %144, %141 ], [ %126, %137 ]
  %147 = phi ptr [ %143, %141 ], [ %129, %137 ]
  %148 = getelementptr inbounds nuw i8, ptr %147, i64 120
  %149 = load ptr, ptr %148, align 8, !tbaa !37
  %150 = icmp eq ptr %149, null
  br i1 %150, label %155, label %151

151:                                              ; preds = %145
  %152 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %146(ptr noundef %152, ptr noundef nonnull %149) #11
  %153 = load ptr, ptr %68, align 8, !tbaa !18
  %154 = load ptr, ptr %26, align 8, !tbaa !17
  br label %155

155:                                              ; preds = %151, %145
  %156 = phi ptr [ %154, %151 ], [ %146, %145 ]
  %157 = phi ptr [ %153, %151 ], [ %147, %145 ]
  %158 = getelementptr inbounds nuw i8, ptr %157, i64 112
  %159 = load ptr, ptr %158, align 8, !tbaa !35
  %160 = icmp eq ptr %159, null
  br i1 %160, label %165, label %161

161:                                              ; preds = %155
  %162 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %156(ptr noundef %162, ptr noundef nonnull %159) #11
  %163 = load ptr, ptr %68, align 8, !tbaa !18
  %164 = load ptr, ptr %26, align 8, !tbaa !17
  br label %165

165:                                              ; preds = %161, %155
  %166 = phi ptr [ %164, %161 ], [ %156, %155 ]
  %167 = phi ptr [ %163, %161 ], [ %157, %155 ]
  %168 = getelementptr inbounds nuw i8, ptr %167, i64 96
  %169 = load ptr, ptr %168, align 8, !tbaa !34
  %170 = icmp eq ptr %169, null
  br i1 %170, label %175, label %171

171:                                              ; preds = %165
  %172 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %166(ptr noundef %172, ptr noundef nonnull %169) #11
  %173 = load ptr, ptr %26, align 8, !tbaa !17
  %174 = load ptr, ptr %68, align 8, !tbaa !18
  br label %175

175:                                              ; preds = %171, %165
  %176 = phi ptr [ %174, %171 ], [ %167, %165 ]
  %177 = phi ptr [ %173, %171 ], [ %166, %165 ]
  %178 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %177(ptr noundef %178, ptr noundef %176) #11
  store ptr null, ptr %68, align 8, !tbaa !18
  br label %197

179:                                              ; preds = %116
  %180 = getelementptr inbounds nuw i8, ptr %105, i64 %108
  %181 = getelementptr inbounds nuw i8, ptr %63, i64 5888
  store ptr %180, ptr %181, align 8, !tbaa !43
  %182 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %107, i32 1), !nosanitize !44
  %183 = extractvalue { i32, i1 } %182, 1, !nosanitize !44
  br i1 %183, label %184, label %185, !prof !45, !nosanitize !44

184:                                              ; preds = %179
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

185:                                              ; preds = %179
  %186 = extractvalue { i32, i1 } %182, 0, !nosanitize !44
  %187 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %186, i32 3), !nosanitize !44
  %188 = extractvalue { i32, i1 } %187, 1, !nosanitize !44
  br i1 %188, label %189, label %190, !prof !45, !nosanitize !44

189:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 12) #12, !nosanitize !44
  unreachable, !nosanitize !44

190:                                              ; preds = %185
  %191 = extractvalue { i32, i1 } %187, 0, !nosanitize !44
  %192 = getelementptr inbounds nuw i8, ptr %63, i64 5904
  store i32 %191, ptr %192, align 8, !tbaa !46
  %193 = getelementptr inbounds nuw i8, ptr %63, i64 196
  store i32 %32, ptr %193, align 4, !tbaa !47
  %194 = getelementptr inbounds nuw i8, ptr %63, i64 200
  store i32 %5, ptr %194, align 8, !tbaa !48
  %195 = getelementptr inbounds nuw i8, ptr %63, i64 72
  store i8 8, ptr %195, align 8, !tbaa !49
  %196 = tail call i32 @deflateReset(ptr noundef nonnull %0)
  br label %197

197:                                              ; preds = %190, %175, %134, %131, %128, %125, %121, %60, %57, %42, %34, %15, %10, %8
  %198 = phi i32 [ %196, %190 ], [ -6, %10 ], [ -6, %8 ], [ -2, %15 ], [ -2, %34 ], [ -2, %57 ], [ -2, %42 ], [ -4, %60 ], [ -4, %121 ], [ -4, %125 ], [ -4, %128 ], [ -4, %131 ], [ -4, %134 ], [ -4, %175 ]
  ret i32 %198
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #1

declare void @zcfree(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
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
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %70, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !19
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %70

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !28
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
  %28 = load ptr, ptr %12, align 8, !tbaa !18
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
  %39 = load ptr, ptr %12, align 8, !tbaa !18
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
  %50 = load ptr, ptr %12, align 8, !tbaa !18
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
  %62 = load ptr, ptr %12, align 8, !tbaa !18
  br label %63

63:                                               ; preds = %58, %52
  %64 = phi ptr [ %62, %58 ], [ %54, %52 ]
  %65 = phi ptr [ %61, %58 ], [ %53, %52 ]
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %67 = load ptr, ptr %66, align 8, !tbaa !16
  tail call void %65(ptr noundef %67, ptr noundef %64) #11
  store ptr null, ptr %12, align 8, !tbaa !18
  %68 = icmp eq i32 %20, 113
  %69 = select i1 %68, i32 -3, i32 0
  br label %70

70:                                               ; preds = %63, %18, %15, %11, %7, %3, %1
  %71 = phi i32 [ %69, %63 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %71
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateReset(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %95, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %95, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %95, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %95, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !19
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %95

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !28
  switch i32 %20, label %95 [
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
  %30 = load i32, ptr %29, align 8, !tbaa !29
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %30), !nosanitize !44
  %34 = extractvalue { i32, i1 } %33, 1, !nosanitize !44
  br i1 %34, label %35, label %36, !prof !45, !nosanitize !44

35:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 13) #13, !nosanitize !44
  unreachable, !nosanitize !44

36:                                               ; preds = %32
  %37 = extractvalue { i32, i1 } %33, 0, !nosanitize !44
  store i32 %37, ptr %29, align 8, !tbaa !29
  br label %38

38:                                               ; preds = %36, %21
  %39 = phi i32 [ %37, %36 ], [ %30, %21 ]
  %40 = icmp eq i32 %39, 2
  %41 = select i1 %40, i32 57, i32 42
  store i32 %41, ptr %19, align 8, !tbaa !28
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
  store i64 %47, ptr %48, align 8, !tbaa !57
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %49, align 4, !tbaa !58
  tail call void @_tr_init(ptr noundef nonnull %13) #11
  %50 = load ptr, ptr %12, align 8, !tbaa !18
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 80
  %52 = load i32, ptr %51, align 8, !tbaa !31
  %53 = zext i32 %52 to i64
  %54 = shl nuw nsw i64 %53, 1
  %55 = getelementptr inbounds nuw i8, ptr %50, i64 104
  store i64 %54, ptr %55, align 8, !tbaa !59
  %56 = getelementptr inbounds nuw i8, ptr %50, i64 132
  %57 = load i32, ptr %56, align 4, !tbaa !36
  %58 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %57, i32 1), !nosanitize !44
  %59 = extractvalue { i32, i1 } %58, 1, !nosanitize !44
  br i1 %59, label %60, label %61, !prof !45, !nosanitize !44

60:                                               ; preds = %46
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

61:                                               ; preds = %46
  %62 = extractvalue { i32, i1 } %58, 0, !nosanitize !44
  %63 = getelementptr inbounds nuw i8, ptr %50, i64 120
  %64 = load ptr, ptr %63, align 8, !tbaa !37
  %65 = zext i32 %62 to i64
  %66 = getelementptr inbounds nuw [2 x i8], ptr %64, i64 %65
  store i16 0, ptr %66, align 2, !tbaa !60
  %67 = shl nuw nsw i64 %65, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %64, i8 0, i64 %67, i1 false)
  %68 = getelementptr inbounds nuw i8, ptr %50, i64 5960
  store i32 0, ptr %68, align 8, !tbaa !61
  %69 = getelementptr inbounds nuw i8, ptr %50, i64 196
  %70 = load i32, ptr %69, align 4, !tbaa !47
  %71 = sext i32 %70 to i64
  %.split = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %71
  %72 = getelementptr inbounds nuw i8, ptr %.split, i64 2
  %73 = load i16, ptr %72, align 2, !tbaa !62
  %74 = zext i16 %73 to i32
  %75 = getelementptr inbounds nuw i8, ptr %50, i64 192
  store i32 %74, ptr %75, align 8, !tbaa !64
  %76 = load i16, ptr %.split, align 16, !tbaa !65
  %77 = zext i16 %76 to i32
  %78 = getelementptr inbounds nuw i8, ptr %50, i64 204
  store i32 %77, ptr %78, align 4, !tbaa !66
  %79 = getelementptr inbounds nuw i8, ptr %.split, i64 4
  %80 = load i16, ptr %79, align 4, !tbaa !67
  %81 = zext i16 %80 to i32
  %82 = getelementptr inbounds nuw i8, ptr %50, i64 208
  store i32 %81, ptr %82, align 8, !tbaa !68
  %83 = getelementptr inbounds nuw i8, ptr %.split, i64 6
  %84 = load i16, ptr %83, align 2, !tbaa !69
  %85 = zext i16 %84 to i32
  %86 = getelementptr inbounds nuw i8, ptr %50, i64 188
  store i32 %85, ptr %86, align 4, !tbaa !70
  %87 = getelementptr inbounds nuw i8, ptr %50, i64 172
  store i32 0, ptr %87, align 4, !tbaa !71
  %88 = getelementptr inbounds nuw i8, ptr %50, i64 152
  store i64 0, ptr %88, align 8, !tbaa !72
  %89 = getelementptr inbounds nuw i8, ptr %50, i64 180
  store i32 0, ptr %89, align 4, !tbaa !73
  %90 = getelementptr inbounds nuw i8, ptr %50, i64 5932
  store i32 0, ptr %90, align 4, !tbaa !74
  %91 = getelementptr inbounds nuw i8, ptr %50, i64 184
  store i32 2, ptr %91, align 8, !tbaa !75
  %92 = getelementptr inbounds nuw i8, ptr %50, i64 160
  store i32 2, ptr %92, align 8, !tbaa !76
  %93 = getelementptr inbounds nuw i8, ptr %50, i64 168
  store i32 0, ptr %93, align 8, !tbaa !77
  %94 = getelementptr inbounds nuw i8, ptr %50, i64 128
  store i32 0, ptr %94, align 8, !tbaa !78
  br label %95

95:                                               ; preds = %61, %18, %15, %11, %7, %3, %1
  %96 = phi i32 [ 0, %61 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateSetDictionary(ptr noundef captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %721, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %721, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %721, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %721, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !19
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %721

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !28
  switch i32 %22, label %721 [
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
  br i1 %24, label %721, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %27 = load i32, ptr %26, align 8, !tbaa !29
  switch i32 %27, label %34 [
    i32 2, label %721
    i32 1, label %28
  ]

28:                                               ; preds = %25
  %29 = icmp eq i32 %22, 42
  br i1 %29, label %30, label %721

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %32 = load i32, ptr %31, align 4, !tbaa !73
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %721

34:                                               ; preds = %25
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %36 = load i32, ptr %35, align 4, !tbaa !73
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %721

38:                                               ; preds = %34
  store i32 0, ptr %26, align 8, !tbaa !29
  %39 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %40 = load i32, ptr %39, align 8, !tbaa !31
  %41 = icmp ult i32 %2, %40
  br i1 %41, label %80, label %49

42:                                               ; preds = %30
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %44 = load i64, ptr %43, align 8, !tbaa !57
  %45 = tail call i64 @adler32(i64 noundef %44, ptr noundef nonnull %1, i32 noundef %2) #11
  store i64 %45, ptr %43, align 8, !tbaa !57
  store i32 0, ptr %26, align 8, !tbaa !29
  %46 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %47 = load i32, ptr %46, align 8, !tbaa !31
  %48 = icmp ult i32 %2, %47
  br i1 %48, label %80, label %69

49:                                               ; preds = %38
  %50 = icmp eq i32 %27, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %49
  %52 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %53 = load i32, ptr %52, align 4, !tbaa !36
  %54 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %53, i32 1), !nosanitize !44
  %55 = extractvalue { i32, i1 } %54, 1, !nosanitize !44
  br i1 %55, label %56, label %57, !prof !45, !nosanitize !44

56:                                               ; preds = %51
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

57:                                               ; preds = %51
  %58 = extractvalue { i32, i1 } %54, 0, !nosanitize !44
  %59 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %60 = load ptr, ptr %59, align 8, !tbaa !37
  %61 = zext i32 %58 to i64
  %62 = getelementptr inbounds nuw [2 x i8], ptr %60, i64 %61
  store i16 0, ptr %62, align 2, !tbaa !60
  %63 = shl nuw nsw i64 %61, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %60, i8 0, i64 %63, i1 false)
  %64 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  store i32 0, ptr %64, align 8, !tbaa !61
  %65 = getelementptr inbounds nuw i8, ptr %15, i64 172
  store i32 0, ptr %65, align 4, !tbaa !71
  %66 = getelementptr inbounds nuw i8, ptr %15, i64 152
  store i64 0, ptr %66, align 8, !tbaa !72
  %67 = getelementptr inbounds nuw i8, ptr %15, i64 5932
  store i32 0, ptr %67, align 4, !tbaa !74
  %68 = load i32, ptr %39, align 8, !tbaa !31
  br label %69

69:                                               ; preds = %57, %49, %42
  %70 = phi ptr [ %35, %57 ], [ %35, %49 ], [ %31, %42 ]
  %71 = phi ptr [ %39, %57 ], [ %39, %49 ], [ %46, %42 ]
  %72 = phi i32 [ %68, %57 ], [ %40, %49 ], [ %47, %42 ]
  %73 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2, i32 %72), !nosanitize !44
  %74 = extractvalue { i32, i1 } %73, 1, !nosanitize !44
  br i1 %74, label %75, label %76, !prof !45, !nosanitize !44

75:                                               ; preds = %69
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

76:                                               ; preds = %69
  %77 = extractvalue { i32, i1 } %73, 0, !nosanitize !44
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
  %87 = load i32, ptr %86, align 8, !tbaa !79
  %88 = load ptr, ptr %0, align 8, !tbaa !80
  store i32 %84, ptr %86, align 8, !tbaa !79
  store ptr %85, ptr %0, align 8, !tbaa !80
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
  %104 = load i32, ptr %82, align 4, !tbaa !73
  br label %105

105:                                              ; preds = %338, %80
  %106 = phi i32 [ %266, %338 ], [ %104, %80 ]
  %107 = load i64, ptr %89, align 8, !tbaa !59
  %108 = zext i32 %106 to i64
  %109 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %107, i64 %108), !nosanitize !44
  %110 = extractvalue { i64, i1 } %109, 1, !nosanitize !44
  br i1 %110, label %111, label %112, !prof !45, !nosanitize !44

111:                                              ; preds = %105
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

112:                                              ; preds = %105
  %113 = extractvalue { i64, i1 } %109, 0, !nosanitize !44
  %114 = load i32, ptr %90, align 4, !tbaa !71
  %115 = zext i32 %114 to i64
  %116 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %113, i64 %115), !nosanitize !44
  %117 = extractvalue { i64, i1 } %116, 1, !nosanitize !44
  br i1 %117, label %118, label %119, !prof !45, !nosanitize !44

118:                                              ; preds = %112
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

119:                                              ; preds = %112
  %120 = extractvalue { i64, i1 } %116, 0, !nosanitize !44
  %121 = trunc i64 %120 to i32
  %122 = load i32, ptr %81, align 8, !tbaa !31
  %123 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %122, i32 262), !nosanitize !44
  %124 = extractvalue { i32, i1 } %123, 1, !nosanitize !44
  br i1 %124, label %125, label %126, !prof !45, !nosanitize !44

125:                                              ; preds = %119
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

126:                                              ; preds = %119
  %127 = extractvalue { i32, i1 } %123, 0, !nosanitize !44
  %128 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %83, i32 %127), !nosanitize !44
  %129 = extractvalue { i32, i1 } %128, 1, !nosanitize !44
  br i1 %129, label %130, label %131, !prof !45, !nosanitize !44

130:                                              ; preds = %126
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

131:                                              ; preds = %126
  %132 = extractvalue { i32, i1 } %128, 0, !nosanitize !44
  %133 = icmp ult i32 %114, %132
  br i1 %133, label %217, label %134

134:                                              ; preds = %131
  %135 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %83, i32 %121), !nosanitize !44
  %136 = extractvalue { i32, i1 } %135, 1, !nosanitize !44
  br i1 %136, label %137, label %138, !prof !45, !nosanitize !44

137:                                              ; preds = %134
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

138:                                              ; preds = %134
  %139 = extractvalue { i32, i1 } %135, 0, !nosanitize !44
  %140 = load ptr, ptr %92, align 8, !tbaa !34
  %141 = getelementptr inbounds nuw i8, ptr %140, i64 %91
  %142 = zext i32 %139 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %140, ptr align 1 %141, i64 %142, i1 false)
  %143 = load i32, ptr %93, align 8, !tbaa !81
  %144 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %143, i32 %83), !nosanitize !44
  %145 = extractvalue { i32, i1 } %144, 1, !nosanitize !44
  br i1 %145, label %146, label %147, !prof !45, !nosanitize !44

146:                                              ; preds = %138
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

147:                                              ; preds = %138
  %148 = extractvalue { i32, i1 } %144, 0, !nosanitize !44
  store i32 %148, ptr %93, align 8, !tbaa !81
  %149 = load i32, ptr %90, align 4, !tbaa !71
  %150 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %149, i32 %83), !nosanitize !44
  %151 = extractvalue { i32, i1 } %150, 1, !nosanitize !44
  br i1 %151, label %152, label %153, !prof !45, !nosanitize !44

152:                                              ; preds = %153, %147
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

153:                                              ; preds = %147
  %154 = extractvalue { i32, i1 } %150, 0, !nosanitize !44
  store i32 %154, ptr %90, align 4, !tbaa !71
  %155 = load i64, ptr %94, align 8, !tbaa !72
  %156 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %155, i64 %91), !nosanitize !44
  %157 = extractvalue { i64, i1 } %156, 1, !nosanitize !44
  br i1 %157, label %152, label %158, !prof !45, !nosanitize !44

158:                                              ; preds = %153
  %159 = extractvalue { i64, i1 } %156, 0, !nosanitize !44
  store i64 %159, ptr %94, align 8, !tbaa !72
  %160 = load i32, ptr %95, align 4, !tbaa !74
  %161 = icmp ugt i32 %160, %154
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  store i32 %154, ptr %95, align 4, !tbaa !74
  br label %163

163:                                              ; preds = %162, %158
  %164 = load i32, ptr %81, align 8, !tbaa !31
  %165 = load i32, ptr %96, align 4, !tbaa !36
  %166 = load ptr, ptr %97, align 8, !tbaa !37
  %167 = zext i32 %165 to i64
  %168 = getelementptr inbounds nuw [2 x i8], ptr %166, i64 %167
  %.not.not = icmp eq i32 %165, 0
  br i1 %.not.not, label %.split.us, label %.split.preheader, !prof !45, !nosanitize !44

.split.preheader:                                 ; preds = %163
  %min.iters.check162 = icmp ult i32 %165, 8
  br i1 %min.iters.check162, label %.split.preheader238, label %vector.ph163

vector.ph163:                                     ; preds = %.split.preheader
  %n.vec165 = and i64 %167, 4294967288
  %169 = mul nsw i64 %n.vec165, -2
  %170 = getelementptr i8, ptr %168, i64 %169
  %.cast166 = trunc nuw i64 %n.vec165 to i32
  %171 = sub i32 %165, %.cast166
  %broadcast.splatinsert167 = insertelement <8 x i32> poison, i32 %164, i64 0
  %172 = shufflevector <8 x i32> %broadcast.splatinsert167, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph163
  %index170 = phi i64 [ 0, %vector.ph163 ], [ %index.next176, %vector.body169 ]
  %offset.idx171 = mul i64 %index170, -2
  %next.gep172 = getelementptr i8, ptr %168, i64 %offset.idx171
  %173 = getelementptr inbounds i8, ptr %next.gep172, i64 -16
  %wide.load173 = load <8 x i16>, ptr %173, align 2, !tbaa !60
  %174 = zext <8 x i16> %wide.load173 to <8 x i32>
  %175 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %174, <8 x i32> %172)
  %reverse175 = trunc nuw <8 x i32> %175 to <8 x i16>
  store <8 x i16> %reverse175, ptr %173, align 2, !tbaa !60
  %index.next176 = add nuw i64 %index170, 8
  %176 = icmp eq i64 %index.next176, %n.vec165
  br i1 %176, label %middle.block177, label %vector.body169, !llvm.loop !82

middle.block177:                                  ; preds = %vector.body169
  %cmp.n178 = icmp eq i64 %n.vec165, %167
  br i1 %cmp.n178, label %.loopexit224, label %.split.preheader238

.split.preheader238:                              ; preds = %.split.preheader, %middle.block177
  %.ph239 = phi ptr [ %168, %.split.preheader ], [ %170, %middle.block177 ]
  %.ph240 = phi i32 [ %165, %.split.preheader ], [ %171, %middle.block177 ]
  br label %.split

.split.us:                                        ; preds = %163
  %177 = getelementptr inbounds i8, ptr %168, i64 -2
  %178 = load i16, ptr %177, align 2, !tbaa !60
  %179 = zext i16 %178 to i32
  %180 = tail call i32 @llvm.usub.sat.i32(i32 %179, i32 %164)
  %181 = trunc nuw i32 %180 to i16
  store i16 %181, ptr %177, align 2, !tbaa !60
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split:                                           ; preds = %.split.preheader238, %.split
  %182 = phi ptr [ %184, %.split ], [ %.ph239, %.split.preheader238 ]
  %183 = phi i32 [ %189, %.split ], [ %.ph240, %.split.preheader238 ]
  %184 = getelementptr inbounds i8, ptr %182, i64 -2
  %185 = load i16, ptr %184, align 2, !tbaa !60
  %186 = zext i16 %185 to i32
  %187 = tail call i32 @llvm.usub.sat.i32(i32 %186, i32 %164)
  %188 = trunc nuw i32 %187 to i16
  store i16 %188, ptr %184, align 2, !tbaa !60
  %189 = add i32 %183, -1
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %.loopexit224, label %.split, !llvm.loop !86

.loopexit224:                                     ; preds = %.split, %middle.block177
  %.not.not130 = icmp eq i32 %164, 0
  br i1 %.not.not130, label %.split55.us, label %.split55, !prof !45, !nosanitize !44

.split55.us:                                      ; preds = %.loopexit224
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split55:                                         ; preds = %.loopexit224
  %191 = load ptr, ptr %98, align 8, !tbaa !35
  %192 = zext i32 %164 to i64
  %193 = getelementptr inbounds nuw [2 x i8], ptr %191, i64 %192
  %min.iters.check = icmp ult i32 %164, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.split55
  %n.vec = and i64 %192, 4294967288
  %194 = mul nsw i64 %n.vec, -2
  %195 = getelementptr i8, ptr %193, i64 %194
  %.cast = trunc nuw i64 %n.vec to i32
  %196 = sub i32 %164, %.cast
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %164, i64 0
  %197 = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = mul i64 %index, -2
  %next.gep = getelementptr i8, ptr %193, i64 %offset.idx
  %198 = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %wide.load = load <8 x i16>, ptr %198, align 2, !tbaa !60
  %199 = zext <8 x i16> %wide.load to <8 x i32>
  %200 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %199, <8 x i32> %197)
  %reverse159 = trunc nuw <8 x i32> %200 to <8 x i16>
  store <8 x i16> %reverse159, ptr %198, align 2, !tbaa !60
  %index.next = add nuw i64 %index, 8
  %201 = icmp eq i64 %index.next, %n.vec
  br i1 %201, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %192
  br i1 %cmp.n, label %.loopexit223, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.split55, %middle.block
  %.ph236 = phi ptr [ %193, %.split55 ], [ %195, %middle.block ]
  %.ph237 = phi i32 [ %164, %.split55 ], [ %196, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %202 = phi ptr [ %204, %scalar.ph ], [ %.ph236, %scalar.ph.preheader ]
  %203 = phi i32 [ %209, %scalar.ph ], [ %.ph237, %scalar.ph.preheader ]
  %204 = getelementptr inbounds i8, ptr %202, i64 -2
  %205 = load i16, ptr %204, align 2, !tbaa !60
  %206 = zext i16 %205 to i32
  %207 = tail call i32 @llvm.usub.sat.i32(i32 %206, i32 %164)
  %208 = trunc nuw i32 %207 to i16
  store i16 %208, ptr %204, align 2, !tbaa !60
  %209 = add i32 %203, -1
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %.loopexit223, label %scalar.ph, !llvm.loop !88

.loopexit223:                                     ; preds = %scalar.ph, %middle.block
  store i32 1, ptr %99, align 8, !tbaa !61
  %211 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %121, i32 %83), !nosanitize !44
  %212 = extractvalue { i32, i1 } %211, 1, !nosanitize !44
  br i1 %212, label %213, label %214, !prof !45, !nosanitize !44

213:                                              ; preds = %.loopexit223
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

214:                                              ; preds = %.loopexit223
  %215 = extractvalue { i32, i1 } %211, 0, !nosanitize !44
  %216 = load i32, ptr %82, align 4, !tbaa !73
  br label %217

217:                                              ; preds = %214, %131
  %218 = phi i32 [ %216, %214 ], [ %106, %131 ]
  %219 = phi i32 [ %154, %214 ], [ %114, %131 ]
  %220 = phi i32 [ %215, %214 ], [ %121, %131 ]
  %221 = load ptr, ptr %15, align 8, !tbaa !19
  %222 = getelementptr inbounds nuw i8, ptr %221, i64 8
  %223 = load i32, ptr %222, align 8, !tbaa !79
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %343, label %225

225:                                              ; preds = %217
  %226 = load ptr, ptr %92, align 8, !tbaa !34
  %227 = zext i32 %219 to i64
  %228 = getelementptr inbounds nuw i8, ptr %226, i64 %227
  %229 = zext i32 %218 to i64
  %230 = getelementptr inbounds nuw i8, ptr %228, i64 %229
  %231 = tail call i32 @llvm.umin.i32(i32 %223, i32 %220)
  %232 = icmp eq i32 %220, 0
  br i1 %232, label %260, label %233

233:                                              ; preds = %225
  %234 = sub i32 %223, %231
  store i32 %234, ptr %222, align 8, !tbaa !79
  %235 = load ptr, ptr %221, align 8, !tbaa !80
  %236 = zext i32 %231 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %230, ptr align 1 %235, i64 %236, i1 false)
  %237 = getelementptr inbounds nuw i8, ptr %221, i64 56
  %238 = load ptr, ptr %237, align 8, !tbaa !18
  %239 = getelementptr inbounds nuw i8, ptr %238, i64 48
  %240 = load i32, ptr %239, align 8, !tbaa !29
  switch i32 %240, label %249 [
    i32 1, label %241
    i32 2, label %245
  ]

241:                                              ; preds = %233
  %242 = getelementptr inbounds nuw i8, ptr %221, i64 96
  %243 = load i64, ptr %242, align 8, !tbaa !57
  %244 = tail call i64 @adler32(i64 noundef %243, ptr noundef %230, i32 noundef %231) #11
  store i64 %244, ptr %242, align 8, !tbaa !57
  br label %249

245:                                              ; preds = %233
  %246 = getelementptr inbounds nuw i8, ptr %221, i64 96
  %247 = load i64, ptr %246, align 8, !tbaa !57
  %248 = tail call i64 @crc32(i64 noundef %247, ptr noundef %230, i32 noundef %231) #11
  store i64 %248, ptr %246, align 8, !tbaa !57
  br label %249

249:                                              ; preds = %245, %241, %233
  %250 = load ptr, ptr %221, align 8, !tbaa !80
  %251 = getelementptr inbounds nuw i8, ptr %250, i64 %236
  store ptr %251, ptr %221, align 8, !tbaa !80
  %252 = getelementptr inbounds nuw i8, ptr %221, i64 16
  %253 = load i64, ptr %252, align 8, !tbaa !53
  %254 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %253, i64 %236), !nosanitize !44
  %255 = extractvalue { i64, i1 } %254, 1, !nosanitize !44
  br i1 %255, label %256, label %257, !prof !45, !nosanitize !44

256:                                              ; preds = %249
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

257:                                              ; preds = %249
  %258 = extractvalue { i64, i1 } %254, 0, !nosanitize !44
  store i64 %258, ptr %252, align 8, !tbaa !53
  %259 = load i32, ptr %82, align 4, !tbaa !73
  br label %260

260:                                              ; preds = %257, %225
  %261 = phi i32 [ %218, %225 ], [ %259, %257 ]
  %262 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %261, i32 %231), !nosanitize !44
  %263 = extractvalue { i32, i1 } %262, 1, !nosanitize !44
  br i1 %263, label %264, label %265, !prof !45, !nosanitize !44

264:                                              ; preds = %260
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

265:                                              ; preds = %260
  %266 = extractvalue { i32, i1 } %262, 0, !nosanitize !44
  store i32 %266, ptr %82, align 4, !tbaa !73
  %267 = load i32, ptr %95, align 4, !tbaa !74
  %268 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %266, i32 %267), !nosanitize !44
  %269 = extractvalue { i32, i1 } %268, 1, !nosanitize !44
  br i1 %269, label %270, label %271, !prof !45, !nosanitize !44

270:                                              ; preds = %265
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

271:                                              ; preds = %265
  %272 = extractvalue { i32, i1 } %268, 0, !nosanitize !44
  %273 = icmp ugt i32 %272, 2
  br i1 %273, label %274, label %.loopexit40

274:                                              ; preds = %271
  %275 = load i32, ptr %90, align 4, !tbaa !71
  %276 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %275, i32 %267), !nosanitize !44
  %277 = extractvalue { i32, i1 } %276, 0, !nosanitize !44
  %278 = extractvalue { i32, i1 } %276, 1, !nosanitize !44
  br i1 %278, label %279, label %280, !prof !45, !nosanitize !44

279:                                              ; preds = %274
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

280:                                              ; preds = %274
  %281 = load ptr, ptr %92, align 8, !tbaa !34
  %282 = zext i32 %277 to i64
  %283 = getelementptr inbounds nuw i8, ptr %281, i64 %282
  %284 = load i8, ptr %283, align 1, !tbaa !5
  %285 = zext i8 %284 to i32
  store i32 %285, ptr %100, align 8, !tbaa !78
  %286 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %277, i32 1), !nosanitize !44
  %287 = extractvalue { i32, i1 } %286, 1, !nosanitize !44
  br i1 %287, label %288, label %289, !prof !45, !nosanitize !44

288:                                              ; preds = %280
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

289:                                              ; preds = %280
  %290 = extractvalue { i32, i1 } %286, 0, !nosanitize !44
  %291 = load i32, ptr %101, align 8, !tbaa !52
  %292 = shl i32 %285, %291
  %293 = zext i32 %290 to i64
  %294 = getelementptr inbounds nuw i8, ptr %281, i64 %293
  %295 = load i8, ptr %294, align 1, !tbaa !5
  %296 = zext i8 %295 to i32
  %297 = xor i32 %292, %296
  %298 = load i32, ptr %102, align 4, !tbaa !51
  %299 = and i32 %297, %298
  store i32 %299, ptr %100, align 8, !tbaa !78
  br label %300

300:                                              ; preds = %333, %289
  %301 = phi i32 [ %299, %289 ], [ %318, %333 ]
  %302 = phi i32 [ %267, %289 ], [ %329, %333 ]
  %303 = phi i32 [ %277, %289 ], [ %334, %333 ]
  %304 = icmp eq i32 %302, 0
  br i1 %304, label %.loopexit40, label %305

305:                                              ; preds = %300
  %306 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %303, i32 3), !nosanitize !44
  %307 = extractvalue { i32, i1 } %306, 1, !nosanitize !44
  br i1 %307, label %308, label %309, !prof !45, !nosanitize !44

308:                                              ; preds = %305
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

309:                                              ; preds = %305
  %310 = shl i32 %301, %291
  %311 = extractvalue { i32, i1 } %306, 0, !nosanitize !44
  %312 = add i32 %311, -1
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds nuw i8, ptr %281, i64 %313
  %315 = load i8, ptr %314, align 1, !tbaa !5
  %316 = zext i8 %315 to i32
  %317 = xor i32 %310, %316
  %318 = and i32 %317, %298
  store i32 %318, ptr %100, align 8, !tbaa !78
  %319 = load ptr, ptr %97, align 8, !tbaa !37
  %320 = zext i32 %318 to i64
  %321 = getelementptr inbounds nuw [2 x i8], ptr %319, i64 %320
  %322 = load i16, ptr %321, align 2, !tbaa !60
  %323 = load ptr, ptr %98, align 8, !tbaa !35
  %324 = load i32, ptr %103, align 8, !tbaa !32
  %325 = and i32 %324, %303
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds nuw [2 x i8], ptr %323, i64 %326
  store i16 %322, ptr %327, align 2, !tbaa !60
  %328 = trunc i32 %303 to i16
  store i16 %328, ptr %321, align 2, !tbaa !60
  %329 = add i32 %302, -1
  store i32 %329, ptr %95, align 4, !tbaa !74
  %330 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %266, i32 %329), !nosanitize !44
  %331 = extractvalue { i32, i1 } %330, 1, !nosanitize !44
  br i1 %331, label %332, label %333, !prof !45, !nosanitize !44

332:                                              ; preds = %309
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

333:                                              ; preds = %309
  %334 = add nuw i32 %303, 1
  %335 = extractvalue { i32, i1 } %330, 0, !nosanitize !44
  %336 = icmp ult i32 %335, 3
  br i1 %336, label %.loopexit40, label %300, !llvm.loop !89

.loopexit40:                                      ; preds = %333, %300, %271
  %337 = icmp ult i32 %266, 262
  br i1 %337, label %338, label %343

338:                                              ; preds = %.loopexit40
  %339 = load ptr, ptr %15, align 8, !tbaa !19
  %340 = getelementptr inbounds nuw i8, ptr %339, i64 8
  %341 = load i32, ptr %340, align 8, !tbaa !79
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %105, !llvm.loop !90

343:                                              ; preds = %338, %.loopexit40, %217
  %344 = phi i32 [ %266, %338 ], [ %266, %.loopexit40 ], [ %218, %217 ]
  %345 = getelementptr inbounds nuw i8, ptr %15, i64 5952
  %346 = load i64, ptr %345, align 8, !tbaa !38
  %347 = load i64, ptr %89, align 8, !tbaa !59
  %348 = icmp ult i64 %346, %347
  br i1 %348, label %349, label %388

349:                                              ; preds = %343
  %350 = load i32, ptr %90, align 4, !tbaa !71
  %351 = zext i32 %350 to i64
  %352 = zext i32 %344 to i64
  %353 = add nuw nsw i64 %351, %352
  %354 = icmp ult i64 %346, %353
  br i1 %354, label %355, label %365

355:                                              ; preds = %349
  %356 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %347, i64 %353), !nosanitize !44
  %357 = extractvalue { i64, i1 } %356, 1, !nosanitize !44
  br i1 %357, label %358, label %359, !prof !45, !nosanitize !44

358:                                              ; preds = %355
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

359:                                              ; preds = %355
  %360 = extractvalue { i64, i1 } %356, 0, !nosanitize !44
  %361 = tail call i64 @llvm.umin.i64(i64 %360, i64 258)
  %362 = load ptr, ptr %92, align 8, !tbaa !34
  %363 = getelementptr inbounds nuw i8, ptr %362, i64 %353
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %363, i8 0, i64 %361, i1 false)
  %364 = add nuw nsw i64 %361, %353
  br label %385

365:                                              ; preds = %349
  %366 = add nuw nsw i64 %353, 258
  %367 = icmp ult i64 %346, %366
  br i1 %367, label %368, label %388

368:                                              ; preds = %365
  %369 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %347, i64 %346), !nosanitize !44
  %370 = extractvalue { i64, i1 } %369, 1, !nosanitize !44
  br i1 %370, label %371, label %372, !prof !45, !nosanitize !44

371:                                              ; preds = %368
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

372:                                              ; preds = %368
  %373 = sub nuw nsw i64 %366, %346
  %374 = extractvalue { i64, i1 } %369, 0, !nosanitize !44
  %375 = tail call i64 @llvm.umin.i64(i64 %373, i64 %374)
  %376 = load ptr, ptr %92, align 8, !tbaa !34
  %377 = getelementptr inbounds nuw i8, ptr %376, i64 %346
  %378 = and i64 %375, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %377, i8 0, i64 %378, i1 false)
  %379 = load i64, ptr %345, align 8, !tbaa !38
  %380 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %379, i64 %375), !nosanitize !44
  %381 = extractvalue { i64, i1 } %380, 1, !nosanitize !44
  br i1 %381, label %382, label %383, !prof !45, !nosanitize !44

382:                                              ; preds = %372
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

383:                                              ; preds = %372
  %384 = extractvalue { i64, i1 } %380, 0, !nosanitize !44
  br label %385

385:                                              ; preds = %383, %359
  %386 = phi i64 [ %364, %359 ], [ %384, %383 ]
  store i64 %386, ptr %345, align 8, !tbaa !38
  %387 = load i32, ptr %82, align 4, !tbaa !73
  br label %388

388:                                              ; preds = %385, %365, %343
  %389 = phi i32 [ %344, %343 ], [ %344, %365 ], [ %387, %385 ]
  %390 = icmp ugt i32 %389, 2
  br i1 %390, label %.preheader, label %.loopexit39

.preheader:                                       ; preds = %388, %707
  %391 = phi i32 [ %708, %707 ], [ %389, %388 ]
  %392 = load i32, ptr %90, align 4, !tbaa !71
  %393 = load i32, ptr %101, align 8, !tbaa !52
  %394 = load ptr, ptr %92, align 8, !tbaa !34
  %395 = tail call i32 @llvm.usub.sat.i32(i32 -3, i32 %392)
  %396 = add i32 %391, -3
  %.not = icmp ugt i32 %395, %396
  br i1 %.not, label %.preheader.split, label %421, !prof !91, !nosanitize !44

.preheader.split:                                 ; preds = %.preheader
  %397 = load i32, ptr %100, align 8, !tbaa !78
  %398 = add i32 %391, -2
  %.pre = load i32, ptr %102, align 4, !tbaa !51
  %.pre86 = load ptr, ptr %97, align 8, !tbaa !37
  %.pre87 = load ptr, ptr %98, align 8, !tbaa !35
  %.pre88 = load i32, ptr %103, align 8, !tbaa !32
  br label %399

399:                                              ; preds = %399, %.preheader.split
  %400 = phi i32 [ %397, %.preheader.split ], [ %410, %399 ]
  %401 = phi i32 [ %392, %.preheader.split ], [ %418, %399 ]
  %402 = phi i32 [ %398, %.preheader.split ], [ %419, %399 ]
  %403 = shl i32 %400, %393
  %404 = add i32 %401, 2
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds nuw i8, ptr %394, i64 %405
  %407 = load i8, ptr %406, align 1, !tbaa !5
  %408 = zext i8 %407 to i32
  %409 = xor i32 %403, %408
  %410 = and i32 %409, %.pre
  store i32 %410, ptr %100, align 8, !tbaa !78
  %411 = zext i32 %410 to i64
  %412 = getelementptr inbounds nuw [2 x i8], ptr %.pre86, i64 %411
  %413 = load i16, ptr %412, align 2, !tbaa !60
  %414 = and i32 %.pre88, %401
  %415 = zext i32 %414 to i64
  %416 = getelementptr inbounds nuw [2 x i8], ptr %.pre87, i64 %415
  store i16 %413, ptr %416, align 2, !tbaa !60
  %417 = trunc i32 %401 to i16
  store i16 %417, ptr %412, align 2, !tbaa !60
  %418 = add nuw i32 %401, 1
  %419 = add i32 %402, -1
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %422, label %399, !llvm.loop !92

421:                                              ; preds = %.preheader
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

422:                                              ; preds = %399
  store i32 %418, ptr %90, align 4, !tbaa !71
  store i32 2, ptr %82, align 4, !tbaa !73
  %423 = load i32, ptr %81, align 8, !tbaa !31
  %424 = zext i32 %423 to i64
  br label %425

425:                                              ; preds = %658, %422
  %426 = phi i32 [ %586, %658 ], [ 2, %422 ]
  %427 = load i64, ptr %89, align 8, !tbaa !59
  %428 = zext nneg i32 %426 to i64
  %429 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %427, i64 %428), !nosanitize !44
  %430 = extractvalue { i64, i1 } %429, 1, !nosanitize !44
  br i1 %430, label %431, label %432, !prof !45, !nosanitize !44

431:                                              ; preds = %425
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

432:                                              ; preds = %425
  %433 = extractvalue { i64, i1 } %429, 0, !nosanitize !44
  %434 = load i32, ptr %90, align 4, !tbaa !71
  %435 = zext i32 %434 to i64
  %436 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %433, i64 %435), !nosanitize !44
  %437 = extractvalue { i64, i1 } %436, 1, !nosanitize !44
  br i1 %437, label %438, label %439, !prof !45, !nosanitize !44

438:                                              ; preds = %432
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

439:                                              ; preds = %432
  %440 = extractvalue { i64, i1 } %436, 0, !nosanitize !44
  %441 = trunc i64 %440 to i32
  %442 = load i32, ptr %81, align 8, !tbaa !31
  %443 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %442, i32 262), !nosanitize !44
  %444 = extractvalue { i32, i1 } %443, 1, !nosanitize !44
  br i1 %444, label %445, label %446, !prof !45, !nosanitize !44

445:                                              ; preds = %439
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

446:                                              ; preds = %439
  %447 = extractvalue { i32, i1 } %443, 0, !nosanitize !44
  %448 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %423, i32 %447), !nosanitize !44
  %449 = extractvalue { i32, i1 } %448, 1, !nosanitize !44
  br i1 %449, label %450, label %451, !prof !45, !nosanitize !44

450:                                              ; preds = %446
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

451:                                              ; preds = %446
  %452 = extractvalue { i32, i1 } %448, 0, !nosanitize !44
  %453 = icmp ult i32 %434, %452
  br i1 %453, label %537, label %454

454:                                              ; preds = %451
  %455 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %423, i32 %441), !nosanitize !44
  %456 = extractvalue { i32, i1 } %455, 1, !nosanitize !44
  br i1 %456, label %457, label %458, !prof !45, !nosanitize !44

457:                                              ; preds = %454
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

458:                                              ; preds = %454
  %459 = extractvalue { i32, i1 } %455, 0, !nosanitize !44
  %460 = load ptr, ptr %92, align 8, !tbaa !34
  %461 = getelementptr inbounds nuw i8, ptr %460, i64 %424
  %462 = zext i32 %459 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %460, ptr align 1 %461, i64 %462, i1 false)
  %463 = load i32, ptr %93, align 8, !tbaa !81
  %464 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %463, i32 %423), !nosanitize !44
  %465 = extractvalue { i32, i1 } %464, 1, !nosanitize !44
  br i1 %465, label %466, label %467, !prof !45, !nosanitize !44

466:                                              ; preds = %458
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

467:                                              ; preds = %458
  %468 = extractvalue { i32, i1 } %464, 0, !nosanitize !44
  store i32 %468, ptr %93, align 8, !tbaa !81
  %469 = load i32, ptr %90, align 4, !tbaa !71
  %470 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %469, i32 %423), !nosanitize !44
  %471 = extractvalue { i32, i1 } %470, 1, !nosanitize !44
  br i1 %471, label %472, label %473, !prof !45, !nosanitize !44

472:                                              ; preds = %473, %467
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

473:                                              ; preds = %467
  %474 = extractvalue { i32, i1 } %470, 0, !nosanitize !44
  store i32 %474, ptr %90, align 4, !tbaa !71
  %475 = load i64, ptr %94, align 8, !tbaa !72
  %476 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %475, i64 %424), !nosanitize !44
  %477 = extractvalue { i64, i1 } %476, 1, !nosanitize !44
  br i1 %477, label %472, label %478, !prof !45, !nosanitize !44

478:                                              ; preds = %473
  %479 = extractvalue { i64, i1 } %476, 0, !nosanitize !44
  store i64 %479, ptr %94, align 8, !tbaa !72
  %480 = load i32, ptr %95, align 4, !tbaa !74
  %481 = icmp ugt i32 %480, %474
  br i1 %481, label %482, label %483

482:                                              ; preds = %478
  store i32 %474, ptr %95, align 4, !tbaa !74
  br label %483

483:                                              ; preds = %482, %478
  %484 = load i32, ptr %81, align 8, !tbaa !31
  %485 = load i32, ptr %96, align 4, !tbaa !36
  %486 = load ptr, ptr %97, align 8, !tbaa !37
  %487 = zext i32 %485 to i64
  %488 = getelementptr inbounds nuw [2 x i8], ptr %486, i64 %487
  %.not131.not = icmp eq i32 %485, 0
  br i1 %.not131.not, label %.split65.us, label %.split65.preheader, !prof !45, !nosanitize !44

.split65.preheader:                               ; preds = %483
  %min.iters.check202 = icmp ult i32 %485, 8
  br i1 %min.iters.check202, label %.split65.preheader226, label %vector.ph203

vector.ph203:                                     ; preds = %.split65.preheader
  %n.vec205 = and i64 %487, 4294967288
  %489 = mul nsw i64 %n.vec205, -2
  %490 = getelementptr i8, ptr %488, i64 %489
  %.cast206 = trunc nuw i64 %n.vec205 to i32
  %491 = sub i32 %485, %.cast206
  %broadcast.splatinsert207 = insertelement <8 x i32> poison, i32 %484, i64 0
  %492 = shufflevector <8 x i32> %broadcast.splatinsert207, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph203
  %index210 = phi i64 [ 0, %vector.ph203 ], [ %index.next216, %vector.body209 ]
  %offset.idx211 = mul i64 %index210, -2
  %next.gep212 = getelementptr i8, ptr %488, i64 %offset.idx211
  %493 = getelementptr inbounds i8, ptr %next.gep212, i64 -16
  %wide.load213 = load <8 x i16>, ptr %493, align 2, !tbaa !60
  %494 = zext <8 x i16> %wide.load213 to <8 x i32>
  %495 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %494, <8 x i32> %492)
  %reverse215 = trunc nuw <8 x i32> %495 to <8 x i16>
  store <8 x i16> %reverse215, ptr %493, align 2, !tbaa !60
  %index.next216 = add nuw i64 %index210, 8
  %496 = icmp eq i64 %index.next216, %n.vec205
  br i1 %496, label %middle.block217, label %vector.body209, !llvm.loop !93

middle.block217:                                  ; preds = %vector.body209
  %cmp.n218 = icmp eq i64 %n.vec205, %487
  br i1 %cmp.n218, label %.loopexit222, label %.split65.preheader226

.split65.preheader226:                            ; preds = %.split65.preheader, %middle.block217
  %.ph227 = phi ptr [ %488, %.split65.preheader ], [ %490, %middle.block217 ]
  %.ph228 = phi i32 [ %485, %.split65.preheader ], [ %491, %middle.block217 ]
  br label %.split65

.split65.us:                                      ; preds = %483
  %497 = getelementptr inbounds i8, ptr %488, i64 -2
  %498 = load i16, ptr %497, align 2, !tbaa !60
  %499 = zext i16 %498 to i32
  %500 = tail call i32 @llvm.usub.sat.i32(i32 %499, i32 %484)
  %501 = trunc nuw i32 %500 to i16
  store i16 %501, ptr %497, align 2, !tbaa !60
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split65:                                         ; preds = %.split65.preheader226, %.split65
  %502 = phi ptr [ %504, %.split65 ], [ %.ph227, %.split65.preheader226 ]
  %503 = phi i32 [ %509, %.split65 ], [ %.ph228, %.split65.preheader226 ]
  %504 = getelementptr inbounds i8, ptr %502, i64 -2
  %505 = load i16, ptr %504, align 2, !tbaa !60
  %506 = zext i16 %505 to i32
  %507 = tail call i32 @llvm.usub.sat.i32(i32 %506, i32 %484)
  %508 = trunc nuw i32 %507 to i16
  store i16 %508, ptr %504, align 2, !tbaa !60
  %509 = add i32 %503, -1
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %.loopexit222, label %.split65, !llvm.loop !94

.loopexit222:                                     ; preds = %.split65, %middle.block217
  %.not132.not = icmp eq i32 %484, 0
  br i1 %.not132.not, label %.split78.us, label %.split78, !prof !45, !nosanitize !44

.split78.us:                                      ; preds = %.loopexit222
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split78:                                         ; preds = %.loopexit222
  %511 = load ptr, ptr %98, align 8, !tbaa !35
  %512 = zext i32 %484 to i64
  %513 = getelementptr inbounds nuw [2 x i8], ptr %511, i64 %512
  %min.iters.check182 = icmp ult i32 %484, 8
  br i1 %min.iters.check182, label %scalar.ph181.preheader, label %vector.ph183

vector.ph183:                                     ; preds = %.split78
  %n.vec185 = and i64 %512, 4294967288
  %514 = mul nsw i64 %n.vec185, -2
  %515 = getelementptr i8, ptr %513, i64 %514
  %.cast186 = trunc nuw i64 %n.vec185 to i32
  %516 = sub i32 %484, %.cast186
  %broadcast.splatinsert187 = insertelement <8 x i32> poison, i32 %484, i64 0
  %517 = shufflevector <8 x i32> %broadcast.splatinsert187, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body189

vector.body189:                                   ; preds = %vector.body189, %vector.ph183
  %index190 = phi i64 [ 0, %vector.ph183 ], [ %index.next196, %vector.body189 ]
  %offset.idx191 = mul i64 %index190, -2
  %next.gep192 = getelementptr i8, ptr %513, i64 %offset.idx191
  %518 = getelementptr inbounds i8, ptr %next.gep192, i64 -16
  %wide.load193 = load <8 x i16>, ptr %518, align 2, !tbaa !60
  %519 = zext <8 x i16> %wide.load193 to <8 x i32>
  %520 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %519, <8 x i32> %517)
  %reverse195 = trunc nuw <8 x i32> %520 to <8 x i16>
  store <8 x i16> %reverse195, ptr %518, align 2, !tbaa !60
  %index.next196 = add nuw i64 %index190, 8
  %521 = icmp eq i64 %index.next196, %n.vec185
  br i1 %521, label %middle.block197, label %vector.body189, !llvm.loop !95

middle.block197:                                  ; preds = %vector.body189
  %cmp.n198 = icmp eq i64 %n.vec185, %512
  br i1 %cmp.n198, label %.loopexit221, label %scalar.ph181.preheader

scalar.ph181.preheader:                           ; preds = %.split78, %middle.block197
  %.ph = phi ptr [ %513, %.split78 ], [ %515, %middle.block197 ]
  %.ph225 = phi i32 [ %484, %.split78 ], [ %516, %middle.block197 ]
  br label %scalar.ph181

scalar.ph181:                                     ; preds = %scalar.ph181.preheader, %scalar.ph181
  %522 = phi ptr [ %524, %scalar.ph181 ], [ %.ph, %scalar.ph181.preheader ]
  %523 = phi i32 [ %529, %scalar.ph181 ], [ %.ph225, %scalar.ph181.preheader ]
  %524 = getelementptr inbounds i8, ptr %522, i64 -2
  %525 = load i16, ptr %524, align 2, !tbaa !60
  %526 = zext i16 %525 to i32
  %527 = tail call i32 @llvm.usub.sat.i32(i32 %526, i32 %484)
  %528 = trunc nuw i32 %527 to i16
  store i16 %528, ptr %524, align 2, !tbaa !60
  %529 = add i32 %523, -1
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %.loopexit221, label %scalar.ph181, !llvm.loop !96

.loopexit221:                                     ; preds = %scalar.ph181, %middle.block197
  store i32 1, ptr %99, align 8, !tbaa !61
  %531 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %441, i32 %423), !nosanitize !44
  %532 = extractvalue { i32, i1 } %531, 1, !nosanitize !44
  br i1 %532, label %533, label %534, !prof !45, !nosanitize !44

533:                                              ; preds = %.loopexit221
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

534:                                              ; preds = %.loopexit221
  %535 = extractvalue { i32, i1 } %531, 0, !nosanitize !44
  %536 = load i32, ptr %82, align 4, !tbaa !73
  br label %537

537:                                              ; preds = %534, %451
  %538 = phi i32 [ %536, %534 ], [ %426, %451 ]
  %539 = phi i32 [ %474, %534 ], [ %434, %451 ]
  %540 = phi i32 [ %535, %534 ], [ %441, %451 ]
  %541 = load ptr, ptr %15, align 8, !tbaa !19
  %542 = getelementptr inbounds nuw i8, ptr %541, i64 8
  %543 = load i32, ptr %542, align 8, !tbaa !79
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %663, label %545

545:                                              ; preds = %537
  %546 = load ptr, ptr %92, align 8, !tbaa !34
  %547 = zext i32 %539 to i64
  %548 = getelementptr inbounds nuw i8, ptr %546, i64 %547
  %549 = zext i32 %538 to i64
  %550 = getelementptr inbounds nuw i8, ptr %548, i64 %549
  %551 = tail call i32 @llvm.umin.i32(i32 %543, i32 %540)
  %552 = icmp eq i32 %540, 0
  br i1 %552, label %580, label %553

553:                                              ; preds = %545
  %554 = sub i32 %543, %551
  store i32 %554, ptr %542, align 8, !tbaa !79
  %555 = load ptr, ptr %541, align 8, !tbaa !80
  %556 = zext i32 %551 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %550, ptr align 1 %555, i64 %556, i1 false)
  %557 = getelementptr inbounds nuw i8, ptr %541, i64 56
  %558 = load ptr, ptr %557, align 8, !tbaa !18
  %559 = getelementptr inbounds nuw i8, ptr %558, i64 48
  %560 = load i32, ptr %559, align 8, !tbaa !29
  switch i32 %560, label %569 [
    i32 1, label %561
    i32 2, label %565
  ]

561:                                              ; preds = %553
  %562 = getelementptr inbounds nuw i8, ptr %541, i64 96
  %563 = load i64, ptr %562, align 8, !tbaa !57
  %564 = tail call i64 @adler32(i64 noundef %563, ptr noundef %550, i32 noundef %551) #11
  store i64 %564, ptr %562, align 8, !tbaa !57
  br label %569

565:                                              ; preds = %553
  %566 = getelementptr inbounds nuw i8, ptr %541, i64 96
  %567 = load i64, ptr %566, align 8, !tbaa !57
  %568 = tail call i64 @crc32(i64 noundef %567, ptr noundef %550, i32 noundef %551) #11
  store i64 %568, ptr %566, align 8, !tbaa !57
  br label %569

569:                                              ; preds = %565, %561, %553
  %570 = load ptr, ptr %541, align 8, !tbaa !80
  %571 = getelementptr inbounds nuw i8, ptr %570, i64 %556
  store ptr %571, ptr %541, align 8, !tbaa !80
  %572 = getelementptr inbounds nuw i8, ptr %541, i64 16
  %573 = load i64, ptr %572, align 8, !tbaa !53
  %574 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %573, i64 %556), !nosanitize !44
  %575 = extractvalue { i64, i1 } %574, 1, !nosanitize !44
  br i1 %575, label %576, label %577, !prof !45, !nosanitize !44

576:                                              ; preds = %569
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

577:                                              ; preds = %569
  %578 = extractvalue { i64, i1 } %574, 0, !nosanitize !44
  store i64 %578, ptr %572, align 8, !tbaa !53
  %579 = load i32, ptr %82, align 4, !tbaa !73
  br label %580

580:                                              ; preds = %577, %545
  %581 = phi i32 [ %538, %545 ], [ %579, %577 ]
  %582 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %581, i32 %551), !nosanitize !44
  %583 = extractvalue { i32, i1 } %582, 1, !nosanitize !44
  br i1 %583, label %584, label %585, !prof !45, !nosanitize !44

584:                                              ; preds = %580
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

585:                                              ; preds = %580
  %586 = extractvalue { i32, i1 } %582, 0, !nosanitize !44
  store i32 %586, ptr %82, align 4, !tbaa !73
  %587 = load i32, ptr %95, align 4, !tbaa !74
  %588 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %586, i32 %587), !nosanitize !44
  %589 = extractvalue { i32, i1 } %588, 1, !nosanitize !44
  br i1 %589, label %590, label %591, !prof !45, !nosanitize !44

590:                                              ; preds = %585
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

591:                                              ; preds = %585
  %592 = extractvalue { i32, i1 } %588, 0, !nosanitize !44
  %593 = icmp ugt i32 %592, 2
  br i1 %593, label %594, label %.loopexit

594:                                              ; preds = %591
  %595 = load i32, ptr %90, align 4, !tbaa !71
  %596 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %595, i32 %587), !nosanitize !44
  %597 = extractvalue { i32, i1 } %596, 0, !nosanitize !44
  %598 = extractvalue { i32, i1 } %596, 1, !nosanitize !44
  br i1 %598, label %599, label %600, !prof !45, !nosanitize !44

599:                                              ; preds = %594
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

600:                                              ; preds = %594
  %601 = load ptr, ptr %92, align 8, !tbaa !34
  %602 = zext i32 %597 to i64
  %603 = getelementptr inbounds nuw i8, ptr %601, i64 %602
  %604 = load i8, ptr %603, align 1, !tbaa !5
  %605 = zext i8 %604 to i32
  store i32 %605, ptr %100, align 8, !tbaa !78
  %606 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %597, i32 1), !nosanitize !44
  %607 = extractvalue { i32, i1 } %606, 1, !nosanitize !44
  br i1 %607, label %608, label %609, !prof !45, !nosanitize !44

608:                                              ; preds = %600
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

609:                                              ; preds = %600
  %610 = extractvalue { i32, i1 } %606, 0, !nosanitize !44
  %611 = load i32, ptr %101, align 8, !tbaa !52
  %612 = shl i32 %605, %611
  %613 = zext i32 %610 to i64
  %614 = getelementptr inbounds nuw i8, ptr %601, i64 %613
  %615 = load i8, ptr %614, align 1, !tbaa !5
  %616 = zext i8 %615 to i32
  %617 = xor i32 %612, %616
  %618 = load i32, ptr %102, align 4, !tbaa !51
  %619 = and i32 %617, %618
  store i32 %619, ptr %100, align 8, !tbaa !78
  br label %620

620:                                              ; preds = %653, %609
  %621 = phi i32 [ %619, %609 ], [ %638, %653 ]
  %622 = phi i32 [ %587, %609 ], [ %649, %653 ]
  %623 = phi i32 [ %597, %609 ], [ %654, %653 ]
  %624 = icmp eq i32 %622, 0
  br i1 %624, label %.loopexit, label %625

625:                                              ; preds = %620
  %626 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %623, i32 3), !nosanitize !44
  %627 = extractvalue { i32, i1 } %626, 1, !nosanitize !44
  br i1 %627, label %628, label %629, !prof !45, !nosanitize !44

628:                                              ; preds = %625
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

629:                                              ; preds = %625
  %630 = shl i32 %621, %611
  %631 = extractvalue { i32, i1 } %626, 0, !nosanitize !44
  %632 = add i32 %631, -1
  %633 = zext i32 %632 to i64
  %634 = getelementptr inbounds nuw i8, ptr %601, i64 %633
  %635 = load i8, ptr %634, align 1, !tbaa !5
  %636 = zext i8 %635 to i32
  %637 = xor i32 %630, %636
  %638 = and i32 %637, %618
  store i32 %638, ptr %100, align 8, !tbaa !78
  %639 = load ptr, ptr %97, align 8, !tbaa !37
  %640 = zext i32 %638 to i64
  %641 = getelementptr inbounds nuw [2 x i8], ptr %639, i64 %640
  %642 = load i16, ptr %641, align 2, !tbaa !60
  %643 = load ptr, ptr %98, align 8, !tbaa !35
  %644 = load i32, ptr %103, align 8, !tbaa !32
  %645 = and i32 %644, %623
  %646 = zext i32 %645 to i64
  %647 = getelementptr inbounds nuw [2 x i8], ptr %643, i64 %646
  store i16 %642, ptr %647, align 2, !tbaa !60
  %648 = trunc i32 %623 to i16
  store i16 %648, ptr %641, align 2, !tbaa !60
  %649 = add i32 %622, -1
  store i32 %649, ptr %95, align 4, !tbaa !74
  %650 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %586, i32 %649), !nosanitize !44
  %651 = extractvalue { i32, i1 } %650, 1, !nosanitize !44
  br i1 %651, label %652, label %653, !prof !45, !nosanitize !44

652:                                              ; preds = %629
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

653:                                              ; preds = %629
  %654 = add nuw i32 %623, 1
  %655 = extractvalue { i32, i1 } %650, 0, !nosanitize !44
  %656 = icmp ult i32 %655, 3
  br i1 %656, label %.loopexit, label %620, !llvm.loop !89

.loopexit:                                        ; preds = %653, %620, %591
  %657 = icmp ult i32 %586, 262
  br i1 %657, label %658, label %663

658:                                              ; preds = %.loopexit
  %659 = load ptr, ptr %15, align 8, !tbaa !19
  %660 = getelementptr inbounds nuw i8, ptr %659, i64 8
  %661 = load i32, ptr %660, align 8, !tbaa !79
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %663, label %425, !llvm.loop !90

663:                                              ; preds = %658, %.loopexit, %537
  %664 = phi i32 [ %586, %658 ], [ %586, %.loopexit ], [ %538, %537 ]
  %665 = load i64, ptr %345, align 8, !tbaa !38
  %666 = load i64, ptr %89, align 8, !tbaa !59
  %667 = icmp ult i64 %665, %666
  br i1 %667, label %668, label %707

668:                                              ; preds = %663
  %669 = load i32, ptr %90, align 4, !tbaa !71
  %670 = zext i32 %669 to i64
  %671 = zext i32 %664 to i64
  %672 = add nuw nsw i64 %670, %671
  %673 = icmp ult i64 %665, %672
  br i1 %673, label %674, label %684

674:                                              ; preds = %668
  %675 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %666, i64 %672), !nosanitize !44
  %676 = extractvalue { i64, i1 } %675, 1, !nosanitize !44
  br i1 %676, label %677, label %678, !prof !45, !nosanitize !44

677:                                              ; preds = %674
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

678:                                              ; preds = %674
  %679 = extractvalue { i64, i1 } %675, 0, !nosanitize !44
  %680 = tail call i64 @llvm.umin.i64(i64 %679, i64 258)
  %681 = load ptr, ptr %92, align 8, !tbaa !34
  %682 = getelementptr inbounds nuw i8, ptr %681, i64 %672
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %682, i8 0, i64 %680, i1 false)
  %683 = add nuw nsw i64 %680, %672
  br label %704

684:                                              ; preds = %668
  %685 = add nuw nsw i64 %672, 258
  %686 = icmp ult i64 %665, %685
  br i1 %686, label %687, label %707

687:                                              ; preds = %684
  %688 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %666, i64 %665), !nosanitize !44
  %689 = extractvalue { i64, i1 } %688, 1, !nosanitize !44
  br i1 %689, label %690, label %691, !prof !45, !nosanitize !44

690:                                              ; preds = %687
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

691:                                              ; preds = %687
  %692 = sub nuw nsw i64 %685, %665
  %693 = extractvalue { i64, i1 } %688, 0, !nosanitize !44
  %694 = tail call i64 @llvm.umin.i64(i64 %692, i64 %693)
  %695 = load ptr, ptr %92, align 8, !tbaa !34
  %696 = getelementptr inbounds nuw i8, ptr %695, i64 %665
  %697 = and i64 %694, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %696, i8 0, i64 %697, i1 false)
  %698 = load i64, ptr %345, align 8, !tbaa !38
  %699 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %698, i64 %694), !nosanitize !44
  %700 = extractvalue { i64, i1 } %699, 1, !nosanitize !44
  br i1 %700, label %701, label %702, !prof !45, !nosanitize !44

701:                                              ; preds = %691
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

702:                                              ; preds = %691
  %703 = extractvalue { i64, i1 } %699, 0, !nosanitize !44
  br label %704

704:                                              ; preds = %702, %678
  %705 = phi i64 [ %683, %678 ], [ %703, %702 ]
  store i64 %705, ptr %345, align 8, !tbaa !38
  %706 = load i32, ptr %82, align 4, !tbaa !73
  br label %707

707:                                              ; preds = %704, %684, %663
  %708 = phi i32 [ %664, %663 ], [ %664, %684 ], [ %706, %704 ]
  %709 = icmp ugt i32 %708, 2
  br i1 %709, label %.preheader, label %.loopexit39, !llvm.loop !97

.loopexit39:                                      ; preds = %707, %388
  %710 = phi i32 [ %389, %388 ], [ %708, %707 ]
  %711 = load i32, ptr %90, align 4, !tbaa !71
  %712 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %711, i32 %710), !nosanitize !44
  %713 = extractvalue { i32, i1 } %712, 1, !nosanitize !44
  br i1 %713, label %714, label %715, !prof !45, !nosanitize !44

714:                                              ; preds = %.loopexit39
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

715:                                              ; preds = %.loopexit39
  %716 = extractvalue { i32, i1 } %712, 0, !nosanitize !44
  store i32 %716, ptr %90, align 4, !tbaa !71
  %717 = zext i32 %716 to i64
  store i64 %717, ptr %94, align 8, !tbaa !72
  store i32 %710, ptr %95, align 4, !tbaa !74
  store i32 0, ptr %82, align 4, !tbaa !73
  %718 = getelementptr inbounds nuw i8, ptr %15, i64 184
  store i32 2, ptr %718, align 8, !tbaa !75
  %719 = getelementptr inbounds nuw i8, ptr %15, i64 160
  store i32 2, ptr %719, align 8, !tbaa !76
  %720 = getelementptr inbounds nuw i8, ptr %15, i64 168
  store i32 0, ptr %720, align 8, !tbaa !77
  store ptr %88, ptr %0, align 8, !tbaa !80
  store i32 %87, ptr %86, align 8, !tbaa !79
  store i32 %27, ptr %26, align 8, !tbaa !29
  br label %721

721:                                              ; preds = %715, %34, %30, %28, %25, %23, %20, %17, %13, %9, %5, %3
  %722 = phi i32 [ 0, %715 ], [ -2, %23 ], [ -2, %30 ], [ -2, %28 ], [ -2, %25 ], [ -2, %34 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %722
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
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %52, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !19
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !28
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
  %25 = load i32, ptr %24, align 4, !tbaa !71
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %27 = load i32, ptr %26, align 4, !tbaa !73
  %28 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %25, i32 %27), !nosanitize !44
  %29 = extractvalue { i32, i1 } %28, 1, !nosanitize !44
  br i1 %29, label %30, label %31, !prof !45, !nosanitize !44

30:                                               ; preds = %23
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

31:                                               ; preds = %23
  %32 = extractvalue { i32, i1 } %28, 0, !nosanitize !44
  %33 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %34 = load i32, ptr %33, align 8, !tbaa !31
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
  store i32 %35, ptr %2, align 4, !tbaa !33
  br label %52

52:                                               ; preds = %51, %49, %20, %17, %13, %9, %5, %3
  %53 = phi i32 [ 0, %51 ], [ 0, %49 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %53
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
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
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %50, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !19
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %50

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !28
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
  %30 = load i32, ptr %29, align 8, !tbaa !29
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %30), !nosanitize !44
  %34 = extractvalue { i32, i1 } %33, 1, !nosanitize !44
  br i1 %34, label %35, label %36, !prof !45, !nosanitize !44

35:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 13) #13, !nosanitize !44
  unreachable, !nosanitize !44

36:                                               ; preds = %32
  %37 = extractvalue { i32, i1 } %33, 0, !nosanitize !44
  store i32 %37, ptr %29, align 8, !tbaa !29
  br label %38

38:                                               ; preds = %36, %21
  %39 = phi i32 [ %37, %36 ], [ %30, %21 ]
  %40 = icmp eq i32 %39, 2
  %41 = select i1 %40, i32 57, i32 42
  store i32 %41, ptr %19, align 8, !tbaa !28
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
  store i64 %47, ptr %48, align 8, !tbaa !57
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %49, align 4, !tbaa !58
  tail call void @_tr_init(ptr noundef nonnull %13) #11
  br label %50

50:                                               ; preds = %46, %18, %15, %11, %7, %3, %1
  %51 = phi i32 [ 0, %46 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
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
  %14 = load ptr, ptr %13, align 8, !tbaa !18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !19
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !28
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
  %24 = load i32, ptr %23, align 8, !tbaa !29
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw i8, ptr %14, i64 56
  store ptr %1, ptr %27, align 8, !tbaa !98
  br label %28

28:                                               ; preds = %26, %22, %19, %16, %12, %8, %4, %2
  %29 = phi i32 [ 0, %26 ], [ -2, %22 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
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
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !19
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !28
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
  %27 = load i32, ptr %26, align 4, !tbaa !99
  store i32 %27, ptr %2, align 4, !tbaa !33
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

37:                                               ; preds = %30, %28, %20, %17, %13, %9, %5, %3
  %38 = phi i32 [ 0, %28 ], [ %36, %30 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
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
  %14 = load ptr, ptr %13, align 8, !tbaa !18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !19
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !28
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
  %26 = load i32, ptr %25, align 8, !tbaa !100
  store i32 %26, ptr %1, align 4, !tbaa !33
  br label %27

27:                                               ; preds = %24, %22, %19, %16, %12, %8, %4, %2
  %28 = phi i32 [ 0, %24 ], [ 0, %22 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflatePrime(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %.loopexit, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %.loopexit, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %.loopexit, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %.loopexit, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !19
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %.loopexit

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !28
  switch i32 %22, label %.loopexit [
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
  br i1 %24, label %.loopexit, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 5888
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %29 = load ptr, ptr %28, align 8, !tbaa !56
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 2
  %31 = icmp ult ptr %27, %30
  br i1 %31, label %.loopexit, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds nuw i8, ptr %15, i64 5940
  %34 = getelementptr inbounds nuw i8, ptr %15, i64 5936
  br label %35

35:                                               ; preds = %58, %32
  %36 = phi i32 [ %60, %58 ], [ %1, %32 ]
  %37 = phi i32 [ %61, %58 ], [ %2, %32 ]
  %38 = load i32, ptr %33, align 4, !tbaa !99
  %39 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %38), !nosanitize !44
  %40 = extractvalue { i32, i1 } %39, 1, !nosanitize !44
  br i1 %40, label %41, label %42, !prof !45, !nosanitize !44

41:                                               ; preds = %42, %35
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !44
  unreachable, !nosanitize !44

42:                                               ; preds = %35
  %43 = extractvalue { i32, i1 } %39, 0, !nosanitize !44
  %44 = tail call i32 @llvm.smin.i32(i32 %43, i32 %36)
  %45 = shl nuw i32 1, %44
  %46 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %45, i32 -1)
  %47 = extractvalue { i32, i1 } %46, 1, !nosanitize !44
  br i1 %47, label %41, label %48, !prof !45, !nosanitize !44

48:                                               ; preds = %42
  %49 = extractvalue { i32, i1 } %46, 0, !nosanitize !44
  %50 = and i32 %49, %37
  %51 = shl i32 %50, %38
  %52 = load i16, ptr %34, align 8, !tbaa !101
  %53 = trunc i32 %51 to i16
  %54 = or i16 %52, %53
  store i16 %54, ptr %34, align 8, !tbaa !101
  %55 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %38, i32 %44), !nosanitize !44
  %56 = extractvalue { i32, i1 } %55, 1, !nosanitize !44
  br i1 %56, label %57, label %58, !prof !45, !nosanitize !44

57:                                               ; preds = %48
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !44
  unreachable, !nosanitize !44

58:                                               ; preds = %48
  %59 = extractvalue { i32, i1 } %55, 0, !nosanitize !44
  store i32 %59, ptr %33, align 4, !tbaa !99
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #11
  %60 = sub i32 %36, %44
  %61 = ashr i32 %37, %44
  %62 = icmp eq i32 %60, 0
  br i1 %62, label %.loopexit, label %35, !llvm.loop !102

.loopexit:                                        ; preds = %58, %25, %23, %20, %17, %13, %9, %5, %3
  %63 = phi i32 [ -5, %25 ], [ -5, %23 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ], [ 0, %58 ]
  ret i32 %63
}

declare void @_tr_flush_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflateParams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %1090, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %1090, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %1090, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %1090, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !19
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %1090

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !28
  switch i32 %22, label %1090 [
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
  br i1 %28, label %1090, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds nuw i8, ptr %15, i64 196
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 200
  %32 = load i32, ptr %31, align 8, !tbaa !48
  %33 = icmp eq i32 %2, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i32, ptr %30, align 4, !tbaa !47
  %36 = sext i32 %35 to i64
  %.split = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %36
  %37 = getelementptr inbounds nuw i8, ptr %.split, i64 8
  %38 = load ptr, ptr %37, align 8, !tbaa !103
  %39 = zext nneg i32 %25 to i64
  %.split37 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %39
  %40 = getelementptr inbounds nuw i8, ptr %.split37, i64 8
  %41 = load ptr, ptr %40, align 8, !tbaa !103
  %42 = icmp eq ptr %38, %41
  br i1 %42, label %1047, label %43

43:                                               ; preds = %34, %29
  %44 = getelementptr inbounds nuw i8, ptr %15, i64 76
  %45 = load i32, ptr %44, align 4, !tbaa !58
  %46 = icmp eq i32 %45, -2
  br i1 %46, label %1047, label %47

47:                                               ; preds = %43
  switch i32 %22, label %1090 [
    i32 42, label %48
    i32 57, label %48
    i32 69, label %48
    i32 73, label %48
    i32 91, label %48
    i32 103, label %48
    i32 113, label %48
    i32 666, label %48
  ]

48:                                               ; preds = %47, %47, %47, %47, %47, %47, %47, %47
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %50 = load ptr, ptr %49, align 8, !tbaa !104
  %51 = icmp eq ptr %50, null
  br i1 %51, label %63, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %54 = load i32, ptr %53, align 8, !tbaa !79
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %0, align 8, !tbaa !80
  %58 = icmp eq ptr %57, null
  %59 = icmp eq i32 %22, 666
  %60 = or i1 %59, %58
  br i1 %60, label %63, label %66

61:                                               ; preds = %52
  %62 = icmp eq i32 %22, 666
  br i1 %62, label %63, label %66

63:                                               ; preds = %61, %56, %48
  %64 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 32), align 16, !tbaa !42
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %64, ptr %65, align 8, !tbaa !8
  br label %1090

66:                                               ; preds = %61, %56
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %68 = load i32, ptr %67, align 8, !tbaa !105
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %71, ptr %72, align 8, !tbaa !8
  br label %1024

73:                                               ; preds = %66
  store i32 5, ptr %44, align 4, !tbaa !58
  %74 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %75 = load i64, ptr %74, align 8, !tbaa !55
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %122, label %77

77:                                               ; preds = %73
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #11
  %78 = load i64, ptr %74, align 8, !tbaa !55
  %79 = load i32, ptr %67, align 8, !tbaa !105
  %80 = zext i32 %79 to i64
  %81 = tail call i64 @llvm.umin.i64(i64 %78, i64 %80)
  %82 = trunc nuw i64 %81 to i32
  %83 = icmp eq i64 %81, 0
  br i1 %83, label %115, label %84

84:                                               ; preds = %77
  %85 = load ptr, ptr %49, align 8, !tbaa !104
  %86 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %87 = load ptr, ptr %86, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %85, ptr align 1 %87, i64 %81, i1 false)
  %88 = load ptr, ptr %49, align 8, !tbaa !104
  %89 = getelementptr inbounds nuw i8, ptr %88, i64 %81
  store ptr %89, ptr %49, align 8, !tbaa !104
  %90 = load ptr, ptr %86, align 8, !tbaa !56
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 %81
  store ptr %91, ptr %86, align 8, !tbaa !56
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %93 = load i64, ptr %92, align 8, !tbaa !106
  %94 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %93, i64 %81), !nosanitize !44
  %95 = extractvalue { i64, i1 } %94, 1, !nosanitize !44
  br i1 %95, label %96, label %97, !prof !45, !nosanitize !44

96:                                               ; preds = %84
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

97:                                               ; preds = %84
  %98 = extractvalue { i64, i1 } %94, 0, !nosanitize !44
  store i64 %98, ptr %92, align 8, !tbaa !106
  %99 = load i32, ptr %67, align 8, !tbaa !105
  %100 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %99, i32 %82), !nosanitize !44
  %101 = extractvalue { i32, i1 } %100, 1, !nosanitize !44
  br i1 %101, label %102, label %103, !prof !45, !nosanitize !44

102:                                              ; preds = %97
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

103:                                              ; preds = %97
  %104 = extractvalue { i32, i1 } %100, 0, !nosanitize !44
  store i32 %104, ptr %67, align 8, !tbaa !105
  %105 = load i64, ptr %74, align 8, !tbaa !55
  %106 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %105, i64 %81), !nosanitize !44
  %107 = extractvalue { i64, i1 } %106, 1, !nosanitize !44
  br i1 %107, label %108, label %109, !prof !45, !nosanitize !44

108:                                              ; preds = %103
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

109:                                              ; preds = %103
  %110 = extractvalue { i64, i1 } %106, 0, !nosanitize !44
  store i64 %110, ptr %74, align 8, !tbaa !55
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %114 = load ptr, ptr %113, align 8, !tbaa !40
  store ptr %114, ptr %86, align 8, !tbaa !56
  br label %115

115:                                              ; preds = %112, %109, %77
  %116 = phi i64 [ %78, %77 ], [ 0, %112 ], [ %110, %109 ]
  %117 = phi i32 [ %79, %77 ], [ %104, %112 ], [ %104, %109 ]
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %115
  %120 = load i32, ptr %21, align 8, !tbaa !28
  br label %135

121:                                              ; preds = %115
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1024

122:                                              ; preds = %73
  br i1 %55, label %124, label %135

123:                                              ; preds = %124
  tail call void @llvm.ubsantrap(i8 12) #13, !nosanitize !44
  unreachable, !nosanitize !44

124:                                              ; preds = %122
  %125 = add i32 %45, 1073741824
  %126 = icmp sgt i32 %125, -1
  br i1 %126, label %127, label %123, !prof !91, !nosanitize !44

127:                                              ; preds = %124
  %128 = shl nsw i32 %45, 1
  %129 = icmp sgt i32 %45, 4
  %.neg = select i1 %129, i32 -9, i32 0
  %130 = add i32 %.neg, %128
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %133, ptr %134, align 8, !tbaa !8
  br label %1024

135:                                              ; preds = %127, %122, %119
  %136 = phi i64 [ %116, %119 ], [ 0, %122 ], [ 0, %127 ]
  %137 = phi i32 [ %120, %119 ], [ %22, %122 ], [ %22, %127 ]
  switch i32 %137, label %251 [
    i32 666, label %138
    i32 42, label %144
  ]

138:                                              ; preds = %135
  %139 = load i32, ptr %53, align 8, !tbaa !79
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %983, label %141

141:                                              ; preds = %138
  %142 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %142, ptr %143, align 8, !tbaa !8
  br label %1024

144:                                              ; preds = %135
  %145 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %146 = load i32, ptr %145, align 8, !tbaa !29
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store i32 113, ptr %21, align 8, !tbaa !28
  br label %980

149:                                              ; preds = %144
  %150 = getelementptr inbounds nuw i8, ptr %15, i64 84
  %151 = load i32, ptr %150, align 4, !tbaa !30
  %152 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %151, i32 8), !nosanitize !44
  %153 = extractvalue { i32, i1 } %152, 1, !nosanitize !44
  br i1 %153, label %154, label %155, !prof !45, !nosanitize !44

154:                                              ; preds = %149
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

155:                                              ; preds = %149
  %156 = extractvalue { i32, i1 } %152, 0, !nosanitize !44
  %157 = shl i32 %156, 12
  %158 = load i32, ptr %31, align 8, !tbaa !48
  %159 = icmp sgt i32 %158, 1
  br i1 %159, label %168, label %160

160:                                              ; preds = %155
  %161 = load i32, ptr %30, align 4, !tbaa !47
  %162 = icmp slt i32 %161, 2
  br i1 %162, label %168, label %163

163:                                              ; preds = %160
  %164 = icmp samesign ult i32 %161, 6
  br i1 %164, label %168, label %165

165:                                              ; preds = %163
  %166 = icmp eq i32 %161, 6
  %167 = select i1 %166, i32 128, i32 192
  br label %168

168:                                              ; preds = %165, %163, %160, %155
  %169 = phi i32 [ 0, %160 ], [ 0, %155 ], [ 64, %163 ], [ %167, %165 ]
  %170 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %171 = or disjoint i32 %169, %157
  %172 = load i32, ptr %170, align 4, !tbaa !71
  %173 = icmp eq i32 %172, 0
  %174 = select i1 %173, i32 2048, i32 2080
  %175 = or disjoint i32 %174, %171
  %176 = urem i32 %175, 31
  %177 = or disjoint i32 %176, %175
  %178 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %136, i64 1), !nosanitize !44
  %179 = extractvalue { i64, i1 } %178, 1, !nosanitize !44
  br i1 %179, label %180, label %181, !prof !45, !nosanitize !44

180:                                              ; preds = %168
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

181:                                              ; preds = %168
  %182 = extractvalue { i64, i1 } %178, 0, !nosanitize !44
  %183 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %184 = load ptr, ptr %183, align 8, !tbaa !40
  %185 = lshr i32 %175, 8
  %186 = trunc i32 %185 to i8
  store i64 %182, ptr %74, align 8, !tbaa !55
  %187 = getelementptr inbounds nuw i8, ptr %184, i64 %136
  store i8 %186, ptr %187, align 1, !tbaa !5
  %188 = load i64, ptr %74, align 8, !tbaa !55
  %189 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %188, i64 1), !nosanitize !44
  %190 = extractvalue { i64, i1 } %189, 1, !nosanitize !44
  br i1 %190, label %191, label %192, !prof !45, !nosanitize !44

191:                                              ; preds = %181
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

192:                                              ; preds = %181
  %193 = extractvalue { i64, i1 } %189, 0, !nosanitize !44
  %194 = load ptr, ptr %183, align 8, !tbaa !40
  %195 = trunc i32 %177 to i8
  %196 = xor i8 %195, 31
  store i64 %193, ptr %74, align 8, !tbaa !55
  %197 = getelementptr inbounds nuw i8, ptr %194, i64 %188
  store i8 %196, ptr %197, align 1, !tbaa !5
  %198 = load i32, ptr %170, align 4, !tbaa !71
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %243, label %200

200:                                              ; preds = %192
  %201 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %202 = load i64, ptr %201, align 8, !tbaa !57
  %203 = lshr i64 %202, 16
  %204 = load i64, ptr %74, align 8, !tbaa !55
  %205 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %204, i64 1), !nosanitize !44
  %206 = extractvalue { i64, i1 } %205, 1, !nosanitize !44
  br i1 %206, label %207, label %208, !prof !45, !nosanitize !44

207:                                              ; preds = %200
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

208:                                              ; preds = %200
  %209 = extractvalue { i64, i1 } %205, 0, !nosanitize !44
  %210 = load ptr, ptr %183, align 8, !tbaa !40
  %211 = lshr i64 %202, 24
  %212 = trunc i64 %211 to i8
  store i64 %209, ptr %74, align 8, !tbaa !55
  %213 = getelementptr inbounds nuw i8, ptr %210, i64 %204
  store i8 %212, ptr %213, align 1, !tbaa !5
  %214 = load i64, ptr %74, align 8, !tbaa !55
  %215 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %214, i64 1), !nosanitize !44
  %216 = extractvalue { i64, i1 } %215, 1, !nosanitize !44
  br i1 %216, label %217, label %218, !prof !45, !nosanitize !44

217:                                              ; preds = %208
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

218:                                              ; preds = %208
  %219 = extractvalue { i64, i1 } %215, 0, !nosanitize !44
  %220 = load ptr, ptr %183, align 8, !tbaa !40
  %221 = trunc i64 %203 to i8
  store i64 %219, ptr %74, align 8, !tbaa !55
  %222 = getelementptr inbounds nuw i8, ptr %220, i64 %214
  store i8 %221, ptr %222, align 1, !tbaa !5
  %223 = load i64, ptr %201, align 8, !tbaa !57
  %224 = trunc i64 %223 to i8
  %225 = load i64, ptr %74, align 8, !tbaa !55
  %226 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %225, i64 1), !nosanitize !44
  %227 = extractvalue { i64, i1 } %226, 1, !nosanitize !44
  br i1 %227, label %228, label %229, !prof !45, !nosanitize !44

228:                                              ; preds = %218
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

229:                                              ; preds = %218
  %230 = extractvalue { i64, i1 } %226, 0, !nosanitize !44
  %231 = load ptr, ptr %183, align 8, !tbaa !40
  %232 = lshr i64 %223, 8
  %233 = trunc i64 %232 to i8
  store i64 %230, ptr %74, align 8, !tbaa !55
  %234 = getelementptr inbounds nuw i8, ptr %231, i64 %225
  store i8 %233, ptr %234, align 1, !tbaa !5
  %235 = load i64, ptr %74, align 8, !tbaa !55
  %236 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %235, i64 1), !nosanitize !44
  %237 = extractvalue { i64, i1 } %236, 1, !nosanitize !44
  br i1 %237, label %238, label %239, !prof !45, !nosanitize !44

238:                                              ; preds = %229
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

239:                                              ; preds = %229
  %240 = extractvalue { i64, i1 } %236, 0, !nosanitize !44
  %241 = load ptr, ptr %183, align 8, !tbaa !40
  store i64 %240, ptr %74, align 8, !tbaa !55
  %242 = getelementptr inbounds nuw i8, ptr %241, i64 %235
  store i8 %224, ptr %242, align 1, !tbaa !5
  br label %243

243:                                              ; preds = %239, %192
  %244 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %245 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %244, ptr %245, align 8, !tbaa !57
  store i32 113, ptr %21, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %246 = load i64, ptr %74, align 8, !tbaa !55
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %243
  %249 = load i32, ptr %21, align 8, !tbaa !28
  br label %251

250:                                              ; preds = %243
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1024

251:                                              ; preds = %248, %135
  %252 = phi i32 [ %249, %248 ], [ %137, %135 ]
  %253 = icmp eq i32 %252, 57
  br i1 %253, label %254, label %509

254:                                              ; preds = %251
  %255 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %256 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %255, ptr %256, align 8, !tbaa !57
  %257 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %258 = load i64, ptr %74, align 8, !tbaa !55
  %259 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %258, i64 1), !nosanitize !44
  %260 = extractvalue { i64, i1 } %259, 1, !nosanitize !44
  br i1 %260, label %261, label %262, !prof !45, !nosanitize !44

261:                                              ; preds = %254
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

262:                                              ; preds = %254
  %263 = extractvalue { i64, i1 } %259, 0, !nosanitize !44
  %264 = load ptr, ptr %257, align 8, !tbaa !40
  store i64 %263, ptr %74, align 8, !tbaa !55
  %265 = getelementptr inbounds nuw i8, ptr %264, i64 %258
  store i8 31, ptr %265, align 1, !tbaa !5
  %266 = load i64, ptr %74, align 8, !tbaa !55
  %267 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %266, i64 1), !nosanitize !44
  %268 = extractvalue { i64, i1 } %267, 1, !nosanitize !44
  br i1 %268, label %269, label %270, !prof !45, !nosanitize !44

269:                                              ; preds = %262
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

270:                                              ; preds = %262
  %271 = extractvalue { i64, i1 } %267, 0, !nosanitize !44
  %272 = load ptr, ptr %257, align 8, !tbaa !40
  store i64 %271, ptr %74, align 8, !tbaa !55
  %273 = getelementptr inbounds nuw i8, ptr %272, i64 %266
  store i8 -117, ptr %273, align 1, !tbaa !5
  %274 = load i64, ptr %74, align 8, !tbaa !55
  %275 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %274, i64 1), !nosanitize !44
  %276 = extractvalue { i64, i1 } %275, 1, !nosanitize !44
  br i1 %276, label %277, label %278, !prof !45, !nosanitize !44

277:                                              ; preds = %270
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

278:                                              ; preds = %270
  %279 = extractvalue { i64, i1 } %275, 0, !nosanitize !44
  %280 = load ptr, ptr %257, align 8, !tbaa !40
  store i64 %279, ptr %74, align 8, !tbaa !55
  %281 = getelementptr inbounds nuw i8, ptr %280, i64 %274
  store i8 8, ptr %281, align 1, !tbaa !5
  %282 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %283 = load ptr, ptr %282, align 8, !tbaa !98
  %284 = icmp eq ptr %283, null
  %285 = load i64, ptr %74, align 8, !tbaa !55
  %286 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %285, i64 1), !nosanitize !44
  %287 = extractvalue { i64, i1 } %286, 1, !nosanitize !44
  br i1 %284, label %288, label %355

288:                                              ; preds = %278
  br i1 %287, label %289, label %290, !prof !45, !nosanitize !44

289:                                              ; preds = %288
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

290:                                              ; preds = %288
  %291 = extractvalue { i64, i1 } %286, 0, !nosanitize !44
  %292 = load ptr, ptr %257, align 8, !tbaa !40
  store i64 %291, ptr %74, align 8, !tbaa !55
  %293 = getelementptr inbounds nuw i8, ptr %292, i64 %285
  store i8 0, ptr %293, align 1, !tbaa !5
  %294 = load i64, ptr %74, align 8, !tbaa !55
  %295 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %294, i64 1), !nosanitize !44
  %296 = extractvalue { i64, i1 } %295, 1, !nosanitize !44
  br i1 %296, label %297, label %298, !prof !45, !nosanitize !44

297:                                              ; preds = %290
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

298:                                              ; preds = %290
  %299 = extractvalue { i64, i1 } %295, 0, !nosanitize !44
  %300 = load ptr, ptr %257, align 8, !tbaa !40
  store i64 %299, ptr %74, align 8, !tbaa !55
  %301 = getelementptr inbounds nuw i8, ptr %300, i64 %294
  store i8 0, ptr %301, align 1, !tbaa !5
  %302 = load i64, ptr %74, align 8, !tbaa !55
  %303 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %302, i64 1), !nosanitize !44
  %304 = extractvalue { i64, i1 } %303, 1, !nosanitize !44
  br i1 %304, label %305, label %306, !prof !45, !nosanitize !44

305:                                              ; preds = %298
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

306:                                              ; preds = %298
  %307 = extractvalue { i64, i1 } %303, 0, !nosanitize !44
  %308 = load ptr, ptr %257, align 8, !tbaa !40
  store i64 %307, ptr %74, align 8, !tbaa !55
  %309 = getelementptr inbounds nuw i8, ptr %308, i64 %302
  store i8 0, ptr %309, align 1, !tbaa !5
  %310 = load i64, ptr %74, align 8, !tbaa !55
  %311 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %310, i64 1), !nosanitize !44
  %312 = extractvalue { i64, i1 } %311, 1, !nosanitize !44
  br i1 %312, label %313, label %314, !prof !45, !nosanitize !44

313:                                              ; preds = %306
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

314:                                              ; preds = %306
  %315 = extractvalue { i64, i1 } %311, 0, !nosanitize !44
  %316 = load ptr, ptr %257, align 8, !tbaa !40
  store i64 %315, ptr %74, align 8, !tbaa !55
  %317 = getelementptr inbounds nuw i8, ptr %316, i64 %310
  store i8 0, ptr %317, align 1, !tbaa !5
  %318 = load i64, ptr %74, align 8, !tbaa !55
  %319 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %318, i64 1), !nosanitize !44
  %320 = extractvalue { i64, i1 } %319, 1, !nosanitize !44
  br i1 %320, label %321, label %322, !prof !45, !nosanitize !44

321:                                              ; preds = %314
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

322:                                              ; preds = %314
  %323 = extractvalue { i64, i1 } %319, 0, !nosanitize !44
  %324 = load ptr, ptr %257, align 8, !tbaa !40
  store i64 %323, ptr %74, align 8, !tbaa !55
  %325 = getelementptr inbounds nuw i8, ptr %324, i64 %318
  store i8 0, ptr %325, align 1, !tbaa !5
  %326 = load i32, ptr %30, align 4, !tbaa !47
  %327 = icmp eq i32 %326, 9
  br i1 %327, label %334, label %328

328:                                              ; preds = %322
  %329 = load i32, ptr %31, align 8, !tbaa !48
  %330 = icmp sgt i32 %329, 1
  %331 = icmp slt i32 %326, 2
  %332 = or i1 %331, %330
  %333 = select i1 %332, i8 4, i8 0
  br label %334

334:                                              ; preds = %328, %322
  %335 = phi i8 [ %333, %328 ], [ 2, %322 ]
  %336 = load i64, ptr %74, align 8, !tbaa !55
  %337 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %336, i64 1), !nosanitize !44
  %338 = extractvalue { i64, i1 } %337, 1, !nosanitize !44
  br i1 %338, label %339, label %340, !prof !45, !nosanitize !44

339:                                              ; preds = %334
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

340:                                              ; preds = %334
  %341 = extractvalue { i64, i1 } %337, 0, !nosanitize !44
  %342 = load ptr, ptr %257, align 8, !tbaa !40
  store i64 %341, ptr %74, align 8, !tbaa !55
  %343 = getelementptr inbounds nuw i8, ptr %342, i64 %336
  store i8 %335, ptr %343, align 1, !tbaa !5
  %344 = load i64, ptr %74, align 8, !tbaa !55
  %345 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %344, i64 1), !nosanitize !44
  %346 = extractvalue { i64, i1 } %345, 1, !nosanitize !44
  br i1 %346, label %347, label %348, !prof !45, !nosanitize !44

347:                                              ; preds = %340
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

348:                                              ; preds = %340
  %349 = extractvalue { i64, i1 } %345, 0, !nosanitize !44
  %350 = load ptr, ptr %257, align 8, !tbaa !40
  store i64 %349, ptr %74, align 8, !tbaa !55
  %351 = getelementptr inbounds nuw i8, ptr %350, i64 %344
  store i8 3, ptr %351, align 1, !tbaa !5
  store i32 113, ptr %21, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %352 = load i64, ptr %74, align 8, !tbaa !55
  %353 = icmp eq i64 %352, 0
  br i1 %353, label %507, label %354

354:                                              ; preds = %348
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1024

355:                                              ; preds = %278
  br i1 %287, label %356, label %357, !prof !45, !nosanitize !44

356:                                              ; preds = %355
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

357:                                              ; preds = %355
  %358 = extractvalue { i64, i1 } %286, 0, !nosanitize !44
  %359 = load ptr, ptr %257, align 8, !tbaa !40
  %360 = getelementptr inbounds nuw i8, ptr %283, i64 56
  %361 = load ptr, ptr %360, align 8, !tbaa !107
  %362 = icmp eq ptr %361, null
  %363 = getelementptr inbounds nuw i8, ptr %283, i64 40
  %364 = load ptr, ptr %363, align 8, !tbaa !109
  %365 = icmp eq ptr %364, null
  %366 = getelementptr inbounds nuw i8, ptr %283, i64 24
  %367 = load ptr, ptr %366, align 8, !tbaa !110
  %368 = icmp eq ptr %367, null
  %369 = load i32, ptr %283, align 8, !tbaa !111
  %370 = icmp ne i32 %369, 0
  %371 = getelementptr inbounds nuw i8, ptr %283, i64 68
  %372 = load i32, ptr %371, align 4, !tbaa !112
  %373 = icmp eq i32 %372, 0
  %374 = select i1 %373, i8 0, i8 2
  %375 = zext i1 %370 to i8
  %376 = select i1 %368, i8 0, i8 4
  %377 = select i1 %365, i8 0, i8 8
  %378 = select i1 %362, i8 0, i8 16
  %379 = or disjoint i8 %377, %378
  %380 = or disjoint i8 %379, %376
  %381 = or disjoint i8 %380, %375
  %382 = or disjoint i8 %381, %374
  store i64 %358, ptr %74, align 8, !tbaa !55
  %383 = getelementptr inbounds nuw i8, ptr %359, i64 %285
  store i8 %382, ptr %383, align 1, !tbaa !5
  %384 = load i64, ptr %74, align 8, !tbaa !55
  %385 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %384, i64 1), !nosanitize !44
  %386 = extractvalue { i64, i1 } %385, 1, !nosanitize !44
  br i1 %386, label %387, label %388, !prof !45, !nosanitize !44

387:                                              ; preds = %357
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

388:                                              ; preds = %357
  %389 = extractvalue { i64, i1 } %385, 0, !nosanitize !44
  %390 = load ptr, ptr %257, align 8, !tbaa !40
  %391 = load ptr, ptr %282, align 8, !tbaa !98
  %392 = getelementptr inbounds nuw i8, ptr %391, i64 8
  %393 = load i64, ptr %392, align 8, !tbaa !113
  %394 = trunc i64 %393 to i8
  store i64 %389, ptr %74, align 8, !tbaa !55
  %395 = getelementptr inbounds nuw i8, ptr %390, i64 %384
  store i8 %394, ptr %395, align 1, !tbaa !5
  %396 = load i64, ptr %74, align 8, !tbaa !55
  %397 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %396, i64 1), !nosanitize !44
  %398 = extractvalue { i64, i1 } %397, 1, !nosanitize !44
  br i1 %398, label %399, label %400, !prof !45, !nosanitize !44

399:                                              ; preds = %388
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

400:                                              ; preds = %388
  %401 = extractvalue { i64, i1 } %397, 0, !nosanitize !44
  %402 = load ptr, ptr %257, align 8, !tbaa !40
  %403 = load ptr, ptr %282, align 8, !tbaa !98
  %404 = getelementptr inbounds nuw i8, ptr %403, i64 8
  %405 = load i64, ptr %404, align 8, !tbaa !113
  %406 = lshr i64 %405, 8
  %407 = trunc i64 %406 to i8
  store i64 %401, ptr %74, align 8, !tbaa !55
  %408 = getelementptr inbounds nuw i8, ptr %402, i64 %396
  store i8 %407, ptr %408, align 1, !tbaa !5
  %409 = load i64, ptr %74, align 8, !tbaa !55
  %410 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %409, i64 1), !nosanitize !44
  %411 = extractvalue { i64, i1 } %410, 1, !nosanitize !44
  br i1 %411, label %412, label %413, !prof !45, !nosanitize !44

412:                                              ; preds = %400
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

413:                                              ; preds = %400
  %414 = extractvalue { i64, i1 } %410, 0, !nosanitize !44
  %415 = load ptr, ptr %257, align 8, !tbaa !40
  %416 = load ptr, ptr %282, align 8, !tbaa !98
  %417 = getelementptr inbounds nuw i8, ptr %416, i64 8
  %418 = load i64, ptr %417, align 8, !tbaa !113
  %419 = lshr i64 %418, 16
  %420 = trunc i64 %419 to i8
  store i64 %414, ptr %74, align 8, !tbaa !55
  %421 = getelementptr inbounds nuw i8, ptr %415, i64 %409
  store i8 %420, ptr %421, align 1, !tbaa !5
  %422 = load i64, ptr %74, align 8, !tbaa !55
  %423 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %422, i64 1), !nosanitize !44
  %424 = extractvalue { i64, i1 } %423, 1, !nosanitize !44
  br i1 %424, label %425, label %426, !prof !45, !nosanitize !44

425:                                              ; preds = %413
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

426:                                              ; preds = %413
  %427 = extractvalue { i64, i1 } %423, 0, !nosanitize !44
  %428 = load ptr, ptr %257, align 8, !tbaa !40
  %429 = load ptr, ptr %282, align 8, !tbaa !98
  %430 = getelementptr inbounds nuw i8, ptr %429, i64 8
  %431 = load i64, ptr %430, align 8, !tbaa !113
  %432 = lshr i64 %431, 24
  %433 = trunc i64 %432 to i8
  store i64 %427, ptr %74, align 8, !tbaa !55
  %434 = getelementptr inbounds nuw i8, ptr %428, i64 %422
  store i8 %433, ptr %434, align 1, !tbaa !5
  %435 = load i32, ptr %30, align 4, !tbaa !47
  %436 = icmp eq i32 %435, 9
  br i1 %436, label %443, label %437

437:                                              ; preds = %426
  %438 = load i32, ptr %31, align 8, !tbaa !48
  %439 = icmp sgt i32 %438, 1
  %440 = icmp slt i32 %435, 2
  %441 = or i1 %440, %439
  %442 = select i1 %441, i8 4, i8 0
  br label %443

443:                                              ; preds = %437, %426
  %444 = phi i8 [ %442, %437 ], [ 2, %426 ]
  %445 = load i64, ptr %74, align 8, !tbaa !55
  %446 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %445, i64 1), !nosanitize !44
  %447 = extractvalue { i64, i1 } %446, 1, !nosanitize !44
  br i1 %447, label %448, label %449, !prof !45, !nosanitize !44

448:                                              ; preds = %443
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

449:                                              ; preds = %443
  %450 = extractvalue { i64, i1 } %446, 0, !nosanitize !44
  %451 = load ptr, ptr %257, align 8, !tbaa !40
  store i64 %450, ptr %74, align 8, !tbaa !55
  %452 = getelementptr inbounds nuw i8, ptr %451, i64 %445
  store i8 %444, ptr %452, align 1, !tbaa !5
  %453 = load i64, ptr %74, align 8, !tbaa !55
  %454 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %453, i64 1), !nosanitize !44
  %455 = extractvalue { i64, i1 } %454, 1, !nosanitize !44
  br i1 %455, label %456, label %457, !prof !45, !nosanitize !44

456:                                              ; preds = %449
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

457:                                              ; preds = %449
  %458 = extractvalue { i64, i1 } %454, 0, !nosanitize !44
  %459 = load ptr, ptr %257, align 8, !tbaa !40
  %460 = load ptr, ptr %282, align 8, !tbaa !98
  %461 = getelementptr inbounds nuw i8, ptr %460, i64 20
  %462 = load i32, ptr %461, align 4, !tbaa !114
  %463 = trunc i32 %462 to i8
  store i64 %458, ptr %74, align 8, !tbaa !55
  %464 = getelementptr inbounds nuw i8, ptr %459, i64 %453
  store i8 %463, ptr %464, align 1, !tbaa !5
  %465 = load ptr, ptr %282, align 8, !tbaa !98
  %466 = getelementptr inbounds nuw i8, ptr %465, i64 24
  %467 = load ptr, ptr %466, align 8, !tbaa !110
  %468 = icmp eq ptr %467, null
  br i1 %468, label %495, label %469

469:                                              ; preds = %457
  %470 = load i64, ptr %74, align 8, !tbaa !55
  %471 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %470, i64 1), !nosanitize !44
  %472 = extractvalue { i64, i1 } %471, 1, !nosanitize !44
  br i1 %472, label %473, label %474, !prof !45, !nosanitize !44

473:                                              ; preds = %469
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

474:                                              ; preds = %469
  %475 = extractvalue { i64, i1 } %471, 0, !nosanitize !44
  %476 = load ptr, ptr %257, align 8, !tbaa !40
  %477 = getelementptr inbounds nuw i8, ptr %465, i64 32
  %478 = load i32, ptr %477, align 8, !tbaa !115
  %479 = trunc i32 %478 to i8
  store i64 %475, ptr %74, align 8, !tbaa !55
  %480 = getelementptr inbounds nuw i8, ptr %476, i64 %470
  store i8 %479, ptr %480, align 1, !tbaa !5
  %481 = load i64, ptr %74, align 8, !tbaa !55
  %482 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %481, i64 1), !nosanitize !44
  %483 = extractvalue { i64, i1 } %482, 1, !nosanitize !44
  br i1 %483, label %484, label %485, !prof !45, !nosanitize !44

484:                                              ; preds = %474
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

485:                                              ; preds = %474
  %486 = extractvalue { i64, i1 } %482, 0, !nosanitize !44
  %487 = load ptr, ptr %257, align 8, !tbaa !40
  %488 = load ptr, ptr %282, align 8, !tbaa !98
  %489 = getelementptr inbounds nuw i8, ptr %488, i64 32
  %490 = load i32, ptr %489, align 8, !tbaa !115
  %491 = lshr i32 %490, 8
  %492 = trunc i32 %491 to i8
  store i64 %486, ptr %74, align 8, !tbaa !55
  %493 = getelementptr inbounds nuw i8, ptr %487, i64 %481
  store i8 %492, ptr %493, align 1, !tbaa !5
  %494 = load ptr, ptr %282, align 8, !tbaa !98
  br label %495

495:                                              ; preds = %485, %457
  %496 = phi ptr [ %494, %485 ], [ %465, %457 ]
  %497 = getelementptr inbounds nuw i8, ptr %496, i64 68
  %498 = load i32, ptr %497, align 4, !tbaa !112
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %505, label %500

500:                                              ; preds = %495
  %501 = load i64, ptr %256, align 8, !tbaa !57
  %502 = load ptr, ptr %257, align 8, !tbaa !40
  %503 = load i64, ptr %74, align 8, !tbaa !55
  %504 = tail call i64 @crc32_z(i64 noundef %501, ptr noundef %502, i64 noundef %503) #11
  store i64 %504, ptr %256, align 8, !tbaa !57
  br label %505

505:                                              ; preds = %500, %495
  %506 = getelementptr inbounds nuw i8, ptr %15, i64 64
  store i64 0, ptr %506, align 8, !tbaa !116
  store i32 69, ptr %21, align 8, !tbaa !28
  br label %511

507:                                              ; preds = %348
  %508 = load i32, ptr %21, align 8, !tbaa !28
  br label %509

509:                                              ; preds = %507, %251
  %510 = phi i32 [ %508, %507 ], [ %252, %251 ]
  switch i32 %510, label %980 [
    i32 69, label %511
    i32 73, label %712
    i32 91, label %824
    i32 103, label %935
  ]

511:                                              ; preds = %509, %505
  %512 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %513 = load ptr, ptr %512, align 8, !tbaa !98
  %514 = getelementptr inbounds nuw i8, ptr %513, i64 24
  %515 = load ptr, ptr %514, align 8, !tbaa !110
  %516 = icmp eq ptr %515, null
  br i1 %516, label %711, label %517

517:                                              ; preds = %511
  %518 = getelementptr inbounds nuw i8, ptr %513, i64 32
  %519 = load i32, ptr %518, align 8, !tbaa !115
  %520 = and i32 %519, 65535
  %521 = zext nneg i32 %520 to i64
  %522 = getelementptr inbounds nuw i8, ptr %15, i64 64
  %523 = load i64, ptr %522, align 8, !tbaa !116
  %524 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %521, i64 %523), !nosanitize !44
  %525 = extractvalue { i64, i1 } %524, 1, !nosanitize !44
  br i1 %525, label %526, label %527, !prof !45, !nosanitize !44

526:                                              ; preds = %517
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

527:                                              ; preds = %517
  %528 = load i64, ptr %74, align 8, !tbaa !55
  %529 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %530 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %531 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %532 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %533 = extractvalue { i64, i1 } %524, 0
  %534 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %528, i64 %533), !nosanitize !44
  %535 = extractvalue { i64, i1 } %534, 1, !nosanitize !44
  br i1 %535, label %608, label %536, !prof !45, !nosanitize !44

536:                                              ; preds = %527
  %537 = extractvalue { i64, i1 } %534, 0, !nosanitize !44
  %538 = load i64, ptr %529, align 8, !tbaa !41
  %539 = icmp ugt i64 %537, %538
  br i1 %539, label %540, label %684

540:                                              ; preds = %536
  %541 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %538, i64 %528), !nosanitize !44
  %542 = extractvalue { i64, i1 } %541, 0, !nosanitize !44
  %543 = extractvalue { i64, i1 } %541, 1, !nosanitize !44
  br i1 %543, label %613, label %544, !prof !45, !nosanitize !44

544:                                              ; preds = %540
  %545 = load ptr, ptr %530, align 8, !tbaa !40
  %546 = getelementptr inbounds nuw i8, ptr %545, i64 %528
  %547 = getelementptr inbounds nuw i8, ptr %515, i64 %523
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %546, ptr nonnull align 1 %547, i64 %542, i1 false)
  %548 = load i64, ptr %529, align 8, !tbaa !41
  store i64 %548, ptr %74, align 8, !tbaa !55
  %549 = load ptr, ptr %512, align 8, !tbaa !98
  %550 = getelementptr inbounds nuw i8, ptr %549, i64 68
  %551 = load i32, ptr %550, align 4, !tbaa !112
  %552 = icmp ne i32 %551, 0
  %553 = icmp ugt i64 %548, %528
  %554 = select i1 %552, i1 %553, i1 false
  br i1 %554, label %555, label %561

555:                                              ; preds = %544
  %556 = sub nuw i64 %548, %528
  %557 = load ptr, ptr %530, align 8, !tbaa !40
  %558 = getelementptr inbounds nuw i8, ptr %557, i64 %528
  %559 = load i64, ptr %531, align 8, !tbaa !57
  %560 = tail call i64 @crc32_z(i64 noundef %559, ptr noundef %558, i64 noundef %556) #11
  store i64 %560, ptr %531, align 8, !tbaa !57
  br label %561

561:                                              ; preds = %555, %544
  %562 = load i64, ptr %522, align 8, !tbaa !116
  %563 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %562, i64 %542), !nosanitize !44
  %564 = extractvalue { i64, i1 } %563, 1, !nosanitize !44
  br i1 %564, label %.loopexit, label %565, !prof !45, !nosanitize !44

565:                                              ; preds = %561
  %566 = extractvalue { i64, i1 } %563, 0, !nosanitize !44
  store i64 %566, ptr %522, align 8, !tbaa !116
  %567 = load ptr, ptr %14, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %567) #11
  %568 = getelementptr inbounds nuw i8, ptr %567, i64 40
  %569 = load i64, ptr %568, align 8, !tbaa !55
  %570 = load i32, ptr %67, align 8, !tbaa !105
  %571 = zext i32 %570 to i64
  %572 = tail call i64 @llvm.umin.i64(i64 %569, i64 %571)
  %573 = trunc nuw i64 %572 to i32
  %574 = icmp eq i64 %572, 0
  br i1 %574, label %602, label %575

575:                                              ; preds = %565
  %576 = load ptr, ptr %49, align 8, !tbaa !104
  %577 = getelementptr inbounds nuw i8, ptr %567, i64 32
  %578 = load ptr, ptr %577, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %576, ptr align 1 %578, i64 %572, i1 false)
  %579 = load ptr, ptr %49, align 8, !tbaa !104
  %580 = getelementptr inbounds nuw i8, ptr %579, i64 %572
  store ptr %580, ptr %49, align 8, !tbaa !104
  %581 = load ptr, ptr %577, align 8, !tbaa !56
  %582 = getelementptr inbounds nuw i8, ptr %581, i64 %572
  store ptr %582, ptr %577, align 8, !tbaa !56
  %583 = load i64, ptr %532, align 8, !tbaa !106
  %584 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %583, i64 %572), !nosanitize !44
  %585 = extractvalue { i64, i1 } %584, 1, !nosanitize !44
  br i1 %585, label %.loopexit39, label %586, !prof !45, !nosanitize !44

586:                                              ; preds = %575
  %587 = extractvalue { i64, i1 } %584, 0, !nosanitize !44
  store i64 %587, ptr %532, align 8, !tbaa !106
  %588 = load i32, ptr %67, align 8, !tbaa !105
  %589 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %588, i32 %573), !nosanitize !44
  %590 = extractvalue { i32, i1 } %589, 1, !nosanitize !44
  br i1 %590, label %.loopexit40, label %591, !prof !45, !nosanitize !44

591:                                              ; preds = %586
  %592 = extractvalue { i32, i1 } %589, 0, !nosanitize !44
  store i32 %592, ptr %67, align 8, !tbaa !105
  %593 = load i64, ptr %568, align 8, !tbaa !55
  %594 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %593, i64 %572), !nosanitize !44
  %595 = extractvalue { i64, i1 } %594, 1, !nosanitize !44
  br i1 %595, label %.loopexit41, label %596, !prof !45, !nosanitize !44

596:                                              ; preds = %591
  %597 = extractvalue { i64, i1 } %594, 0, !nosanitize !44
  store i64 %597, ptr %568, align 8, !tbaa !55
  %598 = icmp eq i64 %597, 0
  br i1 %598, label %599, label %602

599:                                              ; preds = %596
  %600 = getelementptr inbounds nuw i8, ptr %567, i64 16
  %601 = load ptr, ptr %600, align 8, !tbaa !40
  store ptr %601, ptr %577, align 8, !tbaa !56
  br label %602

602:                                              ; preds = %599, %596, %565
  %603 = load i64, ptr %74, align 8, !tbaa !55
  %604 = icmp eq i64 %603, 0
  br i1 %604, label %605, label %.loopexit42

605:                                              ; preds = %602
  %606 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %533, i64 %542), !nosanitize !44
  %607 = extractvalue { i64, i1 } %606, 1, !nosanitize !44
  br i1 %607, label %.loopexit43, label %.preheader, !prof !45, !nosanitize !44

608:                                              ; preds = %527
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

.preheader:                                       ; preds = %605, %676
  %609 = phi { i64, i1 } [ %677, %676 ], [ %606, %605 ]
  %610 = extractvalue { i64, i1 } %609, 0
  %611 = load i64, ptr %529, align 8, !tbaa !41
  %612 = icmp ugt i64 %610, %611
  br i1 %612, label %614, label %679

613:                                              ; preds = %540
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

614:                                              ; preds = %.preheader
  %615 = load ptr, ptr %530, align 8, !tbaa !40
  %616 = load ptr, ptr %512, align 8, !tbaa !98
  %617 = getelementptr inbounds nuw i8, ptr %616, i64 24
  %618 = load ptr, ptr %617, align 8, !tbaa !110
  %619 = load i64, ptr %522, align 8, !tbaa !116
  %620 = getelementptr inbounds nuw i8, ptr %618, i64 %619
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %615, ptr align 1 %620, i64 %611, i1 false)
  %621 = load i64, ptr %529, align 8, !tbaa !41
  store i64 %621, ptr %74, align 8, !tbaa !55
  %622 = load ptr, ptr %512, align 8, !tbaa !98
  %623 = getelementptr inbounds nuw i8, ptr %622, i64 68
  %624 = load i32, ptr %623, align 4, !tbaa !112
  %625 = icmp ne i32 %624, 0
  %626 = icmp ne i64 %621, 0
  %627 = select i1 %625, i1 %626, i1 false
  br i1 %627, label %628, label %632

628:                                              ; preds = %614
  %629 = load ptr, ptr %530, align 8, !tbaa !40
  %630 = load i64, ptr %531, align 8, !tbaa !57
  %631 = tail call i64 @crc32_z(i64 noundef %630, ptr noundef %629, i64 noundef %621) #11
  store i64 %631, ptr %531, align 8, !tbaa !57
  br label %632

632:                                              ; preds = %628, %614
  %633 = load i64, ptr %522, align 8, !tbaa !116
  %634 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %633, i64 %611), !nosanitize !44
  %635 = extractvalue { i64, i1 } %634, 1, !nosanitize !44
  br i1 %635, label %.loopexit, label %636, !prof !117, !nosanitize !44

.loopexit:                                        ; preds = %632, %561
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

636:                                              ; preds = %632
  %637 = extractvalue { i64, i1 } %634, 0, !nosanitize !44
  store i64 %637, ptr %522, align 8, !tbaa !116
  %638 = load ptr, ptr %14, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %638) #11
  %639 = getelementptr inbounds nuw i8, ptr %638, i64 40
  %640 = load i64, ptr %639, align 8, !tbaa !55
  %641 = load i32, ptr %67, align 8, !tbaa !105
  %642 = zext i32 %641 to i64
  %643 = tail call i64 @llvm.umin.i64(i64 %640, i64 %642)
  %644 = trunc nuw i64 %643 to i32
  %645 = icmp eq i64 %643, 0
  br i1 %645, label %673, label %646

646:                                              ; preds = %636
  %647 = load ptr, ptr %49, align 8, !tbaa !104
  %648 = getelementptr inbounds nuw i8, ptr %638, i64 32
  %649 = load ptr, ptr %648, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %647, ptr align 1 %649, i64 %643, i1 false)
  %650 = load ptr, ptr %49, align 8, !tbaa !104
  %651 = getelementptr inbounds nuw i8, ptr %650, i64 %643
  store ptr %651, ptr %49, align 8, !tbaa !104
  %652 = load ptr, ptr %648, align 8, !tbaa !56
  %653 = getelementptr inbounds nuw i8, ptr %652, i64 %643
  store ptr %653, ptr %648, align 8, !tbaa !56
  %654 = load i64, ptr %532, align 8, !tbaa !106
  %655 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %654, i64 %643), !nosanitize !44
  %656 = extractvalue { i64, i1 } %655, 1, !nosanitize !44
  br i1 %656, label %.loopexit39, label %657, !prof !117, !nosanitize !44

.loopexit39:                                      ; preds = %646, %575
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

657:                                              ; preds = %646
  %658 = extractvalue { i64, i1 } %655, 0, !nosanitize !44
  store i64 %658, ptr %532, align 8, !tbaa !106
  %659 = load i32, ptr %67, align 8, !tbaa !105
  %660 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %659, i32 %644), !nosanitize !44
  %661 = extractvalue { i32, i1 } %660, 1, !nosanitize !44
  br i1 %661, label %.loopexit40, label %662, !prof !117, !nosanitize !44

.loopexit40:                                      ; preds = %657, %586
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

662:                                              ; preds = %657
  %663 = extractvalue { i32, i1 } %660, 0, !nosanitize !44
  store i32 %663, ptr %67, align 8, !tbaa !105
  %664 = load i64, ptr %639, align 8, !tbaa !55
  %665 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %664, i64 %643), !nosanitize !44
  %666 = extractvalue { i64, i1 } %665, 1, !nosanitize !44
  br i1 %666, label %.loopexit41, label %667, !prof !117, !nosanitize !44

.loopexit41:                                      ; preds = %662, %591
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

667:                                              ; preds = %662
  %668 = extractvalue { i64, i1 } %665, 0, !nosanitize !44
  store i64 %668, ptr %639, align 8, !tbaa !55
  %669 = icmp eq i64 %668, 0
  br i1 %669, label %670, label %673

670:                                              ; preds = %667
  %671 = getelementptr inbounds nuw i8, ptr %638, i64 16
  %672 = load ptr, ptr %671, align 8, !tbaa !40
  store ptr %672, ptr %648, align 8, !tbaa !56
  br label %673

673:                                              ; preds = %670, %667, %636
  %674 = load i64, ptr %74, align 8, !tbaa !55
  %675 = icmp eq i64 %674, 0
  br i1 %675, label %676, label %.loopexit42

.loopexit42:                                      ; preds = %673, %602
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1024

676:                                              ; preds = %673
  %677 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %610, i64 %611), !nosanitize !44
  %678 = extractvalue { i64, i1 } %677, 1, !nosanitize !44
  br i1 %678, label %.loopexit43, label %.preheader, !prof !117, !llvm.loop !118, !nosanitize !44

.loopexit43:                                      ; preds = %676, %605
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

679:                                              ; preds = %.preheader
  %680 = load ptr, ptr %512, align 8, !tbaa !98
  %681 = getelementptr inbounds nuw i8, ptr %680, i64 24
  %682 = load ptr, ptr %681, align 8, !tbaa !110
  %683 = load i64, ptr %522, align 8, !tbaa !116
  br label %684

684:                                              ; preds = %679, %536
  %685 = phi i64 [ %523, %536 ], [ %683, %679 ]
  %686 = phi ptr [ %515, %536 ], [ %682, %679 ]
  %687 = phi i64 [ %528, %536 ], [ 0, %679 ]
  %688 = phi i64 [ %533, %536 ], [ %610, %679 ]
  %689 = load ptr, ptr %530, align 8, !tbaa !40
  %690 = getelementptr inbounds nuw i8, ptr %689, i64 %687
  %691 = getelementptr inbounds nuw i8, ptr %686, i64 %685
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %690, ptr align 1 %691, i64 %688, i1 false)
  %692 = load i64, ptr %74, align 8, !tbaa !55
  %693 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %692, i64 %688), !nosanitize !44
  %694 = extractvalue { i64, i1 } %693, 0, !nosanitize !44
  %695 = extractvalue { i64, i1 } %693, 1, !nosanitize !44
  br i1 %695, label %696, label %697, !prof !45, !nosanitize !44

696:                                              ; preds = %684
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

697:                                              ; preds = %684
  store i64 %694, ptr %74, align 8, !tbaa !55
  %698 = load ptr, ptr %512, align 8, !tbaa !98
  %699 = getelementptr inbounds nuw i8, ptr %698, i64 68
  %700 = load i32, ptr %699, align 4, !tbaa !112
  %701 = icmp ne i32 %700, 0
  %702 = icmp ugt i64 %694, %687
  %703 = select i1 %701, i1 %702, i1 false
  br i1 %703, label %704, label %710

704:                                              ; preds = %697
  %705 = sub nuw i64 %694, %687
  %706 = load ptr, ptr %530, align 8, !tbaa !40
  %707 = getelementptr inbounds nuw i8, ptr %706, i64 %687
  %708 = load i64, ptr %531, align 8, !tbaa !57
  %709 = tail call i64 @crc32_z(i64 noundef %708, ptr noundef %707, i64 noundef %705) #11
  store i64 %709, ptr %531, align 8, !tbaa !57
  br label %710

710:                                              ; preds = %704, %697
  store i64 0, ptr %522, align 8, !tbaa !116
  br label %711

711:                                              ; preds = %710, %511
  store i32 73, ptr %21, align 8, !tbaa !28
  br label %712

712:                                              ; preds = %711, %509
  %713 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %714 = load ptr, ptr %713, align 8, !tbaa !98
  %715 = getelementptr inbounds nuw i8, ptr %714, i64 40
  %716 = load ptr, ptr %715, align 8, !tbaa !109
  %717 = icmp eq ptr %716, null
  br i1 %717, label %823, label %718

718:                                              ; preds = %712
  %719 = load i64, ptr %74, align 8, !tbaa !55
  %720 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %721 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %722 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %723 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %724 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %725

725:                                              ; preds = %801, %718
  %726 = phi i64 [ %719, %718 ], [ %788, %801 ]
  %727 = load i64, ptr %74, align 8, !tbaa !55
  %728 = load i64, ptr %720, align 8, !tbaa !41
  %729 = icmp eq i64 %727, %728
  br i1 %729, label %730, label %786

730:                                              ; preds = %725
  %731 = load ptr, ptr %713, align 8, !tbaa !98
  %732 = getelementptr inbounds nuw i8, ptr %731, i64 68
  %733 = load i32, ptr %732, align 4, !tbaa !112
  %734 = icmp ne i32 %733, 0
  %735 = icmp ugt i64 %727, %726
  %736 = select i1 %734, i1 %735, i1 false
  br i1 %736, label %737, label %743

737:                                              ; preds = %730
  %738 = sub nuw i64 %727, %726
  %739 = load ptr, ptr %721, align 8, !tbaa !40
  %740 = getelementptr inbounds nuw i8, ptr %739, i64 %726
  %741 = load i64, ptr %722, align 8, !tbaa !57
  %742 = tail call i64 @crc32_z(i64 noundef %741, ptr noundef %740, i64 noundef %738) #11
  store i64 %742, ptr %722, align 8, !tbaa !57
  br label %743

743:                                              ; preds = %737, %730
  %744 = load ptr, ptr %14, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %744) #11
  %745 = getelementptr inbounds nuw i8, ptr %744, i64 40
  %746 = load i64, ptr %745, align 8, !tbaa !55
  %747 = load i32, ptr %67, align 8, !tbaa !105
  %748 = zext i32 %747 to i64
  %749 = tail call i64 @llvm.umin.i64(i64 %746, i64 %748)
  %750 = trunc nuw i64 %749 to i32
  %751 = icmp eq i64 %749, 0
  br i1 %751, label %782, label %752

752:                                              ; preds = %743
  %753 = load ptr, ptr %49, align 8, !tbaa !104
  %754 = getelementptr inbounds nuw i8, ptr %744, i64 32
  %755 = load ptr, ptr %754, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %753, ptr align 1 %755, i64 %749, i1 false)
  %756 = load ptr, ptr %49, align 8, !tbaa !104
  %757 = getelementptr inbounds nuw i8, ptr %756, i64 %749
  store ptr %757, ptr %49, align 8, !tbaa !104
  %758 = load ptr, ptr %754, align 8, !tbaa !56
  %759 = getelementptr inbounds nuw i8, ptr %758, i64 %749
  store ptr %759, ptr %754, align 8, !tbaa !56
  %760 = load i64, ptr %723, align 8, !tbaa !106
  %761 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %760, i64 %749), !nosanitize !44
  %762 = extractvalue { i64, i1 } %761, 1, !nosanitize !44
  br i1 %762, label %763, label %764, !prof !45, !nosanitize !44

763:                                              ; preds = %752
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

764:                                              ; preds = %752
  %765 = extractvalue { i64, i1 } %761, 0, !nosanitize !44
  store i64 %765, ptr %723, align 8, !tbaa !106
  %766 = load i32, ptr %67, align 8, !tbaa !105
  %767 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %766, i32 %750), !nosanitize !44
  %768 = extractvalue { i32, i1 } %767, 1, !nosanitize !44
  br i1 %768, label %769, label %770, !prof !45, !nosanitize !44

769:                                              ; preds = %764
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

770:                                              ; preds = %764
  %771 = extractvalue { i32, i1 } %767, 0, !nosanitize !44
  store i32 %771, ptr %67, align 8, !tbaa !105
  %772 = load i64, ptr %745, align 8, !tbaa !55
  %773 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %772, i64 %749), !nosanitize !44
  %774 = extractvalue { i64, i1 } %773, 1, !nosanitize !44
  br i1 %774, label %775, label %776, !prof !45, !nosanitize !44

775:                                              ; preds = %770
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

776:                                              ; preds = %770
  %777 = extractvalue { i64, i1 } %773, 0, !nosanitize !44
  store i64 %777, ptr %745, align 8, !tbaa !55
  %778 = icmp eq i64 %777, 0
  br i1 %778, label %779, label %782

779:                                              ; preds = %776
  %780 = getelementptr inbounds nuw i8, ptr %744, i64 16
  %781 = load ptr, ptr %780, align 8, !tbaa !40
  store ptr %781, ptr %754, align 8, !tbaa !56
  br label %782

782:                                              ; preds = %779, %776, %743
  %783 = load i64, ptr %74, align 8, !tbaa !55
  %784 = icmp eq i64 %783, 0
  br i1 %784, label %786, label %785

785:                                              ; preds = %782
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1024

786:                                              ; preds = %782, %725
  %787 = phi i64 [ %727, %725 ], [ 0, %782 ]
  %788 = phi i64 [ %726, %725 ], [ 0, %782 ]
  %789 = load i64, ptr %724, align 8, !tbaa !116
  %790 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %789, i64 1), !nosanitize !44
  %791 = extractvalue { i64, i1 } %790, 1, !nosanitize !44
  br i1 %791, label %792, label %793, !prof !45, !nosanitize !44

792:                                              ; preds = %786
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

793:                                              ; preds = %786
  %794 = extractvalue { i64, i1 } %790, 0, !nosanitize !44
  %795 = load ptr, ptr %713, align 8, !tbaa !98
  %796 = getelementptr inbounds nuw i8, ptr %795, i64 40
  %797 = load ptr, ptr %796, align 8, !tbaa !109
  store i64 %794, ptr %724, align 8, !tbaa !116
  %798 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %787, i64 1), !nosanitize !44
  %799 = extractvalue { i64, i1 } %798, 1, !nosanitize !44
  br i1 %799, label %800, label %801, !prof !45, !nosanitize !44

800:                                              ; preds = %793
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

801:                                              ; preds = %793
  %802 = extractvalue { i64, i1 } %798, 0, !nosanitize !44
  %803 = load ptr, ptr %721, align 8, !tbaa !40
  %804 = getelementptr inbounds nuw i8, ptr %797, i64 %789
  %805 = load i8, ptr %804, align 1, !tbaa !5
  store i64 %802, ptr %74, align 8, !tbaa !55
  %806 = getelementptr inbounds nuw i8, ptr %803, i64 %787
  store i8 %805, ptr %806, align 1, !tbaa !5
  %807 = icmp eq i8 %805, 0
  br i1 %807, label %808, label %725, !llvm.loop !120

808:                                              ; preds = %801
  %809 = load ptr, ptr %713, align 8, !tbaa !98
  %810 = getelementptr inbounds nuw i8, ptr %809, i64 68
  %811 = load i32, ptr %810, align 4, !tbaa !112
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %822, label %813

813:                                              ; preds = %808
  %814 = load i64, ptr %74, align 8, !tbaa !55
  %815 = icmp ugt i64 %814, %788
  br i1 %815, label %816, label %822

816:                                              ; preds = %813
  %817 = sub nuw i64 %814, %788
  %818 = load ptr, ptr %721, align 8, !tbaa !40
  %819 = getelementptr inbounds nuw i8, ptr %818, i64 %788
  %820 = load i64, ptr %722, align 8, !tbaa !57
  %821 = tail call i64 @crc32_z(i64 noundef %820, ptr noundef %819, i64 noundef %817) #11
  store i64 %821, ptr %722, align 8, !tbaa !57
  br label %822

822:                                              ; preds = %816, %813, %808
  store i64 0, ptr %724, align 8, !tbaa !116
  br label %823

823:                                              ; preds = %822, %712
  store i32 91, ptr %21, align 8, !tbaa !28
  br label %824

824:                                              ; preds = %823, %509
  %825 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %826 = load ptr, ptr %825, align 8, !tbaa !98
  %827 = getelementptr inbounds nuw i8, ptr %826, i64 56
  %828 = load ptr, ptr %827, align 8, !tbaa !107
  %829 = icmp eq ptr %828, null
  br i1 %829, label %934, label %830

830:                                              ; preds = %824
  %831 = load i64, ptr %74, align 8, !tbaa !55
  %832 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %833 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %834 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %835 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %836 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %837

837:                                              ; preds = %913, %830
  %838 = phi i64 [ %831, %830 ], [ %900, %913 ]
  %839 = load i64, ptr %74, align 8, !tbaa !55
  %840 = load i64, ptr %832, align 8, !tbaa !41
  %841 = icmp eq i64 %839, %840
  br i1 %841, label %842, label %898

842:                                              ; preds = %837
  %843 = load ptr, ptr %825, align 8, !tbaa !98
  %844 = getelementptr inbounds nuw i8, ptr %843, i64 68
  %845 = load i32, ptr %844, align 4, !tbaa !112
  %846 = icmp ne i32 %845, 0
  %847 = icmp ugt i64 %839, %838
  %848 = select i1 %846, i1 %847, i1 false
  br i1 %848, label %849, label %855

849:                                              ; preds = %842
  %850 = sub nuw i64 %839, %838
  %851 = load ptr, ptr %833, align 8, !tbaa !40
  %852 = getelementptr inbounds nuw i8, ptr %851, i64 %838
  %853 = load i64, ptr %834, align 8, !tbaa !57
  %854 = tail call i64 @crc32_z(i64 noundef %853, ptr noundef %852, i64 noundef %850) #11
  store i64 %854, ptr %834, align 8, !tbaa !57
  br label %855

855:                                              ; preds = %849, %842
  %856 = load ptr, ptr %14, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %856) #11
  %857 = getelementptr inbounds nuw i8, ptr %856, i64 40
  %858 = load i64, ptr %857, align 8, !tbaa !55
  %859 = load i32, ptr %67, align 8, !tbaa !105
  %860 = zext i32 %859 to i64
  %861 = tail call i64 @llvm.umin.i64(i64 %858, i64 %860)
  %862 = trunc nuw i64 %861 to i32
  %863 = icmp eq i64 %861, 0
  br i1 %863, label %894, label %864

864:                                              ; preds = %855
  %865 = load ptr, ptr %49, align 8, !tbaa !104
  %866 = getelementptr inbounds nuw i8, ptr %856, i64 32
  %867 = load ptr, ptr %866, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %865, ptr align 1 %867, i64 %861, i1 false)
  %868 = load ptr, ptr %49, align 8, !tbaa !104
  %869 = getelementptr inbounds nuw i8, ptr %868, i64 %861
  store ptr %869, ptr %49, align 8, !tbaa !104
  %870 = load ptr, ptr %866, align 8, !tbaa !56
  %871 = getelementptr inbounds nuw i8, ptr %870, i64 %861
  store ptr %871, ptr %866, align 8, !tbaa !56
  %872 = load i64, ptr %835, align 8, !tbaa !106
  %873 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %872, i64 %861), !nosanitize !44
  %874 = extractvalue { i64, i1 } %873, 1, !nosanitize !44
  br i1 %874, label %875, label %876, !prof !45, !nosanitize !44

875:                                              ; preds = %864
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

876:                                              ; preds = %864
  %877 = extractvalue { i64, i1 } %873, 0, !nosanitize !44
  store i64 %877, ptr %835, align 8, !tbaa !106
  %878 = load i32, ptr %67, align 8, !tbaa !105
  %879 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %878, i32 %862), !nosanitize !44
  %880 = extractvalue { i32, i1 } %879, 1, !nosanitize !44
  br i1 %880, label %881, label %882, !prof !45, !nosanitize !44

881:                                              ; preds = %876
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

882:                                              ; preds = %876
  %883 = extractvalue { i32, i1 } %879, 0, !nosanitize !44
  store i32 %883, ptr %67, align 8, !tbaa !105
  %884 = load i64, ptr %857, align 8, !tbaa !55
  %885 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %884, i64 %861), !nosanitize !44
  %886 = extractvalue { i64, i1 } %885, 1, !nosanitize !44
  br i1 %886, label %887, label %888, !prof !45, !nosanitize !44

887:                                              ; preds = %882
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

888:                                              ; preds = %882
  %889 = extractvalue { i64, i1 } %885, 0, !nosanitize !44
  store i64 %889, ptr %857, align 8, !tbaa !55
  %890 = icmp eq i64 %889, 0
  br i1 %890, label %891, label %894

891:                                              ; preds = %888
  %892 = getelementptr inbounds nuw i8, ptr %856, i64 16
  %893 = load ptr, ptr %892, align 8, !tbaa !40
  store ptr %893, ptr %866, align 8, !tbaa !56
  br label %894

894:                                              ; preds = %891, %888, %855
  %895 = load i64, ptr %74, align 8, !tbaa !55
  %896 = icmp eq i64 %895, 0
  br i1 %896, label %898, label %897

897:                                              ; preds = %894
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1024

898:                                              ; preds = %894, %837
  %899 = phi i64 [ %839, %837 ], [ 0, %894 ]
  %900 = phi i64 [ %838, %837 ], [ 0, %894 ]
  %901 = load i64, ptr %836, align 8, !tbaa !116
  %902 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %901, i64 1), !nosanitize !44
  %903 = extractvalue { i64, i1 } %902, 1, !nosanitize !44
  br i1 %903, label %904, label %905, !prof !45, !nosanitize !44

904:                                              ; preds = %898
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

905:                                              ; preds = %898
  %906 = extractvalue { i64, i1 } %902, 0, !nosanitize !44
  %907 = load ptr, ptr %825, align 8, !tbaa !98
  %908 = getelementptr inbounds nuw i8, ptr %907, i64 56
  %909 = load ptr, ptr %908, align 8, !tbaa !107
  store i64 %906, ptr %836, align 8, !tbaa !116
  %910 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %899, i64 1), !nosanitize !44
  %911 = extractvalue { i64, i1 } %910, 1, !nosanitize !44
  br i1 %911, label %912, label %913, !prof !45, !nosanitize !44

912:                                              ; preds = %905
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

913:                                              ; preds = %905
  %914 = extractvalue { i64, i1 } %910, 0, !nosanitize !44
  %915 = load ptr, ptr %833, align 8, !tbaa !40
  %916 = getelementptr inbounds nuw i8, ptr %909, i64 %901
  %917 = load i8, ptr %916, align 1, !tbaa !5
  store i64 %914, ptr %74, align 8, !tbaa !55
  %918 = getelementptr inbounds nuw i8, ptr %915, i64 %899
  store i8 %917, ptr %918, align 1, !tbaa !5
  %919 = icmp eq i8 %917, 0
  br i1 %919, label %920, label %837, !llvm.loop !121

920:                                              ; preds = %913
  %921 = load ptr, ptr %825, align 8, !tbaa !98
  %922 = getelementptr inbounds nuw i8, ptr %921, i64 68
  %923 = load i32, ptr %922, align 4, !tbaa !112
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %934, label %925

925:                                              ; preds = %920
  %926 = load i64, ptr %74, align 8, !tbaa !55
  %927 = icmp ugt i64 %926, %900
  br i1 %927, label %928, label %934

928:                                              ; preds = %925
  %929 = sub nuw i64 %926, %900
  %930 = load ptr, ptr %833, align 8, !tbaa !40
  %931 = getelementptr inbounds nuw i8, ptr %930, i64 %900
  %932 = load i64, ptr %834, align 8, !tbaa !57
  %933 = tail call i64 @crc32_z(i64 noundef %932, ptr noundef %931, i64 noundef %929) #11
  store i64 %933, ptr %834, align 8, !tbaa !57
  br label %934

934:                                              ; preds = %928, %925, %920, %824
  store i32 103, ptr %21, align 8, !tbaa !28
  br label %935

935:                                              ; preds = %934, %509
  %936 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %937 = load ptr, ptr %936, align 8, !tbaa !98
  %938 = getelementptr inbounds nuw i8, ptr %937, i64 68
  %939 = load i32, ptr %938, align 4, !tbaa !112
  %940 = icmp eq i32 %939, 0
  br i1 %940, label %976, label %941

941:                                              ; preds = %935
  %942 = load i64, ptr %74, align 8, !tbaa !55
  %943 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %942, i64 2), !nosanitize !44
  %944 = extractvalue { i64, i1 } %943, 1, !nosanitize !44
  br i1 %944, label %945, label %946, !prof !45, !nosanitize !44

945:                                              ; preds = %941
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

946:                                              ; preds = %941
  %947 = extractvalue { i64, i1 } %943, 0, !nosanitize !44
  %948 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %949 = load i64, ptr %948, align 8, !tbaa !41
  %950 = icmp ugt i64 %947, %949
  br i1 %950, label %951, label %955

951:                                              ; preds = %946
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %952 = load i64, ptr %74, align 8, !tbaa !55
  %953 = icmp eq i64 %952, 0
  br i1 %953, label %955, label %954

954:                                              ; preds = %951
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1024

955:                                              ; preds = %951, %946
  %956 = phi i64 [ 0, %951 ], [ %942, %946 ]
  %957 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %958 = add nuw i64 %956, 1
  %959 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %960 = load ptr, ptr %959, align 8, !tbaa !40
  %961 = load i64, ptr %957, align 8, !tbaa !57
  %962 = trunc i64 %961 to i8
  store i64 %958, ptr %74, align 8, !tbaa !55
  %963 = getelementptr inbounds nuw i8, ptr %960, i64 %956
  store i8 %962, ptr %963, align 1, !tbaa !5
  %964 = load i64, ptr %74, align 8, !tbaa !55
  %965 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %964, i64 1), !nosanitize !44
  %966 = extractvalue { i64, i1 } %965, 1, !nosanitize !44
  br i1 %966, label %967, label %968, !prof !45, !nosanitize !44

967:                                              ; preds = %955
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

968:                                              ; preds = %955
  %969 = extractvalue { i64, i1 } %965, 0, !nosanitize !44
  %970 = load ptr, ptr %959, align 8, !tbaa !40
  %971 = load i64, ptr %957, align 8, !tbaa !57
  %972 = lshr i64 %971, 8
  %973 = trunc i64 %972 to i8
  store i64 %969, ptr %74, align 8, !tbaa !55
  %974 = getelementptr inbounds nuw i8, ptr %970, i64 %964
  store i8 %973, ptr %974, align 1, !tbaa !5
  %975 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  store i64 %975, ptr %957, align 8, !tbaa !57
  br label %976

976:                                              ; preds = %968, %935
  store i32 113, ptr %21, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %977 = load i64, ptr %74, align 8, !tbaa !55
  %978 = icmp eq i64 %977, 0
  br i1 %978, label %980, label %979

979:                                              ; preds = %976
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1024

980:                                              ; preds = %976, %509, %148
  %981 = load i32, ptr %53, align 8, !tbaa !79
  %982 = icmp eq i32 %981, 0
  br i1 %982, label %983, label %990

983:                                              ; preds = %980, %138
  %984 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %985 = load i32, ptr %984, align 4, !tbaa !73
  %986 = icmp eq i32 %985, 0
  br i1 %986, label %987, label %990

987:                                              ; preds = %983
  %988 = load i32, ptr %21, align 8, !tbaa !28
  %989 = icmp eq i32 %988, 666
  br i1 %989, label %1024, label %990

990:                                              ; preds = %987, %983, %980
  %991 = load i32, ptr %30, align 4, !tbaa !47
  %992 = icmp eq i32 %991, 0
  br i1 %992, label %993, label %995

993:                                              ; preds = %990
  %994 = tail call i32 @deflate_stored(ptr noundef nonnull %15, i32 noundef 5)
  br label %1006

995:                                              ; preds = %990
  %996 = load i32, ptr %31, align 8, !tbaa !48
  switch i32 %996, label %1001 [
    i32 2, label %997
    i32 3, label %999
  ]

997:                                              ; preds = %995
  %998 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %15, i32 noundef 5)
  br label %1006

999:                                              ; preds = %995
  %1000 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %15, i32 noundef 5)
  br label %1006

1001:                                             ; preds = %995
  %1002 = sext i32 %991 to i64
  %.split38 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %1002
  %1003 = getelementptr inbounds nuw i8, ptr %.split38, i64 8
  %1004 = load ptr, ptr %1003, align 8, !tbaa !103
  %1005 = tail call i32 %1004(ptr noundef nonnull %15, i32 noundef 5) #11
  br label %1006

1006:                                             ; preds = %1001, %999, %997, %993
  %1007 = phi i32 [ %994, %993 ], [ %998, %997 ], [ %1000, %999 ], [ %1005, %1001 ]
  %1008 = and i32 %1007, -2
  %1009 = icmp eq i32 %1008, 2
  br i1 %1009, label %1010, label %1011

1010:                                             ; preds = %1006
  store i32 666, ptr %21, align 8, !tbaa !28
  br label %1011

1011:                                             ; preds = %1010, %1006
  %1012 = and i32 %1007, -3
  %1013 = icmp eq i32 %1012, 0
  br i1 %1013, label %1014, label %1018

1014:                                             ; preds = %1011
  %1015 = load i32, ptr %67, align 8, !tbaa !105
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1017, label %1024

1017:                                             ; preds = %1014
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1024

1018:                                             ; preds = %1011
  %1019 = icmp eq i32 %1007, 1
  br i1 %1019, label %1020, label %1024

1020:                                             ; preds = %1018
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1021 = load i32, ptr %67, align 8, !tbaa !105
  %1022 = icmp eq i32 %1021, 0
  br i1 %1022, label %1023, label %1024

1023:                                             ; preds = %1020
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1024

1024:                                             ; preds = %1023, %1020, %1018, %1017, %1014, %987, %979, %954, %897, %785, %.loopexit42, %354, %250, %141, %132, %121, %70
  %1025 = load i32, ptr %53, align 8, !tbaa !79
  %1026 = icmp eq i32 %1025, 0
  br i1 %1026, label %1027, label %1090

1027:                                             ; preds = %1024
  %1028 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %1029 = load i32, ptr %1028, align 4, !tbaa !71
  %1030 = zext i32 %1029 to i64
  %1031 = getelementptr inbounds nuw i8, ptr %15, i64 152
  %1032 = load i64, ptr %1031, align 8, !tbaa !72
  %1033 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1030, i64 %1032), !nosanitize !44
  %1034 = extractvalue { i64, i1 } %1033, 1, !nosanitize !44
  br i1 %1034, label %1035, label %1036, !prof !45, !nosanitize !44

1035:                                             ; preds = %1027
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !44
  unreachable, !nosanitize !44

1036:                                             ; preds = %1027
  %1037 = extractvalue { i64, i1 } %1033, 0, !nosanitize !44
  %1038 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %1039 = load i32, ptr %1038, align 4, !tbaa !73
  %1040 = zext i32 %1039 to i64
  %1041 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1037, i64 %1040), !nosanitize !44
  %1042 = extractvalue { i64, i1 } %1041, 1, !nosanitize !44
  br i1 %1042, label %1043, label %1044, !prof !45, !nosanitize !44

1043:                                             ; preds = %1036
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !44
  unreachable, !nosanitize !44

1044:                                             ; preds = %1036
  %1045 = extractvalue { i64, i1 } %1041, 0, !nosanitize !44
  %1046 = icmp eq i64 %1045, 0
  br i1 %1046, label %1047, label %1090

1047:                                             ; preds = %1044, %43, %34
  %1048 = load i32, ptr %30, align 4, !tbaa !47
  %1049 = icmp eq i32 %1048, %25
  br i1 %1049, label %1089, label %1050

1050:                                             ; preds = %1047
  %1051 = icmp eq i32 %1048, 0
  br i1 %1051, label %1052, label %1071

1052:                                             ; preds = %1050
  %1053 = getelementptr inbounds nuw i8, ptr %15, i64 5928
  %1054 = load i32, ptr %1053, align 8, !tbaa !122
  switch i32 %1054, label %1056 [
    i32 0, label %1071
    i32 1, label %1055
  ]

1055:                                             ; preds = %1052
  tail call fastcc void @slide_hash(ptr noundef nonnull %15)
  br label %1070

1056:                                             ; preds = %1052
  %1057 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %1058 = load i32, ptr %1057, align 4, !tbaa !36
  %1059 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1058, i32 1), !nosanitize !44
  %1060 = extractvalue { i32, i1 } %1059, 1, !nosanitize !44
  br i1 %1060, label %1061, label %1062, !prof !45, !nosanitize !44

1061:                                             ; preds = %1056
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1062:                                             ; preds = %1056
  %1063 = extractvalue { i32, i1 } %1059, 0, !nosanitize !44
  %1064 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %1065 = load ptr, ptr %1064, align 8, !tbaa !37
  %1066 = zext i32 %1063 to i64
  %1067 = getelementptr inbounds nuw [2 x i8], ptr %1065, i64 %1066
  store i16 0, ptr %1067, align 2, !tbaa !60
  %1068 = shl nuw nsw i64 %1066, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1065, i8 0, i64 %1068, i1 false)
  %1069 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  store i32 0, ptr %1069, align 8, !tbaa !61
  br label %1070

1070:                                             ; preds = %1062, %1055
  store i32 0, ptr %1053, align 8, !tbaa !122
  br label %1071

1071:                                             ; preds = %1070, %1052, %1050
  store i32 %25, ptr %30, align 4, !tbaa !47
  %1072 = zext nneg i32 %25 to i64
  %1073 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %1072
  %1074 = getelementptr inbounds nuw i8, ptr %1073, i64 2
  %1075 = load i16, ptr %1074, align 2, !tbaa !62
  %1076 = zext i16 %1075 to i32
  %1077 = getelementptr inbounds nuw i8, ptr %15, i64 192
  store i32 %1076, ptr %1077, align 8, !tbaa !64
  %1078 = load i16, ptr %1073, align 16, !tbaa !65
  %1079 = zext i16 %1078 to i32
  %1080 = getelementptr inbounds nuw i8, ptr %15, i64 204
  store i32 %1079, ptr %1080, align 4, !tbaa !66
  %1081 = getelementptr inbounds nuw i8, ptr %1073, i64 4
  %1082 = load i16, ptr %1081, align 4, !tbaa !67
  %1083 = zext i16 %1082 to i32
  %1084 = getelementptr inbounds nuw i8, ptr %15, i64 208
  store i32 %1083, ptr %1084, align 8, !tbaa !68
  %1085 = getelementptr inbounds nuw i8, ptr %1073, i64 6
  %1086 = load i16, ptr %1085, align 2, !tbaa !69
  %1087 = zext i16 %1086 to i32
  %1088 = getelementptr inbounds nuw i8, ptr %15, i64 188
  store i32 %1087, ptr %1088, align 4, !tbaa !70
  br label %1089

1089:                                             ; preds = %1071, %1047
  store i32 %2, ptr %31, align 8, !tbaa !48
  br label %1090

1090:                                             ; preds = %1089, %1044, %1024, %63, %47, %23, %20, %17, %13, %9, %5, %3
  %1091 = phi i32 [ 0, %1089 ], [ -5, %1044 ], [ -2, %23 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ], [ -2, %63 ], [ -2, %47 ], [ -5, %1024 ]
  ret i32 %1091
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 2) i32 @deflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1191, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %1191, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1191, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %1191, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !19
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %1191

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !28
  switch i32 %21, label %1191 [
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
  br i1 %23, label %1191, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = load ptr, ptr %25, align 8, !tbaa !104
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
  store ptr %40, ptr %41, align 8, !tbaa !8
  br label %1191

42:                                               ; preds = %35
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %44 = load i32, ptr %43, align 8, !tbaa !105
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %47, ptr %48, align 8, !tbaa !8
  br label %1191

49:                                               ; preds = %42
  %50 = getelementptr inbounds nuw i8, ptr %14, i64 76
  %51 = load i32, ptr %50, align 4, !tbaa !58
  store i32 %1, ptr %50, align 4, !tbaa !58
  %52 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %53 = load i64, ptr %52, align 8, !tbaa !55
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %100, label %55

55:                                               ; preds = %49
  tail call void @_tr_flush_bits(ptr noundef nonnull %14) #11
  %56 = load i64, ptr %52, align 8, !tbaa !55
  %57 = load i32, ptr %43, align 8, !tbaa !105
  %58 = zext i32 %57 to i64
  %59 = tail call i64 @llvm.umin.i64(i64 %56, i64 %58)
  %60 = trunc nuw i64 %59 to i32
  %61 = icmp eq i64 %59, 0
  br i1 %61, label %93, label %62

62:                                               ; preds = %55
  %63 = load ptr, ptr %25, align 8, !tbaa !104
  %64 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %65 = load ptr, ptr %64, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %65, i64 %59, i1 false)
  %66 = load ptr, ptr %25, align 8, !tbaa !104
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 %59
  store ptr %67, ptr %25, align 8, !tbaa !104
  %68 = load ptr, ptr %64, align 8, !tbaa !56
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 %59
  store ptr %69, ptr %64, align 8, !tbaa !56
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %71 = load i64, ptr %70, align 8, !tbaa !106
  %72 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %71, i64 %59), !nosanitize !44
  %73 = extractvalue { i64, i1 } %72, 1, !nosanitize !44
  br i1 %73, label %74, label %75, !prof !45, !nosanitize !44

74:                                               ; preds = %62
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

75:                                               ; preds = %62
  %76 = extractvalue { i64, i1 } %72, 0, !nosanitize !44
  store i64 %76, ptr %70, align 8, !tbaa !106
  %77 = load i32, ptr %43, align 8, !tbaa !105
  %78 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %77, i32 %60), !nosanitize !44
  %79 = extractvalue { i32, i1 } %78, 1, !nosanitize !44
  br i1 %79, label %80, label %81, !prof !45, !nosanitize !44

80:                                               ; preds = %75
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

81:                                               ; preds = %75
  %82 = extractvalue { i32, i1 } %78, 0, !nosanitize !44
  store i32 %82, ptr %43, align 8, !tbaa !105
  %83 = load i64, ptr %52, align 8, !tbaa !55
  %84 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %83, i64 %59), !nosanitize !44
  %85 = extractvalue { i64, i1 } %84, 1, !nosanitize !44
  br i1 %85, label %86, label %87, !prof !45, !nosanitize !44

86:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

87:                                               ; preds = %81
  %88 = extractvalue { i64, i1 } %84, 0, !nosanitize !44
  store i64 %88, ptr %52, align 8, !tbaa !55
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %92 = load ptr, ptr %91, align 8, !tbaa !40
  store ptr %92, ptr %64, align 8, !tbaa !56
  br label %93

93:                                               ; preds = %90, %87, %55
  %94 = phi i64 [ %56, %55 ], [ 0, %90 ], [ %88, %87 ]
  %95 = phi i32 [ %57, %55 ], [ %82, %90 ], [ %82, %87 ]
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = load i32, ptr %20, align 8, !tbaa !28
  br label %118

99:                                               ; preds = %93
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1191

100:                                              ; preds = %49
  br i1 %31, label %102, label %118

101:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 12) #13, !nosanitize !44
  unreachable, !nosanitize !44

102:                                              ; preds = %100
  %103 = add i32 %51, 1073741824
  %104 = icmp sgt i32 %103, -1
  br i1 %104, label %105, label %101, !prof !91, !nosanitize !44

105:                                              ; preds = %102
  %106 = icmp eq i32 %1, 5
  %107 = select i1 %106, i32 -9, i32 0
  %108 = shl nuw nsw i32 %1, 1
  %109 = add nsw i32 %107, %108
  %110 = shl nsw i32 %51, 1
  %111 = icmp sgt i32 %51, 4
  %.neg = select i1 %111, i32 -9, i32 0
  %112 = add i32 %.neg, %110
  %113 = icmp sle i32 %109, %112
  %114 = and i1 %37, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %105
  %116 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %116, ptr %117, align 8, !tbaa !8
  br label %1191

118:                                              ; preds = %105, %100, %97
  %119 = phi i64 [ %94, %97 ], [ 0, %100 ], [ 0, %105 ]
  %120 = phi i32 [ %98, %97 ], [ %21, %100 ], [ %21, %105 ]
  switch i32 %120, label %236 [
    i32 666, label %121
    i32 42, label %127
  ]

121:                                              ; preds = %118
  %122 = load i32, ptr %29, align 8, !tbaa !79
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %972, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %125, ptr %126, align 8, !tbaa !8
  br label %1191

127:                                              ; preds = %118
  %128 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %129 = load i32, ptr %128, align 8, !tbaa !29
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i32 113, ptr %20, align 8, !tbaa !28
  br label %969

132:                                              ; preds = %127
  %133 = getelementptr inbounds nuw i8, ptr %14, i64 84
  %134 = load i32, ptr %133, align 4, !tbaa !30
  %135 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %134, i32 8), !nosanitize !44
  %136 = extractvalue { i32, i1 } %135, 1, !nosanitize !44
  br i1 %136, label %137, label %138, !prof !45, !nosanitize !44

137:                                              ; preds = %132
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

138:                                              ; preds = %132
  %139 = extractvalue { i32, i1 } %135, 0, !nosanitize !44
  %140 = shl i32 %139, 12
  %141 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %142 = load i32, ptr %141, align 8, !tbaa !48
  %143 = icmp sgt i32 %142, 1
  br i1 %143, label %153, label %144

144:                                              ; preds = %138
  %145 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %146 = load i32, ptr %145, align 4, !tbaa !47
  %147 = icmp slt i32 %146, 2
  br i1 %147, label %153, label %148

148:                                              ; preds = %144
  %149 = icmp samesign ult i32 %146, 6
  br i1 %149, label %153, label %150

150:                                              ; preds = %148
  %151 = icmp eq i32 %146, 6
  %152 = select i1 %151, i32 128, i32 192
  br label %153

153:                                              ; preds = %150, %148, %144, %138
  %154 = phi i32 [ 0, %144 ], [ 0, %138 ], [ 64, %148 ], [ %152, %150 ]
  %155 = getelementptr inbounds nuw i8, ptr %14, i64 172
  %156 = or disjoint i32 %154, %140
  %157 = load i32, ptr %155, align 4, !tbaa !71
  %158 = icmp eq i32 %157, 0
  %159 = select i1 %158, i32 2048, i32 2080
  %160 = or disjoint i32 %159, %156
  %161 = urem i32 %160, 31
  %162 = or disjoint i32 %161, %160
  %163 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %119, i64 1), !nosanitize !44
  %164 = extractvalue { i64, i1 } %163, 1, !nosanitize !44
  br i1 %164, label %165, label %166, !prof !45, !nosanitize !44

165:                                              ; preds = %153
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

166:                                              ; preds = %153
  %167 = extractvalue { i64, i1 } %163, 0, !nosanitize !44
  %168 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %169 = load ptr, ptr %168, align 8, !tbaa !40
  %170 = lshr i32 %160, 8
  %171 = trunc i32 %170 to i8
  store i64 %167, ptr %52, align 8, !tbaa !55
  %172 = getelementptr inbounds nuw i8, ptr %169, i64 %119
  store i8 %171, ptr %172, align 1, !tbaa !5
  %173 = load i64, ptr %52, align 8, !tbaa !55
  %174 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %173, i64 1), !nosanitize !44
  %175 = extractvalue { i64, i1 } %174, 1, !nosanitize !44
  br i1 %175, label %176, label %177, !prof !45, !nosanitize !44

176:                                              ; preds = %166
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

177:                                              ; preds = %166
  %178 = extractvalue { i64, i1 } %174, 0, !nosanitize !44
  %179 = load ptr, ptr %168, align 8, !tbaa !40
  %180 = trunc i32 %162 to i8
  %181 = xor i8 %180, 31
  store i64 %178, ptr %52, align 8, !tbaa !55
  %182 = getelementptr inbounds nuw i8, ptr %179, i64 %173
  store i8 %181, ptr %182, align 1, !tbaa !5
  %183 = load i32, ptr %155, align 4, !tbaa !71
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %228, label %185

185:                                              ; preds = %177
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %187 = load i64, ptr %186, align 8, !tbaa !57
  %188 = lshr i64 %187, 16
  %189 = load i64, ptr %52, align 8, !tbaa !55
  %190 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %189, i64 1), !nosanitize !44
  %191 = extractvalue { i64, i1 } %190, 1, !nosanitize !44
  br i1 %191, label %192, label %193, !prof !45, !nosanitize !44

192:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

193:                                              ; preds = %185
  %194 = extractvalue { i64, i1 } %190, 0, !nosanitize !44
  %195 = load ptr, ptr %168, align 8, !tbaa !40
  %196 = lshr i64 %187, 24
  %197 = trunc i64 %196 to i8
  store i64 %194, ptr %52, align 8, !tbaa !55
  %198 = getelementptr inbounds nuw i8, ptr %195, i64 %189
  store i8 %197, ptr %198, align 1, !tbaa !5
  %199 = load i64, ptr %52, align 8, !tbaa !55
  %200 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %199, i64 1), !nosanitize !44
  %201 = extractvalue { i64, i1 } %200, 1, !nosanitize !44
  br i1 %201, label %202, label %203, !prof !45, !nosanitize !44

202:                                              ; preds = %193
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

203:                                              ; preds = %193
  %204 = extractvalue { i64, i1 } %200, 0, !nosanitize !44
  %205 = load ptr, ptr %168, align 8, !tbaa !40
  %206 = trunc i64 %188 to i8
  store i64 %204, ptr %52, align 8, !tbaa !55
  %207 = getelementptr inbounds nuw i8, ptr %205, i64 %199
  store i8 %206, ptr %207, align 1, !tbaa !5
  %208 = load i64, ptr %186, align 8, !tbaa !57
  %209 = trunc i64 %208 to i8
  %210 = load i64, ptr %52, align 8, !tbaa !55
  %211 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %210, i64 1), !nosanitize !44
  %212 = extractvalue { i64, i1 } %211, 1, !nosanitize !44
  br i1 %212, label %213, label %214, !prof !45, !nosanitize !44

213:                                              ; preds = %203
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

214:                                              ; preds = %203
  %215 = extractvalue { i64, i1 } %211, 0, !nosanitize !44
  %216 = load ptr, ptr %168, align 8, !tbaa !40
  %217 = lshr i64 %208, 8
  %218 = trunc i64 %217 to i8
  store i64 %215, ptr %52, align 8, !tbaa !55
  %219 = getelementptr inbounds nuw i8, ptr %216, i64 %210
  store i8 %218, ptr %219, align 1, !tbaa !5
  %220 = load i64, ptr %52, align 8, !tbaa !55
  %221 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %220, i64 1), !nosanitize !44
  %222 = extractvalue { i64, i1 } %221, 1, !nosanitize !44
  br i1 %222, label %223, label %224, !prof !45, !nosanitize !44

223:                                              ; preds = %214
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

224:                                              ; preds = %214
  %225 = extractvalue { i64, i1 } %221, 0, !nosanitize !44
  %226 = load ptr, ptr %168, align 8, !tbaa !40
  store i64 %225, ptr %52, align 8, !tbaa !55
  %227 = getelementptr inbounds nuw i8, ptr %226, i64 %220
  store i8 %209, ptr %227, align 1, !tbaa !5
  br label %228

228:                                              ; preds = %224, %177
  %229 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %229, ptr %230, align 8, !tbaa !57
  store i32 113, ptr %20, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %231 = load i64, ptr %52, align 8, !tbaa !55
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %228
  %234 = load i32, ptr %20, align 8, !tbaa !28
  br label %236

235:                                              ; preds = %228
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1191

236:                                              ; preds = %233, %118
  %237 = phi i32 [ %234, %233 ], [ %120, %118 ]
  %238 = icmp eq i32 %237, 57
  br i1 %238, label %239, label %498

239:                                              ; preds = %236
  %240 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %241 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %240, ptr %241, align 8, !tbaa !57
  %242 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %243 = load i64, ptr %52, align 8, !tbaa !55
  %244 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %243, i64 1), !nosanitize !44
  %245 = extractvalue { i64, i1 } %244, 1, !nosanitize !44
  br i1 %245, label %246, label %247, !prof !45, !nosanitize !44

246:                                              ; preds = %239
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

247:                                              ; preds = %239
  %248 = extractvalue { i64, i1 } %244, 0, !nosanitize !44
  %249 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %248, ptr %52, align 8, !tbaa !55
  %250 = getelementptr inbounds nuw i8, ptr %249, i64 %243
  store i8 31, ptr %250, align 1, !tbaa !5
  %251 = load i64, ptr %52, align 8, !tbaa !55
  %252 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %251, i64 1), !nosanitize !44
  %253 = extractvalue { i64, i1 } %252, 1, !nosanitize !44
  br i1 %253, label %254, label %255, !prof !45, !nosanitize !44

254:                                              ; preds = %247
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

255:                                              ; preds = %247
  %256 = extractvalue { i64, i1 } %252, 0, !nosanitize !44
  %257 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %256, ptr %52, align 8, !tbaa !55
  %258 = getelementptr inbounds nuw i8, ptr %257, i64 %251
  store i8 -117, ptr %258, align 1, !tbaa !5
  %259 = load i64, ptr %52, align 8, !tbaa !55
  %260 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %259, i64 1), !nosanitize !44
  %261 = extractvalue { i64, i1 } %260, 1, !nosanitize !44
  br i1 %261, label %262, label %263, !prof !45, !nosanitize !44

262:                                              ; preds = %255
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

263:                                              ; preds = %255
  %264 = extractvalue { i64, i1 } %260, 0, !nosanitize !44
  %265 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %264, ptr %52, align 8, !tbaa !55
  %266 = getelementptr inbounds nuw i8, ptr %265, i64 %259
  store i8 8, ptr %266, align 1, !tbaa !5
  %267 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %268 = load ptr, ptr %267, align 8, !tbaa !98
  %269 = icmp eq ptr %268, null
  %270 = load i64, ptr %52, align 8, !tbaa !55
  %271 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %270, i64 1), !nosanitize !44
  %272 = extractvalue { i64, i1 } %271, 1, !nosanitize !44
  br i1 %269, label %273, label %342

273:                                              ; preds = %263
  br i1 %272, label %274, label %275, !prof !45, !nosanitize !44

274:                                              ; preds = %273
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

275:                                              ; preds = %273
  %276 = extractvalue { i64, i1 } %271, 0, !nosanitize !44
  %277 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %276, ptr %52, align 8, !tbaa !55
  %278 = getelementptr inbounds nuw i8, ptr %277, i64 %270
  store i8 0, ptr %278, align 1, !tbaa !5
  %279 = load i64, ptr %52, align 8, !tbaa !55
  %280 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %279, i64 1), !nosanitize !44
  %281 = extractvalue { i64, i1 } %280, 1, !nosanitize !44
  br i1 %281, label %282, label %283, !prof !45, !nosanitize !44

282:                                              ; preds = %275
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

283:                                              ; preds = %275
  %284 = extractvalue { i64, i1 } %280, 0, !nosanitize !44
  %285 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %284, ptr %52, align 8, !tbaa !55
  %286 = getelementptr inbounds nuw i8, ptr %285, i64 %279
  store i8 0, ptr %286, align 1, !tbaa !5
  %287 = load i64, ptr %52, align 8, !tbaa !55
  %288 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %287, i64 1), !nosanitize !44
  %289 = extractvalue { i64, i1 } %288, 1, !nosanitize !44
  br i1 %289, label %290, label %291, !prof !45, !nosanitize !44

290:                                              ; preds = %283
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

291:                                              ; preds = %283
  %292 = extractvalue { i64, i1 } %288, 0, !nosanitize !44
  %293 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %292, ptr %52, align 8, !tbaa !55
  %294 = getelementptr inbounds nuw i8, ptr %293, i64 %287
  store i8 0, ptr %294, align 1, !tbaa !5
  %295 = load i64, ptr %52, align 8, !tbaa !55
  %296 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %295, i64 1), !nosanitize !44
  %297 = extractvalue { i64, i1 } %296, 1, !nosanitize !44
  br i1 %297, label %298, label %299, !prof !45, !nosanitize !44

298:                                              ; preds = %291
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

299:                                              ; preds = %291
  %300 = extractvalue { i64, i1 } %296, 0, !nosanitize !44
  %301 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %300, ptr %52, align 8, !tbaa !55
  %302 = getelementptr inbounds nuw i8, ptr %301, i64 %295
  store i8 0, ptr %302, align 1, !tbaa !5
  %303 = load i64, ptr %52, align 8, !tbaa !55
  %304 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %303, i64 1), !nosanitize !44
  %305 = extractvalue { i64, i1 } %304, 1, !nosanitize !44
  br i1 %305, label %306, label %307, !prof !45, !nosanitize !44

306:                                              ; preds = %299
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

307:                                              ; preds = %299
  %308 = extractvalue { i64, i1 } %304, 0, !nosanitize !44
  %309 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %308, ptr %52, align 8, !tbaa !55
  %310 = getelementptr inbounds nuw i8, ptr %309, i64 %303
  store i8 0, ptr %310, align 1, !tbaa !5
  %311 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %312 = load i32, ptr %311, align 4, !tbaa !47
  %313 = icmp eq i32 %312, 9
  br i1 %313, label %321, label %314

314:                                              ; preds = %307
  %315 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %316 = load i32, ptr %315, align 8, !tbaa !48
  %317 = icmp sgt i32 %316, 1
  %318 = icmp slt i32 %312, 2
  %319 = or i1 %318, %317
  %320 = select i1 %319, i8 4, i8 0
  br label %321

321:                                              ; preds = %314, %307
  %322 = phi i8 [ %320, %314 ], [ 2, %307 ]
  %323 = load i64, ptr %52, align 8, !tbaa !55
  %324 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %323, i64 1), !nosanitize !44
  %325 = extractvalue { i64, i1 } %324, 1, !nosanitize !44
  br i1 %325, label %326, label %327, !prof !45, !nosanitize !44

326:                                              ; preds = %321
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

327:                                              ; preds = %321
  %328 = extractvalue { i64, i1 } %324, 0, !nosanitize !44
  %329 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %328, ptr %52, align 8, !tbaa !55
  %330 = getelementptr inbounds nuw i8, ptr %329, i64 %323
  store i8 %322, ptr %330, align 1, !tbaa !5
  %331 = load i64, ptr %52, align 8, !tbaa !55
  %332 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %331, i64 1), !nosanitize !44
  %333 = extractvalue { i64, i1 } %332, 1, !nosanitize !44
  br i1 %333, label %334, label %335, !prof !45, !nosanitize !44

334:                                              ; preds = %327
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

335:                                              ; preds = %327
  %336 = extractvalue { i64, i1 } %332, 0, !nosanitize !44
  %337 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %336, ptr %52, align 8, !tbaa !55
  %338 = getelementptr inbounds nuw i8, ptr %337, i64 %331
  store i8 3, ptr %338, align 1, !tbaa !5
  store i32 113, ptr %20, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %339 = load i64, ptr %52, align 8, !tbaa !55
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %496, label %341

341:                                              ; preds = %335
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1191

342:                                              ; preds = %263
  br i1 %272, label %343, label %344, !prof !45, !nosanitize !44

343:                                              ; preds = %342
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

344:                                              ; preds = %342
  %345 = extractvalue { i64, i1 } %271, 0, !nosanitize !44
  %346 = load ptr, ptr %242, align 8, !tbaa !40
  %347 = getelementptr inbounds nuw i8, ptr %268, i64 56
  %348 = load ptr, ptr %347, align 8, !tbaa !107
  %349 = icmp eq ptr %348, null
  %350 = getelementptr inbounds nuw i8, ptr %268, i64 40
  %351 = load ptr, ptr %350, align 8, !tbaa !109
  %352 = icmp eq ptr %351, null
  %353 = getelementptr inbounds nuw i8, ptr %268, i64 24
  %354 = load ptr, ptr %353, align 8, !tbaa !110
  %355 = icmp eq ptr %354, null
  %356 = load i32, ptr %268, align 8, !tbaa !111
  %357 = icmp ne i32 %356, 0
  %358 = getelementptr inbounds nuw i8, ptr %268, i64 68
  %359 = load i32, ptr %358, align 4, !tbaa !112
  %360 = icmp eq i32 %359, 0
  %361 = select i1 %360, i8 0, i8 2
  %362 = zext i1 %357 to i8
  %363 = select i1 %355, i8 0, i8 4
  %364 = select i1 %352, i8 0, i8 8
  %365 = select i1 %349, i8 0, i8 16
  %366 = or disjoint i8 %364, %365
  %367 = or disjoint i8 %366, %363
  %368 = or disjoint i8 %367, %362
  %369 = or disjoint i8 %368, %361
  store i64 %345, ptr %52, align 8, !tbaa !55
  %370 = getelementptr inbounds nuw i8, ptr %346, i64 %270
  store i8 %369, ptr %370, align 1, !tbaa !5
  %371 = load i64, ptr %52, align 8, !tbaa !55
  %372 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %371, i64 1), !nosanitize !44
  %373 = extractvalue { i64, i1 } %372, 1, !nosanitize !44
  br i1 %373, label %374, label %375, !prof !45, !nosanitize !44

374:                                              ; preds = %344
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

375:                                              ; preds = %344
  %376 = extractvalue { i64, i1 } %372, 0, !nosanitize !44
  %377 = load ptr, ptr %242, align 8, !tbaa !40
  %378 = load ptr, ptr %267, align 8, !tbaa !98
  %379 = getelementptr inbounds nuw i8, ptr %378, i64 8
  %380 = load i64, ptr %379, align 8, !tbaa !113
  %381 = trunc i64 %380 to i8
  store i64 %376, ptr %52, align 8, !tbaa !55
  %382 = getelementptr inbounds nuw i8, ptr %377, i64 %371
  store i8 %381, ptr %382, align 1, !tbaa !5
  %383 = load i64, ptr %52, align 8, !tbaa !55
  %384 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %383, i64 1), !nosanitize !44
  %385 = extractvalue { i64, i1 } %384, 1, !nosanitize !44
  br i1 %385, label %386, label %387, !prof !45, !nosanitize !44

386:                                              ; preds = %375
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

387:                                              ; preds = %375
  %388 = extractvalue { i64, i1 } %384, 0, !nosanitize !44
  %389 = load ptr, ptr %242, align 8, !tbaa !40
  %390 = load ptr, ptr %267, align 8, !tbaa !98
  %391 = getelementptr inbounds nuw i8, ptr %390, i64 8
  %392 = load i64, ptr %391, align 8, !tbaa !113
  %393 = lshr i64 %392, 8
  %394 = trunc i64 %393 to i8
  store i64 %388, ptr %52, align 8, !tbaa !55
  %395 = getelementptr inbounds nuw i8, ptr %389, i64 %383
  store i8 %394, ptr %395, align 1, !tbaa !5
  %396 = load i64, ptr %52, align 8, !tbaa !55
  %397 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %396, i64 1), !nosanitize !44
  %398 = extractvalue { i64, i1 } %397, 1, !nosanitize !44
  br i1 %398, label %399, label %400, !prof !45, !nosanitize !44

399:                                              ; preds = %387
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

400:                                              ; preds = %387
  %401 = extractvalue { i64, i1 } %397, 0, !nosanitize !44
  %402 = load ptr, ptr %242, align 8, !tbaa !40
  %403 = load ptr, ptr %267, align 8, !tbaa !98
  %404 = getelementptr inbounds nuw i8, ptr %403, i64 8
  %405 = load i64, ptr %404, align 8, !tbaa !113
  %406 = lshr i64 %405, 16
  %407 = trunc i64 %406 to i8
  store i64 %401, ptr %52, align 8, !tbaa !55
  %408 = getelementptr inbounds nuw i8, ptr %402, i64 %396
  store i8 %407, ptr %408, align 1, !tbaa !5
  %409 = load i64, ptr %52, align 8, !tbaa !55
  %410 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %409, i64 1), !nosanitize !44
  %411 = extractvalue { i64, i1 } %410, 1, !nosanitize !44
  br i1 %411, label %412, label %413, !prof !45, !nosanitize !44

412:                                              ; preds = %400
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

413:                                              ; preds = %400
  %414 = extractvalue { i64, i1 } %410, 0, !nosanitize !44
  %415 = load ptr, ptr %242, align 8, !tbaa !40
  %416 = load ptr, ptr %267, align 8, !tbaa !98
  %417 = getelementptr inbounds nuw i8, ptr %416, i64 8
  %418 = load i64, ptr %417, align 8, !tbaa !113
  %419 = lshr i64 %418, 24
  %420 = trunc i64 %419 to i8
  store i64 %414, ptr %52, align 8, !tbaa !55
  %421 = getelementptr inbounds nuw i8, ptr %415, i64 %409
  store i8 %420, ptr %421, align 1, !tbaa !5
  %422 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %423 = load i32, ptr %422, align 4, !tbaa !47
  %424 = icmp eq i32 %423, 9
  br i1 %424, label %432, label %425

425:                                              ; preds = %413
  %426 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %427 = load i32, ptr %426, align 8, !tbaa !48
  %428 = icmp sgt i32 %427, 1
  %429 = icmp slt i32 %423, 2
  %430 = or i1 %429, %428
  %431 = select i1 %430, i8 4, i8 0
  br label %432

432:                                              ; preds = %425, %413
  %433 = phi i8 [ %431, %425 ], [ 2, %413 ]
  %434 = load i64, ptr %52, align 8, !tbaa !55
  %435 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %434, i64 1), !nosanitize !44
  %436 = extractvalue { i64, i1 } %435, 1, !nosanitize !44
  br i1 %436, label %437, label %438, !prof !45, !nosanitize !44

437:                                              ; preds = %432
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

438:                                              ; preds = %432
  %439 = extractvalue { i64, i1 } %435, 0, !nosanitize !44
  %440 = load ptr, ptr %242, align 8, !tbaa !40
  store i64 %439, ptr %52, align 8, !tbaa !55
  %441 = getelementptr inbounds nuw i8, ptr %440, i64 %434
  store i8 %433, ptr %441, align 1, !tbaa !5
  %442 = load i64, ptr %52, align 8, !tbaa !55
  %443 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %442, i64 1), !nosanitize !44
  %444 = extractvalue { i64, i1 } %443, 1, !nosanitize !44
  br i1 %444, label %445, label %446, !prof !45, !nosanitize !44

445:                                              ; preds = %438
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

446:                                              ; preds = %438
  %447 = extractvalue { i64, i1 } %443, 0, !nosanitize !44
  %448 = load ptr, ptr %242, align 8, !tbaa !40
  %449 = load ptr, ptr %267, align 8, !tbaa !98
  %450 = getelementptr inbounds nuw i8, ptr %449, i64 20
  %451 = load i32, ptr %450, align 4, !tbaa !114
  %452 = trunc i32 %451 to i8
  store i64 %447, ptr %52, align 8, !tbaa !55
  %453 = getelementptr inbounds nuw i8, ptr %448, i64 %442
  store i8 %452, ptr %453, align 1, !tbaa !5
  %454 = load ptr, ptr %267, align 8, !tbaa !98
  %455 = getelementptr inbounds nuw i8, ptr %454, i64 24
  %456 = load ptr, ptr %455, align 8, !tbaa !110
  %457 = icmp eq ptr %456, null
  br i1 %457, label %484, label %458

458:                                              ; preds = %446
  %459 = load i64, ptr %52, align 8, !tbaa !55
  %460 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %459, i64 1), !nosanitize !44
  %461 = extractvalue { i64, i1 } %460, 1, !nosanitize !44
  br i1 %461, label %462, label %463, !prof !45, !nosanitize !44

462:                                              ; preds = %458
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

463:                                              ; preds = %458
  %464 = extractvalue { i64, i1 } %460, 0, !nosanitize !44
  %465 = load ptr, ptr %242, align 8, !tbaa !40
  %466 = getelementptr inbounds nuw i8, ptr %454, i64 32
  %467 = load i32, ptr %466, align 8, !tbaa !115
  %468 = trunc i32 %467 to i8
  store i64 %464, ptr %52, align 8, !tbaa !55
  %469 = getelementptr inbounds nuw i8, ptr %465, i64 %459
  store i8 %468, ptr %469, align 1, !tbaa !5
  %470 = load i64, ptr %52, align 8, !tbaa !55
  %471 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %470, i64 1), !nosanitize !44
  %472 = extractvalue { i64, i1 } %471, 1, !nosanitize !44
  br i1 %472, label %473, label %474, !prof !45, !nosanitize !44

473:                                              ; preds = %463
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

474:                                              ; preds = %463
  %475 = extractvalue { i64, i1 } %471, 0, !nosanitize !44
  %476 = load ptr, ptr %242, align 8, !tbaa !40
  %477 = load ptr, ptr %267, align 8, !tbaa !98
  %478 = getelementptr inbounds nuw i8, ptr %477, i64 32
  %479 = load i32, ptr %478, align 8, !tbaa !115
  %480 = lshr i32 %479, 8
  %481 = trunc i32 %480 to i8
  store i64 %475, ptr %52, align 8, !tbaa !55
  %482 = getelementptr inbounds nuw i8, ptr %476, i64 %470
  store i8 %481, ptr %482, align 1, !tbaa !5
  %483 = load ptr, ptr %267, align 8, !tbaa !98
  br label %484

484:                                              ; preds = %474, %446
  %485 = phi ptr [ %483, %474 ], [ %454, %446 ]
  %486 = getelementptr inbounds nuw i8, ptr %485, i64 68
  %487 = load i32, ptr %486, align 4, !tbaa !112
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %494, label %489

489:                                              ; preds = %484
  %490 = load i64, ptr %241, align 8, !tbaa !57
  %491 = load ptr, ptr %242, align 8, !tbaa !40
  %492 = load i64, ptr %52, align 8, !tbaa !55
  %493 = tail call i64 @crc32_z(i64 noundef %490, ptr noundef %491, i64 noundef %492) #11
  store i64 %493, ptr %241, align 8, !tbaa !57
  br label %494

494:                                              ; preds = %489, %484
  %495 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i64 0, ptr %495, align 8, !tbaa !116
  store i32 69, ptr %20, align 8, !tbaa !28
  br label %500

496:                                              ; preds = %335
  %497 = load i32, ptr %20, align 8, !tbaa !28
  br label %498

498:                                              ; preds = %496, %236
  %499 = phi i32 [ %497, %496 ], [ %237, %236 ]
  switch i32 %499, label %969 [
    i32 69, label %500
    i32 73, label %701
    i32 91, label %813
    i32 103, label %924
  ]

500:                                              ; preds = %498, %494
  %501 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %502 = load ptr, ptr %501, align 8, !tbaa !98
  %503 = getelementptr inbounds nuw i8, ptr %502, i64 24
  %504 = load ptr, ptr %503, align 8, !tbaa !110
  %505 = icmp eq ptr %504, null
  br i1 %505, label %700, label %506

506:                                              ; preds = %500
  %507 = getelementptr inbounds nuw i8, ptr %502, i64 32
  %508 = load i32, ptr %507, align 8, !tbaa !115
  %509 = and i32 %508, 65535
  %510 = zext nneg i32 %509 to i64
  %511 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %512 = load i64, ptr %511, align 8, !tbaa !116
  %513 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %510, i64 %512), !nosanitize !44
  %514 = extractvalue { i64, i1 } %513, 1, !nosanitize !44
  br i1 %514, label %515, label %516, !prof !45, !nosanitize !44

515:                                              ; preds = %506
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

516:                                              ; preds = %506
  %517 = load i64, ptr %52, align 8, !tbaa !55
  %518 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %519 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %520 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %521 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %522 = extractvalue { i64, i1 } %513, 0
  %523 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %517, i64 %522), !nosanitize !44
  %524 = extractvalue { i64, i1 } %523, 1, !nosanitize !44
  br i1 %524, label %597, label %525, !prof !45, !nosanitize !44

525:                                              ; preds = %516
  %526 = extractvalue { i64, i1 } %523, 0, !nosanitize !44
  %527 = load i64, ptr %518, align 8, !tbaa !41
  %528 = icmp ugt i64 %526, %527
  br i1 %528, label %529, label %673

529:                                              ; preds = %525
  %530 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %527, i64 %517), !nosanitize !44
  %531 = extractvalue { i64, i1 } %530, 0, !nosanitize !44
  %532 = extractvalue { i64, i1 } %530, 1, !nosanitize !44
  br i1 %532, label %602, label %533, !prof !45, !nosanitize !44

533:                                              ; preds = %529
  %534 = load ptr, ptr %519, align 8, !tbaa !40
  %535 = getelementptr inbounds nuw i8, ptr %534, i64 %517
  %536 = getelementptr inbounds nuw i8, ptr %504, i64 %512
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %535, ptr nonnull align 1 %536, i64 %531, i1 false)
  %537 = load i64, ptr %518, align 8, !tbaa !41
  store i64 %537, ptr %52, align 8, !tbaa !55
  %538 = load ptr, ptr %501, align 8, !tbaa !98
  %539 = getelementptr inbounds nuw i8, ptr %538, i64 68
  %540 = load i32, ptr %539, align 4, !tbaa !112
  %541 = icmp ne i32 %540, 0
  %542 = icmp ugt i64 %537, %517
  %543 = select i1 %541, i1 %542, i1 false
  br i1 %543, label %544, label %550

544:                                              ; preds = %533
  %545 = sub nuw i64 %537, %517
  %546 = load ptr, ptr %519, align 8, !tbaa !40
  %547 = getelementptr inbounds nuw i8, ptr %546, i64 %517
  %548 = load i64, ptr %520, align 8, !tbaa !57
  %549 = tail call i64 @crc32_z(i64 noundef %548, ptr noundef %547, i64 noundef %545) #11
  store i64 %549, ptr %520, align 8, !tbaa !57
  br label %550

550:                                              ; preds = %544, %533
  %551 = load i64, ptr %511, align 8, !tbaa !116
  %552 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %551, i64 %531), !nosanitize !44
  %553 = extractvalue { i64, i1 } %552, 1, !nosanitize !44
  br i1 %553, label %.loopexit, label %554, !prof !45, !nosanitize !44

554:                                              ; preds = %550
  %555 = extractvalue { i64, i1 } %552, 0, !nosanitize !44
  store i64 %555, ptr %511, align 8, !tbaa !116
  %556 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %556) #11
  %557 = getelementptr inbounds nuw i8, ptr %556, i64 40
  %558 = load i64, ptr %557, align 8, !tbaa !55
  %559 = load i32, ptr %43, align 8, !tbaa !105
  %560 = zext i32 %559 to i64
  %561 = tail call i64 @llvm.umin.i64(i64 %558, i64 %560)
  %562 = trunc nuw i64 %561 to i32
  %563 = icmp eq i64 %561, 0
  br i1 %563, label %591, label %564

564:                                              ; preds = %554
  %565 = load ptr, ptr %25, align 8, !tbaa !104
  %566 = getelementptr inbounds nuw i8, ptr %556, i64 32
  %567 = load ptr, ptr %566, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %565, ptr align 1 %567, i64 %561, i1 false)
  %568 = load ptr, ptr %25, align 8, !tbaa !104
  %569 = getelementptr inbounds nuw i8, ptr %568, i64 %561
  store ptr %569, ptr %25, align 8, !tbaa !104
  %570 = load ptr, ptr %566, align 8, !tbaa !56
  %571 = getelementptr inbounds nuw i8, ptr %570, i64 %561
  store ptr %571, ptr %566, align 8, !tbaa !56
  %572 = load i64, ptr %521, align 8, !tbaa !106
  %573 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %572, i64 %561), !nosanitize !44
  %574 = extractvalue { i64, i1 } %573, 1, !nosanitize !44
  br i1 %574, label %.loopexit36, label %575, !prof !45, !nosanitize !44

575:                                              ; preds = %564
  %576 = extractvalue { i64, i1 } %573, 0, !nosanitize !44
  store i64 %576, ptr %521, align 8, !tbaa !106
  %577 = load i32, ptr %43, align 8, !tbaa !105
  %578 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %577, i32 %562), !nosanitize !44
  %579 = extractvalue { i32, i1 } %578, 1, !nosanitize !44
  br i1 %579, label %.loopexit37, label %580, !prof !45, !nosanitize !44

580:                                              ; preds = %575
  %581 = extractvalue { i32, i1 } %578, 0, !nosanitize !44
  store i32 %581, ptr %43, align 8, !tbaa !105
  %582 = load i64, ptr %557, align 8, !tbaa !55
  %583 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %582, i64 %561), !nosanitize !44
  %584 = extractvalue { i64, i1 } %583, 1, !nosanitize !44
  br i1 %584, label %.loopexit38, label %585, !prof !45, !nosanitize !44

585:                                              ; preds = %580
  %586 = extractvalue { i64, i1 } %583, 0, !nosanitize !44
  store i64 %586, ptr %557, align 8, !tbaa !55
  %587 = icmp eq i64 %586, 0
  br i1 %587, label %588, label %591

588:                                              ; preds = %585
  %589 = getelementptr inbounds nuw i8, ptr %556, i64 16
  %590 = load ptr, ptr %589, align 8, !tbaa !40
  store ptr %590, ptr %566, align 8, !tbaa !56
  br label %591

591:                                              ; preds = %588, %585, %554
  %592 = load i64, ptr %52, align 8, !tbaa !55
  %593 = icmp eq i64 %592, 0
  br i1 %593, label %594, label %.loopexit39

594:                                              ; preds = %591
  %595 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %522, i64 %531), !nosanitize !44
  %596 = extractvalue { i64, i1 } %595, 1, !nosanitize !44
  br i1 %596, label %.loopexit40, label %.preheader, !prof !45, !nosanitize !44

597:                                              ; preds = %516
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

.preheader:                                       ; preds = %594, %665
  %598 = phi { i64, i1 } [ %666, %665 ], [ %595, %594 ]
  %599 = extractvalue { i64, i1 } %598, 0
  %600 = load i64, ptr %518, align 8, !tbaa !41
  %601 = icmp ugt i64 %599, %600
  br i1 %601, label %603, label %668

602:                                              ; preds = %529
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

603:                                              ; preds = %.preheader
  %604 = load ptr, ptr %519, align 8, !tbaa !40
  %605 = load ptr, ptr %501, align 8, !tbaa !98
  %606 = getelementptr inbounds nuw i8, ptr %605, i64 24
  %607 = load ptr, ptr %606, align 8, !tbaa !110
  %608 = load i64, ptr %511, align 8, !tbaa !116
  %609 = getelementptr inbounds nuw i8, ptr %607, i64 %608
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %604, ptr align 1 %609, i64 %600, i1 false)
  %610 = load i64, ptr %518, align 8, !tbaa !41
  store i64 %610, ptr %52, align 8, !tbaa !55
  %611 = load ptr, ptr %501, align 8, !tbaa !98
  %612 = getelementptr inbounds nuw i8, ptr %611, i64 68
  %613 = load i32, ptr %612, align 4, !tbaa !112
  %614 = icmp ne i32 %613, 0
  %615 = icmp ne i64 %610, 0
  %616 = select i1 %614, i1 %615, i1 false
  br i1 %616, label %617, label %621

617:                                              ; preds = %603
  %618 = load ptr, ptr %519, align 8, !tbaa !40
  %619 = load i64, ptr %520, align 8, !tbaa !57
  %620 = tail call i64 @crc32_z(i64 noundef %619, ptr noundef %618, i64 noundef %610) #11
  store i64 %620, ptr %520, align 8, !tbaa !57
  br label %621

621:                                              ; preds = %617, %603
  %622 = load i64, ptr %511, align 8, !tbaa !116
  %623 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %622, i64 %600), !nosanitize !44
  %624 = extractvalue { i64, i1 } %623, 1, !nosanitize !44
  br i1 %624, label %.loopexit, label %625, !prof !117, !nosanitize !44

.loopexit:                                        ; preds = %621, %550
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

625:                                              ; preds = %621
  %626 = extractvalue { i64, i1 } %623, 0, !nosanitize !44
  store i64 %626, ptr %511, align 8, !tbaa !116
  %627 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %627) #11
  %628 = getelementptr inbounds nuw i8, ptr %627, i64 40
  %629 = load i64, ptr %628, align 8, !tbaa !55
  %630 = load i32, ptr %43, align 8, !tbaa !105
  %631 = zext i32 %630 to i64
  %632 = tail call i64 @llvm.umin.i64(i64 %629, i64 %631)
  %633 = trunc nuw i64 %632 to i32
  %634 = icmp eq i64 %632, 0
  br i1 %634, label %662, label %635

635:                                              ; preds = %625
  %636 = load ptr, ptr %25, align 8, !tbaa !104
  %637 = getelementptr inbounds nuw i8, ptr %627, i64 32
  %638 = load ptr, ptr %637, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %636, ptr align 1 %638, i64 %632, i1 false)
  %639 = load ptr, ptr %25, align 8, !tbaa !104
  %640 = getelementptr inbounds nuw i8, ptr %639, i64 %632
  store ptr %640, ptr %25, align 8, !tbaa !104
  %641 = load ptr, ptr %637, align 8, !tbaa !56
  %642 = getelementptr inbounds nuw i8, ptr %641, i64 %632
  store ptr %642, ptr %637, align 8, !tbaa !56
  %643 = load i64, ptr %521, align 8, !tbaa !106
  %644 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %643, i64 %632), !nosanitize !44
  %645 = extractvalue { i64, i1 } %644, 1, !nosanitize !44
  br i1 %645, label %.loopexit36, label %646, !prof !117, !nosanitize !44

.loopexit36:                                      ; preds = %635, %564
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

646:                                              ; preds = %635
  %647 = extractvalue { i64, i1 } %644, 0, !nosanitize !44
  store i64 %647, ptr %521, align 8, !tbaa !106
  %648 = load i32, ptr %43, align 8, !tbaa !105
  %649 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %648, i32 %633), !nosanitize !44
  %650 = extractvalue { i32, i1 } %649, 1, !nosanitize !44
  br i1 %650, label %.loopexit37, label %651, !prof !117, !nosanitize !44

.loopexit37:                                      ; preds = %646, %575
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

651:                                              ; preds = %646
  %652 = extractvalue { i32, i1 } %649, 0, !nosanitize !44
  store i32 %652, ptr %43, align 8, !tbaa !105
  %653 = load i64, ptr %628, align 8, !tbaa !55
  %654 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %653, i64 %632), !nosanitize !44
  %655 = extractvalue { i64, i1 } %654, 1, !nosanitize !44
  br i1 %655, label %.loopexit38, label %656, !prof !117, !nosanitize !44

.loopexit38:                                      ; preds = %651, %580
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

656:                                              ; preds = %651
  %657 = extractvalue { i64, i1 } %654, 0, !nosanitize !44
  store i64 %657, ptr %628, align 8, !tbaa !55
  %658 = icmp eq i64 %657, 0
  br i1 %658, label %659, label %662

659:                                              ; preds = %656
  %660 = getelementptr inbounds nuw i8, ptr %627, i64 16
  %661 = load ptr, ptr %660, align 8, !tbaa !40
  store ptr %661, ptr %637, align 8, !tbaa !56
  br label %662

662:                                              ; preds = %659, %656, %625
  %663 = load i64, ptr %52, align 8, !tbaa !55
  %664 = icmp eq i64 %663, 0
  br i1 %664, label %665, label %.loopexit39

.loopexit39:                                      ; preds = %662, %591
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1191

665:                                              ; preds = %662
  %666 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %599, i64 %600), !nosanitize !44
  %667 = extractvalue { i64, i1 } %666, 1, !nosanitize !44
  br i1 %667, label %.loopexit40, label %.preheader, !prof !117, !llvm.loop !118, !nosanitize !44

.loopexit40:                                      ; preds = %665, %594
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

668:                                              ; preds = %.preheader
  %669 = load ptr, ptr %501, align 8, !tbaa !98
  %670 = getelementptr inbounds nuw i8, ptr %669, i64 24
  %671 = load ptr, ptr %670, align 8, !tbaa !110
  %672 = load i64, ptr %511, align 8, !tbaa !116
  br label %673

673:                                              ; preds = %668, %525
  %674 = phi i64 [ %512, %525 ], [ %672, %668 ]
  %675 = phi ptr [ %504, %525 ], [ %671, %668 ]
  %676 = phi i64 [ %517, %525 ], [ 0, %668 ]
  %677 = phi i64 [ %522, %525 ], [ %599, %668 ]
  %678 = load ptr, ptr %519, align 8, !tbaa !40
  %679 = getelementptr inbounds nuw i8, ptr %678, i64 %676
  %680 = getelementptr inbounds nuw i8, ptr %675, i64 %674
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %679, ptr align 1 %680, i64 %677, i1 false)
  %681 = load i64, ptr %52, align 8, !tbaa !55
  %682 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %681, i64 %677), !nosanitize !44
  %683 = extractvalue { i64, i1 } %682, 0, !nosanitize !44
  %684 = extractvalue { i64, i1 } %682, 1, !nosanitize !44
  br i1 %684, label %685, label %686, !prof !45, !nosanitize !44

685:                                              ; preds = %673
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

686:                                              ; preds = %673
  store i64 %683, ptr %52, align 8, !tbaa !55
  %687 = load ptr, ptr %501, align 8, !tbaa !98
  %688 = getelementptr inbounds nuw i8, ptr %687, i64 68
  %689 = load i32, ptr %688, align 4, !tbaa !112
  %690 = icmp ne i32 %689, 0
  %691 = icmp ugt i64 %683, %676
  %692 = select i1 %690, i1 %691, i1 false
  br i1 %692, label %693, label %699

693:                                              ; preds = %686
  %694 = sub nuw i64 %683, %676
  %695 = load ptr, ptr %519, align 8, !tbaa !40
  %696 = getelementptr inbounds nuw i8, ptr %695, i64 %676
  %697 = load i64, ptr %520, align 8, !tbaa !57
  %698 = tail call i64 @crc32_z(i64 noundef %697, ptr noundef %696, i64 noundef %694) #11
  store i64 %698, ptr %520, align 8, !tbaa !57
  br label %699

699:                                              ; preds = %693, %686
  store i64 0, ptr %511, align 8, !tbaa !116
  br label %700

700:                                              ; preds = %699, %500
  store i32 73, ptr %20, align 8, !tbaa !28
  br label %701

701:                                              ; preds = %700, %498
  %702 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %703 = load ptr, ptr %702, align 8, !tbaa !98
  %704 = getelementptr inbounds nuw i8, ptr %703, i64 40
  %705 = load ptr, ptr %704, align 8, !tbaa !109
  %706 = icmp eq ptr %705, null
  br i1 %706, label %812, label %707

707:                                              ; preds = %701
  %708 = load i64, ptr %52, align 8, !tbaa !55
  %709 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %710 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %711 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %712 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %713 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %714

714:                                              ; preds = %790, %707
  %715 = phi i64 [ %708, %707 ], [ %777, %790 ]
  %716 = load i64, ptr %52, align 8, !tbaa !55
  %717 = load i64, ptr %709, align 8, !tbaa !41
  %718 = icmp eq i64 %716, %717
  br i1 %718, label %719, label %775

719:                                              ; preds = %714
  %720 = load ptr, ptr %702, align 8, !tbaa !98
  %721 = getelementptr inbounds nuw i8, ptr %720, i64 68
  %722 = load i32, ptr %721, align 4, !tbaa !112
  %723 = icmp ne i32 %722, 0
  %724 = icmp ugt i64 %716, %715
  %725 = select i1 %723, i1 %724, i1 false
  br i1 %725, label %726, label %732

726:                                              ; preds = %719
  %727 = sub nuw i64 %716, %715
  %728 = load ptr, ptr %710, align 8, !tbaa !40
  %729 = getelementptr inbounds nuw i8, ptr %728, i64 %715
  %730 = load i64, ptr %711, align 8, !tbaa !57
  %731 = tail call i64 @crc32_z(i64 noundef %730, ptr noundef %729, i64 noundef %727) #11
  store i64 %731, ptr %711, align 8, !tbaa !57
  br label %732

732:                                              ; preds = %726, %719
  %733 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %733) #11
  %734 = getelementptr inbounds nuw i8, ptr %733, i64 40
  %735 = load i64, ptr %734, align 8, !tbaa !55
  %736 = load i32, ptr %43, align 8, !tbaa !105
  %737 = zext i32 %736 to i64
  %738 = tail call i64 @llvm.umin.i64(i64 %735, i64 %737)
  %739 = trunc nuw i64 %738 to i32
  %740 = icmp eq i64 %738, 0
  br i1 %740, label %771, label %741

741:                                              ; preds = %732
  %742 = load ptr, ptr %25, align 8, !tbaa !104
  %743 = getelementptr inbounds nuw i8, ptr %733, i64 32
  %744 = load ptr, ptr %743, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %742, ptr align 1 %744, i64 %738, i1 false)
  %745 = load ptr, ptr %25, align 8, !tbaa !104
  %746 = getelementptr inbounds nuw i8, ptr %745, i64 %738
  store ptr %746, ptr %25, align 8, !tbaa !104
  %747 = load ptr, ptr %743, align 8, !tbaa !56
  %748 = getelementptr inbounds nuw i8, ptr %747, i64 %738
  store ptr %748, ptr %743, align 8, !tbaa !56
  %749 = load i64, ptr %712, align 8, !tbaa !106
  %750 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %749, i64 %738), !nosanitize !44
  %751 = extractvalue { i64, i1 } %750, 1, !nosanitize !44
  br i1 %751, label %752, label %753, !prof !45, !nosanitize !44

752:                                              ; preds = %741
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

753:                                              ; preds = %741
  %754 = extractvalue { i64, i1 } %750, 0, !nosanitize !44
  store i64 %754, ptr %712, align 8, !tbaa !106
  %755 = load i32, ptr %43, align 8, !tbaa !105
  %756 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %755, i32 %739), !nosanitize !44
  %757 = extractvalue { i32, i1 } %756, 1, !nosanitize !44
  br i1 %757, label %758, label %759, !prof !45, !nosanitize !44

758:                                              ; preds = %753
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

759:                                              ; preds = %753
  %760 = extractvalue { i32, i1 } %756, 0, !nosanitize !44
  store i32 %760, ptr %43, align 8, !tbaa !105
  %761 = load i64, ptr %734, align 8, !tbaa !55
  %762 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %761, i64 %738), !nosanitize !44
  %763 = extractvalue { i64, i1 } %762, 1, !nosanitize !44
  br i1 %763, label %764, label %765, !prof !45, !nosanitize !44

764:                                              ; preds = %759
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

765:                                              ; preds = %759
  %766 = extractvalue { i64, i1 } %762, 0, !nosanitize !44
  store i64 %766, ptr %734, align 8, !tbaa !55
  %767 = icmp eq i64 %766, 0
  br i1 %767, label %768, label %771

768:                                              ; preds = %765
  %769 = getelementptr inbounds nuw i8, ptr %733, i64 16
  %770 = load ptr, ptr %769, align 8, !tbaa !40
  store ptr %770, ptr %743, align 8, !tbaa !56
  br label %771

771:                                              ; preds = %768, %765, %732
  %772 = load i64, ptr %52, align 8, !tbaa !55
  %773 = icmp eq i64 %772, 0
  br i1 %773, label %775, label %774

774:                                              ; preds = %771
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1191

775:                                              ; preds = %771, %714
  %776 = phi i64 [ %716, %714 ], [ 0, %771 ]
  %777 = phi i64 [ %715, %714 ], [ 0, %771 ]
  %778 = load i64, ptr %713, align 8, !tbaa !116
  %779 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %778, i64 1), !nosanitize !44
  %780 = extractvalue { i64, i1 } %779, 1, !nosanitize !44
  br i1 %780, label %781, label %782, !prof !45, !nosanitize !44

781:                                              ; preds = %775
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

782:                                              ; preds = %775
  %783 = extractvalue { i64, i1 } %779, 0, !nosanitize !44
  %784 = load ptr, ptr %702, align 8, !tbaa !98
  %785 = getelementptr inbounds nuw i8, ptr %784, i64 40
  %786 = load ptr, ptr %785, align 8, !tbaa !109
  store i64 %783, ptr %713, align 8, !tbaa !116
  %787 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %776, i64 1), !nosanitize !44
  %788 = extractvalue { i64, i1 } %787, 1, !nosanitize !44
  br i1 %788, label %789, label %790, !prof !45, !nosanitize !44

789:                                              ; preds = %782
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

790:                                              ; preds = %782
  %791 = extractvalue { i64, i1 } %787, 0, !nosanitize !44
  %792 = load ptr, ptr %710, align 8, !tbaa !40
  %793 = getelementptr inbounds nuw i8, ptr %786, i64 %778
  %794 = load i8, ptr %793, align 1, !tbaa !5
  store i64 %791, ptr %52, align 8, !tbaa !55
  %795 = getelementptr inbounds nuw i8, ptr %792, i64 %776
  store i8 %794, ptr %795, align 1, !tbaa !5
  %796 = icmp eq i8 %794, 0
  br i1 %796, label %797, label %714, !llvm.loop !120

797:                                              ; preds = %790
  %798 = load ptr, ptr %702, align 8, !tbaa !98
  %799 = getelementptr inbounds nuw i8, ptr %798, i64 68
  %800 = load i32, ptr %799, align 4, !tbaa !112
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %811, label %802

802:                                              ; preds = %797
  %803 = load i64, ptr %52, align 8, !tbaa !55
  %804 = icmp ugt i64 %803, %777
  br i1 %804, label %805, label %811

805:                                              ; preds = %802
  %806 = sub nuw i64 %803, %777
  %807 = load ptr, ptr %710, align 8, !tbaa !40
  %808 = getelementptr inbounds nuw i8, ptr %807, i64 %777
  %809 = load i64, ptr %711, align 8, !tbaa !57
  %810 = tail call i64 @crc32_z(i64 noundef %809, ptr noundef %808, i64 noundef %806) #11
  store i64 %810, ptr %711, align 8, !tbaa !57
  br label %811

811:                                              ; preds = %805, %802, %797
  store i64 0, ptr %713, align 8, !tbaa !116
  br label %812

812:                                              ; preds = %811, %701
  store i32 91, ptr %20, align 8, !tbaa !28
  br label %813

813:                                              ; preds = %812, %498
  %814 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %815 = load ptr, ptr %814, align 8, !tbaa !98
  %816 = getelementptr inbounds nuw i8, ptr %815, i64 56
  %817 = load ptr, ptr %816, align 8, !tbaa !107
  %818 = icmp eq ptr %817, null
  br i1 %818, label %923, label %819

819:                                              ; preds = %813
  %820 = load i64, ptr %52, align 8, !tbaa !55
  %821 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %822 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %823 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %824 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %825 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %826

826:                                              ; preds = %902, %819
  %827 = phi i64 [ %820, %819 ], [ %889, %902 ]
  %828 = load i64, ptr %52, align 8, !tbaa !55
  %829 = load i64, ptr %821, align 8, !tbaa !41
  %830 = icmp eq i64 %828, %829
  br i1 %830, label %831, label %887

831:                                              ; preds = %826
  %832 = load ptr, ptr %814, align 8, !tbaa !98
  %833 = getelementptr inbounds nuw i8, ptr %832, i64 68
  %834 = load i32, ptr %833, align 4, !tbaa !112
  %835 = icmp ne i32 %834, 0
  %836 = icmp ugt i64 %828, %827
  %837 = select i1 %835, i1 %836, i1 false
  br i1 %837, label %838, label %844

838:                                              ; preds = %831
  %839 = sub nuw i64 %828, %827
  %840 = load ptr, ptr %822, align 8, !tbaa !40
  %841 = getelementptr inbounds nuw i8, ptr %840, i64 %827
  %842 = load i64, ptr %823, align 8, !tbaa !57
  %843 = tail call i64 @crc32_z(i64 noundef %842, ptr noundef %841, i64 noundef %839) #11
  store i64 %843, ptr %823, align 8, !tbaa !57
  br label %844

844:                                              ; preds = %838, %831
  %845 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %845) #11
  %846 = getelementptr inbounds nuw i8, ptr %845, i64 40
  %847 = load i64, ptr %846, align 8, !tbaa !55
  %848 = load i32, ptr %43, align 8, !tbaa !105
  %849 = zext i32 %848 to i64
  %850 = tail call i64 @llvm.umin.i64(i64 %847, i64 %849)
  %851 = trunc nuw i64 %850 to i32
  %852 = icmp eq i64 %850, 0
  br i1 %852, label %883, label %853

853:                                              ; preds = %844
  %854 = load ptr, ptr %25, align 8, !tbaa !104
  %855 = getelementptr inbounds nuw i8, ptr %845, i64 32
  %856 = load ptr, ptr %855, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %854, ptr align 1 %856, i64 %850, i1 false)
  %857 = load ptr, ptr %25, align 8, !tbaa !104
  %858 = getelementptr inbounds nuw i8, ptr %857, i64 %850
  store ptr %858, ptr %25, align 8, !tbaa !104
  %859 = load ptr, ptr %855, align 8, !tbaa !56
  %860 = getelementptr inbounds nuw i8, ptr %859, i64 %850
  store ptr %860, ptr %855, align 8, !tbaa !56
  %861 = load i64, ptr %824, align 8, !tbaa !106
  %862 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %861, i64 %850), !nosanitize !44
  %863 = extractvalue { i64, i1 } %862, 1, !nosanitize !44
  br i1 %863, label %864, label %865, !prof !45, !nosanitize !44

864:                                              ; preds = %853
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

865:                                              ; preds = %853
  %866 = extractvalue { i64, i1 } %862, 0, !nosanitize !44
  store i64 %866, ptr %824, align 8, !tbaa !106
  %867 = load i32, ptr %43, align 8, !tbaa !105
  %868 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %867, i32 %851), !nosanitize !44
  %869 = extractvalue { i32, i1 } %868, 1, !nosanitize !44
  br i1 %869, label %870, label %871, !prof !45, !nosanitize !44

870:                                              ; preds = %865
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

871:                                              ; preds = %865
  %872 = extractvalue { i32, i1 } %868, 0, !nosanitize !44
  store i32 %872, ptr %43, align 8, !tbaa !105
  %873 = load i64, ptr %846, align 8, !tbaa !55
  %874 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %873, i64 %850), !nosanitize !44
  %875 = extractvalue { i64, i1 } %874, 1, !nosanitize !44
  br i1 %875, label %876, label %877, !prof !45, !nosanitize !44

876:                                              ; preds = %871
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

877:                                              ; preds = %871
  %878 = extractvalue { i64, i1 } %874, 0, !nosanitize !44
  store i64 %878, ptr %846, align 8, !tbaa !55
  %879 = icmp eq i64 %878, 0
  br i1 %879, label %880, label %883

880:                                              ; preds = %877
  %881 = getelementptr inbounds nuw i8, ptr %845, i64 16
  %882 = load ptr, ptr %881, align 8, !tbaa !40
  store ptr %882, ptr %855, align 8, !tbaa !56
  br label %883

883:                                              ; preds = %880, %877, %844
  %884 = load i64, ptr %52, align 8, !tbaa !55
  %885 = icmp eq i64 %884, 0
  br i1 %885, label %887, label %886

886:                                              ; preds = %883
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1191

887:                                              ; preds = %883, %826
  %888 = phi i64 [ %828, %826 ], [ 0, %883 ]
  %889 = phi i64 [ %827, %826 ], [ 0, %883 ]
  %890 = load i64, ptr %825, align 8, !tbaa !116
  %891 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %890, i64 1), !nosanitize !44
  %892 = extractvalue { i64, i1 } %891, 1, !nosanitize !44
  br i1 %892, label %893, label %894, !prof !45, !nosanitize !44

893:                                              ; preds = %887
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

894:                                              ; preds = %887
  %895 = extractvalue { i64, i1 } %891, 0, !nosanitize !44
  %896 = load ptr, ptr %814, align 8, !tbaa !98
  %897 = getelementptr inbounds nuw i8, ptr %896, i64 56
  %898 = load ptr, ptr %897, align 8, !tbaa !107
  store i64 %895, ptr %825, align 8, !tbaa !116
  %899 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %888, i64 1), !nosanitize !44
  %900 = extractvalue { i64, i1 } %899, 1, !nosanitize !44
  br i1 %900, label %901, label %902, !prof !45, !nosanitize !44

901:                                              ; preds = %894
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

902:                                              ; preds = %894
  %903 = extractvalue { i64, i1 } %899, 0, !nosanitize !44
  %904 = load ptr, ptr %822, align 8, !tbaa !40
  %905 = getelementptr inbounds nuw i8, ptr %898, i64 %890
  %906 = load i8, ptr %905, align 1, !tbaa !5
  store i64 %903, ptr %52, align 8, !tbaa !55
  %907 = getelementptr inbounds nuw i8, ptr %904, i64 %888
  store i8 %906, ptr %907, align 1, !tbaa !5
  %908 = icmp eq i8 %906, 0
  br i1 %908, label %909, label %826, !llvm.loop !121

909:                                              ; preds = %902
  %910 = load ptr, ptr %814, align 8, !tbaa !98
  %911 = getelementptr inbounds nuw i8, ptr %910, i64 68
  %912 = load i32, ptr %911, align 4, !tbaa !112
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %923, label %914

914:                                              ; preds = %909
  %915 = load i64, ptr %52, align 8, !tbaa !55
  %916 = icmp ugt i64 %915, %889
  br i1 %916, label %917, label %923

917:                                              ; preds = %914
  %918 = sub nuw i64 %915, %889
  %919 = load ptr, ptr %822, align 8, !tbaa !40
  %920 = getelementptr inbounds nuw i8, ptr %919, i64 %889
  %921 = load i64, ptr %823, align 8, !tbaa !57
  %922 = tail call i64 @crc32_z(i64 noundef %921, ptr noundef %920, i64 noundef %918) #11
  store i64 %922, ptr %823, align 8, !tbaa !57
  br label %923

923:                                              ; preds = %917, %914, %909, %813
  store i32 103, ptr %20, align 8, !tbaa !28
  br label %924

924:                                              ; preds = %923, %498
  %925 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %926 = load ptr, ptr %925, align 8, !tbaa !98
  %927 = getelementptr inbounds nuw i8, ptr %926, i64 68
  %928 = load i32, ptr %927, align 4, !tbaa !112
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %965, label %930

930:                                              ; preds = %924
  %931 = load i64, ptr %52, align 8, !tbaa !55
  %932 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %931, i64 2), !nosanitize !44
  %933 = extractvalue { i64, i1 } %932, 1, !nosanitize !44
  br i1 %933, label %934, label %935, !prof !45, !nosanitize !44

934:                                              ; preds = %930
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

935:                                              ; preds = %930
  %936 = extractvalue { i64, i1 } %932, 0, !nosanitize !44
  %937 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %938 = load i64, ptr %937, align 8, !tbaa !41
  %939 = icmp ugt i64 %936, %938
  br i1 %939, label %940, label %944

940:                                              ; preds = %935
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %941 = load i64, ptr %52, align 8, !tbaa !55
  %942 = icmp eq i64 %941, 0
  br i1 %942, label %944, label %943

943:                                              ; preds = %940
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1191

944:                                              ; preds = %940, %935
  %945 = phi i64 [ 0, %940 ], [ %931, %935 ]
  %946 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %947 = add nuw i64 %945, 1
  %948 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %949 = load ptr, ptr %948, align 8, !tbaa !40
  %950 = load i64, ptr %946, align 8, !tbaa !57
  %951 = trunc i64 %950 to i8
  store i64 %947, ptr %52, align 8, !tbaa !55
  %952 = getelementptr inbounds nuw i8, ptr %949, i64 %945
  store i8 %951, ptr %952, align 1, !tbaa !5
  %953 = load i64, ptr %52, align 8, !tbaa !55
  %954 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %953, i64 1), !nosanitize !44
  %955 = extractvalue { i64, i1 } %954, 1, !nosanitize !44
  br i1 %955, label %956, label %957, !prof !45, !nosanitize !44

956:                                              ; preds = %944
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

957:                                              ; preds = %944
  %958 = extractvalue { i64, i1 } %954, 0, !nosanitize !44
  %959 = load ptr, ptr %948, align 8, !tbaa !40
  %960 = load i64, ptr %946, align 8, !tbaa !57
  %961 = lshr i64 %960, 8
  %962 = trunc i64 %961 to i8
  store i64 %958, ptr %52, align 8, !tbaa !55
  %963 = getelementptr inbounds nuw i8, ptr %959, i64 %953
  store i8 %962, ptr %963, align 1, !tbaa !5
  %964 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  store i64 %964, ptr %946, align 8, !tbaa !57
  br label %965

965:                                              ; preds = %957, %924
  store i32 113, ptr %20, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %966 = load i64, ptr %52, align 8, !tbaa !55
  %967 = icmp eq i64 %966, 0
  br i1 %967, label %969, label %968

968:                                              ; preds = %965
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1191

969:                                              ; preds = %965, %498, %131
  %970 = load i32, ptr %29, align 8, !tbaa !79
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %972, label %981

972:                                              ; preds = %969, %121
  %973 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %974 = load i32, ptr %973, align 4, !tbaa !73
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %976, label %981

976:                                              ; preds = %972
  %977 = icmp eq i32 %1, 0
  br i1 %977, label %1191, label %978

978:                                              ; preds = %976
  %979 = load i32, ptr %20, align 8, !tbaa !28
  %980 = icmp eq i32 %979, 666
  br i1 %980, label %1042, label %981

981:                                              ; preds = %978, %972, %969
  %982 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %983 = load i32, ptr %982, align 4, !tbaa !47
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %985, label %987

985:                                              ; preds = %981
  %986 = tail call i32 @deflate_stored(ptr noundef nonnull %14, i32 noundef %1)
  br label %999

987:                                              ; preds = %981
  %988 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %989 = load i32, ptr %988, align 8, !tbaa !48
  switch i32 %989, label %994 [
    i32 2, label %990
    i32 3, label %992
  ]

990:                                              ; preds = %987
  %991 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %14, i32 noundef %1)
  br label %999

992:                                              ; preds = %987
  %993 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %14, i32 noundef %1)
  br label %999

994:                                              ; preds = %987
  %995 = sext i32 %983 to i64
  %.split = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %995
  %996 = getelementptr inbounds nuw i8, ptr %.split, i64 8
  %997 = load ptr, ptr %996, align 8, !tbaa !103
  %998 = tail call i32 %997(ptr noundef nonnull %14, i32 noundef %1) #11
  br label %999

999:                                              ; preds = %994, %992, %990, %985
  %1000 = phi i32 [ %986, %985 ], [ %991, %990 ], [ %993, %992 ], [ %998, %994 ]
  %1001 = and i32 %1000, -2
  %1002 = icmp eq i32 %1001, 2
  br i1 %1002, label %1003, label %1004

1003:                                             ; preds = %999
  store i32 666, ptr %20, align 8, !tbaa !28
  br label %1004

1004:                                             ; preds = %1003, %999
  %1005 = and i32 %1000, -3
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1007, label %1011

1007:                                             ; preds = %1004
  %1008 = load i32, ptr %43, align 8, !tbaa !105
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1010, label %1191

1010:                                             ; preds = %1007
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1191

1011:                                             ; preds = %1004
  %1012 = icmp eq i32 %1000, 1
  br i1 %1012, label %1013, label %1042

1013:                                             ; preds = %1011
  switch i32 %1, label %1015 [
    i32 1, label %1014
    i32 5, label %1038
  ]

1014:                                             ; preds = %1013
  tail call void @_tr_align(ptr noundef nonnull %14) #11
  br label %1038

1015:                                             ; preds = %1013
  tail call void @_tr_stored_block(ptr noundef nonnull %14, ptr noundef null, i64 noundef 0, i32 noundef 0) #11
  %1016 = icmp eq i32 %1, 3
  br i1 %1016, label %1017, label %1038

1017:                                             ; preds = %1015
  %1018 = getelementptr inbounds nuw i8, ptr %14, i64 132
  %1019 = load i32, ptr %1018, align 4, !tbaa !36
  %1020 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1019, i32 1), !nosanitize !44
  %1021 = extractvalue { i32, i1 } %1020, 1, !nosanitize !44
  br i1 %1021, label %1022, label %1023, !prof !45, !nosanitize !44

1022:                                             ; preds = %1017
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1023:                                             ; preds = %1017
  %1024 = extractvalue { i32, i1 } %1020, 0, !nosanitize !44
  %1025 = getelementptr inbounds nuw i8, ptr %14, i64 120
  %1026 = load ptr, ptr %1025, align 8, !tbaa !37
  %1027 = zext i32 %1024 to i64
  %1028 = getelementptr inbounds nuw [2 x i8], ptr %1026, i64 %1027
  store i16 0, ptr %1028, align 2, !tbaa !60
  %1029 = shl nuw nsw i64 %1027, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1026, i8 0, i64 %1029, i1 false)
  %1030 = getelementptr inbounds nuw i8, ptr %14, i64 5960
  store i32 0, ptr %1030, align 8, !tbaa !61
  %1031 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %1032 = load i32, ptr %1031, align 4, !tbaa !73
  %1033 = icmp eq i32 %1032, 0
  br i1 %1033, label %1034, label %1038

1034:                                             ; preds = %1023
  %1035 = getelementptr inbounds nuw i8, ptr %14, i64 172
  store i32 0, ptr %1035, align 4, !tbaa !71
  %1036 = getelementptr inbounds nuw i8, ptr %14, i64 152
  store i64 0, ptr %1036, align 8, !tbaa !72
  %1037 = getelementptr inbounds nuw i8, ptr %14, i64 5932
  store i32 0, ptr %1037, align 4, !tbaa !74
  br label %1038

1038:                                             ; preds = %1034, %1023, %1015, %1014, %1013
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1039 = load i32, ptr %43, align 8, !tbaa !105
  %1040 = icmp eq i32 %1039, 0
  br i1 %1040, label %1041, label %1042

1041:                                             ; preds = %1038
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1191

1042:                                             ; preds = %1038, %1011, %978
  br i1 %37, label %1191, label %1043

1043:                                             ; preds = %1042
  %1044 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %1045 = load i32, ptr %1044, align 8, !tbaa !29
  %1046 = icmp slt i32 %1045, 1
  br i1 %1046, label %1191, label %1047

1047:                                             ; preds = %1043
  %1048 = icmp eq i32 %1045, 2
  %1049 = getelementptr inbounds nuw i8, ptr %0, i64 96
  br i1 %1048, label %1050, label %1139

1050:                                             ; preds = %1047
  %1051 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1052 = load i64, ptr %52, align 8, !tbaa !55
  %1053 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1052, i64 1), !nosanitize !44
  %1054 = extractvalue { i64, i1 } %1053, 1, !nosanitize !44
  br i1 %1054, label %1055, label %1056, !prof !45, !nosanitize !44

1055:                                             ; preds = %1050
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1056:                                             ; preds = %1050
  %1057 = extractvalue { i64, i1 } %1053, 0, !nosanitize !44
  %1058 = load ptr, ptr %1051, align 8, !tbaa !40
  %1059 = load i64, ptr %1049, align 8, !tbaa !57
  %1060 = trunc i64 %1059 to i8
  store i64 %1057, ptr %52, align 8, !tbaa !55
  %1061 = getelementptr inbounds nuw i8, ptr %1058, i64 %1052
  store i8 %1060, ptr %1061, align 1, !tbaa !5
  %1062 = load i64, ptr %52, align 8, !tbaa !55
  %1063 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1062, i64 1), !nosanitize !44
  %1064 = extractvalue { i64, i1 } %1063, 1, !nosanitize !44
  br i1 %1064, label %1065, label %1066, !prof !45, !nosanitize !44

1065:                                             ; preds = %1056
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1066:                                             ; preds = %1056
  %1067 = extractvalue { i64, i1 } %1063, 0, !nosanitize !44
  %1068 = load ptr, ptr %1051, align 8, !tbaa !40
  %1069 = load i64, ptr %1049, align 8, !tbaa !57
  %1070 = lshr i64 %1069, 8
  %1071 = trunc i64 %1070 to i8
  store i64 %1067, ptr %52, align 8, !tbaa !55
  %1072 = getelementptr inbounds nuw i8, ptr %1068, i64 %1062
  store i8 %1071, ptr %1072, align 1, !tbaa !5
  %1073 = load i64, ptr %52, align 8, !tbaa !55
  %1074 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1073, i64 1), !nosanitize !44
  %1075 = extractvalue { i64, i1 } %1074, 1, !nosanitize !44
  br i1 %1075, label %1076, label %1077, !prof !45, !nosanitize !44

1076:                                             ; preds = %1066
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1077:                                             ; preds = %1066
  %1078 = extractvalue { i64, i1 } %1074, 0, !nosanitize !44
  %1079 = load ptr, ptr %1051, align 8, !tbaa !40
  %1080 = load i64, ptr %1049, align 8, !tbaa !57
  %1081 = lshr i64 %1080, 16
  %1082 = trunc i64 %1081 to i8
  store i64 %1078, ptr %52, align 8, !tbaa !55
  %1083 = getelementptr inbounds nuw i8, ptr %1079, i64 %1073
  store i8 %1082, ptr %1083, align 1, !tbaa !5
  %1084 = load i64, ptr %52, align 8, !tbaa !55
  %1085 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1084, i64 1), !nosanitize !44
  %1086 = extractvalue { i64, i1 } %1085, 1, !nosanitize !44
  br i1 %1086, label %1087, label %1088, !prof !45, !nosanitize !44

1087:                                             ; preds = %1077
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1088:                                             ; preds = %1077
  %1089 = extractvalue { i64, i1 } %1085, 0, !nosanitize !44
  %1090 = load ptr, ptr %1051, align 8, !tbaa !40
  %1091 = load i64, ptr %1049, align 8, !tbaa !57
  %1092 = lshr i64 %1091, 24
  %1093 = trunc i64 %1092 to i8
  store i64 %1089, ptr %52, align 8, !tbaa !55
  %1094 = getelementptr inbounds nuw i8, ptr %1090, i64 %1084
  store i8 %1093, ptr %1094, align 1, !tbaa !5
  %1095 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %1096 = load i64, ptr %52, align 8, !tbaa !55
  %1097 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1096, i64 1), !nosanitize !44
  %1098 = extractvalue { i64, i1 } %1097, 1, !nosanitize !44
  br i1 %1098, label %1099, label %1100, !prof !45, !nosanitize !44

1099:                                             ; preds = %1088
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1100:                                             ; preds = %1088
  %1101 = extractvalue { i64, i1 } %1097, 0, !nosanitize !44
  %1102 = load ptr, ptr %1051, align 8, !tbaa !40
  %1103 = load i64, ptr %1095, align 8, !tbaa !53
  %1104 = trunc i64 %1103 to i8
  store i64 %1101, ptr %52, align 8, !tbaa !55
  %1105 = getelementptr inbounds nuw i8, ptr %1102, i64 %1096
  store i8 %1104, ptr %1105, align 1, !tbaa !5
  %1106 = load i64, ptr %52, align 8, !tbaa !55
  %1107 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1106, i64 1), !nosanitize !44
  %1108 = extractvalue { i64, i1 } %1107, 1, !nosanitize !44
  br i1 %1108, label %1109, label %1110, !prof !45, !nosanitize !44

1109:                                             ; preds = %1100
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1110:                                             ; preds = %1100
  %1111 = extractvalue { i64, i1 } %1107, 0, !nosanitize !44
  %1112 = load ptr, ptr %1051, align 8, !tbaa !40
  %1113 = load i64, ptr %1095, align 8, !tbaa !53
  %1114 = lshr i64 %1113, 8
  %1115 = trunc i64 %1114 to i8
  store i64 %1111, ptr %52, align 8, !tbaa !55
  %1116 = getelementptr inbounds nuw i8, ptr %1112, i64 %1106
  store i8 %1115, ptr %1116, align 1, !tbaa !5
  %1117 = load i64, ptr %52, align 8, !tbaa !55
  %1118 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1117, i64 1), !nosanitize !44
  %1119 = extractvalue { i64, i1 } %1118, 1, !nosanitize !44
  br i1 %1119, label %1120, label %1121, !prof !45, !nosanitize !44

1120:                                             ; preds = %1110
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1121:                                             ; preds = %1110
  %1122 = extractvalue { i64, i1 } %1118, 0, !nosanitize !44
  %1123 = load ptr, ptr %1051, align 8, !tbaa !40
  %1124 = load i64, ptr %1095, align 8, !tbaa !53
  %1125 = lshr i64 %1124, 16
  %1126 = trunc i64 %1125 to i8
  store i64 %1122, ptr %52, align 8, !tbaa !55
  %1127 = getelementptr inbounds nuw i8, ptr %1123, i64 %1117
  store i8 %1126, ptr %1127, align 1, !tbaa !5
  %1128 = load i64, ptr %52, align 8, !tbaa !55
  %1129 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1128, i64 1), !nosanitize !44
  %1130 = extractvalue { i64, i1 } %1129, 1, !nosanitize !44
  br i1 %1130, label %1131, label %1132, !prof !45, !nosanitize !44

1131:                                             ; preds = %1121
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1132:                                             ; preds = %1121
  %1133 = extractvalue { i64, i1 } %1129, 0, !nosanitize !44
  %1134 = load ptr, ptr %1051, align 8, !tbaa !40
  %1135 = load i64, ptr %1095, align 8, !tbaa !53
  %1136 = lshr i64 %1135, 24
  %1137 = trunc i64 %1136 to i8
  store i64 %1133, ptr %52, align 8, !tbaa !55
  %1138 = getelementptr inbounds nuw i8, ptr %1134, i64 %1128
  store i8 %1137, ptr %1138, align 1, !tbaa !5
  br label %1182

1139:                                             ; preds = %1047
  %1140 = load i64, ptr %1049, align 8, !tbaa !57
  %1141 = lshr i64 %1140, 16
  %1142 = load i64, ptr %52, align 8, !tbaa !55
  %1143 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1142, i64 1), !nosanitize !44
  %1144 = extractvalue { i64, i1 } %1143, 1, !nosanitize !44
  br i1 %1144, label %1145, label %1146, !prof !45, !nosanitize !44

1145:                                             ; preds = %1139
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1146:                                             ; preds = %1139
  %1147 = extractvalue { i64, i1 } %1143, 0, !nosanitize !44
  %1148 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1149 = load ptr, ptr %1148, align 8, !tbaa !40
  %1150 = lshr i64 %1140, 24
  %1151 = trunc i64 %1150 to i8
  store i64 %1147, ptr %52, align 8, !tbaa !55
  %1152 = getelementptr inbounds nuw i8, ptr %1149, i64 %1142
  store i8 %1151, ptr %1152, align 1, !tbaa !5
  %1153 = load i64, ptr %52, align 8, !tbaa !55
  %1154 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1153, i64 1), !nosanitize !44
  %1155 = extractvalue { i64, i1 } %1154, 1, !nosanitize !44
  br i1 %1155, label %1156, label %1157, !prof !45, !nosanitize !44

1156:                                             ; preds = %1146
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1157:                                             ; preds = %1146
  %1158 = extractvalue { i64, i1 } %1154, 0, !nosanitize !44
  %1159 = load ptr, ptr %1148, align 8, !tbaa !40
  %1160 = trunc i64 %1141 to i8
  store i64 %1158, ptr %52, align 8, !tbaa !55
  %1161 = getelementptr inbounds nuw i8, ptr %1159, i64 %1153
  store i8 %1160, ptr %1161, align 1, !tbaa !5
  %1162 = load i64, ptr %1049, align 8, !tbaa !57
  %1163 = trunc i64 %1162 to i8
  %1164 = load i64, ptr %52, align 8, !tbaa !55
  %1165 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1164, i64 1), !nosanitize !44
  %1166 = extractvalue { i64, i1 } %1165, 1, !nosanitize !44
  br i1 %1166, label %1167, label %1168, !prof !45, !nosanitize !44

1167:                                             ; preds = %1157
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1168:                                             ; preds = %1157
  %1169 = extractvalue { i64, i1 } %1165, 0, !nosanitize !44
  %1170 = load ptr, ptr %1148, align 8, !tbaa !40
  %1171 = lshr i64 %1162, 8
  %1172 = trunc i64 %1171 to i8
  store i64 %1169, ptr %52, align 8, !tbaa !55
  %1173 = getelementptr inbounds nuw i8, ptr %1170, i64 %1164
  store i8 %1172, ptr %1173, align 1, !tbaa !5
  %1174 = load i64, ptr %52, align 8, !tbaa !55
  %1175 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1174, i64 1), !nosanitize !44
  %1176 = extractvalue { i64, i1 } %1175, 1, !nosanitize !44
  br i1 %1176, label %1177, label %1178, !prof !45, !nosanitize !44

1177:                                             ; preds = %1168
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1178:                                             ; preds = %1168
  %1179 = extractvalue { i64, i1 } %1175, 0, !nosanitize !44
  %1180 = load ptr, ptr %1148, align 8, !tbaa !40
  store i64 %1179, ptr %52, align 8, !tbaa !55
  %1181 = getelementptr inbounds nuw i8, ptr %1180, i64 %1174
  store i8 %1163, ptr %1181, align 1, !tbaa !5
  br label %1182

1182:                                             ; preds = %1178, %1132
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1183 = load i32, ptr %1044, align 8, !tbaa !29
  %1184 = icmp sgt i32 %1183, 0
  br i1 %1184, label %1185, label %1187

1185:                                             ; preds = %1182
  %1186 = sub nsw i32 0, %1183
  store i32 %1186, ptr %1044, align 8, !tbaa !29
  br label %1187

1187:                                             ; preds = %1185, %1182
  %1188 = load i64, ptr %52, align 8, !tbaa !55
  %1189 = icmp eq i64 %1188, 0
  %1190 = zext i1 %1189 to i32
  br label %1191

1191:                                             ; preds = %1187, %1043, %1042, %1041, %1010, %1007, %976, %968, %943, %886, %774, %.loopexit39, %341, %235, %124, %115, %99, %46, %39, %22, %19, %16, %12, %8, %4, %2
  %1192 = phi i32 [ -2, %39 ], [ -5, %46 ], [ 0, %99 ], [ -5, %124 ], [ 0, %341 ], [ 0, %943 ], [ 0, %968 ], [ %1190, %1187 ], [ 0, %235 ], [ -5, %115 ], [ -2, %22 ], [ 0, %774 ], [ 0, %886 ], [ 0, %1042 ], [ 1, %1043 ], [ 0, %1007 ], [ 0, %1010 ], [ 0, %1041 ], [ 0, %.loopexit39 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ], [ 0, %976 ]
  ret i32 %1192
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @slide_hash(ptr noundef nonnull captures(none) %0) unnamed_addr #5 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %3 = load i32, ptr %2, align 8, !tbaa !31
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %5 = load i32, ptr %4, align 4, !tbaa !36
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %8
  %.not.not = icmp eq i32 %5, 0
  br i1 %.not.not, label %.split.us, label %.split.preheader, !prof !45, !nosanitize !44

.split.preheader:                                 ; preds = %1
  %min.iters.check = icmp ult i32 %5, 8
  br i1 %min.iters.check, label %.split.preheader35, label %vector.ph

vector.ph:                                        ; preds = %.split.preheader
  %n.vec = and i64 %8, 4294967288
  %10 = mul nsw i64 %n.vec, -2
  %11 = getelementptr i8, ptr %9, i64 %10
  %.cast = trunc nuw i64 %n.vec to i32
  %12 = sub i32 %5, %.cast
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %3, i64 0
  %13 = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = mul i64 %index, -2
  %next.gep = getelementptr i8, ptr %9, i64 %offset.idx
  %14 = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %wide.load = load <8 x i16>, ptr %14, align 2, !tbaa !60
  %15 = zext <8 x i16> %wide.load to <8 x i32>
  %16 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %15, <8 x i32> %13)
  %reverse11 = trunc nuw <8 x i32> %16 to <8 x i16>
  store <8 x i16> %reverse11, ptr %14, align 2, !tbaa !60
  %index.next = add nuw i64 %index, 8
  %17 = icmp eq i64 %index.next, %n.vec
  br i1 %17, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %8
  br i1 %cmp.n, label %.loopexit33, label %.split.preheader35

.split.preheader35:                               ; preds = %.split.preheader, %middle.block
  %.ph36 = phi ptr [ %9, %.split.preheader ], [ %11, %middle.block ]
  %.ph37 = phi i32 [ %5, %.split.preheader ], [ %12, %middle.block ]
  br label %.split

.split.us:                                        ; preds = %1
  %18 = getelementptr inbounds i8, ptr %9, i64 -2
  %19 = load i16, ptr %18, align 2, !tbaa !60
  %20 = zext i16 %19 to i32
  %21 = tail call i32 @llvm.usub.sat.i32(i32 %20, i32 %3)
  %22 = trunc nuw i32 %21 to i16
  store i16 %22, ptr %18, align 2, !tbaa !60
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split:                                           ; preds = %.split.preheader35, %.split
  %23 = phi ptr [ %25, %.split ], [ %.ph36, %.split.preheader35 ]
  %24 = phi i32 [ %30, %.split ], [ %.ph37, %.split.preheader35 ]
  %25 = getelementptr inbounds i8, ptr %23, i64 -2
  %26 = load i16, ptr %25, align 2, !tbaa !60
  %27 = zext i16 %26 to i32
  %28 = tail call i32 @llvm.usub.sat.i32(i32 %27, i32 %3)
  %29 = trunc nuw i32 %28 to i16
  store i16 %29, ptr %25, align 2, !tbaa !60
  %30 = add i32 %24, -1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %.loopexit33, label %.split, !llvm.loop !124

.loopexit33:                                      ; preds = %.split, %middle.block
  %.not.not10 = icmp eq i32 %3, 0
  br i1 %.not.not10, label %.split5.us, label %.split5, !prof !45, !nosanitize !44

.split5.us:                                       ; preds = %.loopexit33
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split5:                                          ; preds = %.loopexit33
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %33 = load ptr, ptr %32, align 8, !tbaa !35
  %34 = zext i32 %3 to i64
  %35 = getelementptr inbounds nuw [2 x i8], ptr %33, i64 %34
  %min.iters.check14 = icmp ult i32 %3, 8
  br i1 %min.iters.check14, label %scalar.ph13.preheader, label %vector.ph15

vector.ph15:                                      ; preds = %.split5
  %n.vec17 = and i64 %34, 4294967288
  %36 = mul nsw i64 %n.vec17, -2
  %37 = getelementptr i8, ptr %35, i64 %36
  %.cast18 = trunc nuw i64 %n.vec17 to i32
  %38 = sub i32 %3, %.cast18
  %broadcast.splatinsert19 = insertelement <8 x i32> poison, i32 %3, i64 0
  %39 = shufflevector <8 x i32> %broadcast.splatinsert19, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body21

vector.body21:                                    ; preds = %vector.body21, %vector.ph15
  %index22 = phi i64 [ 0, %vector.ph15 ], [ %index.next28, %vector.body21 ]
  %offset.idx23 = mul i64 %index22, -2
  %next.gep24 = getelementptr i8, ptr %35, i64 %offset.idx23
  %40 = getelementptr inbounds i8, ptr %next.gep24, i64 -16
  %wide.load25 = load <8 x i16>, ptr %40, align 2, !tbaa !60
  %41 = zext <8 x i16> %wide.load25 to <8 x i32>
  %42 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %41, <8 x i32> %39)
  %reverse27 = trunc nuw <8 x i32> %42 to <8 x i16>
  store <8 x i16> %reverse27, ptr %40, align 2, !tbaa !60
  %index.next28 = add nuw i64 %index22, 8
  %43 = icmp eq i64 %index.next28, %n.vec17
  br i1 %43, label %middle.block29, label %vector.body21, !llvm.loop !125

middle.block29:                                   ; preds = %vector.body21
  %cmp.n30 = icmp eq i64 %n.vec17, %34
  br i1 %cmp.n30, label %.loopexit, label %scalar.ph13.preheader

scalar.ph13.preheader:                            ; preds = %.split5, %middle.block29
  %.ph = phi ptr [ %35, %.split5 ], [ %37, %middle.block29 ]
  %.ph34 = phi i32 [ %3, %.split5 ], [ %38, %middle.block29 ]
  br label %scalar.ph13

scalar.ph13:                                      ; preds = %scalar.ph13.preheader, %scalar.ph13
  %44 = phi ptr [ %46, %scalar.ph13 ], [ %.ph, %scalar.ph13.preheader ]
  %45 = phi i32 [ %51, %scalar.ph13 ], [ %.ph34, %scalar.ph13.preheader ]
  %46 = getelementptr inbounds i8, ptr %44, i64 -2
  %47 = load i16, ptr %46, align 2, !tbaa !60
  %48 = zext i16 %47 to i32
  %49 = tail call i32 @llvm.usub.sat.i32(i32 %48, i32 %3)
  %50 = trunc nuw i32 %49 to i16
  store i16 %50, ptr %46, align 2, !tbaa !60
  %51 = add i32 %45, -1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %.loopexit, label %scalar.ph13, !llvm.loop !126

.loopexit:                                        ; preds = %scalar.ph13, %middle.block29
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 5960
  store i32 1, ptr %53, align 8, !tbaa !61
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
  %17 = load ptr, ptr %16, align 8, !tbaa !18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !19
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %24 = load i32, ptr %23, align 8, !tbaa !28
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

30:                                               ; preds = %25, %22, %19, %15, %11, %7, %5
  %31 = phi i32 [ 0, %25 ], [ -2, %11 ], [ -2, %7 ], [ -2, %5 ], [ -2, %22 ], [ -2, %19 ], [ -2, %15 ]
  ret i32 %31
}

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i64 @deflateBound_z(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = lshr i64 %1, 3
  %4 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %3), !nosanitize !44
  %5 = extractvalue { i64, i1 } %4, 1, !nosanitize !44
  br i1 %5, label %6, label %7, !prof !45, !nosanitize !44

6:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

7:                                                ; preds = %2
  %8 = extractvalue { i64, i1 } %4, 0, !nosanitize !44
  %9 = lshr i64 %1, 8
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %9), !nosanitize !44
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !44
  br i1 %11, label %12, label %13, !prof !45, !nosanitize !44

12:                                               ; preds = %7
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

13:                                               ; preds = %7
  %14 = extractvalue { i64, i1 } %10, 0, !nosanitize !44
  %15 = lshr i64 %1, 9
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 %15), !nosanitize !44
  %17 = extractvalue { i64, i1 } %16, 1, !nosanitize !44
  br i1 %17, label %18, label %19, !prof !45, !nosanitize !44

18:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

19:                                               ; preds = %13
  %20 = extractvalue { i64, i1 } %16, 0, !nosanitize !44
  %21 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %20, i64 4), !nosanitize !44
  %22 = extractvalue { i64, i1 } %21, 1, !nosanitize !44
  br i1 %22, label %23, label %24, !prof !45, !nosanitize !44

23:                                               ; preds = %19
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

24:                                               ; preds = %19
  %25 = extractvalue { i64, i1 } %21, 0, !nosanitize !44
  %26 = icmp ult i64 %25, %1
  %27 = select i1 %26, i64 -1, i64 %25
  %28 = lshr i64 %1, 5
  %29 = lshr i64 %1, 7
  %30 = lshr i64 %1, 11
  %31 = add i64 %1, 7
  %32 = add i64 %31, %28
  %33 = add i64 %32, %29
  %34 = add i64 %33, %30
  %35 = icmp ult i64 %34, %1
  %36 = select i1 %35, i64 -1, i64 %34
  %37 = icmp eq ptr %0, null
  br i1 %37, label %56, label %38

38:                                               ; preds = %24
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %40 = load ptr, ptr %39, align 8, !tbaa !15
  %41 = icmp eq ptr %40, null
  br i1 %41, label %56, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %44 = load ptr, ptr %43, align 8, !tbaa !17
  %45 = icmp eq ptr %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %48 = load ptr, ptr %47, align 8, !tbaa !18
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %48, align 8, !tbaa !19
  %52 = icmp eq ptr %51, %0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = getelementptr inbounds nuw i8, ptr %48, i64 8
  %55 = load i32, ptr %54, align 8, !tbaa !28
  switch i32 %55, label %56 [
    i32 42, label %62
    i32 57, label %62
    i32 69, label %62
    i32 73, label %62
    i32 91, label %62
    i32 103, label %62
    i32 113, label %62
    i32 666, label %62
  ]

56:                                               ; preds = %53, %50, %46, %42, %38, %24
  %57 = tail call i64 @llvm.umax.i64(i64 %27, i64 %36)
  %58 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %57, i64 18), !nosanitize !44
  %59 = extractvalue { i64, i1 } %58, 0, !nosanitize !44
  %60 = extractvalue { i64, i1 } %58, 1, !nosanitize !44
  br i1 %60, label %61, label %172, !prof !45, !nosanitize !44

61:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

62:                                               ; preds = %53, %53, %53, %53, %53, %53, %53, %53
  %63 = getelementptr inbounds nuw i8, ptr %48, i64 48
  %64 = load i32, ptr %63, align 8, !tbaa !29
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %64), !nosanitize !44
  %68 = extractvalue { i32, i1 } %67, 0, !nosanitize !44
  %69 = extractvalue { i32, i1 } %67, 1, !nosanitize !44
  br i1 %69, label %70, label %71, !prof !45, !nosanitize !44

70:                                               ; preds = %66
  tail call void @llvm.ubsantrap(i8 13) #13, !nosanitize !44
  unreachable, !nosanitize !44

71:                                               ; preds = %66, %62
  %72 = phi i32 [ %68, %66 ], [ %64, %62 ]
  switch i32 %72, label %135 [
    i32 0, label %136
    i32 1, label %73
    i32 2, label %78
  ]

73:                                               ; preds = %71
  %74 = getelementptr inbounds nuw i8, ptr %48, i64 172
  %75 = load i32, ptr %74, align 4, !tbaa !71
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %76, i64 6, i64 10
  br label %136

78:                                               ; preds = %71
  %79 = getelementptr inbounds nuw i8, ptr %48, i64 56
  %80 = load ptr, ptr %79, align 8, !tbaa !98
  %81 = icmp eq ptr %80, null
  br i1 %81, label %136, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds nuw i8, ptr %80, i64 24
  %84 = load ptr, ptr %83, align 8, !tbaa !110
  %85 = icmp eq ptr %84, null
  br i1 %85, label %96, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds nuw i8, ptr %80, i64 32
  %88 = load i32, ptr %87, align 8, !tbaa !115
  %89 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %88, i32 2), !nosanitize !44
  %90 = extractvalue { i32, i1 } %89, 1, !nosanitize !44
  br i1 %90, label %91, label %92, !prof !45, !nosanitize !44

91:                                               ; preds = %86
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

92:                                               ; preds = %86
  %93 = extractvalue { i32, i1 } %89, 0, !nosanitize !44
  %94 = zext i32 %93 to i64
  %95 = add nuw nsw i64 %94, 18
  br label %96

96:                                               ; preds = %92, %82
  %97 = phi i64 [ %95, %92 ], [ 18, %82 ]
  %98 = getelementptr inbounds nuw i8, ptr %80, i64 40
  %99 = load ptr, ptr %98, align 8, !tbaa !109
  %100 = icmp eq ptr %99, null
  br i1 %100, label %.loopexit7, label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %96
  %101 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %97, i64 1), !nosanitize !44
  %102 = extractvalue { i64, i1 } %101, 1, !nosanitize !44
  br i1 %102, label %.preheader6._crit_edge, label %.lr.ph, !prof !127, !nosanitize !44

.preheader6:                                      ; preds = %.lr.ph
  %103 = getelementptr inbounds nuw i8, ptr %107, i64 1
  %104 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %108, i64 1), !nosanitize !44
  %105 = extractvalue { i64, i1 } %104, 1, !nosanitize !44
  br i1 %105, label %.preheader6._crit_edge, label %.lr.ph, !prof !128, !llvm.loop !129, !nosanitize !44

.preheader6._crit_edge:                           ; preds = %.preheader6, %.preheader6.preheader
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

.lr.ph:                                           ; preds = %.preheader6.preheader, %.preheader6
  %106 = phi { i64, i1 } [ %104, %.preheader6 ], [ %101, %.preheader6.preheader ]
  %107 = phi ptr [ %103, %.preheader6 ], [ %99, %.preheader6.preheader ]
  %108 = extractvalue { i64, i1 } %106, 0, !nosanitize !44
  %109 = load i8, ptr %107, align 1, !tbaa !5
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %.loopexit7, label %.preheader6, !llvm.loop !129

.loopexit7:                                       ; preds = %.lr.ph, %96
  %111 = phi i64 [ %97, %96 ], [ %108, %.lr.ph ]
  %112 = getelementptr inbounds nuw i8, ptr %80, i64 56
  %113 = load ptr, ptr %112, align 8, !tbaa !107
  %114 = icmp eq ptr %113, null
  br i1 %114, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit7
  %115 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %111, i64 1), !nosanitize !44
  %116 = extractvalue { i64, i1 } %115, 1, !nosanitize !44
  br i1 %116, label %.preheader._crit_edge, label %.lr.ph17, !prof !127, !nosanitize !44

.preheader:                                       ; preds = %.lr.ph17
  %117 = getelementptr inbounds nuw i8, ptr %121, i64 1
  %118 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %122, i64 1), !nosanitize !44
  %119 = extractvalue { i64, i1 } %118, 1, !nosanitize !44
  br i1 %119, label %.preheader._crit_edge, label %.lr.ph17, !prof !128, !llvm.loop !130, !nosanitize !44

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

.lr.ph17:                                         ; preds = %.preheader.preheader, %.preheader
  %120 = phi { i64, i1 } [ %118, %.preheader ], [ %115, %.preheader.preheader ]
  %121 = phi ptr [ %117, %.preheader ], [ %113, %.preheader.preheader ]
  %122 = extractvalue { i64, i1 } %120, 0, !nosanitize !44
  %123 = load i8, ptr %121, align 1, !tbaa !5
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %.loopexit, label %.preheader, !llvm.loop !130

.loopexit:                                        ; preds = %.lr.ph17, %.loopexit7
  %125 = phi i64 [ %111, %.loopexit7 ], [ %122, %.lr.ph17 ]
  %126 = getelementptr inbounds nuw i8, ptr %80, i64 68
  %127 = load i32, ptr %126, align 4, !tbaa !112
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %.loopexit
  %130 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %125, i64 2), !nosanitize !44
  %131 = extractvalue { i64, i1 } %130, 1, !nosanitize !44
  br i1 %131, label %132, label %133, !prof !45, !nosanitize !44

132:                                              ; preds = %129
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

133:                                              ; preds = %129
  %134 = extractvalue { i64, i1 } %130, 0, !nosanitize !44
  br label %136

135:                                              ; preds = %71
  br label %136

136:                                              ; preds = %135, %133, %.loopexit, %78, %73, %71
  %137 = phi i64 [ 18, %135 ], [ %77, %73 ], [ 18, %78 ], [ 0, %71 ], [ %134, %133 ], [ %125, %.loopexit ]
  %138 = getelementptr inbounds nuw i8, ptr %48, i64 84
  %139 = load i32, ptr %138, align 4, !tbaa !30
  %140 = icmp eq i32 %139, 15
  %141 = getelementptr inbounds nuw i8, ptr %48, i64 136
  %142 = load i32, ptr %141, align 8, !tbaa !50
  %143 = icmp eq i32 %142, 15
  %144 = select i1 %140, i1 %143, i1 false
  br i1 %144, label %158, label %145

145:                                              ; preds = %136
  %146 = icmp ugt i32 %139, %142
  br i1 %146, label %151, label %147

147:                                              ; preds = %145
  %148 = getelementptr inbounds nuw i8, ptr %48, i64 196
  %149 = load i32, ptr %148, align 4, !tbaa !47
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %147, %145
  br label %152

152:                                              ; preds = %151, %147
  %153 = phi i64 [ %36, %151 ], [ %27, %147 ]
  %154 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %153, i64 %137), !nosanitize !44
  %155 = extractvalue { i64, i1 } %154, 0, !nosanitize !44
  %156 = extractvalue { i64, i1 } %154, 1, !nosanitize !44
  br i1 %156, label %157, label %172, !prof !45, !nosanitize !44

157:                                              ; preds = %152
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

158:                                              ; preds = %136
  %159 = lshr i64 %1, 12
  %160 = lshr i64 %1, 14
  %161 = lshr i64 %1, 25
  %162 = add i64 %31, %159
  %163 = add i64 %162, %160
  %164 = add i64 %163, %161
  %165 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %164, i64 %137), !nosanitize !44
  %166 = extractvalue { i64, i1 } %165, 1, !nosanitize !44
  br i1 %166, label %167, label %168, !prof !45, !nosanitize !44

167:                                              ; preds = %158
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

168:                                              ; preds = %158
  %169 = extractvalue { i64, i1 } %165, 0, !nosanitize !44
  %170 = icmp ult i64 %169, %1
  %171 = select i1 %170, i64 -1, i64 %169
  br label %172

172:                                              ; preds = %168, %152, %56
  %173 = phi i64 [ %171, %168 ], [ %59, %56 ], [ %155, %152 ]
  ret i64 %173
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i64 @deflateBound(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = lshr i64 %1, 3
  %4 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %3), !nosanitize !44
  %5 = extractvalue { i64, i1 } %4, 1, !nosanitize !44
  br i1 %5, label %6, label %7, !prof !45, !nosanitize !44

6:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

7:                                                ; preds = %2
  %8 = extractvalue { i64, i1 } %4, 0, !nosanitize !44
  %9 = lshr i64 %1, 8
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %9), !nosanitize !44
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !44
  br i1 %11, label %12, label %13, !prof !45, !nosanitize !44

12:                                               ; preds = %7
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

13:                                               ; preds = %7
  %14 = extractvalue { i64, i1 } %10, 0, !nosanitize !44
  %15 = lshr i64 %1, 9
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 %15), !nosanitize !44
  %17 = extractvalue { i64, i1 } %16, 1, !nosanitize !44
  br i1 %17, label %18, label %19, !prof !45, !nosanitize !44

18:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

19:                                               ; preds = %13
  %20 = extractvalue { i64, i1 } %16, 0, !nosanitize !44
  %21 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %20, i64 4), !nosanitize !44
  %22 = extractvalue { i64, i1 } %21, 1, !nosanitize !44
  br i1 %22, label %23, label %24, !prof !45, !nosanitize !44

23:                                               ; preds = %19
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

24:                                               ; preds = %19
  %25 = extractvalue { i64, i1 } %21, 0, !nosanitize !44
  %26 = icmp ult i64 %25, %1
  %27 = select i1 %26, i64 -1, i64 %25
  %28 = lshr i64 %1, 5
  %29 = lshr i64 %1, 7
  %30 = lshr i64 %1, 11
  %31 = add i64 %1, 7
  %32 = add i64 %31, %28
  %33 = add i64 %32, %29
  %34 = add i64 %33, %30
  %35 = icmp ult i64 %34, %1
  %36 = select i1 %35, i64 -1, i64 %34
  %37 = icmp eq ptr %0, null
  br i1 %37, label %56, label %38

38:                                               ; preds = %24
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %40 = load ptr, ptr %39, align 8, !tbaa !15
  %41 = icmp eq ptr %40, null
  br i1 %41, label %56, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %44 = load ptr, ptr %43, align 8, !tbaa !17
  %45 = icmp eq ptr %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %48 = load ptr, ptr %47, align 8, !tbaa !18
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %48, align 8, !tbaa !19
  %52 = icmp eq ptr %51, %0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = getelementptr inbounds nuw i8, ptr %48, i64 8
  %55 = load i32, ptr %54, align 8, !tbaa !28
  switch i32 %55, label %56 [
    i32 42, label %62
    i32 57, label %62
    i32 69, label %62
    i32 73, label %62
    i32 91, label %62
    i32 103, label %62
    i32 113, label %62
    i32 666, label %62
  ]

56:                                               ; preds = %53, %50, %46, %42, %38, %24
  %57 = tail call i64 @llvm.umax.i64(i64 %27, i64 %36)
  %58 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %57, i64 18), !nosanitize !44
  %59 = extractvalue { i64, i1 } %58, 0, !nosanitize !44
  %60 = extractvalue { i64, i1 } %58, 1, !nosanitize !44
  br i1 %60, label %61, label %172, !prof !45, !nosanitize !44

61:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

62:                                               ; preds = %53, %53, %53, %53, %53, %53, %53, %53
  %63 = getelementptr inbounds nuw i8, ptr %48, i64 48
  %64 = load i32, ptr %63, align 8, !tbaa !29
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %64), !nosanitize !44
  %68 = extractvalue { i32, i1 } %67, 0, !nosanitize !44
  %69 = extractvalue { i32, i1 } %67, 1, !nosanitize !44
  br i1 %69, label %70, label %71, !prof !45, !nosanitize !44

70:                                               ; preds = %66
  tail call void @llvm.ubsantrap(i8 13) #13, !nosanitize !44
  unreachable, !nosanitize !44

71:                                               ; preds = %66, %62
  %72 = phi i32 [ %68, %66 ], [ %64, %62 ]
  switch i32 %72, label %135 [
    i32 0, label %136
    i32 1, label %73
    i32 2, label %78
  ]

73:                                               ; preds = %71
  %74 = getelementptr inbounds nuw i8, ptr %48, i64 172
  %75 = load i32, ptr %74, align 4, !tbaa !71
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %76, i64 6, i64 10
  br label %136

78:                                               ; preds = %71
  %79 = getelementptr inbounds nuw i8, ptr %48, i64 56
  %80 = load ptr, ptr %79, align 8, !tbaa !98
  %81 = icmp eq ptr %80, null
  br i1 %81, label %136, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds nuw i8, ptr %80, i64 24
  %84 = load ptr, ptr %83, align 8, !tbaa !110
  %85 = icmp eq ptr %84, null
  br i1 %85, label %96, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds nuw i8, ptr %80, i64 32
  %88 = load i32, ptr %87, align 8, !tbaa !115
  %89 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %88, i32 2), !nosanitize !44
  %90 = extractvalue { i32, i1 } %89, 1, !nosanitize !44
  br i1 %90, label %91, label %92, !prof !45, !nosanitize !44

91:                                               ; preds = %86
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

92:                                               ; preds = %86
  %93 = extractvalue { i32, i1 } %89, 0, !nosanitize !44
  %94 = zext i32 %93 to i64
  %95 = add nuw nsw i64 %94, 18
  br label %96

96:                                               ; preds = %92, %82
  %97 = phi i64 [ %95, %92 ], [ 18, %82 ]
  %98 = getelementptr inbounds nuw i8, ptr %80, i64 40
  %99 = load ptr, ptr %98, align 8, !tbaa !109
  %100 = icmp eq ptr %99, null
  br i1 %100, label %.loopexit7, label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %96
  %101 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %97, i64 1), !nosanitize !44
  %102 = extractvalue { i64, i1 } %101, 1, !nosanitize !44
  br i1 %102, label %.preheader6._crit_edge, label %.lr.ph, !prof !127, !nosanitize !44

.preheader6:                                      ; preds = %.lr.ph
  %103 = getelementptr inbounds nuw i8, ptr %107, i64 1
  %104 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %108, i64 1), !nosanitize !44
  %105 = extractvalue { i64, i1 } %104, 1, !nosanitize !44
  br i1 %105, label %.preheader6._crit_edge, label %.lr.ph, !prof !128, !llvm.loop !129, !nosanitize !44

.preheader6._crit_edge:                           ; preds = %.preheader6, %.preheader6.preheader
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

.lr.ph:                                           ; preds = %.preheader6.preheader, %.preheader6
  %106 = phi { i64, i1 } [ %104, %.preheader6 ], [ %101, %.preheader6.preheader ]
  %107 = phi ptr [ %103, %.preheader6 ], [ %99, %.preheader6.preheader ]
  %108 = extractvalue { i64, i1 } %106, 0, !nosanitize !44
  %109 = load i8, ptr %107, align 1, !tbaa !5
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %.loopexit7, label %.preheader6, !llvm.loop !129

.loopexit7:                                       ; preds = %.lr.ph, %96
  %111 = phi i64 [ %97, %96 ], [ %108, %.lr.ph ]
  %112 = getelementptr inbounds nuw i8, ptr %80, i64 56
  %113 = load ptr, ptr %112, align 8, !tbaa !107
  %114 = icmp eq ptr %113, null
  br i1 %114, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit7
  %115 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %111, i64 1), !nosanitize !44
  %116 = extractvalue { i64, i1 } %115, 1, !nosanitize !44
  br i1 %116, label %.preheader._crit_edge, label %.lr.ph17, !prof !127, !nosanitize !44

.preheader:                                       ; preds = %.lr.ph17
  %117 = getelementptr inbounds nuw i8, ptr %121, i64 1
  %118 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %122, i64 1), !nosanitize !44
  %119 = extractvalue { i64, i1 } %118, 1, !nosanitize !44
  br i1 %119, label %.preheader._crit_edge, label %.lr.ph17, !prof !128, !llvm.loop !130, !nosanitize !44

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

.lr.ph17:                                         ; preds = %.preheader.preheader, %.preheader
  %120 = phi { i64, i1 } [ %118, %.preheader ], [ %115, %.preheader.preheader ]
  %121 = phi ptr [ %117, %.preheader ], [ %113, %.preheader.preheader ]
  %122 = extractvalue { i64, i1 } %120, 0, !nosanitize !44
  %123 = load i8, ptr %121, align 1, !tbaa !5
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %.loopexit, label %.preheader, !llvm.loop !130

.loopexit:                                        ; preds = %.lr.ph17, %.loopexit7
  %125 = phi i64 [ %111, %.loopexit7 ], [ %122, %.lr.ph17 ]
  %126 = getelementptr inbounds nuw i8, ptr %80, i64 68
  %127 = load i32, ptr %126, align 4, !tbaa !112
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %.loopexit
  %130 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %125, i64 2), !nosanitize !44
  %131 = extractvalue { i64, i1 } %130, 1, !nosanitize !44
  br i1 %131, label %132, label %133, !prof !45, !nosanitize !44

132:                                              ; preds = %129
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

133:                                              ; preds = %129
  %134 = extractvalue { i64, i1 } %130, 0, !nosanitize !44
  br label %136

135:                                              ; preds = %71
  br label %136

136:                                              ; preds = %135, %133, %.loopexit, %78, %73, %71
  %137 = phi i64 [ 18, %135 ], [ %77, %73 ], [ 18, %78 ], [ 0, %71 ], [ %134, %133 ], [ %125, %.loopexit ]
  %138 = getelementptr inbounds nuw i8, ptr %48, i64 84
  %139 = load i32, ptr %138, align 4, !tbaa !30
  %140 = icmp eq i32 %139, 15
  %141 = getelementptr inbounds nuw i8, ptr %48, i64 136
  %142 = load i32, ptr %141, align 8, !tbaa !50
  %143 = icmp eq i32 %142, 15
  %144 = select i1 %140, i1 %143, i1 false
  br i1 %144, label %158, label %145

145:                                              ; preds = %136
  %146 = icmp ugt i32 %139, %142
  br i1 %146, label %151, label %147

147:                                              ; preds = %145
  %148 = getelementptr inbounds nuw i8, ptr %48, i64 196
  %149 = load i32, ptr %148, align 4, !tbaa !47
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %147, %145
  br label %152

152:                                              ; preds = %151, %147
  %153 = phi i64 [ %36, %151 ], [ %27, %147 ]
  %154 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %153, i64 %137), !nosanitize !44
  %155 = extractvalue { i64, i1 } %154, 0, !nosanitize !44
  %156 = extractvalue { i64, i1 } %154, 1, !nosanitize !44
  br i1 %156, label %157, label %172, !prof !45, !nosanitize !44

157:                                              ; preds = %152
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

158:                                              ; preds = %136
  %159 = lshr i64 %1, 12
  %160 = lshr i64 %1, 14
  %161 = lshr i64 %1, 25
  %162 = add i64 %31, %159
  %163 = add i64 %162, %160
  %164 = add i64 %163, %161
  %165 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %164, i64 %137), !nosanitize !44
  %166 = extractvalue { i64, i1 } %165, 1, !nosanitize !44
  br i1 %166, label %167, label %168, !prof !45, !nosanitize !44

167:                                              ; preds = %158
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

168:                                              ; preds = %158
  %169 = extractvalue { i64, i1 } %165, 0, !nosanitize !44
  %170 = icmp ult i64 %169, %1
  %171 = select i1 %170, i64 -1, i64 %169
  br label %172

172:                                              ; preds = %168, %152, %56
  %173 = phi i64 [ %171, %168 ], [ %59, %56 ], [ %155, %152 ]
  ret i64 %173
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_pending(ptr noundef nonnull captures(none) %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %3) #11
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %5 = load i64, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i32, ptr %6, align 8, !tbaa !105
  %8 = zext i32 %7 to i64
  %9 = tail call i64 @llvm.umin.i64(i64 %5, i64 %8)
  %10 = trunc nuw i64 %9 to i32
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %44, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %14 = load ptr, ptr %13, align 8, !tbaa !104
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %16, i64 %9, i1 false)
  %17 = load ptr, ptr %13, align 8, !tbaa !104
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 %9
  store ptr %18, ptr %13, align 8, !tbaa !104
  %19 = load ptr, ptr %15, align 8, !tbaa !56
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 %9
  store ptr %20, ptr %15, align 8, !tbaa !56
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %22 = load i64, ptr %21, align 8, !tbaa !106
  %23 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %22, i64 %9), !nosanitize !44
  %24 = extractvalue { i64, i1 } %23, 1, !nosanitize !44
  br i1 %24, label %25, label %26, !prof !45, !nosanitize !44

25:                                               ; preds = %12
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

26:                                               ; preds = %12
  %27 = extractvalue { i64, i1 } %23, 0, !nosanitize !44
  store i64 %27, ptr %21, align 8, !tbaa !106
  %28 = load i32, ptr %6, align 8, !tbaa !105
  %29 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %28, i32 %10), !nosanitize !44
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !44
  br i1 %30, label %31, label %32, !prof !45, !nosanitize !44

31:                                               ; preds = %26
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

32:                                               ; preds = %26
  %33 = extractvalue { i32, i1 } %29, 0, !nosanitize !44
  store i32 %33, ptr %6, align 8, !tbaa !105
  %34 = load i64, ptr %4, align 8, !tbaa !55
  %35 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %34, i64 %9), !nosanitize !44
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !44
  br i1 %36, label %37, label %38, !prof !45, !nosanitize !44

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !44
  store i64 %39, ptr %4, align 8, !tbaa !55
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %43 = load ptr, ptr %42, align 8, !tbaa !40
  store ptr %43, ptr %15, align 8, !tbaa !56
  br label %44

44:                                               ; preds = %41, %38, %1
  ret void
}

declare i64 @crc32_z(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @deflate_stored(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %4 = load i64, ptr %3, align 8, !tbaa !41
  %5 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %4, i64 5), !nosanitize !44
  %6 = extractvalue { i64, i1 } %5, 1, !nosanitize !44
  br i1 %6, label %7, label %8, !prof !45, !nosanitize !44

7:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

8:                                                ; preds = %2
  %9 = extractvalue { i64, i1 } %5, 0, !nosanitize !44
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %11 = load i32, ptr %10, align 8, !tbaa !31
  %12 = zext i32 %11 to i64
  %13 = tail call i64 @llvm.umin.i64(i64 %9, i64 %12)
  %14 = trunc nuw i64 %13 to i32
  %15 = load ptr, ptr %0, align 8, !tbaa !19
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %17 = load i32, ptr %16, align 8, !tbaa !79
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

27:                                               ; preds = %260, %8
  %28 = load i32, ptr %18, align 4, !tbaa !99
  %29 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %28, i32 42), !nosanitize !44
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !44
  br i1 %30, label %31, label %32, !prof !45, !nosanitize !44

31:                                               ; preds = %27
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

32:                                               ; preds = %27
  %33 = extractvalue { i32, i1 } %29, 0, !nosanitize !44
  %34 = lshr i32 %33, 3
  %35 = load ptr, ptr %0, align 8, !tbaa !19
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 32
  %37 = load i32, ptr %36, align 8, !tbaa !105
  %38 = icmp ult i32 %37, %34
  br i1 %38, label %.loopexit, label %39

39:                                               ; preds = %32
  %40 = load i32, ptr %19, align 4, !tbaa !71
  %41 = zext i32 %40 to i64
  %42 = load i64, ptr %20, align 8, !tbaa !72
  %43 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %41, i64 %42), !nosanitize !44
  %44 = extractvalue { i64, i1 } %43, 1, !nosanitize !44
  br i1 %44, label %45, label %46, !prof !45, !nosanitize !44

45:                                               ; preds = %39
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

46:                                               ; preds = %39
  %47 = sub nuw i32 %37, %34
  %48 = extractvalue { i64, i1 } %43, 0, !nosanitize !44
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %51 = load i32, ptr %50, align 8, !tbaa !79
  %52 = and i64 %48, 4294967295
  %53 = zext i32 %51 to i64
  %54 = add nuw nsw i64 %52, %53
  %55 = icmp samesign ult i64 %54, 65535
  %56 = add i32 %51, %49
  %spec.select = select i1 %55, i32 %56, i32 65535
  %57 = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %47)
  %58 = icmp ult i32 %57, %14
  br i1 %58, label %59, label %69

59:                                               ; preds = %46
  %60 = icmp eq i32 %57, 0
  %61 = and i1 %21, %60
  %62 = or i1 %22, %61
  br i1 %62, label %.loopexit, label %63

63:                                               ; preds = %59
  %64 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !44
  %65 = extractvalue { i32, i1 } %64, 1, !nosanitize !44
  br i1 %65, label %66, label %67, !prof !45, !nosanitize !44

66:                                               ; preds = %63
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

67:                                               ; preds = %63
  %68 = icmp eq i32 %57, %56
  br i1 %68, label %69, label %.loopexit

69:                                               ; preds = %67, %46
  br i1 %23, label %70, label %77

70:                                               ; preds = %69
  %71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !44
  %72 = extractvalue { i32, i1 } %71, 1, !nosanitize !44
  br i1 %72, label %73, label %74, !prof !45, !nosanitize !44

73:                                               ; preds = %70
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

74:                                               ; preds = %70
  %75 = icmp eq i32 %57, %56
  %76 = zext i1 %75 to i32
  br label %77

77:                                               ; preds = %74, %69
  %78 = phi i32 [ 0, %69 ], [ %76, %74 ]
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i32 noundef %78) #11
  %79 = load i64, ptr %25, align 8, !tbaa !55
  %80 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %79, i64 4), !nosanitize !44
  %81 = extractvalue { i64, i1 } %80, 1, !nosanitize !44
  br i1 %81, label %82, label %83, !prof !45, !nosanitize !44

82:                                               ; preds = %77
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

83:                                               ; preds = %77
  %84 = extractvalue { i64, i1 } %80, 0, !nosanitize !44
  %85 = load ptr, ptr %24, align 8, !tbaa !40
  %86 = trunc i32 %57 to i8
  %87 = getelementptr inbounds nuw i8, ptr %85, i64 %84
  store i8 %86, ptr %87, align 1, !tbaa !5
  %88 = load i64, ptr %25, align 8, !tbaa !55
  %89 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %88, i64 3), !nosanitize !44
  %90 = extractvalue { i64, i1 } %89, 1, !nosanitize !44
  br i1 %90, label %91, label %92, !prof !45, !nosanitize !44

91:                                               ; preds = %83
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

92:                                               ; preds = %83
  %93 = extractvalue { i64, i1 } %89, 0, !nosanitize !44
  %94 = load ptr, ptr %24, align 8, !tbaa !40
  %95 = lshr i32 %57, 8
  %96 = trunc i32 %95 to i8
  %97 = getelementptr inbounds nuw i8, ptr %94, i64 %93
  store i8 %96, ptr %97, align 1, !tbaa !5
  %98 = load i64, ptr %25, align 8, !tbaa !55
  %99 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %98, i64 2), !nosanitize !44
  %100 = extractvalue { i64, i1 } %99, 1, !nosanitize !44
  br i1 %100, label %101, label %102, !prof !45, !nosanitize !44

101:                                              ; preds = %92
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

102:                                              ; preds = %92
  %103 = extractvalue { i64, i1 } %99, 0, !nosanitize !44
  %104 = load ptr, ptr %24, align 8, !tbaa !40
  %105 = xor i32 %57, -1
  %106 = trunc i32 %105 to i8
  %107 = getelementptr inbounds nuw i8, ptr %104, i64 %103
  store i8 %106, ptr %107, align 1, !tbaa !5
  %108 = load i64, ptr %25, align 8, !tbaa !55
  %109 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %108, i64 1), !nosanitize !44
  %110 = extractvalue { i64, i1 } %109, 1, !nosanitize !44
  br i1 %110, label %111, label %112, !prof !45, !nosanitize !44

111:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

112:                                              ; preds = %102
  %113 = extractvalue { i64, i1 } %109, 0, !nosanitize !44
  %114 = load ptr, ptr %24, align 8, !tbaa !40
  %115 = lshr i32 %105, 8
  %116 = trunc i32 %115 to i8
  %117 = getelementptr inbounds nuw i8, ptr %114, i64 %113
  store i8 %116, ptr %117, align 1, !tbaa !5
  %118 = load ptr, ptr %0, align 8, !tbaa !19
  %119 = getelementptr inbounds nuw i8, ptr %118, i64 56
  %120 = load ptr, ptr %119, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %120) #11
  %121 = getelementptr inbounds nuw i8, ptr %120, i64 40
  %122 = load i64, ptr %121, align 8, !tbaa !55
  %123 = getelementptr inbounds nuw i8, ptr %118, i64 32
  %124 = load i32, ptr %123, align 8, !tbaa !105
  %125 = zext i32 %124 to i64
  %126 = tail call i64 @llvm.umin.i64(i64 %122, i64 %125)
  %127 = trunc nuw i64 %126 to i32
  %128 = icmp eq i64 %126, 0
  br i1 %128, label %161, label %129

129:                                              ; preds = %112
  %130 = getelementptr inbounds nuw i8, ptr %118, i64 24
  %131 = load ptr, ptr %130, align 8, !tbaa !104
  %132 = getelementptr inbounds nuw i8, ptr %120, i64 32
  %133 = load ptr, ptr %132, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %131, ptr align 1 %133, i64 %126, i1 false)
  %134 = load ptr, ptr %130, align 8, !tbaa !104
  %135 = getelementptr inbounds nuw i8, ptr %134, i64 %126
  store ptr %135, ptr %130, align 8, !tbaa !104
  %136 = load ptr, ptr %132, align 8, !tbaa !56
  %137 = getelementptr inbounds nuw i8, ptr %136, i64 %126
  store ptr %137, ptr %132, align 8, !tbaa !56
  %138 = getelementptr inbounds nuw i8, ptr %118, i64 40
  %139 = load i64, ptr %138, align 8, !tbaa !106
  %140 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %139, i64 %126), !nosanitize !44
  %141 = extractvalue { i64, i1 } %140, 1, !nosanitize !44
  br i1 %141, label %142, label %143, !prof !45, !nosanitize !44

142:                                              ; preds = %129
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

143:                                              ; preds = %129
  %144 = extractvalue { i64, i1 } %140, 0, !nosanitize !44
  store i64 %144, ptr %138, align 8, !tbaa !106
  %145 = load i32, ptr %123, align 8, !tbaa !105
  %146 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %145, i32 %127), !nosanitize !44
  %147 = extractvalue { i32, i1 } %146, 1, !nosanitize !44
  br i1 %147, label %148, label %149, !prof !45, !nosanitize !44

148:                                              ; preds = %143
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

149:                                              ; preds = %143
  %150 = extractvalue { i32, i1 } %146, 0, !nosanitize !44
  store i32 %150, ptr %123, align 8, !tbaa !105
  %151 = load i64, ptr %121, align 8, !tbaa !55
  %152 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %151, i64 %126), !nosanitize !44
  %153 = extractvalue { i64, i1 } %152, 1, !nosanitize !44
  br i1 %153, label %154, label %155, !prof !45, !nosanitize !44

154:                                              ; preds = %149
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

155:                                              ; preds = %149
  %156 = extractvalue { i64, i1 } %152, 0, !nosanitize !44
  store i64 %156, ptr %121, align 8, !tbaa !55
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = getelementptr inbounds nuw i8, ptr %120, i64 16
  %160 = load ptr, ptr %159, align 8, !tbaa !40
  store ptr %160, ptr %132, align 8, !tbaa !56
  br label %161

161:                                              ; preds = %158, %155, %112
  %162 = icmp eq i32 %49, 0
  br i1 %162, label %200, label %163

163:                                              ; preds = %161
  %164 = tail call i32 @llvm.umin.i32(i32 %57, i32 %49)
  %165 = load ptr, ptr %0, align 8, !tbaa !19
  %166 = getelementptr inbounds nuw i8, ptr %165, i64 24
  %167 = load ptr, ptr %166, align 8, !tbaa !104
  %168 = load ptr, ptr %26, align 8, !tbaa !34
  %169 = load i64, ptr %20, align 8, !tbaa !72
  %170 = getelementptr inbounds i8, ptr %168, i64 %169
  %171 = zext i32 %164 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %167, ptr align 1 %170, i64 %171, i1 false)
  %172 = load ptr, ptr %0, align 8, !tbaa !19
  %173 = getelementptr inbounds nuw i8, ptr %172, i64 24
  %174 = load ptr, ptr %173, align 8, !tbaa !104
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 %171
  store ptr %175, ptr %173, align 8, !tbaa !104
  %176 = getelementptr inbounds nuw i8, ptr %172, i64 32
  %177 = load i32, ptr %176, align 8, !tbaa !105
  %178 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %177, i32 %164), !nosanitize !44
  %179 = extractvalue { i32, i1 } %178, 1, !nosanitize !44
  br i1 %179, label %180, label %181, !prof !45, !nosanitize !44

180:                                              ; preds = %163
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

181:                                              ; preds = %163
  %182 = extractvalue { i32, i1 } %178, 0, !nosanitize !44
  store i32 %182, ptr %176, align 8, !tbaa !105
  %183 = getelementptr inbounds nuw i8, ptr %172, i64 40
  %184 = load i64, ptr %183, align 8, !tbaa !106
  %185 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %184, i64 %171), !nosanitize !44
  %186 = extractvalue { i64, i1 } %185, 1, !nosanitize !44
  br i1 %186, label %187, label %188, !prof !45, !nosanitize !44

187:                                              ; preds = %188, %181
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

188:                                              ; preds = %181
  %189 = extractvalue { i64, i1 } %185, 0, !nosanitize !44
  store i64 %189, ptr %183, align 8, !tbaa !106
  %190 = load i64, ptr %20, align 8, !tbaa !72
  %191 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %190, i64 %171), !nosanitize !44
  %192 = extractvalue { i64, i1 } %191, 1, !nosanitize !44
  br i1 %192, label %187, label %193, !prof !45, !nosanitize !44

193:                                              ; preds = %188
  %194 = extractvalue { i64, i1 } %191, 0, !nosanitize !44
  store i64 %194, ptr %20, align 8, !tbaa !72
  %195 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %57, i32 %164), !nosanitize !44
  %196 = extractvalue { i32, i1 } %195, 1, !nosanitize !44
  br i1 %196, label %197, label %198, !prof !45, !nosanitize !44

197:                                              ; preds = %193
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

198:                                              ; preds = %193
  %199 = extractvalue { i32, i1 } %195, 0, !nosanitize !44
  br label %200

200:                                              ; preds = %198, %161
  %201 = phi i32 [ %199, %198 ], [ %57, %161 ]
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %260, label %203

203:                                              ; preds = %200
  %204 = load ptr, ptr %0, align 8, !tbaa !19
  %205 = getelementptr inbounds nuw i8, ptr %204, i64 24
  %206 = load ptr, ptr %205, align 8, !tbaa !104
  %207 = getelementptr inbounds nuw i8, ptr %204, i64 8
  %208 = load i32, ptr %207, align 8, !tbaa !79
  %209 = tail call i32 @llvm.umin.i32(i32 %208, i32 %201)
  %210 = icmp eq i32 %208, 0
  br i1 %210, label %240, label %211

211:                                              ; preds = %203
  %212 = sub i32 %208, %209
  store i32 %212, ptr %207, align 8, !tbaa !79
  %213 = load ptr, ptr %204, align 8, !tbaa !80
  %214 = zext i32 %209 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %206, ptr align 1 %213, i64 %214, i1 false)
  %215 = getelementptr inbounds nuw i8, ptr %204, i64 56
  %216 = load ptr, ptr %215, align 8, !tbaa !18
  %217 = getelementptr inbounds nuw i8, ptr %216, i64 48
  %218 = load i32, ptr %217, align 8, !tbaa !29
  switch i32 %218, label %227 [
    i32 1, label %219
    i32 2, label %223
  ]

219:                                              ; preds = %211
  %220 = getelementptr inbounds nuw i8, ptr %204, i64 96
  %221 = load i64, ptr %220, align 8, !tbaa !57
  %222 = tail call i64 @adler32(i64 noundef %221, ptr noundef %206, i32 noundef %209) #11
  store i64 %222, ptr %220, align 8, !tbaa !57
  br label %227

223:                                              ; preds = %211
  %224 = getelementptr inbounds nuw i8, ptr %204, i64 96
  %225 = load i64, ptr %224, align 8, !tbaa !57
  %226 = tail call i64 @crc32(i64 noundef %225, ptr noundef %206, i32 noundef %209) #11
  store i64 %226, ptr %224, align 8, !tbaa !57
  br label %227

227:                                              ; preds = %223, %219, %211
  %228 = load ptr, ptr %204, align 8, !tbaa !80
  %229 = getelementptr inbounds nuw i8, ptr %228, i64 %214
  store ptr %229, ptr %204, align 8, !tbaa !80
  %230 = getelementptr inbounds nuw i8, ptr %204, i64 16
  %231 = load i64, ptr %230, align 8, !tbaa !53
  %232 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %231, i64 %214), !nosanitize !44
  %233 = extractvalue { i64, i1 } %232, 1, !nosanitize !44
  br i1 %233, label %234, label %235, !prof !45, !nosanitize !44

234:                                              ; preds = %227
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

235:                                              ; preds = %227
  %236 = extractvalue { i64, i1 } %232, 0, !nosanitize !44
  store i64 %236, ptr %230, align 8, !tbaa !53
  %237 = load ptr, ptr %0, align 8, !tbaa !19
  %238 = getelementptr inbounds nuw i8, ptr %237, i64 24
  %239 = load ptr, ptr %238, align 8, !tbaa !104
  br label %240

240:                                              ; preds = %235, %203
  %241 = phi ptr [ %206, %203 ], [ %239, %235 ]
  %242 = phi ptr [ %204, %203 ], [ %237, %235 ]
  %243 = getelementptr inbounds nuw i8, ptr %242, i64 24
  %244 = zext i32 %201 to i64
  %245 = getelementptr inbounds nuw i8, ptr %241, i64 %244
  store ptr %245, ptr %243, align 8, !tbaa !104
  %246 = getelementptr inbounds nuw i8, ptr %242, i64 32
  %247 = load i32, ptr %246, align 8, !tbaa !105
  %248 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %247, i32 %201), !nosanitize !44
  %249 = extractvalue { i32, i1 } %248, 1, !nosanitize !44
  br i1 %249, label %250, label %251, !prof !45, !nosanitize !44

250:                                              ; preds = %240
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

251:                                              ; preds = %240
  %252 = extractvalue { i32, i1 } %248, 0, !nosanitize !44
  store i32 %252, ptr %246, align 8, !tbaa !105
  %253 = getelementptr inbounds nuw i8, ptr %242, i64 40
  %254 = load i64, ptr %253, align 8, !tbaa !106
  %255 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %254, i64 %244), !nosanitize !44
  %256 = extractvalue { i64, i1 } %255, 1, !nosanitize !44
  br i1 %256, label %257, label %258, !prof !45, !nosanitize !44

257:                                              ; preds = %251
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

258:                                              ; preds = %251
  %259 = extractvalue { i64, i1 } %255, 0, !nosanitize !44
  store i64 %259, ptr %253, align 8, !tbaa !106
  br label %260

260:                                              ; preds = %258, %200
  %261 = icmp eq i32 %78, 0
  br i1 %261, label %27, label %262, !llvm.loop !131

262:                                              ; preds = %260
  %263 = load ptr, ptr %0, align 8, !tbaa !19
  br label %.loopexit, !llvm.loop !131

.loopexit:                                        ; preds = %67, %59, %32, %262
  %264 = phi ptr [ %263, %262 ], [ %35, %32 ], [ %35, %59 ], [ %35, %67 ]
  %265 = phi i1 [ false, %262 ], [ true, %32 ], [ true, %59 ], [ true, %67 ]
  %266 = getelementptr inbounds nuw i8, ptr %264, i64 8
  %267 = load i32, ptr %266, align 8, !tbaa !79
  %268 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %17, i32 %267), !nosanitize !44
  %269 = extractvalue { i32, i1 } %268, 0, !nosanitize !44
  %270 = extractvalue { i32, i1 } %268, 1, !nosanitize !44
  br i1 %270, label %271, label %272, !prof !45, !nosanitize !44

271:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

272:                                              ; preds = %.loopexit
  %273 = icmp eq i32 %269, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %272
  %275 = load i32, ptr %19, align 4, !tbaa !71
  %276 = zext i32 %275 to i64
  br label %354

277:                                              ; preds = %272
  %278 = load i32, ptr %10, align 8, !tbaa !31
  %279 = icmp ult i32 %269, %278
  br i1 %279, label %289, label %280

280:                                              ; preds = %277
  %281 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 2, ptr %281, align 8, !tbaa !122
  %282 = load ptr, ptr %26, align 8, !tbaa !34
  %283 = load ptr, ptr %264, align 8, !tbaa !80
  %284 = zext i32 %278 to i64
  %285 = sub nsw i64 0, %284
  %286 = getelementptr inbounds i8, ptr %283, i64 %285
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %282, ptr align 1 %286, i64 %284, i1 false)
  %287 = load i32, ptr %10, align 8, !tbaa !31
  store i32 %287, ptr %19, align 4, !tbaa !71
  %288 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %287, ptr %288, align 4, !tbaa !74
  br label %351

289:                                              ; preds = %277
  %290 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %291 = load i64, ptr %290, align 8, !tbaa !59
  %292 = load i32, ptr %19, align 4, !tbaa !71
  %293 = zext i32 %292 to i64
  %294 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %291, i64 %293), !nosanitize !44
  %295 = extractvalue { i64, i1 } %294, 1, !nosanitize !44
  br i1 %295, label %296, label %297, !prof !45, !nosanitize !44

296:                                              ; preds = %289
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

297:                                              ; preds = %289
  %298 = extractvalue { i64, i1 } %294, 0, !nosanitize !44
  %299 = zext i32 %269 to i64
  %300 = icmp ugt i64 %298, %299
  br i1 %300, label %322, label %301

301:                                              ; preds = %297
  %302 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %292, i32 %278), !nosanitize !44
  %303 = extractvalue { i32, i1 } %302, 1, !nosanitize !44
  br i1 %303, label %304, label %305, !prof !45, !nosanitize !44

304:                                              ; preds = %301
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

305:                                              ; preds = %301
  %306 = extractvalue { i32, i1 } %302, 0, !nosanitize !44
  store i32 %306, ptr %19, align 4, !tbaa !71
  %307 = load ptr, ptr %26, align 8, !tbaa !34
  %308 = zext i32 %278 to i64
  %309 = getelementptr inbounds nuw i8, ptr %307, i64 %308
  %310 = zext i32 %306 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %307, ptr nonnull align 1 %309, i64 %310, i1 false)
  %311 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %312 = load i32, ptr %311, align 8, !tbaa !122
  %313 = icmp ult i32 %312, 2
  br i1 %313, label %314, label %316

314:                                              ; preds = %305
  %315 = add nuw nsw i32 %312, 1
  store i32 %315, ptr %311, align 8, !tbaa !122
  br label %316

316:                                              ; preds = %314, %305
  %317 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %318 = load i32, ptr %317, align 4, !tbaa !74
  %319 = load i32, ptr %19, align 4, !tbaa !71
  %320 = icmp ugt i32 %318, %319
  br i1 %320, label %321, label %322

321:                                              ; preds = %316
  store i32 %319, ptr %317, align 4, !tbaa !74
  br label %322

322:                                              ; preds = %321, %316, %297
  %323 = phi i32 [ %319, %316 ], [ %319, %321 ], [ %292, %297 ]
  %324 = load ptr, ptr %26, align 8, !tbaa !34
  %325 = zext i32 %323 to i64
  %326 = getelementptr inbounds nuw i8, ptr %324, i64 %325
  %327 = load ptr, ptr %0, align 8, !tbaa !19
  %328 = load ptr, ptr %327, align 8, !tbaa !80
  %329 = sub nsw i64 0, %299
  %330 = getelementptr inbounds i8, ptr %328, i64 %329
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %326, ptr nonnull align 1 %330, i64 %299, i1 false)
  %331 = load i32, ptr %19, align 4, !tbaa !71
  %332 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %331, i32 %269), !nosanitize !44
  %333 = extractvalue { i32, i1 } %332, 1, !nosanitize !44
  br i1 %333, label %334, label %335, !prof !45, !nosanitize !44

334:                                              ; preds = %322
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

335:                                              ; preds = %322
  %336 = extractvalue { i32, i1 } %332, 0, !nosanitize !44
  store i32 %336, ptr %19, align 4, !tbaa !71
  %337 = load i32, ptr %10, align 8, !tbaa !31
  %338 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %339 = load i32, ptr %338, align 4, !tbaa !74
  %340 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %337, i32 %339), !nosanitize !44
  %341 = extractvalue { i32, i1 } %340, 1, !nosanitize !44
  br i1 %341, label %342, label %343, !prof !45, !nosanitize !44

342:                                              ; preds = %335
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

343:                                              ; preds = %335
  %344 = extractvalue { i32, i1 } %340, 0, !nosanitize !44
  %345 = tail call i32 @llvm.umin.i32(i32 %269, i32 %344)
  %346 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %339, i32 %345), !nosanitize !44
  %347 = extractvalue { i32, i1 } %346, 1, !nosanitize !44
  br i1 %347, label %348, label %349, !prof !45, !nosanitize !44

348:                                              ; preds = %343
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

349:                                              ; preds = %343
  %350 = extractvalue { i32, i1 } %346, 0, !nosanitize !44
  store i32 %350, ptr %338, align 4, !tbaa !74
  br label %351

351:                                              ; preds = %349, %280
  %352 = phi i32 [ %336, %349 ], [ %287, %280 ]
  %353 = zext i32 %352 to i64
  store i64 %353, ptr %20, align 8, !tbaa !72
  br label %354

354:                                              ; preds = %351, %274
  %355 = phi i64 [ %276, %274 ], [ %353, %351 ]
  %356 = phi i32 [ %275, %274 ], [ %352, %351 ]
  %357 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %358 = load i64, ptr %357, align 8, !tbaa !38
  %359 = icmp ult i64 %358, %355
  br i1 %359, label %360, label %361

360:                                              ; preds = %354
  store i64 %355, ptr %357, align 8, !tbaa !38
  br label %361

361:                                              ; preds = %360, %354
  br i1 %265, label %362, label %581

362:                                              ; preds = %361
  %363 = icmp ne i32 %1, 0
  switch i32 %1, label %364 [
    i32 4, label %372
    i32 0, label %372
  ]

364:                                              ; preds = %362
  %365 = load ptr, ptr %0, align 8, !tbaa !19
  %366 = getelementptr inbounds nuw i8, ptr %365, i64 8
  %367 = load i32, ptr %366, align 8, !tbaa !79
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %372

369:                                              ; preds = %364
  %370 = load i64, ptr %20, align 8, !tbaa !72
  %371 = icmp eq i64 %370, %355
  br i1 %371, label %584, label %372

372:                                              ; preds = %369, %364, %362, %362
  %373 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %374 = load i64, ptr %373, align 8, !tbaa !59
  %375 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %374, i64 %355), !nosanitize !44
  %376 = extractvalue { i64, i1 } %375, 1, !nosanitize !44
  br i1 %376, label %377, label %378, !prof !45, !nosanitize !44

377:                                              ; preds = %372
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

378:                                              ; preds = %372
  %379 = extractvalue { i64, i1 } %375, 0, !nosanitize !44
  %380 = trunc i64 %379 to i32
  %381 = load ptr, ptr %0, align 8, !tbaa !19
  %382 = getelementptr inbounds nuw i8, ptr %381, i64 8
  %383 = load i32, ptr %382, align 8, !tbaa !79
  %384 = icmp ugt i32 %383, %380
  br i1 %384, label %385, label %417

385:                                              ; preds = %378
  %386 = load i64, ptr %20, align 8, !tbaa !72
  %387 = load i32, ptr %10, align 8, !tbaa !31
  %388 = zext i32 %387 to i64
  %389 = icmp slt i64 %386, %388
  br i1 %389, label %417, label %390

390:                                              ; preds = %385
  %391 = sub nsw i64 %386, %388
  store i64 %391, ptr %20, align 8, !tbaa !72
  %392 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %356, i32 %387), !nosanitize !44
  %393 = extractvalue { i32, i1 } %392, 1, !nosanitize !44
  br i1 %393, label %394, label %395, !prof !45, !nosanitize !44

394:                                              ; preds = %390
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

395:                                              ; preds = %390
  %396 = extractvalue { i32, i1 } %392, 0, !nosanitize !44
  store i32 %396, ptr %19, align 4, !tbaa !71
  %397 = load ptr, ptr %26, align 8, !tbaa !34
  %398 = getelementptr inbounds nuw i8, ptr %397, i64 %388
  %399 = zext i32 %396 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %397, ptr align 1 %398, i64 %399, i1 false)
  %400 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %401 = load i32, ptr %400, align 8, !tbaa !122
  %402 = icmp ult i32 %401, 2
  br i1 %402, label %403, label %405

403:                                              ; preds = %395
  %404 = add nuw nsw i32 %401, 1
  store i32 %404, ptr %400, align 8, !tbaa !122
  br label %405

405:                                              ; preds = %403, %395
  %406 = load i32, ptr %10, align 8, !tbaa !31
  %407 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %380, i32 %406), !nosanitize !44
  %408 = extractvalue { i32, i1 } %407, 0, !nosanitize !44
  %409 = extractvalue { i32, i1 } %407, 1, !nosanitize !44
  br i1 %409, label %410, label %411, !prof !45, !nosanitize !44

410:                                              ; preds = %405
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

411:                                              ; preds = %405
  %412 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %413 = load i32, ptr %412, align 4, !tbaa !74
  %414 = load i32, ptr %19, align 4, !tbaa !71
  %415 = icmp ugt i32 %413, %414
  br i1 %415, label %416, label %417

416:                                              ; preds = %411
  store i32 %414, ptr %412, align 4, !tbaa !74
  br label %417

417:                                              ; preds = %416, %411, %385, %378
  %418 = phi i32 [ %414, %416 ], [ %414, %411 ], [ %356, %385 ], [ %356, %378 ]
  %419 = phi i32 [ %408, %416 ], [ %408, %411 ], [ %380, %385 ], [ %380, %378 ]
  %420 = load ptr, ptr %0, align 8, !tbaa !19
  %421 = getelementptr inbounds nuw i8, ptr %420, i64 8
  %422 = load i32, ptr %421, align 8, !tbaa !79
  %423 = tail call i32 @llvm.umin.i32(i32 %419, i32 %422)
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %474, label %425

425:                                              ; preds = %417
  %426 = load ptr, ptr %26, align 8, !tbaa !34
  %427 = zext i32 %418 to i64
  %428 = getelementptr inbounds nuw i8, ptr %426, i64 %427
  %429 = sub i32 %422, %423
  store i32 %429, ptr %421, align 8, !tbaa !79
  %430 = load ptr, ptr %420, align 8, !tbaa !80
  %431 = zext i32 %423 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %428, ptr align 1 %430, i64 %431, i1 false)
  %432 = getelementptr inbounds nuw i8, ptr %420, i64 56
  %433 = load ptr, ptr %432, align 8, !tbaa !18
  %434 = getelementptr inbounds nuw i8, ptr %433, i64 48
  %435 = load i32, ptr %434, align 8, !tbaa !29
  switch i32 %435, label %444 [
    i32 1, label %436
    i32 2, label %440
  ]

436:                                              ; preds = %425
  %437 = getelementptr inbounds nuw i8, ptr %420, i64 96
  %438 = load i64, ptr %437, align 8, !tbaa !57
  %439 = tail call i64 @adler32(i64 noundef %438, ptr noundef %428, i32 noundef %423) #11
  store i64 %439, ptr %437, align 8, !tbaa !57
  br label %444

440:                                              ; preds = %425
  %441 = getelementptr inbounds nuw i8, ptr %420, i64 96
  %442 = load i64, ptr %441, align 8, !tbaa !57
  %443 = tail call i64 @crc32(i64 noundef %442, ptr noundef %428, i32 noundef %423) #11
  store i64 %443, ptr %441, align 8, !tbaa !57
  br label %444

444:                                              ; preds = %440, %436, %425
  %445 = load ptr, ptr %420, align 8, !tbaa !80
  %446 = getelementptr inbounds nuw i8, ptr %445, i64 %431
  store ptr %446, ptr %420, align 8, !tbaa !80
  %447 = getelementptr inbounds nuw i8, ptr %420, i64 16
  %448 = load i64, ptr %447, align 8, !tbaa !53
  %449 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %448, i64 %431), !nosanitize !44
  %450 = extractvalue { i64, i1 } %449, 1, !nosanitize !44
  br i1 %450, label %451, label %452, !prof !45, !nosanitize !44

451:                                              ; preds = %444
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

452:                                              ; preds = %444
  %453 = extractvalue { i64, i1 } %449, 0, !nosanitize !44
  store i64 %453, ptr %447, align 8, !tbaa !53
  %454 = load i32, ptr %19, align 4, !tbaa !71
  %455 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %454, i32 %423), !nosanitize !44
  %456 = extractvalue { i32, i1 } %455, 1, !nosanitize !44
  br i1 %456, label %457, label %458, !prof !45, !nosanitize !44

457:                                              ; preds = %452
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

458:                                              ; preds = %452
  %459 = extractvalue { i32, i1 } %455, 0, !nosanitize !44
  store i32 %459, ptr %19, align 4, !tbaa !71
  %460 = load i32, ptr %10, align 8, !tbaa !31
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %462 = load i32, ptr %461, align 4, !tbaa !74
  %463 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %460, i32 %462), !nosanitize !44
  %464 = extractvalue { i32, i1 } %463, 1, !nosanitize !44
  br i1 %464, label %465, label %466, !prof !45, !nosanitize !44

465:                                              ; preds = %458
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

466:                                              ; preds = %458
  %467 = extractvalue { i32, i1 } %463, 0, !nosanitize !44
  %468 = tail call i32 @llvm.umin.i32(i32 %423, i32 %467)
  %469 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %462, i32 %468), !nosanitize !44
  %470 = extractvalue { i32, i1 } %469, 1, !nosanitize !44
  br i1 %470, label %471, label %472, !prof !45, !nosanitize !44

471:                                              ; preds = %466
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

472:                                              ; preds = %466
  %473 = extractvalue { i32, i1 } %469, 0, !nosanitize !44
  store i32 %473, ptr %461, align 4, !tbaa !74
  br label %474

474:                                              ; preds = %472, %417
  %475 = phi i32 [ %459, %472 ], [ %418, %417 ]
  %476 = load i64, ptr %357, align 8, !tbaa !38
  %477 = zext i32 %475 to i64
  %478 = icmp ult i64 %476, %477
  br i1 %478, label %479, label %480

479:                                              ; preds = %474
  store i64 %477, ptr %357, align 8, !tbaa !38
  br label %480

480:                                              ; preds = %479, %474
  %481 = load i32, ptr %18, align 4, !tbaa !99
  %482 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %481, i32 42), !nosanitize !44
  %483 = extractvalue { i32, i1 } %482, 1, !nosanitize !44
  br i1 %483, label %484, label %485, !prof !45, !nosanitize !44

484:                                              ; preds = %526, %480
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

485:                                              ; preds = %480
  %486 = extractvalue { i32, i1 } %482, 0, !nosanitize !44
  %487 = lshr i32 %486, 3
  %488 = load i64, ptr %3, align 8, !tbaa !41
  %489 = zext nneg i32 %487 to i64
  %490 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %488, i64 %489), !nosanitize !44
  %491 = extractvalue { i64, i1 } %490, 1, !nosanitize !44
  br i1 %491, label %492, label %493, !prof !45, !nosanitize !44

492:                                              ; preds = %485
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

493:                                              ; preds = %485
  %494 = extractvalue { i64, i1 } %490, 0, !nosanitize !44
  %495 = tail call i64 @llvm.umin.i64(i64 %494, i64 65535)
  %496 = trunc nuw nsw i64 %495 to i32
  %497 = load i64, ptr %20, align 8, !tbaa !72
  %498 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %477, i64 %497), !nosanitize !44
  %499 = extractvalue { i64, i1 } %498, 1, !nosanitize !44
  br i1 %499, label %500, label %501, !prof !45, !nosanitize !44

500:                                              ; preds = %493
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

501:                                              ; preds = %493
  %502 = load i32, ptr %10, align 8, !tbaa !31
  %503 = tail call i32 @llvm.umin.i32(i32 %502, i32 %496)
  %504 = extractvalue { i64, i1 } %498, 0, !nosanitize !44
  %505 = trunc i64 %504 to i32
  %506 = icmp ugt i32 %503, %505
  br i1 %506, label %507, label %516

507:                                              ; preds = %501
  %508 = icmp ne i32 %505, 0
  %509 = or i1 %23, %508
  %510 = and i1 %363, %509
  br i1 %510, label %511, label %584

511:                                              ; preds = %507
  %512 = load ptr, ptr %0, align 8, !tbaa !19
  %513 = getelementptr inbounds nuw i8, ptr %512, i64 8
  %514 = load i32, ptr %513, align 8, !tbaa !79
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %516, label %584

516:                                              ; preds = %511, %501
  %517 = tail call i32 @llvm.umin.i32(i32 %496, i32 %505)
  br i1 %23, label %518, label %526

518:                                              ; preds = %516
  %519 = load ptr, ptr %0, align 8, !tbaa !19
  %520 = getelementptr inbounds nuw i8, ptr %519, i64 8
  %521 = load i32, ptr %520, align 8, !tbaa !79
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %523, label %526

523:                                              ; preds = %518
  %524 = icmp uge i32 %496, %505
  %525 = zext i1 %524 to i32
  br label %526

526:                                              ; preds = %523, %518, %516
  %527 = phi i32 [ 0, %518 ], [ 0, %516 ], [ %525, %523 ]
  %528 = load ptr, ptr %26, align 8, !tbaa !34
  %529 = getelementptr inbounds i8, ptr %528, i64 %497
  %530 = zext nneg i32 %517 to i64
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef %529, i64 noundef %530, i32 noundef %527) #11
  %531 = load i64, ptr %20, align 8, !tbaa !72
  %532 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %531, i64 %530), !nosanitize !44
  %533 = extractvalue { i64, i1 } %532, 1, !nosanitize !44
  br i1 %533, label %484, label %534, !prof !45, !nosanitize !44

534:                                              ; preds = %526
  %535 = extractvalue { i64, i1 } %532, 0, !nosanitize !44
  store i64 %535, ptr %20, align 8, !tbaa !72
  %536 = load ptr, ptr %0, align 8, !tbaa !19
  %537 = getelementptr inbounds nuw i8, ptr %536, i64 56
  %538 = load ptr, ptr %537, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %538) #11
  %539 = getelementptr inbounds nuw i8, ptr %538, i64 40
  %540 = load i64, ptr %539, align 8, !tbaa !55
  %541 = getelementptr inbounds nuw i8, ptr %536, i64 32
  %542 = load i32, ptr %541, align 8, !tbaa !105
  %543 = zext i32 %542 to i64
  %544 = tail call i64 @llvm.umin.i64(i64 %540, i64 %543)
  %545 = trunc nuw i64 %544 to i32
  %546 = icmp eq i64 %544, 0
  br i1 %546, label %579, label %547

547:                                              ; preds = %534
  %548 = getelementptr inbounds nuw i8, ptr %536, i64 24
  %549 = load ptr, ptr %548, align 8, !tbaa !104
  %550 = getelementptr inbounds nuw i8, ptr %538, i64 32
  %551 = load ptr, ptr %550, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %549, ptr align 1 %551, i64 %544, i1 false)
  %552 = load ptr, ptr %548, align 8, !tbaa !104
  %553 = getelementptr inbounds nuw i8, ptr %552, i64 %544
  store ptr %553, ptr %548, align 8, !tbaa !104
  %554 = load ptr, ptr %550, align 8, !tbaa !56
  %555 = getelementptr inbounds nuw i8, ptr %554, i64 %544
  store ptr %555, ptr %550, align 8, !tbaa !56
  %556 = getelementptr inbounds nuw i8, ptr %536, i64 40
  %557 = load i64, ptr %556, align 8, !tbaa !106
  %558 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %557, i64 %544), !nosanitize !44
  %559 = extractvalue { i64, i1 } %558, 1, !nosanitize !44
  br i1 %559, label %560, label %561, !prof !45, !nosanitize !44

560:                                              ; preds = %547
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

561:                                              ; preds = %547
  %562 = extractvalue { i64, i1 } %558, 0, !nosanitize !44
  store i64 %562, ptr %556, align 8, !tbaa !106
  %563 = load i32, ptr %541, align 8, !tbaa !105
  %564 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %563, i32 %545), !nosanitize !44
  %565 = extractvalue { i32, i1 } %564, 1, !nosanitize !44
  br i1 %565, label %566, label %567, !prof !45, !nosanitize !44

566:                                              ; preds = %561
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

567:                                              ; preds = %561
  %568 = extractvalue { i32, i1 } %564, 0, !nosanitize !44
  store i32 %568, ptr %541, align 8, !tbaa !105
  %569 = load i64, ptr %539, align 8, !tbaa !55
  %570 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %569, i64 %544), !nosanitize !44
  %571 = extractvalue { i64, i1 } %570, 1, !nosanitize !44
  br i1 %571, label %572, label %573, !prof !45, !nosanitize !44

572:                                              ; preds = %567
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

573:                                              ; preds = %567
  %574 = extractvalue { i64, i1 } %570, 0, !nosanitize !44
  store i64 %574, ptr %539, align 8, !tbaa !55
  %575 = icmp eq i64 %574, 0
  br i1 %575, label %576, label %579

576:                                              ; preds = %573
  %577 = getelementptr inbounds nuw i8, ptr %538, i64 16
  %578 = load ptr, ptr %577, align 8, !tbaa !40
  store ptr %578, ptr %550, align 8, !tbaa !56
  br label %579

579:                                              ; preds = %576, %573, %534
  %580 = icmp eq i32 %527, 0
  br i1 %580, label %584, label %581

581:                                              ; preds = %579, %361
  %582 = phi i32 [ 3, %361 ], [ 2, %579 ]
  %583 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 8, ptr %583, align 8, !tbaa !100
  br label %584

584:                                              ; preds = %581, %579, %511, %507, %369
  %585 = phi i32 [ 1, %369 ], [ 0, %579 ], [ 0, %507 ], [ 0, %511 ], [ %582, %581 ]
  ret i32 %585
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @deflate_huff(ptr noundef nonnull %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #0 {
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

25:                                               ; preds = %.backedge, %2
  %26 = load i32, ptr %3, align 4, !tbaa !73
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %318

28:                                               ; preds = %25
  %29 = load i32, ptr %4, align 8, !tbaa !31
  %30 = zext i32 %29 to i64
  br label %31

31:                                               ; preds = %264, %28
  %32 = phi i32 [ %192, %264 ], [ 0, %28 ]
  %33 = load i64, ptr %5, align 8, !tbaa !59
  %34 = zext nneg i32 %32 to i64
  %35 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %33, i64 %34), !nosanitize !44
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !44
  br i1 %36, label %37, label %38, !prof !45, !nosanitize !44

37:                                               ; preds = %31
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

38:                                               ; preds = %31
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !44
  %40 = load i32, ptr %6, align 4, !tbaa !71
  %41 = zext i32 %40 to i64
  %42 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %39, i64 %41), !nosanitize !44
  %43 = extractvalue { i64, i1 } %42, 1, !nosanitize !44
  br i1 %43, label %44, label %45, !prof !45, !nosanitize !44

44:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

45:                                               ; preds = %38
  %46 = extractvalue { i64, i1 } %42, 0, !nosanitize !44
  %47 = trunc i64 %46 to i32
  %48 = load i32, ptr %4, align 8, !tbaa !31
  %49 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %48, i32 262), !nosanitize !44
  %50 = extractvalue { i32, i1 } %49, 1, !nosanitize !44
  br i1 %50, label %51, label %52, !prof !45, !nosanitize !44

51:                                               ; preds = %45
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

52:                                               ; preds = %45
  %53 = extractvalue { i32, i1 } %49, 0, !nosanitize !44
  %54 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %29, i32 %53), !nosanitize !44
  %55 = extractvalue { i32, i1 } %54, 1, !nosanitize !44
  br i1 %55, label %56, label %57, !prof !45, !nosanitize !44

56:                                               ; preds = %52
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

57:                                               ; preds = %52
  %58 = extractvalue { i32, i1 } %54, 0, !nosanitize !44
  %59 = icmp ult i32 %40, %58
  br i1 %59, label %143, label %60

60:                                               ; preds = %57
  %61 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %29, i32 %47), !nosanitize !44
  %62 = extractvalue { i32, i1 } %61, 1, !nosanitize !44
  br i1 %62, label %63, label %64, !prof !45, !nosanitize !44

63:                                               ; preds = %60
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

64:                                               ; preds = %60
  %65 = extractvalue { i32, i1 } %61, 0, !nosanitize !44
  %66 = load ptr, ptr %7, align 8, !tbaa !34
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 %30
  %68 = zext i32 %65 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %66, ptr align 1 %67, i64 %68, i1 false)
  %69 = load i32, ptr %8, align 8, !tbaa !81
  %70 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %69, i32 %29), !nosanitize !44
  %71 = extractvalue { i32, i1 } %70, 1, !nosanitize !44
  br i1 %71, label %72, label %73, !prof !45, !nosanitize !44

72:                                               ; preds = %64
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

73:                                               ; preds = %64
  %74 = extractvalue { i32, i1 } %70, 0, !nosanitize !44
  store i32 %74, ptr %8, align 8, !tbaa !81
  %75 = load i32, ptr %6, align 4, !tbaa !71
  %76 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %75, i32 %29), !nosanitize !44
  %77 = extractvalue { i32, i1 } %76, 1, !nosanitize !44
  br i1 %77, label %78, label %79, !prof !45, !nosanitize !44

78:                                               ; preds = %79, %73
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

79:                                               ; preds = %73
  %80 = extractvalue { i32, i1 } %76, 0, !nosanitize !44
  store i32 %80, ptr %6, align 4, !tbaa !71
  %81 = load i64, ptr %9, align 8, !tbaa !72
  %82 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %81, i64 %30), !nosanitize !44
  %83 = extractvalue { i64, i1 } %82, 1, !nosanitize !44
  br i1 %83, label %78, label %84, !prof !45, !nosanitize !44

84:                                               ; preds = %79
  %85 = extractvalue { i64, i1 } %82, 0, !nosanitize !44
  store i64 %85, ptr %9, align 8, !tbaa !72
  %86 = load i32, ptr %10, align 4, !tbaa !74
  %87 = icmp ugt i32 %86, %80
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 %80, ptr %10, align 4, !tbaa !74
  br label %89

89:                                               ; preds = %88, %84
  %90 = load i32, ptr %4, align 8, !tbaa !31
  %91 = load i32, ptr %11, align 4, !tbaa !36
  %92 = load ptr, ptr %12, align 8, !tbaa !37
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds nuw [2 x i8], ptr %92, i64 %93
  %.not.not = icmp eq i32 %91, 0
  br i1 %.not.not, label %.split.us, label %.split.preheader, !prof !45, !nosanitize !44

.split.preheader:                                 ; preds = %89
  %min.iters.check74 = icmp ult i32 %91, 8
  br i1 %min.iters.check74, label %.split.preheader96, label %vector.ph75

vector.ph75:                                      ; preds = %.split.preheader
  %n.vec77 = and i64 %93, 4294967288
  %95 = mul nsw i64 %n.vec77, -2
  %96 = getelementptr i8, ptr %94, i64 %95
  %.cast78 = trunc nuw i64 %n.vec77 to i32
  %97 = sub i32 %91, %.cast78
  %broadcast.splatinsert79 = insertelement <8 x i32> poison, i32 %90, i64 0
  %98 = shufflevector <8 x i32> %broadcast.splatinsert79, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph75
  %index82 = phi i64 [ 0, %vector.ph75 ], [ %index.next88, %vector.body81 ]
  %offset.idx83 = mul i64 %index82, -2
  %next.gep84 = getelementptr i8, ptr %94, i64 %offset.idx83
  %99 = getelementptr inbounds i8, ptr %next.gep84, i64 -16
  %wide.load85 = load <8 x i16>, ptr %99, align 2, !tbaa !60
  %100 = zext <8 x i16> %wide.load85 to <8 x i32>
  %101 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %100, <8 x i32> %98)
  %reverse87 = trunc nuw <8 x i32> %101 to <8 x i16>
  store <8 x i16> %reverse87, ptr %99, align 2, !tbaa !60
  %index.next88 = add nuw i64 %index82, 8
  %102 = icmp eq i64 %index.next88, %n.vec77
  br i1 %102, label %middle.block89, label %vector.body81, !llvm.loop !132

middle.block89:                                   ; preds = %vector.body81
  %cmp.n90 = icmp eq i64 %n.vec77, %93
  br i1 %cmp.n90, label %.loopexit94, label %.split.preheader96

.split.preheader96:                               ; preds = %.split.preheader, %middle.block89
  %.ph97 = phi ptr [ %94, %.split.preheader ], [ %96, %middle.block89 ]
  %.ph98 = phi i32 [ %91, %.split.preheader ], [ %97, %middle.block89 ]
  br label %.split

.split.us:                                        ; preds = %89
  %103 = getelementptr inbounds i8, ptr %94, i64 -2
  %104 = load i16, ptr %103, align 2, !tbaa !60
  %105 = zext i16 %104 to i32
  %106 = tail call i32 @llvm.usub.sat.i32(i32 %105, i32 %90)
  %107 = trunc nuw i32 %106 to i16
  store i16 %107, ptr %103, align 2, !tbaa !60
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split:                                           ; preds = %.split.preheader96, %.split
  %108 = phi ptr [ %110, %.split ], [ %.ph97, %.split.preheader96 ]
  %109 = phi i32 [ %115, %.split ], [ %.ph98, %.split.preheader96 ]
  %110 = getelementptr inbounds i8, ptr %108, i64 -2
  %111 = load i16, ptr %110, align 2, !tbaa !60
  %112 = zext i16 %111 to i32
  %113 = tail call i32 @llvm.usub.sat.i32(i32 %112, i32 %90)
  %114 = trunc nuw i32 %113 to i16
  store i16 %114, ptr %110, align 2, !tbaa !60
  %115 = add i32 %109, -1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %.loopexit94, label %.split, !llvm.loop !133

.loopexit94:                                      ; preds = %.split, %middle.block89
  %.not.not60 = icmp eq i32 %90, 0
  br i1 %.not.not60, label %.split32.us, label %.split32, !prof !45, !nosanitize !44

.split32.us:                                      ; preds = %.loopexit94
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split32:                                         ; preds = %.loopexit94
  %117 = load ptr, ptr %13, align 8, !tbaa !35
  %118 = zext i32 %90 to i64
  %119 = getelementptr inbounds nuw [2 x i8], ptr %117, i64 %118
  %min.iters.check = icmp ult i32 %90, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.split32
  %n.vec = and i64 %118, 4294967288
  %120 = mul nsw i64 %n.vec, -2
  %121 = getelementptr i8, ptr %119, i64 %120
  %.cast = trunc nuw i64 %n.vec to i32
  %122 = sub i32 %90, %.cast
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %90, i64 0
  %123 = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = mul i64 %index, -2
  %next.gep = getelementptr i8, ptr %119, i64 %offset.idx
  %124 = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %wide.load = load <8 x i16>, ptr %124, align 2, !tbaa !60
  %125 = zext <8 x i16> %wide.load to <8 x i32>
  %126 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %125, <8 x i32> %123)
  %reverse71 = trunc nuw <8 x i32> %126 to <8 x i16>
  store <8 x i16> %reverse71, ptr %124, align 2, !tbaa !60
  %index.next = add nuw i64 %index, 8
  %127 = icmp eq i64 %index.next, %n.vec
  br i1 %127, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %118
  br i1 %cmp.n, label %.loopexit93, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.split32, %middle.block
  %.ph = phi ptr [ %119, %.split32 ], [ %121, %middle.block ]
  %.ph95 = phi i32 [ %90, %.split32 ], [ %122, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %128 = phi ptr [ %130, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %129 = phi i32 [ %135, %scalar.ph ], [ %.ph95, %scalar.ph.preheader ]
  %130 = getelementptr inbounds i8, ptr %128, i64 -2
  %131 = load i16, ptr %130, align 2, !tbaa !60
  %132 = zext i16 %131 to i32
  %133 = tail call i32 @llvm.usub.sat.i32(i32 %132, i32 %90)
  %134 = trunc nuw i32 %133 to i16
  store i16 %134, ptr %130, align 2, !tbaa !60
  %135 = add i32 %129, -1
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %.loopexit93, label %scalar.ph, !llvm.loop !135

.loopexit93:                                      ; preds = %scalar.ph, %middle.block
  store i32 1, ptr %14, align 8, !tbaa !61
  %137 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %47, i32 %29), !nosanitize !44
  %138 = extractvalue { i32, i1 } %137, 1, !nosanitize !44
  br i1 %138, label %139, label %140, !prof !45, !nosanitize !44

139:                                              ; preds = %.loopexit93
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

140:                                              ; preds = %.loopexit93
  %141 = extractvalue { i32, i1 } %137, 0, !nosanitize !44
  %142 = load i32, ptr %3, align 4, !tbaa !73
  br label %143

143:                                              ; preds = %140, %57
  %144 = phi i32 [ %142, %140 ], [ %32, %57 ]
  %145 = phi i32 [ %80, %140 ], [ %40, %57 ]
  %146 = phi i32 [ %141, %140 ], [ %47, %57 ]
  %147 = load ptr, ptr %0, align 8, !tbaa !19
  %148 = getelementptr inbounds nuw i8, ptr %147, i64 8
  %149 = load i32, ptr %148, align 8, !tbaa !79
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %269, label %151

151:                                              ; preds = %143
  %152 = load ptr, ptr %7, align 8, !tbaa !34
  %153 = zext i32 %145 to i64
  %154 = getelementptr inbounds nuw i8, ptr %152, i64 %153
  %155 = zext i32 %144 to i64
  %156 = getelementptr inbounds nuw i8, ptr %154, i64 %155
  %157 = tail call i32 @llvm.umin.i32(i32 %149, i32 %146)
  %158 = icmp eq i32 %146, 0
  br i1 %158, label %186, label %159

159:                                              ; preds = %151
  %160 = sub i32 %149, %157
  store i32 %160, ptr %148, align 8, !tbaa !79
  %161 = load ptr, ptr %147, align 8, !tbaa !80
  %162 = zext i32 %157 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %156, ptr align 1 %161, i64 %162, i1 false)
  %163 = getelementptr inbounds nuw i8, ptr %147, i64 56
  %164 = load ptr, ptr %163, align 8, !tbaa !18
  %165 = getelementptr inbounds nuw i8, ptr %164, i64 48
  %166 = load i32, ptr %165, align 8, !tbaa !29
  switch i32 %166, label %175 [
    i32 1, label %167
    i32 2, label %171
  ]

167:                                              ; preds = %159
  %168 = getelementptr inbounds nuw i8, ptr %147, i64 96
  %169 = load i64, ptr %168, align 8, !tbaa !57
  %170 = tail call i64 @adler32(i64 noundef %169, ptr noundef %156, i32 noundef %157) #11
  store i64 %170, ptr %168, align 8, !tbaa !57
  br label %175

171:                                              ; preds = %159
  %172 = getelementptr inbounds nuw i8, ptr %147, i64 96
  %173 = load i64, ptr %172, align 8, !tbaa !57
  %174 = tail call i64 @crc32(i64 noundef %173, ptr noundef %156, i32 noundef %157) #11
  store i64 %174, ptr %172, align 8, !tbaa !57
  br label %175

175:                                              ; preds = %171, %167, %159
  %176 = load ptr, ptr %147, align 8, !tbaa !80
  %177 = getelementptr inbounds nuw i8, ptr %176, i64 %162
  store ptr %177, ptr %147, align 8, !tbaa !80
  %178 = getelementptr inbounds nuw i8, ptr %147, i64 16
  %179 = load i64, ptr %178, align 8, !tbaa !53
  %180 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %179, i64 %162), !nosanitize !44
  %181 = extractvalue { i64, i1 } %180, 1, !nosanitize !44
  br i1 %181, label %182, label %183, !prof !45, !nosanitize !44

182:                                              ; preds = %175
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

183:                                              ; preds = %175
  %184 = extractvalue { i64, i1 } %180, 0, !nosanitize !44
  store i64 %184, ptr %178, align 8, !tbaa !53
  %185 = load i32, ptr %3, align 4, !tbaa !73
  br label %186

186:                                              ; preds = %183, %151
  %187 = phi i32 [ %144, %151 ], [ %185, %183 ]
  %188 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %187, i32 %157), !nosanitize !44
  %189 = extractvalue { i32, i1 } %188, 1, !nosanitize !44
  br i1 %189, label %190, label %191, !prof !45, !nosanitize !44

190:                                              ; preds = %186
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

191:                                              ; preds = %186
  %192 = extractvalue { i32, i1 } %188, 0, !nosanitize !44
  store i32 %192, ptr %3, align 4, !tbaa !73
  %193 = load i32, ptr %10, align 4, !tbaa !74
  %194 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %192, i32 %193), !nosanitize !44
  %195 = extractvalue { i32, i1 } %194, 1, !nosanitize !44
  br i1 %195, label %196, label %197, !prof !45, !nosanitize !44

196:                                              ; preds = %191
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

197:                                              ; preds = %191
  %198 = extractvalue { i32, i1 } %194, 0, !nosanitize !44
  %199 = icmp ugt i32 %198, 2
  br i1 %199, label %200, label %.loopexit

200:                                              ; preds = %197
  %201 = load i32, ptr %6, align 4, !tbaa !71
  %202 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %201, i32 %193), !nosanitize !44
  %203 = extractvalue { i32, i1 } %202, 0, !nosanitize !44
  %204 = extractvalue { i32, i1 } %202, 1, !nosanitize !44
  br i1 %204, label %205, label %206, !prof !45, !nosanitize !44

205:                                              ; preds = %200
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

206:                                              ; preds = %200
  %207 = load ptr, ptr %7, align 8, !tbaa !34
  %208 = zext i32 %203 to i64
  %209 = getelementptr inbounds nuw i8, ptr %207, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !5
  %211 = zext i8 %210 to i32
  store i32 %211, ptr %15, align 8, !tbaa !78
  %212 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %203, i32 1), !nosanitize !44
  %213 = extractvalue { i32, i1 } %212, 1, !nosanitize !44
  br i1 %213, label %214, label %215, !prof !45, !nosanitize !44

214:                                              ; preds = %206
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

215:                                              ; preds = %206
  %216 = extractvalue { i32, i1 } %212, 0, !nosanitize !44
  %217 = load i32, ptr %16, align 8, !tbaa !52
  %218 = shl i32 %211, %217
  %219 = zext i32 %216 to i64
  %220 = getelementptr inbounds nuw i8, ptr %207, i64 %219
  %221 = load i8, ptr %220, align 1, !tbaa !5
  %222 = zext i8 %221 to i32
  %223 = xor i32 %218, %222
  %224 = load i32, ptr %17, align 4, !tbaa !51
  %225 = and i32 %223, %224
  store i32 %225, ptr %15, align 8, !tbaa !78
  br label %226

226:                                              ; preds = %259, %215
  %227 = phi i32 [ %225, %215 ], [ %244, %259 ]
  %228 = phi i32 [ %193, %215 ], [ %255, %259 ]
  %229 = phi i32 [ %203, %215 ], [ %260, %259 ]
  %230 = icmp eq i32 %228, 0
  br i1 %230, label %.loopexit, label %231

231:                                              ; preds = %226
  %232 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %229, i32 3), !nosanitize !44
  %233 = extractvalue { i32, i1 } %232, 1, !nosanitize !44
  br i1 %233, label %234, label %235, !prof !45, !nosanitize !44

234:                                              ; preds = %231
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

235:                                              ; preds = %231
  %236 = shl i32 %227, %217
  %237 = extractvalue { i32, i1 } %232, 0, !nosanitize !44
  %238 = add i32 %237, -1
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds nuw i8, ptr %207, i64 %239
  %241 = load i8, ptr %240, align 1, !tbaa !5
  %242 = zext i8 %241 to i32
  %243 = xor i32 %236, %242
  %244 = and i32 %243, %224
  store i32 %244, ptr %15, align 8, !tbaa !78
  %245 = load ptr, ptr %12, align 8, !tbaa !37
  %246 = zext i32 %244 to i64
  %247 = getelementptr inbounds nuw [2 x i8], ptr %245, i64 %246
  %248 = load i16, ptr %247, align 2, !tbaa !60
  %249 = load ptr, ptr %13, align 8, !tbaa !35
  %250 = load i32, ptr %18, align 8, !tbaa !32
  %251 = and i32 %250, %229
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds nuw [2 x i8], ptr %249, i64 %252
  store i16 %248, ptr %253, align 2, !tbaa !60
  %254 = trunc i32 %229 to i16
  store i16 %254, ptr %247, align 2, !tbaa !60
  %255 = add i32 %228, -1
  store i32 %255, ptr %10, align 4, !tbaa !74
  %256 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %192, i32 %255), !nosanitize !44
  %257 = extractvalue { i32, i1 } %256, 1, !nosanitize !44
  br i1 %257, label %258, label %259, !prof !45, !nosanitize !44

258:                                              ; preds = %235
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

259:                                              ; preds = %235
  %260 = add nuw i32 %229, 1
  %261 = extractvalue { i32, i1 } %256, 0, !nosanitize !44
  %262 = icmp ult i32 %261, 3
  br i1 %262, label %.loopexit, label %226, !llvm.loop !89

.loopexit:                                        ; preds = %259, %226, %197
  %263 = icmp ult i32 %192, 262
  br i1 %263, label %264, label %269

264:                                              ; preds = %.loopexit
  %265 = load ptr, ptr %0, align 8, !tbaa !19
  %266 = getelementptr inbounds nuw i8, ptr %265, i64 8
  %267 = load i32, ptr %266, align 8, !tbaa !79
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %31, !llvm.loop !90

269:                                              ; preds = %264, %.loopexit, %143
  %270 = phi i32 [ %192, %264 ], [ %192, %.loopexit ], [ %144, %143 ]
  %271 = load i64, ptr %19, align 8, !tbaa !38
  %272 = load i64, ptr %5, align 8, !tbaa !59
  %273 = icmp ult i64 %271, %272
  br i1 %273, label %274, label %313

274:                                              ; preds = %269
  %275 = load i32, ptr %6, align 4, !tbaa !71
  %276 = zext i32 %275 to i64
  %277 = zext i32 %270 to i64
  %278 = add nuw nsw i64 %276, %277
  %279 = icmp ult i64 %271, %278
  br i1 %279, label %280, label %290

280:                                              ; preds = %274
  %281 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %272, i64 %278), !nosanitize !44
  %282 = extractvalue { i64, i1 } %281, 1, !nosanitize !44
  br i1 %282, label %283, label %284, !prof !45, !nosanitize !44

283:                                              ; preds = %280
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

284:                                              ; preds = %280
  %285 = extractvalue { i64, i1 } %281, 0, !nosanitize !44
  %286 = tail call i64 @llvm.umin.i64(i64 %285, i64 258)
  %287 = load ptr, ptr %7, align 8, !tbaa !34
  %288 = getelementptr inbounds nuw i8, ptr %287, i64 %278
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %288, i8 0, i64 %286, i1 false)
  %289 = add nuw nsw i64 %286, %278
  br label %310

290:                                              ; preds = %274
  %291 = add nuw nsw i64 %278, 258
  %292 = icmp ult i64 %271, %291
  br i1 %292, label %293, label %313

293:                                              ; preds = %290
  %294 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %272, i64 %271), !nosanitize !44
  %295 = extractvalue { i64, i1 } %294, 1, !nosanitize !44
  br i1 %295, label %296, label %297, !prof !45, !nosanitize !44

296:                                              ; preds = %293
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

297:                                              ; preds = %293
  %298 = sub nuw nsw i64 %291, %271
  %299 = extractvalue { i64, i1 } %294, 0, !nosanitize !44
  %300 = tail call i64 @llvm.umin.i64(i64 %298, i64 %299)
  %301 = load ptr, ptr %7, align 8, !tbaa !34
  %302 = getelementptr inbounds nuw i8, ptr %301, i64 %271
  %303 = and i64 %300, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %302, i8 0, i64 %303, i1 false)
  %304 = load i64, ptr %19, align 8, !tbaa !38
  %305 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %304, i64 %300), !nosanitize !44
  %306 = extractvalue { i64, i1 } %305, 1, !nosanitize !44
  br i1 %306, label %307, label %308, !prof !45, !nosanitize !44

307:                                              ; preds = %297
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

308:                                              ; preds = %297
  %309 = extractvalue { i64, i1 } %305, 0, !nosanitize !44
  br label %310

310:                                              ; preds = %308, %284
  %311 = phi i64 [ %289, %284 ], [ %309, %308 ]
  store i64 %311, ptr %19, align 8, !tbaa !38
  %312 = load i32, ptr %3, align 4, !tbaa !73
  br label %313

313:                                              ; preds = %310, %290, %269
  %314 = phi i32 [ %270, %269 ], [ %270, %290 ], [ %312, %310 ]
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %313
  %317 = icmp eq i32 %1, 0
  br i1 %317, label %.loopexit20, label %433

318:                                              ; preds = %313, %25
  store i32 0, ptr %20, align 8, !tbaa !76
  %319 = load ptr, ptr %7, align 8, !tbaa !34
  %320 = load i32, ptr %6, align 4, !tbaa !71
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds nuw i8, ptr %319, i64 %321
  %323 = load i8, ptr %322, align 1, !tbaa !5
  %324 = load i32, ptr %22, align 4, !tbaa !136
  %325 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %324, i32 1), !nosanitize !44
  %326 = extractvalue { i32, i1 } %325, 1, !nosanitize !44
  br i1 %326, label %327, label %328, !prof !45, !nosanitize !44

327:                                              ; preds = %318
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

328:                                              ; preds = %318
  %329 = extractvalue { i32, i1 } %325, 0, !nosanitize !44
  %330 = load ptr, ptr %21, align 8, !tbaa !43
  store i32 %329, ptr %22, align 4, !tbaa !136
  %331 = zext i32 %324 to i64
  %332 = getelementptr inbounds nuw i8, ptr %330, i64 %331
  store i8 0, ptr %332, align 1, !tbaa !5
  %333 = load i32, ptr %22, align 4, !tbaa !136
  %334 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %333, i32 1), !nosanitize !44
  %335 = extractvalue { i32, i1 } %334, 1, !nosanitize !44
  br i1 %335, label %336, label %337, !prof !45, !nosanitize !44

336:                                              ; preds = %328
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

337:                                              ; preds = %328
  %338 = extractvalue { i32, i1 } %334, 0, !nosanitize !44
  %339 = load ptr, ptr %21, align 8, !tbaa !43
  store i32 %338, ptr %22, align 4, !tbaa !136
  %340 = zext i32 %333 to i64
  %341 = getelementptr inbounds nuw i8, ptr %339, i64 %340
  store i8 0, ptr %341, align 1, !tbaa !5
  %342 = load i32, ptr %22, align 4, !tbaa !136
  %343 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %342, i32 1), !nosanitize !44
  %344 = extractvalue { i32, i1 } %343, 1, !nosanitize !44
  br i1 %344, label %345, label %346, !prof !45, !nosanitize !44

345:                                              ; preds = %337
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

346:                                              ; preds = %337
  %347 = extractvalue { i32, i1 } %343, 0, !nosanitize !44
  %348 = load ptr, ptr %21, align 8, !tbaa !43
  store i32 %347, ptr %22, align 4, !tbaa !136
  %349 = zext i32 %342 to i64
  %350 = getelementptr inbounds nuw i8, ptr %348, i64 %349
  store i8 %323, ptr %350, align 1, !tbaa !5
  %351 = zext i8 %323 to i64
  %352 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %351
  %353 = load i16, ptr %352, align 4, !tbaa !5
  %354 = add i16 %353, 1
  store i16 %354, ptr %352, align 4, !tbaa !5
  %355 = load i32, ptr %22, align 4, !tbaa !136
  %356 = load i32, ptr %24, align 8, !tbaa !46
  %357 = icmp eq i32 %355, %356
  %358 = load i32, ptr %3, align 4, !tbaa !73
  %359 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %358, i32 1), !nosanitize !44
  %360 = extractvalue { i32, i1 } %359, 1, !nosanitize !44
  br i1 %360, label %.loopexit19, label %361, !prof !45, !nosanitize !44

.loopexit19:                                      ; preds = %376, %346, %511, %442
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

361:                                              ; preds = %346
  %362 = extractvalue { i32, i1 } %359, 0, !nosanitize !44
  store i32 %362, ptr %3, align 4, !tbaa !73
  %363 = load i32, ptr %6, align 4, !tbaa !71
  %364 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %363, i32 1), !nosanitize !44
  %365 = extractvalue { i32, i1 } %364, 1, !nosanitize !44
  br i1 %365, label %366, label %367, !prof !45, !nosanitize !44

366:                                              ; preds = %361
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

367:                                              ; preds = %361
  %368 = extractvalue { i32, i1 } %364, 0, !nosanitize !44
  store i32 %368, ptr %6, align 4, !tbaa !71
  br i1 %357, label %369, label %.backedge

369:                                              ; preds = %367
  %370 = load i64, ptr %9, align 8, !tbaa !72
  %371 = icmp sgt i64 %370, -1
  br i1 %371, label %372, label %376

372:                                              ; preds = %369
  %373 = load ptr, ptr %7, align 8, !tbaa !34
  %374 = and i64 %370, 4294967295
  %375 = getelementptr inbounds nuw i8, ptr %373, i64 %374
  br label %376

376:                                              ; preds = %372, %369
  %377 = phi ptr [ %375, %372 ], [ null, %369 ]
  %378 = zext i32 %368 to i64
  %379 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %378, i64 %370), !nosanitize !44
  %380 = extractvalue { i64, i1 } %379, 1, !nosanitize !44
  br i1 %380, label %.loopexit19, label %381, !prof !45, !nosanitize !44

381:                                              ; preds = %376
  %382 = extractvalue { i64, i1 } %379, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %377, i64 noundef %382, i32 noundef 0) #11
  %383 = load i32, ptr %6, align 4, !tbaa !71
  %384 = zext i32 %383 to i64
  store i64 %384, ptr %9, align 8, !tbaa !72
  %385 = load ptr, ptr %0, align 8, !tbaa !19
  %386 = getelementptr inbounds nuw i8, ptr %385, i64 56
  %387 = load ptr, ptr %386, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %387) #11
  %388 = getelementptr inbounds nuw i8, ptr %387, i64 40
  %389 = load i64, ptr %388, align 8, !tbaa !55
  %390 = getelementptr inbounds nuw i8, ptr %385, i64 32
  %391 = load i32, ptr %390, align 8, !tbaa !105
  %392 = zext i32 %391 to i64
  %393 = tail call i64 @llvm.umin.i64(i64 %389, i64 %392)
  %394 = trunc nuw i64 %393 to i32
  %395 = icmp eq i64 %393, 0
  br i1 %395, label %428, label %396

396:                                              ; preds = %381
  %397 = getelementptr inbounds nuw i8, ptr %385, i64 24
  %398 = load ptr, ptr %397, align 8, !tbaa !104
  %399 = getelementptr inbounds nuw i8, ptr %387, i64 32
  %400 = load ptr, ptr %399, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %398, ptr align 1 %400, i64 %393, i1 false)
  %401 = load ptr, ptr %397, align 8, !tbaa !104
  %402 = getelementptr inbounds nuw i8, ptr %401, i64 %393
  store ptr %402, ptr %397, align 8, !tbaa !104
  %403 = load ptr, ptr %399, align 8, !tbaa !56
  %404 = getelementptr inbounds nuw i8, ptr %403, i64 %393
  store ptr %404, ptr %399, align 8, !tbaa !56
  %405 = getelementptr inbounds nuw i8, ptr %385, i64 40
  %406 = load i64, ptr %405, align 8, !tbaa !106
  %407 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %406, i64 %393), !nosanitize !44
  %408 = extractvalue { i64, i1 } %407, 1, !nosanitize !44
  br i1 %408, label %409, label %410, !prof !45, !nosanitize !44

409:                                              ; preds = %396
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

410:                                              ; preds = %396
  %411 = extractvalue { i64, i1 } %407, 0, !nosanitize !44
  store i64 %411, ptr %405, align 8, !tbaa !106
  %412 = load i32, ptr %390, align 8, !tbaa !105
  %413 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %412, i32 %394), !nosanitize !44
  %414 = extractvalue { i32, i1 } %413, 1, !nosanitize !44
  br i1 %414, label %415, label %416, !prof !45, !nosanitize !44

415:                                              ; preds = %410
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

416:                                              ; preds = %410
  %417 = extractvalue { i32, i1 } %413, 0, !nosanitize !44
  store i32 %417, ptr %390, align 8, !tbaa !105
  %418 = load i64, ptr %388, align 8, !tbaa !55
  %419 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %418, i64 %393), !nosanitize !44
  %420 = extractvalue { i64, i1 } %419, 1, !nosanitize !44
  br i1 %420, label %421, label %422, !prof !45, !nosanitize !44

421:                                              ; preds = %416
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

422:                                              ; preds = %416
  %423 = extractvalue { i64, i1 } %419, 0, !nosanitize !44
  store i64 %423, ptr %388, align 8, !tbaa !55
  %424 = icmp eq i64 %423, 0
  br i1 %424, label %425, label %428

425:                                              ; preds = %422
  %426 = getelementptr inbounds nuw i8, ptr %387, i64 16
  %427 = load ptr, ptr %426, align 8, !tbaa !40
  store ptr %427, ptr %399, align 8, !tbaa !56
  br label %428

428:                                              ; preds = %425, %422, %381
  %429 = load ptr, ptr %0, align 8, !tbaa !19
  %430 = getelementptr inbounds nuw i8, ptr %429, i64 32
  %431 = load i32, ptr %430, align 8, !tbaa !105
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %.loopexit20, label %.backedge

.backedge:                                        ; preds = %428, %367
  br label %25

433:                                              ; preds = %316
  store i32 0, ptr %10, align 4, !tbaa !74
  %434 = icmp eq i32 %1, 4
  br i1 %434, label %435, label %501

435:                                              ; preds = %433
  %436 = load i64, ptr %9, align 8, !tbaa !72
  %437 = icmp sgt i64 %436, -1
  br i1 %437, label %438, label %442

438:                                              ; preds = %435
  %439 = load ptr, ptr %7, align 8, !tbaa !34
  %440 = and i64 %436, 4294967295
  %441 = getelementptr inbounds nuw i8, ptr %439, i64 %440
  br label %442

442:                                              ; preds = %438, %435
  %443 = phi ptr [ %441, %438 ], [ null, %435 ]
  %444 = load i32, ptr %6, align 4, !tbaa !71
  %445 = zext i32 %444 to i64
  %446 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %445, i64 %436), !nosanitize !44
  %447 = extractvalue { i64, i1 } %446, 1, !nosanitize !44
  br i1 %447, label %.loopexit19, label %448, !prof !45, !nosanitize !44

448:                                              ; preds = %442
  %449 = extractvalue { i64, i1 } %446, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %443, i64 noundef %449, i32 noundef 1) #11
  %450 = load i32, ptr %6, align 4, !tbaa !71
  %451 = zext i32 %450 to i64
  store i64 %451, ptr %9, align 8, !tbaa !72
  %452 = load ptr, ptr %0, align 8, !tbaa !19
  %453 = getelementptr inbounds nuw i8, ptr %452, i64 56
  %454 = load ptr, ptr %453, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %454) #11
  %455 = getelementptr inbounds nuw i8, ptr %454, i64 40
  %456 = load i64, ptr %455, align 8, !tbaa !55
  %457 = getelementptr inbounds nuw i8, ptr %452, i64 32
  %458 = load i32, ptr %457, align 8, !tbaa !105
  %459 = zext i32 %458 to i64
  %460 = tail call i64 @llvm.umin.i64(i64 %456, i64 %459)
  %461 = trunc nuw i64 %460 to i32
  %462 = icmp eq i64 %460, 0
  br i1 %462, label %495, label %463

463:                                              ; preds = %448
  %464 = getelementptr inbounds nuw i8, ptr %452, i64 24
  %465 = load ptr, ptr %464, align 8, !tbaa !104
  %466 = getelementptr inbounds nuw i8, ptr %454, i64 32
  %467 = load ptr, ptr %466, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %465, ptr align 1 %467, i64 %460, i1 false)
  %468 = load ptr, ptr %464, align 8, !tbaa !104
  %469 = getelementptr inbounds nuw i8, ptr %468, i64 %460
  store ptr %469, ptr %464, align 8, !tbaa !104
  %470 = load ptr, ptr %466, align 8, !tbaa !56
  %471 = getelementptr inbounds nuw i8, ptr %470, i64 %460
  store ptr %471, ptr %466, align 8, !tbaa !56
  %472 = getelementptr inbounds nuw i8, ptr %452, i64 40
  %473 = load i64, ptr %472, align 8, !tbaa !106
  %474 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %473, i64 %460), !nosanitize !44
  %475 = extractvalue { i64, i1 } %474, 1, !nosanitize !44
  br i1 %475, label %476, label %477, !prof !45, !nosanitize !44

476:                                              ; preds = %463
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

477:                                              ; preds = %463
  %478 = extractvalue { i64, i1 } %474, 0, !nosanitize !44
  store i64 %478, ptr %472, align 8, !tbaa !106
  %479 = load i32, ptr %457, align 8, !tbaa !105
  %480 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %479, i32 %461), !nosanitize !44
  %481 = extractvalue { i32, i1 } %480, 1, !nosanitize !44
  br i1 %481, label %482, label %483, !prof !45, !nosanitize !44

482:                                              ; preds = %477
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

483:                                              ; preds = %477
  %484 = extractvalue { i32, i1 } %480, 0, !nosanitize !44
  store i32 %484, ptr %457, align 8, !tbaa !105
  %485 = load i64, ptr %455, align 8, !tbaa !55
  %486 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %485, i64 %460), !nosanitize !44
  %487 = extractvalue { i64, i1 } %486, 1, !nosanitize !44
  br i1 %487, label %488, label %489, !prof !45, !nosanitize !44

488:                                              ; preds = %483
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

489:                                              ; preds = %483
  %490 = extractvalue { i64, i1 } %486, 0, !nosanitize !44
  store i64 %490, ptr %455, align 8, !tbaa !55
  %491 = icmp eq i64 %490, 0
  br i1 %491, label %492, label %495

492:                                              ; preds = %489
  %493 = getelementptr inbounds nuw i8, ptr %454, i64 16
  %494 = load ptr, ptr %493, align 8, !tbaa !40
  store ptr %494, ptr %466, align 8, !tbaa !56
  br label %495

495:                                              ; preds = %492, %489, %448
  %496 = load ptr, ptr %0, align 8, !tbaa !19
  %497 = getelementptr inbounds nuw i8, ptr %496, i64 32
  %498 = load i32, ptr %497, align 8, !tbaa !105
  %499 = icmp eq i32 %498, 0
  %500 = select i1 %499, i32 2, i32 3
  br label %.loopexit20

501:                                              ; preds = %433
  %502 = load i32, ptr %22, align 4, !tbaa !136
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %569, label %504

504:                                              ; preds = %501
  %505 = load i64, ptr %9, align 8, !tbaa !72
  %506 = icmp sgt i64 %505, -1
  br i1 %506, label %507, label %511

507:                                              ; preds = %504
  %508 = load ptr, ptr %7, align 8, !tbaa !34
  %509 = and i64 %505, 4294967295
  %510 = getelementptr inbounds nuw i8, ptr %508, i64 %509
  br label %511

511:                                              ; preds = %507, %504
  %512 = phi ptr [ %510, %507 ], [ null, %504 ]
  %513 = load i32, ptr %6, align 4, !tbaa !71
  %514 = zext i32 %513 to i64
  %515 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %514, i64 %505), !nosanitize !44
  %516 = extractvalue { i64, i1 } %515, 1, !nosanitize !44
  br i1 %516, label %.loopexit19, label %517, !prof !45, !nosanitize !44

517:                                              ; preds = %511
  %518 = extractvalue { i64, i1 } %515, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %512, i64 noundef %518, i32 noundef 0) #11
  %519 = load i32, ptr %6, align 4, !tbaa !71
  %520 = zext i32 %519 to i64
  store i64 %520, ptr %9, align 8, !tbaa !72
  %521 = load ptr, ptr %0, align 8, !tbaa !19
  %522 = getelementptr inbounds nuw i8, ptr %521, i64 56
  %523 = load ptr, ptr %522, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %523) #11
  %524 = getelementptr inbounds nuw i8, ptr %523, i64 40
  %525 = load i64, ptr %524, align 8, !tbaa !55
  %526 = getelementptr inbounds nuw i8, ptr %521, i64 32
  %527 = load i32, ptr %526, align 8, !tbaa !105
  %528 = zext i32 %527 to i64
  %529 = tail call i64 @llvm.umin.i64(i64 %525, i64 %528)
  %530 = trunc nuw i64 %529 to i32
  %531 = icmp eq i64 %529, 0
  br i1 %531, label %564, label %532

532:                                              ; preds = %517
  %533 = getelementptr inbounds nuw i8, ptr %521, i64 24
  %534 = load ptr, ptr %533, align 8, !tbaa !104
  %535 = getelementptr inbounds nuw i8, ptr %523, i64 32
  %536 = load ptr, ptr %535, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %534, ptr align 1 %536, i64 %529, i1 false)
  %537 = load ptr, ptr %533, align 8, !tbaa !104
  %538 = getelementptr inbounds nuw i8, ptr %537, i64 %529
  store ptr %538, ptr %533, align 8, !tbaa !104
  %539 = load ptr, ptr %535, align 8, !tbaa !56
  %540 = getelementptr inbounds nuw i8, ptr %539, i64 %529
  store ptr %540, ptr %535, align 8, !tbaa !56
  %541 = getelementptr inbounds nuw i8, ptr %521, i64 40
  %542 = load i64, ptr %541, align 8, !tbaa !106
  %543 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %542, i64 %529), !nosanitize !44
  %544 = extractvalue { i64, i1 } %543, 1, !nosanitize !44
  br i1 %544, label %545, label %546, !prof !45, !nosanitize !44

545:                                              ; preds = %532
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

546:                                              ; preds = %532
  %547 = extractvalue { i64, i1 } %543, 0, !nosanitize !44
  store i64 %547, ptr %541, align 8, !tbaa !106
  %548 = load i32, ptr %526, align 8, !tbaa !105
  %549 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %548, i32 %530), !nosanitize !44
  %550 = extractvalue { i32, i1 } %549, 1, !nosanitize !44
  br i1 %550, label %551, label %552, !prof !45, !nosanitize !44

551:                                              ; preds = %546
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

552:                                              ; preds = %546
  %553 = extractvalue { i32, i1 } %549, 0, !nosanitize !44
  store i32 %553, ptr %526, align 8, !tbaa !105
  %554 = load i64, ptr %524, align 8, !tbaa !55
  %555 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %554, i64 %529), !nosanitize !44
  %556 = extractvalue { i64, i1 } %555, 1, !nosanitize !44
  br i1 %556, label %557, label %558, !prof !45, !nosanitize !44

557:                                              ; preds = %552
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

558:                                              ; preds = %552
  %559 = extractvalue { i64, i1 } %555, 0, !nosanitize !44
  store i64 %559, ptr %524, align 8, !tbaa !55
  %560 = icmp eq i64 %559, 0
  br i1 %560, label %561, label %564

561:                                              ; preds = %558
  %562 = getelementptr inbounds nuw i8, ptr %523, i64 16
  %563 = load ptr, ptr %562, align 8, !tbaa !40
  store ptr %563, ptr %535, align 8, !tbaa !56
  br label %564

564:                                              ; preds = %561, %558, %517
  %565 = load ptr, ptr %0, align 8, !tbaa !19
  %566 = getelementptr inbounds nuw i8, ptr %565, i64 32
  %567 = load i32, ptr %566, align 8, !tbaa !105
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %.loopexit20, label %569

569:                                              ; preds = %564, %501
  br label %.loopexit20

.loopexit20:                                      ; preds = %428, %569, %564, %495, %316
  %570 = phi i32 [ 1, %569 ], [ 0, %316 ], [ %500, %495 ], [ 0, %564 ], [ 0, %428 ]
  ret i32 %570
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @deflate_rle(ptr noundef nonnull %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #0 {
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
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  br label %27

27:                                               ; preds = %.backedge, %2
  %28 = load i32, ptr %3, align 4, !tbaa !73
  %29 = icmp ult i32 %28, 259
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  store i32 0, ptr %4, align 8, !tbaa !76
  %31 = load i32, ptr %7, align 4, !tbaa !71
  %.pre.pre77.pre = load ptr, ptr %8, align 8, !tbaa !34
  br label %326

32:                                               ; preds = %27
  %33 = load i32, ptr %5, align 8, !tbaa !31
  %34 = zext i32 %33 to i64
  br label %35

35:                                               ; preds = %268, %32
  %36 = phi i32 [ %196, %268 ], [ %28, %32 ]
  %37 = load i64, ptr %6, align 8, !tbaa !59
  %38 = zext nneg i32 %36 to i64
  %39 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %37, i64 %38), !nosanitize !44
  %40 = extractvalue { i64, i1 } %39, 1, !nosanitize !44
  br i1 %40, label %41, label %42, !prof !45, !nosanitize !44

41:                                               ; preds = %35
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

42:                                               ; preds = %35
  %43 = extractvalue { i64, i1 } %39, 0, !nosanitize !44
  %44 = load i32, ptr %7, align 4, !tbaa !71
  %45 = zext i32 %44 to i64
  %46 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %43, i64 %45), !nosanitize !44
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !44
  br i1 %47, label %48, label %49, !prof !45, !nosanitize !44

48:                                               ; preds = %42
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

49:                                               ; preds = %42
  %50 = extractvalue { i64, i1 } %46, 0, !nosanitize !44
  %51 = trunc i64 %50 to i32
  %52 = load i32, ptr %5, align 8, !tbaa !31
  %53 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %52, i32 262), !nosanitize !44
  %54 = extractvalue { i32, i1 } %53, 1, !nosanitize !44
  br i1 %54, label %55, label %56, !prof !45, !nosanitize !44

55:                                               ; preds = %49
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

56:                                               ; preds = %49
  %57 = extractvalue { i32, i1 } %53, 0, !nosanitize !44
  %58 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %33, i32 %57), !nosanitize !44
  %59 = extractvalue { i32, i1 } %58, 1, !nosanitize !44
  br i1 %59, label %60, label %61, !prof !45, !nosanitize !44

60:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

61:                                               ; preds = %56
  %62 = extractvalue { i32, i1 } %58, 0, !nosanitize !44
  %63 = icmp ult i32 %44, %62
  br i1 %63, label %147, label %64

64:                                               ; preds = %61
  %65 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %33, i32 %51), !nosanitize !44
  %66 = extractvalue { i32, i1 } %65, 1, !nosanitize !44
  br i1 %66, label %67, label %68, !prof !45, !nosanitize !44

67:                                               ; preds = %64
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

68:                                               ; preds = %64
  %69 = extractvalue { i32, i1 } %65, 0, !nosanitize !44
  %70 = load ptr, ptr %8, align 8, !tbaa !34
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 %34
  %72 = zext i32 %69 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %70, ptr align 1 %71, i64 %72, i1 false)
  %73 = load i32, ptr %9, align 8, !tbaa !81
  %74 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %73, i32 %33), !nosanitize !44
  %75 = extractvalue { i32, i1 } %74, 1, !nosanitize !44
  br i1 %75, label %76, label %77, !prof !45, !nosanitize !44

76:                                               ; preds = %68
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

77:                                               ; preds = %68
  %78 = extractvalue { i32, i1 } %74, 0, !nosanitize !44
  store i32 %78, ptr %9, align 8, !tbaa !81
  %79 = load i32, ptr %7, align 4, !tbaa !71
  %80 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %79, i32 %33), !nosanitize !44
  %81 = extractvalue { i32, i1 } %80, 1, !nosanitize !44
  br i1 %81, label %82, label %83, !prof !45, !nosanitize !44

82:                                               ; preds = %83, %77
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

83:                                               ; preds = %77
  %84 = extractvalue { i32, i1 } %80, 0, !nosanitize !44
  store i32 %84, ptr %7, align 4, !tbaa !71
  %85 = load i64, ptr %10, align 8, !tbaa !72
  %86 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %85, i64 %34), !nosanitize !44
  %87 = extractvalue { i64, i1 } %86, 1, !nosanitize !44
  br i1 %87, label %82, label %88, !prof !45, !nosanitize !44

88:                                               ; preds = %83
  %89 = extractvalue { i64, i1 } %86, 0, !nosanitize !44
  store i64 %89, ptr %10, align 8, !tbaa !72
  %90 = load i32, ptr %11, align 4, !tbaa !74
  %91 = icmp ugt i32 %90, %84
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 %84, ptr %11, align 4, !tbaa !74
  br label %93

93:                                               ; preds = %92, %88
  %94 = load i32, ptr %5, align 8, !tbaa !31
  %95 = load i32, ptr %12, align 4, !tbaa !36
  %96 = load ptr, ptr %13, align 8, !tbaa !37
  %97 = zext i32 %95 to i64
  %98 = getelementptr inbounds nuw [2 x i8], ptr %96, i64 %97
  %.not.not = icmp eq i32 %95, 0
  br i1 %.not.not, label %.split.us, label %.split.preheader, !prof !45, !nosanitize !44

.split.preheader:                                 ; preds = %93
  %min.iters.check151 = icmp ult i32 %95, 8
  br i1 %min.iters.check151, label %.split.preheader173, label %vector.ph152

vector.ph152:                                     ; preds = %.split.preheader
  %n.vec154 = and i64 %97, 4294967288
  %99 = mul nsw i64 %n.vec154, -2
  %100 = getelementptr i8, ptr %98, i64 %99
  %.cast155 = trunc nuw i64 %n.vec154 to i32
  %101 = sub i32 %95, %.cast155
  %broadcast.splatinsert156 = insertelement <8 x i32> poison, i32 %94, i64 0
  %102 = shufflevector <8 x i32> %broadcast.splatinsert156, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph152
  %index159 = phi i64 [ 0, %vector.ph152 ], [ %index.next165, %vector.body158 ]
  %offset.idx160 = mul i64 %index159, -2
  %next.gep161 = getelementptr i8, ptr %98, i64 %offset.idx160
  %103 = getelementptr inbounds i8, ptr %next.gep161, i64 -16
  %wide.load162 = load <8 x i16>, ptr %103, align 2, !tbaa !60
  %104 = zext <8 x i16> %wide.load162 to <8 x i32>
  %105 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %104, <8 x i32> %102)
  %reverse164 = trunc nuw <8 x i32> %105 to <8 x i16>
  store <8 x i16> %reverse164, ptr %103, align 2, !tbaa !60
  %index.next165 = add nuw i64 %index159, 8
  %106 = icmp eq i64 %index.next165, %n.vec154
  br i1 %106, label %middle.block166, label %vector.body158, !llvm.loop !137

middle.block166:                                  ; preds = %vector.body158
  %cmp.n167 = icmp eq i64 %n.vec154, %97
  br i1 %cmp.n167, label %.loopexit171, label %.split.preheader173

.split.preheader173:                              ; preds = %.split.preheader, %middle.block166
  %.ph174 = phi ptr [ %98, %.split.preheader ], [ %100, %middle.block166 ]
  %.ph175 = phi i32 [ %95, %.split.preheader ], [ %101, %middle.block166 ]
  br label %.split

.split.us:                                        ; preds = %93
  %107 = getelementptr inbounds i8, ptr %98, i64 -2
  %108 = load i16, ptr %107, align 2, !tbaa !60
  %109 = zext i16 %108 to i32
  %110 = tail call i32 @llvm.usub.sat.i32(i32 %109, i32 %94)
  %111 = trunc nuw i32 %110 to i16
  store i16 %111, ptr %107, align 2, !tbaa !60
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split:                                           ; preds = %.split.preheader173, %.split
  %112 = phi ptr [ %114, %.split ], [ %.ph174, %.split.preheader173 ]
  %113 = phi i32 [ %119, %.split ], [ %.ph175, %.split.preheader173 ]
  %114 = getelementptr inbounds i8, ptr %112, i64 -2
  %115 = load i16, ptr %114, align 2, !tbaa !60
  %116 = zext i16 %115 to i32
  %117 = tail call i32 @llvm.usub.sat.i32(i32 %116, i32 %94)
  %118 = trunc nuw i32 %117 to i16
  store i16 %118, ptr %114, align 2, !tbaa !60
  %119 = add i32 %113, -1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %.loopexit171, label %.split, !llvm.loop !138

.loopexit171:                                     ; preds = %.split, %middle.block166
  %.not.not106 = icmp eq i32 %94, 0
  br i1 %.not.not106, label %.split68.us, label %.split68, !prof !45, !nosanitize !44

.split68.us:                                      ; preds = %.loopexit171
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split68:                                         ; preds = %.loopexit171
  %121 = load ptr, ptr %14, align 8, !tbaa !35
  %122 = zext i32 %94 to i64
  %123 = getelementptr inbounds nuw [2 x i8], ptr %121, i64 %122
  %min.iters.check = icmp ult i32 %94, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.split68
  %n.vec = and i64 %122, 4294967288
  %124 = mul nsw i64 %n.vec, -2
  %125 = getelementptr i8, ptr %123, i64 %124
  %.cast = trunc nuw i64 %n.vec to i32
  %126 = sub i32 %94, %.cast
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %94, i64 0
  %127 = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = mul i64 %index, -2
  %next.gep = getelementptr i8, ptr %123, i64 %offset.idx
  %128 = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %wide.load = load <8 x i16>, ptr %128, align 2, !tbaa !60
  %129 = zext <8 x i16> %wide.load to <8 x i32>
  %130 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %129, <8 x i32> %127)
  %reverse148 = trunc nuw <8 x i32> %130 to <8 x i16>
  store <8 x i16> %reverse148, ptr %128, align 2, !tbaa !60
  %index.next = add nuw i64 %index, 8
  %131 = icmp eq i64 %index.next, %n.vec
  br i1 %131, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %122
  br i1 %cmp.n, label %.loopexit170, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.split68, %middle.block
  %.ph = phi ptr [ %123, %.split68 ], [ %125, %middle.block ]
  %.ph172 = phi i32 [ %94, %.split68 ], [ %126, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %132 = phi ptr [ %134, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %133 = phi i32 [ %139, %scalar.ph ], [ %.ph172, %scalar.ph.preheader ]
  %134 = getelementptr inbounds i8, ptr %132, i64 -2
  %135 = load i16, ptr %134, align 2, !tbaa !60
  %136 = zext i16 %135 to i32
  %137 = tail call i32 @llvm.usub.sat.i32(i32 %136, i32 %94)
  %138 = trunc nuw i32 %137 to i16
  store i16 %138, ptr %134, align 2, !tbaa !60
  %139 = add i32 %133, -1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %.loopexit170, label %scalar.ph, !llvm.loop !140

.loopexit170:                                     ; preds = %scalar.ph, %middle.block
  store i32 1, ptr %15, align 8, !tbaa !61
  %141 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %51, i32 %33), !nosanitize !44
  %142 = extractvalue { i32, i1 } %141, 1, !nosanitize !44
  br i1 %142, label %143, label %144, !prof !45, !nosanitize !44

143:                                              ; preds = %.loopexit170
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

144:                                              ; preds = %.loopexit170
  %145 = extractvalue { i32, i1 } %141, 0, !nosanitize !44
  %146 = load i32, ptr %3, align 4, !tbaa !73
  br label %147

147:                                              ; preds = %144, %61
  %148 = phi i32 [ %146, %144 ], [ %36, %61 ]
  %149 = phi i32 [ %84, %144 ], [ %44, %61 ]
  %150 = phi i32 [ %145, %144 ], [ %51, %61 ]
  %151 = load ptr, ptr %0, align 8, !tbaa !19
  %152 = getelementptr inbounds nuw i8, ptr %151, i64 8
  %153 = load i32, ptr %152, align 8, !tbaa !79
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %273, label %155

155:                                              ; preds = %147
  %156 = load ptr, ptr %8, align 8, !tbaa !34
  %157 = zext i32 %149 to i64
  %158 = getelementptr inbounds nuw i8, ptr %156, i64 %157
  %159 = zext i32 %148 to i64
  %160 = getelementptr inbounds nuw i8, ptr %158, i64 %159
  %161 = tail call i32 @llvm.umin.i32(i32 %153, i32 %150)
  %162 = icmp eq i32 %150, 0
  br i1 %162, label %190, label %163

163:                                              ; preds = %155
  %164 = sub i32 %153, %161
  store i32 %164, ptr %152, align 8, !tbaa !79
  %165 = load ptr, ptr %151, align 8, !tbaa !80
  %166 = zext i32 %161 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %160, ptr align 1 %165, i64 %166, i1 false)
  %167 = getelementptr inbounds nuw i8, ptr %151, i64 56
  %168 = load ptr, ptr %167, align 8, !tbaa !18
  %169 = getelementptr inbounds nuw i8, ptr %168, i64 48
  %170 = load i32, ptr %169, align 8, !tbaa !29
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
  %184 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %183, i64 %166), !nosanitize !44
  %185 = extractvalue { i64, i1 } %184, 1, !nosanitize !44
  br i1 %185, label %186, label %187, !prof !45, !nosanitize !44

186:                                              ; preds = %179
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

187:                                              ; preds = %179
  %188 = extractvalue { i64, i1 } %184, 0, !nosanitize !44
  store i64 %188, ptr %182, align 8, !tbaa !53
  %189 = load i32, ptr %3, align 4, !tbaa !73
  br label %190

190:                                              ; preds = %187, %155
  %191 = phi i32 [ %148, %155 ], [ %189, %187 ]
  %192 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %191, i32 %161), !nosanitize !44
  %193 = extractvalue { i32, i1 } %192, 1, !nosanitize !44
  br i1 %193, label %194, label %195, !prof !45, !nosanitize !44

194:                                              ; preds = %190
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

195:                                              ; preds = %190
  %196 = extractvalue { i32, i1 } %192, 0, !nosanitize !44
  store i32 %196, ptr %3, align 4, !tbaa !73
  %197 = load i32, ptr %11, align 4, !tbaa !74
  %198 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %196, i32 %197), !nosanitize !44
  %199 = extractvalue { i32, i1 } %198, 1, !nosanitize !44
  br i1 %199, label %200, label %201, !prof !45, !nosanitize !44

200:                                              ; preds = %195
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

201:                                              ; preds = %195
  %202 = extractvalue { i32, i1 } %198, 0, !nosanitize !44
  %203 = icmp ugt i32 %202, 2
  br i1 %203, label %204, label %.loopexit

204:                                              ; preds = %201
  %205 = load i32, ptr %7, align 4, !tbaa !71
  %206 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %205, i32 %197), !nosanitize !44
  %207 = extractvalue { i32, i1 } %206, 0, !nosanitize !44
  %208 = extractvalue { i32, i1 } %206, 1, !nosanitize !44
  br i1 %208, label %209, label %210, !prof !45, !nosanitize !44

209:                                              ; preds = %204
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

210:                                              ; preds = %204
  %211 = load ptr, ptr %8, align 8, !tbaa !34
  %212 = zext i32 %207 to i64
  %213 = getelementptr inbounds nuw i8, ptr %211, i64 %212
  %214 = load i8, ptr %213, align 1, !tbaa !5
  %215 = zext i8 %214 to i32
  store i32 %215, ptr %16, align 8, !tbaa !78
  %216 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %207, i32 1), !nosanitize !44
  %217 = extractvalue { i32, i1 } %216, 1, !nosanitize !44
  br i1 %217, label %218, label %219, !prof !45, !nosanitize !44

218:                                              ; preds = %210
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

219:                                              ; preds = %210
  %220 = extractvalue { i32, i1 } %216, 0, !nosanitize !44
  %221 = load i32, ptr %17, align 8, !tbaa !52
  %222 = shl i32 %215, %221
  %223 = zext i32 %220 to i64
  %224 = getelementptr inbounds nuw i8, ptr %211, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !5
  %226 = zext i8 %225 to i32
  %227 = xor i32 %222, %226
  %228 = load i32, ptr %18, align 4, !tbaa !51
  %229 = and i32 %227, %228
  store i32 %229, ptr %16, align 8, !tbaa !78
  br label %230

230:                                              ; preds = %263, %219
  %231 = phi i32 [ %229, %219 ], [ %248, %263 ]
  %232 = phi i32 [ %197, %219 ], [ %259, %263 ]
  %233 = phi i32 [ %207, %219 ], [ %264, %263 ]
  %234 = icmp eq i32 %232, 0
  br i1 %234, label %.loopexit, label %235

235:                                              ; preds = %230
  %236 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %233, i32 3), !nosanitize !44
  %237 = extractvalue { i32, i1 } %236, 1, !nosanitize !44
  br i1 %237, label %238, label %239, !prof !45, !nosanitize !44

238:                                              ; preds = %235
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

239:                                              ; preds = %235
  %240 = shl i32 %231, %221
  %241 = extractvalue { i32, i1 } %236, 0, !nosanitize !44
  %242 = add i32 %241, -1
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds nuw i8, ptr %211, i64 %243
  %245 = load i8, ptr %244, align 1, !tbaa !5
  %246 = zext i8 %245 to i32
  %247 = xor i32 %240, %246
  %248 = and i32 %247, %228
  store i32 %248, ptr %16, align 8, !tbaa !78
  %249 = load ptr, ptr %13, align 8, !tbaa !37
  %250 = zext i32 %248 to i64
  %251 = getelementptr inbounds nuw [2 x i8], ptr %249, i64 %250
  %252 = load i16, ptr %251, align 2, !tbaa !60
  %253 = load ptr, ptr %14, align 8, !tbaa !35
  %254 = load i32, ptr %19, align 8, !tbaa !32
  %255 = and i32 %254, %233
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds nuw [2 x i8], ptr %253, i64 %256
  store i16 %252, ptr %257, align 2, !tbaa !60
  %258 = trunc i32 %233 to i16
  store i16 %258, ptr %251, align 2, !tbaa !60
  %259 = add i32 %232, -1
  store i32 %259, ptr %11, align 4, !tbaa !74
  %260 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %196, i32 %259), !nosanitize !44
  %261 = extractvalue { i32, i1 } %260, 1, !nosanitize !44
  br i1 %261, label %262, label %263, !prof !45, !nosanitize !44

262:                                              ; preds = %239
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

263:                                              ; preds = %239
  %264 = add nuw i32 %233, 1
  %265 = extractvalue { i32, i1 } %260, 0, !nosanitize !44
  %266 = icmp ult i32 %265, 3
  br i1 %266, label %.loopexit, label %230, !llvm.loop !89

.loopexit:                                        ; preds = %263, %230, %201
  %267 = icmp ult i32 %196, 262
  br i1 %267, label %268, label %273

268:                                              ; preds = %.loopexit
  %269 = load ptr, ptr %0, align 8, !tbaa !19
  %270 = getelementptr inbounds nuw i8, ptr %269, i64 8
  %271 = load i32, ptr %270, align 8, !tbaa !79
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %35, !llvm.loop !90

273:                                              ; preds = %268, %.loopexit, %147
  %274 = phi i32 [ %196, %268 ], [ %196, %.loopexit ], [ %148, %147 ]
  %275 = load i64, ptr %20, align 8, !tbaa !38
  %276 = load i64, ptr %6, align 8, !tbaa !59
  %277 = icmp ult i64 %275, %276
  br i1 %277, label %278, label %317

278:                                              ; preds = %273
  %279 = load i32, ptr %7, align 4, !tbaa !71
  %280 = zext i32 %279 to i64
  %281 = zext i32 %274 to i64
  %282 = add nuw nsw i64 %280, %281
  %283 = icmp ult i64 %275, %282
  br i1 %283, label %284, label %294

284:                                              ; preds = %278
  %285 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %276, i64 %282), !nosanitize !44
  %286 = extractvalue { i64, i1 } %285, 1, !nosanitize !44
  br i1 %286, label %287, label %288, !prof !45, !nosanitize !44

287:                                              ; preds = %284
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

288:                                              ; preds = %284
  %289 = extractvalue { i64, i1 } %285, 0, !nosanitize !44
  %290 = tail call i64 @llvm.umin.i64(i64 %289, i64 258)
  %291 = load ptr, ptr %8, align 8, !tbaa !34
  %292 = getelementptr inbounds nuw i8, ptr %291, i64 %282
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %292, i8 0, i64 %290, i1 false)
  %293 = add nuw nsw i64 %290, %282
  br label %314

294:                                              ; preds = %278
  %295 = add nuw nsw i64 %282, 258
  %296 = icmp ult i64 %275, %295
  br i1 %296, label %297, label %317

297:                                              ; preds = %294
  %298 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %276, i64 %275), !nosanitize !44
  %299 = extractvalue { i64, i1 } %298, 1, !nosanitize !44
  br i1 %299, label %300, label %301, !prof !45, !nosanitize !44

300:                                              ; preds = %297
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

301:                                              ; preds = %297
  %302 = sub nuw nsw i64 %295, %275
  %303 = extractvalue { i64, i1 } %298, 0, !nosanitize !44
  %304 = tail call i64 @llvm.umin.i64(i64 %302, i64 %303)
  %305 = load ptr, ptr %8, align 8, !tbaa !34
  %306 = getelementptr inbounds nuw i8, ptr %305, i64 %275
  %307 = and i64 %304, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %306, i8 0, i64 %307, i1 false)
  %308 = load i64, ptr %20, align 8, !tbaa !38
  %309 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %308, i64 %304), !nosanitize !44
  %310 = extractvalue { i64, i1 } %309, 1, !nosanitize !44
  br i1 %310, label %311, label %312, !prof !45, !nosanitize !44

311:                                              ; preds = %301
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

312:                                              ; preds = %301
  %313 = extractvalue { i64, i1 } %309, 0, !nosanitize !44
  br label %314

314:                                              ; preds = %312, %288
  %315 = phi i64 [ %293, %288 ], [ %313, %312 ]
  store i64 %315, ptr %20, align 8, !tbaa !38
  %316 = load i32, ptr %3, align 4, !tbaa !73
  br label %317

317:                                              ; preds = %314, %294, %273
  %318 = phi i32 [ %274, %273 ], [ %274, %294 ], [ %316, %314 ]
  %319 = icmp ult i32 %318, 259
  %320 = and i1 %21, %319
  br i1 %320, label %.loopexit25, label %321

321:                                              ; preds = %317
  %322 = icmp eq i32 %318, 0
  br i1 %322, label %579, label %323

323:                                              ; preds = %321
  store i32 0, ptr %4, align 8, !tbaa !76
  %324 = icmp ugt i32 %318, 2
  %325 = load i32, ptr %7, align 4, !tbaa !71
  %.pre.pre77.pre79 = load ptr, ptr %8, align 8, !tbaa !34
  br i1 %324, label %326, label %._crit_edge

326:                                              ; preds = %323, %30
  %.pre.pre77 = phi ptr [ %.pre.pre77.pre, %30 ], [ %.pre.pre77.pre79, %323 ]
  %327 = phi i32 [ %31, %30 ], [ %325, %323 ]
  %328 = phi i32 [ %28, %30 ], [ %318, %323 ]
  %329 = icmp eq i32 %327, 0
  br i1 %329, label %._crit_edge, label %330

330:                                              ; preds = %326
  %331 = zext i32 %327 to i64
  %332 = getelementptr inbounds nuw i8, ptr %.pre.pre77, i64 %331
  %333 = getelementptr inbounds i8, ptr %332, i64 -1
  %334 = load i8, ptr %333, align 1, !tbaa !5
  %335 = load i8, ptr %332, align 1, !tbaa !5
  %336 = icmp eq i8 %334, %335
  br i1 %336, label %337, label %._crit_edge

337:                                              ; preds = %330
  %338 = getelementptr inbounds nuw i8, ptr %332, i64 1
  %339 = load i8, ptr %338, align 1, !tbaa !5
  %340 = icmp eq i8 %334, %339
  br i1 %340, label %341, label %._crit_edge

341:                                              ; preds = %337
  %342 = getelementptr inbounds nuw i8, ptr %332, i64 2
  %343 = load i8, ptr %342, align 1, !tbaa !5
  %344 = icmp eq i8 %334, %343
  br i1 %344, label %345, label %._crit_edge

345:                                              ; preds = %341
  %346 = getelementptr inbounds nuw i8, ptr %332, i64 258
  br label %347

347:                                              ; preds = %377, %345
  %348 = phi i64 [ 2, %345 ], [ %378, %377 ]
  %349 = getelementptr inbounds nuw i8, ptr %332, i64 %348
  %350 = getelementptr inbounds nuw i8, ptr %349, i64 1
  %351 = load i8, ptr %350, align 1, !tbaa !5
  %352 = icmp eq i8 %334, %351
  br i1 %352, label %353, label %.split.loop.exit.split.loop.exit

353:                                              ; preds = %347
  %354 = getelementptr inbounds nuw i8, ptr %349, i64 2
  %355 = load i8, ptr %354, align 1, !tbaa !5
  %356 = icmp eq i8 %334, %355
  br i1 %356, label %357, label %.split.loop.exit.split.loop.exit112

357:                                              ; preds = %353
  %358 = getelementptr inbounds nuw i8, ptr %349, i64 3
  %359 = load i8, ptr %358, align 1, !tbaa !5
  %360 = icmp eq i8 %334, %359
  br i1 %360, label %361, label %.split.loop.exit.split.loop.exit114

361:                                              ; preds = %357
  %362 = getelementptr inbounds nuw i8, ptr %349, i64 4
  %363 = load i8, ptr %362, align 1, !tbaa !5
  %364 = icmp eq i8 %334, %363
  br i1 %364, label %365, label %.split.loop.exit.split.loop.exit116

365:                                              ; preds = %361
  %366 = getelementptr inbounds nuw i8, ptr %349, i64 5
  %367 = load i8, ptr %366, align 1, !tbaa !5
  %368 = icmp eq i8 %334, %367
  br i1 %368, label %369, label %.split.loop.exit.split.loop.exit118

369:                                              ; preds = %365
  %370 = getelementptr inbounds nuw i8, ptr %349, i64 6
  %371 = load i8, ptr %370, align 1, !tbaa !5
  %372 = icmp eq i8 %334, %371
  br i1 %372, label %373, label %.split.loop.exit.split.loop.exit120

373:                                              ; preds = %369
  %374 = getelementptr inbounds nuw i8, ptr %349, i64 7
  %375 = load i8, ptr %374, align 1, !tbaa !5
  %376 = icmp eq i8 %334, %375
  br i1 %376, label %377, label %.split.loop.exit.split.loop.exit122

377:                                              ; preds = %373
  %378 = add nuw nsw i64 %348, 8
  %379 = getelementptr inbounds nuw i8, ptr %332, i64 %378
  %380 = load i8, ptr %379, align 1, !tbaa !5
  %381 = icmp eq i8 %334, %380
  %382 = icmp samesign ult i64 %348, 250
  %383 = select i1 %381, i1 %382, i1 false
  br i1 %383, label %347, label %.split.loop.exit.split.loop.exit124, !llvm.loop !141

.split.loop.exit.split.loop.exit:                 ; preds = %347
  %384 = getelementptr inbounds nuw i8, ptr %349, i64 1
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit112:              ; preds = %353
  %385 = getelementptr inbounds nuw i8, ptr %349, i64 2
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit114:              ; preds = %357
  %386 = getelementptr inbounds nuw i8, ptr %349, i64 3
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit116:              ; preds = %361
  %387 = getelementptr inbounds nuw i8, ptr %349, i64 4
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit118:              ; preds = %365
  %388 = getelementptr inbounds nuw i8, ptr %349, i64 5
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit120:              ; preds = %369
  %389 = getelementptr inbounds nuw i8, ptr %349, i64 6
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit122:              ; preds = %373
  %390 = getelementptr inbounds nuw i8, ptr %349, i64 7
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit124:              ; preds = %377
  %391 = getelementptr inbounds nuw i8, ptr %332, i64 %378
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %.split.loop.exit.split.loop.exit124, %.split.loop.exit.split.loop.exit122, %.split.loop.exit.split.loop.exit120, %.split.loop.exit.split.loop.exit118, %.split.loop.exit.split.loop.exit116, %.split.loop.exit.split.loop.exit114, %.split.loop.exit.split.loop.exit112, %.split.loop.exit.split.loop.exit
  %392 = phi ptr [ %384, %.split.loop.exit.split.loop.exit ], [ %385, %.split.loop.exit.split.loop.exit112 ], [ %386, %.split.loop.exit.split.loop.exit114 ], [ %387, %.split.loop.exit.split.loop.exit116 ], [ %388, %.split.loop.exit.split.loop.exit118 ], [ %389, %.split.loop.exit.split.loop.exit120 ], [ %390, %.split.loop.exit.split.loop.exit122 ], [ %391, %.split.loop.exit.split.loop.exit124 ]
  %393 = ptrtoint ptr %346 to i64
  %394 = ptrtoint ptr %392 to i64
  %395 = sub i64 %393, %394
  %396 = trunc i64 %395 to i32
  %397 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 258, i32 %396), !nosanitize !44
  %398 = extractvalue { i32, i1 } %397, 1, !nosanitize !44
  br i1 %398, label %399, label %400, !prof !45, !nosanitize !44

399:                                              ; preds = %.split.loop.exit
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

400:                                              ; preds = %.split.loop.exit
  %401 = extractvalue { i32, i1 } %397, 0, !nosanitize !44
  %402 = tail call i32 @llvm.umin.i32(i32 %401, i32 %328)
  store i32 %402, ptr %4, align 8
  %403 = icmp ugt i32 %402, 2
  %404 = load i32, ptr %23, align 4, !tbaa !136
  br i1 %403, label %405, label %465

405:                                              ; preds = %400
  %406 = trunc i32 %402 to i8
  %407 = add i8 %406, -3
  %408 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %404, i32 1), !nosanitize !44
  %409 = extractvalue { i32, i1 } %408, 1, !nosanitize !44
  br i1 %409, label %410, label %411, !prof !45, !nosanitize !44

410:                                              ; preds = %405
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

411:                                              ; preds = %405
  %412 = extractvalue { i32, i1 } %408, 0, !nosanitize !44
  %413 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %412, ptr %23, align 4, !tbaa !136
  %414 = zext i32 %404 to i64
  %415 = getelementptr inbounds nuw i8, ptr %413, i64 %414
  store i8 1, ptr %415, align 1, !tbaa !5
  %416 = load i32, ptr %23, align 4, !tbaa !136
  %417 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %416, i32 1), !nosanitize !44
  %418 = extractvalue { i32, i1 } %417, 1, !nosanitize !44
  br i1 %418, label %419, label %420, !prof !45, !nosanitize !44

419:                                              ; preds = %411
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

420:                                              ; preds = %411
  %421 = extractvalue { i32, i1 } %417, 0, !nosanitize !44
  %422 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %421, ptr %23, align 4, !tbaa !136
  %423 = zext i32 %416 to i64
  %424 = getelementptr inbounds nuw i8, ptr %422, i64 %423
  store i8 0, ptr %424, align 1, !tbaa !5
  %425 = load i32, ptr %23, align 4, !tbaa !136
  %426 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %425, i32 1), !nosanitize !44
  %427 = extractvalue { i32, i1 } %426, 1, !nosanitize !44
  br i1 %427, label %428, label %429, !prof !45, !nosanitize !44

428:                                              ; preds = %420
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

429:                                              ; preds = %420
  %430 = extractvalue { i32, i1 } %426, 0, !nosanitize !44
  %431 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %430, ptr %23, align 4, !tbaa !136
  %432 = zext i32 %425 to i64
  %433 = getelementptr inbounds nuw i8, ptr %431, i64 %432
  store i8 %407, ptr %433, align 1, !tbaa !5
  %434 = zext i8 %407 to i64
  %435 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %434
  %436 = load i8, ptr %435, align 1, !tbaa !5
  %437 = zext i8 %436 to i64
  %438 = getelementptr inbounds nuw [4 x i8], ptr %24, i64 %437
  %439 = getelementptr inbounds nuw i8, ptr %438, i64 1028
  %440 = load i16, ptr %439, align 4, !tbaa !5
  %441 = add i16 %440, 1
  store i16 %441, ptr %439, align 4, !tbaa !5
  %442 = load i8, ptr @_dist_code, align 1, !tbaa !5
  %443 = zext i8 %442 to i64
  %444 = getelementptr inbounds nuw [4 x i8], ptr %26, i64 %443
  %445 = load i16, ptr %444, align 4, !tbaa !5
  %446 = add i16 %445, 1
  store i16 %446, ptr %444, align 4, !tbaa !5
  %447 = load i32, ptr %23, align 4, !tbaa !136
  %448 = load i32, ptr %25, align 8, !tbaa !46
  %449 = icmp eq i32 %447, %448
  %450 = load i32, ptr %4, align 8, !tbaa !76
  %451 = load i32, ptr %3, align 4, !tbaa !73
  %452 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %451, i32 %450), !nosanitize !44
  %453 = extractvalue { i32, i1 } %452, 1, !nosanitize !44
  br i1 %453, label %454, label %455, !prof !45, !nosanitize !44

454:                                              ; preds = %429
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

455:                                              ; preds = %429
  %456 = extractvalue { i32, i1 } %452, 0, !nosanitize !44
  store i32 %456, ptr %3, align 4, !tbaa !73
  %457 = load i32, ptr %7, align 4, !tbaa !71
  %458 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %457, i32 %450), !nosanitize !44
  %459 = extractvalue { i32, i1 } %458, 1, !nosanitize !44
  br i1 %459, label %460, label %461, !prof !45, !nosanitize !44

460:                                              ; preds = %455
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

461:                                              ; preds = %455
  %462 = extractvalue { i32, i1 } %458, 0, !nosanitize !44
  store i32 %462, ptr %7, align 4, !tbaa !71
  store i32 0, ptr %4, align 8, !tbaa !76
  br i1 %449, label %514, label %.backedge

._crit_edge:                                      ; preds = %323, %341, %337, %330, %326
  %.pre = phi ptr [ %.pre.pre77, %330 ], [ %.pre.pre77, %326 ], [ %.pre.pre77, %341 ], [ %.pre.pre77, %337 ], [ %.pre.pre77.pre79, %323 ]
  %463 = phi i32 [ %327, %330 ], [ 0, %326 ], [ %327, %341 ], [ %327, %337 ], [ %325, %323 ]
  %464 = load i32, ptr %23, align 4, !tbaa !136
  %.pre76 = zext i32 %463 to i64
  br label %465

465:                                              ; preds = %._crit_edge, %400
  %.pre-phi = phi i64 [ %.pre76, %._crit_edge ], [ %331, %400 ]
  %466 = phi ptr [ %.pre, %._crit_edge ], [ %.pre.pre77, %400 ]
  %467 = phi i32 [ %464, %._crit_edge ], [ %404, %400 ]
  %468 = getelementptr inbounds nuw i8, ptr %466, i64 %.pre-phi
  %469 = load i8, ptr %468, align 1, !tbaa !5
  %470 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %467, i32 1), !nosanitize !44
  %471 = extractvalue { i32, i1 } %470, 1, !nosanitize !44
  br i1 %471, label %472, label %473, !prof !45, !nosanitize !44

472:                                              ; preds = %465
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

473:                                              ; preds = %465
  %474 = extractvalue { i32, i1 } %470, 0, !nosanitize !44
  %475 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %474, ptr %23, align 4, !tbaa !136
  %476 = zext i32 %467 to i64
  %477 = getelementptr inbounds nuw i8, ptr %475, i64 %476
  store i8 0, ptr %477, align 1, !tbaa !5
  %478 = load i32, ptr %23, align 4, !tbaa !136
  %479 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %478, i32 1), !nosanitize !44
  %480 = extractvalue { i32, i1 } %479, 1, !nosanitize !44
  br i1 %480, label %481, label %482, !prof !45, !nosanitize !44

481:                                              ; preds = %473
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

482:                                              ; preds = %473
  %483 = extractvalue { i32, i1 } %479, 0, !nosanitize !44
  %484 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %483, ptr %23, align 4, !tbaa !136
  %485 = zext i32 %478 to i64
  %486 = getelementptr inbounds nuw i8, ptr %484, i64 %485
  store i8 0, ptr %486, align 1, !tbaa !5
  %487 = load i32, ptr %23, align 4, !tbaa !136
  %488 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %487, i32 1), !nosanitize !44
  %489 = extractvalue { i32, i1 } %488, 1, !nosanitize !44
  br i1 %489, label %490, label %491, !prof !45, !nosanitize !44

490:                                              ; preds = %482
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

491:                                              ; preds = %482
  %492 = extractvalue { i32, i1 } %488, 0, !nosanitize !44
  %493 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %492, ptr %23, align 4, !tbaa !136
  %494 = zext i32 %487 to i64
  %495 = getelementptr inbounds nuw i8, ptr %493, i64 %494
  store i8 %469, ptr %495, align 1, !tbaa !5
  %496 = zext i8 %469 to i64
  %497 = getelementptr inbounds nuw [4 x i8], ptr %24, i64 %496
  %498 = load i16, ptr %497, align 4, !tbaa !5
  %499 = add i16 %498, 1
  store i16 %499, ptr %497, align 4, !tbaa !5
  %500 = load i32, ptr %23, align 4, !tbaa !136
  %501 = load i32, ptr %25, align 8, !tbaa !46
  %502 = icmp eq i32 %500, %501
  %503 = load i32, ptr %3, align 4, !tbaa !73
  %504 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %503, i32 1), !nosanitize !44
  %505 = extractvalue { i32, i1 } %504, 1, !nosanitize !44
  br i1 %505, label %.loopexit26, label %506, !prof !45, !nosanitize !44

.loopexit26:                                      ; preds = %522, %491, %657, %588
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

506:                                              ; preds = %491
  %507 = extractvalue { i32, i1 } %504, 0, !nosanitize !44
  store i32 %507, ptr %3, align 4, !tbaa !73
  %508 = load i32, ptr %7, align 4, !tbaa !71
  %509 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %508, i32 1), !nosanitize !44
  %510 = extractvalue { i32, i1 } %509, 1, !nosanitize !44
  br i1 %510, label %511, label %512, !prof !45, !nosanitize !44

511:                                              ; preds = %506
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

512:                                              ; preds = %506
  %513 = extractvalue { i32, i1 } %509, 0, !nosanitize !44
  store i32 %513, ptr %7, align 4, !tbaa !71
  br i1 %502, label %514, label %.backedge

514:                                              ; preds = %512, %461
  %515 = phi i32 [ %462, %461 ], [ %513, %512 ]
  %516 = load i64, ptr %10, align 8, !tbaa !72
  %517 = icmp sgt i64 %516, -1
  br i1 %517, label %518, label %522

518:                                              ; preds = %514
  %519 = load ptr, ptr %8, align 8, !tbaa !34
  %520 = and i64 %516, 4294967295
  %521 = getelementptr inbounds nuw i8, ptr %519, i64 %520
  br label %522

522:                                              ; preds = %518, %514
  %523 = phi ptr [ %521, %518 ], [ null, %514 ]
  %524 = zext i32 %515 to i64
  %525 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %524, i64 %516), !nosanitize !44
  %526 = extractvalue { i64, i1 } %525, 1, !nosanitize !44
  br i1 %526, label %.loopexit26, label %527, !prof !45, !nosanitize !44

527:                                              ; preds = %522
  %528 = extractvalue { i64, i1 } %525, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %523, i64 noundef %528, i32 noundef 0) #11
  %529 = load i32, ptr %7, align 4, !tbaa !71
  %530 = zext i32 %529 to i64
  store i64 %530, ptr %10, align 8, !tbaa !72
  %531 = load ptr, ptr %0, align 8, !tbaa !19
  %532 = getelementptr inbounds nuw i8, ptr %531, i64 56
  %533 = load ptr, ptr %532, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %533) #11
  %534 = getelementptr inbounds nuw i8, ptr %533, i64 40
  %535 = load i64, ptr %534, align 8, !tbaa !55
  %536 = getelementptr inbounds nuw i8, ptr %531, i64 32
  %537 = load i32, ptr %536, align 8, !tbaa !105
  %538 = zext i32 %537 to i64
  %539 = tail call i64 @llvm.umin.i64(i64 %535, i64 %538)
  %540 = trunc nuw i64 %539 to i32
  %541 = icmp eq i64 %539, 0
  br i1 %541, label %574, label %542

542:                                              ; preds = %527
  %543 = getelementptr inbounds nuw i8, ptr %531, i64 24
  %544 = load ptr, ptr %543, align 8, !tbaa !104
  %545 = getelementptr inbounds nuw i8, ptr %533, i64 32
  %546 = load ptr, ptr %545, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %544, ptr align 1 %546, i64 %539, i1 false)
  %547 = load ptr, ptr %543, align 8, !tbaa !104
  %548 = getelementptr inbounds nuw i8, ptr %547, i64 %539
  store ptr %548, ptr %543, align 8, !tbaa !104
  %549 = load ptr, ptr %545, align 8, !tbaa !56
  %550 = getelementptr inbounds nuw i8, ptr %549, i64 %539
  store ptr %550, ptr %545, align 8, !tbaa !56
  %551 = getelementptr inbounds nuw i8, ptr %531, i64 40
  %552 = load i64, ptr %551, align 8, !tbaa !106
  %553 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %552, i64 %539), !nosanitize !44
  %554 = extractvalue { i64, i1 } %553, 1, !nosanitize !44
  br i1 %554, label %555, label %556, !prof !45, !nosanitize !44

555:                                              ; preds = %542
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

556:                                              ; preds = %542
  %557 = extractvalue { i64, i1 } %553, 0, !nosanitize !44
  store i64 %557, ptr %551, align 8, !tbaa !106
  %558 = load i32, ptr %536, align 8, !tbaa !105
  %559 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %558, i32 %540), !nosanitize !44
  %560 = extractvalue { i32, i1 } %559, 1, !nosanitize !44
  br i1 %560, label %561, label %562, !prof !45, !nosanitize !44

561:                                              ; preds = %556
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

562:                                              ; preds = %556
  %563 = extractvalue { i32, i1 } %559, 0, !nosanitize !44
  store i32 %563, ptr %536, align 8, !tbaa !105
  %564 = load i64, ptr %534, align 8, !tbaa !55
  %565 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %564, i64 %539), !nosanitize !44
  %566 = extractvalue { i64, i1 } %565, 1, !nosanitize !44
  br i1 %566, label %567, label %568, !prof !45, !nosanitize !44

567:                                              ; preds = %562
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

568:                                              ; preds = %562
  %569 = extractvalue { i64, i1 } %565, 0, !nosanitize !44
  store i64 %569, ptr %534, align 8, !tbaa !55
  %570 = icmp eq i64 %569, 0
  br i1 %570, label %571, label %574

571:                                              ; preds = %568
  %572 = getelementptr inbounds nuw i8, ptr %533, i64 16
  %573 = load ptr, ptr %572, align 8, !tbaa !40
  store ptr %573, ptr %545, align 8, !tbaa !56
  br label %574

574:                                              ; preds = %571, %568, %527
  %575 = load ptr, ptr %0, align 8, !tbaa !19
  %576 = getelementptr inbounds nuw i8, ptr %575, i64 32
  %577 = load i32, ptr %576, align 8, !tbaa !105
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %.loopexit25, label %.backedge

.backedge:                                        ; preds = %574, %512, %461
  br label %27

579:                                              ; preds = %321
  store i32 0, ptr %11, align 4, !tbaa !74
  %580 = icmp eq i32 %1, 4
  br i1 %580, label %581, label %647

581:                                              ; preds = %579
  %582 = load i64, ptr %10, align 8, !tbaa !72
  %583 = icmp sgt i64 %582, -1
  br i1 %583, label %584, label %588

584:                                              ; preds = %581
  %585 = load ptr, ptr %8, align 8, !tbaa !34
  %586 = and i64 %582, 4294967295
  %587 = getelementptr inbounds nuw i8, ptr %585, i64 %586
  br label %588

588:                                              ; preds = %584, %581
  %589 = phi ptr [ %587, %584 ], [ null, %581 ]
  %590 = load i32, ptr %7, align 4, !tbaa !71
  %591 = zext i32 %590 to i64
  %592 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %591, i64 %582), !nosanitize !44
  %593 = extractvalue { i64, i1 } %592, 1, !nosanitize !44
  br i1 %593, label %.loopexit26, label %594, !prof !45, !nosanitize !44

594:                                              ; preds = %588
  %595 = extractvalue { i64, i1 } %592, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %589, i64 noundef %595, i32 noundef 1) #11
  %596 = load i32, ptr %7, align 4, !tbaa !71
  %597 = zext i32 %596 to i64
  store i64 %597, ptr %10, align 8, !tbaa !72
  %598 = load ptr, ptr %0, align 8, !tbaa !19
  %599 = getelementptr inbounds nuw i8, ptr %598, i64 56
  %600 = load ptr, ptr %599, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %600) #11
  %601 = getelementptr inbounds nuw i8, ptr %600, i64 40
  %602 = load i64, ptr %601, align 8, !tbaa !55
  %603 = getelementptr inbounds nuw i8, ptr %598, i64 32
  %604 = load i32, ptr %603, align 8, !tbaa !105
  %605 = zext i32 %604 to i64
  %606 = tail call i64 @llvm.umin.i64(i64 %602, i64 %605)
  %607 = trunc nuw i64 %606 to i32
  %608 = icmp eq i64 %606, 0
  br i1 %608, label %641, label %609

609:                                              ; preds = %594
  %610 = getelementptr inbounds nuw i8, ptr %598, i64 24
  %611 = load ptr, ptr %610, align 8, !tbaa !104
  %612 = getelementptr inbounds nuw i8, ptr %600, i64 32
  %613 = load ptr, ptr %612, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %611, ptr align 1 %613, i64 %606, i1 false)
  %614 = load ptr, ptr %610, align 8, !tbaa !104
  %615 = getelementptr inbounds nuw i8, ptr %614, i64 %606
  store ptr %615, ptr %610, align 8, !tbaa !104
  %616 = load ptr, ptr %612, align 8, !tbaa !56
  %617 = getelementptr inbounds nuw i8, ptr %616, i64 %606
  store ptr %617, ptr %612, align 8, !tbaa !56
  %618 = getelementptr inbounds nuw i8, ptr %598, i64 40
  %619 = load i64, ptr %618, align 8, !tbaa !106
  %620 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %619, i64 %606), !nosanitize !44
  %621 = extractvalue { i64, i1 } %620, 1, !nosanitize !44
  br i1 %621, label %622, label %623, !prof !45, !nosanitize !44

622:                                              ; preds = %609
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

623:                                              ; preds = %609
  %624 = extractvalue { i64, i1 } %620, 0, !nosanitize !44
  store i64 %624, ptr %618, align 8, !tbaa !106
  %625 = load i32, ptr %603, align 8, !tbaa !105
  %626 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %625, i32 %607), !nosanitize !44
  %627 = extractvalue { i32, i1 } %626, 1, !nosanitize !44
  br i1 %627, label %628, label %629, !prof !45, !nosanitize !44

628:                                              ; preds = %623
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

629:                                              ; preds = %623
  %630 = extractvalue { i32, i1 } %626, 0, !nosanitize !44
  store i32 %630, ptr %603, align 8, !tbaa !105
  %631 = load i64, ptr %601, align 8, !tbaa !55
  %632 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %631, i64 %606), !nosanitize !44
  %633 = extractvalue { i64, i1 } %632, 1, !nosanitize !44
  br i1 %633, label %634, label %635, !prof !45, !nosanitize !44

634:                                              ; preds = %629
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

635:                                              ; preds = %629
  %636 = extractvalue { i64, i1 } %632, 0, !nosanitize !44
  store i64 %636, ptr %601, align 8, !tbaa !55
  %637 = icmp eq i64 %636, 0
  br i1 %637, label %638, label %641

638:                                              ; preds = %635
  %639 = getelementptr inbounds nuw i8, ptr %600, i64 16
  %640 = load ptr, ptr %639, align 8, !tbaa !40
  store ptr %640, ptr %612, align 8, !tbaa !56
  br label %641

641:                                              ; preds = %638, %635, %594
  %642 = load ptr, ptr %0, align 8, !tbaa !19
  %643 = getelementptr inbounds nuw i8, ptr %642, i64 32
  %644 = load i32, ptr %643, align 8, !tbaa !105
  %645 = icmp eq i32 %644, 0
  %646 = select i1 %645, i32 2, i32 3
  br label %.loopexit25

647:                                              ; preds = %579
  %648 = load i32, ptr %23, align 4, !tbaa !136
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %715, label %650

650:                                              ; preds = %647
  %651 = load i64, ptr %10, align 8, !tbaa !72
  %652 = icmp sgt i64 %651, -1
  br i1 %652, label %653, label %657

653:                                              ; preds = %650
  %654 = load ptr, ptr %8, align 8, !tbaa !34
  %655 = and i64 %651, 4294967295
  %656 = getelementptr inbounds nuw i8, ptr %654, i64 %655
  br label %657

657:                                              ; preds = %653, %650
  %658 = phi ptr [ %656, %653 ], [ null, %650 ]
  %659 = load i32, ptr %7, align 4, !tbaa !71
  %660 = zext i32 %659 to i64
  %661 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %660, i64 %651), !nosanitize !44
  %662 = extractvalue { i64, i1 } %661, 1, !nosanitize !44
  br i1 %662, label %.loopexit26, label %663, !prof !45, !nosanitize !44

663:                                              ; preds = %657
  %664 = extractvalue { i64, i1 } %661, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %658, i64 noundef %664, i32 noundef 0) #11
  %665 = load i32, ptr %7, align 4, !tbaa !71
  %666 = zext i32 %665 to i64
  store i64 %666, ptr %10, align 8, !tbaa !72
  %667 = load ptr, ptr %0, align 8, !tbaa !19
  %668 = getelementptr inbounds nuw i8, ptr %667, i64 56
  %669 = load ptr, ptr %668, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %669) #11
  %670 = getelementptr inbounds nuw i8, ptr %669, i64 40
  %671 = load i64, ptr %670, align 8, !tbaa !55
  %672 = getelementptr inbounds nuw i8, ptr %667, i64 32
  %673 = load i32, ptr %672, align 8, !tbaa !105
  %674 = zext i32 %673 to i64
  %675 = tail call i64 @llvm.umin.i64(i64 %671, i64 %674)
  %676 = trunc nuw i64 %675 to i32
  %677 = icmp eq i64 %675, 0
  br i1 %677, label %710, label %678

678:                                              ; preds = %663
  %679 = getelementptr inbounds nuw i8, ptr %667, i64 24
  %680 = load ptr, ptr %679, align 8, !tbaa !104
  %681 = getelementptr inbounds nuw i8, ptr %669, i64 32
  %682 = load ptr, ptr %681, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %680, ptr align 1 %682, i64 %675, i1 false)
  %683 = load ptr, ptr %679, align 8, !tbaa !104
  %684 = getelementptr inbounds nuw i8, ptr %683, i64 %675
  store ptr %684, ptr %679, align 8, !tbaa !104
  %685 = load ptr, ptr %681, align 8, !tbaa !56
  %686 = getelementptr inbounds nuw i8, ptr %685, i64 %675
  store ptr %686, ptr %681, align 8, !tbaa !56
  %687 = getelementptr inbounds nuw i8, ptr %667, i64 40
  %688 = load i64, ptr %687, align 8, !tbaa !106
  %689 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %688, i64 %675), !nosanitize !44
  %690 = extractvalue { i64, i1 } %689, 1, !nosanitize !44
  br i1 %690, label %691, label %692, !prof !45, !nosanitize !44

691:                                              ; preds = %678
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

692:                                              ; preds = %678
  %693 = extractvalue { i64, i1 } %689, 0, !nosanitize !44
  store i64 %693, ptr %687, align 8, !tbaa !106
  %694 = load i32, ptr %672, align 8, !tbaa !105
  %695 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %694, i32 %676), !nosanitize !44
  %696 = extractvalue { i32, i1 } %695, 1, !nosanitize !44
  br i1 %696, label %697, label %698, !prof !45, !nosanitize !44

697:                                              ; preds = %692
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

698:                                              ; preds = %692
  %699 = extractvalue { i32, i1 } %695, 0, !nosanitize !44
  store i32 %699, ptr %672, align 8, !tbaa !105
  %700 = load i64, ptr %670, align 8, !tbaa !55
  %701 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %700, i64 %675), !nosanitize !44
  %702 = extractvalue { i64, i1 } %701, 1, !nosanitize !44
  br i1 %702, label %703, label %704, !prof !45, !nosanitize !44

703:                                              ; preds = %698
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

704:                                              ; preds = %698
  %705 = extractvalue { i64, i1 } %701, 0, !nosanitize !44
  store i64 %705, ptr %670, align 8, !tbaa !55
  %706 = icmp eq i64 %705, 0
  br i1 %706, label %707, label %710

707:                                              ; preds = %704
  %708 = getelementptr inbounds nuw i8, ptr %669, i64 16
  %709 = load ptr, ptr %708, align 8, !tbaa !40
  store ptr %709, ptr %681, align 8, !tbaa !56
  br label %710

710:                                              ; preds = %707, %704, %663
  %711 = load ptr, ptr %0, align 8, !tbaa !19
  %712 = getelementptr inbounds nuw i8, ptr %711, i64 32
  %713 = load i32, ptr %712, align 8, !tbaa !105
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %.loopexit25, label %715

715:                                              ; preds = %710, %647
  br label %.loopexit25

.loopexit25:                                      ; preds = %574, %317, %715, %710, %641
  %716 = phi i32 [ 1, %715 ], [ %646, %641 ], [ 0, %710 ], [ 0, %317 ], [ 0, %574 ]
  ret i32 %716
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
  %14 = load ptr, ptr %13, align 8, !tbaa !18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %188, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !19
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %188

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !28
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
  %29 = tail call ptr %26(ptr noundef %28, i32 noundef 1, i32 noundef 5968) #11
  %30 = icmp eq ptr %29, null
  br i1 %30, label %188, label %31

31:                                               ; preds = %24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5968) %29, i8 0, i64 5968, i1 false)
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %29, ptr %32, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5968) %29, ptr noundef nonnull align 8 dereferenceable(5968) %14, i64 5968, i1 false)
  store ptr %0, ptr %29, align 8, !tbaa !19
  %33 = load ptr, ptr %25, align 8, !tbaa !15
  %34 = load ptr, ptr %27, align 8, !tbaa !16
  %35 = getelementptr inbounds nuw i8, ptr %29, i64 80
  %36 = load i32, ptr %35, align 8, !tbaa !31
  %37 = tail call ptr %33(ptr noundef %34, i32 noundef %36, i32 noundef 2) #11
  %38 = getelementptr inbounds nuw i8, ptr %29, i64 96
  store ptr %37, ptr %38, align 8, !tbaa !34
  %39 = load ptr, ptr %25, align 8, !tbaa !15
  %40 = load ptr, ptr %27, align 8, !tbaa !16
  %41 = load i32, ptr %35, align 8, !tbaa !31
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
  %74 = load ptr, ptr %32, align 8, !tbaa !18
  %75 = icmp eq ptr %74, null
  br i1 %75, label %188, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %74, align 8, !tbaa !19
  %78 = icmp eq ptr %77, %0
  br i1 %78, label %79, label %188

79:                                               ; preds = %76
  %80 = getelementptr inbounds nuw i8, ptr %74, i64 8
  %81 = load i32, ptr %80, align 8, !tbaa !28
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
  tail call void %71(ptr noundef %87, ptr noundef nonnull %84) #11
  %88 = load ptr, ptr %32, align 8, !tbaa !18
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
  tail call void %91(ptr noundef %97, ptr noundef nonnull %94) #11
  %98 = load ptr, ptr %32, align 8, !tbaa !18
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
  tail call void %101(ptr noundef %107, ptr noundef nonnull %104) #11
  %108 = load ptr, ptr %32, align 8, !tbaa !18
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
  tail call void %111(ptr noundef %117, ptr noundef nonnull %114) #11
  %118 = load ptr, ptr %70, align 8, !tbaa !17
  %119 = load ptr, ptr %32, align 8, !tbaa !18
  br label %120

120:                                              ; preds = %116, %110
  %121 = phi ptr [ %119, %116 ], [ %112, %110 ]
  %122 = phi ptr [ %118, %116 ], [ %111, %110 ]
  %123 = load ptr, ptr %27, align 8, !tbaa !16
  tail call void %122(ptr noundef %123, ptr noundef %121) #11
  store ptr null, ptr %32, align 8, !tbaa !18
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
  %133 = load i32, ptr %132, align 8, !tbaa !61
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %124
  %136 = load i32, ptr %35, align 8, !tbaa !31
  br label %149

137:                                              ; preds = %124
  %138 = getelementptr inbounds nuw i8, ptr %14, i64 172
  %139 = load i32, ptr %138, align 4, !tbaa !71
  %140 = getelementptr inbounds nuw i8, ptr %14, i64 5932
  %141 = load i32, ptr %140, align 4, !tbaa !74
  %142 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %139, i32 %141), !nosanitize !44
  %143 = extractvalue { i32, i1 } %142, 1, !nosanitize !44
  br i1 %143, label %144, label %145, !prof !45, !nosanitize !44

144:                                              ; preds = %137
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

145:                                              ; preds = %137
  %146 = extractvalue { i32, i1 } %142, 0, !nosanitize !44
  %147 = load i32, ptr %35, align 8, !tbaa !31
  %148 = tail call i32 @llvm.umin.i32(i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %145, %135
  %150 = phi i32 [ %136, %135 ], [ %148, %145 ]
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
  %161 = load ptr, ptr %160, align 8, !tbaa !56
  %162 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %163 = load ptr, ptr %162, align 8, !tbaa !40
  %164 = ptrtoint ptr %161 to i64
  %165 = ptrtoint ptr %163 to i64
  %166 = sub i64 %164, %165
  %167 = getelementptr inbounds i8, ptr %159, i64 %166
  %168 = getelementptr inbounds nuw i8, ptr %29, i64 32
  store ptr %167, ptr %168, align 8, !tbaa !56
  %169 = load ptr, ptr %160, align 8, !tbaa !56
  %170 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %171 = load i64, ptr %170, align 8, !tbaa !55
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %167, ptr align 1 %169, i64 %171, i1 false)
  %172 = load ptr, ptr %55, align 8, !tbaa !40
  %173 = load i32, ptr %52, align 8, !tbaa !39
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds nuw i8, ptr %172, i64 %174
  %176 = getelementptr inbounds nuw i8, ptr %29, i64 5888
  store ptr %175, ptr %176, align 8, !tbaa !43
  %177 = getelementptr inbounds nuw i8, ptr %14, i64 5888
  %178 = load ptr, ptr %177, align 8, !tbaa !43
  %179 = getelementptr inbounds nuw i8, ptr %14, i64 5900
  %180 = load i32, ptr %179, align 4, !tbaa !136
  %181 = zext i32 %180 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %175, ptr align 1 %178, i64 %181, i1 false)
  %182 = getelementptr inbounds nuw i8, ptr %29, i64 212
  %183 = getelementptr inbounds nuw i8, ptr %29, i64 2904
  store ptr %182, ptr %183, align 8, !tbaa !142
  %184 = getelementptr inbounds nuw i8, ptr %29, i64 2504
  %185 = getelementptr inbounds nuw i8, ptr %29, i64 2928
  store ptr %184, ptr %185, align 8, !tbaa !143
  %186 = getelementptr inbounds nuw i8, ptr %29, i64 2748
  %187 = getelementptr inbounds nuw i8, ptr %29, i64 2952
  store ptr %186, ptr %187, align 8, !tbaa !144
  br label %188

188:                                              ; preds = %149, %120, %79, %76, %73, %69, %66, %24, %22, %19, %16, %12, %8, %4, %2
  %189 = phi i32 [ 0, %149 ], [ -2, %22 ], [ -4, %24 ], [ -4, %66 ], [ -4, %69 ], [ -4, %73 ], [ -4, %76 ], [ -4, %79 ], [ -4, %120 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
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
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %32

32:                                               ; preds = %.backedge, %2
  %33 = load i32, ptr %3, align 4, !tbaa !73
  %34 = icmp ult i32 %33, 262
  br i1 %34, label %35, label %328

35:                                               ; preds = %32
  %36 = load i32, ptr %4, align 8, !tbaa !31
  %37 = zext i32 %36 to i64
  br label %38

38:                                               ; preds = %271, %35
  %39 = phi i32 [ %199, %271 ], [ %33, %35 ]
  %40 = load i64, ptr %5, align 8, !tbaa !59
  %41 = zext nneg i32 %39 to i64
  %42 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %40, i64 %41), !nosanitize !44
  %43 = extractvalue { i64, i1 } %42, 1, !nosanitize !44
  br i1 %43, label %44, label %45, !prof !45, !nosanitize !44

44:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

45:                                               ; preds = %38
  %46 = extractvalue { i64, i1 } %42, 0, !nosanitize !44
  %47 = load i32, ptr %6, align 4, !tbaa !71
  %48 = zext i32 %47 to i64
  %49 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %46, i64 %48), !nosanitize !44
  %50 = extractvalue { i64, i1 } %49, 1, !nosanitize !44
  br i1 %50, label %51, label %52, !prof !45, !nosanitize !44

51:                                               ; preds = %45
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

52:                                               ; preds = %45
  %53 = extractvalue { i64, i1 } %49, 0, !nosanitize !44
  %54 = trunc i64 %53 to i32
  %55 = load i32, ptr %4, align 8, !tbaa !31
  %56 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %55, i32 262), !nosanitize !44
  %57 = extractvalue { i32, i1 } %56, 1, !nosanitize !44
  br i1 %57, label %58, label %59, !prof !45, !nosanitize !44

58:                                               ; preds = %52
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

59:                                               ; preds = %52
  %60 = extractvalue { i32, i1 } %56, 0, !nosanitize !44
  %61 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %36, i32 %60), !nosanitize !44
  %62 = extractvalue { i32, i1 } %61, 1, !nosanitize !44
  br i1 %62, label %63, label %64, !prof !45, !nosanitize !44

63:                                               ; preds = %59
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

64:                                               ; preds = %59
  %65 = extractvalue { i32, i1 } %61, 0, !nosanitize !44
  %66 = icmp ult i32 %47, %65
  br i1 %66, label %150, label %67

67:                                               ; preds = %64
  %68 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %36, i32 %54), !nosanitize !44
  %69 = extractvalue { i32, i1 } %68, 1, !nosanitize !44
  br i1 %69, label %70, label %71, !prof !45, !nosanitize !44

70:                                               ; preds = %67
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

71:                                               ; preds = %67
  %72 = extractvalue { i32, i1 } %68, 0, !nosanitize !44
  %73 = load ptr, ptr %7, align 8, !tbaa !34
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 %37
  %75 = zext i32 %72 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %73, ptr align 1 %74, i64 %75, i1 false)
  %76 = load i32, ptr %8, align 8, !tbaa !81
  %77 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %76, i32 %36), !nosanitize !44
  %78 = extractvalue { i32, i1 } %77, 1, !nosanitize !44
  br i1 %78, label %79, label %80, !prof !45, !nosanitize !44

79:                                               ; preds = %71
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

80:                                               ; preds = %71
  %81 = extractvalue { i32, i1 } %77, 0, !nosanitize !44
  store i32 %81, ptr %8, align 8, !tbaa !81
  %82 = load i32, ptr %6, align 4, !tbaa !71
  %83 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %82, i32 %36), !nosanitize !44
  %84 = extractvalue { i32, i1 } %83, 1, !nosanitize !44
  br i1 %84, label %85, label %86, !prof !45, !nosanitize !44

85:                                               ; preds = %86, %80
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

86:                                               ; preds = %80
  %87 = extractvalue { i32, i1 } %83, 0, !nosanitize !44
  store i32 %87, ptr %6, align 4, !tbaa !71
  %88 = load i64, ptr %9, align 8, !tbaa !72
  %89 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %88, i64 %37), !nosanitize !44
  %90 = extractvalue { i64, i1 } %89, 1, !nosanitize !44
  br i1 %90, label %85, label %91, !prof !45, !nosanitize !44

91:                                               ; preds = %86
  %92 = extractvalue { i64, i1 } %89, 0, !nosanitize !44
  store i64 %92, ptr %9, align 8, !tbaa !72
  %93 = load i32, ptr %10, align 4, !tbaa !74
  %94 = icmp ugt i32 %93, %87
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 %87, ptr %10, align 4, !tbaa !74
  br label %96

96:                                               ; preds = %95, %91
  %97 = load i32, ptr %4, align 8, !tbaa !31
  %98 = load i32, ptr %11, align 4, !tbaa !36
  %99 = load ptr, ptr %12, align 8, !tbaa !37
  %100 = zext i32 %98 to i64
  %101 = getelementptr inbounds nuw [2 x i8], ptr %99, i64 %100
  %.not.not = icmp eq i32 %98, 0
  br i1 %.not.not, label %.split.us, label %.split.preheader, !prof !45, !nosanitize !44

.split.preheader:                                 ; preds = %96
  %min.iters.check208 = icmp ult i32 %98, 8
  br i1 %min.iters.check208, label %.split.preheader230, label %vector.ph209

vector.ph209:                                     ; preds = %.split.preheader
  %n.vec211 = and i64 %100, 4294967288
  %102 = mul nsw i64 %n.vec211, -2
  %103 = getelementptr i8, ptr %101, i64 %102
  %.cast212 = trunc nuw i64 %n.vec211 to i32
  %104 = sub i32 %98, %.cast212
  %broadcast.splatinsert213 = insertelement <8 x i32> poison, i32 %97, i64 0
  %105 = shufflevector <8 x i32> %broadcast.splatinsert213, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph209
  %index216 = phi i64 [ 0, %vector.ph209 ], [ %index.next222, %vector.body215 ]
  %offset.idx217 = mul i64 %index216, -2
  %next.gep218 = getelementptr i8, ptr %101, i64 %offset.idx217
  %106 = getelementptr inbounds i8, ptr %next.gep218, i64 -16
  %wide.load219 = load <8 x i16>, ptr %106, align 2, !tbaa !60
  %107 = zext <8 x i16> %wide.load219 to <8 x i32>
  %108 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %107, <8 x i32> %105)
  %reverse221 = trunc nuw <8 x i32> %108 to <8 x i16>
  store <8 x i16> %reverse221, ptr %106, align 2, !tbaa !60
  %index.next222 = add nuw i64 %index216, 8
  %109 = icmp eq i64 %index.next222, %n.vec211
  br i1 %109, label %middle.block223, label %vector.body215, !llvm.loop !145

middle.block223:                                  ; preds = %vector.body215
  %cmp.n224 = icmp eq i64 %n.vec211, %100
  br i1 %cmp.n224, label %.loopexit228, label %.split.preheader230

.split.preheader230:                              ; preds = %.split.preheader, %middle.block223
  %.ph231 = phi ptr [ %101, %.split.preheader ], [ %103, %middle.block223 ]
  %.ph232 = phi i32 [ %98, %.split.preheader ], [ %104, %middle.block223 ]
  br label %.split

.split.us:                                        ; preds = %96
  %110 = getelementptr inbounds i8, ptr %101, i64 -2
  %111 = load i16, ptr %110, align 2, !tbaa !60
  %112 = zext i16 %111 to i32
  %113 = tail call i32 @llvm.usub.sat.i32(i32 %112, i32 %97)
  %114 = trunc nuw i32 %113 to i16
  store i16 %114, ptr %110, align 2, !tbaa !60
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split:                                           ; preds = %.split.preheader230, %.split
  %115 = phi ptr [ %117, %.split ], [ %.ph231, %.split.preheader230 ]
  %116 = phi i32 [ %122, %.split ], [ %.ph232, %.split.preheader230 ]
  %117 = getelementptr inbounds i8, ptr %115, i64 -2
  %118 = load i16, ptr %117, align 2, !tbaa !60
  %119 = zext i16 %118 to i32
  %120 = tail call i32 @llvm.usub.sat.i32(i32 %119, i32 %97)
  %121 = trunc nuw i32 %120 to i16
  store i16 %121, ptr %117, align 2, !tbaa !60
  %122 = add i32 %116, -1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %.loopexit228, label %.split, !llvm.loop !146

.loopexit228:                                     ; preds = %.split, %middle.block223
  %.not.not153 = icmp eq i32 %97, 0
  br i1 %.not.not153, label %.split84.us, label %.split84, !prof !45, !nosanitize !44

.split84.us:                                      ; preds = %.loopexit228
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split84:                                         ; preds = %.loopexit228
  %124 = load ptr, ptr %13, align 8, !tbaa !35
  %125 = zext i32 %97 to i64
  %126 = getelementptr inbounds nuw [2 x i8], ptr %124, i64 %125
  %min.iters.check = icmp ult i32 %97, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.split84
  %n.vec = and i64 %125, 4294967288
  %127 = mul nsw i64 %n.vec, -2
  %128 = getelementptr i8, ptr %126, i64 %127
  %.cast = trunc nuw i64 %n.vec to i32
  %129 = sub i32 %97, %.cast
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %97, i64 0
  %130 = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = mul i64 %index, -2
  %next.gep = getelementptr i8, ptr %126, i64 %offset.idx
  %131 = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %wide.load = load <8 x i16>, ptr %131, align 2, !tbaa !60
  %132 = zext <8 x i16> %wide.load to <8 x i32>
  %133 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %132, <8 x i32> %130)
  %reverse205 = trunc nuw <8 x i32> %133 to <8 x i16>
  store <8 x i16> %reverse205, ptr %131, align 2, !tbaa !60
  %index.next = add nuw i64 %index, 8
  %134 = icmp eq i64 %index.next, %n.vec
  br i1 %134, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %125
  br i1 %cmp.n, label %.loopexit227, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.split84, %middle.block
  %.ph = phi ptr [ %126, %.split84 ], [ %128, %middle.block ]
  %.ph229 = phi i32 [ %97, %.split84 ], [ %129, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %135 = phi ptr [ %137, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %136 = phi i32 [ %142, %scalar.ph ], [ %.ph229, %scalar.ph.preheader ]
  %137 = getelementptr inbounds i8, ptr %135, i64 -2
  %138 = load i16, ptr %137, align 2, !tbaa !60
  %139 = zext i16 %138 to i32
  %140 = tail call i32 @llvm.usub.sat.i32(i32 %139, i32 %97)
  %141 = trunc nuw i32 %140 to i16
  store i16 %141, ptr %137, align 2, !tbaa !60
  %142 = add i32 %136, -1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %.loopexit227, label %scalar.ph, !llvm.loop !148

.loopexit227:                                     ; preds = %scalar.ph, %middle.block
  store i32 1, ptr %14, align 8, !tbaa !61
  %144 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %54, i32 %36), !nosanitize !44
  %145 = extractvalue { i32, i1 } %144, 1, !nosanitize !44
  br i1 %145, label %146, label %147, !prof !45, !nosanitize !44

146:                                              ; preds = %.loopexit227
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

147:                                              ; preds = %.loopexit227
  %148 = extractvalue { i32, i1 } %144, 0, !nosanitize !44
  %149 = load i32, ptr %3, align 4, !tbaa !73
  br label %150

150:                                              ; preds = %147, %64
  %151 = phi i32 [ %149, %147 ], [ %39, %64 ]
  %152 = phi i32 [ %87, %147 ], [ %47, %64 ]
  %153 = phi i32 [ %148, %147 ], [ %54, %64 ]
  %154 = load ptr, ptr %0, align 8, !tbaa !19
  %155 = getelementptr inbounds nuw i8, ptr %154, i64 8
  %156 = load i32, ptr %155, align 8, !tbaa !79
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %276, label %158

158:                                              ; preds = %150
  %159 = load ptr, ptr %7, align 8, !tbaa !34
  %160 = zext i32 %152 to i64
  %161 = getelementptr inbounds nuw i8, ptr %159, i64 %160
  %162 = zext i32 %151 to i64
  %163 = getelementptr inbounds nuw i8, ptr %161, i64 %162
  %164 = tail call i32 @llvm.umin.i32(i32 %156, i32 %153)
  %165 = icmp eq i32 %153, 0
  br i1 %165, label %193, label %166

166:                                              ; preds = %158
  %167 = sub i32 %156, %164
  store i32 %167, ptr %155, align 8, !tbaa !79
  %168 = load ptr, ptr %154, align 8, !tbaa !80
  %169 = zext i32 %164 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %163, ptr align 1 %168, i64 %169, i1 false)
  %170 = getelementptr inbounds nuw i8, ptr %154, i64 56
  %171 = load ptr, ptr %170, align 8, !tbaa !18
  %172 = getelementptr inbounds nuw i8, ptr %171, i64 48
  %173 = load i32, ptr %172, align 8, !tbaa !29
  switch i32 %173, label %182 [
    i32 1, label %174
    i32 2, label %178
  ]

174:                                              ; preds = %166
  %175 = getelementptr inbounds nuw i8, ptr %154, i64 96
  %176 = load i64, ptr %175, align 8, !tbaa !57
  %177 = tail call i64 @adler32(i64 noundef %176, ptr noundef %163, i32 noundef %164) #11
  store i64 %177, ptr %175, align 8, !tbaa !57
  br label %182

178:                                              ; preds = %166
  %179 = getelementptr inbounds nuw i8, ptr %154, i64 96
  %180 = load i64, ptr %179, align 8, !tbaa !57
  %181 = tail call i64 @crc32(i64 noundef %180, ptr noundef %163, i32 noundef %164) #11
  store i64 %181, ptr %179, align 8, !tbaa !57
  br label %182

182:                                              ; preds = %178, %174, %166
  %183 = load ptr, ptr %154, align 8, !tbaa !80
  %184 = getelementptr inbounds nuw i8, ptr %183, i64 %169
  store ptr %184, ptr %154, align 8, !tbaa !80
  %185 = getelementptr inbounds nuw i8, ptr %154, i64 16
  %186 = load i64, ptr %185, align 8, !tbaa !53
  %187 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %186, i64 %169), !nosanitize !44
  %188 = extractvalue { i64, i1 } %187, 1, !nosanitize !44
  br i1 %188, label %189, label %190, !prof !45, !nosanitize !44

189:                                              ; preds = %182
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

190:                                              ; preds = %182
  %191 = extractvalue { i64, i1 } %187, 0, !nosanitize !44
  store i64 %191, ptr %185, align 8, !tbaa !53
  %192 = load i32, ptr %3, align 4, !tbaa !73
  br label %193

193:                                              ; preds = %190, %158
  %194 = phi i32 [ %151, %158 ], [ %192, %190 ]
  %195 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %194, i32 %164), !nosanitize !44
  %196 = extractvalue { i32, i1 } %195, 1, !nosanitize !44
  br i1 %196, label %197, label %198, !prof !45, !nosanitize !44

197:                                              ; preds = %193
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

198:                                              ; preds = %193
  %199 = extractvalue { i32, i1 } %195, 0, !nosanitize !44
  store i32 %199, ptr %3, align 4, !tbaa !73
  %200 = load i32, ptr %10, align 4, !tbaa !74
  %201 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %199, i32 %200), !nosanitize !44
  %202 = extractvalue { i32, i1 } %201, 1, !nosanitize !44
  br i1 %202, label %203, label %204, !prof !45, !nosanitize !44

203:                                              ; preds = %198
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

204:                                              ; preds = %198
  %205 = extractvalue { i32, i1 } %201, 0, !nosanitize !44
  %206 = icmp ugt i32 %205, 2
  br i1 %206, label %207, label %.loopexit

207:                                              ; preds = %204
  %208 = load i32, ptr %6, align 4, !tbaa !71
  %209 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %208, i32 %200), !nosanitize !44
  %210 = extractvalue { i32, i1 } %209, 0, !nosanitize !44
  %211 = extractvalue { i32, i1 } %209, 1, !nosanitize !44
  br i1 %211, label %212, label %213, !prof !45, !nosanitize !44

212:                                              ; preds = %207
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

213:                                              ; preds = %207
  %214 = load ptr, ptr %7, align 8, !tbaa !34
  %215 = zext i32 %210 to i64
  %216 = getelementptr inbounds nuw i8, ptr %214, i64 %215
  %217 = load i8, ptr %216, align 1, !tbaa !5
  %218 = zext i8 %217 to i32
  store i32 %218, ptr %15, align 8, !tbaa !78
  %219 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %210, i32 1), !nosanitize !44
  %220 = extractvalue { i32, i1 } %219, 1, !nosanitize !44
  br i1 %220, label %221, label %222, !prof !45, !nosanitize !44

221:                                              ; preds = %213
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

222:                                              ; preds = %213
  %223 = extractvalue { i32, i1 } %219, 0, !nosanitize !44
  %224 = load i32, ptr %16, align 8, !tbaa !52
  %225 = shl i32 %218, %224
  %226 = zext i32 %223 to i64
  %227 = getelementptr inbounds nuw i8, ptr %214, i64 %226
  %228 = load i8, ptr %227, align 1, !tbaa !5
  %229 = zext i8 %228 to i32
  %230 = xor i32 %225, %229
  %231 = load i32, ptr %17, align 4, !tbaa !51
  %232 = and i32 %230, %231
  store i32 %232, ptr %15, align 8, !tbaa !78
  br label %233

233:                                              ; preds = %266, %222
  %234 = phi i32 [ %232, %222 ], [ %251, %266 ]
  %235 = phi i32 [ %200, %222 ], [ %262, %266 ]
  %236 = phi i32 [ %210, %222 ], [ %267, %266 ]
  %237 = icmp eq i32 %235, 0
  br i1 %237, label %.loopexit, label %238

238:                                              ; preds = %233
  %239 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %236, i32 3), !nosanitize !44
  %240 = extractvalue { i32, i1 } %239, 1, !nosanitize !44
  br i1 %240, label %241, label %242, !prof !45, !nosanitize !44

241:                                              ; preds = %238
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

242:                                              ; preds = %238
  %243 = shl i32 %234, %224
  %244 = extractvalue { i32, i1 } %239, 0, !nosanitize !44
  %245 = add i32 %244, -1
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds nuw i8, ptr %214, i64 %246
  %248 = load i8, ptr %247, align 1, !tbaa !5
  %249 = zext i8 %248 to i32
  %250 = xor i32 %243, %249
  %251 = and i32 %250, %231
  store i32 %251, ptr %15, align 8, !tbaa !78
  %252 = load ptr, ptr %12, align 8, !tbaa !37
  %253 = zext i32 %251 to i64
  %254 = getelementptr inbounds nuw [2 x i8], ptr %252, i64 %253
  %255 = load i16, ptr %254, align 2, !tbaa !60
  %256 = load ptr, ptr %13, align 8, !tbaa !35
  %257 = load i32, ptr %18, align 8, !tbaa !32
  %258 = and i32 %257, %236
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds nuw [2 x i8], ptr %256, i64 %259
  store i16 %255, ptr %260, align 2, !tbaa !60
  %261 = trunc i32 %236 to i16
  store i16 %261, ptr %254, align 2, !tbaa !60
  %262 = add i32 %235, -1
  store i32 %262, ptr %10, align 4, !tbaa !74
  %263 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %199, i32 %262), !nosanitize !44
  %264 = extractvalue { i32, i1 } %263, 1, !nosanitize !44
  br i1 %264, label %265, label %266, !prof !45, !nosanitize !44

265:                                              ; preds = %242
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

266:                                              ; preds = %242
  %267 = add nuw i32 %236, 1
  %268 = extractvalue { i32, i1 } %263, 0, !nosanitize !44
  %269 = icmp ult i32 %268, 3
  br i1 %269, label %.loopexit, label %233, !llvm.loop !89

.loopexit:                                        ; preds = %266, %233, %204
  %270 = icmp ult i32 %199, 262
  br i1 %270, label %271, label %276

271:                                              ; preds = %.loopexit
  %272 = load ptr, ptr %0, align 8, !tbaa !19
  %273 = getelementptr inbounds nuw i8, ptr %272, i64 8
  %274 = load i32, ptr %273, align 8, !tbaa !79
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %38, !llvm.loop !90

276:                                              ; preds = %271, %.loopexit, %150
  %277 = phi i32 [ %199, %271 ], [ %199, %.loopexit ], [ %151, %150 ]
  %278 = load i64, ptr %19, align 8, !tbaa !38
  %279 = load i64, ptr %5, align 8, !tbaa !59
  %280 = icmp ult i64 %278, %279
  br i1 %280, label %281, label %320

281:                                              ; preds = %276
  %282 = load i32, ptr %6, align 4, !tbaa !71
  %283 = zext i32 %282 to i64
  %284 = zext i32 %277 to i64
  %285 = add nuw nsw i64 %283, %284
  %286 = icmp ult i64 %278, %285
  br i1 %286, label %287, label %297

287:                                              ; preds = %281
  %288 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %279, i64 %285), !nosanitize !44
  %289 = extractvalue { i64, i1 } %288, 1, !nosanitize !44
  br i1 %289, label %290, label %291, !prof !45, !nosanitize !44

290:                                              ; preds = %287
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

291:                                              ; preds = %287
  %292 = extractvalue { i64, i1 } %288, 0, !nosanitize !44
  %293 = tail call i64 @llvm.umin.i64(i64 %292, i64 258)
  %294 = load ptr, ptr %7, align 8, !tbaa !34
  %295 = getelementptr inbounds nuw i8, ptr %294, i64 %285
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %295, i8 0, i64 %293, i1 false)
  %296 = add nuw nsw i64 %293, %285
  br label %317

297:                                              ; preds = %281
  %298 = add nuw nsw i64 %285, 258
  %299 = icmp ult i64 %278, %298
  br i1 %299, label %300, label %320

300:                                              ; preds = %297
  %301 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %279, i64 %278), !nosanitize !44
  %302 = extractvalue { i64, i1 } %301, 1, !nosanitize !44
  br i1 %302, label %303, label %304, !prof !45, !nosanitize !44

303:                                              ; preds = %300
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

304:                                              ; preds = %300
  %305 = sub nuw nsw i64 %298, %278
  %306 = extractvalue { i64, i1 } %301, 0, !nosanitize !44
  %307 = tail call i64 @llvm.umin.i64(i64 %305, i64 %306)
  %308 = load ptr, ptr %7, align 8, !tbaa !34
  %309 = getelementptr inbounds nuw i8, ptr %308, i64 %278
  %310 = and i64 %307, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %309, i8 0, i64 %310, i1 false)
  %311 = load i64, ptr %19, align 8, !tbaa !38
  %312 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %311, i64 %307), !nosanitize !44
  %313 = extractvalue { i64, i1 } %312, 1, !nosanitize !44
  br i1 %313, label %314, label %315, !prof !45, !nosanitize !44

314:                                              ; preds = %304
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

315:                                              ; preds = %304
  %316 = extractvalue { i64, i1 } %312, 0, !nosanitize !44
  br label %317

317:                                              ; preds = %315, %291
  %318 = phi i64 [ %296, %291 ], [ %316, %315 ]
  store i64 %318, ptr %19, align 8, !tbaa !38
  %319 = load i32, ptr %3, align 4, !tbaa !73
  br label %320

320:                                              ; preds = %317, %297, %276
  %321 = phi i32 [ %277, %276 ], [ %277, %297 ], [ %319, %317 ]
  %322 = icmp ult i32 %321, 262
  %323 = and i1 %20, %322
  br i1 %323, label %.loopexit34, label %324

324:                                              ; preds = %320
  %325 = icmp eq i32 %321, 0
  br i1 %325, label %816, label %326

326:                                              ; preds = %324
  %327 = icmp ugt i32 %321, 2
  br i1 %327, label %328, label %529

328:                                              ; preds = %326, %32
  %329 = phi i32 [ %321, %326 ], [ %33, %32 ]
  %330 = load i32, ptr %6, align 4, !tbaa !71
  %331 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %330, i32 2), !nosanitize !44
  %332 = extractvalue { i32, i1 } %331, 1, !nosanitize !44
  br i1 %332, label %333, label %334, !prof !45, !nosanitize !44

333:                                              ; preds = %328
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

334:                                              ; preds = %328
  %335 = extractvalue { i32, i1 } %331, 0, !nosanitize !44
  %336 = load ptr, ptr %7, align 8, !tbaa !34
  %337 = load i32, ptr %15, align 8, !tbaa !78
  %338 = load i32, ptr %16, align 8, !tbaa !52
  %339 = shl i32 %337, %338
  %340 = zext i32 %335 to i64
  %341 = getelementptr inbounds nuw i8, ptr %336, i64 %340
  %342 = load i8, ptr %341, align 1, !tbaa !5
  %343 = zext i8 %342 to i32
  %344 = xor i32 %339, %343
  %345 = load i32, ptr %17, align 4, !tbaa !51
  %346 = and i32 %344, %345
  store i32 %346, ptr %15, align 8, !tbaa !78
  %347 = load ptr, ptr %12, align 8, !tbaa !37
  %348 = zext i32 %346 to i64
  %349 = getelementptr inbounds nuw [2 x i8], ptr %347, i64 %348
  %350 = load i16, ptr %349, align 2, !tbaa !60
  %351 = load ptr, ptr %13, align 8, !tbaa !35
  %352 = load i32, ptr %18, align 8, !tbaa !32
  %353 = and i32 %352, %330
  %354 = zext i32 %353 to i64
  %355 = getelementptr inbounds nuw [2 x i8], ptr %351, i64 %354
  store i16 %350, ptr %355, align 2, !tbaa !60
  %356 = zext i16 %350 to i32
  %357 = trunc i32 %330 to i16
  store i16 %357, ptr %349, align 2, !tbaa !60
  %358 = icmp eq i16 %350, 0
  br i1 %358, label %529, label %359

359:                                              ; preds = %334
  %360 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %330, i32 %356), !nosanitize !44
  %361 = extractvalue { i32, i1 } %360, 0, !nosanitize !44
  %362 = extractvalue { i32, i1 } %360, 1, !nosanitize !44
  br i1 %362, label %363, label %364, !prof !45, !nosanitize !44

363:                                              ; preds = %359
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

364:                                              ; preds = %359
  %365 = load i32, ptr %4, align 8, !tbaa !31
  %366 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %365, i32 262), !nosanitize !44
  %367 = extractvalue { i32, i1 } %366, 1, !nosanitize !44
  br i1 %367, label %368, label %369, !prof !45, !nosanitize !44

368:                                              ; preds = %364
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

369:                                              ; preds = %364
  %370 = extractvalue { i32, i1 } %366, 0, !nosanitize !44
  %371 = icmp ugt i32 %361, %370
  br i1 %371, label %529, label %372

372:                                              ; preds = %369
  %373 = zext i32 %330 to i64
  %374 = getelementptr inbounds nuw i8, ptr %336, i64 %373
  %375 = load i32, ptr %21, align 8, !tbaa !75
  %376 = tail call i32 @llvm.usub.sat.i32(i32 %330, i32 %370)
  %377 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %375, i32 -1)
  %378 = extractvalue { i32, i1 } %377, 1, !nosanitize !44
  br i1 %378, label %.loopexit33, label %379, !prof !45, !nosanitize !44

.loopexit33:                                      ; preds = %372, %.split.loop.exit, %410
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

379:                                              ; preds = %372
  %380 = load i32, ptr %22, align 8, !tbaa !68
  %381 = load i32, ptr %23, align 4, !tbaa !70
  %382 = getelementptr inbounds nuw i8, ptr %374, i64 258
  %383 = extractvalue { i32, i1 } %377, 0, !nosanitize !44
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i8, ptr %374, i64 %384
  %386 = load i8, ptr %385, align 1, !tbaa !5
  %387 = sext i32 %375 to i64
  %388 = getelementptr inbounds i8, ptr %374, i64 %387
  %389 = load i8, ptr %388, align 1, !tbaa !5
  %390 = load i32, ptr %24, align 4, !tbaa !66
  %391 = icmp ult i32 %375, %390
  %392 = lshr i32 %381, 2
  %393 = select i1 %391, i32 %381, i32 %392
  %394 = tail call i32 @llvm.umin.i32(i32 %380, i32 %329)
  %395 = getelementptr i8, ptr %374, i64 -1
  %396 = getelementptr inbounds nuw i8, ptr %374, i64 1
  %397 = ptrtoint ptr %382 to i64
  br label %398

398:                                              ; preds = %523, %379
  %399 = phi i32 [ %375, %379 ], [ %510, %523 ]
  %400 = phi i32 [ %393, %379 ], [ %524, %523 ]
  %401 = phi i32 [ %356, %379 ], [ %517, %523 ]
  %402 = phi i8 [ %386, %379 ], [ %511, %523 ]
  %403 = phi i8 [ %389, %379 ], [ %512, %523 ]
  %404 = zext nneg i32 %401 to i64
  %405 = getelementptr inbounds nuw i8, ptr %336, i64 %404
  %406 = sext i32 %399 to i64
  %407 = getelementptr inbounds i8, ptr %405, i64 %406
  %408 = load i8, ptr %407, align 1, !tbaa !5
  %409 = icmp eq i8 %408, %403
  br i1 %409, label %410, label %509

410:                                              ; preds = %398
  %411 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %399, i32 -1)
  %412 = extractvalue { i32, i1 } %411, 1, !nosanitize !44
  br i1 %412, label %.loopexit33, label %413, !prof !45, !nosanitize !44

413:                                              ; preds = %410
  %414 = extractvalue { i32, i1 } %411, 0, !nosanitize !44
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i8, ptr %405, i64 %415
  %417 = load i8, ptr %416, align 1, !tbaa !5
  %418 = icmp eq i8 %417, %402
  br i1 %418, label %419, label %509

419:                                              ; preds = %413
  %420 = load i8, ptr %405, align 1, !tbaa !5
  %421 = load i8, ptr %374, align 1, !tbaa !5
  %422 = icmp eq i8 %420, %421
  br i1 %422, label %423, label %509

423:                                              ; preds = %419
  %424 = getelementptr inbounds nuw i8, ptr %405, i64 1
  %425 = load i8, ptr %424, align 1, !tbaa !5
  %426 = load i8, ptr %396, align 1, !tbaa !5
  %427 = icmp eq i8 %425, %426
  br i1 %427, label %428, label %509

428:                                              ; preds = %423
  %429 = getelementptr inbounds nuw i8, ptr %405, i64 2
  br label %430

430:                                              ; preds = %475, %428
  %431 = phi ptr [ %429, %428 ], [ %479, %475 ]
  %432 = phi i64 [ 2, %428 ], [ %476, %475 ]
  %433 = getelementptr inbounds nuw i8, ptr %374, i64 %432
  %434 = getelementptr inbounds nuw i8, ptr %433, i64 1
  %435 = load i8, ptr %434, align 1, !tbaa !5
  %436 = getelementptr inbounds nuw i8, ptr %431, i64 1
  %437 = load i8, ptr %436, align 1, !tbaa !5
  %438 = icmp eq i8 %435, %437
  br i1 %438, label %439, label %.split.loop.exit.split.loop.exit

439:                                              ; preds = %430
  %440 = getelementptr inbounds nuw i8, ptr %433, i64 2
  %441 = load i8, ptr %440, align 1, !tbaa !5
  %442 = getelementptr inbounds nuw i8, ptr %431, i64 2
  %443 = load i8, ptr %442, align 1, !tbaa !5
  %444 = icmp eq i8 %441, %443
  br i1 %444, label %445, label %.split.loop.exit.split.loop.exit164

445:                                              ; preds = %439
  %446 = getelementptr inbounds nuw i8, ptr %433, i64 3
  %447 = load i8, ptr %446, align 1, !tbaa !5
  %448 = getelementptr inbounds nuw i8, ptr %431, i64 3
  %449 = load i8, ptr %448, align 1, !tbaa !5
  %450 = icmp eq i8 %447, %449
  br i1 %450, label %451, label %.split.loop.exit.split.loop.exit166

451:                                              ; preds = %445
  %452 = getelementptr inbounds nuw i8, ptr %433, i64 4
  %453 = load i8, ptr %452, align 1, !tbaa !5
  %454 = getelementptr inbounds nuw i8, ptr %431, i64 4
  %455 = load i8, ptr %454, align 1, !tbaa !5
  %456 = icmp eq i8 %453, %455
  br i1 %456, label %457, label %.split.loop.exit.split.loop.exit168

457:                                              ; preds = %451
  %458 = getelementptr inbounds nuw i8, ptr %433, i64 5
  %459 = load i8, ptr %458, align 1, !tbaa !5
  %460 = getelementptr inbounds nuw i8, ptr %431, i64 5
  %461 = load i8, ptr %460, align 1, !tbaa !5
  %462 = icmp eq i8 %459, %461
  br i1 %462, label %463, label %.split.loop.exit.split.loop.exit170

463:                                              ; preds = %457
  %464 = getelementptr inbounds nuw i8, ptr %433, i64 6
  %465 = load i8, ptr %464, align 1, !tbaa !5
  %466 = getelementptr inbounds nuw i8, ptr %431, i64 6
  %467 = load i8, ptr %466, align 1, !tbaa !5
  %468 = icmp eq i8 %465, %467
  br i1 %468, label %469, label %.split.loop.exit.split.loop.exit172

469:                                              ; preds = %463
  %470 = getelementptr inbounds nuw i8, ptr %433, i64 7
  %471 = load i8, ptr %470, align 1, !tbaa !5
  %472 = getelementptr inbounds nuw i8, ptr %431, i64 7
  %473 = load i8, ptr %472, align 1, !tbaa !5
  %474 = icmp eq i8 %471, %473
  br i1 %474, label %475, label %.split.loop.exit.split.loop.exit174

475:                                              ; preds = %469
  %476 = add nuw nsw i64 %432, 8
  %477 = getelementptr inbounds nuw i8, ptr %374, i64 %476
  %478 = load i8, ptr %477, align 1, !tbaa !5
  %479 = getelementptr inbounds nuw i8, ptr %431, i64 8
  %480 = load i8, ptr %479, align 1, !tbaa !5
  %481 = icmp eq i8 %478, %480
  %482 = icmp samesign ult i64 %432, 250
  %483 = select i1 %481, i1 %482, i1 false
  br i1 %483, label %430, label %.split.loop.exit.split.loop.exit176, !llvm.loop !149

.split.loop.exit.split.loop.exit:                 ; preds = %430
  %484 = getelementptr inbounds nuw i8, ptr %433, i64 1
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit164:              ; preds = %439
  %485 = getelementptr inbounds nuw i8, ptr %433, i64 2
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit166:              ; preds = %445
  %486 = getelementptr inbounds nuw i8, ptr %433, i64 3
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit168:              ; preds = %451
  %487 = getelementptr inbounds nuw i8, ptr %433, i64 4
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit170:              ; preds = %457
  %488 = getelementptr inbounds nuw i8, ptr %433, i64 5
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit172:              ; preds = %463
  %489 = getelementptr inbounds nuw i8, ptr %433, i64 6
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit174:              ; preds = %469
  %490 = getelementptr inbounds nuw i8, ptr %433, i64 7
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit176:              ; preds = %475
  %491 = getelementptr inbounds nuw i8, ptr %374, i64 %476
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %.split.loop.exit.split.loop.exit176, %.split.loop.exit.split.loop.exit174, %.split.loop.exit.split.loop.exit172, %.split.loop.exit.split.loop.exit170, %.split.loop.exit.split.loop.exit168, %.split.loop.exit.split.loop.exit166, %.split.loop.exit.split.loop.exit164, %.split.loop.exit.split.loop.exit
  %492 = phi ptr [ %484, %.split.loop.exit.split.loop.exit ], [ %485, %.split.loop.exit.split.loop.exit164 ], [ %486, %.split.loop.exit.split.loop.exit166 ], [ %487, %.split.loop.exit.split.loop.exit168 ], [ %488, %.split.loop.exit.split.loop.exit170 ], [ %489, %.split.loop.exit.split.loop.exit172 ], [ %490, %.split.loop.exit.split.loop.exit174 ], [ %491, %.split.loop.exit.split.loop.exit176 ]
  %493 = ptrtoint ptr %492 to i64
  %494 = sub i64 %397, %493
  %495 = trunc i64 %494 to i32
  %496 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %495), !nosanitize !44
  %497 = extractvalue { i32, i1 } %496, 0, !nosanitize !44
  %498 = extractvalue { i32, i1 } %496, 1, !nosanitize !44
  br i1 %498, label %.loopexit33, label %499, !prof !45, !nosanitize !44

499:                                              ; preds = %.split.loop.exit
  %500 = icmp sgt i32 %497, %399
  br i1 %500, label %501, label %509

501:                                              ; preds = %499
  store i32 %401, ptr %8, align 8, !tbaa !81
  %502 = icmp slt i32 %497, %394
  br i1 %502, label %503, label %526

503:                                              ; preds = %501
  %504 = sext i32 %497 to i64
  %505 = getelementptr i8, ptr %395, i64 %504
  %506 = load i8, ptr %505, align 1, !tbaa !5
  %507 = getelementptr inbounds i8, ptr %374, i64 %504
  %508 = load i8, ptr %507, align 1, !tbaa !5
  br label %509

509:                                              ; preds = %503, %499, %423, %419, %413, %398
  %510 = phi i32 [ %399, %398 ], [ %399, %413 ], [ %399, %419 ], [ %399, %423 ], [ %497, %503 ], [ %399, %499 ]
  %511 = phi i8 [ %402, %398 ], [ %402, %413 ], [ %402, %419 ], [ %402, %423 ], [ %506, %503 ], [ %402, %499 ]
  %512 = phi i8 [ %403, %398 ], [ %403, %413 ], [ %403, %419 ], [ %403, %423 ], [ %508, %503 ], [ %403, %499 ]
  %513 = and i32 %401, %352
  %514 = zext nneg i32 %513 to i64
  %515 = getelementptr inbounds nuw [2 x i8], ptr %351, i64 %514
  %516 = load i16, ptr %515, align 2, !tbaa !60
  %517 = zext i16 %516 to i32
  %518 = icmp ult i32 %376, %517
  br i1 %518, label %519, label %526

519:                                              ; preds = %509
  %520 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %400, i32 1), !nosanitize !44
  %521 = extractvalue { i32, i1 } %520, 1, !nosanitize !44
  br i1 %521, label %522, label %523, !prof !45, !nosanitize !44

522:                                              ; preds = %519
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

523:                                              ; preds = %519
  %524 = extractvalue { i32, i1 } %520, 0, !nosanitize !44
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %398, !llvm.loop !150

526:                                              ; preds = %523, %509, %501
  %527 = phi i32 [ %510, %523 ], [ %510, %509 ], [ %497, %501 ]
  %528 = tail call i32 @llvm.umin.i32(i32 %527, i32 %329)
  store i32 %528, ptr %25, align 8, !tbaa !76
  br label %531

529:                                              ; preds = %369, %334, %326
  %530 = load i32, ptr %25, align 8, !tbaa !76
  br label %531

531:                                              ; preds = %529, %526
  %532 = phi i32 [ %530, %529 ], [ %528, %526 ]
  %533 = icmp ugt i32 %532, 2
  br i1 %533, label %534, label %700

534:                                              ; preds = %531
  %535 = trunc i32 %532 to i8
  %536 = add i8 %535, -3
  %537 = load i32, ptr %6, align 4, !tbaa !71
  %538 = load i32, ptr %8, align 8, !tbaa !81
  %539 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %537, i32 %538), !nosanitize !44
  %540 = extractvalue { i32, i1 } %539, 1, !nosanitize !44
  br i1 %540, label %541, label %542, !prof !45, !nosanitize !44

541:                                              ; preds = %534
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

542:                                              ; preds = %534
  %543 = extractvalue { i32, i1 } %539, 0, !nosanitize !44
  %544 = trunc i32 %543 to i16
  %545 = load i32, ptr %27, align 4, !tbaa !136
  %546 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %545, i32 1), !nosanitize !44
  %547 = extractvalue { i32, i1 } %546, 1, !nosanitize !44
  br i1 %547, label %548, label %549, !prof !45, !nosanitize !44

548:                                              ; preds = %542
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

549:                                              ; preds = %542
  %550 = extractvalue { i32, i1 } %546, 0, !nosanitize !44
  %551 = load ptr, ptr %26, align 8, !tbaa !43
  %552 = trunc i32 %543 to i8
  store i32 %550, ptr %27, align 4, !tbaa !136
  %553 = zext i32 %545 to i64
  %554 = getelementptr inbounds nuw i8, ptr %551, i64 %553
  store i8 %552, ptr %554, align 1, !tbaa !5
  %555 = load i32, ptr %27, align 4, !tbaa !136
  %556 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %555, i32 1), !nosanitize !44
  %557 = extractvalue { i32, i1 } %556, 1, !nosanitize !44
  br i1 %557, label %558, label %559, !prof !45, !nosanitize !44

558:                                              ; preds = %549
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

559:                                              ; preds = %549
  %560 = extractvalue { i32, i1 } %556, 0, !nosanitize !44
  %561 = load ptr, ptr %26, align 8, !tbaa !43
  %562 = lshr i32 %543, 8
  %563 = trunc i32 %562 to i8
  store i32 %560, ptr %27, align 4, !tbaa !136
  %564 = zext i32 %555 to i64
  %565 = getelementptr inbounds nuw i8, ptr %561, i64 %564
  store i8 %563, ptr %565, align 1, !tbaa !5
  %566 = load i32, ptr %27, align 4, !tbaa !136
  %567 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %566, i32 1), !nosanitize !44
  %568 = extractvalue { i32, i1 } %567, 1, !nosanitize !44
  br i1 %568, label %569, label %570, !prof !45, !nosanitize !44

569:                                              ; preds = %559
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

570:                                              ; preds = %559
  %571 = extractvalue { i32, i1 } %567, 0, !nosanitize !44
  %572 = load ptr, ptr %26, align 8, !tbaa !43
  store i32 %571, ptr %27, align 4, !tbaa !136
  %573 = zext i32 %566 to i64
  %574 = getelementptr inbounds nuw i8, ptr %572, i64 %573
  store i8 %536, ptr %574, align 1, !tbaa !5
  %575 = add i16 %544, -1
  %576 = zext i8 %536 to i64
  %577 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %576
  %578 = load i8, ptr %577, align 1, !tbaa !5
  %579 = zext i8 %578 to i64
  %580 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %579
  %581 = getelementptr inbounds nuw i8, ptr %580, i64 1028
  %582 = load i16, ptr %581, align 4, !tbaa !5
  %583 = add i16 %582, 1
  store i16 %583, ptr %581, align 4, !tbaa !5
  %584 = icmp ult i16 %575, 256
  %585 = lshr i16 %575, 7
  %586 = add nuw nsw i16 %585, 256
  %587 = select i1 %584, i16 %575, i16 %586
  %588 = zext i16 %587 to i64
  %589 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %588
  %590 = load i8, ptr %589, align 1, !tbaa !5
  %591 = zext i8 %590 to i64
  %592 = getelementptr inbounds nuw [4 x i8], ptr %30, i64 %591
  %593 = load i16, ptr %592, align 4, !tbaa !5
  %594 = add i16 %593, 1
  store i16 %594, ptr %592, align 4, !tbaa !5
  %595 = load i32, ptr %27, align 4, !tbaa !136
  %596 = load i32, ptr %29, align 8, !tbaa !46
  %597 = icmp eq i32 %595, %596
  %598 = load i32, ptr %25, align 8, !tbaa !76
  %599 = load i32, ptr %3, align 4, !tbaa !73
  %600 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %599, i32 %598), !nosanitize !44
  %601 = extractvalue { i32, i1 } %600, 1, !nosanitize !44
  br i1 %601, label %602, label %603, !prof !45, !nosanitize !44

602:                                              ; preds = %570
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

603:                                              ; preds = %570
  %604 = extractvalue { i32, i1 } %600, 0, !nosanitize !44
  store i32 %604, ptr %3, align 4, !tbaa !73
  %605 = load i32, ptr %31, align 8, !tbaa !64
  %606 = icmp ule i32 %598, %605
  %607 = icmp ugt i32 %604, 2
  %608 = select i1 %606, i1 %607, i1 false
  br i1 %608, label %609, label %674

609:                                              ; preds = %603
  %610 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %598, i32 1), !nosanitize !44
  %611 = extractvalue { i32, i1 } %610, 1, !nosanitize !44
  br i1 %611, label %612, label %613, !prof !45, !nosanitize !44

612:                                              ; preds = %609
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

613:                                              ; preds = %609
  %614 = extractvalue { i32, i1 } %610, 0, !nosanitize !44
  store i32 %614, ptr %25, align 8, !tbaa !76
  %615 = load i32, ptr %6, align 4, !tbaa !71
  %616 = xor i32 %615, -1
  %617 = add i32 %598, -2
  %umin92 = tail call i32 @llvm.umin.i32(i32 %614, i32 %617)
  %618 = freeze i32 %umin92
  %619 = add i32 %615, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %619, i32 -2)
  %620 = xor i32 %615, -1
  %621 = add i32 %umax, %620
  %umin93 = tail call i32 @llvm.umin.i32(i32 %621, i32 %616)
  %umin94 = tail call i32 @llvm.umin.i32(i32 %618, i32 %umin93)
  %622 = icmp eq i32 %umin94, %616
  %623 = icmp eq i32 %614, %umin94
  br i1 %622, label %671, label %.split95, !prof !45, !nosanitize !44

.split95:                                         ; preds = %613
  %624 = icmp eq i32 %621, %umin94
  br i1 %624, label %.split95.split.us, label %.split95.split, !prof !45, !nosanitize !44

.split95.split.us:                                ; preds = %.split95
  %625 = add i32 %615, 1
  store i32 %625, ptr %6, align 4, !tbaa !71
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split95.split:                                   ; preds = %.split95
  br i1 %623, label %.split95.split.split.us, label %.split95.split.split, !prof !45, !nosanitize !44

.split95.split.split.us:                          ; preds = %.split95.split
  %626 = add i32 %615, 1
  store i32 %626, ptr %6, align 4, !tbaa !71
  %627 = add i32 %615, 3
  %628 = load ptr, ptr %7, align 8, !tbaa !34
  %629 = load i32, ptr %15, align 8, !tbaa !78
  %630 = load i32, ptr %16, align 8, !tbaa !52
  %631 = shl i32 %629, %630
  %632 = zext i32 %627 to i64
  %633 = getelementptr inbounds nuw i8, ptr %628, i64 %632
  %634 = load i8, ptr %633, align 1, !tbaa !5
  %635 = zext i8 %634 to i32
  %636 = xor i32 %631, %635
  %637 = load i32, ptr %17, align 4, !tbaa !51
  %638 = and i32 %636, %637
  store i32 %638, ptr %15, align 8, !tbaa !78
  %639 = load ptr, ptr %12, align 8, !tbaa !37
  %640 = zext i32 %638 to i64
  %641 = getelementptr inbounds nuw [2 x i8], ptr %639, i64 %640
  %642 = load i16, ptr %641, align 2, !tbaa !60
  %643 = load ptr, ptr %13, align 8, !tbaa !35
  %644 = load i32, ptr %18, align 8, !tbaa !32
  %645 = and i32 %644, %626
  %646 = zext i32 %645 to i64
  %647 = getelementptr inbounds nuw [2 x i8], ptr %643, i64 %646
  store i16 %642, ptr %647, align 2, !tbaa !60
  %648 = trunc i32 %626 to i16
  store i16 %648, ptr %641, align 2, !tbaa !60
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split95.split.split:                             ; preds = %.split95.split
  %.pre = load ptr, ptr %7, align 8, !tbaa !34
  %.pre112 = load i32, ptr %15, align 8, !tbaa !78
  %.pre113 = load i32, ptr %16, align 8, !tbaa !52
  %.pre114 = load i32, ptr %17, align 4, !tbaa !51
  %.pre115 = load ptr, ptr %12, align 8, !tbaa !37
  %.pre116 = load ptr, ptr %13, align 8, !tbaa !35
  %.pre117 = load i32, ptr %18, align 8, !tbaa !32
  br label %649

649:                                              ; preds = %649, %.split95.split.split
  %650 = phi i32 [ %661, %649 ], [ %.pre112, %.split95.split.split ]
  %651 = phi i32 [ %669, %649 ], [ %614, %.split95.split.split ]
  %652 = phi i32 [ %653, %649 ], [ %615, %.split95.split.split ]
  %653 = add i32 %652, 1
  store i32 %653, ptr %6, align 4, !tbaa !71
  %654 = add i32 %652, 3
  %655 = shl i32 %650, %.pre113
  %656 = zext i32 %654 to i64
  %657 = getelementptr inbounds nuw i8, ptr %.pre, i64 %656
  %658 = load i8, ptr %657, align 1, !tbaa !5
  %659 = zext i8 %658 to i32
  %660 = xor i32 %655, %659
  %661 = and i32 %660, %.pre114
  store i32 %661, ptr %15, align 8, !tbaa !78
  %662 = zext i32 %661 to i64
  %663 = getelementptr inbounds nuw [2 x i8], ptr %.pre115, i64 %662
  %664 = load i16, ptr %663, align 2, !tbaa !60
  %665 = and i32 %.pre117, %653
  %666 = zext i32 %665 to i64
  %667 = getelementptr inbounds nuw [2 x i8], ptr %.pre116, i64 %666
  store i16 %664, ptr %667, align 2, !tbaa !60
  %668 = trunc i32 %653 to i16
  store i16 %668, ptr %663, align 2, !tbaa !60
  %669 = add i32 %651, -1
  store i32 %669, ptr %25, align 8, !tbaa !76
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %672, label %649, !llvm.loop !151

671:                                              ; preds = %613
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

672:                                              ; preds = %649
  %673 = add i32 %652, 2
  store i32 %673, ptr %6, align 4, !tbaa !71
  br i1 %597, label %751, label %.backedge

674:                                              ; preds = %603
  %675 = load i32, ptr %6, align 4, !tbaa !71
  %676 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %675, i32 %598), !nosanitize !44
  %677 = extractvalue { i32, i1 } %676, 1, !nosanitize !44
  br i1 %677, label %678, label %679, !prof !45, !nosanitize !44

678:                                              ; preds = %674
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

679:                                              ; preds = %674
  %680 = extractvalue { i32, i1 } %676, 0, !nosanitize !44
  store i32 %680, ptr %6, align 4, !tbaa !71
  store i32 0, ptr %25, align 8, !tbaa !76
  %681 = load ptr, ptr %7, align 8, !tbaa !34
  %682 = zext i32 %680 to i64
  %683 = getelementptr inbounds nuw i8, ptr %681, i64 %682
  %684 = load i8, ptr %683, align 1, !tbaa !5
  %685 = zext i8 %684 to i32
  store i32 %685, ptr %15, align 8, !tbaa !78
  %686 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %680, i32 1), !nosanitize !44
  %687 = extractvalue { i32, i1 } %686, 1, !nosanitize !44
  br i1 %687, label %688, label %689, !prof !45, !nosanitize !44

688:                                              ; preds = %679
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

689:                                              ; preds = %679
  %690 = extractvalue { i32, i1 } %686, 0, !nosanitize !44
  %691 = load i32, ptr %16, align 8, !tbaa !52
  %692 = shl i32 %685, %691
  %693 = zext i32 %690 to i64
  %694 = getelementptr inbounds nuw i8, ptr %681, i64 %693
  %695 = load i8, ptr %694, align 1, !tbaa !5
  %696 = zext i8 %695 to i32
  %697 = xor i32 %692, %696
  %698 = load i32, ptr %17, align 4, !tbaa !51
  %699 = and i32 %697, %698
  store i32 %699, ptr %15, align 8, !tbaa !78
  br i1 %597, label %751, label %.backedge

700:                                              ; preds = %531
  %701 = load ptr, ptr %7, align 8, !tbaa !34
  %702 = load i32, ptr %6, align 4, !tbaa !71
  %703 = zext i32 %702 to i64
  %704 = getelementptr inbounds nuw i8, ptr %701, i64 %703
  %705 = load i8, ptr %704, align 1, !tbaa !5
  %706 = load i32, ptr %27, align 4, !tbaa !136
  %707 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %706, i32 1), !nosanitize !44
  %708 = extractvalue { i32, i1 } %707, 1, !nosanitize !44
  br i1 %708, label %709, label %710, !prof !45, !nosanitize !44

709:                                              ; preds = %700
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

710:                                              ; preds = %700
  %711 = extractvalue { i32, i1 } %707, 0, !nosanitize !44
  %712 = load ptr, ptr %26, align 8, !tbaa !43
  store i32 %711, ptr %27, align 4, !tbaa !136
  %713 = zext i32 %706 to i64
  %714 = getelementptr inbounds nuw i8, ptr %712, i64 %713
  store i8 0, ptr %714, align 1, !tbaa !5
  %715 = load i32, ptr %27, align 4, !tbaa !136
  %716 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %715, i32 1), !nosanitize !44
  %717 = extractvalue { i32, i1 } %716, 1, !nosanitize !44
  br i1 %717, label %718, label %719, !prof !45, !nosanitize !44

718:                                              ; preds = %710
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

719:                                              ; preds = %710
  %720 = extractvalue { i32, i1 } %716, 0, !nosanitize !44
  %721 = load ptr, ptr %26, align 8, !tbaa !43
  store i32 %720, ptr %27, align 4, !tbaa !136
  %722 = zext i32 %715 to i64
  %723 = getelementptr inbounds nuw i8, ptr %721, i64 %722
  store i8 0, ptr %723, align 1, !tbaa !5
  %724 = load i32, ptr %27, align 4, !tbaa !136
  %725 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %724, i32 1), !nosanitize !44
  %726 = extractvalue { i32, i1 } %725, 1, !nosanitize !44
  br i1 %726, label %727, label %728, !prof !45, !nosanitize !44

727:                                              ; preds = %719
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

728:                                              ; preds = %719
  %729 = extractvalue { i32, i1 } %725, 0, !nosanitize !44
  %730 = load ptr, ptr %26, align 8, !tbaa !43
  store i32 %729, ptr %27, align 4, !tbaa !136
  %731 = zext i32 %724 to i64
  %732 = getelementptr inbounds nuw i8, ptr %730, i64 %731
  store i8 %705, ptr %732, align 1, !tbaa !5
  %733 = zext i8 %705 to i64
  %734 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %733
  %735 = load i16, ptr %734, align 4, !tbaa !5
  %736 = add i16 %735, 1
  store i16 %736, ptr %734, align 4, !tbaa !5
  %737 = load i32, ptr %27, align 4, !tbaa !136
  %738 = load i32, ptr %29, align 8, !tbaa !46
  %739 = icmp eq i32 %737, %738
  %740 = load i32, ptr %3, align 4, !tbaa !73
  %741 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %740, i32 1), !nosanitize !44
  %742 = extractvalue { i32, i1 } %741, 1, !nosanitize !44
  br i1 %742, label %.loopexit36, label %743, !prof !45, !nosanitize !44

.loopexit36:                                      ; preds = %759, %728, %895, %827
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

743:                                              ; preds = %728
  %744 = extractvalue { i32, i1 } %741, 0, !nosanitize !44
  store i32 %744, ptr %3, align 4, !tbaa !73
  %745 = load i32, ptr %6, align 4, !tbaa !71
  %746 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %745, i32 1), !nosanitize !44
  %747 = extractvalue { i32, i1 } %746, 1, !nosanitize !44
  br i1 %747, label %748, label %749, !prof !45, !nosanitize !44

748:                                              ; preds = %743
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

749:                                              ; preds = %743
  %750 = extractvalue { i32, i1 } %746, 0, !nosanitize !44
  store i32 %750, ptr %6, align 4, !tbaa !71
  br i1 %739, label %751, label %.backedge

751:                                              ; preds = %749, %689, %672
  %752 = phi i32 [ %680, %689 ], [ %673, %672 ], [ %750, %749 ]
  %753 = load i64, ptr %9, align 8, !tbaa !72
  %754 = icmp sgt i64 %753, -1
  br i1 %754, label %755, label %759

755:                                              ; preds = %751
  %756 = load ptr, ptr %7, align 8, !tbaa !34
  %757 = and i64 %753, 4294967295
  %758 = getelementptr inbounds nuw i8, ptr %756, i64 %757
  br label %759

759:                                              ; preds = %755, %751
  %760 = phi ptr [ %758, %755 ], [ null, %751 ]
  %761 = zext i32 %752 to i64
  %762 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %761, i64 %753), !nosanitize !44
  %763 = extractvalue { i64, i1 } %762, 1, !nosanitize !44
  br i1 %763, label %.loopexit36, label %764, !prof !45, !nosanitize !44

764:                                              ; preds = %759
  %765 = extractvalue { i64, i1 } %762, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %760, i64 noundef %765, i32 noundef 0) #11
  %766 = load i32, ptr %6, align 4, !tbaa !71
  %767 = zext i32 %766 to i64
  store i64 %767, ptr %9, align 8, !tbaa !72
  %768 = load ptr, ptr %0, align 8, !tbaa !19
  %769 = getelementptr inbounds nuw i8, ptr %768, i64 56
  %770 = load ptr, ptr %769, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %770) #11
  %771 = getelementptr inbounds nuw i8, ptr %770, i64 40
  %772 = load i64, ptr %771, align 8, !tbaa !55
  %773 = getelementptr inbounds nuw i8, ptr %768, i64 32
  %774 = load i32, ptr %773, align 8, !tbaa !105
  %775 = zext i32 %774 to i64
  %776 = tail call i64 @llvm.umin.i64(i64 %772, i64 %775)
  %777 = trunc nuw i64 %776 to i32
  %778 = icmp eq i64 %776, 0
  br i1 %778, label %811, label %779

779:                                              ; preds = %764
  %780 = getelementptr inbounds nuw i8, ptr %768, i64 24
  %781 = load ptr, ptr %780, align 8, !tbaa !104
  %782 = getelementptr inbounds nuw i8, ptr %770, i64 32
  %783 = load ptr, ptr %782, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %781, ptr align 1 %783, i64 %776, i1 false)
  %784 = load ptr, ptr %780, align 8, !tbaa !104
  %785 = getelementptr inbounds nuw i8, ptr %784, i64 %776
  store ptr %785, ptr %780, align 8, !tbaa !104
  %786 = load ptr, ptr %782, align 8, !tbaa !56
  %787 = getelementptr inbounds nuw i8, ptr %786, i64 %776
  store ptr %787, ptr %782, align 8, !tbaa !56
  %788 = getelementptr inbounds nuw i8, ptr %768, i64 40
  %789 = load i64, ptr %788, align 8, !tbaa !106
  %790 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %789, i64 %776), !nosanitize !44
  %791 = extractvalue { i64, i1 } %790, 1, !nosanitize !44
  br i1 %791, label %792, label %793, !prof !45, !nosanitize !44

792:                                              ; preds = %779
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

793:                                              ; preds = %779
  %794 = extractvalue { i64, i1 } %790, 0, !nosanitize !44
  store i64 %794, ptr %788, align 8, !tbaa !106
  %795 = load i32, ptr %773, align 8, !tbaa !105
  %796 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %795, i32 %777), !nosanitize !44
  %797 = extractvalue { i32, i1 } %796, 1, !nosanitize !44
  br i1 %797, label %798, label %799, !prof !45, !nosanitize !44

798:                                              ; preds = %793
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

799:                                              ; preds = %793
  %800 = extractvalue { i32, i1 } %796, 0, !nosanitize !44
  store i32 %800, ptr %773, align 8, !tbaa !105
  %801 = load i64, ptr %771, align 8, !tbaa !55
  %802 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %801, i64 %776), !nosanitize !44
  %803 = extractvalue { i64, i1 } %802, 1, !nosanitize !44
  br i1 %803, label %804, label %805, !prof !45, !nosanitize !44

804:                                              ; preds = %799
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

805:                                              ; preds = %799
  %806 = extractvalue { i64, i1 } %802, 0, !nosanitize !44
  store i64 %806, ptr %771, align 8, !tbaa !55
  %807 = icmp eq i64 %806, 0
  br i1 %807, label %808, label %811

808:                                              ; preds = %805
  %809 = getelementptr inbounds nuw i8, ptr %770, i64 16
  %810 = load ptr, ptr %809, align 8, !tbaa !40
  store ptr %810, ptr %782, align 8, !tbaa !56
  br label %811

811:                                              ; preds = %808, %805, %764
  %812 = load ptr, ptr %0, align 8, !tbaa !19
  %813 = getelementptr inbounds nuw i8, ptr %812, i64 32
  %814 = load i32, ptr %813, align 8, !tbaa !105
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %.loopexit34, label %.backedge

.backedge:                                        ; preds = %811, %749, %689, %672
  br label %32

816:                                              ; preds = %324
  %817 = load i32, ptr %6, align 4, !tbaa !71
  %818 = tail call i32 @llvm.umin.i32(i32 %817, i32 2)
  store i32 %818, ptr %10, align 4, !tbaa !74
  %819 = icmp eq i32 %1, 4
  br i1 %819, label %820, label %885

820:                                              ; preds = %816
  %821 = load i64, ptr %9, align 8, !tbaa !72
  %822 = icmp sgt i64 %821, -1
  br i1 %822, label %823, label %827

823:                                              ; preds = %820
  %824 = load ptr, ptr %7, align 8, !tbaa !34
  %825 = and i64 %821, 4294967295
  %826 = getelementptr inbounds nuw i8, ptr %824, i64 %825
  br label %827

827:                                              ; preds = %823, %820
  %828 = phi ptr [ %826, %823 ], [ null, %820 ]
  %829 = zext i32 %817 to i64
  %830 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %829, i64 %821), !nosanitize !44
  %831 = extractvalue { i64, i1 } %830, 1, !nosanitize !44
  br i1 %831, label %.loopexit36, label %832, !prof !45, !nosanitize !44

832:                                              ; preds = %827
  %833 = extractvalue { i64, i1 } %830, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %828, i64 noundef %833, i32 noundef 1) #11
  %834 = load i32, ptr %6, align 4, !tbaa !71
  %835 = zext i32 %834 to i64
  store i64 %835, ptr %9, align 8, !tbaa !72
  %836 = load ptr, ptr %0, align 8, !tbaa !19
  %837 = getelementptr inbounds nuw i8, ptr %836, i64 56
  %838 = load ptr, ptr %837, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %838) #11
  %839 = getelementptr inbounds nuw i8, ptr %838, i64 40
  %840 = load i64, ptr %839, align 8, !tbaa !55
  %841 = getelementptr inbounds nuw i8, ptr %836, i64 32
  %842 = load i32, ptr %841, align 8, !tbaa !105
  %843 = zext i32 %842 to i64
  %844 = tail call i64 @llvm.umin.i64(i64 %840, i64 %843)
  %845 = trunc nuw i64 %844 to i32
  %846 = icmp eq i64 %844, 0
  br i1 %846, label %879, label %847

847:                                              ; preds = %832
  %848 = getelementptr inbounds nuw i8, ptr %836, i64 24
  %849 = load ptr, ptr %848, align 8, !tbaa !104
  %850 = getelementptr inbounds nuw i8, ptr %838, i64 32
  %851 = load ptr, ptr %850, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %849, ptr align 1 %851, i64 %844, i1 false)
  %852 = load ptr, ptr %848, align 8, !tbaa !104
  %853 = getelementptr inbounds nuw i8, ptr %852, i64 %844
  store ptr %853, ptr %848, align 8, !tbaa !104
  %854 = load ptr, ptr %850, align 8, !tbaa !56
  %855 = getelementptr inbounds nuw i8, ptr %854, i64 %844
  store ptr %855, ptr %850, align 8, !tbaa !56
  %856 = getelementptr inbounds nuw i8, ptr %836, i64 40
  %857 = load i64, ptr %856, align 8, !tbaa !106
  %858 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %857, i64 %844), !nosanitize !44
  %859 = extractvalue { i64, i1 } %858, 1, !nosanitize !44
  br i1 %859, label %860, label %861, !prof !45, !nosanitize !44

860:                                              ; preds = %847
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

861:                                              ; preds = %847
  %862 = extractvalue { i64, i1 } %858, 0, !nosanitize !44
  store i64 %862, ptr %856, align 8, !tbaa !106
  %863 = load i32, ptr %841, align 8, !tbaa !105
  %864 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %863, i32 %845), !nosanitize !44
  %865 = extractvalue { i32, i1 } %864, 1, !nosanitize !44
  br i1 %865, label %866, label %867, !prof !45, !nosanitize !44

866:                                              ; preds = %861
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

867:                                              ; preds = %861
  %868 = extractvalue { i32, i1 } %864, 0, !nosanitize !44
  store i32 %868, ptr %841, align 8, !tbaa !105
  %869 = load i64, ptr %839, align 8, !tbaa !55
  %870 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %869, i64 %844), !nosanitize !44
  %871 = extractvalue { i64, i1 } %870, 1, !nosanitize !44
  br i1 %871, label %872, label %873, !prof !45, !nosanitize !44

872:                                              ; preds = %867
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

873:                                              ; preds = %867
  %874 = extractvalue { i64, i1 } %870, 0, !nosanitize !44
  store i64 %874, ptr %839, align 8, !tbaa !55
  %875 = icmp eq i64 %874, 0
  br i1 %875, label %876, label %879

876:                                              ; preds = %873
  %877 = getelementptr inbounds nuw i8, ptr %838, i64 16
  %878 = load ptr, ptr %877, align 8, !tbaa !40
  store ptr %878, ptr %850, align 8, !tbaa !56
  br label %879

879:                                              ; preds = %876, %873, %832
  %880 = load ptr, ptr %0, align 8, !tbaa !19
  %881 = getelementptr inbounds nuw i8, ptr %880, i64 32
  %882 = load i32, ptr %881, align 8, !tbaa !105
  %883 = icmp eq i32 %882, 0
  %884 = select i1 %883, i32 2, i32 3
  br label %.loopexit34

885:                                              ; preds = %816
  %886 = load i32, ptr %27, align 4, !tbaa !136
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %952, label %888

888:                                              ; preds = %885
  %889 = load i64, ptr %9, align 8, !tbaa !72
  %890 = icmp sgt i64 %889, -1
  br i1 %890, label %891, label %895

891:                                              ; preds = %888
  %892 = load ptr, ptr %7, align 8, !tbaa !34
  %893 = and i64 %889, 4294967295
  %894 = getelementptr inbounds nuw i8, ptr %892, i64 %893
  br label %895

895:                                              ; preds = %891, %888
  %896 = phi ptr [ %894, %891 ], [ null, %888 ]
  %897 = zext i32 %817 to i64
  %898 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %897, i64 %889), !nosanitize !44
  %899 = extractvalue { i64, i1 } %898, 1, !nosanitize !44
  br i1 %899, label %.loopexit36, label %900, !prof !45, !nosanitize !44

900:                                              ; preds = %895
  %901 = extractvalue { i64, i1 } %898, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %896, i64 noundef %901, i32 noundef 0) #11
  %902 = load i32, ptr %6, align 4, !tbaa !71
  %903 = zext i32 %902 to i64
  store i64 %903, ptr %9, align 8, !tbaa !72
  %904 = load ptr, ptr %0, align 8, !tbaa !19
  %905 = getelementptr inbounds nuw i8, ptr %904, i64 56
  %906 = load ptr, ptr %905, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %906) #11
  %907 = getelementptr inbounds nuw i8, ptr %906, i64 40
  %908 = load i64, ptr %907, align 8, !tbaa !55
  %909 = getelementptr inbounds nuw i8, ptr %904, i64 32
  %910 = load i32, ptr %909, align 8, !tbaa !105
  %911 = zext i32 %910 to i64
  %912 = tail call i64 @llvm.umin.i64(i64 %908, i64 %911)
  %913 = trunc nuw i64 %912 to i32
  %914 = icmp eq i64 %912, 0
  br i1 %914, label %947, label %915

915:                                              ; preds = %900
  %916 = getelementptr inbounds nuw i8, ptr %904, i64 24
  %917 = load ptr, ptr %916, align 8, !tbaa !104
  %918 = getelementptr inbounds nuw i8, ptr %906, i64 32
  %919 = load ptr, ptr %918, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %917, ptr align 1 %919, i64 %912, i1 false)
  %920 = load ptr, ptr %916, align 8, !tbaa !104
  %921 = getelementptr inbounds nuw i8, ptr %920, i64 %912
  store ptr %921, ptr %916, align 8, !tbaa !104
  %922 = load ptr, ptr %918, align 8, !tbaa !56
  %923 = getelementptr inbounds nuw i8, ptr %922, i64 %912
  store ptr %923, ptr %918, align 8, !tbaa !56
  %924 = getelementptr inbounds nuw i8, ptr %904, i64 40
  %925 = load i64, ptr %924, align 8, !tbaa !106
  %926 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %925, i64 %912), !nosanitize !44
  %927 = extractvalue { i64, i1 } %926, 1, !nosanitize !44
  br i1 %927, label %928, label %929, !prof !45, !nosanitize !44

928:                                              ; preds = %915
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

929:                                              ; preds = %915
  %930 = extractvalue { i64, i1 } %926, 0, !nosanitize !44
  store i64 %930, ptr %924, align 8, !tbaa !106
  %931 = load i32, ptr %909, align 8, !tbaa !105
  %932 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %931, i32 %913), !nosanitize !44
  %933 = extractvalue { i32, i1 } %932, 1, !nosanitize !44
  br i1 %933, label %934, label %935, !prof !45, !nosanitize !44

934:                                              ; preds = %929
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

935:                                              ; preds = %929
  %936 = extractvalue { i32, i1 } %932, 0, !nosanitize !44
  store i32 %936, ptr %909, align 8, !tbaa !105
  %937 = load i64, ptr %907, align 8, !tbaa !55
  %938 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %937, i64 %912), !nosanitize !44
  %939 = extractvalue { i64, i1 } %938, 1, !nosanitize !44
  br i1 %939, label %940, label %941, !prof !45, !nosanitize !44

940:                                              ; preds = %935
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

941:                                              ; preds = %935
  %942 = extractvalue { i64, i1 } %938, 0, !nosanitize !44
  store i64 %942, ptr %907, align 8, !tbaa !55
  %943 = icmp eq i64 %942, 0
  br i1 %943, label %944, label %947

944:                                              ; preds = %941
  %945 = getelementptr inbounds nuw i8, ptr %906, i64 16
  %946 = load ptr, ptr %945, align 8, !tbaa !40
  store ptr %946, ptr %918, align 8, !tbaa !56
  br label %947

947:                                              ; preds = %944, %941, %900
  %948 = load ptr, ptr %0, align 8, !tbaa !19
  %949 = getelementptr inbounds nuw i8, ptr %948, i64 32
  %950 = load i32, ptr %949, align 8, !tbaa !105
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %.loopexit34, label %952

952:                                              ; preds = %947, %885
  br label %.loopexit34

.loopexit34:                                      ; preds = %811, %320, %952, %947, %879
  %953 = phi i32 [ 1, %952 ], [ %884, %879 ], [ 0, %947 ], [ 0, %320 ], [ 0, %811 ]
  ret i32 %953
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
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 168
  br label %35

35:                                               ; preds = %.backedge, %2
  %36 = load i32, ptr %3, align 4, !tbaa !73
  %37 = icmp ult i32 %36, 262
  br i1 %37, label %38, label %334

38:                                               ; preds = %35
  %39 = load i32, ptr %4, align 8, !tbaa !31
  %40 = zext i32 %39 to i64
  br label %41

41:                                               ; preds = %274, %38
  %42 = phi i32 [ %202, %274 ], [ %36, %38 ]
  %43 = load i64, ptr %5, align 8, !tbaa !59
  %44 = zext nneg i32 %42 to i64
  %45 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %43, i64 %44), !nosanitize !44
  %46 = extractvalue { i64, i1 } %45, 1, !nosanitize !44
  br i1 %46, label %47, label %48, !prof !45, !nosanitize !44

47:                                               ; preds = %41
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

48:                                               ; preds = %41
  %49 = extractvalue { i64, i1 } %45, 0, !nosanitize !44
  %50 = load i32, ptr %6, align 4, !tbaa !71
  %51 = zext i32 %50 to i64
  %52 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %49, i64 %51), !nosanitize !44
  %53 = extractvalue { i64, i1 } %52, 1, !nosanitize !44
  br i1 %53, label %54, label %55, !prof !45, !nosanitize !44

54:                                               ; preds = %48
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

55:                                               ; preds = %48
  %56 = extractvalue { i64, i1 } %52, 0, !nosanitize !44
  %57 = trunc i64 %56 to i32
  %58 = load i32, ptr %4, align 8, !tbaa !31
  %59 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %58, i32 262), !nosanitize !44
  %60 = extractvalue { i32, i1 } %59, 1, !nosanitize !44
  br i1 %60, label %61, label %62, !prof !45, !nosanitize !44

61:                                               ; preds = %55
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

62:                                               ; preds = %55
  %63 = extractvalue { i32, i1 } %59, 0, !nosanitize !44
  %64 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %39, i32 %63), !nosanitize !44
  %65 = extractvalue { i32, i1 } %64, 1, !nosanitize !44
  br i1 %65, label %66, label %67, !prof !45, !nosanitize !44

66:                                               ; preds = %62
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

67:                                               ; preds = %62
  %68 = extractvalue { i32, i1 } %64, 0, !nosanitize !44
  %69 = icmp ult i32 %50, %68
  br i1 %69, label %153, label %70

70:                                               ; preds = %67
  %71 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %39, i32 %57), !nosanitize !44
  %72 = extractvalue { i32, i1 } %71, 1, !nosanitize !44
  br i1 %72, label %73, label %74, !prof !45, !nosanitize !44

73:                                               ; preds = %70
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

74:                                               ; preds = %70
  %75 = extractvalue { i32, i1 } %71, 0, !nosanitize !44
  %76 = load ptr, ptr %7, align 8, !tbaa !34
  %77 = getelementptr inbounds nuw i8, ptr %76, i64 %40
  %78 = zext i32 %75 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %76, ptr align 1 %77, i64 %78, i1 false)
  %79 = load i32, ptr %8, align 8, !tbaa !81
  %80 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %79, i32 %39), !nosanitize !44
  %81 = extractvalue { i32, i1 } %80, 1, !nosanitize !44
  br i1 %81, label %82, label %83, !prof !45, !nosanitize !44

82:                                               ; preds = %74
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

83:                                               ; preds = %74
  %84 = extractvalue { i32, i1 } %80, 0, !nosanitize !44
  store i32 %84, ptr %8, align 8, !tbaa !81
  %85 = load i32, ptr %6, align 4, !tbaa !71
  %86 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %85, i32 %39), !nosanitize !44
  %87 = extractvalue { i32, i1 } %86, 1, !nosanitize !44
  br i1 %87, label %88, label %89, !prof !45, !nosanitize !44

88:                                               ; preds = %89, %83
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

89:                                               ; preds = %83
  %90 = extractvalue { i32, i1 } %86, 0, !nosanitize !44
  store i32 %90, ptr %6, align 4, !tbaa !71
  %91 = load i64, ptr %9, align 8, !tbaa !72
  %92 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %91, i64 %40), !nosanitize !44
  %93 = extractvalue { i64, i1 } %92, 1, !nosanitize !44
  br i1 %93, label %88, label %94, !prof !45, !nosanitize !44

94:                                               ; preds = %89
  %95 = extractvalue { i64, i1 } %92, 0, !nosanitize !44
  store i64 %95, ptr %9, align 8, !tbaa !72
  %96 = load i32, ptr %10, align 4, !tbaa !74
  %97 = icmp ugt i32 %96, %90
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 %90, ptr %10, align 4, !tbaa !74
  br label %99

99:                                               ; preds = %98, %94
  %100 = load i32, ptr %4, align 8, !tbaa !31
  %101 = load i32, ptr %11, align 4, !tbaa !36
  %102 = load ptr, ptr %12, align 8, !tbaa !37
  %103 = zext i32 %101 to i64
  %104 = getelementptr inbounds nuw [2 x i8], ptr %102, i64 %103
  %.not.not = icmp eq i32 %101, 0
  br i1 %.not.not, label %.split.us, label %.split.preheader, !prof !45, !nosanitize !44

.split.preheader:                                 ; preds = %99
  %min.iters.check196 = icmp ult i32 %101, 8
  br i1 %min.iters.check196, label %.split.preheader218, label %vector.ph197

vector.ph197:                                     ; preds = %.split.preheader
  %n.vec199 = and i64 %103, 4294967288
  %105 = mul nsw i64 %n.vec199, -2
  %106 = getelementptr i8, ptr %104, i64 %105
  %.cast200 = trunc nuw i64 %n.vec199 to i32
  %107 = sub i32 %101, %.cast200
  %broadcast.splatinsert201 = insertelement <8 x i32> poison, i32 %100, i64 0
  %108 = shufflevector <8 x i32> %broadcast.splatinsert201, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph197
  %index204 = phi i64 [ 0, %vector.ph197 ], [ %index.next210, %vector.body203 ]
  %offset.idx205 = mul i64 %index204, -2
  %next.gep206 = getelementptr i8, ptr %104, i64 %offset.idx205
  %109 = getelementptr inbounds i8, ptr %next.gep206, i64 -16
  %wide.load207 = load <8 x i16>, ptr %109, align 2, !tbaa !60
  %110 = zext <8 x i16> %wide.load207 to <8 x i32>
  %111 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %110, <8 x i32> %108)
  %reverse209 = trunc nuw <8 x i32> %111 to <8 x i16>
  store <8 x i16> %reverse209, ptr %109, align 2, !tbaa !60
  %index.next210 = add nuw i64 %index204, 8
  %112 = icmp eq i64 %index.next210, %n.vec199
  br i1 %112, label %middle.block211, label %vector.body203, !llvm.loop !152

middle.block211:                                  ; preds = %vector.body203
  %cmp.n212 = icmp eq i64 %n.vec199, %103
  br i1 %cmp.n212, label %.loopexit216, label %.split.preheader218

.split.preheader218:                              ; preds = %.split.preheader, %middle.block211
  %.ph219 = phi ptr [ %104, %.split.preheader ], [ %106, %middle.block211 ]
  %.ph220 = phi i32 [ %101, %.split.preheader ], [ %107, %middle.block211 ]
  br label %.split

.split.us:                                        ; preds = %99
  %113 = getelementptr inbounds i8, ptr %104, i64 -2
  %114 = load i16, ptr %113, align 2, !tbaa !60
  %115 = zext i16 %114 to i32
  %116 = tail call i32 @llvm.usub.sat.i32(i32 %115, i32 %100)
  %117 = trunc nuw i32 %116 to i16
  store i16 %117, ptr %113, align 2, !tbaa !60
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split:                                           ; preds = %.split.preheader218, %.split
  %118 = phi ptr [ %120, %.split ], [ %.ph219, %.split.preheader218 ]
  %119 = phi i32 [ %125, %.split ], [ %.ph220, %.split.preheader218 ]
  %120 = getelementptr inbounds i8, ptr %118, i64 -2
  %121 = load i16, ptr %120, align 2, !tbaa !60
  %122 = zext i16 %121 to i32
  %123 = tail call i32 @llvm.usub.sat.i32(i32 %122, i32 %100)
  %124 = trunc nuw i32 %123 to i16
  store i16 %124, ptr %120, align 2, !tbaa !60
  %125 = add i32 %119, -1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %.loopexit216, label %.split, !llvm.loop !153

.loopexit216:                                     ; preds = %.split, %middle.block211
  %.not.not143 = icmp eq i32 %100, 0
  br i1 %.not.not143, label %.split92.us, label %.split92, !prof !45, !nosanitize !44

.split92.us:                                      ; preds = %.loopexit216
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

.split92:                                         ; preds = %.loopexit216
  %127 = load ptr, ptr %13, align 8, !tbaa !35
  %128 = zext i32 %100 to i64
  %129 = getelementptr inbounds nuw [2 x i8], ptr %127, i64 %128
  %min.iters.check = icmp ult i32 %100, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.split92
  %n.vec = and i64 %128, 4294967288
  %130 = mul nsw i64 %n.vec, -2
  %131 = getelementptr i8, ptr %129, i64 %130
  %.cast = trunc nuw i64 %n.vec to i32
  %132 = sub i32 %100, %.cast
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %100, i64 0
  %133 = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = mul i64 %index, -2
  %next.gep = getelementptr i8, ptr %129, i64 %offset.idx
  %134 = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %wide.load = load <8 x i16>, ptr %134, align 2, !tbaa !60
  %135 = zext <8 x i16> %wide.load to <8 x i32>
  %136 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %135, <8 x i32> %133)
  %reverse193 = trunc nuw <8 x i32> %136 to <8 x i16>
  store <8 x i16> %reverse193, ptr %134, align 2, !tbaa !60
  %index.next = add nuw i64 %index, 8
  %137 = icmp eq i64 %index.next, %n.vec
  br i1 %137, label %middle.block, label %vector.body, !llvm.loop !154

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %128
  br i1 %cmp.n, label %.loopexit215, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.split92, %middle.block
  %.ph = phi ptr [ %129, %.split92 ], [ %131, %middle.block ]
  %.ph217 = phi i32 [ %100, %.split92 ], [ %132, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %138 = phi ptr [ %140, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %139 = phi i32 [ %145, %scalar.ph ], [ %.ph217, %scalar.ph.preheader ]
  %140 = getelementptr inbounds i8, ptr %138, i64 -2
  %141 = load i16, ptr %140, align 2, !tbaa !60
  %142 = zext i16 %141 to i32
  %143 = tail call i32 @llvm.usub.sat.i32(i32 %142, i32 %100)
  %144 = trunc nuw i32 %143 to i16
  store i16 %144, ptr %140, align 2, !tbaa !60
  %145 = add i32 %139, -1
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %.loopexit215, label %scalar.ph, !llvm.loop !155

.loopexit215:                                     ; preds = %scalar.ph, %middle.block
  store i32 1, ptr %14, align 8, !tbaa !61
  %147 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %57, i32 %39), !nosanitize !44
  %148 = extractvalue { i32, i1 } %147, 1, !nosanitize !44
  br i1 %148, label %149, label %150, !prof !45, !nosanitize !44

149:                                              ; preds = %.loopexit215
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

150:                                              ; preds = %.loopexit215
  %151 = extractvalue { i32, i1 } %147, 0, !nosanitize !44
  %152 = load i32, ptr %3, align 4, !tbaa !73
  br label %153

153:                                              ; preds = %150, %67
  %154 = phi i32 [ %152, %150 ], [ %42, %67 ]
  %155 = phi i32 [ %90, %150 ], [ %50, %67 ]
  %156 = phi i32 [ %151, %150 ], [ %57, %67 ]
  %157 = load ptr, ptr %0, align 8, !tbaa !19
  %158 = getelementptr inbounds nuw i8, ptr %157, i64 8
  %159 = load i32, ptr %158, align 8, !tbaa !79
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %279, label %161

161:                                              ; preds = %153
  %162 = load ptr, ptr %7, align 8, !tbaa !34
  %163 = zext i32 %155 to i64
  %164 = getelementptr inbounds nuw i8, ptr %162, i64 %163
  %165 = zext i32 %154 to i64
  %166 = getelementptr inbounds nuw i8, ptr %164, i64 %165
  %167 = tail call i32 @llvm.umin.i32(i32 %159, i32 %156)
  %168 = icmp eq i32 %156, 0
  br i1 %168, label %196, label %169

169:                                              ; preds = %161
  %170 = sub i32 %159, %167
  store i32 %170, ptr %158, align 8, !tbaa !79
  %171 = load ptr, ptr %157, align 8, !tbaa !80
  %172 = zext i32 %167 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %166, ptr align 1 %171, i64 %172, i1 false)
  %173 = getelementptr inbounds nuw i8, ptr %157, i64 56
  %174 = load ptr, ptr %173, align 8, !tbaa !18
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 48
  %176 = load i32, ptr %175, align 8, !tbaa !29
  switch i32 %176, label %185 [
    i32 1, label %177
    i32 2, label %181
  ]

177:                                              ; preds = %169
  %178 = getelementptr inbounds nuw i8, ptr %157, i64 96
  %179 = load i64, ptr %178, align 8, !tbaa !57
  %180 = tail call i64 @adler32(i64 noundef %179, ptr noundef %166, i32 noundef %167) #11
  store i64 %180, ptr %178, align 8, !tbaa !57
  br label %185

181:                                              ; preds = %169
  %182 = getelementptr inbounds nuw i8, ptr %157, i64 96
  %183 = load i64, ptr %182, align 8, !tbaa !57
  %184 = tail call i64 @crc32(i64 noundef %183, ptr noundef %166, i32 noundef %167) #11
  store i64 %184, ptr %182, align 8, !tbaa !57
  br label %185

185:                                              ; preds = %181, %177, %169
  %186 = load ptr, ptr %157, align 8, !tbaa !80
  %187 = getelementptr inbounds nuw i8, ptr %186, i64 %172
  store ptr %187, ptr %157, align 8, !tbaa !80
  %188 = getelementptr inbounds nuw i8, ptr %157, i64 16
  %189 = load i64, ptr %188, align 8, !tbaa !53
  %190 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %189, i64 %172), !nosanitize !44
  %191 = extractvalue { i64, i1 } %190, 1, !nosanitize !44
  br i1 %191, label %192, label %193, !prof !45, !nosanitize !44

192:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

193:                                              ; preds = %185
  %194 = extractvalue { i64, i1 } %190, 0, !nosanitize !44
  store i64 %194, ptr %188, align 8, !tbaa !53
  %195 = load i32, ptr %3, align 4, !tbaa !73
  br label %196

196:                                              ; preds = %193, %161
  %197 = phi i32 [ %154, %161 ], [ %195, %193 ]
  %198 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %197, i32 %167), !nosanitize !44
  %199 = extractvalue { i32, i1 } %198, 1, !nosanitize !44
  br i1 %199, label %200, label %201, !prof !45, !nosanitize !44

200:                                              ; preds = %196
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

201:                                              ; preds = %196
  %202 = extractvalue { i32, i1 } %198, 0, !nosanitize !44
  store i32 %202, ptr %3, align 4, !tbaa !73
  %203 = load i32, ptr %10, align 4, !tbaa !74
  %204 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %202, i32 %203), !nosanitize !44
  %205 = extractvalue { i32, i1 } %204, 1, !nosanitize !44
  br i1 %205, label %206, label %207, !prof !45, !nosanitize !44

206:                                              ; preds = %201
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

207:                                              ; preds = %201
  %208 = extractvalue { i32, i1 } %204, 0, !nosanitize !44
  %209 = icmp ugt i32 %208, 2
  br i1 %209, label %210, label %.loopexit

210:                                              ; preds = %207
  %211 = load i32, ptr %6, align 4, !tbaa !71
  %212 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %211, i32 %203), !nosanitize !44
  %213 = extractvalue { i32, i1 } %212, 0, !nosanitize !44
  %214 = extractvalue { i32, i1 } %212, 1, !nosanitize !44
  br i1 %214, label %215, label %216, !prof !45, !nosanitize !44

215:                                              ; preds = %210
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

216:                                              ; preds = %210
  %217 = load ptr, ptr %7, align 8, !tbaa !34
  %218 = zext i32 %213 to i64
  %219 = getelementptr inbounds nuw i8, ptr %217, i64 %218
  %220 = load i8, ptr %219, align 1, !tbaa !5
  %221 = zext i8 %220 to i32
  store i32 %221, ptr %15, align 8, !tbaa !78
  %222 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %213, i32 1), !nosanitize !44
  %223 = extractvalue { i32, i1 } %222, 1, !nosanitize !44
  br i1 %223, label %224, label %225, !prof !45, !nosanitize !44

224:                                              ; preds = %216
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

225:                                              ; preds = %216
  %226 = extractvalue { i32, i1 } %222, 0, !nosanitize !44
  %227 = load i32, ptr %16, align 8, !tbaa !52
  %228 = shl i32 %221, %227
  %229 = zext i32 %226 to i64
  %230 = getelementptr inbounds nuw i8, ptr %217, i64 %229
  %231 = load i8, ptr %230, align 1, !tbaa !5
  %232 = zext i8 %231 to i32
  %233 = xor i32 %228, %232
  %234 = load i32, ptr %17, align 4, !tbaa !51
  %235 = and i32 %233, %234
  store i32 %235, ptr %15, align 8, !tbaa !78
  br label %236

236:                                              ; preds = %269, %225
  %237 = phi i32 [ %235, %225 ], [ %254, %269 ]
  %238 = phi i32 [ %203, %225 ], [ %265, %269 ]
  %239 = phi i32 [ %213, %225 ], [ %270, %269 ]
  %240 = icmp eq i32 %238, 0
  br i1 %240, label %.loopexit, label %241

241:                                              ; preds = %236
  %242 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %239, i32 3), !nosanitize !44
  %243 = extractvalue { i32, i1 } %242, 1, !nosanitize !44
  br i1 %243, label %244, label %245, !prof !45, !nosanitize !44

244:                                              ; preds = %241
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

245:                                              ; preds = %241
  %246 = shl i32 %237, %227
  %247 = extractvalue { i32, i1 } %242, 0, !nosanitize !44
  %248 = add i32 %247, -1
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds nuw i8, ptr %217, i64 %249
  %251 = load i8, ptr %250, align 1, !tbaa !5
  %252 = zext i8 %251 to i32
  %253 = xor i32 %246, %252
  %254 = and i32 %253, %234
  store i32 %254, ptr %15, align 8, !tbaa !78
  %255 = load ptr, ptr %12, align 8, !tbaa !37
  %256 = zext i32 %254 to i64
  %257 = getelementptr inbounds nuw [2 x i8], ptr %255, i64 %256
  %258 = load i16, ptr %257, align 2, !tbaa !60
  %259 = load ptr, ptr %13, align 8, !tbaa !35
  %260 = load i32, ptr %18, align 8, !tbaa !32
  %261 = and i32 %260, %239
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds nuw [2 x i8], ptr %259, i64 %262
  store i16 %258, ptr %263, align 2, !tbaa !60
  %264 = trunc i32 %239 to i16
  store i16 %264, ptr %257, align 2, !tbaa !60
  %265 = add i32 %238, -1
  store i32 %265, ptr %10, align 4, !tbaa !74
  %266 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %202, i32 %265), !nosanitize !44
  %267 = extractvalue { i32, i1 } %266, 1, !nosanitize !44
  br i1 %267, label %268, label %269, !prof !45, !nosanitize !44

268:                                              ; preds = %245
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

269:                                              ; preds = %245
  %270 = add nuw i32 %239, 1
  %271 = extractvalue { i32, i1 } %266, 0, !nosanitize !44
  %272 = icmp ult i32 %271, 3
  br i1 %272, label %.loopexit, label %236, !llvm.loop !89

.loopexit:                                        ; preds = %269, %236, %207
  %273 = icmp ult i32 %202, 262
  br i1 %273, label %274, label %279

274:                                              ; preds = %.loopexit
  %275 = load ptr, ptr %0, align 8, !tbaa !19
  %276 = getelementptr inbounds nuw i8, ptr %275, i64 8
  %277 = load i32, ptr %276, align 8, !tbaa !79
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %41, !llvm.loop !90

279:                                              ; preds = %274, %.loopexit, %153
  %280 = phi i32 [ %202, %274 ], [ %202, %.loopexit ], [ %154, %153 ]
  %281 = load i64, ptr %19, align 8, !tbaa !38
  %282 = load i64, ptr %5, align 8, !tbaa !59
  %283 = icmp ult i64 %281, %282
  br i1 %283, label %284, label %323

284:                                              ; preds = %279
  %285 = load i32, ptr %6, align 4, !tbaa !71
  %286 = zext i32 %285 to i64
  %287 = zext i32 %280 to i64
  %288 = add nuw nsw i64 %286, %287
  %289 = icmp ult i64 %281, %288
  br i1 %289, label %290, label %300

290:                                              ; preds = %284
  %291 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %282, i64 %288), !nosanitize !44
  %292 = extractvalue { i64, i1 } %291, 1, !nosanitize !44
  br i1 %292, label %293, label %294, !prof !45, !nosanitize !44

293:                                              ; preds = %290
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

294:                                              ; preds = %290
  %295 = extractvalue { i64, i1 } %291, 0, !nosanitize !44
  %296 = tail call i64 @llvm.umin.i64(i64 %295, i64 258)
  %297 = load ptr, ptr %7, align 8, !tbaa !34
  %298 = getelementptr inbounds nuw i8, ptr %297, i64 %288
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %298, i8 0, i64 %296, i1 false)
  %299 = add nuw nsw i64 %296, %288
  br label %320

300:                                              ; preds = %284
  %301 = add nuw nsw i64 %288, 258
  %302 = icmp ult i64 %281, %301
  br i1 %302, label %303, label %323

303:                                              ; preds = %300
  %304 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %282, i64 %281), !nosanitize !44
  %305 = extractvalue { i64, i1 } %304, 1, !nosanitize !44
  br i1 %305, label %306, label %307, !prof !45, !nosanitize !44

306:                                              ; preds = %303
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

307:                                              ; preds = %303
  %308 = sub nuw nsw i64 %301, %281
  %309 = extractvalue { i64, i1 } %304, 0, !nosanitize !44
  %310 = tail call i64 @llvm.umin.i64(i64 %308, i64 %309)
  %311 = load ptr, ptr %7, align 8, !tbaa !34
  %312 = getelementptr inbounds nuw i8, ptr %311, i64 %281
  %313 = and i64 %310, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %312, i8 0, i64 %313, i1 false)
  %314 = load i64, ptr %19, align 8, !tbaa !38
  %315 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %314, i64 %310), !nosanitize !44
  %316 = extractvalue { i64, i1 } %315, 1, !nosanitize !44
  br i1 %316, label %317, label %318, !prof !45, !nosanitize !44

317:                                              ; preds = %307
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

318:                                              ; preds = %307
  %319 = extractvalue { i64, i1 } %315, 0, !nosanitize !44
  br label %320

320:                                              ; preds = %318, %294
  %321 = phi i64 [ %299, %294 ], [ %319, %318 ]
  store i64 %321, ptr %19, align 8, !tbaa !38
  %322 = load i32, ptr %3, align 4, !tbaa !73
  br label %323

323:                                              ; preds = %320, %300, %279
  %324 = phi i32 [ %280, %279 ], [ %280, %300 ], [ %322, %320 ]
  %325 = icmp ult i32 %324, 262
  %326 = and i1 %20, %325
  br i1 %326, label %.loopexit41, label %327

327:                                              ; preds = %323
  %328 = icmp eq i32 %324, 0
  br i1 %328, label %907, label %329

329:                                              ; preds = %327
  %330 = icmp ugt i32 %324, 2
  br i1 %330, label %334, label %331

331:                                              ; preds = %329
  %332 = load i32, ptr %21, align 8, !tbaa !76
  store i32 %332, ptr %22, align 8, !tbaa !75
  %333 = load i32, ptr %8, align 8, !tbaa !81
  store i32 %333, ptr %23, align 4, !tbaa !156
  br label %555

334:                                              ; preds = %329, %35
  %335 = phi i32 [ %324, %329 ], [ %36, %35 ]
  %336 = load i32, ptr %6, align 4, !tbaa !71
  %337 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %336, i32 2), !nosanitize !44
  %338 = extractvalue { i32, i1 } %337, 1, !nosanitize !44
  br i1 %338, label %339, label %340, !prof !45, !nosanitize !44

339:                                              ; preds = %334
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

340:                                              ; preds = %334
  %341 = extractvalue { i32, i1 } %337, 0, !nosanitize !44
  %342 = load ptr, ptr %7, align 8, !tbaa !34
  %343 = load i32, ptr %15, align 8, !tbaa !78
  %344 = load i32, ptr %16, align 8, !tbaa !52
  %345 = shl i32 %343, %344
  %346 = zext i32 %341 to i64
  %347 = getelementptr inbounds nuw i8, ptr %342, i64 %346
  %348 = load i8, ptr %347, align 1, !tbaa !5
  %349 = zext i8 %348 to i32
  %350 = xor i32 %345, %349
  %351 = load i32, ptr %17, align 4, !tbaa !51
  %352 = and i32 %350, %351
  store i32 %352, ptr %15, align 8, !tbaa !78
  %353 = load ptr, ptr %12, align 8, !tbaa !37
  %354 = zext i32 %352 to i64
  %355 = getelementptr inbounds nuw [2 x i8], ptr %353, i64 %354
  %356 = load i16, ptr %355, align 2, !tbaa !60
  %357 = load ptr, ptr %13, align 8, !tbaa !35
  %358 = load i32, ptr %18, align 8, !tbaa !32
  %359 = and i32 %358, %336
  %360 = zext i32 %359 to i64
  %361 = getelementptr inbounds nuw [2 x i8], ptr %357, i64 %360
  store i16 %356, ptr %361, align 2, !tbaa !60
  %362 = zext i16 %356 to i32
  %363 = trunc i32 %336 to i16
  store i16 %363, ptr %355, align 2, !tbaa !60
  %364 = load i32, ptr %21, align 8, !tbaa !76
  store i32 %364, ptr %22, align 8, !tbaa !75
  %365 = load i32, ptr %8, align 8, !tbaa !81
  store i32 %365, ptr %23, align 4, !tbaa !156
  store i32 2, ptr %21, align 8, !tbaa !76
  %366 = icmp eq i16 %356, 0
  br i1 %366, label %559, label %367

367:                                              ; preds = %340
  %368 = load i32, ptr %24, align 8, !tbaa !64
  %369 = icmp ult i32 %364, %368
  br i1 %369, label %370, label %559

370:                                              ; preds = %367
  %371 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %336, i32 %362), !nosanitize !44
  %372 = extractvalue { i32, i1 } %371, 0, !nosanitize !44
  %373 = extractvalue { i32, i1 } %371, 1, !nosanitize !44
  br i1 %373, label %374, label %375, !prof !45, !nosanitize !44

374:                                              ; preds = %370
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

375:                                              ; preds = %370
  %376 = load i32, ptr %4, align 8, !tbaa !31
  %377 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %376, i32 262), !nosanitize !44
  %378 = extractvalue { i32, i1 } %377, 1, !nosanitize !44
  br i1 %378, label %379, label %380, !prof !45, !nosanitize !44

379:                                              ; preds = %375
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

380:                                              ; preds = %375
  %381 = extractvalue { i32, i1 } %377, 0, !nosanitize !44
  %382 = icmp ugt i32 %372, %381
  br i1 %382, label %559, label %383

383:                                              ; preds = %380
  %384 = zext i32 %336 to i64
  %385 = getelementptr inbounds nuw i8, ptr %342, i64 %384
  %386 = tail call i32 @llvm.usub.sat.i32(i32 %336, i32 %381)
  %387 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %364, i32 -1)
  %388 = extractvalue { i32, i1 } %387, 1, !nosanitize !44
  br i1 %388, label %.loopexit40, label %389, !prof !45, !nosanitize !44

.loopexit40:                                      ; preds = %383, %.split.loop.exit, %421
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

389:                                              ; preds = %383
  %390 = load i32, ptr %25, align 8, !tbaa !68
  %391 = load i32, ptr %26, align 4, !tbaa !70
  %392 = getelementptr inbounds nuw i8, ptr %385, i64 258
  %393 = extractvalue { i32, i1 } %387, 0, !nosanitize !44
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i8, ptr %385, i64 %394
  %396 = load i8, ptr %395, align 1, !tbaa !5
  %397 = sext i32 %364 to i64
  %398 = getelementptr inbounds i8, ptr %385, i64 %397
  %399 = load i8, ptr %398, align 1, !tbaa !5
  %400 = load i32, ptr %27, align 4, !tbaa !66
  %401 = icmp ult i32 %364, %400
  %402 = lshr i32 %391, 2
  %403 = select i1 %401, i32 %391, i32 %402
  %404 = tail call i32 @llvm.umin.i32(i32 %390, i32 %335)
  %405 = getelementptr i8, ptr %385, i64 -1
  %406 = getelementptr inbounds nuw i8, ptr %385, i64 1
  %407 = ptrtoint ptr %392 to i64
  br label %408

408:                                              ; preds = %535, %389
  %409 = phi i32 [ %365, %389 ], [ %521, %535 ]
  %410 = phi i32 [ %364, %389 ], [ %522, %535 ]
  %411 = phi i32 [ %403, %389 ], [ %536, %535 ]
  %412 = phi i32 [ %362, %389 ], [ %529, %535 ]
  %413 = phi i8 [ %396, %389 ], [ %523, %535 ]
  %414 = phi i8 [ %399, %389 ], [ %524, %535 ]
  %415 = zext nneg i32 %412 to i64
  %416 = getelementptr inbounds nuw i8, ptr %342, i64 %415
  %417 = sext i32 %410 to i64
  %418 = getelementptr inbounds i8, ptr %416, i64 %417
  %419 = load i8, ptr %418, align 1, !tbaa !5
  %420 = icmp eq i8 %419, %414
  br i1 %420, label %421, label %520

421:                                              ; preds = %408
  %422 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %410, i32 -1)
  %423 = extractvalue { i32, i1 } %422, 1, !nosanitize !44
  br i1 %423, label %.loopexit40, label %424, !prof !45, !nosanitize !44

424:                                              ; preds = %421
  %425 = extractvalue { i32, i1 } %422, 0, !nosanitize !44
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i8, ptr %416, i64 %426
  %428 = load i8, ptr %427, align 1, !tbaa !5
  %429 = icmp eq i8 %428, %413
  br i1 %429, label %430, label %520

430:                                              ; preds = %424
  %431 = load i8, ptr %416, align 1, !tbaa !5
  %432 = load i8, ptr %385, align 1, !tbaa !5
  %433 = icmp eq i8 %431, %432
  br i1 %433, label %434, label %520

434:                                              ; preds = %430
  %435 = getelementptr inbounds nuw i8, ptr %416, i64 1
  %436 = load i8, ptr %435, align 1, !tbaa !5
  %437 = load i8, ptr %406, align 1, !tbaa !5
  %438 = icmp eq i8 %436, %437
  br i1 %438, label %439, label %520

439:                                              ; preds = %434
  %440 = getelementptr inbounds nuw i8, ptr %416, i64 2
  br label %441

441:                                              ; preds = %486, %439
  %442 = phi ptr [ %440, %439 ], [ %490, %486 ]
  %443 = phi i64 [ 2, %439 ], [ %487, %486 ]
  %444 = getelementptr inbounds nuw i8, ptr %385, i64 %443
  %445 = getelementptr inbounds nuw i8, ptr %444, i64 1
  %446 = load i8, ptr %445, align 1, !tbaa !5
  %447 = getelementptr inbounds nuw i8, ptr %442, i64 1
  %448 = load i8, ptr %447, align 1, !tbaa !5
  %449 = icmp eq i8 %446, %448
  br i1 %449, label %450, label %.split.loop.exit.split.loop.exit

450:                                              ; preds = %441
  %451 = getelementptr inbounds nuw i8, ptr %444, i64 2
  %452 = load i8, ptr %451, align 1, !tbaa !5
  %453 = getelementptr inbounds nuw i8, ptr %442, i64 2
  %454 = load i8, ptr %453, align 1, !tbaa !5
  %455 = icmp eq i8 %452, %454
  br i1 %455, label %456, label %.split.loop.exit.split.loop.exit153

456:                                              ; preds = %450
  %457 = getelementptr inbounds nuw i8, ptr %444, i64 3
  %458 = load i8, ptr %457, align 1, !tbaa !5
  %459 = getelementptr inbounds nuw i8, ptr %442, i64 3
  %460 = load i8, ptr %459, align 1, !tbaa !5
  %461 = icmp eq i8 %458, %460
  br i1 %461, label %462, label %.split.loop.exit.split.loop.exit155

462:                                              ; preds = %456
  %463 = getelementptr inbounds nuw i8, ptr %444, i64 4
  %464 = load i8, ptr %463, align 1, !tbaa !5
  %465 = getelementptr inbounds nuw i8, ptr %442, i64 4
  %466 = load i8, ptr %465, align 1, !tbaa !5
  %467 = icmp eq i8 %464, %466
  br i1 %467, label %468, label %.split.loop.exit.split.loop.exit157

468:                                              ; preds = %462
  %469 = getelementptr inbounds nuw i8, ptr %444, i64 5
  %470 = load i8, ptr %469, align 1, !tbaa !5
  %471 = getelementptr inbounds nuw i8, ptr %442, i64 5
  %472 = load i8, ptr %471, align 1, !tbaa !5
  %473 = icmp eq i8 %470, %472
  br i1 %473, label %474, label %.split.loop.exit.split.loop.exit159

474:                                              ; preds = %468
  %475 = getelementptr inbounds nuw i8, ptr %444, i64 6
  %476 = load i8, ptr %475, align 1, !tbaa !5
  %477 = getelementptr inbounds nuw i8, ptr %442, i64 6
  %478 = load i8, ptr %477, align 1, !tbaa !5
  %479 = icmp eq i8 %476, %478
  br i1 %479, label %480, label %.split.loop.exit.split.loop.exit161

480:                                              ; preds = %474
  %481 = getelementptr inbounds nuw i8, ptr %444, i64 7
  %482 = load i8, ptr %481, align 1, !tbaa !5
  %483 = getelementptr inbounds nuw i8, ptr %442, i64 7
  %484 = load i8, ptr %483, align 1, !tbaa !5
  %485 = icmp eq i8 %482, %484
  br i1 %485, label %486, label %.split.loop.exit.split.loop.exit163

486:                                              ; preds = %480
  %487 = add nuw nsw i64 %443, 8
  %488 = getelementptr inbounds nuw i8, ptr %385, i64 %487
  %489 = load i8, ptr %488, align 1, !tbaa !5
  %490 = getelementptr inbounds nuw i8, ptr %442, i64 8
  %491 = load i8, ptr %490, align 1, !tbaa !5
  %492 = icmp eq i8 %489, %491
  %493 = icmp samesign ult i64 %443, 250
  %494 = select i1 %492, i1 %493, i1 false
  br i1 %494, label %441, label %.split.loop.exit.split.loop.exit165, !llvm.loop !149

.split.loop.exit.split.loop.exit:                 ; preds = %441
  %495 = getelementptr inbounds nuw i8, ptr %444, i64 1
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit153:              ; preds = %450
  %496 = getelementptr inbounds nuw i8, ptr %444, i64 2
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit155:              ; preds = %456
  %497 = getelementptr inbounds nuw i8, ptr %444, i64 3
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit157:              ; preds = %462
  %498 = getelementptr inbounds nuw i8, ptr %444, i64 4
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit159:              ; preds = %468
  %499 = getelementptr inbounds nuw i8, ptr %444, i64 5
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit161:              ; preds = %474
  %500 = getelementptr inbounds nuw i8, ptr %444, i64 6
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit163:              ; preds = %480
  %501 = getelementptr inbounds nuw i8, ptr %444, i64 7
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit165:              ; preds = %486
  %502 = getelementptr inbounds nuw i8, ptr %385, i64 %487
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %.split.loop.exit.split.loop.exit165, %.split.loop.exit.split.loop.exit163, %.split.loop.exit.split.loop.exit161, %.split.loop.exit.split.loop.exit159, %.split.loop.exit.split.loop.exit157, %.split.loop.exit.split.loop.exit155, %.split.loop.exit.split.loop.exit153, %.split.loop.exit.split.loop.exit
  %503 = phi ptr [ %495, %.split.loop.exit.split.loop.exit ], [ %496, %.split.loop.exit.split.loop.exit153 ], [ %497, %.split.loop.exit.split.loop.exit155 ], [ %498, %.split.loop.exit.split.loop.exit157 ], [ %499, %.split.loop.exit.split.loop.exit159 ], [ %500, %.split.loop.exit.split.loop.exit161 ], [ %501, %.split.loop.exit.split.loop.exit163 ], [ %502, %.split.loop.exit.split.loop.exit165 ]
  %504 = ptrtoint ptr %503 to i64
  %505 = sub i64 %407, %504
  %506 = trunc i64 %505 to i32
  %507 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %506), !nosanitize !44
  %508 = extractvalue { i32, i1 } %507, 0, !nosanitize !44
  %509 = extractvalue { i32, i1 } %507, 1, !nosanitize !44
  br i1 %509, label %.loopexit40, label %510, !prof !45, !nosanitize !44

510:                                              ; preds = %.split.loop.exit
  %511 = icmp sgt i32 %508, %410
  br i1 %511, label %512, label %520

512:                                              ; preds = %510
  store i32 %412, ptr %8, align 8, !tbaa !81
  %513 = icmp slt i32 %508, %404
  br i1 %513, label %514, label %538

514:                                              ; preds = %512
  %515 = sext i32 %508 to i64
  %516 = getelementptr i8, ptr %405, i64 %515
  %517 = load i8, ptr %516, align 1, !tbaa !5
  %518 = getelementptr inbounds i8, ptr %385, i64 %515
  %519 = load i8, ptr %518, align 1, !tbaa !5
  br label %520

520:                                              ; preds = %514, %510, %434, %430, %424, %408
  %521 = phi i32 [ %409, %408 ], [ %409, %424 ], [ %409, %430 ], [ %409, %434 ], [ %412, %514 ], [ %409, %510 ]
  %522 = phi i32 [ %410, %408 ], [ %410, %424 ], [ %410, %430 ], [ %410, %434 ], [ %508, %514 ], [ %410, %510 ]
  %523 = phi i8 [ %413, %408 ], [ %413, %424 ], [ %413, %430 ], [ %413, %434 ], [ %517, %514 ], [ %413, %510 ]
  %524 = phi i8 [ %414, %408 ], [ %414, %424 ], [ %414, %430 ], [ %414, %434 ], [ %519, %514 ], [ %414, %510 ]
  %525 = and i32 %412, %358
  %526 = zext nneg i32 %525 to i64
  %527 = getelementptr inbounds nuw [2 x i8], ptr %357, i64 %526
  %528 = load i16, ptr %527, align 2, !tbaa !60
  %529 = zext i16 %528 to i32
  %530 = icmp ult i32 %386, %529
  br i1 %530, label %531, label %538

531:                                              ; preds = %520
  %532 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %411, i32 1), !nosanitize !44
  %533 = extractvalue { i32, i1 } %532, 1, !nosanitize !44
  br i1 %533, label %534, label %535, !prof !45, !nosanitize !44

534:                                              ; preds = %531
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

535:                                              ; preds = %531
  %536 = extractvalue { i32, i1 } %532, 0, !nosanitize !44
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %408, !llvm.loop !150

538:                                              ; preds = %535, %520, %512
  %539 = phi i32 [ %521, %535 ], [ %521, %520 ], [ %412, %512 ]
  %540 = phi i32 [ %522, %535 ], [ %522, %520 ], [ %508, %512 ]
  %541 = tail call i32 @llvm.umin.i32(i32 %540, i32 %335)
  store i32 %541, ptr %21, align 8, !tbaa !76
  %542 = icmp ult i32 %541, 6
  br i1 %542, label %543, label %559

543:                                              ; preds = %538
  %544 = load i32, ptr %28, align 8, !tbaa !48
  %545 = icmp eq i32 %544, 1
  br i1 %545, label %555, label %546

546:                                              ; preds = %543
  %547 = icmp eq i32 %541, 3
  br i1 %547, label %548, label %559

548:                                              ; preds = %546
  %549 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %336, i32 %539), !nosanitize !44
  %550 = extractvalue { i32, i1 } %549, 1, !nosanitize !44
  br i1 %550, label %551, label %552, !prof !45, !nosanitize !44

551:                                              ; preds = %548
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

552:                                              ; preds = %548
  %553 = extractvalue { i32, i1 } %549, 0, !nosanitize !44
  %554 = icmp ugt i32 %553, 4096
  br i1 %554, label %555, label %559

555:                                              ; preds = %552, %543, %331
  %556 = phi i32 [ %333, %331 ], [ %365, %552 ], [ %365, %543 ]
  %557 = phi i32 [ %332, %331 ], [ %364, %552 ], [ %364, %543 ]
  %558 = phi i32 [ %324, %331 ], [ %335, %552 ], [ %335, %543 ]
  store i32 2, ptr %21, align 8, !tbaa !76
  br label %559

559:                                              ; preds = %555, %552, %546, %538, %380, %367, %340
  %560 = phi i32 [ %541, %538 ], [ %541, %546 ], [ 3, %552 ], [ 2, %380 ], [ 2, %367 ], [ 2, %340 ], [ 2, %555 ]
  %561 = phi i32 [ %365, %538 ], [ %365, %546 ], [ %365, %552 ], [ %365, %380 ], [ %365, %367 ], [ %365, %340 ], [ %556, %555 ]
  %562 = phi i32 [ %364, %538 ], [ %364, %546 ], [ %364, %552 ], [ %364, %380 ], [ %364, %367 ], [ %364, %340 ], [ %557, %555 ]
  %563 = phi i32 [ %335, %538 ], [ %335, %546 ], [ %335, %552 ], [ %335, %380 ], [ %335, %367 ], [ %335, %340 ], [ %558, %555 ]
  %564 = icmp ult i32 %562, 3
  %565 = icmp ugt i32 %560, %562
  %566 = or i1 %564, %565
  br i1 %566, label %770, label %567

567:                                              ; preds = %559
  %568 = load i32, ptr %6, align 4, !tbaa !71
  %569 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %568, i32 %563), !nosanitize !44
  %570 = extractvalue { i32, i1 } %569, 1, !nosanitize !44
  br i1 %570, label %571, label %572, !prof !45, !nosanitize !44

571:                                              ; preds = %567
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

572:                                              ; preds = %567
  %573 = extractvalue { i32, i1 } %569, 0, !nosanitize !44
  %574 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %573, i32 3), !nosanitize !44
  %575 = extractvalue { i32, i1 } %574, 0, !nosanitize !44
  %576 = extractvalue { i32, i1 } %574, 1, !nosanitize !44
  br i1 %576, label %577, label %578, !prof !45, !nosanitize !44

577:                                              ; preds = %572
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

578:                                              ; preds = %572
  %579 = trunc i32 %562 to i8
  %580 = add i8 %579, -3
  %581 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %568, i32 1), !nosanitize !44
  %582 = extractvalue { i32, i1 } %581, 1, !nosanitize !44
  br i1 %582, label %583, label %584, !prof !45, !nosanitize !44

583:                                              ; preds = %578
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

584:                                              ; preds = %578
  %585 = extractvalue { i32, i1 } %581, 0, !nosanitize !44
  %586 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %585, i32 %561), !nosanitize !44
  %587 = extractvalue { i32, i1 } %586, 1, !nosanitize !44
  br i1 %587, label %588, label %589, !prof !45, !nosanitize !44

588:                                              ; preds = %584
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

589:                                              ; preds = %584
  %590 = extractvalue { i32, i1 } %586, 0, !nosanitize !44
  %591 = trunc i32 %590 to i16
  %592 = load i32, ptr %30, align 4, !tbaa !136
  %593 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %592, i32 1), !nosanitize !44
  %594 = extractvalue { i32, i1 } %593, 1, !nosanitize !44
  br i1 %594, label %595, label %596, !prof !45, !nosanitize !44

595:                                              ; preds = %589
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

596:                                              ; preds = %589
  %597 = extractvalue { i32, i1 } %593, 0, !nosanitize !44
  %598 = load ptr, ptr %29, align 8, !tbaa !43
  %599 = trunc i32 %590 to i8
  store i32 %597, ptr %30, align 4, !tbaa !136
  %600 = zext i32 %592 to i64
  %601 = getelementptr inbounds nuw i8, ptr %598, i64 %600
  store i8 %599, ptr %601, align 1, !tbaa !5
  %602 = load i32, ptr %30, align 4, !tbaa !136
  %603 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %602, i32 1), !nosanitize !44
  %604 = extractvalue { i32, i1 } %603, 1, !nosanitize !44
  br i1 %604, label %605, label %606, !prof !45, !nosanitize !44

605:                                              ; preds = %596
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

606:                                              ; preds = %596
  %607 = extractvalue { i32, i1 } %603, 0, !nosanitize !44
  %608 = load ptr, ptr %29, align 8, !tbaa !43
  %609 = lshr i32 %590, 8
  %610 = trunc i32 %609 to i8
  store i32 %607, ptr %30, align 4, !tbaa !136
  %611 = zext i32 %602 to i64
  %612 = getelementptr inbounds nuw i8, ptr %608, i64 %611
  store i8 %610, ptr %612, align 1, !tbaa !5
  %613 = load i32, ptr %30, align 4, !tbaa !136
  %614 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %613, i32 1), !nosanitize !44
  %615 = extractvalue { i32, i1 } %614, 1, !nosanitize !44
  br i1 %615, label %616, label %617, !prof !45, !nosanitize !44

616:                                              ; preds = %606
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

617:                                              ; preds = %606
  %618 = extractvalue { i32, i1 } %614, 0, !nosanitize !44
  %619 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %618, ptr %30, align 4, !tbaa !136
  %620 = zext i32 %613 to i64
  %621 = getelementptr inbounds nuw i8, ptr %619, i64 %620
  store i8 %580, ptr %621, align 1, !tbaa !5
  %622 = add i16 %591, -1
  %623 = zext i8 %580 to i64
  %624 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %623
  %625 = load i8, ptr %624, align 1, !tbaa !5
  %626 = zext i8 %625 to i64
  %627 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %626
  %628 = getelementptr inbounds nuw i8, ptr %627, i64 1028
  %629 = load i16, ptr %628, align 4, !tbaa !5
  %630 = add i16 %629, 1
  store i16 %630, ptr %628, align 4, !tbaa !5
  %631 = icmp ult i16 %622, 256
  %632 = lshr i16 %622, 7
  %633 = add nuw nsw i16 %632, 256
  %634 = select i1 %631, i16 %622, i16 %633
  %635 = zext i16 %634 to i64
  %636 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %635
  %637 = load i8, ptr %636, align 1, !tbaa !5
  %638 = zext i8 %637 to i64
  %639 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %638
  %640 = load i16, ptr %639, align 4, !tbaa !5
  %641 = add i16 %640, 1
  store i16 %641, ptr %639, align 4, !tbaa !5
  %642 = load i32, ptr %30, align 4, !tbaa !136
  %643 = load i32, ptr %33, align 8, !tbaa !46
  %644 = icmp eq i32 %642, %643
  %645 = load i32, ptr %22, align 8, !tbaa !75
  %646 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %645, i32 1), !nosanitize !44
  %647 = extractvalue { i32, i1 } %646, 1, !nosanitize !44
  br i1 %647, label %648, label %649, !prof !45, !nosanitize !44

648:                                              ; preds = %617
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

649:                                              ; preds = %617
  %650 = extractvalue { i32, i1 } %646, 0, !nosanitize !44
  %651 = load i32, ptr %3, align 4, !tbaa !73
  %652 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %651, i32 %650), !nosanitize !44
  %653 = extractvalue { i32, i1 } %652, 1, !nosanitize !44
  br i1 %653, label %654, label %655, !prof !45, !nosanitize !44

654:                                              ; preds = %649
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

655:                                              ; preds = %649
  %656 = extractvalue { i32, i1 } %652, 0, !nosanitize !44
  store i32 %656, ptr %3, align 4, !tbaa !73
  %657 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %645, i32 2), !nosanitize !44
  %658 = extractvalue { i32, i1 } %657, 1, !nosanitize !44
  br i1 %658, label %659, label %660, !prof !45, !nosanitize !44

659:                                              ; preds = %655
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

660:                                              ; preds = %655
  %661 = extractvalue { i32, i1 } %657, 0, !nosanitize !44
  store i32 %661, ptr %22, align 8, !tbaa !75
  %662 = load i32, ptr %6, align 4, !tbaa !71
  %663 = xor i32 %662, -1
  %664 = add i32 %645, -3
  %umin100 = tail call i32 @llvm.umin.i32(i32 %661, i32 %664)
  %665 = freeze i32 %umin100
  %.not = icmp ult i32 %665, %663
  br i1 %.not, label %.split102, label %670, !prof !91, !nosanitize !44

.split102:                                        ; preds = %660, %697
  %666 = phi i32 [ %698, %697 ], [ %661, %660 ]
  %667 = phi i32 [ %668, %697 ], [ %662, %660 ]
  %668 = add i32 %667, 1
  store i32 %668, ptr %6, align 4, !tbaa !71
  %669 = icmp ugt i32 %668, %575
  br i1 %669, label %694, label %671

670:                                              ; preds = %660
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

671:                                              ; preds = %.split102
  %672 = add i32 %667, 3
  %673 = load ptr, ptr %7, align 8, !tbaa !34
  %674 = load i32, ptr %15, align 8, !tbaa !78
  %675 = load i32, ptr %16, align 8, !tbaa !52
  %676 = shl i32 %674, %675
  %677 = zext i32 %672 to i64
  %678 = getelementptr inbounds nuw i8, ptr %673, i64 %677
  %679 = load i8, ptr %678, align 1, !tbaa !5
  %680 = zext i8 %679 to i32
  %681 = xor i32 %676, %680
  %682 = load i32, ptr %17, align 4, !tbaa !51
  %683 = and i32 %681, %682
  store i32 %683, ptr %15, align 8, !tbaa !78
  %684 = load ptr, ptr %12, align 8, !tbaa !37
  %685 = zext i32 %683 to i64
  %686 = getelementptr inbounds nuw [2 x i8], ptr %684, i64 %685
  %687 = load i16, ptr %686, align 2, !tbaa !60
  %688 = load ptr, ptr %13, align 8, !tbaa !35
  %689 = load i32, ptr %18, align 8, !tbaa !32
  %690 = and i32 %689, %668
  %691 = zext i32 %690 to i64
  %692 = getelementptr inbounds nuw [2 x i8], ptr %688, i64 %691
  store i16 %687, ptr %692, align 2, !tbaa !60
  %693 = trunc i32 %668 to i16
  store i16 %693, ptr %686, align 2, !tbaa !60
  br label %694

694:                                              ; preds = %671, %.split102
  %695 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %666, i32 1), !nosanitize !44
  %696 = extractvalue { i32, i1 } %695, 1, !nosanitize !44
  br i1 %696, label %.loopexit39, label %697, !prof !45, !nosanitize !44

.loopexit39:                                      ; preds = %713, %694
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

697:                                              ; preds = %694
  %698 = extractvalue { i32, i1 } %695, 0, !nosanitize !44
  store i32 %698, ptr %22, align 8, !tbaa !75
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %700, label %.split102, !llvm.loop !157

700:                                              ; preds = %697
  store i32 0, ptr %34, align 8, !tbaa !77
  store i32 2, ptr %21, align 8, !tbaa !76
  %701 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %668, i32 1), !nosanitize !44
  %702 = extractvalue { i32, i1 } %701, 1, !nosanitize !44
  br i1 %702, label %703, label %704, !prof !45, !nosanitize !44

703:                                              ; preds = %700
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

704:                                              ; preds = %700
  %705 = extractvalue { i32, i1 } %701, 0, !nosanitize !44
  store i32 %705, ptr %6, align 4, !tbaa !71
  br i1 %644, label %706, label %.backedge

706:                                              ; preds = %704
  %707 = load i64, ptr %9, align 8, !tbaa !72
  %708 = icmp sgt i64 %707, -1
  br i1 %708, label %709, label %713

709:                                              ; preds = %706
  %710 = load ptr, ptr %7, align 8, !tbaa !34
  %711 = and i64 %707, 4294967295
  %712 = getelementptr inbounds nuw i8, ptr %710, i64 %711
  br label %713

713:                                              ; preds = %709, %706
  %714 = phi ptr [ %712, %709 ], [ null, %706 ]
  %715 = zext i32 %705 to i64
  %716 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %715, i64 %707), !nosanitize !44
  %717 = extractvalue { i64, i1 } %716, 1, !nosanitize !44
  br i1 %717, label %.loopexit39, label %718, !prof !45, !nosanitize !44

718:                                              ; preds = %713
  %719 = extractvalue { i64, i1 } %716, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %714, i64 noundef %719, i32 noundef 0) #11
  %720 = load i32, ptr %6, align 4, !tbaa !71
  %721 = zext i32 %720 to i64
  store i64 %721, ptr %9, align 8, !tbaa !72
  %722 = load ptr, ptr %0, align 8, !tbaa !19
  %723 = getelementptr inbounds nuw i8, ptr %722, i64 56
  %724 = load ptr, ptr %723, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %724) #11
  %725 = getelementptr inbounds nuw i8, ptr %724, i64 40
  %726 = load i64, ptr %725, align 8, !tbaa !55
  %727 = getelementptr inbounds nuw i8, ptr %722, i64 32
  %728 = load i32, ptr %727, align 8, !tbaa !105
  %729 = zext i32 %728 to i64
  %730 = tail call i64 @llvm.umin.i64(i64 %726, i64 %729)
  %731 = trunc nuw i64 %730 to i32
  %732 = icmp eq i64 %730, 0
  br i1 %732, label %765, label %733

733:                                              ; preds = %718
  %734 = getelementptr inbounds nuw i8, ptr %722, i64 24
  %735 = load ptr, ptr %734, align 8, !tbaa !104
  %736 = getelementptr inbounds nuw i8, ptr %724, i64 32
  %737 = load ptr, ptr %736, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %735, ptr align 1 %737, i64 %730, i1 false)
  %738 = load ptr, ptr %734, align 8, !tbaa !104
  %739 = getelementptr inbounds nuw i8, ptr %738, i64 %730
  store ptr %739, ptr %734, align 8, !tbaa !104
  %740 = load ptr, ptr %736, align 8, !tbaa !56
  %741 = getelementptr inbounds nuw i8, ptr %740, i64 %730
  store ptr %741, ptr %736, align 8, !tbaa !56
  %742 = getelementptr inbounds nuw i8, ptr %722, i64 40
  %743 = load i64, ptr %742, align 8, !tbaa !106
  %744 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %743, i64 %730), !nosanitize !44
  %745 = extractvalue { i64, i1 } %744, 1, !nosanitize !44
  br i1 %745, label %746, label %747, !prof !45, !nosanitize !44

746:                                              ; preds = %733
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

747:                                              ; preds = %733
  %748 = extractvalue { i64, i1 } %744, 0, !nosanitize !44
  store i64 %748, ptr %742, align 8, !tbaa !106
  %749 = load i32, ptr %727, align 8, !tbaa !105
  %750 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %749, i32 %731), !nosanitize !44
  %751 = extractvalue { i32, i1 } %750, 1, !nosanitize !44
  br i1 %751, label %752, label %753, !prof !45, !nosanitize !44

752:                                              ; preds = %747
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

753:                                              ; preds = %747
  %754 = extractvalue { i32, i1 } %750, 0, !nosanitize !44
  store i32 %754, ptr %727, align 8, !tbaa !105
  %755 = load i64, ptr %725, align 8, !tbaa !55
  %756 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %755, i64 %730), !nosanitize !44
  %757 = extractvalue { i64, i1 } %756, 1, !nosanitize !44
  br i1 %757, label %758, label %759, !prof !45, !nosanitize !44

758:                                              ; preds = %753
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

759:                                              ; preds = %753
  %760 = extractvalue { i64, i1 } %756, 0, !nosanitize !44
  store i64 %760, ptr %725, align 8, !tbaa !55
  %761 = icmp eq i64 %760, 0
  br i1 %761, label %762, label %765

762:                                              ; preds = %759
  %763 = getelementptr inbounds nuw i8, ptr %724, i64 16
  %764 = load ptr, ptr %763, align 8, !tbaa !40
  store ptr %764, ptr %736, align 8, !tbaa !56
  br label %765

765:                                              ; preds = %762, %759, %718
  %766 = load ptr, ptr %0, align 8, !tbaa !19
  %767 = getelementptr inbounds nuw i8, ptr %766, i64 32
  %768 = load i32, ptr %767, align 8, !tbaa !105
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %.loopexit41, label %.backedge

770:                                              ; preds = %559
  %771 = load i32, ptr %34, align 8, !tbaa !77
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %895, label %773

773:                                              ; preds = %770
  %774 = load i32, ptr %6, align 4, !tbaa !71
  %775 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %774, i32 1), !nosanitize !44
  %776 = extractvalue { i32, i1 } %775, 1, !nosanitize !44
  br i1 %776, label %777, label %778, !prof !45, !nosanitize !44

777:                                              ; preds = %825, %773
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

778:                                              ; preds = %773
  %779 = extractvalue { i32, i1 } %775, 0, !nosanitize !44
  %780 = load ptr, ptr %7, align 8, !tbaa !34
  %781 = zext i32 %779 to i64
  %782 = getelementptr inbounds nuw i8, ptr %780, i64 %781
  %783 = load i8, ptr %782, align 1, !tbaa !5
  %784 = load i32, ptr %30, align 4, !tbaa !136
  %785 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %784, i32 1), !nosanitize !44
  %786 = extractvalue { i32, i1 } %785, 1, !nosanitize !44
  br i1 %786, label %787, label %788, !prof !45, !nosanitize !44

787:                                              ; preds = %778
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

788:                                              ; preds = %778
  %789 = extractvalue { i32, i1 } %785, 0, !nosanitize !44
  %790 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %789, ptr %30, align 4, !tbaa !136
  %791 = zext i32 %784 to i64
  %792 = getelementptr inbounds nuw i8, ptr %790, i64 %791
  store i8 0, ptr %792, align 1, !tbaa !5
  %793 = load i32, ptr %30, align 4, !tbaa !136
  %794 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %793, i32 1), !nosanitize !44
  %795 = extractvalue { i32, i1 } %794, 1, !nosanitize !44
  br i1 %795, label %796, label %797, !prof !45, !nosanitize !44

796:                                              ; preds = %788
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

797:                                              ; preds = %788
  %798 = extractvalue { i32, i1 } %794, 0, !nosanitize !44
  %799 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %798, ptr %30, align 4, !tbaa !136
  %800 = zext i32 %793 to i64
  %801 = getelementptr inbounds nuw i8, ptr %799, i64 %800
  store i8 0, ptr %801, align 1, !tbaa !5
  %802 = load i32, ptr %30, align 4, !tbaa !136
  %803 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %802, i32 1), !nosanitize !44
  %804 = extractvalue { i32, i1 } %803, 1, !nosanitize !44
  br i1 %804, label %805, label %806, !prof !45, !nosanitize !44

805:                                              ; preds = %797
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

806:                                              ; preds = %797
  %807 = extractvalue { i32, i1 } %803, 0, !nosanitize !44
  %808 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %807, ptr %30, align 4, !tbaa !136
  %809 = zext i32 %802 to i64
  %810 = getelementptr inbounds nuw i8, ptr %808, i64 %809
  store i8 %783, ptr %810, align 1, !tbaa !5
  %811 = zext i8 %783 to i64
  %812 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %811
  %813 = load i16, ptr %812, align 4, !tbaa !5
  %814 = add i16 %813, 1
  store i16 %814, ptr %812, align 4, !tbaa !5
  %815 = load i32, ptr %30, align 4, !tbaa !136
  %816 = load i32, ptr %33, align 8, !tbaa !46
  %817 = icmp eq i32 %815, %816
  br i1 %817, label %818, label %878

818:                                              ; preds = %806
  %819 = load i64, ptr %9, align 8, !tbaa !72
  %820 = icmp sgt i64 %819, -1
  br i1 %820, label %821, label %825

821:                                              ; preds = %818
  %822 = load ptr, ptr %7, align 8, !tbaa !34
  %823 = and i64 %819, 4294967295
  %824 = getelementptr inbounds nuw i8, ptr %822, i64 %823
  br label %825

825:                                              ; preds = %821, %818
  %826 = phi ptr [ %824, %821 ], [ null, %818 ]
  %827 = load i32, ptr %6, align 4, !tbaa !71
  %828 = zext i32 %827 to i64
  %829 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %828, i64 %819), !nosanitize !44
  %830 = extractvalue { i64, i1 } %829, 1, !nosanitize !44
  br i1 %830, label %777, label %831, !prof !45, !nosanitize !44

831:                                              ; preds = %825
  %832 = extractvalue { i64, i1 } %829, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %826, i64 noundef %832, i32 noundef 0) #11
  %833 = load i32, ptr %6, align 4, !tbaa !71
  %834 = zext i32 %833 to i64
  store i64 %834, ptr %9, align 8, !tbaa !72
  %835 = load ptr, ptr %0, align 8, !tbaa !19
  %836 = getelementptr inbounds nuw i8, ptr %835, i64 56
  %837 = load ptr, ptr %836, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %837) #11
  %838 = getelementptr inbounds nuw i8, ptr %837, i64 40
  %839 = load i64, ptr %838, align 8, !tbaa !55
  %840 = getelementptr inbounds nuw i8, ptr %835, i64 32
  %841 = load i32, ptr %840, align 8, !tbaa !105
  %842 = zext i32 %841 to i64
  %843 = tail call i64 @llvm.umin.i64(i64 %839, i64 %842)
  %844 = trunc nuw i64 %843 to i32
  %845 = icmp eq i64 %843, 0
  br i1 %845, label %878, label %846

846:                                              ; preds = %831
  %847 = getelementptr inbounds nuw i8, ptr %835, i64 24
  %848 = load ptr, ptr %847, align 8, !tbaa !104
  %849 = getelementptr inbounds nuw i8, ptr %837, i64 32
  %850 = load ptr, ptr %849, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %848, ptr align 1 %850, i64 %843, i1 false)
  %851 = load ptr, ptr %847, align 8, !tbaa !104
  %852 = getelementptr inbounds nuw i8, ptr %851, i64 %843
  store ptr %852, ptr %847, align 8, !tbaa !104
  %853 = load ptr, ptr %849, align 8, !tbaa !56
  %854 = getelementptr inbounds nuw i8, ptr %853, i64 %843
  store ptr %854, ptr %849, align 8, !tbaa !56
  %855 = getelementptr inbounds nuw i8, ptr %835, i64 40
  %856 = load i64, ptr %855, align 8, !tbaa !106
  %857 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %856, i64 %843), !nosanitize !44
  %858 = extractvalue { i64, i1 } %857, 1, !nosanitize !44
  br i1 %858, label %859, label %860, !prof !45, !nosanitize !44

859:                                              ; preds = %846
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

860:                                              ; preds = %846
  %861 = extractvalue { i64, i1 } %857, 0, !nosanitize !44
  store i64 %861, ptr %855, align 8, !tbaa !106
  %862 = load i32, ptr %840, align 8, !tbaa !105
  %863 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %862, i32 %844), !nosanitize !44
  %864 = extractvalue { i32, i1 } %863, 1, !nosanitize !44
  br i1 %864, label %865, label %866, !prof !45, !nosanitize !44

865:                                              ; preds = %860
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

866:                                              ; preds = %860
  %867 = extractvalue { i32, i1 } %863, 0, !nosanitize !44
  store i32 %867, ptr %840, align 8, !tbaa !105
  %868 = load i64, ptr %838, align 8, !tbaa !55
  %869 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %868, i64 %843), !nosanitize !44
  %870 = extractvalue { i64, i1 } %869, 1, !nosanitize !44
  br i1 %870, label %871, label %872, !prof !45, !nosanitize !44

871:                                              ; preds = %866
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

872:                                              ; preds = %866
  %873 = extractvalue { i64, i1 } %869, 0, !nosanitize !44
  store i64 %873, ptr %838, align 8, !tbaa !55
  %874 = icmp eq i64 %873, 0
  br i1 %874, label %875, label %878

875:                                              ; preds = %872
  %876 = getelementptr inbounds nuw i8, ptr %837, i64 16
  %877 = load ptr, ptr %876, align 8, !tbaa !40
  store ptr %877, ptr %849, align 8, !tbaa !56
  br label %878

878:                                              ; preds = %875, %872, %831, %806
  %879 = load i32, ptr %6, align 4, !tbaa !71
  %880 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %879, i32 1), !nosanitize !44
  %881 = extractvalue { i32, i1 } %880, 1, !nosanitize !44
  br i1 %881, label %882, label %883, !prof !45, !nosanitize !44

882:                                              ; preds = %878
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

883:                                              ; preds = %878
  %884 = extractvalue { i32, i1 } %880, 0, !nosanitize !44
  store i32 %884, ptr %6, align 4, !tbaa !71
  %885 = load i32, ptr %3, align 4, !tbaa !73
  %886 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %885, i32 1), !nosanitize !44
  %887 = extractvalue { i32, i1 } %886, 1, !nosanitize !44
  br i1 %887, label %888, label %889, !prof !45, !nosanitize !44

888:                                              ; preds = %883
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

889:                                              ; preds = %883
  %890 = extractvalue { i32, i1 } %886, 0, !nosanitize !44
  store i32 %890, ptr %3, align 4, !tbaa !73
  %891 = load ptr, ptr %0, align 8, !tbaa !19
  %892 = getelementptr inbounds nuw i8, ptr %891, i64 32
  %893 = load i32, ptr %892, align 8, !tbaa !105
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %.loopexit41, label %.backedge

895:                                              ; preds = %770
  store i32 1, ptr %34, align 8, !tbaa !77
  %896 = load i32, ptr %6, align 4, !tbaa !71
  %897 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %896, i32 1), !nosanitize !44
  %898 = extractvalue { i32, i1 } %897, 1, !nosanitize !44
  br i1 %898, label %899, label %900, !prof !45, !nosanitize !44

899:                                              ; preds = %895
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

900:                                              ; preds = %895
  %901 = extractvalue { i32, i1 } %897, 0, !nosanitize !44
  store i32 %901, ptr %6, align 4, !tbaa !71
  %902 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %563, i32 1), !nosanitize !44
  %903 = extractvalue { i32, i1 } %902, 1, !nosanitize !44
  br i1 %903, label %904, label %905, !prof !45, !nosanitize !44

904:                                              ; preds = %900
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

905:                                              ; preds = %900
  %906 = extractvalue { i32, i1 } %902, 0, !nosanitize !44
  store i32 %906, ptr %3, align 4, !tbaa !73
  br label %.backedge

.backedge:                                        ; preds = %905, %889, %765, %704
  br label %35

907:                                              ; preds = %327
  %908 = load i32, ptr %34, align 8, !tbaa !77
  %909 = icmp eq i32 %908, 0
  %910 = load i32, ptr %6, align 4, !tbaa !71
  br i1 %909, label %953, label %911

911:                                              ; preds = %907
  %912 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %910, i32 1), !nosanitize !44
  %913 = extractvalue { i32, i1 } %912, 1, !nosanitize !44
  br i1 %913, label %914, label %915, !prof !45, !nosanitize !44

914:                                              ; preds = %1032, %964, %911
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

915:                                              ; preds = %911
  %916 = extractvalue { i32, i1 } %912, 0, !nosanitize !44
  %917 = load ptr, ptr %7, align 8, !tbaa !34
  %918 = zext i32 %916 to i64
  %919 = getelementptr inbounds nuw i8, ptr %917, i64 %918
  %920 = load i8, ptr %919, align 1, !tbaa !5
  %921 = load i32, ptr %30, align 4, !tbaa !136
  %922 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %921, i32 1), !nosanitize !44
  %923 = extractvalue { i32, i1 } %922, 1, !nosanitize !44
  br i1 %923, label %924, label %925, !prof !45, !nosanitize !44

924:                                              ; preds = %915
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

925:                                              ; preds = %915
  %926 = extractvalue { i32, i1 } %922, 0, !nosanitize !44
  %927 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %926, ptr %30, align 4, !tbaa !136
  %928 = zext i32 %921 to i64
  %929 = getelementptr inbounds nuw i8, ptr %927, i64 %928
  store i8 0, ptr %929, align 1, !tbaa !5
  %930 = load i32, ptr %30, align 4, !tbaa !136
  %931 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %930, i32 1), !nosanitize !44
  %932 = extractvalue { i32, i1 } %931, 1, !nosanitize !44
  br i1 %932, label %933, label %934, !prof !45, !nosanitize !44

933:                                              ; preds = %925
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

934:                                              ; preds = %925
  %935 = extractvalue { i32, i1 } %931, 0, !nosanitize !44
  %936 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %935, ptr %30, align 4, !tbaa !136
  %937 = zext i32 %930 to i64
  %938 = getelementptr inbounds nuw i8, ptr %936, i64 %937
  store i8 0, ptr %938, align 1, !tbaa !5
  %939 = load i32, ptr %30, align 4, !tbaa !136
  %940 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %939, i32 1), !nosanitize !44
  %941 = extractvalue { i32, i1 } %940, 1, !nosanitize !44
  br i1 %941, label %942, label %943, !prof !45, !nosanitize !44

942:                                              ; preds = %934
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

943:                                              ; preds = %934
  %944 = extractvalue { i32, i1 } %940, 0, !nosanitize !44
  %945 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %944, ptr %30, align 4, !tbaa !136
  %946 = zext i32 %939 to i64
  %947 = getelementptr inbounds nuw i8, ptr %945, i64 %946
  store i8 %920, ptr %947, align 1, !tbaa !5
  %948 = zext i8 %920 to i64
  %949 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %948
  %950 = load i16, ptr %949, align 4, !tbaa !5
  %951 = add i16 %950, 1
  store i16 %951, ptr %949, align 4, !tbaa !5
  store i32 0, ptr %34, align 8, !tbaa !77
  %952 = load i32, ptr %6, align 4, !tbaa !71
  br label %953

953:                                              ; preds = %943, %907
  %954 = phi i32 [ %952, %943 ], [ %910, %907 ]
  %955 = tail call i32 @llvm.umin.i32(i32 %954, i32 2)
  store i32 %955, ptr %10, align 4, !tbaa !74
  %956 = icmp eq i32 %1, 4
  br i1 %956, label %957, label %1022

957:                                              ; preds = %953
  %958 = load i64, ptr %9, align 8, !tbaa !72
  %959 = icmp sgt i64 %958, -1
  br i1 %959, label %960, label %964

960:                                              ; preds = %957
  %961 = load ptr, ptr %7, align 8, !tbaa !34
  %962 = and i64 %958, 4294967295
  %963 = getelementptr inbounds nuw i8, ptr %961, i64 %962
  br label %964

964:                                              ; preds = %960, %957
  %965 = phi ptr [ %963, %960 ], [ null, %957 ]
  %966 = zext i32 %954 to i64
  %967 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %966, i64 %958), !nosanitize !44
  %968 = extractvalue { i64, i1 } %967, 1, !nosanitize !44
  br i1 %968, label %914, label %969, !prof !45, !nosanitize !44

969:                                              ; preds = %964
  %970 = extractvalue { i64, i1 } %967, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %965, i64 noundef %970, i32 noundef 1) #11
  %971 = load i32, ptr %6, align 4, !tbaa !71
  %972 = zext i32 %971 to i64
  store i64 %972, ptr %9, align 8, !tbaa !72
  %973 = load ptr, ptr %0, align 8, !tbaa !19
  %974 = getelementptr inbounds nuw i8, ptr %973, i64 56
  %975 = load ptr, ptr %974, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %975) #11
  %976 = getelementptr inbounds nuw i8, ptr %975, i64 40
  %977 = load i64, ptr %976, align 8, !tbaa !55
  %978 = getelementptr inbounds nuw i8, ptr %973, i64 32
  %979 = load i32, ptr %978, align 8, !tbaa !105
  %980 = zext i32 %979 to i64
  %981 = tail call i64 @llvm.umin.i64(i64 %977, i64 %980)
  %982 = trunc nuw i64 %981 to i32
  %983 = icmp eq i64 %981, 0
  br i1 %983, label %1016, label %984

984:                                              ; preds = %969
  %985 = getelementptr inbounds nuw i8, ptr %973, i64 24
  %986 = load ptr, ptr %985, align 8, !tbaa !104
  %987 = getelementptr inbounds nuw i8, ptr %975, i64 32
  %988 = load ptr, ptr %987, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %986, ptr align 1 %988, i64 %981, i1 false)
  %989 = load ptr, ptr %985, align 8, !tbaa !104
  %990 = getelementptr inbounds nuw i8, ptr %989, i64 %981
  store ptr %990, ptr %985, align 8, !tbaa !104
  %991 = load ptr, ptr %987, align 8, !tbaa !56
  %992 = getelementptr inbounds nuw i8, ptr %991, i64 %981
  store ptr %992, ptr %987, align 8, !tbaa !56
  %993 = getelementptr inbounds nuw i8, ptr %973, i64 40
  %994 = load i64, ptr %993, align 8, !tbaa !106
  %995 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %994, i64 %981), !nosanitize !44
  %996 = extractvalue { i64, i1 } %995, 1, !nosanitize !44
  br i1 %996, label %997, label %998, !prof !45, !nosanitize !44

997:                                              ; preds = %984
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

998:                                              ; preds = %984
  %999 = extractvalue { i64, i1 } %995, 0, !nosanitize !44
  store i64 %999, ptr %993, align 8, !tbaa !106
  %1000 = load i32, ptr %978, align 8, !tbaa !105
  %1001 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1000, i32 %982), !nosanitize !44
  %1002 = extractvalue { i32, i1 } %1001, 1, !nosanitize !44
  br i1 %1002, label %1003, label %1004, !prof !45, !nosanitize !44

1003:                                             ; preds = %998
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1004:                                             ; preds = %998
  %1005 = extractvalue { i32, i1 } %1001, 0, !nosanitize !44
  store i32 %1005, ptr %978, align 8, !tbaa !105
  %1006 = load i64, ptr %976, align 8, !tbaa !55
  %1007 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1006, i64 %981), !nosanitize !44
  %1008 = extractvalue { i64, i1 } %1007, 1, !nosanitize !44
  br i1 %1008, label %1009, label %1010, !prof !45, !nosanitize !44

1009:                                             ; preds = %1004
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1010:                                             ; preds = %1004
  %1011 = extractvalue { i64, i1 } %1007, 0, !nosanitize !44
  store i64 %1011, ptr %976, align 8, !tbaa !55
  %1012 = icmp eq i64 %1011, 0
  br i1 %1012, label %1013, label %1016

1013:                                             ; preds = %1010
  %1014 = getelementptr inbounds nuw i8, ptr %975, i64 16
  %1015 = load ptr, ptr %1014, align 8, !tbaa !40
  store ptr %1015, ptr %987, align 8, !tbaa !56
  br label %1016

1016:                                             ; preds = %1013, %1010, %969
  %1017 = load ptr, ptr %0, align 8, !tbaa !19
  %1018 = getelementptr inbounds nuw i8, ptr %1017, i64 32
  %1019 = load i32, ptr %1018, align 8, !tbaa !105
  %1020 = icmp eq i32 %1019, 0
  %1021 = select i1 %1020, i32 2, i32 3
  br label %.loopexit41

1022:                                             ; preds = %953
  %1023 = load i32, ptr %30, align 4, !tbaa !136
  %1024 = icmp eq i32 %1023, 0
  br i1 %1024, label %1089, label %1025

1025:                                             ; preds = %1022
  %1026 = load i64, ptr %9, align 8, !tbaa !72
  %1027 = icmp sgt i64 %1026, -1
  br i1 %1027, label %1028, label %1032

1028:                                             ; preds = %1025
  %1029 = load ptr, ptr %7, align 8, !tbaa !34
  %1030 = and i64 %1026, 4294967295
  %1031 = getelementptr inbounds nuw i8, ptr %1029, i64 %1030
  br label %1032

1032:                                             ; preds = %1028, %1025
  %1033 = phi ptr [ %1031, %1028 ], [ null, %1025 ]
  %1034 = zext i32 %954 to i64
  %1035 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1034, i64 %1026), !nosanitize !44
  %1036 = extractvalue { i64, i1 } %1035, 1, !nosanitize !44
  br i1 %1036, label %914, label %1037, !prof !45, !nosanitize !44

1037:                                             ; preds = %1032
  %1038 = extractvalue { i64, i1 } %1035, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1033, i64 noundef %1038, i32 noundef 0) #11
  %1039 = load i32, ptr %6, align 4, !tbaa !71
  %1040 = zext i32 %1039 to i64
  store i64 %1040, ptr %9, align 8, !tbaa !72
  %1041 = load ptr, ptr %0, align 8, !tbaa !19
  %1042 = getelementptr inbounds nuw i8, ptr %1041, i64 56
  %1043 = load ptr, ptr %1042, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %1043) #11
  %1044 = getelementptr inbounds nuw i8, ptr %1043, i64 40
  %1045 = load i64, ptr %1044, align 8, !tbaa !55
  %1046 = getelementptr inbounds nuw i8, ptr %1041, i64 32
  %1047 = load i32, ptr %1046, align 8, !tbaa !105
  %1048 = zext i32 %1047 to i64
  %1049 = tail call i64 @llvm.umin.i64(i64 %1045, i64 %1048)
  %1050 = trunc nuw i64 %1049 to i32
  %1051 = icmp eq i64 %1049, 0
  br i1 %1051, label %1084, label %1052

1052:                                             ; preds = %1037
  %1053 = getelementptr inbounds nuw i8, ptr %1041, i64 24
  %1054 = load ptr, ptr %1053, align 8, !tbaa !104
  %1055 = getelementptr inbounds nuw i8, ptr %1043, i64 32
  %1056 = load ptr, ptr %1055, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1054, ptr align 1 %1056, i64 %1049, i1 false)
  %1057 = load ptr, ptr %1053, align 8, !tbaa !104
  %1058 = getelementptr inbounds nuw i8, ptr %1057, i64 %1049
  store ptr %1058, ptr %1053, align 8, !tbaa !104
  %1059 = load ptr, ptr %1055, align 8, !tbaa !56
  %1060 = getelementptr inbounds nuw i8, ptr %1059, i64 %1049
  store ptr %1060, ptr %1055, align 8, !tbaa !56
  %1061 = getelementptr inbounds nuw i8, ptr %1041, i64 40
  %1062 = load i64, ptr %1061, align 8, !tbaa !106
  %1063 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1062, i64 %1049), !nosanitize !44
  %1064 = extractvalue { i64, i1 } %1063, 1, !nosanitize !44
  br i1 %1064, label %1065, label %1066, !prof !45, !nosanitize !44

1065:                                             ; preds = %1052
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !44
  unreachable, !nosanitize !44

1066:                                             ; preds = %1052
  %1067 = extractvalue { i64, i1 } %1063, 0, !nosanitize !44
  store i64 %1067, ptr %1061, align 8, !tbaa !106
  %1068 = load i32, ptr %1046, align 8, !tbaa !105
  %1069 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1068, i32 %1050), !nosanitize !44
  %1070 = extractvalue { i32, i1 } %1069, 1, !nosanitize !44
  br i1 %1070, label %1071, label %1072, !prof !45, !nosanitize !44

1071:                                             ; preds = %1066
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1072:                                             ; preds = %1066
  %1073 = extractvalue { i32, i1 } %1069, 0, !nosanitize !44
  store i32 %1073, ptr %1046, align 8, !tbaa !105
  %1074 = load i64, ptr %1044, align 8, !tbaa !55
  %1075 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1074, i64 %1049), !nosanitize !44
  %1076 = extractvalue { i64, i1 } %1075, 1, !nosanitize !44
  br i1 %1076, label %1077, label %1078, !prof !45, !nosanitize !44

1077:                                             ; preds = %1072
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !44
  unreachable, !nosanitize !44

1078:                                             ; preds = %1072
  %1079 = extractvalue { i64, i1 } %1075, 0, !nosanitize !44
  store i64 %1079, ptr %1044, align 8, !tbaa !55
  %1080 = icmp eq i64 %1079, 0
  br i1 %1080, label %1081, label %1084

1081:                                             ; preds = %1078
  %1082 = getelementptr inbounds nuw i8, ptr %1043, i64 16
  %1083 = load ptr, ptr %1082, align 8, !tbaa !40
  store ptr %1083, ptr %1055, align 8, !tbaa !56
  br label %1084

1084:                                             ; preds = %1081, %1078, %1037
  %1085 = load ptr, ptr %0, align 8, !tbaa !19
  %1086 = getelementptr inbounds nuw i8, ptr %1085, i64 32
  %1087 = load i32, ptr %1086, align 8, !tbaa !105
  %1088 = icmp eq i32 %1087, 0
  br i1 %1088, label %.loopexit41, label %1089

1089:                                             ; preds = %1084, %1022
  br label %.loopexit41

.loopexit41:                                      ; preds = %889, %765, %323, %1089, %1084, %1016
  %1090 = phi i32 [ 1, %1089 ], [ %1021, %1016 ], [ 0, %1084 ], [ 0, %323 ], [ 0, %765 ], [ 0, %889 ]
  ret i32 %1090
}

declare void @_tr_flush_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.usub.sat.v8i32(<8 x i32>, <8 x i32>) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nomerge noreturn nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 48}
!9 = !{!"z_stream_s", !10, i64 0, !12, i64 8, !13, i64 16, !10, i64 24, !12, i64 32, !13, i64 40, !10, i64 48, !14, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !12, i64 88, !13, i64 96, !13, i64 104}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 _ZTS14internal_state", !11, i64 0}
!15 = !{!9, !11, i64 64}
!16 = !{!9, !11, i64 80}
!17 = !{!9, !11, i64 72}
!18 = !{!9, !14, i64 56}
!19 = !{!20, !21, i64 0}
!20 = !{!"internal_state", !21, i64 0, !12, i64 8, !10, i64 16, !13, i64 24, !10, i64 32, !13, i64 40, !12, i64 48, !22, i64 56, !13, i64 64, !6, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !10, i64 96, !13, i64 104, !23, i64 112, !23, i64 120, !12, i64 128, !12, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !13, i64 152, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !12, i64 208, !6, i64 212, !6, i64 2504, !6, i64 2748, !24, i64 2904, !24, i64 2928, !24, i64 2952, !6, i64 2976, !6, i64 3008, !12, i64 5300, !12, i64 5304, !6, i64 5308, !10, i64 5888, !12, i64 5896, !12, i64 5900, !12, i64 5904, !13, i64 5912, !13, i64 5920, !12, i64 5928, !12, i64 5932, !27, i64 5936, !12, i64 5940, !12, i64 5944, !13, i64 5952, !12, i64 5960}
!21 = !{!"p1 _ZTS10z_stream_s", !11, i64 0}
!22 = !{!"p1 _ZTS11gz_header_s", !11, i64 0}
!23 = !{!"p1 short", !11, i64 0}
!24 = !{!"tree_desc_s", !25, i64 0, !12, i64 8, !26, i64 16}
!25 = !{!"p1 _ZTS9ct_data_s", !11, i64 0}
!26 = !{!"p1 _ZTS18static_tree_desc_s", !11, i64 0}
!27 = !{!"short", !6, i64 0}
!28 = !{!20, !12, i64 8}
!29 = !{!20, !12, i64 48}
!30 = !{!20, !12, i64 84}
!31 = !{!20, !12, i64 80}
!32 = !{!20, !12, i64 88}
!33 = !{!12, !12, i64 0}
!34 = !{!20, !10, i64 96}
!35 = !{!20, !23, i64 112}
!36 = !{!20, !12, i64 132}
!37 = !{!20, !23, i64 120}
!38 = !{!20, !13, i64 5952}
!39 = !{!20, !12, i64 5896}
!40 = !{!20, !10, i64 16}
!41 = !{!20, !13, i64 24}
!42 = !{!10, !10, i64 0}
!43 = !{!20, !10, i64 5888}
!44 = !{}
!45 = !{!"branch_weights", i32 1, i32 1048575}
!46 = !{!20, !12, i64 5904}
!47 = !{!20, !12, i64 196}
!48 = !{!20, !12, i64 200}
!49 = !{!20, !6, i64 72}
!50 = !{!20, !12, i64 136}
!51 = !{!20, !12, i64 140}
!52 = !{!20, !12, i64 144}
!53 = !{!9, !13, i64 16}
!54 = !{!9, !12, i64 88}
!55 = !{!20, !13, i64 40}
!56 = !{!20, !10, i64 32}
!57 = !{!9, !13, i64 96}
!58 = !{!20, !12, i64 76}
!59 = !{!20, !13, i64 104}
!60 = !{!27, !27, i64 0}
!61 = !{!20, !12, i64 5960}
!62 = !{!63, !27, i64 2}
!63 = !{!"config_s", !27, i64 0, !27, i64 2, !27, i64 4, !27, i64 6, !11, i64 8}
!64 = !{!20, !12, i64 192}
!65 = !{!63, !27, i64 0}
!66 = !{!20, !12, i64 204}
!67 = !{!63, !27, i64 4}
!68 = !{!20, !12, i64 208}
!69 = !{!63, !27, i64 6}
!70 = !{!20, !12, i64 188}
!71 = !{!20, !12, i64 172}
!72 = !{!20, !13, i64 152}
!73 = !{!20, !12, i64 180}
!74 = !{!20, !12, i64 5932}
!75 = !{!20, !12, i64 184}
!76 = !{!20, !12, i64 160}
!77 = !{!20, !12, i64 168}
!78 = !{!20, !12, i64 128}
!79 = !{!9, !12, i64 8}
!80 = !{!9, !10, i64 0}
!81 = !{!20, !12, i64 176}
!82 = distinct !{!82, !83, !84, !85}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!"llvm.loop.isvectorized", i32 1}
!85 = !{!"llvm.loop.unroll.runtime.disable"}
!86 = distinct !{!86, !83, !85, !84}
!87 = distinct !{!87, !83, !84, !85}
!88 = distinct !{!88, !83, !85, !84}
!89 = distinct !{!89, !83}
!90 = distinct !{!90, !83}
!91 = !{!"branch_weights", i32 1048575, i32 1}
!92 = distinct !{!92, !83}
!93 = distinct !{!93, !83, !84, !85}
!94 = distinct !{!94, !83, !85, !84}
!95 = distinct !{!95, !83, !84, !85}
!96 = distinct !{!96, !83, !85, !84}
!97 = distinct !{!97, !83}
!98 = !{!20, !22, i64 56}
!99 = !{!20, !12, i64 5940}
!100 = !{!20, !12, i64 5944}
!101 = !{!20, !27, i64 5936}
!102 = distinct !{!102, !83}
!103 = !{!63, !11, i64 8}
!104 = !{!9, !10, i64 24}
!105 = !{!9, !12, i64 32}
!106 = !{!9, !13, i64 40}
!107 = !{!108, !10, i64 56}
!108 = !{!"gz_header_s", !12, i64 0, !13, i64 8, !12, i64 16, !12, i64 20, !10, i64 24, !12, i64 32, !12, i64 36, !10, i64 40, !12, i64 48, !10, i64 56, !12, i64 64, !12, i64 68, !12, i64 72}
!109 = !{!108, !10, i64 40}
!110 = !{!108, !10, i64 24}
!111 = !{!108, !12, i64 0}
!112 = !{!108, !12, i64 68}
!113 = !{!108, !13, i64 8}
!114 = !{!108, !12, i64 20}
!115 = !{!108, !12, i64 32}
!116 = !{!20, !13, i64 64}
!117 = !{!"branch_weights", i32 1, i32 1048574}
!118 = distinct !{!118, !83, !119}
!119 = !{!"llvm.loop.peeled.count", i32 1}
!120 = distinct !{!120, !83}
!121 = distinct !{!121, !83}
!122 = !{!20, !12, i64 5928}
!123 = distinct !{!123, !83, !84, !85}
!124 = distinct !{!124, !83, !85, !84}
!125 = distinct !{!125, !83, !84, !85}
!126 = distinct !{!126, !83, !85, !84}
!127 = !{!"branch_weights", i32 1, i32 127}
!128 = !{!"branch_weights", i32 127, i32 134217473}
!129 = distinct !{!129, !83}
!130 = distinct !{!130, !83}
!131 = distinct !{!131, !83}
!132 = distinct !{!132, !83, !84, !85}
!133 = distinct !{!133, !83, !85, !84}
!134 = distinct !{!134, !83, !84, !85}
!135 = distinct !{!135, !83, !85, !84}
!136 = !{!20, !12, i64 5900}
!137 = distinct !{!137, !83, !84, !85}
!138 = distinct !{!138, !83, !85, !84}
!139 = distinct !{!139, !83, !84, !85}
!140 = distinct !{!140, !83, !85, !84}
!141 = distinct !{!141, !83}
!142 = !{!20, !25, i64 2904}
!143 = !{!20, !25, i64 2928}
!144 = !{!20, !25, i64 2952}
!145 = distinct !{!145, !83, !84, !85}
!146 = distinct !{!146, !83, !85, !84}
!147 = distinct !{!147, !83, !84, !85}
!148 = distinct !{!148, !83, !85, !84}
!149 = distinct !{!149, !83}
!150 = distinct !{!150, !83}
!151 = distinct !{!151, !83}
!152 = distinct !{!152, !83, !84, !85}
!153 = distinct !{!153, !83, !85, !84}
!154 = distinct !{!154, !83, !84, !85}
!155 = distinct !{!155, !83, !85, !84}
!156 = !{!20, !12, i64 164}
!157 = distinct !{!157, !83}
