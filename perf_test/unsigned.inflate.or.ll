; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/unsigned.inflate.ll'
source_filename = "/home/amiralie1380/michigan/pl/zlib/inflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflateResetKeep(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %49, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !8
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

49:                                               ; preds = %35, %18, %15, %11, %7, %3, %1
  %50 = phi i32 [ 0, %35 ], [ -2, %18 ], [ -2, %11 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %15 ]
  ret i32 %50
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflateReset(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %52, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !8
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

52:                                               ; preds = %38, %18, %15, %11, %7, %3, %1
  %53 = phi i32 [ -2, %3 ], [ -2, %18 ], [ 0, %38 ], [ -2, %1 ], [ -2, %15 ], [ -2, %7 ], [ -2, %11 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @inflateReset2(ptr noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %100, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !8
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

47:                                               ; preds = %43, %39
  %48 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %38, ptr %48, align 8, !tbaa !24
  %49 = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i32 %37, ptr %49, align 8, !tbaa !42
  br label %57

50:                                               ; preds = %43
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %52 = load ptr, ptr %51, align 8, !tbaa !43
  tail call void %10(ptr noundef %52, ptr noundef nonnull %41) #12
  store ptr null, ptr %40, align 8, !tbaa !41
  %53 = load ptr, ptr %5, align 8, !tbaa !8
  %54 = icmp eq ptr %53, null
  %55 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %38, ptr %55, align 8, !tbaa !24
  %56 = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i32 %37, ptr %56, align 8, !tbaa !42
  br i1 %54, label %100, label %57

57:                                               ; preds = %50, %47
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

100:                                              ; preds = %86, %66, %63, %60, %57, %50, %36, %26, %19, %16, %12, %8, %4, %2
  %101 = phi i32 [ -2, %57 ], [ -2, %19 ], [ -2, %26 ], [ -2, %36 ], [ -2, %50 ], [ -2, %66 ], [ 0, %86 ], [ -2, %60 ], [ -2, %63 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %16 ]
  ret i32 %101
}

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
  %16 = load ptr, ptr %15, align 8, !tbaa !8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  store ptr @zcalloc, ptr %15, align 8, !tbaa !8
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
  %29 = tail call ptr %21(ptr noundef %28, i32 noundef 1, i32 noundef 7160) #12
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
  %35 = load ptr, ptr %15, align 8, !tbaa !8
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

71:                                               ; preds = %67, %55
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

85:                                               ; preds = %52, %42, %31
  %86 = load ptr, ptr %27, align 8, !tbaa !43
  tail call void %37(ptr noundef %86, ptr noundef nonnull %29) #12
  store ptr null, ptr %33, align 8, !tbaa !15
  br label %87

87:                                               ; preds = %85, %71, %26, %11, %6, %4
  %88 = phi i32 [ -4, %26 ], [ -6, %4 ], [ -2, %11 ], [ -6, %6 ], [ -2, %85 ], [ 0, %71 ]
  ret i32 %88
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #3

declare void @zcfree(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

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
  %15 = load ptr, ptr %14, align 8, !tbaa !8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  store ptr @zcalloc, ptr %14, align 8, !tbaa !8
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
  %28 = tail call ptr %20(ptr noundef %27, i32 noundef 1, i32 noundef 7160) #12, !inline_history !46
  %29 = icmp eq ptr %28, null
  br i1 %29, label %67, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds nuw i8, ptr %28, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7152) %31, i8 0, i64 7152, i1 false)
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %28, ptr %32, align 8, !tbaa !15
  store ptr %0, ptr %28, align 8, !tbaa !16
  store i32 16180, ptr %31, align 8, !tbaa !20
  %33 = load ptr, ptr %14, align 8, !tbaa !8
  %34 = icmp eq ptr %33, null
  %35 = load ptr, ptr %21, align 8, !tbaa !14
  %36 = icmp eq ptr %35, null
  %37 = select i1 %34, i1 true, i1 %36
  br i1 %37, label %65, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i32 5, ptr %39, align 8, !tbaa !24
  %40 = getelementptr inbounds nuw i8, ptr %28, i64 56
  store <4 x i32> <i32 15, i32 0, i32 0, i32 0>, ptr %40, align 8, !tbaa !4
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
  tail call void %35(ptr noundef %66, ptr noundef nonnull %28) #12, !inline_history !46
  store ptr null, ptr %32, align 8, !tbaa !15
  br label %67

67:                                               ; preds = %65, %51, %25, %10, %5, %3
  %68 = phi i32 [ -4, %25 ], [ -6, %3 ], [ -2, %10 ], [ -6, %5 ], [ -2, %65 ], [ 0, %51 ]
  ret i32 %68
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflatePrime(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %59, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !8
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

57:                                               ; preds = %43
  %58 = extractvalue { i64, i1 } %54, 0, !nosanitize !47
  store i64 %58, ptr %52, align 8, !tbaa !31
  store i32 %41, ptr %35, align 8, !tbaa !32
  br label %59

59:                                               ; preds = %57, %40, %32, %29, %25, %20, %17, %13, %9, %5, %3
  %60 = phi i32 [ 0, %57 ], [ -2, %20 ], [ 0, %29 ], [ 0, %25 ], [ -2, %40 ], [ -2, %32 ], [ -2, %13 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %17 ]
  ret i32 %60
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #6

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @inflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %4 = icmp eq ptr %0, null
  br i1 %4, label %2669, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %2669, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %2669, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %2669, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %2669

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %2669

25:                                               ; preds = %20
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = icmp eq ptr %27, null
  br i1 %28, label %2669, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 8, !tbaa !50
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i32, ptr %33, align 8, !tbaa !51
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %2669

36:                                               ; preds = %32, %29
  %37 = icmp eq i32 %22, 16191
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  store i32 16192, ptr %21, align 8, !tbaa !20
  br label %39

39:                                               ; preds = %38, %36
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
  %85 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %86 = getelementptr inbounds nuw i8, ptr %15, i64 28
  %87 = getelementptr inbounds nuw i8, ptr %3, i64 1
  br label %88

88:                                               ; preds = %2351, %39
  %89 = phi i32 [ %40, %39 ], [ %2360, %2351 ]
  %90 = phi ptr [ %30, %39 ], [ %2352, %2351 ]
  %91 = phi ptr [ %27, %39 ], [ %2353, %2351 ]
  %92 = phi i32 [ %44, %39 ], [ %2354, %2351 ]
  %93 = phi i32 [ %42, %39 ], [ %2355, %2351 ]
  %94 = phi i64 [ %46, %39 ], [ %2356, %2351 ]
  %95 = phi i32 [ %48, %39 ], [ %2357, %2351 ]
  %96 = phi i32 [ %42, %39 ], [ %2358, %2351 ]
  %97 = phi i32 [ 0, %39 ], [ %2359, %2351 ]
  %98 = ptrtoaddr ptr %91 to i64
  switch i32 %89, label %2669 [
    i32 16180, label %120
    i32 16181, label %115
    i32 16182, label %281
    i32 16183, label %364
    i32 16184, label %423
    i32 16185, label %501
    i32 16186, label %580
    i32 16187, label %644
    i32 16188, label %708
    i32 16189, label %110
    i32 16190, label %840
    i32 16191, label %850
    i32 16192, label %855
    i32 16193, label %906
    i32 16194, label %989
    i32 16195, label %994
    i32 16196, label %105
    i32 16197, label %1079
    i32 16198, label %1154
    i32 16199, label %1469
    i32 16200, label %1475
    i32 16201, label %101
    i32 16202, label %1722
    i32 16203, label %99
    i32 16204, label %1948
    i32 16205, label %2121
    i32 16206, label %2128
    i32 16207, label %103
    i32 16208, label %2484
    i32 16209, label %2485
    i32 16210, label %2668
  ]

99:                                               ; preds = %88
  %100 = load i32, ptr %72, align 4, !tbaa !53
  br label %1878

101:                                              ; preds = %88
  %102 = load i32, ptr %72, align 4, !tbaa !53
  br label %1651

103:                                              ; preds = %88
  %104 = load i32, ptr %49, align 8, !tbaa !24
  br label %2258

105:                                              ; preds = %88
  %106 = icmp ult i32 %95, 14
  br i1 %106, label %107, label %1058

107:                                              ; preds = %105
  %108 = zext nneg i32 %95 to i64
  %109 = icmp eq i32 %92, 0
  br i1 %109, label %2466, label %1026

110:                                              ; preds = %88
  %111 = icmp ult i32 %95, 32
  br i1 %111, label %112, label %833

112:                                              ; preds = %110
  %113 = zext nneg i32 %95 to i64
  %114 = icmp eq i32 %92, 0
  br i1 %114, label %2403, label %780

115:                                              ; preds = %88
  %116 = icmp ult i32 %95, 16
  br i1 %116, label %117, label %250

117:                                              ; preds = %115
  %118 = zext nneg i32 %95 to i64
  %119 = icmp eq i32 %92, 0
  br i1 %119, label %2397, label %218

120:                                              ; preds = %88
  %121 = load i32, ptr %49, align 8, !tbaa !24
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %120
  %124 = icmp ult i32 %95, 16
  br i1 %124, label %125, label %161

125:                                              ; preds = %123
  %126 = zext nneg i32 %95 to i64
  %127 = icmp eq i32 %92, 0
  br i1 %127, label %2367, label %129

128:                                              ; preds = %120
  store i32 16192, ptr %21, align 8, !tbaa !20
  br label %2351

129:                                              ; preds = %125
  %130 = load i8, ptr %90, align 1, !tbaa !44
  %131 = zext i8 %130 to i64
  %132 = shl nuw nsw i64 %131, %126
  %133 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %132), !nosanitize !47
  %134 = extractvalue { i64, i1 } %133, 1, !nosanitize !47
  br i1 %134, label %135, label %136, !prof !48, !nosanitize !47

135:                                              ; preds = %144, %129
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

136:                                              ; preds = %129
  %137 = extractvalue { i64, i1 } %133, 0, !nosanitize !47
  %138 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %139 = add i32 %92, -1
  %140 = add nuw nsw i64 %126, 8
  %141 = icmp ult i32 %95, 8
  br i1 %141, label %142, label %155

142:                                              ; preds = %136
  %143 = icmp eq i32 %139, 0
  br i1 %143, label %2367, label %144

144:                                              ; preds = %142
  %145 = load i8, ptr %138, align 1, !tbaa !44
  %146 = zext i8 %145 to i64
  %147 = shl nuw nsw i64 %146, %140
  %148 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %137, i64 %147), !nosanitize !47
  %149 = extractvalue { i64, i1 } %148, 1, !nosanitize !47
  br i1 %149, label %135, label %150, !prof !48, !nosanitize !47

150:                                              ; preds = %144
  %151 = extractvalue { i64, i1 } %148, 0, !nosanitize !47
  %152 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %153 = add i32 %92, -2
  %154 = or disjoint i64 %126, 16
  br label %155

155:                                              ; preds = %150, %136
  %156 = phi i64 [ %137, %136 ], [ %151, %150 ]
  %157 = phi ptr [ %138, %136 ], [ %152, %150 ]
  %158 = phi i32 [ %139, %136 ], [ %153, %150 ]
  %159 = phi i64 [ %140, %136 ], [ %154, %150 ]
  %160 = trunc nuw nsw i64 %159 to i32
  br label %161

161:                                              ; preds = %155, %123
  %162 = phi ptr [ %90, %123 ], [ %157, %155 ]
  %163 = phi i32 [ %92, %123 ], [ %158, %155 ]
  %164 = phi i64 [ %94, %123 ], [ %156, %155 ]
  %165 = phi i32 [ %95, %123 ], [ %160, %155 ]
  %166 = and i32 %121, 2
  %167 = icmp ne i32 %166, 0
  %168 = icmp eq i64 %164, 35615
  %169 = select i1 %167, i1 %168, i1 false
  br i1 %169, label %170, label %177

170:                                              ; preds = %161
  %171 = load i32, ptr %85, align 8, !tbaa !42
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  store i32 15, ptr %85, align 8, !tbaa !42
  br label %174

174:                                              ; preds = %173, %170
  %175 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %175, ptr %53, align 8, !tbaa !54
  store i8 31, ptr %3, align 4, !tbaa !44
  store i8 -117, ptr %87, align 1, !tbaa !44
  %176 = call i64 @crc32(i64 noundef %175, ptr noundef nonnull %3, i32 noundef 2) #12
  store i64 %176, ptr %53, align 8, !tbaa !54
  store i32 16181, ptr %21, align 8, !tbaa !20
  br label %2351

177:                                              ; preds = %161
  %178 = load ptr, ptr %84, align 8, !tbaa !30
  %179 = icmp eq ptr %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %177
  %181 = getelementptr inbounds nuw i8, ptr %178, i64 72
  store i32 -1, ptr %181, align 8, !tbaa !55
  br label %182

182:                                              ; preds = %180, %177
  %183 = and i32 %121, 1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %192, label %185

185:                                              ; preds = %182
  %186 = shl i64 %164, 8
  %187 = and i64 %186, 65280
  %188 = lshr i64 %164, 8
  %189 = add nuw nsw i64 %187, %188
  %190 = urem i64 %189, 31
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %185, %182
  store ptr @.str.1, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2351

193:                                              ; preds = %185
  %194 = and i64 %164, 15
  %195 = icmp eq i64 %194, 8
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  store ptr @.str.2, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2351

197:                                              ; preds = %193
  %198 = lshr i64 %164, 4
  %199 = add i32 %165, -4
  %200 = trunc i64 %198 to i32
  %201 = and i32 %200, 15
  %202 = add nuw nsw i32 %201, 8
  %203 = load i32, ptr %85, align 8, !tbaa !42
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %197
  store i32 %202, ptr %85, align 8, !tbaa !42
  br label %206

206:                                              ; preds = %205, %197
  %207 = phi i32 [ %202, %205 ], [ %203, %197 ]
  %208 = icmp samesign ugt i32 %201, 7
  %209 = icmp ugt i32 %202, %207
  %210 = select i1 %208, i1 true, i1 %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %206
  store ptr @.str.3, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2351

212:                                              ; preds = %206
  %213 = shl nuw nsw i32 256, %201
  store i32 %213, ptr %86, align 4, !tbaa !29
  store i32 0, ptr %52, align 8, !tbaa !28
  %214 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %214, ptr %53, align 8, !tbaa !54
  store i64 %214, ptr %54, align 8, !tbaa !25
  %215 = and i64 %164, 8192
  %216 = icmp eq i64 %215, 0
  %217 = select i1 %216, i32 16191, i32 16189
  store i32 %217, ptr %21, align 8, !tbaa !20
  br label %2351

218:                                              ; preds = %117
  %219 = load i8, ptr %90, align 1, !tbaa !44
  %220 = zext i8 %219 to i64
  %221 = shl nuw nsw i64 %220, %118
  %222 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %221), !nosanitize !47
  %223 = extractvalue { i64, i1 } %222, 1, !nosanitize !47
  br i1 %223, label %224, label %225, !prof !48, !nosanitize !47

224:                                              ; preds = %233, %218
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

225:                                              ; preds = %218
  %226 = extractvalue { i64, i1 } %222, 0, !nosanitize !47
  %227 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %228 = add i32 %92, -1
  %229 = add nuw nsw i64 %118, 8
  %230 = icmp ult i32 %95, 8
  br i1 %230, label %231, label %244

231:                                              ; preds = %225
  %232 = icmp eq i32 %228, 0
  br i1 %232, label %2397, label %233

233:                                              ; preds = %231
  %234 = load i8, ptr %227, align 1, !tbaa !44
  %235 = zext i8 %234 to i64
  %236 = shl nuw nsw i64 %235, %229
  %237 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %226, i64 %236), !nosanitize !47
  %238 = extractvalue { i64, i1 } %237, 1, !nosanitize !47
  br i1 %238, label %224, label %239, !prof !48, !nosanitize !47

239:                                              ; preds = %233
  %240 = extractvalue { i64, i1 } %237, 0, !nosanitize !47
  %241 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %242 = add i32 %92, -2
  %243 = or disjoint i64 %118, 16
  br label %244

244:                                              ; preds = %239, %225
  %245 = phi i64 [ %226, %225 ], [ %240, %239 ]
  %246 = phi ptr [ %227, %225 ], [ %241, %239 ]
  %247 = phi i32 [ %228, %225 ], [ %242, %239 ]
  %248 = phi i64 [ %229, %225 ], [ %243, %239 ]
  %249 = trunc nuw nsw i64 %248 to i32
  br label %250

250:                                              ; preds = %244, %115
  %251 = phi ptr [ %90, %115 ], [ %246, %244 ]
  %252 = phi i32 [ %92, %115 ], [ %247, %244 ]
  %253 = phi i64 [ %94, %115 ], [ %245, %244 ]
  %254 = phi i32 [ %95, %115 ], [ %249, %244 ]
  %255 = trunc i64 %253 to i32
  store i32 %255, ptr %52, align 8, !tbaa !28
  %256 = and i32 %255, 255
  %257 = icmp eq i32 %256, 8
  br i1 %257, label %259, label %258

258:                                              ; preds = %250
  store ptr @.str.2, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2351

259:                                              ; preds = %250
  %260 = and i32 %255, 57344
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %259
  store ptr @.str.4, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2351

263:                                              ; preds = %259
  %264 = load ptr, ptr %84, align 8, !tbaa !30
  %265 = icmp eq ptr %264, null
  br i1 %265, label %269, label %266

266:                                              ; preds = %263
  %267 = lshr i32 %255, 8
  %268 = and i32 %267, 1
  store i32 %268, ptr %264, align 8, !tbaa !57
  br label %269

269:                                              ; preds = %266, %263
  %270 = and i32 %255, 512
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %280, label %272

272:                                              ; preds = %269
  %273 = load i32, ptr %49, align 8, !tbaa !24
  %274 = and i32 %273, 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %280, label %276

276:                                              ; preds = %272
  %277 = trunc i64 %253 to i16
  store i16 %277, ptr %3, align 4
  %278 = load i64, ptr %53, align 8, !tbaa !54
  %279 = call i64 @crc32(i64 noundef %278, ptr noundef nonnull %3, i32 noundef 2) #12
  store i64 %279, ptr %53, align 8, !tbaa !54
  br label %280

280:                                              ; preds = %276, %272, %269
  store i32 16182, ptr %21, align 8, !tbaa !20
  br label %283

281:                                              ; preds = %88
  %282 = icmp ult i32 %95, 32
  br i1 %282, label %283, label %343

283:                                              ; preds = %281, %280
  %284 = phi i32 [ 0, %280 ], [ %95, %281 ]
  %285 = phi i64 [ 0, %280 ], [ %94, %281 ]
  %286 = phi i32 [ %252, %280 ], [ %92, %281 ]
  %287 = phi ptr [ %251, %280 ], [ %90, %281 ]
  %288 = zext nneg i32 %284 to i64
  %289 = icmp eq i32 %286, 0
  br i1 %289, label %2391, label %290

290:                                              ; preds = %283
  %291 = load i8, ptr %287, align 1, !tbaa !44
  %292 = zext i8 %291 to i64
  %293 = shl nuw nsw i64 %292, %288
  %294 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %285, i64 %293), !nosanitize !47
  %295 = extractvalue { i64, i1 } %294, 1, !nosanitize !47
  br i1 %295, label %296, label %297, !prof !48, !nosanitize !47

296:                                              ; preds = %333, %319, %305, %290
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

297:                                              ; preds = %290
  %298 = extractvalue { i64, i1 } %294, 0, !nosanitize !47
  %299 = getelementptr inbounds nuw i8, ptr %287, i64 1
  %300 = add i32 %286, -1
  %301 = add nuw nsw i64 %288, 8
  %302 = icmp samesign ult i32 %284, 24
  br i1 %302, label %303, label %343

303:                                              ; preds = %297
  %304 = icmp eq i32 %300, 0
  br i1 %304, label %2391, label %305

305:                                              ; preds = %303
  %306 = load i8, ptr %299, align 1, !tbaa !44
  %307 = zext i8 %306 to i64
  %308 = shl nuw nsw i64 %307, %301
  %309 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %298, i64 %308), !nosanitize !47
  %310 = extractvalue { i64, i1 } %309, 1, !nosanitize !47
  br i1 %310, label %296, label %311, !prof !48, !nosanitize !47

311:                                              ; preds = %305
  %312 = extractvalue { i64, i1 } %309, 0, !nosanitize !47
  %313 = getelementptr inbounds nuw i8, ptr %287, i64 2
  %314 = add i32 %286, -2
  %315 = add nuw nsw i64 %288, 16
  %316 = icmp samesign ult i32 %284, 16
  br i1 %316, label %317, label %343

317:                                              ; preds = %311
  %318 = icmp eq i32 %314, 0
  br i1 %318, label %2391, label %319

319:                                              ; preds = %317
  %320 = load i8, ptr %313, align 1, !tbaa !44
  %321 = zext i8 %320 to i64
  %322 = shl nuw nsw i64 %321, %315
  %323 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %312, i64 %322), !nosanitize !47
  %324 = extractvalue { i64, i1 } %323, 1, !nosanitize !47
  br i1 %324, label %296, label %325, !prof !48, !nosanitize !47

325:                                              ; preds = %319
  %326 = extractvalue { i64, i1 } %323, 0, !nosanitize !47
  %327 = getelementptr inbounds nuw i8, ptr %287, i64 3
  %328 = add i32 %286, -3
  %329 = add nuw nsw i64 %288, 24
  %330 = icmp samesign ult i32 %284, 8
  br i1 %330, label %331, label %343

331:                                              ; preds = %325
  %332 = icmp eq i32 %328, 0
  br i1 %332, label %2391, label %333

333:                                              ; preds = %331
  %334 = load i8, ptr %327, align 1, !tbaa !44
  %335 = zext i8 %334 to i64
  %336 = shl nuw nsw i64 %335, %329
  %337 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %326, i64 %336), !nosanitize !47
  %338 = extractvalue { i64, i1 } %337, 1, !nosanitize !47
  br i1 %338, label %296, label %339, !prof !48, !nosanitize !47

339:                                              ; preds = %333
  %340 = extractvalue { i64, i1 } %337, 0, !nosanitize !47
  %341 = getelementptr inbounds nuw i8, ptr %287, i64 4
  %342 = add i32 %286, -4
  br label %343

343:                                              ; preds = %339, %325, %311, %297, %281
  %344 = phi ptr [ %90, %281 ], [ %299, %297 ], [ %313, %311 ], [ %327, %325 ], [ %341, %339 ]
  %345 = phi i32 [ %92, %281 ], [ %300, %297 ], [ %314, %311 ], [ %328, %325 ], [ %342, %339 ]
  %346 = phi i64 [ %94, %281 ], [ %298, %297 ], [ %312, %311 ], [ %326, %325 ], [ %340, %339 ]
  %347 = load ptr, ptr %84, align 8, !tbaa !30
  %348 = icmp eq ptr %347, null
  br i1 %348, label %351, label %349

349:                                              ; preds = %343
  %350 = getelementptr inbounds nuw i8, ptr %347, i64 8
  store i64 %346, ptr %350, align 8, !tbaa !58
  br label %351

351:                                              ; preds = %349, %343
  %352 = load i32, ptr %52, align 8, !tbaa !28
  %353 = and i32 %352, 512
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %363, label %355

355:                                              ; preds = %351
  %356 = load i32, ptr %49, align 8, !tbaa !24
  %357 = and i32 %356, 4
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %363, label %359

359:                                              ; preds = %355
  %360 = trunc i64 %346 to i32
  store i32 %360, ptr %3, align 4
  %361 = load i64, ptr %53, align 8, !tbaa !54
  %362 = call i64 @crc32(i64 noundef %361, ptr noundef nonnull %3, i32 noundef 4) #12
  store i64 %362, ptr %53, align 8, !tbaa !54
  br label %363

363:                                              ; preds = %359, %355, %351
  store i32 16183, ptr %21, align 8, !tbaa !20
  br label %366

364:                                              ; preds = %88
  %365 = icmp ult i32 %95, 16
  br i1 %365, label %366, label %398

366:                                              ; preds = %364, %363
  %367 = phi i32 [ 0, %363 ], [ %95, %364 ]
  %368 = phi i64 [ 0, %363 ], [ %94, %364 ]
  %369 = phi i32 [ %345, %363 ], [ %92, %364 ]
  %370 = phi ptr [ %344, %363 ], [ %90, %364 ]
  %371 = zext nneg i32 %367 to i64
  %372 = icmp eq i32 %369, 0
  br i1 %372, label %2385, label %373

373:                                              ; preds = %366
  %374 = load i8, ptr %370, align 1, !tbaa !44
  %375 = zext i8 %374 to i64
  %376 = shl nuw nsw i64 %375, %371
  %377 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %368, i64 %376), !nosanitize !47
  %378 = extractvalue { i64, i1 } %377, 1, !nosanitize !47
  br i1 %378, label %379, label %380, !prof !48, !nosanitize !47

379:                                              ; preds = %388, %373
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

380:                                              ; preds = %373
  %381 = extractvalue { i64, i1 } %377, 0, !nosanitize !47
  %382 = getelementptr inbounds nuw i8, ptr %370, i64 1
  %383 = add i32 %369, -1
  %384 = add nuw nsw i64 %371, 8
  %385 = icmp samesign ult i32 %367, 8
  br i1 %385, label %386, label %398

386:                                              ; preds = %380
  %387 = icmp eq i32 %383, 0
  br i1 %387, label %2385, label %388

388:                                              ; preds = %386
  %389 = load i8, ptr %382, align 1, !tbaa !44
  %390 = zext i8 %389 to i64
  %391 = shl nuw nsw i64 %390, %384
  %392 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %381, i64 %391), !nosanitize !47
  %393 = extractvalue { i64, i1 } %392, 1, !nosanitize !47
  br i1 %393, label %379, label %394, !prof !48, !nosanitize !47

394:                                              ; preds = %388
  %395 = extractvalue { i64, i1 } %392, 0, !nosanitize !47
  %396 = getelementptr inbounds nuw i8, ptr %370, i64 2
  %397 = add i32 %369, -2
  br label %398

398:                                              ; preds = %394, %380, %364
  %399 = phi ptr [ %90, %364 ], [ %382, %380 ], [ %396, %394 ]
  %400 = phi i32 [ %92, %364 ], [ %383, %380 ], [ %397, %394 ]
  %401 = phi i64 [ %94, %364 ], [ %381, %380 ], [ %395, %394 ]
  %402 = load ptr, ptr %84, align 8, !tbaa !30
  %403 = icmp eq ptr %402, null
  br i1 %403, label %411, label %404

404:                                              ; preds = %398
  %405 = trunc i64 %401 to i32
  %406 = and i32 %405, 255
  %407 = getelementptr inbounds nuw i8, ptr %402, i64 16
  store i32 %406, ptr %407, align 8, !tbaa !59
  %408 = lshr i64 %401, 8
  %409 = trunc i64 %408 to i32
  %410 = getelementptr inbounds nuw i8, ptr %402, i64 20
  store i32 %409, ptr %410, align 4, !tbaa !60
  br label %411

411:                                              ; preds = %404, %398
  %412 = load i32, ptr %52, align 8, !tbaa !28
  %413 = and i32 %412, 512
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %427, label %415

415:                                              ; preds = %411
  %416 = load i32, ptr %49, align 8, !tbaa !24
  %417 = and i32 %416, 4
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %427, label %419

419:                                              ; preds = %415
  %420 = trunc i64 %401 to i16
  store i16 %420, ptr %3, align 4
  %421 = load i64, ptr %53, align 8, !tbaa !54
  %422 = call i64 @crc32(i64 noundef %421, ptr noundef nonnull %3, i32 noundef 2) #12
  store i64 %422, ptr %53, align 8, !tbaa !54
  br label %427

423:                                              ; preds = %88
  %424 = load i32, ptr %52, align 8, !tbaa !28
  %425 = and i32 %424, 1024
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %487, label %431

427:                                              ; preds = %419, %415, %411
  store i32 16184, ptr %21, align 8, !tbaa !20
  %428 = load i32, ptr %52, align 8, !tbaa !28
  %429 = and i32 %428, 1024
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %487, label %433

431:                                              ; preds = %423
  %432 = icmp ult i32 %95, 16
  br i1 %432, label %433, label %466

