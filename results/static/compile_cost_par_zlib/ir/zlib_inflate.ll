; ModuleID = '/mydata/zlib/inflate.c'
source_filename = "/mydata/zlib/inflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.code = type { i8, i8, i16 }

@inflate.order = internal unnamed_addr constant [19 x i16] [i16 16, i16 17, i16 18, i16 0, i16 8, i16 7, i16 9, i16 6, i16 10, i16 5, i16 11, i16 4, i16 12, i16 3, i16 13, i16 2, i16 14, i16 1, i16 15], align 16
@.str.1 = private unnamed_addr constant [23 x i8] c"incorrect header check\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"unknown compression method\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"invalid window size\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"unknown header flags set\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"header crc mismatch\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"invalid block type\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"invalid stored block lengths\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"too many length or distance symbols\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"invalid code lengths set\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"invalid bit length repeat\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"invalid code -- missing end-of-block\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"invalid literal/lengths set\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"invalid distances set\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"incorrect data check\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"incorrect length check\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflateResetKeep(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %49, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %49, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %49, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %49, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !16
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %49

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !20
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %49

23:                                               ; preds = %18
  %24 = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 0, ptr %24, align 8, !tbaa !21
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %26, align 8, !tbaa !22
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %27, align 8, !tbaa !23
  %28 = getelementptr inbounds nuw i8, ptr %13, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  %29 = load i32, ptr %28, align 8, !tbaa !24
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = and i32 %29, 1
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %33, ptr %34, align 8, !tbaa !25
  br label %35

35:                                               ; preds = %31, %23
  store i32 16180, ptr %19, align 8, !tbaa !20
  %36 = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 0, ptr %36, align 4, !tbaa !26
  %37 = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 0, ptr %37, align 4, !tbaa !27
  %38 = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 -1, ptr %38, align 8, !tbaa !28
  %39 = getelementptr inbounds nuw i8, ptr %13, i64 28
  store i32 32768, ptr %39, align 4, !tbaa !29
  %40 = getelementptr inbounds nuw i8, ptr %13, i64 48
  store ptr null, ptr %40, align 8, !tbaa !30
  %41 = getelementptr inbounds nuw i8, ptr %13, i64 80
  store i64 0, ptr %41, align 8, !tbaa !31
  %42 = getelementptr inbounds nuw i8, ptr %13, i64 88
  store i32 0, ptr %42, align 8, !tbaa !32
  %43 = getelementptr inbounds nuw i8, ptr %13, i64 1368
  %44 = getelementptr inbounds nuw i8, ptr %13, i64 144
  store ptr %43, ptr %44, align 8, !tbaa !33
  %45 = getelementptr inbounds nuw i8, ptr %13, i64 112
  store ptr %43, ptr %45, align 8, !tbaa !34
  %46 = getelementptr inbounds nuw i8, ptr %13, i64 104
  store ptr %43, ptr %46, align 8, !tbaa !35
  %47 = getelementptr inbounds nuw i8, ptr %13, i64 7144
  store i32 1, ptr %47, align 8, !tbaa !36
  %48 = getelementptr inbounds nuw i8, ptr %13, i64 7148
  store i32 -1, ptr %48, align 4, !tbaa !37
  br label %49

49:                                               ; preds = %11, %15, %1, %3, %7, %18, %35
  %50 = phi i32 [ 0, %35 ], [ -2, %18 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %50
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflateReset(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %52, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %52, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %52, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %52, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !16
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %52

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !20
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %52

23:                                               ; preds = %18
  %24 = getelementptr inbounds nuw i8, ptr %13, i64 60
  store i32 0, ptr %24, align 4, !tbaa !38
  %25 = getelementptr inbounds nuw i8, ptr %13, i64 64
  store i32 0, ptr %25, align 8, !tbaa !39
  %26 = getelementptr inbounds nuw i8, ptr %13, i64 68
  store i32 0, ptr %26, align 4, !tbaa !40
  %27 = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 0, ptr %27, align 8, !tbaa !21
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %29, align 8, !tbaa !22
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %30, align 8, !tbaa !23
  %31 = getelementptr inbounds nuw i8, ptr %13, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  %32 = load i32, ptr %31, align 8, !tbaa !24
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %23
  %35 = and i32 %32, 1
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %36, ptr %37, align 8, !tbaa !25
  br label %38

38:                                               ; preds = %34, %23
  store i32 16180, ptr %19, align 8, !tbaa !20
  %39 = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 0, ptr %39, align 4, !tbaa !26
  %40 = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 0, ptr %40, align 4, !tbaa !27
  %41 = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 -1, ptr %41, align 8, !tbaa !28
  %42 = getelementptr inbounds nuw i8, ptr %13, i64 28
  store i32 32768, ptr %42, align 4, !tbaa !29
  %43 = getelementptr inbounds nuw i8, ptr %13, i64 48
  store ptr null, ptr %43, align 8, !tbaa !30
  %44 = getelementptr inbounds nuw i8, ptr %13, i64 80
  store i64 0, ptr %44, align 8, !tbaa !31
  %45 = getelementptr inbounds nuw i8, ptr %13, i64 88
  store i32 0, ptr %45, align 8, !tbaa !32
  %46 = getelementptr inbounds nuw i8, ptr %13, i64 1368
  %47 = getelementptr inbounds nuw i8, ptr %13, i64 144
  store ptr %46, ptr %47, align 8, !tbaa !33
  %48 = getelementptr inbounds nuw i8, ptr %13, i64 112
  store ptr %46, ptr %48, align 8, !tbaa !34
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 104
  store ptr %46, ptr %49, align 8, !tbaa !35
  %50 = getelementptr inbounds nuw i8, ptr %13, i64 7144
  store i32 1, ptr %50, align 8, !tbaa !36
  %51 = getelementptr inbounds nuw i8, ptr %13, i64 7148
  store i32 -1, ptr %51, align 4, !tbaa !37
  br label %52

52:                                               ; preds = %11, %15, %1, %3, %7, %38, %18
  %53 = phi i32 [ -2, %18 ], [ 0, %38 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @inflateReset2(ptr noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %100, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %100, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %100, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %100, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !16
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %100

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !20
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %100

24:                                               ; preds = %19
  %25 = icmp slt i32 %1, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = icmp samesign ult i32 %1, -15
  br i1 %27, label %100, label %28

28:                                               ; preds = %26
  %29 = sub nsw i32 0, %1
  br label %36

30:                                               ; preds = %24
  %31 = lshr i32 %1, 4
  %32 = add nuw nsw i32 %31, 5
  %33 = icmp samesign ult i32 %1, 48
  %34 = and i32 %1, 15
  %35 = select i1 %33, i32 %34, i32 %1
  br label %36

36:                                               ; preds = %30, %28
  %37 = phi i32 [ %29, %28 ], [ %35, %30 ]
  %38 = phi i32 [ 0, %28 ], [ %32, %30 ]
  switch i32 %37, label %100 [
    i32 15, label %39
    i32 14, label %39
    i32 13, label %39
    i32 12, label %39
    i32 11, label %39
    i32 10, label %39
    i32 9, label %39
    i32 8, label %39
    i32 0, label %39
  ]

39:                                               ; preds = %36, %36, %36, %36, %36, %36, %36, %36, %36
  %40 = getelementptr inbounds nuw i8, ptr %14, i64 72
  %41 = load ptr, ptr %40, align 8, !tbaa !41
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %45 = load i32, ptr %44, align 8, !tbaa !42
  %46 = icmp eq i32 %45, %37
  br i1 %46, label %47, label %50

47:                                               ; preds = %39, %43
  %48 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %38, ptr %48, align 8, !tbaa !24
  %49 = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i32 %37, ptr %49, align 8, !tbaa !42
  br label %57

50:                                               ; preds = %43
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %52 = load ptr, ptr %51, align 8, !tbaa !43
  tail call void %10(ptr noundef %52, ptr noundef nonnull %41) #10
  store ptr null, ptr %40, align 8, !tbaa !41
  %53 = load ptr, ptr %5, align 8, !tbaa !5
  %54 = icmp eq ptr %53, null
  %55 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %38, ptr %55, align 8, !tbaa !24
  %56 = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i32 %37, ptr %56, align 8, !tbaa !42
  br i1 %54, label %100, label %57

57:                                               ; preds = %47, %50
  %58 = load ptr, ptr %9, align 8, !tbaa !14
  %59 = icmp eq ptr %58, null
  br i1 %59, label %100, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %13, align 8, !tbaa !15
  %62 = icmp eq ptr %61, null
  br i1 %62, label %100, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %61, align 8, !tbaa !16
  %65 = icmp eq ptr %64, %0
  br i1 %65, label %66, label %100

66:                                               ; preds = %63
  %67 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %68 = load i32, ptr %67, align 8, !tbaa !20
  %69 = add i32 %68, -16180
  %70 = icmp ult i32 %69, 32
  br i1 %70, label %71, label %100

71:                                               ; preds = %66
  %72 = getelementptr inbounds nuw i8, ptr %61, i64 60
  store i32 0, ptr %72, align 4, !tbaa !38
  %73 = getelementptr inbounds nuw i8, ptr %61, i64 64
  store i32 0, ptr %73, align 8, !tbaa !39
  %74 = getelementptr inbounds nuw i8, ptr %61, i64 68
  store i32 0, ptr %74, align 4, !tbaa !40
  %75 = getelementptr inbounds nuw i8, ptr %61, i64 40
  store i64 0, ptr %75, align 8, !tbaa !21
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %77, align 8, !tbaa !22
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %78, align 8, !tbaa !23
  %79 = getelementptr inbounds nuw i8, ptr %61, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %76, i8 0, i64 16, i1 false)
  %80 = load i32, ptr %79, align 8, !tbaa !24
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %71
  %83 = and i32 %80, 1
  %84 = zext nneg i32 %83 to i64
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %84, ptr %85, align 8, !tbaa !25
  br label %86

86:                                               ; preds = %82, %71
  store i32 16180, ptr %67, align 8, !tbaa !20
  %87 = getelementptr inbounds nuw i8, ptr %61, i64 12
  store i32 0, ptr %87, align 4, !tbaa !26
  %88 = getelementptr inbounds nuw i8, ptr %61, i64 20
  store i32 0, ptr %88, align 4, !tbaa !27
  %89 = getelementptr inbounds nuw i8, ptr %61, i64 24
  store i32 -1, ptr %89, align 8, !tbaa !28
  %90 = getelementptr inbounds nuw i8, ptr %61, i64 28
  store i32 32768, ptr %90, align 4, !tbaa !29
  %91 = getelementptr inbounds nuw i8, ptr %61, i64 48
  store ptr null, ptr %91, align 8, !tbaa !30
  %92 = getelementptr inbounds nuw i8, ptr %61, i64 80
  store i64 0, ptr %92, align 8, !tbaa !31
  %93 = getelementptr inbounds nuw i8, ptr %61, i64 88
  store i32 0, ptr %93, align 8, !tbaa !32
  %94 = getelementptr inbounds nuw i8, ptr %61, i64 1368
  %95 = getelementptr inbounds nuw i8, ptr %61, i64 144
  store ptr %94, ptr %95, align 8, !tbaa !33
  %96 = getelementptr inbounds nuw i8, ptr %61, i64 112
  store ptr %94, ptr %96, align 8, !tbaa !34
  %97 = getelementptr inbounds nuw i8, ptr %61, i64 104
  store ptr %94, ptr %97, align 8, !tbaa !35
  %98 = getelementptr inbounds nuw i8, ptr %61, i64 7144
  store i32 1, ptr %98, align 8, !tbaa !36
  %99 = getelementptr inbounds nuw i8, ptr %61, i64 7148
  store i32 -1, ptr %99, align 4, !tbaa !37
  br label %100

100:                                              ; preds = %12, %16, %2, %4, %8, %86, %66, %63, %60, %57, %50, %36, %26, %19
  %101 = phi i32 [ -2, %19 ], [ -2, %26 ], [ -2, %36 ], [ -2, %66 ], [ 0, %86 ], [ -2, %57 ], [ -2, %50 ], [ -2, %63 ], [ -2, %60 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %101
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @inflateInit2_(ptr noundef %0, i32 noundef %1, ptr noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %87, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1, !tbaa !44
  %8 = icmp ne i8 %7, 49
  %9 = icmp ne i32 %3, 112
  %10 = or i1 %9, %8
  br i1 %10, label %87, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %0, null
  br i1 %12, label %87, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %14, align 8, !tbaa !45
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  store ptr @zcalloc, ptr %15, align 8, !tbaa !5
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %19, align 8, !tbaa !43
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi ptr [ @zcalloc, %18 ], [ %16, %13 ]
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %23 = load ptr, ptr %22, align 8, !tbaa !14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store ptr @zcfree, ptr %22, align 8, !tbaa !14
  br label %26

26:                                               ; preds = %25, %20
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = tail call ptr %21(ptr noundef %28, i32 noundef 1, i32 noundef 7160) #10
  %30 = icmp eq ptr %29, null
  br i1 %30, label %87, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds nuw i8, ptr %29, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7152) %32, i8 0, i64 7152, i1 false)
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %29, ptr %33, align 8, !tbaa !15
  store ptr %0, ptr %29, align 8, !tbaa !16
  %34 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i32 16180, ptr %34, align 8, !tbaa !20
  %35 = load ptr, ptr %15, align 8, !tbaa !5
  %36 = icmp eq ptr %35, null
  %37 = load ptr, ptr %22, align 8, !tbaa !14
  %38 = icmp eq ptr %37, null
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %85, label %40

40:                                               ; preds = %31
  %41 = icmp slt i32 %1, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %40
  %43 = icmp samesign ult i32 %1, -15
  br i1 %43, label %85, label %44

44:                                               ; preds = %42
  %45 = sub nsw i32 0, %1
  br label %52

46:                                               ; preds = %40
  %47 = lshr i32 %1, 4
  %48 = add nuw nsw i32 %47, 5
  %49 = icmp samesign ult i32 %1, 48
  %50 = and i32 %1, 15
  %51 = select i1 %49, i32 %50, i32 %1
  br label %52

52:                                               ; preds = %46, %44
  %53 = phi i32 [ %45, %44 ], [ %51, %46 ]
  %54 = phi i32 [ 0, %44 ], [ %48, %46 ]
  switch i32 %53, label %85 [
    i32 15, label %55
    i32 14, label %55
    i32 13, label %55
    i32 12, label %55
    i32 11, label %55
    i32 10, label %55
    i32 9, label %55
    i32 8, label %55
    i32 0, label %55
  ]

55:                                               ; preds = %52, %52, %52, %52, %52, %52, %52, %52, %52
  %56 = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i32 %54, ptr %56, align 8, !tbaa !24
  %57 = getelementptr inbounds nuw i8, ptr %29, i64 56
  store i32 %53, ptr %57, align 8, !tbaa !42
  %58 = getelementptr inbounds nuw i8, ptr %29, i64 60
  store i32 0, ptr %58, align 4, !tbaa !38
  %59 = getelementptr inbounds nuw i8, ptr %29, i64 64
  store i32 0, ptr %59, align 8, !tbaa !39
  %60 = getelementptr inbounds nuw i8, ptr %29, i64 68
  store i32 0, ptr %60, align 4, !tbaa !40
  %61 = getelementptr inbounds nuw i8, ptr %29, i64 40
  store i64 0, ptr %61, align 8, !tbaa !21
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %63, align 8, !tbaa !22
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %64, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %62, i8 0, i64 16, i1 false)
  %65 = load i32, ptr %56, align 8, !tbaa !24
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %55
  %68 = and i32 %65, 1
  %69 = zext nneg i32 %68 to i64
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %69, ptr %70, align 8, !tbaa !25
  br label %71

71:                                               ; preds = %55, %67
  store i32 16180, ptr %34, align 8, !tbaa !20
  %72 = getelementptr inbounds nuw i8, ptr %29, i64 12
  store i32 0, ptr %72, align 4, !tbaa !26
  %73 = getelementptr inbounds nuw i8, ptr %29, i64 20
  store i32 0, ptr %73, align 4, !tbaa !27
  %74 = getelementptr inbounds nuw i8, ptr %29, i64 24
  store i32 -1, ptr %74, align 8, !tbaa !28
  %75 = getelementptr inbounds nuw i8, ptr %29, i64 28
  store i32 32768, ptr %75, align 4, !tbaa !29
  %76 = getelementptr inbounds nuw i8, ptr %29, i64 48
  store ptr null, ptr %76, align 8, !tbaa !30
  %77 = getelementptr inbounds nuw i8, ptr %29, i64 80
  store i64 0, ptr %77, align 8, !tbaa !31
  %78 = getelementptr inbounds nuw i8, ptr %29, i64 88
  store i32 0, ptr %78, align 8, !tbaa !32
  %79 = getelementptr inbounds nuw i8, ptr %29, i64 1368
  %80 = getelementptr inbounds nuw i8, ptr %29, i64 144
  store ptr %79, ptr %80, align 8, !tbaa !33
  %81 = getelementptr inbounds nuw i8, ptr %29, i64 112
  store ptr %79, ptr %81, align 8, !tbaa !34
  %82 = getelementptr inbounds nuw i8, ptr %29, i64 104
  store ptr %79, ptr %82, align 8, !tbaa !35
  %83 = getelementptr inbounds nuw i8, ptr %29, i64 7144
  store i32 1, ptr %83, align 8, !tbaa !36
  %84 = getelementptr inbounds nuw i8, ptr %29, i64 7148
  store i32 -1, ptr %84, align 4, !tbaa !37
  br label %87

85:                                               ; preds = %42, %52, %31
  %86 = load ptr, ptr %27, align 8, !tbaa !43
  tail call void %37(ptr noundef %86, ptr noundef nonnull %29) #10
  store ptr null, ptr %33, align 8, !tbaa !15
  br label %87

87:                                               ; preds = %71, %85, %26, %11, %4, %6
  %88 = phi i32 [ -6, %6 ], [ -6, %4 ], [ -2, %11 ], [ -4, %26 ], [ -2, %85 ], [ 0, %71 ]
  ret i32 %88
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #5

declare void @zcfree(ptr noundef, ptr noundef) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @inflateInit_(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %67, label %5

5:                                                ; preds = %3
  %6 = load i8, ptr %1, align 1, !tbaa !44
  %7 = icmp ne i8 %6, 49
  %8 = icmp ne i32 %2, 112
  %9 = or i1 %8, %7
  br i1 %9, label %67, label %10

10:                                               ; preds = %5
  %11 = icmp eq ptr %0, null
  br i1 %11, label %67, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %13, align 8, !tbaa !45
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  store ptr @zcalloc, ptr %14, align 8, !tbaa !5
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %18, align 8, !tbaa !43
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ @zcalloc, %17 ], [ %15, %12 ]
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %22 = load ptr, ptr %21, align 8, !tbaa !14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store ptr @zcfree, ptr %21, align 8, !tbaa !14
  br label %25

25:                                               ; preds = %24, %19
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = tail call ptr %20(ptr noundef %27, i32 noundef 1, i32 noundef 7160) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %67, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds nuw i8, ptr %28, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7152) %31, i8 0, i64 7152, i1 false)
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %28, ptr %32, align 8, !tbaa !15
  store ptr %0, ptr %28, align 8, !tbaa !16
  store i32 16180, ptr %31, align 8, !tbaa !20
  %33 = load ptr, ptr %14, align 8, !tbaa !5
  %34 = icmp eq ptr %33, null
  %35 = load ptr, ptr %21, align 8, !tbaa !14
  %36 = icmp eq ptr %35, null
  %37 = select i1 %34, i1 true, i1 %36
  br i1 %37, label %65, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i32 5, ptr %39, align 8, !tbaa !24
  %40 = getelementptr inbounds nuw i8, ptr %28, i64 56
  store <4 x i32> <i32 15, i32 0, i32 0, i32 0>, ptr %40, align 8, !tbaa !46
  %41 = getelementptr inbounds nuw i8, ptr %28, i64 40
  store i64 0, ptr %41, align 8, !tbaa !21
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %43, align 8, !tbaa !22
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %44, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, i8 0, i64 16, i1 false)
  %45 = load i32, ptr %39, align 8, !tbaa !24
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %38
  %48 = and i32 %45, 1
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %49, ptr %50, align 8, !tbaa !25
  br label %51

51:                                               ; preds = %47, %38
  store i32 16180, ptr %31, align 8, !tbaa !20
  %52 = getelementptr inbounds nuw i8, ptr %28, i64 12
  store i32 0, ptr %52, align 4, !tbaa !26
  %53 = getelementptr inbounds nuw i8, ptr %28, i64 20
  store i32 0, ptr %53, align 4, !tbaa !27
  %54 = getelementptr inbounds nuw i8, ptr %28, i64 24
  store i32 -1, ptr %54, align 8, !tbaa !28
  %55 = getelementptr inbounds nuw i8, ptr %28, i64 28
  store i32 32768, ptr %55, align 4, !tbaa !29
  %56 = getelementptr inbounds nuw i8, ptr %28, i64 48
  store ptr null, ptr %56, align 8, !tbaa !30
  %57 = getelementptr inbounds nuw i8, ptr %28, i64 80
  store i64 0, ptr %57, align 8, !tbaa !31
  %58 = getelementptr inbounds nuw i8, ptr %28, i64 88
  store i32 0, ptr %58, align 8, !tbaa !32
  %59 = getelementptr inbounds nuw i8, ptr %28, i64 1368
  %60 = getelementptr inbounds nuw i8, ptr %28, i64 144
  store ptr %59, ptr %60, align 8, !tbaa !33
  %61 = getelementptr inbounds nuw i8, ptr %28, i64 112
  store ptr %59, ptr %61, align 8, !tbaa !34
  %62 = getelementptr inbounds nuw i8, ptr %28, i64 104
  store ptr %59, ptr %62, align 8, !tbaa !35
  %63 = getelementptr inbounds nuw i8, ptr %28, i64 7144
  store i32 1, ptr %63, align 8, !tbaa !36
  %64 = getelementptr inbounds nuw i8, ptr %28, i64 7148
  store i32 -1, ptr %64, align 4, !tbaa !37
  br label %67

65:                                               ; preds = %30
  %66 = load ptr, ptr %26, align 8, !tbaa !43
  tail call void %35(ptr noundef %66, ptr noundef nonnull %28) #10
  store ptr null, ptr %32, align 8, !tbaa !15
  br label %67

67:                                               ; preds = %3, %5, %10, %25, %51, %65
  %68 = phi i32 [ -6, %5 ], [ -6, %3 ], [ -2, %10 ], [ -4, %25 ], [ -2, %65 ], [ 0, %51 ]
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @inflatePrime(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %59, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %59, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %59, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %59, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %59

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %59

25:                                               ; preds = %20
  %26 = icmp eq i32 %1, 0
  br i1 %26, label %59, label %27

27:                                               ; preds = %25
  %28 = icmp slt i32 %1, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = getelementptr inbounds nuw i8, ptr %15, i64 80
  store i64 0, ptr %30, align 8, !tbaa !31
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 88
  store i32 0, ptr %31, align 8, !tbaa !32
  br label %59

32:                                               ; preds = %27
  %33 = icmp samesign ugt i32 %1, 16
  br i1 %33, label %59, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 88
  %36 = load i32, ptr %35, align 8, !tbaa !32
  %37 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %36, i32 %1), !nosanitize !47
  %38 = extractvalue { i32, i1 } %37, 1, !nosanitize !47
  br i1 %38, label %39, label %40, !prof !48, !nosanitize !47

39:                                               ; preds = %34
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

40:                                               ; preds = %34
  %41 = extractvalue { i32, i1 } %37, 0, !nosanitize !47
  %42 = icmp ugt i32 %41, 32
  br i1 %42, label %59, label %43

43:                                               ; preds = %40
  %44 = zext nneg i32 %1 to i64
  %45 = shl nsw i64 -1, %44
  %46 = trunc nsw i64 %45 to i32
  %47 = xor i32 %46, -1
  %48 = and i32 %2, %47
  %49 = zext nneg i32 %48 to i64
  %50 = zext nneg i32 %36 to i64
  %51 = shl i64 %49, %50
  %52 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %53 = load i64, ptr %52, align 8, !tbaa !31
  %54 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %53, i64 %51), !nosanitize !47
  %55 = extractvalue { i64, i1 } %54, 1, !nosanitize !47
  br i1 %55, label %56, label %57, !prof !48, !nosanitize !47

56:                                               ; preds = %43
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

57:                                               ; preds = %43
  %58 = extractvalue { i64, i1 } %54, 0, !nosanitize !47
  store i64 %58, ptr %52, align 8, !tbaa !31
  store i32 %41, ptr %35, align 8, !tbaa !32
  br label %59

59:                                               ; preds = %13, %17, %3, %5, %9, %32, %40, %25, %20, %57, %29
  %60 = phi i32 [ 0, %29 ], [ 0, %57 ], [ -2, %20 ], [ 0, %25 ], [ -2, %40 ], [ -2, %32 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %60
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @inflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %4 = icmp eq ptr %0, null
  br i1 %4, label %2565, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %2565, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %2565, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %2565, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %2565

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %2565

25:                                               ; preds = %20
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = icmp eq ptr %27, null
  br i1 %28, label %2565, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 8, !tbaa !50
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i32, ptr %33, align 8, !tbaa !51
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %2565

36:                                               ; preds = %32, %29
  %37 = icmp eq i32 %22, 16191
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  store i32 16192, ptr %21, align 8, !tbaa !20
  br label %39

39:                                               ; preds = %36, %38
  %40 = phi i32 [ %22, %36 ], [ 16192, %38 ]
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %42 = load i32, ptr %41, align 8, !tbaa !52
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %44 = load i32, ptr %43, align 8, !tbaa !51
  %45 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %46 = load i64, ptr %45, align 8, !tbaa !31
  %47 = getelementptr inbounds nuw i8, ptr %15, i64 88
  %48 = load i32, ptr %47, align 8, !tbaa !32
  %49 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %51 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %52 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %53 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %56 = getelementptr inbounds nuw i8, ptr %15, i64 92
  %57 = getelementptr inbounds nuw i8, ptr %15, i64 132
  %58 = getelementptr inbounds nuw i8, ptr %15, i64 136
  %59 = getelementptr inbounds nuw i8, ptr %15, i64 128
  %60 = getelementptr inbounds nuw i8, ptr %15, i64 140
  %61 = getelementptr inbounds nuw i8, ptr %15, i64 152
  %62 = getelementptr inbounds nuw i8, ptr %15, i64 1368
  %63 = getelementptr inbounds nuw i8, ptr %15, i64 144
  %64 = getelementptr inbounds nuw i8, ptr %15, i64 112
  %65 = getelementptr inbounds nuw i8, ptr %15, i64 104
  %66 = getelementptr inbounds nuw i8, ptr %15, i64 120
  %67 = getelementptr inbounds nuw i8, ptr %15, i64 792
  %68 = getelementptr inbounds nuw i8, ptr %15, i64 664
  %69 = getelementptr inbounds nuw i8, ptr %15, i64 124
  %70 = icmp eq i32 %1, 6
  %71 = getelementptr inbounds nuw i8, ptr %15, i64 7148
  %72 = getelementptr inbounds nuw i8, ptr %15, i64 100
  %73 = getelementptr inbounds nuw i8, ptr %15, i64 7152
  %74 = getelementptr inbounds nuw i8, ptr %15, i64 96
  %75 = getelementptr inbounds nuw i8, ptr %15, i64 64
  %76 = getelementptr inbounds nuw i8, ptr %15, i64 7144
  %77 = getelementptr inbounds nuw i8, ptr %15, i64 68
  %78 = getelementptr inbounds nuw i8, ptr %15, i64 72
  %79 = getelementptr inbounds nuw i8, ptr %15, i64 60
  %80 = getelementptr inbounds nuw i8, ptr %15, i64 20
  %81 = add i32 %1, -5
  %82 = icmp ult i32 %81, 2
  %83 = getelementptr inbounds nuw i8, ptr %15, i64 12
  %84 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %85 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %86 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %87 = getelementptr inbounds nuw i8, ptr %3, i64 3
  %88 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %89 = getelementptr inbounds nuw i8, ptr %15, i64 28
  br label %90

90:                                               ; preds = %2245, %39
  %91 = phi i32 [ %40, %39 ], [ %2254, %2245 ]
  %92 = phi ptr [ %30, %39 ], [ %2246, %2245 ]
  %93 = phi ptr [ %27, %39 ], [ %2247, %2245 ]
  %94 = phi i32 [ %44, %39 ], [ %2248, %2245 ]
  %95 = phi i32 [ %42, %39 ], [ %2249, %2245 ]
  %96 = phi i64 [ %46, %39 ], [ %2250, %2245 ]
  %97 = phi i32 [ %48, %39 ], [ %2251, %2245 ]
  %98 = phi i32 [ %42, %39 ], [ %2252, %2245 ]
  %99 = phi i32 [ 0, %39 ], [ %2253, %2245 ]
  switch i32 %91, label %2565 [
    i32 16180, label %121
    i32 16181, label %116
    i32 16182, label %284
    i32 16183, label %373
    i32 16184, label %434
    i32 16185, label %514
    i32 16186, label %595
    i32 16187, label %659
    i32 16188, label %723
    i32 16189, label %111
    i32 16190, label %855
    i32 16191, label %865
    i32 16192, label %870
    i32 16193, label %924
    i32 16194, label %1010
    i32 16195, label %1015
    i32 16196, label %106
    i32 16197, label %1100
    i32 16198, label %1175
    i32 16199, label %1460
    i32 16200, label %1466
    i32 16201, label %102
    i32 16202, label %1707
    i32 16203, label %100
    i32 16204, label %1934
    i32 16205, label %2015
    i32 16206, label %2022
    i32 16207, label %104
    i32 16208, label %2371
    i32 16209, label %2372
    i32 16210, label %2564
  ]

100:                                              ; preds = %90
  %101 = load i32, ptr %72, align 4, !tbaa !53
  br label %1866

102:                                              ; preds = %90
  %103 = load i32, ptr %72, align 4, !tbaa !53
  br label %1638

104:                                              ; preds = %90
  %105 = load i32, ptr %49, align 8, !tbaa !24
  br label %2152

106:                                              ; preds = %90
  %107 = icmp ult i32 %97, 14
  br i1 %107, label %108, label %1079

108:                                              ; preds = %106
  %109 = zext nneg i32 %97 to i64
  %110 = icmp eq i32 %94, 0
  br i1 %110, label %2353, label %1047

111:                                              ; preds = %90
  %112 = icmp ult i32 %97, 32
  br i1 %112, label %113, label %848

113:                                              ; preds = %111
  %114 = zext nneg i32 %97 to i64
  %115 = icmp eq i32 %94, 0
  br i1 %115, label %2296, label %795

116:                                              ; preds = %90
  %117 = icmp ult i32 %97, 16
  br i1 %117, label %118, label %251

118:                                              ; preds = %116
  %119 = zext nneg i32 %97 to i64
  %120 = icmp eq i32 %94, 0
  br i1 %120, label %2290, label %219

121:                                              ; preds = %90
  %122 = load i32, ptr %49, align 8, !tbaa !24
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %121
  %125 = icmp ult i32 %97, 16
  br i1 %125, label %126, label %162

126:                                              ; preds = %124
  %127 = zext nneg i32 %97 to i64
  %128 = icmp eq i32 %94, 0
  br i1 %128, label %2260, label %130

129:                                              ; preds = %121
  store i32 16192, ptr %21, align 8, !tbaa !20
  br label %2245

130:                                              ; preds = %126
  %131 = load i8, ptr %92, align 1, !tbaa !44
  %132 = zext i8 %131 to i64
  %133 = shl nuw nsw i64 %132, %127
  %134 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %96, i64 %133), !nosanitize !47
  %135 = extractvalue { i64, i1 } %134, 1, !nosanitize !47
  br i1 %135, label %136, label %137, !prof !48, !nosanitize !47

136:                                              ; preds = %145, %130
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

137:                                              ; preds = %130
  %138 = extractvalue { i64, i1 } %134, 0, !nosanitize !47
  %139 = getelementptr inbounds nuw i8, ptr %92, i64 1
  %140 = add i32 %94, -1
  %141 = add nuw nsw i64 %127, 8
  %142 = icmp ult i32 %97, 8
  br i1 %142, label %143, label %156, !llvm.loop !54

