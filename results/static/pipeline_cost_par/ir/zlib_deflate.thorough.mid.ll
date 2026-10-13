; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_deflate.ll'
source_filename = "/mydata/zlib/deflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_s = type { i16, i16, i16, i16, ptr }
%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }

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
  %33 = tail call ptr %21(ptr noundef %32, i32 noundef 1, i32 noundef 5968) #8
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
  %45 = tail call ptr %43(ptr noundef %44, i32 noundef 32768, i32 noundef 2) #8
  %46 = getelementptr inbounds nuw i8, ptr %33, i64 96
  store ptr %45, ptr %46, align 8, !tbaa !34
  %47 = load ptr, ptr %15, align 8, !tbaa !15
  %48 = load ptr, ptr %31, align 8, !tbaa !16
  %49 = load i32, ptr %40, align 8, !tbaa !31
  %50 = tail call ptr %47(ptr noundef %48, i32 noundef %49, i32 noundef 2) #8
  %51 = getelementptr inbounds nuw i8, ptr %33, i64 112
  store ptr %50, ptr %51, align 8, !tbaa !35
  %52 = load ptr, ptr %15, align 8, !tbaa !15
  %53 = load ptr, ptr %31, align 8, !tbaa !16
  %54 = load i32, ptr %42, align 4, !tbaa !36
  %55 = tail call ptr %52(ptr noundef %53, i32 noundef %54, i32 noundef 2) #8
  %56 = getelementptr inbounds nuw i8, ptr %33, i64 120
  store ptr %55, ptr %56, align 8, !tbaa !37
  %57 = getelementptr inbounds nuw i8, ptr %33, i64 5952
  store i64 0, ptr %57, align 8, !tbaa !38
  %58 = getelementptr inbounds nuw i8, ptr %33, i64 5896
  store i32 16384, ptr %58, align 8, !tbaa !39
  %59 = load ptr, ptr %15, align 8, !tbaa !15
  %60 = load ptr, ptr %31, align 8, !tbaa !16
  %61 = tail call ptr %59(ptr noundef %60, i32 noundef 16384, i32 noundef 4) #8
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
  tail call void %82(ptr noundef %98, ptr noundef nonnull %95) #8
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
  tail call void %102(ptr noundef %108, ptr noundef nonnull %105) #8
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
  tail call void %112(ptr noundef %118, ptr noundef nonnull %115) #8
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
  tail call void %122(ptr noundef %128, ptr noundef nonnull %125) #8
  %129 = load ptr, ptr %22, align 8, !tbaa !17
  %130 = load ptr, ptr %37, align 8, !tbaa !18
  br label %131

131:                                              ; preds = %127, %121
  %132 = phi ptr [ %130, %127 ], [ %123, %121 ]
  %133 = phi ptr [ %129, %127 ], [ %122, %121 ]
  %134 = load ptr, ptr %31, align 8, !tbaa !16
  tail call void %133(ptr noundef %134, ptr noundef %132) #8
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
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

141:                                              ; preds = %135
  %142 = extractvalue { i32, i1 } %138, 0, !nosanitize !44
  %143 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %142, i32 3), !nosanitize !44
  %144 = extractvalue { i32, i1 } %143, 1, !nosanitize !44
  br i1 %144, label %145, label %146, !prof !45, !nosanitize !44

145:                                              ; preds = %141
  tail call void @llvm.ubsantrap(i8 12) #9, !nosanitize !44
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
  br i1 %9, label %198, label %10

10:                                               ; preds = %8
  %11 = load i8, ptr %6, align 1, !tbaa !5
  %12 = icmp ne i8 %11, 49
  %13 = icmp ne i32 %7, 112
  %14 = or i1 %13, %12
  br i1 %14, label %198, label %15

15:                                               ; preds = %10
  %16 = icmp eq ptr %0, null
  br i1 %16, label %198, label %17

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
  %63 = tail call ptr %25(ptr noundef %62, i32 noundef 1, i32 noundef 5968) #8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %198, label %65

65:                                               ; preds = %60
  %66 = select i1 %58, i32 9, i32 %43
  %67 = getelementptr inbounds nuw i8, ptr %63, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5960) %67, i8 0, i64 5960, i1 false)
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %63, ptr %68, align 8, !tbaa !18
  store ptr %0, ptr %63, align 8, !tbaa !19
  %69 = getelementptr inbounds nuw i8, ptr %63, i64 8
  store i32 42, ptr %69, align 8, !tbaa !28
  %70 = getelementptr inbounds nuw i8, ptr %63, i64 48
  store i32 %45, ptr %70, align 8, !tbaa !29
  %71 = getelementptr inbounds nuw i8, ptr %63, i64 84
  store i32 %66, ptr %71, align 4, !tbaa !30
  %72 = shl nuw nsw i32 1, %66
  %73 = getelementptr inbounds nuw i8, ptr %63, i64 80
  store i32 %72, ptr %73, align 8, !tbaa !31
  %74 = add nsw i32 %72, -1
  %75 = getelementptr inbounds nuw i8, ptr %63, i64 88
  store i32 %74, ptr %75, align 8, !tbaa !32
  %76 = add nuw nsw i32 %4, 7
  %77 = getelementptr inbounds nuw i8, ptr %63, i64 136
  store i32 %76, ptr %77, align 8, !tbaa !50
  %78 = shl nuw nsw i32 128, %4
  %79 = getelementptr inbounds nuw i8, ptr %63, i64 132
  store i32 %78, ptr %79, align 4, !tbaa !36
  %80 = add nsw i32 %78, -1
  %81 = getelementptr inbounds nuw i8, ptr %63, i64 140
  store i32 %80, ptr %81, align 4, !tbaa !51
  %82 = trunc nuw nsw i32 %4 to i8
  %83 = add nuw nsw i8 %82, 9
  %84 = udiv i8 %83, 3
  %85 = zext nneg i8 %84 to i32
  %86 = getelementptr inbounds nuw i8, ptr %63, i64 144
  store i32 %85, ptr %86, align 8, !tbaa !52
  %87 = load ptr, ptr %19, align 8, !tbaa !15
  %88 = load ptr, ptr %61, align 8, !tbaa !16
  %89 = tail call ptr %87(ptr noundef %88, i32 noundef %72, i32 noundef 2) #8
  %90 = getelementptr inbounds nuw i8, ptr %63, i64 96
  store ptr %89, ptr %90, align 8, !tbaa !34
  %91 = load ptr, ptr %19, align 8, !tbaa !15
  %92 = load ptr, ptr %61, align 8, !tbaa !16
  %93 = load i32, ptr %73, align 8, !tbaa !31
  %94 = tail call ptr %91(ptr noundef %92, i32 noundef %93, i32 noundef 2) #8
  %95 = getelementptr inbounds nuw i8, ptr %63, i64 112
  store ptr %94, ptr %95, align 8, !tbaa !35
  %96 = load ptr, ptr %19, align 8, !tbaa !15
  %97 = load ptr, ptr %61, align 8, !tbaa !16
  %98 = load i32, ptr %79, align 4, !tbaa !36
  %99 = tail call ptr %96(ptr noundef %97, i32 noundef %98, i32 noundef 2) #8
  %100 = getelementptr inbounds nuw i8, ptr %63, i64 120
  store ptr %99, ptr %100, align 8, !tbaa !37
  %101 = getelementptr inbounds nuw i8, ptr %63, i64 5952
  store i64 0, ptr %101, align 8, !tbaa !38
  %102 = shl nuw nsw i32 64, %4
  %103 = getelementptr inbounds nuw i8, ptr %63, i64 5896
  store i32 %102, ptr %103, align 8, !tbaa !39
  %104 = load ptr, ptr %19, align 8, !tbaa !15
  %105 = load ptr, ptr %61, align 8, !tbaa !16
  %106 = tail call ptr %104(ptr noundef %105, i32 noundef %102, i32 noundef 4) #8
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
  store i32 666, ptr %69, align 8, !tbaa !28
  %123 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 48), align 16, !tbaa !42
  store ptr %123, ptr %18, align 8, !tbaa !8
  %124 = load ptr, ptr %19, align 8, !tbaa !15
  %125 = icmp eq ptr %124, null
  br i1 %125, label %198, label %126

126:                                              ; preds = %122
  %127 = load ptr, ptr %26, align 8, !tbaa !17
  %128 = icmp eq ptr %127, null
  br i1 %128, label %198, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr %68, align 8, !tbaa !18
  %131 = icmp eq ptr %130, null
  br i1 %131, label %198, label %132

132:                                              ; preds = %129
  %133 = load ptr, ptr %130, align 8, !tbaa !19
  %134 = icmp eq ptr %133, %0
  br i1 %134, label %135, label %198

135:                                              ; preds = %132
  %136 = getelementptr inbounds nuw i8, ptr %130, i64 8
  %137 = load i32, ptr %136, align 8, !tbaa !28
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
  tail call void %127(ptr noundef %143, ptr noundef nonnull %140) #8
  %144 = load ptr, ptr %68, align 8, !tbaa !18
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
  tail call void %147(ptr noundef %153, ptr noundef nonnull %150) #8
  %154 = load ptr, ptr %68, align 8, !tbaa !18
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
  tail call void %157(ptr noundef %163, ptr noundef nonnull %160) #8
  %164 = load ptr, ptr %68, align 8, !tbaa !18
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
  tail call void %167(ptr noundef %173, ptr noundef nonnull %170) #8
  %174 = load ptr, ptr %26, align 8, !tbaa !17
  %175 = load ptr, ptr %68, align 8, !tbaa !18
  br label %176

176:                                              ; preds = %172, %166
  %177 = phi ptr [ %175, %172 ], [ %168, %166 ]
  %178 = phi ptr [ %174, %172 ], [ %167, %166 ]
  %179 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %178(ptr noundef %179, ptr noundef %177) #8
  store ptr null, ptr %68, align 8, !tbaa !18
  br label %198

180:                                              ; preds = %117
  %181 = getelementptr inbounds nuw i8, ptr %106, i64 %109
  %182 = getelementptr inbounds nuw i8, ptr %63, i64 5888
  store ptr %181, ptr %182, align 8, !tbaa !43
  %183 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %108, i32 1), !nosanitize !44
  %184 = extractvalue { i32, i1 } %183, 1, !nosanitize !44
  br i1 %184, label %185, label %186, !prof !45, !nosanitize !44

185:                                              ; preds = %180
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

186:                                              ; preds = %180
  %187 = extractvalue { i32, i1 } %183, 0, !nosanitize !44
  %188 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %187, i32 3), !nosanitize !44
  %189 = extractvalue { i32, i1 } %188, 1, !nosanitize !44
  br i1 %189, label %190, label %191, !prof !45, !nosanitize !44

190:                                              ; preds = %186
  tail call void @llvm.ubsantrap(i8 12) #9, !nosanitize !44
  unreachable, !nosanitize !44

191:                                              ; preds = %186
  %192 = extractvalue { i32, i1 } %188, 0, !nosanitize !44
  %193 = getelementptr inbounds nuw i8, ptr %63, i64 5904
  store i32 %192, ptr %193, align 8, !tbaa !46
  %194 = getelementptr inbounds nuw i8, ptr %63, i64 196
  store i32 %32, ptr %194, align 4, !tbaa !47
  %195 = getelementptr inbounds nuw i8, ptr %63, i64 200
  store i32 %5, ptr %195, align 8, !tbaa !48
  %196 = getelementptr inbounds nuw i8, ptr %63, i64 72
  store i8 8, ptr %196, align 8, !tbaa !49
  %197 = tail call i32 @deflateReset(ptr noundef nonnull %0)
  br label %198

198:                                              ; preds = %191, %176, %135, %132, %129, %126, %122, %60, %57, %42, %34, %15, %10, %8
  %199 = phi i32 [ %197, %191 ], [ -6, %10 ], [ -6, %8 ], [ -2, %15 ], [ -2, %34 ], [ -2, %57 ], [ -2, %42 ], [ -4, %60 ], [ -4, %122 ], [ -4, %126 ], [ -4, %129 ], [ -4, %132 ], [ -4, %135 ], [ -4, %176 ]
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
  tail call void %9(ptr noundef %27, ptr noundef nonnull %23) #8
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
  tail call void %31(ptr noundef %38, ptr noundef nonnull %34) #8
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
  tail call void %42(ptr noundef %49, ptr noundef nonnull %45) #8
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
  tail call void %53(ptr noundef %60, ptr noundef nonnull %56) #8
  %61 = load ptr, ptr %8, align 8, !tbaa !17
  %62 = load ptr, ptr %12, align 8, !tbaa !18
  br label %63

63:                                               ; preds = %58, %52
  %64 = phi ptr [ %62, %58 ], [ %54, %52 ]
  %65 = phi ptr [ %61, %58 ], [ %53, %52 ]
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %67 = load ptr, ptr %66, align 8, !tbaa !16
  tail call void %65(ptr noundef %67, ptr noundef %64) #8
  store ptr null, ptr %12, align 8, !tbaa !18
  %68 = icmp eq i32 %20, 113
  %69 = select i1 %68, i32 -3, i32 0
  br label %70

70:                                               ; preds = %63, %18, %15, %11, %7, %3, %1
  %71 = phi i32 [ %69, %63 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
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
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %96, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !19
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %96

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !28
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
  tail call void @llvm.ubsantrap(i8 13) #10, !nosanitize !44
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
  %43 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #8
  br label %46

44:                                               ; preds = %38
  %45 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #8
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i64 [ %43, %42 ], [ %45, %44 ]
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %47, ptr %48, align 8, !tbaa !57
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %49, align 4, !tbaa !58
  tail call void @_tr_init(ptr noundef nonnull %13) #8
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
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

61:                                               ; preds = %46
  %62 = extractvalue { i32, i1 } %58, 0, !nosanitize !44
  %63 = getelementptr inbounds nuw i8, ptr %50, i64 120
  %64 = load ptr, ptr %63, align 8, !tbaa !37
  %65 = zext i32 %62 to i64
  %66 = getelementptr inbounds nuw i16, ptr %64, i64 %65
  store i16 0, ptr %66, align 2, !tbaa !60
  %67 = shl nuw nsw i64 %65, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %64, i8 0, i64 %67, i1 false)
  %68 = getelementptr inbounds nuw i8, ptr %50, i64 5960
  store i32 0, ptr %68, align 8, !tbaa !61
  %69 = getelementptr inbounds nuw i8, ptr %50, i64 196
  %70 = load i32, ptr %69, align 4, !tbaa !47
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %71, i32 1
  %73 = load i16, ptr %72, align 2, !tbaa !62
  %74 = zext i16 %73 to i32
  %75 = getelementptr inbounds nuw i8, ptr %50, i64 192
  store i32 %74, ptr %75, align 8, !tbaa !64
  %76 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %71
  %77 = load i16, ptr %76, align 16, !tbaa !65
  %78 = zext i16 %77 to i32
  %79 = getelementptr inbounds nuw i8, ptr %50, i64 204
  store i32 %78, ptr %79, align 4, !tbaa !66
  %80 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %71, i32 2
  %81 = load i16, ptr %80, align 4, !tbaa !67
  %82 = zext i16 %81 to i32
  %83 = getelementptr inbounds nuw i8, ptr %50, i64 208
  store i32 %82, ptr %83, align 8, !tbaa !68
  %84 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %71, i32 3
  %85 = load i16, ptr %84, align 2, !tbaa !69
  %86 = zext i16 %85 to i32
  %87 = getelementptr inbounds nuw i8, ptr %50, i64 188
  store i32 %86, ptr %87, align 4, !tbaa !70
  %88 = getelementptr inbounds nuw i8, ptr %50, i64 172
  store i32 0, ptr %88, align 4, !tbaa !71
  %89 = getelementptr inbounds nuw i8, ptr %50, i64 152
  store i64 0, ptr %89, align 8, !tbaa !72
  %90 = getelementptr inbounds nuw i8, ptr %50, i64 180
  store i32 0, ptr %90, align 4, !tbaa !73
  %91 = getelementptr inbounds nuw i8, ptr %50, i64 5932
  store i32 0, ptr %91, align 4, !tbaa !74
  %92 = getelementptr inbounds nuw i8, ptr %50, i64 184
  store i32 2, ptr %92, align 8, !tbaa !75
  %93 = getelementptr inbounds nuw i8, ptr %50, i64 160
  store i32 2, ptr %93, align 8, !tbaa !76
  %94 = getelementptr inbounds nuw i8, ptr %50, i64 168
  store i32 0, ptr %94, align 8, !tbaa !77
  %95 = getelementptr inbounds nuw i8, ptr %50, i64 128
  store i32 0, ptr %95, align 8, !tbaa !78
  br label %96

96:                                               ; preds = %61, %18, %15, %11, %7, %3, %1
  %97 = phi i32 [ 0, %61 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %97
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateSetDictionary(ptr noundef captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %1072, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %1072, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %1072, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %1072, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !19
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %1072

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !28
  switch i32 %22, label %1072 [
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
  br i1 %24, label %1072, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %27 = load i32, ptr %26, align 8, !tbaa !29
  switch i32 %27, label %34 [
    i32 2, label %1072
    i32 1, label %28
  ]

28:                                               ; preds = %25
  %29 = icmp eq i32 %22, 42
  br i1 %29, label %30, label %1072

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %32 = load i32, ptr %31, align 4, !tbaa !73
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %1072

34:                                               ; preds = %25
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %36 = load i32, ptr %35, align 4, !tbaa !73
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %1072

38:                                               ; preds = %34
  store i32 0, ptr %26, align 8, !tbaa !29
  %39 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %40 = load i32, ptr %39, align 8, !tbaa !31
  %41 = icmp ult i32 %2, %40
  br i1 %41, label %80, label %49

42:                                               ; preds = %30
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %44 = load i64, ptr %43, align 8, !tbaa !57
  %45 = tail call i64 @adler32(i64 noundef %44, ptr noundef nonnull %1, i32 noundef %2) #8
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
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

57:                                               ; preds = %51
  %58 = extractvalue { i32, i1 } %54, 0, !nosanitize !44
  %59 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %60 = load ptr, ptr %59, align 8, !tbaa !37
  %61 = zext i32 %58 to i64
  %62 = getelementptr inbounds nuw i16, ptr %60, i64 %61
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
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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

105:                                              ; preds = %369, %80
  %106 = phi i32 [ %261, %369 ], [ %104, %80 ]
  %107 = load i64, ptr %89, align 8, !tbaa !59
  %108 = zext i32 %106 to i64
  %109 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %107, i64 %108), !nosanitize !44
  %110 = extractvalue { i64, i1 } %109, 1, !nosanitize !44
  br i1 %110, label %111, label %112, !prof !45, !nosanitize !44

111:                                              ; preds = %105
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

112:                                              ; preds = %105
  %113 = extractvalue { i64, i1 } %109, 0, !nosanitize !44
  %114 = load i32, ptr %90, align 4, !tbaa !71
  %115 = zext i32 %114 to i64
  %116 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %113, i64 %115), !nosanitize !44
  %117 = extractvalue { i64, i1 } %116, 1, !nosanitize !44
  br i1 %117, label %118, label %119, !prof !45, !nosanitize !44

118:                                              ; preds = %112
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

119:                                              ; preds = %112
  %120 = extractvalue { i64, i1 } %116, 0, !nosanitize !44
  %121 = trunc i64 %120 to i32
  %122 = load i32, ptr %81, align 8, !tbaa !31
  %123 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %122, i32 262), !nosanitize !44
  %124 = extractvalue { i32, i1 } %123, 1, !nosanitize !44
  br i1 %124, label %125, label %126, !prof !45, !nosanitize !44

125:                                              ; preds = %119
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

126:                                              ; preds = %119
  %127 = extractvalue { i32, i1 } %123, 0, !nosanitize !44
  %128 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %83, i32 %127), !nosanitize !44
  %129 = extractvalue { i32, i1 } %128, 1, !nosanitize !44
  br i1 %129, label %130, label %131, !prof !45, !nosanitize !44

130:                                              ; preds = %126
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

131:                                              ; preds = %126
  %132 = extractvalue { i32, i1 } %128, 0, !nosanitize !44
  %133 = icmp ult i32 %114, %132
  br i1 %133, label %208, label %134

134:                                              ; preds = %131
  %135 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %83, i32 %121), !nosanitize !44
  %136 = extractvalue { i32, i1 } %135, 1, !nosanitize !44
  br i1 %136, label %137, label %138, !prof !45, !nosanitize !44

137:                                              ; preds = %134
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

147:                                              ; preds = %138
  %148 = extractvalue { i32, i1 } %144, 0, !nosanitize !44
  store i32 %148, ptr %93, align 8, !tbaa !81
  %149 = load i32, ptr %90, align 4, !tbaa !71
  %150 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %149, i32 %83), !nosanitize !44
  %151 = extractvalue { i32, i1 } %150, 1, !nosanitize !44
  br i1 %151, label %152, label %153, !prof !45, !nosanitize !44

152:                                              ; preds = %153, %147
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  %168 = getelementptr inbounds nuw i16, ptr %166, i64 %167
  br label %169

169:                                              ; preds = %180, %163
  %170 = phi ptr [ %168, %163 ], [ %172, %180 ]
  %171 = phi i32 [ %165, %163 ], [ %181, %180 ]
  %172 = getelementptr inbounds i8, ptr %170, i64 -2
  %173 = load i16, ptr %172, align 2, !tbaa !60
  %174 = zext i16 %173 to i32
  %175 = tail call i32 @llvm.usub.sat.i32(i32 %174, i32 %164)
  %176 = trunc nuw i32 %175 to i16
  store i16 %176, ptr %172, align 2, !tbaa !60
  %177 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %171, i32 1), !nosanitize !44
  %178 = extractvalue { i32, i1 } %177, 1, !nosanitize !44
  br i1 %178, label %179, label %180, !prof !45, !nosanitize !44

179:                                              ; preds = %169
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

180:                                              ; preds = %169
  %181 = extractvalue { i32, i1 } %177, 0, !nosanitize !44
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %169, !llvm.loop !82

183:                                              ; preds = %180
  %184 = load ptr, ptr %98, align 8, !tbaa !35
  %185 = zext i32 %164 to i64
  %186 = getelementptr inbounds nuw i16, ptr %184, i64 %185
  br label %187

187:                                              ; preds = %198, %183
  %188 = phi ptr [ %186, %183 ], [ %190, %198 ]
  %189 = phi i32 [ %164, %183 ], [ %199, %198 ]
  %190 = getelementptr inbounds i8, ptr %188, i64 -2
  %191 = load i16, ptr %190, align 2, !tbaa !60
  %192 = zext i16 %191 to i32
  %193 = tail call i32 @llvm.usub.sat.i32(i32 %192, i32 %164)
  %194 = trunc nuw i32 %193 to i16
  store i16 %194, ptr %190, align 2, !tbaa !60
  %195 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %189, i32 1), !nosanitize !44
  %196 = extractvalue { i32, i1 } %195, 1, !nosanitize !44
  br i1 %196, label %197, label %198, !prof !45, !nosanitize !44

197:                                              ; preds = %187
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

198:                                              ; preds = %187
  %199 = extractvalue { i32, i1 } %195, 0, !nosanitize !44
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %187, !llvm.loop !84

201:                                              ; preds = %198
  store i32 1, ptr %99, align 8, !tbaa !61
  %202 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %121, i32 %83), !nosanitize !44
  %203 = extractvalue { i32, i1 } %202, 1, !nosanitize !44
  br i1 %203, label %204, label %205, !prof !45, !nosanitize !44

204:                                              ; preds = %201
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

205:                                              ; preds = %201
  %206 = extractvalue { i32, i1 } %202, 0, !nosanitize !44
  %207 = load i32, ptr %82, align 4, !tbaa !73
  br label %208

208:                                              ; preds = %205, %131
  %209 = phi i32 [ %207, %205 ], [ %106, %131 ]
  %210 = phi i32 [ %154, %205 ], [ %114, %131 ]
  %211 = phi i32 [ %206, %205 ], [ %121, %131 ]
  %212 = load ptr, ptr %15, align 8, !tbaa !19
  %213 = getelementptr inbounds nuw i8, ptr %212, i64 8
  %214 = load i32, ptr %213, align 8, !tbaa !79
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %374, label %216

216:                                              ; preds = %208
  %217 = load ptr, ptr %92, align 8, !tbaa !34
  %218 = zext i32 %210 to i64
  %219 = getelementptr inbounds nuw i8, ptr %217, i64 %218
  %220 = zext i32 %209 to i64
  %221 = getelementptr inbounds nuw i8, ptr %219, i64 %220
  %222 = tail call i32 @llvm.umin.i32(i32 %214, i32 %211)
  %223 = icmp eq i32 %211, 0
  br i1 %223, label %255, label %224

224:                                              ; preds = %216
  %225 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %214, i32 %222), !nosanitize !44
  %226 = extractvalue { i32, i1 } %225, 1, !nosanitize !44
  br i1 false, label %227, label %228, !prof !45, !nosanitize !44

227:                                              ; preds = %224
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

228:                                              ; preds = %224
  %229 = extractvalue { i32, i1 } %225, 0, !nosanitize !44
  store i32 %229, ptr %213, align 8, !tbaa !79
  %230 = load ptr, ptr %212, align 8, !tbaa !80
  %231 = zext i32 %222 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %221, ptr align 1 %230, i64 %231, i1 false)
  %232 = getelementptr inbounds nuw i8, ptr %212, i64 56
  %233 = load ptr, ptr %232, align 8, !tbaa !18
  %234 = getelementptr inbounds nuw i8, ptr %233, i64 48
  %235 = load i32, ptr %234, align 8, !tbaa !29
  switch i32 %235, label %244 [
    i32 1, label %236
    i32 2, label %240
  ]

236:                                              ; preds = %228
  %237 = getelementptr inbounds nuw i8, ptr %212, i64 96
  %238 = load i64, ptr %237, align 8, !tbaa !57
  %239 = tail call i64 @adler32(i64 noundef %238, ptr noundef %221, i32 noundef %222) #8
  store i64 %239, ptr %237, align 8, !tbaa !57
  br label %244

240:                                              ; preds = %228
  %241 = getelementptr inbounds nuw i8, ptr %212, i64 96
  %242 = load i64, ptr %241, align 8, !tbaa !57
  %243 = tail call i64 @crc32(i64 noundef %242, ptr noundef %221, i32 noundef %222) #8
  store i64 %243, ptr %241, align 8, !tbaa !57
  br label %244

244:                                              ; preds = %240, %236, %228
  %245 = load ptr, ptr %212, align 8, !tbaa !80
  %246 = getelementptr inbounds nuw i8, ptr %245, i64 %231
  store ptr %246, ptr %212, align 8, !tbaa !80
  %247 = getelementptr inbounds nuw i8, ptr %212, i64 16
  %248 = load i64, ptr %247, align 8, !tbaa !53
  %249 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %248, i64 %231), !nosanitize !44
  %250 = extractvalue { i64, i1 } %249, 1, !nosanitize !44
  br i1 %250, label %251, label %252, !prof !45, !nosanitize !44

251:                                              ; preds = %244
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

252:                                              ; preds = %244
  %253 = extractvalue { i64, i1 } %249, 0, !nosanitize !44
  store i64 %253, ptr %247, align 8, !tbaa !53
  %254 = load i32, ptr %82, align 4, !tbaa !73
  br label %255

255:                                              ; preds = %252, %216
  %256 = phi i32 [ %209, %216 ], [ %254, %252 ]
  %257 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %256, i32 %222), !nosanitize !44
  %258 = extractvalue { i32, i1 } %257, 1, !nosanitize !44
  br i1 %258, label %259, label %260, !prof !45, !nosanitize !44

259:                                              ; preds = %255
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

260:                                              ; preds = %255
  %261 = extractvalue { i32, i1 } %257, 0, !nosanitize !44
  store i32 %261, ptr %82, align 4, !tbaa !73
  %262 = load i32, ptr %95, align 4, !tbaa !74
  %263 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %261, i32 %262), !nosanitize !44
  %264 = extractvalue { i32, i1 } %263, 1, !nosanitize !44
  br i1 %264, label %265, label %266, !prof !45, !nosanitize !44

265:                                              ; preds = %260
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

266:                                              ; preds = %260
  %267 = extractvalue { i32, i1 } %263, 0, !nosanitize !44
  %268 = icmp ugt i32 %267, 2
  br i1 %268, label %269, label %367

269:                                              ; preds = %266
  %270 = load i32, ptr %90, align 4, !tbaa !71
  %271 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %270, i32 %262), !nosanitize !44
  %272 = extractvalue { i32, i1 } %271, 0, !nosanitize !44
  %273 = extractvalue { i32, i1 } %271, 1, !nosanitize !44
  br i1 %273, label %274, label %275, !prof !45, !nosanitize !44

274:                                              ; preds = %269
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

275:                                              ; preds = %269
  %276 = load ptr, ptr %92, align 8, !tbaa !34
  %277 = zext i32 %272 to i64
  %278 = getelementptr inbounds nuw i8, ptr %276, i64 %277
  %279 = load i8, ptr %278, align 1, !tbaa !5
  %280 = zext i8 %279 to i32
  store i32 %280, ptr %100, align 8, !tbaa !78
  %281 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %272, i32 1), !nosanitize !44
  %282 = extractvalue { i32, i1 } %281, 1, !nosanitize !44
  br i1 %282, label %283, label %284, !prof !45, !nosanitize !44

283:                                              ; preds = %275
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

284:                                              ; preds = %275
  %285 = extractvalue { i32, i1 } %281, 0, !nosanitize !44
  %286 = load i32, ptr %101, align 8, !tbaa !52
  %287 = shl i32 %280, %286
  %288 = zext i32 %285 to i64
  %289 = getelementptr inbounds nuw i8, ptr %276, i64 %288
  %290 = load i8, ptr %289, align 1, !tbaa !5
  %291 = zext i8 %290 to i32
  %292 = xor i32 %287, %291
  %293 = load i32, ptr %102, align 4, !tbaa !51
  %294 = and i32 %292, %293
  store i32 %294, ptr %100, align 8, !tbaa !78
  %mv.h11 = icmp sge i32 %270, 0
  %mv.h.fr12 = freeze i1 %mv.h11
  br i1 %mv.h.fr12, label %.mv.ph13.mv.fast, label %.mv.ph13

.mv.ph13.mv.fast:                                 ; preds = %284
  br label %295

295:                                              ; preds = %326, %.mv.ph13.mv.fast
  %296 = phi i32 [ %294, %.mv.ph13.mv.fast ], [ %312, %326 ]
  %297 = phi i32 [ %262, %.mv.ph13.mv.fast ], [ %323, %326 ]
  %298 = phi i32 [ %272, %.mv.ph13.mv.fast ], [ %327, %326 ]
  %299 = icmp eq i32 %297, 0
  br i1 %299, label %.loopexit10, label %300

300:                                              ; preds = %295
  %301 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %298, i32 3), !nosanitize !44
  %302 = extractvalue { i32, i1 } %301, 1, !nosanitize !44
  br i1 false, label %338, label %303, !prof !45, !nosanitize !44

303:                                              ; preds = %300
  %304 = shl i32 %296, %286
  %305 = extractvalue { i32, i1 } %301, 0, !nosanitize !44
  %306 = add i32 %305, -1
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds nuw i8, ptr %276, i64 %307
  %309 = load i8, ptr %308, align 1, !tbaa !5
  %310 = zext i8 %309 to i32
  %311 = xor i32 %304, %310
  %312 = and i32 %311, %293
  store i32 %312, ptr %100, align 8, !tbaa !78
  %313 = load ptr, ptr %97, align 8, !tbaa !37
  %314 = zext i32 %312 to i64
  %315 = getelementptr inbounds nuw i16, ptr %313, i64 %314
  %316 = load i16, ptr %315, align 2, !tbaa !60
  %317 = load ptr, ptr %98, align 8, !tbaa !35
  %318 = load i32, ptr %103, align 8, !tbaa !32
  %319 = and i32 %318, %298
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds nuw i16, ptr %317, i64 %320
  store i16 %316, ptr %321, align 2, !tbaa !60
  %322 = trunc i32 %298 to i16
  store i16 %322, ptr %315, align 2, !tbaa !60
  %323 = add i32 %297, -1
  store i32 %323, ptr %95, align 4, !tbaa !74
  %324 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %261, i32 %323), !nosanitize !44
  %325 = extractvalue { i32, i1 } %324, 1, !nosanitize !44
  br i1 false, label %362, label %326, !prof !45, !nosanitize !44

326:                                              ; preds = %303
  %327 = add nuw i32 %298, 1
  %328 = extractvalue { i32, i1 } %324, 0, !nosanitize !44
  %329 = icmp ult i32 %328, 3
  br i1 %329, label %.loopexit10, label %295, !llvm.loop !85

.mv.ph13:                                         ; preds = %284
  br label %330

330:                                              ; preds = %363, %.mv.ph13
  %331 = phi i32 [ %294, %.mv.ph13 ], [ %348, %363 ]
  %332 = phi i32 [ %262, %.mv.ph13 ], [ %359, %363 ]
  %333 = phi i32 [ %272, %.mv.ph13 ], [ %364, %363 ]
  %334 = icmp eq i32 %332, 0
  br i1 %334, label %.loopexit10, label %335

335:                                              ; preds = %330
  %336 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %333, i32 3), !nosanitize !44
  %337 = extractvalue { i32, i1 } %336, 1, !nosanitize !44
  br i1 %337, label %338, label %339, !prof !45, !nosanitize !44

338:                                              ; preds = %300, %335
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

339:                                              ; preds = %335
  %340 = shl i32 %331, %286
  %341 = extractvalue { i32, i1 } %336, 0, !nosanitize !44
  %342 = add i32 %341, -1
  %343 = zext i32 %342 to i64
  %344 = getelementptr inbounds nuw i8, ptr %276, i64 %343
  %345 = load i8, ptr %344, align 1, !tbaa !5
  %346 = zext i8 %345 to i32
  %347 = xor i32 %340, %346
  %348 = and i32 %347, %293
  store i32 %348, ptr %100, align 8, !tbaa !78
  %349 = load ptr, ptr %97, align 8, !tbaa !37
  %350 = zext i32 %348 to i64
  %351 = getelementptr inbounds nuw i16, ptr %349, i64 %350
  %352 = load i16, ptr %351, align 2, !tbaa !60
  %353 = load ptr, ptr %98, align 8, !tbaa !35
  %354 = load i32, ptr %103, align 8, !tbaa !32
  %355 = and i32 %354, %333
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds nuw i16, ptr %353, i64 %356
  store i16 %352, ptr %357, align 2, !tbaa !60
  %358 = trunc i32 %333 to i16
  store i16 %358, ptr %351, align 2, !tbaa !60
  %359 = add i32 %332, -1
  store i32 %359, ptr %95, align 4, !tbaa !74
  %360 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %261, i32 %359), !nosanitize !44
  %361 = extractvalue { i32, i1 } %360, 1, !nosanitize !44
  br i1 false, label %362, label %363, !prof !45, !nosanitize !44

362:                                              ; preds = %303, %339
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

363:                                              ; preds = %339
  %364 = add nuw i32 %333, 1
  %365 = extractvalue { i32, i1 } %360, 0, !nosanitize !44
  %366 = icmp ult i32 %365, 3
  br i1 %366, label %.loopexit10, label %330, !llvm.loop !85

.loopexit10:                                      ; preds = %326, %295, %330, %363
  br label %367

367:                                              ; preds = %.loopexit10, %266
  %368 = icmp ult i32 %261, 262
  br i1 %368, label %369, label %374

369:                                              ; preds = %367
  %370 = load ptr, ptr %15, align 8, !tbaa !19
  %371 = getelementptr inbounds nuw i8, ptr %370, i64 8
  %372 = load i32, ptr %371, align 8, !tbaa !79
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %105, !llvm.loop !86

374:                                              ; preds = %369, %367, %208
  %375 = phi i32 [ %261, %369 ], [ %261, %367 ], [ %209, %208 ]
  %376 = getelementptr inbounds nuw i8, ptr %15, i64 5952
  %377 = load i64, ptr %376, align 8, !tbaa !38
  %378 = load i64, ptr %89, align 8, !tbaa !59
  %379 = icmp ult i64 %377, %378
  br i1 %379, label %380, label %419

380:                                              ; preds = %374
  %381 = load i32, ptr %90, align 4, !tbaa !71
  %382 = zext i32 %381 to i64
  %383 = zext i32 %375 to i64
  %384 = add nuw nsw i64 %383, %382
  %385 = icmp ult i64 %377, %384
  br i1 %385, label %386, label %396

386:                                              ; preds = %380
  %387 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %378, i64 %384), !nosanitize !44
  %388 = extractvalue { i64, i1 } %387, 1, !nosanitize !44
  br i1 %388, label %389, label %390, !prof !45, !nosanitize !44

389:                                              ; preds = %386
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

390:                                              ; preds = %386
  %391 = extractvalue { i64, i1 } %387, 0, !nosanitize !44
  %392 = tail call i64 @llvm.umin.i64(i64 %391, i64 258)
  %393 = load ptr, ptr %92, align 8, !tbaa !34
  %394 = getelementptr inbounds nuw i8, ptr %393, i64 %384
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %394, i8 0, i64 %392, i1 false)
  %395 = add nuw nsw i64 %392, %384
  br label %416

396:                                              ; preds = %380
  %397 = add nuw nsw i64 %384, 258
  %398 = icmp ult i64 %377, %397
  br i1 %398, label %399, label %419

399:                                              ; preds = %396
  %400 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %378, i64 %377), !nosanitize !44
  %401 = extractvalue { i64, i1 } %400, 1, !nosanitize !44
  br i1 false, label %402, label %403, !prof !45, !nosanitize !44

402:                                              ; preds = %399
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

403:                                              ; preds = %399
  %404 = sub nuw nsw i64 %397, %377
  %405 = extractvalue { i64, i1 } %400, 0, !nosanitize !44
  %406 = tail call i64 @llvm.umin.i64(i64 %404, i64 %405)
  %407 = load ptr, ptr %92, align 8, !tbaa !34
  %408 = getelementptr inbounds nuw i8, ptr %407, i64 %377
  %409 = and i64 %406, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %408, i8 0, i64 %409, i1 false)
  %410 = load i64, ptr %376, align 8, !tbaa !38
  %411 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %410, i64 %406), !nosanitize !44
  %412 = extractvalue { i64, i1 } %411, 1, !nosanitize !44
  br i1 %412, label %413, label %414, !prof !45, !nosanitize !44

413:                                              ; preds = %403
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

414:                                              ; preds = %403
  %415 = extractvalue { i64, i1 } %411, 0, !nosanitize !44
  br label %416

416:                                              ; preds = %414, %390
  %417 = phi i64 [ %395, %390 ], [ %415, %414 ]
  store i64 %417, ptr %376, align 8, !tbaa !38
  %418 = load i32, ptr %82, align 4, !tbaa !73
  br label %419

419:                                              ; preds = %416, %396, %374
  %420 = phi i32 [ %375, %374 ], [ %375, %396 ], [ %418, %416 ]
  %421 = icmp ugt i32 %420, 2
  br i1 %421, label %422, label %1060

422:                                              ; preds = %1057, %419
  %423 = phi i32 [ %1058, %1057 ], [ %420, %419 ]
  %424 = add i32 %423, -2
  %425 = load i32, ptr %90, align 4, !tbaa !71
  %426 = load i32, ptr %101, align 8, !tbaa !52
  %427 = load ptr, ptr %92, align 8, !tbaa !34
  %428 = load i32, ptr %100, align 8, !tbaa !78
  %mv.h5 = icmp sge i32 %423, 0
  %mv.h6 = icmp sge i32 %425, 0
  %mv.h7 = and i1 %mv.h5, %mv.h6
  %mv.h.fr8 = freeze i1 %mv.h7
  br i1 %mv.h.fr8, label %.mv.ph9.mv.fast, label %.mv.ph9

.mv.ph9.mv.fast:                                  ; preds = %422
  br label %429

429:                                              ; preds = %435, %.mv.ph9.mv.fast
  %430 = phi i32 [ %428, %.mv.ph9.mv.fast ], [ %445, %435 ]
  %431 = phi i32 [ %425, %.mv.ph9.mv.fast ], [ %456, %435 ]
  %432 = phi i32 [ %424, %.mv.ph9.mv.fast ], [ %457, %435 ]
  %433 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %431, i32 3), !nosanitize !44
  %434 = extractvalue { i32, i1 } %433, 1, !nosanitize !44
  br i1 false, label %465, label %435, !prof !45, !nosanitize !44

435:                                              ; preds = %429
  %436 = shl i32 %430, %426
  %437 = extractvalue { i32, i1 } %433, 0, !nosanitize !44
  %438 = add i32 %437, -1
  %439 = zext i32 %438 to i64
  %440 = getelementptr inbounds nuw i8, ptr %427, i64 %439
  %441 = load i8, ptr %440, align 1, !tbaa !5
  %442 = zext i8 %441 to i32
  %443 = xor i32 %436, %442
  %444 = load i32, ptr %102, align 4, !tbaa !51
  %445 = and i32 %443, %444
  store i32 %445, ptr %100, align 8, !tbaa !78
  %446 = load ptr, ptr %97, align 8, !tbaa !37
  %447 = zext i32 %445 to i64
  %448 = getelementptr inbounds nuw i16, ptr %446, i64 %447
  %449 = load i16, ptr %448, align 2, !tbaa !60
  %450 = load ptr, ptr %98, align 8, !tbaa !35
  %451 = load i32, ptr %103, align 8, !tbaa !32
  %452 = and i32 %451, %431
  %453 = zext i32 %452 to i64
  %454 = getelementptr inbounds nuw i16, ptr %450, i64 %453
  store i16 %449, ptr %454, align 2, !tbaa !60
  %455 = trunc i32 %431 to i16
  store i16 %455, ptr %448, align 2, !tbaa !60
  %456 = add nuw i32 %431, 1
  %457 = add i32 %432, -1
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %490, label %429, !llvm.loop !87

.mv.ph9:                                          ; preds = %422
  br label %459

459:                                              ; preds = %466, %.mv.ph9
  %460 = phi i32 [ %428, %.mv.ph9 ], [ %476, %466 ]
  %461 = phi i32 [ %425, %.mv.ph9 ], [ %487, %466 ]
  %462 = phi i32 [ %424, %.mv.ph9 ], [ %488, %466 ]
  %463 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %461, i32 3), !nosanitize !44
  %464 = extractvalue { i32, i1 } %463, 1, !nosanitize !44
  br i1 %464, label %465, label %466, !prof !45, !nosanitize !44

465:                                              ; preds = %429, %459
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

466:                                              ; preds = %459
  %467 = shl i32 %460, %426
  %468 = extractvalue { i32, i1 } %463, 0, !nosanitize !44
  %469 = add i32 %468, -1
  %470 = zext i32 %469 to i64
  %471 = getelementptr inbounds nuw i8, ptr %427, i64 %470
  %472 = load i8, ptr %471, align 1, !tbaa !5
  %473 = zext i8 %472 to i32
  %474 = xor i32 %467, %473
  %475 = load i32, ptr %102, align 4, !tbaa !51
  %476 = and i32 %474, %475
  store i32 %476, ptr %100, align 8, !tbaa !78
  %477 = load ptr, ptr %97, align 8, !tbaa !37
  %478 = zext i32 %476 to i64
  %479 = getelementptr inbounds nuw i16, ptr %477, i64 %478
  %480 = load i16, ptr %479, align 2, !tbaa !60
  %481 = load ptr, ptr %98, align 8, !tbaa !35
  %482 = load i32, ptr %103, align 8, !tbaa !32
  %483 = and i32 %482, %461
  %484 = zext i32 %483 to i64
  %485 = getelementptr inbounds nuw i16, ptr %481, i64 %484
  store i16 %480, ptr %485, align 2, !tbaa !60
  %486 = trunc i32 %461 to i16
  store i16 %486, ptr %479, align 2, !tbaa !60
  %487 = add nuw i32 %461, 1
  %488 = add i32 %462, -1
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %490, label %459, !llvm.loop !87

490:                                              ; preds = %435, %466
  %.lcssa = phi i32 [ %487, %466 ], [ %456, %435 ]
  store i32 %.lcssa, ptr %90, align 4, !tbaa !71
  store i32 2, ptr %82, align 4, !tbaa !73
  %491 = load i32, ptr %81, align 8, !tbaa !31
  %492 = zext i32 %491 to i64
  %mv.h1 = icmp sge i32 %491, 0
  %mv.h.fr2 = freeze i1 %mv.h1
  br i1 %mv.h.fr2, label %.mv.ph3.mv.fast, label %.mv.ph3

.mv.ph3.mv.fast:                                  ; preds = %490
  br label %493

493:                                              ; preds = %704, %.mv.ph3.mv.fast
  %494 = phi i32 [ %636, %704 ], [ 2, %.mv.ph3.mv.fast ]
  %495 = load i64, ptr %89, align 8, !tbaa !59
  %496 = zext nneg i32 %494 to i64
  %497 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %495, i64 %496), !nosanitize !44
  %498 = extractvalue { i64, i1 } %497, 1, !nosanitize !44
  br i1 %498, label %750, label %499, !prof !45, !nosanitize !44

499:                                              ; preds = %493
  %500 = extractvalue { i64, i1 } %497, 0, !nosanitize !44
  %501 = load i32, ptr %90, align 4, !tbaa !71
  %502 = zext i32 %501 to i64
  %503 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %500, i64 %502), !nosanitize !44
  %504 = extractvalue { i64, i1 } %503, 1, !nosanitize !44
  br i1 %504, label %757, label %505, !prof !45, !nosanitize !44

505:                                              ; preds = %499
  %506 = extractvalue { i64, i1 } %503, 0, !nosanitize !44
  %507 = trunc i64 %506 to i32
  %508 = load i32, ptr %81, align 8, !tbaa !31
  %509 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %508, i32 262), !nosanitize !44
  %510 = extractvalue { i32, i1 } %509, 1, !nosanitize !44
  br i1 %510, label %764, label %511, !prof !45, !nosanitize !44

511:                                              ; preds = %505
  %512 = extractvalue { i32, i1 } %509, 0, !nosanitize !44
  %513 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %491, i32 %512), !nosanitize !44
  %514 = extractvalue { i32, i1 } %513, 1, !nosanitize !44
  br i1 %514, label %769, label %515, !prof !45, !nosanitize !44

515:                                              ; preds = %511
  %516 = extractvalue { i32, i1 } %513, 0, !nosanitize !44
  %517 = icmp ult i32 %501, %516
  br i1 %517, label %586, label %518

518:                                              ; preds = %515
  %519 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %491, i32 %507), !nosanitize !44
  %520 = extractvalue { i32, i1 } %519, 1, !nosanitize !44
  br i1 %520, label %776, label %521, !prof !45, !nosanitize !44

521:                                              ; preds = %518
  %522 = extractvalue { i32, i1 } %519, 0, !nosanitize !44
  %523 = load ptr, ptr %92, align 8, !tbaa !34
  %524 = getelementptr inbounds nuw i8, ptr %523, i64 %492
  %525 = zext i32 %522 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %523, ptr align 1 %524, i64 %525, i1 false)
  %526 = load i32, ptr %93, align 8, !tbaa !81
  %527 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %526, i32 %491), !nosanitize !44
  %528 = extractvalue { i32, i1 } %527, 1, !nosanitize !44
  br i1 %528, label %785, label %529, !prof !45, !nosanitize !44

529:                                              ; preds = %521
  %530 = extractvalue { i32, i1 } %527, 0, !nosanitize !44
  store i32 %530, ptr %93, align 8, !tbaa !81
  %531 = load i32, ptr %90, align 4, !tbaa !71
  %532 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %531, i32 %491), !nosanitize !44
  %533 = extractvalue { i32, i1 } %532, 1, !nosanitize !44
  br i1 %533, label %791, label %534, !prof !45, !nosanitize !44

534:                                              ; preds = %529
  %535 = extractvalue { i32, i1 } %532, 0, !nosanitize !44
  store i32 %535, ptr %90, align 4, !tbaa !71
  %536 = load i64, ptr %94, align 8, !tbaa !72
  %537 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %536, i64 %492), !nosanitize !44
  %538 = extractvalue { i64, i1 } %537, 1, !nosanitize !44
  br i1 %538, label %791, label %539, !prof !45, !nosanitize !44

539:                                              ; preds = %534
  %540 = extractvalue { i64, i1 } %537, 0, !nosanitize !44
  store i64 %540, ptr %94, align 8, !tbaa !72
  %541 = load i32, ptr %95, align 4, !tbaa !74
  %542 = icmp ugt i32 %541, %535
  br i1 %542, label %543, label %544

543:                                              ; preds = %539
  store i32 %535, ptr %95, align 4, !tbaa !74
  br label %544

544:                                              ; preds = %543, %539
  %545 = load i32, ptr %81, align 8, !tbaa !31
  %546 = load i32, ptr %96, align 4, !tbaa !36
  %547 = load ptr, ptr %97, align 8, !tbaa !37
  %548 = zext i32 %546 to i64
  %549 = getelementptr inbounds nuw i16, ptr %547, i64 %548
  br label %550

550:                                              ; preds = %560, %544
  %551 = phi ptr [ %549, %544 ], [ %553, %560 ]
  %552 = phi i32 [ %546, %544 ], [ %561, %560 ]
  %553 = getelementptr inbounds i8, ptr %551, i64 -2
  %554 = load i16, ptr %553, align 2, !tbaa !60
  %555 = zext i16 %554 to i32
  %556 = tail call i32 @llvm.usub.sat.i32(i32 %555, i32 %545)
  %557 = trunc nuw i32 %556 to i16
  store i16 %557, ptr %553, align 2, !tbaa !60
  %558 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %552, i32 1), !nosanitize !44
  %559 = extractvalue { i32, i1 } %558, 1, !nosanitize !44
  br i1 %559, label %818, label %560, !prof !45, !nosanitize !44

560:                                              ; preds = %550
  %561 = extractvalue { i32, i1 } %558, 0, !nosanitize !44
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %563, label %550, !llvm.loop !82

563:                                              ; preds = %560
  %564 = load ptr, ptr %98, align 8, !tbaa !35
  %565 = zext i32 %545 to i64
  %566 = getelementptr inbounds nuw i16, ptr %564, i64 %565
  br label %567

567:                                              ; preds = %577, %563
  %568 = phi ptr [ %566, %563 ], [ %570, %577 ]
  %569 = phi i32 [ %545, %563 ], [ %578, %577 ]
  %570 = getelementptr inbounds i8, ptr %568, i64 -2
  %571 = load i16, ptr %570, align 2, !tbaa !60
  %572 = zext i16 %571 to i32
  %573 = tail call i32 @llvm.usub.sat.i32(i32 %572, i32 %545)
  %574 = trunc nuw i32 %573 to i16
  store i16 %574, ptr %570, align 2, !tbaa !60
  %575 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %569, i32 1), !nosanitize !44
  %576 = extractvalue { i32, i1 } %575, 1, !nosanitize !44
  br i1 %576, label %836, label %577, !prof !45, !nosanitize !44

577:                                              ; preds = %567
  %578 = extractvalue { i32, i1 } %575, 0, !nosanitize !44
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %580, label %567, !llvm.loop !84

580:                                              ; preds = %577
  store i32 1, ptr %99, align 8, !tbaa !61
  %581 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %507, i32 %491), !nosanitize !44
  %582 = extractvalue { i32, i1 } %581, 1, !nosanitize !44
  br i1 false, label %843, label %583, !prof !45, !nosanitize !44

583:                                              ; preds = %580
  %584 = extractvalue { i32, i1 } %581, 0, !nosanitize !44
  %585 = load i32, ptr %82, align 4, !tbaa !73
  br label %586

586:                                              ; preds = %583, %515
  %587 = phi i32 [ %585, %583 ], [ %494, %515 ]
  %588 = phi i32 [ %535, %583 ], [ %501, %515 ]
  %589 = phi i32 [ %584, %583 ], [ %507, %515 ]
  %590 = load ptr, ptr %15, align 8, !tbaa !19
  %591 = getelementptr inbounds nuw i8, ptr %590, i64 8
  %592 = load i32, ptr %591, align 8, !tbaa !79
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %1013, label %594

594:                                              ; preds = %586
  %595 = load ptr, ptr %92, align 8, !tbaa !34
  %596 = zext i32 %588 to i64
  %597 = getelementptr inbounds nuw i8, ptr %595, i64 %596
  %598 = zext i32 %587 to i64
  %599 = getelementptr inbounds nuw i8, ptr %597, i64 %598
  %600 = tail call i32 @llvm.umin.i32(i32 %592, i32 %589)
  %601 = icmp eq i32 %589, 0
  br i1 %601, label %631, label %602

602:                                              ; preds = %594
  %603 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %592, i32 %600), !nosanitize !44
  %604 = extractvalue { i32, i1 } %603, 1, !nosanitize !44
  br i1 false, label %866, label %605, !prof !45, !nosanitize !44

605:                                              ; preds = %602
  %606 = extractvalue { i32, i1 } %603, 0, !nosanitize !44
  store i32 %606, ptr %591, align 8, !tbaa !79
  %607 = load ptr, ptr %590, align 8, !tbaa !80
  %608 = zext i32 %600 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %599, ptr align 1 %607, i64 %608, i1 false)
  %609 = getelementptr inbounds nuw i8, ptr %590, i64 56
  %610 = load ptr, ptr %609, align 8, !tbaa !18
  %611 = getelementptr inbounds nuw i8, ptr %610, i64 48
  %612 = load i32, ptr %611, align 8, !tbaa !29
  switch i32 %612, label %621 [
    i32 1, label %617
    i32 2, label %613
  ]

613:                                              ; preds = %605
  %614 = getelementptr inbounds nuw i8, ptr %590, i64 96
  %615 = load i64, ptr %614, align 8, !tbaa !57
  %616 = tail call i64 @crc32(i64 noundef %615, ptr noundef %599, i32 noundef %600) #8
  store i64 %616, ptr %614, align 8, !tbaa !57
  br label %621

617:                                              ; preds = %605
  %618 = getelementptr inbounds nuw i8, ptr %590, i64 96
  %619 = load i64, ptr %618, align 8, !tbaa !57
  %620 = tail call i64 @adler32(i64 noundef %619, ptr noundef %599, i32 noundef %600) #8
  store i64 %620, ptr %618, align 8, !tbaa !57
  br label %621

621:                                              ; preds = %617, %613, %605
  %622 = load ptr, ptr %590, align 8, !tbaa !80
  %623 = getelementptr inbounds nuw i8, ptr %622, i64 %608
  store ptr %623, ptr %590, align 8, !tbaa !80
  %624 = getelementptr inbounds nuw i8, ptr %590, i64 16
  %625 = load i64, ptr %624, align 8, !tbaa !53
  %626 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %625, i64 %608), !nosanitize !44
  %627 = extractvalue { i64, i1 } %626, 1, !nosanitize !44
  br i1 %627, label %890, label %628, !prof !45, !nosanitize !44

628:                                              ; preds = %621
  %629 = extractvalue { i64, i1 } %626, 0, !nosanitize !44
  store i64 %629, ptr %624, align 8, !tbaa !53
  %630 = load i32, ptr %82, align 4, !tbaa !73
  br label %631

631:                                              ; preds = %628, %594
  %632 = phi i32 [ %587, %594 ], [ %630, %628 ]
  %633 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %632, i32 %600), !nosanitize !44
  %634 = extractvalue { i32, i1 } %633, 1, !nosanitize !44
  br i1 %634, label %898, label %635, !prof !45, !nosanitize !44

635:                                              ; preds = %631
  %636 = extractvalue { i32, i1 } %633, 0, !nosanitize !44
  store i32 %636, ptr %82, align 4, !tbaa !73
  %637 = load i32, ptr %95, align 4, !tbaa !74
  %638 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %636, i32 %637), !nosanitize !44
  %639 = extractvalue { i32, i1 } %638, 1, !nosanitize !44
  br i1 %639, label %904, label %640, !prof !45, !nosanitize !44

640:                                              ; preds = %635
  %641 = extractvalue { i32, i1 } %638, 0, !nosanitize !44
  %642 = icmp ugt i32 %641, 2
  br i1 %642, label %643, label %702

643:                                              ; preds = %640
  %644 = load i32, ptr %90, align 4, !tbaa !71
  %645 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %644, i32 %637), !nosanitize !44
  %646 = extractvalue { i32, i1 } %645, 0, !nosanitize !44
  %647 = extractvalue { i32, i1 } %645, 1, !nosanitize !44
  br i1 %647, label %913, label %648, !prof !45, !nosanitize !44

648:                                              ; preds = %643
  %649 = load ptr, ptr %92, align 8, !tbaa !34
  %650 = zext i32 %646 to i64
  %651 = getelementptr inbounds nuw i8, ptr %649, i64 %650
  %652 = load i8, ptr %651, align 1, !tbaa !5
  %653 = zext i8 %652 to i32
  store i32 %653, ptr %100, align 8, !tbaa !78
  %654 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %646, i32 1), !nosanitize !44
  %655 = extractvalue { i32, i1 } %654, 1, !nosanitize !44
  br i1 %655, label %922, label %656, !prof !45, !nosanitize !44

656:                                              ; preds = %648
  %657 = extractvalue { i32, i1 } %654, 0, !nosanitize !44
  %658 = load i32, ptr %101, align 8, !tbaa !52
  %659 = shl i32 %653, %658
  %660 = zext i32 %657 to i64
  %661 = getelementptr inbounds nuw i8, ptr %649, i64 %660
  %662 = load i8, ptr %661, align 1, !tbaa !5
  %663 = zext i8 %662 to i32
  %664 = xor i32 %659, %663
  %665 = load i32, ptr %102, align 4, !tbaa !51
  %666 = and i32 %664, %665
  store i32 %666, ptr %100, align 8, !tbaa !78
  %mv.h.mv.fast = icmp sge i32 %644, 0
  %mv.h.fr.mv.fast = freeze i1 %mv.h.mv.fast
  br i1 %mv.h.fr.mv.fast, label %.mv.ph.mv.fast.mv.fast, label %.mv.ph.mv.fast4

667:                                              ; preds = %.mv.ph.mv.fast4, %698
  %668 = phi i32 [ %666, %.mv.ph.mv.fast4 ], [ %684, %698 ]
  %669 = phi i32 [ %637, %.mv.ph.mv.fast4 ], [ %695, %698 ]
  %670 = phi i32 [ %646, %.mv.ph.mv.fast4 ], [ %699, %698 ]
  %671 = icmp eq i32 %669, 0
  br i1 %671, label %.loopexit.mv.fast, label %672

672:                                              ; preds = %667
  %673 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %670, i32 3), !nosanitize !44
  %674 = extractvalue { i32, i1 } %673, 1, !nosanitize !44
  br i1 %674, label %977, label %675, !prof !45, !nosanitize !44

675:                                              ; preds = %672
  %676 = shl i32 %668, %658
  %677 = extractvalue { i32, i1 } %673, 0, !nosanitize !44
  %678 = add i32 %677, -1
  %679 = zext i32 %678 to i64
  %680 = getelementptr inbounds nuw i8, ptr %649, i64 %679
  %681 = load i8, ptr %680, align 1, !tbaa !5
  %682 = zext i8 %681 to i32
  %683 = xor i32 %676, %682
  %684 = and i32 %683, %665
  store i32 %684, ptr %100, align 8, !tbaa !78
  %685 = load ptr, ptr %97, align 8, !tbaa !37
  %686 = zext i32 %684 to i64
  %687 = getelementptr inbounds nuw i16, ptr %685, i64 %686
  %688 = load i16, ptr %687, align 2, !tbaa !60
  %689 = load ptr, ptr %98, align 8, !tbaa !35
  %690 = load i32, ptr %103, align 8, !tbaa !32
  %691 = and i32 %690, %670
  %692 = zext i32 %691 to i64
  %693 = getelementptr inbounds nuw i16, ptr %689, i64 %692
  store i16 %688, ptr %693, align 2, !tbaa !60
  %694 = trunc i32 %670 to i16
  store i16 %694, ptr %687, align 2, !tbaa !60
  %695 = add i32 %669, -1
  store i32 %695, ptr %95, align 4, !tbaa !74
  %696 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %636, i32 %695), !nosanitize !44
  %697 = extractvalue { i32, i1 } %696, 1, !nosanitize !44
  br i1 false, label %1001, label %698, !prof !45, !nosanitize !44

698:                                              ; preds = %675
  %699 = add nuw i32 %670, 1
  %700 = extractvalue { i32, i1 } %696, 0, !nosanitize !44
  %701 = icmp ult i32 %700, 3
  br i1 %701, label %.loopexit.mv.fast, label %667, !llvm.loop !85

702:                                              ; preds = %.loopexit.mv.fast, %640
  %703 = icmp ult i32 %636, 262
  br i1 %703, label %704, label %1013

704:                                              ; preds = %702
  %705 = load ptr, ptr %15, align 8, !tbaa !19
  %706 = getelementptr inbounds nuw i8, ptr %705, i64 8
  %707 = load i32, ptr %706, align 8, !tbaa !79
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %1013, label %493, !llvm.loop !86

.loopexit.mv.fast:                                ; preds = %740, %709, %698, %667
  br label %702

.mv.ph.mv.fast4:                                  ; preds = %656
  br label %667

.mv.ph.mv.fast.mv.fast:                           ; preds = %656
  br label %709

709:                                              ; preds = %740, %.mv.ph.mv.fast.mv.fast
  %710 = phi i32 [ %666, %.mv.ph.mv.fast.mv.fast ], [ %726, %740 ]
  %711 = phi i32 [ %637, %.mv.ph.mv.fast.mv.fast ], [ %737, %740 ]
  %712 = phi i32 [ %646, %.mv.ph.mv.fast.mv.fast ], [ %741, %740 ]
  %713 = icmp eq i32 %711, 0
  br i1 %713, label %.loopexit.mv.fast, label %714

714:                                              ; preds = %709
  %715 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %712, i32 3), !nosanitize !44
  %716 = extractvalue { i32, i1 } %715, 1, !nosanitize !44
  br i1 false, label %977, label %717, !prof !45, !nosanitize !44

717:                                              ; preds = %714
  %718 = shl i32 %710, %658
  %719 = extractvalue { i32, i1 } %715, 0, !nosanitize !44
  %720 = add i32 %719, -1
  %721 = zext i32 %720 to i64
  %722 = getelementptr inbounds nuw i8, ptr %649, i64 %721
  %723 = load i8, ptr %722, align 1, !tbaa !5
  %724 = zext i8 %723 to i32
  %725 = xor i32 %718, %724
  %726 = and i32 %725, %665
  store i32 %726, ptr %100, align 8, !tbaa !78
  %727 = load ptr, ptr %97, align 8, !tbaa !37
  %728 = zext i32 %726 to i64
  %729 = getelementptr inbounds nuw i16, ptr %727, i64 %728
  %730 = load i16, ptr %729, align 2, !tbaa !60
  %731 = load ptr, ptr %98, align 8, !tbaa !35
  %732 = load i32, ptr %103, align 8, !tbaa !32
  %733 = and i32 %732, %712
  %734 = zext i32 %733 to i64
  %735 = getelementptr inbounds nuw i16, ptr %731, i64 %734
  store i16 %730, ptr %735, align 2, !tbaa !60
  %736 = trunc i32 %712 to i16
  store i16 %736, ptr %729, align 2, !tbaa !60
  %737 = add i32 %711, -1
  store i32 %737, ptr %95, align 4, !tbaa !74
  %738 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %636, i32 %737), !nosanitize !44
  %739 = extractvalue { i32, i1 } %738, 1, !nosanitize !44
  br i1 false, label %1001, label %740, !prof !45, !nosanitize !44

740:                                              ; preds = %717
  %741 = add nuw i32 %712, 1
  %742 = extractvalue { i32, i1 } %738, 0, !nosanitize !44
  %743 = icmp ult i32 %742, 3
  br i1 %743, label %.loopexit.mv.fast, label %709, !llvm.loop !85

.mv.ph3:                                          ; preds = %490
  br label %744

744:                                              ; preds = %1008, %.mv.ph3
  %745 = phi i32 [ %900, %1008 ], [ 2, %.mv.ph3 ]
  %746 = load i64, ptr %89, align 8, !tbaa !59
  %747 = zext nneg i32 %745 to i64
  %748 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %746, i64 %747), !nosanitize !44
  %749 = extractvalue { i64, i1 } %748, 1, !nosanitize !44
  br i1 %749, label %750, label %751, !prof !45, !nosanitize !44

750:                                              ; preds = %493, %744
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

751:                                              ; preds = %744
  %752 = extractvalue { i64, i1 } %748, 0, !nosanitize !44
  %753 = load i32, ptr %90, align 4, !tbaa !71
  %754 = zext i32 %753 to i64
  %755 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %752, i64 %754), !nosanitize !44
  %756 = extractvalue { i64, i1 } %755, 1, !nosanitize !44
  br i1 %756, label %757, label %758, !prof !45, !nosanitize !44

757:                                              ; preds = %499, %751
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

758:                                              ; preds = %751
  %759 = extractvalue { i64, i1 } %755, 0, !nosanitize !44
  %760 = trunc i64 %759 to i32
  %761 = load i32, ptr %81, align 8, !tbaa !31
  %762 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %761, i32 262), !nosanitize !44
  %763 = extractvalue { i32, i1 } %762, 1, !nosanitize !44
  br i1 %763, label %764, label %765, !prof !45, !nosanitize !44

764:                                              ; preds = %505, %758
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

765:                                              ; preds = %758
  %766 = extractvalue { i32, i1 } %762, 0, !nosanitize !44
  %767 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %491, i32 %766), !nosanitize !44
  %768 = extractvalue { i32, i1 } %767, 1, !nosanitize !44
  br i1 %768, label %769, label %770, !prof !45, !nosanitize !44

769:                                              ; preds = %511, %765
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

770:                                              ; preds = %765
  %771 = extractvalue { i32, i1 } %767, 0, !nosanitize !44
  %772 = icmp ult i32 %753, %771
  br i1 %772, label %847, label %773

773:                                              ; preds = %770
  %774 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %491, i32 %760), !nosanitize !44
  %775 = extractvalue { i32, i1 } %774, 1, !nosanitize !44
  br i1 %775, label %776, label %777, !prof !45, !nosanitize !44

776:                                              ; preds = %518, %773
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

777:                                              ; preds = %773
  %778 = extractvalue { i32, i1 } %774, 0, !nosanitize !44
  %779 = load ptr, ptr %92, align 8, !tbaa !34
  %780 = getelementptr inbounds nuw i8, ptr %779, i64 %492
  %781 = zext i32 %778 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %779, ptr align 1 %780, i64 %781, i1 false)
  %782 = load i32, ptr %93, align 8, !tbaa !81
  %783 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %782, i32 %491), !nosanitize !44
  %784 = extractvalue { i32, i1 } %783, 1, !nosanitize !44
  br i1 %784, label %785, label %786, !prof !45, !nosanitize !44

785:                                              ; preds = %521, %777
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

786:                                              ; preds = %777
  %787 = extractvalue { i32, i1 } %783, 0, !nosanitize !44
  store i32 %787, ptr %93, align 8, !tbaa !81
  %788 = load i32, ptr %90, align 4, !tbaa !71
  %789 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %788, i32 %491), !nosanitize !44
  %790 = extractvalue { i32, i1 } %789, 1, !nosanitize !44
  br i1 %790, label %791, label %792, !prof !45, !nosanitize !44

791:                                              ; preds = %534, %529, %792, %786
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

792:                                              ; preds = %786
  %793 = extractvalue { i32, i1 } %789, 0, !nosanitize !44
  store i32 %793, ptr %90, align 4, !tbaa !71
  %794 = load i64, ptr %94, align 8, !tbaa !72
  %795 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %794, i64 %492), !nosanitize !44
  %796 = extractvalue { i64, i1 } %795, 1, !nosanitize !44
  br i1 %796, label %791, label %797, !prof !45, !nosanitize !44

797:                                              ; preds = %792
  %798 = extractvalue { i64, i1 } %795, 0, !nosanitize !44
  store i64 %798, ptr %94, align 8, !tbaa !72
  %799 = load i32, ptr %95, align 4, !tbaa !74
  %800 = icmp ugt i32 %799, %793
  br i1 %800, label %801, label %802

801:                                              ; preds = %797
  store i32 %793, ptr %95, align 4, !tbaa !74
  br label %802

802:                                              ; preds = %801, %797
  %803 = load i32, ptr %81, align 8, !tbaa !31
  %804 = load i32, ptr %96, align 4, !tbaa !36
  %805 = load ptr, ptr %97, align 8, !tbaa !37
  %806 = zext i32 %804 to i64
  %807 = getelementptr inbounds nuw i16, ptr %805, i64 %806
  br label %808

808:                                              ; preds = %819, %802
  %809 = phi ptr [ %807, %802 ], [ %811, %819 ]
  %810 = phi i32 [ %804, %802 ], [ %820, %819 ]
  %811 = getelementptr inbounds i8, ptr %809, i64 -2
  %812 = load i16, ptr %811, align 2, !tbaa !60
  %813 = zext i16 %812 to i32
  %814 = tail call i32 @llvm.usub.sat.i32(i32 %813, i32 %803)
  %815 = trunc nuw i32 %814 to i16
  store i16 %815, ptr %811, align 2, !tbaa !60
  %816 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %810, i32 1), !nosanitize !44
  %817 = extractvalue { i32, i1 } %816, 1, !nosanitize !44
  br i1 %817, label %818, label %819, !prof !45, !nosanitize !44

818:                                              ; preds = %550, %808
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

819:                                              ; preds = %808
  %820 = extractvalue { i32, i1 } %816, 0, !nosanitize !44
  %821 = icmp eq i32 %820, 0
  br i1 %821, label %822, label %808, !llvm.loop !82

822:                                              ; preds = %819
  %823 = load ptr, ptr %98, align 8, !tbaa !35
  %824 = zext i32 %803 to i64
  %825 = getelementptr inbounds nuw i16, ptr %823, i64 %824
  br label %826

826:                                              ; preds = %837, %822
  %827 = phi ptr [ %825, %822 ], [ %829, %837 ]
  %828 = phi i32 [ %803, %822 ], [ %838, %837 ]
  %829 = getelementptr inbounds i8, ptr %827, i64 -2
  %830 = load i16, ptr %829, align 2, !tbaa !60
  %831 = zext i16 %830 to i32
  %832 = tail call i32 @llvm.usub.sat.i32(i32 %831, i32 %803)
  %833 = trunc nuw i32 %832 to i16
  store i16 %833, ptr %829, align 2, !tbaa !60
  %834 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %828, i32 1), !nosanitize !44
  %835 = extractvalue { i32, i1 } %834, 1, !nosanitize !44
  br i1 %835, label %836, label %837, !prof !45, !nosanitize !44

836:                                              ; preds = %567, %826
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

837:                                              ; preds = %826
  %838 = extractvalue { i32, i1 } %834, 0, !nosanitize !44
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %840, label %826, !llvm.loop !84

840:                                              ; preds = %837
  store i32 1, ptr %99, align 8, !tbaa !61
  %841 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %760, i32 %491), !nosanitize !44
  %842 = extractvalue { i32, i1 } %841, 1, !nosanitize !44
  br i1 %842, label %843, label %844, !prof !45, !nosanitize !44

843:                                              ; preds = %580, %840
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

844:                                              ; preds = %840
  %845 = extractvalue { i32, i1 } %841, 0, !nosanitize !44
  %846 = load i32, ptr %82, align 4, !tbaa !73
  br label %847

847:                                              ; preds = %844, %770
  %848 = phi i32 [ %846, %844 ], [ %745, %770 ]
  %849 = phi i32 [ %793, %844 ], [ %753, %770 ]
  %850 = phi i32 [ %845, %844 ], [ %760, %770 ]
  %851 = load ptr, ptr %15, align 8, !tbaa !19
  %852 = getelementptr inbounds nuw i8, ptr %851, i64 8
  %853 = load i32, ptr %852, align 8, !tbaa !79
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %1013, label %855

855:                                              ; preds = %847
  %856 = load ptr, ptr %92, align 8, !tbaa !34
  %857 = zext i32 %849 to i64
  %858 = getelementptr inbounds nuw i8, ptr %856, i64 %857
  %859 = zext i32 %848 to i64
  %860 = getelementptr inbounds nuw i8, ptr %858, i64 %859
  %861 = tail call i32 @llvm.umin.i32(i32 %853, i32 %850)
  %862 = icmp eq i32 %850, 0
  br i1 %862, label %894, label %863

863:                                              ; preds = %855
  %864 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %853, i32 %861), !nosanitize !44
  %865 = extractvalue { i32, i1 } %864, 1, !nosanitize !44
  br i1 false, label %866, label %867, !prof !45, !nosanitize !44

866:                                              ; preds = %602, %863
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

867:                                              ; preds = %863
  %868 = extractvalue { i32, i1 } %864, 0, !nosanitize !44
  store i32 %868, ptr %852, align 8, !tbaa !79
  %869 = load ptr, ptr %851, align 8, !tbaa !80
  %870 = zext i32 %861 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %860, ptr align 1 %869, i64 %870, i1 false)
  %871 = getelementptr inbounds nuw i8, ptr %851, i64 56
  %872 = load ptr, ptr %871, align 8, !tbaa !18
  %873 = getelementptr inbounds nuw i8, ptr %872, i64 48
  %874 = load i32, ptr %873, align 8, !tbaa !29
  switch i32 %874, label %883 [
    i32 1, label %875
    i32 2, label %879
  ]

875:                                              ; preds = %867
  %876 = getelementptr inbounds nuw i8, ptr %851, i64 96
  %877 = load i64, ptr %876, align 8, !tbaa !57
  %878 = tail call i64 @adler32(i64 noundef %877, ptr noundef %860, i32 noundef %861) #8
  store i64 %878, ptr %876, align 8, !tbaa !57
  br label %883

879:                                              ; preds = %867
  %880 = getelementptr inbounds nuw i8, ptr %851, i64 96
  %881 = load i64, ptr %880, align 8, !tbaa !57
  %882 = tail call i64 @crc32(i64 noundef %881, ptr noundef %860, i32 noundef %861) #8
  store i64 %882, ptr %880, align 8, !tbaa !57
  br label %883

883:                                              ; preds = %879, %875, %867
  %884 = load ptr, ptr %851, align 8, !tbaa !80
  %885 = getelementptr inbounds nuw i8, ptr %884, i64 %870
  store ptr %885, ptr %851, align 8, !tbaa !80
  %886 = getelementptr inbounds nuw i8, ptr %851, i64 16
  %887 = load i64, ptr %886, align 8, !tbaa !53
  %888 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %887, i64 %870), !nosanitize !44
  %889 = extractvalue { i64, i1 } %888, 1, !nosanitize !44
  br i1 %889, label %890, label %891, !prof !45, !nosanitize !44

890:                                              ; preds = %621, %883
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

891:                                              ; preds = %883
  %892 = extractvalue { i64, i1 } %888, 0, !nosanitize !44
  store i64 %892, ptr %886, align 8, !tbaa !53
  %893 = load i32, ptr %82, align 4, !tbaa !73
  br label %894

894:                                              ; preds = %891, %855
  %895 = phi i32 [ %848, %855 ], [ %893, %891 ]
  %896 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %895, i32 %861), !nosanitize !44
  %897 = extractvalue { i32, i1 } %896, 1, !nosanitize !44
  br i1 %897, label %898, label %899, !prof !45, !nosanitize !44

898:                                              ; preds = %631, %894
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

899:                                              ; preds = %894
  %900 = extractvalue { i32, i1 } %896, 0, !nosanitize !44
  store i32 %900, ptr %82, align 4, !tbaa !73
  %901 = load i32, ptr %95, align 4, !tbaa !74
  %902 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %900, i32 %901), !nosanitize !44
  %903 = extractvalue { i32, i1 } %902, 1, !nosanitize !44
  br i1 %903, label %904, label %905, !prof !45, !nosanitize !44

904:                                              ; preds = %635, %899
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

905:                                              ; preds = %899
  %906 = extractvalue { i32, i1 } %902, 0, !nosanitize !44
  %907 = icmp ugt i32 %906, 2
  br i1 %907, label %908, label %1006

908:                                              ; preds = %905
  %909 = load i32, ptr %90, align 4, !tbaa !71
  %910 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %909, i32 %901), !nosanitize !44
  %911 = extractvalue { i32, i1 } %910, 0, !nosanitize !44
  %912 = extractvalue { i32, i1 } %910, 1, !nosanitize !44
  br i1 %912, label %913, label %914, !prof !45, !nosanitize !44

913:                                              ; preds = %643, %908
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

914:                                              ; preds = %908
  %915 = load ptr, ptr %92, align 8, !tbaa !34
  %916 = zext i32 %911 to i64
  %917 = getelementptr inbounds nuw i8, ptr %915, i64 %916
  %918 = load i8, ptr %917, align 1, !tbaa !5
  %919 = zext i8 %918 to i32
  store i32 %919, ptr %100, align 8, !tbaa !78
  %920 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %911, i32 1), !nosanitize !44
  %921 = extractvalue { i32, i1 } %920, 1, !nosanitize !44
  br i1 %921, label %922, label %923, !prof !45, !nosanitize !44

922:                                              ; preds = %648, %914
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

923:                                              ; preds = %914
  %924 = extractvalue { i32, i1 } %920, 0, !nosanitize !44
  %925 = load i32, ptr %101, align 8, !tbaa !52
  %926 = shl i32 %919, %925
  %927 = zext i32 %924 to i64
  %928 = getelementptr inbounds nuw i8, ptr %915, i64 %927
  %929 = load i8, ptr %928, align 1, !tbaa !5
  %930 = zext i8 %929 to i32
  %931 = xor i32 %926, %930
  %932 = load i32, ptr %102, align 4, !tbaa !51
  %933 = and i32 %931, %932
  store i32 %933, ptr %100, align 8, !tbaa !78
  %mv.h = icmp sge i32 %909, 0
  %mv.h.fr = freeze i1 %mv.h
  br i1 %mv.h.fr, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %923
  br label %934

934:                                              ; preds = %965, %.mv.ph.mv.fast
  %935 = phi i32 [ %933, %.mv.ph.mv.fast ], [ %951, %965 ]
  %936 = phi i32 [ %901, %.mv.ph.mv.fast ], [ %962, %965 ]
  %937 = phi i32 [ %911, %.mv.ph.mv.fast ], [ %966, %965 ]
  %938 = icmp eq i32 %936, 0
  br i1 %938, label %.loopexit, label %939

939:                                              ; preds = %934
  %940 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %937, i32 3), !nosanitize !44
  %941 = extractvalue { i32, i1 } %940, 1, !nosanitize !44
  br i1 false, label %977, label %942, !prof !45, !nosanitize !44

942:                                              ; preds = %939
  %943 = shl i32 %935, %925
  %944 = extractvalue { i32, i1 } %940, 0, !nosanitize !44
  %945 = add i32 %944, -1
  %946 = zext i32 %945 to i64
  %947 = getelementptr inbounds nuw i8, ptr %915, i64 %946
  %948 = load i8, ptr %947, align 1, !tbaa !5
  %949 = zext i8 %948 to i32
  %950 = xor i32 %943, %949
  %951 = and i32 %950, %932
  store i32 %951, ptr %100, align 8, !tbaa !78
  %952 = load ptr, ptr %97, align 8, !tbaa !37
  %953 = zext i32 %951 to i64
  %954 = getelementptr inbounds nuw i16, ptr %952, i64 %953
  %955 = load i16, ptr %954, align 2, !tbaa !60
  %956 = load ptr, ptr %98, align 8, !tbaa !35
  %957 = load i32, ptr %103, align 8, !tbaa !32
  %958 = and i32 %957, %937
  %959 = zext i32 %958 to i64
  %960 = getelementptr inbounds nuw i16, ptr %956, i64 %959
  store i16 %955, ptr %960, align 2, !tbaa !60
  %961 = trunc i32 %937 to i16
  store i16 %961, ptr %954, align 2, !tbaa !60
  %962 = add i32 %936, -1
  store i32 %962, ptr %95, align 4, !tbaa !74
  %963 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %900, i32 %962), !nosanitize !44
  %964 = extractvalue { i32, i1 } %963, 1, !nosanitize !44
  br i1 false, label %1001, label %965, !prof !45, !nosanitize !44

965:                                              ; preds = %942
  %966 = add nuw i32 %937, 1
  %967 = extractvalue { i32, i1 } %963, 0, !nosanitize !44
  %968 = icmp ult i32 %967, 3
  br i1 %968, label %.loopexit, label %934, !llvm.loop !85

.mv.ph:                                           ; preds = %923
  br label %969

969:                                              ; preds = %1002, %.mv.ph
  %970 = phi i32 [ %933, %.mv.ph ], [ %987, %1002 ]
  %971 = phi i32 [ %901, %.mv.ph ], [ %998, %1002 ]
  %972 = phi i32 [ %911, %.mv.ph ], [ %1003, %1002 ]
  %973 = icmp eq i32 %971, 0
  br i1 %973, label %.loopexit, label %974

974:                                              ; preds = %969
  %975 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %972, i32 3), !nosanitize !44
  %976 = extractvalue { i32, i1 } %975, 1, !nosanitize !44
  br i1 %976, label %977, label %978, !prof !45, !nosanitize !44

977:                                              ; preds = %714, %672, %939, %974
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

978:                                              ; preds = %974
  %979 = shl i32 %970, %925
  %980 = extractvalue { i32, i1 } %975, 0, !nosanitize !44
  %981 = add i32 %980, -1
  %982 = zext i32 %981 to i64
  %983 = getelementptr inbounds nuw i8, ptr %915, i64 %982
  %984 = load i8, ptr %983, align 1, !tbaa !5
  %985 = zext i8 %984 to i32
  %986 = xor i32 %979, %985
  %987 = and i32 %986, %932
  store i32 %987, ptr %100, align 8, !tbaa !78
  %988 = load ptr, ptr %97, align 8, !tbaa !37
  %989 = zext i32 %987 to i64
  %990 = getelementptr inbounds nuw i16, ptr %988, i64 %989
  %991 = load i16, ptr %990, align 2, !tbaa !60
  %992 = load ptr, ptr %98, align 8, !tbaa !35
  %993 = load i32, ptr %103, align 8, !tbaa !32
  %994 = and i32 %993, %972
  %995 = zext i32 %994 to i64
  %996 = getelementptr inbounds nuw i16, ptr %992, i64 %995
  store i16 %991, ptr %996, align 2, !tbaa !60
  %997 = trunc i32 %972 to i16
  store i16 %997, ptr %990, align 2, !tbaa !60
  %998 = add i32 %971, -1
  store i32 %998, ptr %95, align 4, !tbaa !74
  %999 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %900, i32 %998), !nosanitize !44
  %1000 = extractvalue { i32, i1 } %999, 1, !nosanitize !44
  br i1 false, label %1001, label %1002, !prof !45, !nosanitize !44

1001:                                             ; preds = %717, %675, %942, %978
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1002:                                             ; preds = %978
  %1003 = add nuw i32 %972, 1
  %1004 = extractvalue { i32, i1 } %999, 0, !nosanitize !44
  %1005 = icmp ult i32 %1004, 3
  br i1 %1005, label %.loopexit, label %969, !llvm.loop !85

.loopexit:                                        ; preds = %965, %934, %969, %1002
  br label %1006

1006:                                             ; preds = %.loopexit, %905
  %1007 = icmp ult i32 %900, 262
  br i1 %1007, label %1008, label %1013

1008:                                             ; preds = %1006
  %1009 = load ptr, ptr %15, align 8, !tbaa !19
  %1010 = getelementptr inbounds nuw i8, ptr %1009, i64 8
  %1011 = load i32, ptr %1010, align 8, !tbaa !79
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1013, label %744, !llvm.loop !86

1013:                                             ; preds = %704, %702, %586, %1008, %1006, %847
  %1014 = phi i32 [ %900, %1008 ], [ %900, %1006 ], [ %848, %847 ], [ %636, %704 ], [ %636, %702 ], [ %587, %586 ]
  %1015 = load i64, ptr %376, align 8, !tbaa !38
  %1016 = load i64, ptr %89, align 8, !tbaa !59
  %1017 = icmp ult i64 %1015, %1016
  br i1 %1017, label %1018, label %1057

1018:                                             ; preds = %1013
  %1019 = load i32, ptr %90, align 4, !tbaa !71
  %1020 = zext i32 %1019 to i64
  %1021 = zext i32 %1014 to i64
  %1022 = add nuw nsw i64 %1021, %1020
  %1023 = icmp ult i64 %1015, %1022
  br i1 %1023, label %1024, label %1034

1024:                                             ; preds = %1018
  %1025 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1016, i64 %1022), !nosanitize !44
  %1026 = extractvalue { i64, i1 } %1025, 1, !nosanitize !44
  br i1 %1026, label %1027, label %1028, !prof !45, !nosanitize !44

1027:                                             ; preds = %1024
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1028:                                             ; preds = %1024
  %1029 = extractvalue { i64, i1 } %1025, 0, !nosanitize !44
  %1030 = tail call i64 @llvm.umin.i64(i64 %1029, i64 258)
  %1031 = load ptr, ptr %92, align 8, !tbaa !34
  %1032 = getelementptr inbounds nuw i8, ptr %1031, i64 %1022
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1032, i8 0, i64 %1030, i1 false)
  %1033 = add nuw nsw i64 %1030, %1022
  br label %1054

1034:                                             ; preds = %1018
  %1035 = add nuw nsw i64 %1022, 258
  %1036 = icmp ult i64 %1015, %1035
  br i1 %1036, label %1037, label %1057

1037:                                             ; preds = %1034
  %1038 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1016, i64 %1015), !nosanitize !44
  %1039 = extractvalue { i64, i1 } %1038, 1, !nosanitize !44
  br i1 false, label %1040, label %1041, !prof !45, !nosanitize !44

1040:                                             ; preds = %1037
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1041:                                             ; preds = %1037
  %1042 = sub nuw nsw i64 %1035, %1015
  %1043 = extractvalue { i64, i1 } %1038, 0, !nosanitize !44
  %1044 = tail call i64 @llvm.umin.i64(i64 %1042, i64 %1043)
  %1045 = load ptr, ptr %92, align 8, !tbaa !34
  %1046 = getelementptr inbounds nuw i8, ptr %1045, i64 %1015
  %1047 = and i64 %1044, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %1046, i8 0, i64 %1047, i1 false)
  %1048 = load i64, ptr %376, align 8, !tbaa !38
  %1049 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1048, i64 %1044), !nosanitize !44
  %1050 = extractvalue { i64, i1 } %1049, 1, !nosanitize !44
  br i1 %1050, label %1051, label %1052, !prof !45, !nosanitize !44

1051:                                             ; preds = %1041
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1052:                                             ; preds = %1041
  %1053 = extractvalue { i64, i1 } %1049, 0, !nosanitize !44
  br label %1054

1054:                                             ; preds = %1052, %1028
  %1055 = phi i64 [ %1033, %1028 ], [ %1053, %1052 ]
  store i64 %1055, ptr %376, align 8, !tbaa !38
  %1056 = load i32, ptr %82, align 4, !tbaa !73
  br label %1057

1057:                                             ; preds = %1054, %1034, %1013
  %1058 = phi i32 [ %1014, %1013 ], [ %1014, %1034 ], [ %1056, %1054 ]
  %1059 = icmp ugt i32 %1058, 2
  br i1 %1059, label %422, label %1060, !llvm.loop !88

1060:                                             ; preds = %1057, %419
  %1061 = phi i32 [ %420, %419 ], [ %1058, %1057 ]
  %1062 = load i32, ptr %90, align 4, !tbaa !71
  %1063 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1062, i32 %1061), !nosanitize !44
  %1064 = extractvalue { i32, i1 } %1063, 1, !nosanitize !44
  br i1 %1064, label %1065, label %1066, !prof !45, !nosanitize !44

1065:                                             ; preds = %1060
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1066:                                             ; preds = %1060
  %1067 = extractvalue { i32, i1 } %1063, 0, !nosanitize !44
  store i32 %1067, ptr %90, align 4, !tbaa !71
  %1068 = zext i32 %1067 to i64
  store i64 %1068, ptr %94, align 8, !tbaa !72
  store i32 %1061, ptr %95, align 4, !tbaa !74
  store i32 0, ptr %82, align 4, !tbaa !73
  %1069 = getelementptr inbounds nuw i8, ptr %15, i64 184
  store i32 2, ptr %1069, align 8, !tbaa !75
  %1070 = getelementptr inbounds nuw i8, ptr %15, i64 160
  store i32 2, ptr %1070, align 8, !tbaa !76
  %1071 = getelementptr inbounds nuw i8, ptr %15, i64 168
  store i32 0, ptr %1071, align 8, !tbaa !77
  store ptr %88, ptr %0, align 8, !tbaa !80
  store i32 %87, ptr %86, align 8, !tbaa !79
  store i32 %27, ptr %26, align 8, !tbaa !29
  br label %1072

1072:                                             ; preds = %1066, %34, %30, %28, %25, %23, %20, %17, %13, %9, %5, %3
  %1073 = phi i32 [ 0, %1066 ], [ -2, %23 ], [ -2, %30 ], [ -2, %28 ], [ -2, %25 ], [ -2, %34 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %1073
}

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateGetDictionary(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
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
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

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
  tail call void @llvm.ubsantrap(i8 13) #10, !nosanitize !44
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
  %43 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #8
  br label %46

44:                                               ; preds = %38
  %45 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #8
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i64 [ %43, %42 ], [ %45, %44 ]
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %47, ptr %48, align 8, !tbaa !57
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %49, align 4, !tbaa !58
  tail call void @_tr_init(ptr noundef nonnull %13) #8
  br label %50

50:                                               ; preds = %46, %18, %15, %11, %7, %3, %1
  %51 = phi i32 [ 0, %46 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %51
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_tr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateSetHeader(ptr noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #6 {
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
  store ptr %1, ptr %27, align 8, !tbaa !89
  br label %28

28:                                               ; preds = %26, %22, %19, %16, %12, %8, %4, %2
  %29 = phi i32 [ 0, %26 ], [ -2, %22 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 -5, 1) i32 @deflatePending(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #7 {
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
  %27 = load i32, ptr %26, align 4, !tbaa !90
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateUsed(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #7 {
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
  %26 = load i32, ptr %25, align 8, !tbaa !91
  store i32 %26, ptr %1, align 4, !tbaa !33
  br label %27

27:                                               ; preds = %24, %22, %19, %16, %12, %8, %4, %2
  %28 = phi i32 [ 0, %24 ], [ 0, %22 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
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
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %66, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !19
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %66

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !28
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
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %29 = load ptr, ptr %28, align 8, !tbaa !56
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
  %38 = load i32, ptr %33, align 4, !tbaa !90
  %39 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %38), !nosanitize !44
  %40 = extractvalue { i32, i1 } %39, 1, !nosanitize !44
  br i1 %40, label %41, label %42, !prof !45, !nosanitize !44

41:                                               ; preds = %58, %42, %35
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !44
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
  %52 = load i16, ptr %34, align 8, !tbaa !92
  %53 = trunc i32 %51 to i16
  %54 = or i16 %52, %53
  store i16 %54, ptr %34, align 8, !tbaa !92
  %55 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %38, i32 %44), !nosanitize !44
  %56 = extractvalue { i32, i1 } %55, 1, !nosanitize !44
  br i1 %56, label %57, label %58, !prof !45, !nosanitize !44

57:                                               ; preds = %48
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !44
  unreachable, !nosanitize !44

58:                                               ; preds = %48
  %59 = extractvalue { i32, i1 } %55, 0, !nosanitize !44
  store i32 %59, ptr %33, align 4, !tbaa !90
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #8
  %60 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %36, i32 %44), !nosanitize !44
  %61 = extractvalue { i32, i1 } %60, 1, !nosanitize !44
  br i1 false, label %41, label %62, !prof !45, !nosanitize !44

62:                                               ; preds = %58
  %63 = extractvalue { i32, i1 } %60, 0, !nosanitize !44
  %64 = ashr i32 %37, %44
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %66, label %35, !llvm.loop !93

66:                                               ; preds = %62, %25, %23, %20, %17, %13, %9, %5, %3
  %67 = phi i32 [ -5, %25 ], [ -5, %23 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ], [ 0, %62 ]
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
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %1102, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !19
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %1102

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !28
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
  %32 = load i32, ptr %31, align 8, !tbaa !48
  %33 = icmp eq i32 %2, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i32, ptr %30, align 4, !tbaa !47
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %36, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !94
  %39 = zext nneg i32 %25 to i64
  %40 = getelementptr inbounds nuw [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %39, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !94
  %42 = icmp eq ptr %38, %41
  br i1 %42, label %1059, label %43

43:                                               ; preds = %34, %29
  %44 = getelementptr inbounds nuw i8, ptr %15, i64 76
  %45 = load i32, ptr %44, align 4, !tbaa !58
  %46 = icmp eq i32 %45, -2
  br i1 %46, label %1059, label %47

47:                                               ; preds = %43
  switch i32 %22, label %1102 [
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
  %50 = load ptr, ptr %49, align 8, !tbaa !95
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
  br label %1102

66:                                               ; preds = %61, %56
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %68 = load i32, ptr %67, align 8, !tbaa !96
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %71, ptr %72, align 8, !tbaa !8
  br label %1036

73:                                               ; preds = %66
  store i32 5, ptr %44, align 4, !tbaa !58
  %74 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %75 = load i64, ptr %74, align 8, !tbaa !55
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %122, label %77

77:                                               ; preds = %73
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #8
  %78 = load i64, ptr %74, align 8, !tbaa !55
  %79 = load i32, ptr %67, align 8, !tbaa !96
  %80 = zext i32 %79 to i64
  %81 = tail call i64 @llvm.umin.i64(i64 %78, i64 %80)
  %82 = trunc nuw i64 %81 to i32
  %83 = icmp eq i64 %81, 0
  br i1 %83, label %115, label %84

84:                                               ; preds = %77
  %85 = load ptr, ptr %49, align 8, !tbaa !95
  %86 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %87 = load ptr, ptr %86, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %85, ptr align 1 %87, i64 %81, i1 false)
  %88 = load ptr, ptr %49, align 8, !tbaa !95
  %89 = getelementptr inbounds nuw i8, ptr %88, i64 %81
  store ptr %89, ptr %49, align 8, !tbaa !95
  %90 = load ptr, ptr %86, align 8, !tbaa !56
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 %81
  store ptr %91, ptr %86, align 8, !tbaa !56
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %93 = load i64, ptr %92, align 8, !tbaa !97
  %94 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %93, i64 %81), !nosanitize !44
  %95 = extractvalue { i64, i1 } %94, 1, !nosanitize !44
  br i1 %95, label %96, label %97, !prof !45, !nosanitize !44

96:                                               ; preds = %84
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

97:                                               ; preds = %84
  %98 = extractvalue { i64, i1 } %94, 0, !nosanitize !44
  store i64 %98, ptr %92, align 8, !tbaa !97
  %99 = load i32, ptr %67, align 8, !tbaa !96
  %100 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %99, i32 %82), !nosanitize !44
  %101 = extractvalue { i32, i1 } %100, 1, !nosanitize !44
  br i1 %101, label %102, label %103, !prof !45, !nosanitize !44

102:                                              ; preds = %97
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

103:                                              ; preds = %97
  %104 = extractvalue { i32, i1 } %100, 0, !nosanitize !44
  store i32 %104, ptr %67, align 8, !tbaa !96
  %105 = load i64, ptr %74, align 8, !tbaa !55
  %106 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %105, i64 %81), !nosanitize !44
  %107 = extractvalue { i64, i1 } %106, 1, !nosanitize !44
  br i1 %107, label %108, label %109, !prof !45, !nosanitize !44

108:                                              ; preds = %103
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  br label %140

121:                                              ; preds = %115
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1036

122:                                              ; preds = %73
  br i1 %55, label %124, label %140

123:                                              ; preds = %124
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !44
  unreachable, !nosanitize !44

124:                                              ; preds = %122
  %125 = add i32 %45, 1073741824
  %126 = icmp sgt i32 %125, -1
  br i1 %126, label %128, label %123, !prof !98, !nosanitize !44

127:                                              ; preds = %128
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !44
  unreachable, !nosanitize !44

128:                                              ; preds = %124
  %129 = shl nsw i32 %45, 1
  %130 = icmp sgt i32 %45, 4
  %131 = select i1 %130, i32 9, i32 0
  %132 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %129, i32 %131), !nosanitize !44
  %133 = extractvalue { i32, i1 } %132, 1, !nosanitize !44
  br i1 false, label %127, label %134, !prof !45, !nosanitize !44

134:                                              ; preds = %128
  %135 = extractvalue { i32, i1 } %132, 0, !nosanitize !44
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %138, ptr %139, align 8, !tbaa !8
  br label %1036

140:                                              ; preds = %134, %122, %119
  %141 = phi i64 [ %116, %119 ], [ 0, %122 ], [ 0, %134 ]
  %142 = phi i32 [ %120, %119 ], [ %22, %122 ], [ %22, %134 ]
  switch i32 %142, label %256 [
    i32 666, label %143
    i32 42, label %149
  ]

143:                                              ; preds = %140
  %144 = load i32, ptr %53, align 8, !tbaa !79
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %995, label %146

146:                                              ; preds = %143
  %147 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %147, ptr %148, align 8, !tbaa !8
  br label %1036

149:                                              ; preds = %140
  %150 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %151 = load i32, ptr %150, align 8, !tbaa !29
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  store i32 113, ptr %21, align 8, !tbaa !28
  br label %992

154:                                              ; preds = %149
  %155 = getelementptr inbounds nuw i8, ptr %15, i64 84
  %156 = load i32, ptr %155, align 4, !tbaa !30
  %157 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %156, i32 8), !nosanitize !44
  %158 = extractvalue { i32, i1 } %157, 1, !nosanitize !44
  br i1 %158, label %159, label %160, !prof !45, !nosanitize !44

159:                                              ; preds = %154
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

160:                                              ; preds = %154
  %161 = extractvalue { i32, i1 } %157, 0, !nosanitize !44
  %162 = shl i32 %161, 12
  %163 = load i32, ptr %31, align 8, !tbaa !48
  %164 = icmp sgt i32 %163, 1
  br i1 %164, label %173, label %165

165:                                              ; preds = %160
  %166 = load i32, ptr %30, align 4, !tbaa !47
  %167 = icmp slt i32 %166, 2
  br i1 %167, label %173, label %168

168:                                              ; preds = %165
  %169 = icmp samesign ult i32 %166, 6
  br i1 %169, label %173, label %170

170:                                              ; preds = %168
  %171 = icmp eq i32 %166, 6
  %172 = select i1 %171, i32 128, i32 192
  br label %173

173:                                              ; preds = %170, %168, %165, %160
  %174 = phi i32 [ 0, %165 ], [ 0, %160 ], [ 64, %168 ], [ %172, %170 ]
  %175 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %176 = or disjoint i32 %174, %162
  %177 = load i32, ptr %175, align 4, !tbaa !71
  %178 = icmp eq i32 %177, 0
  %179 = select i1 %178, i32 2048, i32 2080
  %180 = or disjoint i32 %179, %176
  %181 = urem i32 %180, 31
  %182 = or disjoint i32 %181, %180
  %183 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %141, i64 1), !nosanitize !44
  %184 = extractvalue { i64, i1 } %183, 1, !nosanitize !44
  br i1 %184, label %185, label %186, !prof !45, !nosanitize !44

185:                                              ; preds = %173
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

186:                                              ; preds = %173
  %187 = extractvalue { i64, i1 } %183, 0, !nosanitize !44
  %188 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %189 = load ptr, ptr %188, align 8, !tbaa !40
  %190 = lshr i32 %180, 8
  %191 = trunc i32 %190 to i8
  store i64 %187, ptr %74, align 8, !tbaa !55
  %192 = getelementptr inbounds nuw i8, ptr %189, i64 %141
  store i8 %191, ptr %192, align 1, !tbaa !5
  %193 = load i64, ptr %74, align 8, !tbaa !55
  %194 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %193, i64 1), !nosanitize !44
  %195 = extractvalue { i64, i1 } %194, 1, !nosanitize !44
  br i1 %195, label %196, label %197, !prof !45, !nosanitize !44

196:                                              ; preds = %186
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

197:                                              ; preds = %186
  %198 = extractvalue { i64, i1 } %194, 0, !nosanitize !44
  %199 = load ptr, ptr %188, align 8, !tbaa !40
  %200 = trunc i32 %182 to i8
  %201 = xor i8 %200, 31
  store i64 %198, ptr %74, align 8, !tbaa !55
  %202 = getelementptr inbounds nuw i8, ptr %199, i64 %193
  store i8 %201, ptr %202, align 1, !tbaa !5
  %203 = load i32, ptr %175, align 4, !tbaa !71
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %248, label %205

205:                                              ; preds = %197
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %207 = load i64, ptr %206, align 8, !tbaa !57
  %208 = lshr i64 %207, 16
  %209 = load i64, ptr %74, align 8, !tbaa !55
  %210 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %209, i64 1), !nosanitize !44
  %211 = extractvalue { i64, i1 } %210, 1, !nosanitize !44
  br i1 %211, label %212, label %213, !prof !45, !nosanitize !44

212:                                              ; preds = %205
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

213:                                              ; preds = %205
  %214 = extractvalue { i64, i1 } %210, 0, !nosanitize !44
  %215 = load ptr, ptr %188, align 8, !tbaa !40
  %216 = lshr i64 %207, 24
  %217 = trunc i64 %216 to i8
  store i64 %214, ptr %74, align 8, !tbaa !55
  %218 = getelementptr inbounds nuw i8, ptr %215, i64 %209
  store i8 %217, ptr %218, align 1, !tbaa !5
  %219 = load i64, ptr %74, align 8, !tbaa !55
  %220 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %219, i64 1), !nosanitize !44
  %221 = extractvalue { i64, i1 } %220, 1, !nosanitize !44
  br i1 %221, label %222, label %223, !prof !45, !nosanitize !44

222:                                              ; preds = %213
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

223:                                              ; preds = %213
  %224 = extractvalue { i64, i1 } %220, 0, !nosanitize !44
  %225 = load ptr, ptr %188, align 8, !tbaa !40
  %226 = trunc i64 %208 to i8
  store i64 %224, ptr %74, align 8, !tbaa !55
  %227 = getelementptr inbounds nuw i8, ptr %225, i64 %219
  store i8 %226, ptr %227, align 1, !tbaa !5
  %228 = load i64, ptr %206, align 8, !tbaa !57
  %229 = trunc i64 %228 to i8
  %230 = load i64, ptr %74, align 8, !tbaa !55
  %231 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %230, i64 1), !nosanitize !44
  %232 = extractvalue { i64, i1 } %231, 1, !nosanitize !44
  br i1 %232, label %233, label %234, !prof !45, !nosanitize !44

233:                                              ; preds = %223
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

234:                                              ; preds = %223
  %235 = extractvalue { i64, i1 } %231, 0, !nosanitize !44
  %236 = load ptr, ptr %188, align 8, !tbaa !40
  %237 = lshr i64 %228, 8
  %238 = trunc i64 %237 to i8
  store i64 %235, ptr %74, align 8, !tbaa !55
  %239 = getelementptr inbounds nuw i8, ptr %236, i64 %230
  store i8 %238, ptr %239, align 1, !tbaa !5
  %240 = load i64, ptr %74, align 8, !tbaa !55
  %241 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %240, i64 1), !nosanitize !44
  %242 = extractvalue { i64, i1 } %241, 1, !nosanitize !44
  br i1 %242, label %243, label %244, !prof !45, !nosanitize !44

243:                                              ; preds = %234
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

244:                                              ; preds = %234
  %245 = extractvalue { i64, i1 } %241, 0, !nosanitize !44
  %246 = load ptr, ptr %188, align 8, !tbaa !40
  store i64 %245, ptr %74, align 8, !tbaa !55
  %247 = getelementptr inbounds nuw i8, ptr %246, i64 %240
  store i8 %229, ptr %247, align 1, !tbaa !5
  br label %248

248:                                              ; preds = %244, %197
  %249 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #8
  %250 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %249, ptr %250, align 8, !tbaa !57
  store i32 113, ptr %21, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %251 = load i64, ptr %74, align 8, !tbaa !55
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %248
  %254 = load i32, ptr %21, align 8, !tbaa !28
  br label %256

255:                                              ; preds = %248
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1036

256:                                              ; preds = %253, %140
  %257 = phi i32 [ %254, %253 ], [ %142, %140 ]
  %258 = icmp eq i32 %257, 57
  br i1 %258, label %259, label %514

259:                                              ; preds = %256
  %260 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #8
  %261 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %260, ptr %261, align 8, !tbaa !57
  %262 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %263 = load i64, ptr %74, align 8, !tbaa !55
  %264 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %263, i64 1), !nosanitize !44
  %265 = extractvalue { i64, i1 } %264, 1, !nosanitize !44
  br i1 %265, label %266, label %267, !prof !45, !nosanitize !44

266:                                              ; preds = %259
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

267:                                              ; preds = %259
  %268 = extractvalue { i64, i1 } %264, 0, !nosanitize !44
  %269 = load ptr, ptr %262, align 8, !tbaa !40
  store i64 %268, ptr %74, align 8, !tbaa !55
  %270 = getelementptr inbounds nuw i8, ptr %269, i64 %263
  store i8 31, ptr %270, align 1, !tbaa !5
  %271 = load i64, ptr %74, align 8, !tbaa !55
  %272 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %271, i64 1), !nosanitize !44
  %273 = extractvalue { i64, i1 } %272, 1, !nosanitize !44
  br i1 %273, label %274, label %275, !prof !45, !nosanitize !44

274:                                              ; preds = %267
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

275:                                              ; preds = %267
  %276 = extractvalue { i64, i1 } %272, 0, !nosanitize !44
  %277 = load ptr, ptr %262, align 8, !tbaa !40
  store i64 %276, ptr %74, align 8, !tbaa !55
  %278 = getelementptr inbounds nuw i8, ptr %277, i64 %271
  store i8 -117, ptr %278, align 1, !tbaa !5
  %279 = load i64, ptr %74, align 8, !tbaa !55
  %280 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %279, i64 1), !nosanitize !44
  %281 = extractvalue { i64, i1 } %280, 1, !nosanitize !44
  br i1 %281, label %282, label %283, !prof !45, !nosanitize !44

282:                                              ; preds = %275
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

283:                                              ; preds = %275
  %284 = extractvalue { i64, i1 } %280, 0, !nosanitize !44
  %285 = load ptr, ptr %262, align 8, !tbaa !40
  store i64 %284, ptr %74, align 8, !tbaa !55
  %286 = getelementptr inbounds nuw i8, ptr %285, i64 %279
  store i8 8, ptr %286, align 1, !tbaa !5
  %287 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %288 = load ptr, ptr %287, align 8, !tbaa !89
  %289 = icmp eq ptr %288, null
  %290 = load i64, ptr %74, align 8, !tbaa !55
  %291 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %290, i64 1), !nosanitize !44
  %292 = extractvalue { i64, i1 } %291, 1, !nosanitize !44
  br i1 %289, label %293, label %360

293:                                              ; preds = %283
  br i1 %292, label %294, label %295, !prof !45, !nosanitize !44

294:                                              ; preds = %293
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

295:                                              ; preds = %293
  %296 = extractvalue { i64, i1 } %291, 0, !nosanitize !44
  %297 = load ptr, ptr %262, align 8, !tbaa !40
  store i64 %296, ptr %74, align 8, !tbaa !55
  %298 = getelementptr inbounds nuw i8, ptr %297, i64 %290
  store i8 0, ptr %298, align 1, !tbaa !5
  %299 = load i64, ptr %74, align 8, !tbaa !55
  %300 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %299, i64 1), !nosanitize !44
  %301 = extractvalue { i64, i1 } %300, 1, !nosanitize !44
  br i1 %301, label %302, label %303, !prof !45, !nosanitize !44

302:                                              ; preds = %295
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

303:                                              ; preds = %295
  %304 = extractvalue { i64, i1 } %300, 0, !nosanitize !44
  %305 = load ptr, ptr %262, align 8, !tbaa !40
  store i64 %304, ptr %74, align 8, !tbaa !55
  %306 = getelementptr inbounds nuw i8, ptr %305, i64 %299
  store i8 0, ptr %306, align 1, !tbaa !5
  %307 = load i64, ptr %74, align 8, !tbaa !55
  %308 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %307, i64 1), !nosanitize !44
  %309 = extractvalue { i64, i1 } %308, 1, !nosanitize !44
  br i1 %309, label %310, label %311, !prof !45, !nosanitize !44

310:                                              ; preds = %303
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

311:                                              ; preds = %303
  %312 = extractvalue { i64, i1 } %308, 0, !nosanitize !44
  %313 = load ptr, ptr %262, align 8, !tbaa !40
  store i64 %312, ptr %74, align 8, !tbaa !55
  %314 = getelementptr inbounds nuw i8, ptr %313, i64 %307
  store i8 0, ptr %314, align 1, !tbaa !5
  %315 = load i64, ptr %74, align 8, !tbaa !55
  %316 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %315, i64 1), !nosanitize !44
  %317 = extractvalue { i64, i1 } %316, 1, !nosanitize !44
  br i1 %317, label %318, label %319, !prof !45, !nosanitize !44

318:                                              ; preds = %311
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

319:                                              ; preds = %311
  %320 = extractvalue { i64, i1 } %316, 0, !nosanitize !44
  %321 = load ptr, ptr %262, align 8, !tbaa !40
  store i64 %320, ptr %74, align 8, !tbaa !55
  %322 = getelementptr inbounds nuw i8, ptr %321, i64 %315
  store i8 0, ptr %322, align 1, !tbaa !5
  %323 = load i64, ptr %74, align 8, !tbaa !55
  %324 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %323, i64 1), !nosanitize !44
  %325 = extractvalue { i64, i1 } %324, 1, !nosanitize !44
  br i1 %325, label %326, label %327, !prof !45, !nosanitize !44

326:                                              ; preds = %319
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

327:                                              ; preds = %319
  %328 = extractvalue { i64, i1 } %324, 0, !nosanitize !44
  %329 = load ptr, ptr %262, align 8, !tbaa !40
  store i64 %328, ptr %74, align 8, !tbaa !55
  %330 = getelementptr inbounds nuw i8, ptr %329, i64 %323
  store i8 0, ptr %330, align 1, !tbaa !5
  %331 = load i32, ptr %30, align 4, !tbaa !47
  %332 = icmp eq i32 %331, 9
  br i1 %332, label %339, label %333

333:                                              ; preds = %327
  %334 = load i32, ptr %31, align 8, !tbaa !48
  %335 = icmp sgt i32 %334, 1
  %336 = icmp slt i32 %331, 2
  %337 = or i1 %336, %335
  %338 = select i1 %337, i8 4, i8 0
  br label %339

339:                                              ; preds = %333, %327
  %340 = phi i8 [ %338, %333 ], [ 2, %327 ]
  %341 = load i64, ptr %74, align 8, !tbaa !55
  %342 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %341, i64 1), !nosanitize !44
  %343 = extractvalue { i64, i1 } %342, 1, !nosanitize !44
  br i1 %343, label %344, label %345, !prof !45, !nosanitize !44

344:                                              ; preds = %339
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

345:                                              ; preds = %339
  %346 = extractvalue { i64, i1 } %342, 0, !nosanitize !44
  %347 = load ptr, ptr %262, align 8, !tbaa !40
  store i64 %346, ptr %74, align 8, !tbaa !55
  %348 = getelementptr inbounds nuw i8, ptr %347, i64 %341
  store i8 %340, ptr %348, align 1, !tbaa !5
  %349 = load i64, ptr %74, align 8, !tbaa !55
  %350 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %349, i64 1), !nosanitize !44
  %351 = extractvalue { i64, i1 } %350, 1, !nosanitize !44
  br i1 %351, label %352, label %353, !prof !45, !nosanitize !44

352:                                              ; preds = %345
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

353:                                              ; preds = %345
  %354 = extractvalue { i64, i1 } %350, 0, !nosanitize !44
  %355 = load ptr, ptr %262, align 8, !tbaa !40
  store i64 %354, ptr %74, align 8, !tbaa !55
  %356 = getelementptr inbounds nuw i8, ptr %355, i64 %349
  store i8 3, ptr %356, align 1, !tbaa !5
  store i32 113, ptr %21, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %357 = load i64, ptr %74, align 8, !tbaa !55
  %358 = icmp eq i64 %357, 0
  br i1 %358, label %512, label %359

359:                                              ; preds = %353
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1036

360:                                              ; preds = %283
  br i1 %292, label %361, label %362, !prof !45, !nosanitize !44

361:                                              ; preds = %360
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

362:                                              ; preds = %360
  %363 = extractvalue { i64, i1 } %291, 0, !nosanitize !44
  %364 = load ptr, ptr %262, align 8, !tbaa !40
  %365 = getelementptr inbounds nuw i8, ptr %288, i64 56
  %366 = load ptr, ptr %365, align 8, !tbaa !99
  %367 = icmp eq ptr %366, null
  %368 = getelementptr inbounds nuw i8, ptr %288, i64 40
  %369 = load ptr, ptr %368, align 8, !tbaa !101
  %370 = icmp eq ptr %369, null
  %371 = getelementptr inbounds nuw i8, ptr %288, i64 24
  %372 = load ptr, ptr %371, align 8, !tbaa !102
  %373 = icmp eq ptr %372, null
  %374 = load i32, ptr %288, align 8, !tbaa !103
  %375 = icmp ne i32 %374, 0
  %376 = getelementptr inbounds nuw i8, ptr %288, i64 68
  %377 = load i32, ptr %376, align 4, !tbaa !104
  %378 = icmp eq i32 %377, 0
  %379 = select i1 %378, i8 0, i8 2
  %380 = zext i1 %375 to i8
  %381 = select i1 %373, i8 0, i8 4
  %382 = select i1 %370, i8 0, i8 8
  %383 = select i1 %367, i8 0, i8 16
  %384 = or disjoint i8 %382, %383
  %385 = or disjoint i8 %384, %381
  %386 = or disjoint i8 %385, %380
  %387 = or disjoint i8 %386, %379
  store i64 %363, ptr %74, align 8, !tbaa !55
  %388 = getelementptr inbounds nuw i8, ptr %364, i64 %290
  store i8 %387, ptr %388, align 1, !tbaa !5
  %389 = load i64, ptr %74, align 8, !tbaa !55
  %390 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %389, i64 1), !nosanitize !44
  %391 = extractvalue { i64, i1 } %390, 1, !nosanitize !44
  br i1 %391, label %392, label %393, !prof !45, !nosanitize !44

392:                                              ; preds = %362
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

393:                                              ; preds = %362
  %394 = extractvalue { i64, i1 } %390, 0, !nosanitize !44
  %395 = load ptr, ptr %262, align 8, !tbaa !40
  %396 = load ptr, ptr %287, align 8, !tbaa !89
  %397 = getelementptr inbounds nuw i8, ptr %396, i64 8
  %398 = load i64, ptr %397, align 8, !tbaa !105
  %399 = trunc i64 %398 to i8
  store i64 %394, ptr %74, align 8, !tbaa !55
  %400 = getelementptr inbounds nuw i8, ptr %395, i64 %389
  store i8 %399, ptr %400, align 1, !tbaa !5
  %401 = load i64, ptr %74, align 8, !tbaa !55
  %402 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %401, i64 1), !nosanitize !44
  %403 = extractvalue { i64, i1 } %402, 1, !nosanitize !44
  br i1 %403, label %404, label %405, !prof !45, !nosanitize !44

404:                                              ; preds = %393
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

405:                                              ; preds = %393
  %406 = extractvalue { i64, i1 } %402, 0, !nosanitize !44
  %407 = load ptr, ptr %262, align 8, !tbaa !40
  %408 = load ptr, ptr %287, align 8, !tbaa !89
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 8
  %410 = load i64, ptr %409, align 8, !tbaa !105
  %411 = lshr i64 %410, 8
  %412 = trunc i64 %411 to i8
  store i64 %406, ptr %74, align 8, !tbaa !55
  %413 = getelementptr inbounds nuw i8, ptr %407, i64 %401
  store i8 %412, ptr %413, align 1, !tbaa !5
  %414 = load i64, ptr %74, align 8, !tbaa !55
  %415 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %414, i64 1), !nosanitize !44
  %416 = extractvalue { i64, i1 } %415, 1, !nosanitize !44
  br i1 %416, label %417, label %418, !prof !45, !nosanitize !44

417:                                              ; preds = %405
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

418:                                              ; preds = %405
  %419 = extractvalue { i64, i1 } %415, 0, !nosanitize !44
  %420 = load ptr, ptr %262, align 8, !tbaa !40
  %421 = load ptr, ptr %287, align 8, !tbaa !89
  %422 = getelementptr inbounds nuw i8, ptr %421, i64 8
  %423 = load i64, ptr %422, align 8, !tbaa !105
  %424 = lshr i64 %423, 16
  %425 = trunc i64 %424 to i8
  store i64 %419, ptr %74, align 8, !tbaa !55
  %426 = getelementptr inbounds nuw i8, ptr %420, i64 %414
  store i8 %425, ptr %426, align 1, !tbaa !5
  %427 = load i64, ptr %74, align 8, !tbaa !55
  %428 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %427, i64 1), !nosanitize !44
  %429 = extractvalue { i64, i1 } %428, 1, !nosanitize !44
  br i1 %429, label %430, label %431, !prof !45, !nosanitize !44

430:                                              ; preds = %418
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

431:                                              ; preds = %418
  %432 = extractvalue { i64, i1 } %428, 0, !nosanitize !44
  %433 = load ptr, ptr %262, align 8, !tbaa !40
  %434 = load ptr, ptr %287, align 8, !tbaa !89
  %435 = getelementptr inbounds nuw i8, ptr %434, i64 8
  %436 = load i64, ptr %435, align 8, !tbaa !105
  %437 = lshr i64 %436, 24
  %438 = trunc i64 %437 to i8
  store i64 %432, ptr %74, align 8, !tbaa !55
  %439 = getelementptr inbounds nuw i8, ptr %433, i64 %427
  store i8 %438, ptr %439, align 1, !tbaa !5
  %440 = load i32, ptr %30, align 4, !tbaa !47
  %441 = icmp eq i32 %440, 9
  br i1 %441, label %448, label %442

442:                                              ; preds = %431
  %443 = load i32, ptr %31, align 8, !tbaa !48
  %444 = icmp sgt i32 %443, 1
  %445 = icmp slt i32 %440, 2
  %446 = or i1 %445, %444
  %447 = select i1 %446, i8 4, i8 0
  br label %448

448:                                              ; preds = %442, %431
  %449 = phi i8 [ %447, %442 ], [ 2, %431 ]
  %450 = load i64, ptr %74, align 8, !tbaa !55
  %451 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %450, i64 1), !nosanitize !44
  %452 = extractvalue { i64, i1 } %451, 1, !nosanitize !44
  br i1 %452, label %453, label %454, !prof !45, !nosanitize !44

453:                                              ; preds = %448
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

454:                                              ; preds = %448
  %455 = extractvalue { i64, i1 } %451, 0, !nosanitize !44
  %456 = load ptr, ptr %262, align 8, !tbaa !40
  store i64 %455, ptr %74, align 8, !tbaa !55
  %457 = getelementptr inbounds nuw i8, ptr %456, i64 %450
  store i8 %449, ptr %457, align 1, !tbaa !5
  %458 = load i64, ptr %74, align 8, !tbaa !55
  %459 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %458, i64 1), !nosanitize !44
  %460 = extractvalue { i64, i1 } %459, 1, !nosanitize !44
  br i1 %460, label %461, label %462, !prof !45, !nosanitize !44

461:                                              ; preds = %454
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

462:                                              ; preds = %454
  %463 = extractvalue { i64, i1 } %459, 0, !nosanitize !44
  %464 = load ptr, ptr %262, align 8, !tbaa !40
  %465 = load ptr, ptr %287, align 8, !tbaa !89
  %466 = getelementptr inbounds nuw i8, ptr %465, i64 20
  %467 = load i32, ptr %466, align 4, !tbaa !106
  %468 = trunc i32 %467 to i8
  store i64 %463, ptr %74, align 8, !tbaa !55
  %469 = getelementptr inbounds nuw i8, ptr %464, i64 %458
  store i8 %468, ptr %469, align 1, !tbaa !5
  %470 = load ptr, ptr %287, align 8, !tbaa !89
  %471 = getelementptr inbounds nuw i8, ptr %470, i64 24
  %472 = load ptr, ptr %471, align 8, !tbaa !102
  %473 = icmp eq ptr %472, null
  br i1 %473, label %500, label %474

474:                                              ; preds = %462
  %475 = load i64, ptr %74, align 8, !tbaa !55
  %476 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %475, i64 1), !nosanitize !44
  %477 = extractvalue { i64, i1 } %476, 1, !nosanitize !44
  br i1 %477, label %478, label %479, !prof !45, !nosanitize !44

478:                                              ; preds = %474
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

479:                                              ; preds = %474
  %480 = extractvalue { i64, i1 } %476, 0, !nosanitize !44
  %481 = load ptr, ptr %262, align 8, !tbaa !40
  %482 = getelementptr inbounds nuw i8, ptr %470, i64 32
  %483 = load i32, ptr %482, align 8, !tbaa !107
  %484 = trunc i32 %483 to i8
  store i64 %480, ptr %74, align 8, !tbaa !55
  %485 = getelementptr inbounds nuw i8, ptr %481, i64 %475
  store i8 %484, ptr %485, align 1, !tbaa !5
  %486 = load i64, ptr %74, align 8, !tbaa !55
  %487 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %486, i64 1), !nosanitize !44
  %488 = extractvalue { i64, i1 } %487, 1, !nosanitize !44
  br i1 %488, label %489, label %490, !prof !45, !nosanitize !44

489:                                              ; preds = %479
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

490:                                              ; preds = %479
  %491 = extractvalue { i64, i1 } %487, 0, !nosanitize !44
  %492 = load ptr, ptr %262, align 8, !tbaa !40
  %493 = load ptr, ptr %287, align 8, !tbaa !89
  %494 = getelementptr inbounds nuw i8, ptr %493, i64 32
  %495 = load i32, ptr %494, align 8, !tbaa !107
  %496 = lshr i32 %495, 8
  %497 = trunc i32 %496 to i8
  store i64 %491, ptr %74, align 8, !tbaa !55
  %498 = getelementptr inbounds nuw i8, ptr %492, i64 %486
  store i8 %497, ptr %498, align 1, !tbaa !5
  %499 = load ptr, ptr %287, align 8, !tbaa !89
  br label %500

500:                                              ; preds = %490, %462
  %501 = phi ptr [ %499, %490 ], [ %470, %462 ]
  %502 = getelementptr inbounds nuw i8, ptr %501, i64 68
  %503 = load i32, ptr %502, align 4, !tbaa !104
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %510, label %505

505:                                              ; preds = %500
  %506 = load i64, ptr %261, align 8, !tbaa !57
  %507 = load ptr, ptr %262, align 8, !tbaa !40
  %508 = load i64, ptr %74, align 8, !tbaa !55
  %509 = tail call i64 @crc32_z(i64 noundef %506, ptr noundef %507, i64 noundef %508) #8
  store i64 %509, ptr %261, align 8, !tbaa !57
  br label %510

510:                                              ; preds = %505, %500
  %511 = getelementptr inbounds nuw i8, ptr %15, i64 64
  store i64 0, ptr %511, align 8, !tbaa !108
  store i32 69, ptr %21, align 8, !tbaa !28
  br label %516

512:                                              ; preds = %353
  %513 = load i32, ptr %21, align 8, !tbaa !28
  br label %514

514:                                              ; preds = %512, %256
  %515 = phi i32 [ %513, %512 ], [ %257, %256 ]
  switch i32 %515, label %992 [
    i32 69, label %516
    i32 73, label %724
    i32 91, label %836
    i32 103, label %947
  ]

516:                                              ; preds = %514, %510
  %517 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %518 = load ptr, ptr %517, align 8, !tbaa !89
  %519 = getelementptr inbounds nuw i8, ptr %518, i64 24
  %520 = load ptr, ptr %519, align 8, !tbaa !102
  %521 = icmp eq ptr %520, null
  br i1 %521, label %723, label %522

522:                                              ; preds = %516
  %523 = getelementptr inbounds nuw i8, ptr %518, i64 32
  %524 = load i32, ptr %523, align 8, !tbaa !107
  %525 = and i32 %524, 65535
  %526 = zext nneg i32 %525 to i64
  %527 = getelementptr inbounds nuw i8, ptr %15, i64 64
  %528 = load i64, ptr %527, align 8, !tbaa !108
  %529 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %526, i64 %528), !nosanitize !44
  %530 = extractvalue { i64, i1 } %529, 1, !nosanitize !44
  br i1 %530, label %531, label %532, !prof !45, !nosanitize !44

531:                                              ; preds = %522
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

532:                                              ; preds = %522
  %533 = load i64, ptr %74, align 8, !tbaa !55
  %534 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %535 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %536 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %537 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %538 = extractvalue { i64, i1 } %529, 0
  %539 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %533, i64 %538), !nosanitize !44
  %540 = extractvalue { i64, i1 } %539, 1, !nosanitize !44
  br i1 %540, label %613, label %541, !prof !45, !nosanitize !44

541:                                              ; preds = %532
  %542 = extractvalue { i64, i1 } %539, 0, !nosanitize !44
  %543 = load i64, ptr %534, align 8, !tbaa !41
  %544 = icmp ugt i64 %542, %543
  br i1 %544, label %545, label %696

545:                                              ; preds = %541
  %546 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %543, i64 %533), !nosanitize !44
  %547 = extractvalue { i64, i1 } %546, 0, !nosanitize !44
  %548 = extractvalue { i64, i1 } %546, 1, !nosanitize !44
  br i1 %548, label %619, label %549, !prof !45, !nosanitize !44

549:                                              ; preds = %545
  %550 = load ptr, ptr %535, align 8, !tbaa !40
  %551 = getelementptr inbounds nuw i8, ptr %550, i64 %533
  %552 = getelementptr inbounds nuw i8, ptr %520, i64 %528
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %551, ptr nonnull align 1 %552, i64 %547, i1 false)
  %553 = load i64, ptr %534, align 8, !tbaa !41
  store i64 %553, ptr %74, align 8, !tbaa !55
  %554 = load ptr, ptr %517, align 8, !tbaa !89
  %555 = getelementptr inbounds nuw i8, ptr %554, i64 68
  %556 = load i32, ptr %555, align 4, !tbaa !104
  %557 = icmp ne i32 %556, 0
  %558 = icmp ugt i64 %553, %533
  %559 = select i1 %557, i1 %558, i1 false
  br i1 %559, label %560, label %566

560:                                              ; preds = %549
  %561 = sub nuw i64 %553, %533
  %562 = load ptr, ptr %535, align 8, !tbaa !40
  %563 = getelementptr inbounds nuw i8, ptr %562, i64 %533
  %564 = load i64, ptr %536, align 8, !tbaa !57
  %565 = tail call i64 @crc32_z(i64 noundef %564, ptr noundef %563, i64 noundef %561) #8
  store i64 %565, ptr %536, align 8, !tbaa !57
  br label %566

566:                                              ; preds = %560, %549
  %567 = load i64, ptr %527, align 8, !tbaa !108
  %568 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %567, i64 %547), !nosanitize !44
  %569 = extractvalue { i64, i1 } %568, 1, !nosanitize !44
  br i1 %569, label %642, label %570, !prof !45, !nosanitize !44

570:                                              ; preds = %566
  %571 = extractvalue { i64, i1 } %568, 0, !nosanitize !44
  store i64 %571, ptr %527, align 8, !tbaa !108
  %572 = load ptr, ptr %14, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %572) #8
  %573 = getelementptr inbounds nuw i8, ptr %572, i64 40
  %574 = load i64, ptr %573, align 8, !tbaa !55
  %575 = load i32, ptr %67, align 8, !tbaa !96
  %576 = zext i32 %575 to i64
  %577 = tail call i64 @llvm.umin.i64(i64 %574, i64 %576)
  %578 = trunc nuw i64 %577 to i32
  %579 = icmp eq i64 %577, 0
  br i1 %579, label %607, label %580

580:                                              ; preds = %570
  %581 = load ptr, ptr %49, align 8, !tbaa !95
  %582 = getelementptr inbounds nuw i8, ptr %572, i64 32
  %583 = load ptr, ptr %582, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %581, ptr align 1 %583, i64 %577, i1 false)
  %584 = load ptr, ptr %49, align 8, !tbaa !95
  %585 = getelementptr inbounds nuw i8, ptr %584, i64 %577
  store ptr %585, ptr %49, align 8, !tbaa !95
  %586 = load ptr, ptr %582, align 8, !tbaa !56
  %587 = getelementptr inbounds nuw i8, ptr %586, i64 %577
  store ptr %587, ptr %582, align 8, !tbaa !56
  %588 = load i64, ptr %537, align 8, !tbaa !97
  %589 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %588, i64 %577), !nosanitize !44
  %590 = extractvalue { i64, i1 } %589, 1, !nosanitize !44
  br i1 %590, label %664, label %591, !prof !45, !nosanitize !44

591:                                              ; preds = %580
  %592 = extractvalue { i64, i1 } %589, 0, !nosanitize !44
  store i64 %592, ptr %537, align 8, !tbaa !97
  %593 = load i32, ptr %67, align 8, !tbaa !96
  %594 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %593, i32 %578), !nosanitize !44
  %595 = extractvalue { i32, i1 } %594, 1, !nosanitize !44
  br i1 %595, label %670, label %596, !prof !45, !nosanitize !44

596:                                              ; preds = %591
  %597 = extractvalue { i32, i1 } %594, 0, !nosanitize !44
  store i32 %597, ptr %67, align 8, !tbaa !96
  %598 = load i64, ptr %573, align 8, !tbaa !55
  %599 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %598, i64 %577), !nosanitize !44
  %600 = extractvalue { i64, i1 } %599, 1, !nosanitize !44
  br i1 %600, label %676, label %601, !prof !45, !nosanitize !44

601:                                              ; preds = %596
  %602 = extractvalue { i64, i1 } %599, 0, !nosanitize !44
  store i64 %602, ptr %573, align 8, !tbaa !55
  %603 = icmp eq i64 %602, 0
  br i1 %603, label %604, label %607

604:                                              ; preds = %601
  %605 = getelementptr inbounds nuw i8, ptr %572, i64 16
  %606 = load ptr, ptr %605, align 8, !tbaa !40
  store ptr %606, ptr %582, align 8, !tbaa !56
  br label %607

607:                                              ; preds = %604, %601, %570
  %608 = load i64, ptr %74, align 8, !tbaa !55
  %609 = icmp eq i64 %608, 0
  br i1 %609, label %610, label %686

610:                                              ; preds = %607
  %611 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %538, i64 %547), !nosanitize !44
  %612 = extractvalue { i64, i1 } %611, 1, !nosanitize !44
  br i1 %612, label %690, label %614, !prof !45, !nosanitize !44

613:                                              ; preds = %532
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

614:                                              ; preds = %687, %610
  %615 = phi { i64, i1 } [ %688, %687 ], [ %611, %610 ]
  %616 = extractvalue { i64, i1 } %615, 0
  %617 = load i64, ptr %534, align 8, !tbaa !41
  %618 = icmp ugt i64 %616, %617
  br i1 %618, label %620, label %691

619:                                              ; preds = %545
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

620:                                              ; preds = %614
  %621 = load ptr, ptr %535, align 8, !tbaa !40
  %622 = load ptr, ptr %517, align 8, !tbaa !89
  %623 = getelementptr inbounds nuw i8, ptr %622, i64 24
  %624 = load ptr, ptr %623, align 8, !tbaa !102
  %625 = load i64, ptr %527, align 8, !tbaa !108
  %626 = getelementptr inbounds nuw i8, ptr %624, i64 %625
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %621, ptr align 1 %626, i64 %617, i1 false)
  %627 = load i64, ptr %534, align 8, !tbaa !41
  store i64 %627, ptr %74, align 8, !tbaa !55
  %628 = load ptr, ptr %517, align 8, !tbaa !89
  %629 = getelementptr inbounds nuw i8, ptr %628, i64 68
  %630 = load i32, ptr %629, align 4, !tbaa !104
  %631 = icmp ne i32 %630, 0
  %632 = icmp ne i64 %627, 0
  %633 = select i1 %631, i1 %632, i1 false
  br i1 %633, label %634, label %638

634:                                              ; preds = %620
  %635 = load ptr, ptr %535, align 8, !tbaa !40
  %636 = load i64, ptr %536, align 8, !tbaa !57
  %637 = tail call i64 @crc32_z(i64 noundef %636, ptr noundef %635, i64 noundef %627) #8
  store i64 %637, ptr %536, align 8, !tbaa !57
  br label %638

638:                                              ; preds = %634, %620
  %639 = load i64, ptr %527, align 8, !tbaa !108
  %640 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %639, i64 %617), !nosanitize !44
  %641 = extractvalue { i64, i1 } %640, 1, !nosanitize !44
  br i1 %641, label %642, label %643, !prof !109, !nosanitize !44

642:                                              ; preds = %638, %566
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

643:                                              ; preds = %638
  %644 = extractvalue { i64, i1 } %640, 0, !nosanitize !44
  store i64 %644, ptr %527, align 8, !tbaa !108
  %645 = load ptr, ptr %14, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %645) #8
  %646 = getelementptr inbounds nuw i8, ptr %645, i64 40
  %647 = load i64, ptr %646, align 8, !tbaa !55
  %648 = load i32, ptr %67, align 8, !tbaa !96
  %649 = zext i32 %648 to i64
  %650 = tail call i64 @llvm.umin.i64(i64 %647, i64 %649)
  %651 = trunc nuw i64 %650 to i32
  %652 = icmp eq i64 %650, 0
  br i1 %652, label %683, label %653

653:                                              ; preds = %643
  %654 = load ptr, ptr %49, align 8, !tbaa !95
  %655 = getelementptr inbounds nuw i8, ptr %645, i64 32
  %656 = load ptr, ptr %655, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %654, ptr align 1 %656, i64 %650, i1 false)
  %657 = load ptr, ptr %49, align 8, !tbaa !95
  %658 = getelementptr inbounds nuw i8, ptr %657, i64 %650
  store ptr %658, ptr %49, align 8, !tbaa !95
  %659 = load ptr, ptr %655, align 8, !tbaa !56
  %660 = getelementptr inbounds nuw i8, ptr %659, i64 %650
  store ptr %660, ptr %655, align 8, !tbaa !56
  %661 = load i64, ptr %537, align 8, !tbaa !97
  %662 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %661, i64 %650), !nosanitize !44
  %663 = extractvalue { i64, i1 } %662, 1, !nosanitize !44
  br i1 %663, label %664, label %665, !prof !109, !nosanitize !44

664:                                              ; preds = %653, %580
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

665:                                              ; preds = %653
  %666 = extractvalue { i64, i1 } %662, 0, !nosanitize !44
  store i64 %666, ptr %537, align 8, !tbaa !97
  %667 = load i32, ptr %67, align 8, !tbaa !96
  %668 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %667, i32 %651), !nosanitize !44
  %669 = extractvalue { i32, i1 } %668, 1, !nosanitize !44
  br i1 %669, label %670, label %671, !prof !109, !nosanitize !44

670:                                              ; preds = %665, %591
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

671:                                              ; preds = %665
  %672 = extractvalue { i32, i1 } %668, 0, !nosanitize !44
  store i32 %672, ptr %67, align 8, !tbaa !96
  %673 = load i64, ptr %646, align 8, !tbaa !55
  %674 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %673, i64 %650), !nosanitize !44
  %675 = extractvalue { i64, i1 } %674, 1, !nosanitize !44
  br i1 %675, label %676, label %677, !prof !109, !nosanitize !44

676:                                              ; preds = %671, %596
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

677:                                              ; preds = %671
  %678 = extractvalue { i64, i1 } %674, 0, !nosanitize !44
  store i64 %678, ptr %646, align 8, !tbaa !55
  %679 = icmp eq i64 %678, 0
  br i1 %679, label %680, label %683

680:                                              ; preds = %677
  %681 = getelementptr inbounds nuw i8, ptr %645, i64 16
  %682 = load ptr, ptr %681, align 8, !tbaa !40
  store ptr %682, ptr %655, align 8, !tbaa !56
  br label %683

683:                                              ; preds = %680, %677, %643
  %684 = load i64, ptr %74, align 8, !tbaa !55
  %685 = icmp eq i64 %684, 0
  br i1 %685, label %687, label %686

686:                                              ; preds = %683, %607
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1036

687:                                              ; preds = %683
  %688 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %616, i64 %617), !nosanitize !44
  %689 = extractvalue { i64, i1 } %688, 1, !nosanitize !44
  br i1 false, label %690, label %614, !prof !109, !llvm.loop !110, !nosanitize !44

690:                                              ; preds = %687, %610
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

691:                                              ; preds = %614
  %692 = load ptr, ptr %517, align 8, !tbaa !89
  %693 = getelementptr inbounds nuw i8, ptr %692, i64 24
  %694 = load ptr, ptr %693, align 8, !tbaa !102
  %695 = load i64, ptr %527, align 8, !tbaa !108
  br label %696

696:                                              ; preds = %691, %541
  %697 = phi i64 [ %528, %541 ], [ %695, %691 ]
  %698 = phi ptr [ %520, %541 ], [ %694, %691 ]
  %699 = phi i64 [ %533, %541 ], [ 0, %691 ]
  %700 = phi i64 [ %538, %541 ], [ %616, %691 ]
  %701 = load ptr, ptr %535, align 8, !tbaa !40
  %702 = getelementptr inbounds nuw i8, ptr %701, i64 %699
  %703 = getelementptr inbounds nuw i8, ptr %698, i64 %697
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %702, ptr align 1 %703, i64 %700, i1 false)
  %704 = load i64, ptr %74, align 8, !tbaa !55
  %705 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %704, i64 %700), !nosanitize !44
  %706 = extractvalue { i64, i1 } %705, 0, !nosanitize !44
  %707 = extractvalue { i64, i1 } %705, 1, !nosanitize !44
  br i1 %707, label %708, label %709, !prof !45, !nosanitize !44

708:                                              ; preds = %696
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

709:                                              ; preds = %696
  store i64 %706, ptr %74, align 8, !tbaa !55
  %710 = load ptr, ptr %517, align 8, !tbaa !89
  %711 = getelementptr inbounds nuw i8, ptr %710, i64 68
  %712 = load i32, ptr %711, align 4, !tbaa !104
  %713 = icmp ne i32 %712, 0
  %714 = icmp ugt i64 %706, %699
  %715 = select i1 %713, i1 %714, i1 false
  br i1 %715, label %716, label %722

716:                                              ; preds = %709
  %717 = sub nuw i64 %706, %699
  %718 = load ptr, ptr %535, align 8, !tbaa !40
  %719 = getelementptr inbounds nuw i8, ptr %718, i64 %699
  %720 = load i64, ptr %536, align 8, !tbaa !57
  %721 = tail call i64 @crc32_z(i64 noundef %720, ptr noundef %719, i64 noundef %717) #8
  store i64 %721, ptr %536, align 8, !tbaa !57
  br label %722

722:                                              ; preds = %716, %709
  store i64 0, ptr %527, align 8, !tbaa !108
  br label %723

723:                                              ; preds = %722, %516
  store i32 73, ptr %21, align 8, !tbaa !28
  br label %724

724:                                              ; preds = %723, %514
  %725 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %726 = load ptr, ptr %725, align 8, !tbaa !89
  %727 = getelementptr inbounds nuw i8, ptr %726, i64 40
  %728 = load ptr, ptr %727, align 8, !tbaa !101
  %729 = icmp eq ptr %728, null
  br i1 %729, label %835, label %730

730:                                              ; preds = %724
  %731 = load i64, ptr %74, align 8, !tbaa !55
  %732 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %733 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %734 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %735 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %736 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %737

737:                                              ; preds = %813, %730
  %738 = phi i64 [ %731, %730 ], [ %800, %813 ]
  %739 = load i64, ptr %74, align 8, !tbaa !55
  %740 = load i64, ptr %732, align 8, !tbaa !41
  %741 = icmp eq i64 %739, %740
  br i1 %741, label %742, label %798

742:                                              ; preds = %737
  %743 = load ptr, ptr %725, align 8, !tbaa !89
  %744 = getelementptr inbounds nuw i8, ptr %743, i64 68
  %745 = load i32, ptr %744, align 4, !tbaa !104
  %746 = icmp ne i32 %745, 0
  %747 = icmp ugt i64 %739, %738
  %748 = select i1 %746, i1 %747, i1 false
  br i1 %748, label %749, label %755

749:                                              ; preds = %742
  %750 = sub nuw i64 %739, %738
  %751 = load ptr, ptr %733, align 8, !tbaa !40
  %752 = getelementptr inbounds nuw i8, ptr %751, i64 %738
  %753 = load i64, ptr %734, align 8, !tbaa !57
  %754 = tail call i64 @crc32_z(i64 noundef %753, ptr noundef %752, i64 noundef %750) #8
  store i64 %754, ptr %734, align 8, !tbaa !57
  br label %755

755:                                              ; preds = %749, %742
  %756 = load ptr, ptr %14, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %756) #8
  %757 = getelementptr inbounds nuw i8, ptr %756, i64 40
  %758 = load i64, ptr %757, align 8, !tbaa !55
  %759 = load i32, ptr %67, align 8, !tbaa !96
  %760 = zext i32 %759 to i64
  %761 = tail call i64 @llvm.umin.i64(i64 %758, i64 %760)
  %762 = trunc nuw i64 %761 to i32
  %763 = icmp eq i64 %761, 0
  br i1 %763, label %794, label %764

764:                                              ; preds = %755
  %765 = load ptr, ptr %49, align 8, !tbaa !95
  %766 = getelementptr inbounds nuw i8, ptr %756, i64 32
  %767 = load ptr, ptr %766, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %765, ptr align 1 %767, i64 %761, i1 false)
  %768 = load ptr, ptr %49, align 8, !tbaa !95
  %769 = getelementptr inbounds nuw i8, ptr %768, i64 %761
  store ptr %769, ptr %49, align 8, !tbaa !95
  %770 = load ptr, ptr %766, align 8, !tbaa !56
  %771 = getelementptr inbounds nuw i8, ptr %770, i64 %761
  store ptr %771, ptr %766, align 8, !tbaa !56
  %772 = load i64, ptr %735, align 8, !tbaa !97
  %773 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %772, i64 %761), !nosanitize !44
  %774 = extractvalue { i64, i1 } %773, 1, !nosanitize !44
  br i1 %774, label %775, label %776, !prof !45, !nosanitize !44

775:                                              ; preds = %764
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

776:                                              ; preds = %764
  %777 = extractvalue { i64, i1 } %773, 0, !nosanitize !44
  store i64 %777, ptr %735, align 8, !tbaa !97
  %778 = load i32, ptr %67, align 8, !tbaa !96
  %779 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %778, i32 %762), !nosanitize !44
  %780 = extractvalue { i32, i1 } %779, 1, !nosanitize !44
  br i1 %780, label %781, label %782, !prof !45, !nosanitize !44

781:                                              ; preds = %776
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

782:                                              ; preds = %776
  %783 = extractvalue { i32, i1 } %779, 0, !nosanitize !44
  store i32 %783, ptr %67, align 8, !tbaa !96
  %784 = load i64, ptr %757, align 8, !tbaa !55
  %785 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %784, i64 %761), !nosanitize !44
  %786 = extractvalue { i64, i1 } %785, 1, !nosanitize !44
  br i1 %786, label %787, label %788, !prof !45, !nosanitize !44

787:                                              ; preds = %782
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

788:                                              ; preds = %782
  %789 = extractvalue { i64, i1 } %785, 0, !nosanitize !44
  store i64 %789, ptr %757, align 8, !tbaa !55
  %790 = icmp eq i64 %789, 0
  br i1 %790, label %791, label %794

791:                                              ; preds = %788
  %792 = getelementptr inbounds nuw i8, ptr %756, i64 16
  %793 = load ptr, ptr %792, align 8, !tbaa !40
  store ptr %793, ptr %766, align 8, !tbaa !56
  br label %794

794:                                              ; preds = %791, %788, %755
  %795 = load i64, ptr %74, align 8, !tbaa !55
  %796 = icmp eq i64 %795, 0
  br i1 %796, label %798, label %797

797:                                              ; preds = %794
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1036

798:                                              ; preds = %794, %737
  %799 = phi i64 [ %739, %737 ], [ 0, %794 ]
  %800 = phi i64 [ %738, %737 ], [ 0, %794 ]
  %801 = load i64, ptr %736, align 8, !tbaa !108
  %802 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %801, i64 1), !nosanitize !44
  %803 = extractvalue { i64, i1 } %802, 1, !nosanitize !44
  br i1 %803, label %804, label %805, !prof !45, !nosanitize !44

804:                                              ; preds = %798
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

805:                                              ; preds = %798
  %806 = extractvalue { i64, i1 } %802, 0, !nosanitize !44
  %807 = load ptr, ptr %725, align 8, !tbaa !89
  %808 = getelementptr inbounds nuw i8, ptr %807, i64 40
  %809 = load ptr, ptr %808, align 8, !tbaa !101
  store i64 %806, ptr %736, align 8, !tbaa !108
  %810 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %799, i64 1), !nosanitize !44
  %811 = extractvalue { i64, i1 } %810, 1, !nosanitize !44
  br i1 %811, label %812, label %813, !prof !45, !nosanitize !44

812:                                              ; preds = %805
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

813:                                              ; preds = %805
  %814 = extractvalue { i64, i1 } %810, 0, !nosanitize !44
  %815 = load ptr, ptr %733, align 8, !tbaa !40
  %816 = getelementptr inbounds nuw i8, ptr %809, i64 %801
  %817 = load i8, ptr %816, align 1, !tbaa !5
  store i64 %814, ptr %74, align 8, !tbaa !55
  %818 = getelementptr inbounds nuw i8, ptr %815, i64 %799
  store i8 %817, ptr %818, align 1, !tbaa !5
  %819 = icmp eq i8 %817, 0
  br i1 %819, label %820, label %737, !llvm.loop !112

820:                                              ; preds = %813
  %821 = load ptr, ptr %725, align 8, !tbaa !89
  %822 = getelementptr inbounds nuw i8, ptr %821, i64 68
  %823 = load i32, ptr %822, align 4, !tbaa !104
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %834, label %825

825:                                              ; preds = %820
  %826 = load i64, ptr %74, align 8, !tbaa !55
  %827 = icmp ugt i64 %826, %800
  br i1 %827, label %828, label %834

828:                                              ; preds = %825
  %829 = sub nuw i64 %826, %800
  %830 = load ptr, ptr %733, align 8, !tbaa !40
  %831 = getelementptr inbounds nuw i8, ptr %830, i64 %800
  %832 = load i64, ptr %734, align 8, !tbaa !57
  %833 = tail call i64 @crc32_z(i64 noundef %832, ptr noundef %831, i64 noundef %829) #8
  store i64 %833, ptr %734, align 8, !tbaa !57
  br label %834

834:                                              ; preds = %828, %825, %820
  store i64 0, ptr %736, align 8, !tbaa !108
  br label %835

835:                                              ; preds = %834, %724
  store i32 91, ptr %21, align 8, !tbaa !28
  br label %836

836:                                              ; preds = %835, %514
  %837 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %838 = load ptr, ptr %837, align 8, !tbaa !89
  %839 = getelementptr inbounds nuw i8, ptr %838, i64 56
  %840 = load ptr, ptr %839, align 8, !tbaa !99
  %841 = icmp eq ptr %840, null
  br i1 %841, label %946, label %842

842:                                              ; preds = %836
  %843 = load i64, ptr %74, align 8, !tbaa !55
  %844 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %845 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %846 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %847 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %848 = getelementptr inbounds nuw i8, ptr %15, i64 64
  br label %849

849:                                              ; preds = %925, %842
  %850 = phi i64 [ %843, %842 ], [ %912, %925 ]
  %851 = load i64, ptr %74, align 8, !tbaa !55
  %852 = load i64, ptr %844, align 8, !tbaa !41
  %853 = icmp eq i64 %851, %852
  br i1 %853, label %854, label %910

854:                                              ; preds = %849
  %855 = load ptr, ptr %837, align 8, !tbaa !89
  %856 = getelementptr inbounds nuw i8, ptr %855, i64 68
  %857 = load i32, ptr %856, align 4, !tbaa !104
  %858 = icmp ne i32 %857, 0
  %859 = icmp ugt i64 %851, %850
  %860 = select i1 %858, i1 %859, i1 false
  br i1 %860, label %861, label %867

861:                                              ; preds = %854
  %862 = sub nuw i64 %851, %850
  %863 = load ptr, ptr %845, align 8, !tbaa !40
  %864 = getelementptr inbounds nuw i8, ptr %863, i64 %850
  %865 = load i64, ptr %846, align 8, !tbaa !57
  %866 = tail call i64 @crc32_z(i64 noundef %865, ptr noundef %864, i64 noundef %862) #8
  store i64 %866, ptr %846, align 8, !tbaa !57
  br label %867

867:                                              ; preds = %861, %854
  %868 = load ptr, ptr %14, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %868) #8
  %869 = getelementptr inbounds nuw i8, ptr %868, i64 40
  %870 = load i64, ptr %869, align 8, !tbaa !55
  %871 = load i32, ptr %67, align 8, !tbaa !96
  %872 = zext i32 %871 to i64
  %873 = tail call i64 @llvm.umin.i64(i64 %870, i64 %872)
  %874 = trunc nuw i64 %873 to i32
  %875 = icmp eq i64 %873, 0
  br i1 %875, label %906, label %876

876:                                              ; preds = %867
  %877 = load ptr, ptr %49, align 8, !tbaa !95
  %878 = getelementptr inbounds nuw i8, ptr %868, i64 32
  %879 = load ptr, ptr %878, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %877, ptr align 1 %879, i64 %873, i1 false)
  %880 = load ptr, ptr %49, align 8, !tbaa !95
  %881 = getelementptr inbounds nuw i8, ptr %880, i64 %873
  store ptr %881, ptr %49, align 8, !tbaa !95
  %882 = load ptr, ptr %878, align 8, !tbaa !56
  %883 = getelementptr inbounds nuw i8, ptr %882, i64 %873
  store ptr %883, ptr %878, align 8, !tbaa !56
  %884 = load i64, ptr %847, align 8, !tbaa !97
  %885 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %884, i64 %873), !nosanitize !44
  %886 = extractvalue { i64, i1 } %885, 1, !nosanitize !44
  br i1 %886, label %887, label %888, !prof !45, !nosanitize !44

887:                                              ; preds = %876
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

888:                                              ; preds = %876
  %889 = extractvalue { i64, i1 } %885, 0, !nosanitize !44
  store i64 %889, ptr %847, align 8, !tbaa !97
  %890 = load i32, ptr %67, align 8, !tbaa !96
  %891 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %890, i32 %874), !nosanitize !44
  %892 = extractvalue { i32, i1 } %891, 1, !nosanitize !44
  br i1 %892, label %893, label %894, !prof !45, !nosanitize !44

893:                                              ; preds = %888
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

894:                                              ; preds = %888
  %895 = extractvalue { i32, i1 } %891, 0, !nosanitize !44
  store i32 %895, ptr %67, align 8, !tbaa !96
  %896 = load i64, ptr %869, align 8, !tbaa !55
  %897 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %896, i64 %873), !nosanitize !44
  %898 = extractvalue { i64, i1 } %897, 1, !nosanitize !44
  br i1 %898, label %899, label %900, !prof !45, !nosanitize !44

899:                                              ; preds = %894
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

900:                                              ; preds = %894
  %901 = extractvalue { i64, i1 } %897, 0, !nosanitize !44
  store i64 %901, ptr %869, align 8, !tbaa !55
  %902 = icmp eq i64 %901, 0
  br i1 %902, label %903, label %906

903:                                              ; preds = %900
  %904 = getelementptr inbounds nuw i8, ptr %868, i64 16
  %905 = load ptr, ptr %904, align 8, !tbaa !40
  store ptr %905, ptr %878, align 8, !tbaa !56
  br label %906

906:                                              ; preds = %903, %900, %867
  %907 = load i64, ptr %74, align 8, !tbaa !55
  %908 = icmp eq i64 %907, 0
  br i1 %908, label %910, label %909

909:                                              ; preds = %906
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1036

910:                                              ; preds = %906, %849
  %911 = phi i64 [ %851, %849 ], [ 0, %906 ]
  %912 = phi i64 [ %850, %849 ], [ 0, %906 ]
  %913 = load i64, ptr %848, align 8, !tbaa !108
  %914 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %913, i64 1), !nosanitize !44
  %915 = extractvalue { i64, i1 } %914, 1, !nosanitize !44
  br i1 %915, label %916, label %917, !prof !45, !nosanitize !44

916:                                              ; preds = %910
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

917:                                              ; preds = %910
  %918 = extractvalue { i64, i1 } %914, 0, !nosanitize !44
  %919 = load ptr, ptr %837, align 8, !tbaa !89
  %920 = getelementptr inbounds nuw i8, ptr %919, i64 56
  %921 = load ptr, ptr %920, align 8, !tbaa !99
  store i64 %918, ptr %848, align 8, !tbaa !108
  %922 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %911, i64 1), !nosanitize !44
  %923 = extractvalue { i64, i1 } %922, 1, !nosanitize !44
  br i1 %923, label %924, label %925, !prof !45, !nosanitize !44

924:                                              ; preds = %917
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

925:                                              ; preds = %917
  %926 = extractvalue { i64, i1 } %922, 0, !nosanitize !44
  %927 = load ptr, ptr %845, align 8, !tbaa !40
  %928 = getelementptr inbounds nuw i8, ptr %921, i64 %913
  %929 = load i8, ptr %928, align 1, !tbaa !5
  store i64 %926, ptr %74, align 8, !tbaa !55
  %930 = getelementptr inbounds nuw i8, ptr %927, i64 %911
  store i8 %929, ptr %930, align 1, !tbaa !5
  %931 = icmp eq i8 %929, 0
  br i1 %931, label %932, label %849, !llvm.loop !113

932:                                              ; preds = %925
  %933 = load ptr, ptr %837, align 8, !tbaa !89
  %934 = getelementptr inbounds nuw i8, ptr %933, i64 68
  %935 = load i32, ptr %934, align 4, !tbaa !104
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %946, label %937

937:                                              ; preds = %932
  %938 = load i64, ptr %74, align 8, !tbaa !55
  %939 = icmp ugt i64 %938, %912
  br i1 %939, label %940, label %946

940:                                              ; preds = %937
  %941 = sub nuw i64 %938, %912
  %942 = load ptr, ptr %845, align 8, !tbaa !40
  %943 = getelementptr inbounds nuw i8, ptr %942, i64 %912
  %944 = load i64, ptr %846, align 8, !tbaa !57
  %945 = tail call i64 @crc32_z(i64 noundef %944, ptr noundef %943, i64 noundef %941) #8
  store i64 %945, ptr %846, align 8, !tbaa !57
  br label %946

946:                                              ; preds = %940, %937, %932, %836
  store i32 103, ptr %21, align 8, !tbaa !28
  br label %947

947:                                              ; preds = %946, %514
  %948 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %949 = load ptr, ptr %948, align 8, !tbaa !89
  %950 = getelementptr inbounds nuw i8, ptr %949, i64 68
  %951 = load i32, ptr %950, align 4, !tbaa !104
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %988, label %953

953:                                              ; preds = %947
  %954 = load i64, ptr %74, align 8, !tbaa !55
  %955 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %954, i64 2), !nosanitize !44
  %956 = extractvalue { i64, i1 } %955, 1, !nosanitize !44
  br i1 %956, label %957, label %958, !prof !45, !nosanitize !44

957:                                              ; preds = %953
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

958:                                              ; preds = %953
  %959 = extractvalue { i64, i1 } %955, 0, !nosanitize !44
  %960 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %961 = load i64, ptr %960, align 8, !tbaa !41
  %962 = icmp ugt i64 %959, %961
  br i1 %962, label %963, label %967

963:                                              ; preds = %958
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %964 = load i64, ptr %74, align 8, !tbaa !55
  %965 = icmp eq i64 %964, 0
  br i1 %965, label %967, label %966

966:                                              ; preds = %963
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1036

967:                                              ; preds = %963, %958
  %968 = phi i64 [ 0, %963 ], [ %954, %958 ]
  %969 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %970 = add nuw i64 %968, 1
  %971 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %972 = load ptr, ptr %971, align 8, !tbaa !40
  %973 = load i64, ptr %969, align 8, !tbaa !57
  %974 = trunc i64 %973 to i8
  store i64 %970, ptr %74, align 8, !tbaa !55
  %975 = getelementptr inbounds nuw i8, ptr %972, i64 %968
  store i8 %974, ptr %975, align 1, !tbaa !5
  %976 = load i64, ptr %74, align 8, !tbaa !55
  %977 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %976, i64 1), !nosanitize !44
  %978 = extractvalue { i64, i1 } %977, 1, !nosanitize !44
  br i1 %978, label %979, label %980, !prof !45, !nosanitize !44

979:                                              ; preds = %967
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

980:                                              ; preds = %967
  %981 = extractvalue { i64, i1 } %977, 0, !nosanitize !44
  %982 = load ptr, ptr %971, align 8, !tbaa !40
  %983 = load i64, ptr %969, align 8, !tbaa !57
  %984 = lshr i64 %983, 8
  %985 = trunc i64 %984 to i8
  store i64 %981, ptr %74, align 8, !tbaa !55
  %986 = getelementptr inbounds nuw i8, ptr %982, i64 %976
  store i8 %985, ptr %986, align 1, !tbaa !5
  %987 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #8
  store i64 %987, ptr %969, align 8, !tbaa !57
  br label %988

988:                                              ; preds = %980, %947
  store i32 113, ptr %21, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %989 = load i64, ptr %74, align 8, !tbaa !55
  %990 = icmp eq i64 %989, 0
  br i1 %990, label %992, label %991

991:                                              ; preds = %988
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1036

992:                                              ; preds = %988, %514, %153
  %993 = load i32, ptr %53, align 8, !tbaa !79
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %995, label %1002

995:                                              ; preds = %992, %143
  %996 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %997 = load i32, ptr %996, align 4, !tbaa !73
  %998 = icmp eq i32 %997, 0
  br i1 %998, label %999, label %1002

999:                                              ; preds = %995
  %1000 = load i32, ptr %21, align 8, !tbaa !28
  %1001 = icmp eq i32 %1000, 666
  br i1 %1001, label %1036, label %1002

1002:                                             ; preds = %999, %995, %992
  %1003 = load i32, ptr %30, align 4, !tbaa !47
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %1005, label %1007

1005:                                             ; preds = %1002
  %1006 = tail call i32 @deflate_stored(ptr noundef nonnull %15, i32 noundef 5)
  br label %1018

1007:                                             ; preds = %1002
  %1008 = load i32, ptr %31, align 8, !tbaa !48
  switch i32 %1008, label %1013 [
    i32 2, label %1009
    i32 3, label %1011
  ]

1009:                                             ; preds = %1007
  %1010 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %15, i32 noundef 5)
  br label %1018

1011:                                             ; preds = %1007
  %1012 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %15, i32 noundef 5)
  br label %1018

1013:                                             ; preds = %1007
  %1014 = sext i32 %1003 to i64
  %1015 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %1014, i32 4
  %1016 = load ptr, ptr %1015, align 8, !tbaa !94
  %1017 = tail call i32 %1016(ptr noundef nonnull %15, i32 noundef 5) #8
  br label %1018

1018:                                             ; preds = %1013, %1011, %1009, %1005
  %1019 = phi i32 [ %1006, %1005 ], [ %1010, %1009 ], [ %1012, %1011 ], [ %1017, %1013 ]
  %1020 = and i32 %1019, -2
  %1021 = icmp eq i32 %1020, 2
  br i1 %1021, label %1022, label %1023

1022:                                             ; preds = %1018
  store i32 666, ptr %21, align 8, !tbaa !28
  br label %1023

1023:                                             ; preds = %1022, %1018
  %1024 = and i32 %1019, -3
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %1026, label %1030

1026:                                             ; preds = %1023
  %1027 = load i32, ptr %67, align 8, !tbaa !96
  %1028 = icmp eq i32 %1027, 0
  br i1 %1028, label %1029, label %1036

1029:                                             ; preds = %1026
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1036

1030:                                             ; preds = %1023
  %1031 = icmp eq i32 %1019, 1
  br i1 %1031, label %1032, label %1036

1032:                                             ; preds = %1030
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1033 = load i32, ptr %67, align 8, !tbaa !96
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1035, label %1036

1035:                                             ; preds = %1032
  store i32 -1, ptr %44, align 4, !tbaa !58
  br label %1036

1036:                                             ; preds = %1035, %1032, %1030, %1029, %1026, %999, %991, %966, %909, %797, %686, %359, %255, %146, %137, %121, %70
  %1037 = load i32, ptr %53, align 8, !tbaa !79
  %1038 = icmp eq i32 %1037, 0
  br i1 %1038, label %1039, label %1102

1039:                                             ; preds = %1036
  %1040 = getelementptr inbounds nuw i8, ptr %15, i64 172
  %1041 = load i32, ptr %1040, align 4, !tbaa !71
  %1042 = zext i32 %1041 to i64
  %1043 = getelementptr inbounds nuw i8, ptr %15, i64 152
  %1044 = load i64, ptr %1043, align 8, !tbaa !72
  %1045 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1042, i64 %1044), !nosanitize !44
  %1046 = extractvalue { i64, i1 } %1045, 1, !nosanitize !44
  br i1 %1046, label %1047, label %1048, !prof !45, !nosanitize !44

1047:                                             ; preds = %1039
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !44
  unreachable, !nosanitize !44

1048:                                             ; preds = %1039
  %1049 = extractvalue { i64, i1 } %1045, 0, !nosanitize !44
  %1050 = getelementptr inbounds nuw i8, ptr %15, i64 180
  %1051 = load i32, ptr %1050, align 4, !tbaa !73
  %1052 = zext i32 %1051 to i64
  %1053 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1049, i64 %1052), !nosanitize !44
  %1054 = extractvalue { i64, i1 } %1053, 1, !nosanitize !44
  br i1 %1054, label %1055, label %1056, !prof !45, !nosanitize !44

1055:                                             ; preds = %1048
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !44
  unreachable, !nosanitize !44

1056:                                             ; preds = %1048
  %1057 = extractvalue { i64, i1 } %1053, 0, !nosanitize !44
  %1058 = icmp eq i64 %1057, 0
  br i1 %1058, label %1059, label %1102

1059:                                             ; preds = %1056, %43, %34
  %1060 = load i32, ptr %30, align 4, !tbaa !47
  %1061 = icmp eq i32 %1060, %25
  br i1 %1061, label %1101, label %1062

1062:                                             ; preds = %1059
  %1063 = icmp eq i32 %1060, 0
  br i1 %1063, label %1064, label %1083

1064:                                             ; preds = %1062
  %1065 = getelementptr inbounds nuw i8, ptr %15, i64 5928
  %1066 = load i32, ptr %1065, align 8, !tbaa !114
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
  %1071 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1070, i32 1), !nosanitize !44
  %1072 = extractvalue { i32, i1 } %1071, 1, !nosanitize !44
  br i1 %1072, label %1073, label %1074, !prof !45, !nosanitize !44

1073:                                             ; preds = %1068
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1074:                                             ; preds = %1068
  %1075 = extractvalue { i32, i1 } %1071, 0, !nosanitize !44
  %1076 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %1077 = load ptr, ptr %1076, align 8, !tbaa !37
  %1078 = zext i32 %1075 to i64
  %1079 = getelementptr inbounds nuw i16, ptr %1077, i64 %1078
  store i16 0, ptr %1079, align 2, !tbaa !60
  %1080 = shl nuw nsw i64 %1078, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1077, i8 0, i64 %1080, i1 false)
  %1081 = getelementptr inbounds nuw i8, ptr %15, i64 5960
  store i32 0, ptr %1081, align 8, !tbaa !61
  br label %1082

1082:                                             ; preds = %1074, %1067
  store i32 0, ptr %1065, align 8, !tbaa !114
  br label %1083

1083:                                             ; preds = %1082, %1064, %1062
  store i32 %25, ptr %30, align 4, !tbaa !47
  %1084 = zext nneg i32 %25 to i64
  %1085 = getelementptr inbounds nuw [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %1084
  %1086 = getelementptr inbounds nuw i8, ptr %1085, i64 2
  %1087 = load i16, ptr %1086, align 2, !tbaa !62
  %1088 = zext i16 %1087 to i32
  %1089 = getelementptr inbounds nuw i8, ptr %15, i64 192
  store i32 %1088, ptr %1089, align 8, !tbaa !64
  %1090 = load i16, ptr %1085, align 16, !tbaa !65
  %1091 = zext i16 %1090 to i32
  %1092 = getelementptr inbounds nuw i8, ptr %15, i64 204
  store i32 %1091, ptr %1092, align 4, !tbaa !66
  %1093 = getelementptr inbounds nuw i8, ptr %1085, i64 4
  %1094 = load i16, ptr %1093, align 4, !tbaa !67
  %1095 = zext i16 %1094 to i32
  %1096 = getelementptr inbounds nuw i8, ptr %15, i64 208
  store i32 %1095, ptr %1096, align 8, !tbaa !68
  %1097 = getelementptr inbounds nuw i8, ptr %1085, i64 6
  %1098 = load i16, ptr %1097, align 2, !tbaa !69
  %1099 = zext i16 %1098 to i32
  %1100 = getelementptr inbounds nuw i8, ptr %15, i64 188
  store i32 %1099, ptr %1100, align 4, !tbaa !70
  br label %1101

1101:                                             ; preds = %1083, %1059
  store i32 %2, ptr %31, align 8, !tbaa !48
  br label %1102

1102:                                             ; preds = %1101, %1056, %1036, %63, %47, %23, %20, %17, %13, %9, %5, %3
  %1103 = phi i32 [ 0, %1101 ], [ -5, %1056 ], [ -2, %23 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ], [ -2, %63 ], [ -2, %47 ], [ -5, %1036 ]
  ret i32 %1103
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 2) i32 @deflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1203, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %1203, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1203, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %1203, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !19
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %1203

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !28
  switch i32 %21, label %1203 [
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
  br i1 %23, label %1203, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = load ptr, ptr %25, align 8, !tbaa !95
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
  br label %1203

42:                                               ; preds = %35
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %44 = load i32, ptr %43, align 8, !tbaa !96
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %47, ptr %48, align 8, !tbaa !8
  br label %1203

49:                                               ; preds = %42
  %50 = getelementptr inbounds nuw i8, ptr %14, i64 76
  %51 = load i32, ptr %50, align 4, !tbaa !58
  store i32 %1, ptr %50, align 4, !tbaa !58
  %52 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %53 = load i64, ptr %52, align 8, !tbaa !55
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %100, label %55

55:                                               ; preds = %49
  tail call void @_tr_flush_bits(ptr noundef nonnull %14) #8
  %56 = load i64, ptr %52, align 8, !tbaa !55
  %57 = load i32, ptr %43, align 8, !tbaa !96
  %58 = zext i32 %57 to i64
  %59 = tail call i64 @llvm.umin.i64(i64 %56, i64 %58)
  %60 = trunc nuw i64 %59 to i32
  %61 = icmp eq i64 %59, 0
  br i1 %61, label %93, label %62

62:                                               ; preds = %55
  %63 = load ptr, ptr %25, align 8, !tbaa !95
  %64 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %65 = load ptr, ptr %64, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %65, i64 %59, i1 false)
  %66 = load ptr, ptr %25, align 8, !tbaa !95
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 %59
  store ptr %67, ptr %25, align 8, !tbaa !95
  %68 = load ptr, ptr %64, align 8, !tbaa !56
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 %59
  store ptr %69, ptr %64, align 8, !tbaa !56
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %71 = load i64, ptr %70, align 8, !tbaa !97
  %72 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %71, i64 %59), !nosanitize !44
  %73 = extractvalue { i64, i1 } %72, 1, !nosanitize !44
  br i1 %73, label %74, label %75, !prof !45, !nosanitize !44

74:                                               ; preds = %62
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

75:                                               ; preds = %62
  %76 = extractvalue { i64, i1 } %72, 0, !nosanitize !44
  store i64 %76, ptr %70, align 8, !tbaa !97
  %77 = load i32, ptr %43, align 8, !tbaa !96
  %78 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %77, i32 %60), !nosanitize !44
  %79 = extractvalue { i32, i1 } %78, 1, !nosanitize !44
  br i1 %79, label %80, label %81, !prof !45, !nosanitize !44

80:                                               ; preds = %75
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

81:                                               ; preds = %75
  %82 = extractvalue { i32, i1 } %78, 0, !nosanitize !44
  store i32 %82, ptr %43, align 8, !tbaa !96
  %83 = load i64, ptr %52, align 8, !tbaa !55
  %84 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %83, i64 %59), !nosanitize !44
  %85 = extractvalue { i64, i1 } %84, 1, !nosanitize !44
  br i1 %85, label %86, label %87, !prof !45, !nosanitize !44

86:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  br label %123

99:                                               ; preds = %93
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1203

100:                                              ; preds = %49
  br i1 %31, label %102, label %123

101:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !44
  unreachable, !nosanitize !44

102:                                              ; preds = %100
  %103 = shl nuw nsw i32 %1, 1
  %104 = icmp eq i32 %1, 5
  %105 = select i1 %104, i32 -9, i32 0
  %106 = add nsw i32 %105, %103
  %107 = add i32 %51, 1073741824
  %108 = icmp sgt i32 %107, -1
  br i1 %108, label %110, label %101, !prof !98, !nosanitize !44

109:                                              ; preds = %110
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !44
  unreachable, !nosanitize !44

110:                                              ; preds = %102
  %111 = shl nsw i32 %51, 1
  %112 = icmp sgt i32 %51, 4
  %113 = select i1 %112, i32 9, i32 0
  %114 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %111, i32 %113), !nosanitize !44
  %115 = extractvalue { i32, i1 } %114, 1, !nosanitize !44
  br i1 false, label %109, label %116, !prof !45, !nosanitize !44

116:                                              ; preds = %110
  %117 = extractvalue { i32, i1 } %114, 0, !nosanitize !44
  %118 = icmp sle i32 %106, %117
  %119 = and i1 %37, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %121, ptr %122, align 8, !tbaa !8
  br label %1203

123:                                              ; preds = %116, %100, %97
  %124 = phi i64 [ %94, %97 ], [ 0, %100 ], [ 0, %116 ]
  %125 = phi i32 [ %98, %97 ], [ %21, %100 ], [ %21, %116 ]
  switch i32 %125, label %241 [
    i32 666, label %126
    i32 42, label %132
  ]

126:                                              ; preds = %123
  %127 = load i32, ptr %29, align 8, !tbaa !79
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %984, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !42
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %130, ptr %131, align 8, !tbaa !8
  br label %1203

132:                                              ; preds = %123
  %133 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %134 = load i32, ptr %133, align 8, !tbaa !29
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store i32 113, ptr %20, align 8, !tbaa !28
  br label %981

137:                                              ; preds = %132
  %138 = getelementptr inbounds nuw i8, ptr %14, i64 84
  %139 = load i32, ptr %138, align 4, !tbaa !30
  %140 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %139, i32 8), !nosanitize !44
  %141 = extractvalue { i32, i1 } %140, 1, !nosanitize !44
  br i1 %141, label %142, label %143, !prof !45, !nosanitize !44

142:                                              ; preds = %137
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

143:                                              ; preds = %137
  %144 = extractvalue { i32, i1 } %140, 0, !nosanitize !44
  %145 = shl i32 %144, 12
  %146 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %147 = load i32, ptr %146, align 8, !tbaa !48
  %148 = icmp sgt i32 %147, 1
  br i1 %148, label %158, label %149

149:                                              ; preds = %143
  %150 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %151 = load i32, ptr %150, align 4, !tbaa !47
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
  %159 = phi i32 [ 0, %149 ], [ 0, %143 ], [ 64, %153 ], [ %157, %155 ]
  %160 = getelementptr inbounds nuw i8, ptr %14, i64 172
  %161 = or disjoint i32 %159, %145
  %162 = load i32, ptr %160, align 4, !tbaa !71
  %163 = icmp eq i32 %162, 0
  %164 = select i1 %163, i32 2048, i32 2080
  %165 = or disjoint i32 %164, %161
  %166 = urem i32 %165, 31
  %167 = or disjoint i32 %166, %165
  %168 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %124, i64 1), !nosanitize !44
  %169 = extractvalue { i64, i1 } %168, 1, !nosanitize !44
  br i1 %169, label %170, label %171, !prof !45, !nosanitize !44

170:                                              ; preds = %158
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

171:                                              ; preds = %158
  %172 = extractvalue { i64, i1 } %168, 0, !nosanitize !44
  %173 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %174 = load ptr, ptr %173, align 8, !tbaa !40
  %175 = lshr i32 %165, 8
  %176 = trunc i32 %175 to i8
  store i64 %172, ptr %52, align 8, !tbaa !55
  %177 = getelementptr inbounds nuw i8, ptr %174, i64 %124
  store i8 %176, ptr %177, align 1, !tbaa !5
  %178 = load i64, ptr %52, align 8, !tbaa !55
  %179 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %178, i64 1), !nosanitize !44
  %180 = extractvalue { i64, i1 } %179, 1, !nosanitize !44
  br i1 %180, label %181, label %182, !prof !45, !nosanitize !44

181:                                              ; preds = %171
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

182:                                              ; preds = %171
  %183 = extractvalue { i64, i1 } %179, 0, !nosanitize !44
  %184 = load ptr, ptr %173, align 8, !tbaa !40
  %185 = trunc i32 %167 to i8
  %186 = xor i8 %185, 31
  store i64 %183, ptr %52, align 8, !tbaa !55
  %187 = getelementptr inbounds nuw i8, ptr %184, i64 %178
  store i8 %186, ptr %187, align 1, !tbaa !5
  %188 = load i32, ptr %160, align 4, !tbaa !71
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %233, label %190

190:                                              ; preds = %182
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %192 = load i64, ptr %191, align 8, !tbaa !57
  %193 = lshr i64 %192, 16
  %194 = load i64, ptr %52, align 8, !tbaa !55
  %195 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %194, i64 1), !nosanitize !44
  %196 = extractvalue { i64, i1 } %195, 1, !nosanitize !44
  br i1 %196, label %197, label %198, !prof !45, !nosanitize !44

197:                                              ; preds = %190
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

198:                                              ; preds = %190
  %199 = extractvalue { i64, i1 } %195, 0, !nosanitize !44
  %200 = load ptr, ptr %173, align 8, !tbaa !40
  %201 = lshr i64 %192, 24
  %202 = trunc i64 %201 to i8
  store i64 %199, ptr %52, align 8, !tbaa !55
  %203 = getelementptr inbounds nuw i8, ptr %200, i64 %194
  store i8 %202, ptr %203, align 1, !tbaa !5
  %204 = load i64, ptr %52, align 8, !tbaa !55
  %205 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %204, i64 1), !nosanitize !44
  %206 = extractvalue { i64, i1 } %205, 1, !nosanitize !44
  br i1 %206, label %207, label %208, !prof !45, !nosanitize !44

207:                                              ; preds = %198
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

208:                                              ; preds = %198
  %209 = extractvalue { i64, i1 } %205, 0, !nosanitize !44
  %210 = load ptr, ptr %173, align 8, !tbaa !40
  %211 = trunc i64 %193 to i8
  store i64 %209, ptr %52, align 8, !tbaa !55
  %212 = getelementptr inbounds nuw i8, ptr %210, i64 %204
  store i8 %211, ptr %212, align 1, !tbaa !5
  %213 = load i64, ptr %191, align 8, !tbaa !57
  %214 = trunc i64 %213 to i8
  %215 = load i64, ptr %52, align 8, !tbaa !55
  %216 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %215, i64 1), !nosanitize !44
  %217 = extractvalue { i64, i1 } %216, 1, !nosanitize !44
  br i1 %217, label %218, label %219, !prof !45, !nosanitize !44

218:                                              ; preds = %208
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

219:                                              ; preds = %208
  %220 = extractvalue { i64, i1 } %216, 0, !nosanitize !44
  %221 = load ptr, ptr %173, align 8, !tbaa !40
  %222 = lshr i64 %213, 8
  %223 = trunc i64 %222 to i8
  store i64 %220, ptr %52, align 8, !tbaa !55
  %224 = getelementptr inbounds nuw i8, ptr %221, i64 %215
  store i8 %223, ptr %224, align 1, !tbaa !5
  %225 = load i64, ptr %52, align 8, !tbaa !55
  %226 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %225, i64 1), !nosanitize !44
  %227 = extractvalue { i64, i1 } %226, 1, !nosanitize !44
  br i1 %227, label %228, label %229, !prof !45, !nosanitize !44

228:                                              ; preds = %219
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

229:                                              ; preds = %219
  %230 = extractvalue { i64, i1 } %226, 0, !nosanitize !44
  %231 = load ptr, ptr %173, align 8, !tbaa !40
  store i64 %230, ptr %52, align 8, !tbaa !55
  %232 = getelementptr inbounds nuw i8, ptr %231, i64 %225
  store i8 %214, ptr %232, align 1, !tbaa !5
  br label %233

233:                                              ; preds = %229, %182
  %234 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #8
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %234, ptr %235, align 8, !tbaa !57
  store i32 113, ptr %20, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %236 = load i64, ptr %52, align 8, !tbaa !55
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %233
  %239 = load i32, ptr %20, align 8, !tbaa !28
  br label %241

240:                                              ; preds = %233
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1203

241:                                              ; preds = %238, %123
  %242 = phi i32 [ %239, %238 ], [ %125, %123 ]
  %243 = icmp eq i32 %242, 57
  br i1 %243, label %244, label %503

244:                                              ; preds = %241
  %245 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #8
  %246 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %245, ptr %246, align 8, !tbaa !57
  %247 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %248 = load i64, ptr %52, align 8, !tbaa !55
  %249 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %248, i64 1), !nosanitize !44
  %250 = extractvalue { i64, i1 } %249, 1, !nosanitize !44
  br i1 %250, label %251, label %252, !prof !45, !nosanitize !44

251:                                              ; preds = %244
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

252:                                              ; preds = %244
  %253 = extractvalue { i64, i1 } %249, 0, !nosanitize !44
  %254 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %253, ptr %52, align 8, !tbaa !55
  %255 = getelementptr inbounds nuw i8, ptr %254, i64 %248
  store i8 31, ptr %255, align 1, !tbaa !5
  %256 = load i64, ptr %52, align 8, !tbaa !55
  %257 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %256, i64 1), !nosanitize !44
  %258 = extractvalue { i64, i1 } %257, 1, !nosanitize !44
  br i1 %258, label %259, label %260, !prof !45, !nosanitize !44

259:                                              ; preds = %252
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

260:                                              ; preds = %252
  %261 = extractvalue { i64, i1 } %257, 0, !nosanitize !44
  %262 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %261, ptr %52, align 8, !tbaa !55
  %263 = getelementptr inbounds nuw i8, ptr %262, i64 %256
  store i8 -117, ptr %263, align 1, !tbaa !5
  %264 = load i64, ptr %52, align 8, !tbaa !55
  %265 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %264, i64 1), !nosanitize !44
  %266 = extractvalue { i64, i1 } %265, 1, !nosanitize !44
  br i1 %266, label %267, label %268, !prof !45, !nosanitize !44

267:                                              ; preds = %260
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

268:                                              ; preds = %260
  %269 = extractvalue { i64, i1 } %265, 0, !nosanitize !44
  %270 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %269, ptr %52, align 8, !tbaa !55
  %271 = getelementptr inbounds nuw i8, ptr %270, i64 %264
  store i8 8, ptr %271, align 1, !tbaa !5
  %272 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %273 = load ptr, ptr %272, align 8, !tbaa !89
  %274 = icmp eq ptr %273, null
  %275 = load i64, ptr %52, align 8, !tbaa !55
  %276 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %275, i64 1), !nosanitize !44
  %277 = extractvalue { i64, i1 } %276, 1, !nosanitize !44
  br i1 %274, label %278, label %347

278:                                              ; preds = %268
  br i1 %277, label %279, label %280, !prof !45, !nosanitize !44

279:                                              ; preds = %278
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

280:                                              ; preds = %278
  %281 = extractvalue { i64, i1 } %276, 0, !nosanitize !44
  %282 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %281, ptr %52, align 8, !tbaa !55
  %283 = getelementptr inbounds nuw i8, ptr %282, i64 %275
  store i8 0, ptr %283, align 1, !tbaa !5
  %284 = load i64, ptr %52, align 8, !tbaa !55
  %285 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %284, i64 1), !nosanitize !44
  %286 = extractvalue { i64, i1 } %285, 1, !nosanitize !44
  br i1 %286, label %287, label %288, !prof !45, !nosanitize !44

287:                                              ; preds = %280
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

288:                                              ; preds = %280
  %289 = extractvalue { i64, i1 } %285, 0, !nosanitize !44
  %290 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %289, ptr %52, align 8, !tbaa !55
  %291 = getelementptr inbounds nuw i8, ptr %290, i64 %284
  store i8 0, ptr %291, align 1, !tbaa !5
  %292 = load i64, ptr %52, align 8, !tbaa !55
  %293 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %292, i64 1), !nosanitize !44
  %294 = extractvalue { i64, i1 } %293, 1, !nosanitize !44
  br i1 %294, label %295, label %296, !prof !45, !nosanitize !44

295:                                              ; preds = %288
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

296:                                              ; preds = %288
  %297 = extractvalue { i64, i1 } %293, 0, !nosanitize !44
  %298 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %297, ptr %52, align 8, !tbaa !55
  %299 = getelementptr inbounds nuw i8, ptr %298, i64 %292
  store i8 0, ptr %299, align 1, !tbaa !5
  %300 = load i64, ptr %52, align 8, !tbaa !55
  %301 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %300, i64 1), !nosanitize !44
  %302 = extractvalue { i64, i1 } %301, 1, !nosanitize !44
  br i1 %302, label %303, label %304, !prof !45, !nosanitize !44

303:                                              ; preds = %296
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

304:                                              ; preds = %296
  %305 = extractvalue { i64, i1 } %301, 0, !nosanitize !44
  %306 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %305, ptr %52, align 8, !tbaa !55
  %307 = getelementptr inbounds nuw i8, ptr %306, i64 %300
  store i8 0, ptr %307, align 1, !tbaa !5
  %308 = load i64, ptr %52, align 8, !tbaa !55
  %309 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %308, i64 1), !nosanitize !44
  %310 = extractvalue { i64, i1 } %309, 1, !nosanitize !44
  br i1 %310, label %311, label %312, !prof !45, !nosanitize !44

311:                                              ; preds = %304
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

312:                                              ; preds = %304
  %313 = extractvalue { i64, i1 } %309, 0, !nosanitize !44
  %314 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %313, ptr %52, align 8, !tbaa !55
  %315 = getelementptr inbounds nuw i8, ptr %314, i64 %308
  store i8 0, ptr %315, align 1, !tbaa !5
  %316 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %317 = load i32, ptr %316, align 4, !tbaa !47
  %318 = icmp eq i32 %317, 9
  br i1 %318, label %326, label %319

319:                                              ; preds = %312
  %320 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %321 = load i32, ptr %320, align 8, !tbaa !48
  %322 = icmp sgt i32 %321, 1
  %323 = icmp slt i32 %317, 2
  %324 = or i1 %323, %322
  %325 = select i1 %324, i8 4, i8 0
  br label %326

326:                                              ; preds = %319, %312
  %327 = phi i8 [ %325, %319 ], [ 2, %312 ]
  %328 = load i64, ptr %52, align 8, !tbaa !55
  %329 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %328, i64 1), !nosanitize !44
  %330 = extractvalue { i64, i1 } %329, 1, !nosanitize !44
  br i1 %330, label %331, label %332, !prof !45, !nosanitize !44

331:                                              ; preds = %326
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

332:                                              ; preds = %326
  %333 = extractvalue { i64, i1 } %329, 0, !nosanitize !44
  %334 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %333, ptr %52, align 8, !tbaa !55
  %335 = getelementptr inbounds nuw i8, ptr %334, i64 %328
  store i8 %327, ptr %335, align 1, !tbaa !5
  %336 = load i64, ptr %52, align 8, !tbaa !55
  %337 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %336, i64 1), !nosanitize !44
  %338 = extractvalue { i64, i1 } %337, 1, !nosanitize !44
  br i1 %338, label %339, label %340, !prof !45, !nosanitize !44

339:                                              ; preds = %332
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

340:                                              ; preds = %332
  %341 = extractvalue { i64, i1 } %337, 0, !nosanitize !44
  %342 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %341, ptr %52, align 8, !tbaa !55
  %343 = getelementptr inbounds nuw i8, ptr %342, i64 %336
  store i8 3, ptr %343, align 1, !tbaa !5
  store i32 113, ptr %20, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %344 = load i64, ptr %52, align 8, !tbaa !55
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %501, label %346

346:                                              ; preds = %340
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1203

347:                                              ; preds = %268
  br i1 %277, label %348, label %349, !prof !45, !nosanitize !44

348:                                              ; preds = %347
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

349:                                              ; preds = %347
  %350 = extractvalue { i64, i1 } %276, 0, !nosanitize !44
  %351 = load ptr, ptr %247, align 8, !tbaa !40
  %352 = getelementptr inbounds nuw i8, ptr %273, i64 56
  %353 = load ptr, ptr %352, align 8, !tbaa !99
  %354 = icmp eq ptr %353, null
  %355 = getelementptr inbounds nuw i8, ptr %273, i64 40
  %356 = load ptr, ptr %355, align 8, !tbaa !101
  %357 = icmp eq ptr %356, null
  %358 = getelementptr inbounds nuw i8, ptr %273, i64 24
  %359 = load ptr, ptr %358, align 8, !tbaa !102
  %360 = icmp eq ptr %359, null
  %361 = load i32, ptr %273, align 8, !tbaa !103
  %362 = icmp ne i32 %361, 0
  %363 = getelementptr inbounds nuw i8, ptr %273, i64 68
  %364 = load i32, ptr %363, align 4, !tbaa !104
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
  store i64 %350, ptr %52, align 8, !tbaa !55
  %375 = getelementptr inbounds nuw i8, ptr %351, i64 %275
  store i8 %374, ptr %375, align 1, !tbaa !5
  %376 = load i64, ptr %52, align 8, !tbaa !55
  %377 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %376, i64 1), !nosanitize !44
  %378 = extractvalue { i64, i1 } %377, 1, !nosanitize !44
  br i1 %378, label %379, label %380, !prof !45, !nosanitize !44

379:                                              ; preds = %349
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

380:                                              ; preds = %349
  %381 = extractvalue { i64, i1 } %377, 0, !nosanitize !44
  %382 = load ptr, ptr %247, align 8, !tbaa !40
  %383 = load ptr, ptr %272, align 8, !tbaa !89
  %384 = getelementptr inbounds nuw i8, ptr %383, i64 8
  %385 = load i64, ptr %384, align 8, !tbaa !105
  %386 = trunc i64 %385 to i8
  store i64 %381, ptr %52, align 8, !tbaa !55
  %387 = getelementptr inbounds nuw i8, ptr %382, i64 %376
  store i8 %386, ptr %387, align 1, !tbaa !5
  %388 = load i64, ptr %52, align 8, !tbaa !55
  %389 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %388, i64 1), !nosanitize !44
  %390 = extractvalue { i64, i1 } %389, 1, !nosanitize !44
  br i1 %390, label %391, label %392, !prof !45, !nosanitize !44

391:                                              ; preds = %380
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

392:                                              ; preds = %380
  %393 = extractvalue { i64, i1 } %389, 0, !nosanitize !44
  %394 = load ptr, ptr %247, align 8, !tbaa !40
  %395 = load ptr, ptr %272, align 8, !tbaa !89
  %396 = getelementptr inbounds nuw i8, ptr %395, i64 8
  %397 = load i64, ptr %396, align 8, !tbaa !105
  %398 = lshr i64 %397, 8
  %399 = trunc i64 %398 to i8
  store i64 %393, ptr %52, align 8, !tbaa !55
  %400 = getelementptr inbounds nuw i8, ptr %394, i64 %388
  store i8 %399, ptr %400, align 1, !tbaa !5
  %401 = load i64, ptr %52, align 8, !tbaa !55
  %402 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %401, i64 1), !nosanitize !44
  %403 = extractvalue { i64, i1 } %402, 1, !nosanitize !44
  br i1 %403, label %404, label %405, !prof !45, !nosanitize !44

404:                                              ; preds = %392
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

405:                                              ; preds = %392
  %406 = extractvalue { i64, i1 } %402, 0, !nosanitize !44
  %407 = load ptr, ptr %247, align 8, !tbaa !40
  %408 = load ptr, ptr %272, align 8, !tbaa !89
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 8
  %410 = load i64, ptr %409, align 8, !tbaa !105
  %411 = lshr i64 %410, 16
  %412 = trunc i64 %411 to i8
  store i64 %406, ptr %52, align 8, !tbaa !55
  %413 = getelementptr inbounds nuw i8, ptr %407, i64 %401
  store i8 %412, ptr %413, align 1, !tbaa !5
  %414 = load i64, ptr %52, align 8, !tbaa !55
  %415 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %414, i64 1), !nosanitize !44
  %416 = extractvalue { i64, i1 } %415, 1, !nosanitize !44
  br i1 %416, label %417, label %418, !prof !45, !nosanitize !44

417:                                              ; preds = %405
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

418:                                              ; preds = %405
  %419 = extractvalue { i64, i1 } %415, 0, !nosanitize !44
  %420 = load ptr, ptr %247, align 8, !tbaa !40
  %421 = load ptr, ptr %272, align 8, !tbaa !89
  %422 = getelementptr inbounds nuw i8, ptr %421, i64 8
  %423 = load i64, ptr %422, align 8, !tbaa !105
  %424 = lshr i64 %423, 24
  %425 = trunc i64 %424 to i8
  store i64 %419, ptr %52, align 8, !tbaa !55
  %426 = getelementptr inbounds nuw i8, ptr %420, i64 %414
  store i8 %425, ptr %426, align 1, !tbaa !5
  %427 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %428 = load i32, ptr %427, align 4, !tbaa !47
  %429 = icmp eq i32 %428, 9
  br i1 %429, label %437, label %430

430:                                              ; preds = %418
  %431 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %432 = load i32, ptr %431, align 8, !tbaa !48
  %433 = icmp sgt i32 %432, 1
  %434 = icmp slt i32 %428, 2
  %435 = or i1 %434, %433
  %436 = select i1 %435, i8 4, i8 0
  br label %437

437:                                              ; preds = %430, %418
  %438 = phi i8 [ %436, %430 ], [ 2, %418 ]
  %439 = load i64, ptr %52, align 8, !tbaa !55
  %440 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %439, i64 1), !nosanitize !44
  %441 = extractvalue { i64, i1 } %440, 1, !nosanitize !44
  br i1 %441, label %442, label %443, !prof !45, !nosanitize !44

442:                                              ; preds = %437
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

443:                                              ; preds = %437
  %444 = extractvalue { i64, i1 } %440, 0, !nosanitize !44
  %445 = load ptr, ptr %247, align 8, !tbaa !40
  store i64 %444, ptr %52, align 8, !tbaa !55
  %446 = getelementptr inbounds nuw i8, ptr %445, i64 %439
  store i8 %438, ptr %446, align 1, !tbaa !5
  %447 = load i64, ptr %52, align 8, !tbaa !55
  %448 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %447, i64 1), !nosanitize !44
  %449 = extractvalue { i64, i1 } %448, 1, !nosanitize !44
  br i1 %449, label %450, label %451, !prof !45, !nosanitize !44

450:                                              ; preds = %443
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

451:                                              ; preds = %443
  %452 = extractvalue { i64, i1 } %448, 0, !nosanitize !44
  %453 = load ptr, ptr %247, align 8, !tbaa !40
  %454 = load ptr, ptr %272, align 8, !tbaa !89
  %455 = getelementptr inbounds nuw i8, ptr %454, i64 20
  %456 = load i32, ptr %455, align 4, !tbaa !106
  %457 = trunc i32 %456 to i8
  store i64 %452, ptr %52, align 8, !tbaa !55
  %458 = getelementptr inbounds nuw i8, ptr %453, i64 %447
  store i8 %457, ptr %458, align 1, !tbaa !5
  %459 = load ptr, ptr %272, align 8, !tbaa !89
  %460 = getelementptr inbounds nuw i8, ptr %459, i64 24
  %461 = load ptr, ptr %460, align 8, !tbaa !102
  %462 = icmp eq ptr %461, null
  br i1 %462, label %489, label %463

463:                                              ; preds = %451
  %464 = load i64, ptr %52, align 8, !tbaa !55
  %465 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %464, i64 1), !nosanitize !44
  %466 = extractvalue { i64, i1 } %465, 1, !nosanitize !44
  br i1 %466, label %467, label %468, !prof !45, !nosanitize !44

467:                                              ; preds = %463
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

468:                                              ; preds = %463
  %469 = extractvalue { i64, i1 } %465, 0, !nosanitize !44
  %470 = load ptr, ptr %247, align 8, !tbaa !40
  %471 = getelementptr inbounds nuw i8, ptr %459, i64 32
  %472 = load i32, ptr %471, align 8, !tbaa !107
  %473 = trunc i32 %472 to i8
  store i64 %469, ptr %52, align 8, !tbaa !55
  %474 = getelementptr inbounds nuw i8, ptr %470, i64 %464
  store i8 %473, ptr %474, align 1, !tbaa !5
  %475 = load i64, ptr %52, align 8, !tbaa !55
  %476 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %475, i64 1), !nosanitize !44
  %477 = extractvalue { i64, i1 } %476, 1, !nosanitize !44
  br i1 %477, label %478, label %479, !prof !45, !nosanitize !44

478:                                              ; preds = %468
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

479:                                              ; preds = %468
  %480 = extractvalue { i64, i1 } %476, 0, !nosanitize !44
  %481 = load ptr, ptr %247, align 8, !tbaa !40
  %482 = load ptr, ptr %272, align 8, !tbaa !89
  %483 = getelementptr inbounds nuw i8, ptr %482, i64 32
  %484 = load i32, ptr %483, align 8, !tbaa !107
  %485 = lshr i32 %484, 8
  %486 = trunc i32 %485 to i8
  store i64 %480, ptr %52, align 8, !tbaa !55
  %487 = getelementptr inbounds nuw i8, ptr %481, i64 %475
  store i8 %486, ptr %487, align 1, !tbaa !5
  %488 = load ptr, ptr %272, align 8, !tbaa !89
  br label %489

489:                                              ; preds = %479, %451
  %490 = phi ptr [ %488, %479 ], [ %459, %451 ]
  %491 = getelementptr inbounds nuw i8, ptr %490, i64 68
  %492 = load i32, ptr %491, align 4, !tbaa !104
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %499, label %494

494:                                              ; preds = %489
  %495 = load i64, ptr %246, align 8, !tbaa !57
  %496 = load ptr, ptr %247, align 8, !tbaa !40
  %497 = load i64, ptr %52, align 8, !tbaa !55
  %498 = tail call i64 @crc32_z(i64 noundef %495, ptr noundef %496, i64 noundef %497) #8
  store i64 %498, ptr %246, align 8, !tbaa !57
  br label %499

499:                                              ; preds = %494, %489
  %500 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i64 0, ptr %500, align 8, !tbaa !108
  store i32 69, ptr %20, align 8, !tbaa !28
  br label %505

501:                                              ; preds = %340
  %502 = load i32, ptr %20, align 8, !tbaa !28
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
  %507 = load ptr, ptr %506, align 8, !tbaa !89
  %508 = getelementptr inbounds nuw i8, ptr %507, i64 24
  %509 = load ptr, ptr %508, align 8, !tbaa !102
  %510 = icmp eq ptr %509, null
  br i1 %510, label %712, label %511

511:                                              ; preds = %505
  %512 = getelementptr inbounds nuw i8, ptr %507, i64 32
  %513 = load i32, ptr %512, align 8, !tbaa !107
  %514 = and i32 %513, 65535
  %515 = zext nneg i32 %514 to i64
  %516 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %517 = load i64, ptr %516, align 8, !tbaa !108
  %518 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %515, i64 %517), !nosanitize !44
  %519 = extractvalue { i64, i1 } %518, 1, !nosanitize !44
  br i1 %519, label %520, label %521, !prof !45, !nosanitize !44

520:                                              ; preds = %511
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

521:                                              ; preds = %511
  %522 = load i64, ptr %52, align 8, !tbaa !55
  %523 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %524 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %525 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %526 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %527 = extractvalue { i64, i1 } %518, 0
  %528 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %522, i64 %527), !nosanitize !44
  %529 = extractvalue { i64, i1 } %528, 1, !nosanitize !44
  br i1 %529, label %602, label %530, !prof !45, !nosanitize !44

530:                                              ; preds = %521
  %531 = extractvalue { i64, i1 } %528, 0, !nosanitize !44
  %532 = load i64, ptr %523, align 8, !tbaa !41
  %533 = icmp ugt i64 %531, %532
  br i1 %533, label %534, label %685

534:                                              ; preds = %530
  %535 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %532, i64 %522), !nosanitize !44
  %536 = extractvalue { i64, i1 } %535, 0, !nosanitize !44
  %537 = extractvalue { i64, i1 } %535, 1, !nosanitize !44
  br i1 %537, label %608, label %538, !prof !45, !nosanitize !44

538:                                              ; preds = %534
  %539 = load ptr, ptr %524, align 8, !tbaa !40
  %540 = getelementptr inbounds nuw i8, ptr %539, i64 %522
  %541 = getelementptr inbounds nuw i8, ptr %509, i64 %517
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %540, ptr nonnull align 1 %541, i64 %536, i1 false)
  %542 = load i64, ptr %523, align 8, !tbaa !41
  store i64 %542, ptr %52, align 8, !tbaa !55
  %543 = load ptr, ptr %506, align 8, !tbaa !89
  %544 = getelementptr inbounds nuw i8, ptr %543, i64 68
  %545 = load i32, ptr %544, align 4, !tbaa !104
  %546 = icmp ne i32 %545, 0
  %547 = icmp ugt i64 %542, %522
  %548 = select i1 %546, i1 %547, i1 false
  br i1 %548, label %549, label %555

549:                                              ; preds = %538
  %550 = sub nuw i64 %542, %522
  %551 = load ptr, ptr %524, align 8, !tbaa !40
  %552 = getelementptr inbounds nuw i8, ptr %551, i64 %522
  %553 = load i64, ptr %525, align 8, !tbaa !57
  %554 = tail call i64 @crc32_z(i64 noundef %553, ptr noundef %552, i64 noundef %550) #8
  store i64 %554, ptr %525, align 8, !tbaa !57
  br label %555

555:                                              ; preds = %549, %538
  %556 = load i64, ptr %516, align 8, !tbaa !108
  %557 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %556, i64 %536), !nosanitize !44
  %558 = extractvalue { i64, i1 } %557, 1, !nosanitize !44
  br i1 %558, label %631, label %559, !prof !45, !nosanitize !44

559:                                              ; preds = %555
  %560 = extractvalue { i64, i1 } %557, 0, !nosanitize !44
  store i64 %560, ptr %516, align 8, !tbaa !108
  %561 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %561) #8
  %562 = getelementptr inbounds nuw i8, ptr %561, i64 40
  %563 = load i64, ptr %562, align 8, !tbaa !55
  %564 = load i32, ptr %43, align 8, !tbaa !96
  %565 = zext i32 %564 to i64
  %566 = tail call i64 @llvm.umin.i64(i64 %563, i64 %565)
  %567 = trunc nuw i64 %566 to i32
  %568 = icmp eq i64 %566, 0
  br i1 %568, label %596, label %569

569:                                              ; preds = %559
  %570 = load ptr, ptr %25, align 8, !tbaa !95
  %571 = getelementptr inbounds nuw i8, ptr %561, i64 32
  %572 = load ptr, ptr %571, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %570, ptr align 1 %572, i64 %566, i1 false)
  %573 = load ptr, ptr %25, align 8, !tbaa !95
  %574 = getelementptr inbounds nuw i8, ptr %573, i64 %566
  store ptr %574, ptr %25, align 8, !tbaa !95
  %575 = load ptr, ptr %571, align 8, !tbaa !56
  %576 = getelementptr inbounds nuw i8, ptr %575, i64 %566
  store ptr %576, ptr %571, align 8, !tbaa !56
  %577 = load i64, ptr %526, align 8, !tbaa !97
  %578 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %577, i64 %566), !nosanitize !44
  %579 = extractvalue { i64, i1 } %578, 1, !nosanitize !44
  br i1 %579, label %653, label %580, !prof !45, !nosanitize !44

580:                                              ; preds = %569
  %581 = extractvalue { i64, i1 } %578, 0, !nosanitize !44
  store i64 %581, ptr %526, align 8, !tbaa !97
  %582 = load i32, ptr %43, align 8, !tbaa !96
  %583 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %582, i32 %567), !nosanitize !44
  %584 = extractvalue { i32, i1 } %583, 1, !nosanitize !44
  br i1 %584, label %659, label %585, !prof !45, !nosanitize !44

585:                                              ; preds = %580
  %586 = extractvalue { i32, i1 } %583, 0, !nosanitize !44
  store i32 %586, ptr %43, align 8, !tbaa !96
  %587 = load i64, ptr %562, align 8, !tbaa !55
  %588 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %587, i64 %566), !nosanitize !44
  %589 = extractvalue { i64, i1 } %588, 1, !nosanitize !44
  br i1 %589, label %665, label %590, !prof !45, !nosanitize !44

590:                                              ; preds = %585
  %591 = extractvalue { i64, i1 } %588, 0, !nosanitize !44
  store i64 %591, ptr %562, align 8, !tbaa !55
  %592 = icmp eq i64 %591, 0
  br i1 %592, label %593, label %596

593:                                              ; preds = %590
  %594 = getelementptr inbounds nuw i8, ptr %561, i64 16
  %595 = load ptr, ptr %594, align 8, !tbaa !40
  store ptr %595, ptr %571, align 8, !tbaa !56
  br label %596

596:                                              ; preds = %593, %590, %559
  %597 = load i64, ptr %52, align 8, !tbaa !55
  %598 = icmp eq i64 %597, 0
  br i1 %598, label %599, label %675

599:                                              ; preds = %596
  %600 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %527, i64 %536), !nosanitize !44
  %601 = extractvalue { i64, i1 } %600, 1, !nosanitize !44
  br i1 %601, label %679, label %603, !prof !45, !nosanitize !44

602:                                              ; preds = %521
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

603:                                              ; preds = %676, %599
  %604 = phi { i64, i1 } [ %677, %676 ], [ %600, %599 ]
  %605 = extractvalue { i64, i1 } %604, 0
  %606 = load i64, ptr %523, align 8, !tbaa !41
  %607 = icmp ugt i64 %605, %606
  br i1 %607, label %609, label %680

608:                                              ; preds = %534
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

609:                                              ; preds = %603
  %610 = load ptr, ptr %524, align 8, !tbaa !40
  %611 = load ptr, ptr %506, align 8, !tbaa !89
  %612 = getelementptr inbounds nuw i8, ptr %611, i64 24
  %613 = load ptr, ptr %612, align 8, !tbaa !102
  %614 = load i64, ptr %516, align 8, !tbaa !108
  %615 = getelementptr inbounds nuw i8, ptr %613, i64 %614
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %610, ptr align 1 %615, i64 %606, i1 false)
  %616 = load i64, ptr %523, align 8, !tbaa !41
  store i64 %616, ptr %52, align 8, !tbaa !55
  %617 = load ptr, ptr %506, align 8, !tbaa !89
  %618 = getelementptr inbounds nuw i8, ptr %617, i64 68
  %619 = load i32, ptr %618, align 4, !tbaa !104
  %620 = icmp ne i32 %619, 0
  %621 = icmp ne i64 %616, 0
  %622 = select i1 %620, i1 %621, i1 false
  br i1 %622, label %623, label %627

623:                                              ; preds = %609
  %624 = load ptr, ptr %524, align 8, !tbaa !40
  %625 = load i64, ptr %525, align 8, !tbaa !57
  %626 = tail call i64 @crc32_z(i64 noundef %625, ptr noundef %624, i64 noundef %616) #8
  store i64 %626, ptr %525, align 8, !tbaa !57
  br label %627

627:                                              ; preds = %623, %609
  %628 = load i64, ptr %516, align 8, !tbaa !108
  %629 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %628, i64 %606), !nosanitize !44
  %630 = extractvalue { i64, i1 } %629, 1, !nosanitize !44
  br i1 %630, label %631, label %632, !prof !109, !nosanitize !44

631:                                              ; preds = %627, %555
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

632:                                              ; preds = %627
  %633 = extractvalue { i64, i1 } %629, 0, !nosanitize !44
  store i64 %633, ptr %516, align 8, !tbaa !108
  %634 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %634) #8
  %635 = getelementptr inbounds nuw i8, ptr %634, i64 40
  %636 = load i64, ptr %635, align 8, !tbaa !55
  %637 = load i32, ptr %43, align 8, !tbaa !96
  %638 = zext i32 %637 to i64
  %639 = tail call i64 @llvm.umin.i64(i64 %636, i64 %638)
  %640 = trunc nuw i64 %639 to i32
  %641 = icmp eq i64 %639, 0
  br i1 %641, label %672, label %642

642:                                              ; preds = %632
  %643 = load ptr, ptr %25, align 8, !tbaa !95
  %644 = getelementptr inbounds nuw i8, ptr %634, i64 32
  %645 = load ptr, ptr %644, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %643, ptr align 1 %645, i64 %639, i1 false)
  %646 = load ptr, ptr %25, align 8, !tbaa !95
  %647 = getelementptr inbounds nuw i8, ptr %646, i64 %639
  store ptr %647, ptr %25, align 8, !tbaa !95
  %648 = load ptr, ptr %644, align 8, !tbaa !56
  %649 = getelementptr inbounds nuw i8, ptr %648, i64 %639
  store ptr %649, ptr %644, align 8, !tbaa !56
  %650 = load i64, ptr %526, align 8, !tbaa !97
  %651 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %650, i64 %639), !nosanitize !44
  %652 = extractvalue { i64, i1 } %651, 1, !nosanitize !44
  br i1 %652, label %653, label %654, !prof !109, !nosanitize !44

653:                                              ; preds = %642, %569
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

654:                                              ; preds = %642
  %655 = extractvalue { i64, i1 } %651, 0, !nosanitize !44
  store i64 %655, ptr %526, align 8, !tbaa !97
  %656 = load i32, ptr %43, align 8, !tbaa !96
  %657 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %656, i32 %640), !nosanitize !44
  %658 = extractvalue { i32, i1 } %657, 1, !nosanitize !44
  br i1 %658, label %659, label %660, !prof !109, !nosanitize !44

659:                                              ; preds = %654, %580
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

660:                                              ; preds = %654
  %661 = extractvalue { i32, i1 } %657, 0, !nosanitize !44
  store i32 %661, ptr %43, align 8, !tbaa !96
  %662 = load i64, ptr %635, align 8, !tbaa !55
  %663 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %662, i64 %639), !nosanitize !44
  %664 = extractvalue { i64, i1 } %663, 1, !nosanitize !44
  br i1 %664, label %665, label %666, !prof !109, !nosanitize !44

665:                                              ; preds = %660, %585
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

666:                                              ; preds = %660
  %667 = extractvalue { i64, i1 } %663, 0, !nosanitize !44
  store i64 %667, ptr %635, align 8, !tbaa !55
  %668 = icmp eq i64 %667, 0
  br i1 %668, label %669, label %672

669:                                              ; preds = %666
  %670 = getelementptr inbounds nuw i8, ptr %634, i64 16
  %671 = load ptr, ptr %670, align 8, !tbaa !40
  store ptr %671, ptr %644, align 8, !tbaa !56
  br label %672

672:                                              ; preds = %669, %666, %632
  %673 = load i64, ptr %52, align 8, !tbaa !55
  %674 = icmp eq i64 %673, 0
  br i1 %674, label %676, label %675

675:                                              ; preds = %672, %596
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1203

676:                                              ; preds = %672
  %677 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %605, i64 %606), !nosanitize !44
  %678 = extractvalue { i64, i1 } %677, 1, !nosanitize !44
  br i1 false, label %679, label %603, !prof !109, !llvm.loop !110, !nosanitize !44

679:                                              ; preds = %676, %599
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

680:                                              ; preds = %603
  %681 = load ptr, ptr %506, align 8, !tbaa !89
  %682 = getelementptr inbounds nuw i8, ptr %681, i64 24
  %683 = load ptr, ptr %682, align 8, !tbaa !102
  %684 = load i64, ptr %516, align 8, !tbaa !108
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
  %693 = load i64, ptr %52, align 8, !tbaa !55
  %694 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %693, i64 %689), !nosanitize !44
  %695 = extractvalue { i64, i1 } %694, 0, !nosanitize !44
  %696 = extractvalue { i64, i1 } %694, 1, !nosanitize !44
  br i1 %696, label %697, label %698, !prof !45, !nosanitize !44

697:                                              ; preds = %685
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

698:                                              ; preds = %685
  store i64 %695, ptr %52, align 8, !tbaa !55
  %699 = load ptr, ptr %506, align 8, !tbaa !89
  %700 = getelementptr inbounds nuw i8, ptr %699, i64 68
  %701 = load i32, ptr %700, align 4, !tbaa !104
  %702 = icmp ne i32 %701, 0
  %703 = icmp ugt i64 %695, %688
  %704 = select i1 %702, i1 %703, i1 false
  br i1 %704, label %705, label %711

705:                                              ; preds = %698
  %706 = sub nuw i64 %695, %688
  %707 = load ptr, ptr %524, align 8, !tbaa !40
  %708 = getelementptr inbounds nuw i8, ptr %707, i64 %688
  %709 = load i64, ptr %525, align 8, !tbaa !57
  %710 = tail call i64 @crc32_z(i64 noundef %709, ptr noundef %708, i64 noundef %706) #8
  store i64 %710, ptr %525, align 8, !tbaa !57
  br label %711

711:                                              ; preds = %705, %698
  store i64 0, ptr %516, align 8, !tbaa !108
  br label %712

712:                                              ; preds = %711, %505
  store i32 73, ptr %20, align 8, !tbaa !28
  br label %713

713:                                              ; preds = %712, %503
  %714 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %715 = load ptr, ptr %714, align 8, !tbaa !89
  %716 = getelementptr inbounds nuw i8, ptr %715, i64 40
  %717 = load ptr, ptr %716, align 8, !tbaa !101
  %718 = icmp eq ptr %717, null
  br i1 %718, label %824, label %719

719:                                              ; preds = %713
  %720 = load i64, ptr %52, align 8, !tbaa !55
  %721 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %722 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %723 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %724 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %725 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %726

726:                                              ; preds = %802, %719
  %727 = phi i64 [ %720, %719 ], [ %789, %802 ]
  %728 = load i64, ptr %52, align 8, !tbaa !55
  %729 = load i64, ptr %721, align 8, !tbaa !41
  %730 = icmp eq i64 %728, %729
  br i1 %730, label %731, label %787

731:                                              ; preds = %726
  %732 = load ptr, ptr %714, align 8, !tbaa !89
  %733 = getelementptr inbounds nuw i8, ptr %732, i64 68
  %734 = load i32, ptr %733, align 4, !tbaa !104
  %735 = icmp ne i32 %734, 0
  %736 = icmp ugt i64 %728, %727
  %737 = select i1 %735, i1 %736, i1 false
  br i1 %737, label %738, label %744

738:                                              ; preds = %731
  %739 = sub nuw i64 %728, %727
  %740 = load ptr, ptr %722, align 8, !tbaa !40
  %741 = getelementptr inbounds nuw i8, ptr %740, i64 %727
  %742 = load i64, ptr %723, align 8, !tbaa !57
  %743 = tail call i64 @crc32_z(i64 noundef %742, ptr noundef %741, i64 noundef %739) #8
  store i64 %743, ptr %723, align 8, !tbaa !57
  br label %744

744:                                              ; preds = %738, %731
  %745 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %745) #8
  %746 = getelementptr inbounds nuw i8, ptr %745, i64 40
  %747 = load i64, ptr %746, align 8, !tbaa !55
  %748 = load i32, ptr %43, align 8, !tbaa !96
  %749 = zext i32 %748 to i64
  %750 = tail call i64 @llvm.umin.i64(i64 %747, i64 %749)
  %751 = trunc nuw i64 %750 to i32
  %752 = icmp eq i64 %750, 0
  br i1 %752, label %783, label %753

753:                                              ; preds = %744
  %754 = load ptr, ptr %25, align 8, !tbaa !95
  %755 = getelementptr inbounds nuw i8, ptr %745, i64 32
  %756 = load ptr, ptr %755, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %754, ptr align 1 %756, i64 %750, i1 false)
  %757 = load ptr, ptr %25, align 8, !tbaa !95
  %758 = getelementptr inbounds nuw i8, ptr %757, i64 %750
  store ptr %758, ptr %25, align 8, !tbaa !95
  %759 = load ptr, ptr %755, align 8, !tbaa !56
  %760 = getelementptr inbounds nuw i8, ptr %759, i64 %750
  store ptr %760, ptr %755, align 8, !tbaa !56
  %761 = load i64, ptr %724, align 8, !tbaa !97
  %762 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %761, i64 %750), !nosanitize !44
  %763 = extractvalue { i64, i1 } %762, 1, !nosanitize !44
  br i1 %763, label %764, label %765, !prof !45, !nosanitize !44

764:                                              ; preds = %753
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

765:                                              ; preds = %753
  %766 = extractvalue { i64, i1 } %762, 0, !nosanitize !44
  store i64 %766, ptr %724, align 8, !tbaa !97
  %767 = load i32, ptr %43, align 8, !tbaa !96
  %768 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %767, i32 %751), !nosanitize !44
  %769 = extractvalue { i32, i1 } %768, 1, !nosanitize !44
  br i1 %769, label %770, label %771, !prof !45, !nosanitize !44

770:                                              ; preds = %765
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

771:                                              ; preds = %765
  %772 = extractvalue { i32, i1 } %768, 0, !nosanitize !44
  store i32 %772, ptr %43, align 8, !tbaa !96
  %773 = load i64, ptr %746, align 8, !tbaa !55
  %774 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %773, i64 %750), !nosanitize !44
  %775 = extractvalue { i64, i1 } %774, 1, !nosanitize !44
  br i1 %775, label %776, label %777, !prof !45, !nosanitize !44

776:                                              ; preds = %771
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

777:                                              ; preds = %771
  %778 = extractvalue { i64, i1 } %774, 0, !nosanitize !44
  store i64 %778, ptr %746, align 8, !tbaa !55
  %779 = icmp eq i64 %778, 0
  br i1 %779, label %780, label %783

780:                                              ; preds = %777
  %781 = getelementptr inbounds nuw i8, ptr %745, i64 16
  %782 = load ptr, ptr %781, align 8, !tbaa !40
  store ptr %782, ptr %755, align 8, !tbaa !56
  br label %783

783:                                              ; preds = %780, %777, %744
  %784 = load i64, ptr %52, align 8, !tbaa !55
  %785 = icmp eq i64 %784, 0
  br i1 %785, label %787, label %786

786:                                              ; preds = %783
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1203

787:                                              ; preds = %783, %726
  %788 = phi i64 [ %728, %726 ], [ 0, %783 ]
  %789 = phi i64 [ %727, %726 ], [ 0, %783 ]
  %790 = load i64, ptr %725, align 8, !tbaa !108
  %791 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %790, i64 1), !nosanitize !44
  %792 = extractvalue { i64, i1 } %791, 1, !nosanitize !44
  br i1 %792, label %793, label %794, !prof !45, !nosanitize !44

793:                                              ; preds = %787
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

794:                                              ; preds = %787
  %795 = extractvalue { i64, i1 } %791, 0, !nosanitize !44
  %796 = load ptr, ptr %714, align 8, !tbaa !89
  %797 = getelementptr inbounds nuw i8, ptr %796, i64 40
  %798 = load ptr, ptr %797, align 8, !tbaa !101
  store i64 %795, ptr %725, align 8, !tbaa !108
  %799 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %788, i64 1), !nosanitize !44
  %800 = extractvalue { i64, i1 } %799, 1, !nosanitize !44
  br i1 %800, label %801, label %802, !prof !45, !nosanitize !44

801:                                              ; preds = %794
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

802:                                              ; preds = %794
  %803 = extractvalue { i64, i1 } %799, 0, !nosanitize !44
  %804 = load ptr, ptr %722, align 8, !tbaa !40
  %805 = getelementptr inbounds nuw i8, ptr %798, i64 %790
  %806 = load i8, ptr %805, align 1, !tbaa !5
  store i64 %803, ptr %52, align 8, !tbaa !55
  %807 = getelementptr inbounds nuw i8, ptr %804, i64 %788
  store i8 %806, ptr %807, align 1, !tbaa !5
  %808 = icmp eq i8 %806, 0
  br i1 %808, label %809, label %726, !llvm.loop !112

809:                                              ; preds = %802
  %810 = load ptr, ptr %714, align 8, !tbaa !89
  %811 = getelementptr inbounds nuw i8, ptr %810, i64 68
  %812 = load i32, ptr %811, align 4, !tbaa !104
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %823, label %814

814:                                              ; preds = %809
  %815 = load i64, ptr %52, align 8, !tbaa !55
  %816 = icmp ugt i64 %815, %789
  br i1 %816, label %817, label %823

817:                                              ; preds = %814
  %818 = sub nuw i64 %815, %789
  %819 = load ptr, ptr %722, align 8, !tbaa !40
  %820 = getelementptr inbounds nuw i8, ptr %819, i64 %789
  %821 = load i64, ptr %723, align 8, !tbaa !57
  %822 = tail call i64 @crc32_z(i64 noundef %821, ptr noundef %820, i64 noundef %818) #8
  store i64 %822, ptr %723, align 8, !tbaa !57
  br label %823

823:                                              ; preds = %817, %814, %809
  store i64 0, ptr %725, align 8, !tbaa !108
  br label %824

824:                                              ; preds = %823, %713
  store i32 91, ptr %20, align 8, !tbaa !28
  br label %825

825:                                              ; preds = %824, %503
  %826 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %827 = load ptr, ptr %826, align 8, !tbaa !89
  %828 = getelementptr inbounds nuw i8, ptr %827, i64 56
  %829 = load ptr, ptr %828, align 8, !tbaa !99
  %830 = icmp eq ptr %829, null
  br i1 %830, label %935, label %831

831:                                              ; preds = %825
  %832 = load i64, ptr %52, align 8, !tbaa !55
  %833 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %834 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %835 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %836 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %837 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %838

838:                                              ; preds = %914, %831
  %839 = phi i64 [ %832, %831 ], [ %901, %914 ]
  %840 = load i64, ptr %52, align 8, !tbaa !55
  %841 = load i64, ptr %833, align 8, !tbaa !41
  %842 = icmp eq i64 %840, %841
  br i1 %842, label %843, label %899

843:                                              ; preds = %838
  %844 = load ptr, ptr %826, align 8, !tbaa !89
  %845 = getelementptr inbounds nuw i8, ptr %844, i64 68
  %846 = load i32, ptr %845, align 4, !tbaa !104
  %847 = icmp ne i32 %846, 0
  %848 = icmp ugt i64 %840, %839
  %849 = select i1 %847, i1 %848, i1 false
  br i1 %849, label %850, label %856

850:                                              ; preds = %843
  %851 = sub nuw i64 %840, %839
  %852 = load ptr, ptr %834, align 8, !tbaa !40
  %853 = getelementptr inbounds nuw i8, ptr %852, i64 %839
  %854 = load i64, ptr %835, align 8, !tbaa !57
  %855 = tail call i64 @crc32_z(i64 noundef %854, ptr noundef %853, i64 noundef %851) #8
  store i64 %855, ptr %835, align 8, !tbaa !57
  br label %856

856:                                              ; preds = %850, %843
  %857 = load ptr, ptr %13, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %857) #8
  %858 = getelementptr inbounds nuw i8, ptr %857, i64 40
  %859 = load i64, ptr %858, align 8, !tbaa !55
  %860 = load i32, ptr %43, align 8, !tbaa !96
  %861 = zext i32 %860 to i64
  %862 = tail call i64 @llvm.umin.i64(i64 %859, i64 %861)
  %863 = trunc nuw i64 %862 to i32
  %864 = icmp eq i64 %862, 0
  br i1 %864, label %895, label %865

865:                                              ; preds = %856
  %866 = load ptr, ptr %25, align 8, !tbaa !95
  %867 = getelementptr inbounds nuw i8, ptr %857, i64 32
  %868 = load ptr, ptr %867, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %866, ptr align 1 %868, i64 %862, i1 false)
  %869 = load ptr, ptr %25, align 8, !tbaa !95
  %870 = getelementptr inbounds nuw i8, ptr %869, i64 %862
  store ptr %870, ptr %25, align 8, !tbaa !95
  %871 = load ptr, ptr %867, align 8, !tbaa !56
  %872 = getelementptr inbounds nuw i8, ptr %871, i64 %862
  store ptr %872, ptr %867, align 8, !tbaa !56
  %873 = load i64, ptr %836, align 8, !tbaa !97
  %874 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %873, i64 %862), !nosanitize !44
  %875 = extractvalue { i64, i1 } %874, 1, !nosanitize !44
  br i1 %875, label %876, label %877, !prof !45, !nosanitize !44

876:                                              ; preds = %865
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

877:                                              ; preds = %865
  %878 = extractvalue { i64, i1 } %874, 0, !nosanitize !44
  store i64 %878, ptr %836, align 8, !tbaa !97
  %879 = load i32, ptr %43, align 8, !tbaa !96
  %880 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %879, i32 %863), !nosanitize !44
  %881 = extractvalue { i32, i1 } %880, 1, !nosanitize !44
  br i1 %881, label %882, label %883, !prof !45, !nosanitize !44

882:                                              ; preds = %877
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

883:                                              ; preds = %877
  %884 = extractvalue { i32, i1 } %880, 0, !nosanitize !44
  store i32 %884, ptr %43, align 8, !tbaa !96
  %885 = load i64, ptr %858, align 8, !tbaa !55
  %886 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %885, i64 %862), !nosanitize !44
  %887 = extractvalue { i64, i1 } %886, 1, !nosanitize !44
  br i1 %887, label %888, label %889, !prof !45, !nosanitize !44

888:                                              ; preds = %883
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

889:                                              ; preds = %883
  %890 = extractvalue { i64, i1 } %886, 0, !nosanitize !44
  store i64 %890, ptr %858, align 8, !tbaa !55
  %891 = icmp eq i64 %890, 0
  br i1 %891, label %892, label %895

892:                                              ; preds = %889
  %893 = getelementptr inbounds nuw i8, ptr %857, i64 16
  %894 = load ptr, ptr %893, align 8, !tbaa !40
  store ptr %894, ptr %867, align 8, !tbaa !56
  br label %895

895:                                              ; preds = %892, %889, %856
  %896 = load i64, ptr %52, align 8, !tbaa !55
  %897 = icmp eq i64 %896, 0
  br i1 %897, label %899, label %898

898:                                              ; preds = %895
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1203

899:                                              ; preds = %895, %838
  %900 = phi i64 [ %840, %838 ], [ 0, %895 ]
  %901 = phi i64 [ %839, %838 ], [ 0, %895 ]
  %902 = load i64, ptr %837, align 8, !tbaa !108
  %903 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %902, i64 1), !nosanitize !44
  %904 = extractvalue { i64, i1 } %903, 1, !nosanitize !44
  br i1 %904, label %905, label %906, !prof !45, !nosanitize !44

905:                                              ; preds = %899
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

906:                                              ; preds = %899
  %907 = extractvalue { i64, i1 } %903, 0, !nosanitize !44
  %908 = load ptr, ptr %826, align 8, !tbaa !89
  %909 = getelementptr inbounds nuw i8, ptr %908, i64 56
  %910 = load ptr, ptr %909, align 8, !tbaa !99
  store i64 %907, ptr %837, align 8, !tbaa !108
  %911 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %900, i64 1), !nosanitize !44
  %912 = extractvalue { i64, i1 } %911, 1, !nosanitize !44
  br i1 %912, label %913, label %914, !prof !45, !nosanitize !44

913:                                              ; preds = %906
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

914:                                              ; preds = %906
  %915 = extractvalue { i64, i1 } %911, 0, !nosanitize !44
  %916 = load ptr, ptr %834, align 8, !tbaa !40
  %917 = getelementptr inbounds nuw i8, ptr %910, i64 %902
  %918 = load i8, ptr %917, align 1, !tbaa !5
  store i64 %915, ptr %52, align 8, !tbaa !55
  %919 = getelementptr inbounds nuw i8, ptr %916, i64 %900
  store i8 %918, ptr %919, align 1, !tbaa !5
  %920 = icmp eq i8 %918, 0
  br i1 %920, label %921, label %838, !llvm.loop !113

921:                                              ; preds = %914
  %922 = load ptr, ptr %826, align 8, !tbaa !89
  %923 = getelementptr inbounds nuw i8, ptr %922, i64 68
  %924 = load i32, ptr %923, align 4, !tbaa !104
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %935, label %926

926:                                              ; preds = %921
  %927 = load i64, ptr %52, align 8, !tbaa !55
  %928 = icmp ugt i64 %927, %901
  br i1 %928, label %929, label %935

929:                                              ; preds = %926
  %930 = sub nuw i64 %927, %901
  %931 = load ptr, ptr %834, align 8, !tbaa !40
  %932 = getelementptr inbounds nuw i8, ptr %931, i64 %901
  %933 = load i64, ptr %835, align 8, !tbaa !57
  %934 = tail call i64 @crc32_z(i64 noundef %933, ptr noundef %932, i64 noundef %930) #8
  store i64 %934, ptr %835, align 8, !tbaa !57
  br label %935

935:                                              ; preds = %929, %926, %921, %825
  store i32 103, ptr %20, align 8, !tbaa !28
  br label %936

936:                                              ; preds = %935, %503
  %937 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %938 = load ptr, ptr %937, align 8, !tbaa !89
  %939 = getelementptr inbounds nuw i8, ptr %938, i64 68
  %940 = load i32, ptr %939, align 4, !tbaa !104
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %977, label %942

942:                                              ; preds = %936
  %943 = load i64, ptr %52, align 8, !tbaa !55
  %944 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %943, i64 2), !nosanitize !44
  %945 = extractvalue { i64, i1 } %944, 1, !nosanitize !44
  br i1 %945, label %946, label %947, !prof !45, !nosanitize !44

946:                                              ; preds = %942
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

947:                                              ; preds = %942
  %948 = extractvalue { i64, i1 } %944, 0, !nosanitize !44
  %949 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %950 = load i64, ptr %949, align 8, !tbaa !41
  %951 = icmp ugt i64 %948, %950
  br i1 %951, label %952, label %956

952:                                              ; preds = %947
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %953 = load i64, ptr %52, align 8, !tbaa !55
  %954 = icmp eq i64 %953, 0
  br i1 %954, label %956, label %955

955:                                              ; preds = %952
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1203

956:                                              ; preds = %952, %947
  %957 = phi i64 [ 0, %952 ], [ %943, %947 ]
  %958 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %959 = add nuw i64 %957, 1
  %960 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %961 = load ptr, ptr %960, align 8, !tbaa !40
  %962 = load i64, ptr %958, align 8, !tbaa !57
  %963 = trunc i64 %962 to i8
  store i64 %959, ptr %52, align 8, !tbaa !55
  %964 = getelementptr inbounds nuw i8, ptr %961, i64 %957
  store i8 %963, ptr %964, align 1, !tbaa !5
  %965 = load i64, ptr %52, align 8, !tbaa !55
  %966 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %965, i64 1), !nosanitize !44
  %967 = extractvalue { i64, i1 } %966, 1, !nosanitize !44
  br i1 %967, label %968, label %969, !prof !45, !nosanitize !44

968:                                              ; preds = %956
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

969:                                              ; preds = %956
  %970 = extractvalue { i64, i1 } %966, 0, !nosanitize !44
  %971 = load ptr, ptr %960, align 8, !tbaa !40
  %972 = load i64, ptr %958, align 8, !tbaa !57
  %973 = lshr i64 %972, 8
  %974 = trunc i64 %973 to i8
  store i64 %970, ptr %52, align 8, !tbaa !55
  %975 = getelementptr inbounds nuw i8, ptr %971, i64 %965
  store i8 %974, ptr %975, align 1, !tbaa !5
  %976 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #8
  store i64 %976, ptr %958, align 8, !tbaa !57
  br label %977

977:                                              ; preds = %969, %936
  store i32 113, ptr %20, align 8, !tbaa !28
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %978 = load i64, ptr %52, align 8, !tbaa !55
  %979 = icmp eq i64 %978, 0
  br i1 %979, label %981, label %980

980:                                              ; preds = %977
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1203

981:                                              ; preds = %977, %503, %136
  %982 = load i32, ptr %29, align 8, !tbaa !79
  %983 = icmp eq i32 %982, 0
  br i1 %983, label %984, label %993

984:                                              ; preds = %981, %126
  %985 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %986 = load i32, ptr %985, align 4, !tbaa !73
  %987 = icmp eq i32 %986, 0
  br i1 %987, label %988, label %993

988:                                              ; preds = %984
  %989 = icmp eq i32 %1, 0
  br i1 %989, label %1203, label %990

990:                                              ; preds = %988
  %991 = load i32, ptr %20, align 8, !tbaa !28
  %992 = icmp eq i32 %991, 666
  br i1 %992, label %1054, label %993

993:                                              ; preds = %990, %984, %981
  %994 = getelementptr inbounds nuw i8, ptr %14, i64 196
  %995 = load i32, ptr %994, align 4, !tbaa !47
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %997, label %999

997:                                              ; preds = %993
  %998 = tail call i32 @deflate_stored(ptr noundef nonnull %14, i32 noundef %1)
  br label %1011

999:                                              ; preds = %993
  %1000 = getelementptr inbounds nuw i8, ptr %14, i64 200
  %1001 = load i32, ptr %1000, align 8, !tbaa !48
  switch i32 %1001, label %1006 [
    i32 2, label %1002
    i32 3, label %1004
  ]

1002:                                             ; preds = %999
  %1003 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %14, i32 noundef %1)
  br label %1011

1004:                                             ; preds = %999
  %1005 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %14, i32 noundef %1)
  br label %1011

1006:                                             ; preds = %999
  %1007 = sext i32 %995 to i64
  %1008 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %1007, i32 4
  %1009 = load ptr, ptr %1008, align 8, !tbaa !94
  %1010 = tail call i32 %1009(ptr noundef nonnull %14, i32 noundef %1) #8
  br label %1011

1011:                                             ; preds = %1006, %1004, %1002, %997
  %1012 = phi i32 [ %998, %997 ], [ %1003, %1002 ], [ %1005, %1004 ], [ %1010, %1006 ]
  %1013 = and i32 %1012, -2
  %1014 = icmp eq i32 %1013, 2
  br i1 %1014, label %1015, label %1016

1015:                                             ; preds = %1011
  store i32 666, ptr %20, align 8, !tbaa !28
  br label %1016

1016:                                             ; preds = %1015, %1011
  %1017 = and i32 %1012, -3
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1019, label %1023

1019:                                             ; preds = %1016
  %1020 = load i32, ptr %43, align 8, !tbaa !96
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1022, label %1203

1022:                                             ; preds = %1019
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1203

1023:                                             ; preds = %1016
  %1024 = icmp eq i32 %1012, 1
  br i1 %1024, label %1025, label %1054

1025:                                             ; preds = %1023
  switch i32 %1, label %1027 [
    i32 1, label %1026
    i32 5, label %1050
  ]

1026:                                             ; preds = %1025
  tail call void @_tr_align(ptr noundef nonnull %14) #8
  br label %1050

1027:                                             ; preds = %1025
  tail call void @_tr_stored_block(ptr noundef nonnull %14, ptr noundef null, i64 noundef 0, i32 noundef 0) #8
  %1028 = icmp eq i32 %1, 3
  br i1 %1028, label %1029, label %1050

1029:                                             ; preds = %1027
  %1030 = getelementptr inbounds nuw i8, ptr %14, i64 132
  %1031 = load i32, ptr %1030, align 4, !tbaa !36
  %1032 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1031, i32 1), !nosanitize !44
  %1033 = extractvalue { i32, i1 } %1032, 1, !nosanitize !44
  br i1 %1033, label %1034, label %1035, !prof !45, !nosanitize !44

1034:                                             ; preds = %1029
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1035:                                             ; preds = %1029
  %1036 = extractvalue { i32, i1 } %1032, 0, !nosanitize !44
  %1037 = getelementptr inbounds nuw i8, ptr %14, i64 120
  %1038 = load ptr, ptr %1037, align 8, !tbaa !37
  %1039 = zext i32 %1036 to i64
  %1040 = getelementptr inbounds nuw i16, ptr %1038, i64 %1039
  store i16 0, ptr %1040, align 2, !tbaa !60
  %1041 = shl nuw nsw i64 %1039, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1038, i8 0, i64 %1041, i1 false)
  %1042 = getelementptr inbounds nuw i8, ptr %14, i64 5960
  store i32 0, ptr %1042, align 8, !tbaa !61
  %1043 = getelementptr inbounds nuw i8, ptr %14, i64 180
  %1044 = load i32, ptr %1043, align 4, !tbaa !73
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1046, label %1050

1046:                                             ; preds = %1035
  %1047 = getelementptr inbounds nuw i8, ptr %14, i64 172
  store i32 0, ptr %1047, align 4, !tbaa !71
  %1048 = getelementptr inbounds nuw i8, ptr %14, i64 152
  store i64 0, ptr %1048, align 8, !tbaa !72
  %1049 = getelementptr inbounds nuw i8, ptr %14, i64 5932
  store i32 0, ptr %1049, align 4, !tbaa !74
  br label %1050

1050:                                             ; preds = %1046, %1035, %1027, %1026, %1025
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1051 = load i32, ptr %43, align 8, !tbaa !96
  %1052 = icmp eq i32 %1051, 0
  br i1 %1052, label %1053, label %1054

1053:                                             ; preds = %1050
  store i32 -1, ptr %50, align 4, !tbaa !58
  br label %1203

1054:                                             ; preds = %1050, %1023, %990
  br i1 %37, label %1203, label %1055

1055:                                             ; preds = %1054
  %1056 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %1057 = load i32, ptr %1056, align 8, !tbaa !29
  %1058 = icmp slt i32 %1057, 1
  br i1 %1058, label %1203, label %1059

1059:                                             ; preds = %1055
  %1060 = icmp eq i32 %1057, 2
  %1061 = getelementptr inbounds nuw i8, ptr %0, i64 96
  br i1 %1060, label %1062, label %1151

1062:                                             ; preds = %1059
  %1063 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1064 = load i64, ptr %52, align 8, !tbaa !55
  %1065 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1064, i64 1), !nosanitize !44
  %1066 = extractvalue { i64, i1 } %1065, 1, !nosanitize !44
  br i1 %1066, label %1067, label %1068, !prof !45, !nosanitize !44

1067:                                             ; preds = %1062
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1068:                                             ; preds = %1062
  %1069 = extractvalue { i64, i1 } %1065, 0, !nosanitize !44
  %1070 = load ptr, ptr %1063, align 8, !tbaa !40
  %1071 = load i64, ptr %1061, align 8, !tbaa !57
  %1072 = trunc i64 %1071 to i8
  store i64 %1069, ptr %52, align 8, !tbaa !55
  %1073 = getelementptr inbounds nuw i8, ptr %1070, i64 %1064
  store i8 %1072, ptr %1073, align 1, !tbaa !5
  %1074 = load i64, ptr %52, align 8, !tbaa !55
  %1075 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1074, i64 1), !nosanitize !44
  %1076 = extractvalue { i64, i1 } %1075, 1, !nosanitize !44
  br i1 %1076, label %1077, label %1078, !prof !45, !nosanitize !44

1077:                                             ; preds = %1068
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1078:                                             ; preds = %1068
  %1079 = extractvalue { i64, i1 } %1075, 0, !nosanitize !44
  %1080 = load ptr, ptr %1063, align 8, !tbaa !40
  %1081 = load i64, ptr %1061, align 8, !tbaa !57
  %1082 = lshr i64 %1081, 8
  %1083 = trunc i64 %1082 to i8
  store i64 %1079, ptr %52, align 8, !tbaa !55
  %1084 = getelementptr inbounds nuw i8, ptr %1080, i64 %1074
  store i8 %1083, ptr %1084, align 1, !tbaa !5
  %1085 = load i64, ptr %52, align 8, !tbaa !55
  %1086 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1085, i64 1), !nosanitize !44
  %1087 = extractvalue { i64, i1 } %1086, 1, !nosanitize !44
  br i1 %1087, label %1088, label %1089, !prof !45, !nosanitize !44

1088:                                             ; preds = %1078
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1089:                                             ; preds = %1078
  %1090 = extractvalue { i64, i1 } %1086, 0, !nosanitize !44
  %1091 = load ptr, ptr %1063, align 8, !tbaa !40
  %1092 = load i64, ptr %1061, align 8, !tbaa !57
  %1093 = lshr i64 %1092, 16
  %1094 = trunc i64 %1093 to i8
  store i64 %1090, ptr %52, align 8, !tbaa !55
  %1095 = getelementptr inbounds nuw i8, ptr %1091, i64 %1085
  store i8 %1094, ptr %1095, align 1, !tbaa !5
  %1096 = load i64, ptr %52, align 8, !tbaa !55
  %1097 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1096, i64 1), !nosanitize !44
  %1098 = extractvalue { i64, i1 } %1097, 1, !nosanitize !44
  br i1 %1098, label %1099, label %1100, !prof !45, !nosanitize !44

1099:                                             ; preds = %1089
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1100:                                             ; preds = %1089
  %1101 = extractvalue { i64, i1 } %1097, 0, !nosanitize !44
  %1102 = load ptr, ptr %1063, align 8, !tbaa !40
  %1103 = load i64, ptr %1061, align 8, !tbaa !57
  %1104 = lshr i64 %1103, 24
  %1105 = trunc i64 %1104 to i8
  store i64 %1101, ptr %52, align 8, !tbaa !55
  %1106 = getelementptr inbounds nuw i8, ptr %1102, i64 %1096
  store i8 %1105, ptr %1106, align 1, !tbaa !5
  %1107 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %1108 = load i64, ptr %52, align 8, !tbaa !55
  %1109 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1108, i64 1), !nosanitize !44
  %1110 = extractvalue { i64, i1 } %1109, 1, !nosanitize !44
  br i1 %1110, label %1111, label %1112, !prof !45, !nosanitize !44

1111:                                             ; preds = %1100
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1112:                                             ; preds = %1100
  %1113 = extractvalue { i64, i1 } %1109, 0, !nosanitize !44
  %1114 = load ptr, ptr %1063, align 8, !tbaa !40
  %1115 = load i64, ptr %1107, align 8, !tbaa !53
  %1116 = trunc i64 %1115 to i8
  store i64 %1113, ptr %52, align 8, !tbaa !55
  %1117 = getelementptr inbounds nuw i8, ptr %1114, i64 %1108
  store i8 %1116, ptr %1117, align 1, !tbaa !5
  %1118 = load i64, ptr %52, align 8, !tbaa !55
  %1119 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1118, i64 1), !nosanitize !44
  %1120 = extractvalue { i64, i1 } %1119, 1, !nosanitize !44
  br i1 %1120, label %1121, label %1122, !prof !45, !nosanitize !44

1121:                                             ; preds = %1112
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1122:                                             ; preds = %1112
  %1123 = extractvalue { i64, i1 } %1119, 0, !nosanitize !44
  %1124 = load ptr, ptr %1063, align 8, !tbaa !40
  %1125 = load i64, ptr %1107, align 8, !tbaa !53
  %1126 = lshr i64 %1125, 8
  %1127 = trunc i64 %1126 to i8
  store i64 %1123, ptr %52, align 8, !tbaa !55
  %1128 = getelementptr inbounds nuw i8, ptr %1124, i64 %1118
  store i8 %1127, ptr %1128, align 1, !tbaa !5
  %1129 = load i64, ptr %52, align 8, !tbaa !55
  %1130 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1129, i64 1), !nosanitize !44
  %1131 = extractvalue { i64, i1 } %1130, 1, !nosanitize !44
  br i1 %1131, label %1132, label %1133, !prof !45, !nosanitize !44

1132:                                             ; preds = %1122
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1133:                                             ; preds = %1122
  %1134 = extractvalue { i64, i1 } %1130, 0, !nosanitize !44
  %1135 = load ptr, ptr %1063, align 8, !tbaa !40
  %1136 = load i64, ptr %1107, align 8, !tbaa !53
  %1137 = lshr i64 %1136, 16
  %1138 = trunc i64 %1137 to i8
  store i64 %1134, ptr %52, align 8, !tbaa !55
  %1139 = getelementptr inbounds nuw i8, ptr %1135, i64 %1129
  store i8 %1138, ptr %1139, align 1, !tbaa !5
  %1140 = load i64, ptr %52, align 8, !tbaa !55
  %1141 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1140, i64 1), !nosanitize !44
  %1142 = extractvalue { i64, i1 } %1141, 1, !nosanitize !44
  br i1 %1142, label %1143, label %1144, !prof !45, !nosanitize !44

1143:                                             ; preds = %1133
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1144:                                             ; preds = %1133
  %1145 = extractvalue { i64, i1 } %1141, 0, !nosanitize !44
  %1146 = load ptr, ptr %1063, align 8, !tbaa !40
  %1147 = load i64, ptr %1107, align 8, !tbaa !53
  %1148 = lshr i64 %1147, 24
  %1149 = trunc i64 %1148 to i8
  store i64 %1145, ptr %52, align 8, !tbaa !55
  %1150 = getelementptr inbounds nuw i8, ptr %1146, i64 %1140
  store i8 %1149, ptr %1150, align 1, !tbaa !5
  br label %1194

1151:                                             ; preds = %1059
  %1152 = load i64, ptr %1061, align 8, !tbaa !57
  %1153 = lshr i64 %1152, 16
  %1154 = load i64, ptr %52, align 8, !tbaa !55
  %1155 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1154, i64 1), !nosanitize !44
  %1156 = extractvalue { i64, i1 } %1155, 1, !nosanitize !44
  br i1 %1156, label %1157, label %1158, !prof !45, !nosanitize !44

1157:                                             ; preds = %1151
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1158:                                             ; preds = %1151
  %1159 = extractvalue { i64, i1 } %1155, 0, !nosanitize !44
  %1160 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %1161 = load ptr, ptr %1160, align 8, !tbaa !40
  %1162 = lshr i64 %1152, 24
  %1163 = trunc i64 %1162 to i8
  store i64 %1159, ptr %52, align 8, !tbaa !55
  %1164 = getelementptr inbounds nuw i8, ptr %1161, i64 %1154
  store i8 %1163, ptr %1164, align 1, !tbaa !5
  %1165 = load i64, ptr %52, align 8, !tbaa !55
  %1166 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1165, i64 1), !nosanitize !44
  %1167 = extractvalue { i64, i1 } %1166, 1, !nosanitize !44
  br i1 %1167, label %1168, label %1169, !prof !45, !nosanitize !44

1168:                                             ; preds = %1158
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1169:                                             ; preds = %1158
  %1170 = extractvalue { i64, i1 } %1166, 0, !nosanitize !44
  %1171 = load ptr, ptr %1160, align 8, !tbaa !40
  %1172 = trunc i64 %1153 to i8
  store i64 %1170, ptr %52, align 8, !tbaa !55
  %1173 = getelementptr inbounds nuw i8, ptr %1171, i64 %1165
  store i8 %1172, ptr %1173, align 1, !tbaa !5
  %1174 = load i64, ptr %1061, align 8, !tbaa !57
  %1175 = trunc i64 %1174 to i8
  %1176 = load i64, ptr %52, align 8, !tbaa !55
  %1177 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1176, i64 1), !nosanitize !44
  %1178 = extractvalue { i64, i1 } %1177, 1, !nosanitize !44
  br i1 %1178, label %1179, label %1180, !prof !45, !nosanitize !44

1179:                                             ; preds = %1169
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1180:                                             ; preds = %1169
  %1181 = extractvalue { i64, i1 } %1177, 0, !nosanitize !44
  %1182 = load ptr, ptr %1160, align 8, !tbaa !40
  %1183 = lshr i64 %1174, 8
  %1184 = trunc i64 %1183 to i8
  store i64 %1181, ptr %52, align 8, !tbaa !55
  %1185 = getelementptr inbounds nuw i8, ptr %1182, i64 %1176
  store i8 %1184, ptr %1185, align 1, !tbaa !5
  %1186 = load i64, ptr %52, align 8, !tbaa !55
  %1187 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1186, i64 1), !nosanitize !44
  %1188 = extractvalue { i64, i1 } %1187, 1, !nosanitize !44
  br i1 %1188, label %1189, label %1190, !prof !45, !nosanitize !44

1189:                                             ; preds = %1180
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1190:                                             ; preds = %1180
  %1191 = extractvalue { i64, i1 } %1187, 0, !nosanitize !44
  %1192 = load ptr, ptr %1160, align 8, !tbaa !40
  store i64 %1191, ptr %52, align 8, !tbaa !55
  %1193 = getelementptr inbounds nuw i8, ptr %1192, i64 %1186
  store i8 %1175, ptr %1193, align 1, !tbaa !5
  br label %1194

1194:                                             ; preds = %1190, %1144
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %1195 = load i32, ptr %1056, align 8, !tbaa !29
  %1196 = icmp sgt i32 %1195, 0
  br i1 %1196, label %1197, label %1199

1197:                                             ; preds = %1194
  %1198 = sub nsw i32 0, %1195
  store i32 %1198, ptr %1056, align 8, !tbaa !29
  br label %1199

1199:                                             ; preds = %1197, %1194
  %1200 = load i64, ptr %52, align 8, !tbaa !55
  %1201 = icmp eq i64 %1200, 0
  %1202 = zext i1 %1201 to i32
  br label %1203

1203:                                             ; preds = %1199, %1055, %1054, %1053, %1022, %1019, %988, %980, %955, %898, %786, %675, %346, %240, %129, %120, %99, %46, %39, %22, %19, %16, %12, %8, %4, %2
  %1204 = phi i32 [ -2, %39 ], [ -5, %46 ], [ 0, %99 ], [ -5, %129 ], [ 0, %346 ], [ 0, %955 ], [ 0, %980 ], [ %1202, %1199 ], [ 0, %240 ], [ -5, %120 ], [ -2, %22 ], [ 0, %786 ], [ 0, %898 ], [ 0, %1054 ], [ 1, %1055 ], [ 0, %1019 ], [ 0, %1022 ], [ 0, %1053 ], [ 0, %675 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ], [ 0, %988 ]
  ret i32 %1204
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @slide_hash(ptr noundef captures(none) %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %3 = load i32, ptr %2, align 8, !tbaa !31
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %5 = load i32, ptr %4, align 4, !tbaa !36
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds nuw i16, ptr %7, i64 %8
  br label %10

10:                                               ; preds = %21, %1
  %11 = phi ptr [ %9, %1 ], [ %13, %21 ]
  %12 = phi i32 [ %5, %1 ], [ %22, %21 ]
  %13 = getelementptr inbounds i8, ptr %11, i64 -2
  %14 = load i16, ptr %13, align 2, !tbaa !60
  %15 = zext i16 %14 to i32
  %16 = tail call i32 @llvm.usub.sat.i32(i32 %15, i32 %3)
  %17 = trunc nuw i32 %16 to i16
  store i16 %17, ptr %13, align 2, !tbaa !60
  %18 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %12, i32 1), !nosanitize !44
  %19 = extractvalue { i32, i1 } %18, 1, !nosanitize !44
  br i1 %19, label %20, label %21, !prof !45, !nosanitize !44

20:                                               ; preds = %10
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

21:                                               ; preds = %10
  %22 = extractvalue { i32, i1 } %18, 0, !nosanitize !44
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %10, !llvm.loop !82

24:                                               ; preds = %21
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  %27 = zext i32 %3 to i64
  %28 = getelementptr inbounds nuw i16, ptr %26, i64 %27
  br label %29

29:                                               ; preds = %40, %24
  %30 = phi ptr [ %28, %24 ], [ %32, %40 ]
  %31 = phi i32 [ %3, %24 ], [ %41, %40 ]
  %32 = getelementptr inbounds i8, ptr %30, i64 -2
  %33 = load i16, ptr %32, align 2, !tbaa !60
  %34 = zext i16 %33 to i32
  %35 = tail call i32 @llvm.usub.sat.i32(i32 %34, i32 %3)
  %36 = trunc nuw i32 %35 to i16
  store i16 %36, ptr %32, align 2, !tbaa !60
  %37 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %31, i32 1), !nosanitize !44
  %38 = extractvalue { i32, i1 } %37, 1, !nosanitize !44
  br i1 %38, label %39, label %40, !prof !45, !nosanitize !44

39:                                               ; preds = %29
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

40:                                               ; preds = %29
  %41 = extractvalue { i32, i1 } %37, 0, !nosanitize !44
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %29, !llvm.loop !84

43:                                               ; preds = %40
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 5960
  store i32 1, ptr %44, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateTune(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
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

; Function Attrs: nounwind uwtable
define dso_local i64 @deflateBound_z(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i64 %1, 3
  %4 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %3), !nosanitize !44
  %5 = extractvalue { i64, i1 } %4, 1, !nosanitize !44
  br i1 %5, label %6, label %7, !prof !45, !nosanitize !44

6:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

7:                                                ; preds = %2
  %8 = extractvalue { i64, i1 } %4, 0, !nosanitize !44
  %9 = lshr i64 %1, 8
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %9), !nosanitize !44
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !44
  br i1 %11, label %12, label %13, !prof !45, !nosanitize !44

12:                                               ; preds = %7
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

13:                                               ; preds = %7
  %14 = extractvalue { i64, i1 } %10, 0, !nosanitize !44
  %15 = lshr i64 %1, 9
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 %15), !nosanitize !44
  %17 = extractvalue { i64, i1 } %16, 1, !nosanitize !44
  br i1 %17, label %18, label %19, !prof !45, !nosanitize !44

18:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

19:                                               ; preds = %13
  %20 = extractvalue { i64, i1 } %16, 0, !nosanitize !44
  %21 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %20, i64 4), !nosanitize !44
  %22 = extractvalue { i64, i1 } %21, 1, !nosanitize !44
  br i1 %22, label %23, label %24, !prof !45, !nosanitize !44

23:                                               ; preds = %19
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

24:                                               ; preds = %19
  %25 = extractvalue { i64, i1 } %21, 0, !nosanitize !44
  %26 = icmp ult i64 %25, %1
  %27 = select i1 %26, i64 -1, i64 %25
  %28 = lshr i64 %1, 5
  %29 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %28), !nosanitize !44
  %30 = extractvalue { i64, i1 } %29, 1, !nosanitize !44
  br i1 false, label %31, label %32, !prof !45, !nosanitize !44

31:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

32:                                               ; preds = %24
  %33 = extractvalue { i64, i1 } %29, 0, !nosanitize !44
  %34 = lshr i64 %1, 7
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %34), !nosanitize !44
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !44
  br i1 false, label %37, label %38, !prof !45, !nosanitize !44

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !44
  %40 = lshr i64 %1, 11
  %41 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %39, i64 %40), !nosanitize !44
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !44
  br i1 false, label %43, label %44, !prof !45, !nosanitize !44

43:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

44:                                               ; preds = %38
  %45 = extractvalue { i64, i1 } %41, 0, !nosanitize !44
  %46 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %45, i64 7), !nosanitize !44
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !44
  br i1 false, label %48, label %49, !prof !45, !nosanitize !44

48:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

49:                                               ; preds = %44
  %50 = extractvalue { i64, i1 } %46, 0, !nosanitize !44
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
  %64 = load ptr, ptr %63, align 8, !tbaa !18
  %65 = icmp eq ptr %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %64, align 8, !tbaa !19
  %68 = icmp eq ptr %67, %0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = getelementptr inbounds nuw i8, ptr %64, i64 8
  %71 = load i32, ptr %70, align 8, !tbaa !28
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
  %74 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %73, i64 18), !nosanitize !44
  %75 = extractvalue { i64, i1 } %74, 0, !nosanitize !44
  %76 = extractvalue { i64, i1 } %74, 1, !nosanitize !44
  br i1 %76, label %77, label %210, !prof !45, !nosanitize !44

77:                                               ; preds = %72
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

78:                                               ; preds = %69, %69, %69, %69, %69, %69, %69, %69
  %79 = getelementptr inbounds nuw i8, ptr %64, i64 48
  %80 = load i32, ptr %79, align 8, !tbaa !29
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %80), !nosanitize !44
  %84 = extractvalue { i32, i1 } %83, 0, !nosanitize !44
  %85 = extractvalue { i32, i1 } %83, 1, !nosanitize !44
  br i1 %85, label %86, label %87, !prof !45, !nosanitize !44

86:                                               ; preds = %82
  tail call void @llvm.ubsantrap(i8 13) #10, !nosanitize !44
  unreachable, !nosanitize !44

87:                                               ; preds = %82, %78
  %88 = phi i32 [ %84, %82 ], [ %80, %78 ]
  switch i32 %88, label %155 [
    i32 0, label %156
    i32 1, label %89
    i32 2, label %94
  ]

89:                                               ; preds = %87
  %90 = getelementptr inbounds nuw i8, ptr %64, i64 172
  %91 = load i32, ptr %90, align 4, !tbaa !71
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i64 6, i64 10
  br label %156

94:                                               ; preds = %87
  %95 = getelementptr inbounds nuw i8, ptr %64, i64 56
  %96 = load ptr, ptr %95, align 8, !tbaa !89
  %97 = icmp eq ptr %96, null
  br i1 %97, label %156, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds nuw i8, ptr %96, i64 24
  %100 = load ptr, ptr %99, align 8, !tbaa !102
  %101 = icmp eq ptr %100, null
  br i1 %101, label %112, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds nuw i8, ptr %96, i64 32
  %104 = load i32, ptr %103, align 8, !tbaa !107
  %105 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %104, i32 2), !nosanitize !44
  %106 = extractvalue { i32, i1 } %105, 1, !nosanitize !44
  br i1 %106, label %107, label %108, !prof !45, !nosanitize !44

107:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

108:                                              ; preds = %102
  %109 = extractvalue { i32, i1 } %105, 0, !nosanitize !44
  %110 = zext i32 %109 to i64
  %111 = add nuw nsw i64 %110, 18
  br label %112

112:                                              ; preds = %108, %98
  %113 = phi i64 [ %111, %108 ], [ 18, %98 ]
  %114 = getelementptr inbounds nuw i8, ptr %96, i64 40
  %115 = load ptr, ptr %114, align 8, !tbaa !101
  %116 = icmp eq ptr %115, null
  br i1 %116, label %128, label %117

117:                                              ; preds = %123, %112
  %118 = phi i64 [ %124, %123 ], [ %113, %112 ]
  %119 = phi ptr [ %125, %123 ], [ %115, %112 ]
  %120 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %118, i64 1), !nosanitize !44
  %121 = extractvalue { i64, i1 } %120, 1, !nosanitize !44
  br i1 %121, label %122, label %123, !prof !45, !nosanitize !44

122:                                              ; preds = %117
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

123:                                              ; preds = %117
  %124 = extractvalue { i64, i1 } %120, 0, !nosanitize !44
  %125 = getelementptr inbounds nuw i8, ptr %119, i64 1
  %126 = load i8, ptr %119, align 1, !tbaa !5
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %117, !llvm.loop !115

128:                                              ; preds = %123, %112
  %129 = phi i64 [ %113, %112 ], [ %124, %123 ]
  %130 = getelementptr inbounds nuw i8, ptr %96, i64 56
  %131 = load ptr, ptr %130, align 8, !tbaa !99
  %132 = icmp eq ptr %131, null
  br i1 %132, label %144, label %133

133:                                              ; preds = %139, %128
  %134 = phi i64 [ %140, %139 ], [ %129, %128 ]
  %135 = phi ptr [ %141, %139 ], [ %131, %128 ]
  %136 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %134, i64 1), !nosanitize !44
  %137 = extractvalue { i64, i1 } %136, 1, !nosanitize !44
  br i1 %137, label %138, label %139, !prof !45, !nosanitize !44

138:                                              ; preds = %133
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

139:                                              ; preds = %133
  %140 = extractvalue { i64, i1 } %136, 0, !nosanitize !44
  %141 = getelementptr inbounds nuw i8, ptr %135, i64 1
  %142 = load i8, ptr %135, align 1, !tbaa !5
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %133, !llvm.loop !116

144:                                              ; preds = %139, %128
  %145 = phi i64 [ %129, %128 ], [ %140, %139 ]
  %146 = getelementptr inbounds nuw i8, ptr %96, i64 68
  %147 = load i32, ptr %146, align 4, !tbaa !104
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %144
  %150 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %145, i64 2), !nosanitize !44
  %151 = extractvalue { i64, i1 } %150, 1, !nosanitize !44
  br i1 %151, label %152, label %153, !prof !45, !nosanitize !44

152:                                              ; preds = %149
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

153:                                              ; preds = %149
  %154 = extractvalue { i64, i1 } %150, 0, !nosanitize !44
  br label %156

155:                                              ; preds = %87
  br label %156

156:                                              ; preds = %155, %153, %144, %94, %89, %87
  %157 = phi i64 [ 18, %155 ], [ %93, %89 ], [ 18, %94 ], [ 0, %87 ], [ %154, %153 ], [ %145, %144 ]
  %158 = getelementptr inbounds nuw i8, ptr %64, i64 84
  %159 = load i32, ptr %158, align 4, !tbaa !30
  %160 = icmp eq i32 %159, 15
  %161 = getelementptr inbounds nuw i8, ptr %64, i64 136
  %162 = load i32, ptr %161, align 8, !tbaa !50
  %163 = icmp eq i32 %162, 15
  %164 = select i1 %160, i1 %163, i1 false
  br i1 %164, label %178, label %165

165:                                              ; preds = %156
  %166 = icmp ugt i32 %159, %162
  br i1 %166, label %171, label %167

167:                                              ; preds = %165
  %168 = getelementptr inbounds nuw i8, ptr %64, i64 196
  %169 = load i32, ptr %168, align 4, !tbaa !47
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %167, %165
  br label %172

172:                                              ; preds = %171, %167
  %173 = phi i64 [ %52, %171 ], [ %27, %167 ]
  %174 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %173, i64 %157), !nosanitize !44
  %175 = extractvalue { i64, i1 } %174, 0, !nosanitize !44
  %176 = extractvalue { i64, i1 } %174, 1, !nosanitize !44
  br i1 %176, label %177, label %210, !prof !45, !nosanitize !44

177:                                              ; preds = %172
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

178:                                              ; preds = %156
  %179 = lshr i64 %1, 12
  %180 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %179), !nosanitize !44
  %181 = extractvalue { i64, i1 } %180, 1, !nosanitize !44
  br i1 false, label %182, label %183, !prof !45, !nosanitize !44

182:                                              ; preds = %178
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

183:                                              ; preds = %178
  %184 = extractvalue { i64, i1 } %180, 0, !nosanitize !44
  %185 = lshr i64 %1, 14
  %186 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %184, i64 %185), !nosanitize !44
  %187 = extractvalue { i64, i1 } %186, 1, !nosanitize !44
  br i1 false, label %188, label %189, !prof !45, !nosanitize !44

188:                                              ; preds = %183
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

189:                                              ; preds = %183
  %190 = extractvalue { i64, i1 } %186, 0, !nosanitize !44
  %191 = lshr i64 %1, 25
  %192 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %190, i64 %191), !nosanitize !44
  %193 = extractvalue { i64, i1 } %192, 1, !nosanitize !44
  br i1 false, label %194, label %195, !prof !45, !nosanitize !44

194:                                              ; preds = %189
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

195:                                              ; preds = %189
  %196 = extractvalue { i64, i1 } %192, 0, !nosanitize !44
  %197 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %196, i64 13), !nosanitize !44
  %198 = extractvalue { i64, i1 } %197, 1, !nosanitize !44
  br i1 false, label %199, label %200, !prof !45, !nosanitize !44

199:                                              ; preds = %195
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

200:                                              ; preds = %195
  %201 = extractvalue { i64, i1 } %197, 0, !nosanitize !44
  %202 = add i64 %201, -6
  %203 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %202, i64 %157), !nosanitize !44
  %204 = extractvalue { i64, i1 } %203, 1, !nosanitize !44
  br i1 %204, label %205, label %206, !prof !45, !nosanitize !44

205:                                              ; preds = %200
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

206:                                              ; preds = %200
  %207 = extractvalue { i64, i1 } %203, 0, !nosanitize !44
  %208 = icmp ult i64 %207, %1
  %209 = select i1 %208, i64 -1, i64 %207
  br label %210

210:                                              ; preds = %206, %172, %72
  %211 = phi i64 [ %209, %206 ], [ %75, %72 ], [ %175, %172 ]
  ret i64 %211
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind uwtable
define dso_local i64 @deflateBound(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i64 %1, 3
  %4 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %3), !nosanitize !44
  %5 = extractvalue { i64, i1 } %4, 1, !nosanitize !44
  br i1 %5, label %6, label %7, !prof !45, !nosanitize !44

6:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

7:                                                ; preds = %2
  %8 = extractvalue { i64, i1 } %4, 0, !nosanitize !44
  %9 = lshr i64 %1, 8
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %9), !nosanitize !44
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !44
  br i1 %11, label %12, label %13, !prof !45, !nosanitize !44

12:                                               ; preds = %7
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

13:                                               ; preds = %7
  %14 = extractvalue { i64, i1 } %10, 0, !nosanitize !44
  %15 = lshr i64 %1, 9
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 %15), !nosanitize !44
  %17 = extractvalue { i64, i1 } %16, 1, !nosanitize !44
  br i1 %17, label %18, label %19, !prof !45, !nosanitize !44

18:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

19:                                               ; preds = %13
  %20 = extractvalue { i64, i1 } %16, 0, !nosanitize !44
  %21 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %20, i64 4), !nosanitize !44
  %22 = extractvalue { i64, i1 } %21, 1, !nosanitize !44
  br i1 %22, label %23, label %24, !prof !45, !nosanitize !44

23:                                               ; preds = %19
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

24:                                               ; preds = %19
  %25 = extractvalue { i64, i1 } %21, 0, !nosanitize !44
  %26 = icmp ult i64 %25, %1
  %27 = select i1 %26, i64 -1, i64 %25
  %28 = lshr i64 %1, 5
  %29 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %28), !nosanitize !44
  %30 = extractvalue { i64, i1 } %29, 1, !nosanitize !44
  br i1 false, label %31, label %32, !prof !45, !nosanitize !44

31:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

32:                                               ; preds = %24
  %33 = extractvalue { i64, i1 } %29, 0, !nosanitize !44
  %34 = lshr i64 %1, 7
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %34), !nosanitize !44
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !44
  br i1 false, label %37, label %38, !prof !45, !nosanitize !44

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !44
  %40 = lshr i64 %1, 11
  %41 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %39, i64 %40), !nosanitize !44
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !44
  br i1 false, label %43, label %44, !prof !45, !nosanitize !44

43:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

44:                                               ; preds = %38
  %45 = extractvalue { i64, i1 } %41, 0, !nosanitize !44
  %46 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %45, i64 7), !nosanitize !44
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !44
  br i1 false, label %48, label %49, !prof !45, !nosanitize !44

48:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

49:                                               ; preds = %44
  %50 = extractvalue { i64, i1 } %46, 0, !nosanitize !44
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
  %64 = load ptr, ptr %63, align 8, !tbaa !18
  %65 = icmp eq ptr %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %64, align 8, !tbaa !19
  %68 = icmp eq ptr %67, %0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = getelementptr inbounds nuw i8, ptr %64, i64 8
  %71 = load i32, ptr %70, align 8, !tbaa !28
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
  %74 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %73, i64 18), !nosanitize !44
  %75 = extractvalue { i64, i1 } %74, 0, !nosanitize !44
  %76 = extractvalue { i64, i1 } %74, 1, !nosanitize !44
  br i1 %76, label %77, label %210, !prof !45, !nosanitize !44

77:                                               ; preds = %72
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

78:                                               ; preds = %69, %69, %69, %69, %69, %69, %69, %69
  %79 = getelementptr inbounds nuw i8, ptr %64, i64 48
  %80 = load i32, ptr %79, align 8, !tbaa !29
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %80), !nosanitize !44
  %84 = extractvalue { i32, i1 } %83, 0, !nosanitize !44
  %85 = extractvalue { i32, i1 } %83, 1, !nosanitize !44
  br i1 %85, label %86, label %87, !prof !45, !nosanitize !44

86:                                               ; preds = %82
  tail call void @llvm.ubsantrap(i8 13) #10, !nosanitize !44
  unreachable, !nosanitize !44

87:                                               ; preds = %82, %78
  %88 = phi i32 [ %84, %82 ], [ %80, %78 ]
  switch i32 %88, label %155 [
    i32 0, label %156
    i32 1, label %89
    i32 2, label %94
  ]

89:                                               ; preds = %87
  %90 = getelementptr inbounds nuw i8, ptr %64, i64 172
  %91 = load i32, ptr %90, align 4, !tbaa !71
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i64 6, i64 10
  br label %156

94:                                               ; preds = %87
  %95 = getelementptr inbounds nuw i8, ptr %64, i64 56
  %96 = load ptr, ptr %95, align 8, !tbaa !89
  %97 = icmp eq ptr %96, null
  br i1 %97, label %156, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds nuw i8, ptr %96, i64 24
  %100 = load ptr, ptr %99, align 8, !tbaa !102
  %101 = icmp eq ptr %100, null
  br i1 %101, label %112, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds nuw i8, ptr %96, i64 32
  %104 = load i32, ptr %103, align 8, !tbaa !107
  %105 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %104, i32 2), !nosanitize !44
  %106 = extractvalue { i32, i1 } %105, 1, !nosanitize !44
  br i1 %106, label %107, label %108, !prof !45, !nosanitize !44

107:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

108:                                              ; preds = %102
  %109 = extractvalue { i32, i1 } %105, 0, !nosanitize !44
  %110 = zext i32 %109 to i64
  %111 = add nuw nsw i64 %110, 18
  br label %112

112:                                              ; preds = %108, %98
  %113 = phi i64 [ %111, %108 ], [ 18, %98 ]
  %114 = getelementptr inbounds nuw i8, ptr %96, i64 40
  %115 = load ptr, ptr %114, align 8, !tbaa !101
  %116 = icmp eq ptr %115, null
  br i1 %116, label %128, label %117

117:                                              ; preds = %123, %112
  %118 = phi i64 [ %124, %123 ], [ %113, %112 ]
  %119 = phi ptr [ %125, %123 ], [ %115, %112 ]
  %120 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %118, i64 1), !nosanitize !44
  %121 = extractvalue { i64, i1 } %120, 1, !nosanitize !44
  br i1 %121, label %122, label %123, !prof !45, !nosanitize !44

122:                                              ; preds = %117
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

123:                                              ; preds = %117
  %124 = extractvalue { i64, i1 } %120, 0, !nosanitize !44
  %125 = getelementptr inbounds nuw i8, ptr %119, i64 1
  %126 = load i8, ptr %119, align 1, !tbaa !5
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %117, !llvm.loop !115

128:                                              ; preds = %123, %112
  %129 = phi i64 [ %113, %112 ], [ %124, %123 ]
  %130 = getelementptr inbounds nuw i8, ptr %96, i64 56
  %131 = load ptr, ptr %130, align 8, !tbaa !99
  %132 = icmp eq ptr %131, null
  br i1 %132, label %144, label %133

133:                                              ; preds = %139, %128
  %134 = phi i64 [ %140, %139 ], [ %129, %128 ]
  %135 = phi ptr [ %141, %139 ], [ %131, %128 ]
  %136 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %134, i64 1), !nosanitize !44
  %137 = extractvalue { i64, i1 } %136, 1, !nosanitize !44
  br i1 %137, label %138, label %139, !prof !45, !nosanitize !44

138:                                              ; preds = %133
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

139:                                              ; preds = %133
  %140 = extractvalue { i64, i1 } %136, 0, !nosanitize !44
  %141 = getelementptr inbounds nuw i8, ptr %135, i64 1
  %142 = load i8, ptr %135, align 1, !tbaa !5
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %133, !llvm.loop !116

144:                                              ; preds = %139, %128
  %145 = phi i64 [ %129, %128 ], [ %140, %139 ]
  %146 = getelementptr inbounds nuw i8, ptr %96, i64 68
  %147 = load i32, ptr %146, align 4, !tbaa !104
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %144
  %150 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %145, i64 2), !nosanitize !44
  %151 = extractvalue { i64, i1 } %150, 1, !nosanitize !44
  br i1 %151, label %152, label %153, !prof !45, !nosanitize !44

152:                                              ; preds = %149
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

153:                                              ; preds = %149
  %154 = extractvalue { i64, i1 } %150, 0, !nosanitize !44
  br label %156

155:                                              ; preds = %87
  br label %156

156:                                              ; preds = %155, %153, %144, %94, %89, %87
  %157 = phi i64 [ 18, %155 ], [ %93, %89 ], [ 18, %94 ], [ 0, %87 ], [ %154, %153 ], [ %145, %144 ]
  %158 = getelementptr inbounds nuw i8, ptr %64, i64 84
  %159 = load i32, ptr %158, align 4, !tbaa !30
  %160 = icmp eq i32 %159, 15
  %161 = getelementptr inbounds nuw i8, ptr %64, i64 136
  %162 = load i32, ptr %161, align 8, !tbaa !50
  %163 = icmp eq i32 %162, 15
  %164 = select i1 %160, i1 %163, i1 false
  br i1 %164, label %178, label %165

165:                                              ; preds = %156
  %166 = icmp ugt i32 %159, %162
  br i1 %166, label %171, label %167

167:                                              ; preds = %165
  %168 = getelementptr inbounds nuw i8, ptr %64, i64 196
  %169 = load i32, ptr %168, align 4, !tbaa !47
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %167, %165
  br label %172

172:                                              ; preds = %171, %167
  %173 = phi i64 [ %52, %171 ], [ %27, %167 ]
  %174 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %173, i64 %157), !nosanitize !44
  %175 = extractvalue { i64, i1 } %174, 0, !nosanitize !44
  %176 = extractvalue { i64, i1 } %174, 1, !nosanitize !44
  br i1 %176, label %177, label %210, !prof !45, !nosanitize !44

177:                                              ; preds = %172
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

178:                                              ; preds = %156
  %179 = lshr i64 %1, 12
  %180 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %179), !nosanitize !44
  %181 = extractvalue { i64, i1 } %180, 1, !nosanitize !44
  br i1 false, label %182, label %183, !prof !45, !nosanitize !44

182:                                              ; preds = %178
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

183:                                              ; preds = %178
  %184 = extractvalue { i64, i1 } %180, 0, !nosanitize !44
  %185 = lshr i64 %1, 14
  %186 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %184, i64 %185), !nosanitize !44
  %187 = extractvalue { i64, i1 } %186, 1, !nosanitize !44
  br i1 false, label %188, label %189, !prof !45, !nosanitize !44

188:                                              ; preds = %183
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

189:                                              ; preds = %183
  %190 = extractvalue { i64, i1 } %186, 0, !nosanitize !44
  %191 = lshr i64 %1, 25
  %192 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %190, i64 %191), !nosanitize !44
  %193 = extractvalue { i64, i1 } %192, 1, !nosanitize !44
  br i1 false, label %194, label %195, !prof !45, !nosanitize !44

194:                                              ; preds = %189
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

195:                                              ; preds = %189
  %196 = extractvalue { i64, i1 } %192, 0, !nosanitize !44
  %197 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %196, i64 13), !nosanitize !44
  %198 = extractvalue { i64, i1 } %197, 1, !nosanitize !44
  br i1 false, label %199, label %200, !prof !45, !nosanitize !44

199:                                              ; preds = %195
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

200:                                              ; preds = %195
  %201 = extractvalue { i64, i1 } %197, 0, !nosanitize !44
  %202 = add i64 %201, -6
  %203 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %202, i64 %157), !nosanitize !44
  %204 = extractvalue { i64, i1 } %203, 1, !nosanitize !44
  br i1 %204, label %205, label %206, !prof !45, !nosanitize !44

205:                                              ; preds = %200
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

206:                                              ; preds = %200
  %207 = extractvalue { i64, i1 } %203, 0, !nosanitize !44
  %208 = icmp ult i64 %207, %1
  %209 = select i1 %208, i64 -1, i64 %207
  br label %210

210:                                              ; preds = %206, %172, %72
  %211 = phi i64 [ %209, %206 ], [ %75, %72 ], [ %175, %172 ]
  ret i64 %211
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_pending(ptr noundef captures(none) %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %3) #8
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %5 = load i64, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i32, ptr %6, align 8, !tbaa !96
  %8 = zext i32 %7 to i64
  %9 = tail call i64 @llvm.umin.i64(i64 %5, i64 %8)
  %10 = trunc nuw i64 %9 to i32
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %44, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %14 = load ptr, ptr %13, align 8, !tbaa !95
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %16, i64 %9, i1 false)
  %17 = load ptr, ptr %13, align 8, !tbaa !95
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 %9
  store ptr %18, ptr %13, align 8, !tbaa !95
  %19 = load ptr, ptr %15, align 8, !tbaa !56
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 %9
  store ptr %20, ptr %15, align 8, !tbaa !56
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %22 = load i64, ptr %21, align 8, !tbaa !97
  %23 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %22, i64 %9), !nosanitize !44
  %24 = extractvalue { i64, i1 } %23, 1, !nosanitize !44
  br i1 %24, label %25, label %26, !prof !45, !nosanitize !44

25:                                               ; preds = %12
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

26:                                               ; preds = %12
  %27 = extractvalue { i64, i1 } %23, 0, !nosanitize !44
  store i64 %27, ptr %21, align 8, !tbaa !97
  %28 = load i32, ptr %6, align 8, !tbaa !96
  %29 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %28, i32 %10), !nosanitize !44
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !44
  br i1 %30, label %31, label %32, !prof !45, !nosanitize !44

31:                                               ; preds = %26
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

32:                                               ; preds = %26
  %33 = extractvalue { i32, i1 } %29, 0, !nosanitize !44
  store i32 %33, ptr %6, align 8, !tbaa !96
  %34 = load i64, ptr %4, align 8, !tbaa !55
  %35 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %34, i64 %9), !nosanitize !44
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !44
  br i1 %36, label %37, label %38, !prof !45, !nosanitize !44

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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

27:                                               ; preds = %273, %8
  %28 = load i32, ptr %18, align 4, !tbaa !90
  %29 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %28, i32 42), !nosanitize !44
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !44
  br i1 %30, label %31, label %32, !prof !45, !nosanitize !44

31:                                               ; preds = %27
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

32:                                               ; preds = %27
  %33 = extractvalue { i32, i1 } %29, 0, !nosanitize !44
  %34 = lshr i32 %33, 3
  %35 = load ptr, ptr %0, align 8, !tbaa !19
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 32
  %37 = load i32, ptr %36, align 8, !tbaa !96
  %38 = icmp ult i32 %37, %34
  br i1 %38, label %277, label %39

39:                                               ; preds = %32
  %40 = sub nuw i32 %37, %34
  %41 = load i32, ptr %19, align 4, !tbaa !71
  %42 = zext i32 %41 to i64
  %43 = load i64, ptr %20, align 8, !tbaa !72
  %44 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %42, i64 %43), !nosanitize !44
  %45 = extractvalue { i64, i1 } %44, 1, !nosanitize !44
  br i1 %45, label %46, label %47, !prof !45, !nosanitize !44

46:                                               ; preds = %39
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

47:                                               ; preds = %39
  %48 = extractvalue { i64, i1 } %44, 0, !nosanitize !44
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %51 = load i32, ptr %50, align 8, !tbaa !79
  %52 = and i64 %48, 4294967295
  %53 = zext i32 %51 to i64
  %54 = add nuw nsw i64 %52, %53
  %55 = icmp samesign ult i64 %54, 65535
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !44
  %58 = extractvalue { i32, i1 } %57, 1, !nosanitize !44
  br i1 false, label %59, label %60, !prof !45, !nosanitize !44

59:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

60:                                               ; preds = %56
  %61 = extractvalue { i32, i1 } %57, 0, !nosanitize !44
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
  %71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !44
  %72 = extractvalue { i32, i1 } %71, 1, !nosanitize !44
  br i1 %72, label %73, label %74, !prof !45, !nosanitize !44

73:                                               ; preds = %70
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

74:                                               ; preds = %70
  %75 = extractvalue { i32, i1 } %71, 0, !nosanitize !44
  %76 = icmp eq i32 %64, %75
  br i1 %76, label %77, label %277

77:                                               ; preds = %74, %62
  br i1 %23, label %78, label %86

78:                                               ; preds = %77
  %79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !44
  %80 = extractvalue { i32, i1 } %79, 1, !nosanitize !44
  br i1 %80, label %81, label %82, !prof !45, !nosanitize !44

81:                                               ; preds = %78
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

82:                                               ; preds = %78
  %83 = extractvalue { i32, i1 } %79, 0, !nosanitize !44
  %84 = icmp eq i32 %64, %83
  %85 = zext i1 %84 to i32
  br label %86

86:                                               ; preds = %82, %77
  %87 = phi i32 [ 0, %77 ], [ %85, %82 ]
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i32 noundef %87) #8
  %88 = load i64, ptr %25, align 8, !tbaa !55
  %89 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %88, i64 4), !nosanitize !44
  %90 = extractvalue { i64, i1 } %89, 1, !nosanitize !44
  br i1 %90, label %91, label %92, !prof !45, !nosanitize !44

91:                                               ; preds = %86
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

92:                                               ; preds = %86
  %93 = extractvalue { i64, i1 } %89, 0, !nosanitize !44
  %94 = load ptr, ptr %24, align 8, !tbaa !40
  %95 = trunc i32 %64 to i8
  %96 = getelementptr inbounds nuw i8, ptr %94, i64 %93
  store i8 %95, ptr %96, align 1, !tbaa !5
  %97 = load i64, ptr %25, align 8, !tbaa !55
  %98 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %97, i64 3), !nosanitize !44
  %99 = extractvalue { i64, i1 } %98, 1, !nosanitize !44
  br i1 %99, label %100, label %101, !prof !45, !nosanitize !44

100:                                              ; preds = %92
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

101:                                              ; preds = %92
  %102 = extractvalue { i64, i1 } %98, 0, !nosanitize !44
  %103 = load ptr, ptr %24, align 8, !tbaa !40
  %104 = lshr i32 %64, 8
  %105 = trunc i32 %104 to i8
  %106 = getelementptr inbounds nuw i8, ptr %103, i64 %102
  store i8 %105, ptr %106, align 1, !tbaa !5
  %107 = load i64, ptr %25, align 8, !tbaa !55
  %108 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %107, i64 2), !nosanitize !44
  %109 = extractvalue { i64, i1 } %108, 1, !nosanitize !44
  br i1 %109, label %110, label %111, !prof !45, !nosanitize !44

110:                                              ; preds = %101
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

111:                                              ; preds = %101
  %112 = extractvalue { i64, i1 } %108, 0, !nosanitize !44
  %113 = load ptr, ptr %24, align 8, !tbaa !40
  %114 = xor i32 %64, -1
  %115 = trunc i32 %114 to i8
  %116 = getelementptr inbounds nuw i8, ptr %113, i64 %112
  store i8 %115, ptr %116, align 1, !tbaa !5
  %117 = load i64, ptr %25, align 8, !tbaa !55
  %118 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %117, i64 1), !nosanitize !44
  %119 = extractvalue { i64, i1 } %118, 1, !nosanitize !44
  br i1 %119, label %120, label %121, !prof !45, !nosanitize !44

120:                                              ; preds = %111
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

121:                                              ; preds = %111
  %122 = extractvalue { i64, i1 } %118, 0, !nosanitize !44
  %123 = load ptr, ptr %24, align 8, !tbaa !40
  %124 = lshr i32 %114, 8
  %125 = trunc i32 %124 to i8
  %126 = getelementptr inbounds nuw i8, ptr %123, i64 %122
  store i8 %125, ptr %126, align 1, !tbaa !5
  %127 = load ptr, ptr %0, align 8, !tbaa !19
  %128 = getelementptr inbounds nuw i8, ptr %127, i64 56
  %129 = load ptr, ptr %128, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %129) #8
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 40
  %131 = load i64, ptr %130, align 8, !tbaa !55
  %132 = getelementptr inbounds nuw i8, ptr %127, i64 32
  %133 = load i32, ptr %132, align 8, !tbaa !96
  %134 = zext i32 %133 to i64
  %135 = tail call i64 @llvm.umin.i64(i64 %131, i64 %134)
  %136 = trunc nuw i64 %135 to i32
  %137 = icmp eq i64 %135, 0
  br i1 %137, label %170, label %138

138:                                              ; preds = %121
  %139 = getelementptr inbounds nuw i8, ptr %127, i64 24
  %140 = load ptr, ptr %139, align 8, !tbaa !95
  %141 = getelementptr inbounds nuw i8, ptr %129, i64 32
  %142 = load ptr, ptr %141, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %140, ptr align 1 %142, i64 %135, i1 false)
  %143 = load ptr, ptr %139, align 8, !tbaa !95
  %144 = getelementptr inbounds nuw i8, ptr %143, i64 %135
  store ptr %144, ptr %139, align 8, !tbaa !95
  %145 = load ptr, ptr %141, align 8, !tbaa !56
  %146 = getelementptr inbounds nuw i8, ptr %145, i64 %135
  store ptr %146, ptr %141, align 8, !tbaa !56
  %147 = getelementptr inbounds nuw i8, ptr %127, i64 40
  %148 = load i64, ptr %147, align 8, !tbaa !97
  %149 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %148, i64 %135), !nosanitize !44
  %150 = extractvalue { i64, i1 } %149, 1, !nosanitize !44
  br i1 %150, label %151, label %152, !prof !45, !nosanitize !44

151:                                              ; preds = %138
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

152:                                              ; preds = %138
  %153 = extractvalue { i64, i1 } %149, 0, !nosanitize !44
  store i64 %153, ptr %147, align 8, !tbaa !97
  %154 = load i32, ptr %132, align 8, !tbaa !96
  %155 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %154, i32 %136), !nosanitize !44
  %156 = extractvalue { i32, i1 } %155, 1, !nosanitize !44
  br i1 %156, label %157, label %158, !prof !45, !nosanitize !44

157:                                              ; preds = %152
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

158:                                              ; preds = %152
  %159 = extractvalue { i32, i1 } %155, 0, !nosanitize !44
  store i32 %159, ptr %132, align 8, !tbaa !96
  %160 = load i64, ptr %130, align 8, !tbaa !55
  %161 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %160, i64 %135), !nosanitize !44
  %162 = extractvalue { i64, i1 } %161, 1, !nosanitize !44
  br i1 %162, label %163, label %164, !prof !45, !nosanitize !44

163:                                              ; preds = %158
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

164:                                              ; preds = %158
  %165 = extractvalue { i64, i1 } %161, 0, !nosanitize !44
  store i64 %165, ptr %130, align 8, !tbaa !55
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = getelementptr inbounds nuw i8, ptr %129, i64 16
  %169 = load ptr, ptr %168, align 8, !tbaa !40
  store ptr %169, ptr %141, align 8, !tbaa !56
  br label %170

170:                                              ; preds = %167, %164, %121
  %171 = icmp eq i32 %49, 0
  br i1 %171, label %209, label %172

172:                                              ; preds = %170
  %173 = tail call i32 @llvm.umin.i32(i32 %64, i32 %49)
  %174 = load ptr, ptr %0, align 8, !tbaa !19
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 24
  %176 = load ptr, ptr %175, align 8, !tbaa !95
  %177 = load ptr, ptr %26, align 8, !tbaa !34
  %178 = load i64, ptr %20, align 8, !tbaa !72
  %179 = getelementptr inbounds i8, ptr %177, i64 %178
  %180 = zext i32 %173 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %176, ptr align 1 %179, i64 %180, i1 false)
  %181 = load ptr, ptr %0, align 8, !tbaa !19
  %182 = getelementptr inbounds nuw i8, ptr %181, i64 24
  %183 = load ptr, ptr %182, align 8, !tbaa !95
  %184 = getelementptr inbounds nuw i8, ptr %183, i64 %180
  store ptr %184, ptr %182, align 8, !tbaa !95
  %185 = getelementptr inbounds nuw i8, ptr %181, i64 32
  %186 = load i32, ptr %185, align 8, !tbaa !96
  %187 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %186, i32 %173), !nosanitize !44
  %188 = extractvalue { i32, i1 } %187, 1, !nosanitize !44
  br i1 %188, label %189, label %190, !prof !45, !nosanitize !44

189:                                              ; preds = %172
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

190:                                              ; preds = %172
  %191 = extractvalue { i32, i1 } %187, 0, !nosanitize !44
  store i32 %191, ptr %185, align 8, !tbaa !96
  %192 = getelementptr inbounds nuw i8, ptr %181, i64 40
  %193 = load i64, ptr %192, align 8, !tbaa !97
  %194 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %193, i64 %180), !nosanitize !44
  %195 = extractvalue { i64, i1 } %194, 1, !nosanitize !44
  br i1 %195, label %196, label %197, !prof !45, !nosanitize !44

196:                                              ; preds = %197, %190
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

197:                                              ; preds = %190
  %198 = extractvalue { i64, i1 } %194, 0, !nosanitize !44
  store i64 %198, ptr %192, align 8, !tbaa !97
  %199 = load i64, ptr %20, align 8, !tbaa !72
  %200 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %199, i64 %180), !nosanitize !44
  %201 = extractvalue { i64, i1 } %200, 1, !nosanitize !44
  br i1 %201, label %196, label %202, !prof !45, !nosanitize !44

202:                                              ; preds = %197
  %203 = extractvalue { i64, i1 } %200, 0, !nosanitize !44
  store i64 %203, ptr %20, align 8, !tbaa !72
  %204 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %64, i32 %173), !nosanitize !44
  %205 = extractvalue { i32, i1 } %204, 1, !nosanitize !44
  br i1 false, label %206, label %207, !prof !45, !nosanitize !44

206:                                              ; preds = %202
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

207:                                              ; preds = %202
  %208 = extractvalue { i32, i1 } %204, 0, !nosanitize !44
  br label %209

209:                                              ; preds = %207, %170
  %210 = phi i32 [ %208, %207 ], [ %64, %170 ]
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %273, label %212

212:                                              ; preds = %209
  %213 = load ptr, ptr %0, align 8, !tbaa !19
  %214 = getelementptr inbounds nuw i8, ptr %213, i64 24
  %215 = load ptr, ptr %214, align 8, !tbaa !95
  %216 = getelementptr inbounds nuw i8, ptr %213, i64 8
  %217 = load i32, ptr %216, align 8, !tbaa !79
  %218 = tail call i32 @llvm.umin.i32(i32 %217, i32 %210)
  %219 = icmp eq i32 %217, 0
  br i1 %219, label %253, label %220

220:                                              ; preds = %212
  %221 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %217, i32 %218), !nosanitize !44
  %222 = extractvalue { i32, i1 } %221, 1, !nosanitize !44
  br i1 false, label %223, label %224, !prof !45, !nosanitize !44

223:                                              ; preds = %220
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

224:                                              ; preds = %220
  %225 = extractvalue { i32, i1 } %221, 0, !nosanitize !44
  store i32 %225, ptr %216, align 8, !tbaa !79
  %226 = load ptr, ptr %213, align 8, !tbaa !80
  %227 = zext i32 %218 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %215, ptr align 1 %226, i64 %227, i1 false)
  %228 = getelementptr inbounds nuw i8, ptr %213, i64 56
  %229 = load ptr, ptr %228, align 8, !tbaa !18
  %230 = getelementptr inbounds nuw i8, ptr %229, i64 48
  %231 = load i32, ptr %230, align 8, !tbaa !29
  switch i32 %231, label %240 [
    i32 1, label %232
    i32 2, label %236
  ]

232:                                              ; preds = %224
  %233 = getelementptr inbounds nuw i8, ptr %213, i64 96
  %234 = load i64, ptr %233, align 8, !tbaa !57
  %235 = tail call i64 @adler32(i64 noundef %234, ptr noundef %215, i32 noundef %218) #8
  store i64 %235, ptr %233, align 8, !tbaa !57
  br label %240

236:                                              ; preds = %224
  %237 = getelementptr inbounds nuw i8, ptr %213, i64 96
  %238 = load i64, ptr %237, align 8, !tbaa !57
  %239 = tail call i64 @crc32(i64 noundef %238, ptr noundef %215, i32 noundef %218) #8
  store i64 %239, ptr %237, align 8, !tbaa !57
  br label %240

240:                                              ; preds = %236, %232, %224
  %241 = load ptr, ptr %213, align 8, !tbaa !80
  %242 = getelementptr inbounds nuw i8, ptr %241, i64 %227
  store ptr %242, ptr %213, align 8, !tbaa !80
  %243 = getelementptr inbounds nuw i8, ptr %213, i64 16
  %244 = load i64, ptr %243, align 8, !tbaa !53
  %245 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %244, i64 %227), !nosanitize !44
  %246 = extractvalue { i64, i1 } %245, 1, !nosanitize !44
  br i1 %246, label %247, label %248, !prof !45, !nosanitize !44

247:                                              ; preds = %240
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

248:                                              ; preds = %240
  %249 = extractvalue { i64, i1 } %245, 0, !nosanitize !44
  store i64 %249, ptr %243, align 8, !tbaa !53
  %250 = load ptr, ptr %0, align 8, !tbaa !19
  %251 = getelementptr inbounds nuw i8, ptr %250, i64 24
  %252 = load ptr, ptr %251, align 8, !tbaa !95
  br label %253

253:                                              ; preds = %248, %212
  %254 = phi ptr [ %215, %212 ], [ %252, %248 ]
  %255 = phi ptr [ %213, %212 ], [ %250, %248 ]
  %256 = getelementptr inbounds nuw i8, ptr %255, i64 24
  %257 = zext i32 %210 to i64
  %258 = getelementptr inbounds nuw i8, ptr %254, i64 %257
  store ptr %258, ptr %256, align 8, !tbaa !95
  %259 = getelementptr inbounds nuw i8, ptr %255, i64 32
  %260 = load i32, ptr %259, align 8, !tbaa !96
  %261 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %260, i32 %210), !nosanitize !44
  %262 = extractvalue { i32, i1 } %261, 1, !nosanitize !44
  br i1 %262, label %263, label %264, !prof !45, !nosanitize !44

263:                                              ; preds = %253
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

264:                                              ; preds = %253
  %265 = extractvalue { i32, i1 } %261, 0, !nosanitize !44
  store i32 %265, ptr %259, align 8, !tbaa !96
  %266 = getelementptr inbounds nuw i8, ptr %255, i64 40
  %267 = load i64, ptr %266, align 8, !tbaa !97
  %268 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %267, i64 %257), !nosanitize !44
  %269 = extractvalue { i64, i1 } %268, 1, !nosanitize !44
  br i1 %269, label %270, label %271, !prof !45, !nosanitize !44

270:                                              ; preds = %264
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

271:                                              ; preds = %264
  %272 = extractvalue { i64, i1 } %268, 0, !nosanitize !44
  store i64 %272, ptr %266, align 8, !tbaa !97
  br label %273

273:                                              ; preds = %271, %209
  %274 = icmp eq i32 %87, 0
  br i1 %274, label %27, label %275, !llvm.loop !117

275:                                              ; preds = %273
  %276 = load ptr, ptr %0, align 8, !tbaa !19
  br label %277, !llvm.loop !117

277:                                              ; preds = %275, %74, %66, %32
  %278 = phi ptr [ %276, %275 ], [ %35, %32 ], [ %35, %66 ], [ %35, %74 ]
  %279 = phi i1 [ false, %275 ], [ true, %32 ], [ true, %66 ], [ true, %74 ]
  %280 = getelementptr inbounds nuw i8, ptr %278, i64 8
  %281 = load i32, ptr %280, align 8, !tbaa !79
  %282 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %17, i32 %281), !nosanitize !44
  %283 = extractvalue { i32, i1 } %282, 0, !nosanitize !44
  %284 = extractvalue { i32, i1 } %282, 1, !nosanitize !44
  br i1 %284, label %285, label %286, !prof !45, !nosanitize !44

285:                                              ; preds = %277
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

286:                                              ; preds = %277
  %287 = icmp eq i32 %283, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %286
  %289 = load i32, ptr %19, align 4, !tbaa !71
  %290 = zext i32 %289 to i64
  br label %368

291:                                              ; preds = %286
  %292 = load i32, ptr %10, align 8, !tbaa !31
  %293 = icmp ult i32 %283, %292
  br i1 %293, label %303, label %294

294:                                              ; preds = %291
  %295 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 2, ptr %295, align 8, !tbaa !114
  %296 = load ptr, ptr %26, align 8, !tbaa !34
  %297 = load ptr, ptr %278, align 8, !tbaa !80
  %298 = zext i32 %292 to i64
  %299 = sub nsw i64 0, %298
  %300 = getelementptr inbounds i8, ptr %297, i64 %299
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %296, ptr align 1 %300, i64 %298, i1 false)
  %301 = load i32, ptr %10, align 8, !tbaa !31
  store i32 %301, ptr %19, align 4, !tbaa !71
  %302 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %301, ptr %302, align 4, !tbaa !74
  br label %365

303:                                              ; preds = %291
  %304 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %305 = load i64, ptr %304, align 8, !tbaa !59
  %306 = load i32, ptr %19, align 4, !tbaa !71
  %307 = zext i32 %306 to i64
  %308 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %305, i64 %307), !nosanitize !44
  %309 = extractvalue { i64, i1 } %308, 1, !nosanitize !44
  br i1 %309, label %310, label %311, !prof !45, !nosanitize !44

310:                                              ; preds = %303
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

311:                                              ; preds = %303
  %312 = extractvalue { i64, i1 } %308, 0, !nosanitize !44
  %313 = zext i32 %283 to i64
  %314 = icmp ugt i64 %312, %313
  br i1 %314, label %336, label %315

315:                                              ; preds = %311
  %316 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %306, i32 %292), !nosanitize !44
  %317 = extractvalue { i32, i1 } %316, 1, !nosanitize !44
  br i1 %317, label %318, label %319, !prof !45, !nosanitize !44

318:                                              ; preds = %315
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

319:                                              ; preds = %315
  %320 = extractvalue { i32, i1 } %316, 0, !nosanitize !44
  store i32 %320, ptr %19, align 4, !tbaa !71
  %321 = load ptr, ptr %26, align 8, !tbaa !34
  %322 = zext i32 %292 to i64
  %323 = getelementptr inbounds nuw i8, ptr %321, i64 %322
  %324 = zext i32 %320 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %321, ptr nonnull align 1 %323, i64 %324, i1 false)
  %325 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %326 = load i32, ptr %325, align 8, !tbaa !114
  %327 = icmp ult i32 %326, 2
  br i1 %327, label %328, label %330

328:                                              ; preds = %319
  %329 = add nuw nsw i32 %326, 1
  store i32 %329, ptr %325, align 8, !tbaa !114
  br label %330

330:                                              ; preds = %328, %319
  %331 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %332 = load i32, ptr %331, align 4, !tbaa !74
  %333 = load i32, ptr %19, align 4, !tbaa !71
  %334 = icmp ugt i32 %332, %333
  br i1 %334, label %335, label %336

335:                                              ; preds = %330
  store i32 %333, ptr %331, align 4, !tbaa !74
  br label %336

336:                                              ; preds = %335, %330, %311
  %337 = phi i32 [ %333, %330 ], [ %333, %335 ], [ %306, %311 ]
  %338 = load ptr, ptr %26, align 8, !tbaa !34
  %339 = zext i32 %337 to i64
  %340 = getelementptr inbounds nuw i8, ptr %338, i64 %339
  %341 = load ptr, ptr %0, align 8, !tbaa !19
  %342 = load ptr, ptr %341, align 8, !tbaa !80
  %343 = sub nsw i64 0, %313
  %344 = getelementptr inbounds i8, ptr %342, i64 %343
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %340, ptr nonnull align 1 %344, i64 %313, i1 false)
  %345 = load i32, ptr %19, align 4, !tbaa !71
  %346 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %345, i32 %283), !nosanitize !44
  %347 = extractvalue { i32, i1 } %346, 1, !nosanitize !44
  br i1 %347, label %348, label %349, !prof !45, !nosanitize !44

348:                                              ; preds = %336
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

349:                                              ; preds = %336
  %350 = extractvalue { i32, i1 } %346, 0, !nosanitize !44
  store i32 %350, ptr %19, align 4, !tbaa !71
  %351 = load i32, ptr %10, align 8, !tbaa !31
  %352 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %353 = load i32, ptr %352, align 4, !tbaa !74
  %354 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %351, i32 %353), !nosanitize !44
  %355 = extractvalue { i32, i1 } %354, 1, !nosanitize !44
  br i1 %355, label %356, label %357, !prof !45, !nosanitize !44

356:                                              ; preds = %349
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

357:                                              ; preds = %349
  %358 = extractvalue { i32, i1 } %354, 0, !nosanitize !44
  %359 = tail call i32 @llvm.umin.i32(i32 %283, i32 %358)
  %360 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %353, i32 %359), !nosanitize !44
  %361 = extractvalue { i32, i1 } %360, 1, !nosanitize !44
  br i1 %361, label %362, label %363, !prof !45, !nosanitize !44

362:                                              ; preds = %357
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

363:                                              ; preds = %357
  %364 = extractvalue { i32, i1 } %360, 0, !nosanitize !44
  store i32 %364, ptr %352, align 4, !tbaa !74
  br label %365

365:                                              ; preds = %363, %294
  %366 = phi i32 [ %350, %363 ], [ %301, %294 ]
  %367 = zext i32 %366 to i64
  store i64 %367, ptr %20, align 8, !tbaa !72
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
  %379 = load ptr, ptr %0, align 8, !tbaa !19
  %380 = getelementptr inbounds nuw i8, ptr %379, i64 8
  %381 = load i32, ptr %380, align 8, !tbaa !79
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %386

383:                                              ; preds = %378
  %384 = load i64, ptr %20, align 8, !tbaa !72
  %385 = icmp eq i64 %384, %369
  br i1 %385, label %602, label %386

386:                                              ; preds = %383, %378, %376, %376
  %387 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %388 = load i64, ptr %387, align 8, !tbaa !59
  %389 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %388, i64 %369), !nosanitize !44
  %390 = extractvalue { i64, i1 } %389, 1, !nosanitize !44
  br i1 %390, label %391, label %392, !prof !45, !nosanitize !44

391:                                              ; preds = %386
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

392:                                              ; preds = %386
  %393 = extractvalue { i64, i1 } %389, 0, !nosanitize !44
  %394 = trunc i64 %393 to i32
  %395 = load ptr, ptr %0, align 8, !tbaa !19
  %396 = getelementptr inbounds nuw i8, ptr %395, i64 8
  %397 = load i32, ptr %396, align 8, !tbaa !79
  %398 = icmp ugt i32 %397, %394
  br i1 %398, label %399, label %431

399:                                              ; preds = %392
  %400 = load i64, ptr %20, align 8, !tbaa !72
  %401 = load i32, ptr %10, align 8, !tbaa !31
  %402 = zext i32 %401 to i64
  %403 = icmp slt i64 %400, %402
  br i1 %403, label %431, label %404

404:                                              ; preds = %399
  %405 = sub nsw i64 %400, %402
  store i64 %405, ptr %20, align 8, !tbaa !72
  %406 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %370, i32 %401), !nosanitize !44
  %407 = extractvalue { i32, i1 } %406, 1, !nosanitize !44
  br i1 %407, label %408, label %409, !prof !45, !nosanitize !44

408:                                              ; preds = %404
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

409:                                              ; preds = %404
  %410 = extractvalue { i32, i1 } %406, 0, !nosanitize !44
  store i32 %410, ptr %19, align 4, !tbaa !71
  %411 = load ptr, ptr %26, align 8, !tbaa !34
  %412 = getelementptr inbounds nuw i8, ptr %411, i64 %402
  %413 = zext i32 %410 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %411, ptr align 1 %412, i64 %413, i1 false)
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %415 = load i32, ptr %414, align 8, !tbaa !114
  %416 = icmp ult i32 %415, 2
  br i1 %416, label %417, label %419

417:                                              ; preds = %409
  %418 = add nuw nsw i32 %415, 1
  store i32 %418, ptr %414, align 8, !tbaa !114
  br label %419

419:                                              ; preds = %417, %409
  %420 = load i32, ptr %10, align 8, !tbaa !31
  %421 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %394, i32 %420), !nosanitize !44
  %422 = extractvalue { i32, i1 } %421, 0, !nosanitize !44
  %423 = extractvalue { i32, i1 } %421, 1, !nosanitize !44
  br i1 %423, label %424, label %425, !prof !45, !nosanitize !44

424:                                              ; preds = %419
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

425:                                              ; preds = %419
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %427 = load i32, ptr %426, align 4, !tbaa !74
  %428 = load i32, ptr %19, align 4, !tbaa !71
  %429 = icmp ugt i32 %427, %428
  br i1 %429, label %430, label %431

430:                                              ; preds = %425
  store i32 %428, ptr %426, align 4, !tbaa !74
  br label %431

431:                                              ; preds = %430, %425, %399, %392
  %432 = phi i32 [ %428, %430 ], [ %428, %425 ], [ %370, %399 ], [ %370, %392 ]
  %433 = phi i32 [ %422, %430 ], [ %422, %425 ], [ %394, %399 ], [ %394, %392 ]
  %434 = load ptr, ptr %0, align 8, !tbaa !19
  %435 = getelementptr inbounds nuw i8, ptr %434, i64 8
  %436 = load i32, ptr %435, align 8, !tbaa !79
  %437 = tail call i32 @llvm.umin.i32(i32 %433, i32 %436)
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %492, label %439

439:                                              ; preds = %431
  %440 = load ptr, ptr %26, align 8, !tbaa !34
  %441 = zext i32 %432 to i64
  %442 = getelementptr inbounds nuw i8, ptr %440, i64 %441
  %443 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %436, i32 %437), !nosanitize !44
  %444 = extractvalue { i32, i1 } %443, 1, !nosanitize !44
  br i1 false, label %445, label %446, !prof !45, !nosanitize !44

445:                                              ; preds = %439
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

446:                                              ; preds = %439
  %447 = extractvalue { i32, i1 } %443, 0, !nosanitize !44
  store i32 %447, ptr %435, align 8, !tbaa !79
  %448 = load ptr, ptr %434, align 8, !tbaa !80
  %449 = zext i32 %437 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %442, ptr align 1 %448, i64 %449, i1 false)
  %450 = getelementptr inbounds nuw i8, ptr %434, i64 56
  %451 = load ptr, ptr %450, align 8, !tbaa !18
  %452 = getelementptr inbounds nuw i8, ptr %451, i64 48
  %453 = load i32, ptr %452, align 8, !tbaa !29
  switch i32 %453, label %462 [
    i32 1, label %454
    i32 2, label %458
  ]

454:                                              ; preds = %446
  %455 = getelementptr inbounds nuw i8, ptr %434, i64 96
  %456 = load i64, ptr %455, align 8, !tbaa !57
  %457 = tail call i64 @adler32(i64 noundef %456, ptr noundef %442, i32 noundef %437) #8
  store i64 %457, ptr %455, align 8, !tbaa !57
  br label %462

458:                                              ; preds = %446
  %459 = getelementptr inbounds nuw i8, ptr %434, i64 96
  %460 = load i64, ptr %459, align 8, !tbaa !57
  %461 = tail call i64 @crc32(i64 noundef %460, ptr noundef %442, i32 noundef %437) #8
  store i64 %461, ptr %459, align 8, !tbaa !57
  br label %462

462:                                              ; preds = %458, %454, %446
  %463 = load ptr, ptr %434, align 8, !tbaa !80
  %464 = getelementptr inbounds nuw i8, ptr %463, i64 %449
  store ptr %464, ptr %434, align 8, !tbaa !80
  %465 = getelementptr inbounds nuw i8, ptr %434, i64 16
  %466 = load i64, ptr %465, align 8, !tbaa !53
  %467 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %466, i64 %449), !nosanitize !44
  %468 = extractvalue { i64, i1 } %467, 1, !nosanitize !44
  br i1 %468, label %469, label %470, !prof !45, !nosanitize !44

469:                                              ; preds = %462
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

470:                                              ; preds = %462
  %471 = extractvalue { i64, i1 } %467, 0, !nosanitize !44
  store i64 %471, ptr %465, align 8, !tbaa !53
  %472 = load i32, ptr %19, align 4, !tbaa !71
  %473 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %472, i32 %437), !nosanitize !44
  %474 = extractvalue { i32, i1 } %473, 1, !nosanitize !44
  br i1 %474, label %475, label %476, !prof !45, !nosanitize !44

475:                                              ; preds = %470
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

476:                                              ; preds = %470
  %477 = extractvalue { i32, i1 } %473, 0, !nosanitize !44
  store i32 %477, ptr %19, align 4, !tbaa !71
  %478 = load i32, ptr %10, align 8, !tbaa !31
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %480 = load i32, ptr %479, align 4, !tbaa !74
  %481 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %478, i32 %480), !nosanitize !44
  %482 = extractvalue { i32, i1 } %481, 1, !nosanitize !44
  br i1 %482, label %483, label %484, !prof !45, !nosanitize !44

483:                                              ; preds = %476
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

484:                                              ; preds = %476
  %485 = extractvalue { i32, i1 } %481, 0, !nosanitize !44
  %486 = tail call i32 @llvm.umin.i32(i32 %437, i32 %485)
  %487 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %480, i32 %486), !nosanitize !44
  %488 = extractvalue { i32, i1 } %487, 1, !nosanitize !44
  br i1 %488, label %489, label %490, !prof !45, !nosanitize !44

489:                                              ; preds = %484
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

490:                                              ; preds = %484
  %491 = extractvalue { i32, i1 } %487, 0, !nosanitize !44
  store i32 %491, ptr %479, align 4, !tbaa !74
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
  %499 = load i32, ptr %18, align 4, !tbaa !90
  %500 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %499, i32 42), !nosanitize !44
  %501 = extractvalue { i32, i1 } %500, 1, !nosanitize !44
  br i1 %501, label %502, label %503, !prof !45, !nosanitize !44

502:                                              ; preds = %544, %498
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

503:                                              ; preds = %498
  %504 = extractvalue { i32, i1 } %500, 0, !nosanitize !44
  %505 = lshr i32 %504, 3
  %506 = load i64, ptr %3, align 8, !tbaa !41
  %507 = zext nneg i32 %505 to i64
  %508 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %506, i64 %507), !nosanitize !44
  %509 = extractvalue { i64, i1 } %508, 1, !nosanitize !44
  br i1 %509, label %510, label %511, !prof !45, !nosanitize !44

510:                                              ; preds = %503
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

511:                                              ; preds = %503
  %512 = extractvalue { i64, i1 } %508, 0, !nosanitize !44
  %513 = tail call i64 @llvm.umin.i64(i64 %512, i64 65535)
  %514 = trunc nuw nsw i64 %513 to i32
  %515 = load i64, ptr %20, align 8, !tbaa !72
  %516 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %495, i64 %515), !nosanitize !44
  %517 = extractvalue { i64, i1 } %516, 1, !nosanitize !44
  br i1 %517, label %518, label %519, !prof !45, !nosanitize !44

518:                                              ; preds = %511
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

519:                                              ; preds = %511
  %520 = load i32, ptr %10, align 8, !tbaa !31
  %521 = tail call i32 @llvm.umin.i32(i32 %520, i32 %514)
  %522 = extractvalue { i64, i1 } %516, 0, !nosanitize !44
  %523 = trunc i64 %522 to i32
  %524 = icmp ugt i32 %521, %523
  br i1 %524, label %525, label %534

525:                                              ; preds = %519
  %526 = icmp ne i32 %523, 0
  %527 = or i1 %23, %526
  %528 = and i1 %377, %527
  br i1 %528, label %529, label %602

529:                                              ; preds = %525
  %530 = load ptr, ptr %0, align 8, !tbaa !19
  %531 = getelementptr inbounds nuw i8, ptr %530, i64 8
  %532 = load i32, ptr %531, align 8, !tbaa !79
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %602

534:                                              ; preds = %529, %519
  %535 = tail call i32 @llvm.umin.i32(i32 %514, i32 %523)
  br i1 %23, label %536, label %544

536:                                              ; preds = %534
  %537 = load ptr, ptr %0, align 8, !tbaa !19
  %538 = getelementptr inbounds nuw i8, ptr %537, i64 8
  %539 = load i32, ptr %538, align 8, !tbaa !79
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
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef %547, i64 noundef %548, i32 noundef %545) #8
  %549 = load i64, ptr %20, align 8, !tbaa !72
  %550 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %549, i64 %548), !nosanitize !44
  %551 = extractvalue { i64, i1 } %550, 1, !nosanitize !44
  br i1 %551, label %502, label %552, !prof !45, !nosanitize !44

552:                                              ; preds = %544
  %553 = extractvalue { i64, i1 } %550, 0, !nosanitize !44
  store i64 %553, ptr %20, align 8, !tbaa !72
  %554 = load ptr, ptr %0, align 8, !tbaa !19
  %555 = getelementptr inbounds nuw i8, ptr %554, i64 56
  %556 = load ptr, ptr %555, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %556) #8
  %557 = getelementptr inbounds nuw i8, ptr %556, i64 40
  %558 = load i64, ptr %557, align 8, !tbaa !55
  %559 = getelementptr inbounds nuw i8, ptr %554, i64 32
  %560 = load i32, ptr %559, align 8, !tbaa !96
  %561 = zext i32 %560 to i64
  %562 = tail call i64 @llvm.umin.i64(i64 %558, i64 %561)
  %563 = trunc nuw i64 %562 to i32
  %564 = icmp eq i64 %562, 0
  br i1 %564, label %597, label %565

565:                                              ; preds = %552
  %566 = getelementptr inbounds nuw i8, ptr %554, i64 24
  %567 = load ptr, ptr %566, align 8, !tbaa !95
  %568 = getelementptr inbounds nuw i8, ptr %556, i64 32
  %569 = load ptr, ptr %568, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %567, ptr align 1 %569, i64 %562, i1 false)
  %570 = load ptr, ptr %566, align 8, !tbaa !95
  %571 = getelementptr inbounds nuw i8, ptr %570, i64 %562
  store ptr %571, ptr %566, align 8, !tbaa !95
  %572 = load ptr, ptr %568, align 8, !tbaa !56
  %573 = getelementptr inbounds nuw i8, ptr %572, i64 %562
  store ptr %573, ptr %568, align 8, !tbaa !56
  %574 = getelementptr inbounds nuw i8, ptr %554, i64 40
  %575 = load i64, ptr %574, align 8, !tbaa !97
  %576 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %575, i64 %562), !nosanitize !44
  %577 = extractvalue { i64, i1 } %576, 1, !nosanitize !44
  br i1 %577, label %578, label %579, !prof !45, !nosanitize !44

578:                                              ; preds = %565
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

579:                                              ; preds = %565
  %580 = extractvalue { i64, i1 } %576, 0, !nosanitize !44
  store i64 %580, ptr %574, align 8, !tbaa !97
  %581 = load i32, ptr %559, align 8, !tbaa !96
  %582 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %581, i32 %563), !nosanitize !44
  %583 = extractvalue { i32, i1 } %582, 1, !nosanitize !44
  br i1 %583, label %584, label %585, !prof !45, !nosanitize !44

584:                                              ; preds = %579
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

585:                                              ; preds = %579
  %586 = extractvalue { i32, i1 } %582, 0, !nosanitize !44
  store i32 %586, ptr %559, align 8, !tbaa !96
  %587 = load i64, ptr %557, align 8, !tbaa !55
  %588 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %587, i64 %562), !nosanitize !44
  %589 = extractvalue { i64, i1 } %588, 1, !nosanitize !44
  br i1 %589, label %590, label %591, !prof !45, !nosanitize !44

590:                                              ; preds = %585
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

591:                                              ; preds = %585
  %592 = extractvalue { i64, i1 } %588, 0, !nosanitize !44
  store i64 %592, ptr %557, align 8, !tbaa !55
  %593 = icmp eq i64 %592, 0
  br i1 %593, label %594, label %597

594:                                              ; preds = %591
  %595 = getelementptr inbounds nuw i8, ptr %556, i64 16
  %596 = load ptr, ptr %595, align 8, !tbaa !40
  store ptr %596, ptr %568, align 8, !tbaa !56
  br label %597

597:                                              ; preds = %594, %591, %552
  %598 = icmp eq i32 %545, 0
  br i1 %598, label %602, label %599

599:                                              ; preds = %597, %375
  %600 = phi i32 [ 3, %375 ], [ 2, %597 ]
  %601 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 8, ptr %601, align 8, !tbaa !91
  br label %602

602:                                              ; preds = %599, %597, %529, %525, %383
  %603 = phi i32 [ 1, %383 ], [ 0, %597 ], [ 0, %525 ], [ 0, %529 ], [ %600, %599 ]
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

25:                                               ; preds = %716, %2
  %26 = load i32, ptr %3, align 4, !tbaa !73
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %600

28:                                               ; preds = %25
  %29 = load i32, ptr %4, align 8, !tbaa !31
  %30 = zext i32 %29 to i64
  %mv.h1 = icmp sge i32 %29, 0
  %mv.h.fr2 = freeze i1 %mv.h1
  br i1 %mv.h.fr2, label %.mv.ph3.mv.fast, label %.mv.ph3

.mv.ph3.mv.fast:                                  ; preds = %28
  br label %31

31:                                               ; preds = %242, %.mv.ph3.mv.fast
  %32 = phi i32 [ %174, %242 ], [ 0, %.mv.ph3.mv.fast ]
  %33 = load i64, ptr %5, align 8, !tbaa !59
  %34 = zext nneg i32 %32 to i64
  %35 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %33, i64 %34), !nosanitize !44
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !44
  br i1 %36, label %288, label %37, !prof !45, !nosanitize !44

37:                                               ; preds = %31
  %38 = extractvalue { i64, i1 } %35, 0, !nosanitize !44
  %39 = load i32, ptr %6, align 4, !tbaa !71
  %40 = zext i32 %39 to i64
  %41 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %38, i64 %40), !nosanitize !44
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !44
  br i1 %42, label %295, label %43, !prof !45, !nosanitize !44

43:                                               ; preds = %37
  %44 = extractvalue { i64, i1 } %41, 0, !nosanitize !44
  %45 = trunc i64 %44 to i32
  %46 = load i32, ptr %4, align 8, !tbaa !31
  %47 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %46, i32 262), !nosanitize !44
  %48 = extractvalue { i32, i1 } %47, 1, !nosanitize !44
  br i1 %48, label %302, label %49, !prof !45, !nosanitize !44

49:                                               ; preds = %43
  %50 = extractvalue { i32, i1 } %47, 0, !nosanitize !44
  %51 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %29, i32 %50), !nosanitize !44
  %52 = extractvalue { i32, i1 } %51, 1, !nosanitize !44
  br i1 %52, label %307, label %53, !prof !45, !nosanitize !44

53:                                               ; preds = %49
  %54 = extractvalue { i32, i1 } %51, 0, !nosanitize !44
  %55 = icmp ult i32 %39, %54
  br i1 %55, label %124, label %56

56:                                               ; preds = %53
  %57 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %29, i32 %45), !nosanitize !44
  %58 = extractvalue { i32, i1 } %57, 1, !nosanitize !44
  br i1 %58, label %314, label %59, !prof !45, !nosanitize !44

59:                                               ; preds = %56
  %60 = extractvalue { i32, i1 } %57, 0, !nosanitize !44
  %61 = load ptr, ptr %7, align 8, !tbaa !34
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 %30
  %63 = zext i32 %60 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %61, ptr align 1 %62, i64 %63, i1 false)
  %64 = load i32, ptr %8, align 8, !tbaa !81
  %65 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %64, i32 %29), !nosanitize !44
  %66 = extractvalue { i32, i1 } %65, 1, !nosanitize !44
  br i1 %66, label %323, label %67, !prof !45, !nosanitize !44

67:                                               ; preds = %59
  %68 = extractvalue { i32, i1 } %65, 0, !nosanitize !44
  store i32 %68, ptr %8, align 8, !tbaa !81
  %69 = load i32, ptr %6, align 4, !tbaa !71
  %70 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %69, i32 %29), !nosanitize !44
  %71 = extractvalue { i32, i1 } %70, 1, !nosanitize !44
  br i1 %71, label %329, label %72, !prof !45, !nosanitize !44

72:                                               ; preds = %67
  %73 = extractvalue { i32, i1 } %70, 0, !nosanitize !44
  store i32 %73, ptr %6, align 4, !tbaa !71
  %74 = load i64, ptr %9, align 8, !tbaa !72
  %75 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %74, i64 %30), !nosanitize !44
  %76 = extractvalue { i64, i1 } %75, 1, !nosanitize !44
  br i1 %76, label %329, label %77, !prof !45, !nosanitize !44

77:                                               ; preds = %72
  %78 = extractvalue { i64, i1 } %75, 0, !nosanitize !44
  store i64 %78, ptr %9, align 8, !tbaa !72
  %79 = load i32, ptr %10, align 4, !tbaa !74
  %80 = icmp ugt i32 %79, %73
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 %73, ptr %10, align 4, !tbaa !74
  br label %82

82:                                               ; preds = %81, %77
  %83 = load i32, ptr %4, align 8, !tbaa !31
  %84 = load i32, ptr %11, align 4, !tbaa !36
  %85 = load ptr, ptr %12, align 8, !tbaa !37
  %86 = zext i32 %84 to i64
  %87 = getelementptr inbounds nuw i16, ptr %85, i64 %86
  br label %88

88:                                               ; preds = %98, %82
  %89 = phi ptr [ %87, %82 ], [ %91, %98 ]
  %90 = phi i32 [ %84, %82 ], [ %99, %98 ]
  %91 = getelementptr inbounds i8, ptr %89, i64 -2
  %92 = load i16, ptr %91, align 2, !tbaa !60
  %93 = zext i16 %92 to i32
  %94 = tail call i32 @llvm.usub.sat.i32(i32 %93, i32 %83)
  %95 = trunc nuw i32 %94 to i16
  store i16 %95, ptr %91, align 2, !tbaa !60
  %96 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %90, i32 1), !nosanitize !44
  %97 = extractvalue { i32, i1 } %96, 1, !nosanitize !44
  br i1 %97, label %356, label %98, !prof !45, !nosanitize !44

98:                                               ; preds = %88
  %99 = extractvalue { i32, i1 } %96, 0, !nosanitize !44
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %88, !llvm.loop !82

101:                                              ; preds = %98
  %102 = load ptr, ptr %13, align 8, !tbaa !35
  %103 = zext i32 %83 to i64
  %104 = getelementptr inbounds nuw i16, ptr %102, i64 %103
  br label %105

105:                                              ; preds = %115, %101
  %106 = phi ptr [ %104, %101 ], [ %108, %115 ]
  %107 = phi i32 [ %83, %101 ], [ %116, %115 ]
  %108 = getelementptr inbounds i8, ptr %106, i64 -2
  %109 = load i16, ptr %108, align 2, !tbaa !60
  %110 = zext i16 %109 to i32
  %111 = tail call i32 @llvm.usub.sat.i32(i32 %110, i32 %83)
  %112 = trunc nuw i32 %111 to i16
  store i16 %112, ptr %108, align 2, !tbaa !60
  %113 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %107, i32 1), !nosanitize !44
  %114 = extractvalue { i32, i1 } %113, 1, !nosanitize !44
  br i1 %114, label %374, label %115, !prof !45, !nosanitize !44

115:                                              ; preds = %105
  %116 = extractvalue { i32, i1 } %113, 0, !nosanitize !44
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %105, !llvm.loop !84

118:                                              ; preds = %115
  store i32 1, ptr %14, align 8, !tbaa !61
  %119 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %45, i32 %29), !nosanitize !44
  %120 = extractvalue { i32, i1 } %119, 1, !nosanitize !44
  br i1 false, label %381, label %121, !prof !45, !nosanitize !44

121:                                              ; preds = %118
  %122 = extractvalue { i32, i1 } %119, 0, !nosanitize !44
  %123 = load i32, ptr %3, align 4, !tbaa !73
  br label %124

124:                                              ; preds = %121, %53
  %125 = phi i32 [ %123, %121 ], [ %32, %53 ]
  %126 = phi i32 [ %73, %121 ], [ %39, %53 ]
  %127 = phi i32 [ %122, %121 ], [ %45, %53 ]
  %128 = load ptr, ptr %0, align 8, !tbaa !19
  %129 = getelementptr inbounds nuw i8, ptr %128, i64 8
  %130 = load i32, ptr %129, align 8, !tbaa !79
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %551, label %132

132:                                              ; preds = %124
  %133 = load ptr, ptr %7, align 8, !tbaa !34
  %134 = zext i32 %126 to i64
  %135 = getelementptr inbounds nuw i8, ptr %133, i64 %134
  %136 = zext i32 %125 to i64
  %137 = getelementptr inbounds nuw i8, ptr %135, i64 %136
  %138 = tail call i32 @llvm.umin.i32(i32 %130, i32 %127)
  %139 = icmp eq i32 %127, 0
  br i1 %139, label %169, label %140

140:                                              ; preds = %132
  %141 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %130, i32 %138), !nosanitize !44
  %142 = extractvalue { i32, i1 } %141, 1, !nosanitize !44
  br i1 false, label %404, label %143, !prof !45, !nosanitize !44

143:                                              ; preds = %140
  %144 = extractvalue { i32, i1 } %141, 0, !nosanitize !44
  store i32 %144, ptr %129, align 8, !tbaa !79
  %145 = load ptr, ptr %128, align 8, !tbaa !80
  %146 = zext i32 %138 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %137, ptr align 1 %145, i64 %146, i1 false)
  %147 = getelementptr inbounds nuw i8, ptr %128, i64 56
  %148 = load ptr, ptr %147, align 8, !tbaa !18
  %149 = getelementptr inbounds nuw i8, ptr %148, i64 48
  %150 = load i32, ptr %149, align 8, !tbaa !29
  switch i32 %150, label %159 [
    i32 1, label %155
    i32 2, label %151
  ]

151:                                              ; preds = %143
  %152 = getelementptr inbounds nuw i8, ptr %128, i64 96
  %153 = load i64, ptr %152, align 8, !tbaa !57
  %154 = tail call i64 @crc32(i64 noundef %153, ptr noundef %137, i32 noundef %138) #8
  store i64 %154, ptr %152, align 8, !tbaa !57
  br label %159

155:                                              ; preds = %143
  %156 = getelementptr inbounds nuw i8, ptr %128, i64 96
  %157 = load i64, ptr %156, align 8, !tbaa !57
  %158 = tail call i64 @adler32(i64 noundef %157, ptr noundef %137, i32 noundef %138) #8
  store i64 %158, ptr %156, align 8, !tbaa !57
  br label %159

159:                                              ; preds = %155, %151, %143
  %160 = load ptr, ptr %128, align 8, !tbaa !80
  %161 = getelementptr inbounds nuw i8, ptr %160, i64 %146
  store ptr %161, ptr %128, align 8, !tbaa !80
  %162 = getelementptr inbounds nuw i8, ptr %128, i64 16
  %163 = load i64, ptr %162, align 8, !tbaa !53
  %164 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %163, i64 %146), !nosanitize !44
  %165 = extractvalue { i64, i1 } %164, 1, !nosanitize !44
  br i1 %165, label %428, label %166, !prof !45, !nosanitize !44

166:                                              ; preds = %159
  %167 = extractvalue { i64, i1 } %164, 0, !nosanitize !44
  store i64 %167, ptr %162, align 8, !tbaa !53
  %168 = load i32, ptr %3, align 4, !tbaa !73
  br label %169

169:                                              ; preds = %166, %132
  %170 = phi i32 [ %125, %132 ], [ %168, %166 ]
  %171 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %170, i32 %138), !nosanitize !44
  %172 = extractvalue { i32, i1 } %171, 1, !nosanitize !44
  br i1 %172, label %436, label %173, !prof !45, !nosanitize !44

173:                                              ; preds = %169
  %174 = extractvalue { i32, i1 } %171, 0, !nosanitize !44
  store i32 %174, ptr %3, align 4, !tbaa !73
  %175 = load i32, ptr %10, align 4, !tbaa !74
  %176 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %174, i32 %175), !nosanitize !44
  %177 = extractvalue { i32, i1 } %176, 1, !nosanitize !44
  br i1 %177, label %442, label %178, !prof !45, !nosanitize !44

178:                                              ; preds = %173
  %179 = extractvalue { i32, i1 } %176, 0, !nosanitize !44
  %180 = icmp ugt i32 %179, 2
  br i1 %180, label %181, label %240

181:                                              ; preds = %178
  %182 = load i32, ptr %6, align 4, !tbaa !71
  %183 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %182, i32 %175), !nosanitize !44
  %184 = extractvalue { i32, i1 } %183, 0, !nosanitize !44
  %185 = extractvalue { i32, i1 } %183, 1, !nosanitize !44
  br i1 %185, label %451, label %186, !prof !45, !nosanitize !44

186:                                              ; preds = %181
  %187 = load ptr, ptr %7, align 8, !tbaa !34
  %188 = zext i32 %184 to i64
  %189 = getelementptr inbounds nuw i8, ptr %187, i64 %188
  %190 = load i8, ptr %189, align 1, !tbaa !5
  %191 = zext i8 %190 to i32
  store i32 %191, ptr %15, align 8, !tbaa !78
  %192 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %184, i32 1), !nosanitize !44
  %193 = extractvalue { i32, i1 } %192, 1, !nosanitize !44
  br i1 %193, label %460, label %194, !prof !45, !nosanitize !44

194:                                              ; preds = %186
  %195 = extractvalue { i32, i1 } %192, 0, !nosanitize !44
  %196 = load i32, ptr %16, align 8, !tbaa !52
  %197 = shl i32 %191, %196
  %198 = zext i32 %195 to i64
  %199 = getelementptr inbounds nuw i8, ptr %187, i64 %198
  %200 = load i8, ptr %199, align 1, !tbaa !5
  %201 = zext i8 %200 to i32
  %202 = xor i32 %197, %201
  %203 = load i32, ptr %17, align 4, !tbaa !51
  %204 = and i32 %202, %203
  store i32 %204, ptr %15, align 8, !tbaa !78
  %mv.h.mv.fast = icmp sge i32 %182, 0
  %mv.h.fr.mv.fast = freeze i1 %mv.h.mv.fast
  br i1 %mv.h.fr.mv.fast, label %.mv.ph.mv.fast.mv.fast, label %.mv.ph.mv.fast4

205:                                              ; preds = %.mv.ph.mv.fast4, %236
  %206 = phi i32 [ %204, %.mv.ph.mv.fast4 ], [ %222, %236 ]
  %207 = phi i32 [ %175, %.mv.ph.mv.fast4 ], [ %233, %236 ]
  %208 = phi i32 [ %184, %.mv.ph.mv.fast4 ], [ %237, %236 ]
  %209 = icmp eq i32 %207, 0
  br i1 %209, label %.loopexit.mv.fast, label %210

210:                                              ; preds = %205
  %211 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %208, i32 3), !nosanitize !44
  %212 = extractvalue { i32, i1 } %211, 1, !nosanitize !44
  br i1 %212, label %515, label %213, !prof !45, !nosanitize !44

213:                                              ; preds = %210
  %214 = shl i32 %206, %196
  %215 = extractvalue { i32, i1 } %211, 0, !nosanitize !44
  %216 = add i32 %215, -1
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds nuw i8, ptr %187, i64 %217
  %219 = load i8, ptr %218, align 1, !tbaa !5
  %220 = zext i8 %219 to i32
  %221 = xor i32 %214, %220
  %222 = and i32 %221, %203
  store i32 %222, ptr %15, align 8, !tbaa !78
  %223 = load ptr, ptr %12, align 8, !tbaa !37
  %224 = zext i32 %222 to i64
  %225 = getelementptr inbounds nuw i16, ptr %223, i64 %224
  %226 = load i16, ptr %225, align 2, !tbaa !60
  %227 = load ptr, ptr %13, align 8, !tbaa !35
  %228 = load i32, ptr %18, align 8, !tbaa !32
  %229 = and i32 %228, %208
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds nuw i16, ptr %227, i64 %230
  store i16 %226, ptr %231, align 2, !tbaa !60
  %232 = trunc i32 %208 to i16
  store i16 %232, ptr %225, align 2, !tbaa !60
  %233 = add i32 %207, -1
  store i32 %233, ptr %10, align 4, !tbaa !74
  %234 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %174, i32 %233), !nosanitize !44
  %235 = extractvalue { i32, i1 } %234, 1, !nosanitize !44
  br i1 false, label %539, label %236, !prof !45, !nosanitize !44

236:                                              ; preds = %213
  %237 = add nuw i32 %208, 1
  %238 = extractvalue { i32, i1 } %234, 0, !nosanitize !44
  %239 = icmp ult i32 %238, 3
  br i1 %239, label %.loopexit.mv.fast, label %205, !llvm.loop !85

240:                                              ; preds = %.loopexit.mv.fast, %178
  %241 = icmp ult i32 %174, 262
  br i1 %241, label %242, label %551

242:                                              ; preds = %240
  %243 = load ptr, ptr %0, align 8, !tbaa !19
  %244 = getelementptr inbounds nuw i8, ptr %243, i64 8
  %245 = load i32, ptr %244, align 8, !tbaa !79
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %551, label %31, !llvm.loop !86

.loopexit.mv.fast:                                ; preds = %278, %247, %236, %205
  br label %240

.mv.ph.mv.fast4:                                  ; preds = %194
  br label %205

.mv.ph.mv.fast.mv.fast:                           ; preds = %194
  br label %247

247:                                              ; preds = %278, %.mv.ph.mv.fast.mv.fast
  %248 = phi i32 [ %204, %.mv.ph.mv.fast.mv.fast ], [ %264, %278 ]
  %249 = phi i32 [ %175, %.mv.ph.mv.fast.mv.fast ], [ %275, %278 ]
  %250 = phi i32 [ %184, %.mv.ph.mv.fast.mv.fast ], [ %279, %278 ]
  %251 = icmp eq i32 %249, 0
  br i1 %251, label %.loopexit.mv.fast, label %252

252:                                              ; preds = %247
  %253 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %250, i32 3), !nosanitize !44
  %254 = extractvalue { i32, i1 } %253, 1, !nosanitize !44
  br i1 false, label %515, label %255, !prof !45, !nosanitize !44

255:                                              ; preds = %252
  %256 = shl i32 %248, %196
  %257 = extractvalue { i32, i1 } %253, 0, !nosanitize !44
  %258 = add i32 %257, -1
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds nuw i8, ptr %187, i64 %259
  %261 = load i8, ptr %260, align 1, !tbaa !5
  %262 = zext i8 %261 to i32
  %263 = xor i32 %256, %262
  %264 = and i32 %263, %203
  store i32 %264, ptr %15, align 8, !tbaa !78
  %265 = load ptr, ptr %12, align 8, !tbaa !37
  %266 = zext i32 %264 to i64
  %267 = getelementptr inbounds nuw i16, ptr %265, i64 %266
  %268 = load i16, ptr %267, align 2, !tbaa !60
  %269 = load ptr, ptr %13, align 8, !tbaa !35
  %270 = load i32, ptr %18, align 8, !tbaa !32
  %271 = and i32 %270, %250
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds nuw i16, ptr %269, i64 %272
  store i16 %268, ptr %273, align 2, !tbaa !60
  %274 = trunc i32 %250 to i16
  store i16 %274, ptr %267, align 2, !tbaa !60
  %275 = add i32 %249, -1
  store i32 %275, ptr %10, align 4, !tbaa !74
  %276 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %174, i32 %275), !nosanitize !44
  %277 = extractvalue { i32, i1 } %276, 1, !nosanitize !44
  br i1 false, label %539, label %278, !prof !45, !nosanitize !44

278:                                              ; preds = %255
  %279 = add nuw i32 %250, 1
  %280 = extractvalue { i32, i1 } %276, 0, !nosanitize !44
  %281 = icmp ult i32 %280, 3
  br i1 %281, label %.loopexit.mv.fast, label %247, !llvm.loop !85

.mv.ph3:                                          ; preds = %28
  br label %282

282:                                              ; preds = %546, %.mv.ph3
  %283 = phi i32 [ %438, %546 ], [ 0, %.mv.ph3 ]
  %284 = load i64, ptr %5, align 8, !tbaa !59
  %285 = zext nneg i32 %283 to i64
  %286 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %284, i64 %285), !nosanitize !44
  %287 = extractvalue { i64, i1 } %286, 1, !nosanitize !44
  br i1 %287, label %288, label %289, !prof !45, !nosanitize !44

288:                                              ; preds = %31, %282
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

289:                                              ; preds = %282
  %290 = extractvalue { i64, i1 } %286, 0, !nosanitize !44
  %291 = load i32, ptr %6, align 4, !tbaa !71
  %292 = zext i32 %291 to i64
  %293 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %290, i64 %292), !nosanitize !44
  %294 = extractvalue { i64, i1 } %293, 1, !nosanitize !44
  br i1 %294, label %295, label %296, !prof !45, !nosanitize !44

295:                                              ; preds = %37, %289
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

296:                                              ; preds = %289
  %297 = extractvalue { i64, i1 } %293, 0, !nosanitize !44
  %298 = trunc i64 %297 to i32
  %299 = load i32, ptr %4, align 8, !tbaa !31
  %300 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %299, i32 262), !nosanitize !44
  %301 = extractvalue { i32, i1 } %300, 1, !nosanitize !44
  br i1 %301, label %302, label %303, !prof !45, !nosanitize !44

302:                                              ; preds = %43, %296
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

303:                                              ; preds = %296
  %304 = extractvalue { i32, i1 } %300, 0, !nosanitize !44
  %305 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %29, i32 %304), !nosanitize !44
  %306 = extractvalue { i32, i1 } %305, 1, !nosanitize !44
  br i1 %306, label %307, label %308, !prof !45, !nosanitize !44

307:                                              ; preds = %49, %303
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

308:                                              ; preds = %303
  %309 = extractvalue { i32, i1 } %305, 0, !nosanitize !44
  %310 = icmp ult i32 %291, %309
  br i1 %310, label %385, label %311

311:                                              ; preds = %308
  %312 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %29, i32 %298), !nosanitize !44
  %313 = extractvalue { i32, i1 } %312, 1, !nosanitize !44
  br i1 %313, label %314, label %315, !prof !45, !nosanitize !44

314:                                              ; preds = %56, %311
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

315:                                              ; preds = %311
  %316 = extractvalue { i32, i1 } %312, 0, !nosanitize !44
  %317 = load ptr, ptr %7, align 8, !tbaa !34
  %318 = getelementptr inbounds nuw i8, ptr %317, i64 %30
  %319 = zext i32 %316 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %317, ptr align 1 %318, i64 %319, i1 false)
  %320 = load i32, ptr %8, align 8, !tbaa !81
  %321 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %320, i32 %29), !nosanitize !44
  %322 = extractvalue { i32, i1 } %321, 1, !nosanitize !44
  br i1 %322, label %323, label %324, !prof !45, !nosanitize !44

323:                                              ; preds = %59, %315
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

324:                                              ; preds = %315
  %325 = extractvalue { i32, i1 } %321, 0, !nosanitize !44
  store i32 %325, ptr %8, align 8, !tbaa !81
  %326 = load i32, ptr %6, align 4, !tbaa !71
  %327 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %326, i32 %29), !nosanitize !44
  %328 = extractvalue { i32, i1 } %327, 1, !nosanitize !44
  br i1 %328, label %329, label %330, !prof !45, !nosanitize !44

329:                                              ; preds = %72, %67, %330, %324
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

330:                                              ; preds = %324
  %331 = extractvalue { i32, i1 } %327, 0, !nosanitize !44
  store i32 %331, ptr %6, align 4, !tbaa !71
  %332 = load i64, ptr %9, align 8, !tbaa !72
  %333 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %332, i64 %30), !nosanitize !44
  %334 = extractvalue { i64, i1 } %333, 1, !nosanitize !44
  br i1 %334, label %329, label %335, !prof !45, !nosanitize !44

335:                                              ; preds = %330
  %336 = extractvalue { i64, i1 } %333, 0, !nosanitize !44
  store i64 %336, ptr %9, align 8, !tbaa !72
  %337 = load i32, ptr %10, align 4, !tbaa !74
  %338 = icmp ugt i32 %337, %331
  br i1 %338, label %339, label %340

339:                                              ; preds = %335
  store i32 %331, ptr %10, align 4, !tbaa !74
  br label %340

340:                                              ; preds = %339, %335
  %341 = load i32, ptr %4, align 8, !tbaa !31
  %342 = load i32, ptr %11, align 4, !tbaa !36
  %343 = load ptr, ptr %12, align 8, !tbaa !37
  %344 = zext i32 %342 to i64
  %345 = getelementptr inbounds nuw i16, ptr %343, i64 %344
  br label %346

346:                                              ; preds = %357, %340
  %347 = phi ptr [ %345, %340 ], [ %349, %357 ]
  %348 = phi i32 [ %342, %340 ], [ %358, %357 ]
  %349 = getelementptr inbounds i8, ptr %347, i64 -2
  %350 = load i16, ptr %349, align 2, !tbaa !60
  %351 = zext i16 %350 to i32
  %352 = tail call i32 @llvm.usub.sat.i32(i32 %351, i32 %341)
  %353 = trunc nuw i32 %352 to i16
  store i16 %353, ptr %349, align 2, !tbaa !60
  %354 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %348, i32 1), !nosanitize !44
  %355 = extractvalue { i32, i1 } %354, 1, !nosanitize !44
  br i1 %355, label %356, label %357, !prof !45, !nosanitize !44

356:                                              ; preds = %88, %346
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

357:                                              ; preds = %346
  %358 = extractvalue { i32, i1 } %354, 0, !nosanitize !44
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %346, !llvm.loop !82

360:                                              ; preds = %357
  %361 = load ptr, ptr %13, align 8, !tbaa !35
  %362 = zext i32 %341 to i64
  %363 = getelementptr inbounds nuw i16, ptr %361, i64 %362
  br label %364

364:                                              ; preds = %375, %360
  %365 = phi ptr [ %363, %360 ], [ %367, %375 ]
  %366 = phi i32 [ %341, %360 ], [ %376, %375 ]
  %367 = getelementptr inbounds i8, ptr %365, i64 -2
  %368 = load i16, ptr %367, align 2, !tbaa !60
  %369 = zext i16 %368 to i32
  %370 = tail call i32 @llvm.usub.sat.i32(i32 %369, i32 %341)
  %371 = trunc nuw i32 %370 to i16
  store i16 %371, ptr %367, align 2, !tbaa !60
  %372 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %366, i32 1), !nosanitize !44
  %373 = extractvalue { i32, i1 } %372, 1, !nosanitize !44
  br i1 %373, label %374, label %375, !prof !45, !nosanitize !44

374:                                              ; preds = %105, %364
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

375:                                              ; preds = %364
  %376 = extractvalue { i32, i1 } %372, 0, !nosanitize !44
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %364, !llvm.loop !84

378:                                              ; preds = %375
  store i32 1, ptr %14, align 8, !tbaa !61
  %379 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %298, i32 %29), !nosanitize !44
  %380 = extractvalue { i32, i1 } %379, 1, !nosanitize !44
  br i1 %380, label %381, label %382, !prof !45, !nosanitize !44

381:                                              ; preds = %118, %378
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

382:                                              ; preds = %378
  %383 = extractvalue { i32, i1 } %379, 0, !nosanitize !44
  %384 = load i32, ptr %3, align 4, !tbaa !73
  br label %385

385:                                              ; preds = %382, %308
  %386 = phi i32 [ %384, %382 ], [ %283, %308 ]
  %387 = phi i32 [ %331, %382 ], [ %291, %308 ]
  %388 = phi i32 [ %383, %382 ], [ %298, %308 ]
  %389 = load ptr, ptr %0, align 8, !tbaa !19
  %390 = getelementptr inbounds nuw i8, ptr %389, i64 8
  %391 = load i32, ptr %390, align 8, !tbaa !79
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %551, label %393

393:                                              ; preds = %385
  %394 = load ptr, ptr %7, align 8, !tbaa !34
  %395 = zext i32 %387 to i64
  %396 = getelementptr inbounds nuw i8, ptr %394, i64 %395
  %397 = zext i32 %386 to i64
  %398 = getelementptr inbounds nuw i8, ptr %396, i64 %397
  %399 = tail call i32 @llvm.umin.i32(i32 %391, i32 %388)
  %400 = icmp eq i32 %388, 0
  br i1 %400, label %432, label %401

401:                                              ; preds = %393
  %402 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %391, i32 %399), !nosanitize !44
  %403 = extractvalue { i32, i1 } %402, 1, !nosanitize !44
  br i1 false, label %404, label %405, !prof !45, !nosanitize !44

404:                                              ; preds = %140, %401
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

405:                                              ; preds = %401
  %406 = extractvalue { i32, i1 } %402, 0, !nosanitize !44
  store i32 %406, ptr %390, align 8, !tbaa !79
  %407 = load ptr, ptr %389, align 8, !tbaa !80
  %408 = zext i32 %399 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %398, ptr align 1 %407, i64 %408, i1 false)
  %409 = getelementptr inbounds nuw i8, ptr %389, i64 56
  %410 = load ptr, ptr %409, align 8, !tbaa !18
  %411 = getelementptr inbounds nuw i8, ptr %410, i64 48
  %412 = load i32, ptr %411, align 8, !tbaa !29
  switch i32 %412, label %421 [
    i32 1, label %413
    i32 2, label %417
  ]

413:                                              ; preds = %405
  %414 = getelementptr inbounds nuw i8, ptr %389, i64 96
  %415 = load i64, ptr %414, align 8, !tbaa !57
  %416 = tail call i64 @adler32(i64 noundef %415, ptr noundef %398, i32 noundef %399) #8
  store i64 %416, ptr %414, align 8, !tbaa !57
  br label %421

417:                                              ; preds = %405
  %418 = getelementptr inbounds nuw i8, ptr %389, i64 96
  %419 = load i64, ptr %418, align 8, !tbaa !57
  %420 = tail call i64 @crc32(i64 noundef %419, ptr noundef %398, i32 noundef %399) #8
  store i64 %420, ptr %418, align 8, !tbaa !57
  br label %421

421:                                              ; preds = %417, %413, %405
  %422 = load ptr, ptr %389, align 8, !tbaa !80
  %423 = getelementptr inbounds nuw i8, ptr %422, i64 %408
  store ptr %423, ptr %389, align 8, !tbaa !80
  %424 = getelementptr inbounds nuw i8, ptr %389, i64 16
  %425 = load i64, ptr %424, align 8, !tbaa !53
  %426 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %425, i64 %408), !nosanitize !44
  %427 = extractvalue { i64, i1 } %426, 1, !nosanitize !44
  br i1 %427, label %428, label %429, !prof !45, !nosanitize !44

428:                                              ; preds = %159, %421
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

429:                                              ; preds = %421
  %430 = extractvalue { i64, i1 } %426, 0, !nosanitize !44
  store i64 %430, ptr %424, align 8, !tbaa !53
  %431 = load i32, ptr %3, align 4, !tbaa !73
  br label %432

432:                                              ; preds = %429, %393
  %433 = phi i32 [ %386, %393 ], [ %431, %429 ]
  %434 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %433, i32 %399), !nosanitize !44
  %435 = extractvalue { i32, i1 } %434, 1, !nosanitize !44
  br i1 %435, label %436, label %437, !prof !45, !nosanitize !44

436:                                              ; preds = %169, %432
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

437:                                              ; preds = %432
  %438 = extractvalue { i32, i1 } %434, 0, !nosanitize !44
  store i32 %438, ptr %3, align 4, !tbaa !73
  %439 = load i32, ptr %10, align 4, !tbaa !74
  %440 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %438, i32 %439), !nosanitize !44
  %441 = extractvalue { i32, i1 } %440, 1, !nosanitize !44
  br i1 %441, label %442, label %443, !prof !45, !nosanitize !44

442:                                              ; preds = %173, %437
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

443:                                              ; preds = %437
  %444 = extractvalue { i32, i1 } %440, 0, !nosanitize !44
  %445 = icmp ugt i32 %444, 2
  br i1 %445, label %446, label %544

446:                                              ; preds = %443
  %447 = load i32, ptr %6, align 4, !tbaa !71
  %448 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %447, i32 %439), !nosanitize !44
  %449 = extractvalue { i32, i1 } %448, 0, !nosanitize !44
  %450 = extractvalue { i32, i1 } %448, 1, !nosanitize !44
  br i1 %450, label %451, label %452, !prof !45, !nosanitize !44

451:                                              ; preds = %181, %446
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

452:                                              ; preds = %446
  %453 = load ptr, ptr %7, align 8, !tbaa !34
  %454 = zext i32 %449 to i64
  %455 = getelementptr inbounds nuw i8, ptr %453, i64 %454
  %456 = load i8, ptr %455, align 1, !tbaa !5
  %457 = zext i8 %456 to i32
  store i32 %457, ptr %15, align 8, !tbaa !78
  %458 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %449, i32 1), !nosanitize !44
  %459 = extractvalue { i32, i1 } %458, 1, !nosanitize !44
  br i1 %459, label %460, label %461, !prof !45, !nosanitize !44

460:                                              ; preds = %186, %452
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

461:                                              ; preds = %452
  %462 = extractvalue { i32, i1 } %458, 0, !nosanitize !44
  %463 = load i32, ptr %16, align 8, !tbaa !52
  %464 = shl i32 %457, %463
  %465 = zext i32 %462 to i64
  %466 = getelementptr inbounds nuw i8, ptr %453, i64 %465
  %467 = load i8, ptr %466, align 1, !tbaa !5
  %468 = zext i8 %467 to i32
  %469 = xor i32 %464, %468
  %470 = load i32, ptr %17, align 4, !tbaa !51
  %471 = and i32 %469, %470
  store i32 %471, ptr %15, align 8, !tbaa !78
  %mv.h = icmp sge i32 %447, 0
  %mv.h.fr = freeze i1 %mv.h
  br i1 %mv.h.fr, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %461
  br label %472

472:                                              ; preds = %503, %.mv.ph.mv.fast
  %473 = phi i32 [ %471, %.mv.ph.mv.fast ], [ %489, %503 ]
  %474 = phi i32 [ %439, %.mv.ph.mv.fast ], [ %500, %503 ]
  %475 = phi i32 [ %449, %.mv.ph.mv.fast ], [ %504, %503 ]
  %476 = icmp eq i32 %474, 0
  br i1 %476, label %.loopexit, label %477

477:                                              ; preds = %472
  %478 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %475, i32 3), !nosanitize !44
  %479 = extractvalue { i32, i1 } %478, 1, !nosanitize !44
  br i1 false, label %515, label %480, !prof !45, !nosanitize !44

480:                                              ; preds = %477
  %481 = shl i32 %473, %463
  %482 = extractvalue { i32, i1 } %478, 0, !nosanitize !44
  %483 = add i32 %482, -1
  %484 = zext i32 %483 to i64
  %485 = getelementptr inbounds nuw i8, ptr %453, i64 %484
  %486 = load i8, ptr %485, align 1, !tbaa !5
  %487 = zext i8 %486 to i32
  %488 = xor i32 %481, %487
  %489 = and i32 %488, %470
  store i32 %489, ptr %15, align 8, !tbaa !78
  %490 = load ptr, ptr %12, align 8, !tbaa !37
  %491 = zext i32 %489 to i64
  %492 = getelementptr inbounds nuw i16, ptr %490, i64 %491
  %493 = load i16, ptr %492, align 2, !tbaa !60
  %494 = load ptr, ptr %13, align 8, !tbaa !35
  %495 = load i32, ptr %18, align 8, !tbaa !32
  %496 = and i32 %495, %475
  %497 = zext i32 %496 to i64
  %498 = getelementptr inbounds nuw i16, ptr %494, i64 %497
  store i16 %493, ptr %498, align 2, !tbaa !60
  %499 = trunc i32 %475 to i16
  store i16 %499, ptr %492, align 2, !tbaa !60
  %500 = add i32 %474, -1
  store i32 %500, ptr %10, align 4, !tbaa !74
  %501 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %438, i32 %500), !nosanitize !44
  %502 = extractvalue { i32, i1 } %501, 1, !nosanitize !44
  br i1 false, label %539, label %503, !prof !45, !nosanitize !44

503:                                              ; preds = %480
  %504 = add nuw i32 %475, 1
  %505 = extractvalue { i32, i1 } %501, 0, !nosanitize !44
  %506 = icmp ult i32 %505, 3
  br i1 %506, label %.loopexit, label %472, !llvm.loop !85

.mv.ph:                                           ; preds = %461
  br label %507

507:                                              ; preds = %540, %.mv.ph
  %508 = phi i32 [ %471, %.mv.ph ], [ %525, %540 ]
  %509 = phi i32 [ %439, %.mv.ph ], [ %536, %540 ]
  %510 = phi i32 [ %449, %.mv.ph ], [ %541, %540 ]
  %511 = icmp eq i32 %509, 0
  br i1 %511, label %.loopexit, label %512

512:                                              ; preds = %507
  %513 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %510, i32 3), !nosanitize !44
  %514 = extractvalue { i32, i1 } %513, 1, !nosanitize !44
  br i1 %514, label %515, label %516, !prof !45, !nosanitize !44

515:                                              ; preds = %252, %210, %477, %512
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

516:                                              ; preds = %512
  %517 = shl i32 %508, %463
  %518 = extractvalue { i32, i1 } %513, 0, !nosanitize !44
  %519 = add i32 %518, -1
  %520 = zext i32 %519 to i64
  %521 = getelementptr inbounds nuw i8, ptr %453, i64 %520
  %522 = load i8, ptr %521, align 1, !tbaa !5
  %523 = zext i8 %522 to i32
  %524 = xor i32 %517, %523
  %525 = and i32 %524, %470
  store i32 %525, ptr %15, align 8, !tbaa !78
  %526 = load ptr, ptr %12, align 8, !tbaa !37
  %527 = zext i32 %525 to i64
  %528 = getelementptr inbounds nuw i16, ptr %526, i64 %527
  %529 = load i16, ptr %528, align 2, !tbaa !60
  %530 = load ptr, ptr %13, align 8, !tbaa !35
  %531 = load i32, ptr %18, align 8, !tbaa !32
  %532 = and i32 %531, %510
  %533 = zext i32 %532 to i64
  %534 = getelementptr inbounds nuw i16, ptr %530, i64 %533
  store i16 %529, ptr %534, align 2, !tbaa !60
  %535 = trunc i32 %510 to i16
  store i16 %535, ptr %528, align 2, !tbaa !60
  %536 = add i32 %509, -1
  store i32 %536, ptr %10, align 4, !tbaa !74
  %537 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %438, i32 %536), !nosanitize !44
  %538 = extractvalue { i32, i1 } %537, 1, !nosanitize !44
  br i1 false, label %539, label %540, !prof !45, !nosanitize !44

539:                                              ; preds = %255, %213, %480, %516
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

540:                                              ; preds = %516
  %541 = add nuw i32 %510, 1
  %542 = extractvalue { i32, i1 } %537, 0, !nosanitize !44
  %543 = icmp ult i32 %542, 3
  br i1 %543, label %.loopexit, label %507, !llvm.loop !85

.loopexit:                                        ; preds = %503, %472, %507, %540
  br label %544

544:                                              ; preds = %.loopexit, %443
  %545 = icmp ult i32 %438, 262
  br i1 %545, label %546, label %551

546:                                              ; preds = %544
  %547 = load ptr, ptr %0, align 8, !tbaa !19
  %548 = getelementptr inbounds nuw i8, ptr %547, i64 8
  %549 = load i32, ptr %548, align 8, !tbaa !79
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %551, label %282, !llvm.loop !86

551:                                              ; preds = %242, %240, %124, %546, %544, %385
  %552 = phi i32 [ %438, %546 ], [ %438, %544 ], [ %386, %385 ], [ %174, %242 ], [ %174, %240 ], [ %125, %124 ]
  %553 = load i64, ptr %19, align 8, !tbaa !38
  %554 = load i64, ptr %5, align 8, !tbaa !59
  %555 = icmp ult i64 %553, %554
  br i1 %555, label %556, label %595

556:                                              ; preds = %551
  %557 = load i32, ptr %6, align 4, !tbaa !71
  %558 = zext i32 %557 to i64
  %559 = zext i32 %552 to i64
  %560 = add nuw nsw i64 %559, %558
  %561 = icmp ult i64 %553, %560
  br i1 %561, label %562, label %572

562:                                              ; preds = %556
  %563 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %554, i64 %560), !nosanitize !44
  %564 = extractvalue { i64, i1 } %563, 1, !nosanitize !44
  br i1 %564, label %565, label %566, !prof !45, !nosanitize !44

565:                                              ; preds = %562
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

566:                                              ; preds = %562
  %567 = extractvalue { i64, i1 } %563, 0, !nosanitize !44
  %568 = tail call i64 @llvm.umin.i64(i64 %567, i64 258)
  %569 = load ptr, ptr %7, align 8, !tbaa !34
  %570 = getelementptr inbounds nuw i8, ptr %569, i64 %560
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %570, i8 0, i64 %568, i1 false)
  %571 = add nuw nsw i64 %568, %560
  br label %592

572:                                              ; preds = %556
  %573 = add nuw nsw i64 %560, 258
  %574 = icmp ult i64 %553, %573
  br i1 %574, label %575, label %595

575:                                              ; preds = %572
  %576 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %554, i64 %553), !nosanitize !44
  %577 = extractvalue { i64, i1 } %576, 1, !nosanitize !44
  br i1 false, label %578, label %579, !prof !45, !nosanitize !44

578:                                              ; preds = %575
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

579:                                              ; preds = %575
  %580 = sub nuw nsw i64 %573, %553
  %581 = extractvalue { i64, i1 } %576, 0, !nosanitize !44
  %582 = tail call i64 @llvm.umin.i64(i64 %580, i64 %581)
  %583 = load ptr, ptr %7, align 8, !tbaa !34
  %584 = getelementptr inbounds nuw i8, ptr %583, i64 %553
  %585 = and i64 %582, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %584, i8 0, i64 %585, i1 false)
  %586 = load i64, ptr %19, align 8, !tbaa !38
  %587 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %586, i64 %582), !nosanitize !44
  %588 = extractvalue { i64, i1 } %587, 1, !nosanitize !44
  br i1 %588, label %589, label %590, !prof !45, !nosanitize !44

589:                                              ; preds = %579
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

590:                                              ; preds = %579
  %591 = extractvalue { i64, i1 } %587, 0, !nosanitize !44
  br label %592

592:                                              ; preds = %590, %566
  %593 = phi i64 [ %571, %566 ], [ %591, %590 ]
  store i64 %593, ptr %19, align 8, !tbaa !38
  %594 = load i32, ptr %3, align 4, !tbaa !73
  br label %595

595:                                              ; preds = %592, %572, %551
  %596 = phi i32 [ %552, %551 ], [ %552, %572 ], [ %594, %592 ]
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %598, label %600

598:                                              ; preds = %595
  %599 = icmp eq i32 %1, 0
  br i1 %599, label %854, label %717

600:                                              ; preds = %595, %25
  store i32 0, ptr %20, align 8, !tbaa !76
  %601 = load ptr, ptr %7, align 8, !tbaa !34
  %602 = load i32, ptr %6, align 4, !tbaa !71
  %603 = zext i32 %602 to i64
  %604 = getelementptr inbounds nuw i8, ptr %601, i64 %603
  %605 = load i8, ptr %604, align 1, !tbaa !5
  %606 = load i32, ptr %22, align 4, !tbaa !118
  %607 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %606, i32 1), !nosanitize !44
  %608 = extractvalue { i32, i1 } %607, 1, !nosanitize !44
  br i1 %608, label %609, label %610, !prof !45, !nosanitize !44

609:                                              ; preds = %600
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

610:                                              ; preds = %600
  %611 = extractvalue { i32, i1 } %607, 0, !nosanitize !44
  %612 = load ptr, ptr %21, align 8, !tbaa !43
  store i32 %611, ptr %22, align 4, !tbaa !118
  %613 = zext i32 %606 to i64
  %614 = getelementptr inbounds nuw i8, ptr %612, i64 %613
  store i8 0, ptr %614, align 1, !tbaa !5
  %615 = load i32, ptr %22, align 4, !tbaa !118
  %616 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %615, i32 1), !nosanitize !44
  %617 = extractvalue { i32, i1 } %616, 1, !nosanitize !44
  br i1 %617, label %618, label %619, !prof !45, !nosanitize !44

618:                                              ; preds = %610
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

619:                                              ; preds = %610
  %620 = extractvalue { i32, i1 } %616, 0, !nosanitize !44
  %621 = load ptr, ptr %21, align 8, !tbaa !43
  store i32 %620, ptr %22, align 4, !tbaa !118
  %622 = zext i32 %615 to i64
  %623 = getelementptr inbounds nuw i8, ptr %621, i64 %622
  store i8 0, ptr %623, align 1, !tbaa !5
  %624 = load i32, ptr %22, align 4, !tbaa !118
  %625 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %624, i32 1), !nosanitize !44
  %626 = extractvalue { i32, i1 } %625, 1, !nosanitize !44
  br i1 %626, label %627, label %628, !prof !45, !nosanitize !44

627:                                              ; preds = %619
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

628:                                              ; preds = %619
  %629 = extractvalue { i32, i1 } %625, 0, !nosanitize !44
  %630 = load ptr, ptr %21, align 8, !tbaa !43
  store i32 %629, ptr %22, align 4, !tbaa !118
  %631 = zext i32 %624 to i64
  %632 = getelementptr inbounds nuw i8, ptr %630, i64 %631
  store i8 %605, ptr %632, align 1, !tbaa !5
  %633 = zext i8 %605 to i64
  %634 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %23, i64 0, i64 %633
  %635 = load i16, ptr %634, align 4, !tbaa !5
  %636 = add i16 %635, 1
  store i16 %636, ptr %634, align 4, !tbaa !5
  %637 = load i32, ptr %22, align 4, !tbaa !118
  %638 = load i32, ptr %24, align 8, !tbaa !46
  %639 = icmp eq i32 %637, %638
  %640 = load i32, ptr %3, align 4, !tbaa !73
  %641 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %640, i32 1), !nosanitize !44
  %642 = extractvalue { i32, i1 } %641, 1, !nosanitize !44
  br i1 %642, label %643, label %644, !prof !45, !nosanitize !44

643:                                              ; preds = %795, %726, %659, %628
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

644:                                              ; preds = %628
  %645 = extractvalue { i32, i1 } %641, 0, !nosanitize !44
  store i32 %645, ptr %3, align 4, !tbaa !73
  %646 = load i32, ptr %6, align 4, !tbaa !71
  %647 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %646, i32 1), !nosanitize !44
  %648 = extractvalue { i32, i1 } %647, 1, !nosanitize !44
  br i1 %648, label %649, label %650, !prof !45, !nosanitize !44

649:                                              ; preds = %644
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

650:                                              ; preds = %644
  %651 = extractvalue { i32, i1 } %647, 0, !nosanitize !44
  store i32 %651, ptr %6, align 4, !tbaa !71
  br i1 %639, label %652, label %716

652:                                              ; preds = %650
  %653 = load i64, ptr %9, align 8, !tbaa !72
  %654 = icmp sgt i64 %653, -1
  br i1 %654, label %655, label %659

655:                                              ; preds = %652
  %656 = load ptr, ptr %7, align 8, !tbaa !34
  %657 = and i64 %653, 4294967295
  %658 = getelementptr inbounds nuw i8, ptr %656, i64 %657
  br label %659

659:                                              ; preds = %655, %652
  %660 = phi ptr [ %658, %655 ], [ null, %652 ]
  %661 = zext i32 %651 to i64
  %662 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %661, i64 %653), !nosanitize !44
  %663 = extractvalue { i64, i1 } %662, 1, !nosanitize !44
  br i1 %663, label %643, label %664, !prof !45, !nosanitize !44

664:                                              ; preds = %659
  %665 = extractvalue { i64, i1 } %662, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %660, i64 noundef %665, i32 noundef 0) #8
  %666 = load i32, ptr %6, align 4, !tbaa !71
  %667 = zext i32 %666 to i64
  store i64 %667, ptr %9, align 8, !tbaa !72
  %668 = load ptr, ptr %0, align 8, !tbaa !19
  %669 = getelementptr inbounds nuw i8, ptr %668, i64 56
  %670 = load ptr, ptr %669, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %670) #8
  %671 = getelementptr inbounds nuw i8, ptr %670, i64 40
  %672 = load i64, ptr %671, align 8, !tbaa !55
  %673 = getelementptr inbounds nuw i8, ptr %668, i64 32
  %674 = load i32, ptr %673, align 8, !tbaa !96
  %675 = zext i32 %674 to i64
  %676 = tail call i64 @llvm.umin.i64(i64 %672, i64 %675)
  %677 = trunc nuw i64 %676 to i32
  %678 = icmp eq i64 %676, 0
  br i1 %678, label %711, label %679

679:                                              ; preds = %664
  %680 = getelementptr inbounds nuw i8, ptr %668, i64 24
  %681 = load ptr, ptr %680, align 8, !tbaa !95
  %682 = getelementptr inbounds nuw i8, ptr %670, i64 32
  %683 = load ptr, ptr %682, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %681, ptr align 1 %683, i64 %676, i1 false)
  %684 = load ptr, ptr %680, align 8, !tbaa !95
  %685 = getelementptr inbounds nuw i8, ptr %684, i64 %676
  store ptr %685, ptr %680, align 8, !tbaa !95
  %686 = load ptr, ptr %682, align 8, !tbaa !56
  %687 = getelementptr inbounds nuw i8, ptr %686, i64 %676
  store ptr %687, ptr %682, align 8, !tbaa !56
  %688 = getelementptr inbounds nuw i8, ptr %668, i64 40
  %689 = load i64, ptr %688, align 8, !tbaa !97
  %690 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %689, i64 %676), !nosanitize !44
  %691 = extractvalue { i64, i1 } %690, 1, !nosanitize !44
  br i1 %691, label %692, label %693, !prof !45, !nosanitize !44

692:                                              ; preds = %679
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

693:                                              ; preds = %679
  %694 = extractvalue { i64, i1 } %690, 0, !nosanitize !44
  store i64 %694, ptr %688, align 8, !tbaa !97
  %695 = load i32, ptr %673, align 8, !tbaa !96
  %696 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %695, i32 %677), !nosanitize !44
  %697 = extractvalue { i32, i1 } %696, 1, !nosanitize !44
  br i1 %697, label %698, label %699, !prof !45, !nosanitize !44

698:                                              ; preds = %693
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

699:                                              ; preds = %693
  %700 = extractvalue { i32, i1 } %696, 0, !nosanitize !44
  store i32 %700, ptr %673, align 8, !tbaa !96
  %701 = load i64, ptr %671, align 8, !tbaa !55
  %702 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %701, i64 %676), !nosanitize !44
  %703 = extractvalue { i64, i1 } %702, 1, !nosanitize !44
  br i1 %703, label %704, label %705, !prof !45, !nosanitize !44

704:                                              ; preds = %699
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

705:                                              ; preds = %699
  %706 = extractvalue { i64, i1 } %702, 0, !nosanitize !44
  store i64 %706, ptr %671, align 8, !tbaa !55
  %707 = icmp eq i64 %706, 0
  br i1 %707, label %708, label %711

708:                                              ; preds = %705
  %709 = getelementptr inbounds nuw i8, ptr %670, i64 16
  %710 = load ptr, ptr %709, align 8, !tbaa !40
  store ptr %710, ptr %682, align 8, !tbaa !56
  br label %711

711:                                              ; preds = %708, %705, %664
  %712 = load ptr, ptr %0, align 8, !tbaa !19
  %713 = getelementptr inbounds nuw i8, ptr %712, i64 32
  %714 = load i32, ptr %713, align 8, !tbaa !96
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %854, label %716

716:                                              ; preds = %711, %650
  br label %25

717:                                              ; preds = %598
  store i32 0, ptr %10, align 4, !tbaa !74
  %718 = icmp eq i32 %1, 4
  br i1 %718, label %719, label %785

719:                                              ; preds = %717
  %720 = load i64, ptr %9, align 8, !tbaa !72
  %721 = icmp sgt i64 %720, -1
  br i1 %721, label %722, label %726

722:                                              ; preds = %719
  %723 = load ptr, ptr %7, align 8, !tbaa !34
  %724 = and i64 %720, 4294967295
  %725 = getelementptr inbounds nuw i8, ptr %723, i64 %724
  br label %726

726:                                              ; preds = %722, %719
  %727 = phi ptr [ %725, %722 ], [ null, %719 ]
  %728 = load i32, ptr %6, align 4, !tbaa !71
  %729 = zext i32 %728 to i64
  %730 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %729, i64 %720), !nosanitize !44
  %731 = extractvalue { i64, i1 } %730, 1, !nosanitize !44
  br i1 %731, label %643, label %732, !prof !45, !nosanitize !44

732:                                              ; preds = %726
  %733 = extractvalue { i64, i1 } %730, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %727, i64 noundef %733, i32 noundef 1) #8
  %734 = load i32, ptr %6, align 4, !tbaa !71
  %735 = zext i32 %734 to i64
  store i64 %735, ptr %9, align 8, !tbaa !72
  %736 = load ptr, ptr %0, align 8, !tbaa !19
  %737 = getelementptr inbounds nuw i8, ptr %736, i64 56
  %738 = load ptr, ptr %737, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %738) #8
  %739 = getelementptr inbounds nuw i8, ptr %738, i64 40
  %740 = load i64, ptr %739, align 8, !tbaa !55
  %741 = getelementptr inbounds nuw i8, ptr %736, i64 32
  %742 = load i32, ptr %741, align 8, !tbaa !96
  %743 = zext i32 %742 to i64
  %744 = tail call i64 @llvm.umin.i64(i64 %740, i64 %743)
  %745 = trunc nuw i64 %744 to i32
  %746 = icmp eq i64 %744, 0
  br i1 %746, label %779, label %747

747:                                              ; preds = %732
  %748 = getelementptr inbounds nuw i8, ptr %736, i64 24
  %749 = load ptr, ptr %748, align 8, !tbaa !95
  %750 = getelementptr inbounds nuw i8, ptr %738, i64 32
  %751 = load ptr, ptr %750, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %749, ptr align 1 %751, i64 %744, i1 false)
  %752 = load ptr, ptr %748, align 8, !tbaa !95
  %753 = getelementptr inbounds nuw i8, ptr %752, i64 %744
  store ptr %753, ptr %748, align 8, !tbaa !95
  %754 = load ptr, ptr %750, align 8, !tbaa !56
  %755 = getelementptr inbounds nuw i8, ptr %754, i64 %744
  store ptr %755, ptr %750, align 8, !tbaa !56
  %756 = getelementptr inbounds nuw i8, ptr %736, i64 40
  %757 = load i64, ptr %756, align 8, !tbaa !97
  %758 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %757, i64 %744), !nosanitize !44
  %759 = extractvalue { i64, i1 } %758, 1, !nosanitize !44
  br i1 %759, label %760, label %761, !prof !45, !nosanitize !44

760:                                              ; preds = %747
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

761:                                              ; preds = %747
  %762 = extractvalue { i64, i1 } %758, 0, !nosanitize !44
  store i64 %762, ptr %756, align 8, !tbaa !97
  %763 = load i32, ptr %741, align 8, !tbaa !96
  %764 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %763, i32 %745), !nosanitize !44
  %765 = extractvalue { i32, i1 } %764, 1, !nosanitize !44
  br i1 %765, label %766, label %767, !prof !45, !nosanitize !44

766:                                              ; preds = %761
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

767:                                              ; preds = %761
  %768 = extractvalue { i32, i1 } %764, 0, !nosanitize !44
  store i32 %768, ptr %741, align 8, !tbaa !96
  %769 = load i64, ptr %739, align 8, !tbaa !55
  %770 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %769, i64 %744), !nosanitize !44
  %771 = extractvalue { i64, i1 } %770, 1, !nosanitize !44
  br i1 %771, label %772, label %773, !prof !45, !nosanitize !44

772:                                              ; preds = %767
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

773:                                              ; preds = %767
  %774 = extractvalue { i64, i1 } %770, 0, !nosanitize !44
  store i64 %774, ptr %739, align 8, !tbaa !55
  %775 = icmp eq i64 %774, 0
  br i1 %775, label %776, label %779

776:                                              ; preds = %773
  %777 = getelementptr inbounds nuw i8, ptr %738, i64 16
  %778 = load ptr, ptr %777, align 8, !tbaa !40
  store ptr %778, ptr %750, align 8, !tbaa !56
  br label %779

779:                                              ; preds = %776, %773, %732
  %780 = load ptr, ptr %0, align 8, !tbaa !19
  %781 = getelementptr inbounds nuw i8, ptr %780, i64 32
  %782 = load i32, ptr %781, align 8, !tbaa !96
  %783 = icmp eq i32 %782, 0
  %784 = select i1 %783, i32 2, i32 3
  br label %854

785:                                              ; preds = %717
  %786 = load i32, ptr %22, align 4, !tbaa !118
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %853, label %788

788:                                              ; preds = %785
  %789 = load i64, ptr %9, align 8, !tbaa !72
  %790 = icmp sgt i64 %789, -1
  br i1 %790, label %791, label %795

791:                                              ; preds = %788
  %792 = load ptr, ptr %7, align 8, !tbaa !34
  %793 = and i64 %789, 4294967295
  %794 = getelementptr inbounds nuw i8, ptr %792, i64 %793
  br label %795

795:                                              ; preds = %791, %788
  %796 = phi ptr [ %794, %791 ], [ null, %788 ]
  %797 = load i32, ptr %6, align 4, !tbaa !71
  %798 = zext i32 %797 to i64
  %799 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %798, i64 %789), !nosanitize !44
  %800 = extractvalue { i64, i1 } %799, 1, !nosanitize !44
  br i1 %800, label %643, label %801, !prof !45, !nosanitize !44

801:                                              ; preds = %795
  %802 = extractvalue { i64, i1 } %799, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %796, i64 noundef %802, i32 noundef 0) #8
  %803 = load i32, ptr %6, align 4, !tbaa !71
  %804 = zext i32 %803 to i64
  store i64 %804, ptr %9, align 8, !tbaa !72
  %805 = load ptr, ptr %0, align 8, !tbaa !19
  %806 = getelementptr inbounds nuw i8, ptr %805, i64 56
  %807 = load ptr, ptr %806, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %807) #8
  %808 = getelementptr inbounds nuw i8, ptr %807, i64 40
  %809 = load i64, ptr %808, align 8, !tbaa !55
  %810 = getelementptr inbounds nuw i8, ptr %805, i64 32
  %811 = load i32, ptr %810, align 8, !tbaa !96
  %812 = zext i32 %811 to i64
  %813 = tail call i64 @llvm.umin.i64(i64 %809, i64 %812)
  %814 = trunc nuw i64 %813 to i32
  %815 = icmp eq i64 %813, 0
  br i1 %815, label %848, label %816

816:                                              ; preds = %801
  %817 = getelementptr inbounds nuw i8, ptr %805, i64 24
  %818 = load ptr, ptr %817, align 8, !tbaa !95
  %819 = getelementptr inbounds nuw i8, ptr %807, i64 32
  %820 = load ptr, ptr %819, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %818, ptr align 1 %820, i64 %813, i1 false)
  %821 = load ptr, ptr %817, align 8, !tbaa !95
  %822 = getelementptr inbounds nuw i8, ptr %821, i64 %813
  store ptr %822, ptr %817, align 8, !tbaa !95
  %823 = load ptr, ptr %819, align 8, !tbaa !56
  %824 = getelementptr inbounds nuw i8, ptr %823, i64 %813
  store ptr %824, ptr %819, align 8, !tbaa !56
  %825 = getelementptr inbounds nuw i8, ptr %805, i64 40
  %826 = load i64, ptr %825, align 8, !tbaa !97
  %827 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %826, i64 %813), !nosanitize !44
  %828 = extractvalue { i64, i1 } %827, 1, !nosanitize !44
  br i1 %828, label %829, label %830, !prof !45, !nosanitize !44

829:                                              ; preds = %816
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

830:                                              ; preds = %816
  %831 = extractvalue { i64, i1 } %827, 0, !nosanitize !44
  store i64 %831, ptr %825, align 8, !tbaa !97
  %832 = load i32, ptr %810, align 8, !tbaa !96
  %833 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %832, i32 %814), !nosanitize !44
  %834 = extractvalue { i32, i1 } %833, 1, !nosanitize !44
  br i1 %834, label %835, label %836, !prof !45, !nosanitize !44

835:                                              ; preds = %830
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

836:                                              ; preds = %830
  %837 = extractvalue { i32, i1 } %833, 0, !nosanitize !44
  store i32 %837, ptr %810, align 8, !tbaa !96
  %838 = load i64, ptr %808, align 8, !tbaa !55
  %839 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %838, i64 %813), !nosanitize !44
  %840 = extractvalue { i64, i1 } %839, 1, !nosanitize !44
  br i1 %840, label %841, label %842, !prof !45, !nosanitize !44

841:                                              ; preds = %836
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

842:                                              ; preds = %836
  %843 = extractvalue { i64, i1 } %839, 0, !nosanitize !44
  store i64 %843, ptr %808, align 8, !tbaa !55
  %844 = icmp eq i64 %843, 0
  br i1 %844, label %845, label %848

845:                                              ; preds = %842
  %846 = getelementptr inbounds nuw i8, ptr %807, i64 16
  %847 = load ptr, ptr %846, align 8, !tbaa !40
  store ptr %847, ptr %819, align 8, !tbaa !56
  br label %848

848:                                              ; preds = %845, %842, %801
  %849 = load ptr, ptr %0, align 8, !tbaa !19
  %850 = getelementptr inbounds nuw i8, ptr %849, i64 32
  %851 = load i32, ptr %850, align 8, !tbaa !96
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %854, label %853

853:                                              ; preds = %848, %785
  br label %854

854:                                              ; preds = %853, %848, %779, %711, %598
  %855 = phi i32 [ 1, %853 ], [ 0, %598 ], [ %784, %779 ], [ 0, %848 ], [ 0, %711 ]
  ret i32 %855
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
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  br label %27

27:                                               ; preds = %755, %2
  %28 = load i32, ptr %3, align 4, !tbaa !73
  %29 = icmp ult i32 %28, 259
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  store i32 0, ptr %4, align 8, !tbaa !76
  %31 = load i32, ptr %7, align 4, !tbaa !71
  br label %608

32:                                               ; preds = %27
  %33 = load i32, ptr %5, align 8, !tbaa !31
  %34 = zext i32 %33 to i64
  %mv.h1 = icmp sge i32 %33, 0
  %mv.h.fr2 = freeze i1 %mv.h1
  br i1 %mv.h.fr2, label %.mv.ph3.mv.fast, label %.mv.ph3

.mv.ph3.mv.fast:                                  ; preds = %32
  br label %35

35:                                               ; preds = %246, %.mv.ph3.mv.fast
  %36 = phi i32 [ %178, %246 ], [ %28, %.mv.ph3.mv.fast ]
  %37 = load i64, ptr %6, align 8, !tbaa !59
  %38 = zext nneg i32 %36 to i64
  %39 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %37, i64 %38), !nosanitize !44
  %40 = extractvalue { i64, i1 } %39, 1, !nosanitize !44
  br i1 %40, label %292, label %41, !prof !45, !nosanitize !44

41:                                               ; preds = %35
  %42 = extractvalue { i64, i1 } %39, 0, !nosanitize !44
  %43 = load i32, ptr %7, align 4, !tbaa !71
  %44 = zext i32 %43 to i64
  %45 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %42, i64 %44), !nosanitize !44
  %46 = extractvalue { i64, i1 } %45, 1, !nosanitize !44
  br i1 %46, label %299, label %47, !prof !45, !nosanitize !44

47:                                               ; preds = %41
  %48 = extractvalue { i64, i1 } %45, 0, !nosanitize !44
  %49 = trunc i64 %48 to i32
  %50 = load i32, ptr %5, align 8, !tbaa !31
  %51 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %50, i32 262), !nosanitize !44
  %52 = extractvalue { i32, i1 } %51, 1, !nosanitize !44
  br i1 %52, label %306, label %53, !prof !45, !nosanitize !44

53:                                               ; preds = %47
  %54 = extractvalue { i32, i1 } %51, 0, !nosanitize !44
  %55 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %33, i32 %54), !nosanitize !44
  %56 = extractvalue { i32, i1 } %55, 1, !nosanitize !44
  br i1 %56, label %311, label %57, !prof !45, !nosanitize !44

57:                                               ; preds = %53
  %58 = extractvalue { i32, i1 } %55, 0, !nosanitize !44
  %59 = icmp ult i32 %43, %58
  br i1 %59, label %128, label %60

60:                                               ; preds = %57
  %61 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %33, i32 %49), !nosanitize !44
  %62 = extractvalue { i32, i1 } %61, 1, !nosanitize !44
  br i1 %62, label %318, label %63, !prof !45, !nosanitize !44

63:                                               ; preds = %60
  %64 = extractvalue { i32, i1 } %61, 0, !nosanitize !44
  %65 = load ptr, ptr %8, align 8, !tbaa !34
  %66 = getelementptr inbounds nuw i8, ptr %65, i64 %34
  %67 = zext i32 %64 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %65, ptr align 1 %66, i64 %67, i1 false)
  %68 = load i32, ptr %9, align 8, !tbaa !81
  %69 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %68, i32 %33), !nosanitize !44
  %70 = extractvalue { i32, i1 } %69, 1, !nosanitize !44
  br i1 %70, label %327, label %71, !prof !45, !nosanitize !44

71:                                               ; preds = %63
  %72 = extractvalue { i32, i1 } %69, 0, !nosanitize !44
  store i32 %72, ptr %9, align 8, !tbaa !81
  %73 = load i32, ptr %7, align 4, !tbaa !71
  %74 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %73, i32 %33), !nosanitize !44
  %75 = extractvalue { i32, i1 } %74, 1, !nosanitize !44
  br i1 %75, label %333, label %76, !prof !45, !nosanitize !44

76:                                               ; preds = %71
  %77 = extractvalue { i32, i1 } %74, 0, !nosanitize !44
  store i32 %77, ptr %7, align 4, !tbaa !71
  %78 = load i64, ptr %10, align 8, !tbaa !72
  %79 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %78, i64 %34), !nosanitize !44
  %80 = extractvalue { i64, i1 } %79, 1, !nosanitize !44
  br i1 %80, label %333, label %81, !prof !45, !nosanitize !44

81:                                               ; preds = %76
  %82 = extractvalue { i64, i1 } %79, 0, !nosanitize !44
  store i64 %82, ptr %10, align 8, !tbaa !72
  %83 = load i32, ptr %11, align 4, !tbaa !74
  %84 = icmp ugt i32 %83, %77
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 %77, ptr %11, align 4, !tbaa !74
  br label %86

86:                                               ; preds = %85, %81
  %87 = load i32, ptr %5, align 8, !tbaa !31
  %88 = load i32, ptr %12, align 4, !tbaa !36
  %89 = load ptr, ptr %13, align 8, !tbaa !37
  %90 = zext i32 %88 to i64
  %91 = getelementptr inbounds nuw i16, ptr %89, i64 %90
  br label %92

92:                                               ; preds = %102, %86
  %93 = phi ptr [ %91, %86 ], [ %95, %102 ]
  %94 = phi i32 [ %88, %86 ], [ %103, %102 ]
  %95 = getelementptr inbounds i8, ptr %93, i64 -2
  %96 = load i16, ptr %95, align 2, !tbaa !60
  %97 = zext i16 %96 to i32
  %98 = tail call i32 @llvm.usub.sat.i32(i32 %97, i32 %87)
  %99 = trunc nuw i32 %98 to i16
  store i16 %99, ptr %95, align 2, !tbaa !60
  %100 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %94, i32 1), !nosanitize !44
  %101 = extractvalue { i32, i1 } %100, 1, !nosanitize !44
  br i1 %101, label %360, label %102, !prof !45, !nosanitize !44

102:                                              ; preds = %92
  %103 = extractvalue { i32, i1 } %100, 0, !nosanitize !44
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %92, !llvm.loop !82

105:                                              ; preds = %102
  %106 = load ptr, ptr %14, align 8, !tbaa !35
  %107 = zext i32 %87 to i64
  %108 = getelementptr inbounds nuw i16, ptr %106, i64 %107
  br label %109

109:                                              ; preds = %119, %105
  %110 = phi ptr [ %108, %105 ], [ %112, %119 ]
  %111 = phi i32 [ %87, %105 ], [ %120, %119 ]
  %112 = getelementptr inbounds i8, ptr %110, i64 -2
  %113 = load i16, ptr %112, align 2, !tbaa !60
  %114 = zext i16 %113 to i32
  %115 = tail call i32 @llvm.usub.sat.i32(i32 %114, i32 %87)
  %116 = trunc nuw i32 %115 to i16
  store i16 %116, ptr %112, align 2, !tbaa !60
  %117 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %111, i32 1), !nosanitize !44
  %118 = extractvalue { i32, i1 } %117, 1, !nosanitize !44
  br i1 %118, label %378, label %119, !prof !45, !nosanitize !44

119:                                              ; preds = %109
  %120 = extractvalue { i32, i1 } %117, 0, !nosanitize !44
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %109, !llvm.loop !84

122:                                              ; preds = %119
  store i32 1, ptr %15, align 8, !tbaa !61
  %123 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %33), !nosanitize !44
  %124 = extractvalue { i32, i1 } %123, 1, !nosanitize !44
  br i1 false, label %385, label %125, !prof !45, !nosanitize !44

125:                                              ; preds = %122
  %126 = extractvalue { i32, i1 } %123, 0, !nosanitize !44
  %127 = load i32, ptr %3, align 4, !tbaa !73
  br label %128

128:                                              ; preds = %125, %57
  %129 = phi i32 [ %127, %125 ], [ %36, %57 ]
  %130 = phi i32 [ %77, %125 ], [ %43, %57 ]
  %131 = phi i32 [ %126, %125 ], [ %49, %57 ]
  %132 = load ptr, ptr %0, align 8, !tbaa !19
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 8
  %134 = load i32, ptr %133, align 8, !tbaa !79
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %555, label %136

136:                                              ; preds = %128
  %137 = load ptr, ptr %8, align 8, !tbaa !34
  %138 = zext i32 %130 to i64
  %139 = getelementptr inbounds nuw i8, ptr %137, i64 %138
  %140 = zext i32 %129 to i64
  %141 = getelementptr inbounds nuw i8, ptr %139, i64 %140
  %142 = tail call i32 @llvm.umin.i32(i32 %134, i32 %131)
  %143 = icmp eq i32 %131, 0
  br i1 %143, label %173, label %144

144:                                              ; preds = %136
  %145 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %134, i32 %142), !nosanitize !44
  %146 = extractvalue { i32, i1 } %145, 1, !nosanitize !44
  br i1 false, label %408, label %147, !prof !45, !nosanitize !44

147:                                              ; preds = %144
  %148 = extractvalue { i32, i1 } %145, 0, !nosanitize !44
  store i32 %148, ptr %133, align 8, !tbaa !79
  %149 = load ptr, ptr %132, align 8, !tbaa !80
  %150 = zext i32 %142 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %141, ptr align 1 %149, i64 %150, i1 false)
  %151 = getelementptr inbounds nuw i8, ptr %132, i64 56
  %152 = load ptr, ptr %151, align 8, !tbaa !18
  %153 = getelementptr inbounds nuw i8, ptr %152, i64 48
  %154 = load i32, ptr %153, align 8, !tbaa !29
  switch i32 %154, label %163 [
    i32 1, label %159
    i32 2, label %155
  ]

155:                                              ; preds = %147
  %156 = getelementptr inbounds nuw i8, ptr %132, i64 96
  %157 = load i64, ptr %156, align 8, !tbaa !57
  %158 = tail call i64 @crc32(i64 noundef %157, ptr noundef %141, i32 noundef %142) #8
  store i64 %158, ptr %156, align 8, !tbaa !57
  br label %163

159:                                              ; preds = %147
  %160 = getelementptr inbounds nuw i8, ptr %132, i64 96
  %161 = load i64, ptr %160, align 8, !tbaa !57
  %162 = tail call i64 @adler32(i64 noundef %161, ptr noundef %141, i32 noundef %142) #8
  store i64 %162, ptr %160, align 8, !tbaa !57
  br label %163

163:                                              ; preds = %159, %155, %147
  %164 = load ptr, ptr %132, align 8, !tbaa !80
  %165 = getelementptr inbounds nuw i8, ptr %164, i64 %150
  store ptr %165, ptr %132, align 8, !tbaa !80
  %166 = getelementptr inbounds nuw i8, ptr %132, i64 16
  %167 = load i64, ptr %166, align 8, !tbaa !53
  %168 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %167, i64 %150), !nosanitize !44
  %169 = extractvalue { i64, i1 } %168, 1, !nosanitize !44
  br i1 %169, label %432, label %170, !prof !45, !nosanitize !44

170:                                              ; preds = %163
  %171 = extractvalue { i64, i1 } %168, 0, !nosanitize !44
  store i64 %171, ptr %166, align 8, !tbaa !53
  %172 = load i32, ptr %3, align 4, !tbaa !73
  br label %173

173:                                              ; preds = %170, %136
  %174 = phi i32 [ %129, %136 ], [ %172, %170 ]
  %175 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %174, i32 %142), !nosanitize !44
  %176 = extractvalue { i32, i1 } %175, 1, !nosanitize !44
  br i1 %176, label %440, label %177, !prof !45, !nosanitize !44

177:                                              ; preds = %173
  %178 = extractvalue { i32, i1 } %175, 0, !nosanitize !44
  store i32 %178, ptr %3, align 4, !tbaa !73
  %179 = load i32, ptr %11, align 4, !tbaa !74
  %180 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %178, i32 %179), !nosanitize !44
  %181 = extractvalue { i32, i1 } %180, 1, !nosanitize !44
  br i1 %181, label %446, label %182, !prof !45, !nosanitize !44

182:                                              ; preds = %177
  %183 = extractvalue { i32, i1 } %180, 0, !nosanitize !44
  %184 = icmp ugt i32 %183, 2
  br i1 %184, label %185, label %244

185:                                              ; preds = %182
  %186 = load i32, ptr %7, align 4, !tbaa !71
  %187 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %186, i32 %179), !nosanitize !44
  %188 = extractvalue { i32, i1 } %187, 0, !nosanitize !44
  %189 = extractvalue { i32, i1 } %187, 1, !nosanitize !44
  br i1 %189, label %455, label %190, !prof !45, !nosanitize !44

190:                                              ; preds = %185
  %191 = load ptr, ptr %8, align 8, !tbaa !34
  %192 = zext i32 %188 to i64
  %193 = getelementptr inbounds nuw i8, ptr %191, i64 %192
  %194 = load i8, ptr %193, align 1, !tbaa !5
  %195 = zext i8 %194 to i32
  store i32 %195, ptr %16, align 8, !tbaa !78
  %196 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %188, i32 1), !nosanitize !44
  %197 = extractvalue { i32, i1 } %196, 1, !nosanitize !44
  br i1 %197, label %464, label %198, !prof !45, !nosanitize !44

198:                                              ; preds = %190
  %199 = extractvalue { i32, i1 } %196, 0, !nosanitize !44
  %200 = load i32, ptr %17, align 8, !tbaa !52
  %201 = shl i32 %195, %200
  %202 = zext i32 %199 to i64
  %203 = getelementptr inbounds nuw i8, ptr %191, i64 %202
  %204 = load i8, ptr %203, align 1, !tbaa !5
  %205 = zext i8 %204 to i32
  %206 = xor i32 %201, %205
  %207 = load i32, ptr %18, align 4, !tbaa !51
  %208 = and i32 %206, %207
  store i32 %208, ptr %16, align 8, !tbaa !78
  %mv.h.mv.fast = icmp sge i32 %186, 0
  %mv.h.fr.mv.fast = freeze i1 %mv.h.mv.fast
  br i1 %mv.h.fr.mv.fast, label %.mv.ph.mv.fast.mv.fast, label %.mv.ph.mv.fast4

209:                                              ; preds = %.mv.ph.mv.fast4, %240
  %210 = phi i32 [ %208, %.mv.ph.mv.fast4 ], [ %226, %240 ]
  %211 = phi i32 [ %179, %.mv.ph.mv.fast4 ], [ %237, %240 ]
  %212 = phi i32 [ %188, %.mv.ph.mv.fast4 ], [ %241, %240 ]
  %213 = icmp eq i32 %211, 0
  br i1 %213, label %.loopexit.mv.fast, label %214

214:                                              ; preds = %209
  %215 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %212, i32 3), !nosanitize !44
  %216 = extractvalue { i32, i1 } %215, 1, !nosanitize !44
  br i1 %216, label %519, label %217, !prof !45, !nosanitize !44

217:                                              ; preds = %214
  %218 = shl i32 %210, %200
  %219 = extractvalue { i32, i1 } %215, 0, !nosanitize !44
  %220 = add i32 %219, -1
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds nuw i8, ptr %191, i64 %221
  %223 = load i8, ptr %222, align 1, !tbaa !5
  %224 = zext i8 %223 to i32
  %225 = xor i32 %218, %224
  %226 = and i32 %225, %207
  store i32 %226, ptr %16, align 8, !tbaa !78
  %227 = load ptr, ptr %13, align 8, !tbaa !37
  %228 = zext i32 %226 to i64
  %229 = getelementptr inbounds nuw i16, ptr %227, i64 %228
  %230 = load i16, ptr %229, align 2, !tbaa !60
  %231 = load ptr, ptr %14, align 8, !tbaa !35
  %232 = load i32, ptr %19, align 8, !tbaa !32
  %233 = and i32 %232, %212
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds nuw i16, ptr %231, i64 %234
  store i16 %230, ptr %235, align 2, !tbaa !60
  %236 = trunc i32 %212 to i16
  store i16 %236, ptr %229, align 2, !tbaa !60
  %237 = add i32 %211, -1
  store i32 %237, ptr %11, align 4, !tbaa !74
  %238 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %178, i32 %237), !nosanitize !44
  %239 = extractvalue { i32, i1 } %238, 1, !nosanitize !44
  br i1 false, label %543, label %240, !prof !45, !nosanitize !44

240:                                              ; preds = %217
  %241 = add nuw i32 %212, 1
  %242 = extractvalue { i32, i1 } %238, 0, !nosanitize !44
  %243 = icmp ult i32 %242, 3
  br i1 %243, label %.loopexit.mv.fast, label %209, !llvm.loop !85

244:                                              ; preds = %.loopexit.mv.fast, %182
  %245 = icmp ult i32 %178, 262
  br i1 %245, label %246, label %555

246:                                              ; preds = %244
  %247 = load ptr, ptr %0, align 8, !tbaa !19
  %248 = getelementptr inbounds nuw i8, ptr %247, i64 8
  %249 = load i32, ptr %248, align 8, !tbaa !79
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %555, label %35, !llvm.loop !86

.loopexit.mv.fast:                                ; preds = %282, %251, %240, %209
  br label %244

.mv.ph.mv.fast4:                                  ; preds = %198
  br label %209

.mv.ph.mv.fast.mv.fast:                           ; preds = %198
  br label %251

251:                                              ; preds = %282, %.mv.ph.mv.fast.mv.fast
  %252 = phi i32 [ %208, %.mv.ph.mv.fast.mv.fast ], [ %268, %282 ]
  %253 = phi i32 [ %179, %.mv.ph.mv.fast.mv.fast ], [ %279, %282 ]
  %254 = phi i32 [ %188, %.mv.ph.mv.fast.mv.fast ], [ %283, %282 ]
  %255 = icmp eq i32 %253, 0
  br i1 %255, label %.loopexit.mv.fast, label %256

256:                                              ; preds = %251
  %257 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %254, i32 3), !nosanitize !44
  %258 = extractvalue { i32, i1 } %257, 1, !nosanitize !44
  br i1 false, label %519, label %259, !prof !45, !nosanitize !44

259:                                              ; preds = %256
  %260 = shl i32 %252, %200
  %261 = extractvalue { i32, i1 } %257, 0, !nosanitize !44
  %262 = add i32 %261, -1
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds nuw i8, ptr %191, i64 %263
  %265 = load i8, ptr %264, align 1, !tbaa !5
  %266 = zext i8 %265 to i32
  %267 = xor i32 %260, %266
  %268 = and i32 %267, %207
  store i32 %268, ptr %16, align 8, !tbaa !78
  %269 = load ptr, ptr %13, align 8, !tbaa !37
  %270 = zext i32 %268 to i64
  %271 = getelementptr inbounds nuw i16, ptr %269, i64 %270
  %272 = load i16, ptr %271, align 2, !tbaa !60
  %273 = load ptr, ptr %14, align 8, !tbaa !35
  %274 = load i32, ptr %19, align 8, !tbaa !32
  %275 = and i32 %274, %254
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds nuw i16, ptr %273, i64 %276
  store i16 %272, ptr %277, align 2, !tbaa !60
  %278 = trunc i32 %254 to i16
  store i16 %278, ptr %271, align 2, !tbaa !60
  %279 = add i32 %253, -1
  store i32 %279, ptr %11, align 4, !tbaa !74
  %280 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %178, i32 %279), !nosanitize !44
  %281 = extractvalue { i32, i1 } %280, 1, !nosanitize !44
  br i1 false, label %543, label %282, !prof !45, !nosanitize !44

282:                                              ; preds = %259
  %283 = add nuw i32 %254, 1
  %284 = extractvalue { i32, i1 } %280, 0, !nosanitize !44
  %285 = icmp ult i32 %284, 3
  br i1 %285, label %.loopexit.mv.fast, label %251, !llvm.loop !85

.mv.ph3:                                          ; preds = %32
  br label %286

286:                                              ; preds = %550, %.mv.ph3
  %287 = phi i32 [ %442, %550 ], [ %28, %.mv.ph3 ]
  %288 = load i64, ptr %6, align 8, !tbaa !59
  %289 = zext nneg i32 %287 to i64
  %290 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %288, i64 %289), !nosanitize !44
  %291 = extractvalue { i64, i1 } %290, 1, !nosanitize !44
  br i1 %291, label %292, label %293, !prof !45, !nosanitize !44

292:                                              ; preds = %35, %286
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

293:                                              ; preds = %286
  %294 = extractvalue { i64, i1 } %290, 0, !nosanitize !44
  %295 = load i32, ptr %7, align 4, !tbaa !71
  %296 = zext i32 %295 to i64
  %297 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %294, i64 %296), !nosanitize !44
  %298 = extractvalue { i64, i1 } %297, 1, !nosanitize !44
  br i1 %298, label %299, label %300, !prof !45, !nosanitize !44

299:                                              ; preds = %41, %293
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

300:                                              ; preds = %293
  %301 = extractvalue { i64, i1 } %297, 0, !nosanitize !44
  %302 = trunc i64 %301 to i32
  %303 = load i32, ptr %5, align 8, !tbaa !31
  %304 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %303, i32 262), !nosanitize !44
  %305 = extractvalue { i32, i1 } %304, 1, !nosanitize !44
  br i1 %305, label %306, label %307, !prof !45, !nosanitize !44

306:                                              ; preds = %47, %300
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

307:                                              ; preds = %300
  %308 = extractvalue { i32, i1 } %304, 0, !nosanitize !44
  %309 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %33, i32 %308), !nosanitize !44
  %310 = extractvalue { i32, i1 } %309, 1, !nosanitize !44
  br i1 %310, label %311, label %312, !prof !45, !nosanitize !44

311:                                              ; preds = %53, %307
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

312:                                              ; preds = %307
  %313 = extractvalue { i32, i1 } %309, 0, !nosanitize !44
  %314 = icmp ult i32 %295, %313
  br i1 %314, label %389, label %315

315:                                              ; preds = %312
  %316 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %33, i32 %302), !nosanitize !44
  %317 = extractvalue { i32, i1 } %316, 1, !nosanitize !44
  br i1 %317, label %318, label %319, !prof !45, !nosanitize !44

318:                                              ; preds = %60, %315
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

319:                                              ; preds = %315
  %320 = extractvalue { i32, i1 } %316, 0, !nosanitize !44
  %321 = load ptr, ptr %8, align 8, !tbaa !34
  %322 = getelementptr inbounds nuw i8, ptr %321, i64 %34
  %323 = zext i32 %320 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %321, ptr align 1 %322, i64 %323, i1 false)
  %324 = load i32, ptr %9, align 8, !tbaa !81
  %325 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %324, i32 %33), !nosanitize !44
  %326 = extractvalue { i32, i1 } %325, 1, !nosanitize !44
  br i1 %326, label %327, label %328, !prof !45, !nosanitize !44

327:                                              ; preds = %63, %319
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

328:                                              ; preds = %319
  %329 = extractvalue { i32, i1 } %325, 0, !nosanitize !44
  store i32 %329, ptr %9, align 8, !tbaa !81
  %330 = load i32, ptr %7, align 4, !tbaa !71
  %331 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %330, i32 %33), !nosanitize !44
  %332 = extractvalue { i32, i1 } %331, 1, !nosanitize !44
  br i1 %332, label %333, label %334, !prof !45, !nosanitize !44

333:                                              ; preds = %76, %71, %334, %328
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

334:                                              ; preds = %328
  %335 = extractvalue { i32, i1 } %331, 0, !nosanitize !44
  store i32 %335, ptr %7, align 4, !tbaa !71
  %336 = load i64, ptr %10, align 8, !tbaa !72
  %337 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %336, i64 %34), !nosanitize !44
  %338 = extractvalue { i64, i1 } %337, 1, !nosanitize !44
  br i1 %338, label %333, label %339, !prof !45, !nosanitize !44

339:                                              ; preds = %334
  %340 = extractvalue { i64, i1 } %337, 0, !nosanitize !44
  store i64 %340, ptr %10, align 8, !tbaa !72
  %341 = load i32, ptr %11, align 4, !tbaa !74
  %342 = icmp ugt i32 %341, %335
  br i1 %342, label %343, label %344

343:                                              ; preds = %339
  store i32 %335, ptr %11, align 4, !tbaa !74
  br label %344

344:                                              ; preds = %343, %339
  %345 = load i32, ptr %5, align 8, !tbaa !31
  %346 = load i32, ptr %12, align 4, !tbaa !36
  %347 = load ptr, ptr %13, align 8, !tbaa !37
  %348 = zext i32 %346 to i64
  %349 = getelementptr inbounds nuw i16, ptr %347, i64 %348
  br label %350

350:                                              ; preds = %361, %344
  %351 = phi ptr [ %349, %344 ], [ %353, %361 ]
  %352 = phi i32 [ %346, %344 ], [ %362, %361 ]
  %353 = getelementptr inbounds i8, ptr %351, i64 -2
  %354 = load i16, ptr %353, align 2, !tbaa !60
  %355 = zext i16 %354 to i32
  %356 = tail call i32 @llvm.usub.sat.i32(i32 %355, i32 %345)
  %357 = trunc nuw i32 %356 to i16
  store i16 %357, ptr %353, align 2, !tbaa !60
  %358 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %352, i32 1), !nosanitize !44
  %359 = extractvalue { i32, i1 } %358, 1, !nosanitize !44
  br i1 %359, label %360, label %361, !prof !45, !nosanitize !44

360:                                              ; preds = %92, %350
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

361:                                              ; preds = %350
  %362 = extractvalue { i32, i1 } %358, 0, !nosanitize !44
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %350, !llvm.loop !82

364:                                              ; preds = %361
  %365 = load ptr, ptr %14, align 8, !tbaa !35
  %366 = zext i32 %345 to i64
  %367 = getelementptr inbounds nuw i16, ptr %365, i64 %366
  br label %368

368:                                              ; preds = %379, %364
  %369 = phi ptr [ %367, %364 ], [ %371, %379 ]
  %370 = phi i32 [ %345, %364 ], [ %380, %379 ]
  %371 = getelementptr inbounds i8, ptr %369, i64 -2
  %372 = load i16, ptr %371, align 2, !tbaa !60
  %373 = zext i16 %372 to i32
  %374 = tail call i32 @llvm.usub.sat.i32(i32 %373, i32 %345)
  %375 = trunc nuw i32 %374 to i16
  store i16 %375, ptr %371, align 2, !tbaa !60
  %376 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %370, i32 1), !nosanitize !44
  %377 = extractvalue { i32, i1 } %376, 1, !nosanitize !44
  br i1 %377, label %378, label %379, !prof !45, !nosanitize !44

378:                                              ; preds = %109, %368
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

379:                                              ; preds = %368
  %380 = extractvalue { i32, i1 } %376, 0, !nosanitize !44
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %368, !llvm.loop !84

382:                                              ; preds = %379
  store i32 1, ptr %15, align 8, !tbaa !61
  %383 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %302, i32 %33), !nosanitize !44
  %384 = extractvalue { i32, i1 } %383, 1, !nosanitize !44
  br i1 %384, label %385, label %386, !prof !45, !nosanitize !44

385:                                              ; preds = %122, %382
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

386:                                              ; preds = %382
  %387 = extractvalue { i32, i1 } %383, 0, !nosanitize !44
  %388 = load i32, ptr %3, align 4, !tbaa !73
  br label %389

389:                                              ; preds = %386, %312
  %390 = phi i32 [ %388, %386 ], [ %287, %312 ]
  %391 = phi i32 [ %335, %386 ], [ %295, %312 ]
  %392 = phi i32 [ %387, %386 ], [ %302, %312 ]
  %393 = load ptr, ptr %0, align 8, !tbaa !19
  %394 = getelementptr inbounds nuw i8, ptr %393, i64 8
  %395 = load i32, ptr %394, align 8, !tbaa !79
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %555, label %397

397:                                              ; preds = %389
  %398 = load ptr, ptr %8, align 8, !tbaa !34
  %399 = zext i32 %391 to i64
  %400 = getelementptr inbounds nuw i8, ptr %398, i64 %399
  %401 = zext i32 %390 to i64
  %402 = getelementptr inbounds nuw i8, ptr %400, i64 %401
  %403 = tail call i32 @llvm.umin.i32(i32 %395, i32 %392)
  %404 = icmp eq i32 %392, 0
  br i1 %404, label %436, label %405

405:                                              ; preds = %397
  %406 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %395, i32 %403), !nosanitize !44
  %407 = extractvalue { i32, i1 } %406, 1, !nosanitize !44
  br i1 false, label %408, label %409, !prof !45, !nosanitize !44

408:                                              ; preds = %144, %405
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

409:                                              ; preds = %405
  %410 = extractvalue { i32, i1 } %406, 0, !nosanitize !44
  store i32 %410, ptr %394, align 8, !tbaa !79
  %411 = load ptr, ptr %393, align 8, !tbaa !80
  %412 = zext i32 %403 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %402, ptr align 1 %411, i64 %412, i1 false)
  %413 = getelementptr inbounds nuw i8, ptr %393, i64 56
  %414 = load ptr, ptr %413, align 8, !tbaa !18
  %415 = getelementptr inbounds nuw i8, ptr %414, i64 48
  %416 = load i32, ptr %415, align 8, !tbaa !29
  switch i32 %416, label %425 [
    i32 1, label %417
    i32 2, label %421
  ]

417:                                              ; preds = %409
  %418 = getelementptr inbounds nuw i8, ptr %393, i64 96
  %419 = load i64, ptr %418, align 8, !tbaa !57
  %420 = tail call i64 @adler32(i64 noundef %419, ptr noundef %402, i32 noundef %403) #8
  store i64 %420, ptr %418, align 8, !tbaa !57
  br label %425

421:                                              ; preds = %409
  %422 = getelementptr inbounds nuw i8, ptr %393, i64 96
  %423 = load i64, ptr %422, align 8, !tbaa !57
  %424 = tail call i64 @crc32(i64 noundef %423, ptr noundef %402, i32 noundef %403) #8
  store i64 %424, ptr %422, align 8, !tbaa !57
  br label %425

425:                                              ; preds = %421, %417, %409
  %426 = load ptr, ptr %393, align 8, !tbaa !80
  %427 = getelementptr inbounds nuw i8, ptr %426, i64 %412
  store ptr %427, ptr %393, align 8, !tbaa !80
  %428 = getelementptr inbounds nuw i8, ptr %393, i64 16
  %429 = load i64, ptr %428, align 8, !tbaa !53
  %430 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %429, i64 %412), !nosanitize !44
  %431 = extractvalue { i64, i1 } %430, 1, !nosanitize !44
  br i1 %431, label %432, label %433, !prof !45, !nosanitize !44

432:                                              ; preds = %163, %425
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

433:                                              ; preds = %425
  %434 = extractvalue { i64, i1 } %430, 0, !nosanitize !44
  store i64 %434, ptr %428, align 8, !tbaa !53
  %435 = load i32, ptr %3, align 4, !tbaa !73
  br label %436

436:                                              ; preds = %433, %397
  %437 = phi i32 [ %390, %397 ], [ %435, %433 ]
  %438 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %437, i32 %403), !nosanitize !44
  %439 = extractvalue { i32, i1 } %438, 1, !nosanitize !44
  br i1 %439, label %440, label %441, !prof !45, !nosanitize !44

440:                                              ; preds = %173, %436
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

441:                                              ; preds = %436
  %442 = extractvalue { i32, i1 } %438, 0, !nosanitize !44
  store i32 %442, ptr %3, align 4, !tbaa !73
  %443 = load i32, ptr %11, align 4, !tbaa !74
  %444 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %442, i32 %443), !nosanitize !44
  %445 = extractvalue { i32, i1 } %444, 1, !nosanitize !44
  br i1 %445, label %446, label %447, !prof !45, !nosanitize !44

446:                                              ; preds = %177, %441
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

447:                                              ; preds = %441
  %448 = extractvalue { i32, i1 } %444, 0, !nosanitize !44
  %449 = icmp ugt i32 %448, 2
  br i1 %449, label %450, label %548

450:                                              ; preds = %447
  %451 = load i32, ptr %7, align 4, !tbaa !71
  %452 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %451, i32 %443), !nosanitize !44
  %453 = extractvalue { i32, i1 } %452, 0, !nosanitize !44
  %454 = extractvalue { i32, i1 } %452, 1, !nosanitize !44
  br i1 %454, label %455, label %456, !prof !45, !nosanitize !44

455:                                              ; preds = %185, %450
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

456:                                              ; preds = %450
  %457 = load ptr, ptr %8, align 8, !tbaa !34
  %458 = zext i32 %453 to i64
  %459 = getelementptr inbounds nuw i8, ptr %457, i64 %458
  %460 = load i8, ptr %459, align 1, !tbaa !5
  %461 = zext i8 %460 to i32
  store i32 %461, ptr %16, align 8, !tbaa !78
  %462 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %453, i32 1), !nosanitize !44
  %463 = extractvalue { i32, i1 } %462, 1, !nosanitize !44
  br i1 %463, label %464, label %465, !prof !45, !nosanitize !44

464:                                              ; preds = %190, %456
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

465:                                              ; preds = %456
  %466 = extractvalue { i32, i1 } %462, 0, !nosanitize !44
  %467 = load i32, ptr %17, align 8, !tbaa !52
  %468 = shl i32 %461, %467
  %469 = zext i32 %466 to i64
  %470 = getelementptr inbounds nuw i8, ptr %457, i64 %469
  %471 = load i8, ptr %470, align 1, !tbaa !5
  %472 = zext i8 %471 to i32
  %473 = xor i32 %468, %472
  %474 = load i32, ptr %18, align 4, !tbaa !51
  %475 = and i32 %473, %474
  store i32 %475, ptr %16, align 8, !tbaa !78
  %mv.h = icmp sge i32 %451, 0
  %mv.h.fr = freeze i1 %mv.h
  br i1 %mv.h.fr, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %465
  br label %476

476:                                              ; preds = %507, %.mv.ph.mv.fast
  %477 = phi i32 [ %475, %.mv.ph.mv.fast ], [ %493, %507 ]
  %478 = phi i32 [ %443, %.mv.ph.mv.fast ], [ %504, %507 ]
  %479 = phi i32 [ %453, %.mv.ph.mv.fast ], [ %508, %507 ]
  %480 = icmp eq i32 %478, 0
  br i1 %480, label %.loopexit, label %481

481:                                              ; preds = %476
  %482 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %479, i32 3), !nosanitize !44
  %483 = extractvalue { i32, i1 } %482, 1, !nosanitize !44
  br i1 false, label %519, label %484, !prof !45, !nosanitize !44

484:                                              ; preds = %481
  %485 = shl i32 %477, %467
  %486 = extractvalue { i32, i1 } %482, 0, !nosanitize !44
  %487 = add i32 %486, -1
  %488 = zext i32 %487 to i64
  %489 = getelementptr inbounds nuw i8, ptr %457, i64 %488
  %490 = load i8, ptr %489, align 1, !tbaa !5
  %491 = zext i8 %490 to i32
  %492 = xor i32 %485, %491
  %493 = and i32 %492, %474
  store i32 %493, ptr %16, align 8, !tbaa !78
  %494 = load ptr, ptr %13, align 8, !tbaa !37
  %495 = zext i32 %493 to i64
  %496 = getelementptr inbounds nuw i16, ptr %494, i64 %495
  %497 = load i16, ptr %496, align 2, !tbaa !60
  %498 = load ptr, ptr %14, align 8, !tbaa !35
  %499 = load i32, ptr %19, align 8, !tbaa !32
  %500 = and i32 %499, %479
  %501 = zext i32 %500 to i64
  %502 = getelementptr inbounds nuw i16, ptr %498, i64 %501
  store i16 %497, ptr %502, align 2, !tbaa !60
  %503 = trunc i32 %479 to i16
  store i16 %503, ptr %496, align 2, !tbaa !60
  %504 = add i32 %478, -1
  store i32 %504, ptr %11, align 4, !tbaa !74
  %505 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %442, i32 %504), !nosanitize !44
  %506 = extractvalue { i32, i1 } %505, 1, !nosanitize !44
  br i1 false, label %543, label %507, !prof !45, !nosanitize !44

507:                                              ; preds = %484
  %508 = add nuw i32 %479, 1
  %509 = extractvalue { i32, i1 } %505, 0, !nosanitize !44
  %510 = icmp ult i32 %509, 3
  br i1 %510, label %.loopexit, label %476, !llvm.loop !85

.mv.ph:                                           ; preds = %465
  br label %511

511:                                              ; preds = %544, %.mv.ph
  %512 = phi i32 [ %475, %.mv.ph ], [ %529, %544 ]
  %513 = phi i32 [ %443, %.mv.ph ], [ %540, %544 ]
  %514 = phi i32 [ %453, %.mv.ph ], [ %545, %544 ]
  %515 = icmp eq i32 %513, 0
  br i1 %515, label %.loopexit, label %516

516:                                              ; preds = %511
  %517 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %514, i32 3), !nosanitize !44
  %518 = extractvalue { i32, i1 } %517, 1, !nosanitize !44
  br i1 %518, label %519, label %520, !prof !45, !nosanitize !44

519:                                              ; preds = %256, %214, %481, %516
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

520:                                              ; preds = %516
  %521 = shl i32 %512, %467
  %522 = extractvalue { i32, i1 } %517, 0, !nosanitize !44
  %523 = add i32 %522, -1
  %524 = zext i32 %523 to i64
  %525 = getelementptr inbounds nuw i8, ptr %457, i64 %524
  %526 = load i8, ptr %525, align 1, !tbaa !5
  %527 = zext i8 %526 to i32
  %528 = xor i32 %521, %527
  %529 = and i32 %528, %474
  store i32 %529, ptr %16, align 8, !tbaa !78
  %530 = load ptr, ptr %13, align 8, !tbaa !37
  %531 = zext i32 %529 to i64
  %532 = getelementptr inbounds nuw i16, ptr %530, i64 %531
  %533 = load i16, ptr %532, align 2, !tbaa !60
  %534 = load ptr, ptr %14, align 8, !tbaa !35
  %535 = load i32, ptr %19, align 8, !tbaa !32
  %536 = and i32 %535, %514
  %537 = zext i32 %536 to i64
  %538 = getelementptr inbounds nuw i16, ptr %534, i64 %537
  store i16 %533, ptr %538, align 2, !tbaa !60
  %539 = trunc i32 %514 to i16
  store i16 %539, ptr %532, align 2, !tbaa !60
  %540 = add i32 %513, -1
  store i32 %540, ptr %11, align 4, !tbaa !74
  %541 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %442, i32 %540), !nosanitize !44
  %542 = extractvalue { i32, i1 } %541, 1, !nosanitize !44
  br i1 false, label %543, label %544, !prof !45, !nosanitize !44

543:                                              ; preds = %259, %217, %484, %520
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

544:                                              ; preds = %520
  %545 = add nuw i32 %514, 1
  %546 = extractvalue { i32, i1 } %541, 0, !nosanitize !44
  %547 = icmp ult i32 %546, 3
  br i1 %547, label %.loopexit, label %511, !llvm.loop !85

.loopexit:                                        ; preds = %507, %476, %511, %544
  br label %548

548:                                              ; preds = %.loopexit, %447
  %549 = icmp ult i32 %442, 262
  br i1 %549, label %550, label %555

550:                                              ; preds = %548
  %551 = load ptr, ptr %0, align 8, !tbaa !19
  %552 = getelementptr inbounds nuw i8, ptr %551, i64 8
  %553 = load i32, ptr %552, align 8, !tbaa !79
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %555, label %286, !llvm.loop !86

555:                                              ; preds = %246, %244, %128, %550, %548, %389
  %556 = phi i32 [ %442, %550 ], [ %442, %548 ], [ %390, %389 ], [ %178, %246 ], [ %178, %244 ], [ %129, %128 ]
  %557 = load i64, ptr %20, align 8, !tbaa !38
  %558 = load i64, ptr %6, align 8, !tbaa !59
  %559 = icmp ult i64 %557, %558
  br i1 %559, label %560, label %599

560:                                              ; preds = %555
  %561 = load i32, ptr %7, align 4, !tbaa !71
  %562 = zext i32 %561 to i64
  %563 = zext i32 %556 to i64
  %564 = add nuw nsw i64 %563, %562
  %565 = icmp ult i64 %557, %564
  br i1 %565, label %566, label %576

566:                                              ; preds = %560
  %567 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %558, i64 %564), !nosanitize !44
  %568 = extractvalue { i64, i1 } %567, 1, !nosanitize !44
  br i1 %568, label %569, label %570, !prof !45, !nosanitize !44

569:                                              ; preds = %566
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

570:                                              ; preds = %566
  %571 = extractvalue { i64, i1 } %567, 0, !nosanitize !44
  %572 = tail call i64 @llvm.umin.i64(i64 %571, i64 258)
  %573 = load ptr, ptr %8, align 8, !tbaa !34
  %574 = getelementptr inbounds nuw i8, ptr %573, i64 %564
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %574, i8 0, i64 %572, i1 false)
  %575 = add nuw nsw i64 %572, %564
  br label %596

576:                                              ; preds = %560
  %577 = add nuw nsw i64 %564, 258
  %578 = icmp ult i64 %557, %577
  br i1 %578, label %579, label %599

579:                                              ; preds = %576
  %580 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %558, i64 %557), !nosanitize !44
  %581 = extractvalue { i64, i1 } %580, 1, !nosanitize !44
  br i1 false, label %582, label %583, !prof !45, !nosanitize !44

582:                                              ; preds = %579
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

583:                                              ; preds = %579
  %584 = sub nuw nsw i64 %577, %557
  %585 = extractvalue { i64, i1 } %580, 0, !nosanitize !44
  %586 = tail call i64 @llvm.umin.i64(i64 %584, i64 %585)
  %587 = load ptr, ptr %8, align 8, !tbaa !34
  %588 = getelementptr inbounds nuw i8, ptr %587, i64 %557
  %589 = and i64 %586, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %588, i8 0, i64 %589, i1 false)
  %590 = load i64, ptr %20, align 8, !tbaa !38
  %591 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %590, i64 %586), !nosanitize !44
  %592 = extractvalue { i64, i1 } %591, 1, !nosanitize !44
  br i1 %592, label %593, label %594, !prof !45, !nosanitize !44

593:                                              ; preds = %583
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

594:                                              ; preds = %583
  %595 = extractvalue { i64, i1 } %591, 0, !nosanitize !44
  br label %596

596:                                              ; preds = %594, %570
  %597 = phi i64 [ %575, %570 ], [ %595, %594 ]
  store i64 %597, ptr %20, align 8, !tbaa !38
  %598 = load i32, ptr %3, align 4, !tbaa !73
  br label %599

599:                                              ; preds = %596, %576, %555
  %600 = phi i32 [ %556, %555 ], [ %556, %576 ], [ %598, %596 ]
  %601 = icmp ult i32 %600, 259
  %602 = and i1 %21, %601
  br i1 %602, label %1013, label %603

603:                                              ; preds = %599
  %604 = icmp eq i32 %600, 0
  br i1 %604, label %876, label %605

605:                                              ; preds = %603
  store i32 0, ptr %4, align 8, !tbaa !76
  %606 = icmp ugt i32 %600, 2
  %607 = load i32, ptr %7, align 4, !tbaa !71
  br i1 %606, label %608, label %756

608:                                              ; preds = %605, %30
  %609 = phi i32 [ %31, %30 ], [ %607, %605 ]
  %610 = phi i32 [ %28, %30 ], [ %600, %605 ]
  %611 = icmp eq i32 %609, 0
  br i1 %611, label %756, label %612

612:                                              ; preds = %608
  %613 = load ptr, ptr %8, align 8, !tbaa !34
  %614 = zext i32 %609 to i64
  %615 = getelementptr inbounds nuw i8, ptr %613, i64 %614
  %616 = getelementptr inbounds i8, ptr %615, i64 -1
  %617 = load i8, ptr %616, align 1, !tbaa !5
  %618 = load i8, ptr %615, align 1, !tbaa !5
  %619 = icmp eq i8 %617, %618
  br i1 %619, label %620, label %756

620:                                              ; preds = %612
  %621 = getelementptr inbounds nuw i8, ptr %615, i64 1
  %622 = load i8, ptr %621, align 1, !tbaa !5
  %623 = icmp eq i8 %617, %622
  br i1 %623, label %624, label %756

624:                                              ; preds = %620
  %625 = getelementptr inbounds nuw i8, ptr %615, i64 2
  %626 = load i8, ptr %625, align 1, !tbaa !5
  %627 = icmp eq i8 %617, %626
  br i1 %627, label %628, label %756

628:                                              ; preds = %624
  %629 = getelementptr inbounds nuw i8, ptr %615, i64 258
  br label %630

630:                                              ; preds = %660, %628
  %631 = phi i64 [ 2, %628 ], [ %661, %660 ]
  %632 = getelementptr inbounds nuw i8, ptr %615, i64 %631
  %633 = getelementptr inbounds nuw i8, ptr %632, i64 1
  %634 = load i8, ptr %633, align 1, !tbaa !5
  %635 = icmp eq i8 %617, %634
  br i1 %635, label %636, label %667

636:                                              ; preds = %630
  %637 = getelementptr inbounds nuw i8, ptr %632, i64 2
  %638 = load i8, ptr %637, align 1, !tbaa !5
  %639 = icmp eq i8 %617, %638
  br i1 %639, label %640, label %669

640:                                              ; preds = %636
  %641 = getelementptr inbounds nuw i8, ptr %632, i64 3
  %642 = load i8, ptr %641, align 1, !tbaa !5
  %643 = icmp eq i8 %617, %642
  br i1 %643, label %644, label %671

644:                                              ; preds = %640
  %645 = getelementptr inbounds nuw i8, ptr %632, i64 4
  %646 = load i8, ptr %645, align 1, !tbaa !5
  %647 = icmp eq i8 %617, %646
  br i1 %647, label %648, label %673

648:                                              ; preds = %644
  %649 = getelementptr inbounds nuw i8, ptr %632, i64 5
  %650 = load i8, ptr %649, align 1, !tbaa !5
  %651 = icmp eq i8 %617, %650
  br i1 %651, label %652, label %675

652:                                              ; preds = %648
  %653 = getelementptr inbounds nuw i8, ptr %632, i64 6
  %654 = load i8, ptr %653, align 1, !tbaa !5
  %655 = icmp eq i8 %617, %654
  br i1 %655, label %656, label %677

656:                                              ; preds = %652
  %657 = getelementptr inbounds nuw i8, ptr %632, i64 7
  %658 = load i8, ptr %657, align 1, !tbaa !5
  %659 = icmp eq i8 %617, %658
  br i1 %659, label %660, label %679

660:                                              ; preds = %656
  %661 = add nuw nsw i64 %631, 8
  %662 = getelementptr inbounds nuw i8, ptr %615, i64 %661
  %663 = load i8, ptr %662, align 1, !tbaa !5
  %664 = icmp eq i8 %617, %663
  %665 = icmp samesign ult i64 %631, 250
  %666 = select i1 %664, i1 %665, i1 false
  br i1 %666, label %630, label %681, !llvm.loop !119

667:                                              ; preds = %630
  %668 = getelementptr inbounds nuw i8, ptr %632, i64 1
  br label %683

669:                                              ; preds = %636
  %670 = getelementptr inbounds nuw i8, ptr %632, i64 2
  br label %683

671:                                              ; preds = %640
  %672 = getelementptr inbounds nuw i8, ptr %632, i64 3
  br label %683

673:                                              ; preds = %644
  %674 = getelementptr inbounds nuw i8, ptr %632, i64 4
  br label %683

675:                                              ; preds = %648
  %676 = getelementptr inbounds nuw i8, ptr %632, i64 5
  br label %683

677:                                              ; preds = %652
  %678 = getelementptr inbounds nuw i8, ptr %632, i64 6
  br label %683

679:                                              ; preds = %656
  %680 = getelementptr inbounds nuw i8, ptr %632, i64 7
  br label %683

681:                                              ; preds = %660
  %682 = getelementptr inbounds nuw i8, ptr %615, i64 %661
  br label %683

683:                                              ; preds = %681, %679, %677, %675, %673, %671, %669, %667
  %684 = phi ptr [ %668, %667 ], [ %670, %669 ], [ %672, %671 ], [ %674, %673 ], [ %676, %675 ], [ %678, %677 ], [ %680, %679 ], [ %682, %681 ]
  %685 = ptrtoint ptr %629 to i64
  %686 = ptrtoint ptr %684 to i64
  %687 = sub i64 %685, %686
  %688 = trunc i64 %687 to i32
  %689 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 258, i32 %688), !nosanitize !44
  %690 = extractvalue { i32, i1 } %689, 1, !nosanitize !44
  br i1 %690, label %691, label %692, !prof !45, !nosanitize !44

691:                                              ; preds = %683
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

692:                                              ; preds = %683
  %693 = extractvalue { i32, i1 } %689, 0, !nosanitize !44
  %694 = tail call i32 @llvm.umin.i32(i32 %693, i32 %610)
  store i32 %694, ptr %4, align 8
  %695 = icmp ugt i32 %694, 2
  %696 = load i32, ptr %23, align 4, !tbaa !118
  br i1 %695, label %697, label %759

697:                                              ; preds = %692
  %698 = trunc i32 %694 to i8
  %699 = add i8 %698, -3
  %700 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %696, i32 1), !nosanitize !44
  %701 = extractvalue { i32, i1 } %700, 1, !nosanitize !44
  br i1 %701, label %702, label %703, !prof !45, !nosanitize !44

702:                                              ; preds = %697
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

703:                                              ; preds = %697
  %704 = extractvalue { i32, i1 } %700, 0, !nosanitize !44
  %705 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %704, ptr %23, align 4, !tbaa !118
  %706 = zext i32 %696 to i64
  %707 = getelementptr inbounds nuw i8, ptr %705, i64 %706
  store i8 1, ptr %707, align 1, !tbaa !5
  %708 = load i32, ptr %23, align 4, !tbaa !118
  %709 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %708, i32 1), !nosanitize !44
  %710 = extractvalue { i32, i1 } %709, 1, !nosanitize !44
  br i1 %710, label %711, label %712, !prof !45, !nosanitize !44

711:                                              ; preds = %703
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

712:                                              ; preds = %703
  %713 = extractvalue { i32, i1 } %709, 0, !nosanitize !44
  %714 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %713, ptr %23, align 4, !tbaa !118
  %715 = zext i32 %708 to i64
  %716 = getelementptr inbounds nuw i8, ptr %714, i64 %715
  store i8 0, ptr %716, align 1, !tbaa !5
  %717 = load i32, ptr %23, align 4, !tbaa !118
  %718 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %717, i32 1), !nosanitize !44
  %719 = extractvalue { i32, i1 } %718, 1, !nosanitize !44
  br i1 %719, label %720, label %721, !prof !45, !nosanitize !44

720:                                              ; preds = %712
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

721:                                              ; preds = %712
  %722 = extractvalue { i32, i1 } %718, 0, !nosanitize !44
  %723 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %722, ptr %23, align 4, !tbaa !118
  %724 = zext i32 %717 to i64
  %725 = getelementptr inbounds nuw i8, ptr %723, i64 %724
  store i8 %699, ptr %725, align 1, !tbaa !5
  %726 = zext i8 %699 to i64
  %727 = getelementptr inbounds nuw [0 x i8], ptr @_length_code, i64 0, i64 %726
  %728 = load i8, ptr %727, align 1, !tbaa !5
  %729 = zext i8 %728 to i64
  %730 = add nuw nsw i64 %729, 257
  %731 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %24, i64 0, i64 %730
  %732 = load i16, ptr %731, align 4, !tbaa !5
  %733 = add i16 %732, 1
  store i16 %733, ptr %731, align 4, !tbaa !5
  %734 = load i8, ptr @_dist_code, align 1, !tbaa !5
  %735 = zext i8 %734 to i64
  %736 = getelementptr inbounds nuw [61 x %struct.ct_data_s], ptr %26, i64 0, i64 %735
  %737 = load i16, ptr %736, align 4, !tbaa !5
  %738 = add i16 %737, 1
  store i16 %738, ptr %736, align 4, !tbaa !5
  %739 = load i32, ptr %23, align 4, !tbaa !118
  %740 = load i32, ptr %25, align 8, !tbaa !46
  %741 = icmp eq i32 %739, %740
  %742 = load i32, ptr %4, align 8, !tbaa !76
  %743 = load i32, ptr %3, align 4, !tbaa !73
  %744 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %743, i32 %742), !nosanitize !44
  %745 = extractvalue { i32, i1 } %744, 1, !nosanitize !44
  br i1 %745, label %746, label %747, !prof !45, !nosanitize !44

746:                                              ; preds = %721
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

747:                                              ; preds = %721
  %748 = extractvalue { i32, i1 } %744, 0, !nosanitize !44
  store i32 %748, ptr %3, align 4, !tbaa !73
  %749 = load i32, ptr %7, align 4, !tbaa !71
  %750 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %749, i32 %742), !nosanitize !44
  %751 = extractvalue { i32, i1 } %750, 1, !nosanitize !44
  br i1 %751, label %752, label %753, !prof !45, !nosanitize !44

752:                                              ; preds = %747
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

753:                                              ; preds = %747
  %754 = extractvalue { i32, i1 } %750, 0, !nosanitize !44
  store i32 %754, ptr %7, align 4, !tbaa !71
  store i32 0, ptr %4, align 8, !tbaa !76
  br i1 %741, label %811, label %755

755:                                              ; preds = %871, %809, %753
  br label %27

756:                                              ; preds = %624, %620, %612, %608, %605
  %757 = phi i32 [ %607, %605 ], [ %609, %608 ], [ %609, %624 ], [ %609, %620 ], [ %609, %612 ]
  %758 = load i32, ptr %23, align 4, !tbaa !118
  br label %759

759:                                              ; preds = %756, %692
  %760 = phi i32 [ %696, %692 ], [ %758, %756 ]
  %761 = phi i32 [ %609, %692 ], [ %757, %756 ]
  %762 = load ptr, ptr %8, align 8, !tbaa !34
  %763 = zext i32 %761 to i64
  %764 = getelementptr inbounds nuw i8, ptr %762, i64 %763
  %765 = load i8, ptr %764, align 1, !tbaa !5
  %766 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %760, i32 1), !nosanitize !44
  %767 = extractvalue { i32, i1 } %766, 1, !nosanitize !44
  br i1 %767, label %768, label %769, !prof !45, !nosanitize !44

768:                                              ; preds = %759
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

769:                                              ; preds = %759
  %770 = extractvalue { i32, i1 } %766, 0, !nosanitize !44
  %771 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %770, ptr %23, align 4, !tbaa !118
  %772 = zext i32 %760 to i64
  %773 = getelementptr inbounds nuw i8, ptr %771, i64 %772
  store i8 0, ptr %773, align 1, !tbaa !5
  %774 = load i32, ptr %23, align 4, !tbaa !118
  %775 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %774, i32 1), !nosanitize !44
  %776 = extractvalue { i32, i1 } %775, 1, !nosanitize !44
  br i1 %776, label %777, label %778, !prof !45, !nosanitize !44

777:                                              ; preds = %769
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

778:                                              ; preds = %769
  %779 = extractvalue { i32, i1 } %775, 0, !nosanitize !44
  %780 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %779, ptr %23, align 4, !tbaa !118
  %781 = zext i32 %774 to i64
  %782 = getelementptr inbounds nuw i8, ptr %780, i64 %781
  store i8 0, ptr %782, align 1, !tbaa !5
  %783 = load i32, ptr %23, align 4, !tbaa !118
  %784 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %783, i32 1), !nosanitize !44
  %785 = extractvalue { i32, i1 } %784, 1, !nosanitize !44
  br i1 %785, label %786, label %787, !prof !45, !nosanitize !44

786:                                              ; preds = %778
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

787:                                              ; preds = %778
  %788 = extractvalue { i32, i1 } %784, 0, !nosanitize !44
  %789 = load ptr, ptr %22, align 8, !tbaa !43
  store i32 %788, ptr %23, align 4, !tbaa !118
  %790 = zext i32 %783 to i64
  %791 = getelementptr inbounds nuw i8, ptr %789, i64 %790
  store i8 %765, ptr %791, align 1, !tbaa !5
  %792 = zext i8 %765 to i64
  %793 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %24, i64 0, i64 %792
  %794 = load i16, ptr %793, align 4, !tbaa !5
  %795 = add i16 %794, 1
  store i16 %795, ptr %793, align 4, !tbaa !5
  %796 = load i32, ptr %23, align 4, !tbaa !118
  %797 = load i32, ptr %25, align 8, !tbaa !46
  %798 = icmp eq i32 %796, %797
  %799 = load i32, ptr %3, align 4, !tbaa !73
  %800 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %799, i32 1), !nosanitize !44
  %801 = extractvalue { i32, i1 } %800, 1, !nosanitize !44
  br i1 %801, label %802, label %803, !prof !45, !nosanitize !44

802:                                              ; preds = %954, %885, %819, %787
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

803:                                              ; preds = %787
  %804 = extractvalue { i32, i1 } %800, 0, !nosanitize !44
  store i32 %804, ptr %3, align 4, !tbaa !73
  %805 = load i32, ptr %7, align 4, !tbaa !71
  %806 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %805, i32 1), !nosanitize !44
  %807 = extractvalue { i32, i1 } %806, 1, !nosanitize !44
  br i1 %807, label %808, label %809, !prof !45, !nosanitize !44

808:                                              ; preds = %803
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

809:                                              ; preds = %803
  %810 = extractvalue { i32, i1 } %806, 0, !nosanitize !44
  store i32 %810, ptr %7, align 4, !tbaa !71
  br i1 %798, label %811, label %755

811:                                              ; preds = %809, %753
  %812 = phi i32 [ %754, %753 ], [ %810, %809 ]
  %813 = load i64, ptr %10, align 8, !tbaa !72
  %814 = icmp sgt i64 %813, -1
  br i1 %814, label %815, label %819

815:                                              ; preds = %811
  %816 = load ptr, ptr %8, align 8, !tbaa !34
  %817 = and i64 %813, 4294967295
  %818 = getelementptr inbounds nuw i8, ptr %816, i64 %817
  br label %819

819:                                              ; preds = %815, %811
  %820 = phi ptr [ %818, %815 ], [ null, %811 ]
  %821 = zext i32 %812 to i64
  %822 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %821, i64 %813), !nosanitize !44
  %823 = extractvalue { i64, i1 } %822, 1, !nosanitize !44
  br i1 %823, label %802, label %824, !prof !45, !nosanitize !44

824:                                              ; preds = %819
  %825 = extractvalue { i64, i1 } %822, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %820, i64 noundef %825, i32 noundef 0) #8
  %826 = load i32, ptr %7, align 4, !tbaa !71
  %827 = zext i32 %826 to i64
  store i64 %827, ptr %10, align 8, !tbaa !72
  %828 = load ptr, ptr %0, align 8, !tbaa !19
  %829 = getelementptr inbounds nuw i8, ptr %828, i64 56
  %830 = load ptr, ptr %829, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %830) #8
  %831 = getelementptr inbounds nuw i8, ptr %830, i64 40
  %832 = load i64, ptr %831, align 8, !tbaa !55
  %833 = getelementptr inbounds nuw i8, ptr %828, i64 32
  %834 = load i32, ptr %833, align 8, !tbaa !96
  %835 = zext i32 %834 to i64
  %836 = tail call i64 @llvm.umin.i64(i64 %832, i64 %835)
  %837 = trunc nuw i64 %836 to i32
  %838 = icmp eq i64 %836, 0
  br i1 %838, label %871, label %839

839:                                              ; preds = %824
  %840 = getelementptr inbounds nuw i8, ptr %828, i64 24
  %841 = load ptr, ptr %840, align 8, !tbaa !95
  %842 = getelementptr inbounds nuw i8, ptr %830, i64 32
  %843 = load ptr, ptr %842, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %841, ptr align 1 %843, i64 %836, i1 false)
  %844 = load ptr, ptr %840, align 8, !tbaa !95
  %845 = getelementptr inbounds nuw i8, ptr %844, i64 %836
  store ptr %845, ptr %840, align 8, !tbaa !95
  %846 = load ptr, ptr %842, align 8, !tbaa !56
  %847 = getelementptr inbounds nuw i8, ptr %846, i64 %836
  store ptr %847, ptr %842, align 8, !tbaa !56
  %848 = getelementptr inbounds nuw i8, ptr %828, i64 40
  %849 = load i64, ptr %848, align 8, !tbaa !97
  %850 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %849, i64 %836), !nosanitize !44
  %851 = extractvalue { i64, i1 } %850, 1, !nosanitize !44
  br i1 %851, label %852, label %853, !prof !45, !nosanitize !44

852:                                              ; preds = %839
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

853:                                              ; preds = %839
  %854 = extractvalue { i64, i1 } %850, 0, !nosanitize !44
  store i64 %854, ptr %848, align 8, !tbaa !97
  %855 = load i32, ptr %833, align 8, !tbaa !96
  %856 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %855, i32 %837), !nosanitize !44
  %857 = extractvalue { i32, i1 } %856, 1, !nosanitize !44
  br i1 %857, label %858, label %859, !prof !45, !nosanitize !44

858:                                              ; preds = %853
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

859:                                              ; preds = %853
  %860 = extractvalue { i32, i1 } %856, 0, !nosanitize !44
  store i32 %860, ptr %833, align 8, !tbaa !96
  %861 = load i64, ptr %831, align 8, !tbaa !55
  %862 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %861, i64 %836), !nosanitize !44
  %863 = extractvalue { i64, i1 } %862, 1, !nosanitize !44
  br i1 %863, label %864, label %865, !prof !45, !nosanitize !44

864:                                              ; preds = %859
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

865:                                              ; preds = %859
  %866 = extractvalue { i64, i1 } %862, 0, !nosanitize !44
  store i64 %866, ptr %831, align 8, !tbaa !55
  %867 = icmp eq i64 %866, 0
  br i1 %867, label %868, label %871

868:                                              ; preds = %865
  %869 = getelementptr inbounds nuw i8, ptr %830, i64 16
  %870 = load ptr, ptr %869, align 8, !tbaa !40
  store ptr %870, ptr %842, align 8, !tbaa !56
  br label %871

871:                                              ; preds = %868, %865, %824
  %872 = load ptr, ptr %0, align 8, !tbaa !19
  %873 = getelementptr inbounds nuw i8, ptr %872, i64 32
  %874 = load i32, ptr %873, align 8, !tbaa !96
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %1013, label %755

876:                                              ; preds = %603
  store i32 0, ptr %11, align 4, !tbaa !74
  %877 = icmp eq i32 %1, 4
  br i1 %877, label %878, label %944

878:                                              ; preds = %876
  %879 = load i64, ptr %10, align 8, !tbaa !72
  %880 = icmp sgt i64 %879, -1
  br i1 %880, label %881, label %885

881:                                              ; preds = %878
  %882 = load ptr, ptr %8, align 8, !tbaa !34
  %883 = and i64 %879, 4294967295
  %884 = getelementptr inbounds nuw i8, ptr %882, i64 %883
  br label %885

885:                                              ; preds = %881, %878
  %886 = phi ptr [ %884, %881 ], [ null, %878 ]
  %887 = load i32, ptr %7, align 4, !tbaa !71
  %888 = zext i32 %887 to i64
  %889 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %888, i64 %879), !nosanitize !44
  %890 = extractvalue { i64, i1 } %889, 1, !nosanitize !44
  br i1 %890, label %802, label %891, !prof !45, !nosanitize !44

891:                                              ; preds = %885
  %892 = extractvalue { i64, i1 } %889, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %886, i64 noundef %892, i32 noundef 1) #8
  %893 = load i32, ptr %7, align 4, !tbaa !71
  %894 = zext i32 %893 to i64
  store i64 %894, ptr %10, align 8, !tbaa !72
  %895 = load ptr, ptr %0, align 8, !tbaa !19
  %896 = getelementptr inbounds nuw i8, ptr %895, i64 56
  %897 = load ptr, ptr %896, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %897) #8
  %898 = getelementptr inbounds nuw i8, ptr %897, i64 40
  %899 = load i64, ptr %898, align 8, !tbaa !55
  %900 = getelementptr inbounds nuw i8, ptr %895, i64 32
  %901 = load i32, ptr %900, align 8, !tbaa !96
  %902 = zext i32 %901 to i64
  %903 = tail call i64 @llvm.umin.i64(i64 %899, i64 %902)
  %904 = trunc nuw i64 %903 to i32
  %905 = icmp eq i64 %903, 0
  br i1 %905, label %938, label %906

906:                                              ; preds = %891
  %907 = getelementptr inbounds nuw i8, ptr %895, i64 24
  %908 = load ptr, ptr %907, align 8, !tbaa !95
  %909 = getelementptr inbounds nuw i8, ptr %897, i64 32
  %910 = load ptr, ptr %909, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %908, ptr align 1 %910, i64 %903, i1 false)
  %911 = load ptr, ptr %907, align 8, !tbaa !95
  %912 = getelementptr inbounds nuw i8, ptr %911, i64 %903
  store ptr %912, ptr %907, align 8, !tbaa !95
  %913 = load ptr, ptr %909, align 8, !tbaa !56
  %914 = getelementptr inbounds nuw i8, ptr %913, i64 %903
  store ptr %914, ptr %909, align 8, !tbaa !56
  %915 = getelementptr inbounds nuw i8, ptr %895, i64 40
  %916 = load i64, ptr %915, align 8, !tbaa !97
  %917 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %916, i64 %903), !nosanitize !44
  %918 = extractvalue { i64, i1 } %917, 1, !nosanitize !44
  br i1 %918, label %919, label %920, !prof !45, !nosanitize !44

919:                                              ; preds = %906
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

920:                                              ; preds = %906
  %921 = extractvalue { i64, i1 } %917, 0, !nosanitize !44
  store i64 %921, ptr %915, align 8, !tbaa !97
  %922 = load i32, ptr %900, align 8, !tbaa !96
  %923 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %922, i32 %904), !nosanitize !44
  %924 = extractvalue { i32, i1 } %923, 1, !nosanitize !44
  br i1 %924, label %925, label %926, !prof !45, !nosanitize !44

925:                                              ; preds = %920
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

926:                                              ; preds = %920
  %927 = extractvalue { i32, i1 } %923, 0, !nosanitize !44
  store i32 %927, ptr %900, align 8, !tbaa !96
  %928 = load i64, ptr %898, align 8, !tbaa !55
  %929 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %928, i64 %903), !nosanitize !44
  %930 = extractvalue { i64, i1 } %929, 1, !nosanitize !44
  br i1 %930, label %931, label %932, !prof !45, !nosanitize !44

931:                                              ; preds = %926
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

932:                                              ; preds = %926
  %933 = extractvalue { i64, i1 } %929, 0, !nosanitize !44
  store i64 %933, ptr %898, align 8, !tbaa !55
  %934 = icmp eq i64 %933, 0
  br i1 %934, label %935, label %938

935:                                              ; preds = %932
  %936 = getelementptr inbounds nuw i8, ptr %897, i64 16
  %937 = load ptr, ptr %936, align 8, !tbaa !40
  store ptr %937, ptr %909, align 8, !tbaa !56
  br label %938

938:                                              ; preds = %935, %932, %891
  %939 = load ptr, ptr %0, align 8, !tbaa !19
  %940 = getelementptr inbounds nuw i8, ptr %939, i64 32
  %941 = load i32, ptr %940, align 8, !tbaa !96
  %942 = icmp eq i32 %941, 0
  %943 = select i1 %942, i32 2, i32 3
  br label %1013

944:                                              ; preds = %876
  %945 = load i32, ptr %23, align 4, !tbaa !118
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %1012, label %947

947:                                              ; preds = %944
  %948 = load i64, ptr %10, align 8, !tbaa !72
  %949 = icmp sgt i64 %948, -1
  br i1 %949, label %950, label %954

950:                                              ; preds = %947
  %951 = load ptr, ptr %8, align 8, !tbaa !34
  %952 = and i64 %948, 4294967295
  %953 = getelementptr inbounds nuw i8, ptr %951, i64 %952
  br label %954

954:                                              ; preds = %950, %947
  %955 = phi ptr [ %953, %950 ], [ null, %947 ]
  %956 = load i32, ptr %7, align 4, !tbaa !71
  %957 = zext i32 %956 to i64
  %958 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %957, i64 %948), !nosanitize !44
  %959 = extractvalue { i64, i1 } %958, 1, !nosanitize !44
  br i1 %959, label %802, label %960, !prof !45, !nosanitize !44

960:                                              ; preds = %954
  %961 = extractvalue { i64, i1 } %958, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %955, i64 noundef %961, i32 noundef 0) #8
  %962 = load i32, ptr %7, align 4, !tbaa !71
  %963 = zext i32 %962 to i64
  store i64 %963, ptr %10, align 8, !tbaa !72
  %964 = load ptr, ptr %0, align 8, !tbaa !19
  %965 = getelementptr inbounds nuw i8, ptr %964, i64 56
  %966 = load ptr, ptr %965, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %966) #8
  %967 = getelementptr inbounds nuw i8, ptr %966, i64 40
  %968 = load i64, ptr %967, align 8, !tbaa !55
  %969 = getelementptr inbounds nuw i8, ptr %964, i64 32
  %970 = load i32, ptr %969, align 8, !tbaa !96
  %971 = zext i32 %970 to i64
  %972 = tail call i64 @llvm.umin.i64(i64 %968, i64 %971)
  %973 = trunc nuw i64 %972 to i32
  %974 = icmp eq i64 %972, 0
  br i1 %974, label %1007, label %975

975:                                              ; preds = %960
  %976 = getelementptr inbounds nuw i8, ptr %964, i64 24
  %977 = load ptr, ptr %976, align 8, !tbaa !95
  %978 = getelementptr inbounds nuw i8, ptr %966, i64 32
  %979 = load ptr, ptr %978, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %977, ptr align 1 %979, i64 %972, i1 false)
  %980 = load ptr, ptr %976, align 8, !tbaa !95
  %981 = getelementptr inbounds nuw i8, ptr %980, i64 %972
  store ptr %981, ptr %976, align 8, !tbaa !95
  %982 = load ptr, ptr %978, align 8, !tbaa !56
  %983 = getelementptr inbounds nuw i8, ptr %982, i64 %972
  store ptr %983, ptr %978, align 8, !tbaa !56
  %984 = getelementptr inbounds nuw i8, ptr %964, i64 40
  %985 = load i64, ptr %984, align 8, !tbaa !97
  %986 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %985, i64 %972), !nosanitize !44
  %987 = extractvalue { i64, i1 } %986, 1, !nosanitize !44
  br i1 %987, label %988, label %989, !prof !45, !nosanitize !44

988:                                              ; preds = %975
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

989:                                              ; preds = %975
  %990 = extractvalue { i64, i1 } %986, 0, !nosanitize !44
  store i64 %990, ptr %984, align 8, !tbaa !97
  %991 = load i32, ptr %969, align 8, !tbaa !96
  %992 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %991, i32 %973), !nosanitize !44
  %993 = extractvalue { i32, i1 } %992, 1, !nosanitize !44
  br i1 %993, label %994, label %995, !prof !45, !nosanitize !44

994:                                              ; preds = %989
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

995:                                              ; preds = %989
  %996 = extractvalue { i32, i1 } %992, 0, !nosanitize !44
  store i32 %996, ptr %969, align 8, !tbaa !96
  %997 = load i64, ptr %967, align 8, !tbaa !55
  %998 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %997, i64 %972), !nosanitize !44
  %999 = extractvalue { i64, i1 } %998, 1, !nosanitize !44
  br i1 %999, label %1000, label %1001, !prof !45, !nosanitize !44

1000:                                             ; preds = %995
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1001:                                             ; preds = %995
  %1002 = extractvalue { i64, i1 } %998, 0, !nosanitize !44
  store i64 %1002, ptr %967, align 8, !tbaa !55
  %1003 = icmp eq i64 %1002, 0
  br i1 %1003, label %1004, label %1007

1004:                                             ; preds = %1001
  %1005 = getelementptr inbounds nuw i8, ptr %966, i64 16
  %1006 = load ptr, ptr %1005, align 8, !tbaa !40
  store ptr %1006, ptr %978, align 8, !tbaa !56
  br label %1007

1007:                                             ; preds = %1004, %1001, %960
  %1008 = load ptr, ptr %0, align 8, !tbaa !19
  %1009 = getelementptr inbounds nuw i8, ptr %1008, i64 32
  %1010 = load i32, ptr %1009, align 8, !tbaa !96
  %1011 = icmp eq i32 %1010, 0
  br i1 %1011, label %1013, label %1012

1012:                                             ; preds = %1007, %944
  br label %1013

1013:                                             ; preds = %1012, %1007, %938, %871, %599
  %1014 = phi i32 [ 1, %1012 ], [ %943, %938 ], [ 0, %1007 ], [ 0, %599 ], [ 0, %871 ]
  ret i32 %1014
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
  %29 = tail call ptr %26(ptr noundef %28, i32 noundef 1, i32 noundef 5968) #8
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
  %37 = tail call ptr %33(ptr noundef %34, i32 noundef %36, i32 noundef 2) #8
  %38 = getelementptr inbounds nuw i8, ptr %29, i64 96
  store ptr %37, ptr %38, align 8, !tbaa !34
  %39 = load ptr, ptr %25, align 8, !tbaa !15
  %40 = load ptr, ptr %27, align 8, !tbaa !16
  %41 = load i32, ptr %35, align 8, !tbaa !31
  %42 = tail call ptr %39(ptr noundef %40, i32 noundef %41, i32 noundef 2) #8
  %43 = getelementptr inbounds nuw i8, ptr %29, i64 112
  store ptr %42, ptr %43, align 8, !tbaa !35
  %44 = load ptr, ptr %25, align 8, !tbaa !15
  %45 = load ptr, ptr %27, align 8, !tbaa !16
  %46 = getelementptr inbounds nuw i8, ptr %29, i64 132
  %47 = load i32, ptr %46, align 4, !tbaa !36
  %48 = tail call ptr %44(ptr noundef %45, i32 noundef %47, i32 noundef 2) #8
  %49 = getelementptr inbounds nuw i8, ptr %29, i64 120
  store ptr %48, ptr %49, align 8, !tbaa !37
  %50 = load ptr, ptr %25, align 8, !tbaa !15
  %51 = load ptr, ptr %27, align 8, !tbaa !16
  %52 = getelementptr inbounds nuw i8, ptr %29, i64 5896
  %53 = load i32, ptr %52, align 8, !tbaa !39
  %54 = tail call ptr %50(ptr noundef %51, i32 noundef %53, i32 noundef 4) #8
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
  tail call void %71(ptr noundef %87, ptr noundef nonnull %84) #8
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
  tail call void %91(ptr noundef %97, ptr noundef nonnull %94) #8
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
  tail call void %101(ptr noundef %107, ptr noundef nonnull %104) #8
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
  tail call void %111(ptr noundef %117, ptr noundef nonnull %114) #8
  %118 = load ptr, ptr %70, align 8, !tbaa !17
  %119 = load ptr, ptr %32, align 8, !tbaa !18
  br label %120

120:                                              ; preds = %116, %110
  %121 = phi ptr [ %119, %116 ], [ %112, %110 ]
  %122 = phi ptr [ %118, %116 ], [ %111, %110 ]
  %123 = load ptr, ptr %27, align 8, !tbaa !16
  tail call void %122(ptr noundef %123, ptr noundef %121) #8
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
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
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
  %180 = load i32, ptr %179, align 4, !tbaa !118
  %181 = zext i32 %180 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %175, ptr align 1 %178, i64 %181, i1 false)
  %182 = getelementptr inbounds nuw i8, ptr %29, i64 212
  %183 = getelementptr inbounds nuw i8, ptr %29, i64 2904
  store ptr %182, ptr %183, align 8, !tbaa !120
  %184 = getelementptr inbounds nuw i8, ptr %29, i64 2504
  %185 = getelementptr inbounds nuw i8, ptr %29, i64 2928
  store ptr %184, ptr %185, align 8, !tbaa !121
  %186 = getelementptr inbounds nuw i8, ptr %29, i64 2748
  %187 = getelementptr inbounds nuw i8, ptr %29, i64 2952
  store ptr %186, ptr %187, align 8, !tbaa !122
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

32:                                               ; preds = %1013, %2
  %33 = load i32, ptr %3, align 4, !tbaa !73
  %34 = icmp ult i32 %33, 262
  br i1 %34, label %35, label %610

35:                                               ; preds = %32
  %36 = load i32, ptr %4, align 8, !tbaa !31
  %37 = zext i32 %36 to i64
  %mv.h1 = icmp sge i32 %36, 0
  %mv.h.fr2 = freeze i1 %mv.h1
  br i1 %mv.h.fr2, label %.mv.ph3.mv.fast, label %.mv.ph3

.mv.ph3.mv.fast:                                  ; preds = %35
  br label %38

38:                                               ; preds = %249, %.mv.ph3.mv.fast
  %39 = phi i32 [ %181, %249 ], [ %33, %.mv.ph3.mv.fast ]
  %40 = load i64, ptr %5, align 8, !tbaa !59
  %41 = zext nneg i32 %39 to i64
  %42 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %40, i64 %41), !nosanitize !44
  %43 = extractvalue { i64, i1 } %42, 1, !nosanitize !44
  br i1 %43, label %295, label %44, !prof !45, !nosanitize !44

44:                                               ; preds = %38
  %45 = extractvalue { i64, i1 } %42, 0, !nosanitize !44
  %46 = load i32, ptr %6, align 4, !tbaa !71
  %47 = zext i32 %46 to i64
  %48 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %45, i64 %47), !nosanitize !44
  %49 = extractvalue { i64, i1 } %48, 1, !nosanitize !44
  br i1 %49, label %302, label %50, !prof !45, !nosanitize !44

50:                                               ; preds = %44
  %51 = extractvalue { i64, i1 } %48, 0, !nosanitize !44
  %52 = trunc i64 %51 to i32
  %53 = load i32, ptr %4, align 8, !tbaa !31
  %54 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %53, i32 262), !nosanitize !44
  %55 = extractvalue { i32, i1 } %54, 1, !nosanitize !44
  br i1 %55, label %309, label %56, !prof !45, !nosanitize !44

56:                                               ; preds = %50
  %57 = extractvalue { i32, i1 } %54, 0, !nosanitize !44
  %58 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %36, i32 %57), !nosanitize !44
  %59 = extractvalue { i32, i1 } %58, 1, !nosanitize !44
  br i1 %59, label %314, label %60, !prof !45, !nosanitize !44

60:                                               ; preds = %56
  %61 = extractvalue { i32, i1 } %58, 0, !nosanitize !44
  %62 = icmp ult i32 %46, %61
  br i1 %62, label %131, label %63

63:                                               ; preds = %60
  %64 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %36, i32 %52), !nosanitize !44
  %65 = extractvalue { i32, i1 } %64, 1, !nosanitize !44
  br i1 %65, label %321, label %66, !prof !45, !nosanitize !44

66:                                               ; preds = %63
  %67 = extractvalue { i32, i1 } %64, 0, !nosanitize !44
  %68 = load ptr, ptr %7, align 8, !tbaa !34
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 %37
  %70 = zext i32 %67 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %68, ptr align 1 %69, i64 %70, i1 false)
  %71 = load i32, ptr %8, align 8, !tbaa !81
  %72 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %71, i32 %36), !nosanitize !44
  %73 = extractvalue { i32, i1 } %72, 1, !nosanitize !44
  br i1 %73, label %330, label %74, !prof !45, !nosanitize !44

74:                                               ; preds = %66
  %75 = extractvalue { i32, i1 } %72, 0, !nosanitize !44
  store i32 %75, ptr %8, align 8, !tbaa !81
  %76 = load i32, ptr %6, align 4, !tbaa !71
  %77 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %76, i32 %36), !nosanitize !44
  %78 = extractvalue { i32, i1 } %77, 1, !nosanitize !44
  br i1 %78, label %336, label %79, !prof !45, !nosanitize !44

79:                                               ; preds = %74
  %80 = extractvalue { i32, i1 } %77, 0, !nosanitize !44
  store i32 %80, ptr %6, align 4, !tbaa !71
  %81 = load i64, ptr %9, align 8, !tbaa !72
  %82 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %81, i64 %37), !nosanitize !44
  %83 = extractvalue { i64, i1 } %82, 1, !nosanitize !44
  br i1 %83, label %336, label %84, !prof !45, !nosanitize !44

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
  %94 = getelementptr inbounds nuw i16, ptr %92, i64 %93
  br label %95

95:                                               ; preds = %105, %89
  %96 = phi ptr [ %94, %89 ], [ %98, %105 ]
  %97 = phi i32 [ %91, %89 ], [ %106, %105 ]
  %98 = getelementptr inbounds i8, ptr %96, i64 -2
  %99 = load i16, ptr %98, align 2, !tbaa !60
  %100 = zext i16 %99 to i32
  %101 = tail call i32 @llvm.usub.sat.i32(i32 %100, i32 %90)
  %102 = trunc nuw i32 %101 to i16
  store i16 %102, ptr %98, align 2, !tbaa !60
  %103 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %97, i32 1), !nosanitize !44
  %104 = extractvalue { i32, i1 } %103, 1, !nosanitize !44
  br i1 %104, label %363, label %105, !prof !45, !nosanitize !44

105:                                              ; preds = %95
  %106 = extractvalue { i32, i1 } %103, 0, !nosanitize !44
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %95, !llvm.loop !82

108:                                              ; preds = %105
  %109 = load ptr, ptr %13, align 8, !tbaa !35
  %110 = zext i32 %90 to i64
  %111 = getelementptr inbounds nuw i16, ptr %109, i64 %110
  br label %112

112:                                              ; preds = %122, %108
  %113 = phi ptr [ %111, %108 ], [ %115, %122 ]
  %114 = phi i32 [ %90, %108 ], [ %123, %122 ]
  %115 = getelementptr inbounds i8, ptr %113, i64 -2
  %116 = load i16, ptr %115, align 2, !tbaa !60
  %117 = zext i16 %116 to i32
  %118 = tail call i32 @llvm.usub.sat.i32(i32 %117, i32 %90)
  %119 = trunc nuw i32 %118 to i16
  store i16 %119, ptr %115, align 2, !tbaa !60
  %120 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %114, i32 1), !nosanitize !44
  %121 = extractvalue { i32, i1 } %120, 1, !nosanitize !44
  br i1 %121, label %381, label %122, !prof !45, !nosanitize !44

122:                                              ; preds = %112
  %123 = extractvalue { i32, i1 } %120, 0, !nosanitize !44
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %112, !llvm.loop !84

125:                                              ; preds = %122
  store i32 1, ptr %14, align 8, !tbaa !61
  %126 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %52, i32 %36), !nosanitize !44
  %127 = extractvalue { i32, i1 } %126, 1, !nosanitize !44
  br i1 false, label %388, label %128, !prof !45, !nosanitize !44

128:                                              ; preds = %125
  %129 = extractvalue { i32, i1 } %126, 0, !nosanitize !44
  %130 = load i32, ptr %3, align 4, !tbaa !73
  br label %131

131:                                              ; preds = %128, %60
  %132 = phi i32 [ %130, %128 ], [ %39, %60 ]
  %133 = phi i32 [ %80, %128 ], [ %46, %60 ]
  %134 = phi i32 [ %129, %128 ], [ %52, %60 ]
  %135 = load ptr, ptr %0, align 8, !tbaa !19
  %136 = getelementptr inbounds nuw i8, ptr %135, i64 8
  %137 = load i32, ptr %136, align 8, !tbaa !79
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %558, label %139

139:                                              ; preds = %131
  %140 = load ptr, ptr %7, align 8, !tbaa !34
  %141 = zext i32 %133 to i64
  %142 = getelementptr inbounds nuw i8, ptr %140, i64 %141
  %143 = zext i32 %132 to i64
  %144 = getelementptr inbounds nuw i8, ptr %142, i64 %143
  %145 = tail call i32 @llvm.umin.i32(i32 %137, i32 %134)
  %146 = icmp eq i32 %134, 0
  br i1 %146, label %176, label %147

147:                                              ; preds = %139
  %148 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %137, i32 %145), !nosanitize !44
  %149 = extractvalue { i32, i1 } %148, 1, !nosanitize !44
  br i1 false, label %411, label %150, !prof !45, !nosanitize !44

150:                                              ; preds = %147
  %151 = extractvalue { i32, i1 } %148, 0, !nosanitize !44
  store i32 %151, ptr %136, align 8, !tbaa !79
  %152 = load ptr, ptr %135, align 8, !tbaa !80
  %153 = zext i32 %145 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %144, ptr align 1 %152, i64 %153, i1 false)
  %154 = getelementptr inbounds nuw i8, ptr %135, i64 56
  %155 = load ptr, ptr %154, align 8, !tbaa !18
  %156 = getelementptr inbounds nuw i8, ptr %155, i64 48
  %157 = load i32, ptr %156, align 8, !tbaa !29
  switch i32 %157, label %166 [
    i32 1, label %162
    i32 2, label %158
  ]

158:                                              ; preds = %150
  %159 = getelementptr inbounds nuw i8, ptr %135, i64 96
  %160 = load i64, ptr %159, align 8, !tbaa !57
  %161 = tail call i64 @crc32(i64 noundef %160, ptr noundef %144, i32 noundef %145) #8
  store i64 %161, ptr %159, align 8, !tbaa !57
  br label %166

162:                                              ; preds = %150
  %163 = getelementptr inbounds nuw i8, ptr %135, i64 96
  %164 = load i64, ptr %163, align 8, !tbaa !57
  %165 = tail call i64 @adler32(i64 noundef %164, ptr noundef %144, i32 noundef %145) #8
  store i64 %165, ptr %163, align 8, !tbaa !57
  br label %166

166:                                              ; preds = %162, %158, %150
  %167 = load ptr, ptr %135, align 8, !tbaa !80
  %168 = getelementptr inbounds nuw i8, ptr %167, i64 %153
  store ptr %168, ptr %135, align 8, !tbaa !80
  %169 = getelementptr inbounds nuw i8, ptr %135, i64 16
  %170 = load i64, ptr %169, align 8, !tbaa !53
  %171 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %170, i64 %153), !nosanitize !44
  %172 = extractvalue { i64, i1 } %171, 1, !nosanitize !44
  br i1 %172, label %435, label %173, !prof !45, !nosanitize !44

173:                                              ; preds = %166
  %174 = extractvalue { i64, i1 } %171, 0, !nosanitize !44
  store i64 %174, ptr %169, align 8, !tbaa !53
  %175 = load i32, ptr %3, align 4, !tbaa !73
  br label %176

176:                                              ; preds = %173, %139
  %177 = phi i32 [ %132, %139 ], [ %175, %173 ]
  %178 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %177, i32 %145), !nosanitize !44
  %179 = extractvalue { i32, i1 } %178, 1, !nosanitize !44
  br i1 %179, label %443, label %180, !prof !45, !nosanitize !44

180:                                              ; preds = %176
  %181 = extractvalue { i32, i1 } %178, 0, !nosanitize !44
  store i32 %181, ptr %3, align 4, !tbaa !73
  %182 = load i32, ptr %10, align 4, !tbaa !74
  %183 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %181, i32 %182), !nosanitize !44
  %184 = extractvalue { i32, i1 } %183, 1, !nosanitize !44
  br i1 %184, label %449, label %185, !prof !45, !nosanitize !44

185:                                              ; preds = %180
  %186 = extractvalue { i32, i1 } %183, 0, !nosanitize !44
  %187 = icmp ugt i32 %186, 2
  br i1 %187, label %188, label %247

188:                                              ; preds = %185
  %189 = load i32, ptr %6, align 4, !tbaa !71
  %190 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %189, i32 %182), !nosanitize !44
  %191 = extractvalue { i32, i1 } %190, 0, !nosanitize !44
  %192 = extractvalue { i32, i1 } %190, 1, !nosanitize !44
  br i1 %192, label %458, label %193, !prof !45, !nosanitize !44

193:                                              ; preds = %188
  %194 = load ptr, ptr %7, align 8, !tbaa !34
  %195 = zext i32 %191 to i64
  %196 = getelementptr inbounds nuw i8, ptr %194, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !5
  %198 = zext i8 %197 to i32
  store i32 %198, ptr %15, align 8, !tbaa !78
  %199 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %191, i32 1), !nosanitize !44
  %200 = extractvalue { i32, i1 } %199, 1, !nosanitize !44
  br i1 %200, label %467, label %201, !prof !45, !nosanitize !44

201:                                              ; preds = %193
  %202 = extractvalue { i32, i1 } %199, 0, !nosanitize !44
  %203 = load i32, ptr %16, align 8, !tbaa !52
  %204 = shl i32 %198, %203
  %205 = zext i32 %202 to i64
  %206 = getelementptr inbounds nuw i8, ptr %194, i64 %205
  %207 = load i8, ptr %206, align 1, !tbaa !5
  %208 = zext i8 %207 to i32
  %209 = xor i32 %204, %208
  %210 = load i32, ptr %17, align 4, !tbaa !51
  %211 = and i32 %209, %210
  store i32 %211, ptr %15, align 8, !tbaa !78
  %mv.h.mv.fast = icmp sge i32 %189, 0
  %mv.h.fr.mv.fast = freeze i1 %mv.h.mv.fast
  br i1 %mv.h.fr.mv.fast, label %.mv.ph.mv.fast.mv.fast, label %.mv.ph.mv.fast4

212:                                              ; preds = %.mv.ph.mv.fast4, %243
  %213 = phi i32 [ %211, %.mv.ph.mv.fast4 ], [ %229, %243 ]
  %214 = phi i32 [ %182, %.mv.ph.mv.fast4 ], [ %240, %243 ]
  %215 = phi i32 [ %191, %.mv.ph.mv.fast4 ], [ %244, %243 ]
  %216 = icmp eq i32 %214, 0
  br i1 %216, label %.loopexit.mv.fast, label %217

217:                                              ; preds = %212
  %218 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %215, i32 3), !nosanitize !44
  %219 = extractvalue { i32, i1 } %218, 1, !nosanitize !44
  br i1 %219, label %522, label %220, !prof !45, !nosanitize !44

220:                                              ; preds = %217
  %221 = shl i32 %213, %203
  %222 = extractvalue { i32, i1 } %218, 0, !nosanitize !44
  %223 = add i32 %222, -1
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds nuw i8, ptr %194, i64 %224
  %226 = load i8, ptr %225, align 1, !tbaa !5
  %227 = zext i8 %226 to i32
  %228 = xor i32 %221, %227
  %229 = and i32 %228, %210
  store i32 %229, ptr %15, align 8, !tbaa !78
  %230 = load ptr, ptr %12, align 8, !tbaa !37
  %231 = zext i32 %229 to i64
  %232 = getelementptr inbounds nuw i16, ptr %230, i64 %231
  %233 = load i16, ptr %232, align 2, !tbaa !60
  %234 = load ptr, ptr %13, align 8, !tbaa !35
  %235 = load i32, ptr %18, align 8, !tbaa !32
  %236 = and i32 %235, %215
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds nuw i16, ptr %234, i64 %237
  store i16 %233, ptr %238, align 2, !tbaa !60
  %239 = trunc i32 %215 to i16
  store i16 %239, ptr %232, align 2, !tbaa !60
  %240 = add i32 %214, -1
  store i32 %240, ptr %10, align 4, !tbaa !74
  %241 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %181, i32 %240), !nosanitize !44
  %242 = extractvalue { i32, i1 } %241, 1, !nosanitize !44
  br i1 false, label %546, label %243, !prof !45, !nosanitize !44

243:                                              ; preds = %220
  %244 = add nuw i32 %215, 1
  %245 = extractvalue { i32, i1 } %241, 0, !nosanitize !44
  %246 = icmp ult i32 %245, 3
  br i1 %246, label %.loopexit.mv.fast, label %212, !llvm.loop !85

247:                                              ; preds = %.loopexit.mv.fast, %185
  %248 = icmp ult i32 %181, 262
  br i1 %248, label %249, label %558

249:                                              ; preds = %247
  %250 = load ptr, ptr %0, align 8, !tbaa !19
  %251 = getelementptr inbounds nuw i8, ptr %250, i64 8
  %252 = load i32, ptr %251, align 8, !tbaa !79
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %558, label %38, !llvm.loop !86

.loopexit.mv.fast:                                ; preds = %285, %254, %243, %212
  br label %247

.mv.ph.mv.fast4:                                  ; preds = %201
  br label %212

.mv.ph.mv.fast.mv.fast:                           ; preds = %201
  br label %254

254:                                              ; preds = %285, %.mv.ph.mv.fast.mv.fast
  %255 = phi i32 [ %211, %.mv.ph.mv.fast.mv.fast ], [ %271, %285 ]
  %256 = phi i32 [ %182, %.mv.ph.mv.fast.mv.fast ], [ %282, %285 ]
  %257 = phi i32 [ %191, %.mv.ph.mv.fast.mv.fast ], [ %286, %285 ]
  %258 = icmp eq i32 %256, 0
  br i1 %258, label %.loopexit.mv.fast, label %259

259:                                              ; preds = %254
  %260 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %257, i32 3), !nosanitize !44
  %261 = extractvalue { i32, i1 } %260, 1, !nosanitize !44
  br i1 false, label %522, label %262, !prof !45, !nosanitize !44

262:                                              ; preds = %259
  %263 = shl i32 %255, %203
  %264 = extractvalue { i32, i1 } %260, 0, !nosanitize !44
  %265 = add i32 %264, -1
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds nuw i8, ptr %194, i64 %266
  %268 = load i8, ptr %267, align 1, !tbaa !5
  %269 = zext i8 %268 to i32
  %270 = xor i32 %263, %269
  %271 = and i32 %270, %210
  store i32 %271, ptr %15, align 8, !tbaa !78
  %272 = load ptr, ptr %12, align 8, !tbaa !37
  %273 = zext i32 %271 to i64
  %274 = getelementptr inbounds nuw i16, ptr %272, i64 %273
  %275 = load i16, ptr %274, align 2, !tbaa !60
  %276 = load ptr, ptr %13, align 8, !tbaa !35
  %277 = load i32, ptr %18, align 8, !tbaa !32
  %278 = and i32 %277, %257
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds nuw i16, ptr %276, i64 %279
  store i16 %275, ptr %280, align 2, !tbaa !60
  %281 = trunc i32 %257 to i16
  store i16 %281, ptr %274, align 2, !tbaa !60
  %282 = add i32 %256, -1
  store i32 %282, ptr %10, align 4, !tbaa !74
  %283 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %181, i32 %282), !nosanitize !44
  %284 = extractvalue { i32, i1 } %283, 1, !nosanitize !44
  br i1 false, label %546, label %285, !prof !45, !nosanitize !44

285:                                              ; preds = %262
  %286 = add nuw i32 %257, 1
  %287 = extractvalue { i32, i1 } %283, 0, !nosanitize !44
  %288 = icmp ult i32 %287, 3
  br i1 %288, label %.loopexit.mv.fast, label %254, !llvm.loop !85

.mv.ph3:                                          ; preds = %35
  br label %289

289:                                              ; preds = %553, %.mv.ph3
  %290 = phi i32 [ %445, %553 ], [ %33, %.mv.ph3 ]
  %291 = load i64, ptr %5, align 8, !tbaa !59
  %292 = zext nneg i32 %290 to i64
  %293 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %291, i64 %292), !nosanitize !44
  %294 = extractvalue { i64, i1 } %293, 1, !nosanitize !44
  br i1 %294, label %295, label %296, !prof !45, !nosanitize !44

295:                                              ; preds = %38, %289
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

296:                                              ; preds = %289
  %297 = extractvalue { i64, i1 } %293, 0, !nosanitize !44
  %298 = load i32, ptr %6, align 4, !tbaa !71
  %299 = zext i32 %298 to i64
  %300 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %297, i64 %299), !nosanitize !44
  %301 = extractvalue { i64, i1 } %300, 1, !nosanitize !44
  br i1 %301, label %302, label %303, !prof !45, !nosanitize !44

302:                                              ; preds = %44, %296
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

303:                                              ; preds = %296
  %304 = extractvalue { i64, i1 } %300, 0, !nosanitize !44
  %305 = trunc i64 %304 to i32
  %306 = load i32, ptr %4, align 8, !tbaa !31
  %307 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %306, i32 262), !nosanitize !44
  %308 = extractvalue { i32, i1 } %307, 1, !nosanitize !44
  br i1 %308, label %309, label %310, !prof !45, !nosanitize !44

309:                                              ; preds = %50, %303
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

310:                                              ; preds = %303
  %311 = extractvalue { i32, i1 } %307, 0, !nosanitize !44
  %312 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %36, i32 %311), !nosanitize !44
  %313 = extractvalue { i32, i1 } %312, 1, !nosanitize !44
  br i1 %313, label %314, label %315, !prof !45, !nosanitize !44

314:                                              ; preds = %56, %310
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

315:                                              ; preds = %310
  %316 = extractvalue { i32, i1 } %312, 0, !nosanitize !44
  %317 = icmp ult i32 %298, %316
  br i1 %317, label %392, label %318

318:                                              ; preds = %315
  %319 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %36, i32 %305), !nosanitize !44
  %320 = extractvalue { i32, i1 } %319, 1, !nosanitize !44
  br i1 %320, label %321, label %322, !prof !45, !nosanitize !44

321:                                              ; preds = %63, %318
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

322:                                              ; preds = %318
  %323 = extractvalue { i32, i1 } %319, 0, !nosanitize !44
  %324 = load ptr, ptr %7, align 8, !tbaa !34
  %325 = getelementptr inbounds nuw i8, ptr %324, i64 %37
  %326 = zext i32 %323 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %324, ptr align 1 %325, i64 %326, i1 false)
  %327 = load i32, ptr %8, align 8, !tbaa !81
  %328 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %327, i32 %36), !nosanitize !44
  %329 = extractvalue { i32, i1 } %328, 1, !nosanitize !44
  br i1 %329, label %330, label %331, !prof !45, !nosanitize !44

330:                                              ; preds = %66, %322
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

331:                                              ; preds = %322
  %332 = extractvalue { i32, i1 } %328, 0, !nosanitize !44
  store i32 %332, ptr %8, align 8, !tbaa !81
  %333 = load i32, ptr %6, align 4, !tbaa !71
  %334 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %333, i32 %36), !nosanitize !44
  %335 = extractvalue { i32, i1 } %334, 1, !nosanitize !44
  br i1 %335, label %336, label %337, !prof !45, !nosanitize !44

336:                                              ; preds = %79, %74, %337, %331
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

337:                                              ; preds = %331
  %338 = extractvalue { i32, i1 } %334, 0, !nosanitize !44
  store i32 %338, ptr %6, align 4, !tbaa !71
  %339 = load i64, ptr %9, align 8, !tbaa !72
  %340 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %339, i64 %37), !nosanitize !44
  %341 = extractvalue { i64, i1 } %340, 1, !nosanitize !44
  br i1 %341, label %336, label %342, !prof !45, !nosanitize !44

342:                                              ; preds = %337
  %343 = extractvalue { i64, i1 } %340, 0, !nosanitize !44
  store i64 %343, ptr %9, align 8, !tbaa !72
  %344 = load i32, ptr %10, align 4, !tbaa !74
  %345 = icmp ugt i32 %344, %338
  br i1 %345, label %346, label %347

346:                                              ; preds = %342
  store i32 %338, ptr %10, align 4, !tbaa !74
  br label %347

347:                                              ; preds = %346, %342
  %348 = load i32, ptr %4, align 8, !tbaa !31
  %349 = load i32, ptr %11, align 4, !tbaa !36
  %350 = load ptr, ptr %12, align 8, !tbaa !37
  %351 = zext i32 %349 to i64
  %352 = getelementptr inbounds nuw i16, ptr %350, i64 %351
  br label %353

353:                                              ; preds = %364, %347
  %354 = phi ptr [ %352, %347 ], [ %356, %364 ]
  %355 = phi i32 [ %349, %347 ], [ %365, %364 ]
  %356 = getelementptr inbounds i8, ptr %354, i64 -2
  %357 = load i16, ptr %356, align 2, !tbaa !60
  %358 = zext i16 %357 to i32
  %359 = tail call i32 @llvm.usub.sat.i32(i32 %358, i32 %348)
  %360 = trunc nuw i32 %359 to i16
  store i16 %360, ptr %356, align 2, !tbaa !60
  %361 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %355, i32 1), !nosanitize !44
  %362 = extractvalue { i32, i1 } %361, 1, !nosanitize !44
  br i1 %362, label %363, label %364, !prof !45, !nosanitize !44

363:                                              ; preds = %95, %353
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

364:                                              ; preds = %353
  %365 = extractvalue { i32, i1 } %361, 0, !nosanitize !44
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %353, !llvm.loop !82

367:                                              ; preds = %364
  %368 = load ptr, ptr %13, align 8, !tbaa !35
  %369 = zext i32 %348 to i64
  %370 = getelementptr inbounds nuw i16, ptr %368, i64 %369
  br label %371

371:                                              ; preds = %382, %367
  %372 = phi ptr [ %370, %367 ], [ %374, %382 ]
  %373 = phi i32 [ %348, %367 ], [ %383, %382 ]
  %374 = getelementptr inbounds i8, ptr %372, i64 -2
  %375 = load i16, ptr %374, align 2, !tbaa !60
  %376 = zext i16 %375 to i32
  %377 = tail call i32 @llvm.usub.sat.i32(i32 %376, i32 %348)
  %378 = trunc nuw i32 %377 to i16
  store i16 %378, ptr %374, align 2, !tbaa !60
  %379 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %373, i32 1), !nosanitize !44
  %380 = extractvalue { i32, i1 } %379, 1, !nosanitize !44
  br i1 %380, label %381, label %382, !prof !45, !nosanitize !44

381:                                              ; preds = %112, %371
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

382:                                              ; preds = %371
  %383 = extractvalue { i32, i1 } %379, 0, !nosanitize !44
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %371, !llvm.loop !84

385:                                              ; preds = %382
  store i32 1, ptr %14, align 8, !tbaa !61
  %386 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %305, i32 %36), !nosanitize !44
  %387 = extractvalue { i32, i1 } %386, 1, !nosanitize !44
  br i1 %387, label %388, label %389, !prof !45, !nosanitize !44

388:                                              ; preds = %125, %385
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

389:                                              ; preds = %385
  %390 = extractvalue { i32, i1 } %386, 0, !nosanitize !44
  %391 = load i32, ptr %3, align 4, !tbaa !73
  br label %392

392:                                              ; preds = %389, %315
  %393 = phi i32 [ %391, %389 ], [ %290, %315 ]
  %394 = phi i32 [ %338, %389 ], [ %298, %315 ]
  %395 = phi i32 [ %390, %389 ], [ %305, %315 ]
  %396 = load ptr, ptr %0, align 8, !tbaa !19
  %397 = getelementptr inbounds nuw i8, ptr %396, i64 8
  %398 = load i32, ptr %397, align 8, !tbaa !79
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %558, label %400

400:                                              ; preds = %392
  %401 = load ptr, ptr %7, align 8, !tbaa !34
  %402 = zext i32 %394 to i64
  %403 = getelementptr inbounds nuw i8, ptr %401, i64 %402
  %404 = zext i32 %393 to i64
  %405 = getelementptr inbounds nuw i8, ptr %403, i64 %404
  %406 = tail call i32 @llvm.umin.i32(i32 %398, i32 %395)
  %407 = icmp eq i32 %395, 0
  br i1 %407, label %439, label %408

408:                                              ; preds = %400
  %409 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %398, i32 %406), !nosanitize !44
  %410 = extractvalue { i32, i1 } %409, 1, !nosanitize !44
  br i1 false, label %411, label %412, !prof !45, !nosanitize !44

411:                                              ; preds = %147, %408
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

412:                                              ; preds = %408
  %413 = extractvalue { i32, i1 } %409, 0, !nosanitize !44
  store i32 %413, ptr %397, align 8, !tbaa !79
  %414 = load ptr, ptr %396, align 8, !tbaa !80
  %415 = zext i32 %406 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %405, ptr align 1 %414, i64 %415, i1 false)
  %416 = getelementptr inbounds nuw i8, ptr %396, i64 56
  %417 = load ptr, ptr %416, align 8, !tbaa !18
  %418 = getelementptr inbounds nuw i8, ptr %417, i64 48
  %419 = load i32, ptr %418, align 8, !tbaa !29
  switch i32 %419, label %428 [
    i32 1, label %420
    i32 2, label %424
  ]

420:                                              ; preds = %412
  %421 = getelementptr inbounds nuw i8, ptr %396, i64 96
  %422 = load i64, ptr %421, align 8, !tbaa !57
  %423 = tail call i64 @adler32(i64 noundef %422, ptr noundef %405, i32 noundef %406) #8
  store i64 %423, ptr %421, align 8, !tbaa !57
  br label %428

424:                                              ; preds = %412
  %425 = getelementptr inbounds nuw i8, ptr %396, i64 96
  %426 = load i64, ptr %425, align 8, !tbaa !57
  %427 = tail call i64 @crc32(i64 noundef %426, ptr noundef %405, i32 noundef %406) #8
  store i64 %427, ptr %425, align 8, !tbaa !57
  br label %428

428:                                              ; preds = %424, %420, %412
  %429 = load ptr, ptr %396, align 8, !tbaa !80
  %430 = getelementptr inbounds nuw i8, ptr %429, i64 %415
  store ptr %430, ptr %396, align 8, !tbaa !80
  %431 = getelementptr inbounds nuw i8, ptr %396, i64 16
  %432 = load i64, ptr %431, align 8, !tbaa !53
  %433 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %432, i64 %415), !nosanitize !44
  %434 = extractvalue { i64, i1 } %433, 1, !nosanitize !44
  br i1 %434, label %435, label %436, !prof !45, !nosanitize !44

435:                                              ; preds = %166, %428
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

436:                                              ; preds = %428
  %437 = extractvalue { i64, i1 } %433, 0, !nosanitize !44
  store i64 %437, ptr %431, align 8, !tbaa !53
  %438 = load i32, ptr %3, align 4, !tbaa !73
  br label %439

439:                                              ; preds = %436, %400
  %440 = phi i32 [ %393, %400 ], [ %438, %436 ]
  %441 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %440, i32 %406), !nosanitize !44
  %442 = extractvalue { i32, i1 } %441, 1, !nosanitize !44
  br i1 %442, label %443, label %444, !prof !45, !nosanitize !44

443:                                              ; preds = %176, %439
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

444:                                              ; preds = %439
  %445 = extractvalue { i32, i1 } %441, 0, !nosanitize !44
  store i32 %445, ptr %3, align 4, !tbaa !73
  %446 = load i32, ptr %10, align 4, !tbaa !74
  %447 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %445, i32 %446), !nosanitize !44
  %448 = extractvalue { i32, i1 } %447, 1, !nosanitize !44
  br i1 %448, label %449, label %450, !prof !45, !nosanitize !44

449:                                              ; preds = %180, %444
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

450:                                              ; preds = %444
  %451 = extractvalue { i32, i1 } %447, 0, !nosanitize !44
  %452 = icmp ugt i32 %451, 2
  br i1 %452, label %453, label %551

453:                                              ; preds = %450
  %454 = load i32, ptr %6, align 4, !tbaa !71
  %455 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %454, i32 %446), !nosanitize !44
  %456 = extractvalue { i32, i1 } %455, 0, !nosanitize !44
  %457 = extractvalue { i32, i1 } %455, 1, !nosanitize !44
  br i1 %457, label %458, label %459, !prof !45, !nosanitize !44

458:                                              ; preds = %188, %453
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

459:                                              ; preds = %453
  %460 = load ptr, ptr %7, align 8, !tbaa !34
  %461 = zext i32 %456 to i64
  %462 = getelementptr inbounds nuw i8, ptr %460, i64 %461
  %463 = load i8, ptr %462, align 1, !tbaa !5
  %464 = zext i8 %463 to i32
  store i32 %464, ptr %15, align 8, !tbaa !78
  %465 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %456, i32 1), !nosanitize !44
  %466 = extractvalue { i32, i1 } %465, 1, !nosanitize !44
  br i1 %466, label %467, label %468, !prof !45, !nosanitize !44

467:                                              ; preds = %193, %459
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

468:                                              ; preds = %459
  %469 = extractvalue { i32, i1 } %465, 0, !nosanitize !44
  %470 = load i32, ptr %16, align 8, !tbaa !52
  %471 = shl i32 %464, %470
  %472 = zext i32 %469 to i64
  %473 = getelementptr inbounds nuw i8, ptr %460, i64 %472
  %474 = load i8, ptr %473, align 1, !tbaa !5
  %475 = zext i8 %474 to i32
  %476 = xor i32 %471, %475
  %477 = load i32, ptr %17, align 4, !tbaa !51
  %478 = and i32 %476, %477
  store i32 %478, ptr %15, align 8, !tbaa !78
  %mv.h = icmp sge i32 %454, 0
  %mv.h.fr = freeze i1 %mv.h
  br i1 %mv.h.fr, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %468
  br label %479

479:                                              ; preds = %510, %.mv.ph.mv.fast
  %480 = phi i32 [ %478, %.mv.ph.mv.fast ], [ %496, %510 ]
  %481 = phi i32 [ %446, %.mv.ph.mv.fast ], [ %507, %510 ]
  %482 = phi i32 [ %456, %.mv.ph.mv.fast ], [ %511, %510 ]
  %483 = icmp eq i32 %481, 0
  br i1 %483, label %.loopexit, label %484

484:                                              ; preds = %479
  %485 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %482, i32 3), !nosanitize !44
  %486 = extractvalue { i32, i1 } %485, 1, !nosanitize !44
  br i1 false, label %522, label %487, !prof !45, !nosanitize !44

487:                                              ; preds = %484
  %488 = shl i32 %480, %470
  %489 = extractvalue { i32, i1 } %485, 0, !nosanitize !44
  %490 = add i32 %489, -1
  %491 = zext i32 %490 to i64
  %492 = getelementptr inbounds nuw i8, ptr %460, i64 %491
  %493 = load i8, ptr %492, align 1, !tbaa !5
  %494 = zext i8 %493 to i32
  %495 = xor i32 %488, %494
  %496 = and i32 %495, %477
  store i32 %496, ptr %15, align 8, !tbaa !78
  %497 = load ptr, ptr %12, align 8, !tbaa !37
  %498 = zext i32 %496 to i64
  %499 = getelementptr inbounds nuw i16, ptr %497, i64 %498
  %500 = load i16, ptr %499, align 2, !tbaa !60
  %501 = load ptr, ptr %13, align 8, !tbaa !35
  %502 = load i32, ptr %18, align 8, !tbaa !32
  %503 = and i32 %502, %482
  %504 = zext i32 %503 to i64
  %505 = getelementptr inbounds nuw i16, ptr %501, i64 %504
  store i16 %500, ptr %505, align 2, !tbaa !60
  %506 = trunc i32 %482 to i16
  store i16 %506, ptr %499, align 2, !tbaa !60
  %507 = add i32 %481, -1
  store i32 %507, ptr %10, align 4, !tbaa !74
  %508 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %445, i32 %507), !nosanitize !44
  %509 = extractvalue { i32, i1 } %508, 1, !nosanitize !44
  br i1 false, label %546, label %510, !prof !45, !nosanitize !44

510:                                              ; preds = %487
  %511 = add nuw i32 %482, 1
  %512 = extractvalue { i32, i1 } %508, 0, !nosanitize !44
  %513 = icmp ult i32 %512, 3
  br i1 %513, label %.loopexit, label %479, !llvm.loop !85

.mv.ph:                                           ; preds = %468
  br label %514

514:                                              ; preds = %547, %.mv.ph
  %515 = phi i32 [ %478, %.mv.ph ], [ %532, %547 ]
  %516 = phi i32 [ %446, %.mv.ph ], [ %543, %547 ]
  %517 = phi i32 [ %456, %.mv.ph ], [ %548, %547 ]
  %518 = icmp eq i32 %516, 0
  br i1 %518, label %.loopexit, label %519

519:                                              ; preds = %514
  %520 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %517, i32 3), !nosanitize !44
  %521 = extractvalue { i32, i1 } %520, 1, !nosanitize !44
  br i1 %521, label %522, label %523, !prof !45, !nosanitize !44

522:                                              ; preds = %259, %217, %484, %519
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

523:                                              ; preds = %519
  %524 = shl i32 %515, %470
  %525 = extractvalue { i32, i1 } %520, 0, !nosanitize !44
  %526 = add i32 %525, -1
  %527 = zext i32 %526 to i64
  %528 = getelementptr inbounds nuw i8, ptr %460, i64 %527
  %529 = load i8, ptr %528, align 1, !tbaa !5
  %530 = zext i8 %529 to i32
  %531 = xor i32 %524, %530
  %532 = and i32 %531, %477
  store i32 %532, ptr %15, align 8, !tbaa !78
  %533 = load ptr, ptr %12, align 8, !tbaa !37
  %534 = zext i32 %532 to i64
  %535 = getelementptr inbounds nuw i16, ptr %533, i64 %534
  %536 = load i16, ptr %535, align 2, !tbaa !60
  %537 = load ptr, ptr %13, align 8, !tbaa !35
  %538 = load i32, ptr %18, align 8, !tbaa !32
  %539 = and i32 %538, %517
  %540 = zext i32 %539 to i64
  %541 = getelementptr inbounds nuw i16, ptr %537, i64 %540
  store i16 %536, ptr %541, align 2, !tbaa !60
  %542 = trunc i32 %517 to i16
  store i16 %542, ptr %535, align 2, !tbaa !60
  %543 = add i32 %516, -1
  store i32 %543, ptr %10, align 4, !tbaa !74
  %544 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %445, i32 %543), !nosanitize !44
  %545 = extractvalue { i32, i1 } %544, 1, !nosanitize !44
  br i1 false, label %546, label %547, !prof !45, !nosanitize !44

546:                                              ; preds = %262, %220, %487, %523
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

547:                                              ; preds = %523
  %548 = add nuw i32 %517, 1
  %549 = extractvalue { i32, i1 } %544, 0, !nosanitize !44
  %550 = icmp ult i32 %549, 3
  br i1 %550, label %.loopexit, label %514, !llvm.loop !85

.loopexit:                                        ; preds = %510, %479, %514, %547
  br label %551

551:                                              ; preds = %.loopexit, %450
  %552 = icmp ult i32 %445, 262
  br i1 %552, label %553, label %558

553:                                              ; preds = %551
  %554 = load ptr, ptr %0, align 8, !tbaa !19
  %555 = getelementptr inbounds nuw i8, ptr %554, i64 8
  %556 = load i32, ptr %555, align 8, !tbaa !79
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %558, label %289, !llvm.loop !86

558:                                              ; preds = %249, %247, %131, %553, %551, %392
  %559 = phi i32 [ %445, %553 ], [ %445, %551 ], [ %393, %392 ], [ %181, %249 ], [ %181, %247 ], [ %132, %131 ]
  %560 = load i64, ptr %19, align 8, !tbaa !38
  %561 = load i64, ptr %5, align 8, !tbaa !59
  %562 = icmp ult i64 %560, %561
  br i1 %562, label %563, label %602

563:                                              ; preds = %558
  %564 = load i32, ptr %6, align 4, !tbaa !71
  %565 = zext i32 %564 to i64
  %566 = zext i32 %559 to i64
  %567 = add nuw nsw i64 %566, %565
  %568 = icmp ult i64 %560, %567
  br i1 %568, label %569, label %579

569:                                              ; preds = %563
  %570 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %561, i64 %567), !nosanitize !44
  %571 = extractvalue { i64, i1 } %570, 1, !nosanitize !44
  br i1 %571, label %572, label %573, !prof !45, !nosanitize !44

572:                                              ; preds = %569
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

573:                                              ; preds = %569
  %574 = extractvalue { i64, i1 } %570, 0, !nosanitize !44
  %575 = tail call i64 @llvm.umin.i64(i64 %574, i64 258)
  %576 = load ptr, ptr %7, align 8, !tbaa !34
  %577 = getelementptr inbounds nuw i8, ptr %576, i64 %567
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %577, i8 0, i64 %575, i1 false)
  %578 = add nuw nsw i64 %575, %567
  br label %599

579:                                              ; preds = %563
  %580 = add nuw nsw i64 %567, 258
  %581 = icmp ult i64 %560, %580
  br i1 %581, label %582, label %602

582:                                              ; preds = %579
  %583 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %561, i64 %560), !nosanitize !44
  %584 = extractvalue { i64, i1 } %583, 1, !nosanitize !44
  br i1 false, label %585, label %586, !prof !45, !nosanitize !44

585:                                              ; preds = %582
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

586:                                              ; preds = %582
  %587 = sub nuw nsw i64 %580, %560
  %588 = extractvalue { i64, i1 } %583, 0, !nosanitize !44
  %589 = tail call i64 @llvm.umin.i64(i64 %587, i64 %588)
  %590 = load ptr, ptr %7, align 8, !tbaa !34
  %591 = getelementptr inbounds nuw i8, ptr %590, i64 %560
  %592 = and i64 %589, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %591, i8 0, i64 %592, i1 false)
  %593 = load i64, ptr %19, align 8, !tbaa !38
  %594 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %593, i64 %589), !nosanitize !44
  %595 = extractvalue { i64, i1 } %594, 1, !nosanitize !44
  br i1 %595, label %596, label %597, !prof !45, !nosanitize !44

596:                                              ; preds = %586
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

597:                                              ; preds = %586
  %598 = extractvalue { i64, i1 } %594, 0, !nosanitize !44
  br label %599

599:                                              ; preds = %597, %573
  %600 = phi i64 [ %578, %573 ], [ %598, %597 ]
  store i64 %600, ptr %19, align 8, !tbaa !38
  %601 = load i32, ptr %3, align 4, !tbaa !73
  br label %602

602:                                              ; preds = %599, %579, %558
  %603 = phi i32 [ %559, %558 ], [ %559, %579 ], [ %601, %599 ]
  %604 = icmp ult i32 %603, 262
  %605 = and i1 %20, %604
  br i1 %605, label %1268, label %606

606:                                              ; preds = %602
  %607 = icmp eq i32 %603, 0
  br i1 %607, label %1131, label %608

608:                                              ; preds = %606
  %609 = icmp ugt i32 %603, 2
  br i1 %609, label %610, label %821

610:                                              ; preds = %608, %32
  %611 = phi i32 [ %603, %608 ], [ %33, %32 ]
  %612 = load i32, ptr %6, align 4, !tbaa !71
  %613 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %612, i32 2), !nosanitize !44
  %614 = extractvalue { i32, i1 } %613, 1, !nosanitize !44
  br i1 %614, label %615, label %616, !prof !45, !nosanitize !44

615:                                              ; preds = %610
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

616:                                              ; preds = %610
  %617 = extractvalue { i32, i1 } %613, 0, !nosanitize !44
  %618 = load ptr, ptr %7, align 8, !tbaa !34
  %619 = load i32, ptr %15, align 8, !tbaa !78
  %620 = load i32, ptr %16, align 8, !tbaa !52
  %621 = shl i32 %619, %620
  %622 = zext i32 %617 to i64
  %623 = getelementptr inbounds nuw i8, ptr %618, i64 %622
  %624 = load i8, ptr %623, align 1, !tbaa !5
  %625 = zext i8 %624 to i32
  %626 = xor i32 %621, %625
  %627 = load i32, ptr %17, align 4, !tbaa !51
  %628 = and i32 %626, %627
  store i32 %628, ptr %15, align 8, !tbaa !78
  %629 = load ptr, ptr %12, align 8, !tbaa !37
  %630 = zext i32 %628 to i64
  %631 = getelementptr inbounds nuw i16, ptr %629, i64 %630
  %632 = load i16, ptr %631, align 2, !tbaa !60
  %633 = load ptr, ptr %13, align 8, !tbaa !35
  %634 = load i32, ptr %18, align 8, !tbaa !32
  %635 = and i32 %634, %612
  %636 = zext i32 %635 to i64
  %637 = getelementptr inbounds nuw i16, ptr %633, i64 %636
  store i16 %632, ptr %637, align 2, !tbaa !60
  %638 = zext i16 %632 to i32
  %639 = trunc i32 %612 to i16
  store i16 %639, ptr %631, align 2, !tbaa !60
  %640 = icmp eq i16 %632, 0
  br i1 %640, label %821, label %641

641:                                              ; preds = %616
  %642 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %612, i32 %638), !nosanitize !44
  %643 = extractvalue { i32, i1 } %642, 0, !nosanitize !44
  %644 = extractvalue { i32, i1 } %642, 1, !nosanitize !44
  br i1 %644, label %645, label %646, !prof !45, !nosanitize !44

645:                                              ; preds = %641
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

646:                                              ; preds = %641
  %647 = load i32, ptr %4, align 8, !tbaa !31
  %648 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %647, i32 262), !nosanitize !44
  %649 = extractvalue { i32, i1 } %648, 1, !nosanitize !44
  br i1 %649, label %650, label %651, !prof !45, !nosanitize !44

650:                                              ; preds = %646
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

651:                                              ; preds = %646
  %652 = extractvalue { i32, i1 } %648, 0, !nosanitize !44
  %653 = icmp ugt i32 %643, %652
  br i1 %653, label %821, label %654

654:                                              ; preds = %651
  %655 = zext i32 %612 to i64
  %656 = getelementptr inbounds nuw i8, ptr %618, i64 %655
  %657 = load i32, ptr %21, align 8, !tbaa !75
  %658 = tail call i32 @llvm.usub.sat.i32(i32 %612, i32 %652)
  %659 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %657, i32 -1)
  %660 = extractvalue { i32, i1 } %659, 1, !nosanitize !44
  br i1 %660, label %661, label %662, !prof !45, !nosanitize !44

661:                                              ; preds = %783, %693, %654
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

662:                                              ; preds = %654
  %663 = load i32, ptr %22, align 8, !tbaa !68
  %664 = load i32, ptr %23, align 4, !tbaa !70
  %665 = getelementptr inbounds nuw i8, ptr %656, i64 258
  %666 = extractvalue { i32, i1 } %659, 0, !nosanitize !44
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds i8, ptr %656, i64 %667
  %669 = load i8, ptr %668, align 1, !tbaa !5
  %670 = sext i32 %657 to i64
  %671 = getelementptr inbounds i8, ptr %656, i64 %670
  %672 = load i8, ptr %671, align 1, !tbaa !5
  %673 = load i32, ptr %24, align 4, !tbaa !66
  %674 = icmp ult i32 %657, %673
  %675 = lshr i32 %664, 2
  %676 = select i1 %674, i32 %664, i32 %675
  %677 = tail call i32 @llvm.umin.i32(i32 %663, i32 %611)
  %678 = getelementptr i8, ptr %656, i64 -1
  %679 = getelementptr inbounds nuw i8, ptr %656, i64 1
  %680 = ptrtoint ptr %665 to i64
  br label %681

681:                                              ; preds = %815, %662
  %682 = phi i32 [ %657, %662 ], [ %802, %815 ]
  %683 = phi i32 [ %676, %662 ], [ %816, %815 ]
  %684 = phi i32 [ %638, %662 ], [ %809, %815 ]
  %685 = phi i8 [ %669, %662 ], [ %803, %815 ]
  %686 = phi i8 [ %672, %662 ], [ %804, %815 ]
  %687 = zext nneg i32 %684 to i64
  %688 = getelementptr inbounds nuw i8, ptr %618, i64 %687
  %689 = sext i32 %682 to i64
  %690 = getelementptr inbounds i8, ptr %688, i64 %689
  %691 = load i8, ptr %690, align 1, !tbaa !5
  %692 = icmp eq i8 %691, %686
  br i1 %692, label %693, label %801

693:                                              ; preds = %681
  %694 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %682, i32 -1)
  %695 = extractvalue { i32, i1 } %694, 1, !nosanitize !44
  br i1 %695, label %661, label %696, !prof !45, !nosanitize !44

696:                                              ; preds = %693
  %697 = extractvalue { i32, i1 } %694, 0, !nosanitize !44
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds i8, ptr %688, i64 %698
  %700 = load i8, ptr %699, align 1, !tbaa !5
  %701 = icmp eq i8 %700, %685
  br i1 %701, label %702, label %801

702:                                              ; preds = %696
  %703 = load i8, ptr %688, align 1, !tbaa !5
  %704 = load i8, ptr %656, align 1, !tbaa !5
  %705 = icmp eq i8 %703, %704
  br i1 %705, label %706, label %801

706:                                              ; preds = %702
  %707 = getelementptr inbounds nuw i8, ptr %688, i64 1
  %708 = load i8, ptr %707, align 1, !tbaa !5
  %709 = load i8, ptr %679, align 1, !tbaa !5
  %710 = icmp eq i8 %708, %709
  br i1 %710, label %711, label %801

711:                                              ; preds = %706
  %712 = getelementptr inbounds nuw i8, ptr %688, i64 2
  br label %713

713:                                              ; preds = %758, %711
  %714 = phi ptr [ %712, %711 ], [ %762, %758 ]
  %715 = phi i64 [ 2, %711 ], [ %759, %758 ]
  %716 = getelementptr inbounds nuw i8, ptr %656, i64 %715
  %717 = getelementptr inbounds nuw i8, ptr %716, i64 1
  %718 = load i8, ptr %717, align 1, !tbaa !5
  %719 = getelementptr inbounds nuw i8, ptr %714, i64 1
  %720 = load i8, ptr %719, align 1, !tbaa !5
  %721 = icmp eq i8 %718, %720
  br i1 %721, label %722, label %767

722:                                              ; preds = %713
  %723 = getelementptr inbounds nuw i8, ptr %716, i64 2
  %724 = load i8, ptr %723, align 1, !tbaa !5
  %725 = getelementptr inbounds nuw i8, ptr %714, i64 2
  %726 = load i8, ptr %725, align 1, !tbaa !5
  %727 = icmp eq i8 %724, %726
  br i1 %727, label %728, label %769

728:                                              ; preds = %722
  %729 = getelementptr inbounds nuw i8, ptr %716, i64 3
  %730 = load i8, ptr %729, align 1, !tbaa !5
  %731 = getelementptr inbounds nuw i8, ptr %714, i64 3
  %732 = load i8, ptr %731, align 1, !tbaa !5
  %733 = icmp eq i8 %730, %732
  br i1 %733, label %734, label %771

734:                                              ; preds = %728
  %735 = getelementptr inbounds nuw i8, ptr %716, i64 4
  %736 = load i8, ptr %735, align 1, !tbaa !5
  %737 = getelementptr inbounds nuw i8, ptr %714, i64 4
  %738 = load i8, ptr %737, align 1, !tbaa !5
  %739 = icmp eq i8 %736, %738
  br i1 %739, label %740, label %773

740:                                              ; preds = %734
  %741 = getelementptr inbounds nuw i8, ptr %716, i64 5
  %742 = load i8, ptr %741, align 1, !tbaa !5
  %743 = getelementptr inbounds nuw i8, ptr %714, i64 5
  %744 = load i8, ptr %743, align 1, !tbaa !5
  %745 = icmp eq i8 %742, %744
  br i1 %745, label %746, label %775

746:                                              ; preds = %740
  %747 = getelementptr inbounds nuw i8, ptr %716, i64 6
  %748 = load i8, ptr %747, align 1, !tbaa !5
  %749 = getelementptr inbounds nuw i8, ptr %714, i64 6
  %750 = load i8, ptr %749, align 1, !tbaa !5
  %751 = icmp eq i8 %748, %750
  br i1 %751, label %752, label %777

752:                                              ; preds = %746
  %753 = getelementptr inbounds nuw i8, ptr %716, i64 7
  %754 = load i8, ptr %753, align 1, !tbaa !5
  %755 = getelementptr inbounds nuw i8, ptr %714, i64 7
  %756 = load i8, ptr %755, align 1, !tbaa !5
  %757 = icmp eq i8 %754, %756
  br i1 %757, label %758, label %779

758:                                              ; preds = %752
  %759 = add nuw nsw i64 %715, 8
  %760 = getelementptr inbounds nuw i8, ptr %656, i64 %759
  %761 = load i8, ptr %760, align 1, !tbaa !5
  %762 = getelementptr inbounds nuw i8, ptr %714, i64 8
  %763 = load i8, ptr %762, align 1, !tbaa !5
  %764 = icmp eq i8 %761, %763
  %765 = icmp samesign ult i64 %715, 250
  %766 = select i1 %764, i1 %765, i1 false
  br i1 %766, label %713, label %781, !llvm.loop !123

767:                                              ; preds = %713
  %768 = getelementptr inbounds nuw i8, ptr %716, i64 1
  br label %783

769:                                              ; preds = %722
  %770 = getelementptr inbounds nuw i8, ptr %716, i64 2
  br label %783

771:                                              ; preds = %728
  %772 = getelementptr inbounds nuw i8, ptr %716, i64 3
  br label %783

773:                                              ; preds = %734
  %774 = getelementptr inbounds nuw i8, ptr %716, i64 4
  br label %783

775:                                              ; preds = %740
  %776 = getelementptr inbounds nuw i8, ptr %716, i64 5
  br label %783

777:                                              ; preds = %746
  %778 = getelementptr inbounds nuw i8, ptr %716, i64 6
  br label %783

779:                                              ; preds = %752
  %780 = getelementptr inbounds nuw i8, ptr %716, i64 7
  br label %783

781:                                              ; preds = %758
  %782 = getelementptr inbounds nuw i8, ptr %656, i64 %759
  br label %783

783:                                              ; preds = %781, %779, %777, %775, %773, %771, %769, %767
  %784 = phi ptr [ %768, %767 ], [ %770, %769 ], [ %772, %771 ], [ %774, %773 ], [ %776, %775 ], [ %778, %777 ], [ %780, %779 ], [ %782, %781 ]
  %785 = ptrtoint ptr %784 to i64
  %786 = sub i64 %680, %785
  %787 = trunc i64 %786 to i32
  %788 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %787), !nosanitize !44
  %789 = extractvalue { i32, i1 } %788, 0, !nosanitize !44
  %790 = extractvalue { i32, i1 } %788, 1, !nosanitize !44
  br i1 %790, label %661, label %791, !prof !45, !nosanitize !44

791:                                              ; preds = %783
  %792 = icmp sgt i32 %789, %682
  br i1 %792, label %793, label %801

793:                                              ; preds = %791
  store i32 %684, ptr %8, align 8, !tbaa !81
  %794 = icmp slt i32 %789, %677
  br i1 %794, label %795, label %818

795:                                              ; preds = %793
  %796 = sext i32 %789 to i64
  %797 = getelementptr i8, ptr %678, i64 %796
  %798 = load i8, ptr %797, align 1, !tbaa !5
  %799 = getelementptr inbounds i8, ptr %656, i64 %796
  %800 = load i8, ptr %799, align 1, !tbaa !5
  br label %801

801:                                              ; preds = %795, %791, %706, %702, %696, %681
  %802 = phi i32 [ %682, %681 ], [ %682, %696 ], [ %682, %702 ], [ %682, %706 ], [ %789, %795 ], [ %682, %791 ]
  %803 = phi i8 [ %685, %681 ], [ %685, %696 ], [ %685, %702 ], [ %685, %706 ], [ %798, %795 ], [ %685, %791 ]
  %804 = phi i8 [ %686, %681 ], [ %686, %696 ], [ %686, %702 ], [ %686, %706 ], [ %800, %795 ], [ %686, %791 ]
  %805 = and i32 %684, %634
  %806 = zext nneg i32 %805 to i64
  %807 = getelementptr inbounds nuw i16, ptr %633, i64 %806
  %808 = load i16, ptr %807, align 2, !tbaa !60
  %809 = zext i16 %808 to i32
  %810 = icmp ult i32 %658, %809
  br i1 %810, label %811, label %818

811:                                              ; preds = %801
  %812 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %683, i32 1), !nosanitize !44
  %813 = extractvalue { i32, i1 } %812, 1, !nosanitize !44
  br i1 %813, label %814, label %815, !prof !45, !nosanitize !44

814:                                              ; preds = %811
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

815:                                              ; preds = %811
  %816 = extractvalue { i32, i1 } %812, 0, !nosanitize !44
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %818, label %681, !llvm.loop !124

818:                                              ; preds = %815, %801, %793
  %819 = phi i32 [ %802, %815 ], [ %802, %801 ], [ %789, %793 ]
  %820 = tail call i32 @llvm.umin.i32(i32 %819, i32 %611)
  store i32 %820, ptr %25, align 8, !tbaa !76
  br label %823

821:                                              ; preds = %651, %616, %608
  %822 = load i32, ptr %25, align 8, !tbaa !76
  br label %823

823:                                              ; preds = %821, %818
  %824 = phi i32 [ %822, %821 ], [ %820, %818 ]
  %825 = icmp ugt i32 %824, 2
  br i1 %825, label %826, label %1014

826:                                              ; preds = %823
  %827 = trunc i32 %824 to i8
  %828 = add i8 %827, -3
  %829 = load i32, ptr %6, align 4, !tbaa !71
  %830 = load i32, ptr %8, align 8, !tbaa !81
  %831 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %829, i32 %830), !nosanitize !44
  %832 = extractvalue { i32, i1 } %831, 1, !nosanitize !44
  br i1 %832, label %833, label %834, !prof !45, !nosanitize !44

833:                                              ; preds = %826
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

834:                                              ; preds = %826
  %835 = extractvalue { i32, i1 } %831, 0, !nosanitize !44
  %836 = trunc i32 %835 to i16
  %837 = load i32, ptr %27, align 4, !tbaa !118
  %838 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %837, i32 1), !nosanitize !44
  %839 = extractvalue { i32, i1 } %838, 1, !nosanitize !44
  br i1 %839, label %840, label %841, !prof !45, !nosanitize !44

840:                                              ; preds = %834
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

841:                                              ; preds = %834
  %842 = extractvalue { i32, i1 } %838, 0, !nosanitize !44
  %843 = load ptr, ptr %26, align 8, !tbaa !43
  %844 = trunc i32 %835 to i8
  store i32 %842, ptr %27, align 4, !tbaa !118
  %845 = zext i32 %837 to i64
  %846 = getelementptr inbounds nuw i8, ptr %843, i64 %845
  store i8 %844, ptr %846, align 1, !tbaa !5
  %847 = load i32, ptr %27, align 4, !tbaa !118
  %848 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %847, i32 1), !nosanitize !44
  %849 = extractvalue { i32, i1 } %848, 1, !nosanitize !44
  br i1 %849, label %850, label %851, !prof !45, !nosanitize !44

850:                                              ; preds = %841
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

851:                                              ; preds = %841
  %852 = extractvalue { i32, i1 } %848, 0, !nosanitize !44
  %853 = load ptr, ptr %26, align 8, !tbaa !43
  %854 = lshr i32 %835, 8
  %855 = trunc i32 %854 to i8
  store i32 %852, ptr %27, align 4, !tbaa !118
  %856 = zext i32 %847 to i64
  %857 = getelementptr inbounds nuw i8, ptr %853, i64 %856
  store i8 %855, ptr %857, align 1, !tbaa !5
  %858 = load i32, ptr %27, align 4, !tbaa !118
  %859 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %858, i32 1), !nosanitize !44
  %860 = extractvalue { i32, i1 } %859, 1, !nosanitize !44
  br i1 %860, label %861, label %862, !prof !45, !nosanitize !44

861:                                              ; preds = %851
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

862:                                              ; preds = %851
  %863 = extractvalue { i32, i1 } %859, 0, !nosanitize !44
  %864 = load ptr, ptr %26, align 8, !tbaa !43
  store i32 %863, ptr %27, align 4, !tbaa !118
  %865 = zext i32 %858 to i64
  %866 = getelementptr inbounds nuw i8, ptr %864, i64 %865
  store i8 %828, ptr %866, align 1, !tbaa !5
  %867 = add i16 %836, -1
  %868 = zext i8 %828 to i64
  %869 = getelementptr inbounds nuw [0 x i8], ptr @_length_code, i64 0, i64 %868
  %870 = load i8, ptr %869, align 1, !tbaa !5
  %871 = zext i8 %870 to i64
  %872 = add nuw nsw i64 %871, 257
  %873 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %28, i64 0, i64 %872
  %874 = load i16, ptr %873, align 4, !tbaa !5
  %875 = add i16 %874, 1
  store i16 %875, ptr %873, align 4, !tbaa !5
  %876 = icmp ult i16 %867, 256
  %877 = lshr i16 %867, 7
  %878 = add nuw nsw i16 %877, 256
  %879 = select i1 %876, i16 %867, i16 %878
  %880 = zext i16 %879 to i64
  %881 = getelementptr inbounds nuw [0 x i8], ptr @_dist_code, i64 0, i64 %880
  %882 = load i8, ptr %881, align 1, !tbaa !5
  %883 = zext i8 %882 to i64
  %884 = getelementptr inbounds nuw [61 x %struct.ct_data_s], ptr %30, i64 0, i64 %883
  %885 = load i16, ptr %884, align 4, !tbaa !5
  %886 = add i16 %885, 1
  store i16 %886, ptr %884, align 4, !tbaa !5
  %887 = load i32, ptr %27, align 4, !tbaa !118
  %888 = load i32, ptr %29, align 8, !tbaa !46
  %889 = icmp eq i32 %887, %888
  %890 = load i32, ptr %25, align 8, !tbaa !76
  %891 = load i32, ptr %3, align 4, !tbaa !73
  %892 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %891, i32 %890), !nosanitize !44
  %893 = extractvalue { i32, i1 } %892, 1, !nosanitize !44
  br i1 %893, label %894, label %895, !prof !45, !nosanitize !44

894:                                              ; preds = %862
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

895:                                              ; preds = %862
  %896 = extractvalue { i32, i1 } %892, 0, !nosanitize !44
  store i32 %896, ptr %3, align 4, !tbaa !73
  %897 = load i32, ptr %31, align 8, !tbaa !64
  %898 = icmp ule i32 %890, %897
  %899 = icmp ugt i32 %896, 2
  %900 = select i1 %898, i1 %899, i1 false
  br i1 %900, label %901, label %987

901:                                              ; preds = %895
  %902 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %890, i32 1), !nosanitize !44
  %903 = extractvalue { i32, i1 } %902, 1, !nosanitize !44
  br i1 %903, label %904, label %905, !prof !45, !nosanitize !44

904:                                              ; preds = %901
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

905:                                              ; preds = %901
  %906 = extractvalue { i32, i1 } %902, 0, !nosanitize !44
  store i32 %906, ptr %25, align 8, !tbaa !76
  %907 = load i32, ptr %6, align 4, !tbaa !71
  %mv.h7 = icmp sge i32 %907, 0
  %mv.h8 = icmp sge i32 %890, 0
  %mv.h9 = and i1 %mv.h7, %mv.h8
  %mv.h.fr10 = freeze i1 %mv.h9
  br i1 %mv.h.fr10, label %.mv.ph11.mv.fast, label %.mv.ph11

.mv.ph11.mv.fast:                                 ; preds = %905
  br label %908

908:                                              ; preds = %942, %.mv.ph11.mv.fast
  %909 = phi i32 [ %943, %942 ], [ %906, %.mv.ph11.mv.fast ]
  %910 = phi i32 [ %914, %942 ], [ %907, %.mv.ph11.mv.fast ]
  %911 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %910, i32 1), !nosanitize !44
  %912 = extractvalue { i32, i1 } %911, 1, !nosanitize !44
  br i1 false, label %950, label %913, !prof !45, !nosanitize !44

913:                                              ; preds = %908
  %914 = extractvalue { i32, i1 } %911, 0, !nosanitize !44
  store i32 %914, ptr %6, align 4, !tbaa !71
  %915 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %914, i32 2), !nosanitize !44
  %916 = extractvalue { i32, i1 } %915, 1, !nosanitize !44
  br i1 false, label %955, label %917, !prof !45, !nosanitize !44

917:                                              ; preds = %913
  %918 = extractvalue { i32, i1 } %915, 0, !nosanitize !44
  %919 = load ptr, ptr %7, align 8, !tbaa !34
  %920 = load i32, ptr %15, align 8, !tbaa !78
  %921 = load i32, ptr %16, align 8, !tbaa !52
  %922 = shl i32 %920, %921
  %923 = zext i32 %918 to i64
  %924 = getelementptr inbounds nuw i8, ptr %919, i64 %923
  %925 = load i8, ptr %924, align 1, !tbaa !5
  %926 = zext i8 %925 to i32
  %927 = xor i32 %922, %926
  %928 = load i32, ptr %17, align 4, !tbaa !51
  %929 = and i32 %927, %928
  store i32 %929, ptr %15, align 8, !tbaa !78
  %930 = load ptr, ptr %12, align 8, !tbaa !37
  %931 = zext i32 %929 to i64
  %932 = getelementptr inbounds nuw i16, ptr %930, i64 %931
  %933 = load i16, ptr %932, align 2, !tbaa !60
  %934 = load ptr, ptr %13, align 8, !tbaa !35
  %935 = load i32, ptr %18, align 8, !tbaa !32
  %936 = and i32 %935, %914
  %937 = zext i32 %936 to i64
  %938 = getelementptr inbounds nuw i16, ptr %934, i64 %937
  store i16 %933, ptr %938, align 2, !tbaa !60
  %939 = trunc i32 %914 to i16
  store i16 %939, ptr %932, align 2, !tbaa !60
  %940 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %909, i32 1), !nosanitize !44
  %941 = extractvalue { i32, i1 } %940, 1, !nosanitize !44
  br i1 %941, label %981, label %942, !prof !45, !nosanitize !44

942:                                              ; preds = %917
  %943 = extractvalue { i32, i1 } %940, 0, !nosanitize !44
  store i32 %943, ptr %25, align 8, !tbaa !76
  %944 = icmp eq i32 %943, 0
  br i1 %944, label %985, label %908, !llvm.loop !125

.mv.ph11:                                         ; preds = %905
  br label %945

945:                                              ; preds = %982, %.mv.ph11
  %946 = phi i32 [ %983, %982 ], [ %906, %.mv.ph11 ]
  %947 = phi i32 [ %952, %982 ], [ %907, %.mv.ph11 ]
  %948 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %947, i32 1), !nosanitize !44
  %949 = extractvalue { i32, i1 } %948, 1, !nosanitize !44
  br i1 %949, label %950, label %951, !prof !45, !nosanitize !44

950:                                              ; preds = %908, %945
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

951:                                              ; preds = %945
  %952 = extractvalue { i32, i1 } %948, 0, !nosanitize !44
  store i32 %952, ptr %6, align 4, !tbaa !71
  %953 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %952, i32 2), !nosanitize !44
  %954 = extractvalue { i32, i1 } %953, 1, !nosanitize !44
  br i1 %954, label %955, label %956, !prof !45, !nosanitize !44

955:                                              ; preds = %913, %951
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

956:                                              ; preds = %951
  %957 = extractvalue { i32, i1 } %953, 0, !nosanitize !44
  %958 = load ptr, ptr %7, align 8, !tbaa !34
  %959 = load i32, ptr %15, align 8, !tbaa !78
  %960 = load i32, ptr %16, align 8, !tbaa !52
  %961 = shl i32 %959, %960
  %962 = zext i32 %957 to i64
  %963 = getelementptr inbounds nuw i8, ptr %958, i64 %962
  %964 = load i8, ptr %963, align 1, !tbaa !5
  %965 = zext i8 %964 to i32
  %966 = xor i32 %961, %965
  %967 = load i32, ptr %17, align 4, !tbaa !51
  %968 = and i32 %966, %967
  store i32 %968, ptr %15, align 8, !tbaa !78
  %969 = load ptr, ptr %12, align 8, !tbaa !37
  %970 = zext i32 %968 to i64
  %971 = getelementptr inbounds nuw i16, ptr %969, i64 %970
  %972 = load i16, ptr %971, align 2, !tbaa !60
  %973 = load ptr, ptr %13, align 8, !tbaa !35
  %974 = load i32, ptr %18, align 8, !tbaa !32
  %975 = and i32 %974, %952
  %976 = zext i32 %975 to i64
  %977 = getelementptr inbounds nuw i16, ptr %973, i64 %976
  store i16 %972, ptr %977, align 2, !tbaa !60
  %978 = trunc i32 %952 to i16
  store i16 %978, ptr %971, align 2, !tbaa !60
  %979 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %946, i32 1), !nosanitize !44
  %980 = extractvalue { i32, i1 } %979, 1, !nosanitize !44
  br i1 %980, label %981, label %982, !prof !45, !nosanitize !44

981:                                              ; preds = %917, %956
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

982:                                              ; preds = %956
  %983 = extractvalue { i32, i1 } %979, 0, !nosanitize !44
  store i32 %983, ptr %25, align 8, !tbaa !76
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %985, label %945, !llvm.loop !125

985:                                              ; preds = %942, %982
  %.lcssa6 = phi i32 [ %952, %982 ], [ %914, %942 ]
  %986 = add nuw i32 %.lcssa6, 1
  store i32 %986, ptr %6, align 4, !tbaa !71
  br i1 %889, label %1066, label %1013

987:                                              ; preds = %895
  %988 = load i32, ptr %6, align 4, !tbaa !71
  %989 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %988, i32 %890), !nosanitize !44
  %990 = extractvalue { i32, i1 } %989, 1, !nosanitize !44
  br i1 %990, label %991, label %992, !prof !45, !nosanitize !44

991:                                              ; preds = %987
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

992:                                              ; preds = %987
  %993 = extractvalue { i32, i1 } %989, 0, !nosanitize !44
  store i32 %993, ptr %6, align 4, !tbaa !71
  store i32 0, ptr %25, align 8, !tbaa !76
  %994 = load ptr, ptr %7, align 8, !tbaa !34
  %995 = zext i32 %993 to i64
  %996 = getelementptr inbounds nuw i8, ptr %994, i64 %995
  %997 = load i8, ptr %996, align 1, !tbaa !5
  %998 = zext i8 %997 to i32
  store i32 %998, ptr %15, align 8, !tbaa !78
  %999 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %993, i32 1), !nosanitize !44
  %1000 = extractvalue { i32, i1 } %999, 1, !nosanitize !44
  br i1 %1000, label %1001, label %1002, !prof !45, !nosanitize !44

1001:                                             ; preds = %992
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1002:                                             ; preds = %992
  %1003 = extractvalue { i32, i1 } %999, 0, !nosanitize !44
  %1004 = load i32, ptr %16, align 8, !tbaa !52
  %1005 = shl i32 %998, %1004
  %1006 = zext i32 %1003 to i64
  %1007 = getelementptr inbounds nuw i8, ptr %994, i64 %1006
  %1008 = load i8, ptr %1007, align 1, !tbaa !5
  %1009 = zext i8 %1008 to i32
  %1010 = xor i32 %1005, %1009
  %1011 = load i32, ptr %17, align 4, !tbaa !51
  %1012 = and i32 %1010, %1011
  store i32 %1012, ptr %15, align 8, !tbaa !78
  br i1 %889, label %1066, label %1013

1013:                                             ; preds = %1126, %1064, %1002, %985
  br label %32

1014:                                             ; preds = %823
  %1015 = load ptr, ptr %7, align 8, !tbaa !34
  %1016 = load i32, ptr %6, align 4, !tbaa !71
  %1017 = zext i32 %1016 to i64
  %1018 = getelementptr inbounds nuw i8, ptr %1015, i64 %1017
  %1019 = load i8, ptr %1018, align 1, !tbaa !5
  %1020 = load i32, ptr %27, align 4, !tbaa !118
  %1021 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1020, i32 1), !nosanitize !44
  %1022 = extractvalue { i32, i1 } %1021, 1, !nosanitize !44
  br i1 %1022, label %1023, label %1024, !prof !45, !nosanitize !44

1023:                                             ; preds = %1014
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1024:                                             ; preds = %1014
  %1025 = extractvalue { i32, i1 } %1021, 0, !nosanitize !44
  %1026 = load ptr, ptr %26, align 8, !tbaa !43
  store i32 %1025, ptr %27, align 4, !tbaa !118
  %1027 = zext i32 %1020 to i64
  %1028 = getelementptr inbounds nuw i8, ptr %1026, i64 %1027
  store i8 0, ptr %1028, align 1, !tbaa !5
  %1029 = load i32, ptr %27, align 4, !tbaa !118
  %1030 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1029, i32 1), !nosanitize !44
  %1031 = extractvalue { i32, i1 } %1030, 1, !nosanitize !44
  br i1 %1031, label %1032, label %1033, !prof !45, !nosanitize !44

1032:                                             ; preds = %1024
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1033:                                             ; preds = %1024
  %1034 = extractvalue { i32, i1 } %1030, 0, !nosanitize !44
  %1035 = load ptr, ptr %26, align 8, !tbaa !43
  store i32 %1034, ptr %27, align 4, !tbaa !118
  %1036 = zext i32 %1029 to i64
  %1037 = getelementptr inbounds nuw i8, ptr %1035, i64 %1036
  store i8 0, ptr %1037, align 1, !tbaa !5
  %1038 = load i32, ptr %27, align 4, !tbaa !118
  %1039 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1038, i32 1), !nosanitize !44
  %1040 = extractvalue { i32, i1 } %1039, 1, !nosanitize !44
  br i1 %1040, label %1041, label %1042, !prof !45, !nosanitize !44

1041:                                             ; preds = %1033
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1042:                                             ; preds = %1033
  %1043 = extractvalue { i32, i1 } %1039, 0, !nosanitize !44
  %1044 = load ptr, ptr %26, align 8, !tbaa !43
  store i32 %1043, ptr %27, align 4, !tbaa !118
  %1045 = zext i32 %1038 to i64
  %1046 = getelementptr inbounds nuw i8, ptr %1044, i64 %1045
  store i8 %1019, ptr %1046, align 1, !tbaa !5
  %1047 = zext i8 %1019 to i64
  %1048 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %28, i64 0, i64 %1047
  %1049 = load i16, ptr %1048, align 4, !tbaa !5
  %1050 = add i16 %1049, 1
  store i16 %1050, ptr %1048, align 4, !tbaa !5
  %1051 = load i32, ptr %27, align 4, !tbaa !118
  %1052 = load i32, ptr %29, align 8, !tbaa !46
  %1053 = icmp eq i32 %1051, %1052
  %1054 = load i32, ptr %3, align 4, !tbaa !73
  %1055 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1054, i32 1), !nosanitize !44
  %1056 = extractvalue { i32, i1 } %1055, 1, !nosanitize !44
  br i1 %1056, label %1057, label %1058, !prof !45, !nosanitize !44

1057:                                             ; preds = %1210, %1142, %1074, %1042
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1058:                                             ; preds = %1042
  %1059 = extractvalue { i32, i1 } %1055, 0, !nosanitize !44
  store i32 %1059, ptr %3, align 4, !tbaa !73
  %1060 = load i32, ptr %6, align 4, !tbaa !71
  %1061 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1060, i32 1), !nosanitize !44
  %1062 = extractvalue { i32, i1 } %1061, 1, !nosanitize !44
  br i1 %1062, label %1063, label %1064, !prof !45, !nosanitize !44

1063:                                             ; preds = %1058
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1064:                                             ; preds = %1058
  %1065 = extractvalue { i32, i1 } %1061, 0, !nosanitize !44
  store i32 %1065, ptr %6, align 4, !tbaa !71
  br i1 %1053, label %1066, label %1013

1066:                                             ; preds = %1064, %1002, %985
  %1067 = phi i32 [ %993, %1002 ], [ %986, %985 ], [ %1065, %1064 ]
  %1068 = load i64, ptr %9, align 8, !tbaa !72
  %1069 = icmp sgt i64 %1068, -1
  br i1 %1069, label %1070, label %1074

1070:                                             ; preds = %1066
  %1071 = load ptr, ptr %7, align 8, !tbaa !34
  %1072 = and i64 %1068, 4294967295
  %1073 = getelementptr inbounds nuw i8, ptr %1071, i64 %1072
  br label %1074

1074:                                             ; preds = %1070, %1066
  %1075 = phi ptr [ %1073, %1070 ], [ null, %1066 ]
  %1076 = zext i32 %1067 to i64
  %1077 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1076, i64 %1068), !nosanitize !44
  %1078 = extractvalue { i64, i1 } %1077, 1, !nosanitize !44
  br i1 %1078, label %1057, label %1079, !prof !45, !nosanitize !44

1079:                                             ; preds = %1074
  %1080 = extractvalue { i64, i1 } %1077, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1075, i64 noundef %1080, i32 noundef 0) #8
  %1081 = load i32, ptr %6, align 4, !tbaa !71
  %1082 = zext i32 %1081 to i64
  store i64 %1082, ptr %9, align 8, !tbaa !72
  %1083 = load ptr, ptr %0, align 8, !tbaa !19
  %1084 = getelementptr inbounds nuw i8, ptr %1083, i64 56
  %1085 = load ptr, ptr %1084, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %1085) #8
  %1086 = getelementptr inbounds nuw i8, ptr %1085, i64 40
  %1087 = load i64, ptr %1086, align 8, !tbaa !55
  %1088 = getelementptr inbounds nuw i8, ptr %1083, i64 32
  %1089 = load i32, ptr %1088, align 8, !tbaa !96
  %1090 = zext i32 %1089 to i64
  %1091 = tail call i64 @llvm.umin.i64(i64 %1087, i64 %1090)
  %1092 = trunc nuw i64 %1091 to i32
  %1093 = icmp eq i64 %1091, 0
  br i1 %1093, label %1126, label %1094

1094:                                             ; preds = %1079
  %1095 = getelementptr inbounds nuw i8, ptr %1083, i64 24
  %1096 = load ptr, ptr %1095, align 8, !tbaa !95
  %1097 = getelementptr inbounds nuw i8, ptr %1085, i64 32
  %1098 = load ptr, ptr %1097, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1096, ptr align 1 %1098, i64 %1091, i1 false)
  %1099 = load ptr, ptr %1095, align 8, !tbaa !95
  %1100 = getelementptr inbounds nuw i8, ptr %1099, i64 %1091
  store ptr %1100, ptr %1095, align 8, !tbaa !95
  %1101 = load ptr, ptr %1097, align 8, !tbaa !56
  %1102 = getelementptr inbounds nuw i8, ptr %1101, i64 %1091
  store ptr %1102, ptr %1097, align 8, !tbaa !56
  %1103 = getelementptr inbounds nuw i8, ptr %1083, i64 40
  %1104 = load i64, ptr %1103, align 8, !tbaa !97
  %1105 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1104, i64 %1091), !nosanitize !44
  %1106 = extractvalue { i64, i1 } %1105, 1, !nosanitize !44
  br i1 %1106, label %1107, label %1108, !prof !45, !nosanitize !44

1107:                                             ; preds = %1094
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1108:                                             ; preds = %1094
  %1109 = extractvalue { i64, i1 } %1105, 0, !nosanitize !44
  store i64 %1109, ptr %1103, align 8, !tbaa !97
  %1110 = load i32, ptr %1088, align 8, !tbaa !96
  %1111 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1110, i32 %1092), !nosanitize !44
  %1112 = extractvalue { i32, i1 } %1111, 1, !nosanitize !44
  br i1 %1112, label %1113, label %1114, !prof !45, !nosanitize !44

1113:                                             ; preds = %1108
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1114:                                             ; preds = %1108
  %1115 = extractvalue { i32, i1 } %1111, 0, !nosanitize !44
  store i32 %1115, ptr %1088, align 8, !tbaa !96
  %1116 = load i64, ptr %1086, align 8, !tbaa !55
  %1117 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1116, i64 %1091), !nosanitize !44
  %1118 = extractvalue { i64, i1 } %1117, 1, !nosanitize !44
  br i1 %1118, label %1119, label %1120, !prof !45, !nosanitize !44

1119:                                             ; preds = %1114
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1120:                                             ; preds = %1114
  %1121 = extractvalue { i64, i1 } %1117, 0, !nosanitize !44
  store i64 %1121, ptr %1086, align 8, !tbaa !55
  %1122 = icmp eq i64 %1121, 0
  br i1 %1122, label %1123, label %1126

1123:                                             ; preds = %1120
  %1124 = getelementptr inbounds nuw i8, ptr %1085, i64 16
  %1125 = load ptr, ptr %1124, align 8, !tbaa !40
  store ptr %1125, ptr %1097, align 8, !tbaa !56
  br label %1126

1126:                                             ; preds = %1123, %1120, %1079
  %1127 = load ptr, ptr %0, align 8, !tbaa !19
  %1128 = getelementptr inbounds nuw i8, ptr %1127, i64 32
  %1129 = load i32, ptr %1128, align 8, !tbaa !96
  %1130 = icmp eq i32 %1129, 0
  br i1 %1130, label %1268, label %1013

1131:                                             ; preds = %606
  %1132 = load i32, ptr %6, align 4, !tbaa !71
  %1133 = tail call i32 @llvm.umin.i32(i32 %1132, i32 2)
  store i32 %1133, ptr %10, align 4, !tbaa !74
  %1134 = icmp eq i32 %1, 4
  br i1 %1134, label %1135, label %1200

1135:                                             ; preds = %1131
  %1136 = load i64, ptr %9, align 8, !tbaa !72
  %1137 = icmp sgt i64 %1136, -1
  br i1 %1137, label %1138, label %1142

1138:                                             ; preds = %1135
  %1139 = load ptr, ptr %7, align 8, !tbaa !34
  %1140 = and i64 %1136, 4294967295
  %1141 = getelementptr inbounds nuw i8, ptr %1139, i64 %1140
  br label %1142

1142:                                             ; preds = %1138, %1135
  %1143 = phi ptr [ %1141, %1138 ], [ null, %1135 ]
  %1144 = zext i32 %1132 to i64
  %1145 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1144, i64 %1136), !nosanitize !44
  %1146 = extractvalue { i64, i1 } %1145, 1, !nosanitize !44
  br i1 %1146, label %1057, label %1147, !prof !45, !nosanitize !44

1147:                                             ; preds = %1142
  %1148 = extractvalue { i64, i1 } %1145, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1143, i64 noundef %1148, i32 noundef 1) #8
  %1149 = load i32, ptr %6, align 4, !tbaa !71
  %1150 = zext i32 %1149 to i64
  store i64 %1150, ptr %9, align 8, !tbaa !72
  %1151 = load ptr, ptr %0, align 8, !tbaa !19
  %1152 = getelementptr inbounds nuw i8, ptr %1151, i64 56
  %1153 = load ptr, ptr %1152, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %1153) #8
  %1154 = getelementptr inbounds nuw i8, ptr %1153, i64 40
  %1155 = load i64, ptr %1154, align 8, !tbaa !55
  %1156 = getelementptr inbounds nuw i8, ptr %1151, i64 32
  %1157 = load i32, ptr %1156, align 8, !tbaa !96
  %1158 = zext i32 %1157 to i64
  %1159 = tail call i64 @llvm.umin.i64(i64 %1155, i64 %1158)
  %1160 = trunc nuw i64 %1159 to i32
  %1161 = icmp eq i64 %1159, 0
  br i1 %1161, label %1194, label %1162

1162:                                             ; preds = %1147
  %1163 = getelementptr inbounds nuw i8, ptr %1151, i64 24
  %1164 = load ptr, ptr %1163, align 8, !tbaa !95
  %1165 = getelementptr inbounds nuw i8, ptr %1153, i64 32
  %1166 = load ptr, ptr %1165, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1164, ptr align 1 %1166, i64 %1159, i1 false)
  %1167 = load ptr, ptr %1163, align 8, !tbaa !95
  %1168 = getelementptr inbounds nuw i8, ptr %1167, i64 %1159
  store ptr %1168, ptr %1163, align 8, !tbaa !95
  %1169 = load ptr, ptr %1165, align 8, !tbaa !56
  %1170 = getelementptr inbounds nuw i8, ptr %1169, i64 %1159
  store ptr %1170, ptr %1165, align 8, !tbaa !56
  %1171 = getelementptr inbounds nuw i8, ptr %1151, i64 40
  %1172 = load i64, ptr %1171, align 8, !tbaa !97
  %1173 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1172, i64 %1159), !nosanitize !44
  %1174 = extractvalue { i64, i1 } %1173, 1, !nosanitize !44
  br i1 %1174, label %1175, label %1176, !prof !45, !nosanitize !44

1175:                                             ; preds = %1162
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1176:                                             ; preds = %1162
  %1177 = extractvalue { i64, i1 } %1173, 0, !nosanitize !44
  store i64 %1177, ptr %1171, align 8, !tbaa !97
  %1178 = load i32, ptr %1156, align 8, !tbaa !96
  %1179 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1178, i32 %1160), !nosanitize !44
  %1180 = extractvalue { i32, i1 } %1179, 1, !nosanitize !44
  br i1 %1180, label %1181, label %1182, !prof !45, !nosanitize !44

1181:                                             ; preds = %1176
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1182:                                             ; preds = %1176
  %1183 = extractvalue { i32, i1 } %1179, 0, !nosanitize !44
  store i32 %1183, ptr %1156, align 8, !tbaa !96
  %1184 = load i64, ptr %1154, align 8, !tbaa !55
  %1185 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1184, i64 %1159), !nosanitize !44
  %1186 = extractvalue { i64, i1 } %1185, 1, !nosanitize !44
  br i1 %1186, label %1187, label %1188, !prof !45, !nosanitize !44

1187:                                             ; preds = %1182
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1188:                                             ; preds = %1182
  %1189 = extractvalue { i64, i1 } %1185, 0, !nosanitize !44
  store i64 %1189, ptr %1154, align 8, !tbaa !55
  %1190 = icmp eq i64 %1189, 0
  br i1 %1190, label %1191, label %1194

1191:                                             ; preds = %1188
  %1192 = getelementptr inbounds nuw i8, ptr %1153, i64 16
  %1193 = load ptr, ptr %1192, align 8, !tbaa !40
  store ptr %1193, ptr %1165, align 8, !tbaa !56
  br label %1194

1194:                                             ; preds = %1191, %1188, %1147
  %1195 = load ptr, ptr %0, align 8, !tbaa !19
  %1196 = getelementptr inbounds nuw i8, ptr %1195, i64 32
  %1197 = load i32, ptr %1196, align 8, !tbaa !96
  %1198 = icmp eq i32 %1197, 0
  %1199 = select i1 %1198, i32 2, i32 3
  br label %1268

1200:                                             ; preds = %1131
  %1201 = load i32, ptr %27, align 4, !tbaa !118
  %1202 = icmp eq i32 %1201, 0
  br i1 %1202, label %1267, label %1203

1203:                                             ; preds = %1200
  %1204 = load i64, ptr %9, align 8, !tbaa !72
  %1205 = icmp sgt i64 %1204, -1
  br i1 %1205, label %1206, label %1210

1206:                                             ; preds = %1203
  %1207 = load ptr, ptr %7, align 8, !tbaa !34
  %1208 = and i64 %1204, 4294967295
  %1209 = getelementptr inbounds nuw i8, ptr %1207, i64 %1208
  br label %1210

1210:                                             ; preds = %1206, %1203
  %1211 = phi ptr [ %1209, %1206 ], [ null, %1203 ]
  %1212 = zext i32 %1132 to i64
  %1213 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1212, i64 %1204), !nosanitize !44
  %1214 = extractvalue { i64, i1 } %1213, 1, !nosanitize !44
  br i1 %1214, label %1057, label %1215, !prof !45, !nosanitize !44

1215:                                             ; preds = %1210
  %1216 = extractvalue { i64, i1 } %1213, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1211, i64 noundef %1216, i32 noundef 0) #8
  %1217 = load i32, ptr %6, align 4, !tbaa !71
  %1218 = zext i32 %1217 to i64
  store i64 %1218, ptr %9, align 8, !tbaa !72
  %1219 = load ptr, ptr %0, align 8, !tbaa !19
  %1220 = getelementptr inbounds nuw i8, ptr %1219, i64 56
  %1221 = load ptr, ptr %1220, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %1221) #8
  %1222 = getelementptr inbounds nuw i8, ptr %1221, i64 40
  %1223 = load i64, ptr %1222, align 8, !tbaa !55
  %1224 = getelementptr inbounds nuw i8, ptr %1219, i64 32
  %1225 = load i32, ptr %1224, align 8, !tbaa !96
  %1226 = zext i32 %1225 to i64
  %1227 = tail call i64 @llvm.umin.i64(i64 %1223, i64 %1226)
  %1228 = trunc nuw i64 %1227 to i32
  %1229 = icmp eq i64 %1227, 0
  br i1 %1229, label %1262, label %1230

1230:                                             ; preds = %1215
  %1231 = getelementptr inbounds nuw i8, ptr %1219, i64 24
  %1232 = load ptr, ptr %1231, align 8, !tbaa !95
  %1233 = getelementptr inbounds nuw i8, ptr %1221, i64 32
  %1234 = load ptr, ptr %1233, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1232, ptr align 1 %1234, i64 %1227, i1 false)
  %1235 = load ptr, ptr %1231, align 8, !tbaa !95
  %1236 = getelementptr inbounds nuw i8, ptr %1235, i64 %1227
  store ptr %1236, ptr %1231, align 8, !tbaa !95
  %1237 = load ptr, ptr %1233, align 8, !tbaa !56
  %1238 = getelementptr inbounds nuw i8, ptr %1237, i64 %1227
  store ptr %1238, ptr %1233, align 8, !tbaa !56
  %1239 = getelementptr inbounds nuw i8, ptr %1219, i64 40
  %1240 = load i64, ptr %1239, align 8, !tbaa !97
  %1241 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1240, i64 %1227), !nosanitize !44
  %1242 = extractvalue { i64, i1 } %1241, 1, !nosanitize !44
  br i1 %1242, label %1243, label %1244, !prof !45, !nosanitize !44

1243:                                             ; preds = %1230
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1244:                                             ; preds = %1230
  %1245 = extractvalue { i64, i1 } %1241, 0, !nosanitize !44
  store i64 %1245, ptr %1239, align 8, !tbaa !97
  %1246 = load i32, ptr %1224, align 8, !tbaa !96
  %1247 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1246, i32 %1228), !nosanitize !44
  %1248 = extractvalue { i32, i1 } %1247, 1, !nosanitize !44
  br i1 %1248, label %1249, label %1250, !prof !45, !nosanitize !44

1249:                                             ; preds = %1244
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1250:                                             ; preds = %1244
  %1251 = extractvalue { i32, i1 } %1247, 0, !nosanitize !44
  store i32 %1251, ptr %1224, align 8, !tbaa !96
  %1252 = load i64, ptr %1222, align 8, !tbaa !55
  %1253 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1252, i64 %1227), !nosanitize !44
  %1254 = extractvalue { i64, i1 } %1253, 1, !nosanitize !44
  br i1 %1254, label %1255, label %1256, !prof !45, !nosanitize !44

1255:                                             ; preds = %1250
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1256:                                             ; preds = %1250
  %1257 = extractvalue { i64, i1 } %1253, 0, !nosanitize !44
  store i64 %1257, ptr %1222, align 8, !tbaa !55
  %1258 = icmp eq i64 %1257, 0
  br i1 %1258, label %1259, label %1262

1259:                                             ; preds = %1256
  %1260 = getelementptr inbounds nuw i8, ptr %1221, i64 16
  %1261 = load ptr, ptr %1260, align 8, !tbaa !40
  store ptr %1261, ptr %1233, align 8, !tbaa !56
  br label %1262

1262:                                             ; preds = %1259, %1256, %1215
  %1263 = load ptr, ptr %0, align 8, !tbaa !19
  %1264 = getelementptr inbounds nuw i8, ptr %1263, i64 32
  %1265 = load i32, ptr %1264, align 8, !tbaa !96
  %1266 = icmp eq i32 %1265, 0
  br i1 %1266, label %1268, label %1267

1267:                                             ; preds = %1262, %1200
  br label %1268

1268:                                             ; preds = %1267, %1262, %1194, %1126, %602
  %1269 = phi i32 [ 1, %1267 ], [ %1199, %1194 ], [ 0, %1262 ], [ 0, %602 ], [ 0, %1126 ]
  ret i32 %1269
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

35:                                               ; preds = %1044, %2
  %36 = load i32, ptr %3, align 4, !tbaa !73
  %37 = icmp ult i32 %36, 262
  br i1 %37, label %38, label %616

38:                                               ; preds = %35
  %39 = load i32, ptr %4, align 8, !tbaa !31
  %40 = zext i32 %39 to i64
  %mv.h1 = icmp sge i32 %39, 0
  %mv.h.fr2 = freeze i1 %mv.h1
  br i1 %mv.h.fr2, label %.mv.ph3.mv.fast, label %.mv.ph3

.mv.ph3.mv.fast:                                  ; preds = %38
  br label %41

41:                                               ; preds = %252, %.mv.ph3.mv.fast
  %42 = phi i32 [ %184, %252 ], [ %36, %.mv.ph3.mv.fast ]
  %43 = load i64, ptr %5, align 8, !tbaa !59
  %44 = zext nneg i32 %42 to i64
  %45 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %43, i64 %44), !nosanitize !44
  %46 = extractvalue { i64, i1 } %45, 1, !nosanitize !44
  br i1 %46, label %298, label %47, !prof !45, !nosanitize !44

47:                                               ; preds = %41
  %48 = extractvalue { i64, i1 } %45, 0, !nosanitize !44
  %49 = load i32, ptr %6, align 4, !tbaa !71
  %50 = zext i32 %49 to i64
  %51 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %48, i64 %50), !nosanitize !44
  %52 = extractvalue { i64, i1 } %51, 1, !nosanitize !44
  br i1 %52, label %305, label %53, !prof !45, !nosanitize !44

53:                                               ; preds = %47
  %54 = extractvalue { i64, i1 } %51, 0, !nosanitize !44
  %55 = trunc i64 %54 to i32
  %56 = load i32, ptr %4, align 8, !tbaa !31
  %57 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %56, i32 262), !nosanitize !44
  %58 = extractvalue { i32, i1 } %57, 1, !nosanitize !44
  br i1 %58, label %312, label %59, !prof !45, !nosanitize !44

59:                                               ; preds = %53
  %60 = extractvalue { i32, i1 } %57, 0, !nosanitize !44
  %61 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %39, i32 %60), !nosanitize !44
  %62 = extractvalue { i32, i1 } %61, 1, !nosanitize !44
  br i1 %62, label %317, label %63, !prof !45, !nosanitize !44

63:                                               ; preds = %59
  %64 = extractvalue { i32, i1 } %61, 0, !nosanitize !44
  %65 = icmp ult i32 %49, %64
  br i1 %65, label %134, label %66

66:                                               ; preds = %63
  %67 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %39, i32 %55), !nosanitize !44
  %68 = extractvalue { i32, i1 } %67, 1, !nosanitize !44
  br i1 %68, label %324, label %69, !prof !45, !nosanitize !44

69:                                               ; preds = %66
  %70 = extractvalue { i32, i1 } %67, 0, !nosanitize !44
  %71 = load ptr, ptr %7, align 8, !tbaa !34
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 %40
  %73 = zext i32 %70 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %71, ptr align 1 %72, i64 %73, i1 false)
  %74 = load i32, ptr %8, align 8, !tbaa !81
  %75 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %74, i32 %39), !nosanitize !44
  %76 = extractvalue { i32, i1 } %75, 1, !nosanitize !44
  br i1 %76, label %333, label %77, !prof !45, !nosanitize !44

77:                                               ; preds = %69
  %78 = extractvalue { i32, i1 } %75, 0, !nosanitize !44
  store i32 %78, ptr %8, align 8, !tbaa !81
  %79 = load i32, ptr %6, align 4, !tbaa !71
  %80 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %79, i32 %39), !nosanitize !44
  %81 = extractvalue { i32, i1 } %80, 1, !nosanitize !44
  br i1 %81, label %339, label %82, !prof !45, !nosanitize !44

82:                                               ; preds = %77
  %83 = extractvalue { i32, i1 } %80, 0, !nosanitize !44
  store i32 %83, ptr %6, align 4, !tbaa !71
  %84 = load i64, ptr %9, align 8, !tbaa !72
  %85 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %84, i64 %40), !nosanitize !44
  %86 = extractvalue { i64, i1 } %85, 1, !nosanitize !44
  br i1 %86, label %339, label %87, !prof !45, !nosanitize !44

87:                                               ; preds = %82
  %88 = extractvalue { i64, i1 } %85, 0, !nosanitize !44
  store i64 %88, ptr %9, align 8, !tbaa !72
  %89 = load i32, ptr %10, align 4, !tbaa !74
  %90 = icmp ugt i32 %89, %83
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 %83, ptr %10, align 4, !tbaa !74
  br label %92

92:                                               ; preds = %91, %87
  %93 = load i32, ptr %4, align 8, !tbaa !31
  %94 = load i32, ptr %11, align 4, !tbaa !36
  %95 = load ptr, ptr %12, align 8, !tbaa !37
  %96 = zext i32 %94 to i64
  %97 = getelementptr inbounds nuw i16, ptr %95, i64 %96
  br label %98

98:                                               ; preds = %108, %92
  %99 = phi ptr [ %97, %92 ], [ %101, %108 ]
  %100 = phi i32 [ %94, %92 ], [ %109, %108 ]
  %101 = getelementptr inbounds i8, ptr %99, i64 -2
  %102 = load i16, ptr %101, align 2, !tbaa !60
  %103 = zext i16 %102 to i32
  %104 = tail call i32 @llvm.usub.sat.i32(i32 %103, i32 %93)
  %105 = trunc nuw i32 %104 to i16
  store i16 %105, ptr %101, align 2, !tbaa !60
  %106 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %100, i32 1), !nosanitize !44
  %107 = extractvalue { i32, i1 } %106, 1, !nosanitize !44
  br i1 %107, label %366, label %108, !prof !45, !nosanitize !44

108:                                              ; preds = %98
  %109 = extractvalue { i32, i1 } %106, 0, !nosanitize !44
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %98, !llvm.loop !82

111:                                              ; preds = %108
  %112 = load ptr, ptr %13, align 8, !tbaa !35
  %113 = zext i32 %93 to i64
  %114 = getelementptr inbounds nuw i16, ptr %112, i64 %113
  br label %115

115:                                              ; preds = %125, %111
  %116 = phi ptr [ %114, %111 ], [ %118, %125 ]
  %117 = phi i32 [ %93, %111 ], [ %126, %125 ]
  %118 = getelementptr inbounds i8, ptr %116, i64 -2
  %119 = load i16, ptr %118, align 2, !tbaa !60
  %120 = zext i16 %119 to i32
  %121 = tail call i32 @llvm.usub.sat.i32(i32 %120, i32 %93)
  %122 = trunc nuw i32 %121 to i16
  store i16 %122, ptr %118, align 2, !tbaa !60
  %123 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %117, i32 1), !nosanitize !44
  %124 = extractvalue { i32, i1 } %123, 1, !nosanitize !44
  br i1 %124, label %384, label %125, !prof !45, !nosanitize !44

125:                                              ; preds = %115
  %126 = extractvalue { i32, i1 } %123, 0, !nosanitize !44
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %115, !llvm.loop !84

128:                                              ; preds = %125
  store i32 1, ptr %14, align 8, !tbaa !61
  %129 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %55, i32 %39), !nosanitize !44
  %130 = extractvalue { i32, i1 } %129, 1, !nosanitize !44
  br i1 false, label %391, label %131, !prof !45, !nosanitize !44

131:                                              ; preds = %128
  %132 = extractvalue { i32, i1 } %129, 0, !nosanitize !44
  %133 = load i32, ptr %3, align 4, !tbaa !73
  br label %134

134:                                              ; preds = %131, %63
  %135 = phi i32 [ %133, %131 ], [ %42, %63 ]
  %136 = phi i32 [ %83, %131 ], [ %49, %63 ]
  %137 = phi i32 [ %132, %131 ], [ %55, %63 ]
  %138 = load ptr, ptr %0, align 8, !tbaa !19
  %139 = getelementptr inbounds nuw i8, ptr %138, i64 8
  %140 = load i32, ptr %139, align 8, !tbaa !79
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %561, label %142

142:                                              ; preds = %134
  %143 = load ptr, ptr %7, align 8, !tbaa !34
  %144 = zext i32 %136 to i64
  %145 = getelementptr inbounds nuw i8, ptr %143, i64 %144
  %146 = zext i32 %135 to i64
  %147 = getelementptr inbounds nuw i8, ptr %145, i64 %146
  %148 = tail call i32 @llvm.umin.i32(i32 %140, i32 %137)
  %149 = icmp eq i32 %137, 0
  br i1 %149, label %179, label %150

150:                                              ; preds = %142
  %151 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %140, i32 %148), !nosanitize !44
  %152 = extractvalue { i32, i1 } %151, 1, !nosanitize !44
  br i1 false, label %414, label %153, !prof !45, !nosanitize !44

153:                                              ; preds = %150
  %154 = extractvalue { i32, i1 } %151, 0, !nosanitize !44
  store i32 %154, ptr %139, align 8, !tbaa !79
  %155 = load ptr, ptr %138, align 8, !tbaa !80
  %156 = zext i32 %148 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %147, ptr align 1 %155, i64 %156, i1 false)
  %157 = getelementptr inbounds nuw i8, ptr %138, i64 56
  %158 = load ptr, ptr %157, align 8, !tbaa !18
  %159 = getelementptr inbounds nuw i8, ptr %158, i64 48
  %160 = load i32, ptr %159, align 8, !tbaa !29
  switch i32 %160, label %169 [
    i32 1, label %165
    i32 2, label %161
  ]

161:                                              ; preds = %153
  %162 = getelementptr inbounds nuw i8, ptr %138, i64 96
  %163 = load i64, ptr %162, align 8, !tbaa !57
  %164 = tail call i64 @crc32(i64 noundef %163, ptr noundef %147, i32 noundef %148) #8
  store i64 %164, ptr %162, align 8, !tbaa !57
  br label %169

165:                                              ; preds = %153
  %166 = getelementptr inbounds nuw i8, ptr %138, i64 96
  %167 = load i64, ptr %166, align 8, !tbaa !57
  %168 = tail call i64 @adler32(i64 noundef %167, ptr noundef %147, i32 noundef %148) #8
  store i64 %168, ptr %166, align 8, !tbaa !57
  br label %169

169:                                              ; preds = %165, %161, %153
  %170 = load ptr, ptr %138, align 8, !tbaa !80
  %171 = getelementptr inbounds nuw i8, ptr %170, i64 %156
  store ptr %171, ptr %138, align 8, !tbaa !80
  %172 = getelementptr inbounds nuw i8, ptr %138, i64 16
  %173 = load i64, ptr %172, align 8, !tbaa !53
  %174 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %173, i64 %156), !nosanitize !44
  %175 = extractvalue { i64, i1 } %174, 1, !nosanitize !44
  br i1 %175, label %438, label %176, !prof !45, !nosanitize !44

176:                                              ; preds = %169
  %177 = extractvalue { i64, i1 } %174, 0, !nosanitize !44
  store i64 %177, ptr %172, align 8, !tbaa !53
  %178 = load i32, ptr %3, align 4, !tbaa !73
  br label %179

179:                                              ; preds = %176, %142
  %180 = phi i32 [ %135, %142 ], [ %178, %176 ]
  %181 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %180, i32 %148), !nosanitize !44
  %182 = extractvalue { i32, i1 } %181, 1, !nosanitize !44
  br i1 %182, label %446, label %183, !prof !45, !nosanitize !44

183:                                              ; preds = %179
  %184 = extractvalue { i32, i1 } %181, 0, !nosanitize !44
  store i32 %184, ptr %3, align 4, !tbaa !73
  %185 = load i32, ptr %10, align 4, !tbaa !74
  %186 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %184, i32 %185), !nosanitize !44
  %187 = extractvalue { i32, i1 } %186, 1, !nosanitize !44
  br i1 %187, label %452, label %188, !prof !45, !nosanitize !44

188:                                              ; preds = %183
  %189 = extractvalue { i32, i1 } %186, 0, !nosanitize !44
  %190 = icmp ugt i32 %189, 2
  br i1 %190, label %191, label %250

191:                                              ; preds = %188
  %192 = load i32, ptr %6, align 4, !tbaa !71
  %193 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %192, i32 %185), !nosanitize !44
  %194 = extractvalue { i32, i1 } %193, 0, !nosanitize !44
  %195 = extractvalue { i32, i1 } %193, 1, !nosanitize !44
  br i1 %195, label %461, label %196, !prof !45, !nosanitize !44

196:                                              ; preds = %191
  %197 = load ptr, ptr %7, align 8, !tbaa !34
  %198 = zext i32 %194 to i64
  %199 = getelementptr inbounds nuw i8, ptr %197, i64 %198
  %200 = load i8, ptr %199, align 1, !tbaa !5
  %201 = zext i8 %200 to i32
  store i32 %201, ptr %15, align 8, !tbaa !78
  %202 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %194, i32 1), !nosanitize !44
  %203 = extractvalue { i32, i1 } %202, 1, !nosanitize !44
  br i1 %203, label %470, label %204, !prof !45, !nosanitize !44

204:                                              ; preds = %196
  %205 = extractvalue { i32, i1 } %202, 0, !nosanitize !44
  %206 = load i32, ptr %16, align 8, !tbaa !52
  %207 = shl i32 %201, %206
  %208 = zext i32 %205 to i64
  %209 = getelementptr inbounds nuw i8, ptr %197, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !5
  %211 = zext i8 %210 to i32
  %212 = xor i32 %207, %211
  %213 = load i32, ptr %17, align 4, !tbaa !51
  %214 = and i32 %212, %213
  store i32 %214, ptr %15, align 8, !tbaa !78
  %mv.h.mv.fast = icmp sge i32 %192, 0
  %mv.h.fr.mv.fast = freeze i1 %mv.h.mv.fast
  br i1 %mv.h.fr.mv.fast, label %.mv.ph.mv.fast.mv.fast, label %.mv.ph.mv.fast4

215:                                              ; preds = %.mv.ph.mv.fast4, %246
  %216 = phi i32 [ %214, %.mv.ph.mv.fast4 ], [ %232, %246 ]
  %217 = phi i32 [ %185, %.mv.ph.mv.fast4 ], [ %243, %246 ]
  %218 = phi i32 [ %194, %.mv.ph.mv.fast4 ], [ %247, %246 ]
  %219 = icmp eq i32 %217, 0
  br i1 %219, label %.loopexit.mv.fast, label %220

220:                                              ; preds = %215
  %221 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %218, i32 3), !nosanitize !44
  %222 = extractvalue { i32, i1 } %221, 1, !nosanitize !44
  br i1 %222, label %525, label %223, !prof !45, !nosanitize !44

223:                                              ; preds = %220
  %224 = shl i32 %216, %206
  %225 = extractvalue { i32, i1 } %221, 0, !nosanitize !44
  %226 = add i32 %225, -1
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds nuw i8, ptr %197, i64 %227
  %229 = load i8, ptr %228, align 1, !tbaa !5
  %230 = zext i8 %229 to i32
  %231 = xor i32 %224, %230
  %232 = and i32 %231, %213
  store i32 %232, ptr %15, align 8, !tbaa !78
  %233 = load ptr, ptr %12, align 8, !tbaa !37
  %234 = zext i32 %232 to i64
  %235 = getelementptr inbounds nuw i16, ptr %233, i64 %234
  %236 = load i16, ptr %235, align 2, !tbaa !60
  %237 = load ptr, ptr %13, align 8, !tbaa !35
  %238 = load i32, ptr %18, align 8, !tbaa !32
  %239 = and i32 %238, %218
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds nuw i16, ptr %237, i64 %240
  store i16 %236, ptr %241, align 2, !tbaa !60
  %242 = trunc i32 %218 to i16
  store i16 %242, ptr %235, align 2, !tbaa !60
  %243 = add i32 %217, -1
  store i32 %243, ptr %10, align 4, !tbaa !74
  %244 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %184, i32 %243), !nosanitize !44
  %245 = extractvalue { i32, i1 } %244, 1, !nosanitize !44
  br i1 false, label %549, label %246, !prof !45, !nosanitize !44

246:                                              ; preds = %223
  %247 = add nuw i32 %218, 1
  %248 = extractvalue { i32, i1 } %244, 0, !nosanitize !44
  %249 = icmp ult i32 %248, 3
  br i1 %249, label %.loopexit.mv.fast, label %215, !llvm.loop !85

250:                                              ; preds = %.loopexit.mv.fast, %188
  %251 = icmp ult i32 %184, 262
  br i1 %251, label %252, label %561

252:                                              ; preds = %250
  %253 = load ptr, ptr %0, align 8, !tbaa !19
  %254 = getelementptr inbounds nuw i8, ptr %253, i64 8
  %255 = load i32, ptr %254, align 8, !tbaa !79
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %561, label %41, !llvm.loop !86

.loopexit.mv.fast:                                ; preds = %288, %257, %246, %215
  br label %250

.mv.ph.mv.fast4:                                  ; preds = %204
  br label %215

.mv.ph.mv.fast.mv.fast:                           ; preds = %204
  br label %257

257:                                              ; preds = %288, %.mv.ph.mv.fast.mv.fast
  %258 = phi i32 [ %214, %.mv.ph.mv.fast.mv.fast ], [ %274, %288 ]
  %259 = phi i32 [ %185, %.mv.ph.mv.fast.mv.fast ], [ %285, %288 ]
  %260 = phi i32 [ %194, %.mv.ph.mv.fast.mv.fast ], [ %289, %288 ]
  %261 = icmp eq i32 %259, 0
  br i1 %261, label %.loopexit.mv.fast, label %262

262:                                              ; preds = %257
  %263 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %260, i32 3), !nosanitize !44
  %264 = extractvalue { i32, i1 } %263, 1, !nosanitize !44
  br i1 false, label %525, label %265, !prof !45, !nosanitize !44

265:                                              ; preds = %262
  %266 = shl i32 %258, %206
  %267 = extractvalue { i32, i1 } %263, 0, !nosanitize !44
  %268 = add i32 %267, -1
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds nuw i8, ptr %197, i64 %269
  %271 = load i8, ptr %270, align 1, !tbaa !5
  %272 = zext i8 %271 to i32
  %273 = xor i32 %266, %272
  %274 = and i32 %273, %213
  store i32 %274, ptr %15, align 8, !tbaa !78
  %275 = load ptr, ptr %12, align 8, !tbaa !37
  %276 = zext i32 %274 to i64
  %277 = getelementptr inbounds nuw i16, ptr %275, i64 %276
  %278 = load i16, ptr %277, align 2, !tbaa !60
  %279 = load ptr, ptr %13, align 8, !tbaa !35
  %280 = load i32, ptr %18, align 8, !tbaa !32
  %281 = and i32 %280, %260
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds nuw i16, ptr %279, i64 %282
  store i16 %278, ptr %283, align 2, !tbaa !60
  %284 = trunc i32 %260 to i16
  store i16 %284, ptr %277, align 2, !tbaa !60
  %285 = add i32 %259, -1
  store i32 %285, ptr %10, align 4, !tbaa !74
  %286 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %184, i32 %285), !nosanitize !44
  %287 = extractvalue { i32, i1 } %286, 1, !nosanitize !44
  br i1 false, label %549, label %288, !prof !45, !nosanitize !44

288:                                              ; preds = %265
  %289 = add nuw i32 %260, 1
  %290 = extractvalue { i32, i1 } %286, 0, !nosanitize !44
  %291 = icmp ult i32 %290, 3
  br i1 %291, label %.loopexit.mv.fast, label %257, !llvm.loop !85

.mv.ph3:                                          ; preds = %38
  br label %292

292:                                              ; preds = %556, %.mv.ph3
  %293 = phi i32 [ %448, %556 ], [ %36, %.mv.ph3 ]
  %294 = load i64, ptr %5, align 8, !tbaa !59
  %295 = zext nneg i32 %293 to i64
  %296 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %294, i64 %295), !nosanitize !44
  %297 = extractvalue { i64, i1 } %296, 1, !nosanitize !44
  br i1 %297, label %298, label %299, !prof !45, !nosanitize !44

298:                                              ; preds = %41, %292
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

299:                                              ; preds = %292
  %300 = extractvalue { i64, i1 } %296, 0, !nosanitize !44
  %301 = load i32, ptr %6, align 4, !tbaa !71
  %302 = zext i32 %301 to i64
  %303 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %300, i64 %302), !nosanitize !44
  %304 = extractvalue { i64, i1 } %303, 1, !nosanitize !44
  br i1 %304, label %305, label %306, !prof !45, !nosanitize !44

305:                                              ; preds = %47, %299
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

306:                                              ; preds = %299
  %307 = extractvalue { i64, i1 } %303, 0, !nosanitize !44
  %308 = trunc i64 %307 to i32
  %309 = load i32, ptr %4, align 8, !tbaa !31
  %310 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %309, i32 262), !nosanitize !44
  %311 = extractvalue { i32, i1 } %310, 1, !nosanitize !44
  br i1 %311, label %312, label %313, !prof !45, !nosanitize !44

312:                                              ; preds = %53, %306
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

313:                                              ; preds = %306
  %314 = extractvalue { i32, i1 } %310, 0, !nosanitize !44
  %315 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %39, i32 %314), !nosanitize !44
  %316 = extractvalue { i32, i1 } %315, 1, !nosanitize !44
  br i1 %316, label %317, label %318, !prof !45, !nosanitize !44

317:                                              ; preds = %59, %313
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

318:                                              ; preds = %313
  %319 = extractvalue { i32, i1 } %315, 0, !nosanitize !44
  %320 = icmp ult i32 %301, %319
  br i1 %320, label %395, label %321

321:                                              ; preds = %318
  %322 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %39, i32 %308), !nosanitize !44
  %323 = extractvalue { i32, i1 } %322, 1, !nosanitize !44
  br i1 %323, label %324, label %325, !prof !45, !nosanitize !44

324:                                              ; preds = %66, %321
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

325:                                              ; preds = %321
  %326 = extractvalue { i32, i1 } %322, 0, !nosanitize !44
  %327 = load ptr, ptr %7, align 8, !tbaa !34
  %328 = getelementptr inbounds nuw i8, ptr %327, i64 %40
  %329 = zext i32 %326 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %327, ptr align 1 %328, i64 %329, i1 false)
  %330 = load i32, ptr %8, align 8, !tbaa !81
  %331 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %330, i32 %39), !nosanitize !44
  %332 = extractvalue { i32, i1 } %331, 1, !nosanitize !44
  br i1 %332, label %333, label %334, !prof !45, !nosanitize !44

333:                                              ; preds = %69, %325
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

334:                                              ; preds = %325
  %335 = extractvalue { i32, i1 } %331, 0, !nosanitize !44
  store i32 %335, ptr %8, align 8, !tbaa !81
  %336 = load i32, ptr %6, align 4, !tbaa !71
  %337 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %336, i32 %39), !nosanitize !44
  %338 = extractvalue { i32, i1 } %337, 1, !nosanitize !44
  br i1 %338, label %339, label %340, !prof !45, !nosanitize !44

339:                                              ; preds = %82, %77, %340, %334
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

340:                                              ; preds = %334
  %341 = extractvalue { i32, i1 } %337, 0, !nosanitize !44
  store i32 %341, ptr %6, align 4, !tbaa !71
  %342 = load i64, ptr %9, align 8, !tbaa !72
  %343 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %342, i64 %40), !nosanitize !44
  %344 = extractvalue { i64, i1 } %343, 1, !nosanitize !44
  br i1 %344, label %339, label %345, !prof !45, !nosanitize !44

345:                                              ; preds = %340
  %346 = extractvalue { i64, i1 } %343, 0, !nosanitize !44
  store i64 %346, ptr %9, align 8, !tbaa !72
  %347 = load i32, ptr %10, align 4, !tbaa !74
  %348 = icmp ugt i32 %347, %341
  br i1 %348, label %349, label %350

349:                                              ; preds = %345
  store i32 %341, ptr %10, align 4, !tbaa !74
  br label %350

350:                                              ; preds = %349, %345
  %351 = load i32, ptr %4, align 8, !tbaa !31
  %352 = load i32, ptr %11, align 4, !tbaa !36
  %353 = load ptr, ptr %12, align 8, !tbaa !37
  %354 = zext i32 %352 to i64
  %355 = getelementptr inbounds nuw i16, ptr %353, i64 %354
  br label %356

356:                                              ; preds = %367, %350
  %357 = phi ptr [ %355, %350 ], [ %359, %367 ]
  %358 = phi i32 [ %352, %350 ], [ %368, %367 ]
  %359 = getelementptr inbounds i8, ptr %357, i64 -2
  %360 = load i16, ptr %359, align 2, !tbaa !60
  %361 = zext i16 %360 to i32
  %362 = tail call i32 @llvm.usub.sat.i32(i32 %361, i32 %351)
  %363 = trunc nuw i32 %362 to i16
  store i16 %363, ptr %359, align 2, !tbaa !60
  %364 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %358, i32 1), !nosanitize !44
  %365 = extractvalue { i32, i1 } %364, 1, !nosanitize !44
  br i1 %365, label %366, label %367, !prof !45, !nosanitize !44

366:                                              ; preds = %98, %356
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

367:                                              ; preds = %356
  %368 = extractvalue { i32, i1 } %364, 0, !nosanitize !44
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %356, !llvm.loop !82

370:                                              ; preds = %367
  %371 = load ptr, ptr %13, align 8, !tbaa !35
  %372 = zext i32 %351 to i64
  %373 = getelementptr inbounds nuw i16, ptr %371, i64 %372
  br label %374

374:                                              ; preds = %385, %370
  %375 = phi ptr [ %373, %370 ], [ %377, %385 ]
  %376 = phi i32 [ %351, %370 ], [ %386, %385 ]
  %377 = getelementptr inbounds i8, ptr %375, i64 -2
  %378 = load i16, ptr %377, align 2, !tbaa !60
  %379 = zext i16 %378 to i32
  %380 = tail call i32 @llvm.usub.sat.i32(i32 %379, i32 %351)
  %381 = trunc nuw i32 %380 to i16
  store i16 %381, ptr %377, align 2, !tbaa !60
  %382 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %376, i32 1), !nosanitize !44
  %383 = extractvalue { i32, i1 } %382, 1, !nosanitize !44
  br i1 %383, label %384, label %385, !prof !45, !nosanitize !44

384:                                              ; preds = %115, %374
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

385:                                              ; preds = %374
  %386 = extractvalue { i32, i1 } %382, 0, !nosanitize !44
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %374, !llvm.loop !84

388:                                              ; preds = %385
  store i32 1, ptr %14, align 8, !tbaa !61
  %389 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %308, i32 %39), !nosanitize !44
  %390 = extractvalue { i32, i1 } %389, 1, !nosanitize !44
  br i1 %390, label %391, label %392, !prof !45, !nosanitize !44

391:                                              ; preds = %128, %388
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

392:                                              ; preds = %388
  %393 = extractvalue { i32, i1 } %389, 0, !nosanitize !44
  %394 = load i32, ptr %3, align 4, !tbaa !73
  br label %395

395:                                              ; preds = %392, %318
  %396 = phi i32 [ %394, %392 ], [ %293, %318 ]
  %397 = phi i32 [ %341, %392 ], [ %301, %318 ]
  %398 = phi i32 [ %393, %392 ], [ %308, %318 ]
  %399 = load ptr, ptr %0, align 8, !tbaa !19
  %400 = getelementptr inbounds nuw i8, ptr %399, i64 8
  %401 = load i32, ptr %400, align 8, !tbaa !79
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %561, label %403

403:                                              ; preds = %395
  %404 = load ptr, ptr %7, align 8, !tbaa !34
  %405 = zext i32 %397 to i64
  %406 = getelementptr inbounds nuw i8, ptr %404, i64 %405
  %407 = zext i32 %396 to i64
  %408 = getelementptr inbounds nuw i8, ptr %406, i64 %407
  %409 = tail call i32 @llvm.umin.i32(i32 %401, i32 %398)
  %410 = icmp eq i32 %398, 0
  br i1 %410, label %442, label %411

411:                                              ; preds = %403
  %412 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %401, i32 %409), !nosanitize !44
  %413 = extractvalue { i32, i1 } %412, 1, !nosanitize !44
  br i1 false, label %414, label %415, !prof !45, !nosanitize !44

414:                                              ; preds = %150, %411
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

415:                                              ; preds = %411
  %416 = extractvalue { i32, i1 } %412, 0, !nosanitize !44
  store i32 %416, ptr %400, align 8, !tbaa !79
  %417 = load ptr, ptr %399, align 8, !tbaa !80
  %418 = zext i32 %409 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %408, ptr align 1 %417, i64 %418, i1 false)
  %419 = getelementptr inbounds nuw i8, ptr %399, i64 56
  %420 = load ptr, ptr %419, align 8, !tbaa !18
  %421 = getelementptr inbounds nuw i8, ptr %420, i64 48
  %422 = load i32, ptr %421, align 8, !tbaa !29
  switch i32 %422, label %431 [
    i32 1, label %423
    i32 2, label %427
  ]

423:                                              ; preds = %415
  %424 = getelementptr inbounds nuw i8, ptr %399, i64 96
  %425 = load i64, ptr %424, align 8, !tbaa !57
  %426 = tail call i64 @adler32(i64 noundef %425, ptr noundef %408, i32 noundef %409) #8
  store i64 %426, ptr %424, align 8, !tbaa !57
  br label %431

427:                                              ; preds = %415
  %428 = getelementptr inbounds nuw i8, ptr %399, i64 96
  %429 = load i64, ptr %428, align 8, !tbaa !57
  %430 = tail call i64 @crc32(i64 noundef %429, ptr noundef %408, i32 noundef %409) #8
  store i64 %430, ptr %428, align 8, !tbaa !57
  br label %431

431:                                              ; preds = %427, %423, %415
  %432 = load ptr, ptr %399, align 8, !tbaa !80
  %433 = getelementptr inbounds nuw i8, ptr %432, i64 %418
  store ptr %433, ptr %399, align 8, !tbaa !80
  %434 = getelementptr inbounds nuw i8, ptr %399, i64 16
  %435 = load i64, ptr %434, align 8, !tbaa !53
  %436 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %435, i64 %418), !nosanitize !44
  %437 = extractvalue { i64, i1 } %436, 1, !nosanitize !44
  br i1 %437, label %438, label %439, !prof !45, !nosanitize !44

438:                                              ; preds = %169, %431
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

439:                                              ; preds = %431
  %440 = extractvalue { i64, i1 } %436, 0, !nosanitize !44
  store i64 %440, ptr %434, align 8, !tbaa !53
  %441 = load i32, ptr %3, align 4, !tbaa !73
  br label %442

442:                                              ; preds = %439, %403
  %443 = phi i32 [ %396, %403 ], [ %441, %439 ]
  %444 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %443, i32 %409), !nosanitize !44
  %445 = extractvalue { i32, i1 } %444, 1, !nosanitize !44
  br i1 %445, label %446, label %447, !prof !45, !nosanitize !44

446:                                              ; preds = %179, %442
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

447:                                              ; preds = %442
  %448 = extractvalue { i32, i1 } %444, 0, !nosanitize !44
  store i32 %448, ptr %3, align 4, !tbaa !73
  %449 = load i32, ptr %10, align 4, !tbaa !74
  %450 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %448, i32 %449), !nosanitize !44
  %451 = extractvalue { i32, i1 } %450, 1, !nosanitize !44
  br i1 %451, label %452, label %453, !prof !45, !nosanitize !44

452:                                              ; preds = %183, %447
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

453:                                              ; preds = %447
  %454 = extractvalue { i32, i1 } %450, 0, !nosanitize !44
  %455 = icmp ugt i32 %454, 2
  br i1 %455, label %456, label %554

456:                                              ; preds = %453
  %457 = load i32, ptr %6, align 4, !tbaa !71
  %458 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %457, i32 %449), !nosanitize !44
  %459 = extractvalue { i32, i1 } %458, 0, !nosanitize !44
  %460 = extractvalue { i32, i1 } %458, 1, !nosanitize !44
  br i1 %460, label %461, label %462, !prof !45, !nosanitize !44

461:                                              ; preds = %191, %456
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

462:                                              ; preds = %456
  %463 = load ptr, ptr %7, align 8, !tbaa !34
  %464 = zext i32 %459 to i64
  %465 = getelementptr inbounds nuw i8, ptr %463, i64 %464
  %466 = load i8, ptr %465, align 1, !tbaa !5
  %467 = zext i8 %466 to i32
  store i32 %467, ptr %15, align 8, !tbaa !78
  %468 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %459, i32 1), !nosanitize !44
  %469 = extractvalue { i32, i1 } %468, 1, !nosanitize !44
  br i1 %469, label %470, label %471, !prof !45, !nosanitize !44

470:                                              ; preds = %196, %462
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

471:                                              ; preds = %462
  %472 = extractvalue { i32, i1 } %468, 0, !nosanitize !44
  %473 = load i32, ptr %16, align 8, !tbaa !52
  %474 = shl i32 %467, %473
  %475 = zext i32 %472 to i64
  %476 = getelementptr inbounds nuw i8, ptr %463, i64 %475
  %477 = load i8, ptr %476, align 1, !tbaa !5
  %478 = zext i8 %477 to i32
  %479 = xor i32 %474, %478
  %480 = load i32, ptr %17, align 4, !tbaa !51
  %481 = and i32 %479, %480
  store i32 %481, ptr %15, align 8, !tbaa !78
  %mv.h = icmp sge i32 %457, 0
  %mv.h.fr = freeze i1 %mv.h
  br i1 %mv.h.fr, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %471
  br label %482

482:                                              ; preds = %513, %.mv.ph.mv.fast
  %483 = phi i32 [ %481, %.mv.ph.mv.fast ], [ %499, %513 ]
  %484 = phi i32 [ %449, %.mv.ph.mv.fast ], [ %510, %513 ]
  %485 = phi i32 [ %459, %.mv.ph.mv.fast ], [ %514, %513 ]
  %486 = icmp eq i32 %484, 0
  br i1 %486, label %.loopexit, label %487

487:                                              ; preds = %482
  %488 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %485, i32 3), !nosanitize !44
  %489 = extractvalue { i32, i1 } %488, 1, !nosanitize !44
  br i1 false, label %525, label %490, !prof !45, !nosanitize !44

490:                                              ; preds = %487
  %491 = shl i32 %483, %473
  %492 = extractvalue { i32, i1 } %488, 0, !nosanitize !44
  %493 = add i32 %492, -1
  %494 = zext i32 %493 to i64
  %495 = getelementptr inbounds nuw i8, ptr %463, i64 %494
  %496 = load i8, ptr %495, align 1, !tbaa !5
  %497 = zext i8 %496 to i32
  %498 = xor i32 %491, %497
  %499 = and i32 %498, %480
  store i32 %499, ptr %15, align 8, !tbaa !78
  %500 = load ptr, ptr %12, align 8, !tbaa !37
  %501 = zext i32 %499 to i64
  %502 = getelementptr inbounds nuw i16, ptr %500, i64 %501
  %503 = load i16, ptr %502, align 2, !tbaa !60
  %504 = load ptr, ptr %13, align 8, !tbaa !35
  %505 = load i32, ptr %18, align 8, !tbaa !32
  %506 = and i32 %505, %485
  %507 = zext i32 %506 to i64
  %508 = getelementptr inbounds nuw i16, ptr %504, i64 %507
  store i16 %503, ptr %508, align 2, !tbaa !60
  %509 = trunc i32 %485 to i16
  store i16 %509, ptr %502, align 2, !tbaa !60
  %510 = add i32 %484, -1
  store i32 %510, ptr %10, align 4, !tbaa !74
  %511 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %448, i32 %510), !nosanitize !44
  %512 = extractvalue { i32, i1 } %511, 1, !nosanitize !44
  br i1 false, label %549, label %513, !prof !45, !nosanitize !44

513:                                              ; preds = %490
  %514 = add nuw i32 %485, 1
  %515 = extractvalue { i32, i1 } %511, 0, !nosanitize !44
  %516 = icmp ult i32 %515, 3
  br i1 %516, label %.loopexit, label %482, !llvm.loop !85

.mv.ph:                                           ; preds = %471
  br label %517

517:                                              ; preds = %550, %.mv.ph
  %518 = phi i32 [ %481, %.mv.ph ], [ %535, %550 ]
  %519 = phi i32 [ %449, %.mv.ph ], [ %546, %550 ]
  %520 = phi i32 [ %459, %.mv.ph ], [ %551, %550 ]
  %521 = icmp eq i32 %519, 0
  br i1 %521, label %.loopexit, label %522

522:                                              ; preds = %517
  %523 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %520, i32 3), !nosanitize !44
  %524 = extractvalue { i32, i1 } %523, 1, !nosanitize !44
  br i1 %524, label %525, label %526, !prof !45, !nosanitize !44

525:                                              ; preds = %262, %220, %487, %522
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

526:                                              ; preds = %522
  %527 = shl i32 %518, %473
  %528 = extractvalue { i32, i1 } %523, 0, !nosanitize !44
  %529 = add i32 %528, -1
  %530 = zext i32 %529 to i64
  %531 = getelementptr inbounds nuw i8, ptr %463, i64 %530
  %532 = load i8, ptr %531, align 1, !tbaa !5
  %533 = zext i8 %532 to i32
  %534 = xor i32 %527, %533
  %535 = and i32 %534, %480
  store i32 %535, ptr %15, align 8, !tbaa !78
  %536 = load ptr, ptr %12, align 8, !tbaa !37
  %537 = zext i32 %535 to i64
  %538 = getelementptr inbounds nuw i16, ptr %536, i64 %537
  %539 = load i16, ptr %538, align 2, !tbaa !60
  %540 = load ptr, ptr %13, align 8, !tbaa !35
  %541 = load i32, ptr %18, align 8, !tbaa !32
  %542 = and i32 %541, %520
  %543 = zext i32 %542 to i64
  %544 = getelementptr inbounds nuw i16, ptr %540, i64 %543
  store i16 %539, ptr %544, align 2, !tbaa !60
  %545 = trunc i32 %520 to i16
  store i16 %545, ptr %538, align 2, !tbaa !60
  %546 = add i32 %519, -1
  store i32 %546, ptr %10, align 4, !tbaa !74
  %547 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %448, i32 %546), !nosanitize !44
  %548 = extractvalue { i32, i1 } %547, 1, !nosanitize !44
  br i1 false, label %549, label %550, !prof !45, !nosanitize !44

549:                                              ; preds = %265, %223, %490, %526
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

550:                                              ; preds = %526
  %551 = add nuw i32 %520, 1
  %552 = extractvalue { i32, i1 } %547, 0, !nosanitize !44
  %553 = icmp ult i32 %552, 3
  br i1 %553, label %.loopexit, label %517, !llvm.loop !85

.loopexit:                                        ; preds = %513, %482, %517, %550
  br label %554

554:                                              ; preds = %.loopexit, %453
  %555 = icmp ult i32 %448, 262
  br i1 %555, label %556, label %561

556:                                              ; preds = %554
  %557 = load ptr, ptr %0, align 8, !tbaa !19
  %558 = getelementptr inbounds nuw i8, ptr %557, i64 8
  %559 = load i32, ptr %558, align 8, !tbaa !79
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %292, !llvm.loop !86

561:                                              ; preds = %252, %250, %134, %556, %554, %395
  %562 = phi i32 [ %448, %556 ], [ %448, %554 ], [ %396, %395 ], [ %184, %252 ], [ %184, %250 ], [ %135, %134 ]
  %563 = load i64, ptr %19, align 8, !tbaa !38
  %564 = load i64, ptr %5, align 8, !tbaa !59
  %565 = icmp ult i64 %563, %564
  br i1 %565, label %566, label %605

566:                                              ; preds = %561
  %567 = load i32, ptr %6, align 4, !tbaa !71
  %568 = zext i32 %567 to i64
  %569 = zext i32 %562 to i64
  %570 = add nuw nsw i64 %569, %568
  %571 = icmp ult i64 %563, %570
  br i1 %571, label %572, label %582

572:                                              ; preds = %566
  %573 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %564, i64 %570), !nosanitize !44
  %574 = extractvalue { i64, i1 } %573, 1, !nosanitize !44
  br i1 %574, label %575, label %576, !prof !45, !nosanitize !44

575:                                              ; preds = %572
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

576:                                              ; preds = %572
  %577 = extractvalue { i64, i1 } %573, 0, !nosanitize !44
  %578 = tail call i64 @llvm.umin.i64(i64 %577, i64 258)
  %579 = load ptr, ptr %7, align 8, !tbaa !34
  %580 = getelementptr inbounds nuw i8, ptr %579, i64 %570
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %580, i8 0, i64 %578, i1 false)
  %581 = add nuw nsw i64 %578, %570
  br label %602

582:                                              ; preds = %566
  %583 = add nuw nsw i64 %570, 258
  %584 = icmp ult i64 %563, %583
  br i1 %584, label %585, label %605

585:                                              ; preds = %582
  %586 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %564, i64 %563), !nosanitize !44
  %587 = extractvalue { i64, i1 } %586, 1, !nosanitize !44
  br i1 false, label %588, label %589, !prof !45, !nosanitize !44

588:                                              ; preds = %585
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

589:                                              ; preds = %585
  %590 = sub nuw nsw i64 %583, %563
  %591 = extractvalue { i64, i1 } %586, 0, !nosanitize !44
  %592 = tail call i64 @llvm.umin.i64(i64 %590, i64 %591)
  %593 = load ptr, ptr %7, align 8, !tbaa !34
  %594 = getelementptr inbounds nuw i8, ptr %593, i64 %563
  %595 = and i64 %592, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %594, i8 0, i64 %595, i1 false)
  %596 = load i64, ptr %19, align 8, !tbaa !38
  %597 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %596, i64 %592), !nosanitize !44
  %598 = extractvalue { i64, i1 } %597, 1, !nosanitize !44
  br i1 %598, label %599, label %600, !prof !45, !nosanitize !44

599:                                              ; preds = %589
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

600:                                              ; preds = %589
  %601 = extractvalue { i64, i1 } %597, 0, !nosanitize !44
  br label %602

602:                                              ; preds = %600, %576
  %603 = phi i64 [ %581, %576 ], [ %601, %600 ]
  store i64 %603, ptr %19, align 8, !tbaa !38
  %604 = load i32, ptr %3, align 4, !tbaa !73
  br label %605

605:                                              ; preds = %602, %582, %561
  %606 = phi i32 [ %562, %561 ], [ %562, %582 ], [ %604, %602 ]
  %607 = icmp ult i32 %606, 262
  %608 = and i1 %20, %607
  br i1 %608, label %1429, label %609

609:                                              ; preds = %605
  %610 = icmp eq i32 %606, 0
  br i1 %610, label %1246, label %611

611:                                              ; preds = %609
  %612 = icmp ugt i32 %606, 2
  br i1 %612, label %616, label %613

613:                                              ; preds = %611
  %614 = load i32, ptr %21, align 8, !tbaa !76
  store i32 %614, ptr %22, align 8, !tbaa !75
  %615 = load i32, ptr %8, align 8, !tbaa !81
  store i32 %615, ptr %23, align 4, !tbaa !126
  br label %847

616:                                              ; preds = %611, %35
  %617 = phi i32 [ %606, %611 ], [ %36, %35 ]
  %618 = load i32, ptr %6, align 4, !tbaa !71
  %619 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %618, i32 2), !nosanitize !44
  %620 = extractvalue { i32, i1 } %619, 1, !nosanitize !44
  br i1 %620, label %621, label %622, !prof !45, !nosanitize !44

621:                                              ; preds = %616
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

622:                                              ; preds = %616
  %623 = extractvalue { i32, i1 } %619, 0, !nosanitize !44
  %624 = load ptr, ptr %7, align 8, !tbaa !34
  %625 = load i32, ptr %15, align 8, !tbaa !78
  %626 = load i32, ptr %16, align 8, !tbaa !52
  %627 = shl i32 %625, %626
  %628 = zext i32 %623 to i64
  %629 = getelementptr inbounds nuw i8, ptr %624, i64 %628
  %630 = load i8, ptr %629, align 1, !tbaa !5
  %631 = zext i8 %630 to i32
  %632 = xor i32 %627, %631
  %633 = load i32, ptr %17, align 4, !tbaa !51
  %634 = and i32 %632, %633
  store i32 %634, ptr %15, align 8, !tbaa !78
  %635 = load ptr, ptr %12, align 8, !tbaa !37
  %636 = zext i32 %634 to i64
  %637 = getelementptr inbounds nuw i16, ptr %635, i64 %636
  %638 = load i16, ptr %637, align 2, !tbaa !60
  %639 = load ptr, ptr %13, align 8, !tbaa !35
  %640 = load i32, ptr %18, align 8, !tbaa !32
  %641 = and i32 %640, %618
  %642 = zext i32 %641 to i64
  %643 = getelementptr inbounds nuw i16, ptr %639, i64 %642
  store i16 %638, ptr %643, align 2, !tbaa !60
  %644 = zext i16 %638 to i32
  %645 = trunc i32 %618 to i16
  store i16 %645, ptr %637, align 2, !tbaa !60
  %646 = load i32, ptr %21, align 8, !tbaa !76
  store i32 %646, ptr %22, align 8, !tbaa !75
  %647 = load i32, ptr %8, align 8, !tbaa !81
  store i32 %647, ptr %23, align 4, !tbaa !126
  store i32 2, ptr %21, align 8, !tbaa !76
  %648 = icmp eq i16 %638, 0
  br i1 %648, label %851, label %649

649:                                              ; preds = %622
  %650 = load i32, ptr %24, align 8, !tbaa !64
  %651 = icmp ult i32 %646, %650
  br i1 %651, label %652, label %851

652:                                              ; preds = %649
  %653 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %618, i32 %644), !nosanitize !44
  %654 = extractvalue { i32, i1 } %653, 0, !nosanitize !44
  %655 = extractvalue { i32, i1 } %653, 1, !nosanitize !44
  br i1 %655, label %656, label %657, !prof !45, !nosanitize !44

656:                                              ; preds = %652
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

657:                                              ; preds = %652
  %658 = load i32, ptr %4, align 8, !tbaa !31
  %659 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %658, i32 262), !nosanitize !44
  %660 = extractvalue { i32, i1 } %659, 1, !nosanitize !44
  br i1 %660, label %661, label %662, !prof !45, !nosanitize !44

661:                                              ; preds = %657
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

662:                                              ; preds = %657
  %663 = extractvalue { i32, i1 } %659, 0, !nosanitize !44
  %664 = icmp ugt i32 %654, %663
  br i1 %664, label %851, label %665

665:                                              ; preds = %662
  %666 = zext i32 %618 to i64
  %667 = getelementptr inbounds nuw i8, ptr %624, i64 %666
  %668 = tail call i32 @llvm.usub.sat.i32(i32 %618, i32 %663)
  %669 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %646, i32 -1)
  %670 = extractvalue { i32, i1 } %669, 1, !nosanitize !44
  br i1 %670, label %671, label %672, !prof !45, !nosanitize !44

671:                                              ; preds = %794, %704, %665
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

672:                                              ; preds = %665
  %673 = load i32, ptr %25, align 8, !tbaa !68
  %674 = load i32, ptr %26, align 4, !tbaa !70
  %675 = getelementptr inbounds nuw i8, ptr %667, i64 258
  %676 = extractvalue { i32, i1 } %669, 0, !nosanitize !44
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds i8, ptr %667, i64 %677
  %679 = load i8, ptr %678, align 1, !tbaa !5
  %680 = sext i32 %646 to i64
  %681 = getelementptr inbounds i8, ptr %667, i64 %680
  %682 = load i8, ptr %681, align 1, !tbaa !5
  %683 = load i32, ptr %27, align 4, !tbaa !66
  %684 = icmp ult i32 %646, %683
  %685 = lshr i32 %674, 2
  %686 = select i1 %684, i32 %674, i32 %685
  %687 = tail call i32 @llvm.umin.i32(i32 %673, i32 %617)
  %688 = getelementptr i8, ptr %667, i64 -1
  %689 = getelementptr inbounds nuw i8, ptr %667, i64 1
  %690 = ptrtoint ptr %675 to i64
  br label %691

691:                                              ; preds = %827, %672
  %692 = phi i32 [ %647, %672 ], [ %813, %827 ]
  %693 = phi i32 [ %646, %672 ], [ %814, %827 ]
  %694 = phi i32 [ %686, %672 ], [ %828, %827 ]
  %695 = phi i32 [ %644, %672 ], [ %821, %827 ]
  %696 = phi i8 [ %679, %672 ], [ %815, %827 ]
  %697 = phi i8 [ %682, %672 ], [ %816, %827 ]
  %698 = zext nneg i32 %695 to i64
  %699 = getelementptr inbounds nuw i8, ptr %624, i64 %698
  %700 = sext i32 %693 to i64
  %701 = getelementptr inbounds i8, ptr %699, i64 %700
  %702 = load i8, ptr %701, align 1, !tbaa !5
  %703 = icmp eq i8 %702, %697
  br i1 %703, label %704, label %812

704:                                              ; preds = %691
  %705 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %693, i32 -1)
  %706 = extractvalue { i32, i1 } %705, 1, !nosanitize !44
  br i1 %706, label %671, label %707, !prof !45, !nosanitize !44

707:                                              ; preds = %704
  %708 = extractvalue { i32, i1 } %705, 0, !nosanitize !44
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds i8, ptr %699, i64 %709
  %711 = load i8, ptr %710, align 1, !tbaa !5
  %712 = icmp eq i8 %711, %696
  br i1 %712, label %713, label %812

713:                                              ; preds = %707
  %714 = load i8, ptr %699, align 1, !tbaa !5
  %715 = load i8, ptr %667, align 1, !tbaa !5
  %716 = icmp eq i8 %714, %715
  br i1 %716, label %717, label %812

717:                                              ; preds = %713
  %718 = getelementptr inbounds nuw i8, ptr %699, i64 1
  %719 = load i8, ptr %718, align 1, !tbaa !5
  %720 = load i8, ptr %689, align 1, !tbaa !5
  %721 = icmp eq i8 %719, %720
  br i1 %721, label %722, label %812

722:                                              ; preds = %717
  %723 = getelementptr inbounds nuw i8, ptr %699, i64 2
  br label %724

724:                                              ; preds = %769, %722
  %725 = phi ptr [ %723, %722 ], [ %773, %769 ]
  %726 = phi i64 [ 2, %722 ], [ %770, %769 ]
  %727 = getelementptr inbounds nuw i8, ptr %667, i64 %726
  %728 = getelementptr inbounds nuw i8, ptr %727, i64 1
  %729 = load i8, ptr %728, align 1, !tbaa !5
  %730 = getelementptr inbounds nuw i8, ptr %725, i64 1
  %731 = load i8, ptr %730, align 1, !tbaa !5
  %732 = icmp eq i8 %729, %731
  br i1 %732, label %733, label %778

733:                                              ; preds = %724
  %734 = getelementptr inbounds nuw i8, ptr %727, i64 2
  %735 = load i8, ptr %734, align 1, !tbaa !5
  %736 = getelementptr inbounds nuw i8, ptr %725, i64 2
  %737 = load i8, ptr %736, align 1, !tbaa !5
  %738 = icmp eq i8 %735, %737
  br i1 %738, label %739, label %780

739:                                              ; preds = %733
  %740 = getelementptr inbounds nuw i8, ptr %727, i64 3
  %741 = load i8, ptr %740, align 1, !tbaa !5
  %742 = getelementptr inbounds nuw i8, ptr %725, i64 3
  %743 = load i8, ptr %742, align 1, !tbaa !5
  %744 = icmp eq i8 %741, %743
  br i1 %744, label %745, label %782

745:                                              ; preds = %739
  %746 = getelementptr inbounds nuw i8, ptr %727, i64 4
  %747 = load i8, ptr %746, align 1, !tbaa !5
  %748 = getelementptr inbounds nuw i8, ptr %725, i64 4
  %749 = load i8, ptr %748, align 1, !tbaa !5
  %750 = icmp eq i8 %747, %749
  br i1 %750, label %751, label %784

751:                                              ; preds = %745
  %752 = getelementptr inbounds nuw i8, ptr %727, i64 5
  %753 = load i8, ptr %752, align 1, !tbaa !5
  %754 = getelementptr inbounds nuw i8, ptr %725, i64 5
  %755 = load i8, ptr %754, align 1, !tbaa !5
  %756 = icmp eq i8 %753, %755
  br i1 %756, label %757, label %786

757:                                              ; preds = %751
  %758 = getelementptr inbounds nuw i8, ptr %727, i64 6
  %759 = load i8, ptr %758, align 1, !tbaa !5
  %760 = getelementptr inbounds nuw i8, ptr %725, i64 6
  %761 = load i8, ptr %760, align 1, !tbaa !5
  %762 = icmp eq i8 %759, %761
  br i1 %762, label %763, label %788

763:                                              ; preds = %757
  %764 = getelementptr inbounds nuw i8, ptr %727, i64 7
  %765 = load i8, ptr %764, align 1, !tbaa !5
  %766 = getelementptr inbounds nuw i8, ptr %725, i64 7
  %767 = load i8, ptr %766, align 1, !tbaa !5
  %768 = icmp eq i8 %765, %767
  br i1 %768, label %769, label %790

769:                                              ; preds = %763
  %770 = add nuw nsw i64 %726, 8
  %771 = getelementptr inbounds nuw i8, ptr %667, i64 %770
  %772 = load i8, ptr %771, align 1, !tbaa !5
  %773 = getelementptr inbounds nuw i8, ptr %725, i64 8
  %774 = load i8, ptr %773, align 1, !tbaa !5
  %775 = icmp eq i8 %772, %774
  %776 = icmp samesign ult i64 %726, 250
  %777 = select i1 %775, i1 %776, i1 false
  br i1 %777, label %724, label %792, !llvm.loop !123

778:                                              ; preds = %724
  %779 = getelementptr inbounds nuw i8, ptr %727, i64 1
  br label %794

780:                                              ; preds = %733
  %781 = getelementptr inbounds nuw i8, ptr %727, i64 2
  br label %794

782:                                              ; preds = %739
  %783 = getelementptr inbounds nuw i8, ptr %727, i64 3
  br label %794

784:                                              ; preds = %745
  %785 = getelementptr inbounds nuw i8, ptr %727, i64 4
  br label %794

786:                                              ; preds = %751
  %787 = getelementptr inbounds nuw i8, ptr %727, i64 5
  br label %794

788:                                              ; preds = %757
  %789 = getelementptr inbounds nuw i8, ptr %727, i64 6
  br label %794

790:                                              ; preds = %763
  %791 = getelementptr inbounds nuw i8, ptr %727, i64 7
  br label %794

792:                                              ; preds = %769
  %793 = getelementptr inbounds nuw i8, ptr %667, i64 %770
  br label %794

794:                                              ; preds = %792, %790, %788, %786, %784, %782, %780, %778
  %795 = phi ptr [ %779, %778 ], [ %781, %780 ], [ %783, %782 ], [ %785, %784 ], [ %787, %786 ], [ %789, %788 ], [ %791, %790 ], [ %793, %792 ]
  %796 = ptrtoint ptr %795 to i64
  %797 = sub i64 %690, %796
  %798 = trunc i64 %797 to i32
  %799 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %798), !nosanitize !44
  %800 = extractvalue { i32, i1 } %799, 0, !nosanitize !44
  %801 = extractvalue { i32, i1 } %799, 1, !nosanitize !44
  br i1 %801, label %671, label %802, !prof !45, !nosanitize !44

802:                                              ; preds = %794
  %803 = icmp sgt i32 %800, %693
  br i1 %803, label %804, label %812

804:                                              ; preds = %802
  store i32 %695, ptr %8, align 8, !tbaa !81
  %805 = icmp slt i32 %800, %687
  br i1 %805, label %806, label %830

806:                                              ; preds = %804
  %807 = sext i32 %800 to i64
  %808 = getelementptr i8, ptr %688, i64 %807
  %809 = load i8, ptr %808, align 1, !tbaa !5
  %810 = getelementptr inbounds i8, ptr %667, i64 %807
  %811 = load i8, ptr %810, align 1, !tbaa !5
  br label %812

812:                                              ; preds = %806, %802, %717, %713, %707, %691
  %813 = phi i32 [ %692, %691 ], [ %692, %707 ], [ %692, %713 ], [ %692, %717 ], [ %695, %806 ], [ %692, %802 ]
  %814 = phi i32 [ %693, %691 ], [ %693, %707 ], [ %693, %713 ], [ %693, %717 ], [ %800, %806 ], [ %693, %802 ]
  %815 = phi i8 [ %696, %691 ], [ %696, %707 ], [ %696, %713 ], [ %696, %717 ], [ %809, %806 ], [ %696, %802 ]
  %816 = phi i8 [ %697, %691 ], [ %697, %707 ], [ %697, %713 ], [ %697, %717 ], [ %811, %806 ], [ %697, %802 ]
  %817 = and i32 %695, %640
  %818 = zext nneg i32 %817 to i64
  %819 = getelementptr inbounds nuw i16, ptr %639, i64 %818
  %820 = load i16, ptr %819, align 2, !tbaa !60
  %821 = zext i16 %820 to i32
  %822 = icmp ult i32 %668, %821
  br i1 %822, label %823, label %830

823:                                              ; preds = %812
  %824 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %694, i32 1), !nosanitize !44
  %825 = extractvalue { i32, i1 } %824, 1, !nosanitize !44
  br i1 %825, label %826, label %827, !prof !45, !nosanitize !44

826:                                              ; preds = %823
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

827:                                              ; preds = %823
  %828 = extractvalue { i32, i1 } %824, 0, !nosanitize !44
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %830, label %691, !llvm.loop !124

830:                                              ; preds = %827, %812, %804
  %831 = phi i32 [ %813, %827 ], [ %813, %812 ], [ %695, %804 ]
  %832 = phi i32 [ %814, %827 ], [ %814, %812 ], [ %800, %804 ]
  %833 = tail call i32 @llvm.umin.i32(i32 %832, i32 %617)
  store i32 %833, ptr %21, align 8, !tbaa !76
  %834 = icmp ult i32 %833, 6
  br i1 %834, label %835, label %851

835:                                              ; preds = %830
  %836 = load i32, ptr %28, align 8, !tbaa !48
  %837 = icmp eq i32 %836, 1
  br i1 %837, label %847, label %838

838:                                              ; preds = %835
  %839 = icmp eq i32 %833, 3
  br i1 %839, label %840, label %851

840:                                              ; preds = %838
  %841 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %618, i32 %831), !nosanitize !44
  %842 = extractvalue { i32, i1 } %841, 1, !nosanitize !44
  br i1 %842, label %843, label %844, !prof !45, !nosanitize !44

843:                                              ; preds = %840
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

844:                                              ; preds = %840
  %845 = extractvalue { i32, i1 } %841, 0, !nosanitize !44
  %846 = icmp ugt i32 %845, 4096
  br i1 %846, label %847, label %851

847:                                              ; preds = %844, %835, %613
  %848 = phi i32 [ %615, %613 ], [ %647, %844 ], [ %647, %835 ]
  %849 = phi i32 [ %614, %613 ], [ %646, %844 ], [ %646, %835 ]
  %850 = phi i32 [ %606, %613 ], [ %617, %844 ], [ %617, %835 ]
  store i32 2, ptr %21, align 8, !tbaa !76
  br label %851

851:                                              ; preds = %847, %844, %838, %830, %662, %649, %622
  %852 = phi i32 [ %833, %830 ], [ %833, %838 ], [ 3, %844 ], [ 2, %662 ], [ 2, %649 ], [ 2, %622 ], [ 2, %847 ]
  %853 = phi i32 [ %647, %830 ], [ %647, %838 ], [ %647, %844 ], [ %647, %662 ], [ %647, %649 ], [ %647, %622 ], [ %848, %847 ]
  %854 = phi i32 [ %646, %830 ], [ %646, %838 ], [ %646, %844 ], [ %646, %662 ], [ %646, %649 ], [ %646, %622 ], [ %849, %847 ]
  %855 = phi i32 [ %617, %830 ], [ %617, %838 ], [ %617, %844 ], [ %617, %662 ], [ %617, %649 ], [ %617, %622 ], [ %850, %847 ]
  %856 = icmp ult i32 %854, 3
  %857 = icmp ugt i32 %852, %854
  %858 = or i1 %856, %857
  br i1 %858, label %1109, label %859

859:                                              ; preds = %851
  %860 = load i32, ptr %6, align 4, !tbaa !71
  %861 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %860, i32 %855), !nosanitize !44
  %862 = extractvalue { i32, i1 } %861, 1, !nosanitize !44
  br i1 %862, label %863, label %864, !prof !45, !nosanitize !44

863:                                              ; preds = %859
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

864:                                              ; preds = %859
  %865 = extractvalue { i32, i1 } %861, 0, !nosanitize !44
  %866 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %865, i32 3), !nosanitize !44
  %867 = extractvalue { i32, i1 } %866, 0, !nosanitize !44
  %868 = extractvalue { i32, i1 } %866, 1, !nosanitize !44
  br i1 %868, label %869, label %870, !prof !45, !nosanitize !44

869:                                              ; preds = %864
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

870:                                              ; preds = %864
  %871 = trunc i32 %854 to i8
  %872 = add i8 %871, -3
  %873 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %860, i32 1), !nosanitize !44
  %874 = extractvalue { i32, i1 } %873, 1, !nosanitize !44
  br i1 %874, label %875, label %876, !prof !45, !nosanitize !44

875:                                              ; preds = %870
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

876:                                              ; preds = %870
  %877 = extractvalue { i32, i1 } %873, 0, !nosanitize !44
  %878 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %877, i32 %853), !nosanitize !44
  %879 = extractvalue { i32, i1 } %878, 1, !nosanitize !44
  br i1 %879, label %880, label %881, !prof !45, !nosanitize !44

880:                                              ; preds = %876
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

881:                                              ; preds = %876
  %882 = extractvalue { i32, i1 } %878, 0, !nosanitize !44
  %883 = trunc i32 %882 to i16
  %884 = load i32, ptr %30, align 4, !tbaa !118
  %885 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %884, i32 1), !nosanitize !44
  %886 = extractvalue { i32, i1 } %885, 1, !nosanitize !44
  br i1 %886, label %887, label %888, !prof !45, !nosanitize !44

887:                                              ; preds = %881
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

888:                                              ; preds = %881
  %889 = extractvalue { i32, i1 } %885, 0, !nosanitize !44
  %890 = load ptr, ptr %29, align 8, !tbaa !43
  %891 = trunc i32 %882 to i8
  store i32 %889, ptr %30, align 4, !tbaa !118
  %892 = zext i32 %884 to i64
  %893 = getelementptr inbounds nuw i8, ptr %890, i64 %892
  store i8 %891, ptr %893, align 1, !tbaa !5
  %894 = load i32, ptr %30, align 4, !tbaa !118
  %895 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %894, i32 1), !nosanitize !44
  %896 = extractvalue { i32, i1 } %895, 1, !nosanitize !44
  br i1 %896, label %897, label %898, !prof !45, !nosanitize !44

897:                                              ; preds = %888
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

898:                                              ; preds = %888
  %899 = extractvalue { i32, i1 } %895, 0, !nosanitize !44
  %900 = load ptr, ptr %29, align 8, !tbaa !43
  %901 = lshr i32 %882, 8
  %902 = trunc i32 %901 to i8
  store i32 %899, ptr %30, align 4, !tbaa !118
  %903 = zext i32 %894 to i64
  %904 = getelementptr inbounds nuw i8, ptr %900, i64 %903
  store i8 %902, ptr %904, align 1, !tbaa !5
  %905 = load i32, ptr %30, align 4, !tbaa !118
  %906 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %905, i32 1), !nosanitize !44
  %907 = extractvalue { i32, i1 } %906, 1, !nosanitize !44
  br i1 %907, label %908, label %909, !prof !45, !nosanitize !44

908:                                              ; preds = %898
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

909:                                              ; preds = %898
  %910 = extractvalue { i32, i1 } %906, 0, !nosanitize !44
  %911 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %910, ptr %30, align 4, !tbaa !118
  %912 = zext i32 %905 to i64
  %913 = getelementptr inbounds nuw i8, ptr %911, i64 %912
  store i8 %872, ptr %913, align 1, !tbaa !5
  %914 = add i16 %883, -1
  %915 = zext i8 %872 to i64
  %916 = getelementptr inbounds nuw [0 x i8], ptr @_length_code, i64 0, i64 %915
  %917 = load i8, ptr %916, align 1, !tbaa !5
  %918 = zext i8 %917 to i64
  %919 = add nuw nsw i64 %918, 257
  %920 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %31, i64 0, i64 %919
  %921 = load i16, ptr %920, align 4, !tbaa !5
  %922 = add i16 %921, 1
  store i16 %922, ptr %920, align 4, !tbaa !5
  %923 = icmp ult i16 %914, 256
  %924 = lshr i16 %914, 7
  %925 = add nuw nsw i16 %924, 256
  %926 = select i1 %923, i16 %914, i16 %925
  %927 = zext i16 %926 to i64
  %928 = getelementptr inbounds nuw [0 x i8], ptr @_dist_code, i64 0, i64 %927
  %929 = load i8, ptr %928, align 1, !tbaa !5
  %930 = zext i8 %929 to i64
  %931 = getelementptr inbounds nuw [61 x %struct.ct_data_s], ptr %32, i64 0, i64 %930
  %932 = load i16, ptr %931, align 4, !tbaa !5
  %933 = add i16 %932, 1
  store i16 %933, ptr %931, align 4, !tbaa !5
  %934 = load i32, ptr %30, align 4, !tbaa !118
  %935 = load i32, ptr %33, align 8, !tbaa !46
  %936 = icmp eq i32 %934, %935
  %937 = load i32, ptr %22, align 8, !tbaa !75
  %938 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %937, i32 1), !nosanitize !44
  %939 = extractvalue { i32, i1 } %938, 1, !nosanitize !44
  br i1 %939, label %940, label %941, !prof !45, !nosanitize !44

940:                                              ; preds = %909
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

941:                                              ; preds = %909
  %942 = extractvalue { i32, i1 } %938, 0, !nosanitize !44
  %943 = load i32, ptr %3, align 4, !tbaa !73
  %944 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %943, i32 %942), !nosanitize !44
  %945 = extractvalue { i32, i1 } %944, 1, !nosanitize !44
  br i1 %945, label %946, label %947, !prof !45, !nosanitize !44

946:                                              ; preds = %941
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

947:                                              ; preds = %941
  %948 = extractvalue { i32, i1 } %944, 0, !nosanitize !44
  store i32 %948, ptr %3, align 4, !tbaa !73
  %949 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %937, i32 2), !nosanitize !44
  %950 = extractvalue { i32, i1 } %949, 1, !nosanitize !44
  br i1 %950, label %951, label %952, !prof !45, !nosanitize !44

951:                                              ; preds = %947
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

952:                                              ; preds = %947
  %953 = extractvalue { i32, i1 } %949, 0, !nosanitize !44
  store i32 %953, ptr %22, align 8, !tbaa !75
  %954 = load i32, ptr %6, align 4, !tbaa !71
  %mv.h9 = icmp sge i32 %937, 0
  %mv.h10 = icmp sge i32 %954, 0
  %mv.h11 = and i1 %mv.h9, %mv.h10
  %mv.h.fr12 = freeze i1 %mv.h11
  br i1 %mv.h.fr12, label %.mv.ph13.mv.fast, label %.mv.ph13

.mv.ph13.mv.fast:                                 ; preds = %952
  br label %955

955:                                              ; preds = %992, %.mv.ph13.mv.fast
  %956 = phi i32 [ %993, %992 ], [ %953, %.mv.ph13.mv.fast ]
  %957 = phi i32 [ %959, %992 ], [ %954, %.mv.ph13.mv.fast ]
  %958 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %957, i32 1), !nosanitize !44
  %959 = extractvalue { i32, i1 } %958, 0, !nosanitize !44
  %960 = extractvalue { i32, i1 } %958, 1, !nosanitize !44
  br i1 false, label %1001, label %961, !prof !45, !nosanitize !44

961:                                              ; preds = %955
  store i32 %959, ptr %6, align 4, !tbaa !71
  %962 = icmp ugt i32 %959, %867
  br i1 %962, label %989, label %963

963:                                              ; preds = %961
  %964 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %959, i32 2), !nosanitize !44
  %965 = extractvalue { i32, i1 } %964, 1, !nosanitize !44
  br i1 false, label %1007, label %966, !prof !45, !nosanitize !44

966:                                              ; preds = %963
  %967 = extractvalue { i32, i1 } %964, 0, !nosanitize !44
  %968 = load ptr, ptr %7, align 8, !tbaa !34
  %969 = load i32, ptr %15, align 8, !tbaa !78
  %970 = load i32, ptr %16, align 8, !tbaa !52
  %971 = shl i32 %969, %970
  %972 = zext i32 %967 to i64
  %973 = getelementptr inbounds nuw i8, ptr %968, i64 %972
  %974 = load i8, ptr %973, align 1, !tbaa !5
  %975 = zext i8 %974 to i32
  %976 = xor i32 %971, %975
  %977 = load i32, ptr %17, align 4, !tbaa !51
  %978 = and i32 %976, %977
  store i32 %978, ptr %15, align 8, !tbaa !78
  %979 = load ptr, ptr %12, align 8, !tbaa !37
  %980 = zext i32 %978 to i64
  %981 = getelementptr inbounds nuw i16, ptr %979, i64 %980
  %982 = load i16, ptr %981, align 2, !tbaa !60
  %983 = load ptr, ptr %13, align 8, !tbaa !35
  %984 = load i32, ptr %18, align 8, !tbaa !32
  %985 = and i32 %984, %959
  %986 = zext i32 %985 to i64
  %987 = getelementptr inbounds nuw i16, ptr %983, i64 %986
  store i16 %982, ptr %987, align 2, !tbaa !60
  %988 = trunc i32 %959 to i16
  store i16 %988, ptr %981, align 2, !tbaa !60
  br label %989

989:                                              ; preds = %966, %961
  %990 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %956, i32 1), !nosanitize !44
  %991 = extractvalue { i32, i1 } %990, 1, !nosanitize !44
  br i1 %991, label %.loopexit5, label %992, !prof !45, !nosanitize !44

992:                                              ; preds = %989
  %993 = extractvalue { i32, i1 } %990, 0, !nosanitize !44
  store i32 %993, ptr %22, align 8, !tbaa !75
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %1038, label %955, !llvm.loop !127

.mv.ph13:                                         ; preds = %952
  br label %995

995:                                              ; preds = %1035, %.mv.ph13
  %996 = phi i32 [ %1036, %1035 ], [ %953, %.mv.ph13 ]
  %997 = phi i32 [ %999, %1035 ], [ %954, %.mv.ph13 ]
  %998 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %997, i32 1), !nosanitize !44
  %999 = extractvalue { i32, i1 } %998, 0, !nosanitize !44
  %1000 = extractvalue { i32, i1 } %998, 1, !nosanitize !44
  br i1 %1000, label %1001, label %1002, !prof !45, !nosanitize !44

1001:                                             ; preds = %955, %995
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1002:                                             ; preds = %995
  store i32 %999, ptr %6, align 4, !tbaa !71
  %1003 = icmp ugt i32 %999, %867
  br i1 %1003, label %1031, label %1004

1004:                                             ; preds = %1002
  %1005 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %999, i32 2), !nosanitize !44
  %1006 = extractvalue { i32, i1 } %1005, 1, !nosanitize !44
  br i1 false, label %1007, label %1008, !prof !45, !nosanitize !44

1007:                                             ; preds = %963, %1004
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1008:                                             ; preds = %1004
  %1009 = extractvalue { i32, i1 } %1005, 0, !nosanitize !44
  %1010 = load ptr, ptr %7, align 8, !tbaa !34
  %1011 = load i32, ptr %15, align 8, !tbaa !78
  %1012 = load i32, ptr %16, align 8, !tbaa !52
  %1013 = shl i32 %1011, %1012
  %1014 = zext i32 %1009 to i64
  %1015 = getelementptr inbounds nuw i8, ptr %1010, i64 %1014
  %1016 = load i8, ptr %1015, align 1, !tbaa !5
  %1017 = zext i8 %1016 to i32
  %1018 = xor i32 %1013, %1017
  %1019 = load i32, ptr %17, align 4, !tbaa !51
  %1020 = and i32 %1018, %1019
  store i32 %1020, ptr %15, align 8, !tbaa !78
  %1021 = load ptr, ptr %12, align 8, !tbaa !37
  %1022 = zext i32 %1020 to i64
  %1023 = getelementptr inbounds nuw i16, ptr %1021, i64 %1022
  %1024 = load i16, ptr %1023, align 2, !tbaa !60
  %1025 = load ptr, ptr %13, align 8, !tbaa !35
  %1026 = load i32, ptr %18, align 8, !tbaa !32
  %1027 = and i32 %1026, %999
  %1028 = zext i32 %1027 to i64
  %1029 = getelementptr inbounds nuw i16, ptr %1025, i64 %1028
  store i16 %1024, ptr %1029, align 2, !tbaa !60
  %1030 = trunc i32 %999 to i16
  store i16 %1030, ptr %1023, align 2, !tbaa !60
  br label %1031

1031:                                             ; preds = %1008, %1002
  %1032 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %996, i32 1), !nosanitize !44
  %1033 = extractvalue { i32, i1 } %1032, 1, !nosanitize !44
  br i1 %1033, label %.loopexit5, label %1035, !prof !45, !nosanitize !44

.loopexit5:                                       ; preds = %989, %1031
  br label %1034

1034:                                             ; preds = %.loopexit5, %1052
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1035:                                             ; preds = %1031
  %1036 = extractvalue { i32, i1 } %1032, 0, !nosanitize !44
  store i32 %1036, ptr %22, align 8, !tbaa !75
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1038, label %995, !llvm.loop !127

1038:                                             ; preds = %992, %1035
  %.lcssa8 = phi i32 [ %999, %1035 ], [ %959, %992 ]
  store i32 0, ptr %34, align 8, !tbaa !77
  store i32 2, ptr %21, align 8, !tbaa !76
  %1039 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.lcssa8, i32 1), !nosanitize !44
  %1040 = extractvalue { i32, i1 } %1039, 1, !nosanitize !44
  br i1 %1040, label %1041, label %1042, !prof !45, !nosanitize !44

1041:                                             ; preds = %1038
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1042:                                             ; preds = %1038
  %1043 = extractvalue { i32, i1 } %1039, 0, !nosanitize !44
  store i32 %1043, ptr %6, align 4, !tbaa !71
  br i1 %936, label %1045, label %1044

1044:                                             ; preds = %1244, %1228, %1104, %1042
  br label %35

1045:                                             ; preds = %1042
  %1046 = load i64, ptr %9, align 8, !tbaa !72
  %1047 = icmp sgt i64 %1046, -1
  br i1 %1047, label %1048, label %1052

1048:                                             ; preds = %1045
  %1049 = load ptr, ptr %7, align 8, !tbaa !34
  %1050 = and i64 %1046, 4294967295
  %1051 = getelementptr inbounds nuw i8, ptr %1049, i64 %1050
  br label %1052

1052:                                             ; preds = %1048, %1045
  %1053 = phi ptr [ %1051, %1048 ], [ null, %1045 ]
  %1054 = zext i32 %1043 to i64
  %1055 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1054, i64 %1046), !nosanitize !44
  %1056 = extractvalue { i64, i1 } %1055, 1, !nosanitize !44
  br i1 %1056, label %1034, label %1057, !prof !45, !nosanitize !44

1057:                                             ; preds = %1052
  %1058 = extractvalue { i64, i1 } %1055, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1053, i64 noundef %1058, i32 noundef 0) #8
  %1059 = load i32, ptr %6, align 4, !tbaa !71
  %1060 = zext i32 %1059 to i64
  store i64 %1060, ptr %9, align 8, !tbaa !72
  %1061 = load ptr, ptr %0, align 8, !tbaa !19
  %1062 = getelementptr inbounds nuw i8, ptr %1061, i64 56
  %1063 = load ptr, ptr %1062, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %1063) #8
  %1064 = getelementptr inbounds nuw i8, ptr %1063, i64 40
  %1065 = load i64, ptr %1064, align 8, !tbaa !55
  %1066 = getelementptr inbounds nuw i8, ptr %1061, i64 32
  %1067 = load i32, ptr %1066, align 8, !tbaa !96
  %1068 = zext i32 %1067 to i64
  %1069 = tail call i64 @llvm.umin.i64(i64 %1065, i64 %1068)
  %1070 = trunc nuw i64 %1069 to i32
  %1071 = icmp eq i64 %1069, 0
  br i1 %1071, label %1104, label %1072

1072:                                             ; preds = %1057
  %1073 = getelementptr inbounds nuw i8, ptr %1061, i64 24
  %1074 = load ptr, ptr %1073, align 8, !tbaa !95
  %1075 = getelementptr inbounds nuw i8, ptr %1063, i64 32
  %1076 = load ptr, ptr %1075, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1074, ptr align 1 %1076, i64 %1069, i1 false)
  %1077 = load ptr, ptr %1073, align 8, !tbaa !95
  %1078 = getelementptr inbounds nuw i8, ptr %1077, i64 %1069
  store ptr %1078, ptr %1073, align 8, !tbaa !95
  %1079 = load ptr, ptr %1075, align 8, !tbaa !56
  %1080 = getelementptr inbounds nuw i8, ptr %1079, i64 %1069
  store ptr %1080, ptr %1075, align 8, !tbaa !56
  %1081 = getelementptr inbounds nuw i8, ptr %1061, i64 40
  %1082 = load i64, ptr %1081, align 8, !tbaa !97
  %1083 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1082, i64 %1069), !nosanitize !44
  %1084 = extractvalue { i64, i1 } %1083, 1, !nosanitize !44
  br i1 %1084, label %1085, label %1086, !prof !45, !nosanitize !44

1085:                                             ; preds = %1072
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1086:                                             ; preds = %1072
  %1087 = extractvalue { i64, i1 } %1083, 0, !nosanitize !44
  store i64 %1087, ptr %1081, align 8, !tbaa !97
  %1088 = load i32, ptr %1066, align 8, !tbaa !96
  %1089 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1088, i32 %1070), !nosanitize !44
  %1090 = extractvalue { i32, i1 } %1089, 1, !nosanitize !44
  br i1 %1090, label %1091, label %1092, !prof !45, !nosanitize !44

1091:                                             ; preds = %1086
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1092:                                             ; preds = %1086
  %1093 = extractvalue { i32, i1 } %1089, 0, !nosanitize !44
  store i32 %1093, ptr %1066, align 8, !tbaa !96
  %1094 = load i64, ptr %1064, align 8, !tbaa !55
  %1095 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1094, i64 %1069), !nosanitize !44
  %1096 = extractvalue { i64, i1 } %1095, 1, !nosanitize !44
  br i1 %1096, label %1097, label %1098, !prof !45, !nosanitize !44

1097:                                             ; preds = %1092
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1098:                                             ; preds = %1092
  %1099 = extractvalue { i64, i1 } %1095, 0, !nosanitize !44
  store i64 %1099, ptr %1064, align 8, !tbaa !55
  %1100 = icmp eq i64 %1099, 0
  br i1 %1100, label %1101, label %1104

1101:                                             ; preds = %1098
  %1102 = getelementptr inbounds nuw i8, ptr %1063, i64 16
  %1103 = load ptr, ptr %1102, align 8, !tbaa !40
  store ptr %1103, ptr %1075, align 8, !tbaa !56
  br label %1104

1104:                                             ; preds = %1101, %1098, %1057
  %1105 = load ptr, ptr %0, align 8, !tbaa !19
  %1106 = getelementptr inbounds nuw i8, ptr %1105, i64 32
  %1107 = load i32, ptr %1106, align 8, !tbaa !96
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1429, label %1044

1109:                                             ; preds = %851
  %1110 = load i32, ptr %34, align 8, !tbaa !77
  %1111 = icmp eq i32 %1110, 0
  br i1 %1111, label %1234, label %1112

1112:                                             ; preds = %1109
  %1113 = load i32, ptr %6, align 4, !tbaa !71
  %1114 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1113, i32 1), !nosanitize !44
  %1115 = extractvalue { i32, i1 } %1114, 1, !nosanitize !44
  br i1 %1115, label %1116, label %1117, !prof !45, !nosanitize !44

1116:                                             ; preds = %1164, %1112
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1117:                                             ; preds = %1112
  %1118 = extractvalue { i32, i1 } %1114, 0, !nosanitize !44
  %1119 = load ptr, ptr %7, align 8, !tbaa !34
  %1120 = zext i32 %1118 to i64
  %1121 = getelementptr inbounds nuw i8, ptr %1119, i64 %1120
  %1122 = load i8, ptr %1121, align 1, !tbaa !5
  %1123 = load i32, ptr %30, align 4, !tbaa !118
  %1124 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1123, i32 1), !nosanitize !44
  %1125 = extractvalue { i32, i1 } %1124, 1, !nosanitize !44
  br i1 %1125, label %1126, label %1127, !prof !45, !nosanitize !44

1126:                                             ; preds = %1117
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1127:                                             ; preds = %1117
  %1128 = extractvalue { i32, i1 } %1124, 0, !nosanitize !44
  %1129 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %1128, ptr %30, align 4, !tbaa !118
  %1130 = zext i32 %1123 to i64
  %1131 = getelementptr inbounds nuw i8, ptr %1129, i64 %1130
  store i8 0, ptr %1131, align 1, !tbaa !5
  %1132 = load i32, ptr %30, align 4, !tbaa !118
  %1133 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1132, i32 1), !nosanitize !44
  %1134 = extractvalue { i32, i1 } %1133, 1, !nosanitize !44
  br i1 %1134, label %1135, label %1136, !prof !45, !nosanitize !44

1135:                                             ; preds = %1127
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1136:                                             ; preds = %1127
  %1137 = extractvalue { i32, i1 } %1133, 0, !nosanitize !44
  %1138 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %1137, ptr %30, align 4, !tbaa !118
  %1139 = zext i32 %1132 to i64
  %1140 = getelementptr inbounds nuw i8, ptr %1138, i64 %1139
  store i8 0, ptr %1140, align 1, !tbaa !5
  %1141 = load i32, ptr %30, align 4, !tbaa !118
  %1142 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1141, i32 1), !nosanitize !44
  %1143 = extractvalue { i32, i1 } %1142, 1, !nosanitize !44
  br i1 %1143, label %1144, label %1145, !prof !45, !nosanitize !44

1144:                                             ; preds = %1136
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1145:                                             ; preds = %1136
  %1146 = extractvalue { i32, i1 } %1142, 0, !nosanitize !44
  %1147 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %1146, ptr %30, align 4, !tbaa !118
  %1148 = zext i32 %1141 to i64
  %1149 = getelementptr inbounds nuw i8, ptr %1147, i64 %1148
  store i8 %1122, ptr %1149, align 1, !tbaa !5
  %1150 = zext i8 %1122 to i64
  %1151 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %31, i64 0, i64 %1150
  %1152 = load i16, ptr %1151, align 4, !tbaa !5
  %1153 = add i16 %1152, 1
  store i16 %1153, ptr %1151, align 4, !tbaa !5
  %1154 = load i32, ptr %30, align 4, !tbaa !118
  %1155 = load i32, ptr %33, align 8, !tbaa !46
  %1156 = icmp eq i32 %1154, %1155
  br i1 %1156, label %1157, label %1217

1157:                                             ; preds = %1145
  %1158 = load i64, ptr %9, align 8, !tbaa !72
  %1159 = icmp sgt i64 %1158, -1
  br i1 %1159, label %1160, label %1164

1160:                                             ; preds = %1157
  %1161 = load ptr, ptr %7, align 8, !tbaa !34
  %1162 = and i64 %1158, 4294967295
  %1163 = getelementptr inbounds nuw i8, ptr %1161, i64 %1162
  br label %1164

1164:                                             ; preds = %1160, %1157
  %1165 = phi ptr [ %1163, %1160 ], [ null, %1157 ]
  %1166 = load i32, ptr %6, align 4, !tbaa !71
  %1167 = zext i32 %1166 to i64
  %1168 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1167, i64 %1158), !nosanitize !44
  %1169 = extractvalue { i64, i1 } %1168, 1, !nosanitize !44
  br i1 %1169, label %1116, label %1170, !prof !45, !nosanitize !44

1170:                                             ; preds = %1164
  %1171 = extractvalue { i64, i1 } %1168, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1165, i64 noundef %1171, i32 noundef 0) #8
  %1172 = load i32, ptr %6, align 4, !tbaa !71
  %1173 = zext i32 %1172 to i64
  store i64 %1173, ptr %9, align 8, !tbaa !72
  %1174 = load ptr, ptr %0, align 8, !tbaa !19
  %1175 = getelementptr inbounds nuw i8, ptr %1174, i64 56
  %1176 = load ptr, ptr %1175, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %1176) #8
  %1177 = getelementptr inbounds nuw i8, ptr %1176, i64 40
  %1178 = load i64, ptr %1177, align 8, !tbaa !55
  %1179 = getelementptr inbounds nuw i8, ptr %1174, i64 32
  %1180 = load i32, ptr %1179, align 8, !tbaa !96
  %1181 = zext i32 %1180 to i64
  %1182 = tail call i64 @llvm.umin.i64(i64 %1178, i64 %1181)
  %1183 = trunc nuw i64 %1182 to i32
  %1184 = icmp eq i64 %1182, 0
  br i1 %1184, label %1217, label %1185

1185:                                             ; preds = %1170
  %1186 = getelementptr inbounds nuw i8, ptr %1174, i64 24
  %1187 = load ptr, ptr %1186, align 8, !tbaa !95
  %1188 = getelementptr inbounds nuw i8, ptr %1176, i64 32
  %1189 = load ptr, ptr %1188, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1187, ptr align 1 %1189, i64 %1182, i1 false)
  %1190 = load ptr, ptr %1186, align 8, !tbaa !95
  %1191 = getelementptr inbounds nuw i8, ptr %1190, i64 %1182
  store ptr %1191, ptr %1186, align 8, !tbaa !95
  %1192 = load ptr, ptr %1188, align 8, !tbaa !56
  %1193 = getelementptr inbounds nuw i8, ptr %1192, i64 %1182
  store ptr %1193, ptr %1188, align 8, !tbaa !56
  %1194 = getelementptr inbounds nuw i8, ptr %1174, i64 40
  %1195 = load i64, ptr %1194, align 8, !tbaa !97
  %1196 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1195, i64 %1182), !nosanitize !44
  %1197 = extractvalue { i64, i1 } %1196, 1, !nosanitize !44
  br i1 %1197, label %1198, label %1199, !prof !45, !nosanitize !44

1198:                                             ; preds = %1185
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1199:                                             ; preds = %1185
  %1200 = extractvalue { i64, i1 } %1196, 0, !nosanitize !44
  store i64 %1200, ptr %1194, align 8, !tbaa !97
  %1201 = load i32, ptr %1179, align 8, !tbaa !96
  %1202 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1201, i32 %1183), !nosanitize !44
  %1203 = extractvalue { i32, i1 } %1202, 1, !nosanitize !44
  br i1 %1203, label %1204, label %1205, !prof !45, !nosanitize !44

1204:                                             ; preds = %1199
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1205:                                             ; preds = %1199
  %1206 = extractvalue { i32, i1 } %1202, 0, !nosanitize !44
  store i32 %1206, ptr %1179, align 8, !tbaa !96
  %1207 = load i64, ptr %1177, align 8, !tbaa !55
  %1208 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1207, i64 %1182), !nosanitize !44
  %1209 = extractvalue { i64, i1 } %1208, 1, !nosanitize !44
  br i1 %1209, label %1210, label %1211, !prof !45, !nosanitize !44

1210:                                             ; preds = %1205
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1211:                                             ; preds = %1205
  %1212 = extractvalue { i64, i1 } %1208, 0, !nosanitize !44
  store i64 %1212, ptr %1177, align 8, !tbaa !55
  %1213 = icmp eq i64 %1212, 0
  br i1 %1213, label %1214, label %1217

1214:                                             ; preds = %1211
  %1215 = getelementptr inbounds nuw i8, ptr %1176, i64 16
  %1216 = load ptr, ptr %1215, align 8, !tbaa !40
  store ptr %1216, ptr %1188, align 8, !tbaa !56
  br label %1217

1217:                                             ; preds = %1214, %1211, %1170, %1145
  %1218 = load i32, ptr %6, align 4, !tbaa !71
  %1219 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1218, i32 1), !nosanitize !44
  %1220 = extractvalue { i32, i1 } %1219, 1, !nosanitize !44
  br i1 %1220, label %1221, label %1222, !prof !45, !nosanitize !44

1221:                                             ; preds = %1217
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1222:                                             ; preds = %1217
  %1223 = extractvalue { i32, i1 } %1219, 0, !nosanitize !44
  store i32 %1223, ptr %6, align 4, !tbaa !71
  %1224 = load i32, ptr %3, align 4, !tbaa !73
  %1225 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1224, i32 1), !nosanitize !44
  %1226 = extractvalue { i32, i1 } %1225, 1, !nosanitize !44
  br i1 %1226, label %1227, label %1228, !prof !45, !nosanitize !44

1227:                                             ; preds = %1222
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1228:                                             ; preds = %1222
  %1229 = extractvalue { i32, i1 } %1225, 0, !nosanitize !44
  store i32 %1229, ptr %3, align 4, !tbaa !73
  %1230 = load ptr, ptr %0, align 8, !tbaa !19
  %1231 = getelementptr inbounds nuw i8, ptr %1230, i64 32
  %1232 = load i32, ptr %1231, align 8, !tbaa !96
  %1233 = icmp eq i32 %1232, 0
  br i1 %1233, label %1429, label %1044

1234:                                             ; preds = %1109
  store i32 1, ptr %34, align 8, !tbaa !77
  %1235 = load i32, ptr %6, align 4, !tbaa !71
  %1236 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1235, i32 1), !nosanitize !44
  %1237 = extractvalue { i32, i1 } %1236, 1, !nosanitize !44
  br i1 %1237, label %1238, label %1239, !prof !45, !nosanitize !44

1238:                                             ; preds = %1234
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1239:                                             ; preds = %1234
  %1240 = extractvalue { i32, i1 } %1236, 0, !nosanitize !44
  store i32 %1240, ptr %6, align 4, !tbaa !71
  %1241 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %855, i32 1), !nosanitize !44
  %1242 = extractvalue { i32, i1 } %1241, 1, !nosanitize !44
  br i1 %1242, label %1243, label %1244, !prof !45, !nosanitize !44

1243:                                             ; preds = %1239
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1244:                                             ; preds = %1239
  %1245 = extractvalue { i32, i1 } %1241, 0, !nosanitize !44
  store i32 %1245, ptr %3, align 4, !tbaa !73
  br label %1044

1246:                                             ; preds = %609
  %1247 = load i32, ptr %34, align 8, !tbaa !77
  %1248 = icmp eq i32 %1247, 0
  %1249 = load i32, ptr %6, align 4, !tbaa !71
  br i1 %1248, label %1292, label %1250

1250:                                             ; preds = %1246
  %1251 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1249, i32 1), !nosanitize !44
  %1252 = extractvalue { i32, i1 } %1251, 1, !nosanitize !44
  br i1 %1252, label %1253, label %1254, !prof !45, !nosanitize !44

1253:                                             ; preds = %1371, %1303, %1250
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1254:                                             ; preds = %1250
  %1255 = extractvalue { i32, i1 } %1251, 0, !nosanitize !44
  %1256 = load ptr, ptr %7, align 8, !tbaa !34
  %1257 = zext i32 %1255 to i64
  %1258 = getelementptr inbounds nuw i8, ptr %1256, i64 %1257
  %1259 = load i8, ptr %1258, align 1, !tbaa !5
  %1260 = load i32, ptr %30, align 4, !tbaa !118
  %1261 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1260, i32 1), !nosanitize !44
  %1262 = extractvalue { i32, i1 } %1261, 1, !nosanitize !44
  br i1 %1262, label %1263, label %1264, !prof !45, !nosanitize !44

1263:                                             ; preds = %1254
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1264:                                             ; preds = %1254
  %1265 = extractvalue { i32, i1 } %1261, 0, !nosanitize !44
  %1266 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %1265, ptr %30, align 4, !tbaa !118
  %1267 = zext i32 %1260 to i64
  %1268 = getelementptr inbounds nuw i8, ptr %1266, i64 %1267
  store i8 0, ptr %1268, align 1, !tbaa !5
  %1269 = load i32, ptr %30, align 4, !tbaa !118
  %1270 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1269, i32 1), !nosanitize !44
  %1271 = extractvalue { i32, i1 } %1270, 1, !nosanitize !44
  br i1 %1271, label %1272, label %1273, !prof !45, !nosanitize !44

1272:                                             ; preds = %1264
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1273:                                             ; preds = %1264
  %1274 = extractvalue { i32, i1 } %1270, 0, !nosanitize !44
  %1275 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %1274, ptr %30, align 4, !tbaa !118
  %1276 = zext i32 %1269 to i64
  %1277 = getelementptr inbounds nuw i8, ptr %1275, i64 %1276
  store i8 0, ptr %1277, align 1, !tbaa !5
  %1278 = load i32, ptr %30, align 4, !tbaa !118
  %1279 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1278, i32 1), !nosanitize !44
  %1280 = extractvalue { i32, i1 } %1279, 1, !nosanitize !44
  br i1 %1280, label %1281, label %1282, !prof !45, !nosanitize !44

1281:                                             ; preds = %1273
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1282:                                             ; preds = %1273
  %1283 = extractvalue { i32, i1 } %1279, 0, !nosanitize !44
  %1284 = load ptr, ptr %29, align 8, !tbaa !43
  store i32 %1283, ptr %30, align 4, !tbaa !118
  %1285 = zext i32 %1278 to i64
  %1286 = getelementptr inbounds nuw i8, ptr %1284, i64 %1285
  store i8 %1259, ptr %1286, align 1, !tbaa !5
  %1287 = zext i8 %1259 to i64
  %1288 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %31, i64 0, i64 %1287
  %1289 = load i16, ptr %1288, align 4, !tbaa !5
  %1290 = add i16 %1289, 1
  store i16 %1290, ptr %1288, align 4, !tbaa !5
  store i32 0, ptr %34, align 8, !tbaa !77
  %1291 = load i32, ptr %6, align 4, !tbaa !71
  br label %1292

1292:                                             ; preds = %1282, %1246
  %1293 = phi i32 [ %1291, %1282 ], [ %1249, %1246 ]
  %1294 = tail call i32 @llvm.umin.i32(i32 %1293, i32 2)
  store i32 %1294, ptr %10, align 4, !tbaa !74
  %1295 = icmp eq i32 %1, 4
  br i1 %1295, label %1296, label %1361

1296:                                             ; preds = %1292
  %1297 = load i64, ptr %9, align 8, !tbaa !72
  %1298 = icmp sgt i64 %1297, -1
  br i1 %1298, label %1299, label %1303

1299:                                             ; preds = %1296
  %1300 = load ptr, ptr %7, align 8, !tbaa !34
  %1301 = and i64 %1297, 4294967295
  %1302 = getelementptr inbounds nuw i8, ptr %1300, i64 %1301
  br label %1303

1303:                                             ; preds = %1299, %1296
  %1304 = phi ptr [ %1302, %1299 ], [ null, %1296 ]
  %1305 = zext i32 %1293 to i64
  %1306 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1305, i64 %1297), !nosanitize !44
  %1307 = extractvalue { i64, i1 } %1306, 1, !nosanitize !44
  br i1 %1307, label %1253, label %1308, !prof !45, !nosanitize !44

1308:                                             ; preds = %1303
  %1309 = extractvalue { i64, i1 } %1306, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1304, i64 noundef %1309, i32 noundef 1) #8
  %1310 = load i32, ptr %6, align 4, !tbaa !71
  %1311 = zext i32 %1310 to i64
  store i64 %1311, ptr %9, align 8, !tbaa !72
  %1312 = load ptr, ptr %0, align 8, !tbaa !19
  %1313 = getelementptr inbounds nuw i8, ptr %1312, i64 56
  %1314 = load ptr, ptr %1313, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %1314) #8
  %1315 = getelementptr inbounds nuw i8, ptr %1314, i64 40
  %1316 = load i64, ptr %1315, align 8, !tbaa !55
  %1317 = getelementptr inbounds nuw i8, ptr %1312, i64 32
  %1318 = load i32, ptr %1317, align 8, !tbaa !96
  %1319 = zext i32 %1318 to i64
  %1320 = tail call i64 @llvm.umin.i64(i64 %1316, i64 %1319)
  %1321 = trunc nuw i64 %1320 to i32
  %1322 = icmp eq i64 %1320, 0
  br i1 %1322, label %1355, label %1323

1323:                                             ; preds = %1308
  %1324 = getelementptr inbounds nuw i8, ptr %1312, i64 24
  %1325 = load ptr, ptr %1324, align 8, !tbaa !95
  %1326 = getelementptr inbounds nuw i8, ptr %1314, i64 32
  %1327 = load ptr, ptr %1326, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1325, ptr align 1 %1327, i64 %1320, i1 false)
  %1328 = load ptr, ptr %1324, align 8, !tbaa !95
  %1329 = getelementptr inbounds nuw i8, ptr %1328, i64 %1320
  store ptr %1329, ptr %1324, align 8, !tbaa !95
  %1330 = load ptr, ptr %1326, align 8, !tbaa !56
  %1331 = getelementptr inbounds nuw i8, ptr %1330, i64 %1320
  store ptr %1331, ptr %1326, align 8, !tbaa !56
  %1332 = getelementptr inbounds nuw i8, ptr %1312, i64 40
  %1333 = load i64, ptr %1332, align 8, !tbaa !97
  %1334 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1333, i64 %1320), !nosanitize !44
  %1335 = extractvalue { i64, i1 } %1334, 1, !nosanitize !44
  br i1 %1335, label %1336, label %1337, !prof !45, !nosanitize !44

1336:                                             ; preds = %1323
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1337:                                             ; preds = %1323
  %1338 = extractvalue { i64, i1 } %1334, 0, !nosanitize !44
  store i64 %1338, ptr %1332, align 8, !tbaa !97
  %1339 = load i32, ptr %1317, align 8, !tbaa !96
  %1340 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1339, i32 %1321), !nosanitize !44
  %1341 = extractvalue { i32, i1 } %1340, 1, !nosanitize !44
  br i1 %1341, label %1342, label %1343, !prof !45, !nosanitize !44

1342:                                             ; preds = %1337
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1343:                                             ; preds = %1337
  %1344 = extractvalue { i32, i1 } %1340, 0, !nosanitize !44
  store i32 %1344, ptr %1317, align 8, !tbaa !96
  %1345 = load i64, ptr %1315, align 8, !tbaa !55
  %1346 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1345, i64 %1320), !nosanitize !44
  %1347 = extractvalue { i64, i1 } %1346, 1, !nosanitize !44
  br i1 %1347, label %1348, label %1349, !prof !45, !nosanitize !44

1348:                                             ; preds = %1343
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1349:                                             ; preds = %1343
  %1350 = extractvalue { i64, i1 } %1346, 0, !nosanitize !44
  store i64 %1350, ptr %1315, align 8, !tbaa !55
  %1351 = icmp eq i64 %1350, 0
  br i1 %1351, label %1352, label %1355

1352:                                             ; preds = %1349
  %1353 = getelementptr inbounds nuw i8, ptr %1314, i64 16
  %1354 = load ptr, ptr %1353, align 8, !tbaa !40
  store ptr %1354, ptr %1326, align 8, !tbaa !56
  br label %1355

1355:                                             ; preds = %1352, %1349, %1308
  %1356 = load ptr, ptr %0, align 8, !tbaa !19
  %1357 = getelementptr inbounds nuw i8, ptr %1356, i64 32
  %1358 = load i32, ptr %1357, align 8, !tbaa !96
  %1359 = icmp eq i32 %1358, 0
  %1360 = select i1 %1359, i32 2, i32 3
  br label %1429

1361:                                             ; preds = %1292
  %1362 = load i32, ptr %30, align 4, !tbaa !118
  %1363 = icmp eq i32 %1362, 0
  br i1 %1363, label %1428, label %1364

1364:                                             ; preds = %1361
  %1365 = load i64, ptr %9, align 8, !tbaa !72
  %1366 = icmp sgt i64 %1365, -1
  br i1 %1366, label %1367, label %1371

1367:                                             ; preds = %1364
  %1368 = load ptr, ptr %7, align 8, !tbaa !34
  %1369 = and i64 %1365, 4294967295
  %1370 = getelementptr inbounds nuw i8, ptr %1368, i64 %1369
  br label %1371

1371:                                             ; preds = %1367, %1364
  %1372 = phi ptr [ %1370, %1367 ], [ null, %1364 ]
  %1373 = zext i32 %1293 to i64
  %1374 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1373, i64 %1365), !nosanitize !44
  %1375 = extractvalue { i64, i1 } %1374, 1, !nosanitize !44
  br i1 %1375, label %1253, label %1376, !prof !45, !nosanitize !44

1376:                                             ; preds = %1371
  %1377 = extractvalue { i64, i1 } %1374, 0, !nosanitize !44
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1372, i64 noundef %1377, i32 noundef 0) #8
  %1378 = load i32, ptr %6, align 4, !tbaa !71
  %1379 = zext i32 %1378 to i64
  store i64 %1379, ptr %9, align 8, !tbaa !72
  %1380 = load ptr, ptr %0, align 8, !tbaa !19
  %1381 = getelementptr inbounds nuw i8, ptr %1380, i64 56
  %1382 = load ptr, ptr %1381, align 8, !tbaa !18
  tail call void @_tr_flush_bits(ptr noundef %1382) #8
  %1383 = getelementptr inbounds nuw i8, ptr %1382, i64 40
  %1384 = load i64, ptr %1383, align 8, !tbaa !55
  %1385 = getelementptr inbounds nuw i8, ptr %1380, i64 32
  %1386 = load i32, ptr %1385, align 8, !tbaa !96
  %1387 = zext i32 %1386 to i64
  %1388 = tail call i64 @llvm.umin.i64(i64 %1384, i64 %1387)
  %1389 = trunc nuw i64 %1388 to i32
  %1390 = icmp eq i64 %1388, 0
  br i1 %1390, label %1423, label %1391

1391:                                             ; preds = %1376
  %1392 = getelementptr inbounds nuw i8, ptr %1380, i64 24
  %1393 = load ptr, ptr %1392, align 8, !tbaa !95
  %1394 = getelementptr inbounds nuw i8, ptr %1382, i64 32
  %1395 = load ptr, ptr %1394, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1393, ptr align 1 %1395, i64 %1388, i1 false)
  %1396 = load ptr, ptr %1392, align 8, !tbaa !95
  %1397 = getelementptr inbounds nuw i8, ptr %1396, i64 %1388
  store ptr %1397, ptr %1392, align 8, !tbaa !95
  %1398 = load ptr, ptr %1394, align 8, !tbaa !56
  %1399 = getelementptr inbounds nuw i8, ptr %1398, i64 %1388
  store ptr %1399, ptr %1394, align 8, !tbaa !56
  %1400 = getelementptr inbounds nuw i8, ptr %1380, i64 40
  %1401 = load i64, ptr %1400, align 8, !tbaa !97
  %1402 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1401, i64 %1388), !nosanitize !44
  %1403 = extractvalue { i64, i1 } %1402, 1, !nosanitize !44
  br i1 %1403, label %1404, label %1405, !prof !45, !nosanitize !44

1404:                                             ; preds = %1391
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !44
  unreachable, !nosanitize !44

1405:                                             ; preds = %1391
  %1406 = extractvalue { i64, i1 } %1402, 0, !nosanitize !44
  store i64 %1406, ptr %1400, align 8, !tbaa !97
  %1407 = load i32, ptr %1385, align 8, !tbaa !96
  %1408 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1407, i32 %1389), !nosanitize !44
  %1409 = extractvalue { i32, i1 } %1408, 1, !nosanitize !44
  br i1 %1409, label %1410, label %1411, !prof !45, !nosanitize !44

1410:                                             ; preds = %1405
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1411:                                             ; preds = %1405
  %1412 = extractvalue { i32, i1 } %1408, 0, !nosanitize !44
  store i32 %1412, ptr %1385, align 8, !tbaa !96
  %1413 = load i64, ptr %1383, align 8, !tbaa !55
  %1414 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1413, i64 %1388), !nosanitize !44
  %1415 = extractvalue { i64, i1 } %1414, 1, !nosanitize !44
  br i1 %1415, label %1416, label %1417, !prof !45, !nosanitize !44

1416:                                             ; preds = %1411
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !44
  unreachable, !nosanitize !44

1417:                                             ; preds = %1411
  %1418 = extractvalue { i64, i1 } %1414, 0, !nosanitize !44
  store i64 %1418, ptr %1383, align 8, !tbaa !55
  %1419 = icmp eq i64 %1418, 0
  br i1 %1419, label %1420, label %1423

1420:                                             ; preds = %1417
  %1421 = getelementptr inbounds nuw i8, ptr %1382, i64 16
  %1422 = load ptr, ptr %1421, align 8, !tbaa !40
  store ptr %1422, ptr %1394, align 8, !tbaa !56
  br label %1423

1423:                                             ; preds = %1420, %1417, %1376
  %1424 = load ptr, ptr %0, align 8, !tbaa !19
  %1425 = getelementptr inbounds nuw i8, ptr %1424, i64 32
  %1426 = load i32, ptr %1425, align 8, !tbaa !96
  %1427 = icmp eq i32 %1426, 0
  br i1 %1427, label %1429, label %1428

1428:                                             ; preds = %1423, %1361
  br label %1429

1429:                                             ; preds = %1428, %1423, %1355, %1228, %1104, %605
  %1430 = phi i32 [ 1, %1428 ], [ %1360, %1355 ], [ 0, %1423 ], [ 0, %605 ], [ 0, %1104 ], [ 0, %1228 ]
  ret i32 %1430
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
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nomerge noreturn nounwind }
attributes #10 = { noreturn nounwind }

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
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.mustprogress"}
!84 = distinct !{!84, !83}
!85 = distinct !{!85, !83}
!86 = distinct !{!86, !83}
!87 = distinct !{!87, !83}
!88 = distinct !{!88, !83}
!89 = !{!20, !22, i64 56}
!90 = !{!20, !12, i64 5940}
!91 = !{!20, !12, i64 5944}
!92 = !{!20, !27, i64 5936}
!93 = distinct !{!93, !83}
!94 = !{!63, !11, i64 8}
!95 = !{!9, !10, i64 24}
!96 = !{!9, !12, i64 32}
!97 = !{!9, !13, i64 40}
!98 = !{!"branch_weights", i32 1048575, i32 1}
!99 = !{!100, !10, i64 56}
!100 = !{!"gz_header_s", !12, i64 0, !13, i64 8, !12, i64 16, !12, i64 20, !10, i64 24, !12, i64 32, !12, i64 36, !10, i64 40, !12, i64 48, !10, i64 56, !12, i64 64, !12, i64 68, !12, i64 72}
!101 = !{!100, !10, i64 40}
!102 = !{!100, !10, i64 24}
!103 = !{!100, !12, i64 0}
!104 = !{!100, !12, i64 68}
!105 = !{!100, !13, i64 8}
!106 = !{!100, !12, i64 20}
!107 = !{!100, !12, i64 32}
!108 = !{!20, !13, i64 64}
!109 = !{!"branch_weights", i32 1, i32 1048574}
!110 = distinct !{!110, !83, !111}
!111 = !{!"llvm.loop.peeled.count", i32 1}
!112 = distinct !{!112, !83}
!113 = distinct !{!113, !83}
!114 = !{!20, !12, i64 5928}
!115 = distinct !{!115, !83}
!116 = distinct !{!116, !83}
!117 = distinct !{!117, !83}
!118 = !{!20, !12, i64 5900}
!119 = distinct !{!119, !83}
!120 = !{!20, !25, i64 2904}
!121 = !{!20, !25, i64 2928}
!122 = !{!20, !25, i64 2952}
!123 = distinct !{!123, !83}
!124 = distinct !{!124, !83}
!125 = distinct !{!125, !83}
!126 = !{!20, !12, i64 164}
!127 = distinct !{!127, !83}