433:                                              ; preds = %431, %427
  %434 = phi ptr [ %90, %431 ], [ %399, %427 ]
  %435 = phi i32 [ %92, %431 ], [ %400, %427 ]
  %436 = phi i64 [ %94, %431 ], [ 0, %427 ]
  %437 = phi i32 [ %95, %431 ], [ 0, %427 ]
  %438 = phi i32 [ %424, %431 ], [ %428, %427 ]
  %439 = zext nneg i32 %437 to i64
  %440 = icmp eq i32 %435, 0
  br i1 %440, label %2379, label %441

441:                                              ; preds = %433
  %442 = load i8, ptr %434, align 1, !tbaa !44
  %443 = zext i8 %442 to i64
  %444 = shl nuw nsw i64 %443, %439
  %445 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %436, i64 %444), !nosanitize !47
  %446 = extractvalue { i64, i1 } %445, 1, !nosanitize !47
  br i1 %446, label %447, label %448, !prof !48, !nosanitize !47

447:                                              ; preds = %456, %441
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

448:                                              ; preds = %441
  %449 = extractvalue { i64, i1 } %445, 0, !nosanitize !47
  %450 = getelementptr inbounds nuw i8, ptr %434, i64 1
  %451 = add i32 %435, -1
  %452 = add nuw nsw i64 %439, 8
  %453 = icmp samesign ult i32 %437, 8
  br i1 %453, label %454, label %466

454:                                              ; preds = %448
  %455 = icmp eq i32 %451, 0
  br i1 %455, label %2379, label %456

456:                                              ; preds = %454
  %457 = load i8, ptr %450, align 1, !tbaa !44
  %458 = zext i8 %457 to i64
  %459 = shl nuw nsw i64 %458, %452
  %460 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %449, i64 %459), !nosanitize !47
  %461 = extractvalue { i64, i1 } %460, 1, !nosanitize !47
  br i1 %461, label %447, label %462, !prof !48, !nosanitize !47

462:                                              ; preds = %456
  %463 = extractvalue { i64, i1 } %460, 0, !nosanitize !47
  %464 = getelementptr inbounds nuw i8, ptr %434, i64 2
  %465 = add i32 %435, -2
  br label %466

466:                                              ; preds = %462, %448, %431
  %467 = phi i32 [ %424, %431 ], [ %438, %462 ], [ %438, %448 ]
  %468 = phi ptr [ %90, %431 ], [ %450, %448 ], [ %464, %462 ]
  %469 = phi i32 [ %92, %431 ], [ %451, %448 ], [ %465, %462 ]
  %470 = phi i64 [ %94, %431 ], [ %449, %448 ], [ %463, %462 ]
  %471 = trunc i64 %470 to i32
  store i32 %471, ptr %56, align 4, !tbaa !61
  %472 = load ptr, ptr %84, align 8, !tbaa !30
  %473 = icmp eq ptr %472, null
  br i1 %473, label %476, label %474

474:                                              ; preds = %466
  %475 = getelementptr inbounds nuw i8, ptr %472, i64 32
  store i32 %471, ptr %475, align 8, !tbaa !62
  br label %476

476:                                              ; preds = %474, %466
  %477 = and i32 %467, 512
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %496, label %479

479:                                              ; preds = %476
  %480 = load i32, ptr %49, align 8, !tbaa !24
  %481 = and i32 %480, 4
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %496, label %483

483:                                              ; preds = %479
  %484 = trunc i64 %470 to i16
  store i16 %484, ptr %3, align 4
  %485 = load i64, ptr %53, align 8, !tbaa !54
  %486 = call i64 @crc32(i64 noundef %485, ptr noundef nonnull %3, i32 noundef 2) #12
  store i64 %486, ptr %53, align 8, !tbaa !54
  br label %496

487:                                              ; preds = %427, %423
  %488 = phi i32 [ 0, %427 ], [ %95, %423 ]
  %489 = phi i64 [ 0, %427 ], [ %94, %423 ]
  %490 = phi i32 [ %400, %427 ], [ %92, %423 ]
  %491 = phi ptr [ %399, %427 ], [ %90, %423 ]
  %492 = load ptr, ptr %84, align 8, !tbaa !30
  %493 = icmp eq ptr %492, null
  br i1 %493, label %496, label %494

494:                                              ; preds = %487
  %495 = getelementptr inbounds nuw i8, ptr %492, i64 24
  store ptr null, ptr %495, align 8, !tbaa !63
  br label %496

496:                                              ; preds = %494, %487, %483, %479, %476
  %497 = phi ptr [ %491, %487 ], [ %491, %494 ], [ %468, %476 ], [ %468, %479 ], [ %468, %483 ]
  %498 = phi i32 [ %490, %487 ], [ %490, %494 ], [ %469, %476 ], [ %469, %479 ], [ %469, %483 ]
  %499 = phi i64 [ %489, %487 ], [ %489, %494 ], [ 0, %476 ], [ 0, %479 ], [ 0, %483 ]
  %500 = phi i32 [ %488, %487 ], [ %488, %494 ], [ 0, %476 ], [ 0, %479 ], [ 0, %483 ]
  store i32 16185, ptr %21, align 8, !tbaa !20
  br label %501

501:                                              ; preds = %496, %88
  %502 = phi ptr [ %497, %496 ], [ %90, %88 ]
  %503 = phi i32 [ %498, %496 ], [ %92, %88 ]
  %504 = phi i64 [ %499, %496 ], [ %94, %88 ]
  %505 = phi i32 [ %500, %496 ], [ %95, %88 ]
  %506 = load i32, ptr %52, align 8, !tbaa !28
  %507 = and i32 %506, 1024
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %577, label %509

509:                                              ; preds = %501
  %510 = load i32, ptr %56, align 4, !tbaa !61
  %511 = call i32 @llvm.umin.i32(i32 %510, i32 %503)
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %572, label %513

513:                                              ; preds = %509
  %514 = load ptr, ptr %84, align 8, !tbaa !30
  %515 = icmp eq ptr %514, null
  br i1 %515, label %547, label %516

516:                                              ; preds = %513
  %517 = getelementptr inbounds nuw i8, ptr %514, i64 24
  %518 = load ptr, ptr %517, align 8, !tbaa !63
  %519 = icmp eq ptr %518, null
  br i1 %519, label %547, label %520

520:                                              ; preds = %516
  %521 = getelementptr inbounds nuw i8, ptr %514, i64 32
  %522 = load i32, ptr %521, align 8, !tbaa !62
  %523 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %522, i32 %510), !nosanitize !47
  %524 = extractvalue { i32, i1 } %523, 0, !nosanitize !47
  %525 = extractvalue { i32, i1 } %523, 1, !nosanitize !47
  br i1 %525, label %526, label %527, !prof !48, !nosanitize !47

526:                                              ; preds = %520
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

527:                                              ; preds = %520
  %528 = getelementptr inbounds nuw i8, ptr %514, i64 36
  %529 = load i32, ptr %528, align 4, !tbaa !64
  %530 = icmp ult i32 %524, %529
  br i1 %530, label %531, label %547

531:                                              ; preds = %527
  %532 = zext i32 %524 to i64
  %533 = getelementptr inbounds nuw i8, ptr %518, i64 %532
  %534 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %524, i32 %511), !nosanitize !47
  %535 = extractvalue { i32, i1 } %534, 1, !nosanitize !47
  br i1 %535, label %536, label %537, !prof !48, !nosanitize !47

536:                                              ; preds = %531
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

537:                                              ; preds = %531
  %538 = extractvalue { i32, i1 } %534, 0, !nosanitize !47
  %539 = icmp ugt i32 %538, %529
  br i1 %539, label %540, label %543

540:                                              ; preds = %537
  %541 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %529, i32 %524), !nosanitize !47
  %542 = extractvalue { i32, i1 } %541, 0, !nosanitize !47
  br label %543

543:                                              ; preds = %540, %537
  %544 = phi i32 [ %542, %540 ], [ %511, %537 ]
  %545 = zext i32 %544 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %533, ptr align 1 %502, i64 %545, i1 false)
  %546 = load i32, ptr %52, align 8, !tbaa !28
  br label %547

547:                                              ; preds = %543, %527, %516, %513
  %548 = phi i32 [ %546, %543 ], [ %506, %527 ], [ %506, %516 ], [ %506, %513 ]
  %549 = and i32 %548, 512
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %558, label %551

551:                                              ; preds = %547
  %552 = load i32, ptr %49, align 8, !tbaa !24
  %553 = and i32 %552, 4
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %558, label %555

555:                                              ; preds = %551
  %556 = load i64, ptr %53, align 8, !tbaa !54
  %557 = call i64 @crc32(i64 noundef %556, ptr noundef %502, i32 noundef %511) #12
  store i64 %557, ptr %53, align 8, !tbaa !54
  br label %558

558:                                              ; preds = %555, %551, %547
  %559 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %503, i32 %511), !nosanitize !47
  %560 = extractvalue { i32, i1 } %559, 0, !nosanitize !47
  %561 = extractvalue { i32, i1 } %559, 1, !nosanitize !47
  br i1 %561, label %562, label %563, !prof !48, !nosanitize !47

562:                                              ; preds = %558
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

563:                                              ; preds = %558
  %564 = load i32, ptr %56, align 4, !tbaa !61
  %565 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %564, i32 %511), !nosanitize !47
  %566 = extractvalue { i32, i1 } %565, 1, !nosanitize !47
  br i1 %566, label %567, label %568, !prof !48, !nosanitize !47

567:                                              ; preds = %563
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

568:                                              ; preds = %563
  %569 = extractvalue { i32, i1 } %565, 0, !nosanitize !47
  %570 = zext i32 %511 to i64
  %571 = getelementptr inbounds nuw i8, ptr %502, i64 %570
  store i32 %569, ptr %56, align 4, !tbaa !61
  br label %572

572:                                              ; preds = %568, %509
  %573 = phi i32 [ %569, %568 ], [ %510, %509 ]
  %574 = phi ptr [ %571, %568 ], [ %502, %509 ]
  %575 = phi i32 [ %560, %568 ], [ %503, %509 ]
  %576 = icmp eq i32 %573, 0
  br i1 %576, label %577, label %2485

577:                                              ; preds = %572, %501
  %578 = phi ptr [ %574, %572 ], [ %502, %501 ]
  %579 = phi i32 [ %575, %572 ], [ %503, %501 ]
  store i32 0, ptr %56, align 4, !tbaa !61
  store i32 16186, ptr %21, align 8, !tbaa !20
  br label %580

580:                                              ; preds = %577, %88
  %581 = phi ptr [ %578, %577 ], [ %90, %88 ]
  %582 = phi i32 [ %579, %577 ], [ %92, %88 ]
  %583 = phi i64 [ %504, %577 ], [ %94, %88 ]
  %584 = phi i32 [ %505, %577 ], [ %95, %88 ]
  %585 = load i32, ptr %52, align 8, !tbaa !28
  %586 = and i32 %585, 2048
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %636, label %588

588:                                              ; preds = %580
  %589 = icmp eq i32 %582, 0
  br i1 %589, label %2485, label %590

590:                                              ; preds = %588
  %591 = zext i32 %582 to i64
  br label %592

592:                                              ; preds = %612, %590
  %593 = phi i64 [ 0, %590 ], [ %594, %612 ]
  %594 = add nuw nsw i64 %593, 1
  %595 = getelementptr inbounds nuw i8, ptr %581, i64 %593
  %596 = load i8, ptr %595, align 1, !tbaa !44
  %597 = load ptr, ptr %84, align 8, !tbaa !30
  %598 = icmp eq ptr %597, null
  br i1 %598, label %612, label %599

599:                                              ; preds = %592
  %600 = getelementptr inbounds nuw i8, ptr %597, i64 40
  %601 = load ptr, ptr %600, align 8, !tbaa !65
  %602 = icmp eq ptr %601, null
  br i1 %602, label %612, label %603

603:                                              ; preds = %599
  %604 = load i32, ptr %56, align 4, !tbaa !61
  %605 = getelementptr inbounds nuw i8, ptr %597, i64 48
  %606 = load i32, ptr %605, align 8, !tbaa !66
  %607 = icmp ult i32 %604, %606
  br i1 %607, label %608, label %612

608:                                              ; preds = %603
  %609 = add nuw i32 %604, 1
  store i32 %609, ptr %56, align 4, !tbaa !61
  %610 = zext i32 %604 to i64
  %611 = getelementptr inbounds nuw i8, ptr %601, i64 %610
  store i8 %596, ptr %611, align 1, !tbaa !44
  br label %612

612:                                              ; preds = %608, %603, %599, %592
  %613 = icmp ne i8 %596, 0
  %614 = icmp samesign ult i64 %594, %591
  %615 = select i1 %613, i1 %614, i1 false
  br i1 %615, label %592, label %616, !llvm.loop !67

616:                                              ; preds = %612
  %617 = trunc nuw i64 %594 to i32
  %618 = load i32, ptr %52, align 8, !tbaa !28
  %619 = and i32 %618, 512
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %628, label %621

621:                                              ; preds = %616
  %622 = load i32, ptr %49, align 8, !tbaa !24
  %623 = and i32 %622, 4
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %628, label %625

625:                                              ; preds = %621
  %626 = load i64, ptr %53, align 8, !tbaa !54
  %627 = call i64 @crc32(i64 noundef %626, ptr noundef nonnull %581, i32 noundef %617) #12
  store i64 %627, ptr %53, align 8, !tbaa !54
  br label %628

628:                                              ; preds = %625, %621, %616
  %629 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %582, i32 %617), !nosanitize !47
  %630 = extractvalue { i32, i1 } %629, 1, !nosanitize !47
  br i1 %630, label %631, label %632, !prof !48, !nosanitize !47

631:                                              ; preds = %628
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

632:                                              ; preds = %628
  %633 = extractvalue { i32, i1 } %629, 0, !nosanitize !47
  %634 = and i64 %594, 4294967295
  %635 = getelementptr inbounds nuw i8, ptr %581, i64 %634
  br i1 %613, label %2485, label %641

636:                                              ; preds = %580
  %637 = load ptr, ptr %84, align 8, !tbaa !30
  %638 = icmp eq ptr %637, null
  br i1 %638, label %641, label %639

639:                                              ; preds = %636
  %640 = getelementptr inbounds nuw i8, ptr %637, i64 40
  store ptr null, ptr %640, align 8, !tbaa !65
  br label %641

641:                                              ; preds = %639, %636, %632
  %642 = phi ptr [ %635, %632 ], [ %581, %639 ], [ %581, %636 ]
  %643 = phi i32 [ %633, %632 ], [ %582, %639 ], [ %582, %636 ]
  store i32 0, ptr %56, align 4, !tbaa !61
  store i32 16187, ptr %21, align 8, !tbaa !20
  br label %644

644:                                              ; preds = %641, %88
  %645 = phi ptr [ %642, %641 ], [ %90, %88 ]
  %646 = phi i32 [ %643, %641 ], [ %92, %88 ]
  %647 = phi i64 [ %583, %641 ], [ %94, %88 ]
  %648 = phi i32 [ %584, %641 ], [ %95, %88 ]
  %649 = load i32, ptr %52, align 8, !tbaa !28
  %650 = and i32 %649, 4096
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %700, label %652

652:                                              ; preds = %644
  %653 = icmp eq i32 %646, 0
  br i1 %653, label %2485, label %654

654:                                              ; preds = %652
  %655 = zext i32 %646 to i64
  br label %656

656:                                              ; preds = %676, %654
  %657 = phi i64 [ 0, %654 ], [ %658, %676 ]
  %658 = add nuw nsw i64 %657, 1
  %659 = getelementptr inbounds nuw i8, ptr %645, i64 %657
  %660 = load i8, ptr %659, align 1, !tbaa !44
  %661 = load ptr, ptr %84, align 8, !tbaa !30
  %662 = icmp eq ptr %661, null
  br i1 %662, label %676, label %663

663:                                              ; preds = %656
  %664 = getelementptr inbounds nuw i8, ptr %661, i64 56
  %665 = load ptr, ptr %664, align 8, !tbaa !69
  %666 = icmp eq ptr %665, null
  br i1 %666, label %676, label %667

667:                                              ; preds = %663
  %668 = load i32, ptr %56, align 4, !tbaa !61
  %669 = getelementptr inbounds nuw i8, ptr %661, i64 64
  %670 = load i32, ptr %669, align 8, !tbaa !70
  %671 = icmp ult i32 %668, %670
  br i1 %671, label %672, label %676

672:                                              ; preds = %667
  %673 = add nuw i32 %668, 1
  store i32 %673, ptr %56, align 4, !tbaa !61
  %674 = zext i32 %668 to i64
  %675 = getelementptr inbounds nuw i8, ptr %665, i64 %674
  store i8 %660, ptr %675, align 1, !tbaa !44
  br label %676

676:                                              ; preds = %672, %667, %663, %656
  %677 = icmp ne i8 %660, 0
  %678 = icmp samesign ult i64 %658, %655
  %679 = select i1 %677, i1 %678, i1 false
  br i1 %679, label %656, label %680, !llvm.loop !71

680:                                              ; preds = %676
  %681 = trunc nuw i64 %658 to i32
  %682 = load i32, ptr %52, align 8, !tbaa !28
  %683 = and i32 %682, 512
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %692, label %685

685:                                              ; preds = %680
  %686 = load i32, ptr %49, align 8, !tbaa !24
  %687 = and i32 %686, 4
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %692, label %689

689:                                              ; preds = %685
  %690 = load i64, ptr %53, align 8, !tbaa !54
  %691 = call i64 @crc32(i64 noundef %690, ptr noundef nonnull %645, i32 noundef %681) #12
  store i64 %691, ptr %53, align 8, !tbaa !54
  br label %692

692:                                              ; preds = %689, %685, %680
  %693 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %646, i32 %681), !nosanitize !47
  %694 = extractvalue { i32, i1 } %693, 1, !nosanitize !47
  br i1 %694, label %695, label %696, !prof !48, !nosanitize !47

695:                                              ; preds = %692
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

696:                                              ; preds = %692
  %697 = extractvalue { i32, i1 } %693, 0, !nosanitize !47
  %698 = and i64 %658, 4294967295
  %699 = getelementptr inbounds nuw i8, ptr %645, i64 %698
  br i1 %677, label %2485, label %705

700:                                              ; preds = %644
  %701 = load ptr, ptr %84, align 8, !tbaa !30
  %702 = icmp eq ptr %701, null
  br i1 %702, label %705, label %703

703:                                              ; preds = %700
  %704 = getelementptr inbounds nuw i8, ptr %701, i64 56
  store ptr null, ptr %704, align 8, !tbaa !69
  br label %705

705:                                              ; preds = %703, %700, %696
  %706 = phi ptr [ %699, %696 ], [ %645, %703 ], [ %645, %700 ]
  %707 = phi i32 [ %697, %696 ], [ %646, %703 ], [ %646, %700 ]
  store i32 16188, ptr %21, align 8, !tbaa !20
  br label %708

708:                                              ; preds = %705, %88
  %709 = phi ptr [ %706, %705 ], [ %90, %88 ]
  %710 = phi i32 [ %707, %705 ], [ %92, %88 ]
  %711 = phi i64 [ %647, %705 ], [ %94, %88 ]
  %712 = phi i32 [ %648, %705 ], [ %95, %88 ]
  %713 = load i32, ptr %52, align 8, !tbaa !28
  %714 = and i32 %713, 512
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %766, label %716

716:                                              ; preds = %708
  %717 = icmp ult i32 %712, 16
  br i1 %717, label %718, label %753

718:                                              ; preds = %716
  %719 = zext nneg i32 %712 to i64
  %720 = icmp eq i32 %710, 0
  br i1 %720, label %2373, label %721

721:                                              ; preds = %718
  %722 = load i8, ptr %709, align 1, !tbaa !44
  %723 = zext i8 %722 to i64
  %724 = shl nuw nsw i64 %723, %719
  %725 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %711, i64 %724), !nosanitize !47
  %726 = extractvalue { i64, i1 } %725, 1, !nosanitize !47
  br i1 %726, label %727, label %728, !prof !48, !nosanitize !47

727:                                              ; preds = %736, %721
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

728:                                              ; preds = %721
  %729 = extractvalue { i64, i1 } %725, 0, !nosanitize !47
  %730 = getelementptr inbounds nuw i8, ptr %709, i64 1
  %731 = add i32 %710, -1
  %732 = add nuw nsw i64 %719, 8
  %733 = icmp ult i32 %712, 8
  br i1 %733, label %734, label %747

734:                                              ; preds = %728
  %735 = icmp eq i32 %731, 0
  br i1 %735, label %2373, label %736

736:                                              ; preds = %734
  %737 = load i8, ptr %730, align 1, !tbaa !44
  %738 = zext i8 %737 to i64
  %739 = shl nuw nsw i64 %738, %732
  %740 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %729, i64 %739), !nosanitize !47
  %741 = extractvalue { i64, i1 } %740, 1, !nosanitize !47
  br i1 %741, label %727, label %742, !prof !48, !nosanitize !47

742:                                              ; preds = %736
  %743 = extractvalue { i64, i1 } %740, 0, !nosanitize !47
  %744 = getelementptr inbounds nuw i8, ptr %709, i64 2
  %745 = add i32 %710, -2
  %746 = or disjoint i64 %719, 16
  br label %747

747:                                              ; preds = %742, %728
  %748 = phi i64 [ %729, %728 ], [ %743, %742 ]
  %749 = phi ptr [ %730, %728 ], [ %744, %742 ]
  %750 = phi i32 [ %731, %728 ], [ %745, %742 ]
  %751 = phi i64 [ %732, %728 ], [ %746, %742 ]
  %752 = trunc nuw nsw i64 %751 to i32
  br label %753

753:                                              ; preds = %747, %716
  %754 = phi ptr [ %709, %716 ], [ %749, %747 ]
  %755 = phi i32 [ %710, %716 ], [ %750, %747 ]
  %756 = phi i64 [ %711, %716 ], [ %748, %747 ]
  %757 = phi i32 [ %712, %716 ], [ %752, %747 ]
  %758 = load i32, ptr %49, align 8, !tbaa !24
  %759 = and i32 %758, 4
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %766, label %761

761:                                              ; preds = %753
  %762 = load i64, ptr %53, align 8, !tbaa !54
  %763 = and i64 %762, 65535
  %764 = icmp eq i64 %756, %763
  br i1 %764, label %766, label %765

765:                                              ; preds = %761
  store ptr @.str.5, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2351

766:                                              ; preds = %761, %753, %708
  %767 = phi ptr [ %709, %708 ], [ %754, %753 ], [ %754, %761 ]
  %768 = phi i32 [ %710, %708 ], [ %755, %753 ], [ %755, %761 ]
  %769 = phi i64 [ %711, %708 ], [ 0, %753 ], [ 0, %761 ]
  %770 = phi i32 [ %712, %708 ], [ 0, %753 ], [ 0, %761 ]
  %771 = load ptr, ptr %84, align 8, !tbaa !30
  %772 = icmp eq ptr %771, null
  br i1 %772, label %778, label %773

773:                                              ; preds = %766
  %774 = lshr i32 %713, 9
  %775 = and i32 %774, 1
  %776 = getelementptr inbounds nuw i8, ptr %771, i64 68
  store i32 %775, ptr %776, align 4, !tbaa !72
  %777 = getelementptr inbounds nuw i8, ptr %771, i64 72
  store i32 1, ptr %777, align 8, !tbaa !55
  br label %778

778:                                              ; preds = %773, %766
  %779 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %779, ptr %53, align 8, !tbaa !54
  store i64 %779, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2351

780:                                              ; preds = %112
  %781 = load i8, ptr %90, align 1, !tbaa !44
  %782 = zext i8 %781 to i64
  %783 = shl nuw nsw i64 %782, %113
  %784 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %783), !nosanitize !47
  %785 = extractvalue { i64, i1 } %784, 1, !nosanitize !47
  br i1 %785, label %786, label %787, !prof !48, !nosanitize !47

786:                                              ; preds = %823, %809, %795, %780
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

787:                                              ; preds = %780
  %788 = extractvalue { i64, i1 } %784, 0, !nosanitize !47
  %789 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %790 = add i32 %92, -1
  %791 = add nuw nsw i64 %113, 8
  %792 = icmp ult i32 %95, 24
  br i1 %792, label %793, label %833

793:                                              ; preds = %787
  %794 = icmp eq i32 %790, 0
  br i1 %794, label %2403, label %795

795:                                              ; preds = %793
  %796 = load i8, ptr %789, align 1, !tbaa !44
  %797 = zext i8 %796 to i64
  %798 = shl nuw nsw i64 %797, %791
  %799 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %788, i64 %798), !nosanitize !47
  %800 = extractvalue { i64, i1 } %799, 1, !nosanitize !47
  br i1 %800, label %786, label %801, !prof !48, !nosanitize !47

801:                                              ; preds = %795
  %802 = extractvalue { i64, i1 } %799, 0, !nosanitize !47
  %803 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %804 = add i32 %92, -2
  %805 = add nuw nsw i64 %113, 16
  %806 = icmp ult i32 %95, 16
  br i1 %806, label %807, label %833

807:                                              ; preds = %801
  %808 = icmp eq i32 %804, 0
  br i1 %808, label %2403, label %809

809:                                              ; preds = %807
  %810 = load i8, ptr %803, align 1, !tbaa !44
  %811 = zext i8 %810 to i64
  %812 = shl nuw nsw i64 %811, %805
  %813 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %802, i64 %812), !nosanitize !47
  %814 = extractvalue { i64, i1 } %813, 1, !nosanitize !47
  br i1 %814, label %786, label %815, !prof !48, !nosanitize !47

815:                                              ; preds = %809
  %816 = extractvalue { i64, i1 } %813, 0, !nosanitize !47
  %817 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %818 = add i32 %92, -3
  %819 = add nuw nsw i64 %113, 24
  %820 = icmp ult i32 %95, 8
  br i1 %820, label %821, label %833

821:                                              ; preds = %815
  %822 = icmp eq i32 %818, 0
  br i1 %822, label %2403, label %823

823:                                              ; preds = %821
  %824 = load i8, ptr %817, align 1, !tbaa !44
  %825 = zext i8 %824 to i64
  %826 = shl nuw nsw i64 %825, %819
  %827 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %816, i64 %826), !nosanitize !47
  %828 = extractvalue { i64, i1 } %827, 1, !nosanitize !47
  br i1 %828, label %786, label %829, !prof !48, !nosanitize !47

829:                                              ; preds = %823
  %830 = extractvalue { i64, i1 } %827, 0, !nosanitize !47
  %831 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %832 = add i32 %92, -4
  br label %833

833:                                              ; preds = %829, %815, %801, %787, %110
  %834 = phi ptr [ %90, %110 ], [ %789, %787 ], [ %803, %801 ], [ %817, %815 ], [ %831, %829 ]
  %835 = phi i32 [ %92, %110 ], [ %790, %787 ], [ %804, %801 ], [ %818, %815 ], [ %832, %829 ]
  %836 = phi i64 [ %94, %110 ], [ %788, %787 ], [ %802, %801 ], [ %816, %815 ], [ %830, %829 ]
  %837 = trunc i64 %836 to i32
  %838 = call i32 @llvm.bswap.i32(i32 %837)
  %839 = zext i32 %838 to i64
  store i64 %839, ptr %53, align 8, !tbaa !54
  store i64 %839, ptr %54, align 8, !tbaa !25
  store i32 16190, ptr %21, align 8, !tbaa !20
  br label %840

840:                                              ; preds = %833, %88
  %841 = phi ptr [ %834, %833 ], [ %90, %88 ]
  %842 = phi i32 [ %835, %833 ], [ %92, %88 ]
  %843 = phi i64 [ 0, %833 ], [ %94, %88 ]
  %844 = phi i32 [ 0, %833 ], [ %95, %88 ]
  %845 = load i32, ptr %80, align 4, !tbaa !27
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %847, label %848

847:                                              ; preds = %840
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %93, ptr %41, align 8, !tbaa !52
  store ptr %841, ptr %0, align 8, !tbaa !50
  store i32 %842, ptr %43, align 8, !tbaa !51
  store i64 %843, ptr %45, align 8, !tbaa !31
  store i32 %844, ptr %47, align 8, !tbaa !32
  br label %2669

848:                                              ; preds = %840
  %849 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %849, ptr %53, align 8, !tbaa !54
  store i64 %849, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %850

850:                                              ; preds = %848, %88
  %851 = phi ptr [ %841, %848 ], [ %90, %88 ]
  %852 = phi i32 [ %842, %848 ], [ %92, %88 ]
  %853 = phi i64 [ %843, %848 ], [ %94, %88 ]
  %854 = phi i32 [ %844, %848 ], [ %95, %88 ]
  br i1 %82, label %2485, label %855