143:                                              ; preds = %137
  %144 = icmp eq i32 %140, 0
  br i1 %144, label %2260, label %145

145:                                              ; preds = %143
  %146 = load i8, ptr %139, align 1, !tbaa !44
  %147 = zext i8 %146 to i64
  %148 = shl nuw nsw i64 %147, %141
  %149 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %138, i64 %148), !nosanitize !47
  %150 = extractvalue { i64, i1 } %149, 1, !nosanitize !47
  br i1 %150, label %136, label %151, !prof !48, !nosanitize !47

151:                                              ; preds = %145
  %152 = extractvalue { i64, i1 } %149, 0, !nosanitize !47
  %153 = getelementptr inbounds nuw i8, ptr %92, i64 2
  %154 = add i32 %94, -2
  %155 = or disjoint i64 %127, 16
  br label %156

156:                                              ; preds = %151, %137
  %157 = phi i64 [ %138, %137 ], [ %152, %151 ]
  %158 = phi ptr [ %139, %137 ], [ %153, %151 ]
  %159 = phi i32 [ %140, %137 ], [ %154, %151 ]
  %160 = phi i64 [ %141, %137 ], [ %155, %151 ]
  %161 = trunc nuw nsw i64 %160 to i32
  br label %162

162:                                              ; preds = %156, %124
  %163 = phi ptr [ %92, %124 ], [ %158, %156 ]
  %164 = phi i32 [ %94, %124 ], [ %159, %156 ]
  %165 = phi i64 [ %96, %124 ], [ %157, %156 ]
  %166 = phi i32 [ %97, %124 ], [ %161, %156 ]
  %167 = and i32 %122, 2
  %168 = icmp ne i32 %167, 0
  %169 = icmp eq i64 %165, 35615
  %170 = select i1 %168, i1 %169, i1 false
  br i1 %170, label %171, label %178

171:                                              ; preds = %162
  %172 = load i32, ptr %88, align 8, !tbaa !42
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  store i32 15, ptr %88, align 8, !tbaa !42
  br label %175

175:                                              ; preds = %174, %171
  %176 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  store i64 %176, ptr %53, align 8, !tbaa !56
  store i8 31, ptr %3, align 1, !tbaa !44
  store i8 -117, ptr %85, align 1, !tbaa !44
  %177 = call i64 @crc32(i64 noundef %176, ptr noundef nonnull %3, i32 noundef 2) #10
  store i64 %177, ptr %53, align 8, !tbaa !56
  store i32 16181, ptr %21, align 8, !tbaa !20
  br label %2245

178:                                              ; preds = %162
  %179 = load ptr, ptr %84, align 8, !tbaa !30
  %180 = icmp eq ptr %179, null
  br i1 %180, label %183, label %181

181:                                              ; preds = %178
  %182 = getelementptr inbounds nuw i8, ptr %179, i64 72
  store i32 -1, ptr %182, align 8, !tbaa !57
  br label %183

183:                                              ; preds = %181, %178
  %184 = and i32 %122, 1
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %193, label %186

186:                                              ; preds = %183
  %187 = shl i64 %165, 8
  %188 = and i64 %187, 65280
  %189 = lshr i64 %165, 8
  %190 = add nuw nsw i64 %188, %189
  %191 = urem i64 %190, 31
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %186, %183
  store ptr @.str.1, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2245

194:                                              ; preds = %186
  %195 = and i64 %165, 15
  %196 = icmp eq i64 %195, 8
  br i1 %196, label %198, label %197

197:                                              ; preds = %194
  store ptr @.str.2, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2245

198:                                              ; preds = %194
  %199 = lshr i64 %165, 4
  %200 = add i32 %166, -4
  %201 = trunc i64 %199 to i32
  %202 = and i32 %201, 15
  %203 = add nuw nsw i32 %202, 8
  %204 = load i32, ptr %88, align 8, !tbaa !42
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %198
  store i32 %203, ptr %88, align 8, !tbaa !42
  br label %207

207:                                              ; preds = %206, %198
  %208 = phi i32 [ %203, %206 ], [ %204, %198 ]
  %209 = icmp samesign ugt i32 %202, 7
  %210 = icmp ugt i32 %203, %208
  %211 = select i1 %209, i1 true, i1 %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  store ptr @.str.3, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2245

213:                                              ; preds = %207
  %214 = shl nuw nsw i32 256, %202
  store i32 %214, ptr %89, align 4, !tbaa !29
  store i32 0, ptr %52, align 8, !tbaa !28
  %215 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  store i64 %215, ptr %53, align 8, !tbaa !56
  store i64 %215, ptr %54, align 8, !tbaa !25
  %216 = and i64 %165, 8192
  %217 = icmp eq i64 %216, 0
  %218 = select i1 %217, i32 16191, i32 16189
  store i32 %218, ptr %21, align 8, !tbaa !20
  br label %2245

219:                                              ; preds = %118
  %220 = load i8, ptr %92, align 1, !tbaa !44
  %221 = zext i8 %220 to i64
  %222 = shl nuw nsw i64 %221, %119
  %223 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %96, i64 %222), !nosanitize !47
  %224 = extractvalue { i64, i1 } %223, 1, !nosanitize !47
  br i1 %224, label %225, label %226, !prof !48, !nosanitize !47

225:                                              ; preds = %234, %219
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

226:                                              ; preds = %219
  %227 = extractvalue { i64, i1 } %223, 0, !nosanitize !47
  %228 = getelementptr inbounds nuw i8, ptr %92, i64 1
  %229 = add i32 %94, -1
  %230 = add nuw nsw i64 %119, 8
  %231 = icmp ult i32 %97, 8
  br i1 %231, label %232, label %245, !llvm.loop !59

232:                                              ; preds = %226
  %233 = icmp eq i32 %229, 0
  br i1 %233, label %2290, label %234

234:                                              ; preds = %232
  %235 = load i8, ptr %228, align 1, !tbaa !44
  %236 = zext i8 %235 to i64
  %237 = shl nuw nsw i64 %236, %230
  %238 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %227, i64 %237), !nosanitize !47
  %239 = extractvalue { i64, i1 } %238, 1, !nosanitize !47
  br i1 %239, label %225, label %240, !prof !48, !nosanitize !47

240:                                              ; preds = %234
  %241 = extractvalue { i64, i1 } %238, 0, !nosanitize !47
  %242 = getelementptr inbounds nuw i8, ptr %92, i64 2
  %243 = add i32 %94, -2
  %244 = or disjoint i64 %119, 16
  br label %245

245:                                              ; preds = %240, %226
  %246 = phi i64 [ %227, %226 ], [ %241, %240 ]
  %247 = phi ptr [ %228, %226 ], [ %242, %240 ]
  %248 = phi i32 [ %229, %226 ], [ %243, %240 ]
  %249 = phi i64 [ %230, %226 ], [ %244, %240 ]
  %250 = trunc nuw nsw i64 %249 to i32
  br label %251

251:                                              ; preds = %245, %116
  %252 = phi ptr [ %92, %116 ], [ %247, %245 ]
  %253 = phi i32 [ %94, %116 ], [ %248, %245 ]
  %254 = phi i64 [ %96, %116 ], [ %246, %245 ]
  %255 = phi i32 [ %97, %116 ], [ %250, %245 ]
  %256 = trunc i64 %254 to i32
  store i32 %256, ptr %52, align 8, !tbaa !28
  %257 = and i32 %256, 255
  %258 = icmp eq i32 %257, 8
  br i1 %258, label %260, label %259

259:                                              ; preds = %251
  store ptr @.str.2, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2245

260:                                              ; preds = %251
  %261 = and i32 %256, 57344
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %264, label %263

263:                                              ; preds = %260
  store ptr @.str.4, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2245

264:                                              ; preds = %260
  %265 = load ptr, ptr %84, align 8, !tbaa !30
  %266 = icmp eq ptr %265, null
  br i1 %266, label %270, label %267

267:                                              ; preds = %264
  %268 = lshr i32 %256, 8
  %269 = and i32 %268, 1
  store i32 %269, ptr %265, align 8, !tbaa !60
  br label %270

270:                                              ; preds = %267, %264
  %271 = and i32 %256, 512
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %283, label %273

273:                                              ; preds = %270
  %274 = load i32, ptr %49, align 8, !tbaa !24
  %275 = and i32 %274, 4
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %283, label %277

277:                                              ; preds = %273
  %278 = trunc i64 %254 to i8
  store i8 %278, ptr %3, align 1, !tbaa !44
  %279 = lshr i64 %254, 8
  %280 = trunc i64 %279 to i8
  store i8 %280, ptr %85, align 1, !tbaa !44
  %281 = load i64, ptr %53, align 8, !tbaa !56
  %282 = call i64 @crc32(i64 noundef %281, ptr noundef nonnull %3, i32 noundef 2) #10
  store i64 %282, ptr %53, align 8, !tbaa !56
  br label %283

283:                                              ; preds = %277, %273, %270
  store i32 16182, ptr %21, align 8, !tbaa !20
  br label %286

284:                                              ; preds = %90
  %285 = icmp ult i32 %97, 32
  br i1 %285, label %286, label %346

286:                                              ; preds = %283, %284
  %287 = phi i32 [ 0, %283 ], [ %97, %284 ]
  %288 = phi i64 [ 0, %283 ], [ %96, %284 ]
  %289 = phi i32 [ %253, %283 ], [ %94, %284 ]
  %290 = phi ptr [ %252, %283 ], [ %92, %284 ]
  %291 = zext nneg i32 %287 to i64
  %292 = icmp eq i32 %289, 0
  br i1 %292, label %2284, label %293

293:                                              ; preds = %286
  %294 = load i8, ptr %290, align 1, !tbaa !44
  %295 = zext i8 %294 to i64
  %296 = shl nuw nsw i64 %295, %291
  %297 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %288, i64 %296), !nosanitize !47
  %298 = extractvalue { i64, i1 } %297, 1, !nosanitize !47
  br i1 %298, label %299, label %300, !prof !48, !nosanitize !47

299:                                              ; preds = %336, %322, %308, %293
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

300:                                              ; preds = %293
  %301 = extractvalue { i64, i1 } %297, 0, !nosanitize !47
  %302 = getelementptr inbounds nuw i8, ptr %290, i64 1
  %303 = add i32 %289, -1
  %304 = add nuw nsw i64 %291, 8
  %305 = icmp samesign ult i32 %287, 24
  br i1 %305, label %306, label %346, !llvm.loop !61

306:                                              ; preds = %300
  %307 = icmp eq i32 %303, 0
  br i1 %307, label %2284, label %308

308:                                              ; preds = %306
  %309 = load i8, ptr %302, align 1, !tbaa !44
  %310 = zext i8 %309 to i64
  %311 = shl nuw nsw i64 %310, %304
  %312 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %301, i64 %311), !nosanitize !47
  %313 = extractvalue { i64, i1 } %312, 1, !nosanitize !47
  br i1 %313, label %299, label %314, !prof !48, !nosanitize !47

314:                                              ; preds = %308
  %315 = extractvalue { i64, i1 } %312, 0, !nosanitize !47
  %316 = getelementptr inbounds nuw i8, ptr %290, i64 2
  %317 = add i32 %289, -2
  %318 = add nuw nsw i64 %291, 16
  %319 = icmp samesign ult i32 %287, 16
  br i1 %319, label %320, label %346, !llvm.loop !61

320:                                              ; preds = %314
  %321 = icmp eq i32 %317, 0
  br i1 %321, label %2284, label %322

322:                                              ; preds = %320
  %323 = load i8, ptr %316, align 1, !tbaa !44
  %324 = zext i8 %323 to i64
  %325 = shl nuw nsw i64 %324, %318
  %326 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %315, i64 %325), !nosanitize !47
  %327 = extractvalue { i64, i1 } %326, 1, !nosanitize !47
  br i1 %327, label %299, label %328, !prof !48, !nosanitize !47

328:                                              ; preds = %322
  %329 = extractvalue { i64, i1 } %326, 0, !nosanitize !47
  %330 = getelementptr inbounds nuw i8, ptr %290, i64 3
  %331 = add i32 %289, -3
  %332 = add nuw nsw i64 %291, 24
  %333 = icmp samesign ult i32 %287, 8
  br i1 %333, label %334, label %346, !llvm.loop !61

334:                                              ; preds = %328
  %335 = icmp eq i32 %331, 0
  br i1 %335, label %2284, label %336

336:                                              ; preds = %334
  %337 = load i8, ptr %330, align 1, !tbaa !44
  %338 = zext i8 %337 to i64
  %339 = shl nuw nsw i64 %338, %332
  %340 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %329, i64 %339), !nosanitize !47
  %341 = extractvalue { i64, i1 } %340, 1, !nosanitize !47
  br i1 %341, label %299, label %342, !prof !48, !nosanitize !47

342:                                              ; preds = %336
  %343 = extractvalue { i64, i1 } %340, 0, !nosanitize !47
  %344 = getelementptr inbounds nuw i8, ptr %290, i64 4
  %345 = add i32 %289, -4
  br label %346

346:                                              ; preds = %300, %314, %328, %342, %284
  %347 = phi ptr [ %92, %284 ], [ %302, %300 ], [ %316, %314 ], [ %330, %328 ], [ %344, %342 ]
  %348 = phi i32 [ %94, %284 ], [ %303, %300 ], [ %317, %314 ], [ %331, %328 ], [ %345, %342 ]
  %349 = phi i64 [ %96, %284 ], [ %301, %300 ], [ %315, %314 ], [ %329, %328 ], [ %343, %342 ]
  %350 = load ptr, ptr %84, align 8, !tbaa !30
  %351 = icmp eq ptr %350, null
  br i1 %351, label %354, label %352

352:                                              ; preds = %346
  %353 = getelementptr inbounds nuw i8, ptr %350, i64 8
  store i64 %349, ptr %353, align 8, !tbaa !62
  br label %354

354:                                              ; preds = %352, %346
  %355 = load i32, ptr %52, align 8, !tbaa !28
  %356 = and i32 %355, 512
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %372, label %358

358:                                              ; preds = %354
  %359 = load i32, ptr %49, align 8, !tbaa !24
  %360 = and i32 %359, 4
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %372, label %362

362:                                              ; preds = %358
  %363 = trunc i64 %349 to i8
  store i8 %363, ptr %3, align 1, !tbaa !44
  %364 = lshr i64 %349, 8
  %365 = trunc i64 %364 to i8
  store i8 %365, ptr %85, align 1, !tbaa !44
  %366 = lshr i64 %349, 16
  %367 = trunc i64 %366 to i8
  store i8 %367, ptr %86, align 1, !tbaa !44
  %368 = lshr i64 %349, 24
  %369 = trunc i64 %368 to i8
  store i8 %369, ptr %87, align 1, !tbaa !44
  %370 = load i64, ptr %53, align 8, !tbaa !56
  %371 = call i64 @crc32(i64 noundef %370, ptr noundef nonnull %3, i32 noundef 4) #10
  store i64 %371, ptr %53, align 8, !tbaa !56
  br label %372

372:                                              ; preds = %362, %358, %354
  store i32 16183, ptr %21, align 8, !tbaa !20
  br label %375

373:                                              ; preds = %90
  %374 = icmp ult i32 %97, 16
  br i1 %374, label %375, label %407

375:                                              ; preds = %372, %373
  %376 = phi i32 [ 0, %372 ], [ %97, %373 ]
  %377 = phi i64 [ 0, %372 ], [ %96, %373 ]
  %378 = phi i32 [ %348, %372 ], [ %94, %373 ]
  %379 = phi ptr [ %347, %372 ], [ %92, %373 ]
  %380 = zext nneg i32 %376 to i64
  %381 = icmp eq i32 %378, 0
  br i1 %381, label %2278, label %382

382:                                              ; preds = %375
  %383 = load i8, ptr %379, align 1, !tbaa !44
  %384 = zext i8 %383 to i64
  %385 = shl nuw nsw i64 %384, %380
  %386 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %377, i64 %385), !nosanitize !47
  %387 = extractvalue { i64, i1 } %386, 1, !nosanitize !47
  br i1 %387, label %388, label %389, !prof !48, !nosanitize !47

388:                                              ; preds = %397, %382
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

389:                                              ; preds = %382
  %390 = extractvalue { i64, i1 } %386, 0, !nosanitize !47
  %391 = getelementptr inbounds nuw i8, ptr %379, i64 1
  %392 = add i32 %378, -1
  %393 = add nuw nsw i64 %380, 8
  %394 = icmp samesign ult i32 %376, 8
  br i1 %394, label %395, label %407, !llvm.loop !63

395:                                              ; preds = %389
  %396 = icmp eq i32 %392, 0
  br i1 %396, label %2278, label %397

397:                                              ; preds = %395
  %398 = load i8, ptr %391, align 1, !tbaa !44
  %399 = zext i8 %398 to i64
  %400 = shl nuw nsw i64 %399, %393
  %401 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %390, i64 %400), !nosanitize !47
  %402 = extractvalue { i64, i1 } %401, 1, !nosanitize !47
  br i1 %402, label %388, label %403, !prof !48, !nosanitize !47

403:                                              ; preds = %397
  %404 = extractvalue { i64, i1 } %401, 0, !nosanitize !47
  %405 = getelementptr inbounds nuw i8, ptr %379, i64 2
  %406 = add i32 %378, -2
  br label %407

407:                                              ; preds = %389, %403, %373
  %408 = phi ptr [ %92, %373 ], [ %391, %389 ], [ %405, %403 ]
  %409 = phi i32 [ %94, %373 ], [ %392, %389 ], [ %406, %403 ]
  %410 = phi i64 [ %96, %373 ], [ %390, %389 ], [ %404, %403 ]
  %411 = load ptr, ptr %84, align 8, !tbaa !30
  %412 = icmp eq ptr %411, null
  br i1 %412, label %420, label %413

413:                                              ; preds = %407
  %414 = trunc i64 %410 to i32
  %415 = and i32 %414, 255
  %416 = getelementptr inbounds nuw i8, ptr %411, i64 16
  store i32 %415, ptr %416, align 8, !tbaa !64
  %417 = lshr i64 %410, 8
  %418 = trunc i64 %417 to i32
  %419 = getelementptr inbounds nuw i8, ptr %411, i64 20
  store i32 %418, ptr %419, align 4, !tbaa !65
  br label %420

420:                                              ; preds = %413, %407
  %421 = load i32, ptr %52, align 8, !tbaa !28
  %422 = and i32 %421, 512
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %438, label %424

424:                                              ; preds = %420
  %425 = load i32, ptr %49, align 8, !tbaa !24
  %426 = and i32 %425, 4
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %438, label %428

428:                                              ; preds = %424
  %429 = trunc i64 %410 to i8
  store i8 %429, ptr %3, align 1, !tbaa !44
  %430 = lshr i64 %410, 8
  %431 = trunc i64 %430 to i8
  store i8 %431, ptr %85, align 1, !tbaa !44
  %432 = load i64, ptr %53, align 8, !tbaa !56
  %433 = call i64 @crc32(i64 noundef %432, ptr noundef nonnull %3, i32 noundef 2) #10
  store i64 %433, ptr %53, align 8, !tbaa !56
  br label %438

434:                                              ; preds = %90
  %435 = load i32, ptr %52, align 8, !tbaa !28
  %436 = and i32 %435, 1024
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %500, label %442

438:                                              ; preds = %428, %424, %420
  store i32 16184, ptr %21, align 8, !tbaa !20
  %439 = load i32, ptr %52, align 8, !tbaa !28
  %440 = and i32 %439, 1024
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %500, label %444

442:                                              ; preds = %434
  %443 = icmp ult i32 %97, 16
  br i1 %443, label %444, label %477

444:                                              ; preds = %438, %442
  %445 = phi ptr [ %92, %442 ], [ %408, %438 ]
  %446 = phi i32 [ %94, %442 ], [ %409, %438 ]
  %447 = phi i64 [ %96, %442 ], [ 0, %438 ]
  %448 = phi i32 [ %97, %442 ], [ 0, %438 ]
  %449 = phi i32 [ %435, %442 ], [ %439, %438 ]
  %450 = zext nneg i32 %448 to i64
  %451 = icmp eq i32 %446, 0
  br i1 %451, label %2272, label %452

452:                                              ; preds = %444
  %453 = load i8, ptr %445, align 1, !tbaa !44
  %454 = zext i8 %453 to i64
  %455 = shl nuw nsw i64 %454, %450
  %456 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %447, i64 %455), !nosanitize !47
  %457 = extractvalue { i64, i1 } %456, 1, !nosanitize !47
  br i1 %457, label %458, label %459, !prof !48, !nosanitize !47

458:                                              ; preds = %467, %452
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

459:                                              ; preds = %452
  %460 = extractvalue { i64, i1 } %456, 0, !nosanitize !47
  %461 = getelementptr inbounds nuw i8, ptr %445, i64 1
  %462 = add i32 %446, -1
  %463 = add nuw nsw i64 %450, 8
  %464 = icmp samesign ult i32 %448, 8
  br i1 %464, label %465, label %477, !llvm.loop !66

465:                                              ; preds = %459
  %466 = icmp eq i32 %462, 0
  br i1 %466, label %2272, label %467

467:                                              ; preds = %465
  %468 = load i8, ptr %461, align 1, !tbaa !44
  %469 = zext i8 %468 to i64
  %470 = shl nuw nsw i64 %469, %463
  %471 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %460, i64 %470), !nosanitize !47
  %472 = extractvalue { i64, i1 } %471, 1, !nosanitize !47
  br i1 %472, label %458, label %473, !prof !48, !nosanitize !47

473:                                              ; preds = %467
  %474 = extractvalue { i64, i1 } %471, 0, !nosanitize !47
  %475 = getelementptr inbounds nuw i8, ptr %445, i64 2
  %476 = add i32 %446, -2
  br label %477

477:                                              ; preds = %459, %473, %442
  %478 = phi i32 [ %435, %442 ], [ %449, %473 ], [ %449, %459 ]
  %479 = phi ptr [ %92, %442 ], [ %461, %459 ], [ %475, %473 ]
  %480 = phi i32 [ %94, %442 ], [ %462, %459 ], [ %476, %473 ]
  %481 = phi i64 [ %96, %442 ], [ %460, %459 ], [ %474, %473 ]
  %482 = trunc i64 %481 to i32
  store i32 %482, ptr %56, align 4, !tbaa !67
  %483 = load ptr, ptr %84, align 8, !tbaa !30
  %484 = icmp eq ptr %483, null
  br i1 %484, label %487, label %485

485:                                              ; preds = %477
  %486 = getelementptr inbounds nuw i8, ptr %483, i64 32
  store i32 %482, ptr %486, align 8, !tbaa !68
  br label %487

487:                                              ; preds = %485, %477
  %488 = and i32 %478, 512
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %509, label %490

490:                                              ; preds = %487
  %491 = load i32, ptr %49, align 8, !tbaa !24
  %492 = and i32 %491, 4
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %509, label %494

494:                                              ; preds = %490
  %495 = trunc i64 %481 to i8
  store i8 %495, ptr %3, align 1, !tbaa !44
  %496 = lshr i64 %481, 8
  %497 = trunc i64 %496 to i8
  store i8 %497, ptr %85, align 1, !tbaa !44
  %498 = load i64, ptr %53, align 8, !tbaa !56
  %499 = call i64 @crc32(i64 noundef %498, ptr noundef nonnull %3, i32 noundef 2) #10
  store i64 %499, ptr %53, align 8, !tbaa !56
  br label %509

500:                                              ; preds = %438, %434
  %501 = phi i32 [ 0, %438 ], [ %97, %434 ]
  %502 = phi i64 [ 0, %438 ], [ %96, %434 ]
  %503 = phi i32 [ %409, %438 ], [ %94, %434 ]
  %504 = phi ptr [ %408, %438 ], [ %92, %434 ]
  %505 = load ptr, ptr %84, align 8, !tbaa !30
  %506 = icmp eq ptr %505, null
  br i1 %506, label %509, label %507

507:                                              ; preds = %500
  %508 = getelementptr inbounds nuw i8, ptr %505, i64 24
  store ptr null, ptr %508, align 8, !tbaa !69
  br label %509

509:                                              ; preds = %494, %490, %487, %500, %507
  %510 = phi ptr [ %504, %507 ], [ %504, %500 ], [ %479, %487 ], [ %479, %490 ], [ %479, %494 ]
  %511 = phi i32 [ %503, %507 ], [ %503, %500 ], [ %480, %487 ], [ %480, %490 ], [ %480, %494 ]
  %512 = phi i64 [ %502, %507 ], [ %502, %500 ], [ 0, %487 ], [ 0, %490 ], [ 0, %494 ]
  %513 = phi i32 [ %501, %507 ], [ %501, %500 ], [ 0, %487 ], [ 0, %490 ], [ 0, %494 ]
  store i32 16185, ptr %21, align 8, !tbaa !20
  br label %514

514:                                              ; preds = %90, %509
  %515 = phi ptr [ %510, %509 ], [ %92, %90 ]
  %516 = phi i32 [ %511, %509 ], [ %94, %90 ]
  %517 = phi i64 [ %512, %509 ], [ %96, %90 ]
  %518 = phi i32 [ %513, %509 ], [ %97, %90 ]
  %519 = load i32, ptr %52, align 8, !tbaa !28
  %520 = and i32 %519, 1024
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %592, label %522

522:                                              ; preds = %514
  %523 = load i32, ptr %56, align 4, !tbaa !67
  %524 = call i32 @llvm.umin.i32(i32 %523, i32 %516)
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %587, label %526

526:                                              ; preds = %522
  %527 = load ptr, ptr %84, align 8, !tbaa !30
  %528 = icmp eq ptr %527, null
  br i1 %528, label %562, label %529

529:                                              ; preds = %526
  %530 = getelementptr inbounds nuw i8, ptr %527, i64 24
  %531 = load ptr, ptr %530, align 8, !tbaa !69
  %532 = icmp eq ptr %531, null
  br i1 %532, label %562, label %533

533:                                              ; preds = %529
  %534 = getelementptr inbounds nuw i8, ptr %527, i64 32
  %535 = load i32, ptr %534, align 8, !tbaa !68
  %536 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %535, i32 %523), !nosanitize !47
  %537 = extractvalue { i32, i1 } %536, 0, !nosanitize !47
  %538 = extractvalue { i32, i1 } %536, 1, !nosanitize !47
  br i1 %538, label %539, label %540, !prof !48, !nosanitize !47

539:                                              ; preds = %533
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

540:                                              ; preds = %533
  %541 = getelementptr inbounds nuw i8, ptr %527, i64 36
  %542 = load i32, ptr %541, align 4, !tbaa !70
  %543 = icmp ult i32 %537, %542
  br i1 %543, label %544, label %562

544:                                              ; preds = %540
  %545 = zext i32 %537 to i64
  %546 = getelementptr inbounds nuw i8, ptr %531, i64 %545
  %547 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %537, i32 %524), !nosanitize !47
  %548 = extractvalue { i32, i1 } %547, 1, !nosanitize !47
  br i1 %548, label %549, label %550, !prof !48, !nosanitize !47

549:                                              ; preds = %544
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

550:                                              ; preds = %544
  %551 = extractvalue { i32, i1 } %547, 0, !nosanitize !47
  %552 = icmp ugt i32 %551, %542
  br i1 %552, label %553, label %558

553:                                              ; preds = %550
  %554 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %542, i32 %537), !nosanitize !47
  %555 = extractvalue { i32, i1 } %554, 0, !nosanitize !47
  %556 = extractvalue { i32, i1 } %554, 1, !nosanitize !47
  br i1 %556, label %557, label %558, !prof !48, !nosanitize !47

557:                                              ; preds = %553
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

558:                                              ; preds = %550, %553
  %559 = phi i32 [ %555, %553 ], [ %524, %550 ]
  %560 = zext i32 %559 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %546, ptr align 1 %515, i64 %560, i1 false)
  %561 = load i32, ptr %52, align 8, !tbaa !28
  br label %562

562:                                              ; preds = %558, %540, %529, %526
  %563 = phi i32 [ %561, %558 ], [ %519, %540 ], [ %519, %529 ], [ %519, %526 ]
  %564 = and i32 %563, 512
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %573, label %566

566:                                              ; preds = %562
  %567 = load i32, ptr %49, align 8, !tbaa !24
  %568 = and i32 %567, 4
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %573, label %570

570:                                              ; preds = %566
  %571 = load i64, ptr %53, align 8, !tbaa !56
  %572 = call i64 @crc32(i64 noundef %571, ptr noundef %515, i32 noundef %524) #10
  store i64 %572, ptr %53, align 8, !tbaa !56
  br label %573

573:                                              ; preds = %570, %566, %562
  %574 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %516, i32 %524), !nosanitize !47
  %575 = extractvalue { i32, i1 } %574, 0, !nosanitize !47
  %576 = extractvalue { i32, i1 } %574, 1, !nosanitize !47
  br i1 %576, label %577, label %578, !prof !48, !nosanitize !47

577:                                              ; preds = %573
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

578:                                              ; preds = %573
  %579 = load i32, ptr %56, align 4, !tbaa !67
  %580 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %579, i32 %524), !nosanitize !47
  %581 = extractvalue { i32, i1 } %580, 1, !nosanitize !47
  br i1 %581, label %582, label %583, !prof !48, !nosanitize !47

582:                                              ; preds = %578
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

583:                                              ; preds = %578
  %584 = extractvalue { i32, i1 } %580, 0, !nosanitize !47
  %585 = zext i32 %524 to i64
  %586 = getelementptr inbounds nuw i8, ptr %515, i64 %585
  store i32 %584, ptr %56, align 4, !tbaa !67
  br label %587

587:                                              ; preds = %583, %522
  %588 = phi i32 [ %584, %583 ], [ %523, %522 ]
  %589 = phi ptr [ %586, %583 ], [ %515, %522 ]
  %590 = phi i32 [ %575, %583 ], [ %516, %522 ]
  %591 = icmp eq i32 %588, 0
  br i1 %591, label %592, label %2372

592:                                              ; preds = %587, %514
  %593 = phi ptr [ %589, %587 ], [ %515, %514 ]
  %594 = phi i32 [ %590, %587 ], [ %516, %514 ]
  store i32 0, ptr %56, align 4, !tbaa !67
  store i32 16186, ptr %21, align 8, !tbaa !20
  br label %595

595:                                              ; preds = %90, %592
  %596 = phi ptr [ %593, %592 ], [ %92, %90 ]
  %597 = phi i32 [ %594, %592 ], [ %94, %90 ]
  %598 = phi i64 [ %517, %592 ], [ %96, %90 ]
  %599 = phi i32 [ %518, %592 ], [ %97, %90 ]
  %600 = load i32, ptr %52, align 8, !tbaa !28
  %601 = and i32 %600, 2048
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %651, label %603

603:                                              ; preds = %595
  %604 = icmp eq i32 %597, 0
  br i1 %604, label %2372, label %605

605:                                              ; preds = %603
  %606 = zext i32 %597 to i64
  br label %607

607:                                              ; preds = %605, %627
  %608 = phi i64 [ 0, %605 ], [ %609, %627 ]
  %609 = add nuw nsw i64 %608, 1
  %610 = getelementptr inbounds nuw i8, ptr %596, i64 %608
  %611 = load i8, ptr %610, align 1, !tbaa !44
  %612 = load ptr, ptr %84, align 8, !tbaa !30
  %613 = icmp eq ptr %612, null
  br i1 %613, label %627, label %614

614:                                              ; preds = %607
  %615 = getelementptr inbounds nuw i8, ptr %612, i64 40
  %616 = load ptr, ptr %615, align 8, !tbaa !71
  %617 = icmp eq ptr %616, null
  br i1 %617, label %627, label %618

618:                                              ; preds = %614
  %619 = load i32, ptr %56, align 4, !tbaa !67
  %620 = getelementptr inbounds nuw i8, ptr %612, i64 48
  %621 = load i32, ptr %620, align 8, !tbaa !72
  %622 = icmp ult i32 %619, %621
  br i1 %622, label %623, label %627