855:                                              ; preds = %850, %88
  %856 = phi ptr [ %851, %850 ], [ %90, %88 ]
  %857 = phi i32 [ %852, %850 ], [ %92, %88 ]
  %858 = phi i64 [ %853, %850 ], [ %94, %88 ]
  %859 = phi i32 [ %854, %850 ], [ %95, %88 ]
  %860 = load i32, ptr %83, align 4, !tbaa !26
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %862, label %867

862:                                              ; preds = %855
  %863 = icmp ult i32 %859, 3
  br i1 %863, label %864, label %885

864:                                              ; preds = %862
  %865 = or disjoint i32 %859, 8
  %866 = icmp eq i32 %857, 0
  br i1 %866, label %2485, label %873

867:                                              ; preds = %855
  %868 = and i32 %859, 7
  %869 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %859, i32 %868), !nosanitize !47
  %870 = extractvalue { i32, i1 } %869, 0, !nosanitize !47
  %871 = zext nneg i32 %868 to i64
  %872 = lshr i64 %858, %871
  store i32 16206, ptr %21, align 8, !tbaa !20
  br label %2351

873:                                              ; preds = %864
  %874 = load i8, ptr %856, align 1, !tbaa !44
  %875 = zext i8 %874 to i64
  %876 = zext nneg i32 %859 to i64
  %877 = shl nuw nsw i64 %875, %876
  %878 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %858, i64 %877), !nosanitize !47
  %879 = extractvalue { i64, i1 } %878, 1, !nosanitize !47
  br i1 %879, label %880, label %881, !prof !48, !nosanitize !47

880:                                              ; preds = %873
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

881:                                              ; preds = %873
  %882 = extractvalue { i64, i1 } %878, 0, !nosanitize !47
  %883 = getelementptr inbounds nuw i8, ptr %856, i64 1
  %884 = add i32 %857, -1
  br label %885

885:                                              ; preds = %881, %862
  %886 = phi ptr [ %883, %881 ], [ %856, %862 ]
  %887 = phi i32 [ %884, %881 ], [ %857, %862 ]
  %888 = phi i64 [ %882, %881 ], [ %858, %862 ]
  %889 = phi i32 [ %865, %881 ], [ %859, %862 ]
  %890 = trunc i64 %888 to i32
  %891 = and i32 %890, 1
  store i32 %891, ptr %83, align 4, !tbaa !26
  %892 = lshr i32 %890, 1
  %893 = and i32 %892, 3
  switch i32 %893, label %899 [
    i32 0, label %901
    i32 1, label %894
    i32 2, label %898
    i32 3, label %900
  ]

894:                                              ; preds = %885
  call void @inflate_fixed(ptr noundef nonnull %15) #12
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %895, label %903

895:                                              ; preds = %894
  %896 = add i32 %889, -3
  %897 = lshr i64 %888, 3
  br label %2485

898:                                              ; preds = %885
  br label %901

899:                                              ; preds = %885
  unreachable

900:                                              ; preds = %885
  store ptr @.str.6, ptr %55, align 8, !tbaa !45
  br label %901

901:                                              ; preds = %900, %898, %885
  %902 = phi i32 [ 16209, %900 ], [ 16196, %898 ], [ 16193, %885 ]
  store i32 %902, ptr %21, align 8, !tbaa !20
  br label %903

903:                                              ; preds = %901, %894
  %904 = add i32 %889, -3
  %905 = lshr i64 %888, 3
  br label %2351

906:                                              ; preds = %88
  %907 = and i32 %95, 7
  %908 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %95, i32 %907), !nosanitize !47
  %909 = zext nneg i32 %907 to i64
  %910 = lshr i64 %94, %909
  %911 = extractvalue { i32, i1 } %908, 0
  %912 = icmp ult i32 %911, 32
  br i1 %912, label %913, label %976

913:                                              ; preds = %906
  %914 = and i32 %95, -8
  %915 = zext i32 %914 to i64
  %916 = icmp eq i32 %92, 0
  br i1 %916, label %2409, label %917

917:                                              ; preds = %913
  %918 = load i8, ptr %90, align 1, !tbaa !44
  %919 = zext i8 %918 to i64
  %920 = shl nuw nsw i64 %919, %915
  %921 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %910, i64 %920), !nosanitize !47
  %922 = extractvalue { i64, i1 } %921, 1, !nosanitize !47
  br i1 %922, label %923, label %924, !prof !48, !nosanitize !47

923:                                              ; preds = %960, %946, %932, %917
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

924:                                              ; preds = %917
  %925 = extractvalue { i64, i1 } %921, 0, !nosanitize !47
  %926 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %927 = add i32 %92, -1
  %928 = add nuw nsw i64 %915, 8
  %929 = icmp ult i32 %95, 24
  br i1 %929, label %930, label %970

930:                                              ; preds = %924
  %931 = icmp eq i32 %927, 0
  br i1 %931, label %2409, label %932

932:                                              ; preds = %930
  %933 = load i8, ptr %926, align 1, !tbaa !44
  %934 = zext i8 %933 to i64
  %935 = shl nuw nsw i64 %934, %928
  %936 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %925, i64 %935), !nosanitize !47
  %937 = extractvalue { i64, i1 } %936, 1, !nosanitize !47
  br i1 %937, label %923, label %938, !prof !48, !nosanitize !47

938:                                              ; preds = %932
  %939 = extractvalue { i64, i1 } %936, 0, !nosanitize !47
  %940 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %941 = add i32 %92, -2
  %942 = add nuw nsw i64 %915, 16
  %943 = icmp ult i32 %95, 16
  br i1 %943, label %944, label %970

944:                                              ; preds = %938
  %945 = icmp eq i32 %941, 0
  br i1 %945, label %2409, label %946

946:                                              ; preds = %944
  %947 = load i8, ptr %940, align 1, !tbaa !44
  %948 = zext i8 %947 to i64
  %949 = shl nuw nsw i64 %948, %942
  %950 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %939, i64 %949), !nosanitize !47
  %951 = extractvalue { i64, i1 } %950, 1, !nosanitize !47
  br i1 %951, label %923, label %952, !prof !48, !nosanitize !47

952:                                              ; preds = %946
  %953 = extractvalue { i64, i1 } %950, 0, !nosanitize !47
  %954 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %955 = add i32 %92, -3
  %956 = add nuw nsw i64 %915, 24
  %957 = icmp eq i32 %914, 0
  br i1 %957, label %958, label %970

958:                                              ; preds = %952
  %959 = icmp eq i32 %955, 0
  br i1 %959, label %2409, label %960

960:                                              ; preds = %958
  %961 = load i8, ptr %954, align 1, !tbaa !44
  %962 = zext i8 %961 to i64
  %963 = shl nuw nsw i64 %962, %956
  %964 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %953, i64 %963), !nosanitize !47
  %965 = extractvalue { i64, i1 } %964, 1, !nosanitize !47
  br i1 %965, label %923, label %966, !prof !48, !nosanitize !47

966:                                              ; preds = %960
  %967 = extractvalue { i64, i1 } %964, 0, !nosanitize !47
  %968 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %969 = add i32 %92, -4
  br label %970

970:                                              ; preds = %966, %952, %938, %924
  %971 = phi i64 [ %925, %924 ], [ %939, %938 ], [ %953, %952 ], [ %967, %966 ]
  %972 = phi ptr [ %926, %924 ], [ %940, %938 ], [ %954, %952 ], [ %968, %966 ]
  %973 = phi i32 [ %927, %924 ], [ %941, %938 ], [ %955, %952 ], [ %969, %966 ]
  %974 = phi i64 [ %928, %924 ], [ %942, %938 ], [ %956, %952 ], [ 32, %966 ]
  %975 = trunc nuw nsw i64 %974 to i32
  br label %976

976:                                              ; preds = %970, %906
  %977 = phi ptr [ %90, %906 ], [ %972, %970 ]
  %978 = phi i32 [ %92, %906 ], [ %973, %970 ]
  %979 = phi i64 [ %910, %906 ], [ %971, %970 ]
  %980 = phi i32 [ %911, %906 ], [ %975, %970 ]
  %981 = and i64 %979, 65535
  %982 = lshr i64 %979, 16
  %983 = xor i64 %982, %981
  %984 = icmp eq i64 %983, 65535
  br i1 %984, label %986, label %985

985:                                              ; preds = %976
  store ptr @.str.7, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2351

986:                                              ; preds = %976
  %987 = trunc i64 %979 to i32
  %988 = and i32 %987, 65535
  store i32 %988, ptr %56, align 4, !tbaa !61
  store i32 16194, ptr %21, align 8, !tbaa !20
  br i1 %70, label %2485, label %989

989:                                              ; preds = %986, %88
  %990 = phi ptr [ %977, %986 ], [ %90, %88 ]
  %991 = phi i32 [ %978, %986 ], [ %92, %88 ]
  %992 = phi i64 [ 0, %986 ], [ %94, %88 ]
  %993 = phi i32 [ 0, %986 ], [ %95, %88 ]
  store i32 16195, ptr %21, align 8, !tbaa !20
  br label %994

994:                                              ; preds = %989, %88
  %995 = phi ptr [ %990, %989 ], [ %90, %88 ]
  %996 = phi i32 [ %991, %989 ], [ %92, %88 ]
  %997 = phi i64 [ %992, %989 ], [ %94, %88 ]
  %998 = phi i32 [ %993, %989 ], [ %95, %88 ]
  %999 = load i32, ptr %56, align 4, !tbaa !61
  %1000 = icmp eq i32 %999, 0
  br i1 %1000, label %1025, label %1001

1001:                                             ; preds = %994
  %1002 = call i32 @llvm.umin.i32(i32 %999, i32 %996)
  %1003 = call i32 @llvm.umin.i32(i32 %1002, i32 %93)
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %2485, label %1005

1005:                                             ; preds = %1001
  %1006 = zext i32 %1003 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %91, ptr align 1 %995, i64 %1006, i1 false)
  %1007 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %996, i32 %1003), !nosanitize !47
  %1008 = extractvalue { i32, i1 } %1007, 0, !nosanitize !47
  %1009 = extractvalue { i32, i1 } %1007, 1, !nosanitize !47
  br i1 %1009, label %1010, label %1011, !prof !48, !nosanitize !47

1010:                                             ; preds = %1005
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1011:                                             ; preds = %1005
  %1012 = getelementptr inbounds nuw i8, ptr %995, i64 %1006
  %1013 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %93, i32 %1003), !nosanitize !47
  %1014 = extractvalue { i32, i1 } %1013, 0, !nosanitize !47
  %1015 = extractvalue { i32, i1 } %1013, 1, !nosanitize !47
  br i1 %1015, label %1016, label %1017, !prof !48, !nosanitize !47

1016:                                             ; preds = %1011
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1017:                                             ; preds = %1011
  %1018 = load i32, ptr %56, align 4, !tbaa !61
  %1019 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1018, i32 %1003), !nosanitize !47
  %1020 = extractvalue { i32, i1 } %1019, 1, !nosanitize !47
  br i1 %1020, label %1021, label %1022, !prof !48, !nosanitize !47

1021:                                             ; preds = %1017
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1022:                                             ; preds = %1017
  %1023 = extractvalue { i32, i1 } %1019, 0, !nosanitize !47
  %1024 = getelementptr inbounds nuw i8, ptr %91, i64 %1006
  store i32 %1023, ptr %56, align 4, !tbaa !61
  br label %2351

1025:                                             ; preds = %994
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2351

1026:                                             ; preds = %107
  %1027 = load i8, ptr %90, align 1, !tbaa !44
  %1028 = zext i8 %1027 to i64
  %1029 = shl nuw nsw i64 %1028, %108
  %1030 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %1029), !nosanitize !47
  %1031 = extractvalue { i64, i1 } %1030, 1, !nosanitize !47
  br i1 %1031, label %1032, label %1033, !prof !48, !nosanitize !47

1032:                                             ; preds = %1041, %1026
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1033:                                             ; preds = %1026
  %1034 = extractvalue { i64, i1 } %1030, 0, !nosanitize !47
  %1035 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %1036 = add i32 %92, -1
  %1037 = add nuw nsw i64 %108, 8
  %1038 = icmp ult i32 %95, 6
  br i1 %1038, label %1039, label %1052

1039:                                             ; preds = %1033
  %1040 = icmp eq i32 %1036, 0
  br i1 %1040, label %2466, label %1041

1041:                                             ; preds = %1039
  %1042 = load i8, ptr %1035, align 1, !tbaa !44
  %1043 = zext i8 %1042 to i64
  %1044 = shl nuw nsw i64 %1043, %1037
  %1045 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1034, i64 %1044), !nosanitize !47
  %1046 = extractvalue { i64, i1 } %1045, 1, !nosanitize !47
  br i1 %1046, label %1032, label %1047, !prof !48, !nosanitize !47

1047:                                             ; preds = %1041
  %1048 = extractvalue { i64, i1 } %1045, 0, !nosanitize !47
  %1049 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %1050 = add i32 %92, -2
  %1051 = or disjoint i64 %108, 16
  br label %1052

1052:                                             ; preds = %1047, %1033
  %1053 = phi i64 [ %1034, %1033 ], [ %1048, %1047 ]
  %1054 = phi ptr [ %1035, %1033 ], [ %1049, %1047 ]
  %1055 = phi i32 [ %1036, %1033 ], [ %1050, %1047 ]
  %1056 = phi i64 [ %1037, %1033 ], [ %1051, %1047 ]
  %1057 = trunc nuw nsw i64 %1056 to i32
  br label %1058

1058:                                             ; preds = %1052, %105
  %1059 = phi ptr [ %90, %105 ], [ %1054, %1052 ]
  %1060 = phi i32 [ %92, %105 ], [ %1055, %1052 ]
  %1061 = phi i64 [ %94, %105 ], [ %1053, %1052 ]
  %1062 = phi i32 [ %95, %105 ], [ %1057, %1052 ]
  %1063 = trunc i64 %1061 to i32
  %1064 = and i32 %1063, 31
  %1065 = add nuw nsw i32 %1064, 257
  store i32 %1065, ptr %57, align 4, !tbaa !73
  %1066 = lshr i32 %1063, 5
  %1067 = and i32 %1066, 31
  %1068 = add nuw nsw i32 %1067, 1
  store i32 %1068, ptr %58, align 8, !tbaa !74
  %1069 = lshr i32 %1063, 10
  %1070 = and i32 %1069, 15
  %1071 = add nuw nsw i32 %1070, 4
  store i32 %1071, ptr %59, align 8, !tbaa !75
  %1072 = lshr i64 %1061, 14
  %1073 = add i32 %1062, -14
  %1074 = icmp samesign ugt i32 %1064, 29
  %1075 = icmp samesign ugt i32 %1067, 29
  %1076 = select i1 %1074, i1 true, i1 %1075
  br i1 %1076, label %1077, label %1078

1077:                                             ; preds = %1058
  store ptr @.str.8, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2351

1078:                                             ; preds = %1058
  store i32 0, ptr %60, align 4, !tbaa !76
  store i32 16197, ptr %21, align 8, !tbaa !20
  br label %1083

1079:                                             ; preds = %88
  %1080 = load i32, ptr %59, align 8, !tbaa !75
  %1081 = load i32, ptr %60, align 4, !tbaa !76
  %1082 = icmp ult i32 %1081, %1080
  br i1 %1082, label %1083, label %1092

1083:                                             ; preds = %1079, %1078
  %1084 = phi i32 [ %1073, %1078 ], [ %95, %1079 ]
  %1085 = phi i64 [ %1072, %1078 ], [ %94, %1079 ]
  %1086 = phi i32 [ %1060, %1078 ], [ %92, %1079 ]
  %1087 = phi ptr [ %1059, %1078 ], [ %90, %1079 ]
  %1088 = phi i32 [ %1071, %1078 ], [ %1080, %1079 ]
  %1089 = phi i32 [ 0, %1078 ], [ %1081, %1079 ]
  %1090 = zext i32 %1089 to i64
  %1091 = zext i32 %1088 to i64
  br label %1101

1092:                                             ; preds = %1123, %1079
  %1093 = phi ptr [ %90, %1079 ], [ %1124, %1123 ]
  %1094 = phi i32 [ %92, %1079 ], [ %1125, %1123 ]
  %1095 = phi i64 [ %94, %1079 ], [ %1137, %1123 ]
  %1096 = phi i32 [ %95, %1079 ], [ %1136, %1123 ]
  %1097 = phi i32 [ %1081, %1079 ], [ %1088, %1123 ]
  %1098 = icmp ult i32 %1097, 19
  br i1 %1098, label %1099, label %1149

1099:                                             ; preds = %1092
  %1100 = zext nneg i32 %1097 to i64
  br label %1139

1101:                                             ; preds = %1123, %1083
  %1102 = phi i64 [ %1090, %1083 ], [ %1128, %1123 ]
  %1103 = phi i32 [ %1084, %1083 ], [ %1136, %1123 ]
  %1104 = phi i64 [ %1085, %1083 ], [ %1137, %1123 ]
  %1105 = phi i32 [ %1086, %1083 ], [ %1125, %1123 ]
  %1106 = phi ptr [ %1087, %1083 ], [ %1124, %1123 ]
  %1107 = icmp ult i32 %1103, 3
  br i1 %1107, label %1108, label %1123

1108:                                             ; preds = %1101
  %1109 = or disjoint i32 %1103, 8
  %1110 = icmp eq i32 %1105, 0
  br i1 %1110, label %2485, label %1111

1111:                                             ; preds = %1108
  %1112 = load i8, ptr %1106, align 1, !tbaa !44
  %1113 = zext i8 %1112 to i64
  %1114 = zext nneg i32 %1103 to i64
  %1115 = shl nuw nsw i64 %1113, %1114
  %1116 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1104, i64 %1115), !nosanitize !47
  %1117 = extractvalue { i64, i1 } %1116, 1, !nosanitize !47
  br i1 %1117, label %1118, label %1119, !prof !48, !nosanitize !47

1118:                                             ; preds = %1111
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1119:                                             ; preds = %1111
  %1120 = extractvalue { i64, i1 } %1116, 0, !nosanitize !47
  %1121 = getelementptr inbounds nuw i8, ptr %1106, i64 1
  %1122 = add i32 %1105, -1
  br label %1123

1123:                                             ; preds = %1119, %1101
  %1124 = phi ptr [ %1121, %1119 ], [ %1106, %1101 ]
  %1125 = phi i32 [ %1122, %1119 ], [ %1105, %1101 ]
  %1126 = phi i64 [ %1120, %1119 ], [ %1104, %1101 ]
  %1127 = phi i32 [ %1109, %1119 ], [ %1103, %1101 ]
  %1128 = add nuw nsw i64 %1102, 1
  %1129 = trunc i64 %1126 to i16
  %1130 = and i16 %1129, 7
  %1131 = trunc nuw i64 %1128 to i32
  store i32 %1131, ptr %60, align 4, !tbaa !76
  %1132 = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %1102
  %1133 = load i16, ptr %1132, align 2, !tbaa !77
  %1134 = zext i16 %1133 to i64
  %1135 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1134
  store i16 %1130, ptr %1135, align 2, !tbaa !77
  %1136 = add i32 %1127, -3
  %1137 = lshr i64 %1126, 3
  %1138 = icmp eq i64 %1128, %1091
  br i1 %1138, label %1092, label %1101, !llvm.loop !79

1139:                                             ; preds = %1139, %1099
  %1140 = phi i64 [ %1100, %1099 ], [ %1141, %1139 ]
  %1141 = add nuw nsw i64 %1140, 1
  %1142 = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %1140
  %1143 = load i16, ptr %1142, align 2, !tbaa !77
  %1144 = zext i16 %1143 to i64
  %1145 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1144
  store i16 0, ptr %1145, align 2, !tbaa !77
  %1146 = and i64 %1141, 4294967295
  %1147 = icmp eq i64 %1146, 19
  br i1 %1147, label %1148, label %1139, !llvm.loop !80

1148:                                             ; preds = %1139
  store i32 19, ptr %60, align 4, !tbaa !76
  br label %1149

1149:                                             ; preds = %1148, %1092
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %64, align 8, !tbaa !34
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 7, ptr %66, align 8, !tbaa !81
  %1150 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %61, i32 noundef 19, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #12
  %1151 = icmp eq i32 %1150, 0
  br i1 %1151, label %1153, label %1152

1152:                                             ; preds = %1149
  store ptr @.str.9, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2351

1153:                                             ; preds = %1149
  store i32 0, ptr %60, align 4, !tbaa !76
  store i32 16198, ptr %21, align 8, !tbaa !20
  br label %1154

1154:                                             ; preds = %1153, %88
  %1155 = phi ptr [ %1093, %1153 ], [ %90, %88 ]
  %1156 = phi i32 [ %1094, %1153 ], [ %92, %88 ]
  %1157 = phi i64 [ %1095, %1153 ], [ %94, %88 ]
  %1158 = phi i32 [ %1096, %1153 ], [ %95, %88 ]
  %1159 = phi i32 [ 0, %1153 ], [ %97, %88 ]
  %1160 = load i32, ptr %57, align 4, !tbaa !73
  %1161 = load i32, ptr %58, align 8, !tbaa !74
  %1162 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1160, i32 %1161), !nosanitize !47
  %1163 = extractvalue { i32, i1 } %1162, 1, !nosanitize !47
  br i1 %1163, label %1176, label %1164, !prof !82, !nosanitize !47

1164:                                             ; preds = %1154
  %1165 = extractvalue { i32, i1 } %1162, 0, !nosanitize !47
  %1166 = load i32, ptr %60, align 4, !tbaa !76
  %1167 = call i32 @llvm.umax.i32(i32 %1166, i32 %1165)
  %1168 = zext i32 %1167 to i64
  %1169 = icmp ult i32 %1166, %1165
  br i1 %1169, label %1170, label %1447

1170:                                             ; preds = %1164
  %1171 = zext i32 %1166 to i64
  %1172 = load i32, ptr %66, align 8, !tbaa !81
  %1173 = shl nsw i32 -1, %1172
  %1174 = xor i32 %1173, -1
  %1175 = load ptr, ptr %65, align 8, !tbaa !35
  br label %1177

1176:                                             ; preds = %1154
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1177:                                             ; preds = %1442, %1170
  %1178 = phi ptr [ %1155, %1170 ], [ %1227, %1442 ]
  %1179 = phi i32 [ %1156, %1170 ], [ %1228, %1442 ]
  %1180 = phi i64 [ %1157, %1170 ], [ %1239, %1442 ]
  %1181 = phi i32 [ %1158, %1170 ], [ %1241, %1442 ]
  %1182 = phi i64 [ %1171, %1170 ], [ %1443, %1442 ]
  %1183 = phi i32 [ %1166, %1170 ], [ %1444, %1442 ]
  %1184 = trunc i64 %1180 to i32
  %1185 = and i32 %1174, %1184
  %1186 = zext nneg i32 %1185 to i64
  %1187 = getelementptr inbounds nuw [4 x i8], ptr %1175, i64 %1186
  %1188 = getelementptr inbounds nuw i8, ptr %1187, i64 1
  %1189 = load i8, ptr %1188, align 1, !tbaa !44
  %1190 = zext i8 %1189 to i32
  %1191 = icmp ult i32 %1181, %1190
  br i1 %1191, label %1192, label %1225

1192:                                             ; preds = %1177
  %1193 = icmp eq i32 %1179, 0
  br i1 %1193, label %2361, label %1194

1194:                                             ; preds = %1192
  %1195 = zext nneg i32 %1181 to i64
  br label %1198

1196:                                             ; preds = %1209
  %1197 = icmp eq i32 %1212, 0
  br i1 %1197, label %2361, label %1198

1198:                                             ; preds = %1196, %1194
  %1199 = phi ptr [ %1178, %1194 ], [ %1211, %1196 ]
  %1200 = phi i32 [ %1179, %1194 ], [ %1212, %1196 ]
  %1201 = phi i64 [ %1180, %1194 ], [ %1210, %1196 ]
  %1202 = phi i64 [ %1195, %1194 ], [ %1213, %1196 ]
  %1203 = load i8, ptr %1199, align 1, !tbaa !44
  %1204 = zext i8 %1203 to i64
  %1205 = shl i64 %1204, %1202
  %1206 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1201, i64 %1205), !nosanitize !47
  %1207 = extractvalue { i64, i1 } %1206, 1, !nosanitize !47
  br i1 %1207, label %1208, label %1209, !prof !48, !nosanitize !47

1208:                                             ; preds = %1198
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1209:                                             ; preds = %1198
  %1210 = extractvalue { i64, i1 } %1206, 0, !nosanitize !47
  %1211 = getelementptr inbounds nuw i8, ptr %1199, i64 1
  %1212 = add i32 %1200, -1
  %1213 = add nuw nsw i64 %1202, 8
  %1214 = trunc i64 %1210 to i32
  %1215 = and i32 %1174, %1214
  %1216 = zext nneg i32 %1215 to i64
  %1217 = getelementptr inbounds nuw [4 x i8], ptr %1175, i64 %1216
  %1218 = getelementptr inbounds nuw i8, ptr %1217, i64 1
  %1219 = load i8, ptr %1218, align 1, !tbaa !44
  %1220 = zext i8 %1219 to i64
  %1221 = icmp samesign ult i64 %1213, %1220
  br i1 %1221, label %1196, label %1222

1222:                                             ; preds = %1209
  %1223 = zext i8 %1219 to i32
  %1224 = trunc nuw nsw i64 %1213 to i32
  br label %1225

1225:                                             ; preds = %1222, %1177
  %1226 = phi i64 [ %1186, %1177 ], [ %1216, %1222 ]
  %1227 = phi ptr [ %1178, %1177 ], [ %1211, %1222 ]
  %1228 = phi i32 [ %1179, %1177 ], [ %1212, %1222 ]
  %1229 = phi i64 [ %1180, %1177 ], [ %1210, %1222 ]
  %1230 = phi i32 [ %1181, %1177 ], [ %1224, %1222 ]
  %1231 = phi i8 [ %1189, %1177 ], [ %1219, %1222 ]
  %1232 = phi i32 [ %1190, %1177 ], [ %1223, %1222 ]
  %1233 = getelementptr inbounds nuw [4 x i8], ptr %1175, i64 %1226
  %1234 = getelementptr inbounds nuw i8, ptr %1233, i64 2
  %1235 = load i16, ptr %1234, align 2, !tbaa !77
  %1236 = icmp ult i16 %1235, 16
  br i1 %1236, label %1237, label %1247

1237:                                             ; preds = %1225
  %1238 = zext nneg i8 %1231 to i64
  %1239 = lshr i64 %1229, %1238
  %1240 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1230, i32 %1232), !nosanitize !47
  %1241 = extractvalue { i32, i1 } %1240, 0, !nosanitize !47
  %1242 = extractvalue { i32, i1 } %1240, 1, !nosanitize !47
  br i1 %1242, label %1243, label %1244, !prof !48, !nosanitize !47

1243:                                             ; preds = %1237
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1244:                                             ; preds = %1237
  %1245 = icmp eq i64 %1182, 4294967295
  br i1 %1245, label %1246, label %1442, !prof !48, !nosanitize !47

1246:                                             ; preds = %1244
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1247:                                             ; preds = %1225
  %1248 = trunc nuw i64 %1182 to i32
  switch i16 %1235, label %1261 [
    i16 16, label %1255
    i16 17, label %1249
  ]

1249:                                             ; preds = %1247
  %1250 = add nuw nsw i32 %1232, 3
  %1251 = icmp ult i32 %1230, %1250
  br i1 %1251, label %1252, label %1332

1252:                                             ; preds = %1249
  %1253 = zext nneg i32 %1230 to i64
  %1254 = zext nneg i32 %1250 to i64
  br label %1311

1255:                                             ; preds = %1247
  %1256 = add nuw nsw i32 %1232, 2
  %1257 = icmp ult i32 %1230, %1256
  br i1 %1257, label %1258, label %1288

1258:                                             ; preds = %1255
  %1259 = zext nneg i32 %1230 to i64
  %1260 = zext nneg i32 %1256 to i64
  br label %1267

1261:                                             ; preds = %1247
  %1262 = add nuw nsw i32 %1232, 7
  %1263 = icmp ult i32 %1230, %1262
  br i1 %1263, label %1264, label %1369

1264:                                             ; preds = %1261
  %1265 = zext nneg i32 %1230 to i64
  %1266 = zext nneg i32 %1262 to i64
  br label %1348

1267:                                             ; preds = %1280, %1258
  %1268 = phi i64 [ %1259, %1258 ], [ %1284, %1280 ]
  %1269 = phi i64 [ %1229, %1258 ], [ %1281, %1280 ]
  %1270 = phi i32 [ %1228, %1258 ], [ %1283, %1280 ]
  %1271 = phi ptr [ %1227, %1258 ], [ %1282, %1280 ]
  %1272 = icmp eq i32 %1270, 0
  br i1 %1272, label %2456, label %1273

1273:                                             ; preds = %1267
  %1274 = load i8, ptr %1271, align 1, !tbaa !44
  %1275 = zext i8 %1274 to i64
  %1276 = shl i64 %1275, %1268
  %1277 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1269, i64 %1276), !nosanitize !47
  %1278 = extractvalue { i64, i1 } %1277, 1, !nosanitize !47
  br i1 %1278, label %1279, label %1280, !prof !48, !nosanitize !47

1279:                                             ; preds = %1273
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1280:                                             ; preds = %1273
  %1281 = extractvalue { i64, i1 } %1277, 0, !nosanitize !47
  %1282 = getelementptr inbounds nuw i8, ptr %1271, i64 1
  %1283 = add i32 %1270, -1
  %1284 = add nuw nsw i64 %1268, 8
  %1285 = icmp samesign ult i64 %1284, %1260
  br i1 %1285, label %1267, label %1286, !llvm.loop !83

1286:                                             ; preds = %1280
  %1287 = trunc nuw nsw i64 %1284 to i32
  br label %1288

1288:                                             ; preds = %1286, %1255
  %1289 = phi ptr [ %1227, %1255 ], [ %1282, %1286 ]
  %1290 = phi i32 [ %1228, %1255 ], [ %1283, %1286 ]
  %1291 = phi i64 [ %1229, %1255 ], [ %1281, %1286 ]
  %1292 = phi i32 [ %1230, %1255 ], [ %1287, %1286 ]
  %1293 = zext nneg i8 %1231 to i64
  %1294 = lshr i64 %1291, %1293
  %1295 = sub nuw i32 %1292, %1232
  %1296 = icmp eq i64 %1182, 0
  br i1 %1296, label %1297, label %1298

1297:                                             ; preds = %1288
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2351

1298:                                             ; preds = %1288
  %1299 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1295, i32 2), !nosanitize !47
  %1300 = extractvalue { i32, i1 } %1299, 1, !nosanitize !47
  br i1 %1300, label %1301, label %1302, !prof !48, !nosanitize !47

1301:                                             ; preds = %1298
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1302:                                             ; preds = %1298
  %1303 = trunc i64 %1294 to i32
  %1304 = and i32 %1303, 3
  %1305 = add nuw nsw i32 %1304, 3
  %1306 = add nuw i64 %1182, 4294967295
  %1307 = and i64 %1306, 4294967295
  %1308 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1307
  %1309 = load i16, ptr %1308, align 2, !tbaa !77
  %1310 = lshr i64 %1294, 2
  br label %1385

1311:                                             ; preds = %1324, %1252
  %1312 = phi i64 [ %1253, %1252 ], [ %1328, %1324 ]
  %1313 = phi i64 [ %1229, %1252 ], [ %1325, %1324 ]
  %1314 = phi i32 [ %1228, %1252 ], [ %1327, %1324 ]
  %1315 = phi ptr [ %1227, %1252 ], [ %1326, %1324 ]
  %1316 = icmp eq i32 %1314, 0
  br i1 %1316, label %2461, label %1317

1317:                                             ; preds = %1311
  %1318 = load i8, ptr %1315, align 1, !tbaa !44
  %1319 = zext i8 %1318 to i64
  %1320 = shl i64 %1319, %1312
  %1321 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1313, i64 %1320), !nosanitize !47
  %1322 = extractvalue { i64, i1 } %1321, 1, !nosanitize !47
  br i1 %1322, label %1323, label %1324, !prof !48, !nosanitize !47

1323:                                             ; preds = %1317
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1324:                                             ; preds = %1317
  %1325 = extractvalue { i64, i1 } %1321, 0, !nosanitize !47
  %1326 = getelementptr inbounds nuw i8, ptr %1315, i64 1
  %1327 = add i32 %1314, -1
  %1328 = add nuw nsw i64 %1312, 8
  %1329 = icmp samesign ult i64 %1328, %1254
  br i1 %1329, label %1311, label %1330, !llvm.loop !84

1330:                                             ; preds = %1324
  %1331 = trunc nuw nsw i64 %1328 to i32
  br label %1332

1332:                                             ; preds = %1330, %1249
  %1333 = phi ptr [ %1227, %1249 ], [ %1326, %1330 ]
  %1334 = phi i32 [ %1228, %1249 ], [ %1327, %1330 ]
  %1335 = phi i64 [ %1229, %1249 ], [ %1325, %1330 ]
  %1336 = phi i32 [ %1230, %1249 ], [ %1331, %1330 ]
  %1337 = sub nuw i32 %1336, %1232
  %1338 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1337, i32 3), !nosanitize !47
  %1339 = extractvalue { i32, i1 } %1338, 1, !nosanitize !47
  br i1 %1339, label %1340, label %1341, !prof !48, !nosanitize !47

1340:                                             ; preds = %1332
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1341:                                             ; preds = %1332
  %1342 = zext nneg i8 %1231 to i64
  %1343 = lshr i64 %1335, %1342
  %1344 = trunc i64 %1343 to i32
  %1345 = and i32 %1344, 7
  %1346 = add nuw nsw i32 %1345, 3
  %1347 = lshr i64 %1343, 3
  br label %1385

1348:                                             ; preds = %1361, %1264
  %1349 = phi i64 [ %1265, %1264 ], [ %1365, %1361 ]
  %1350 = phi i64 [ %1229, %1264 ], [ %1362, %1361 ]
  %1351 = phi i32 [ %1228, %1264 ], [ %1364, %1361 ]
  %1352 = phi ptr [ %1227, %1264 ], [ %1363, %1361 ]
  %1353 = icmp eq i32 %1351, 0
  br i1 %1353, label %2451, label %1354

1354:                                             ; preds = %1348
  %1355 = load i8, ptr %1352, align 1, !tbaa !44
  %1356 = zext i8 %1355 to i64
  %1357 = shl i64 %1356, %1349
  %1358 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1350, i64 %1357), !nosanitize !47
  %1359 = extractvalue { i64, i1 } %1358, 1, !nosanitize !47
  br i1 %1359, label %1360, label %1361, !prof !48, !nosanitize !47

1360:                                             ; preds = %1354
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1361:                                             ; preds = %1354
  %1362 = extractvalue { i64, i1 } %1358, 0, !nosanitize !47
  %1363 = getelementptr inbounds nuw i8, ptr %1352, i64 1
  %1364 = add i32 %1351, -1
  %1365 = add nuw nsw i64 %1349, 8
  %1366 = icmp samesign ult i64 %1365, %1266
  br i1 %1366, label %1348, label %1367, !llvm.loop !85

1367:                                             ; preds = %1361
  %1368 = trunc nuw nsw i64 %1365 to i32
  br label %1369

1369:                                             ; preds = %1367, %1261
  %1370 = phi ptr [ %1227, %1261 ], [ %1363, %1367 ]
  %1371 = phi i32 [ %1228, %1261 ], [ %1364, %1367 ]
  %1372 = phi i64 [ %1229, %1261 ], [ %1362, %1367 ]
  %1373 = phi i32 [ %1230, %1261 ], [ %1368, %1367 ]
  %1374 = sub nuw i32 %1373, %1232
  %1375 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1374, i32 7), !nosanitize !47
  %1376 = extractvalue { i32, i1 } %1375, 1, !nosanitize !47
  br i1 %1376, label %1377, label %1378, !prof !48, !nosanitize !47

1377:                                             ; preds = %1369
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1378:                                             ; preds = %1369
  %1379 = zext nneg i8 %1231 to i64
  %1380 = lshr i64 %1372, %1379
  %1381 = trunc i64 %1380 to i32
  %1382 = and i32 %1381, 127
  %1383 = add nuw nsw i32 %1382, 11
  %1384 = lshr i64 %1380, 7
  br label %1385

1385:                                             ; preds = %1378, %1341, %1302
  %1386 = phi ptr [ %1289, %1302 ], [ %1333, %1341 ], [ %1370, %1378 ]
  %1387 = phi i32 [ %1290, %1302 ], [ %1334, %1341 ], [ %1371, %1378 ]
  %1388 = phi i64 [ %1310, %1302 ], [ %1347, %1341 ], [ %1384, %1378 ]
  %1389 = phi { i32, i1 } [ %1299, %1302 ], [ %1338, %1341 ], [ %1375, %1378 ]
  %1390 = phi i32 [ %1305, %1302 ], [ %1346, %1341 ], [ %1383, %1378 ]
  %1391 = phi i16 [ %1309, %1302 ], [ 0, %1341 ], [ 0, %1378 ]
  %1392 = extractvalue { i32, i1 } %1389, 0
  %1393 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1248, i32 %1390), !nosanitize !47
  %1394 = extractvalue { i32, i1 } %1393, 1, !nosanitize !47
  br i1 %1394, label %1395, label %1396, !prof !48, !nosanitize !47

1395:                                             ; preds = %1385
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1396:                                             ; preds = %1385
  %1397 = extractvalue { i32, i1 } %1393, 0, !nosanitize !47
  %1398 = icmp ugt i32 %1397, %1165
  br i1 %1398, label %1418, label %1399

1399:                                             ; preds = %1396
  %1400 = freeze i32 %1183
  %1401 = icmp eq i32 %1400, -1
  br i1 %1401, label %1432, label %1402, !prof !82, !nosanitize !47

1402:                                             ; preds = %1399
  %1403 = zext i32 %1400 to i64
  %1404 = add nsw i32 %1390, -1
  %1405 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %1404, 0
  %1406 = and i64 %1403, 1
  %1407 = icmp eq i64 %1406, 0
  br i1 %1407, label %1408, label %1414, !prof !82

1408:                                             ; preds = %1402
  %1409 = or disjoint i64 %1403, 1
  %1410 = trunc nuw i64 %1409 to i32
  store i32 %1410, ptr %60, align 4, !tbaa !76
  %1411 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1403
  store i16 %1391, ptr %1411, align 2, !tbaa !77
  %1412 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1404, i32 1), !nosanitize !47
  %1413 = extractvalue { i32, i1 } %1412, 1, !nosanitize !47
  br i1 %1413, label %1421, label %1414, !prof !86, !llvm.loop !87, !nosanitize !47

1414:                                             ; preds = %1408, %1402
  %1415 = phi { i32, i1 } [ %1405, %1402 ], [ %1412, %1408 ]
  %1416 = phi i64 [ %1403, %1402 ], [ %1409, %1408 ]
  %1417 = icmp eq i32 %1400, -2
  br i1 %1417, label %1432, label %1433, !prof !82

1418:                                             ; preds = %1396
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2351

1419:                                             ; preds = %1433, %1422
  %1420 = phi i32 [ %1425, %1422 ], [ %1438, %1433 ]
  store i32 %1420, ptr %60, align 4, !tbaa !76
  br label %1421

1421:                                             ; preds = %1419, %1408
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1422:                                             ; preds = %1433
  %1423 = extractvalue { i32, i1 } %1440, 0
  %1424 = add nuw nsw i64 %1435, 2
  %1425 = trunc i64 %1424 to i32
  %1426 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1437
  store i16 %1391, ptr %1426, align 2, !tbaa !77
  %1427 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1423, i32 1), !nosanitize !47
  %1428 = extractvalue { i32, i1 } %1427, 1, !nosanitize !47
  br i1 %1428, label %1419, label %1429, !prof !86, !llvm.loop !87, !nosanitize !47

1429:                                             ; preds = %1422
  %1430 = icmp eq i64 %1424, 4294967295
  br i1 %1430, label %1431, label %1433, !prof !86, !llvm.loop !88, !nosanitize !47

1431:                                             ; preds = %1429
  store i32 %1425, ptr %60, align 4, !tbaa !76
  br label %1432

1432:                                             ; preds = %1431, %1414, %1399
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1433:                                             ; preds = %1429, %1414
  %1434 = phi { i32, i1 } [ %1427, %1429 ], [ %1415, %1414 ]
  %1435 = phi i64 [ %1424, %1429 ], [ %1416, %1414 ]
  %1436 = extractvalue { i32, i1 } %1434, 0
  %1437 = add nuw nsw i64 %1435, 1
  %1438 = trunc i64 %1437 to i32
  %1439 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1435
  store i16 %1391, ptr %1439, align 2, !tbaa !77
  %1440 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1436, i32 1), !nosanitize !47
  %1441 = extractvalue { i32, i1 } %1440, 1, !nosanitize !47
  br i1 %1441, label %1419, label %1422, !prof !86, !llvm.loop !87, !nosanitize !47

1442:                                             ; preds = %1244
  %1443 = add nuw nsw i64 %1182, 1
  %1444 = trunc i64 %1443 to i32
  store i32 %1444, ptr %60, align 4, !tbaa !76
  %1445 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1182
  store i16 %1235, ptr %1445, align 2, !tbaa !77
  %1446 = icmp eq i64 %1443, %1168
  br i1 %1446, label %1447, label %1177

1447:                                             ; preds = %1442, %1164
  %1448 = phi i32 [ %1158, %1164 ], [ %1241, %1442 ]
  %1449 = phi i64 [ %1157, %1164 ], [ %1239, %1442 ]
  %1450 = phi i32 [ %1156, %1164 ], [ %1228, %1442 ]
  %1451 = phi ptr [ %1155, %1164 ], [ %1227, %1442 ]
  %1452 = load i16, ptr %68, align 8, !tbaa !77
  %1453 = icmp eq i16 %1452, 0
  br i1 %1453, label %1454, label %1455

1454:                                             ; preds = %1447
  store ptr @.str.11, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2351

1455:                                             ; preds = %1447
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 9, ptr %66, align 8, !tbaa !81
  %1456 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %61, i32 noundef %1160, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #12
  %1457 = icmp eq i32 %1456, 0
  br i1 %1457, label %1459, label %1458

1458:                                             ; preds = %1455
  store ptr @.str.12, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2351

1459:                                             ; preds = %1455
  %1460 = load ptr, ptr %63, align 8, !tbaa !33
  store ptr %1460, ptr %64, align 8, !tbaa !34
  store i32 6, ptr %69, align 4, !tbaa !90
  %1461 = load i32, ptr %57, align 4, !tbaa !73
  %1462 = zext i32 %1461 to i64
  %1463 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1462
  %1464 = load i32, ptr %58, align 8, !tbaa !74
  %1465 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %1463, i32 noundef %1464, ptr noundef nonnull %63, ptr noundef nonnull %69, ptr noundef nonnull %67) #12
  %1466 = icmp eq i32 %1465, 0
  br i1 %1466, label %1468, label %1467

1467:                                             ; preds = %1459
  store ptr @.str.13, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2351

1468:                                             ; preds = %1459
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %2485, label %1469

1469:                                             ; preds = %1468, %88
  %1470 = phi ptr [ %1451, %1468 ], [ %90, %88 ]
  %1471 = phi i32 [ %1450, %1468 ], [ %92, %88 ]
  %1472 = phi i64 [ %1449, %1468 ], [ %94, %88 ]
  %1473 = phi i32 [ %1448, %1468 ], [ %95, %88 ]
  %1474 = phi i32 [ 0, %1468 ], [ %97, %88 ]
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %1475

1475:                                             ; preds = %1469, %88
  %1476 = phi ptr [ %1470, %1469 ], [ %90, %88 ]
  %1477 = phi i32 [ %1471, %1469 ], [ %92, %88 ]
  %1478 = phi i64 [ %1472, %1469 ], [ %94, %88 ]
  %1479 = phi i32 [ %1473, %1469 ], [ %95, %88 ]
  %1480 = phi i32 [ %1474, %1469 ], [ %97, %88 ]
  %1481 = icmp ugt i32 %1477, 5
  %1482 = icmp ugt i32 %93, 257
  %1483 = select i1 %1481, i1 %1482, i1 false
  br i1 %1483, label %1484, label %1494

1484:                                             ; preds = %1475
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %93, ptr %41, align 8, !tbaa !52
  store ptr %1476, ptr %0, align 8, !tbaa !50
  store i32 %1477, ptr %43, align 8, !tbaa !51
  store i64 %1478, ptr %45, align 8, !tbaa !31
  store i32 %1479, ptr %47, align 8, !tbaa !32
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %96) #12
  %1485 = load ptr, ptr %26, align 8, !tbaa !49
  %1486 = load i32, ptr %41, align 8, !tbaa !52
  %1487 = load ptr, ptr %0, align 8, !tbaa !50
  %1488 = load i32, ptr %43, align 8, !tbaa !51
  %1489 = load i64, ptr %45, align 8, !tbaa !31
  %1490 = load i32, ptr %47, align 8, !tbaa !32
  %1491 = load i32, ptr %21, align 8, !tbaa !20
  %1492 = icmp eq i32 %1491, 16191
  br i1 %1492, label %1493, label %2351

1493:                                             ; preds = %1484
  store i32 -1, ptr %71, align 4, !tbaa !37
  br label %2351

1494:                                             ; preds = %1475
  store i32 0, ptr %71, align 4, !tbaa !37
  %1495 = load i32, ptr %66, align 8, !tbaa !81
  %1496 = shl nsw i32 -1, %1495
  %1497 = xor i32 %1496, -1
  %1498 = load ptr, ptr %65, align 8, !tbaa !35
  %1499 = trunc i64 %1478 to i32
  %1500 = and i32 %1497, %1499
  %1501 = zext nneg i32 %1500 to i64
  %1502 = getelementptr inbounds nuw [4 x i8], ptr %1498, i64 %1501
  %1503 = getelementptr inbounds nuw i8, ptr %1502, i64 1
  %1504 = load i8, ptr %1503, align 1, !tbaa !44
  %1505 = zext i8 %1504 to i32
  %1506 = icmp ult i32 %1479, %1505
  br i1 %1506, label %1507, label %1540

1507:                                             ; preds = %1494
  %1508 = icmp eq i32 %1477, 0
  br i1 %1508, label %2445, label %1509

1509:                                             ; preds = %1507
  %1510 = zext nneg i32 %1479 to i64
  br label %1513

1511:                                             ; preds = %1524
  %1512 = icmp eq i32 %1527, 0
  br i1 %1512, label %2445, label %1513

1513:                                             ; preds = %1511, %1509
  %1514 = phi ptr [ %1476, %1509 ], [ %1526, %1511 ]
  %1515 = phi i32 [ %1477, %1509 ], [ %1527, %1511 ]
  %1516 = phi i64 [ %1478, %1509 ], [ %1525, %1511 ]
  %1517 = phi i64 [ %1510, %1509 ], [ %1528, %1511 ]
  %1518 = load i8, ptr %1514, align 1, !tbaa !44
  %1519 = zext i8 %1518 to i64
  %1520 = shl i64 %1519, %1517
  %1521 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1516, i64 %1520), !nosanitize !47
  %1522 = extractvalue { i64, i1 } %1521, 1, !nosanitize !47
  br i1 %1522, label %1523, label %1524, !prof !48, !nosanitize !47

1523:                                             ; preds = %1513
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1524:                                             ; preds = %1513
  %1525 = extractvalue { i64, i1 } %1521, 0, !nosanitize !47
  %1526 = getelementptr inbounds nuw i8, ptr %1514, i64 1
  %1527 = add i32 %1515, -1
  %1528 = add nuw nsw i64 %1517, 8
  %1529 = trunc i64 %1525 to i32
  %1530 = and i32 %1497, %1529
  %1531 = zext nneg i32 %1530 to i64
  %1532 = getelementptr inbounds nuw [4 x i8], ptr %1498, i64 %1531
  %1533 = getelementptr inbounds nuw i8, ptr %1532, i64 1
  %1534 = load i8, ptr %1533, align 1, !tbaa !44
  %1535 = zext i8 %1534 to i64
  %1536 = icmp samesign ult i64 %1528, %1535
  br i1 %1536, label %1511, label %1537

1537:                                             ; preds = %1524
  %1538 = zext i8 %1534 to i32
  %1539 = trunc nuw nsw i64 %1528 to i32
  br label %1540

1540:                                             ; preds = %1537, %1494
  %1541 = phi ptr [ %1502, %1494 ], [ %1532, %1537 ]
  %1542 = phi ptr [ %1476, %1494 ], [ %1526, %1537 ]
  %1543 = phi i32 [ %1477, %1494 ], [ %1527, %1537 ]
  %1544 = phi i64 [ %1478, %1494 ], [ %1525, %1537 ]
  %1545 = phi i32 [ %1479, %1494 ], [ %1539, %1537 ]
  %1546 = phi i8 [ %1504, %1494 ], [ %1534, %1537 ]
  %1547 = phi i32 [ %1505, %1494 ], [ %1538, %1537 ]
  %1548 = getelementptr inbounds nuw i8, ptr %1541, i64 2
  %1549 = load i16, ptr %1548, align 2, !tbaa !77
  %1550 = load i8, ptr %1541, align 2, !tbaa !44
  %1551 = add i8 %1550, -1
  %1552 = icmp ult i8 %1551, 15
  br i1 %1552, label %1553, label %1619

1553:                                             ; preds = %1540
  %1554 = zext nneg i8 %1550 to i32
  %1555 = add nuw nsw i32 %1547, %1554
  %1556 = shl nsw i32 -1, %1555
  %1557 = xor i32 %1556, -1
  %1558 = zext i16 %1549 to i32
  %1559 = trunc i64 %1544 to i32
  %1560 = and i32 %1559, %1557
  %1561 = lshr i32 %1560, %1547
  %1562 = add nuw i32 %1561, %1558
  %1563 = zext i32 %1562 to i64
  %1564 = getelementptr inbounds nuw [4 x i8], ptr %1498, i64 %1563
  %1565 = getelementptr inbounds nuw i8, ptr %1564, i64 1
  %1566 = load i8, ptr %1565, align 1, !tbaa !44
  %1567 = zext i8 %1566 to i32
  %1568 = add nuw nsw i32 %1547, %1567
  %1569 = icmp ugt i32 %1568, %1545
  br i1 %1569, label %1570, label %1606

1570:                                             ; preds = %1553
  %1571 = icmp eq i32 %1543, 0
  br i1 %1571, label %2439, label %1572

1572:                                             ; preds = %1570
  %1573 = zext nneg i32 %1545 to i64
  br label %1576

1574:                                             ; preds = %1587
  %1575 = icmp eq i32 %1590, 0
  br i1 %1575, label %2439, label %1576

1576:                                             ; preds = %1574, %1572
  %1577 = phi ptr [ %1542, %1572 ], [ %1589, %1574 ]
  %1578 = phi i32 [ %1543, %1572 ], [ %1590, %1574 ]
  %1579 = phi i64 [ %1544, %1572 ], [ %1588, %1574 ]
  %1580 = phi i64 [ %1573, %1572 ], [ %1591, %1574 ]
  %1581 = load i8, ptr %1577, align 1, !tbaa !44
  %1582 = zext i8 %1581 to i64
  %1583 = shl i64 %1582, %1580
  %1584 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1579, i64 %1583), !nosanitize !47
  %1585 = extractvalue { i64, i1 } %1584, 1, !nosanitize !47
  br i1 %1585, label %1586, label %1587, !prof !48, !nosanitize !47

1586:                                             ; preds = %1576
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1587:                                             ; preds = %1576
  %1588 = extractvalue { i64, i1 } %1584, 0, !nosanitize !47
  %1589 = getelementptr inbounds nuw i8, ptr %1577, i64 1
  %1590 = add i32 %1578, -1
  %1591 = add nuw nsw i64 %1580, 8
  %1592 = trunc i64 %1588 to i32
  %1593 = and i32 %1592, %1557
  %1594 = lshr i32 %1593, %1547
  %1595 = add nuw i32 %1594, %1558
  %1596 = zext i32 %1595 to i64
  %1597 = getelementptr inbounds nuw [4 x i8], ptr %1498, i64 %1596
  %1598 = getelementptr inbounds nuw i8, ptr %1597, i64 1
  %1599 = load i8, ptr %1598, align 1, !tbaa !44
  %1600 = zext i8 %1599 to i32
  %1601 = add nuw nsw i32 %1547, %1600
  %1602 = zext nneg i32 %1601 to i64
  %1603 = icmp samesign ult i64 %1591, %1602
  br i1 %1603, label %1574, label %1604

1604:                                             ; preds = %1587
  %1605 = trunc nuw nsw i64 %1591 to i32
  br label %1606

1606:                                             ; preds = %1604, %1553
  %1607 = phi ptr [ %1542, %1553 ], [ %1589, %1604 ]
  %1608 = phi i32 [ %1543, %1553 ], [ %1590, %1604 ]
  %1609 = phi i64 [ %1544, %1553 ], [ %1588, %1604 ]
  %1610 = phi i32 [ %1545, %1553 ], [ %1605, %1604 ]
  %1611 = phi ptr [ %1564, %1553 ], [ %1597, %1604 ]
  %1612 = phi i8 [ %1566, %1553 ], [ %1599, %1604 ]
  %1613 = getelementptr inbounds nuw i8, ptr %1611, i64 2
  %1614 = load i16, ptr %1613, align 2, !tbaa !77
  %1615 = load i8, ptr %1611, align 2, !tbaa !44
  %1616 = sub nuw i32 %1610, %1547
  %1617 = zext nneg i8 %1546 to i64
  %1618 = lshr i64 %1609, %1617
  store i32 %1547, ptr %71, align 4, !tbaa !37
  br label %1619

1619:                                             ; preds = %1606, %1540
  %1620 = phi i32 [ %1547, %1606 ], [ 0, %1540 ]
  %1621 = phi ptr [ %1607, %1606 ], [ %1542, %1540 ]
  %1622 = phi i32 [ %1608, %1606 ], [ %1543, %1540 ]
  %1623 = phi i64 [ %1618, %1606 ], [ %1544, %1540 ]
  %1624 = phi i32 [ %1616, %1606 ], [ %1545, %1540 ]
  %1625 = phi i16 [ %1614, %1606 ], [ %1549, %1540 ]
  %1626 = phi i8 [ %1612, %1606 ], [ %1546, %1540 ]
  %1627 = phi i8 [ %1615, %1606 ], [ %1550, %1540 ]
  %1628 = zext i8 %1626 to i32
  %1629 = zext nneg i8 %1626 to i64
  %1630 = lshr i64 %1623, %1629
  %1631 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1624, i32 %1628), !nosanitize !47
  %1632 = extractvalue { i32, i1 } %1631, 0, !nosanitize !47
  %1633 = extractvalue { i32, i1 } %1631, 1, !nosanitize !47
  br i1 %1633, label %1634, label %1635, !prof !48, !nosanitize !47

1634:                                             ; preds = %1619
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1635:                                             ; preds = %1619
  %1636 = add nuw nsw i32 %1620, %1628
  store i32 %1636, ptr %71, align 4, !tbaa !37
  %1637 = zext i16 %1625 to i32
  store i32 %1637, ptr %56, align 4, !tbaa !61
  %1638 = zext i8 %1627 to i32
  %1639 = icmp eq i8 %1627, 0
  br i1 %1639, label %1640, label %1641

1640:                                             ; preds = %1635
  store i32 16205, ptr %21, align 8, !tbaa !20
  br label %2351

1641:                                             ; preds = %1635
  %1642 = and i32 %1638, 32
  %1643 = icmp eq i32 %1642, 0
  br i1 %1643, label %1645, label %1644

1644:                                             ; preds = %1641
  store i32 -1, ptr %71, align 4, !tbaa !37
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2351

1645:                                             ; preds = %1641
  %1646 = and i32 %1638, 64
  %1647 = icmp eq i32 %1646, 0
  br i1 %1647, label %1649, label %1648

1648:                                             ; preds = %1645
  store ptr @.str.14, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2351

1649:                                             ; preds = %1645
  %1650 = and i32 %1638, 15
  store i32 %1650, ptr %72, align 4, !tbaa !53
  store i32 16201, ptr %21, align 8, !tbaa !20
  br label %1651

1651:                                             ; preds = %1649, %101
  %1652 = phi i32 [ %1650, %1649 ], [ %102, %101 ]
  %1653 = phi ptr [ %1621, %1649 ], [ %90, %101 ]
  %1654 = phi i32 [ %1622, %1649 ], [ %92, %101 ]
  %1655 = phi i64 [ %1630, %1649 ], [ %94, %101 ]
  %1656 = phi i32 [ %1632, %1649 ], [ %95, %101 ]
  %1657 = phi i32 [ %1480, %1649 ], [ %97, %101 ]
  %1658 = icmp eq i32 %1652, 0
  br i1 %1658, label %1716, label %1659