623:                                              ; preds = %618
  %624 = add nuw i32 %619, 1
  store i32 %624, ptr %56, align 4, !tbaa !67
  %625 = zext i32 %619 to i64
  %626 = getelementptr inbounds nuw i8, ptr %616, i64 %625
  store i8 %611, ptr %626, align 1, !tbaa !44
  br label %627

627:                                              ; preds = %607, %614, %618, %623
  %628 = icmp ne i8 %611, 0
  %629 = icmp samesign ult i64 %609, %606
  %630 = select i1 %628, i1 %629, i1 false
  br i1 %630, label %607, label %631, !llvm.loop !73

631:                                              ; preds = %627
  %632 = trunc nuw i64 %609 to i32
  %633 = load i32, ptr %52, align 8, !tbaa !28
  %634 = and i32 %633, 512
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %643, label %636

636:                                              ; preds = %631
  %637 = load i32, ptr %49, align 8, !tbaa !24
  %638 = and i32 %637, 4
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %643, label %640

640:                                              ; preds = %636
  %641 = load i64, ptr %53, align 8, !tbaa !56
  %642 = call i64 @crc32(i64 noundef %641, ptr noundef nonnull %596, i32 noundef %632) #10
  store i64 %642, ptr %53, align 8, !tbaa !56
  br label %643

643:                                              ; preds = %640, %636, %631
  %644 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %597, i32 %632), !nosanitize !47
  %645 = extractvalue { i32, i1 } %644, 1, !nosanitize !47
  br i1 %645, label %646, label %647, !prof !48, !nosanitize !47

646:                                              ; preds = %643
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

647:                                              ; preds = %643
  %648 = extractvalue { i32, i1 } %644, 0, !nosanitize !47
  %649 = and i64 %609, 4294967295
  %650 = getelementptr inbounds nuw i8, ptr %596, i64 %649
  br i1 %628, label %2372, label %656

651:                                              ; preds = %595
  %652 = load ptr, ptr %84, align 8, !tbaa !30
  %653 = icmp eq ptr %652, null
  br i1 %653, label %656, label %654

654:                                              ; preds = %651
  %655 = getelementptr inbounds nuw i8, ptr %652, i64 40
  store ptr null, ptr %655, align 8, !tbaa !71
  br label %656

656:                                              ; preds = %651, %654, %647
  %657 = phi ptr [ %650, %647 ], [ %596, %654 ], [ %596, %651 ]
  %658 = phi i32 [ %648, %647 ], [ %597, %654 ], [ %597, %651 ]
  store i32 0, ptr %56, align 4, !tbaa !67
  store i32 16187, ptr %21, align 8, !tbaa !20
  br label %659

659:                                              ; preds = %90, %656
  %660 = phi ptr [ %657, %656 ], [ %92, %90 ]
  %661 = phi i32 [ %658, %656 ], [ %94, %90 ]
  %662 = phi i64 [ %598, %656 ], [ %96, %90 ]
  %663 = phi i32 [ %599, %656 ], [ %97, %90 ]
  %664 = load i32, ptr %52, align 8, !tbaa !28
  %665 = and i32 %664, 4096
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %715, label %667

667:                                              ; preds = %659
  %668 = icmp eq i32 %661, 0
  br i1 %668, label %2372, label %669

669:                                              ; preds = %667
  %670 = zext i32 %661 to i64
  br label %671

671:                                              ; preds = %669, %691
  %672 = phi i64 [ 0, %669 ], [ %673, %691 ]
  %673 = add nuw nsw i64 %672, 1
  %674 = getelementptr inbounds nuw i8, ptr %660, i64 %672
  %675 = load i8, ptr %674, align 1, !tbaa !44
  %676 = load ptr, ptr %84, align 8, !tbaa !30
  %677 = icmp eq ptr %676, null
  br i1 %677, label %691, label %678

678:                                              ; preds = %671
  %679 = getelementptr inbounds nuw i8, ptr %676, i64 56
  %680 = load ptr, ptr %679, align 8, !tbaa !74
  %681 = icmp eq ptr %680, null
  br i1 %681, label %691, label %682

682:                                              ; preds = %678
  %683 = load i32, ptr %56, align 4, !tbaa !67
  %684 = getelementptr inbounds nuw i8, ptr %676, i64 64
  %685 = load i32, ptr %684, align 8, !tbaa !75
  %686 = icmp ult i32 %683, %685
  br i1 %686, label %687, label %691

687:                                              ; preds = %682
  %688 = add nuw i32 %683, 1
  store i32 %688, ptr %56, align 4, !tbaa !67
  %689 = zext i32 %683 to i64
  %690 = getelementptr inbounds nuw i8, ptr %680, i64 %689
  store i8 %675, ptr %690, align 1, !tbaa !44
  br label %691

691:                                              ; preds = %671, %678, %682, %687
  %692 = icmp ne i8 %675, 0
  %693 = icmp samesign ult i64 %673, %670
  %694 = select i1 %692, i1 %693, i1 false
  br i1 %694, label %671, label %695, !llvm.loop !76

695:                                              ; preds = %691
  %696 = trunc nuw i64 %673 to i32
  %697 = load i32, ptr %52, align 8, !tbaa !28
  %698 = and i32 %697, 512
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %707, label %700

700:                                              ; preds = %695
  %701 = load i32, ptr %49, align 8, !tbaa !24
  %702 = and i32 %701, 4
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %707, label %704

704:                                              ; preds = %700
  %705 = load i64, ptr %53, align 8, !tbaa !56
  %706 = call i64 @crc32(i64 noundef %705, ptr noundef nonnull %660, i32 noundef %696) #10
  store i64 %706, ptr %53, align 8, !tbaa !56
  br label %707

707:                                              ; preds = %704, %700, %695
  %708 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %661, i32 %696), !nosanitize !47
  %709 = extractvalue { i32, i1 } %708, 1, !nosanitize !47
  br i1 %709, label %710, label %711, !prof !48, !nosanitize !47

710:                                              ; preds = %707
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

711:                                              ; preds = %707
  %712 = extractvalue { i32, i1 } %708, 0, !nosanitize !47
  %713 = and i64 %673, 4294967295
  %714 = getelementptr inbounds nuw i8, ptr %660, i64 %713
  br i1 %692, label %2372, label %720

715:                                              ; preds = %659
  %716 = load ptr, ptr %84, align 8, !tbaa !30
  %717 = icmp eq ptr %716, null
  br i1 %717, label %720, label %718

718:                                              ; preds = %715
  %719 = getelementptr inbounds nuw i8, ptr %716, i64 56
  store ptr null, ptr %719, align 8, !tbaa !74
  br label %720

720:                                              ; preds = %715, %718, %711
  %721 = phi ptr [ %714, %711 ], [ %660, %718 ], [ %660, %715 ]
  %722 = phi i32 [ %712, %711 ], [ %661, %718 ], [ %661, %715 ]
  store i32 16188, ptr %21, align 8, !tbaa !20
  br label %723

723:                                              ; preds = %90, %720
  %724 = phi ptr [ %721, %720 ], [ %92, %90 ]
  %725 = phi i32 [ %722, %720 ], [ %94, %90 ]
  %726 = phi i64 [ %662, %720 ], [ %96, %90 ]
  %727 = phi i32 [ %663, %720 ], [ %97, %90 ]
  %728 = load i32, ptr %52, align 8, !tbaa !28
  %729 = and i32 %728, 512
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %781, label %731

731:                                              ; preds = %723
  %732 = icmp ult i32 %727, 16
  br i1 %732, label %733, label %768

733:                                              ; preds = %731
  %734 = zext nneg i32 %727 to i64
  %735 = icmp eq i32 %725, 0
  br i1 %735, label %2266, label %736

736:                                              ; preds = %733
  %737 = load i8, ptr %724, align 1, !tbaa !44
  %738 = zext i8 %737 to i64
  %739 = shl nuw nsw i64 %738, %734
  %740 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %726, i64 %739), !nosanitize !47
  %741 = extractvalue { i64, i1 } %740, 1, !nosanitize !47
  br i1 %741, label %742, label %743, !prof !48, !nosanitize !47

742:                                              ; preds = %751, %736
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

743:                                              ; preds = %736
  %744 = extractvalue { i64, i1 } %740, 0, !nosanitize !47
  %745 = getelementptr inbounds nuw i8, ptr %724, i64 1
  %746 = add i32 %725, -1
  %747 = add nuw nsw i64 %734, 8
  %748 = icmp ult i32 %727, 8
  br i1 %748, label %749, label %762, !llvm.loop !77

749:                                              ; preds = %743
  %750 = icmp eq i32 %746, 0
  br i1 %750, label %2266, label %751

751:                                              ; preds = %749
  %752 = load i8, ptr %745, align 1, !tbaa !44
  %753 = zext i8 %752 to i64
  %754 = shl nuw nsw i64 %753, %747
  %755 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %744, i64 %754), !nosanitize !47
  %756 = extractvalue { i64, i1 } %755, 1, !nosanitize !47
  br i1 %756, label %742, label %757, !prof !48, !nosanitize !47

757:                                              ; preds = %751
  %758 = extractvalue { i64, i1 } %755, 0, !nosanitize !47
  %759 = getelementptr inbounds nuw i8, ptr %724, i64 2
  %760 = add i32 %725, -2
  %761 = or disjoint i64 %734, 16
  br label %762

762:                                              ; preds = %757, %743
  %763 = phi i64 [ %744, %743 ], [ %758, %757 ]
  %764 = phi ptr [ %745, %743 ], [ %759, %757 ]
  %765 = phi i32 [ %746, %743 ], [ %760, %757 ]
  %766 = phi i64 [ %747, %743 ], [ %761, %757 ]
  %767 = trunc nuw nsw i64 %766 to i32
  br label %768

768:                                              ; preds = %762, %731
  %769 = phi ptr [ %724, %731 ], [ %764, %762 ]
  %770 = phi i32 [ %725, %731 ], [ %765, %762 ]
  %771 = phi i64 [ %726, %731 ], [ %763, %762 ]
  %772 = phi i32 [ %727, %731 ], [ %767, %762 ]
  %773 = load i32, ptr %49, align 8, !tbaa !24
  %774 = and i32 %773, 4
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %781, label %776

776:                                              ; preds = %768
  %777 = load i64, ptr %53, align 8, !tbaa !56
  %778 = and i64 %777, 65535
  %779 = icmp eq i64 %771, %778
  br i1 %779, label %781, label %780

780:                                              ; preds = %776
  store ptr @.str.5, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2245

781:                                              ; preds = %776, %768, %723
  %782 = phi ptr [ %724, %723 ], [ %769, %768 ], [ %769, %776 ]
  %783 = phi i32 [ %725, %723 ], [ %770, %768 ], [ %770, %776 ]
  %784 = phi i64 [ %726, %723 ], [ 0, %768 ], [ 0, %776 ]
  %785 = phi i32 [ %727, %723 ], [ 0, %768 ], [ 0, %776 ]
  %786 = load ptr, ptr %84, align 8, !tbaa !30
  %787 = icmp eq ptr %786, null
  br i1 %787, label %793, label %788

788:                                              ; preds = %781
  %789 = lshr i32 %728, 9
  %790 = and i32 %789, 1
  %791 = getelementptr inbounds nuw i8, ptr %786, i64 68
  store i32 %790, ptr %791, align 4, !tbaa !78
  %792 = getelementptr inbounds nuw i8, ptr %786, i64 72
  store i32 1, ptr %792, align 8, !tbaa !57
  br label %793

793:                                              ; preds = %788, %781
  %794 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  store i64 %794, ptr %53, align 8, !tbaa !56
  store i64 %794, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2245

795:                                              ; preds = %113
  %796 = load i8, ptr %92, align 1, !tbaa !44
  %797 = zext i8 %796 to i64
  %798 = shl nuw nsw i64 %797, %114
  %799 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %96, i64 %798), !nosanitize !47
  %800 = extractvalue { i64, i1 } %799, 1, !nosanitize !47
  br i1 %800, label %801, label %802, !prof !48, !nosanitize !47

801:                                              ; preds = %838, %824, %810, %795
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

802:                                              ; preds = %795
  %803 = extractvalue { i64, i1 } %799, 0, !nosanitize !47
  %804 = getelementptr inbounds nuw i8, ptr %92, i64 1
  %805 = add i32 %94, -1
  %806 = add nuw nsw i64 %114, 8
  %807 = icmp ult i32 %97, 24
  br i1 %807, label %808, label %848, !llvm.loop !79

808:                                              ; preds = %802
  %809 = icmp eq i32 %805, 0
  br i1 %809, label %2296, label %810

810:                                              ; preds = %808
  %811 = load i8, ptr %804, align 1, !tbaa !44
  %812 = zext i8 %811 to i64
  %813 = shl nuw nsw i64 %812, %806
  %814 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %803, i64 %813), !nosanitize !47
  %815 = extractvalue { i64, i1 } %814, 1, !nosanitize !47
  br i1 %815, label %801, label %816, !prof !48, !nosanitize !47

816:                                              ; preds = %810
  %817 = extractvalue { i64, i1 } %814, 0, !nosanitize !47
  %818 = getelementptr inbounds nuw i8, ptr %92, i64 2
  %819 = add i32 %94, -2
  %820 = add nuw nsw i64 %114, 16
  %821 = icmp ult i32 %97, 16
  br i1 %821, label %822, label %848, !llvm.loop !79

822:                                              ; preds = %816
  %823 = icmp eq i32 %819, 0
  br i1 %823, label %2296, label %824

824:                                              ; preds = %822
  %825 = load i8, ptr %818, align 1, !tbaa !44
  %826 = zext i8 %825 to i64
  %827 = shl nuw nsw i64 %826, %820
  %828 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %817, i64 %827), !nosanitize !47
  %829 = extractvalue { i64, i1 } %828, 1, !nosanitize !47
  br i1 %829, label %801, label %830, !prof !48, !nosanitize !47

830:                                              ; preds = %824
  %831 = extractvalue { i64, i1 } %828, 0, !nosanitize !47
  %832 = getelementptr inbounds nuw i8, ptr %92, i64 3
  %833 = add i32 %94, -3
  %834 = add nuw nsw i64 %114, 24
  %835 = icmp ult i32 %97, 8
  br i1 %835, label %836, label %848, !llvm.loop !79

836:                                              ; preds = %830
  %837 = icmp eq i32 %833, 0
  br i1 %837, label %2296, label %838

838:                                              ; preds = %836
  %839 = load i8, ptr %832, align 1, !tbaa !44
  %840 = zext i8 %839 to i64
  %841 = shl nuw nsw i64 %840, %834
  %842 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %831, i64 %841), !nosanitize !47
  %843 = extractvalue { i64, i1 } %842, 1, !nosanitize !47
  br i1 %843, label %801, label %844, !prof !48, !nosanitize !47

844:                                              ; preds = %838
  %845 = extractvalue { i64, i1 } %842, 0, !nosanitize !47
  %846 = getelementptr inbounds nuw i8, ptr %92, i64 4
  %847 = add i32 %94, -4
  br label %848

848:                                              ; preds = %802, %816, %830, %844, %111
  %849 = phi ptr [ %92, %111 ], [ %804, %802 ], [ %818, %816 ], [ %832, %830 ], [ %846, %844 ]
  %850 = phi i32 [ %94, %111 ], [ %805, %802 ], [ %819, %816 ], [ %833, %830 ], [ %847, %844 ]
  %851 = phi i64 [ %96, %111 ], [ %803, %802 ], [ %817, %816 ], [ %831, %830 ], [ %845, %844 ]
  %852 = trunc i64 %851 to i32
  %853 = call i32 @llvm.bswap.i32(i32 %852)
  %854 = zext i32 %853 to i64
  store i64 %854, ptr %53, align 8, !tbaa !56
  store i64 %854, ptr %54, align 8, !tbaa !25
  store i32 16190, ptr %21, align 8, !tbaa !20
  br label %855

855:                                              ; preds = %90, %848
  %856 = phi ptr [ %849, %848 ], [ %92, %90 ]
  %857 = phi i32 [ %850, %848 ], [ %94, %90 ]
  %858 = phi i64 [ 0, %848 ], [ %96, %90 ]
  %859 = phi i32 [ 0, %848 ], [ %97, %90 ]
  %860 = load i32, ptr %80, align 4, !tbaa !27
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %862, label %863

862:                                              ; preds = %855
  store ptr %93, ptr %26, align 8, !tbaa !49
  store i32 %95, ptr %41, align 8, !tbaa !52
  store ptr %856, ptr %0, align 8, !tbaa !50
  store i32 %857, ptr %43, align 8, !tbaa !51
  store i64 %858, ptr %45, align 8, !tbaa !31
  store i32 %859, ptr %47, align 8, !tbaa !32
  br label %2565

863:                                              ; preds = %855
  %864 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  store i64 %864, ptr %53, align 8, !tbaa !56
  store i64 %864, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %865

865:                                              ; preds = %90, %863
  %866 = phi ptr [ %856, %863 ], [ %92, %90 ]
  %867 = phi i32 [ %857, %863 ], [ %94, %90 ]
  %868 = phi i64 [ %858, %863 ], [ %96, %90 ]
  %869 = phi i32 [ %859, %863 ], [ %97, %90 ]
  br i1 %82, label %2372, label %870

870:                                              ; preds = %865, %90
  %871 = phi ptr [ %866, %865 ], [ %92, %90 ]
  %872 = phi i32 [ %867, %865 ], [ %94, %90 ]
  %873 = phi i64 [ %868, %865 ], [ %96, %90 ]
  %874 = phi i32 [ %869, %865 ], [ %97, %90 ]
  %875 = load i32, ptr %83, align 4, !tbaa !26
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %877, label %882

877:                                              ; preds = %870
  %878 = icmp ult i32 %874, 3
  br i1 %878, label %879, label %903

879:                                              ; preds = %877
  %880 = or disjoint i32 %874, 8
  %881 = icmp eq i32 %872, 0
  br i1 %881, label %2372, label %891

882:                                              ; preds = %870
  %883 = and i32 %874, 7
  %884 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %874, i32 %883), !nosanitize !47
  %885 = extractvalue { i32, i1 } %884, 1, !nosanitize !47
  br i1 %885, label %886, label %887, !prof !48, !nosanitize !47

886:                                              ; preds = %882
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

887:                                              ; preds = %882
  %888 = extractvalue { i32, i1 } %884, 0, !nosanitize !47
  %889 = zext nneg i32 %883 to i64
  %890 = lshr i64 %873, %889
  store i32 16206, ptr %21, align 8, !tbaa !20
  br label %2245

891:                                              ; preds = %879
  %892 = load i8, ptr %871, align 1, !tbaa !44
  %893 = zext i8 %892 to i64
  %894 = zext nneg i32 %874 to i64
  %895 = shl nuw nsw i64 %893, %894
  %896 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %873, i64 %895), !nosanitize !47
  %897 = extractvalue { i64, i1 } %896, 1, !nosanitize !47
  br i1 %897, label %898, label %899, !prof !48, !nosanitize !47

898:                                              ; preds = %891
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

899:                                              ; preds = %891
  %900 = extractvalue { i64, i1 } %896, 0, !nosanitize !47
  %901 = getelementptr inbounds nuw i8, ptr %871, i64 1
  %902 = add i32 %872, -1
  br label %903

903:                                              ; preds = %899, %877
  %904 = phi ptr [ %901, %899 ], [ %871, %877 ]
  %905 = phi i32 [ %902, %899 ], [ %872, %877 ]
  %906 = phi i64 [ %900, %899 ], [ %873, %877 ]
  %907 = phi i32 [ %880, %899 ], [ %874, %877 ]
  %908 = trunc i64 %906 to i32
  %909 = and i32 %908, 1
  store i32 %909, ptr %83, align 4, !tbaa !26
  %910 = lshr i32 %908, 1
  %911 = and i32 %910, 3
  switch i32 %911, label %917 [
    i32 0, label %919
    i32 1, label %912
    i32 2, label %916
    i32 3, label %918
  ]

912:                                              ; preds = %903
  call void @inflate_fixed(ptr noundef nonnull %15) #10
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %913, label %921

913:                                              ; preds = %912
  %914 = add i32 %907, -3
  %915 = lshr i64 %906, 3
  br label %2372

916:                                              ; preds = %903
  br label %919

917:                                              ; preds = %903
  unreachable

918:                                              ; preds = %903
  store ptr @.str.6, ptr %55, align 8, !tbaa !45
  br label %919

919:                                              ; preds = %903, %916, %918
  %920 = phi i32 [ 16209, %918 ], [ 16196, %916 ], [ 16193, %903 ]
  store i32 %920, ptr %21, align 8, !tbaa !20
  br label %921

921:                                              ; preds = %919, %912
  %922 = add i32 %907, -3
  %923 = lshr i64 %906, 3
  br label %2245

924:                                              ; preds = %90
  %925 = and i32 %97, 7
  %926 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %97, i32 %925), !nosanitize !47
  %927 = extractvalue { i32, i1 } %926, 1, !nosanitize !47
  br i1 %927, label %928, label %929, !prof !48, !nosanitize !47

928:                                              ; preds = %924
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

929:                                              ; preds = %924
  %930 = zext nneg i32 %925 to i64
  %931 = lshr i64 %96, %930
  %932 = extractvalue { i32, i1 } %926, 0
  %933 = icmp ult i32 %932, 32
  br i1 %933, label %934, label %997

934:                                              ; preds = %929
  %935 = and i32 %97, -8
  %936 = zext i32 %935 to i64
  %937 = icmp eq i32 %94, 0
  br i1 %937, label %2302, label %938

938:                                              ; preds = %934
  %939 = load i8, ptr %92, align 1, !tbaa !44
  %940 = zext i8 %939 to i64
  %941 = shl nuw nsw i64 %940, %936
  %942 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %931, i64 %941), !nosanitize !47
  %943 = extractvalue { i64, i1 } %942, 1, !nosanitize !47
  br i1 %943, label %944, label %945, !prof !48, !nosanitize !47

944:                                              ; preds = %981, %967, %953, %938
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

945:                                              ; preds = %938
  %946 = extractvalue { i64, i1 } %942, 0, !nosanitize !47
  %947 = getelementptr inbounds nuw i8, ptr %92, i64 1
  %948 = add i32 %94, -1
  %949 = add nuw nsw i64 %936, 8
  %950 = icmp ult i32 %97, 24
  br i1 %950, label %951, label %991, !llvm.loop !80

951:                                              ; preds = %945
  %952 = icmp eq i32 %948, 0
  br i1 %952, label %2302, label %953

953:                                              ; preds = %951
  %954 = load i8, ptr %947, align 1, !tbaa !44
  %955 = zext i8 %954 to i64
  %956 = shl nuw nsw i64 %955, %949
  %957 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %946, i64 %956), !nosanitize !47
  %958 = extractvalue { i64, i1 } %957, 1, !nosanitize !47
  br i1 %958, label %944, label %959, !prof !48, !nosanitize !47

959:                                              ; preds = %953
  %960 = extractvalue { i64, i1 } %957, 0, !nosanitize !47
  %961 = getelementptr inbounds nuw i8, ptr %92, i64 2
  %962 = add i32 %94, -2
  %963 = add nuw nsw i64 %936, 16
  %964 = icmp ult i32 %97, 16
  br i1 %964, label %965, label %991, !llvm.loop !80

965:                                              ; preds = %959
  %966 = icmp eq i32 %962, 0
  br i1 %966, label %2302, label %967

967:                                              ; preds = %965
  %968 = load i8, ptr %961, align 1, !tbaa !44
  %969 = zext i8 %968 to i64
  %970 = shl nuw nsw i64 %969, %963
  %971 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %960, i64 %970), !nosanitize !47
  %972 = extractvalue { i64, i1 } %971, 1, !nosanitize !47
  br i1 %972, label %944, label %973, !prof !48, !nosanitize !47

973:                                              ; preds = %967
  %974 = extractvalue { i64, i1 } %971, 0, !nosanitize !47
  %975 = getelementptr inbounds nuw i8, ptr %92, i64 3
  %976 = add i32 %94, -3
  %977 = add nuw nsw i64 %936, 24
  %978 = icmp eq i32 %935, 0
  br i1 %978, label %979, label %991, !llvm.loop !80

979:                                              ; preds = %973
  %980 = icmp eq i32 %976, 0
  br i1 %980, label %2302, label %981

981:                                              ; preds = %979
  %982 = load i8, ptr %975, align 1, !tbaa !44
  %983 = zext i8 %982 to i64
  %984 = shl nuw nsw i64 %983, %977
  %985 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %974, i64 %984), !nosanitize !47
  %986 = extractvalue { i64, i1 } %985, 1, !nosanitize !47
  br i1 %986, label %944, label %987, !prof !48, !nosanitize !47

987:                                              ; preds = %981
  %988 = extractvalue { i64, i1 } %985, 0, !nosanitize !47
  %989 = getelementptr inbounds nuw i8, ptr %92, i64 4
  %990 = add i32 %94, -4
  br label %991

991:                                              ; preds = %987, %973, %959, %945
  %992 = phi i64 [ %946, %945 ], [ %960, %959 ], [ %974, %973 ], [ %988, %987 ]
  %993 = phi ptr [ %947, %945 ], [ %961, %959 ], [ %975, %973 ], [ %989, %987 ]
  %994 = phi i32 [ %948, %945 ], [ %962, %959 ], [ %976, %973 ], [ %990, %987 ]
  %995 = phi i64 [ %949, %945 ], [ %963, %959 ], [ %977, %973 ], [ 32, %987 ]
  %996 = trunc nuw nsw i64 %995 to i32
  br label %997

997:                                              ; preds = %991, %929
  %998 = phi ptr [ %92, %929 ], [ %993, %991 ]
  %999 = phi i32 [ %94, %929 ], [ %994, %991 ]
  %1000 = phi i64 [ %931, %929 ], [ %992, %991 ]
  %1001 = phi i32 [ %932, %929 ], [ %996, %991 ]
  %1002 = and i64 %1000, 65535
  %1003 = lshr i64 %1000, 16
  %1004 = xor i64 %1003, %1002
  %1005 = icmp eq i64 %1004, 65535
  br i1 %1005, label %1007, label %1006

1006:                                             ; preds = %997
  store ptr @.str.7, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2245

1007:                                             ; preds = %997
  %1008 = trunc i64 %1000 to i32
  %1009 = and i32 %1008, 65535
  store i32 %1009, ptr %56, align 4, !tbaa !67
  store i32 16194, ptr %21, align 8, !tbaa !20
  br i1 %70, label %2372, label %1010

1010:                                             ; preds = %1007, %90
  %1011 = phi ptr [ %998, %1007 ], [ %92, %90 ]
  %1012 = phi i32 [ %999, %1007 ], [ %94, %90 ]
  %1013 = phi i64 [ 0, %1007 ], [ %96, %90 ]
  %1014 = phi i32 [ 0, %1007 ], [ %97, %90 ]
  store i32 16195, ptr %21, align 8, !tbaa !20
  br label %1015

1015:                                             ; preds = %90, %1010
  %1016 = phi ptr [ %1011, %1010 ], [ %92, %90 ]
  %1017 = phi i32 [ %1012, %1010 ], [ %94, %90 ]
  %1018 = phi i64 [ %1013, %1010 ], [ %96, %90 ]
  %1019 = phi i32 [ %1014, %1010 ], [ %97, %90 ]
  %1020 = load i32, ptr %56, align 4, !tbaa !67
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1046, label %1022

1022:                                             ; preds = %1015
  %1023 = call i32 @llvm.umin.i32(i32 %1020, i32 %1017)
  %1024 = call i32 @llvm.umin.i32(i32 %1023, i32 %95)
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %2372, label %1026

1026:                                             ; preds = %1022
  %1027 = zext i32 %1024 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %93, ptr align 1 %1016, i64 %1027, i1 false)
  %1028 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1017, i32 %1024), !nosanitize !47
  %1029 = extractvalue { i32, i1 } %1028, 0, !nosanitize !47
  %1030 = extractvalue { i32, i1 } %1028, 1, !nosanitize !47
  br i1 %1030, label %1031, label %1032, !prof !48, !nosanitize !47

1031:                                             ; preds = %1026
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

1032:                                             ; preds = %1026
  %1033 = getelementptr inbounds nuw i8, ptr %1016, i64 %1027
  %1034 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %95, i32 %1024), !nosanitize !47
  %1035 = extractvalue { i32, i1 } %1034, 0, !nosanitize !47
  %1036 = extractvalue { i32, i1 } %1034, 1, !nosanitize !47
  br i1 %1036, label %1037, label %1038, !prof !48, !nosanitize !47

1037:                                             ; preds = %1032
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

1038:                                             ; preds = %1032
  %1039 = load i32, ptr %56, align 4, !tbaa !67
  %1040 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1039, i32 %1024), !nosanitize !47
  %1041 = extractvalue { i32, i1 } %1040, 1, !nosanitize !47
  br i1 %1041, label %1042, label %1043, !prof !48, !nosanitize !47

1042:                                             ; preds = %1038
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

1043:                                             ; preds = %1038
  %1044 = extractvalue { i32, i1 } %1040, 0, !nosanitize !47
  %1045 = getelementptr inbounds nuw i8, ptr %93, i64 %1027
  store i32 %1044, ptr %56, align 4, !tbaa !67
  br label %2245

1046:                                             ; preds = %1015
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2245

1047:                                             ; preds = %108
  %1048 = load i8, ptr %92, align 1, !tbaa !44
  %1049 = zext i8 %1048 to i64
  %1050 = shl nuw nsw i64 %1049, %109
  %1051 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %96, i64 %1050), !nosanitize !47
  %1052 = extractvalue { i64, i1 } %1051, 1, !nosanitize !47
  br i1 %1052, label %1053, label %1054, !prof !48, !nosanitize !47

1053:                                             ; preds = %1062, %1047
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

1054:                                             ; preds = %1047
  %1055 = extractvalue { i64, i1 } %1051, 0, !nosanitize !47
  %1056 = getelementptr inbounds nuw i8, ptr %92, i64 1
  %1057 = add i32 %94, -1
  %1058 = add nuw nsw i64 %109, 8
  %1059 = icmp ult i32 %97, 6
  br i1 %1059, label %1060, label %1073, !llvm.loop !81

1060:                                             ; preds = %1054
  %1061 = icmp eq i32 %1057, 0
  br i1 %1061, label %2353, label %1062

1062:                                             ; preds = %1060
  %1063 = load i8, ptr %1056, align 1, !tbaa !44
  %1064 = zext i8 %1063 to i64
  %1065 = shl nuw nsw i64 %1064, %1058
  %1066 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1055, i64 %1065), !nosanitize !47
  %1067 = extractvalue { i64, i1 } %1066, 1, !nosanitize !47
  br i1 %1067, label %1053, label %1068, !prof !48, !nosanitize !47

1068:                                             ; preds = %1062
  %1069 = extractvalue { i64, i1 } %1066, 0, !nosanitize !47
  %1070 = getelementptr inbounds nuw i8, ptr %92, i64 2
  %1071 = add i32 %94, -2
  %1072 = or disjoint i64 %109, 16
  br label %1073

1073:                                             ; preds = %1068, %1054
  %1074 = phi i64 [ %1055, %1054 ], [ %1069, %1068 ]
  %1075 = phi ptr [ %1056, %1054 ], [ %1070, %1068 ]
  %1076 = phi i32 [ %1057, %1054 ], [ %1071, %1068 ]
  %1077 = phi i64 [ %1058, %1054 ], [ %1072, %1068 ]
  %1078 = trunc nuw nsw i64 %1077 to i32
  br label %1079

1079:                                             ; preds = %1073, %106
  %1080 = phi ptr [ %92, %106 ], [ %1075, %1073 ]
  %1081 = phi i32 [ %94, %106 ], [ %1076, %1073 ]
  %1082 = phi i64 [ %96, %106 ], [ %1074, %1073 ]
  %1083 = phi i32 [ %97, %106 ], [ %1078, %1073 ]
  %1084 = trunc i64 %1082 to i32
  %1085 = and i32 %1084, 31
  %1086 = add nuw nsw i32 %1085, 257
  store i32 %1086, ptr %57, align 4, !tbaa !82
  %1087 = lshr i32 %1084, 5
  %1088 = and i32 %1087, 31
  %1089 = add nuw nsw i32 %1088, 1
  store i32 %1089, ptr %58, align 8, !tbaa !83
  %1090 = lshr i32 %1084, 10
  %1091 = and i32 %1090, 15
  %1092 = add nuw nsw i32 %1091, 4
  store i32 %1092, ptr %59, align 8, !tbaa !84
  %1093 = lshr i64 %1082, 14
  %1094 = add i32 %1083, -14
  %1095 = icmp samesign ugt i32 %1085, 29
  %1096 = icmp samesign ugt i32 %1088, 29
  %1097 = select i1 %1095, i1 true, i1 %1096
  br i1 %1097, label %1098, label %1099

1098:                                             ; preds = %1079
  store ptr @.str.8, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2245

1099:                                             ; preds = %1079
  store i32 0, ptr %60, align 4, !tbaa !85
  store i32 16197, ptr %21, align 8, !tbaa !20
  br label %1104

1100:                                             ; preds = %90
  %1101 = load i32, ptr %59, align 8, !tbaa !84
  %1102 = load i32, ptr %60, align 4, !tbaa !85
  %1103 = icmp ult i32 %1102, %1101
  br i1 %1103, label %1104, label %1113

1104:                                             ; preds = %1099, %1100
  %1105 = phi i32 [ %1094, %1099 ], [ %97, %1100 ]
  %1106 = phi i64 [ %1093, %1099 ], [ %96, %1100 ]
  %1107 = phi i32 [ %1081, %1099 ], [ %94, %1100 ]
  %1108 = phi ptr [ %1080, %1099 ], [ %92, %1100 ]
  %1109 = phi i32 [ %1092, %1099 ], [ %1101, %1100 ]
  %1110 = phi i32 [ 0, %1099 ], [ %1102, %1100 ]
  %1111 = zext i32 %1110 to i64
  %1112 = zext i32 %1109 to i64
  br label %1122

1113:                                             ; preds = %1144, %1100
  %1114 = phi ptr [ %92, %1100 ], [ %1145, %1144 ]
  %1115 = phi i32 [ %94, %1100 ], [ %1146, %1144 ]
  %1116 = phi i64 [ %96, %1100 ], [ %1158, %1144 ]
  %1117 = phi i32 [ %97, %1100 ], [ %1157, %1144 ]
  %1118 = phi i32 [ %1102, %1100 ], [ %1109, %1144 ]
  %1119 = icmp ult i32 %1118, 19
  br i1 %1119, label %1120, label %1170

1120:                                             ; preds = %1113
  %1121 = zext nneg i32 %1118 to i64
  br label %1160

1122:                                             ; preds = %1104, %1144
  %1123 = phi i64 [ %1111, %1104 ], [ %1149, %1144 ]
  %1124 = phi i32 [ %1105, %1104 ], [ %1157, %1144 ]
  %1125 = phi i64 [ %1106, %1104 ], [ %1158, %1144 ]
  %1126 = phi i32 [ %1107, %1104 ], [ %1146, %1144 ]
  %1127 = phi ptr [ %1108, %1104 ], [ %1145, %1144 ]
  %1128 = icmp ult i32 %1124, 3
  br i1 %1128, label %1129, label %1144

1129:                                             ; preds = %1122
  %1130 = or disjoint i32 %1124, 8
  %1131 = icmp eq i32 %1126, 0
  br i1 %1131, label %2372, label %1132

1132:                                             ; preds = %1129
  %1133 = load i8, ptr %1127, align 1, !tbaa !44
  %1134 = zext i8 %1133 to i64
  %1135 = zext nneg i32 %1124 to i64
  %1136 = shl nuw nsw i64 %1134, %1135
  %1137 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1125, i64 %1136), !nosanitize !47
  %1138 = extractvalue { i64, i1 } %1137, 1, !nosanitize !47
  br i1 %1138, label %1139, label %1140, !prof !48, !nosanitize !47

1139:                                             ; preds = %1132
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

1140:                                             ; preds = %1132
  %1141 = extractvalue { i64, i1 } %1137, 0, !nosanitize !47
  %1142 = getelementptr inbounds nuw i8, ptr %1127, i64 1
  %1143 = add i32 %1126, -1
  br label %1144

1144:                                             ; preds = %1122, %1140
  %1145 = phi ptr [ %1142, %1140 ], [ %1127, %1122 ]
  %1146 = phi i32 [ %1143, %1140 ], [ %1126, %1122 ]
  %1147 = phi i64 [ %1141, %1140 ], [ %1125, %1122 ]
  %1148 = phi i32 [ %1130, %1140 ], [ %1124, %1122 ]
  %1149 = add nuw nsw i64 %1123, 1
  %1150 = trunc i64 %1147 to i16
  %1151 = and i16 %1150, 7
  %1152 = trunc nuw i64 %1149 to i32
  store i32 %1152, ptr %60, align 4, !tbaa !85
  %1153 = getelementptr inbounds nuw [19 x i16], ptr @inflate.order, i64 0, i64 %1123
  %1154 = load i16, ptr %1153, align 2, !tbaa !86
  %1155 = zext i16 %1154 to i64
  %1156 = getelementptr inbounds nuw [320 x i16], ptr %61, i64 0, i64 %1155
  store i16 %1151, ptr %1156, align 2, !tbaa !86
  %1157 = add i32 %1148, -3
  %1158 = lshr i64 %1147, 3
  %1159 = icmp eq i64 %1149, %1112
  br i1 %1159, label %1113, label %1122, !llvm.loop !88

1160:                                             ; preds = %1120, %1160
  %1161 = phi i64 [ %1121, %1120 ], [ %1162, %1160 ]
  %1162 = add nuw nsw i64 %1161, 1
  %1163 = getelementptr inbounds nuw [19 x i16], ptr @inflate.order, i64 0, i64 %1161
  %1164 = load i16, ptr %1163, align 2, !tbaa !86
  %1165 = zext i16 %1164 to i64
  %1166 = getelementptr inbounds nuw [320 x i16], ptr %61, i64 0, i64 %1165
  store i16 0, ptr %1166, align 2, !tbaa !86
  %1167 = and i64 %1162, 4294967295
  %1168 = icmp eq i64 %1167, 19
  br i1 %1168, label %1169, label %1160, !llvm.loop !89

1169:                                             ; preds = %1160
  store i32 19, ptr %60, align 4, !tbaa !85
  br label %1170

1170:                                             ; preds = %1169, %1113
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %64, align 8, !tbaa !34
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 7, ptr %66, align 8, !tbaa !90
  %1171 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %61, i32 noundef 19, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #10
  %1172 = icmp eq i32 %1171, 0
  br i1 %1172, label %1174, label %1173

1173:                                             ; preds = %1170
  store ptr @.str.9, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2245

1174:                                             ; preds = %1170
  store i32 0, ptr %60, align 4, !tbaa !85
  store i32 16198, ptr %21, align 8, !tbaa !20
  br label %1175

1175:                                             ; preds = %90, %1174
  %1176 = phi ptr [ %1114, %1174 ], [ %92, %90 ]
  %1177 = phi i32 [ %1115, %1174 ], [ %94, %90 ]
  %1178 = phi i64 [ %1116, %1174 ], [ %96, %90 ]
  %1179 = phi i32 [ %1117, %1174 ], [ %97, %90 ]
  %1180 = phi i32 [ 0, %1174 ], [ %99, %90 ]
  %1181 = load i32, ptr %57, align 4, !tbaa !82
  %1182 = load i32, ptr %58, align 8, !tbaa !83
  %1183 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1181, i32 %1182), !nosanitize !47
  %1184 = extractvalue { i32, i1 } %1183, 1, !nosanitize !47
  br i1 %1184, label %1197, label %1185, !prof !91, !nosanitize !47

1185:                                             ; preds = %1175
  %1186 = extractvalue { i32, i1 } %1183, 0, !nosanitize !47
  %1187 = load i32, ptr %60, align 4, !tbaa !85
  %1188 = call i32 @llvm.umax.i32(i32 %1187, i32 %1186)
  %1189 = zext i32 %1188 to i64
  %1190 = icmp ult i32 %1187, %1186
  br i1 %1190, label %1191, label %1438

1191:                                             ; preds = %1185
  %1192 = zext i32 %1187 to i64
  %1193 = load i32, ptr %66, align 8, !tbaa !90
  %1194 = shl nsw i32 -1, %1193
  %1195 = xor i32 %1194, -1
  %1196 = load ptr, ptr %65, align 8, !tbaa !35
  br label %1198

1197:                                             ; preds = %1175
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

1198:                                             ; preds = %1191, %1433
  %1199 = phi ptr [ %1176, %1191 ], [ %1244, %1433 ]
  %1200 = phi i32 [ %1177, %1191 ], [ %1245, %1433 ]
  %1201 = phi i64 [ %1178, %1191 ], [ %1255, %1433 ]
  %1202 = phi i32 [ %1179, %1191 ], [ %1257, %1433 ]
  %1203 = phi i64 [ %1192, %1191 ], [ %1434, %1433 ]
  %1204 = phi i32 [ %1187, %1191 ], [ %1435, %1433 ]
  %1205 = trunc i64 %1201 to i32
  %1206 = and i32 %1195, %1205
  %1207 = zext nneg i32 %1206 to i64
  %1208 = getelementptr inbounds nuw %struct.code, ptr %1196, i64 %1207, i32 1
  %1209 = load i8, ptr %1208, align 1, !tbaa !44
  %1210 = zext i8 %1209 to i32
  %1211 = icmp ult i32 %1202, %1210
  br i1 %1211, label %1212, label %1242

1212:                                             ; preds = %1198
  %1213 = zext nneg i32 %1202 to i64
  br label %1214

1214:                                             ; preds = %1212, %1227
  %1215 = phi i64 [ %1213, %1212 ], [ %1231, %1227 ]
  %1216 = phi i64 [ %1201, %1212 ], [ %1228, %1227 ]
  %1217 = phi i32 [ %1200, %1212 ], [ %1230, %1227 ]
  %1218 = phi ptr [ %1199, %1212 ], [ %1229, %1227 ]
  %1219 = icmp eq i32 %1217, 0
  br i1 %1219, label %2255, label %1220

1220:                                             ; preds = %1214
  %1221 = load i8, ptr %1218, align 1, !tbaa !44
  %1222 = zext i8 %1221 to i64
  %1223 = shl i64 %1222, %1215
  %1224 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1216, i64 %1223), !nosanitize !47
  %1225 = extractvalue { i64, i1 } %1224, 1, !nosanitize !47
  br i1 %1225, label %1226, label %1227, !prof !48, !nosanitize !47

1226:                                             ; preds = %1220
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

1227:                                             ; preds = %1220
  %1228 = extractvalue { i64, i1 } %1224, 0, !nosanitize !47
  %1229 = getelementptr inbounds nuw i8, ptr %1218, i64 1
  %1230 = add i32 %1217, -1
  %1231 = add nuw nsw i64 %1215, 8
  %1232 = trunc i64 %1228 to i32
  %1233 = and i32 %1195, %1232
  %1234 = zext nneg i32 %1233 to i64
  %1235 = getelementptr inbounds nuw %struct.code, ptr %1196, i64 %1234, i32 1
  %1236 = load i8, ptr %1235, align 1, !tbaa !44
  %1237 = zext i8 %1236 to i64
  %1238 = icmp samesign ult i64 %1231, %1237
  br i1 %1238, label %1214, label %1239

1239:                                             ; preds = %1227
  %1240 = zext i8 %1236 to i32
  %1241 = trunc nuw nsw i64 %1231 to i32
  br label %1242

1242:                                             ; preds = %1239, %1198
  %1243 = phi i64 [ %1207, %1198 ], [ %1234, %1239 ]
  %1244 = phi ptr [ %1199, %1198 ], [ %1229, %1239 ]
  %1245 = phi i32 [ %1200, %1198 ], [ %1230, %1239 ]
  %1246 = phi i64 [ %1201, %1198 ], [ %1228, %1239 ]
  %1247 = phi i32 [ %1202, %1198 ], [ %1241, %1239 ]
  %1248 = phi i8 [ %1209, %1198 ], [ %1236, %1239 ]
  %1249 = phi i32 [ %1210, %1198 ], [ %1240, %1239 ]
  %1250 = getelementptr inbounds nuw %struct.code, ptr %1196, i64 %1243, i32 2
  %1251 = load i16, ptr %1250, align 2, !tbaa !86
  %1252 = icmp ult i16 %1251, 16
  br i1 %1252, label %1253, label %1263

1253:                                             ; preds = %1242
  %1254 = zext nneg i8 %1248 to i64
  %1255 = lshr i64 %1246, %1254
  %1256 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1247, i32 %1249), !nosanitize !47
  %1257 = extractvalue { i32, i1 } %1256, 0, !nosanitize !47
  %1258 = extractvalue { i32, i1 } %1256, 1, !nosanitize !47
  br i1 %1258, label %1259, label %1260, !prof !48, !nosanitize !47

1259:                                             ; preds = %1253
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

1260:                                             ; preds = %1253
  %1261 = icmp eq i64 %1203, 4294967295
  br i1 %1261, label %1262, label %1433, !prof !48, !nosanitize !47

1262:                                             ; preds = %1260
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

1263:                                             ; preds = %1242
  %1264 = trunc nuw i64 %1203 to i32
  switch i16 %1251, label %1277 [
    i16 16, label %1271
    i16 17, label %1265
  ]

1265:                                             ; preds = %1263
  %1266 = add nuw nsw i32 %1249, 3
  %1267 = icmp ult i32 %1247, %1266
  br i1 %1267, label %1268, label %1348

1268:                                             ; preds = %1265
  %1269 = zext nneg i32 %1247 to i64
  %1270 = zext nneg i32 %1266 to i64
  br label %1327

1271:                                             ; preds = %1263
  %1272 = add nuw nsw i32 %1249, 2
  %1273 = icmp ult i32 %1247, %1272
  br i1 %1273, label %1274, label %1304

1274:                                             ; preds = %1271
  %1275 = zext nneg i32 %1247 to i64
  %1276 = zext nneg i32 %1272 to i64
  br label %1283

1277:                                             ; preds = %1263
  %1278 = add nuw nsw i32 %1249, 7
  %1279 = icmp ult i32 %1247, %1278
  br i1 %1279, label %1280, label %1385

1280:                                             ; preds = %1277
  %1281 = zext nneg i32 %1247 to i64
  %1282 = zext nneg i32 %1278 to i64
  br label %1364

1283:                                             ; preds = %1274, %1296
  %1284 = phi i64 [ %1275, %1274 ], [ %1300, %1296 ]
  %1285 = phi i64 [ %1246, %1274 ], [ %1297, %1296 ]
  %1286 = phi i32 [ %1245, %1274 ], [ %1299, %1296 ]
  %1287 = phi ptr [ %1244, %1274 ], [ %1298, %1296 ]
  %1288 = icmp eq i32 %1286, 0
  br i1 %1288, label %2343, label %1289

1289:                                             ; preds = %1283
  %1290 = load i8, ptr %1287, align 1, !tbaa !44
  %1291 = zext i8 %1290 to i64
  %1292 = shl i64 %1291, %1284
  %1293 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1285, i64 %1292), !nosanitize !47
  %1294 = extractvalue { i64, i1 } %1293, 1, !nosanitize !47
  br i1 %1294, label %1295, label %1296, !prof !48, !nosanitize !47

1295:                                             ; preds = %1289
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

1296:                                             ; preds = %1289
  %1297 = extractvalue { i64, i1 } %1293, 0, !nosanitize !47
  %1298 = getelementptr inbounds nuw i8, ptr %1287, i64 1
  %1299 = add i32 %1286, -1
  %1300 = add nuw nsw i64 %1284, 8
  %1301 = icmp samesign ult i64 %1300, %1276
  br i1 %1301, label %1283, label %1302, !llvm.loop !92

1302:                                             ; preds = %1296
  %1303 = trunc nuw i64 %1300 to i32
  br label %1304

1304:                                             ; preds = %1302, %1271
  %1305 = phi ptr [ %1244, %1271 ], [ %1298, %1302 ]
  %1306 = phi i32 [ %1245, %1271 ], [ %1299, %1302 ]
  %1307 = phi i64 [ %1246, %1271 ], [ %1297, %1302 ]
  %1308 = phi i32 [ %1247, %1271 ], [ %1303, %1302 ]
  %1309 = zext nneg i8 %1248 to i64
  %1310 = lshr i64 %1307, %1309
  %1311 = sub nuw i32 %1308, %1249
  %1312 = icmp eq i64 %1203, 0
  br i1 %1312, label %1313, label %1314

1313:                                             ; preds = %1304
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2245

1314:                                             ; preds = %1304
  %1315 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1311, i32 2), !nosanitize !47
  %1316 = extractvalue { i32, i1 } %1315, 1, !nosanitize !47
  br i1 %1316, label %1317, label %1318, !prof !48, !nosanitize !47

1317:                                             ; preds = %1314
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

1318:                                             ; preds = %1314
  %1319 = trunc i64 %1310 to i32
  %1320 = and i32 %1319, 3
  %1321 = add nuw nsw i32 %1320, 3
  %1322 = add nuw i64 %1203, 4294967295
  %1323 = and i64 %1322, 4294967295
  %1324 = getelementptr inbounds nuw [320 x i16], ptr %61, i64 0, i64 %1323
  %1325 = load i16, ptr %1324, align 2, !tbaa !86
  %1326 = lshr i64 %1310, 2
  br label %1401

1327:                                             ; preds = %1268, %1340
  %1328 = phi i64 [ %1269, %1268 ], [ %1344, %1340 ]
  %1329 = phi i64 [ %1246, %1268 ], [ %1341, %1340 ]
  %1330 = phi i32 [ %1245, %1268 ], [ %1343, %1340 ]
  %1331 = phi ptr [ %1244, %1268 ], [ %1342, %1340 ]
  %1332 = icmp eq i32 %1330, 0
  br i1 %1332, label %2348, label %1333

1333:                                             ; preds = %1327
  %1334 = load i8, ptr %1331, align 1, !tbaa !44
  %1335 = zext i8 %1334 to i64
  %1336 = shl i64 %1335, %1328
  %1337 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1329, i64 %1336), !nosanitize !47
  %1338 = extractvalue { i64, i1 } %1337, 1, !nosanitize !47
  br i1 %1338, label %1339, label %1340, !prof !48, !nosanitize !47

1339:                                             ; preds = %1333
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

1340:                                             ; preds = %1333
  %1341 = extractvalue { i64, i1 } %1337, 0, !nosanitize !47
  %1342 = getelementptr inbounds nuw i8, ptr %1331, i64 1
  %1343 = add i32 %1330, -1
  %1344 = add nuw nsw i64 %1328, 8
  %1345 = icmp samesign ult i64 %1344, %1270
  br i1 %1345, label %1327, label %1346, !llvm.loop !93

1346:                                             ; preds = %1340
  %1347 = trunc nuw i64 %1344 to i32
  br label %1348

1348:                                             ; preds = %1346, %1265
  %1349 = phi ptr [ %1244, %1265 ], [ %1342, %1346 ]
  %1350 = phi i32 [ %1245, %1265 ], [ %1343, %1346 ]
  %1351 = phi i64 [ %1246, %1265 ], [ %1341, %1346 ]
  %1352 = phi i32 [ %1247, %1265 ], [ %1347, %1346 ]
  %1353 = sub nuw i32 %1352, %1249
  %1354 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1353, i32 3), !nosanitize !47
  %1355 = extractvalue { i32, i1 } %1354, 1, !nosanitize !47
  br i1 %1355, label %1356, label %1357, !prof !48, !nosanitize !47

1356:                                             ; preds = %1348
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

1357:                                             ; preds = %1348
  %1358 = zext nneg i8 %1248 to i64
  %1359 = lshr i64 %1351, %1358
  %1360 = trunc i64 %1359 to i32
  %1361 = and i32 %1360, 7
  %1362 = add nuw nsw i32 %1361, 3
  %1363 = lshr i64 %1359, 3
  br label %1401

1364:                                             ; preds = %1280, %1377
  %1365 = phi i64 [ %1281, %1280 ], [ %1381, %1377 ]
  %1366 = phi i64 [ %1246, %1280 ], [ %1378, %1377 ]
  %1367 = phi i32 [ %1245, %1280 ], [ %1380, %1377 ]
  %1368 = phi ptr [ %1244, %1280 ], [ %1379, %1377 ]
  %1369 = icmp eq i32 %1367, 0
  br i1 %1369, label %2338, label %1370

1370:                                             ; preds = %1364
  %1371 = load i8, ptr %1368, align 1, !tbaa !44
  %1372 = zext i8 %1371 to i64
  %1373 = shl i64 %1372, %1365
  %1374 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1366, i64 %1373), !nosanitize !47
  %1375 = extractvalue { i64, i1 } %1374, 1, !nosanitize !47
  br i1 %1375, label %1376, label %1377, !prof !48, !nosanitize !47

1376:                                             ; preds = %1370
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

1377:                                             ; preds = %1370
  %1378 = extractvalue { i64, i1 } %1374, 0, !nosanitize !47
  %1379 = getelementptr inbounds nuw i8, ptr %1368, i64 1
  %1380 = add i32 %1367, -1
  %1381 = add nuw nsw i64 %1365, 8
  %1382 = icmp samesign ult i64 %1381, %1282
  br i1 %1382, label %1364, label %1383, !llvm.loop !94

1383:                                             ; preds = %1377
  %1384 = trunc nuw i64 %1381 to i32
  br label %1385

1385:                                             ; preds = %1383, %1277
  %1386 = phi ptr [ %1244, %1277 ], [ %1379, %1383 ]
  %1387 = phi i32 [ %1245, %1277 ], [ %1380, %1383 ]
  %1388 = phi i64 [ %1246, %1277 ], [ %1378, %1383 ]
  %1389 = phi i32 [ %1247, %1277 ], [ %1384, %1383 ]
  %1390 = sub nuw i32 %1389, %1249
  %1391 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1390, i32 7), !nosanitize !47
  %1392 = extractvalue { i32, i1 } %1391, 1, !nosanitize !47
  br i1 %1392, label %1393, label %1394, !prof !48, !nosanitize !47

1393:                                             ; preds = %1385
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

1394:                                             ; preds = %1385
  %1395 = zext nneg i8 %1248 to i64
  %1396 = lshr i64 %1388, %1395
  %1397 = trunc i64 %1396 to i32
  %1398 = and i32 %1397, 127
  %1399 = add nuw nsw i32 %1398, 11
  %1400 = lshr i64 %1396, 7
  br label %1401

1401:                                             ; preds = %1357, %1394, %1318
  %1402 = phi ptr [ %1305, %1318 ], [ %1349, %1357 ], [ %1386, %1394 ]
  %1403 = phi i32 [ %1306, %1318 ], [ %1350, %1357 ], [ %1387, %1394 ]
  %1404 = phi i64 [ %1326, %1318 ], [ %1363, %1357 ], [ %1400, %1394 ]
  %1405 = phi { i32, i1 } [ %1315, %1318 ], [ %1354, %1357 ], [ %1391, %1394 ]
  %1406 = phi i32 [ %1321, %1318 ], [ %1362, %1357 ], [ %1399, %1394 ]
  %1407 = phi i16 [ %1325, %1318 ], [ 0, %1357 ], [ 0, %1394 ]
  %1408 = extractvalue { i32, i1 } %1405, 0
  %1409 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1264, i32 %1406), !nosanitize !47
  %1410 = extractvalue { i32, i1 } %1409, 1, !nosanitize !47
  br i1 %1410, label %1411, label %1412, !prof !48, !nosanitize !47

1411:                                             ; preds = %1401
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

1412:                                             ; preds = %1401
  %1413 = extractvalue { i32, i1 } %1409, 0, !nosanitize !47
  %1414 = icmp ugt i32 %1413, %1186
  br i1 %1414, label %1419, label %1415

1415:                                             ; preds = %1412
  %1416 = add nsw i32 %1406, -1
  %1417 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %1416, 0
  %1418 = zext i32 %1204 to i64
  br label %1421

1419:                                             ; preds = %1412
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2245

1420:                                             ; preds = %1426
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

1421:                                             ; preds = %1415, %1426
  %1422 = phi i64 [ %1418, %1415 ], [ %1428, %1426 ]
  %1423 = phi { i32, i1 } [ %1417, %1415 ], [ %1431, %1426 ]
  %1424 = icmp eq i64 %1422, 4294967295
  br i1 %1424, label %1425, label %1426, !prof !48, !nosanitize !47

1425:                                             ; preds = %1421
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

1426:                                             ; preds = %1421
  %1427 = extractvalue { i32, i1 } %1423, 0
  %1428 = add nuw nsw i64 %1422, 1
  %1429 = trunc i64 %1428 to i32
  store i32 %1429, ptr %60, align 4, !tbaa !85
  %1430 = getelementptr inbounds nuw [320 x i16], ptr %61, i64 0, i64 %1422
  store i16 %1407, ptr %1430, align 2, !tbaa !86
  %1431 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1427, i32 1), !nosanitize !47
  %1432 = extractvalue { i32, i1 } %1431, 1, !nosanitize !47
  br i1 %1432, label %1420, label %1421, !prof !95, !llvm.loop !96, !nosanitize !47

1433:                                             ; preds = %1260
  %1434 = add nuw nsw i64 %1203, 1
  %1435 = trunc i64 %1434 to i32
  store i32 %1435, ptr %60, align 4, !tbaa !85
  %1436 = getelementptr inbounds nuw [320 x i16], ptr %61, i64 0, i64 %1203
  store i16 %1251, ptr %1436, align 2, !tbaa !86
  %1437 = icmp eq i64 %1434, %1189
  br i1 %1437, label %1438, label %1198

1438:                                             ; preds = %1433, %1185
  %1439 = phi i32 [ %1179, %1185 ], [ %1257, %1433 ]
  %1440 = phi i64 [ %1178, %1185 ], [ %1255, %1433 ]
  %1441 = phi i32 [ %1177, %1185 ], [ %1245, %1433 ]
  %1442 = phi ptr [ %1176, %1185 ], [ %1244, %1433 ]
  %1443 = load i16, ptr %68, align 8, !tbaa !86
  %1444 = icmp eq i16 %1443, 0
  br i1 %1444, label %1445, label %1446

1445:                                             ; preds = %1438
  store ptr @.str.11, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2245

1446:                                             ; preds = %1438
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 9, ptr %66, align 8, !tbaa !90
  %1447 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %61, i32 noundef %1181, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #10
  %1448 = icmp eq i32 %1447, 0
  br i1 %1448, label %1450, label %1449

1449:                                             ; preds = %1446
  store ptr @.str.12, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2245

1450:                                             ; preds = %1446
  %1451 = load ptr, ptr %63, align 8, !tbaa !33
  store ptr %1451, ptr %64, align 8, !tbaa !34
  store i32 6, ptr %69, align 4, !tbaa !97
  %1452 = load i32, ptr %57, align 4, !tbaa !82
  %1453 = zext i32 %1452 to i64
  %1454 = getelementptr inbounds nuw i16, ptr %61, i64 %1453
  %1455 = load i32, ptr %58, align 8, !tbaa !83
  %1456 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %1454, i32 noundef %1455, ptr noundef nonnull %63, ptr noundef nonnull %69, ptr noundef nonnull %67) #10
  %1457 = icmp eq i32 %1456, 0
  br i1 %1457, label %1459, label %1458

1458:                                             ; preds = %1450
  store ptr @.str.13, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2245

1459:                                             ; preds = %1450
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %2372, label %1460

1460:                                             ; preds = %1459, %90
  %1461 = phi ptr [ %1442, %1459 ], [ %92, %90 ]
  %1462 = phi i32 [ %1441, %1459 ], [ %94, %90 ]
  %1463 = phi i64 [ %1440, %1459 ], [ %96, %90 ]
  %1464 = phi i32 [ %1439, %1459 ], [ %97, %90 ]
  %1465 = phi i32 [ 0, %1459 ], [ %99, %90 ]
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %1466

1466:                                             ; preds = %90, %1460
  %1467 = phi ptr [ %1461, %1460 ], [ %92, %90 ]
  %1468 = phi i32 [ %1462, %1460 ], [ %94, %90 ]
  %1469 = phi i64 [ %1463, %1460 ], [ %96, %90 ]
  %1470 = phi i32 [ %1464, %1460 ], [ %97, %90 ]
  %1471 = phi i32 [ %1465, %1460 ], [ %99, %90 ]
  %1472 = icmp ugt i32 %1468, 5
  %1473 = icmp ugt i32 %95, 257
  %1474 = select i1 %1472, i1 %1473, i1 false
  br i1 %1474, label %1475, label %1485

1475:                                             ; preds = %1466
  store ptr %93, ptr %26, align 8, !tbaa !49
  store i32 %95, ptr %41, align 8, !tbaa !52
  store ptr %1467, ptr %0, align 8, !tbaa !50
  store i32 %1468, ptr %43, align 8, !tbaa !51
  store i64 %1469, ptr %45, align 8, !tbaa !31
  store i32 %1470, ptr %47, align 8, !tbaa !32
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %98) #10
  %1476 = load ptr, ptr %26, align 8, !tbaa !49
  %1477 = load i32, ptr %41, align 8, !tbaa !52
  %1478 = load ptr, ptr %0, align 8, !tbaa !50
  %1479 = load i32, ptr %43, align 8, !tbaa !51
  %1480 = load i64, ptr %45, align 8, !tbaa !31
  %1481 = load i32, ptr %47, align 8, !tbaa !32
  %1482 = load i32, ptr %21, align 8, !tbaa !20
  %1483 = icmp eq i32 %1482, 16191
  br i1 %1483, label %1484, label %2245

1484:                                             ; preds = %1475
  store i32 -1, ptr %71, align 4, !tbaa !37
  br label %2245

1485:                                             ; preds = %1466
  store i32 0, ptr %71, align 4, !tbaa !37
  %1486 = load i32, ptr %66, align 8, !tbaa !90
  %1487 = shl nsw i32 -1, %1486
  %1488 = xor i32 %1487, -1
  %1489 = load ptr, ptr %65, align 8, !tbaa !35
  %1490 = trunc i64 %1469 to i32
  %1491 = and i32 %1488, %1490
  %1492 = zext nneg i32 %1491 to i64
  %1493 = getelementptr inbounds nuw %struct.code, ptr %1489, i64 %1492
  %1494 = getelementptr inbounds nuw i8, ptr %1493, i64 1
  %1495 = load i8, ptr %1494, align 1, !tbaa !44
  %1496 = zext i8 %1495 to i32
  %1497 = icmp ult i32 %1470, %1496
  br i1 %1497, label %1498, label %1529

1498:                                             ; preds = %1485
  %1499 = zext nneg i32 %1470 to i64
  br label %1500

1500:                                             ; preds = %1498, %1513
  %1501 = phi i64 [ %1499, %1498 ], [ %1517, %1513 ]
  %1502 = phi i64 [ %1469, %1498 ], [ %1514, %1513 ]
  %1503 = phi i32 [ %1468, %1498 ], [ %1516, %1513 ]
  %1504 = phi ptr [ %1467, %1498 ], [ %1515, %1513 ]
  %1505 = icmp eq i32 %1503, 0
  br i1 %1505, label %2333, label %1506

1506:                                             ; preds = %1500
  %1507 = load i8, ptr %1504, align 1, !tbaa !44
  %1508 = zext i8 %1507 to i64
  %1509 = shl i64 %1508, %1501
  %1510 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1502, i64 %1509), !nosanitize !47
  %1511 = extractvalue { i64, i1 } %1510, 1, !nosanitize !47
  br i1 %1511, label %1512, label %1513, !prof !48, !nosanitize !47

1512:                                             ; preds = %1506
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