1659:                                             ; preds = %1651
  %1660 = icmp ult i32 %1656, %1652
  br i1 %1660, label %1661, label %1688

1661:                                             ; preds = %1659
  %1662 = icmp eq i32 %1654, 0
  br i1 %1662, label %2433, label %1663

1663:                                             ; preds = %1661
  %1664 = zext i32 %1656 to i64
  br label %1667

1665:                                             ; preds = %1684
  %1666 = icmp eq i32 %1672, 0
  br i1 %1666, label %2433, label %1667, !llvm.loop !91

1667:                                             ; preds = %1665, %1663
  %1668 = phi ptr [ %1653, %1663 ], [ %1673, %1665 ]
  %1669 = phi i32 [ %1654, %1663 ], [ %1672, %1665 ]
  %1670 = phi i64 [ %1655, %1663 ], [ %1678, %1665 ]
  %1671 = phi i64 [ %1664, %1663 ], [ %1685, %1665 ]
  %1672 = add i32 %1669, -1
  %1673 = getelementptr inbounds nuw i8, ptr %1668, i64 1
  %1674 = load i8, ptr %1668, align 1, !tbaa !44
  %1675 = zext i8 %1674 to i64
  %1676 = shl i64 %1675, %1671
  %1677 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1670, i64 %1676), !nosanitize !47
  %1678 = extractvalue { i64, i1 } %1677, 0, !nosanitize !47
  %1679 = extractvalue { i64, i1 } %1677, 1, !nosanitize !47
  br i1 %1679, label %1680, label %1681, !prof !48, !nosanitize !47

1680:                                             ; preds = %1667
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1681:                                             ; preds = %1667
  %1682 = icmp samesign ugt i64 %1671, 4294967287
  br i1 %1682, label %1683, label %1684, !prof !48, !nosanitize !47

1683:                                             ; preds = %1681
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1684:                                             ; preds = %1681
  %1685 = add nuw nsw i64 %1671, 8
  %1686 = trunc nuw i64 %1685 to i32
  %1687 = icmp ugt i32 %1652, %1686
  br i1 %1687, label %1665, label %1688, !llvm.loop !91

1688:                                             ; preds = %1684, %1659
  %1689 = phi ptr [ %1653, %1659 ], [ %1673, %1684 ]
  %1690 = phi i32 [ %1654, %1659 ], [ %1672, %1684 ]
  %1691 = phi i64 [ %1655, %1659 ], [ %1678, %1684 ]
  %1692 = phi i32 [ %1656, %1659 ], [ %1686, %1684 ]
  %1693 = shl nsw i32 -1, %1652
  %1694 = xor i32 %1693, -1
  %1695 = trunc i64 %1691 to i32
  %1696 = and i32 %1695, %1694
  %1697 = load i32, ptr %56, align 4, !tbaa !61
  %1698 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1697, i32 %1696), !nosanitize !47
  %1699 = extractvalue { i32, i1 } %1698, 1, !nosanitize !47
  br i1 %1699, label %1700, label %1701, !prof !48, !nosanitize !47

1700:                                             ; preds = %1688
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1701:                                             ; preds = %1688
  %1702 = extractvalue { i32, i1 } %1698, 0, !nosanitize !47
  store i32 %1702, ptr %56, align 4, !tbaa !61
  %1703 = zext nneg i32 %1652 to i64
  %1704 = lshr i64 %1691, %1703
  %1705 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1692, i32 %1652), !nosanitize !47
  %1706 = extractvalue { i32, i1 } %1705, 0, !nosanitize !47
  %1707 = extractvalue { i32, i1 } %1705, 1, !nosanitize !47
  br i1 %1707, label %1708, label %1709, !prof !48, !nosanitize !47

1708:                                             ; preds = %1701
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1709:                                             ; preds = %1701
  %1710 = load i32, ptr %71, align 4, !tbaa !37
  %1711 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1710, i32 %1652), !nosanitize !47
  %1712 = extractvalue { i32, i1 } %1711, 1, !nosanitize !47
  br i1 %1712, label %1713, label %1714, !prof !48, !nosanitize !47

1713:                                             ; preds = %1709
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1714:                                             ; preds = %1709
  %1715 = extractvalue { i32, i1 } %1711, 0, !nosanitize !47
  store i32 %1715, ptr %71, align 4, !tbaa !37
  br label %1716

1716:                                             ; preds = %1714, %1651
  %1717 = phi ptr [ %1689, %1714 ], [ %1653, %1651 ]
  %1718 = phi i32 [ %1690, %1714 ], [ %1654, %1651 ]
  %1719 = phi i64 [ %1704, %1714 ], [ %1655, %1651 ]
  %1720 = phi i32 [ %1706, %1714 ], [ %1656, %1651 ]
  %1721 = load i32, ptr %56, align 4, !tbaa !61
  store i32 %1721, ptr %73, align 8, !tbaa !92
  store i32 16202, ptr %21, align 8, !tbaa !20
  br label %1722

1722:                                             ; preds = %1716, %88
  %1723 = phi ptr [ %1717, %1716 ], [ %90, %88 ]
  %1724 = phi i32 [ %1718, %1716 ], [ %92, %88 ]
  %1725 = phi i64 [ %1719, %1716 ], [ %94, %88 ]
  %1726 = phi i32 [ %1720, %1716 ], [ %95, %88 ]
  %1727 = phi i32 [ %1657, %1716 ], [ %97, %88 ]
  %1728 = load i32, ptr %69, align 4, !tbaa !90
  %1729 = shl nsw i32 -1, %1728
  %1730 = xor i32 %1729, -1
  %1731 = load ptr, ptr %64, align 8, !tbaa !34
  %1732 = trunc i64 %1725 to i32
  %1733 = and i32 %1730, %1732
  %1734 = zext nneg i32 %1733 to i64
  %1735 = getelementptr inbounds nuw [4 x i8], ptr %1731, i64 %1734
  %1736 = getelementptr inbounds nuw i8, ptr %1735, i64 1
  %1737 = load i8, ptr %1736, align 1, !tbaa !44
  %1738 = zext i8 %1737 to i32
  %1739 = icmp ult i32 %1726, %1738
  br i1 %1739, label %1740, label %1773

1740:                                             ; preds = %1722
  %1741 = icmp eq i32 %1724, 0
  br i1 %1741, label %2427, label %1742

1742:                                             ; preds = %1740
  %1743 = zext nneg i32 %1726 to i64
  br label %1746

1744:                                             ; preds = %1757
  %1745 = icmp eq i32 %1760, 0
  br i1 %1745, label %2427, label %1746

1746:                                             ; preds = %1744, %1742
  %1747 = phi ptr [ %1723, %1742 ], [ %1759, %1744 ]
  %1748 = phi i32 [ %1724, %1742 ], [ %1760, %1744 ]
  %1749 = phi i64 [ %1725, %1742 ], [ %1758, %1744 ]
  %1750 = phi i64 [ %1743, %1742 ], [ %1761, %1744 ]
  %1751 = load i8, ptr %1747, align 1, !tbaa !44
  %1752 = zext i8 %1751 to i64
  %1753 = shl i64 %1752, %1750
  %1754 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1749, i64 %1753), !nosanitize !47
  %1755 = extractvalue { i64, i1 } %1754, 1, !nosanitize !47
  br i1 %1755, label %1756, label %1757, !prof !48, !nosanitize !47

1756:                                             ; preds = %1746
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1757:                                             ; preds = %1746
  %1758 = extractvalue { i64, i1 } %1754, 0, !nosanitize !47
  %1759 = getelementptr inbounds nuw i8, ptr %1747, i64 1
  %1760 = add i32 %1748, -1
  %1761 = add nuw nsw i64 %1750, 8
  %1762 = trunc i64 %1758 to i32
  %1763 = and i32 %1730, %1762
  %1764 = zext nneg i32 %1763 to i64
  %1765 = getelementptr inbounds nuw [4 x i8], ptr %1731, i64 %1764
  %1766 = getelementptr inbounds nuw i8, ptr %1765, i64 1
  %1767 = load i8, ptr %1766, align 1, !tbaa !44
  %1768 = zext i8 %1767 to i64
  %1769 = icmp samesign ult i64 %1761, %1768
  br i1 %1769, label %1744, label %1770

1770:                                             ; preds = %1757
  %1771 = zext i8 %1767 to i32
  %1772 = trunc nuw nsw i64 %1761 to i32
  br label %1773

1773:                                             ; preds = %1770, %1722
  %1774 = phi ptr [ %1735, %1722 ], [ %1765, %1770 ]
  %1775 = phi ptr [ %1723, %1722 ], [ %1759, %1770 ]
  %1776 = phi i32 [ %1724, %1722 ], [ %1760, %1770 ]
  %1777 = phi i64 [ %1725, %1722 ], [ %1758, %1770 ]
  %1778 = phi i32 [ %1726, %1722 ], [ %1772, %1770 ]
  %1779 = phi i8 [ %1737, %1722 ], [ %1767, %1770 ]
  %1780 = phi i32 [ %1738, %1722 ], [ %1771, %1770 ]
  %1781 = getelementptr inbounds nuw i8, ptr %1774, i64 2
  %1782 = load i16, ptr %1781, align 2, !tbaa !77
  %1783 = load i8, ptr %1774, align 2, !tbaa !44
  %1784 = icmp ult i8 %1783, 16
  br i1 %1784, label %1785, label %1853

1785:                                             ; preds = %1773
  %1786 = zext nneg i8 %1783 to i32
  %1787 = add nuw nsw i32 %1780, %1786
  %1788 = shl nsw i32 -1, %1787
  %1789 = xor i32 %1788, -1
  %1790 = zext i16 %1782 to i32
  %1791 = trunc i64 %1777 to i32
  %1792 = and i32 %1791, %1789
  %1793 = lshr i32 %1792, %1780
  %1794 = add nuw i32 %1793, %1790
  %1795 = zext i32 %1794 to i64
  %1796 = getelementptr inbounds nuw [4 x i8], ptr %1731, i64 %1795
  %1797 = getelementptr inbounds nuw i8, ptr %1796, i64 1
  %1798 = load i8, ptr %1797, align 1, !tbaa !44
  %1799 = zext i8 %1798 to i32
  %1800 = add nuw nsw i32 %1780, %1799
  %1801 = icmp ugt i32 %1800, %1778
  br i1 %1801, label %1802, label %1838

1802:                                             ; preds = %1785
  %1803 = icmp eq i32 %1776, 0
  br i1 %1803, label %2421, label %1804

1804:                                             ; preds = %1802
  %1805 = zext nneg i32 %1778 to i64
  br label %1808

1806:                                             ; preds = %1819
  %1807 = icmp eq i32 %1822, 0
  br i1 %1807, label %2421, label %1808

1808:                                             ; preds = %1806, %1804
  %1809 = phi ptr [ %1775, %1804 ], [ %1821, %1806 ]
  %1810 = phi i32 [ %1776, %1804 ], [ %1822, %1806 ]
  %1811 = phi i64 [ %1777, %1804 ], [ %1820, %1806 ]
  %1812 = phi i64 [ %1805, %1804 ], [ %1823, %1806 ]
  %1813 = load i8, ptr %1809, align 1, !tbaa !44
  %1814 = zext i8 %1813 to i64
  %1815 = shl i64 %1814, %1812
  %1816 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1811, i64 %1815), !nosanitize !47
  %1817 = extractvalue { i64, i1 } %1816, 1, !nosanitize !47
  br i1 %1817, label %1818, label %1819, !prof !48, !nosanitize !47

1818:                                             ; preds = %1808
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1819:                                             ; preds = %1808
  %1820 = extractvalue { i64, i1 } %1816, 0, !nosanitize !47
  %1821 = getelementptr inbounds nuw i8, ptr %1809, i64 1
  %1822 = add i32 %1810, -1
  %1823 = add nuw nsw i64 %1812, 8
  %1824 = trunc i64 %1820 to i32
  %1825 = and i32 %1824, %1789
  %1826 = lshr i32 %1825, %1780
  %1827 = add nuw i32 %1826, %1790
  %1828 = zext i32 %1827 to i64
  %1829 = getelementptr inbounds nuw [4 x i8], ptr %1731, i64 %1828
  %1830 = getelementptr inbounds nuw i8, ptr %1829, i64 1
  %1831 = load i8, ptr %1830, align 1, !tbaa !44
  %1832 = zext i8 %1831 to i32
  %1833 = add nuw nsw i32 %1780, %1832
  %1834 = zext nneg i32 %1833 to i64
  %1835 = icmp samesign ult i64 %1823, %1834
  br i1 %1835, label %1806, label %1836

1836:                                             ; preds = %1819
  %1837 = trunc nuw nsw i64 %1823 to i32
  br label %1838

1838:                                             ; preds = %1836, %1785
  %1839 = phi ptr [ %1775, %1785 ], [ %1821, %1836 ]
  %1840 = phi i32 [ %1776, %1785 ], [ %1822, %1836 ]
  %1841 = phi i64 [ %1777, %1785 ], [ %1820, %1836 ]
  %1842 = phi i32 [ %1778, %1785 ], [ %1837, %1836 ]
  %1843 = phi ptr [ %1796, %1785 ], [ %1829, %1836 ]
  %1844 = phi i8 [ %1798, %1785 ], [ %1831, %1836 ]
  %1845 = getelementptr inbounds nuw i8, ptr %1843, i64 2
  %1846 = load i16, ptr %1845, align 2, !tbaa !77
  %1847 = load i8, ptr %1843, align 2, !tbaa !44
  %1848 = sub nuw i32 %1842, %1780
  %1849 = zext nneg i8 %1779 to i64
  %1850 = lshr i64 %1841, %1849
  %1851 = load i32, ptr %71, align 4, !tbaa !37
  %1852 = add nsw i32 %1851, %1780
  store i32 %1852, ptr %71, align 4, !tbaa !37
  br label %1853

1853:                                             ; preds = %1838, %1773
  %1854 = phi ptr [ %1839, %1838 ], [ %1775, %1773 ]
  %1855 = phi i32 [ %1840, %1838 ], [ %1776, %1773 ]
  %1856 = phi i64 [ %1850, %1838 ], [ %1777, %1773 ]
  %1857 = phi i32 [ %1848, %1838 ], [ %1778, %1773 ]
  %1858 = phi i16 [ %1846, %1838 ], [ %1782, %1773 ]
  %1859 = phi i8 [ %1844, %1838 ], [ %1779, %1773 ]
  %1860 = phi i8 [ %1847, %1838 ], [ %1783, %1773 ]
  %1861 = zext i8 %1859 to i32
  %1862 = zext nneg i8 %1859 to i64
  %1863 = lshr i64 %1856, %1862
  %1864 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1857, i32 %1861), !nosanitize !47
  %1865 = extractvalue { i32, i1 } %1864, 0, !nosanitize !47
  %1866 = extractvalue { i32, i1 } %1864, 1, !nosanitize !47
  br i1 %1866, label %1867, label %1868, !prof !48, !nosanitize !47

1867:                                             ; preds = %1853
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1868:                                             ; preds = %1853
  %1869 = load i32, ptr %71, align 4, !tbaa !37
  %1870 = add nsw i32 %1869, %1861
  store i32 %1870, ptr %71, align 4, !tbaa !37
  %1871 = zext i8 %1860 to i32
  %1872 = and i32 %1871, 64
  %1873 = icmp eq i32 %1872, 0
  br i1 %1873, label %1875, label %1874

1874:                                             ; preds = %1868
  store ptr @.str.15, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2351

1875:                                             ; preds = %1868
  %1876 = zext i16 %1858 to i32
  store i32 %1876, ptr %74, align 8, !tbaa !93
  %1877 = and i32 %1871, 15
  store i32 %1877, ptr %72, align 4, !tbaa !53
  store i32 16203, ptr %21, align 8, !tbaa !20
  br label %1878

1878:                                             ; preds = %1875, %99
  %1879 = phi i32 [ %1877, %1875 ], [ %100, %99 ]
  %1880 = phi ptr [ %1854, %1875 ], [ %90, %99 ]
  %1881 = phi i32 [ %1855, %1875 ], [ %92, %99 ]
  %1882 = phi i64 [ %1863, %1875 ], [ %94, %99 ]
  %1883 = phi i32 [ %1865, %1875 ], [ %95, %99 ]
  %1884 = phi i32 [ %1727, %1875 ], [ %97, %99 ]
  %1885 = icmp eq i32 %1879, 0
  br i1 %1885, label %1943, label %1886

1886:                                             ; preds = %1878
  %1887 = icmp ult i32 %1883, %1879
  br i1 %1887, label %1888, label %1915

1888:                                             ; preds = %1886
  %1889 = icmp eq i32 %1881, 0
  br i1 %1889, label %2415, label %1890

1890:                                             ; preds = %1888
  %1891 = zext i32 %1883 to i64
  br label %1894

1892:                                             ; preds = %1911
  %1893 = icmp eq i32 %1899, 0
  br i1 %1893, label %2415, label %1894, !llvm.loop !94

1894:                                             ; preds = %1892, %1890
  %1895 = phi ptr [ %1880, %1890 ], [ %1900, %1892 ]
  %1896 = phi i32 [ %1881, %1890 ], [ %1899, %1892 ]
  %1897 = phi i64 [ %1882, %1890 ], [ %1905, %1892 ]
  %1898 = phi i64 [ %1891, %1890 ], [ %1912, %1892 ]
  %1899 = add i32 %1896, -1
  %1900 = getelementptr inbounds nuw i8, ptr %1895, i64 1
  %1901 = load i8, ptr %1895, align 1, !tbaa !44
  %1902 = zext i8 %1901 to i64
  %1903 = shl i64 %1902, %1898
  %1904 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1897, i64 %1903), !nosanitize !47
  %1905 = extractvalue { i64, i1 } %1904, 0, !nosanitize !47
  %1906 = extractvalue { i64, i1 } %1904, 1, !nosanitize !47
  br i1 %1906, label %1907, label %1908, !prof !48, !nosanitize !47

1907:                                             ; preds = %1894
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1908:                                             ; preds = %1894
  %1909 = icmp samesign ugt i64 %1898, 4294967287
  br i1 %1909, label %1910, label %1911, !prof !48, !nosanitize !47

1910:                                             ; preds = %1908
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1911:                                             ; preds = %1908
  %1912 = add nuw nsw i64 %1898, 8
  %1913 = trunc nuw i64 %1912 to i32
  %1914 = icmp ugt i32 %1879, %1913
  br i1 %1914, label %1892, label %1915, !llvm.loop !94

1915:                                             ; preds = %1911, %1886
  %1916 = phi ptr [ %1880, %1886 ], [ %1900, %1911 ]
  %1917 = phi i32 [ %1881, %1886 ], [ %1899, %1911 ]
  %1918 = phi i64 [ %1882, %1886 ], [ %1905, %1911 ]
  %1919 = phi i32 [ %1883, %1886 ], [ %1913, %1911 ]
  %1920 = shl nsw i32 -1, %1879
  %1921 = xor i32 %1920, -1
  %1922 = trunc i64 %1918 to i32
  %1923 = and i32 %1922, %1921
  %1924 = load i32, ptr %74, align 8, !tbaa !93
  %1925 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1924, i32 %1923), !nosanitize !47
  %1926 = extractvalue { i32, i1 } %1925, 1, !nosanitize !47
  br i1 %1926, label %1927, label %1928, !prof !48, !nosanitize !47

1927:                                             ; preds = %1915
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1928:                                             ; preds = %1915
  %1929 = extractvalue { i32, i1 } %1925, 0, !nosanitize !47
  store i32 %1929, ptr %74, align 8, !tbaa !93
  %1930 = zext nneg i32 %1879 to i64
  %1931 = lshr i64 %1918, %1930
  %1932 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1919, i32 %1879), !nosanitize !47
  %1933 = extractvalue { i32, i1 } %1932, 0, !nosanitize !47
  %1934 = extractvalue { i32, i1 } %1932, 1, !nosanitize !47
  br i1 %1934, label %1935, label %1936, !prof !48, !nosanitize !47

1935:                                             ; preds = %1928
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1936:                                             ; preds = %1928
  %1937 = load i32, ptr %71, align 4, !tbaa !37
  %1938 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1937, i32 %1879), !nosanitize !47
  %1939 = extractvalue { i32, i1 } %1938, 1, !nosanitize !47
  br i1 %1939, label %1940, label %1941, !prof !48, !nosanitize !47

1940:                                             ; preds = %1936
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1941:                                             ; preds = %1936
  %1942 = extractvalue { i32, i1 } %1938, 0, !nosanitize !47
  store i32 %1942, ptr %71, align 4, !tbaa !37
  br label %1943

1943:                                             ; preds = %1941, %1878
  %1944 = phi ptr [ %1916, %1941 ], [ %1880, %1878 ]
  %1945 = phi i32 [ %1917, %1941 ], [ %1881, %1878 ]
  %1946 = phi i64 [ %1931, %1941 ], [ %1882, %1878 ]
  %1947 = phi i32 [ %1933, %1941 ], [ %1883, %1878 ]
  store i32 16204, ptr %21, align 8, !tbaa !20
  br label %1948

1948:                                             ; preds = %1943, %88
  %1949 = phi ptr [ %1944, %1943 ], [ %90, %88 ]
  %1950 = phi i32 [ %1945, %1943 ], [ %92, %88 ]
  %1951 = phi i64 [ %1946, %1943 ], [ %94, %88 ]
  %1952 = phi i32 [ %1947, %1943 ], [ %95, %88 ]
  %1953 = phi i32 [ %1884, %1943 ], [ %97, %88 ]
  %1954 = icmp eq i32 %93, 0
  br i1 %1954, label %2485, label %1955

1955:                                             ; preds = %1948
  %1956 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %96, i32 %93), !nosanitize !47
  %1957 = extractvalue { i32, i1 } %1956, 0, !nosanitize !47
  %1958 = extractvalue { i32, i1 } %1956, 1, !nosanitize !47
  br i1 %1958, label %1959, label %1960, !prof !48, !nosanitize !47

1959:                                             ; preds = %1955
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1960:                                             ; preds = %1955
  %1961 = load i32, ptr %74, align 8, !tbaa !93
  %1962 = icmp ugt i32 %1961, %1957
  br i1 %1962, label %1963, label %1992

1963:                                             ; preds = %1960
  %1964 = sub nuw i32 %1961, %1957
  %1965 = load i32, ptr %75, align 8, !tbaa !39
  %1966 = icmp ugt i32 %1964, %1965
  br i1 %1966, label %1967, label %1971

1967:                                             ; preds = %1963
  %1968 = load i32, ptr %76, align 8, !tbaa !36
  %1969 = icmp eq i32 %1968, 0
  br i1 %1969, label %1971, label %1970

1970:                                             ; preds = %1967
  store ptr @.str.16, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2351

1971:                                             ; preds = %1967, %1963
  %1972 = load i32, ptr %77, align 4, !tbaa !40
  %1973 = icmp ugt i32 %1964, %1972
  br i1 %1973, label %1974, label %1982

1974:                                             ; preds = %1971
  %1975 = sub nuw i32 %1964, %1972
  %1976 = load i32, ptr %79, align 4, !tbaa !38
  %1977 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1976, i32 %1975), !nosanitize !47
  %1978 = extractvalue { i32, i1 } %1977, 1, !nosanitize !47
  br i1 %1978, label %1979, label %1980, !prof !48, !nosanitize !47

1979:                                             ; preds = %1974
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1980:                                             ; preds = %1974
  %1981 = extractvalue { i32, i1 } %1977, 0, !nosanitize !47
  br label %1984

1982:                                             ; preds = %1971
  %1983 = sub nuw i32 %1972, %1964
  br label %1984

1984:                                             ; preds = %1982, %1980
  %1985 = phi i32 [ %1983, %1982 ], [ %1981, %1980 ]
  %1986 = phi i32 [ %1964, %1982 ], [ %1975, %1980 ]
  %1987 = load ptr, ptr %78, align 8, !tbaa !41
  %1988 = zext i32 %1985 to i64
  %1989 = getelementptr inbounds nuw i8, ptr %1987, i64 %1988
  %1990 = load i32, ptr %56, align 4, !tbaa !61
  %1991 = call i32 @llvm.umin.i32(i32 %1986, i32 %1990)
  br label %1997

1992:                                             ; preds = %1960
  %1993 = zext i32 %1961 to i64
  %1994 = sub nsw i64 0, %1993
  %1995 = getelementptr inbounds i8, ptr %91, i64 %1994
  %1996 = load i32, ptr %56, align 4, !tbaa !61
  br label %1997

1997:                                             ; preds = %1992, %1984
  %1998 = phi i32 [ %1996, %1992 ], [ %1990, %1984 ]
  %1999 = phi i32 [ %1996, %1992 ], [ %1991, %1984 ]
  %2000 = phi ptr [ %1995, %1992 ], [ %1989, %1984 ]
  %2001 = ptrtoaddr ptr %2000 to i64
  %2002 = call i32 @llvm.umin.i32(i32 %1999, i32 %93)
  %2003 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %93, i32 %2002), !nosanitize !47
  %2004 = extractvalue { i32, i1 } %2003, 0, !nosanitize !47
  %2005 = extractvalue { i32, i1 } %2003, 1, !nosanitize !47
  br i1 %2005, label %2006, label %2007, !prof !48, !nosanitize !47

2006:                                             ; preds = %1997
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2007:                                             ; preds = %1997
  %2008 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1998, i32 %2002), !nosanitize !47
  %2009 = extractvalue { i32, i1 } %2008, 1, !nosanitize !47
  br i1 %2009, label %2010, label %2011, !prof !48, !nosanitize !47

2010:                                             ; preds = %2007
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2011:                                             ; preds = %2007
  %2012 = extractvalue { i32, i1 } %2008, 0, !nosanitize !47
  store i32 %2012, ptr %56, align 4, !tbaa !61
  %2013 = icmp eq i32 %2002, 0
  br i1 %2013, label %2084, label %2014, !prof !48, !nosanitize !47

2014:                                             ; preds = %2011
  %2015 = call i32 @llvm.umin.i32(i32 %1999, i32 %93)
  %2016 = zext i32 %2015 to i64
  %2017 = icmp ult i32 %2015, 4
  %2018 = sub i64 %98, %2001
  %2019 = icmp ult i64 %2018, 32
  %2020 = select i1 %2017, i1 true, i1 %2019
  br i1 %2020, label %2060, label %2021

2021:                                             ; preds = %2014
  %2022 = icmp ult i32 %2015, 32
  br i1 %2022, label %2044, label %2023

2023:                                             ; preds = %2021
  %2024 = and i64 %2016, 28
  %2025 = and i64 %2016, 4294967264
  %2026 = getelementptr i8, ptr %91, i64 %2025
  %2027 = trunc nuw i64 %2025 to i32
  %2028 = sub i32 %2002, %2027
  %2029 = getelementptr i8, ptr %2000, i64 %2025
  br label %2030

2030:                                             ; preds = %2030, %2023
  %2031 = phi i64 [ 0, %2023 ], [ %2038, %2030 ]
  %2032 = getelementptr i8, ptr %91, i64 %2031
  %2033 = getelementptr i8, ptr %2000, i64 %2031
  %2034 = getelementptr i8, ptr %2033, i64 16
  %2035 = load <16 x i8>, ptr %2033, align 1, !tbaa !44
  %2036 = load <16 x i8>, ptr %2034, align 1, !tbaa !44
  %2037 = getelementptr i8, ptr %2032, i64 16
  store <16 x i8> %2035, ptr %2032, align 1, !tbaa !44
  store <16 x i8> %2036, ptr %2037, align 1, !tbaa !44
  %2038 = add nuw i64 %2031, 32
  %2039 = icmp eq i64 %2038, %2025
  br i1 %2039, label %2040, label %2030, !llvm.loop !95

2040:                                             ; preds = %2030
  %2041 = icmp eq i64 %2025, %2016
  br i1 %2041, label %2116, label %2042

2042:                                             ; preds = %2040
  %2043 = icmp eq i64 %2024, 0
  br i1 %2043, label %2060, label %2044, !prof !98