1513:                                             ; preds = %1506
  %1514 = extractvalue { i64, i1 } %1510, 0, !nosanitize !47
  %1515 = getelementptr inbounds nuw i8, ptr %1504, i64 1
  %1516 = add i32 %1503, -1
  %1517 = add nuw nsw i64 %1501, 8
  %1518 = trunc i64 %1514 to i32
  %1519 = and i32 %1488, %1518
  %1520 = zext nneg i32 %1519 to i64
  %1521 = getelementptr inbounds nuw %struct.code, ptr %1489, i64 %1520
  %1522 = getelementptr inbounds nuw i8, ptr %1521, i64 1
  %1523 = load i8, ptr %1522, align 1, !tbaa !44
  %1524 = zext i8 %1523 to i64
  %1525 = icmp samesign ult i64 %1517, %1524
  br i1 %1525, label %1500, label %1526

1526:                                             ; preds = %1513
  %1527 = zext i8 %1523 to i32
  %1528 = trunc nuw nsw i64 %1517 to i32
  br label %1529

1529:                                             ; preds = %1526, %1485
  %1530 = phi ptr [ %1493, %1485 ], [ %1521, %1526 ]
  %1531 = phi ptr [ %1467, %1485 ], [ %1515, %1526 ]
  %1532 = phi i32 [ %1468, %1485 ], [ %1516, %1526 ]
  %1533 = phi i64 [ %1469, %1485 ], [ %1514, %1526 ]
  %1534 = phi i32 [ %1470, %1485 ], [ %1528, %1526 ]
  %1535 = phi i8 [ %1495, %1485 ], [ %1523, %1526 ]
  %1536 = phi i32 [ %1496, %1485 ], [ %1527, %1526 ]
  %1537 = getelementptr inbounds nuw i8, ptr %1530, i64 2
  %1538 = load i16, ptr %1537, align 2, !tbaa !86
  %1539 = load i8, ptr %1530, align 2, !tbaa !44
  %1540 = add i8 %1539, -1
  %1541 = icmp ult i8 %1540, 15
  br i1 %1541, label %1542, label %1606

1542:                                             ; preds = %1529
  %1543 = zext nneg i8 %1539 to i32
  %1544 = add nuw nsw i32 %1536, %1543
  %1545 = shl nsw i32 -1, %1544
  %1546 = xor i32 %1545, -1
  %1547 = zext i16 %1538 to i32
  %1548 = trunc i64 %1533 to i32
  %1549 = and i32 %1548, %1546
  %1550 = lshr i32 %1549, %1536
  %1551 = add nuw i32 %1550, %1547
  %1552 = zext i32 %1551 to i64
  %1553 = getelementptr inbounds nuw %struct.code, ptr %1489, i64 %1552
  %1554 = getelementptr inbounds nuw i8, ptr %1553, i64 1
  %1555 = load i8, ptr %1554, align 1, !tbaa !44
  %1556 = zext i8 %1555 to i32
  %1557 = add nuw nsw i32 %1536, %1556
  %1558 = icmp ugt i32 %1557, %1534
  br i1 %1558, label %1559, label %1593

1559:                                             ; preds = %1542
  %1560 = zext nneg i32 %1534 to i64
  br label %1561

1561:                                             ; preds = %1559, %1574
  %1562 = phi i64 [ %1560, %1559 ], [ %1578, %1574 ]
  %1563 = phi i64 [ %1533, %1559 ], [ %1575, %1574 ]
  %1564 = phi i32 [ %1532, %1559 ], [ %1577, %1574 ]
  %1565 = phi ptr [ %1531, %1559 ], [ %1576, %1574 ]
  %1566 = icmp eq i32 %1564, 0
  br i1 %1566, label %2328, label %1567

1567:                                             ; preds = %1561
  %1568 = load i8, ptr %1565, align 1, !tbaa !44
  %1569 = zext i8 %1568 to i64
  %1570 = shl i64 %1569, %1562
  %1571 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1563, i64 %1570), !nosanitize !47
  %1572 = extractvalue { i64, i1 } %1571, 1, !nosanitize !47
  br i1 %1572, label %1573, label %1574, !prof !48, !nosanitize !47

1573:                                             ; preds = %1567
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

1574:                                             ; preds = %1567
  %1575 = extractvalue { i64, i1 } %1571, 0, !nosanitize !47
  %1576 = getelementptr inbounds nuw i8, ptr %1565, i64 1
  %1577 = add i32 %1564, -1
  %1578 = add nuw nsw i64 %1562, 8
  %1579 = trunc i64 %1575 to i32
  %1580 = and i32 %1579, %1546
  %1581 = lshr i32 %1580, %1536
  %1582 = add nuw i32 %1581, %1547
  %1583 = zext i32 %1582 to i64
  %1584 = getelementptr inbounds nuw %struct.code, ptr %1489, i64 %1583
  %1585 = getelementptr inbounds nuw i8, ptr %1584, i64 1
  %1586 = load i8, ptr %1585, align 1, !tbaa !44
  %1587 = zext i8 %1586 to i32
  %1588 = add nuw nsw i32 %1536, %1587
  %1589 = zext nneg i32 %1588 to i64
  %1590 = icmp samesign ult i64 %1578, %1589
  br i1 %1590, label %1561, label %1591

1591:                                             ; preds = %1574
  %1592 = trunc nuw i64 %1578 to i32
  br label %1593

1593:                                             ; preds = %1591, %1542
  %1594 = phi ptr [ %1553, %1542 ], [ %1584, %1591 ]
  %1595 = phi ptr [ %1531, %1542 ], [ %1576, %1591 ]
  %1596 = phi i32 [ %1532, %1542 ], [ %1577, %1591 ]
  %1597 = phi i64 [ %1533, %1542 ], [ %1575, %1591 ]
  %1598 = phi i32 [ %1534, %1542 ], [ %1592, %1591 ]
  %1599 = phi i8 [ %1555, %1542 ], [ %1586, %1591 ]
  %1600 = load i8, ptr %1594, align 2, !tbaa !44
  %1601 = getelementptr inbounds nuw i8, ptr %1594, i64 2
  %1602 = load i16, ptr %1601, align 2, !tbaa !86
  %1603 = sub nuw i32 %1598, %1536
  %1604 = zext nneg i8 %1535 to i64
  %1605 = lshr i64 %1597, %1604
  store i32 %1536, ptr %71, align 4, !tbaa !37
  br label %1606

1606:                                             ; preds = %1529, %1593
  %1607 = phi i32 [ %1536, %1593 ], [ 0, %1529 ]
  %1608 = phi ptr [ %1595, %1593 ], [ %1531, %1529 ]
  %1609 = phi i32 [ %1596, %1593 ], [ %1532, %1529 ]
  %1610 = phi i64 [ %1605, %1593 ], [ %1533, %1529 ]
  %1611 = phi i32 [ %1603, %1593 ], [ %1534, %1529 ]
  %1612 = phi i16 [ %1602, %1593 ], [ %1538, %1529 ]
  %1613 = phi i8 [ %1599, %1593 ], [ %1535, %1529 ]
  %1614 = phi i8 [ %1600, %1593 ], [ %1539, %1529 ]
  %1615 = zext i8 %1613 to i32
  %1616 = zext nneg i8 %1613 to i64
  %1617 = lshr i64 %1610, %1616
  %1618 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1611, i32 %1615), !nosanitize !47
  %1619 = extractvalue { i32, i1 } %1618, 0, !nosanitize !47
  %1620 = extractvalue { i32, i1 } %1618, 1, !nosanitize !47
  br i1 %1620, label %1621, label %1622, !prof !48, !nosanitize !47

1621:                                             ; preds = %1606
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

1622:                                             ; preds = %1606
  %1623 = add nsw i32 %1607, %1615
  store i32 %1623, ptr %71, align 4, !tbaa !37
  %1624 = zext i16 %1612 to i32
  store i32 %1624, ptr %56, align 4, !tbaa !67
  %1625 = zext i8 %1614 to i32
  %1626 = icmp eq i8 %1614, 0
  br i1 %1626, label %1627, label %1628

1627:                                             ; preds = %1622
  store i32 16205, ptr %21, align 8, !tbaa !20
  br label %2245

1628:                                             ; preds = %1622
  %1629 = and i32 %1625, 32
  %1630 = icmp eq i32 %1629, 0
  br i1 %1630, label %1632, label %1631

1631:                                             ; preds = %1628
  store i32 -1, ptr %71, align 4, !tbaa !37
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2245

1632:                                             ; preds = %1628
  %1633 = and i32 %1625, 64
  %1634 = icmp eq i32 %1633, 0
  br i1 %1634, label %1636, label %1635

1635:                                             ; preds = %1632
  store ptr @.str.14, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2245

1636:                                             ; preds = %1632
  %1637 = and i32 %1625, 15
  store i32 %1637, ptr %72, align 4, !tbaa !53
  store i32 16201, ptr %21, align 8, !tbaa !20
  br label %1638

1638:                                             ; preds = %102, %1636
  %1639 = phi i32 [ %1637, %1636 ], [ %103, %102 ]
  %1640 = phi ptr [ %1608, %1636 ], [ %92, %102 ]
  %1641 = phi i32 [ %1609, %1636 ], [ %94, %102 ]
  %1642 = phi i64 [ %1617, %1636 ], [ %96, %102 ]
  %1643 = phi i32 [ %1619, %1636 ], [ %97, %102 ]
  %1644 = phi i32 [ %1471, %1636 ], [ %99, %102 ]
  %1645 = icmp eq i32 %1639, 0
  br i1 %1645, label %1701, label %1646

1646:                                             ; preds = %1638
  %1647 = icmp ult i32 %1643, %1639
  br i1 %1647, label %1648, label %1673

1648:                                             ; preds = %1646
  %1649 = zext i32 %1643 to i64
  br label %1650

1650:                                             ; preds = %1648, %1669
  %1651 = phi i64 [ %1649, %1648 ], [ %1670, %1669 ]
  %1652 = phi i64 [ %1642, %1648 ], [ %1663, %1669 ]
  %1653 = phi i32 [ %1641, %1648 ], [ %1657, %1669 ]
  %1654 = phi ptr [ %1640, %1648 ], [ %1658, %1669 ]
  %1655 = icmp eq i32 %1653, 0
  br i1 %1655, label %2323, label %1656

1656:                                             ; preds = %1650
  %1657 = add i32 %1653, -1
  %1658 = getelementptr inbounds nuw i8, ptr %1654, i64 1
  %1659 = load i8, ptr %1654, align 1, !tbaa !44
  %1660 = zext i8 %1659 to i64
  %1661 = shl i64 %1660, %1651
  %1662 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1652, i64 %1661), !nosanitize !47
  %1663 = extractvalue { i64, i1 } %1662, 0, !nosanitize !47
  %1664 = extractvalue { i64, i1 } %1662, 1, !nosanitize !47
  br i1 %1664, label %1665, label %1666, !prof !48, !nosanitize !47

1665:                                             ; preds = %1656
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

1666:                                             ; preds = %1656
  %1667 = icmp samesign ugt i64 %1651, 4294967287
  br i1 %1667, label %1668, label %1669, !prof !48, !nosanitize !47

1668:                                             ; preds = %1666
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

1669:                                             ; preds = %1666
  %1670 = add nuw nsw i64 %1651, 8
  %1671 = trunc nuw i64 %1670 to i32
  %1672 = icmp ugt i32 %1639, %1671
  br i1 %1672, label %1650, label %1673, !llvm.loop !98

1673:                                             ; preds = %1669, %1646
  %1674 = phi ptr [ %1640, %1646 ], [ %1658, %1669 ]
  %1675 = phi i32 [ %1641, %1646 ], [ %1657, %1669 ]
  %1676 = phi i64 [ %1642, %1646 ], [ %1663, %1669 ]
  %1677 = phi i32 [ %1643, %1646 ], [ %1671, %1669 ]
  %1678 = shl nsw i32 -1, %1639
  %1679 = xor i32 %1678, -1
  %1680 = trunc i64 %1676 to i32
  %1681 = and i32 %1680, %1679
  %1682 = load i32, ptr %56, align 4, !tbaa !67
  %1683 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1682, i32 %1681), !nosanitize !47
  %1684 = extractvalue { i32, i1 } %1683, 1, !nosanitize !47
  br i1 %1684, label %1685, label %1686, !prof !48, !nosanitize !47

1685:                                             ; preds = %1673
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

1686:                                             ; preds = %1673
  %1687 = extractvalue { i32, i1 } %1683, 0, !nosanitize !47
  store i32 %1687, ptr %56, align 4, !tbaa !67
  %1688 = zext nneg i32 %1639 to i64
  %1689 = lshr i64 %1676, %1688
  %1690 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1677, i32 %1639), !nosanitize !47
  %1691 = extractvalue { i32, i1 } %1690, 0, !nosanitize !47
  %1692 = extractvalue { i32, i1 } %1690, 1, !nosanitize !47
  br i1 %1692, label %1693, label %1694, !prof !48, !nosanitize !47

1693:                                             ; preds = %1686
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

1694:                                             ; preds = %1686
  %1695 = load i32, ptr %71, align 4, !tbaa !37
  %1696 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1695, i32 %1639), !nosanitize !47
  %1697 = extractvalue { i32, i1 } %1696, 1, !nosanitize !47
  br i1 %1697, label %1698, label %1699, !prof !48, !nosanitize !47

1698:                                             ; preds = %1694
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

1699:                                             ; preds = %1694
  %1700 = extractvalue { i32, i1 } %1696, 0, !nosanitize !47
  store i32 %1700, ptr %71, align 4, !tbaa !37
  br label %1701

1701:                                             ; preds = %1699, %1638
  %1702 = phi ptr [ %1674, %1699 ], [ %1640, %1638 ]
  %1703 = phi i32 [ %1675, %1699 ], [ %1641, %1638 ]
  %1704 = phi i64 [ %1689, %1699 ], [ %1642, %1638 ]
  %1705 = phi i32 [ %1691, %1699 ], [ %1643, %1638 ]
  %1706 = load i32, ptr %56, align 4, !tbaa !67
  store i32 %1706, ptr %73, align 8, !tbaa !99
  store i32 16202, ptr %21, align 8, !tbaa !20
  br label %1707

1707:                                             ; preds = %90, %1701
  %1708 = phi ptr [ %1702, %1701 ], [ %92, %90 ]
  %1709 = phi i32 [ %1703, %1701 ], [ %94, %90 ]
  %1710 = phi i64 [ %1704, %1701 ], [ %96, %90 ]
  %1711 = phi i32 [ %1705, %1701 ], [ %97, %90 ]
  %1712 = phi i32 [ %1644, %1701 ], [ %99, %90 ]
  %1713 = load i32, ptr %69, align 4, !tbaa !97
  %1714 = shl nsw i32 -1, %1713
  %1715 = xor i32 %1714, -1
  %1716 = load ptr, ptr %64, align 8, !tbaa !34
  %1717 = trunc i64 %1710 to i32
  %1718 = and i32 %1715, %1717
  %1719 = zext nneg i32 %1718 to i64
  %1720 = getelementptr inbounds nuw %struct.code, ptr %1716, i64 %1719
  %1721 = getelementptr inbounds nuw i8, ptr %1720, i64 1
  %1722 = load i8, ptr %1721, align 1, !tbaa !44
  %1723 = zext i8 %1722 to i32
  %1724 = icmp ult i32 %1711, %1723
  br i1 %1724, label %1725, label %1756

1725:                                             ; preds = %1707
  %1726 = zext nneg i32 %1711 to i64
  br label %1727

1727:                                             ; preds = %1725, %1740
  %1728 = phi i64 [ %1726, %1725 ], [ %1744, %1740 ]
  %1729 = phi i64 [ %1710, %1725 ], [ %1741, %1740 ]
  %1730 = phi i32 [ %1709, %1725 ], [ %1743, %1740 ]
  %1731 = phi ptr [ %1708, %1725 ], [ %1742, %1740 ]
  %1732 = icmp eq i32 %1730, 0
  br i1 %1732, label %2318, label %1733

1733:                                             ; preds = %1727
  %1734 = load i8, ptr %1731, align 1, !tbaa !44
  %1735 = zext i8 %1734 to i64
  %1736 = shl i64 %1735, %1728
  %1737 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1729, i64 %1736), !nosanitize !47
  %1738 = extractvalue { i64, i1 } %1737, 1, !nosanitize !47
  br i1 %1738, label %1739, label %1740, !prof !48, !nosanitize !47

1739:                                             ; preds = %1733
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

1740:                                             ; preds = %1733
  %1741 = extractvalue { i64, i1 } %1737, 0, !nosanitize !47
  %1742 = getelementptr inbounds nuw i8, ptr %1731, i64 1
  %1743 = add i32 %1730, -1
  %1744 = add nuw nsw i64 %1728, 8
  %1745 = trunc i64 %1741 to i32
  %1746 = and i32 %1715, %1745
  %1747 = zext nneg i32 %1746 to i64
  %1748 = getelementptr inbounds nuw %struct.code, ptr %1716, i64 %1747
  %1749 = getelementptr inbounds nuw i8, ptr %1748, i64 1
  %1750 = load i8, ptr %1749, align 1, !tbaa !44
  %1751 = zext i8 %1750 to i64
  %1752 = icmp samesign ult i64 %1744, %1751
  br i1 %1752, label %1727, label %1753

1753:                                             ; preds = %1740
  %1754 = zext i8 %1750 to i32
  %1755 = trunc nuw nsw i64 %1744 to i32
  br label %1756

1756:                                             ; preds = %1753, %1707
  %1757 = phi ptr [ %1720, %1707 ], [ %1748, %1753 ]
  %1758 = phi ptr [ %1708, %1707 ], [ %1742, %1753 ]
  %1759 = phi i32 [ %1709, %1707 ], [ %1743, %1753 ]
  %1760 = phi i64 [ %1710, %1707 ], [ %1741, %1753 ]
  %1761 = phi i32 [ %1711, %1707 ], [ %1755, %1753 ]
  %1762 = phi i8 [ %1722, %1707 ], [ %1750, %1753 ]
  %1763 = phi i32 [ %1723, %1707 ], [ %1754, %1753 ]
  %1764 = getelementptr inbounds nuw i8, ptr %1757, i64 2
  %1765 = load i16, ptr %1764, align 2, !tbaa !86
  %1766 = load i8, ptr %1757, align 2, !tbaa !44
  %1767 = icmp ult i8 %1766, 16
  br i1 %1767, label %1768, label %1838

1768:                                             ; preds = %1756
  %1769 = zext nneg i8 %1766 to i32
  %1770 = add nuw nsw i32 %1763, %1769
  %1771 = shl nsw i32 -1, %1770
  %1772 = xor i32 %1771, -1
  %1773 = zext i16 %1765 to i32
  %1774 = trunc i64 %1760 to i32
  %1775 = and i32 %1774, %1772
  %1776 = lshr i32 %1775, %1763
  %1777 = add nuw i32 %1776, %1773
  %1778 = zext i32 %1777 to i64
  %1779 = getelementptr inbounds nuw %struct.code, ptr %1716, i64 %1778
  %1780 = getelementptr inbounds nuw i8, ptr %1779, i64 1
  %1781 = load i8, ptr %1780, align 1, !tbaa !44
  %1782 = zext i8 %1781 to i32
  %1783 = add nuw nsw i32 %1763, %1782
  %1784 = icmp ugt i32 %1783, %1761
  br i1 %1784, label %1785, label %1820

1785:                                             ; preds = %1768
  %1786 = zext nneg i32 %1761 to i64
  br label %1787

1787:                                             ; preds = %1785, %1801
  %1788 = phi i64 [ %1786, %1785 ], [ %1805, %1801 ]
  %1789 = phi i64 [ %1760, %1785 ], [ %1802, %1801 ]
  %1790 = phi i32 [ %1759, %1785 ], [ %1804, %1801 ]
  %1791 = phi ptr [ %1758, %1785 ], [ %1803, %1801 ]
  %1792 = icmp eq i32 %1790, 0
  br i1 %1792, label %2313, label %1793

1793:                                             ; preds = %1787
  %1794 = load i8, ptr %1791, align 1, !tbaa !44
  %1795 = zext i8 %1794 to i64
  %1796 = shl i64 %1795, %1788
  %1797 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1789, i64 %1796), !nosanitize !47
  %1798 = extractvalue { i64, i1 } %1797, 1, !nosanitize !47
  br i1 %1798, label %1799, label %1801, !prof !48, !nosanitize !47

1799:                                             ; preds = %1793
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

1800:                                             ; preds = %1853, %1820
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

1801:                                             ; preds = %1793
  %1802 = extractvalue { i64, i1 } %1797, 0, !nosanitize !47
  %1803 = getelementptr inbounds nuw i8, ptr %1791, i64 1
  %1804 = add i32 %1790, -1
  %1805 = add nuw nsw i64 %1788, 8
  %1806 = trunc i64 %1802 to i32
  %1807 = and i32 %1806, %1772
  %1808 = lshr i32 %1807, %1763
  %1809 = add nuw i32 %1808, %1773
  %1810 = zext i32 %1809 to i64
  %1811 = getelementptr inbounds nuw %struct.code, ptr %1716, i64 %1810
  %1812 = getelementptr inbounds nuw i8, ptr %1811, i64 1
  %1813 = load i8, ptr %1812, align 1, !tbaa !44
  %1814 = zext i8 %1813 to i32
  %1815 = add nuw nsw i32 %1763, %1814
  %1816 = zext nneg i32 %1815 to i64
  %1817 = icmp samesign ult i64 %1805, %1816
  br i1 %1817, label %1787, label %1818

1818:                                             ; preds = %1801
  %1819 = trunc nuw i64 %1805 to i32
  br label %1820

1820:                                             ; preds = %1818, %1768
  %1821 = phi ptr [ %1779, %1768 ], [ %1811, %1818 ]
  %1822 = phi ptr [ %1758, %1768 ], [ %1803, %1818 ]
  %1823 = phi i32 [ %1759, %1768 ], [ %1804, %1818 ]
  %1824 = phi i64 [ %1760, %1768 ], [ %1802, %1818 ]
  %1825 = phi i32 [ %1761, %1768 ], [ %1819, %1818 ]
  %1826 = phi i8 [ %1781, %1768 ], [ %1813, %1818 ]
  %1827 = load i32, ptr %71, align 4, !tbaa !37
  %1828 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1827, i32 %1763), !nosanitize !47
  %1829 = extractvalue { i32, i1 } %1828, 1, !nosanitize !47
  br i1 %1829, label %1800, label %1830, !prof !48, !nosanitize !47

1830:                                             ; preds = %1820
  %1831 = getelementptr inbounds nuw i8, ptr %1821, i64 2
  %1832 = load i16, ptr %1831, align 2, !tbaa !86
  %1833 = load i8, ptr %1821, align 2, !tbaa !44
  %1834 = sub nuw i32 %1825, %1763
  %1835 = zext nneg i8 %1762 to i64
  %1836 = lshr i64 %1824, %1835
  %1837 = extractvalue { i32, i1 } %1828, 0, !nosanitize !47
  store i32 %1837, ptr %71, align 4, !tbaa !37
  br label %1838

1838:                                             ; preds = %1756, %1830
  %1839 = phi ptr [ %1822, %1830 ], [ %1758, %1756 ]
  %1840 = phi i32 [ %1823, %1830 ], [ %1759, %1756 ]
  %1841 = phi i64 [ %1836, %1830 ], [ %1760, %1756 ]
  %1842 = phi i32 [ %1834, %1830 ], [ %1761, %1756 ]
  %1843 = phi i16 [ %1832, %1830 ], [ %1765, %1756 ]
  %1844 = phi i8 [ %1826, %1830 ], [ %1762, %1756 ]
  %1845 = phi i8 [ %1833, %1830 ], [ %1766, %1756 ]
  %1846 = zext i8 %1844 to i32
  %1847 = zext nneg i8 %1844 to i64
  %1848 = lshr i64 %1841, %1847
  %1849 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1842, i32 %1846), !nosanitize !47
  %1850 = extractvalue { i32, i1 } %1849, 0, !nosanitize !47
  %1851 = extractvalue { i32, i1 } %1849, 1, !nosanitize !47
  br i1 %1851, label %1852, label %1853, !prof !48, !nosanitize !47

1852:                                             ; preds = %1838
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

1853:                                             ; preds = %1838
  %1854 = load i32, ptr %71, align 4, !tbaa !37
  %1855 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1854, i32 %1846), !nosanitize !47
  %1856 = extractvalue { i32, i1 } %1855, 1, !nosanitize !47
  br i1 %1856, label %1800, label %1857, !prof !48, !nosanitize !47

1857:                                             ; preds = %1853
  %1858 = extractvalue { i32, i1 } %1855, 0, !nosanitize !47
  store i32 %1858, ptr %71, align 4, !tbaa !37
  %1859 = zext i8 %1845 to i32
  %1860 = and i32 %1859, 64
  %1861 = icmp eq i32 %1860, 0
  br i1 %1861, label %1863, label %1862

1862:                                             ; preds = %1857
  store ptr @.str.15, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2245

1863:                                             ; preds = %1857
  %1864 = zext i16 %1843 to i32
  store i32 %1864, ptr %74, align 8, !tbaa !100
  %1865 = and i32 %1859, 15
  store i32 %1865, ptr %72, align 4, !tbaa !53
  store i32 16203, ptr %21, align 8, !tbaa !20
  br label %1866

1866:                                             ; preds = %100, %1863
  %1867 = phi i32 [ %1865, %1863 ], [ %101, %100 ]
  %1868 = phi ptr [ %1839, %1863 ], [ %92, %100 ]
  %1869 = phi i32 [ %1840, %1863 ], [ %94, %100 ]
  %1870 = phi i64 [ %1848, %1863 ], [ %96, %100 ]
  %1871 = phi i32 [ %1850, %1863 ], [ %97, %100 ]
  %1872 = phi i32 [ %1712, %1863 ], [ %99, %100 ]
  %1873 = icmp eq i32 %1867, 0
  br i1 %1873, label %1929, label %1874

1874:                                             ; preds = %1866
  %1875 = icmp ult i32 %1871, %1867
  br i1 %1875, label %1876, label %1901

1876:                                             ; preds = %1874
  %1877 = zext i32 %1871 to i64
  br label %1878

1878:                                             ; preds = %1876, %1897
  %1879 = phi i64 [ %1877, %1876 ], [ %1898, %1897 ]
  %1880 = phi i64 [ %1870, %1876 ], [ %1891, %1897 ]
  %1881 = phi i32 [ %1869, %1876 ], [ %1885, %1897 ]
  %1882 = phi ptr [ %1868, %1876 ], [ %1886, %1897 ]
  %1883 = icmp eq i32 %1881, 0
  br i1 %1883, label %2308, label %1884

1884:                                             ; preds = %1878
  %1885 = add i32 %1881, -1
  %1886 = getelementptr inbounds nuw i8, ptr %1882, i64 1
  %1887 = load i8, ptr %1882, align 1, !tbaa !44
  %1888 = zext i8 %1887 to i64
  %1889 = shl i64 %1888, %1879
  %1890 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1880, i64 %1889), !nosanitize !47
  %1891 = extractvalue { i64, i1 } %1890, 0, !nosanitize !47
  %1892 = extractvalue { i64, i1 } %1890, 1, !nosanitize !47
  br i1 %1892, label %1893, label %1894, !prof !48, !nosanitize !47

1893:                                             ; preds = %1884
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

1894:                                             ; preds = %1884
  %1895 = icmp samesign ugt i64 %1879, 4294967287
  br i1 %1895, label %1896, label %1897, !prof !48, !nosanitize !47

1896:                                             ; preds = %1894
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

1897:                                             ; preds = %1894
  %1898 = add nuw nsw i64 %1879, 8
  %1899 = trunc nuw i64 %1898 to i32
  %1900 = icmp ugt i32 %1867, %1899
  br i1 %1900, label %1878, label %1901, !llvm.loop !101

1901:                                             ; preds = %1897, %1874
  %1902 = phi ptr [ %1868, %1874 ], [ %1886, %1897 ]
  %1903 = phi i32 [ %1869, %1874 ], [ %1885, %1897 ]
  %1904 = phi i64 [ %1870, %1874 ], [ %1891, %1897 ]
  %1905 = phi i32 [ %1871, %1874 ], [ %1899, %1897 ]
  %1906 = shl nsw i32 -1, %1867
  %1907 = xor i32 %1906, -1
  %1908 = trunc i64 %1904 to i32
  %1909 = and i32 %1908, %1907
  %1910 = load i32, ptr %74, align 8, !tbaa !100
  %1911 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1910, i32 %1909), !nosanitize !47
  %1912 = extractvalue { i32, i1 } %1911, 1, !nosanitize !47
  br i1 %1912, label %1913, label %1914, !prof !48, !nosanitize !47

1913:                                             ; preds = %1901
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

1914:                                             ; preds = %1901
  %1915 = extractvalue { i32, i1 } %1911, 0, !nosanitize !47
  store i32 %1915, ptr %74, align 8, !tbaa !100
  %1916 = zext nneg i32 %1867 to i64
  %1917 = lshr i64 %1904, %1916
  %1918 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1905, i32 %1867), !nosanitize !47
  %1919 = extractvalue { i32, i1 } %1918, 0, !nosanitize !47
  %1920 = extractvalue { i32, i1 } %1918, 1, !nosanitize !47
  br i1 %1920, label %1921, label %1922, !prof !48, !nosanitize !47

1921:                                             ; preds = %1914
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

1922:                                             ; preds = %1914
  %1923 = load i32, ptr %71, align 4, !tbaa !37
  %1924 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1923, i32 %1867), !nosanitize !47
  %1925 = extractvalue { i32, i1 } %1924, 1, !nosanitize !47
  br i1 %1925, label %1926, label %1927, !prof !48, !nosanitize !47

1926:                                             ; preds = %1922
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

1927:                                             ; preds = %1922
  %1928 = extractvalue { i32, i1 } %1924, 0, !nosanitize !47
  store i32 %1928, ptr %71, align 4, !tbaa !37
  br label %1929

1929:                                             ; preds = %1927, %1866
  %1930 = phi ptr [ %1902, %1927 ], [ %1868, %1866 ]
  %1931 = phi i32 [ %1903, %1927 ], [ %1869, %1866 ]
  %1932 = phi i64 [ %1917, %1927 ], [ %1870, %1866 ]
  %1933 = phi i32 [ %1919, %1927 ], [ %1871, %1866 ]
  store i32 16204, ptr %21, align 8, !tbaa !20
  br label %1934

1934:                                             ; preds = %90, %1929
  %1935 = phi ptr [ %1930, %1929 ], [ %92, %90 ]
  %1936 = phi i32 [ %1931, %1929 ], [ %94, %90 ]
  %1937 = phi i64 [ %1932, %1929 ], [ %96, %90 ]
  %1938 = phi i32 [ %1933, %1929 ], [ %97, %90 ]
  %1939 = phi i32 [ %1872, %1929 ], [ %99, %90 ]
  %1940 = icmp eq i32 %95, 0
  br i1 %1940, label %2372, label %1941

1941:                                             ; preds = %1934
  %1942 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %98, i32 %95), !nosanitize !47
  %1943 = extractvalue { i32, i1 } %1942, 0, !nosanitize !47
  %1944 = extractvalue { i32, i1 } %1942, 1, !nosanitize !47
  br i1 %1944, label %1945, label %1946, !prof !48, !nosanitize !47

1945:                                             ; preds = %1941
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

1946:                                             ; preds = %1941
  %1947 = load i32, ptr %74, align 8, !tbaa !100
  %1948 = icmp ugt i32 %1947, %1943
  br i1 %1948, label %1949, label %1978

1949:                                             ; preds = %1946
  %1950 = sub nuw i32 %1947, %1943
  %1951 = load i32, ptr %75, align 8, !tbaa !39
  %1952 = icmp ugt i32 %1950, %1951
  br i1 %1952, label %1953, label %1957

1953:                                             ; preds = %1949
  %1954 = load i32, ptr %76, align 8, !tbaa !36
  %1955 = icmp eq i32 %1954, 0
  br i1 %1955, label %1957, label %1956

1956:                                             ; preds = %1953
  store ptr @.str.16, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2245

1957:                                             ; preds = %1953, %1949
  %1958 = load i32, ptr %77, align 4, !tbaa !40
  %1959 = icmp ugt i32 %1950, %1958
  br i1 %1959, label %1960, label %1968

1960:                                             ; preds = %1957
  %1961 = sub nuw i32 %1950, %1958
  %1962 = load i32, ptr %79, align 4, !tbaa !38
  %1963 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1962, i32 %1961), !nosanitize !47
  %1964 = extractvalue { i32, i1 } %1963, 1, !nosanitize !47
  br i1 %1964, label %1965, label %1966, !prof !48, !nosanitize !47

1965:                                             ; preds = %1960
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

1966:                                             ; preds = %1960
  %1967 = extractvalue { i32, i1 } %1963, 0, !nosanitize !47
  br label %1970

1968:                                             ; preds = %1957
  %1969 = sub nuw i32 %1958, %1950
  br label %1970

1970:                                             ; preds = %1968, %1966
  %1971 = phi i32 [ %1969, %1968 ], [ %1967, %1966 ]
  %1972 = phi i32 [ %1950, %1968 ], [ %1961, %1966 ]
  %1973 = load ptr, ptr %78, align 8, !tbaa !41
  %1974 = zext i32 %1971 to i64
  %1975 = getelementptr inbounds nuw i8, ptr %1973, i64 %1974
  %1976 = load i32, ptr %56, align 4, !tbaa !67
  %1977 = call i32 @llvm.umin.i32(i32 %1972, i32 %1976)
  br label %1983

1978:                                             ; preds = %1946
  %1979 = zext i32 %1947 to i64
  %1980 = sub nsw i64 0, %1979
  %1981 = getelementptr inbounds i8, ptr %93, i64 %1980
  %1982 = load i32, ptr %56, align 4, !tbaa !67
  br label %1983

1983:                                             ; preds = %1970, %1978
  %1984 = phi i32 [ %1982, %1978 ], [ %1976, %1970 ]
  %1985 = phi i32 [ %1982, %1978 ], [ %1977, %1970 ]
  %1986 = phi ptr [ %1981, %1978 ], [ %1975, %1970 ]
  %1987 = call i32 @llvm.umin.i32(i32 %1985, i32 %95)
  %1988 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %95, i32 %1987), !nosanitize !47
  %1989 = extractvalue { i32, i1 } %1988, 0, !nosanitize !47
  %1990 = extractvalue { i32, i1 } %1988, 1, !nosanitize !47
  br i1 %1990, label %1991, label %1992, !prof !48, !nosanitize !47

1991:                                             ; preds = %1983
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

1992:                                             ; preds = %1983
  %1993 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1984, i32 %1987), !nosanitize !47
  %1994 = extractvalue { i32, i1 } %1993, 1, !nosanitize !47
  br i1 %1994, label %1995, label %1996, !prof !48, !nosanitize !47

1995:                                             ; preds = %1992
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

1996:                                             ; preds = %1992
  %1997 = extractvalue { i32, i1 } %1993, 0, !nosanitize !47
  store i32 %1997, ptr %56, align 4, !tbaa !67
  br label %1998

1998:                                             ; preds = %2006, %1996
  %1999 = phi ptr [ %93, %1996 ], [ %2007, %2006 ]
  %2000 = phi i32 [ %1987, %1996 ], [ %2008, %2006 ]
  %2001 = phi ptr [ %1986, %1996 ], [ %2009, %2006 ]
  %2002 = load i8, ptr %2001, align 1, !tbaa !44
  store i8 %2002, ptr %1999, align 1, !tbaa !44
  %2003 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2000, i32 1), !nosanitize !47
  %2004 = extractvalue { i32, i1 } %2003, 1, !nosanitize !47
  br i1 %2004, label %2005, label %2006, !prof !48, !nosanitize !47

2005:                                             ; preds = %1998
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

2006:                                             ; preds = %1998
  %2007 = getelementptr inbounds nuw i8, ptr %1999, i64 1
  %2008 = extractvalue { i32, i1 } %2003, 0, !nosanitize !47
  %2009 = getelementptr inbounds nuw i8, ptr %2001, i64 1
  %2010 = icmp eq i32 %2008, 0
  br i1 %2010, label %2011, label %1998, !llvm.loop !102

2011:                                             ; preds = %2006
  %2012 = load i32, ptr %56, align 4, !tbaa !67
  %2013 = icmp eq i32 %2012, 0
  br i1 %2013, label %2014, label %2245

2014:                                             ; preds = %2011
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2245

2015:                                             ; preds = %90
  %2016 = icmp eq i32 %95, 0
  br i1 %2016, label %2372, label %2017

2017:                                             ; preds = %2015
  %2018 = load i32, ptr %56, align 4, !tbaa !67
  %2019 = trunc i32 %2018 to i8
  store i8 %2019, ptr %93, align 1, !tbaa !44
  %2020 = add i32 %95, -1
  %2021 = getelementptr inbounds nuw i8, ptr %93, i64 1
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2245

2022:                                             ; preds = %90
  %2023 = load i32, ptr %49, align 8, !tbaa !24
  %2024 = icmp eq i32 %2023, 0
  br i1 %2024, label %2145, label %2025

2025:                                             ; preds = %2022
  %2026 = icmp ult i32 %97, 32
  br i1 %2026, label %2027, label %2090

2027:                                             ; preds = %2025
  %2028 = zext nneg i32 %97 to i64
  %2029 = icmp eq i32 %94, 0
  br i1 %2029, label %2365, label %2030

2030:                                             ; preds = %2027
  %2031 = load i8, ptr %92, align 1, !tbaa !44
  %2032 = zext i8 %2031 to i64
  %2033 = shl nuw nsw i64 %2032, %2028
  %2034 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %96, i64 %2033), !nosanitize !47
  %2035 = extractvalue { i64, i1 } %2034, 1, !nosanitize !47
  br i1 %2035, label %2036, label %2037, !prof !48, !nosanitize !47

2036:                                             ; preds = %2073, %2059, %2045, %2030
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

2037:                                             ; preds = %2030
  %2038 = extractvalue { i64, i1 } %2034, 0, !nosanitize !47
  %2039 = getelementptr inbounds nuw i8, ptr %92, i64 1
  %2040 = add i32 %94, -1
  %2041 = add nuw nsw i64 %2028, 8
  %2042 = icmp ult i32 %97, 24
  br i1 %2042, label %2043, label %2084, !llvm.loop !103

2043:                                             ; preds = %2037
  %2044 = icmp eq i32 %2040, 0
  br i1 %2044, label %2365, label %2045

2045:                                             ; preds = %2043
  %2046 = load i8, ptr %2039, align 1, !tbaa !44
  %2047 = zext i8 %2046 to i64
  %2048 = shl nuw nsw i64 %2047, %2041
  %2049 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2038, i64 %2048), !nosanitize !47
  %2050 = extractvalue { i64, i1 } %2049, 1, !nosanitize !47
  br i1 %2050, label %2036, label %2051, !prof !48, !nosanitize !47

2051:                                             ; preds = %2045
  %2052 = extractvalue { i64, i1 } %2049, 0, !nosanitize !47
  %2053 = getelementptr inbounds nuw i8, ptr %92, i64 2
  %2054 = add i32 %94, -2
  %2055 = add nuw nsw i64 %2028, 16
  %2056 = icmp ult i32 %97, 16
  br i1 %2056, label %2057, label %2084, !llvm.loop !103

2057:                                             ; preds = %2051
  %2058 = icmp eq i32 %2054, 0
  br i1 %2058, label %2365, label %2059

2059:                                             ; preds = %2057
  %2060 = load i8, ptr %2053, align 1, !tbaa !44
  %2061 = zext i8 %2060 to i64
  %2062 = shl nuw nsw i64 %2061, %2055
  %2063 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2052, i64 %2062), !nosanitize !47
  %2064 = extractvalue { i64, i1 } %2063, 1, !nosanitize !47
  br i1 %2064, label %2036, label %2065, !prof !48, !nosanitize !47

2065:                                             ; preds = %2059
  %2066 = extractvalue { i64, i1 } %2063, 0, !nosanitize !47
  %2067 = getelementptr inbounds nuw i8, ptr %92, i64 3
  %2068 = add i32 %94, -3
  %2069 = add nuw nsw i64 %2028, 24
  %2070 = icmp ult i32 %97, 8
  br i1 %2070, label %2071, label %2084, !llvm.loop !103

2071:                                             ; preds = %2065
  %2072 = icmp eq i32 %2068, 0
  br i1 %2072, label %2365, label %2073

2073:                                             ; preds = %2071
  %2074 = load i8, ptr %2067, align 1, !tbaa !44
  %2075 = zext i8 %2074 to i64
  %2076 = shl nuw nsw i64 %2075, %2069
  %2077 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2066, i64 %2076), !nosanitize !47
  %2078 = extractvalue { i64, i1 } %2077, 1, !nosanitize !47
  br i1 %2078, label %2036, label %2079, !prof !48, !nosanitize !47

2079:                                             ; preds = %2073
  %2080 = extractvalue { i64, i1 } %2077, 0, !nosanitize !47
  %2081 = getelementptr inbounds nuw i8, ptr %92, i64 4
  %2082 = add i32 %94, -4
  %2083 = or disjoint i64 %2028, 32
  br label %2084

2084:                                             ; preds = %2079, %2065, %2051, %2037
  %2085 = phi i64 [ %2038, %2037 ], [ %2052, %2051 ], [ %2066, %2065 ], [ %2080, %2079 ]
  %2086 = phi ptr [ %2039, %2037 ], [ %2053, %2051 ], [ %2067, %2065 ], [ %2081, %2079 ]
  %2087 = phi i32 [ %2040, %2037 ], [ %2054, %2051 ], [ %2068, %2065 ], [ %2082, %2079 ]
  %2088 = phi i64 [ %2041, %2037 ], [ %2055, %2051 ], [ %2069, %2065 ], [ %2083, %2079 ]
  %2089 = trunc nuw nsw i64 %2088 to i32
  br label %2090

2090:                                             ; preds = %2084, %2025
  %2091 = phi ptr [ %92, %2025 ], [ %2086, %2084 ]
  %2092 = phi i32 [ %94, %2025 ], [ %2087, %2084 ]
  %2093 = phi i64 [ %96, %2025 ], [ %2085, %2084 ]
  %2094 = phi i32 [ %97, %2025 ], [ %2089, %2084 ]
  %2095 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %98, i32 %95), !nosanitize !47
  %2096 = extractvalue { i32, i1 } %2095, 0, !nosanitize !47
  %2097 = extractvalue { i32, i1 } %2095, 1, !nosanitize !47
  br i1 %2097, label %2098, label %2099, !prof !48, !nosanitize !47

2098:                                             ; preds = %2090
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

2099:                                             ; preds = %2090
  %2100 = zext i32 %2096 to i64
  %2101 = load i64, ptr %50, align 8, !tbaa !104
  %2102 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2101, i64 %2100), !nosanitize !47
  %2103 = extractvalue { i64, i1 } %2102, 1, !nosanitize !47
  br i1 %2103, label %2104, label %2105, !prof !48, !nosanitize !47

2104:                                             ; preds = %2099
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

2105:                                             ; preds = %2099
  %2106 = extractvalue { i64, i1 } %2102, 0, !nosanitize !47
  store i64 %2106, ptr %50, align 8, !tbaa !104
  %2107 = load i64, ptr %51, align 8, !tbaa !21
  %2108 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2107, i64 %2100), !nosanitize !47
  %2109 = extractvalue { i64, i1 } %2108, 1, !nosanitize !47
  br i1 %2109, label %2110, label %2111, !prof !48, !nosanitize !47

2110:                                             ; preds = %2105
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

2111:                                             ; preds = %2105
  %2112 = extractvalue { i64, i1 } %2108, 0, !nosanitize !47
  store i64 %2112, ptr %51, align 8, !tbaa !21
  %2113 = and i32 %2023, 4
  %2114 = icmp ne i32 %2113, 0
  %2115 = icmp ne i32 %2096, 0
  %2116 = select i1 %2114, i1 %2115, i1 false
  br i1 %2116, label %2117, label %2131

2117:                                             ; preds = %2111
  %2118 = load i32, ptr %52, align 8, !tbaa !28
  %2119 = icmp eq i32 %2118, 0
  %2120 = load i64, ptr %53, align 8, !tbaa !56
  %2121 = sub nsw i64 0, %2100
  %2122 = getelementptr inbounds i8, ptr %93, i64 %2121
  br i1 %2119, label %2125, label %2123

2123:                                             ; preds = %2117
  %2124 = call i64 @crc32(i64 noundef %2120, ptr noundef nonnull %2122, i32 noundef %2096) #10
  br label %2127

2125:                                             ; preds = %2117
  %2126 = call i64 @adler32(i64 noundef %2120, ptr noundef nonnull %2122, i32 noundef %2096) #10
  br label %2127

2127:                                             ; preds = %2125, %2123
  %2128 = phi i64 [ %2124, %2123 ], [ %2126, %2125 ]
  store i64 %2128, ptr %53, align 8, !tbaa !56
  store i64 %2128, ptr %54, align 8, !tbaa !25
  %2129 = load i32, ptr %49, align 8, !tbaa !24
  %2130 = and i32 %2129, 4
  br label %2131

2131:                                             ; preds = %2127, %2111
  %2132 = phi i32 [ %2130, %2127 ], [ %2113, %2111 ]
  %2133 = phi i32 [ %2129, %2127 ], [ %2023, %2111 ]
  %2134 = icmp eq i32 %2132, 0
  br i1 %2134, label %2145, label %2135

2135:                                             ; preds = %2131
  %2136 = load i32, ptr %52, align 8, !tbaa !28
  %2137 = icmp eq i32 %2136, 0
  %2138 = trunc i64 %2093 to i32
  %2139 = call i32 @llvm.bswap.i32(i32 %2138)
  %2140 = zext i32 %2139 to i64
  %2141 = select i1 %2137, i64 %2140, i64 %2093
  %2142 = load i64, ptr %53, align 8, !tbaa !56
  %2143 = icmp eq i64 %2141, %2142
  br i1 %2143, label %2145, label %2144

2144:                                             ; preds = %2135
  store ptr @.str.17, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2245

2145:                                             ; preds = %2135, %2131, %2022
  %2146 = phi i32 [ 0, %2022 ], [ %2133, %2131 ], [ %2133, %2135 ]
  %2147 = phi ptr [ %92, %2022 ], [ %2091, %2131 ], [ %2091, %2135 ]
  %2148 = phi i32 [ %94, %2022 ], [ %2092, %2131 ], [ %2092, %2135 ]
  %2149 = phi i64 [ %96, %2022 ], [ 0, %2131 ], [ 0, %2135 ]
  %2150 = phi i32 [ %97, %2022 ], [ 0, %2131 ], [ 0, %2135 ]
  %2151 = phi i32 [ %98, %2022 ], [ %95, %2131 ], [ %95, %2135 ]
  store i32 16207, ptr %21, align 8, !tbaa !20
  br label %2152

2152:                                             ; preds = %104, %2145
  %2153 = phi i32 [ %2146, %2145 ], [ %105, %104 ]
  %2154 = phi ptr [ %2147, %2145 ], [ %92, %104 ]
  %2155 = phi i32 [ %2148, %2145 ], [ %94, %104 ]
  %2156 = phi i64 [ %2149, %2145 ], [ %96, %104 ]
  %2157 = phi i32 [ %2150, %2145 ], [ %97, %104 ]
  %2158 = phi i32 [ %2151, %2145 ], [ %98, %104 ]
  %2159 = icmp eq i32 %2153, 0
  br i1 %2159, label %2240, label %2160

2160:                                             ; preds = %2152
  %2161 = load i32, ptr %52, align 8, !tbaa !28
  %2162 = icmp eq i32 %2161, 0
  br i1 %2162, label %2240, label %2163

2163:                                             ; preds = %2160
  %2164 = icmp ult i32 %2157, 32
  br i1 %2164, label %2165, label %2228

2165:                                             ; preds = %2163
  %2166 = zext nneg i32 %2157 to i64
  %2167 = icmp eq i32 %2155, 0
  br i1 %2167, label %2359, label %2168

2168:                                             ; preds = %2165
  %2169 = load i8, ptr %2154, align 1, !tbaa !44
  %2170 = zext i8 %2169 to i64
  %2171 = shl nuw nsw i64 %2170, %2166
  %2172 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2156, i64 %2171), !nosanitize !47
  %2173 = extractvalue { i64, i1 } %2172, 1, !nosanitize !47
  br i1 %2173, label %2174, label %2175, !prof !48, !nosanitize !47

2174:                                             ; preds = %2211, %2197, %2183, %2168
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

2175:                                             ; preds = %2168
  %2176 = extractvalue { i64, i1 } %2172, 0, !nosanitize !47
  %2177 = getelementptr inbounds nuw i8, ptr %2154, i64 1
  %2178 = add i32 %2155, -1
  %2179 = add nuw nsw i64 %2166, 8
  %2180 = icmp ult i32 %2157, 24
  br i1 %2180, label %2181, label %2222, !llvm.loop !105

2181:                                             ; preds = %2175
  %2182 = icmp eq i32 %2178, 0
  br i1 %2182, label %2359, label %2183

2183:                                             ; preds = %2181
  %2184 = load i8, ptr %2177, align 1, !tbaa !44
  %2185 = zext i8 %2184 to i64
  %2186 = shl nuw nsw i64 %2185, %2179
  %2187 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2176, i64 %2186), !nosanitize !47
  %2188 = extractvalue { i64, i1 } %2187, 1, !nosanitize !47
  br i1 %2188, label %2174, label %2189, !prof !48, !nosanitize !47

2189:                                             ; preds = %2183
  %2190 = extractvalue { i64, i1 } %2187, 0, !nosanitize !47
  %2191 = getelementptr inbounds nuw i8, ptr %2154, i64 2
  %2192 = add i32 %2155, -2
  %2193 = add nuw nsw i64 %2166, 16
  %2194 = icmp ult i32 %2157, 16
  br i1 %2194, label %2195, label %2222, !llvm.loop !105

2195:                                             ; preds = %2189
  %2196 = icmp eq i32 %2192, 0
  br i1 %2196, label %2359, label %2197

2197:                                             ; preds = %2195
  %2198 = load i8, ptr %2191, align 1, !tbaa !44
  %2199 = zext i8 %2198 to i64
  %2200 = shl nuw nsw i64 %2199, %2193
  %2201 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2190, i64 %2200), !nosanitize !47
  %2202 = extractvalue { i64, i1 } %2201, 1, !nosanitize !47
  br i1 %2202, label %2174, label %2203, !prof !48, !nosanitize !47

2203:                                             ; preds = %2197
  %2204 = extractvalue { i64, i1 } %2201, 0, !nosanitize !47
  %2205 = getelementptr inbounds nuw i8, ptr %2154, i64 3
  %2206 = add i32 %2155, -3
  %2207 = add nuw nsw i64 %2166, 24
  %2208 = icmp ult i32 %2157, 8
  br i1 %2208, label %2209, label %2222, !llvm.loop !105

2209:                                             ; preds = %2203
  %2210 = icmp eq i32 %2206, 0
  br i1 %2210, label %2359, label %2211

2211:                                             ; preds = %2209
  %2212 = load i8, ptr %2205, align 1, !tbaa !44
  %2213 = zext i8 %2212 to i64
  %2214 = shl nuw nsw i64 %2213, %2207
  %2215 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2204, i64 %2214), !nosanitize !47
  %2216 = extractvalue { i64, i1 } %2215, 1, !nosanitize !47
  br i1 %2216, label %2174, label %2217, !prof !48, !nosanitize !47

2217:                                             ; preds = %2211
  %2218 = extractvalue { i64, i1 } %2215, 0, !nosanitize !47
  %2219 = getelementptr inbounds nuw i8, ptr %2154, i64 4
  %2220 = add i32 %2155, -4
  %2221 = or disjoint i64 %2166, 32
  br label %2222

2222:                                             ; preds = %2217, %2203, %2189, %2175
  %2223 = phi i64 [ %2176, %2175 ], [ %2190, %2189 ], [ %2204, %2203 ], [ %2218, %2217 ]
  %2224 = phi ptr [ %2177, %2175 ], [ %2191, %2189 ], [ %2205, %2203 ], [ %2219, %2217 ]
  %2225 = phi i32 [ %2178, %2175 ], [ %2192, %2189 ], [ %2206, %2203 ], [ %2220, %2217 ]
  %2226 = phi i64 [ %2179, %2175 ], [ %2193, %2189 ], [ %2207, %2203 ], [ %2221, %2217 ]
  %2227 = trunc nuw nsw i64 %2226 to i32
  br label %2228

2228:                                             ; preds = %2222, %2163
  %2229 = phi ptr [ %2154, %2163 ], [ %2224, %2222 ]
  %2230 = phi i32 [ %2155, %2163 ], [ %2225, %2222 ]
  %2231 = phi i64 [ %2156, %2163 ], [ %2223, %2222 ]
  %2232 = phi i32 [ %2157, %2163 ], [ %2227, %2222 ]
  %2233 = and i32 %2153, 4
  %2234 = icmp eq i32 %2233, 0
  br i1 %2234, label %2240, label %2235

2235:                                             ; preds = %2228
  %2236 = load i64, ptr %51, align 8, !tbaa !21
  %2237 = and i64 %2236, 4294967295
  %2238 = icmp eq i64 %2231, %2237
  br i1 %2238, label %2240, label %2239

2239:                                             ; preds = %2235
  store ptr @.str.18, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2245

2240:                                             ; preds = %2235, %2228, %2160, %2152
  %2241 = phi ptr [ %2154, %2160 ], [ %2154, %2152 ], [ %2229, %2228 ], [ %2229, %2235 ]
  %2242 = phi i32 [ %2155, %2160 ], [ %2155, %2152 ], [ %2230, %2228 ], [ %2230, %2235 ]
  %2243 = phi i64 [ %2156, %2160 ], [ %2156, %2152 ], [ 0, %2228 ], [ 0, %2235 ]
  %2244 = phi i32 [ %2157, %2160 ], [ %2157, %2152 ], [ 0, %2228 ], [ 0, %2235 ]
  store i32 16208, ptr %21, align 8, !tbaa !20
  br label %2372

2245:                                             ; preds = %1313, %1419, %2011, %2014, %1475, %1484, %2239, %2144, %2017, %1956, %1862, %1635, %1631, %1627, %1458, %1449, %1445, %1173, %1098, %1046, %1043, %1006, %921, %887, %793, %780, %263, %259, %213, %212, %197, %193, %175, %129
  %2246 = phi ptr [ %92, %129 ], [ %163, %175 ], [ %163, %193 ], [ %163, %197 ], [ %163, %212 ], [ %163, %213 ], [ %252, %259 ], [ %252, %263 ], [ %769, %780 ], [ %782, %793 ], [ %871, %887 ], [ %904, %921 ], [ %998, %1006 ], [ %1033, %1043 ], [ %1016, %1046 ], [ %1080, %1098 ], [ %1114, %1173 ], [ %1442, %1445 ], [ %1442, %1449 ], [ %1442, %1458 ], [ %1478, %1484 ], [ %1478, %1475 ], [ %1608, %1627 ], [ %1608, %1631 ], [ %1608, %1635 ], [ %1839, %1862 ], [ %1935, %1956 ], [ %1935, %2014 ], [ %1935, %2011 ], [ %92, %2017 ], [ %2091, %2144 ], [ %2229, %2239 ], [ %1402, %1419 ], [ %1305, %1313 ]
  %2247 = phi ptr [ %93, %129 ], [ %93, %175 ], [ %93, %193 ], [ %93, %197 ], [ %93, %212 ], [ %93, %213 ], [ %93, %259 ], [ %93, %263 ], [ %93, %780 ], [ %93, %793 ], [ %93, %887 ], [ %93, %921 ], [ %93, %1006 ], [ %1045, %1043 ], [ %93, %1046 ], [ %93, %1098 ], [ %93, %1173 ], [ %93, %1445 ], [ %93, %1449 ], [ %93, %1458 ], [ %1476, %1484 ], [ %1476, %1475 ], [ %93, %1627 ], [ %93, %1631 ], [ %93, %1635 ], [ %93, %1862 ], [ %93, %1956 ], [ %2007, %2014 ], [ %2007, %2011 ], [ %2021, %2017 ], [ %93, %2144 ], [ %93, %2239 ], [ %93, %1419 ], [ %93, %1313 ]
  %2248 = phi i32 [ %94, %129 ], [ %164, %175 ], [ %164, %193 ], [ %164, %197 ], [ %164, %212 ], [ %164, %213 ], [ %253, %259 ], [ %253, %263 ], [ %770, %780 ], [ %783, %793 ], [ %872, %887 ], [ %905, %921 ], [ %999, %1006 ], [ %1029, %1043 ], [ %1017, %1046 ], [ %1081, %1098 ], [ %1115, %1173 ], [ %1441, %1445 ], [ %1441, %1449 ], [ %1441, %1458 ], [ %1479, %1484 ], [ %1479, %1475 ], [ %1609, %1627 ], [ %1609, %1631 ], [ %1609, %1635 ], [ %1840, %1862 ], [ %1936, %1956 ], [ %1936, %2014 ], [ %1936, %2011 ], [ %94, %2017 ], [ %2092, %2144 ], [ %2230, %2239 ], [ %1403, %1419 ], [ %1306, %1313 ]
  %2249 = phi i32 [ %95, %129 ], [ %95, %175 ], [ %95, %193 ], [ %95, %197 ], [ %95, %212 ], [ %95, %213 ], [ %95, %259 ], [ %95, %263 ], [ %95, %780 ], [ %95, %793 ], [ %95, %887 ], [ %95, %921 ], [ %95, %1006 ], [ %1035, %1043 ], [ %95, %1046 ], [ %95, %1098 ], [ %95, %1173 ], [ %95, %1445 ], [ %95, %1449 ], [ %95, %1458 ], [ %1477, %1484 ], [ %1477, %1475 ], [ %95, %1627 ], [ %95, %1631 ], [ %95, %1635 ], [ %95, %1862 ], [ %95, %1956 ], [ %1989, %2014 ], [ %1989, %2011 ], [ %2020, %2017 ], [ %95, %2144 ], [ %95, %2239 ], [ %95, %1419 ], [ %95, %1313 ]
  %2250 = phi i64 [ %96, %129 ], [ 0, %175 ], [ %165, %193 ], [ %165, %197 ], [ %199, %212 ], [ 0, %213 ], [ %254, %259 ], [ %254, %263 ], [ %771, %780 ], [ %784, %793 ], [ %890, %887 ], [ %923, %921 ], [ %1000, %1006 ], [ %1018, %1043 ], [ %1018, %1046 ], [ %1093, %1098 ], [ %1116, %1173 ], [ %1440, %1445 ], [ %1440, %1449 ], [ %1440, %1458 ], [ %1480, %1484 ], [ %1480, %1475 ], [ %1617, %1627 ], [ %1617, %1631 ], [ %1617, %1635 ], [ %1848, %1862 ], [ %1937, %1956 ], [ %1937, %2014 ], [ %1937, %2011 ], [ %96, %2017 ], [ %2093, %2144 ], [ %2231, %2239 ], [ %1404, %1419 ], [ %1310, %1313 ]
  %2251 = phi i32 [ %97, %129 ], [ 0, %175 ], [ %166, %193 ], [ %166, %197 ], [ %200, %212 ], [ 0, %213 ], [ %255, %259 ], [ %255, %263 ], [ %772, %780 ], [ %785, %793 ], [ %888, %887 ], [ %922, %921 ], [ %1001, %1006 ], [ %1019, %1043 ], [ %1019, %1046 ], [ %1094, %1098 ], [ %1117, %1173 ], [ %1439, %1445 ], [ %1439, %1449 ], [ %1439, %1458 ], [ %1481, %1484 ], [ %1481, %1475 ], [ %1619, %1627 ], [ %1619, %1631 ], [ %1619, %1635 ], [ %1850, %1862 ], [ %1938, %1956 ], [ %1938, %2014 ], [ %1938, %2011 ], [ %97, %2017 ], [ %2094, %2144 ], [ %2232, %2239 ], [ %1408, %1419 ], [ %1311, %1313 ]
  %2252 = phi i32 [ %98, %129 ], [ %98, %175 ], [ %98, %193 ], [ %98, %197 ], [ %98, %212 ], [ %98, %213 ], [ %98, %259 ], [ %98, %263 ], [ %98, %780 ], [ %98, %793 ], [ %98, %887 ], [ %98, %921 ], [ %98, %1006 ], [ %98, %1043 ], [ %98, %1046 ], [ %98, %1098 ], [ %98, %1173 ], [ %98, %1445 ], [ %98, %1449 ], [ %98, %1458 ], [ %98, %1484 ], [ %98, %1475 ], [ %98, %1627 ], [ %98, %1631 ], [ %98, %1635 ], [ %98, %1862 ], [ %98, %1956 ], [ %98, %2014 ], [ %98, %2011 ], [ %98, %2017 ], [ %95, %2144 ], [ %2158, %2239 ], [ %98, %1419 ], [ %98, %1313 ]
  %2253 = phi i32 [ %99, %129 ], [ %99, %175 ], [ %99, %193 ], [ %99, %197 ], [ %99, %212 ], [ %99, %213 ], [ %99, %259 ], [ %99, %263 ], [ %99, %780 ], [ %99, %793 ], [ %99, %887 ], [ %99, %921 ], [ %99, %1006 ], [ %99, %1043 ], [ %99, %1046 ], [ %99, %1098 ], [ %1171, %1173 ], [ %1180, %1445 ], [ %1447, %1449 ], [ %1456, %1458 ], [ %1471, %1484 ], [ %1471, %1475 ], [ %1471, %1627 ], [ %1471, %1631 ], [ %1471, %1635 ], [ %1712, %1862 ], [ %1939, %1956 ], [ %1939, %2014 ], [ %1939, %2011 ], [ %99, %2017 ], [ %99, %2144 ], [ %99, %2239 ], [ %1180, %1419 ], [ %1180, %1313 ]
  %2254 = load i32, ptr %21, align 8, !tbaa !20
  br label %90

2255:                                             ; preds = %1214
  %2256 = zext i32 %1200 to i64
  %2257 = shl i32 %1200, 3
  %2258 = add i32 %2257, %1202
  %2259 = getelementptr i8, ptr %1199, i64 %2256
  br label %2372

2260:                                             ; preds = %143, %126
  %2261 = phi i64 [ %96, %126 ], [ %138, %143 ]
  %2262 = zext i32 %94 to i64
  %2263 = shl i32 %94, 3
  %2264 = add i32 %2263, %97
  %2265 = getelementptr i8, ptr %92, i64 %2262
  br label %2372

2266:                                             ; preds = %749, %733
  %2267 = phi i64 [ %726, %733 ], [ %744, %749 ]
  %2268 = zext i32 %725 to i64
  %2269 = shl i32 %725, 3
  %2270 = add i32 %2269, %727
  %2271 = getelementptr i8, ptr %724, i64 %2268
  br label %2372

2272:                                             ; preds = %465, %444
  %2273 = phi i64 [ %447, %444 ], [ %460, %465 ]
  %2274 = zext i32 %446 to i64
  %2275 = shl i32 %446, 3
  %2276 = add i32 %2275, %448
  %2277 = getelementptr i8, ptr %445, i64 %2274
  br label %2372

2278:                                             ; preds = %395, %375
  %2279 = phi i64 [ %377, %375 ], [ %390, %395 ]
  %2280 = zext i32 %378 to i64
  %2281 = shl i32 %378, 3
  %2282 = add i32 %2281, %376
  %2283 = getelementptr i8, ptr %379, i64 %2280
  br label %2372

2284:                                             ; preds = %334, %320, %306, %286
  %2285 = phi i64 [ %288, %286 ], [ %301, %306 ], [ %315, %320 ], [ %329, %334 ]
  %2286 = zext i32 %289 to i64
  %2287 = shl i32 %289, 3
  %2288 = add i32 %2287, %287
  %2289 = getelementptr i8, ptr %290, i64 %2286
  br label %2372

2290:                                             ; preds = %232, %118
  %2291 = phi i64 [ %96, %118 ], [ %227, %232 ]
  %2292 = zext i32 %94 to i64
  %2293 = shl i32 %94, 3
  %2294 = add i32 %2293, %97
  %2295 = getelementptr i8, ptr %92, i64 %2292
  br label %2372