2044:                                             ; preds = %2042, %2021
  %2045 = phi i64 [ %2025, %2042 ], [ 0, %2021 ]
  %2046 = and i64 %2016, 4294967292
  %2047 = getelementptr i8, ptr %91, i64 %2046
  %2048 = trunc nuw i64 %2046 to i32
  %2049 = sub i32 %2002, %2048
  %2050 = getelementptr i8, ptr %2000, i64 %2046
  br label %2051

2051:                                             ; preds = %2051, %2044
  %2052 = phi i64 [ %2045, %2044 ], [ %2056, %2051 ]
  %2053 = getelementptr i8, ptr %91, i64 %2052
  %2054 = getelementptr i8, ptr %2000, i64 %2052
  %2055 = load <4 x i8>, ptr %2054, align 1, !tbaa !44
  store <4 x i8> %2055, ptr %2053, align 1, !tbaa !44
  %2056 = add nuw i64 %2052, 4
  %2057 = icmp eq i64 %2056, %2046
  br i1 %2057, label %2058, label %2051, !llvm.loop !99

2058:                                             ; preds = %2051
  %2059 = icmp eq i64 %2046, %2016
  br i1 %2059, label %2116, label %2060

2060:                                             ; preds = %2058, %2042, %2014
  %2061 = phi ptr [ %91, %2014 ], [ %2026, %2042 ], [ %2047, %2058 ]
  %2062 = phi i32 [ %2002, %2014 ], [ %2028, %2042 ], [ %2049, %2058 ]
  %2063 = phi ptr [ %2000, %2014 ], [ %2029, %2042 ], [ %2050, %2058 ]
  %2064 = add i32 %2062, -1
  %2065 = and i32 %2062, 7
  %2066 = icmp eq i32 %2065, 0
  br i1 %2066, label %2078, label %2067

2067:                                             ; preds = %2067, %2060
  %2068 = phi ptr [ %2073, %2067 ], [ %2061, %2060 ]
  %2069 = phi i32 [ %2074, %2067 ], [ %2062, %2060 ]
  %2070 = phi ptr [ %2075, %2067 ], [ %2063, %2060 ]
  %2071 = phi i32 [ %2076, %2067 ], [ 0, %2060 ]
  %2072 = load i8, ptr %2070, align 1, !tbaa !44
  store i8 %2072, ptr %2068, align 1, !tbaa !44
  %2073 = getelementptr inbounds nuw i8, ptr %2068, i64 1
  %2074 = add i32 %2069, -1
  %2075 = getelementptr inbounds nuw i8, ptr %2070, i64 1
  %2076 = add i32 %2071, 1
  %2077 = icmp eq i32 %2076, %2065
  br i1 %2077, label %2078, label %2067, !llvm.loop !100

2078:                                             ; preds = %2067, %2060
  %2079 = phi ptr [ poison, %2060 ], [ %2073, %2067 ]
  %2080 = phi ptr [ %2061, %2060 ], [ %2073, %2067 ]
  %2081 = phi i32 [ %2062, %2060 ], [ %2074, %2067 ]
  %2082 = phi ptr [ %2063, %2060 ], [ %2075, %2067 ]
  %2083 = icmp ult i32 %2064, 7
  br i1 %2083, label %2116, label %2086

2084:                                             ; preds = %2011
  %2085 = load i8, ptr %2000, align 1, !tbaa !44
  store i8 %2085, ptr %91, align 1, !tbaa !44
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2086:                                             ; preds = %2086, %2078
  %2087 = phi ptr [ %2112, %2086 ], [ %2080, %2078 ]
  %2088 = phi i32 [ %2113, %2086 ], [ %2081, %2078 ]
  %2089 = phi ptr [ %2114, %2086 ], [ %2082, %2078 ]
  %2090 = load i8, ptr %2089, align 1, !tbaa !44
  store i8 %2090, ptr %2087, align 1, !tbaa !44
  %2091 = getelementptr inbounds nuw i8, ptr %2087, i64 1
  %2092 = getelementptr inbounds nuw i8, ptr %2089, i64 1
  %2093 = load i8, ptr %2092, align 1, !tbaa !44
  store i8 %2093, ptr %2091, align 1, !tbaa !44
  %2094 = getelementptr inbounds nuw i8, ptr %2087, i64 2
  %2095 = getelementptr inbounds nuw i8, ptr %2089, i64 2
  %2096 = load i8, ptr %2095, align 1, !tbaa !44
  store i8 %2096, ptr %2094, align 1, !tbaa !44
  %2097 = getelementptr inbounds nuw i8, ptr %2087, i64 3
  %2098 = getelementptr inbounds nuw i8, ptr %2089, i64 3
  %2099 = load i8, ptr %2098, align 1, !tbaa !44
  store i8 %2099, ptr %2097, align 1, !tbaa !44
  %2100 = getelementptr inbounds nuw i8, ptr %2087, i64 4
  %2101 = getelementptr inbounds nuw i8, ptr %2089, i64 4
  %2102 = load i8, ptr %2101, align 1, !tbaa !44
  store i8 %2102, ptr %2100, align 1, !tbaa !44
  %2103 = getelementptr inbounds nuw i8, ptr %2087, i64 5
  %2104 = getelementptr inbounds nuw i8, ptr %2089, i64 5
  %2105 = load i8, ptr %2104, align 1, !tbaa !44
  store i8 %2105, ptr %2103, align 1, !tbaa !44
  %2106 = getelementptr inbounds nuw i8, ptr %2087, i64 6
  %2107 = getelementptr inbounds nuw i8, ptr %2089, i64 6
  %2108 = load i8, ptr %2107, align 1, !tbaa !44
  store i8 %2108, ptr %2106, align 1, !tbaa !44
  %2109 = getelementptr inbounds nuw i8, ptr %2087, i64 7
  %2110 = getelementptr inbounds nuw i8, ptr %2089, i64 7
  %2111 = load i8, ptr %2110, align 1, !tbaa !44
  store i8 %2111, ptr %2109, align 1, !tbaa !44
  %2112 = getelementptr inbounds nuw i8, ptr %2087, i64 8
  %2113 = add i32 %2088, -8
  %2114 = getelementptr inbounds nuw i8, ptr %2089, i64 8
  %2115 = icmp eq i32 %2113, 0
  br i1 %2115, label %2116, label %2086, !llvm.loop !102

2116:                                             ; preds = %2086, %2078, %2058, %2040
  %2117 = phi ptr [ %2047, %2058 ], [ %2026, %2040 ], [ %2079, %2078 ], [ %2112, %2086 ]
  %2118 = load i32, ptr %56, align 4, !tbaa !61
  %2119 = icmp eq i32 %2118, 0
  br i1 %2119, label %2120, label %2351

2120:                                             ; preds = %2116
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2351

2121:                                             ; preds = %88
  %2122 = icmp eq i32 %93, 0
  br i1 %2122, label %2485, label %2123

2123:                                             ; preds = %2121
  %2124 = load i32, ptr %56, align 4, !tbaa !61
  %2125 = trunc i32 %2124 to i8
  store i8 %2125, ptr %91, align 1, !tbaa !44
  %2126 = add i32 %93, -1
  %2127 = getelementptr inbounds nuw i8, ptr %91, i64 1
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2351

2128:                                             ; preds = %88
  %2129 = load i32, ptr %49, align 8, !tbaa !24
  %2130 = icmp eq i32 %2129, 0
  br i1 %2130, label %2251, label %2131

2131:                                             ; preds = %2128
  %2132 = icmp ult i32 %95, 32
  br i1 %2132, label %2133, label %2196

2133:                                             ; preds = %2131
  %2134 = zext nneg i32 %95 to i64
  %2135 = icmp eq i32 %92, 0
  br i1 %2135, label %2478, label %2136

2136:                                             ; preds = %2133
  %2137 = load i8, ptr %90, align 1, !tbaa !44
  %2138 = zext i8 %2137 to i64
  %2139 = shl nuw nsw i64 %2138, %2134
  %2140 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %2139), !nosanitize !47
  %2141 = extractvalue { i64, i1 } %2140, 1, !nosanitize !47
  br i1 %2141, label %2142, label %2143, !prof !48, !nosanitize !47

2142:                                             ; preds = %2179, %2165, %2151, %2136
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2143:                                             ; preds = %2136
  %2144 = extractvalue { i64, i1 } %2140, 0, !nosanitize !47
  %2145 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %2146 = add i32 %92, -1
  %2147 = add nuw nsw i64 %2134, 8
  %2148 = icmp ult i32 %95, 24
  br i1 %2148, label %2149, label %2190

2149:                                             ; preds = %2143
  %2150 = icmp eq i32 %2146, 0
  br i1 %2150, label %2478, label %2151

2151:                                             ; preds = %2149
  %2152 = load i8, ptr %2145, align 1, !tbaa !44
  %2153 = zext i8 %2152 to i64
  %2154 = shl nuw nsw i64 %2153, %2147
  %2155 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2144, i64 %2154), !nosanitize !47
  %2156 = extractvalue { i64, i1 } %2155, 1, !nosanitize !47
  br i1 %2156, label %2142, label %2157, !prof !48, !nosanitize !47

2157:                                             ; preds = %2151
  %2158 = extractvalue { i64, i1 } %2155, 0, !nosanitize !47
  %2159 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %2160 = add i32 %92, -2
  %2161 = add nuw nsw i64 %2134, 16
  %2162 = icmp ult i32 %95, 16
  br i1 %2162, label %2163, label %2190

2163:                                             ; preds = %2157
  %2164 = icmp eq i32 %2160, 0
  br i1 %2164, label %2478, label %2165

2165:                                             ; preds = %2163
  %2166 = load i8, ptr %2159, align 1, !tbaa !44
  %2167 = zext i8 %2166 to i64
  %2168 = shl nuw nsw i64 %2167, %2161
  %2169 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2158, i64 %2168), !nosanitize !47
  %2170 = extractvalue { i64, i1 } %2169, 1, !nosanitize !47
  br i1 %2170, label %2142, label %2171, !prof !48, !nosanitize !47

2171:                                             ; preds = %2165
  %2172 = extractvalue { i64, i1 } %2169, 0, !nosanitize !47
  %2173 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %2174 = add i32 %92, -3
  %2175 = add nuw nsw i64 %2134, 24
  %2176 = icmp ult i32 %95, 8
  br i1 %2176, label %2177, label %2190

2177:                                             ; preds = %2171
  %2178 = icmp eq i32 %2174, 0
  br i1 %2178, label %2478, label %2179

2179:                                             ; preds = %2177
  %2180 = load i8, ptr %2173, align 1, !tbaa !44
  %2181 = zext i8 %2180 to i64
  %2182 = shl nuw nsw i64 %2181, %2175
  %2183 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2172, i64 %2182), !nosanitize !47
  %2184 = extractvalue { i64, i1 } %2183, 1, !nosanitize !47
  br i1 %2184, label %2142, label %2185, !prof !48, !nosanitize !47

2185:                                             ; preds = %2179
  %2186 = extractvalue { i64, i1 } %2183, 0, !nosanitize !47
  %2187 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %2188 = add i32 %92, -4
  %2189 = or disjoint i64 %2134, 32
  br label %2190

2190:                                             ; preds = %2185, %2171, %2157, %2143
  %2191 = phi i64 [ %2144, %2143 ], [ %2158, %2157 ], [ %2172, %2171 ], [ %2186, %2185 ]
  %2192 = phi ptr [ %2145, %2143 ], [ %2159, %2157 ], [ %2173, %2171 ], [ %2187, %2185 ]
  %2193 = phi i32 [ %2146, %2143 ], [ %2160, %2157 ], [ %2174, %2171 ], [ %2188, %2185 ]
  %2194 = phi i64 [ %2147, %2143 ], [ %2161, %2157 ], [ %2175, %2171 ], [ %2189, %2185 ]
  %2195 = trunc nuw nsw i64 %2194 to i32
  br label %2196

2196:                                             ; preds = %2190, %2131
  %2197 = phi ptr [ %90, %2131 ], [ %2192, %2190 ]
  %2198 = phi i32 [ %92, %2131 ], [ %2193, %2190 ]
  %2199 = phi i64 [ %94, %2131 ], [ %2191, %2190 ]
  %2200 = phi i32 [ %95, %2131 ], [ %2195, %2190 ]
  %2201 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %96, i32 %93), !nosanitize !47
  %2202 = extractvalue { i32, i1 } %2201, 0, !nosanitize !47
  %2203 = extractvalue { i32, i1 } %2201, 1, !nosanitize !47
  br i1 %2203, label %2204, label %2205, !prof !48, !nosanitize !47

2204:                                             ; preds = %2196
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2205:                                             ; preds = %2196
  %2206 = zext i32 %2202 to i64
  %2207 = load i64, ptr %50, align 8, !tbaa !103
  %2208 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2207, i64 %2206), !nosanitize !47
  %2209 = extractvalue { i64, i1 } %2208, 1, !nosanitize !47
  br i1 %2209, label %2210, label %2211, !prof !48, !nosanitize !47

2210:                                             ; preds = %2205
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2211:                                             ; preds = %2205
  %2212 = extractvalue { i64, i1 } %2208, 0, !nosanitize !47
  store i64 %2212, ptr %50, align 8, !tbaa !103
  %2213 = load i64, ptr %51, align 8, !tbaa !21
  %2214 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2213, i64 %2206), !nosanitize !47
  %2215 = extractvalue { i64, i1 } %2214, 1, !nosanitize !47
  br i1 %2215, label %2216, label %2217, !prof !48, !nosanitize !47

2216:                                             ; preds = %2211
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2217:                                             ; preds = %2211
  %2218 = extractvalue { i64, i1 } %2214, 0, !nosanitize !47
  store i64 %2218, ptr %51, align 8, !tbaa !21
  %2219 = and i32 %2129, 4
  %2220 = icmp ne i32 %2219, 0
  %2221 = icmp ne i32 %2202, 0
  %2222 = select i1 %2220, i1 %2221, i1 false
  br i1 %2222, label %2223, label %2237

2223:                                             ; preds = %2217
  %2224 = load i32, ptr %52, align 8, !tbaa !28
  %2225 = icmp eq i32 %2224, 0
  %2226 = load i64, ptr %53, align 8, !tbaa !54
  %2227 = sub nsw i64 0, %2206
  %2228 = getelementptr inbounds i8, ptr %91, i64 %2227
  br i1 %2225, label %2231, label %2229

2229:                                             ; preds = %2223
  %2230 = call i64 @crc32(i64 noundef %2226, ptr noundef nonnull %2228, i32 noundef %2202) #12
  br label %2233

2231:                                             ; preds = %2223
  %2232 = call i64 @adler32(i64 noundef %2226, ptr noundef nonnull %2228, i32 noundef %2202) #12
  br label %2233

2233:                                             ; preds = %2231, %2229
  %2234 = phi i64 [ %2230, %2229 ], [ %2232, %2231 ]
  store i64 %2234, ptr %53, align 8, !tbaa !54
  store i64 %2234, ptr %54, align 8, !tbaa !25
  %2235 = load i32, ptr %49, align 8, !tbaa !24
  %2236 = and i32 %2235, 4
  br label %2237

2237:                                             ; preds = %2233, %2217
  %2238 = phi i32 [ %2236, %2233 ], [ %2219, %2217 ]
  %2239 = phi i32 [ %2235, %2233 ], [ %2129, %2217 ]
  %2240 = icmp eq i32 %2238, 0
  br i1 %2240, label %2251, label %2241

2241:                                             ; preds = %2237
  %2242 = load i32, ptr %52, align 8, !tbaa !28
  %2243 = icmp eq i32 %2242, 0
  %2244 = trunc i64 %2199 to i32
  %2245 = call i32 @llvm.bswap.i32(i32 %2244)
  %2246 = zext i32 %2245 to i64
  %2247 = select i1 %2243, i64 %2246, i64 %2199
  %2248 = load i64, ptr %53, align 8, !tbaa !54
  %2249 = icmp eq i64 %2247, %2248
  br i1 %2249, label %2251, label %2250

2250:                                             ; preds = %2241
  store ptr @.str.17, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2351

2251:                                             ; preds = %2241, %2237, %2128
  %2252 = phi i32 [ 0, %2128 ], [ %2239, %2237 ], [ %2239, %2241 ]
  %2253 = phi ptr [ %90, %2128 ], [ %2197, %2237 ], [ %2197, %2241 ]
  %2254 = phi i32 [ %92, %2128 ], [ %2198, %2237 ], [ %2198, %2241 ]
  %2255 = phi i64 [ %94, %2128 ], [ 0, %2237 ], [ 0, %2241 ]
  %2256 = phi i32 [ %95, %2128 ], [ 0, %2237 ], [ 0, %2241 ]
  %2257 = phi i32 [ %96, %2128 ], [ %93, %2237 ], [ %93, %2241 ]
  store i32 16207, ptr %21, align 8, !tbaa !20
  br label %2258

2258:                                             ; preds = %2251, %103
  %2259 = phi i32 [ %2252, %2251 ], [ %104, %103 ]
  %2260 = phi ptr [ %2253, %2251 ], [ %90, %103 ]
  %2261 = phi i32 [ %2254, %2251 ], [ %92, %103 ]
  %2262 = phi i64 [ %2255, %2251 ], [ %94, %103 ]
  %2263 = phi i32 [ %2256, %2251 ], [ %95, %103 ]
  %2264 = phi i32 [ %2257, %2251 ], [ %96, %103 ]
  %2265 = icmp eq i32 %2259, 0
  br i1 %2265, label %2346, label %2266

2266:                                             ; preds = %2258
  %2267 = load i32, ptr %52, align 8, !tbaa !28
  %2268 = icmp eq i32 %2267, 0
  br i1 %2268, label %2346, label %2269

2269:                                             ; preds = %2266
  %2270 = icmp ult i32 %2263, 32
  br i1 %2270, label %2271, label %2334

2271:                                             ; preds = %2269
  %2272 = zext nneg i32 %2263 to i64
  %2273 = icmp eq i32 %2261, 0
  br i1 %2273, label %2472, label %2274

2274:                                             ; preds = %2271
  %2275 = load i8, ptr %2260, align 1, !tbaa !44
  %2276 = zext i8 %2275 to i64
  %2277 = shl nuw nsw i64 %2276, %2272
  %2278 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2262, i64 %2277), !nosanitize !47
  %2279 = extractvalue { i64, i1 } %2278, 1, !nosanitize !47
  br i1 %2279, label %2280, label %2281, !prof !48, !nosanitize !47

2280:                                             ; preds = %2317, %2303, %2289, %2274
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2281:                                             ; preds = %2274
  %2282 = extractvalue { i64, i1 } %2278, 0, !nosanitize !47
  %2283 = getelementptr inbounds nuw i8, ptr %2260, i64 1
  %2284 = add i32 %2261, -1
  %2285 = add nuw nsw i64 %2272, 8
  %2286 = icmp ult i32 %2263, 24
  br i1 %2286, label %2287, label %2328

2287:                                             ; preds = %2281
  %2288 = icmp eq i32 %2284, 0
  br i1 %2288, label %2472, label %2289

2289:                                             ; preds = %2287
  %2290 = load i8, ptr %2283, align 1, !tbaa !44
  %2291 = zext i8 %2290 to i64
  %2292 = shl nuw nsw i64 %2291, %2285
  %2293 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2282, i64 %2292), !nosanitize !47
  %2294 = extractvalue { i64, i1 } %2293, 1, !nosanitize !47
  br i1 %2294, label %2280, label %2295, !prof !48, !nosanitize !47

2295:                                             ; preds = %2289
  %2296 = extractvalue { i64, i1 } %2293, 0, !nosanitize !47
  %2297 = getelementptr inbounds nuw i8, ptr %2260, i64 2
  %2298 = add i32 %2261, -2
  %2299 = add nuw nsw i64 %2272, 16
  %2300 = icmp ult i32 %2263, 16
  br i1 %2300, label %2301, label %2328

2301:                                             ; preds = %2295
  %2302 = icmp eq i32 %2298, 0
  br i1 %2302, label %2472, label %2303

2303:                                             ; preds = %2301
  %2304 = load i8, ptr %2297, align 1, !tbaa !44
  %2305 = zext i8 %2304 to i64
  %2306 = shl nuw nsw i64 %2305, %2299
  %2307 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2296, i64 %2306), !nosanitize !47
  %2308 = extractvalue { i64, i1 } %2307, 1, !nosanitize !47
  br i1 %2308, label %2280, label %2309, !prof !48, !nosanitize !47

2309:                                             ; preds = %2303
  %2310 = extractvalue { i64, i1 } %2307, 0, !nosanitize !47
  %2311 = getelementptr inbounds nuw i8, ptr %2260, i64 3
  %2312 = add i32 %2261, -3
  %2313 = add nuw nsw i64 %2272, 24
  %2314 = icmp ult i32 %2263, 8
  br i1 %2314, label %2315, label %2328

2315:                                             ; preds = %2309
  %2316 = icmp eq i32 %2312, 0
  br i1 %2316, label %2472, label %2317

2317:                                             ; preds = %2315
  %2318 = load i8, ptr %2311, align 1, !tbaa !44
  %2319 = zext i8 %2318 to i64
  %2320 = shl nuw nsw i64 %2319, %2313
  %2321 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2310, i64 %2320), !nosanitize !47
  %2322 = extractvalue { i64, i1 } %2321, 1, !nosanitize !47
  br i1 %2322, label %2280, label %2323, !prof !48, !nosanitize !47

2323:                                             ; preds = %2317
  %2324 = extractvalue { i64, i1 } %2321, 0, !nosanitize !47
  %2325 = getelementptr inbounds nuw i8, ptr %2260, i64 4
  %2326 = add i32 %2261, -4
  %2327 = or disjoint i64 %2272, 32
  br label %2328

2328:                                             ; preds = %2323, %2309, %2295, %2281
  %2329 = phi i64 [ %2282, %2281 ], [ %2296, %2295 ], [ %2310, %2309 ], [ %2324, %2323 ]
  %2330 = phi ptr [ %2283, %2281 ], [ %2297, %2295 ], [ %2311, %2309 ], [ %2325, %2323 ]
  %2331 = phi i32 [ %2284, %2281 ], [ %2298, %2295 ], [ %2312, %2309 ], [ %2326, %2323 ]
  %2332 = phi i64 [ %2285, %2281 ], [ %2299, %2295 ], [ %2313, %2309 ], [ %2327, %2323 ]
  %2333 = trunc nuw nsw i64 %2332 to i32
  br label %2334

2334:                                             ; preds = %2328, %2269
  %2335 = phi ptr [ %2260, %2269 ], [ %2330, %2328 ]
  %2336 = phi i32 [ %2261, %2269 ], [ %2331, %2328 ]
  %2337 = phi i64 [ %2262, %2269 ], [ %2329, %2328 ]
  %2338 = phi i32 [ %2263, %2269 ], [ %2333, %2328 ]
  %2339 = and i32 %2259, 4
  %2340 = icmp eq i32 %2339, 0
  br i1 %2340, label %2346, label %2341

2341:                                             ; preds = %2334
  %2342 = load i64, ptr %51, align 8, !tbaa !21
  %2343 = and i64 %2342, 4294967295
  %2344 = icmp eq i64 %2337, %2343
  br i1 %2344, label %2346, label %2345

2345:                                             ; preds = %2341
  store ptr @.str.18, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2351

2346:                                             ; preds = %2341, %2334, %2266, %2258
  %2347 = phi ptr [ %2260, %2258 ], [ %2260, %2266 ], [ %2335, %2334 ], [ %2335, %2341 ]
  %2348 = phi i32 [ %2261, %2258 ], [ %2261, %2266 ], [ %2336, %2334 ], [ %2336, %2341 ]
  %2349 = phi i64 [ %2262, %2258 ], [ %2262, %2266 ], [ 0, %2334 ], [ 0, %2341 ]
  %2350 = phi i32 [ %2263, %2258 ], [ %2263, %2266 ], [ 0, %2334 ], [ 0, %2341 ]
  store i32 16208, ptr %21, align 8, !tbaa !20
  br label %2485

2351:                                             ; preds = %2345, %2250, %2123, %2120, %2116, %1970, %1874, %1648, %1644, %1640, %1493, %1484, %1467, %1458, %1454, %1418, %1297, %1152, %1077, %1025, %1022, %985, %903, %867, %778, %765, %262, %258, %212, %211, %196, %192, %174, %128
  %2352 = phi ptr [ %90, %128 ], [ %162, %174 ], [ %162, %192 ], [ %162, %196 ], [ %162, %211 ], [ %162, %212 ], [ %251, %258 ], [ %251, %262 ], [ %754, %765 ], [ %767, %778 ], [ %856, %867 ], [ %886, %903 ], [ %977, %985 ], [ %1012, %1022 ], [ %995, %1025 ], [ %1059, %1077 ], [ %1093, %1152 ], [ %1289, %1297 ], [ %1451, %1454 ], [ %1451, %1458 ], [ %1451, %1467 ], [ %1487, %1493 ], [ %1487, %1484 ], [ %1621, %1640 ], [ %1621, %1644 ], [ %1621, %1648 ], [ %1854, %1874 ], [ %1949, %1970 ], [ %1949, %2120 ], [ %1949, %2116 ], [ %90, %2123 ], [ %2197, %2250 ], [ %2335, %2345 ], [ %1386, %1418 ]
  %2353 = phi ptr [ %91, %128 ], [ %91, %174 ], [ %91, %192 ], [ %91, %196 ], [ %91, %211 ], [ %91, %212 ], [ %91, %258 ], [ %91, %262 ], [ %91, %765 ], [ %91, %778 ], [ %91, %867 ], [ %91, %903 ], [ %91, %985 ], [ %1024, %1022 ], [ %91, %1025 ], [ %91, %1077 ], [ %91, %1152 ], [ %91, %1297 ], [ %91, %1454 ], [ %91, %1458 ], [ %91, %1467 ], [ %1485, %1493 ], [ %1485, %1484 ], [ %91, %1640 ], [ %91, %1644 ], [ %91, %1648 ], [ %91, %1874 ], [ %91, %1970 ], [ %2117, %2120 ], [ %2117, %2116 ], [ %2127, %2123 ], [ %91, %2250 ], [ %91, %2345 ], [ %91, %1418 ]
  %2354 = phi i32 [ %92, %128 ], [ %163, %174 ], [ %163, %192 ], [ %163, %196 ], [ %163, %211 ], [ %163, %212 ], [ %252, %258 ], [ %252, %262 ], [ %755, %765 ], [ %768, %778 ], [ %857, %867 ], [ %887, %903 ], [ %978, %985 ], [ %1008, %1022 ], [ %996, %1025 ], [ %1060, %1077 ], [ %1094, %1152 ], [ %1290, %1297 ], [ %1450, %1454 ], [ %1450, %1458 ], [ %1450, %1467 ], [ %1488, %1493 ], [ %1488, %1484 ], [ %1622, %1640 ], [ %1622, %1644 ], [ %1622, %1648 ], [ %1855, %1874 ], [ %1950, %1970 ], [ %1950, %2120 ], [ %1950, %2116 ], [ %92, %2123 ], [ %2198, %2250 ], [ %2336, %2345 ], [ %1387, %1418 ]
  %2355 = phi i32 [ %93, %128 ], [ %93, %174 ], [ %93, %192 ], [ %93, %196 ], [ %93, %211 ], [ %93, %212 ], [ %93, %258 ], [ %93, %262 ], [ %93, %765 ], [ %93, %778 ], [ %93, %867 ], [ %93, %903 ], [ %93, %985 ], [ %1014, %1022 ], [ %93, %1025 ], [ %93, %1077 ], [ %93, %1152 ], [ %93, %1297 ], [ %93, %1454 ], [ %93, %1458 ], [ %93, %1467 ], [ %1486, %1493 ], [ %1486, %1484 ], [ %93, %1640 ], [ %93, %1644 ], [ %93, %1648 ], [ %93, %1874 ], [ %93, %1970 ], [ %2004, %2120 ], [ %2004, %2116 ], [ %2126, %2123 ], [ %93, %2250 ], [ %93, %2345 ], [ %93, %1418 ]
  %2356 = phi i64 [ %94, %128 ], [ 0, %174 ], [ %164, %192 ], [ %164, %196 ], [ %198, %211 ], [ 0, %212 ], [ %253, %258 ], [ %253, %262 ], [ %756, %765 ], [ %769, %778 ], [ %872, %867 ], [ %905, %903 ], [ %979, %985 ], [ %997, %1022 ], [ %997, %1025 ], [ %1072, %1077 ], [ %1095, %1152 ], [ %1294, %1297 ], [ %1449, %1454 ], [ %1449, %1458 ], [ %1449, %1467 ], [ %1489, %1493 ], [ %1489, %1484 ], [ %1630, %1640 ], [ %1630, %1644 ], [ %1630, %1648 ], [ %1863, %1874 ], [ %1951, %1970 ], [ %1951, %2120 ], [ %1951, %2116 ], [ %94, %2123 ], [ %2199, %2250 ], [ %2337, %2345 ], [ %1388, %1418 ]
  %2357 = phi i32 [ %95, %128 ], [ 0, %174 ], [ %165, %192 ], [ %165, %196 ], [ %199, %211 ], [ 0, %212 ], [ %254, %258 ], [ %254, %262 ], [ %757, %765 ], [ %770, %778 ], [ %870, %867 ], [ %904, %903 ], [ %980, %985 ], [ %998, %1022 ], [ %998, %1025 ], [ %1073, %1077 ], [ %1096, %1152 ], [ %1295, %1297 ], [ %1448, %1454 ], [ %1448, %1458 ], [ %1448, %1467 ], [ %1490, %1493 ], [ %1490, %1484 ], [ %1632, %1640 ], [ %1632, %1644 ], [ %1632, %1648 ], [ %1865, %1874 ], [ %1952, %1970 ], [ %1952, %2120 ], [ %1952, %2116 ], [ %95, %2123 ], [ %2200, %2250 ], [ %2338, %2345 ], [ %1392, %1418 ]
  %2358 = phi i32 [ %96, %128 ], [ %96, %174 ], [ %96, %192 ], [ %96, %196 ], [ %96, %211 ], [ %96, %212 ], [ %96, %258 ], [ %96, %262 ], [ %96, %765 ], [ %96, %778 ], [ %96, %867 ], [ %96, %903 ], [ %96, %985 ], [ %96, %1022 ], [ %96, %1025 ], [ %96, %1077 ], [ %96, %1152 ], [ %96, %1297 ], [ %96, %1454 ], [ %96, %1458 ], [ %96, %1467 ], [ %96, %1493 ], [ %96, %1484 ], [ %96, %1640 ], [ %96, %1644 ], [ %96, %1648 ], [ %96, %1874 ], [ %96, %1970 ], [ %96, %2120 ], [ %96, %2116 ], [ %96, %2123 ], [ %93, %2250 ], [ %2264, %2345 ], [ %96, %1418 ]
  %2359 = phi i32 [ %97, %128 ], [ %97, %174 ], [ %97, %192 ], [ %97, %196 ], [ %97, %211 ], [ %97, %212 ], [ %97, %258 ], [ %97, %262 ], [ %97, %765 ], [ %97, %778 ], [ %97, %867 ], [ %97, %903 ], [ %97, %985 ], [ %97, %1022 ], [ %97, %1025 ], [ %97, %1077 ], [ %1150, %1152 ], [ %1159, %1297 ], [ %1159, %1454 ], [ %1456, %1458 ], [ %1465, %1467 ], [ %1480, %1493 ], [ %1480, %1484 ], [ %1480, %1640 ], [ %1480, %1644 ], [ %1480, %1648 ], [ %1727, %1874 ], [ %1953, %1970 ], [ %1953, %2120 ], [ %1953, %2116 ], [ %97, %2123 ], [ %97, %2250 ], [ %97, %2345 ], [ %1159, %1418 ]
  %2360 = load i32, ptr %21, align 8, !tbaa !20
  br label %88