2296:                                             ; preds = %836, %822, %808, %113
  %2297 = phi i64 [ %96, %113 ], [ %803, %808 ], [ %817, %822 ], [ %831, %836 ]
  %2298 = zext i32 %94 to i64
  %2299 = shl i32 %94, 3
  %2300 = add i32 %2299, %97
  %2301 = getelementptr i8, ptr %92, i64 %2298
  br label %2372

2302:                                             ; preds = %979, %965, %951, %934
  %2303 = phi i64 [ %931, %934 ], [ %946, %951 ], [ %960, %965 ], [ %974, %979 ]
  %2304 = zext i32 %94 to i64
  %2305 = shl i32 %94, 3
  %2306 = add i32 %2305, %935
  %2307 = getelementptr i8, ptr %92, i64 %2304
  br label %2372

2308:                                             ; preds = %1878
  %2309 = zext i32 %1869 to i64
  %2310 = shl i32 %1869, 3
  %2311 = add i32 %2310, %1871
  %2312 = getelementptr i8, ptr %1868, i64 %2309
  br label %2372

2313:                                             ; preds = %1787
  %2314 = zext i32 %1759 to i64
  %2315 = shl i32 %1759, 3
  %2316 = add i32 %2315, %1761
  %2317 = getelementptr i8, ptr %1758, i64 %2314
  br label %2372

2318:                                             ; preds = %1727
  %2319 = zext i32 %1709 to i64
  %2320 = shl i32 %1709, 3
  %2321 = add i32 %2320, %1711
  %2322 = getelementptr i8, ptr %1708, i64 %2319
  br label %2372

2323:                                             ; preds = %1650
  %2324 = zext i32 %1641 to i64
  %2325 = shl i32 %1641, 3
  %2326 = add i32 %2325, %1643
  %2327 = getelementptr i8, ptr %1640, i64 %2324
  br label %2372

2328:                                             ; preds = %1561
  %2329 = zext i32 %1532 to i64
  %2330 = shl i32 %1532, 3
  %2331 = add i32 %2330, %1534
  %2332 = getelementptr i8, ptr %1531, i64 %2329
  br label %2372

2333:                                             ; preds = %1500
  %2334 = zext i32 %1468 to i64
  %2335 = shl i32 %1468, 3
  %2336 = add i32 %2335, %1470
  %2337 = getelementptr i8, ptr %1467, i64 %2334
  br label %2372

2338:                                             ; preds = %1364
  %2339 = zext i32 %1245 to i64
  %2340 = shl i32 %1245, 3
  %2341 = add i32 %2340, %1247
  %2342 = getelementptr i8, ptr %1244, i64 %2339
  br label %2372

2343:                                             ; preds = %1283
  %2344 = zext i32 %1245 to i64
  %2345 = shl i32 %1245, 3
  %2346 = add i32 %2345, %1247
  %2347 = getelementptr i8, ptr %1244, i64 %2344
  br label %2372

2348:                                             ; preds = %1327
  %2349 = zext i32 %1245 to i64
  %2350 = shl i32 %1245, 3
  %2351 = add i32 %2350, %1247
  %2352 = getelementptr i8, ptr %1244, i64 %2349
  br label %2372

2353:                                             ; preds = %1060, %108
  %2354 = phi i64 [ %96, %108 ], [ %1055, %1060 ]
  %2355 = zext i32 %94 to i64
  %2356 = shl i32 %94, 3
  %2357 = add i32 %2356, %97
  %2358 = getelementptr i8, ptr %92, i64 %2355
  br label %2372

2359:                                             ; preds = %2209, %2195, %2181, %2165
  %2360 = phi i64 [ %2156, %2165 ], [ %2176, %2181 ], [ %2190, %2195 ], [ %2204, %2209 ]
  %2361 = zext i32 %2155 to i64
  %2362 = shl i32 %2155, 3
  %2363 = add i32 %2362, %2157
  %2364 = getelementptr i8, ptr %2154, i64 %2361
  br label %2372

2365:                                             ; preds = %2071, %2057, %2043, %2027
  %2366 = phi i64 [ %96, %2027 ], [ %2038, %2043 ], [ %2052, %2057 ], [ %2066, %2071 ]
  %2367 = zext i32 %94 to i64
  %2368 = shl i32 %94, 3
  %2369 = add i32 %2368, %97
  %2370 = getelementptr i8, ptr %92, i64 %2367
  br label %2372

2371:                                             ; preds = %90
  br label %2372

2372:                                             ; preds = %587, %603, %647, %667, %711, %865, %1007, %1022, %1459, %1934, %2015, %879, %1129, %90, %2371, %2365, %2359, %2353, %2348, %2343, %2338, %2333, %2328, %2323, %2318, %2313, %2308, %2302, %2296, %2290, %2284, %2278, %2272, %2266, %2260, %2255, %2240, %913
  %2373 = phi i32 [ %95, %913 ], [ %95, %2240 ], [ %95, %2255 ], [ %95, %2260 ], [ %95, %2266 ], [ %95, %2272 ], [ %95, %2278 ], [ %95, %2284 ], [ %95, %2290 ], [ %95, %2296 ], [ %95, %2302 ], [ %95, %2308 ], [ %95, %2313 ], [ %95, %2318 ], [ %95, %2323 ], [ %95, %2328 ], [ %95, %2333 ], [ %95, %2338 ], [ %95, %2343 ], [ %95, %2348 ], [ %95, %2353 ], [ %95, %2359 ], [ %95, %2365 ], [ %95, %90 ], [ %95, %1129 ], [ %95, %587 ], [ %95, %603 ], [ %95, %647 ], [ %95, %667 ], [ %95, %711 ], [ %95, %865 ], [ %95, %1007 ], [ %95, %1022 ], [ %95, %1459 ], [ 0, %1934 ], [ 0, %2015 ], [ %95, %879 ], [ %95, %2371 ]
  %2374 = phi ptr [ %904, %913 ], [ %2241, %2240 ], [ %2259, %2255 ], [ %2265, %2260 ], [ %2271, %2266 ], [ %2277, %2272 ], [ %2283, %2278 ], [ %2289, %2284 ], [ %2295, %2290 ], [ %2301, %2296 ], [ %2307, %2302 ], [ %2312, %2308 ], [ %2317, %2313 ], [ %2322, %2318 ], [ %2327, %2323 ], [ %2332, %2328 ], [ %2337, %2333 ], [ %2342, %2338 ], [ %2347, %2343 ], [ %2352, %2348 ], [ %2358, %2353 ], [ %2364, %2359 ], [ %2370, %2365 ], [ %92, %90 ], [ %1127, %1129 ], [ %589, %587 ], [ %596, %603 ], [ %650, %647 ], [ %660, %667 ], [ %714, %711 ], [ %866, %865 ], [ %998, %1007 ], [ %1016, %1022 ], [ %1442, %1459 ], [ %1935, %1934 ], [ %92, %2015 ], [ %871, %879 ], [ %92, %2371 ]
  %2375 = phi i32 [ %905, %913 ], [ %2242, %2240 ], [ 0, %2255 ], [ 0, %2260 ], [ 0, %2266 ], [ 0, %2272 ], [ 0, %2278 ], [ 0, %2284 ], [ 0, %2290 ], [ 0, %2296 ], [ 0, %2302 ], [ 0, %2308 ], [ 0, %2313 ], [ 0, %2318 ], [ 0, %2323 ], [ 0, %2328 ], [ 0, %2333 ], [ 0, %2338 ], [ 0, %2343 ], [ 0, %2348 ], [ 0, %2353 ], [ 0, %2359 ], [ 0, %2365 ], [ %94, %90 ], [ 0, %1129 ], [ %590, %587 ], [ 0, %603 ], [ %648, %647 ], [ 0, %667 ], [ %712, %711 ], [ %867, %865 ], [ %999, %1007 ], [ %1017, %1022 ], [ %1441, %1459 ], [ %1936, %1934 ], [ %94, %2015 ], [ 0, %879 ], [ %94, %2371 ]
  %2376 = phi i64 [ %915, %913 ], [ %2243, %2240 ], [ %1216, %2255 ], [ %2261, %2260 ], [ %2267, %2266 ], [ %2273, %2272 ], [ %2279, %2278 ], [ %2285, %2284 ], [ %2291, %2290 ], [ %2297, %2296 ], [ %2303, %2302 ], [ %1880, %2308 ], [ %1789, %2313 ], [ %1729, %2318 ], [ %1652, %2323 ], [ %1563, %2328 ], [ %1502, %2333 ], [ %1366, %2338 ], [ %1285, %2343 ], [ %1329, %2348 ], [ %2354, %2353 ], [ %2360, %2359 ], [ %2366, %2365 ], [ %96, %90 ], [ %1125, %1129 ], [ %517, %587 ], [ %598, %603 ], [ %598, %647 ], [ %662, %667 ], [ %662, %711 ], [ %868, %865 ], [ 0, %1007 ], [ %1018, %1022 ], [ %1440, %1459 ], [ %1937, %1934 ], [ %96, %2015 ], [ %873, %879 ], [ %96, %2371 ]
  %2377 = phi i32 [ %914, %913 ], [ %2244, %2240 ], [ %2258, %2255 ], [ %2264, %2260 ], [ %2270, %2266 ], [ %2276, %2272 ], [ %2282, %2278 ], [ %2288, %2284 ], [ %2294, %2290 ], [ %2300, %2296 ], [ %2306, %2302 ], [ %2311, %2308 ], [ %2316, %2313 ], [ %2321, %2318 ], [ %2326, %2323 ], [ %2331, %2328 ], [ %2336, %2333 ], [ %2341, %2338 ], [ %2346, %2343 ], [ %2351, %2348 ], [ %2357, %2353 ], [ %2363, %2359 ], [ %2369, %2365 ], [ %97, %90 ], [ %1124, %1129 ], [ %518, %587 ], [ %599, %603 ], [ %599, %647 ], [ %663, %667 ], [ %663, %711 ], [ %869, %865 ], [ 0, %1007 ], [ %1019, %1022 ], [ %1439, %1459 ], [ %1938, %1934 ], [ %97, %2015 ], [ %874, %879 ], [ %97, %2371 ]
  %2378 = phi i32 [ %98, %913 ], [ %2158, %2240 ], [ %98, %2255 ], [ %98, %2260 ], [ %98, %2266 ], [ %98, %2272 ], [ %98, %2278 ], [ %98, %2284 ], [ %98, %2290 ], [ %98, %2296 ], [ %98, %2302 ], [ %98, %2308 ], [ %98, %2313 ], [ %98, %2318 ], [ %98, %2323 ], [ %98, %2328 ], [ %98, %2333 ], [ %98, %2338 ], [ %98, %2343 ], [ %98, %2348 ], [ %98, %2353 ], [ %2158, %2359 ], [ %98, %2365 ], [ %98, %90 ], [ %98, %1129 ], [ %98, %879 ], [ %98, %2015 ], [ %98, %1934 ], [ %98, %1459 ], [ %98, %1022 ], [ %98, %1007 ], [ %98, %865 ], [ %98, %711 ], [ %98, %667 ], [ %98, %647 ], [ %98, %603 ], [ %98, %587 ], [ %98, %2371 ]
  %2379 = phi i32 [ %99, %913 ], [ 1, %2240 ], [ %1180, %2255 ], [ %99, %2260 ], [ %99, %2266 ], [ %99, %2272 ], [ %99, %2278 ], [ %99, %2284 ], [ %99, %2290 ], [ %99, %2296 ], [ %99, %2302 ], [ %1872, %2308 ], [ %1712, %2313 ], [ %1712, %2318 ], [ %1644, %2323 ], [ %1471, %2328 ], [ %1471, %2333 ], [ %1180, %2338 ], [ %1180, %2343 ], [ %1180, %2348 ], [ %99, %2353 ], [ %99, %2359 ], [ %99, %2365 ], [ -3, %90 ], [ %99, %1129 ], [ %99, %587 ], [ %99, %603 ], [ %99, %647 ], [ %99, %667 ], [ %99, %711 ], [ %99, %865 ], [ %99, %1007 ], [ %99, %1022 ], [ 0, %1459 ], [ %1939, %1934 ], [ %99, %2015 ], [ %99, %879 ], [ 1, %2371 ]
  store ptr %93, ptr %26, align 8, !tbaa !49
  store i32 %2373, ptr %41, align 8, !tbaa !52
  store ptr %2374, ptr %0, align 8, !tbaa !50
  store i32 %2375, ptr %43, align 8, !tbaa !51
  store i64 %2376, ptr %45, align 8, !tbaa !31
  store i32 %2377, ptr %47, align 8, !tbaa !32
  %2380 = load i32, ptr %79, align 4, !tbaa !38
  %2381 = icmp eq i32 %2380, 0
  br i1 %2381, label %2382, label %2391

2382:                                             ; preds = %2372
  %2383 = icmp eq i32 %2378, %2373
  br i1 %2383, label %2479, label %2384

2384:                                             ; preds = %2382
  %2385 = load i32, ptr %21, align 8, !tbaa !20
  %2386 = icmp ult i32 %2385, 16209
  br i1 %2386, label %2387, label %2479

2387:                                             ; preds = %2384
  %2388 = icmp samesign ult i32 %2385, 16206
  %2389 = icmp ne i32 %1, 4
  %2390 = or i1 %2389, %2388
  br i1 %2390, label %2391, label %2479

2391:                                             ; preds = %2387, %2372
  %2392 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2378, i32 %2373), !nosanitize !47
  %2393 = extractvalue { i32, i1 } %2392, 1, !nosanitize !47
  br i1 %2393, label %2394, label %2395, !prof !48, !nosanitize !47

2394:                                             ; preds = %2391
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

2395:                                             ; preds = %2391
  %2396 = extractvalue { i32, i1 } %2392, 0, !nosanitize !47
  %2397 = load ptr, ptr %14, align 8, !tbaa !15
  %2398 = getelementptr inbounds nuw i8, ptr %2397, i64 72
  %2399 = load ptr, ptr %2398, align 8, !tbaa !41
  %2400 = icmp eq ptr %2399, null
  br i1 %2400, label %2401, label %2410

2401:                                             ; preds = %2395
  %2402 = load ptr, ptr %6, align 8, !tbaa !5
  %2403 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %2404 = load ptr, ptr %2403, align 8, !tbaa !43
  %2405 = getelementptr inbounds nuw i8, ptr %2397, i64 56
  %2406 = load i32, ptr %2405, align 8, !tbaa !42
  %2407 = shl nuw i32 1, %2406
  %2408 = call ptr %2402(ptr noundef %2404, i32 noundef %2407, i32 noundef 1) #10
  store ptr %2408, ptr %2398, align 8, !tbaa !41
  %2409 = icmp eq ptr %2408, null
  br i1 %2409, label %2478, label %2410

2410:                                             ; preds = %2401, %2395
  %2411 = phi ptr [ %2408, %2401 ], [ %2399, %2395 ]
  %2412 = getelementptr inbounds nuw i8, ptr %2397, i64 60
  %2413 = load i32, ptr %2412, align 4, !tbaa !38
  %2414 = icmp eq i32 %2413, 0
  br i1 %2414, label %2415, label %2421

2415:                                             ; preds = %2410
  %2416 = getelementptr inbounds nuw i8, ptr %2397, i64 56
  %2417 = load i32, ptr %2416, align 8, !tbaa !42
  %2418 = shl nuw i32 1, %2417
  store i32 %2418, ptr %2412, align 4, !tbaa !38
  %2419 = getelementptr inbounds nuw i8, ptr %2397, i64 68
  store i32 0, ptr %2419, align 4, !tbaa !40
  %2420 = getelementptr inbounds nuw i8, ptr %2397, i64 64
  store i32 0, ptr %2420, align 8, !tbaa !39
  br label %2421

2421:                                             ; preds = %2415, %2410
  %2422 = phi i32 [ %2418, %2415 ], [ %2413, %2410 ]
  %2423 = icmp ult i32 %2396, %2422
  br i1 %2423, label %2431, label %2424

2424:                                             ; preds = %2421
  %2425 = zext i32 %2422 to i64
  %2426 = sub nsw i64 0, %2425
  %2427 = getelementptr inbounds i8, ptr %93, i64 %2426
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2411, ptr noundef nonnull readonly align 1 dereferenceable(1) %2427, i64 %2425, i1 false)
  %2428 = getelementptr inbounds nuw i8, ptr %2397, i64 68
  store i32 0, ptr %2428, align 4, !tbaa !40
  %2429 = load i32, ptr %2412, align 4, !tbaa !38
  %2430 = getelementptr inbounds nuw i8, ptr %2397, i64 64
  store i32 %2429, ptr %2430, align 8, !tbaa !39
  br label %2479

2431:                                             ; preds = %2421
  %2432 = getelementptr inbounds nuw i8, ptr %2397, i64 68
  %2433 = load i32, ptr %2432, align 4, !tbaa !40
  %2434 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2422, i32 %2433), !nosanitize !47
  %2435 = extractvalue { i32, i1 } %2434, 1, !nosanitize !47
  br i1 %2435, label %2436, label %2437, !prof !48, !nosanitize !47

2436:                                             ; preds = %2431
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

2437:                                             ; preds = %2431
  %2438 = extractvalue { i32, i1 } %2434, 0, !nosanitize !47
  %2439 = call i32 @llvm.umin.i32(i32 %2438, i32 %2396)
  %2440 = zext i32 %2433 to i64
  %2441 = getelementptr inbounds nuw i8, ptr %2411, i64 %2440
  %2442 = zext i32 %2396 to i64
  %2443 = sub nsw i64 0, %2442
  %2444 = getelementptr inbounds i8, ptr %93, i64 %2443
  %2445 = zext i32 %2439 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2441, ptr readonly align 1 %2444, i64 %2445, i1 false)
  %2446 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2396, i32 %2439), !nosanitize !47
  %2447 = extractvalue { i32, i1 } %2446, 0, !nosanitize !47
  %2448 = extractvalue { i32, i1 } %2446, 1, !nosanitize !47
  br i1 %2448, label %2449, label %2450, !prof !48, !nosanitize !47

2449:                                             ; preds = %2437
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

2450:                                             ; preds = %2437
  %2451 = icmp eq i32 %2447, 0
  br i1 %2451, label %2459, label %2452

2452:                                             ; preds = %2450
  %2453 = load ptr, ptr %2398, align 8, !tbaa !41
  %2454 = zext i32 %2447 to i64
  %2455 = sub nsw i64 0, %2454
  %2456 = getelementptr inbounds i8, ptr %93, i64 %2455
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2453, ptr nonnull readonly align 1 %2456, i64 %2454, i1 false)
  store i32 %2447, ptr %2432, align 4, !tbaa !40
  %2457 = load i32, ptr %2412, align 4, !tbaa !38
  %2458 = getelementptr inbounds nuw i8, ptr %2397, i64 64
  store i32 %2457, ptr %2458, align 8, !tbaa !39
  br label %2479

2459:                                             ; preds = %2450
  %2460 = load i32, ptr %2432, align 4, !tbaa !40
  %2461 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2460, i32 %2439), !nosanitize !47
  %2462 = extractvalue { i32, i1 } %2461, 1, !nosanitize !47
  br i1 %2462, label %2463, label %2464, !prof !48, !nosanitize !47

2463:                                             ; preds = %2459
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

2464:                                             ; preds = %2459
  %2465 = extractvalue { i32, i1 } %2461, 0, !nosanitize !47
  %2466 = load i32, ptr %2412, align 4, !tbaa !38
  %2467 = icmp eq i32 %2465, %2466
  %2468 = select i1 %2467, i32 0, i32 %2465
  store i32 %2468, ptr %2432, align 4
  %2469 = getelementptr inbounds nuw i8, ptr %2397, i64 64
  %2470 = load i32, ptr %2469, align 8, !tbaa !39
  %2471 = icmp ult i32 %2470, %2466
  br i1 %2471, label %2472, label %2479

2472:                                             ; preds = %2464
  %2473 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2470, i32 %2439), !nosanitize !47
  %2474 = extractvalue { i32, i1 } %2473, 1, !nosanitize !47
  br i1 %2474, label %2475, label %2476, !prof !48, !nosanitize !47

2475:                                             ; preds = %2472
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

2476:                                             ; preds = %2472
  %2477 = extractvalue { i32, i1 } %2473, 0, !nosanitize !47
  store i32 %2477, ptr %2469, align 8, !tbaa !39
  br label %2479

2478:                                             ; preds = %2401
  store i32 16210, ptr %21, align 8, !tbaa !20
  br label %2565

2479:                                             ; preds = %2424, %2464, %2476, %2452, %2387, %2384, %2382
  %2480 = load i32, ptr %43, align 8, !tbaa !51
  %2481 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %44, i32 %2480), !nosanitize !47
  %2482 = extractvalue { i32, i1 } %2481, 0, !nosanitize !47
  %2483 = extractvalue { i32, i1 } %2481, 1, !nosanitize !47
  br i1 %2483, label %2484, label %2485, !prof !48, !nosanitize !47

2484:                                             ; preds = %2479
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

2485:                                             ; preds = %2479
  %2486 = load i32, ptr %41, align 8, !tbaa !52
  %2487 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2378, i32 %2486), !nosanitize !47
  %2488 = extractvalue { i32, i1 } %2487, 0, !nosanitize !47
  %2489 = extractvalue { i32, i1 } %2487, 1, !nosanitize !47
  br i1 %2489, label %2490, label %2491, !prof !48, !nosanitize !47

2490:                                             ; preds = %2485
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

2491:                                             ; preds = %2485
  %2492 = zext i32 %2482 to i64
  %2493 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2494 = load i64, ptr %2493, align 8, !tbaa !22
  %2495 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2494, i64 %2492), !nosanitize !47
  %2496 = extractvalue { i64, i1 } %2495, 1, !nosanitize !47
  br i1 %2496, label %2497, label %2498, !prof !48, !nosanitize !47

2497:                                             ; preds = %2491
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

2498:                                             ; preds = %2491
  %2499 = extractvalue { i64, i1 } %2495, 0, !nosanitize !47
  store i64 %2499, ptr %2493, align 8, !tbaa !22
  %2500 = zext i32 %2488 to i64
  %2501 = load i64, ptr %50, align 8, !tbaa !104
  %2502 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2501, i64 %2500), !nosanitize !47
  %2503 = extractvalue { i64, i1 } %2502, 1, !nosanitize !47
  br i1 %2503, label %2504, label %2505, !prof !48, !nosanitize !47

2504:                                             ; preds = %2498
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

2505:                                             ; preds = %2498
  %2506 = extractvalue { i64, i1 } %2502, 0, !nosanitize !47
  store i64 %2506, ptr %50, align 8, !tbaa !104
  %2507 = load i64, ptr %51, align 8, !tbaa !21
  %2508 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2507, i64 %2500), !nosanitize !47
  %2509 = extractvalue { i64, i1 } %2508, 1, !nosanitize !47
  br i1 %2509, label %2510, label %2511, !prof !48, !nosanitize !47

2510:                                             ; preds = %2545, %2538, %2531, %2505
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

2511:                                             ; preds = %2505
  %2512 = extractvalue { i64, i1 } %2508, 0, !nosanitize !47
  store i64 %2512, ptr %51, align 8, !tbaa !21
  %2513 = load i32, ptr %49, align 8, !tbaa !24
  %2514 = and i32 %2513, 4
  %2515 = icmp ne i32 %2514, 0
  %2516 = icmp ne i32 %2488, 0
  %2517 = select i1 %2515, i1 %2516, i1 false
  br i1 %2517, label %2518, label %2531

2518:                                             ; preds = %2511
  %2519 = load i32, ptr %52, align 8, !tbaa !28
  %2520 = icmp eq i32 %2519, 0
  %2521 = load i64, ptr %53, align 8, !tbaa !56
  %2522 = load ptr, ptr %26, align 8, !tbaa !49
  %2523 = sub nsw i64 0, %2500
  %2524 = getelementptr inbounds i8, ptr %2522, i64 %2523
  br i1 %2520, label %2527, label %2525

2525:                                             ; preds = %2518
  %2526 = call i64 @crc32(i64 noundef %2521, ptr noundef nonnull %2524, i32 noundef %2488) #10
  br label %2529

2527:                                             ; preds = %2518
  %2528 = call i64 @adler32(i64 noundef %2521, ptr noundef nonnull %2524, i32 noundef %2488) #10
  br label %2529

2529:                                             ; preds = %2527, %2525
  %2530 = phi i64 [ %2526, %2525 ], [ %2528, %2527 ]
  store i64 %2530, ptr %53, align 8, !tbaa !56
  store i64 %2530, ptr %54, align 8, !tbaa !25
  br label %2531

2531:                                             ; preds = %2529, %2511
  %2532 = load i32, ptr %47, align 8, !tbaa !32
  %2533 = load i32, ptr %83, align 4, !tbaa !26
  %2534 = icmp eq i32 %2533, 0
  %2535 = select i1 %2534, i32 0, i32 64
  %2536 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2532, i32 %2535), !nosanitize !47
  %2537 = extractvalue { i32, i1 } %2536, 1, !nosanitize !47
  br i1 %2537, label %2510, label %2538, !prof !48, !nosanitize !47

2538:                                             ; preds = %2531
  %2539 = extractvalue { i32, i1 } %2536, 0, !nosanitize !47
  %2540 = load i32, ptr %21, align 8, !tbaa !20
  %2541 = icmp eq i32 %2540, 16191
  %2542 = select i1 %2541, i32 128, i32 0
  %2543 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2539, i32 %2542), !nosanitize !47
  %2544 = extractvalue { i32, i1 } %2543, 1, !nosanitize !47
  br i1 %2544, label %2510, label %2545, !prof !48, !nosanitize !47

2545:                                             ; preds = %2538
  %2546 = extractvalue { i32, i1 } %2543, 0, !nosanitize !47
  %2547 = icmp eq i32 %2540, 16199
  %2548 = icmp eq i32 %2540, 16194
  %2549 = or i1 %2547, %2548
  %2550 = select i1 %2549, i32 256, i32 0
  %2551 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2546, i32 %2550), !nosanitize !47
  %2552 = extractvalue { i32, i1 } %2551, 1, !nosanitize !47
  br i1 %2552, label %2510, label %2553, !prof !48, !nosanitize !47

2553:                                             ; preds = %2545
  %2554 = extractvalue { i32, i1 } %2551, 0, !nosanitize !47
  %2555 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %2554, ptr %2555, align 8, !tbaa !23
  %2556 = icmp eq i32 %2482, 0
  %2557 = icmp eq i32 %2488, 0
  %2558 = select i1 %2556, i1 %2557, i1 false
  %2559 = icmp eq i32 %1, 4
  %2560 = or i1 %2559, %2558
  %2561 = icmp eq i32 %2379, 0
  %2562 = select i1 %2560, i1 %2561, i1 false
  %2563 = select i1 %2562, i32 -5, i32 %2379
  br label %2565

2564:                                             ; preds = %90
  br label %2565

2565:                                             ; preds = %90, %2564, %13, %17, %2, %5, %9, %20, %25, %32, %2553, %2478, %862
  %2566 = phi i32 [ -4, %2478 ], [ %2563, %2553 ], [ 2, %862 ], [ -2, %32 ], [ -2, %25 ], [ -2, %20 ], [ -2, %9 ], [ -2, %5 ], [ -2, %2 ], [ -2, %17 ], [ -2, %13 ], [ -4, %2564 ], [ -2, %90 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %2566
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #4

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

declare void @inflate_fixed(ptr noundef) local_unnamed_addr #5

declare i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @inflate_fast(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @inflateEnd(ptr noundef captures(address) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %37, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !16
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !20
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = getelementptr inbounds nuw i8, ptr %13, i64 72
  %25 = load ptr, ptr %24, align 8, !tbaa !41
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %29 = load ptr, ptr %28, align 8, !tbaa !43
  tail call void %9(ptr noundef %29, ptr noundef nonnull %25) #10
  %30 = load ptr, ptr %8, align 8, !tbaa !14
  %31 = load ptr, ptr %12, align 8, !tbaa !15
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi ptr [ %31, %27 ], [ %13, %23 ]
  %34 = phi ptr [ %30, %27 ], [ %9, %23 ]
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %36 = load ptr, ptr %35, align 8, !tbaa !43
  tail call void %34(ptr noundef %36, ptr noundef %33) #10
  store ptr null, ptr %12, align 8, !tbaa !15
  br label %37

37:                                               ; preds = %11, %15, %1, %3, %7, %18, %32
  %38 = phi i32 [ 0, %32 ], [ -2, %18 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @inflateGetDictionary(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %56, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %56, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %56, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %56, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %56

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %56

25:                                               ; preds = %20
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 64
  %27 = load i32, ptr %26, align 8, !tbaa !39
  %28 = icmp ne i32 %27, 0
  %29 = icmp ne ptr %1, null
  %30 = and i1 %29, %28
  br i1 %30, label %31, label %52

31:                                               ; preds = %25
  %32 = getelementptr inbounds nuw i8, ptr %15, i64 68
  %33 = load i32, ptr %32, align 4, !tbaa !40
  %34 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %27, i32 %33), !nosanitize !47
  %35 = extractvalue { i32, i1 } %34, 1, !nosanitize !47
  br i1 %35, label %36, label %37, !prof !48, !nosanitize !47

36:                                               ; preds = %31
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

37:                                               ; preds = %31
  %38 = extractvalue { i32, i1 } %34, 0, !nosanitize !47
  %39 = getelementptr inbounds nuw i8, ptr %15, i64 72
  %40 = load ptr, ptr %39, align 8, !tbaa !41
  %41 = zext i32 %33 to i64
  %42 = getelementptr inbounds nuw i8, ptr %40, i64 %41
  %43 = zext i32 %38 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %42, i64 %43, i1 false)
  %44 = load i32, ptr %26, align 8, !tbaa !39
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 %45
  %47 = load i32, ptr %32, align 4, !tbaa !40
  %48 = zext i32 %47 to i64
  %49 = sub nsw i64 0, %48
  %50 = getelementptr inbounds i8, ptr %46, i64 %49
  %51 = load ptr, ptr %39, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %50, ptr align 1 %51, i64 %48, i1 false)
  br label %52

52:                                               ; preds = %37, %25
  %53 = icmp eq ptr %2, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %52
  %55 = load i32, ptr %26, align 8, !tbaa !39
  store i32 %55, ptr %2, align 4, !tbaa !46
  br label %56

56:                                               ; preds = %13, %17, %3, %5, %9, %52, %54, %20
  %57 = phi i32 [ -2, %20 ], [ 0, %54 ], [ 0, %52 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -4, 1) i32 @inflateSetDictionary(ptr noundef readonly captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %124, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %124, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %124, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %124, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %124

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %124

25:                                               ; preds = %20
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %27 = load i32, ptr %26, align 8, !tbaa !24
  %28 = icmp eq i32 %27, 0
  %29 = icmp eq i32 %22, 16190
  br i1 %28, label %31, label %30

30:                                               ; preds = %25
  br i1 %29, label %32, label %124

31:                                               ; preds = %25
  br i1 %29, label %32, label %40

32:                                               ; preds = %30, %31
  %33 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  %34 = tail call i64 @adler32(i64 noundef %33, ptr noundef %1, i32 noundef %2) #10
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %36 = load i64, ptr %35, align 8, !tbaa !56
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %124

38:                                               ; preds = %32
  %39 = load ptr, ptr %14, align 8, !tbaa !15
  br label %40

40:                                               ; preds = %38, %31
  %41 = phi ptr [ %39, %38 ], [ %15, %31 ]
  %42 = zext i32 %2 to i64
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 %42
  %44 = getelementptr inbounds nuw i8, ptr %41, i64 72
  %45 = load ptr, ptr %44, align 8, !tbaa !41
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load ptr, ptr %6, align 8, !tbaa !5
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %50 = load ptr, ptr %49, align 8, !tbaa !43
  %51 = getelementptr inbounds nuw i8, ptr %41, i64 56
  %52 = load i32, ptr %51, align 8, !tbaa !42
  %53 = shl nuw i32 1, %52
  %54 = tail call ptr %48(ptr noundef %50, i32 noundef %53, i32 noundef 1) #10
  store ptr %54, ptr %44, align 8, !tbaa !41
  %55 = icmp eq ptr %54, null
  br i1 %55, label %121, label %56

56:                                               ; preds = %47, %40
  %57 = phi ptr [ %54, %47 ], [ %45, %40 ]
  %58 = getelementptr inbounds nuw i8, ptr %41, i64 60
  %59 = load i32, ptr %58, align 4, !tbaa !38
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = getelementptr inbounds nuw i8, ptr %41, i64 56
  %63 = load i32, ptr %62, align 8, !tbaa !42
  %64 = shl nuw i32 1, %63
  store i32 %64, ptr %58, align 4, !tbaa !38
  %65 = getelementptr inbounds nuw i8, ptr %41, i64 68
  store i32 0, ptr %65, align 4, !tbaa !40
  %66 = getelementptr inbounds nuw i8, ptr %41, i64 64
  store i32 0, ptr %66, align 8, !tbaa !39
  br label %67

67:                                               ; preds = %61, %56
  %68 = phi i32 [ %64, %61 ], [ %59, %56 ]
  %69 = icmp ult i32 %2, %68
  br i1 %69, label %77, label %70

70:                                               ; preds = %67
  %71 = zext i32 %68 to i64
  %72 = sub nsw i64 0, %71
  %73 = getelementptr inbounds i8, ptr %43, i64 %72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %57, ptr noundef nonnull readonly align 1 dereferenceable(1) %73, i64 %71, i1 false)
  %74 = getelementptr inbounds nuw i8, ptr %41, i64 68
  store i32 0, ptr %74, align 4, !tbaa !40
  %75 = load i32, ptr %58, align 4, !tbaa !38
  %76 = getelementptr inbounds nuw i8, ptr %41, i64 64
  store i32 %75, ptr %76, align 8, !tbaa !39
  br label %122

77:                                               ; preds = %67
  %78 = getelementptr inbounds nuw i8, ptr %41, i64 68
  %79 = load i32, ptr %78, align 4, !tbaa !40
  %80 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %68, i32 %79), !nosanitize !47
  %81 = extractvalue { i32, i1 } %80, 1, !nosanitize !47
  br i1 %81, label %82, label %83, !prof !48, !nosanitize !47

82:                                               ; preds = %77
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

83:                                               ; preds = %77
  %84 = extractvalue { i32, i1 } %80, 0, !nosanitize !47
  %85 = tail call i32 @llvm.umin.i32(i32 %84, i32 %2)
  %86 = zext i32 %79 to i64
  %87 = getelementptr inbounds nuw i8, ptr %57, i64 %86
  %88 = zext i32 %85 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %87, ptr readonly align 1 %1, i64 %88, i1 false)
  %89 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2, i32 %85), !nosanitize !47
  %90 = extractvalue { i32, i1 } %89, 0, !nosanitize !47
  %91 = extractvalue { i32, i1 } %89, 1, !nosanitize !47
  br i1 %91, label %92, label %93, !prof !48, !nosanitize !47

92:                                               ; preds = %83
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

93:                                               ; preds = %83
  %94 = icmp eq i32 %90, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %93
  %96 = load ptr, ptr %44, align 8, !tbaa !41
  %97 = zext i32 %90 to i64
  %98 = sub nsw i64 0, %97
  %99 = getelementptr inbounds i8, ptr %43, i64 %98
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %96, ptr nonnull readonly align 1 %99, i64 %97, i1 false)
  store i32 %90, ptr %78, align 4, !tbaa !40
  %100 = load i32, ptr %58, align 4, !tbaa !38
  %101 = getelementptr inbounds nuw i8, ptr %41, i64 64
  store i32 %100, ptr %101, align 8, !tbaa !39
  br label %122

102:                                              ; preds = %93
  %103 = load i32, ptr %78, align 4, !tbaa !40
  %104 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %103, i32 %85), !nosanitize !47
  %105 = extractvalue { i32, i1 } %104, 1, !nosanitize !47
  br i1 %105, label %106, label %107, !prof !48, !nosanitize !47

106:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

107:                                              ; preds = %102
  %108 = extractvalue { i32, i1 } %104, 0, !nosanitize !47
  %109 = load i32, ptr %58, align 4, !tbaa !38
  %110 = icmp eq i32 %108, %109
  %111 = select i1 %110, i32 0, i32 %108
  store i32 %111, ptr %78, align 4
  %112 = getelementptr inbounds nuw i8, ptr %41, i64 64
  %113 = load i32, ptr %112, align 8, !tbaa !39
  %114 = icmp ult i32 %113, %109
  br i1 %114, label %115, label %122

115:                                              ; preds = %107
  %116 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %113, i32 %85), !nosanitize !47
  %117 = extractvalue { i32, i1 } %116, 1, !nosanitize !47
  br i1 %117, label %118, label %119, !prof !48, !nosanitize !47

118:                                              ; preds = %115
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

119:                                              ; preds = %115
  %120 = extractvalue { i32, i1 } %116, 0, !nosanitize !47
  store i32 %120, ptr %112, align 8, !tbaa !39
  br label %122

121:                                              ; preds = %47
  store i32 16210, ptr %21, align 8, !tbaa !20
  br label %124

122:                                              ; preds = %95, %119, %107, %70
  %123 = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i32 1, ptr %123, align 4, !tbaa !27
  br label %124

124:                                              ; preds = %13, %17, %3, %5, %9, %32, %30, %20, %122, %121
  %125 = phi i32 [ -4, %121 ], [ 0, %122 ], [ -2, %20 ], [ -2, %30 ], [ -3, %32 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %125
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflateGetHeader(ptr noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !16
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !20
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %26 = load i32, ptr %25, align 8, !tbaa !24
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr %1, ptr %30, align 8, !tbaa !30
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 0, ptr %31, align 8, !tbaa !57
  br label %32

32:                                               ; preds = %12, %16, %2, %4, %8, %24, %19, %29
  %33 = phi i32 [ 0, %29 ], [ -2, %19 ], [ -2, %24 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @inflateSync(ptr noundef captures(address) %0) local_unnamed_addr #2 {
  %2 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  %3 = icmp eq ptr %0, null
  br i1 %3, label %209, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %209, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %209, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %209, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !16
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %209

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !20
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %209

24:                                               ; preds = %19
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %26 = load i32, ptr %25, align 8, !tbaa !51
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %14, i64 88
  %30 = load i32, ptr %29, align 8, !tbaa !32
  %31 = icmp ult i32 %30, 8
  br i1 %31, label %209, label %32

32:                                               ; preds = %28, %24
  %33 = icmp eq i32 %21, 16211
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = getelementptr inbounds nuw i8, ptr %14, i64 140
  %36 = load i32, ptr %35, align 4, !tbaa !46
  br label %123

37:                                               ; preds = %32
  store i32 16211, ptr %20, align 8, !tbaa !20
  %38 = getelementptr inbounds nuw i8, ptr %14, i64 88
  %39 = load i32, ptr %38, align 8, !tbaa !32
  %40 = and i32 %39, 7
  %41 = getelementptr inbounds nuw i8, ptr %14, i64 80
  %42 = load i64, ptr %41, align 8, !tbaa !31
  %43 = zext nneg i32 %40 to i64
  %44 = lshr i64 %42, %43
  store i64 %44, ptr %41, align 8, !tbaa !31
  %45 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %39, i32 %40), !nosanitize !47
  %46 = extractvalue { i32, i1 } %45, 1, !nosanitize !47
  br i1 %46, label %60, label %47, !prof !48, !nosanitize !47

47:                                               ; preds = %37
  %48 = extractvalue { i32, i1 } %45, 0
  %49 = icmp ugt i32 %48, 7
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store i32 %48, ptr %38, align 8, !tbaa !32
  br label %119

51:                                               ; preds = %47
  %52 = add i32 %48, -8
  %53 = lshr i32 %52, 3
  %54 = add nuw nsw i32 %53, 1
  %55 = zext nneg i32 %54 to i64
  %56 = and i64 %55, 3
  %57 = icmp ult i32 %52, 24
  br i1 %57, label %83, label %58

58:                                               ; preds = %51
  %59 = and i64 %55, 1073741820
  br label %61

60:                                               ; preds = %37
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

61:                                               ; preds = %61, %58
  %62 = phi i64 [ %44, %58 ], [ %80, %61 ]
  %63 = phi i64 [ 0, %58 ], [ %77, %61 ]
  %64 = phi i64 [ 0, %58 ], [ %81, %61 ]
  %65 = or disjoint i64 %63, 1
  %66 = trunc i64 %62 to i8
  %67 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 0, i64 %63
  store i8 %66, ptr %67, align 1, !tbaa !44
  %68 = lshr i64 %62, 8
  %69 = or disjoint i64 %63, 2
  %70 = trunc i64 %68 to i8
  %71 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 0, i64 %65
  store i8 %70, ptr %71, align 1, !tbaa !44
  %72 = lshr i64 %62, 16
  %73 = or disjoint i64 %63, 3
  %74 = trunc i64 %72 to i8
  %75 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 0, i64 %69
  store i8 %74, ptr %75, align 1, !tbaa !44
  %76 = lshr i64 %62, 24
  %77 = add nuw nsw i64 %63, 4
  %78 = trunc i64 %76 to i8
  %79 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 0, i64 %73
  store i8 %78, ptr %79, align 1, !tbaa !44
  %80 = lshr i64 %62, 32
  %81 = add i64 %64, 4
  %82 = icmp eq i64 %81, %59
  br i1 %82, label %83, label %61, !llvm.loop !106

83:                                               ; preds = %61, %51
  %84 = phi i64 [ poison, %51 ], [ %80, %61 ]
  %85 = phi i64 [ %44, %51 ], [ %80, %61 ]
  %86 = phi i64 [ 0, %51 ], [ %77, %61 ]
  %87 = icmp eq i64 %56, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %83, %88
  %89 = phi i64 [ %95, %88 ], [ %85, %83 ]
  %90 = phi i64 [ %92, %88 ], [ %86, %83 ]
  %91 = phi i64 [ %96, %88 ], [ 0, %83 ]
  %92 = add nuw nsw i64 %90, 1
  %93 = trunc i64 %89 to i8
  %94 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 0, i64 %90
  store i8 %93, ptr %94, align 1, !tbaa !44
  %95 = lshr i64 %89, 8
  %96 = add i64 %91, 1
  %97 = icmp eq i64 %96, %56
  br i1 %97, label %98, label %88, !llvm.loop !107

98:                                               ; preds = %88, %83
  %99 = phi i64 [ %84, %83 ], [ %95, %88 ]
  store i64 %99, ptr %41, align 8, !tbaa !31
  store i32 0, ptr %38, align 8, !tbaa !32
  %100 = zext nneg i32 %54 to i64
  br label %101

101:                                              ; preds = %101, %98
  %102 = phi i64 [ 0, %98 ], [ %104, %101 ]
  %103 = phi i32 [ 0, %98 ], [ %115, %101 ]
  %104 = add nuw nsw i64 %102, 1
  %105 = icmp samesign ult i32 %103, 2
  %106 = select i1 %105, i32 0, i32 255
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 %102
  %108 = load i8, ptr %107, align 1, !tbaa !44
  %109 = zext i8 %108 to i32
  %110 = icmp eq i32 %106, %109
  %111 = add nuw nsw i32 %103, 1
  %112 = icmp eq i8 %108, 0
  %113 = sub nuw nsw i32 4, %103
  %114 = select i1 %112, i32 %113, i32 0
  %115 = select i1 %110, i32 %111, i32 %114
  %116 = icmp samesign ult i64 %104, %100
  %117 = icmp samesign ult i32 %115, 4
  %118 = select i1 %116, i1 %117, i1 false
  br i1 %118, label %101, label %119, !llvm.loop !109

119:                                              ; preds = %101, %50
  %120 = phi i32 [ 0, %50 ], [ %115, %101 ]
  %121 = getelementptr inbounds nuw i8, ptr %14, i64 140
  store i32 %120, ptr %121, align 4, !tbaa !46
  %122 = load i32, ptr %25, align 8, !tbaa !51
  br label %123

123:                                              ; preds = %34, %119
  %124 = phi i32 [ %120, %119 ], [ %36, %34 ]
  %125 = phi i32 [ %122, %119 ], [ %26, %34 ]
  %126 = getelementptr inbounds nuw i8, ptr %14, i64 140
  %127 = load ptr, ptr %0, align 8, !tbaa !50
  %128 = icmp ne i32 %125, 0
  %129 = icmp ult i32 %124, 4
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %131, label %153

131:                                              ; preds = %123
  %132 = zext i32 %125 to i64
  br label %133

133:                                              ; preds = %133, %131
  %134 = phi i64 [ 0, %131 ], [ %136, %133 ]
  %135 = phi i32 [ %124, %131 ], [ %147, %133 ]
  %136 = add nuw nsw i64 %134, 1
  %137 = icmp samesign ult i32 %135, 2
  %138 = select i1 %137, i32 0, i32 255
  %139 = getelementptr inbounds nuw i8, ptr %127, i64 %134
  %140 = load i8, ptr %139, align 1, !tbaa !44
  %141 = zext i8 %140 to i32
  %142 = icmp eq i32 %138, %141
  %143 = add nuw nsw i32 %135, 1
  %144 = icmp eq i8 %140, 0
  %145 = sub nuw nsw i32 4, %135
  %146 = select i1 %144, i32 %145, i32 0
  %147 = select i1 %142, i32 %143, i32 %146
  %148 = icmp samesign ult i64 %136, %132
  %149 = icmp samesign ult i32 %147, 4
  %150 = select i1 %148, i1 %149, i1 false
  br i1 %150, label %133, label %151, !llvm.loop !109

151:                                              ; preds = %133
  %152 = trunc nuw i64 %136 to i32
  br label %153

153:                                              ; preds = %123, %151
  %154 = phi i32 [ %124, %123 ], [ %147, %151 ]
  %155 = phi i32 [ 0, %123 ], [ %152, %151 ]
  store i32 %154, ptr %126, align 4, !tbaa !46
  %156 = load i32, ptr %25, align 8, !tbaa !51
  %157 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %156, i32 %155), !nosanitize !47
  %158 = extractvalue { i32, i1 } %157, 1, !nosanitize !47
  br i1 %158, label %159, label %160, !prof !48, !nosanitize !47

159:                                              ; preds = %153
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

160:                                              ; preds = %153
  %161 = extractvalue { i32, i1 } %157, 0, !nosanitize !47
  store i32 %161, ptr %25, align 8, !tbaa !51
  %162 = zext i32 %155 to i64
  %163 = getelementptr inbounds nuw i8, ptr %127, i64 %162
  store ptr %163, ptr %0, align 8, !tbaa !50
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %165 = load i64, ptr %164, align 8, !tbaa !22
  %166 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %165, i64 %162), !nosanitize !47
  %167 = extractvalue { i64, i1 } %166, 1, !nosanitize !47
  br i1 %167, label %168, label %169, !prof !48, !nosanitize !47

168:                                              ; preds = %160
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !47
  unreachable, !nosanitize !47

169:                                              ; preds = %160
  %170 = extractvalue { i64, i1 } %166, 0, !nosanitize !47
  store i64 %170, ptr %164, align 8, !tbaa !22
  %171 = icmp eq i32 %154, 4
  br i1 %171, label %172, label %209

172:                                              ; preds = %169
  %173 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %174 = load i32, ptr %173, align 8, !tbaa !28
  %175 = icmp eq i32 %174, -1
  %176 = getelementptr inbounds nuw i8, ptr %14, i64 16
  br i1 %175, label %180, label %177

177:                                              ; preds = %172
  %178 = load i32, ptr %176, align 8, !tbaa !24
  %179 = and i32 %178, -5
  br label %180

180:                                              ; preds = %172, %177
  %181 = phi i32 [ %179, %177 ], [ 0, %172 ]
  store i32 %181, ptr %176, align 8, !tbaa !24
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %183 = load i64, ptr %182, align 8, !tbaa !104
  %184 = getelementptr inbounds nuw i8, ptr %14, i64 60
  store i32 0, ptr %184, align 4, !tbaa !38
  %185 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i32 0, ptr %185, align 8, !tbaa !39
  %186 = getelementptr inbounds nuw i8, ptr %14, i64 68
  store i32 0, ptr %186, align 4, !tbaa !40
  %187 = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 0, ptr %187, align 8, !tbaa !21
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %188, align 8, !tbaa !23
  %189 = getelementptr inbounds nuw i8, ptr %14, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %182, i8 0, i64 16, i1 false)
  %190 = load i32, ptr %189, align 8, !tbaa !24
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %180
  %193 = and i32 %190, 1
  %194 = zext nneg i32 %193 to i64
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %194, ptr %195, align 8, !tbaa !25
  br label %196

196:                                              ; preds = %180, %192
  %197 = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 0, ptr %197, align 4, !tbaa !26
  %198 = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %198, align 4, !tbaa !27
  %199 = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 32768, ptr %199, align 4, !tbaa !29
  %200 = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr null, ptr %200, align 8, !tbaa !30
  %201 = getelementptr inbounds nuw i8, ptr %14, i64 80
  store i64 0, ptr %201, align 8, !tbaa !31
  %202 = getelementptr inbounds nuw i8, ptr %14, i64 88
  store i32 0, ptr %202, align 8, !tbaa !32
  %203 = getelementptr inbounds nuw i8, ptr %14, i64 1368
  %204 = getelementptr inbounds nuw i8, ptr %14, i64 144
  store ptr %203, ptr %204, align 8, !tbaa !33
  %205 = getelementptr inbounds nuw i8, ptr %14, i64 112
  store ptr %203, ptr %205, align 8, !tbaa !34
  %206 = getelementptr inbounds nuw i8, ptr %14, i64 104
  store ptr %203, ptr %206, align 8, !tbaa !35
  %207 = getelementptr inbounds nuw i8, ptr %14, i64 7144
  store i32 1, ptr %207, align 8, !tbaa !36
  %208 = getelementptr inbounds nuw i8, ptr %14, i64 7148
  store i32 -1, ptr %208, align 4, !tbaa !37
  store i64 %170, ptr %164, align 8, !tbaa !22
  store i64 %183, ptr %182, align 8, !tbaa !104
  store i32 %174, ptr %173, align 8, !tbaa !28
  store i32 16191, ptr %20, align 8, !tbaa !20
  br label %209

209:                                              ; preds = %12, %16, %1, %4, %8, %169, %28, %19, %196
  %210 = phi i32 [ 0, %196 ], [ -2, %19 ], [ -5, %28 ], [ -3, %169 ], [ -2, %8 ], [ -2, %4 ], [ -2, %1 ], [ -2, %16 ], [ -2, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %210
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local range(i32 -2, 2) i32 @inflateSyncPoint(ptr noundef readonly captures(address) %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !16
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !20
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = icmp eq i32 %20, 16193
  br i1 %24, label %25, label %30

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %13, i64 88
  %27 = load i32, ptr %26, align 8, !tbaa !32
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  br label %30

30:                                               ; preds = %11, %15, %1, %3, %7, %23, %25, %18
  %31 = phi i32 [ -2, %18 ], [ 0, %23 ], [ %29, %25 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -4, 1) i32 @inflateCopy(ptr noundef %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %88, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %88, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %88, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %88, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !16
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %88

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !20
  %22 = add i32 %21, -16212
  %23 = icmp ult i32 %22, -32
  %24 = icmp eq ptr %0, null
  %25 = or i1 %24, %23
  br i1 %25, label %88, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = tail call ptr %6(ptr noundef %28, i32 noundef 1, i32 noundef 7160) #10
  %30 = icmp eq ptr %29, null
  br i1 %30, label %88, label %31

31:                                               ; preds = %26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7160) %29, i8 0, i64 7160, i1 false)
  %32 = getelementptr inbounds nuw i8, ptr %14, i64 72
  %33 = load ptr, ptr %32, align 8, !tbaa !41
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %5, align 8, !tbaa !5
  %37 = load ptr, ptr %27, align 8, !tbaa !43
  %38 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %39 = load i32, ptr %38, align 8, !tbaa !42
  %40 = shl nuw i32 1, %39
  %41 = tail call ptr %36(ptr noundef %37, i32 noundef %40, i32 noundef 1) #10
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load ptr, ptr %9, align 8, !tbaa !14
  %45 = load ptr, ptr %27, align 8, !tbaa !43
  tail call void %44(ptr noundef %45, ptr noundef nonnull %29) #10
  br label %88

46:                                               ; preds = %35, %31
  %47 = phi ptr [ %41, %35 ], [ null, %31 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7160) %29, ptr noundef nonnull align 8 dereferenceable(7160) %14, i64 7160, i1 false)
  store ptr %0, ptr %29, align 8, !tbaa !16
  %48 = getelementptr inbounds nuw i8, ptr %14, i64 104
  %49 = load ptr, ptr %48, align 8, !tbaa !35
  %50 = getelementptr inbounds nuw i8, ptr %14, i64 1368
  %51 = icmp ult ptr %49, %50
  %52 = getelementptr inbounds nuw i8, ptr %14, i64 7140
  %53 = icmp ugt ptr %49, %52
  %54 = select i1 %51, i1 true, i1 %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = ptrtoint ptr %50 to i64
  br label %70

57:                                               ; preds = %46
  %58 = getelementptr inbounds nuw i8, ptr %29, i64 1368
  %59 = ptrtoint ptr %49 to i64
  %60 = ptrtoint ptr %50 to i64
  %61 = sub i64 %59, %60
  %62 = getelementptr inbounds i8, ptr %58, i64 %61
  %63 = getelementptr inbounds nuw i8, ptr %29, i64 104
  store ptr %62, ptr %63, align 8, !tbaa !35
  %64 = getelementptr inbounds nuw i8, ptr %14, i64 112
  %65 = load ptr, ptr %64, align 8, !tbaa !34
  %66 = ptrtoint ptr %65 to i64
  %67 = sub i64 %66, %60
  %68 = getelementptr inbounds i8, ptr %58, i64 %67
  %69 = getelementptr inbounds nuw i8, ptr %29, i64 112
  store ptr %68, ptr %69, align 8, !tbaa !34
  br label %70

70:                                               ; preds = %55, %57
  %71 = phi i64 [ %56, %55 ], [ %60, %57 ]
  %72 = getelementptr inbounds nuw i8, ptr %29, i64 1368
  %73 = getelementptr inbounds nuw i8, ptr %14, i64 144
  %74 = load ptr, ptr %73, align 8, !tbaa !33
  %75 = ptrtoint ptr %74 to i64
  %76 = sub i64 %75, %71
  %77 = getelementptr inbounds i8, ptr %72, i64 %76
  %78 = getelementptr inbounds nuw i8, ptr %29, i64 144
  store ptr %77, ptr %78, align 8, !tbaa !33
  %79 = icmp eq ptr %47, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %70
  %81 = load ptr, ptr %32, align 8, !tbaa !41
  %82 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %83 = load i32, ptr %82, align 8, !tbaa !39
  %84 = zext i32 %83 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %47, ptr align 1 %81, i64 %84, i1 false)
  br label %85

85:                                               ; preds = %80, %70
  %86 = getelementptr inbounds nuw i8, ptr %29, i64 72
  store ptr %47, ptr %86, align 8, !tbaa !41
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %29, ptr %87, align 8, !tbaa !15
  br label %88

88:                                               ; preds = %12, %16, %2, %4, %8, %26, %19, %85, %43
  %89 = phi i32 [ -4, %43 ], [ 0, %85 ], [ -2, %19 ], [ -4, %26 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %89
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 -3, -1) i32 @inflateUndermine(ptr noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !16
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !20
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = getelementptr inbounds nuw i8, ptr %14, i64 7144
  store i32 1, ptr %25, align 8, !tbaa !36
  br label %26

26:                                               ; preds = %12, %16, %2, %4, %8, %19, %24
  %27 = phi i32 [ -3, %24 ], [ -2, %19 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflateValidate(ptr noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %37, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %37, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %37, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !16
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !20
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = icmp eq i32 %1, 0
  %26 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %27 = load i32, ptr %26, align 8, !tbaa !24
  br i1 %25, label %28, label %30

28:                                               ; preds = %24
  %29 = and i32 %27, -5
  br label %34

30:                                               ; preds = %24
  %31 = icmp eq i32 %27, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = or i32 %27, 4
  store i32 %33, ptr %26, align 8, !tbaa !24
  br label %37

34:                                               ; preds = %28, %30
  %35 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %36 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %35, ptr %36, align 8, !tbaa !24
  br label %37

37:                                               ; preds = %12, %16, %2, %4, %8, %32, %34, %19
  %38 = phi i32 [ -2, %19 ], [ 0, %34 ], [ 0, %32 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -140737488355328, 140741783257088) i64 @inflateMark(ptr noundef readonly captures(address) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %44, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %44, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %44, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !16
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %44

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !20
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %44

23:                                               ; preds = %18
  %24 = getelementptr inbounds nuw i8, ptr %13, i64 7148
  %25 = load i32, ptr %24, align 4, !tbaa !37
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 16
  switch i32 %20, label %40 [
    i32 16195, label %28
    i32 16204, label %31
  ]

28:                                               ; preds = %23
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 92
  %30 = load i32, ptr %29, align 4, !tbaa !67
  br label %40

31:                                               ; preds = %23
  %32 = getelementptr inbounds nuw i8, ptr %13, i64 7152
  %33 = load i32, ptr %32, align 8, !tbaa !99
  %34 = getelementptr inbounds nuw i8, ptr %13, i64 92
  %35 = load i32, ptr %34, align 4, !tbaa !67
  %36 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %33, i32 %35), !nosanitize !47
  %37 = extractvalue { i32, i1 } %36, 0, !nosanitize !47
  %38 = extractvalue { i32, i1 } %36, 1, !nosanitize !47
  br i1 %38, label %39, label %40, !prof !48, !nosanitize !47

39:                                               ; preds = %31
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !47
  unreachable, !nosanitize !47

40:                                               ; preds = %28, %31, %23
  %41 = phi i32 [ %30, %28 ], [ %37, %31 ], [ 0, %23 ]
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %27, %42
  br label %44

44:                                               ; preds = %11, %15, %1, %3, %7, %18, %40
  %45 = phi i64 [ %43, %40 ], [ -65536, %18 ], [ -65536, %7 ], [ -65536, %3 ], [ -65536, %1 ], [ -65536, %15 ], [ -65536, %11 ]
  ret i64 %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local range(i64 -2305843009213693952, 2305843009213693952) i64 @inflateCodesUsed(ptr noundef readonly captures(address) %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %31, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !16
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !20
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = getelementptr inbounds nuw i8, ptr %13, i64 144
  %25 = load ptr, ptr %24, align 8, !tbaa !33
  %26 = getelementptr inbounds nuw i8, ptr %13, i64 1368
  %27 = ptrtoint ptr %25 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  %30 = ashr exact i64 %29, 2
  br label %31

31:                                               ; preds = %11, %15, %1, %3, %7, %18, %23
  %32 = phi i64 [ %30, %23 ], [ -1, %18 ], [ -1, %7 ], [ -1, %3 ], [ -1, %1 ], [ -1, %15 ], [ -1, %11 ]
  ret i64 %32
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nomerge noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !8, i64 64}
!6 = !{!"z_stream_s", !7, i64 0, !11, i64 8, !12, i64 16, !7, i64 24, !11, i64 32, !12, i64 40, !7, i64 48, !13, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !11, i64 88, !12, i64 96, !12, i64 104}
!7 = !{!"p1 omnipotent char", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!"p1 _ZTS14internal_state", !8, i64 0}
!14 = !{!6, !8, i64 72}
!15 = !{!6, !13, i64 56}
!16 = !{!17, !18, i64 0}
!17 = !{!"inflate_state", !18, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !12, i64 32, !12, i64 40, !19, i64 48, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !7, i64 72, !12, i64 80, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !8, i64 104, !8, i64 112, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !8, i64 144, !9, i64 152, !9, i64 792, !9, i64 1368, !11, i64 7144, !11, i64 7148, !11, i64 7152}
!18 = !{!"p1 _ZTS10z_stream_s", !8, i64 0}
!19 = !{!"p1 _ZTS11gz_header_s", !8, i64 0}
!20 = !{!17, !11, i64 8}
!21 = !{!17, !12, i64 40}
!22 = !{!6, !12, i64 16}
!23 = !{!6, !11, i64 88}
!24 = !{!17, !11, i64 16}
!25 = !{!6, !12, i64 96}
!26 = !{!17, !11, i64 12}
!27 = !{!17, !11, i64 20}
!28 = !{!17, !11, i64 24}
!29 = !{!17, !11, i64 28}
!30 = !{!17, !19, i64 48}
!31 = !{!17, !12, i64 80}
!32 = !{!17, !11, i64 88}
!33 = !{!17, !8, i64 144}
!34 = !{!17, !8, i64 112}
!35 = !{!17, !8, i64 104}
!36 = !{!17, !11, i64 7144}
!37 = !{!17, !11, i64 7148}
!38 = !{!17, !11, i64 60}
!39 = !{!17, !11, i64 64}
!40 = !{!17, !11, i64 68}
!41 = !{!17, !7, i64 72}
!42 = !{!17, !11, i64 56}
!43 = !{!6, !8, i64 80}
!44 = !{!9, !9, i64 0}
!45 = !{!6, !7, i64 48}
!46 = !{!11, !11, i64 0}
!47 = !{}
!48 = !{!"branch_weights", i32 1, i32 1048575}
!49 = !{!6, !7, i64 24}
!50 = !{!6, !7, i64 0}
!51 = !{!6, !11, i64 8}
!52 = !{!6, !11, i64 32}
!53 = !{!17, !11, i64 100}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!17, !12, i64 32}
!57 = !{!58, !11, i64 72}
!58 = !{!"gz_header_s", !11, i64 0, !12, i64 8, !11, i64 16, !11, i64 20, !7, i64 24, !11, i64 32, !11, i64 36, !7, i64 40, !11, i64 48, !7, i64 56, !11, i64 64, !11, i64 68, !11, i64 72}
!59 = distinct !{!59, !55}
!60 = !{!58, !11, i64 0}
!61 = distinct !{!61, !55}
!62 = !{!58, !12, i64 8}
!63 = distinct !{!63, !55}
!64 = !{!58, !11, i64 16}
!65 = !{!58, !11, i64 20}
!66 = distinct !{!66, !55}
!67 = !{!17, !11, i64 92}
!68 = !{!58, !11, i64 32}
!69 = !{!58, !7, i64 24}
!70 = !{!58, !11, i64 36}
!71 = !{!58, !7, i64 40}
!72 = !{!58, !11, i64 48}
!73 = distinct !{!73, !55}
!74 = !{!58, !7, i64 56}
!75 = !{!58, !11, i64 64}
!76 = distinct !{!76, !55}
!77 = distinct !{!77, !55}
!78 = !{!58, !11, i64 68}
!79 = distinct !{!79, !55}
!80 = distinct !{!80, !55}
!81 = distinct !{!81, !55}
!82 = !{!17, !11, i64 132}
!83 = !{!17, !11, i64 136}
!84 = !{!17, !11, i64 128}
!85 = !{!17, !11, i64 140}
!86 = !{!87, !87, i64 0}
!87 = !{!"short", !9, i64 0}
!88 = distinct !{!88, !55}
!89 = distinct !{!89, !55}
!90 = !{!17, !11, i64 120}
!91 = !{!"branch_weights", i32 1, i32 127}
!92 = distinct !{!92, !55}
!93 = distinct !{!93, !55}
!94 = distinct !{!94, !55}
!95 = !{!"branch_weights", i32 127, i32 134217473}
!96 = distinct !{!96, !55}
!97 = !{!17, !11, i64 124}
!98 = distinct !{!98, !55}
!99 = !{!17, !11, i64 7152}
!100 = !{!17, !11, i64 96}
!101 = distinct !{!101, !55}
!102 = distinct !{!102, !55}
!103 = distinct !{!103, !55}
!104 = !{!6, !12, i64 40}
!105 = distinct !{!105, !55}
!106 = distinct !{!106, !55}
!107 = distinct !{!107, !108}
!108 = !{!"llvm.loop.unroll.disable"}
!109 = distinct !{!109, !55}