2361:                                             ; preds = %1196, %1192
  %2362 = phi i64 [ %1210, %1196 ], [ %1180, %1192 ]
  %2363 = zext i32 %1179 to i64
  %2364 = shl i32 %1179, 3
  %2365 = add i32 %2364, %1181
  %2366 = getelementptr i8, ptr %1178, i64 %2363
  br label %2485

2367:                                             ; preds = %142, %125
  %2368 = phi i64 [ %94, %125 ], [ %137, %142 ]
  %2369 = zext i32 %92 to i64
  %2370 = shl i32 %92, 3
  %2371 = add i32 %2370, %95
  %2372 = getelementptr i8, ptr %90, i64 %2369
  br label %2485

2373:                                             ; preds = %734, %718
  %2374 = phi i64 [ %711, %718 ], [ %729, %734 ]
  %2375 = zext i32 %710 to i64
  %2376 = shl i32 %710, 3
  %2377 = add i32 %2376, %712
  %2378 = getelementptr i8, ptr %709, i64 %2375
  br label %2485

2379:                                             ; preds = %454, %433
  %2380 = phi i64 [ %436, %433 ], [ %449, %454 ]
  %2381 = zext i32 %435 to i64
  %2382 = shl i32 %435, 3
  %2383 = add i32 %2382, %437
  %2384 = getelementptr i8, ptr %434, i64 %2381
  br label %2485

2385:                                             ; preds = %386, %366
  %2386 = phi i64 [ %368, %366 ], [ %381, %386 ]
  %2387 = zext i32 %369 to i64
  %2388 = shl i32 %369, 3
  %2389 = add i32 %2388, %367
  %2390 = getelementptr i8, ptr %370, i64 %2387
  br label %2485

2391:                                             ; preds = %331, %317, %303, %283
  %2392 = phi i64 [ %285, %283 ], [ %298, %303 ], [ %312, %317 ], [ %326, %331 ]
  %2393 = zext i32 %286 to i64
  %2394 = shl i32 %286, 3
  %2395 = add i32 %2394, %284
  %2396 = getelementptr i8, ptr %287, i64 %2393
  br label %2485

2397:                                             ; preds = %231, %117
  %2398 = phi i64 [ %94, %117 ], [ %226, %231 ]
  %2399 = zext i32 %92 to i64
  %2400 = shl i32 %92, 3
  %2401 = add i32 %2400, %95
  %2402 = getelementptr i8, ptr %90, i64 %2399
  br label %2485

2403:                                             ; preds = %821, %807, %793, %112
  %2404 = phi i64 [ %94, %112 ], [ %788, %793 ], [ %802, %807 ], [ %816, %821 ]
  %2405 = zext i32 %92 to i64
  %2406 = shl i32 %92, 3
  %2407 = add i32 %2406, %95
  %2408 = getelementptr i8, ptr %90, i64 %2405
  br label %2485

2409:                                             ; preds = %958, %944, %930, %913
  %2410 = phi i64 [ %910, %913 ], [ %925, %930 ], [ %939, %944 ], [ %953, %958 ]
  %2411 = zext i32 %92 to i64
  %2412 = shl i32 %92, 3
  %2413 = add i32 %2412, %914
  %2414 = getelementptr i8, ptr %90, i64 %2411
  br label %2485

2415:                                             ; preds = %1892, %1888
  %2416 = phi i64 [ %1905, %1892 ], [ %1882, %1888 ]
  %2417 = zext i32 %1881 to i64
  %2418 = shl i32 %1881, 3
  %2419 = add i32 %2418, %1883
  %2420 = getelementptr i8, ptr %1880, i64 %2417
  br label %2485

2421:                                             ; preds = %1806, %1802
  %2422 = phi i64 [ %1820, %1806 ], [ %1777, %1802 ]
  %2423 = zext i32 %1776 to i64
  %2424 = shl i32 %1776, 3
  %2425 = add i32 %2424, %1778
  %2426 = getelementptr i8, ptr %1775, i64 %2423
  br label %2485

2427:                                             ; preds = %1744, %1740
  %2428 = phi i64 [ %1758, %1744 ], [ %1725, %1740 ]
  %2429 = zext i32 %1724 to i64
  %2430 = shl i32 %1724, 3
  %2431 = add i32 %2430, %1726
  %2432 = getelementptr i8, ptr %1723, i64 %2429
  br label %2485

2433:                                             ; preds = %1665, %1661
  %2434 = phi i64 [ %1678, %1665 ], [ %1655, %1661 ]
  %2435 = zext i32 %1654 to i64
  %2436 = shl i32 %1654, 3
  %2437 = add i32 %2436, %1656
  %2438 = getelementptr i8, ptr %1653, i64 %2435
  br label %2485

2439:                                             ; preds = %1574, %1570
  %2440 = phi i64 [ %1588, %1574 ], [ %1544, %1570 ]
  %2441 = zext i32 %1543 to i64
  %2442 = shl i32 %1543, 3
  %2443 = add i32 %2442, %1545
  %2444 = getelementptr i8, ptr %1542, i64 %2441
  br label %2485

2445:                                             ; preds = %1511, %1507
  %2446 = phi i64 [ %1525, %1511 ], [ %1478, %1507 ]
  %2447 = zext i32 %1477 to i64
  %2448 = shl i32 %1477, 3
  %2449 = add i32 %2448, %1479
  %2450 = getelementptr i8, ptr %1476, i64 %2447
  br label %2485

2451:                                             ; preds = %1348
  %2452 = zext i32 %1228 to i64
  %2453 = shl i32 %1228, 3
  %2454 = add i32 %2453, %1230
  %2455 = getelementptr i8, ptr %1227, i64 %2452
  br label %2485

2456:                                             ; preds = %1267
  %2457 = zext i32 %1228 to i64
  %2458 = shl i32 %1228, 3
  %2459 = add i32 %2458, %1230
  %2460 = getelementptr i8, ptr %1227, i64 %2457
  br label %2485

2461:                                             ; preds = %1311
  %2462 = zext i32 %1228 to i64
  %2463 = shl i32 %1228, 3
  %2464 = add i32 %2463, %1230
  %2465 = getelementptr i8, ptr %1227, i64 %2462
  br label %2485

2466:                                             ; preds = %1039, %107
  %2467 = phi i64 [ %94, %107 ], [ %1034, %1039 ]
  %2468 = zext i32 %92 to i64
  %2469 = shl i32 %92, 3
  %2470 = add i32 %2469, %95
  %2471 = getelementptr i8, ptr %90, i64 %2468
  br label %2485

2472:                                             ; preds = %2315, %2301, %2287, %2271
  %2473 = phi i64 [ %2262, %2271 ], [ %2282, %2287 ], [ %2296, %2301 ], [ %2310, %2315 ]
  %2474 = zext i32 %2261 to i64
  %2475 = shl i32 %2261, 3
  %2476 = add i32 %2475, %2263
  %2477 = getelementptr i8, ptr %2260, i64 %2474
  br label %2485

2478:                                             ; preds = %2177, %2163, %2149, %2133
  %2479 = phi i64 [ %94, %2133 ], [ %2144, %2149 ], [ %2158, %2163 ], [ %2172, %2177 ]
  %2480 = zext i32 %92 to i64
  %2481 = shl i32 %92, 3
  %2482 = add i32 %2481, %95
  %2483 = getelementptr i8, ptr %90, i64 %2480
  br label %2485

2484:                                             ; preds = %88
  br label %2485

2485:                                             ; preds = %2484, %2478, %2472, %2466, %2461, %2456, %2451, %2445, %2439, %2433, %2427, %2421, %2415, %2409, %2403, %2397, %2391, %2385, %2379, %2373, %2367, %2361, %2346, %2121, %1948, %1468, %1108, %1001, %986, %895, %864, %850, %696, %652, %632, %588, %572, %88
  %2486 = phi i32 [ %93, %2472 ], [ %93, %2367 ], [ %93, %2361 ], [ %93, %1108 ], [ %93, %2478 ], [ %93, %2451 ], [ %93, %2409 ], [ %93, %2415 ], [ %93, %2397 ], [ %93, %2385 ], [ %93, %2433 ], [ %93, %2379 ], [ %93, %2346 ], [ %93, %2373 ], [ %93, %895 ], [ %93, %2445 ], [ %93, %2461 ], [ %93, %2439 ], [ %93, %2421 ], [ %93, %2466 ], [ %93, %2391 ], [ %93, %2427 ], [ %93, %2456 ], [ %93, %2403 ], [ %93, %88 ], [ %93, %572 ], [ %93, %588 ], [ %93, %632 ], [ %93, %652 ], [ %93, %696 ], [ %93, %850 ], [ %93, %986 ], [ %93, %1001 ], [ %93, %1468 ], [ 0, %1948 ], [ 0, %2121 ], [ %93, %864 ], [ %93, %2484 ]
  %2487 = phi ptr [ %2477, %2472 ], [ %2372, %2367 ], [ %2366, %2361 ], [ %1106, %1108 ], [ %2483, %2478 ], [ %2455, %2451 ], [ %2414, %2409 ], [ %2420, %2415 ], [ %2402, %2397 ], [ %2390, %2385 ], [ %2438, %2433 ], [ %2384, %2379 ], [ %2347, %2346 ], [ %2378, %2373 ], [ %886, %895 ], [ %2450, %2445 ], [ %2465, %2461 ], [ %2444, %2439 ], [ %2426, %2421 ], [ %2471, %2466 ], [ %2396, %2391 ], [ %2432, %2427 ], [ %2460, %2456 ], [ %2408, %2403 ], [ %90, %88 ], [ %574, %572 ], [ %581, %588 ], [ %635, %632 ], [ %645, %652 ], [ %699, %696 ], [ %851, %850 ], [ %977, %986 ], [ %995, %1001 ], [ %1451, %1468 ], [ %1949, %1948 ], [ %90, %2121 ], [ %856, %864 ], [ %90, %2484 ]
  %2488 = phi i32 [ 0, %2472 ], [ 0, %2367 ], [ 0, %2361 ], [ 0, %1108 ], [ 0, %2478 ], [ 0, %2451 ], [ 0, %2409 ], [ 0, %2415 ], [ 0, %2397 ], [ 0, %2385 ], [ 0, %2433 ], [ 0, %2379 ], [ %2348, %2346 ], [ 0, %2373 ], [ %887, %895 ], [ 0, %2445 ], [ 0, %2461 ], [ 0, %2439 ], [ 0, %2421 ], [ 0, %2466 ], [ 0, %2391 ], [ 0, %2427 ], [ 0, %2456 ], [ 0, %2403 ], [ %92, %88 ], [ %575, %572 ], [ 0, %588 ], [ %633, %632 ], [ 0, %652 ], [ %697, %696 ], [ %852, %850 ], [ %978, %986 ], [ %996, %1001 ], [ %1450, %1468 ], [ %1950, %1948 ], [ %92, %2121 ], [ 0, %864 ], [ %92, %2484 ]
  %2489 = phi i64 [ %2473, %2472 ], [ %2368, %2367 ], [ %2362, %2361 ], [ %1104, %1108 ], [ %2479, %2478 ], [ %1350, %2451 ], [ %2410, %2409 ], [ %2416, %2415 ], [ %2398, %2397 ], [ %2386, %2385 ], [ %2434, %2433 ], [ %2380, %2379 ], [ %2349, %2346 ], [ %2374, %2373 ], [ %897, %895 ], [ %2446, %2445 ], [ %1313, %2461 ], [ %2440, %2439 ], [ %2422, %2421 ], [ %2467, %2466 ], [ %2392, %2391 ], [ %2428, %2427 ], [ %1269, %2456 ], [ %2404, %2403 ], [ %94, %88 ], [ %504, %572 ], [ %583, %588 ], [ %583, %632 ], [ %647, %652 ], [ %647, %696 ], [ %853, %850 ], [ 0, %986 ], [ %997, %1001 ], [ %1449, %1468 ], [ %1951, %1948 ], [ %94, %2121 ], [ %858, %864 ], [ %94, %2484 ]
  %2490 = phi i32 [ %2476, %2472 ], [ %2371, %2367 ], [ %2365, %2361 ], [ %1103, %1108 ], [ %2482, %2478 ], [ %2454, %2451 ], [ %2413, %2409 ], [ %2419, %2415 ], [ %2401, %2397 ], [ %2389, %2385 ], [ %2437, %2433 ], [ %2383, %2379 ], [ %2350, %2346 ], [ %2377, %2373 ], [ %896, %895 ], [ %2449, %2445 ], [ %2464, %2461 ], [ %2443, %2439 ], [ %2425, %2421 ], [ %2470, %2466 ], [ %2395, %2391 ], [ %2431, %2427 ], [ %2459, %2456 ], [ %2407, %2403 ], [ %95, %88 ], [ %505, %572 ], [ %584, %588 ], [ %584, %632 ], [ %648, %652 ], [ %648, %696 ], [ %854, %850 ], [ 0, %986 ], [ %998, %1001 ], [ %1448, %1468 ], [ %1952, %1948 ], [ %95, %2121 ], [ %859, %864 ], [ %95, %2484 ]
  %2491 = phi i32 [ %2264, %2472 ], [ %96, %2367 ], [ %96, %2361 ], [ %96, %1108 ], [ %96, %2478 ], [ %96, %2451 ], [ %96, %2409 ], [ %96, %2415 ], [ %96, %2397 ], [ %96, %2385 ], [ %96, %2433 ], [ %96, %2379 ], [ %2264, %2346 ], [ %96, %2373 ], [ %96, %895 ], [ %96, %2445 ], [ %96, %2461 ], [ %96, %2439 ], [ %96, %2421 ], [ %96, %2466 ], [ %96, %2391 ], [ %96, %2427 ], [ %96, %2456 ], [ %96, %2403 ], [ %96, %88 ], [ %96, %864 ], [ %96, %2121 ], [ %96, %1948 ], [ %96, %1468 ], [ %96, %1001 ], [ %96, %986 ], [ %96, %850 ], [ %96, %696 ], [ %96, %652 ], [ %96, %632 ], [ %96, %588 ], [ %96, %572 ], [ %96, %2484 ]
  %2492 = phi i32 [ %97, %2472 ], [ %97, %2367 ], [ %1159, %2361 ], [ %97, %1108 ], [ %97, %2478 ], [ %1159, %2451 ], [ %97, %2409 ], [ %1884, %2415 ], [ %97, %2397 ], [ %97, %2385 ], [ %1657, %2433 ], [ %97, %2379 ], [ 1, %2346 ], [ %97, %2373 ], [ %97, %895 ], [ %1480, %2445 ], [ %1159, %2461 ], [ %1480, %2439 ], [ %1727, %2421 ], [ %97, %2466 ], [ %97, %2391 ], [ %1727, %2427 ], [ %1159, %2456 ], [ %97, %2403 ], [ -3, %88 ], [ %97, %572 ], [ %97, %588 ], [ %97, %632 ], [ %97, %652 ], [ %97, %696 ], [ %97, %850 ], [ %97, %986 ], [ %97, %1001 ], [ 0, %1468 ], [ %1953, %1948 ], [ %97, %2121 ], [ %97, %864 ], [ 1, %2484 ]
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %2486, ptr %41, align 8, !tbaa !52
  store ptr %2487, ptr %0, align 8, !tbaa !50
  store i32 %2488, ptr %43, align 8, !tbaa !51
  store i64 %2489, ptr %45, align 8, !tbaa !31
  store i32 %2490, ptr %47, align 8, !tbaa !32
  %2493 = load i32, ptr %79, align 4, !tbaa !38
  %2494 = icmp eq i32 %2493, 0
  br i1 %2494, label %2495, label %2504

2495:                                             ; preds = %2485
  %2496 = icmp eq i32 %2491, %2486
  br i1 %2496, label %2592, label %2497

2497:                                             ; preds = %2495
  %2498 = load i32, ptr %21, align 8, !tbaa !20
  %2499 = icmp ult i32 %2498, 16209
  br i1 %2499, label %2500, label %2592

2500:                                             ; preds = %2497
  %2501 = icmp samesign ult i32 %2498, 16206
  %2502 = icmp ne i32 %1, 4
  %2503 = or i1 %2502, %2501
  br i1 %2503, label %2504, label %2592

2504:                                             ; preds = %2500, %2485
  %2505 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2491, i32 %2486), !nosanitize !47
  %2506 = extractvalue { i32, i1 } %2505, 1, !nosanitize !47
  br i1 %2506, label %2507, label %2508, !prof !48, !nosanitize !47

2507:                                             ; preds = %2504
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2508:                                             ; preds = %2504
  %2509 = extractvalue { i32, i1 } %2505, 0, !nosanitize !47
  %2510 = load ptr, ptr %14, align 8, !tbaa !15
  %2511 = getelementptr inbounds nuw i8, ptr %2510, i64 72
  %2512 = load ptr, ptr %2511, align 8, !tbaa !41
  %2513 = icmp eq ptr %2512, null
  br i1 %2513, label %2514, label %2523

2514:                                             ; preds = %2508
  %2515 = load ptr, ptr %6, align 8, !tbaa !8
  %2516 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %2517 = load ptr, ptr %2516, align 8, !tbaa !43
  %2518 = getelementptr inbounds nuw i8, ptr %2510, i64 56
  %2519 = load i32, ptr %2518, align 8, !tbaa !42
  %2520 = shl nuw i32 1, %2519
  %2521 = call ptr %2515(ptr noundef %2517, i32 noundef %2520, i32 noundef 1) #12, !inline_history !104
  store ptr %2521, ptr %2511, align 8, !tbaa !41
  %2522 = icmp eq ptr %2521, null
  br i1 %2522, label %2591, label %2523

2523:                                             ; preds = %2514, %2508
  %2524 = phi ptr [ %2521, %2514 ], [ %2512, %2508 ]
  %2525 = getelementptr inbounds nuw i8, ptr %2510, i64 60
  %2526 = load i32, ptr %2525, align 4, !tbaa !38
  %2527 = icmp eq i32 %2526, 0
  br i1 %2527, label %2528, label %2534

2528:                                             ; preds = %2523
  %2529 = getelementptr inbounds nuw i8, ptr %2510, i64 56
  %2530 = load i32, ptr %2529, align 8, !tbaa !42
  %2531 = shl nuw i32 1, %2530
  store i32 %2531, ptr %2525, align 4, !tbaa !38
  %2532 = getelementptr inbounds nuw i8, ptr %2510, i64 68
  store i32 0, ptr %2532, align 4, !tbaa !40
  %2533 = getelementptr inbounds nuw i8, ptr %2510, i64 64
  store i32 0, ptr %2533, align 8, !tbaa !39
  br label %2534

2534:                                             ; preds = %2528, %2523
  %2535 = phi i32 [ %2531, %2528 ], [ %2526, %2523 ]
  %2536 = icmp ult i32 %2509, %2535
  br i1 %2536, label %2544, label %2537

2537:                                             ; preds = %2534
  %2538 = zext i32 %2535 to i64
  %2539 = sub nsw i64 0, %2538
  %2540 = getelementptr inbounds i8, ptr %91, i64 %2539
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2524, ptr noundef nonnull readonly align 1 dereferenceable(1) %2540, i64 %2538, i1 false)
  %2541 = getelementptr inbounds nuw i8, ptr %2510, i64 68
  store i32 0, ptr %2541, align 4, !tbaa !40
  %2542 = load i32, ptr %2525, align 4, !tbaa !38
  %2543 = getelementptr inbounds nuw i8, ptr %2510, i64 64
  store i32 %2542, ptr %2543, align 8, !tbaa !39
  br label %2592

2544:                                             ; preds = %2534
  %2545 = getelementptr inbounds nuw i8, ptr %2510, i64 68
  %2546 = load i32, ptr %2545, align 4, !tbaa !40
  %2547 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2535, i32 %2546), !nosanitize !47
  %2548 = extractvalue { i32, i1 } %2547, 1, !nosanitize !47
  br i1 %2548, label %2549, label %2550, !prof !48, !nosanitize !47

2549:                                             ; preds = %2544
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2550:                                             ; preds = %2544
  %2551 = extractvalue { i32, i1 } %2547, 0, !nosanitize !47
  %2552 = call i32 @llvm.umin.i32(i32 %2551, i32 %2509)
  %2553 = zext i32 %2546 to i64
  %2554 = getelementptr inbounds nuw i8, ptr %2524, i64 %2553
  %2555 = zext i32 %2509 to i64
  %2556 = sub nsw i64 0, %2555
  %2557 = getelementptr inbounds i8, ptr %91, i64 %2556
  %2558 = zext i32 %2552 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2554, ptr readonly align 1 %2557, i64 %2558, i1 false)
  %2559 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2509, i32 %2552), !nosanitize !47
  %2560 = extractvalue { i32, i1 } %2559, 0, !nosanitize !47
  %2561 = extractvalue { i32, i1 } %2559, 1, !nosanitize !47
  br i1 %2561, label %2562, label %2563, !prof !48, !nosanitize !47

2562:                                             ; preds = %2550
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2563:                                             ; preds = %2550
  %2564 = icmp eq i32 %2560, 0
  br i1 %2564, label %2572, label %2565

2565:                                             ; preds = %2563
  %2566 = load ptr, ptr %2511, align 8, !tbaa !41
  %2567 = zext i32 %2560 to i64
  %2568 = sub nsw i64 0, %2567
  %2569 = getelementptr inbounds i8, ptr %91, i64 %2568
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2566, ptr nonnull readonly align 1 %2569, i64 %2567, i1 false)
  store i32 %2560, ptr %2545, align 4, !tbaa !40
  %2570 = load i32, ptr %2525, align 4, !tbaa !38
  %2571 = getelementptr inbounds nuw i8, ptr %2510, i64 64
  store i32 %2570, ptr %2571, align 8, !tbaa !39
  br label %2592

2572:                                             ; preds = %2563
  %2573 = load i32, ptr %2545, align 4, !tbaa !40
  %2574 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2573, i32 %2552), !nosanitize !47
  %2575 = extractvalue { i32, i1 } %2574, 1, !nosanitize !47
  br i1 %2575, label %2576, label %2577, !prof !48, !nosanitize !47

2576:                                             ; preds = %2572
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2577:                                             ; preds = %2572
  %2578 = extractvalue { i32, i1 } %2574, 0, !nosanitize !47
  %2579 = load i32, ptr %2525, align 4, !tbaa !38
  %2580 = icmp eq i32 %2578, %2579
  %2581 = select i1 %2580, i32 0, i32 %2578
  store i32 %2581, ptr %2545, align 4
  %2582 = getelementptr inbounds nuw i8, ptr %2510, i64 64
  %2583 = load i32, ptr %2582, align 8, !tbaa !39
  %2584 = icmp ult i32 %2583, %2579
  br i1 %2584, label %2585, label %2592

2585:                                             ; preds = %2577
  %2586 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2583, i32 %2552), !nosanitize !47
  %2587 = extractvalue { i32, i1 } %2586, 1, !nosanitize !47
  br i1 %2587, label %2588, label %2589, !prof !48, !nosanitize !47

2588:                                             ; preds = %2585
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2589:                                             ; preds = %2585
  %2590 = extractvalue { i32, i1 } %2586, 0, !nosanitize !47
  store i32 %2590, ptr %2582, align 8, !tbaa !39
  br label %2592

2591:                                             ; preds = %2514
  store i32 16210, ptr %21, align 8, !tbaa !20
  br label %2669

2592:                                             ; preds = %2589, %2577, %2565, %2537, %2500, %2497, %2495
  %2593 = load i32, ptr %43, align 8, !tbaa !51
  %2594 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %44, i32 %2593), !nosanitize !47
  %2595 = extractvalue { i32, i1 } %2594, 0, !nosanitize !47
  %2596 = extractvalue { i32, i1 } %2594, 1, !nosanitize !47
  br i1 %2596, label %2597, label %2598, !prof !48, !nosanitize !47

2597:                                             ; preds = %2592
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2598:                                             ; preds = %2592
  %2599 = load i32, ptr %41, align 8, !tbaa !52
  %2600 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2491, i32 %2599), !nosanitize !47
  %2601 = extractvalue { i32, i1 } %2600, 0, !nosanitize !47
  %2602 = extractvalue { i32, i1 } %2600, 1, !nosanitize !47
  br i1 %2602, label %2603, label %2604, !prof !48, !nosanitize !47

2603:                                             ; preds = %2598
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2604:                                             ; preds = %2598
  %2605 = zext i32 %2595 to i64
  %2606 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2607 = load i64, ptr %2606, align 8, !tbaa !22
  %2608 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2607, i64 %2605), !nosanitize !47
  %2609 = extractvalue { i64, i1 } %2608, 1, !nosanitize !47
  br i1 %2609, label %2610, label %2611, !prof !48, !nosanitize !47

2610:                                             ; preds = %2604
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2611:                                             ; preds = %2604
  %2612 = extractvalue { i64, i1 } %2608, 0, !nosanitize !47
  store i64 %2612, ptr %2606, align 8, !tbaa !22
  %2613 = zext i32 %2601 to i64
  %2614 = load i64, ptr %50, align 8, !tbaa !103
  %2615 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2614, i64 %2613), !nosanitize !47
  %2616 = extractvalue { i64, i1 } %2615, 1, !nosanitize !47
  br i1 %2616, label %2617, label %2618, !prof !48, !nosanitize !47

2617:                                             ; preds = %2611
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2618:                                             ; preds = %2611
  %2619 = extractvalue { i64, i1 } %2615, 0, !nosanitize !47
  store i64 %2619, ptr %50, align 8, !tbaa !103
  %2620 = load i64, ptr %51, align 8, !tbaa !21
  %2621 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2620, i64 %2613), !nosanitize !47
  %2622 = extractvalue { i64, i1 } %2621, 1, !nosanitize !47
  br i1 %2622, label %2623, label %2624, !prof !48, !nosanitize !47

2623:                                             ; preds = %2618
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2624:                                             ; preds = %2618
  %2625 = extractvalue { i64, i1 } %2621, 0, !nosanitize !47
  store i64 %2625, ptr %51, align 8, !tbaa !21
  %2626 = load i32, ptr %49, align 8, !tbaa !24
  %2627 = and i32 %2626, 4
  %2628 = icmp ne i32 %2627, 0
  %2629 = icmp ne i32 %2601, 0
  %2630 = select i1 %2628, i1 %2629, i1 false
  br i1 %2630, label %2631, label %2644

2631:                                             ; preds = %2624
  %2632 = load i32, ptr %52, align 8, !tbaa !28
  %2633 = icmp eq i32 %2632, 0
  %2634 = load i64, ptr %53, align 8, !tbaa !54
  %2635 = load ptr, ptr %26, align 8, !tbaa !49
  %2636 = sub nsw i64 0, %2613
  %2637 = getelementptr inbounds i8, ptr %2635, i64 %2636
  br i1 %2633, label %2640, label %2638

2638:                                             ; preds = %2631
  %2639 = call i64 @crc32(i64 noundef %2634, ptr noundef nonnull %2637, i32 noundef %2601) #12
  br label %2642

2640:                                             ; preds = %2631
  %2641 = call i64 @adler32(i64 noundef %2634, ptr noundef nonnull %2637, i32 noundef %2601) #12
  br label %2642

2642:                                             ; preds = %2640, %2638
  %2643 = phi i64 [ %2639, %2638 ], [ %2641, %2640 ]
  store i64 %2643, ptr %53, align 8, !tbaa !54
  store i64 %2643, ptr %54, align 8, !tbaa !25
  br label %2644

2644:                                             ; preds = %2642, %2624
  %2645 = load i32, ptr %47, align 8, !tbaa !32
  %2646 = load i32, ptr %83, align 4, !tbaa !26
  %2647 = icmp eq i32 %2646, 0
  %2648 = select i1 %2647, i32 0, i32 64
  %2649 = add nsw i32 %2648, %2645
  %2650 = load i32, ptr %21, align 8, !tbaa !20
  %2651 = icmp eq i32 %2650, 16191
  %2652 = select i1 %2651, i32 128, i32 0
  %2653 = add nsw i32 %2649, %2652
  %2654 = icmp eq i32 %2650, 16199
  %2655 = icmp eq i32 %2650, 16194
  %2656 = or i1 %2654, %2655
  %2657 = select i1 %2656, i32 256, i32 0
  %2658 = add nsw i32 %2653, %2657
  %2659 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %2658, ptr %2659, align 8, !tbaa !23
  %2660 = icmp eq i32 %2595, 0
  %2661 = icmp eq i32 %2601, 0
  %2662 = select i1 %2660, i1 %2661, i1 false
  %2663 = icmp eq i32 %1, 4
  %2664 = or i1 %2663, %2662
  %2665 = icmp eq i32 %2492, 0
  %2666 = select i1 %2664, i1 %2665, i1 false
  %2667 = select i1 %2666, i32 -5, i32 %2492
  br label %2669

2668:                                             ; preds = %88
  br label %2669

2669:                                             ; preds = %2668, %2644, %2591, %847, %88, %32, %25, %20, %17, %13, %9, %5, %2
  %2670 = phi i32 [ -2, %20 ], [ -4, %2668 ], [ -4, %2591 ], [ %2667, %2644 ], [ 2, %847 ], [ -2, %32 ], [ -2, %25 ], [ -2, %17 ], [ -2, %13 ], [ -2, %2 ], [ -2, %9 ], [ -2, %5 ], [ -2, %88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %2670
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #6

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

declare void @inflate_fixed(ptr noundef) local_unnamed_addr #3

declare i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @inflate_fast(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @inflateEnd(ptr noundef captures(address) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !8
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
  tail call void %9(ptr noundef %29, ptr noundef nonnull %25) #12
  %30 = load ptr, ptr %8, align 8, !tbaa !14
  %31 = load ptr, ptr %12, align 8, !tbaa !15
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi ptr [ %31, %27 ], [ %13, %23 ]
  %34 = phi ptr [ %30, %27 ], [ %9, %23 ]
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %36 = load ptr, ptr %35, align 8, !tbaa !43
  tail call void %34(ptr noundef %36, ptr noundef %33) #12
  store ptr null, ptr %12, align 8, !tbaa !15
  br label %37

37:                                               ; preds = %32, %18, %15, %11, %7, %3, %1
  %38 = phi i32 [ 0, %32 ], [ -2, %18 ], [ -2, %11 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %15 ]
  ret i32 %38
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflateGetDictionary(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %56, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !8
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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
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
  store i32 %55, ptr %2, align 4, !tbaa !4
  br label %56

56:                                               ; preds = %54, %52, %20, %17, %13, %9, %5, %3
  %57 = phi i32 [ -2, %20 ], [ 0, %54 ], [ 0, %52 ], [ -2, %13 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %17 ]
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -4, 1) i32 @inflateSetDictionary(ptr noundef readonly captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %124, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !8
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

32:                                               ; preds = %31, %30
  %33 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  %34 = tail call i64 @adler32(i64 noundef %33, ptr noundef %1, i32 noundef %2) #12
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %36 = load i64, ptr %35, align 8, !tbaa !54
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
  %48 = load ptr, ptr %6, align 8, !tbaa !8
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %50 = load ptr, ptr %49, align 8, !tbaa !43
  %51 = getelementptr inbounds nuw i8, ptr %41, i64 56
  %52 = load i32, ptr %51, align 8, !tbaa !42
  %53 = shl nuw i32 1, %52
  %54 = tail call ptr %48(ptr noundef %50, i32 noundef %53, i32 noundef 1) #12, !inline_history !104
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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
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
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

119:                                              ; preds = %115
  %120 = extractvalue { i32, i1 } %116, 0, !nosanitize !47
  store i32 %120, ptr %112, align 8, !tbaa !39
  br label %122

121:                                              ; preds = %47
  store i32 16210, ptr %21, align 8, !tbaa !20
  br label %124

122:                                              ; preds = %119, %107, %95, %70
  %123 = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i32 1, ptr %123, align 4, !tbaa !27
  br label %124

124:                                              ; preds = %122, %121, %32, %30, %20, %17, %13, %9, %5, %3
  %125 = phi i32 [ 0, %122 ], [ -2, %20 ], [ -2, %30 ], [ -4, %121 ], [ -3, %32 ], [ -2, %13 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %17 ]
  ret i32 %125
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflateGetHeader(ptr noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !8
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
  store i32 0, ptr %31, align 8, !tbaa !55
  br label %32

32:                                               ; preds = %29, %24, %19, %16, %12, %8, %4, %2
  %33 = phi i32 [ 0, %29 ], [ -2, %19 ], [ -2, %24 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %16 ]
  ret i32 %33
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i32 -5, 1) i32 @inflateSync(ptr noundef captures(address) %0) local_unnamed_addr #5 {
  %2 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %3 = icmp eq ptr %0, null
  br i1 %3, label %207, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %207, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %207, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %207, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !16
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %207

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !20
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %207

24:                                               ; preds = %19
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %26 = load i32, ptr %25, align 8, !tbaa !51
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %14, i64 88
  %30 = load i32, ptr %29, align 8, !tbaa !32
  %31 = icmp ult i32 %30, 8
  br i1 %31, label %207, label %32

32:                                               ; preds = %28, %24
  %33 = icmp eq i32 %21, 16211
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = getelementptr inbounds nuw i8, ptr %14, i64 140
  %36 = load i32, ptr %35, align 4, !tbaa !4
  br label %121

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
  %46 = extractvalue { i32, i1 } %45, 0
  %47 = icmp ugt i32 %46, 7
  br i1 %47, label %49, label %48

48:                                               ; preds = %37
  store i32 %46, ptr %38, align 8, !tbaa !32
  br label %117

49:                                               ; preds = %37
  %50 = add i32 %46, -8
  %51 = lshr i32 %50, 3
  %52 = add nuw nsw i32 %51, 1
  %53 = zext nneg i32 %52 to i64
  %54 = and i64 %53, 3
  %55 = icmp ult i32 %50, 24
  br i1 %55, label %82, label %56

56:                                               ; preds = %49
  %57 = and i64 %53, 1073741820
  br label %58

58:                                               ; preds = %58, %56
  %59 = phi i64 [ %44, %56 ], [ %77, %58 ]
  %60 = phi i64 [ 0, %56 ], [ %73, %58 ]
  %61 = phi i64 [ 0, %56 ], [ %78, %58 ]
  %62 = trunc i64 %59 to i8
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 %60
  store i8 %62, ptr %63, align 1, !tbaa !44
  %64 = lshr i64 %59, 8
  %65 = trunc i64 %64 to i8
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 %60
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 1
  store i8 %65, ptr %67, align 1, !tbaa !44
  %68 = lshr i64 %59, 16
  %69 = trunc i64 %68 to i8
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 %60
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 2
  store i8 %69, ptr %71, align 1, !tbaa !44
  %72 = lshr i64 %59, 24
  %73 = add nuw nsw i64 %60, 4
  %74 = trunc i64 %72 to i8
  %75 = getelementptr inbounds nuw i8, ptr %2, i64 %60
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 3
  store i8 %74, ptr %76, align 1, !tbaa !44
  %77 = lshr i64 %59, 32
  %78 = add i64 %61, 4
  %79 = icmp eq i64 %78, %57
  br i1 %79, label %80, label %58, !llvm.loop !105

80:                                               ; preds = %58
  %81 = icmp eq i64 %54, 0
  br i1 %81, label %96, label %82

82:                                               ; preds = %80, %49
  %83 = phi i64 [ %44, %49 ], [ %77, %80 ]
  %84 = phi i64 [ 0, %49 ], [ %73, %80 ]
  %85 = icmp ne i64 %54, 0
  tail call void @llvm.assume(i1 %85)
  br label %86

86:                                               ; preds = %86, %82
  %87 = phi i64 [ %83, %82 ], [ %93, %86 ]
  %88 = phi i64 [ %84, %82 ], [ %90, %86 ]
  %89 = phi i64 [ 0, %82 ], [ %94, %86 ]
  %90 = add nuw nsw i64 %88, 1
  %91 = trunc i64 %87 to i8
  %92 = getelementptr inbounds nuw i8, ptr %2, i64 %88
  store i8 %91, ptr %92, align 1, !tbaa !44
  %93 = lshr i64 %87, 8
  %94 = add i64 %89, 1
  %95 = icmp eq i64 %94, %54
  br i1 %95, label %96, label %86, !llvm.loop !106

96:                                               ; preds = %86, %80
  %97 = phi i64 [ %77, %80 ], [ %93, %86 ]
  store i64 %97, ptr %41, align 8, !tbaa !31
  store i32 0, ptr %38, align 8, !tbaa !32
  %98 = zext nneg i32 %52 to i64
  br label %99

99:                                               ; preds = %99, %96
  %100 = phi i64 [ 0, %96 ], [ %102, %99 ]
  %101 = phi i32 [ 0, %96 ], [ %113, %99 ]
  %102 = add nuw nsw i64 %100, 1
  %103 = icmp samesign ult i32 %101, 2
  %104 = select i1 %103, i32 0, i32 255
  %105 = getelementptr inbounds nuw i8, ptr %2, i64 %100
  %106 = load i8, ptr %105, align 1, !tbaa !44
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %104, %107
  %109 = add nuw nsw i32 %101, 1
  %110 = icmp eq i8 %106, 0
  %111 = sub nuw nsw i32 4, %101
  %112 = select i1 %110, i32 %111, i32 0
  %113 = select i1 %108, i32 %109, i32 %112
  %114 = icmp samesign ult i64 %102, %98
  %115 = icmp samesign ult i32 %113, 4
  %116 = select i1 %114, i1 %115, i1 false
  br i1 %116, label %99, label %117, !llvm.loop !107

117:                                              ; preds = %99, %48
  %118 = phi i32 [ 0, %48 ], [ %113, %99 ]
  %119 = getelementptr inbounds nuw i8, ptr %14, i64 140
  store i32 %118, ptr %119, align 4, !tbaa !4
  %120 = load i32, ptr %25, align 8, !tbaa !51
  br label %121

121:                                              ; preds = %117, %34
  %122 = phi i32 [ %118, %117 ], [ %36, %34 ]
  %123 = phi i32 [ %120, %117 ], [ %26, %34 ]
  %124 = getelementptr inbounds nuw i8, ptr %14, i64 140
  %125 = load ptr, ptr %0, align 8, !tbaa !50
  %126 = icmp ne i32 %123, 0
  %127 = icmp ult i32 %122, 4
  %128 = select i1 %126, i1 %127, i1 false
  br i1 %128, label %129, label %151

129:                                              ; preds = %121
  %130 = zext i32 %123 to i64
  br label %131

131:                                              ; preds = %131, %129
  %132 = phi i64 [ 0, %129 ], [ %134, %131 ]
  %133 = phi i32 [ %122, %129 ], [ %145, %131 ]
  %134 = add nuw nsw i64 %132, 1
  %135 = icmp samesign ult i32 %133, 2
  %136 = select i1 %135, i32 0, i32 255
  %137 = getelementptr inbounds nuw i8, ptr %125, i64 %132
  %138 = load i8, ptr %137, align 1, !tbaa !44
  %139 = zext i8 %138 to i32
  %140 = icmp eq i32 %136, %139
  %141 = add nuw nsw i32 %133, 1
  %142 = icmp eq i8 %138, 0
  %143 = sub nuw nsw i32 4, %133
  %144 = select i1 %142, i32 %143, i32 0
  %145 = select i1 %140, i32 %141, i32 %144
  %146 = icmp samesign ult i64 %134, %130
  %147 = icmp samesign ult i32 %145, 4
  %148 = select i1 %146, i1 %147, i1 false
  br i1 %148, label %131, label %149, !llvm.loop !107

149:                                              ; preds = %131
  %150 = trunc nuw i64 %134 to i32
  br label %151

151:                                              ; preds = %149, %121
  %152 = phi i32 [ %122, %121 ], [ %145, %149 ]
  %153 = phi i32 [ 0, %121 ], [ %150, %149 ]
  store i32 %152, ptr %124, align 4, !tbaa !4
  %154 = load i32, ptr %25, align 8, !tbaa !51
  %155 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %154, i32 %153), !nosanitize !47
  %156 = extractvalue { i32, i1 } %155, 1, !nosanitize !47
  br i1 %156, label %157, label %158, !prof !48, !nosanitize !47

157:                                              ; preds = %151
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

158:                                              ; preds = %151
  %159 = extractvalue { i32, i1 } %155, 0, !nosanitize !47
  store i32 %159, ptr %25, align 8, !tbaa !51
  %160 = zext i32 %153 to i64
  %161 = getelementptr inbounds nuw i8, ptr %125, i64 %160
  store ptr %161, ptr %0, align 8, !tbaa !50
  %162 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %163 = load i64, ptr %162, align 8, !tbaa !22
  %164 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %163, i64 %160), !nosanitize !47
  %165 = extractvalue { i64, i1 } %164, 1, !nosanitize !47
  br i1 %165, label %166, label %167, !prof !48, !nosanitize !47

166:                                              ; preds = %158
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

167:                                              ; preds = %158
  %168 = extractvalue { i64, i1 } %164, 0, !nosanitize !47
  store i64 %168, ptr %162, align 8, !tbaa !22
  %169 = icmp eq i32 %152, 4
  br i1 %169, label %170, label %207

170:                                              ; preds = %167
  %171 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %172 = load i32, ptr %171, align 8, !tbaa !28
  %173 = icmp eq i32 %172, -1
  %174 = getelementptr inbounds nuw i8, ptr %14, i64 16
  br i1 %173, label %178, label %175

175:                                              ; preds = %170
  %176 = load i32, ptr %174, align 8, !tbaa !24
  %177 = and i32 %176, -5
  br label %178

178:                                              ; preds = %175, %170
  %179 = phi i32 [ %177, %175 ], [ 0, %170 ]
  store i32 %179, ptr %174, align 8, !tbaa !24
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %181 = load i64, ptr %180, align 8, !tbaa !103
  %182 = getelementptr inbounds nuw i8, ptr %14, i64 60
  store i32 0, ptr %182, align 4, !tbaa !38
  %183 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i32 0, ptr %183, align 8, !tbaa !39
  %184 = getelementptr inbounds nuw i8, ptr %14, i64 68
  store i32 0, ptr %184, align 4, !tbaa !40
  %185 = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 0, ptr %185, align 8, !tbaa !21
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %186, align 8, !tbaa !23
  %187 = getelementptr inbounds nuw i8, ptr %14, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %180, i8 0, i64 16, i1 false)
  %188 = load i32, ptr %187, align 8, !tbaa !24
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %178
  %191 = and i32 %188, 1
  %192 = zext nneg i32 %191 to i64
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %192, ptr %193, align 8, !tbaa !25
  br label %194

194:                                              ; preds = %190, %178
  %195 = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 0, ptr %195, align 4, !tbaa !26
  %196 = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %196, align 4, !tbaa !27
  %197 = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 32768, ptr %197, align 4, !tbaa !29
  %198 = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr null, ptr %198, align 8, !tbaa !30
  %199 = getelementptr inbounds nuw i8, ptr %14, i64 80
  store i64 0, ptr %199, align 8, !tbaa !31
  %200 = getelementptr inbounds nuw i8, ptr %14, i64 88
  store i32 0, ptr %200, align 8, !tbaa !32
  %201 = getelementptr inbounds nuw i8, ptr %14, i64 1368
  %202 = getelementptr inbounds nuw i8, ptr %14, i64 144
  store ptr %201, ptr %202, align 8, !tbaa !33
  %203 = getelementptr inbounds nuw i8, ptr %14, i64 112
  store ptr %201, ptr %203, align 8, !tbaa !34
  %204 = getelementptr inbounds nuw i8, ptr %14, i64 104
  store ptr %201, ptr %204, align 8, !tbaa !35
  %205 = getelementptr inbounds nuw i8, ptr %14, i64 7144
  store i32 1, ptr %205, align 8, !tbaa !36
  %206 = getelementptr inbounds nuw i8, ptr %14, i64 7148
  store i32 -1, ptr %206, align 4, !tbaa !37
  store i64 %168, ptr %162, align 8, !tbaa !22
  store i64 %181, ptr %180, align 8, !tbaa !103
  store i32 %172, ptr %171, align 8, !tbaa !28
  store i32 16191, ptr %20, align 8, !tbaa !20
  br label %207

207:                                              ; preds = %194, %167, %28, %19, %16, %12, %8, %4, %1
  %208 = phi i32 [ 0, %194 ], [ -2, %19 ], [ -5, %28 ], [ -3, %167 ], [ -2, %12 ], [ -2, %1 ], [ -2, %8 ], [ -2, %4 ], [ -2, %16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %208
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 2) i32 @inflateSyncPoint(ptr noundef readonly captures(address) %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !8
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

30:                                               ; preds = %25, %23, %18, %15, %11, %7, %3, %1
  %31 = phi i32 [ -2, %18 ], [ 0, %23 ], [ %29, %25 ], [ -2, %11 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %15 ]
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -4, 1) i32 @inflateCopy(ptr noundef %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %88, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !8
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
  %29 = tail call ptr %6(ptr noundef %28, i32 noundef 1, i32 noundef 7160) #12
  %30 = icmp eq ptr %29, null
  br i1 %30, label %88, label %31

31:                                               ; preds = %26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7160) %29, i8 0, i64 7160, i1 false)
  %32 = getelementptr inbounds nuw i8, ptr %14, i64 72
  %33 = load ptr, ptr %32, align 8, !tbaa !41
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %5, align 8, !tbaa !8
  %37 = load ptr, ptr %27, align 8, !tbaa !43
  %38 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %39 = load i32, ptr %38, align 8, !tbaa !42
  %40 = shl nuw i32 1, %39
  %41 = tail call ptr %36(ptr noundef %37, i32 noundef %40, i32 noundef 1) #12
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load ptr, ptr %9, align 8, !tbaa !14
  %45 = load ptr, ptr %27, align 8, !tbaa !43
  tail call void %44(ptr noundef %45, ptr noundef nonnull %29) #12
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

70:                                               ; preds = %57, %55
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

88:                                               ; preds = %85, %43, %26, %19, %16, %12, %8, %4, %2
  %89 = phi i32 [ 0, %85 ], [ -2, %19 ], [ -4, %43 ], [ -4, %26 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %16 ]
  ret i32 %89
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -3, -1) i32 @inflateUndermine(ptr noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !8
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

26:                                               ; preds = %24, %19, %16, %12, %8, %4, %2
  %27 = phi i32 [ -3, %24 ], [ -2, %19 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %16 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflateValidate(ptr noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %37, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !8
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

34:                                               ; preds = %30, %28
  %35 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %36 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %35, ptr %36, align 8, !tbaa !24
  br label %37

37:                                               ; preds = %34, %32, %19, %16, %12, %8, %4, %2
  %38 = phi i32 [ -2, %19 ], [ 0, %34 ], [ 0, %32 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %16 ]
  ret i32 %38
}

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i64 -140737488355328, 140741783257088) i64 @inflateMark(ptr noundef readonly captures(address) %0) local_unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %44, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !8
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
  %30 = load i32, ptr %29, align 4, !tbaa !61
  br label %40

31:                                               ; preds = %23
  %32 = getelementptr inbounds nuw i8, ptr %13, i64 7152
  %33 = load i32, ptr %32, align 8, !tbaa !92
  %34 = getelementptr inbounds nuw i8, ptr %13, i64 92
  %35 = load i32, ptr %34, align 4, !tbaa !61
  %36 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %33, i32 %35), !nosanitize !47
  %37 = extractvalue { i32, i1 } %36, 0, !nosanitize !47
  %38 = extractvalue { i32, i1 } %36, 1, !nosanitize !47
  br i1 %38, label %39, label %40, !prof !48, !nosanitize !47

39:                                               ; preds = %31
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

40:                                               ; preds = %31, %28, %23
  %41 = phi i32 [ %30, %28 ], [ %37, %31 ], [ 0, %23 ]
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %27, %42
  br label %44

44:                                               ; preds = %40, %18, %15, %11, %7, %3, %1
  %45 = phi i64 [ %43, %40 ], [ -65536, %18 ], [ -65536, %11 ], [ -65536, %1 ], [ -65536, %7 ], [ -65536, %3 ], [ -65536, %15 ]
  ret i64 %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 -2305843009213693952, 2305843009213693952) i64 @inflateCodesUsed(ptr noundef readonly captures(address) %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %31, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !8
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

31:                                               ; preds = %23, %18, %15, %11, %7, %3, %1
  %32 = phi i64 [ %30, %23 ], [ -1, %18 ], [ -1, %11 ], [ -1, %1 ], [ -1, %7 ], [ -1, %3 ], [ -1, %15 ]
  ret i64 %32
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
!8 = !{!9, !11, i64 64}
!9 = !{!"z_stream_s", !10, i64 0, !5, i64 8, !12, i64 16, !10, i64 24, !5, i64 32, !12, i64 40, !10, i64 48, !13, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !5, i64 88, !12, i64 96, !12, i64 104}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"p1 _ZTS14internal_state", !11, i64 0}
!14 = !{!9, !11, i64 72}
!15 = !{!9, !13, i64 56}
!16 = !{!17, !18, i64 0}
!17 = !{!"inflate_state", !18, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !12, i64 32, !12, i64 40, !19, i64 48, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !10, i64 72, !12, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !11, i64 104, !11, i64 112, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !11, i64 144, !6, i64 152, !6, i64 792, !6, i64 1368, !5, i64 7144, !5, i64 7148, !5, i64 7152}
!18 = !{!"p1 _ZTS10z_stream_s", !11, i64 0}
!19 = !{!"p1 _ZTS11gz_header_s", !11, i64 0}
!20 = !{!17, !5, i64 8}
!21 = !{!17, !12, i64 40}
!22 = !{!9, !12, i64 16}
!23 = !{!9, !5, i64 88}
!24 = !{!17, !5, i64 16}
!25 = !{!9, !12, i64 96}
!26 = !{!17, !5, i64 12}
!27 = !{!17, !5, i64 20}
!28 = !{!17, !5, i64 24}
!29 = !{!17, !5, i64 28}
!30 = !{!17, !19, i64 48}
!31 = !{!17, !12, i64 80}
!32 = !{!17, !5, i64 88}
!33 = !{!17, !11, i64 144}
!34 = !{!17, !11, i64 112}
!35 = !{!17, !11, i64 104}
!36 = !{!17, !5, i64 7144}
!37 = !{!17, !5, i64 7148}
!38 = !{!17, !5, i64 60}
!39 = !{!17, !5, i64 64}
!40 = !{!17, !5, i64 68}
!41 = !{!17, !10, i64 72}
!42 = !{!17, !5, i64 56}
!43 = !{!9, !11, i64 80}
!44 = !{!6, !6, i64 0}
!45 = !{!9, !10, i64 48}
!46 = !{ptr @inflateInit2_}
!47 = !{}
!48 = !{!"branch_weights", i32 1, i32 1048575}
!49 = !{!9, !10, i64 24}
!50 = !{!9, !10, i64 0}
!51 = !{!9, !5, i64 8}
!52 = !{!9, !5, i64 32}
!53 = !{!17, !5, i64 100}
!54 = !{!17, !12, i64 32}
!55 = !{!56, !5, i64 72}
!56 = !{!"gz_header_s", !5, i64 0, !12, i64 8, !5, i64 16, !5, i64 20, !10, i64 24, !5, i64 32, !5, i64 36, !10, i64 40, !5, i64 48, !10, i64 56, !5, i64 64, !5, i64 68, !5, i64 72}
!57 = !{!56, !5, i64 0}
!58 = !{!56, !12, i64 8}
!59 = !{!56, !5, i64 16}
!60 = !{!56, !5, i64 20}
!61 = !{!17, !5, i64 92}
!62 = !{!56, !5, i64 32}
!63 = !{!56, !10, i64 24}
!64 = !{!56, !5, i64 36}
!65 = !{!56, !10, i64 40}
!66 = !{!56, !5, i64 48}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!56, !10, i64 56}
!70 = !{!56, !5, i64 64}
!71 = distinct !{!71, !68}
!72 = !{!56, !5, i64 68}
!73 = !{!17, !5, i64 132}
!74 = !{!17, !5, i64 136}
!75 = !{!17, !5, i64 128}
!76 = !{!17, !5, i64 140}
!77 = !{!78, !78, i64 0}
!78 = !{!"short", !6, i64 0}
!79 = distinct !{!79, !68}
!80 = distinct !{!80, !68}
!81 = !{!17, !5, i64 120}
!82 = !{!"branch_weights", i32 1, i32 127}
!83 = distinct !{!83, !68}
!84 = distinct !{!84, !68}
!85 = distinct !{!85, !68}
!86 = !{!"branch_weights", i32 127, i32 134217473}
!87 = distinct !{!87, !68}
!88 = distinct !{!88, !68, !89}
!89 = !{!"llvm.loop.estimated_trip_count", i32 528415}
!90 = !{!17, !5, i64 124}
!91 = distinct !{!91, !68}
!92 = !{!17, !5, i64 7152}
!93 = !{!17, !5, i64 96}
!94 = distinct !{!94, !68}
!95 = distinct !{!95, !68, !96, !97}
!96 = !{!"llvm.loop.isvectorized", i32 1}
!97 = !{!"llvm.loop.unroll.runtime.disable"}
!98 = !{!"branch_weights", i32 4, i32 28}
!99 = distinct !{!99, !68, !96, !97}
!100 = distinct !{!100, !101}
!101 = !{!"llvm.loop.unroll.disable"}
!102 = distinct !{!102, !68, !96}
!103 = !{!9, !12, i64 40}
!104 = distinct !{null}
!105 = distinct !{!105, !68}
!106 = distinct !{!106, !101}
!107 = distinct !{!107, !68}
