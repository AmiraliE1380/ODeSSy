; ModuleID = '/home/amiralie1380/michigan/pl/zlib/inflate.c'
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

49:                                               ; preds = %15, %3, %7, %1, %11, %18, %35
  %50 = phi i32 [ 0, %35 ], [ -2, %18 ], [ -2, %11 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %15 ]
  ret i32 %50
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
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

52:                                               ; preds = %15, %3, %7, %1, %11, %38, %18
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
  %53 = load ptr, ptr %5, align 8, !tbaa !8
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

100:                                              ; preds = %16, %4, %8, %2, %12, %86, %66, %63, %60, %57, %50, %36, %26, %19
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
  %88 = phi i32 [ -4, %26 ], [ -6, %4 ], [ -2, %11 ], [ -6, %6 ], [ -2, %85 ], [ 0, %71 ]
  ret i32 %88
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #3

declare void @zcfree(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
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
  %28 = tail call ptr %20(ptr noundef %27, i32 noundef 1, i32 noundef 7160) #10, !inline_history !46
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
  tail call void %35(ptr noundef %66, ptr noundef nonnull %28) #10, !inline_history !46
  store ptr null, ptr %32, align 8, !tbaa !15
  br label %67

67:                                               ; preds = %3, %5, %10, %25, %51, %65
  %68 = phi i32 [ -4, %25 ], [ -6, %3 ], [ -2, %10 ], [ -6, %5 ], [ -2, %65 ], [ 0, %51 ]
  ret i32 %68
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflatePrime(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %51, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %51, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %51, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %51, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %51

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %51

25:                                               ; preds = %20
  %26 = icmp eq i32 %1, 0
  br i1 %26, label %51, label %27

27:                                               ; preds = %25
  %28 = icmp slt i32 %1, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = getelementptr inbounds nuw i8, ptr %15, i64 80
  store i64 0, ptr %30, align 8, !tbaa !31
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 88
  store i32 0, ptr %31, align 8, !tbaa !32
  br label %51

32:                                               ; preds = %27
  %33 = icmp samesign ugt i32 %1, 16
  br i1 %33, label %51, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 88
  %36 = load i32, ptr %35, align 8, !tbaa !32
  %37 = add i32 %36, %1
  %38 = icmp ugt i32 %37, 32
  br i1 %38, label %51, label %39

39:                                               ; preds = %34
  %40 = zext nneg i32 %1 to i64
  %41 = shl nsw i64 -1, %40
  %42 = trunc nsw i64 %41 to i32
  %43 = xor i32 %42, -1
  %44 = and i32 %2, %43
  %45 = zext nneg i32 %44 to i64
  %46 = zext nneg i32 %36 to i64
  %47 = shl i64 %45, %46
  %48 = getelementptr inbounds nuw i8, ptr %15, i64 80
  %49 = load i64, ptr %48, align 8, !tbaa !31
  %50 = add i64 %49, %47
  store i64 %50, ptr %48, align 8, !tbaa !31
  store i32 %37, ptr %35, align 8, !tbaa !32
  br label %51

51:                                               ; preds = %17, %5, %9, %3, %13, %32, %34, %25, %20, %39, %29
  %52 = phi i32 [ 0, %39 ], [ -2, %20 ], [ 0, %29 ], [ 0, %25 ], [ -2, %34 ], [ -2, %32 ], [ -2, %13 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %17 ]
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define dso_local i32 @inflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %4 = icmp eq ptr %0, null
  br i1 %4, label %2362, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %2362, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %2362, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %2362, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %2362

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %2362

25:                                               ; preds = %20
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  %28 = icmp eq ptr %27, null
  br i1 %28, label %2362, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 8, !tbaa !48
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i32, ptr %33, align 8, !tbaa !49
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %2362

36:                                               ; preds = %32, %29
  %37 = icmp eq i32 %22, 16191
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  store i32 16192, ptr %21, align 8, !tbaa !20
  br label %39

39:                                               ; preds = %36, %38
  %40 = phi i32 [ %22, %36 ], [ 16192, %38 ]
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %42 = load i32, ptr %41, align 8, !tbaa !50
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %44 = load i32, ptr %43, align 8, !tbaa !49
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

88:                                               ; preds = %2104, %39
  %89 = phi i32 [ %40, %39 ], [ %2113, %2104 ]
  %90 = phi ptr [ %30, %39 ], [ %2105, %2104 ]
  %91 = phi ptr [ %27, %39 ], [ %2106, %2104 ]
  %92 = phi i32 [ %44, %39 ], [ %2107, %2104 ]
  %93 = phi i32 [ %42, %39 ], [ %2108, %2104 ]
  %94 = phi i64 [ %46, %39 ], [ %2109, %2104 ]
  %95 = phi i32 [ %48, %39 ], [ %2110, %2104 ]
  %96 = phi i32 [ %42, %39 ], [ %2111, %2104 ]
  %97 = phi i32 [ 0, %39 ], [ %2112, %2104 ]
  %98 = ptrtoaddr ptr %91 to i64
  switch i32 %89, label %2362 [
    i32 16180, label %122
    i32 16181, label %117
    i32 16182, label %269
    i32 16183, label %339
    i32 16184, label %391
    i32 16185, label %462
    i32 16186, label %522
    i32 16187, label %582
    i32 16188, label %642
    i32 16189, label %112
    i32 16190, label %754
    i32 16191, label %764
    i32 16192, label %769
    i32 16193, label %815
    i32 16194, label %884
    i32 16195, label %889
    i32 16196, label %107
    i32 16197, label %955
    i32 16198, label %103
    i32 16199, label %1341
    i32 16200, label %1347
    i32 16201, label %101
    i32 16202, label %1563
    i32 16203, label %99
    i32 16204, label %1758
    i32 16205, label %1912
    i32 16206, label %1919
    i32 16207, label %105
    i32 16208, label %2217
    i32 16209, label %2218
    i32 16210, label %2361
  ]

99:                                               ; preds = %88
  %100 = load i32, ptr %72, align 4, !tbaa !51
  br label %1709

101:                                              ; preds = %88
  %102 = load i32, ptr %72, align 4, !tbaa !51
  br label %1511

103:                                              ; preds = %88
  %104 = load i32, ptr %60, align 4, !tbaa !52
  br label %1026

105:                                              ; preds = %88
  %106 = load i32, ptr %49, align 8, !tbaa !24
  br label %2024

107:                                              ; preds = %88
  %108 = icmp ult i32 %95, 14
  br i1 %108, label %109, label %934

109:                                              ; preds = %107
  %110 = zext nneg i32 %95 to i64
  %111 = icmp eq i32 %92, 0
  br i1 %111, label %2160, label %909

112:                                              ; preds = %88
  %113 = icmp ult i32 %95, 32
  br i1 %113, label %114, label %747

114:                                              ; preds = %112
  %115 = zext nneg i32 %95 to i64
  %116 = icmp eq i32 %92, 0
  br i1 %116, label %2150, label %707

117:                                              ; preds = %88
  %118 = icmp ult i32 %95, 16
  br i1 %118, label %119, label %238

119:                                              ; preds = %117
  %120 = zext nneg i32 %95 to i64
  %121 = icmp eq i32 %92, 0
  br i1 %121, label %2145, label %213

122:                                              ; preds = %88
  %123 = load i32, ptr %49, align 8, !tbaa !24
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %122
  %126 = icmp ult i32 %95, 16
  br i1 %126, label %127, label %156

127:                                              ; preds = %125
  %128 = zext nneg i32 %95 to i64
  %129 = icmp eq i32 %92, 0
  br i1 %129, label %2120, label %131

130:                                              ; preds = %122
  store i32 16192, ptr %21, align 8, !tbaa !20
  br label %2104

131:                                              ; preds = %127
  %132 = add i32 %92, -1
  %133 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %134 = load i8, ptr %90, align 1, !tbaa !44
  %135 = zext i8 %134 to i64
  %136 = shl nuw nsw i64 %135, %128
  %137 = add i64 %136, %94
  %138 = add nuw nsw i64 %128, 8
  %139 = icmp ult i32 %95, 8
  br i1 %139, label %140, label %150

140:                                              ; preds = %131
  %141 = icmp eq i32 %132, 0
  br i1 %141, label %2120, label %142

142:                                              ; preds = %140
  %143 = add i32 %92, -2
  %144 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %145 = load i8, ptr %133, align 1, !tbaa !44
  %146 = zext i8 %145 to i64
  %147 = shl nuw nsw i64 %146, %138
  %148 = add i64 %147, %137
  %149 = or disjoint i64 %128, 16
  br label %150

150:                                              ; preds = %142, %131
  %151 = phi i32 [ %132, %131 ], [ %143, %142 ]
  %152 = phi ptr [ %133, %131 ], [ %144, %142 ]
  %153 = phi i64 [ %137, %131 ], [ %148, %142 ]
  %154 = phi i64 [ %138, %131 ], [ %149, %142 ]
  %155 = trunc nuw nsw i64 %154 to i32
  br label %156

156:                                              ; preds = %150, %125
  %157 = phi ptr [ %90, %125 ], [ %152, %150 ]
  %158 = phi i32 [ %92, %125 ], [ %151, %150 ]
  %159 = phi i64 [ %94, %125 ], [ %153, %150 ]
  %160 = phi i32 [ %95, %125 ], [ %155, %150 ]
  %161 = and i32 %123, 2
  %162 = icmp ne i32 %161, 0
  %163 = icmp eq i64 %159, 35615
  %164 = select i1 %162, i1 %163, i1 false
  br i1 %164, label %165, label %172

165:                                              ; preds = %156
  %166 = load i32, ptr %85, align 8, !tbaa !42
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  store i32 15, ptr %85, align 8, !tbaa !42
  br label %169

169:                                              ; preds = %168, %165
  %170 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  store i64 %170, ptr %53, align 8, !tbaa !53
  store i8 31, ptr %3, align 4, !tbaa !44
  store i8 -117, ptr %87, align 1, !tbaa !44
  %171 = call i64 @crc32(i64 noundef %170, ptr noundef nonnull %3, i32 noundef 2) #10
  store i64 %171, ptr %53, align 8, !tbaa !53
  store i32 16181, ptr %21, align 8, !tbaa !20
  br label %2104

172:                                              ; preds = %156
  %173 = load ptr, ptr %84, align 8, !tbaa !30
  %174 = icmp eq ptr %173, null
  br i1 %174, label %177, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds nuw i8, ptr %173, i64 72
  store i32 -1, ptr %176, align 8, !tbaa !54
  br label %177

177:                                              ; preds = %175, %172
  %178 = and i32 %123, 1
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %187, label %180

180:                                              ; preds = %177
  %181 = shl i64 %159, 8
  %182 = and i64 %181, 65280
  %183 = lshr i64 %159, 8
  %184 = add nuw nsw i64 %182, %183
  %185 = urem i64 %184, 31
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %180, %177
  store ptr @.str.1, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2104

188:                                              ; preds = %180
  %189 = and i64 %159, 15
  %190 = icmp eq i64 %189, 8
  br i1 %190, label %192, label %191

191:                                              ; preds = %188
  store ptr @.str.2, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2104

192:                                              ; preds = %188
  %193 = lshr i64 %159, 4
  %194 = add i32 %160, -4
  %195 = trunc i64 %193 to i32
  %196 = and i32 %195, 15
  %197 = add nuw nsw i32 %196, 8
  %198 = load i32, ptr %85, align 8, !tbaa !42
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %192
  store i32 %197, ptr %85, align 8, !tbaa !42
  br label %201

201:                                              ; preds = %200, %192
  %202 = phi i32 [ %197, %200 ], [ %198, %192 ]
  %203 = icmp samesign ugt i32 %196, 7
  %204 = icmp ugt i32 %197, %202
  %205 = select i1 %203, i1 true, i1 %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  store ptr @.str.3, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2104

207:                                              ; preds = %201
  %208 = shl nuw nsw i32 256, %196
  store i32 %208, ptr %86, align 4, !tbaa !29
  store i32 0, ptr %52, align 8, !tbaa !28
  %209 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  store i64 %209, ptr %53, align 8, !tbaa !53
  store i64 %209, ptr %54, align 8, !tbaa !25
  %210 = and i64 %159, 8192
  %211 = icmp eq i64 %210, 0
  %212 = select i1 %211, i32 16191, i32 16189
  store i32 %212, ptr %21, align 8, !tbaa !20
  br label %2104

213:                                              ; preds = %119
  %214 = add i32 %92, -1
  %215 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %216 = load i8, ptr %90, align 1, !tbaa !44
  %217 = zext i8 %216 to i64
  %218 = shl nuw nsw i64 %217, %120
  %219 = add i64 %218, %94
  %220 = add nuw nsw i64 %120, 8
  %221 = icmp ult i32 %95, 8
  br i1 %221, label %222, label %232

222:                                              ; preds = %213
  %223 = icmp eq i32 %214, 0
  br i1 %223, label %2145, label %224

224:                                              ; preds = %222
  %225 = add i32 %92, -2
  %226 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %227 = load i8, ptr %215, align 1, !tbaa !44
  %228 = zext i8 %227 to i64
  %229 = shl nuw nsw i64 %228, %220
  %230 = add i64 %229, %219
  %231 = or disjoint i64 %120, 16
  br label %232

232:                                              ; preds = %224, %213
  %233 = phi i32 [ %214, %213 ], [ %225, %224 ]
  %234 = phi ptr [ %215, %213 ], [ %226, %224 ]
  %235 = phi i64 [ %219, %213 ], [ %230, %224 ]
  %236 = phi i64 [ %220, %213 ], [ %231, %224 ]
  %237 = trunc nuw nsw i64 %236 to i32
  br label %238

238:                                              ; preds = %232, %117
  %239 = phi ptr [ %90, %117 ], [ %234, %232 ]
  %240 = phi i32 [ %92, %117 ], [ %233, %232 ]
  %241 = phi i64 [ %94, %117 ], [ %235, %232 ]
  %242 = phi i32 [ %95, %117 ], [ %237, %232 ]
  %243 = trunc i64 %241 to i32
  store i32 %243, ptr %52, align 8, !tbaa !28
  %244 = and i32 %243, 255
  %245 = icmp eq i32 %244, 8
  br i1 %245, label %247, label %246

246:                                              ; preds = %238
  store ptr @.str.2, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2104

247:                                              ; preds = %238
  %248 = and i32 %243, 57344
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %247
  store ptr @.str.4, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2104

251:                                              ; preds = %247
  %252 = load ptr, ptr %84, align 8, !tbaa !30
  %253 = icmp eq ptr %252, null
  br i1 %253, label %257, label %254

254:                                              ; preds = %251
  %255 = lshr i32 %243, 8
  %256 = and i32 %255, 1
  store i32 %256, ptr %252, align 8, !tbaa !56
  br label %257

257:                                              ; preds = %254, %251
  %258 = and i32 %243, 512
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %268, label %260

260:                                              ; preds = %257
  %261 = load i32, ptr %49, align 8, !tbaa !24
  %262 = and i32 %261, 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %268, label %264

264:                                              ; preds = %260
  %265 = trunc i64 %241 to i16
  store i16 %265, ptr %3, align 4
  %266 = load i64, ptr %53, align 8, !tbaa !53
  %267 = call i64 @crc32(i64 noundef %266, ptr noundef nonnull %3, i32 noundef 2) #10
  store i64 %267, ptr %53, align 8, !tbaa !53
  br label %268

268:                                              ; preds = %264, %260, %257
  store i32 16182, ptr %21, align 8, !tbaa !20
  br label %271

269:                                              ; preds = %88
  %270 = icmp ult i32 %95, 32
  br i1 %270, label %271, label %318

271:                                              ; preds = %268, %269
  %272 = phi i32 [ 0, %268 ], [ %95, %269 ]
  %273 = phi i64 [ 0, %268 ], [ %94, %269 ]
  %274 = phi i32 [ %240, %268 ], [ %92, %269 ]
  %275 = phi ptr [ %239, %268 ], [ %90, %269 ]
  %276 = zext nneg i32 %272 to i64
  %277 = icmp eq i32 %274, 0
  br i1 %277, label %2140, label %278

278:                                              ; preds = %271
  %279 = add i32 %274, -1
  %280 = getelementptr inbounds nuw i8, ptr %275, i64 1
  %281 = load i8, ptr %275, align 1, !tbaa !44
  %282 = zext i8 %281 to i64
  %283 = shl nuw nsw i64 %282, %276
  %284 = add i64 %283, %273
  %285 = add nuw nsw i64 %276, 8
  %286 = icmp samesign ult i32 %272, 24
  br i1 %286, label %287, label %318

287:                                              ; preds = %278
  %288 = icmp eq i32 %279, 0
  br i1 %288, label %2140, label %289

289:                                              ; preds = %287
  %290 = add i32 %274, -2
  %291 = getelementptr inbounds nuw i8, ptr %275, i64 2
  %292 = load i8, ptr %280, align 1, !tbaa !44
  %293 = zext i8 %292 to i64
  %294 = shl nuw nsw i64 %293, %285
  %295 = add i64 %294, %284
  %296 = add nuw nsw i64 %276, 16
  %297 = icmp samesign ult i32 %272, 16
  br i1 %297, label %298, label %318

298:                                              ; preds = %289
  %299 = icmp eq i32 %290, 0
  br i1 %299, label %2140, label %300

300:                                              ; preds = %298
  %301 = add i32 %274, -3
  %302 = getelementptr inbounds nuw i8, ptr %275, i64 3
  %303 = load i8, ptr %291, align 1, !tbaa !44
  %304 = zext i8 %303 to i64
  %305 = shl nuw nsw i64 %304, %296
  %306 = add i64 %305, %295
  %307 = add nuw nsw i64 %276, 24
  %308 = icmp samesign ult i32 %272, 8
  br i1 %308, label %309, label %318

309:                                              ; preds = %300
  %310 = icmp eq i32 %301, 0
  br i1 %310, label %2140, label %311

311:                                              ; preds = %309
  %312 = add i32 %274, -4
  %313 = getelementptr inbounds nuw i8, ptr %275, i64 4
  %314 = load i8, ptr %302, align 1, !tbaa !44
  %315 = zext i8 %314 to i64
  %316 = shl nuw nsw i64 %315, %307
  %317 = add i64 %316, %306
  br label %318

318:                                              ; preds = %278, %289, %300, %311, %269
  %319 = phi ptr [ %90, %269 ], [ %280, %278 ], [ %291, %289 ], [ %302, %300 ], [ %313, %311 ]
  %320 = phi i32 [ %92, %269 ], [ %279, %278 ], [ %290, %289 ], [ %301, %300 ], [ %312, %311 ]
  %321 = phi i64 [ %94, %269 ], [ %284, %278 ], [ %295, %289 ], [ %306, %300 ], [ %317, %311 ]
  %322 = load ptr, ptr %84, align 8, !tbaa !30
  %323 = icmp eq ptr %322, null
  br i1 %323, label %326, label %324

324:                                              ; preds = %318
  %325 = getelementptr inbounds nuw i8, ptr %322, i64 8
  store i64 %321, ptr %325, align 8, !tbaa !57
  br label %326

326:                                              ; preds = %324, %318
  %327 = load i32, ptr %52, align 8, !tbaa !28
  %328 = and i32 %327, 512
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %338, label %330

330:                                              ; preds = %326
  %331 = load i32, ptr %49, align 8, !tbaa !24
  %332 = and i32 %331, 4
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %338, label %334

334:                                              ; preds = %330
  %335 = trunc i64 %321 to i32
  store i32 %335, ptr %3, align 4
  %336 = load i64, ptr %53, align 8, !tbaa !53
  %337 = call i64 @crc32(i64 noundef %336, ptr noundef nonnull %3, i32 noundef 4) #10
  store i64 %337, ptr %53, align 8, !tbaa !53
  br label %338

338:                                              ; preds = %334, %330, %326
  store i32 16183, ptr %21, align 8, !tbaa !20
  br label %341

339:                                              ; preds = %88
  %340 = icmp ult i32 %95, 16
  br i1 %340, label %341, label %366

341:                                              ; preds = %338, %339
  %342 = phi i32 [ 0, %338 ], [ %95, %339 ]
  %343 = phi i64 [ 0, %338 ], [ %94, %339 ]
  %344 = phi i32 [ %320, %338 ], [ %92, %339 ]
  %345 = phi ptr [ %319, %338 ], [ %90, %339 ]
  %346 = zext nneg i32 %342 to i64
  %347 = icmp eq i32 %344, 0
  br i1 %347, label %2135, label %348

348:                                              ; preds = %341
  %349 = add i32 %344, -1
  %350 = getelementptr inbounds nuw i8, ptr %345, i64 1
  %351 = load i8, ptr %345, align 1, !tbaa !44
  %352 = zext i8 %351 to i64
  %353 = shl nuw nsw i64 %352, %346
  %354 = add i64 %353, %343
  %355 = add nuw nsw i64 %346, 8
  %356 = icmp samesign ult i32 %342, 8
  br i1 %356, label %357, label %366

357:                                              ; preds = %348
  %358 = icmp eq i32 %349, 0
  br i1 %358, label %2135, label %359

359:                                              ; preds = %357
  %360 = add i32 %344, -2
  %361 = getelementptr inbounds nuw i8, ptr %345, i64 2
  %362 = load i8, ptr %350, align 1, !tbaa !44
  %363 = zext i8 %362 to i64
  %364 = shl nuw nsw i64 %363, %355
  %365 = add i64 %364, %354
  br label %366

366:                                              ; preds = %348, %359, %339
  %367 = phi ptr [ %90, %339 ], [ %350, %348 ], [ %361, %359 ]
  %368 = phi i32 [ %92, %339 ], [ %349, %348 ], [ %360, %359 ]
  %369 = phi i64 [ %94, %339 ], [ %354, %348 ], [ %365, %359 ]
  %370 = load ptr, ptr %84, align 8, !tbaa !30
  %371 = icmp eq ptr %370, null
  br i1 %371, label %379, label %372

372:                                              ; preds = %366
  %373 = trunc i64 %369 to i32
  %374 = and i32 %373, 255
  %375 = getelementptr inbounds nuw i8, ptr %370, i64 16
  store i32 %374, ptr %375, align 8, !tbaa !58
  %376 = lshr i64 %369, 8
  %377 = trunc i64 %376 to i32
  %378 = getelementptr inbounds nuw i8, ptr %370, i64 20
  store i32 %377, ptr %378, align 4, !tbaa !59
  br label %379

379:                                              ; preds = %372, %366
  %380 = load i32, ptr %52, align 8, !tbaa !28
  %381 = and i32 %380, 512
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %395, label %383

383:                                              ; preds = %379
  %384 = load i32, ptr %49, align 8, !tbaa !24
  %385 = and i32 %384, 4
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %395, label %387

387:                                              ; preds = %383
  %388 = trunc i64 %369 to i16
  store i16 %388, ptr %3, align 4
  %389 = load i64, ptr %53, align 8, !tbaa !53
  %390 = call i64 @crc32(i64 noundef %389, ptr noundef nonnull %3, i32 noundef 2) #10
  store i64 %390, ptr %53, align 8, !tbaa !53
  br label %395

391:                                              ; preds = %88
  %392 = load i32, ptr %52, align 8, !tbaa !28
  %393 = and i32 %392, 1024
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %448, label %399

395:                                              ; preds = %387, %383, %379
  store i32 16184, ptr %21, align 8, !tbaa !20
  %396 = load i32, ptr %52, align 8, !tbaa !28
  %397 = and i32 %396, 1024
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %448, label %401

399:                                              ; preds = %391
  %400 = icmp ult i32 %95, 16
  br i1 %400, label %401, label %427

401:                                              ; preds = %395, %399
  %402 = phi ptr [ %90, %399 ], [ %367, %395 ]
  %403 = phi i32 [ %92, %399 ], [ %368, %395 ]
  %404 = phi i64 [ %94, %399 ], [ 0, %395 ]
  %405 = phi i32 [ %95, %399 ], [ 0, %395 ]
  %406 = phi i32 [ %392, %399 ], [ %396, %395 ]
  %407 = zext nneg i32 %405 to i64
  %408 = icmp eq i32 %403, 0
  br i1 %408, label %2130, label %409

409:                                              ; preds = %401
  %410 = add i32 %403, -1
  %411 = getelementptr inbounds nuw i8, ptr %402, i64 1
  %412 = load i8, ptr %402, align 1, !tbaa !44
  %413 = zext i8 %412 to i64
  %414 = shl nuw nsw i64 %413, %407
  %415 = add i64 %414, %404
  %416 = add nuw nsw i64 %407, 8
  %417 = icmp samesign ult i32 %405, 8
  br i1 %417, label %418, label %427

418:                                              ; preds = %409
  %419 = icmp eq i32 %410, 0
  br i1 %419, label %2130, label %420

420:                                              ; preds = %418
  %421 = add i32 %403, -2
  %422 = getelementptr inbounds nuw i8, ptr %402, i64 2
  %423 = load i8, ptr %411, align 1, !tbaa !44
  %424 = zext i8 %423 to i64
  %425 = shl nuw nsw i64 %424, %416
  %426 = add i64 %425, %415
  br label %427

427:                                              ; preds = %409, %420, %399
  %428 = phi i32 [ %392, %399 ], [ %406, %420 ], [ %406, %409 ]
  %429 = phi ptr [ %90, %399 ], [ %411, %409 ], [ %422, %420 ]
  %430 = phi i32 [ %92, %399 ], [ %410, %409 ], [ %421, %420 ]
  %431 = phi i64 [ %94, %399 ], [ %415, %409 ], [ %426, %420 ]
  %432 = trunc i64 %431 to i32
  store i32 %432, ptr %56, align 4, !tbaa !60
  %433 = load ptr, ptr %84, align 8, !tbaa !30
  %434 = icmp eq ptr %433, null
  br i1 %434, label %437, label %435

435:                                              ; preds = %427
  %436 = getelementptr inbounds nuw i8, ptr %433, i64 32
  store i32 %432, ptr %436, align 8, !tbaa !61
  br label %437

437:                                              ; preds = %435, %427
  %438 = and i32 %428, 512
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %457, label %440

440:                                              ; preds = %437
  %441 = load i32, ptr %49, align 8, !tbaa !24
  %442 = and i32 %441, 4
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %457, label %444

444:                                              ; preds = %440
  %445 = trunc i64 %431 to i16
  store i16 %445, ptr %3, align 4
  %446 = load i64, ptr %53, align 8, !tbaa !53
  %447 = call i64 @crc32(i64 noundef %446, ptr noundef nonnull %3, i32 noundef 2) #10
  store i64 %447, ptr %53, align 8, !tbaa !53
  br label %457

448:                                              ; preds = %395, %391
  %449 = phi i32 [ 0, %395 ], [ %95, %391 ]
  %450 = phi i64 [ 0, %395 ], [ %94, %391 ]
  %451 = phi i32 [ %368, %395 ], [ %92, %391 ]
  %452 = phi ptr [ %367, %395 ], [ %90, %391 ]
  %453 = load ptr, ptr %84, align 8, !tbaa !30
  %454 = icmp eq ptr %453, null
  br i1 %454, label %457, label %455

455:                                              ; preds = %448
  %456 = getelementptr inbounds nuw i8, ptr %453, i64 24
  store ptr null, ptr %456, align 8, !tbaa !62
  br label %457

457:                                              ; preds = %444, %440, %437, %448, %455
  %458 = phi ptr [ %452, %448 ], [ %452, %455 ], [ %429, %437 ], [ %429, %440 ], [ %429, %444 ]
  %459 = phi i32 [ %451, %448 ], [ %451, %455 ], [ %430, %437 ], [ %430, %440 ], [ %430, %444 ]
  %460 = phi i64 [ %450, %448 ], [ %450, %455 ], [ 0, %437 ], [ 0, %440 ], [ 0, %444 ]
  %461 = phi i32 [ %449, %448 ], [ %449, %455 ], [ 0, %437 ], [ 0, %440 ], [ 0, %444 ]
  store i32 16185, ptr %21, align 8, !tbaa !20
  br label %462

462:                                              ; preds = %88, %457
  %463 = phi ptr [ %458, %457 ], [ %90, %88 ]
  %464 = phi i32 [ %459, %457 ], [ %92, %88 ]
  %465 = phi i64 [ %460, %457 ], [ %94, %88 ]
  %466 = phi i32 [ %461, %457 ], [ %95, %88 ]
  %467 = load i32, ptr %52, align 8, !tbaa !28
  %468 = and i32 %467, 1024
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %519, label %470

470:                                              ; preds = %462
  %471 = load i32, ptr %56, align 4, !tbaa !60
  %472 = call i32 @llvm.umin.i32(i32 %471, i32 %464)
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %514, label %474

474:                                              ; preds = %470
  %475 = load ptr, ptr %84, align 8, !tbaa !30
  %476 = icmp eq ptr %475, null
  br i1 %476, label %497, label %477

477:                                              ; preds = %474
  %478 = getelementptr inbounds nuw i8, ptr %475, i64 24
  %479 = load ptr, ptr %478, align 8, !tbaa !62
  %480 = icmp eq ptr %479, null
  br i1 %480, label %497, label %481

481:                                              ; preds = %477
  %482 = getelementptr inbounds nuw i8, ptr %475, i64 32
  %483 = load i32, ptr %482, align 8, !tbaa !61
  %484 = sub i32 %483, %471
  %485 = getelementptr inbounds nuw i8, ptr %475, i64 36
  %486 = load i32, ptr %485, align 4, !tbaa !63
  %487 = icmp ult i32 %484, %486
  br i1 %487, label %488, label %497

488:                                              ; preds = %481
  %489 = zext i32 %484 to i64
  %490 = getelementptr inbounds nuw i8, ptr %479, i64 %489
  %491 = add i32 %484, %472
  %492 = icmp ugt i32 %491, %486
  %493 = sub nuw i32 %486, %484
  %494 = select i1 %492, i32 %493, i32 %472
  %495 = zext i32 %494 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %490, ptr align 1 %463, i64 %495, i1 false)
  %496 = load i32, ptr %52, align 8, !tbaa !28
  br label %497

497:                                              ; preds = %488, %481, %477, %474
  %498 = phi i32 [ %496, %488 ], [ %467, %481 ], [ %467, %477 ], [ %467, %474 ]
  %499 = and i32 %498, 512
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %508, label %501

501:                                              ; preds = %497
  %502 = load i32, ptr %49, align 8, !tbaa !24
  %503 = and i32 %502, 4
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %508, label %505

505:                                              ; preds = %501
  %506 = load i64, ptr %53, align 8, !tbaa !53
  %507 = call i64 @crc32(i64 noundef %506, ptr noundef %463, i32 noundef %472) #10
  store i64 %507, ptr %53, align 8, !tbaa !53
  br label %508

508:                                              ; preds = %505, %501, %497
  %509 = sub i32 %464, %472
  %510 = zext i32 %472 to i64
  %511 = getelementptr inbounds nuw i8, ptr %463, i64 %510
  %512 = load i32, ptr %56, align 4, !tbaa !60
  %513 = sub i32 %512, %472
  store i32 %513, ptr %56, align 4, !tbaa !60
  br label %514

514:                                              ; preds = %508, %470
  %515 = phi i32 [ %513, %508 ], [ %471, %470 ]
  %516 = phi ptr [ %511, %508 ], [ %463, %470 ]
  %517 = phi i32 [ %509, %508 ], [ %464, %470 ]
  %518 = icmp eq i32 %515, 0
  br i1 %518, label %519, label %2218

519:                                              ; preds = %514, %462
  %520 = phi ptr [ %516, %514 ], [ %463, %462 ]
  %521 = phi i32 [ %517, %514 ], [ %464, %462 ]
  store i32 0, ptr %56, align 4, !tbaa !60
  store i32 16186, ptr %21, align 8, !tbaa !20
  br label %522

522:                                              ; preds = %88, %519
  %523 = phi ptr [ %520, %519 ], [ %90, %88 ]
  %524 = phi i32 [ %521, %519 ], [ %92, %88 ]
  %525 = phi i64 [ %465, %519 ], [ %94, %88 ]
  %526 = phi i32 [ %466, %519 ], [ %95, %88 ]
  %527 = load i32, ptr %52, align 8, !tbaa !28
  %528 = and i32 %527, 2048
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %574, label %530

530:                                              ; preds = %522
  %531 = icmp eq i32 %524, 0
  br i1 %531, label %2218, label %532

532:                                              ; preds = %530
  %533 = zext i32 %524 to i64
  br label %534

534:                                              ; preds = %532, %554
  %535 = phi i64 [ 0, %532 ], [ %536, %554 ]
  %536 = add nuw nsw i64 %535, 1
  %537 = getelementptr inbounds nuw i8, ptr %523, i64 %535
  %538 = load i8, ptr %537, align 1, !tbaa !44
  %539 = load ptr, ptr %84, align 8, !tbaa !30
  %540 = icmp eq ptr %539, null
  br i1 %540, label %554, label %541

541:                                              ; preds = %534
  %542 = getelementptr inbounds nuw i8, ptr %539, i64 40
  %543 = load ptr, ptr %542, align 8, !tbaa !64
  %544 = icmp eq ptr %543, null
  br i1 %544, label %554, label %545

545:                                              ; preds = %541
  %546 = load i32, ptr %56, align 4, !tbaa !60
  %547 = getelementptr inbounds nuw i8, ptr %539, i64 48
  %548 = load i32, ptr %547, align 8, !tbaa !65
  %549 = icmp ult i32 %546, %548
  br i1 %549, label %550, label %554

550:                                              ; preds = %545
  %551 = add nuw i32 %546, 1
  store i32 %551, ptr %56, align 4, !tbaa !60
  %552 = zext i32 %546 to i64
  %553 = getelementptr inbounds nuw i8, ptr %543, i64 %552
  store i8 %538, ptr %553, align 1, !tbaa !44
  br label %554

554:                                              ; preds = %534, %541, %545, %550
  %555 = icmp ne i8 %538, 0
  %556 = icmp samesign ult i64 %536, %533
  %557 = select i1 %555, i1 %556, i1 false
  br i1 %557, label %534, label %558, !llvm.loop !66

558:                                              ; preds = %554
  %559 = trunc nuw i64 %536 to i32
  %560 = load i32, ptr %52, align 8, !tbaa !28
  %561 = and i32 %560, 512
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %570, label %563

563:                                              ; preds = %558
  %564 = load i32, ptr %49, align 8, !tbaa !24
  %565 = and i32 %564, 4
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %570, label %567

567:                                              ; preds = %563
  %568 = load i64, ptr %53, align 8, !tbaa !53
  %569 = call i64 @crc32(i64 noundef %568, ptr noundef nonnull %523, i32 noundef %559) #10
  store i64 %569, ptr %53, align 8, !tbaa !53
  br label %570

570:                                              ; preds = %567, %563, %558
  %571 = sub i32 %524, %559
  %572 = and i64 %536, 4294967295
  %573 = getelementptr inbounds nuw i8, ptr %523, i64 %572
  br i1 %555, label %2218, label %579

574:                                              ; preds = %522
  %575 = load ptr, ptr %84, align 8, !tbaa !30
  %576 = icmp eq ptr %575, null
  br i1 %576, label %579, label %577

577:                                              ; preds = %574
  %578 = getelementptr inbounds nuw i8, ptr %575, i64 40
  store ptr null, ptr %578, align 8, !tbaa !64
  br label %579

579:                                              ; preds = %574, %577, %570
  %580 = phi ptr [ %573, %570 ], [ %523, %577 ], [ %523, %574 ]
  %581 = phi i32 [ %571, %570 ], [ %524, %577 ], [ %524, %574 ]
  store i32 0, ptr %56, align 4, !tbaa !60
  store i32 16187, ptr %21, align 8, !tbaa !20
  br label %582

582:                                              ; preds = %88, %579
  %583 = phi ptr [ %580, %579 ], [ %90, %88 ]
  %584 = phi i32 [ %581, %579 ], [ %92, %88 ]
  %585 = phi i64 [ %525, %579 ], [ %94, %88 ]
  %586 = phi i32 [ %526, %579 ], [ %95, %88 ]
  %587 = load i32, ptr %52, align 8, !tbaa !28
  %588 = and i32 %587, 4096
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %634, label %590

590:                                              ; preds = %582
  %591 = icmp eq i32 %584, 0
  br i1 %591, label %2218, label %592

592:                                              ; preds = %590
  %593 = zext i32 %584 to i64
  br label %594

594:                                              ; preds = %592, %614
  %595 = phi i64 [ 0, %592 ], [ %596, %614 ]
  %596 = add nuw nsw i64 %595, 1
  %597 = getelementptr inbounds nuw i8, ptr %583, i64 %595
  %598 = load i8, ptr %597, align 1, !tbaa !44
  %599 = load ptr, ptr %84, align 8, !tbaa !30
  %600 = icmp eq ptr %599, null
  br i1 %600, label %614, label %601

601:                                              ; preds = %594
  %602 = getelementptr inbounds nuw i8, ptr %599, i64 56
  %603 = load ptr, ptr %602, align 8, !tbaa !68
  %604 = icmp eq ptr %603, null
  br i1 %604, label %614, label %605

605:                                              ; preds = %601
  %606 = load i32, ptr %56, align 4, !tbaa !60
  %607 = getelementptr inbounds nuw i8, ptr %599, i64 64
  %608 = load i32, ptr %607, align 8, !tbaa !69
  %609 = icmp ult i32 %606, %608
  br i1 %609, label %610, label %614

610:                                              ; preds = %605
  %611 = add nuw i32 %606, 1
  store i32 %611, ptr %56, align 4, !tbaa !60
  %612 = zext i32 %606 to i64
  %613 = getelementptr inbounds nuw i8, ptr %603, i64 %612
  store i8 %598, ptr %613, align 1, !tbaa !44
  br label %614

614:                                              ; preds = %594, %601, %605, %610
  %615 = icmp ne i8 %598, 0
  %616 = icmp samesign ult i64 %596, %593
  %617 = select i1 %615, i1 %616, i1 false
  br i1 %617, label %594, label %618, !llvm.loop !70

618:                                              ; preds = %614
  %619 = trunc nuw i64 %596 to i32
  %620 = load i32, ptr %52, align 8, !tbaa !28
  %621 = and i32 %620, 512
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %630, label %623

623:                                              ; preds = %618
  %624 = load i32, ptr %49, align 8, !tbaa !24
  %625 = and i32 %624, 4
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %630, label %627

627:                                              ; preds = %623
  %628 = load i64, ptr %53, align 8, !tbaa !53
  %629 = call i64 @crc32(i64 noundef %628, ptr noundef nonnull %583, i32 noundef %619) #10
  store i64 %629, ptr %53, align 8, !tbaa !53
  br label %630

630:                                              ; preds = %627, %623, %618
  %631 = sub i32 %584, %619
  %632 = and i64 %596, 4294967295
  %633 = getelementptr inbounds nuw i8, ptr %583, i64 %632
  br i1 %615, label %2218, label %639

634:                                              ; preds = %582
  %635 = load ptr, ptr %84, align 8, !tbaa !30
  %636 = icmp eq ptr %635, null
  br i1 %636, label %639, label %637

637:                                              ; preds = %634
  %638 = getelementptr inbounds nuw i8, ptr %635, i64 56
  store ptr null, ptr %638, align 8, !tbaa !68
  br label %639

639:                                              ; preds = %634, %637, %630
  %640 = phi ptr [ %633, %630 ], [ %583, %637 ], [ %583, %634 ]
  %641 = phi i32 [ %631, %630 ], [ %584, %637 ], [ %584, %634 ]
  store i32 16188, ptr %21, align 8, !tbaa !20
  br label %642

642:                                              ; preds = %88, %639
  %643 = phi ptr [ %640, %639 ], [ %90, %88 ]
  %644 = phi i32 [ %641, %639 ], [ %92, %88 ]
  %645 = phi i64 [ %585, %639 ], [ %94, %88 ]
  %646 = phi i32 [ %586, %639 ], [ %95, %88 ]
  %647 = load i32, ptr %52, align 8, !tbaa !28
  %648 = and i32 %647, 512
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %693, label %650

650:                                              ; preds = %642
  %651 = icmp ult i32 %646, 16
  br i1 %651, label %652, label %680

652:                                              ; preds = %650
  %653 = zext nneg i32 %646 to i64
  %654 = icmp eq i32 %644, 0
  br i1 %654, label %2125, label %655

655:                                              ; preds = %652
  %656 = add i32 %644, -1
  %657 = getelementptr inbounds nuw i8, ptr %643, i64 1
  %658 = load i8, ptr %643, align 1, !tbaa !44
  %659 = zext i8 %658 to i64
  %660 = shl nuw nsw i64 %659, %653
  %661 = add i64 %660, %645
  %662 = add nuw nsw i64 %653, 8
  %663 = icmp ult i32 %646, 8
  br i1 %663, label %664, label %674

664:                                              ; preds = %655
  %665 = icmp eq i32 %656, 0
  br i1 %665, label %2125, label %666

666:                                              ; preds = %664
  %667 = add i32 %644, -2
  %668 = getelementptr inbounds nuw i8, ptr %643, i64 2
  %669 = load i8, ptr %657, align 1, !tbaa !44
  %670 = zext i8 %669 to i64
  %671 = shl nuw nsw i64 %670, %662
  %672 = add i64 %671, %661
  %673 = or disjoint i64 %653, 16
  br label %674

674:                                              ; preds = %666, %655
  %675 = phi i32 [ %656, %655 ], [ %667, %666 ]
  %676 = phi ptr [ %657, %655 ], [ %668, %666 ]
  %677 = phi i64 [ %661, %655 ], [ %672, %666 ]
  %678 = phi i64 [ %662, %655 ], [ %673, %666 ]
  %679 = trunc nuw nsw i64 %678 to i32
  br label %680

680:                                              ; preds = %674, %650
  %681 = phi ptr [ %643, %650 ], [ %676, %674 ]
  %682 = phi i32 [ %644, %650 ], [ %675, %674 ]
  %683 = phi i64 [ %645, %650 ], [ %677, %674 ]
  %684 = phi i32 [ %646, %650 ], [ %679, %674 ]
  %685 = load i32, ptr %49, align 8, !tbaa !24
  %686 = and i32 %685, 4
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %693, label %688

688:                                              ; preds = %680
  %689 = load i64, ptr %53, align 8, !tbaa !53
  %690 = and i64 %689, 65535
  %691 = icmp eq i64 %683, %690
  br i1 %691, label %693, label %692

692:                                              ; preds = %688
  store ptr @.str.5, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2104

693:                                              ; preds = %688, %680, %642
  %694 = phi ptr [ %643, %642 ], [ %681, %680 ], [ %681, %688 ]
  %695 = phi i32 [ %644, %642 ], [ %682, %680 ], [ %682, %688 ]
  %696 = phi i64 [ %645, %642 ], [ 0, %680 ], [ 0, %688 ]
  %697 = phi i32 [ %646, %642 ], [ 0, %680 ], [ 0, %688 ]
  %698 = load ptr, ptr %84, align 8, !tbaa !30
  %699 = icmp eq ptr %698, null
  br i1 %699, label %705, label %700

700:                                              ; preds = %693
  %701 = lshr i32 %647, 9
  %702 = and i32 %701, 1
  %703 = getelementptr inbounds nuw i8, ptr %698, i64 68
  store i32 %702, ptr %703, align 4, !tbaa !71
  %704 = getelementptr inbounds nuw i8, ptr %698, i64 72
  store i32 1, ptr %704, align 8, !tbaa !54
  br label %705

705:                                              ; preds = %700, %693
  %706 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  store i64 %706, ptr %53, align 8, !tbaa !53
  store i64 %706, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2104

707:                                              ; preds = %114
  %708 = add i32 %92, -1
  %709 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %710 = load i8, ptr %90, align 1, !tbaa !44
  %711 = zext i8 %710 to i64
  %712 = shl nuw nsw i64 %711, %115
  %713 = add i64 %712, %94
  %714 = add nuw nsw i64 %115, 8
  %715 = icmp ult i32 %95, 24
  br i1 %715, label %716, label %747

716:                                              ; preds = %707
  %717 = icmp eq i32 %708, 0
  br i1 %717, label %2150, label %718

718:                                              ; preds = %716
  %719 = add i32 %92, -2
  %720 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %721 = load i8, ptr %709, align 1, !tbaa !44
  %722 = zext i8 %721 to i64
  %723 = shl nuw nsw i64 %722, %714
  %724 = add i64 %723, %713
  %725 = add nuw nsw i64 %115, 16
  %726 = icmp ult i32 %95, 16
  br i1 %726, label %727, label %747

727:                                              ; preds = %718
  %728 = icmp eq i32 %719, 0
  br i1 %728, label %2150, label %729

729:                                              ; preds = %727
  %730 = add i32 %92, -3
  %731 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %732 = load i8, ptr %720, align 1, !tbaa !44
  %733 = zext i8 %732 to i64
  %734 = shl nuw nsw i64 %733, %725
  %735 = add i64 %734, %724
  %736 = add nuw nsw i64 %115, 24
  %737 = icmp ult i32 %95, 8
  br i1 %737, label %738, label %747

738:                                              ; preds = %729
  %739 = icmp eq i32 %730, 0
  br i1 %739, label %2150, label %740

740:                                              ; preds = %738
  %741 = add i32 %92, -4
  %742 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %743 = load i8, ptr %731, align 1, !tbaa !44
  %744 = zext i8 %743 to i64
  %745 = shl nuw nsw i64 %744, %736
  %746 = add i64 %745, %735
  br label %747

747:                                              ; preds = %707, %718, %729, %740, %112
  %748 = phi ptr [ %90, %112 ], [ %709, %707 ], [ %720, %718 ], [ %731, %729 ], [ %742, %740 ]
  %749 = phi i32 [ %92, %112 ], [ %708, %707 ], [ %719, %718 ], [ %730, %729 ], [ %741, %740 ]
  %750 = phi i64 [ %94, %112 ], [ %713, %707 ], [ %724, %718 ], [ %735, %729 ], [ %746, %740 ]
  %751 = trunc i64 %750 to i32
  %752 = call i32 @llvm.bswap.i32(i32 %751)
  %753 = zext i32 %752 to i64
  store i64 %753, ptr %53, align 8, !tbaa !53
  store i64 %753, ptr %54, align 8, !tbaa !25
  store i32 16190, ptr %21, align 8, !tbaa !20
  br label %754

754:                                              ; preds = %88, %747
  %755 = phi ptr [ %748, %747 ], [ %90, %88 ]
  %756 = phi i32 [ %749, %747 ], [ %92, %88 ]
  %757 = phi i64 [ 0, %747 ], [ %94, %88 ]
  %758 = phi i32 [ 0, %747 ], [ %95, %88 ]
  %759 = load i32, ptr %80, align 4, !tbaa !27
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %761, label %762

761:                                              ; preds = %754
  store ptr %91, ptr %26, align 8, !tbaa !47
  store i32 %93, ptr %41, align 8, !tbaa !50
  store ptr %755, ptr %0, align 8, !tbaa !48
  store i32 %756, ptr %43, align 8, !tbaa !49
  store i64 %757, ptr %45, align 8, !tbaa !31
  store i32 %758, ptr %47, align 8, !tbaa !32
  br label %2362

762:                                              ; preds = %754
  %763 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  store i64 %763, ptr %53, align 8, !tbaa !53
  store i64 %763, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %764

764:                                              ; preds = %88, %762
  %765 = phi ptr [ %755, %762 ], [ %90, %88 ]
  %766 = phi i32 [ %756, %762 ], [ %92, %88 ]
  %767 = phi i64 [ %757, %762 ], [ %94, %88 ]
  %768 = phi i32 [ %758, %762 ], [ %95, %88 ]
  br i1 %82, label %2218, label %769

769:                                              ; preds = %764, %88
  %770 = phi ptr [ %765, %764 ], [ %90, %88 ]
  %771 = phi i32 [ %766, %764 ], [ %92, %88 ]
  %772 = phi i64 [ %767, %764 ], [ %94, %88 ]
  %773 = phi i32 [ %768, %764 ], [ %95, %88 ]
  %774 = load i32, ptr %83, align 4, !tbaa !26
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %776, label %780

776:                                              ; preds = %769
  %777 = icmp ult i32 %773, 3
  br i1 %777, label %778, label %794

778:                                              ; preds = %776
  %779 = icmp eq i32 %771, 0
  br i1 %779, label %2218, label %785

780:                                              ; preds = %769
  %781 = and i32 %773, 7
  %782 = zext nneg i32 %781 to i64
  %783 = lshr i64 %772, %782
  %784 = and i32 %773, -8
  store i32 16206, ptr %21, align 8, !tbaa !20
  br label %2104

785:                                              ; preds = %778
  %786 = or disjoint i32 %773, 8
  %787 = add i32 %771, -1
  %788 = getelementptr inbounds nuw i8, ptr %770, i64 1
  %789 = load i8, ptr %770, align 1, !tbaa !44
  %790 = zext i8 %789 to i64
  %791 = zext nneg i32 %773 to i64
  %792 = shl nuw nsw i64 %790, %791
  %793 = add i64 %792, %772
  br label %794

794:                                              ; preds = %785, %776
  %795 = phi ptr [ %788, %785 ], [ %770, %776 ]
  %796 = phi i32 [ %787, %785 ], [ %771, %776 ]
  %797 = phi i64 [ %793, %785 ], [ %772, %776 ]
  %798 = phi i32 [ %786, %785 ], [ %773, %776 ]
  %799 = trunc i64 %797 to i32
  %800 = and i32 %799, 1
  store i32 %800, ptr %83, align 4, !tbaa !26
  %801 = lshr i32 %799, 1
  %802 = and i32 %801, 3
  switch i32 %802, label %808 [
    i32 0, label %810
    i32 1, label %803
    i32 2, label %807
    i32 3, label %809
  ]

803:                                              ; preds = %794
  call void @inflate_fixed(ptr noundef nonnull %15) #10
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %804, label %812

804:                                              ; preds = %803
  %805 = lshr i64 %797, 3
  %806 = add i32 %798, -3
  br label %2218

807:                                              ; preds = %794
  br label %810

808:                                              ; preds = %794
  unreachable

809:                                              ; preds = %794
  store ptr @.str.6, ptr %55, align 8, !tbaa !45
  br label %810

810:                                              ; preds = %794, %809, %807
  %811 = phi i32 [ 16209, %809 ], [ 16196, %807 ], [ 16193, %794 ]
  store i32 %811, ptr %21, align 8, !tbaa !20
  br label %812

812:                                              ; preds = %810, %803
  %813 = lshr i64 %797, 3
  %814 = add i32 %798, -3
  br label %2104

815:                                              ; preds = %88
  %816 = and i32 %95, 7
  %817 = zext nneg i32 %816 to i64
  %818 = lshr i64 %94, %817
  %819 = and i32 %95, -8
  %820 = icmp ult i32 %95, 32
  br i1 %820, label %821, label %871

821:                                              ; preds = %815
  %822 = and i32 %95, 24
  %823 = zext nneg i32 %822 to i64
  %824 = icmp eq i32 %92, 0
  br i1 %824, label %2155, label %825

825:                                              ; preds = %821
  %826 = add i32 %92, -1
  %827 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %828 = load i8, ptr %90, align 1, !tbaa !44
  %829 = zext i8 %828 to i64
  %830 = shl nuw nsw i64 %829, %823
  %831 = add i64 %830, %818
  %832 = add nuw nsw i64 %823, 8
  %833 = icmp eq i32 %822, 24
  br i1 %833, label %865, label %834

834:                                              ; preds = %825
  %835 = icmp eq i32 %826, 0
  br i1 %835, label %2155, label %836

836:                                              ; preds = %834
  %837 = add i32 %92, -2
  %838 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %839 = load i8, ptr %827, align 1, !tbaa !44
  %840 = zext i8 %839 to i64
  %841 = shl nuw nsw i64 %840, %832
  %842 = add i64 %841, %831
  %843 = add nuw nsw i64 %823, 16
  %844 = icmp samesign ult i32 %822, 16
  br i1 %844, label %845, label %865

845:                                              ; preds = %836
  %846 = icmp eq i32 %837, 0
  br i1 %846, label %2155, label %847

847:                                              ; preds = %845
  %848 = add i32 %92, -3
  %849 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %850 = load i8, ptr %838, align 1, !tbaa !44
  %851 = zext i8 %850 to i64
  %852 = shl nuw nsw i64 %851, %843
  %853 = add i64 %852, %842
  %854 = add nuw nsw i64 %823, 24
  %855 = icmp eq i32 %822, 0
  br i1 %855, label %856, label %865

856:                                              ; preds = %847
  %857 = icmp eq i32 %848, 0
  br i1 %857, label %2155, label %858

858:                                              ; preds = %856
  %859 = add i32 %92, -4
  %860 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %861 = load i8, ptr %849, align 1, !tbaa !44
  %862 = zext i8 %861 to i64
  %863 = shl nuw nsw i64 %862, %854
  %864 = add i64 %863, %853
  br label %865

865:                                              ; preds = %858, %847, %836, %825
  %866 = phi i32 [ %826, %825 ], [ %837, %836 ], [ %848, %847 ], [ %859, %858 ]
  %867 = phi ptr [ %827, %825 ], [ %838, %836 ], [ %849, %847 ], [ %860, %858 ]
  %868 = phi i64 [ %831, %825 ], [ %842, %836 ], [ %853, %847 ], [ %864, %858 ]
  %869 = phi i64 [ %832, %825 ], [ %843, %836 ], [ %854, %847 ], [ 32, %858 ]
  %870 = trunc nuw nsw i64 %869 to i32
  br label %871

871:                                              ; preds = %865, %815
  %872 = phi ptr [ %90, %815 ], [ %867, %865 ]
  %873 = phi i32 [ %92, %815 ], [ %866, %865 ]
  %874 = phi i64 [ %818, %815 ], [ %868, %865 ]
  %875 = phi i32 [ %819, %815 ], [ %870, %865 ]
  %876 = and i64 %874, 65535
  %877 = lshr i64 %874, 16
  %878 = xor i64 %877, %876
  %879 = icmp eq i64 %878, 65535
  br i1 %879, label %881, label %880

880:                                              ; preds = %871
  store ptr @.str.7, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2104

881:                                              ; preds = %871
  %882 = trunc i64 %874 to i32
  %883 = and i32 %882, 65535
  store i32 %883, ptr %56, align 4, !tbaa !60
  store i32 16194, ptr %21, align 8, !tbaa !20
  br i1 %70, label %2218, label %884

884:                                              ; preds = %881, %88
  %885 = phi ptr [ %872, %881 ], [ %90, %88 ]
  %886 = phi i32 [ %873, %881 ], [ %92, %88 ]
  %887 = phi i64 [ 0, %881 ], [ %94, %88 ]
  %888 = phi i32 [ 0, %881 ], [ %95, %88 ]
  store i32 16195, ptr %21, align 8, !tbaa !20
  br label %889

889:                                              ; preds = %88, %884
  %890 = phi ptr [ %885, %884 ], [ %90, %88 ]
  %891 = phi i32 [ %886, %884 ], [ %92, %88 ]
  %892 = phi i64 [ %887, %884 ], [ %94, %88 ]
  %893 = phi i32 [ %888, %884 ], [ %95, %88 ]
  %894 = load i32, ptr %56, align 4, !tbaa !60
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %908, label %896

896:                                              ; preds = %889
  %897 = call i32 @llvm.umin.i32(i32 %894, i32 %891)
  %898 = call i32 @llvm.umin.i32(i32 %897, i32 %93)
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %2218, label %900

900:                                              ; preds = %896
  %901 = zext i32 %898 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %91, ptr align 1 %890, i64 %901, i1 false)
  %902 = sub i32 %891, %898
  %903 = getelementptr inbounds nuw i8, ptr %890, i64 %901
  %904 = sub i32 %93, %898
  %905 = getelementptr inbounds nuw i8, ptr %91, i64 %901
  %906 = load i32, ptr %56, align 4, !tbaa !60
  %907 = sub i32 %906, %898
  store i32 %907, ptr %56, align 4, !tbaa !60
  br label %2104

908:                                              ; preds = %889
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2104

909:                                              ; preds = %109
  %910 = add i32 %92, -1
  %911 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %912 = load i8, ptr %90, align 1, !tbaa !44
  %913 = zext i8 %912 to i64
  %914 = shl nuw nsw i64 %913, %110
  %915 = add i64 %914, %94
  %916 = add nuw nsw i64 %110, 8
  %917 = icmp ult i32 %95, 6
  br i1 %917, label %918, label %928

918:                                              ; preds = %909
  %919 = icmp eq i32 %910, 0
  br i1 %919, label %2160, label %920

920:                                              ; preds = %918
  %921 = add i32 %92, -2
  %922 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %923 = load i8, ptr %911, align 1, !tbaa !44
  %924 = zext i8 %923 to i64
  %925 = shl nuw nsw i64 %924, %916
  %926 = add i64 %925, %915
  %927 = or disjoint i64 %110, 16
  br label %928

928:                                              ; preds = %920, %909
  %929 = phi i32 [ %910, %909 ], [ %921, %920 ]
  %930 = phi ptr [ %911, %909 ], [ %922, %920 ]
  %931 = phi i64 [ %915, %909 ], [ %926, %920 ]
  %932 = phi i64 [ %916, %909 ], [ %927, %920 ]
  %933 = trunc nuw nsw i64 %932 to i32
  br label %934

934:                                              ; preds = %928, %107
  %935 = phi ptr [ %90, %107 ], [ %930, %928 ]
  %936 = phi i32 [ %92, %107 ], [ %929, %928 ]
  %937 = phi i64 [ %94, %107 ], [ %931, %928 ]
  %938 = phi i32 [ %95, %107 ], [ %933, %928 ]
  %939 = trunc i64 %937 to i32
  %940 = and i32 %939, 31
  %941 = add nuw nsw i32 %940, 257
  store i32 %941, ptr %57, align 4, !tbaa !72
  %942 = lshr i32 %939, 5
  %943 = and i32 %942, 31
  %944 = add nuw nsw i32 %943, 1
  store i32 %944, ptr %58, align 8, !tbaa !73
  %945 = lshr i32 %939, 10
  %946 = and i32 %945, 15
  %947 = add nuw nsw i32 %946, 4
  store i32 %947, ptr %59, align 8, !tbaa !74
  %948 = lshr i64 %937, 14
  %949 = add i32 %938, -14
  %950 = icmp samesign ugt i32 %940, 29
  %951 = icmp samesign ugt i32 %943, 29
  %952 = select i1 %950, i1 true, i1 %951
  br i1 %952, label %953, label %954

953:                                              ; preds = %934
  store ptr @.str.8, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2104

954:                                              ; preds = %934
  store i32 0, ptr %60, align 4, !tbaa !52
  store i32 16197, ptr %21, align 8, !tbaa !20
  br label %959

955:                                              ; preds = %88
  %956 = load i32, ptr %59, align 8, !tbaa !74
  %957 = load i32, ptr %60, align 4, !tbaa !52
  %958 = icmp ult i32 %957, %956
  br i1 %958, label %959, label %968

959:                                              ; preds = %954, %955
  %960 = phi i32 [ %949, %954 ], [ %95, %955 ]
  %961 = phi i64 [ %948, %954 ], [ %94, %955 ]
  %962 = phi i32 [ %936, %954 ], [ %92, %955 ]
  %963 = phi ptr [ %935, %954 ], [ %90, %955 ]
  %964 = phi i32 [ %947, %954 ], [ %956, %955 ]
  %965 = phi i32 [ 0, %954 ], [ %957, %955 ]
  %966 = zext i32 %965 to i64
  %967 = zext i32 %964 to i64
  br label %977

968:                                              ; preds = %995, %955
  %969 = phi ptr [ %90, %955 ], [ %996, %995 ]
  %970 = phi i32 [ %92, %955 ], [ %997, %995 ]
  %971 = phi i64 [ %94, %955 ], [ %1008, %995 ]
  %972 = phi i32 [ %95, %955 ], [ %1009, %995 ]
  %973 = phi i32 [ %957, %955 ], [ %964, %995 ]
  %974 = icmp ult i32 %973, 19
  br i1 %974, label %975, label %1021

975:                                              ; preds = %968
  %976 = zext nneg i32 %973 to i64
  br label %1011

977:                                              ; preds = %959, %995
  %978 = phi i64 [ %966, %959 ], [ %1002, %995 ]
  %979 = phi i32 [ %960, %959 ], [ %1009, %995 ]
  %980 = phi i64 [ %961, %959 ], [ %1008, %995 ]
  %981 = phi i32 [ %962, %959 ], [ %997, %995 ]
  %982 = phi ptr [ %963, %959 ], [ %996, %995 ]
  %983 = icmp ult i32 %979, 3
  br i1 %983, label %984, label %995

984:                                              ; preds = %977
  %985 = icmp eq i32 %981, 0
  br i1 %985, label %2218, label %986

986:                                              ; preds = %984
  %987 = or disjoint i32 %979, 8
  %988 = add i32 %981, -1
  %989 = getelementptr inbounds nuw i8, ptr %982, i64 1
  %990 = load i8, ptr %982, align 1, !tbaa !44
  %991 = zext i8 %990 to i64
  %992 = zext nneg i32 %979 to i64
  %993 = shl nuw nsw i64 %991, %992
  %994 = add i64 %993, %980
  br label %995

995:                                              ; preds = %986, %977
  %996 = phi ptr [ %989, %986 ], [ %982, %977 ]
  %997 = phi i32 [ %988, %986 ], [ %981, %977 ]
  %998 = phi i64 [ %994, %986 ], [ %980, %977 ]
  %999 = phi i32 [ %987, %986 ], [ %979, %977 ]
  %1000 = trunc i64 %998 to i16
  %1001 = and i16 %1000, 7
  %1002 = add nuw nsw i64 %978, 1
  %1003 = trunc nuw i64 %1002 to i32
  store i32 %1003, ptr %60, align 4, !tbaa !52
  %1004 = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %978
  %1005 = load i16, ptr %1004, align 2, !tbaa !75
  %1006 = zext i16 %1005 to i64
  %1007 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1006
  store i16 %1001, ptr %1007, align 2, !tbaa !75
  %1008 = lshr i64 %998, 3
  %1009 = add i32 %999, -3
  %1010 = icmp eq i64 %1002, %967
  br i1 %1010, label %968, label %977, !llvm.loop !77

1011:                                             ; preds = %975, %1011
  %1012 = phi i64 [ %976, %975 ], [ %1013, %1011 ]
  %1013 = add nuw nsw i64 %1012, 1
  %1014 = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %1012
  %1015 = load i16, ptr %1014, align 2, !tbaa !75
  %1016 = zext i16 %1015 to i64
  %1017 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1016
  store i16 0, ptr %1017, align 2, !tbaa !75
  %1018 = and i64 %1013, 4294967295
  %1019 = icmp eq i64 %1018, 19
  br i1 %1019, label %1020, label %1011, !llvm.loop !78

1020:                                             ; preds = %1011
  store i32 19, ptr %60, align 4, !tbaa !52
  br label %1021

1021:                                             ; preds = %1020, %968
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %64, align 8, !tbaa !34
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 7, ptr %66, align 8, !tbaa !79
  %1022 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %61, i32 noundef 19, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #10
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1025, label %1024

1024:                                             ; preds = %1021
  store ptr @.str.9, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2104

1025:                                             ; preds = %1021
  store i32 0, ptr %60, align 4, !tbaa !52
  store i32 16198, ptr %21, align 8, !tbaa !20
  br label %1026

1026:                                             ; preds = %103, %1025
  %1027 = phi i32 [ 0, %1025 ], [ %104, %103 ]
  %1028 = phi ptr [ %969, %1025 ], [ %90, %103 ]
  %1029 = phi i32 [ %970, %1025 ], [ %92, %103 ]
  %1030 = phi i64 [ %971, %1025 ], [ %94, %103 ]
  %1031 = phi i32 [ %972, %1025 ], [ %95, %103 ]
  %1032 = phi i32 [ 0, %1025 ], [ %97, %103 ]
  %1033 = load i32, ptr %57, align 4, !tbaa !72
  %1034 = load i32, ptr %58, align 8, !tbaa !73
  %1035 = add i32 %1034, %1033
  %1036 = icmp ult i32 %1027, %1035
  br i1 %1036, label %1037, label %1319

1037:                                             ; preds = %1026
  %1038 = load ptr, ptr %65, align 8, !tbaa !35
  %1039 = load i32, ptr %66, align 8, !tbaa !79
  %1040 = shl nsw i32 -1, %1039
  %1041 = xor i32 %1040, -1
  br label %1042

1042:                                             ; preds = %1037, %1312
  %1043 = phi i32 [ %1031, %1037 ], [ %1317, %1312 ]
  %1044 = phi i64 [ %1030, %1037 ], [ %1316, %1312 ]
  %1045 = phi i32 [ %1029, %1037 ], [ %1315, %1312 ]
  %1046 = phi ptr [ %1028, %1037 ], [ %1314, %1312 ]
  %1047 = phi i32 [ %1027, %1037 ], [ %1313, %1312 ]
  %1048 = trunc i64 %1044 to i32
  %1049 = and i32 %1041, %1048
  %1050 = zext nneg i32 %1049 to i64
  %1051 = getelementptr inbounds nuw [4 x i8], ptr %1038, i64 %1050
  %1052 = getelementptr inbounds nuw i8, ptr %1051, i64 1
  %1053 = load i8, ptr %1052, align 1, !tbaa !44
  %1054 = zext i8 %1053 to i32
  %1055 = icmp ult i32 %1043, %1054
  br i1 %1055, label %1056, label %1085

1056:                                             ; preds = %1042
  %1057 = icmp eq i32 %1045, 0
  br i1 %1057, label %2175, label %1058

1058:                                             ; preds = %1056
  %1059 = zext nneg i32 %1043 to i64
  br label %1062

1060:                                             ; preds = %1062
  %1061 = icmp eq i32 %1067, 0
  br i1 %1061, label %2175, label %1062

1062:                                             ; preds = %1058, %1060
  %1063 = phi ptr [ %1046, %1058 ], [ %1068, %1060 ]
  %1064 = phi i32 [ %1045, %1058 ], [ %1067, %1060 ]
  %1065 = phi i64 [ %1044, %1058 ], [ %1072, %1060 ]
  %1066 = phi i64 [ %1059, %1058 ], [ %1073, %1060 ]
  %1067 = add i32 %1064, -1
  %1068 = getelementptr inbounds nuw i8, ptr %1063, i64 1
  %1069 = load i8, ptr %1063, align 1, !tbaa !44
  %1070 = zext i8 %1069 to i64
  %1071 = shl i64 %1070, %1066
  %1072 = add i64 %1071, %1065
  %1073 = add nuw nsw i64 %1066, 8
  %1074 = trunc i64 %1072 to i32
  %1075 = and i32 %1041, %1074
  %1076 = zext nneg i32 %1075 to i64
  %1077 = getelementptr inbounds nuw [4 x i8], ptr %1038, i64 %1076
  %1078 = getelementptr inbounds nuw i8, ptr %1077, i64 1
  %1079 = load i8, ptr %1078, align 1, !tbaa !44
  %1080 = zext i8 %1079 to i64
  %1081 = icmp samesign ult i64 %1073, %1080
  br i1 %1081, label %1060, label %1082

1082:                                             ; preds = %1062
  %1083 = zext i8 %1079 to i32
  %1084 = trunc nuw nsw i64 %1073 to i32
  br label %1085

1085:                                             ; preds = %1082, %1042
  %1086 = phi i64 [ %1050, %1042 ], [ %1076, %1082 ]
  %1087 = phi i32 [ %1054, %1042 ], [ %1083, %1082 ]
  %1088 = phi ptr [ %1046, %1042 ], [ %1068, %1082 ]
  %1089 = phi i32 [ %1045, %1042 ], [ %1067, %1082 ]
  %1090 = phi i64 [ %1044, %1042 ], [ %1072, %1082 ]
  %1091 = phi i32 [ %1043, %1042 ], [ %1084, %1082 ]
  %1092 = phi i8 [ %1053, %1042 ], [ %1079, %1082 ]
  %1093 = getelementptr inbounds nuw [4 x i8], ptr %1038, i64 %1086
  %1094 = getelementptr inbounds nuw i8, ptr %1093, i64 2
  %1095 = load i16, ptr %1094, align 2, !tbaa !75
  %1096 = icmp ult i16 %1095, 16
  br i1 %1096, label %1097, label %1104

1097:                                             ; preds = %1085
  %1098 = zext nneg i8 %1092 to i64
  %1099 = lshr i64 %1090, %1098
  %1100 = sub i32 %1091, %1087
  %1101 = add i32 %1047, 1
  store i32 %1101, ptr %60, align 4, !tbaa !52
  %1102 = zext i32 %1047 to i64
  %1103 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1102
  store i16 %1095, ptr %1103, align 2, !tbaa !75
  br label %1312

1104:                                             ; preds = %1085
  switch i16 %1095, label %1117 [
    i16 16, label %1111
    i16 17, label %1105
  ]

1105:                                             ; preds = %1104
  %1106 = add nuw nsw i32 %1087, 3
  %1107 = icmp ult i32 %1091, %1106
  br i1 %1107, label %1108, label %1177

1108:                                             ; preds = %1105
  %1109 = zext nneg i32 %1091 to i64
  %1110 = zext nneg i32 %1106 to i64
  br label %1160

1111:                                             ; preds = %1104
  %1112 = add nuw nsw i32 %1087, 2
  %1113 = icmp ult i32 %1091, %1112
  br i1 %1113, label %1114, label %1140

1114:                                             ; preds = %1111
  %1115 = zext nneg i32 %1091 to i64
  %1116 = zext nneg i32 %1112 to i64
  br label %1123

1117:                                             ; preds = %1104
  %1118 = add nuw nsw i32 %1087, 7
  %1119 = icmp ult i32 %1091, %1118
  br i1 %1119, label %1120, label %1207

1120:                                             ; preds = %1117
  %1121 = zext nneg i32 %1091 to i64
  %1122 = zext nneg i32 %1118 to i64
  br label %1190

1123:                                             ; preds = %1114, %1129
  %1124 = phi i64 [ %1115, %1114 ], [ %1136, %1129 ]
  %1125 = phi i64 [ %1090, %1114 ], [ %1135, %1129 ]
  %1126 = phi i32 [ %1089, %1114 ], [ %1130, %1129 ]
  %1127 = phi ptr [ %1088, %1114 ], [ %1131, %1129 ]
  %1128 = icmp eq i32 %1126, 0
  br i1 %1128, label %2116, label %1129

1129:                                             ; preds = %1123
  %1130 = add i32 %1126, -1
  %1131 = getelementptr inbounds nuw i8, ptr %1127, i64 1
  %1132 = load i8, ptr %1127, align 1, !tbaa !44
  %1133 = zext i8 %1132 to i64
  %1134 = shl i64 %1133, %1124
  %1135 = add i64 %1134, %1125
  %1136 = add nuw nsw i64 %1124, 8
  %1137 = icmp samesign ult i64 %1136, %1116
  br i1 %1137, label %1123, label %1138, !llvm.loop !80

1138:                                             ; preds = %1129
  %1139 = trunc nuw nsw i64 %1136 to i32
  br label %1140

1140:                                             ; preds = %1138, %1111
  %1141 = phi ptr [ %1088, %1111 ], [ %1131, %1138 ]
  %1142 = phi i32 [ %1089, %1111 ], [ %1130, %1138 ]
  %1143 = phi i64 [ %1090, %1111 ], [ %1135, %1138 ]
  %1144 = phi i32 [ %1091, %1111 ], [ %1139, %1138 ]
  %1145 = zext nneg i8 %1092 to i64
  %1146 = lshr i64 %1143, %1145
  %1147 = sub nuw i32 %1144, %1087
  %1148 = icmp eq i32 %1047, 0
  br i1 %1148, label %1149, label %1150

1149:                                             ; preds = %1140
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2104

1150:                                             ; preds = %1140
  %1151 = add i32 %1047, -1
  %1152 = zext i32 %1151 to i64
  %1153 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1152
  %1154 = load i16, ptr %1153, align 2, !tbaa !75
  %1155 = trunc i64 %1146 to i32
  %1156 = and i32 %1155, 3
  %1157 = add nuw nsw i32 %1156, 3
  %1158 = lshr i64 %1146, 2
  %1159 = add i32 %1147, -2
  br label %1220

1160:                                             ; preds = %1108, %1166
  %1161 = phi i64 [ %1109, %1108 ], [ %1173, %1166 ]
  %1162 = phi i64 [ %1090, %1108 ], [ %1172, %1166 ]
  %1163 = phi i32 [ %1089, %1108 ], [ %1167, %1166 ]
  %1164 = phi ptr [ %1088, %1108 ], [ %1168, %1166 ]
  %1165 = icmp eq i32 %1163, 0
  br i1 %1165, label %2118, label %1166

1166:                                             ; preds = %1160
  %1167 = add i32 %1163, -1
  %1168 = getelementptr inbounds nuw i8, ptr %1164, i64 1
  %1169 = load i8, ptr %1164, align 1, !tbaa !44
  %1170 = zext i8 %1169 to i64
  %1171 = shl i64 %1170, %1161
  %1172 = add i64 %1171, %1162
  %1173 = add nuw nsw i64 %1161, 8
  %1174 = icmp samesign ult i64 %1173, %1110
  br i1 %1174, label %1160, label %1175, !llvm.loop !81

1175:                                             ; preds = %1166
  %1176 = trunc nuw nsw i64 %1173 to i32
  br label %1177

1177:                                             ; preds = %1175, %1105
  %1178 = phi ptr [ %1088, %1105 ], [ %1168, %1175 ]
  %1179 = phi i32 [ %1089, %1105 ], [ %1167, %1175 ]
  %1180 = phi i64 [ %1090, %1105 ], [ %1172, %1175 ]
  %1181 = phi i32 [ %1091, %1105 ], [ %1176, %1175 ]
  %1182 = zext nneg i8 %1092 to i64
  %1183 = lshr i64 %1180, %1182
  %1184 = trunc i64 %1183 to i32
  %1185 = and i32 %1184, 7
  %1186 = add nuw nsw i32 %1185, 3
  %1187 = lshr i64 %1183, 3
  %1188 = sub i32 %1181, %1087
  %1189 = add i32 %1188, -3
  br label %1220

1190:                                             ; preds = %1120, %1196
  %1191 = phi i64 [ %1121, %1120 ], [ %1203, %1196 ]
  %1192 = phi i64 [ %1090, %1120 ], [ %1202, %1196 ]
  %1193 = phi i32 [ %1089, %1120 ], [ %1197, %1196 ]
  %1194 = phi ptr [ %1088, %1120 ], [ %1198, %1196 ]
  %1195 = icmp eq i32 %1193, 0
  br i1 %1195, label %2114, label %1196

1196:                                             ; preds = %1190
  %1197 = add i32 %1193, -1
  %1198 = getelementptr inbounds nuw i8, ptr %1194, i64 1
  %1199 = load i8, ptr %1194, align 1, !tbaa !44
  %1200 = zext i8 %1199 to i64
  %1201 = shl i64 %1200, %1191
  %1202 = add i64 %1201, %1192
  %1203 = add nuw nsw i64 %1191, 8
  %1204 = icmp samesign ult i64 %1203, %1122
  br i1 %1204, label %1190, label %1205, !llvm.loop !82

1205:                                             ; preds = %1196
  %1206 = trunc nuw nsw i64 %1203 to i32
  br label %1207

1207:                                             ; preds = %1205, %1117
  %1208 = phi ptr [ %1088, %1117 ], [ %1198, %1205 ]
  %1209 = phi i32 [ %1089, %1117 ], [ %1197, %1205 ]
  %1210 = phi i64 [ %1090, %1117 ], [ %1202, %1205 ]
  %1211 = phi i32 [ %1091, %1117 ], [ %1206, %1205 ]
  %1212 = zext nneg i8 %1092 to i64
  %1213 = lshr i64 %1210, %1212
  %1214 = trunc i64 %1213 to i32
  %1215 = and i32 %1214, 127
  %1216 = add nuw nsw i32 %1215, 11
  %1217 = lshr i64 %1213, 7
  %1218 = sub i32 %1211, %1087
  %1219 = add i32 %1218, -7
  br label %1220

1220:                                             ; preds = %1177, %1207, %1150
  %1221 = phi ptr [ %1141, %1150 ], [ %1178, %1177 ], [ %1208, %1207 ]
  %1222 = phi i32 [ %1142, %1150 ], [ %1179, %1177 ], [ %1209, %1207 ]
  %1223 = phi i64 [ %1158, %1150 ], [ %1187, %1177 ], [ %1217, %1207 ]
  %1224 = phi i32 [ %1159, %1150 ], [ %1189, %1177 ], [ %1219, %1207 ]
  %1225 = phi i32 [ %1157, %1150 ], [ %1186, %1177 ], [ %1216, %1207 ]
  %1226 = phi i16 [ %1154, %1150 ], [ 0, %1177 ], [ 0, %1207 ]
  %1227 = add i32 %1225, %1047
  %1228 = icmp ugt i32 %1227, %1035
  br i1 %1228, label %1292, label %1229

1229:                                             ; preds = %1220
  %1230 = icmp ult i32 %1225, 4
  %1231 = sub nsw i32 0, %1225
  %1232 = icmp ugt i32 %1047, %1231
  %1233 = select i1 %1230, i1 true, i1 %1232
  br i1 %1233, label %1271, label %1234

1234:                                             ; preds = %1229
  %1235 = icmp ult i32 %1225, 16
  br i1 %1235, label %1255, label %1236

1236:                                             ; preds = %1234
  %1237 = and i32 %1225, 12
  %1238 = and i32 %1225, -16
  %1239 = and i32 %1225, 15
  %1240 = add i32 %1047, %1238
  %1241 = insertelement <8 x i16> poison, i16 %1226, i64 0
  %1242 = shufflevector <8 x i16> %1241, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %1243

1243:                                             ; preds = %1243, %1236
  %1244 = phi i32 [ 0, %1236 ], [ %1249, %1243 ]
  %1245 = add i32 %1047, %1244
  %1246 = zext i32 %1245 to i64
  %1247 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1246
  %1248 = getelementptr inbounds nuw i8, ptr %1247, i64 16
  store <8 x i16> %1242, ptr %1247, align 2, !tbaa !75
  store <8 x i16> %1242, ptr %1248, align 2, !tbaa !75
  %1249 = add nuw i32 %1244, 16
  %1250 = icmp eq i32 %1249, %1238
  br i1 %1250, label %1251, label %1243, !llvm.loop !83

1251:                                             ; preds = %1243
  %1252 = icmp eq i32 %1225, %1238
  br i1 %1252, label %1310, label %1253

1253:                                             ; preds = %1251
  %1254 = icmp eq i32 %1237, 0
  br i1 %1254, label %1271, label %1255, !prof !86

1255:                                             ; preds = %1234, %1253
  %1256 = phi i32 [ %1238, %1253 ], [ 0, %1234 ]
  %1257 = and i32 %1225, -4
  %1258 = and i32 %1225, 3
  %1259 = add i32 %1047, %1257
  %1260 = insertelement <4 x i16> poison, i16 %1226, i64 0
  %1261 = shufflevector <4 x i16> %1260, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %1262

1262:                                             ; preds = %1262, %1255
  %1263 = phi i32 [ %1256, %1255 ], [ %1267, %1262 ]
  %1264 = add i32 %1047, %1263
  %1265 = zext i32 %1264 to i64
  %1266 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1265
  store <4 x i16> %1261, ptr %1266, align 2, !tbaa !75
  %1267 = add nuw i32 %1263, 4
  %1268 = icmp eq i32 %1267, %1257
  br i1 %1268, label %1269, label %1262, !llvm.loop !87

1269:                                             ; preds = %1262
  %1270 = icmp eq i32 %1225, %1257
  br i1 %1270, label %1310, label %1271

1271:                                             ; preds = %1229, %1253, %1269
  %1272 = phi i32 [ %1225, %1229 ], [ %1239, %1253 ], [ %1258, %1269 ]
  %1273 = phi i32 [ %1047, %1229 ], [ %1240, %1253 ], [ %1259, %1269 ]
  %1274 = add nsw i32 %1272, -1
  %1275 = and i32 %1272, 3
  %1276 = icmp eq i32 %1275, 0
  br i1 %1276, label %1287, label %1277

1277:                                             ; preds = %1271, %1277
  %1278 = phi i32 [ %1281, %1277 ], [ %1272, %1271 ]
  %1279 = phi i32 [ %1282, %1277 ], [ %1273, %1271 ]
  %1280 = phi i32 [ %1285, %1277 ], [ 0, %1271 ]
  %1281 = add i32 %1278, -1
  %1282 = add i32 %1279, 1
  %1283 = zext i32 %1279 to i64
  %1284 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1283
  store i16 %1226, ptr %1284, align 2, !tbaa !75
  %1285 = add i32 %1280, 1
  %1286 = icmp eq i32 %1285, %1275
  br i1 %1286, label %1287, label %1277, !llvm.loop !88

1287:                                             ; preds = %1277, %1271
  %1288 = phi i32 [ poison, %1271 ], [ %1282, %1277 ]
  %1289 = phi i32 [ %1272, %1271 ], [ %1281, %1277 ]
  %1290 = phi i32 [ %1273, %1271 ], [ %1282, %1277 ]
  %1291 = icmp ult i32 %1274, 3
  br i1 %1291, label %1310, label %1293

1292:                                             ; preds = %1220
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2104

1293:                                             ; preds = %1287, %1293
  %1294 = phi i32 [ %1305, %1293 ], [ %1289, %1287 ]
  %1295 = phi i32 [ %1306, %1293 ], [ %1290, %1287 ]
  %1296 = add i32 %1295, 1
  %1297 = zext i32 %1295 to i64
  %1298 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1297
  store i16 %1226, ptr %1298, align 2, !tbaa !75
  %1299 = add i32 %1295, 2
  %1300 = zext i32 %1296 to i64
  %1301 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1300
  store i16 %1226, ptr %1301, align 2, !tbaa !75
  %1302 = add i32 %1295, 3
  %1303 = zext i32 %1299 to i64
  %1304 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1303
  store i16 %1226, ptr %1304, align 2, !tbaa !75
  %1305 = add i32 %1294, -4
  %1306 = add i32 %1295, 4
  %1307 = zext i32 %1302 to i64
  %1308 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1307
  store i16 %1226, ptr %1308, align 2, !tbaa !75
  %1309 = icmp eq i32 %1305, 0
  br i1 %1309, label %1310, label %1293, !llvm.loop !90

1310:                                             ; preds = %1287, %1293, %1269, %1251
  %1311 = phi i32 [ %1259, %1269 ], [ %1240, %1251 ], [ %1288, %1287 ], [ %1306, %1293 ]
  store i32 %1311, ptr %60, align 4, !tbaa !52
  br label %1312

1312:                                             ; preds = %1310, %1097
  %1313 = phi i32 [ %1101, %1097 ], [ %1311, %1310 ]
  %1314 = phi ptr [ %1088, %1097 ], [ %1221, %1310 ]
  %1315 = phi i32 [ %1089, %1097 ], [ %1222, %1310 ]
  %1316 = phi i64 [ %1099, %1097 ], [ %1223, %1310 ]
  %1317 = phi i32 [ %1100, %1097 ], [ %1224, %1310 ]
  %1318 = icmp ult i32 %1313, %1035
  br i1 %1318, label %1042, label %1319, !llvm.loop !91

1319:                                             ; preds = %1312, %1026
  %1320 = phi ptr [ %1028, %1026 ], [ %1314, %1312 ]
  %1321 = phi i32 [ %1029, %1026 ], [ %1315, %1312 ]
  %1322 = phi i64 [ %1030, %1026 ], [ %1316, %1312 ]
  %1323 = phi i32 [ %1031, %1026 ], [ %1317, %1312 ]
  %1324 = load i16, ptr %68, align 8, !tbaa !75
  %1325 = icmp eq i16 %1324, 0
  br i1 %1325, label %1326, label %1327

1326:                                             ; preds = %1319
  store ptr @.str.11, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2104

1327:                                             ; preds = %1319
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 9, ptr %66, align 8, !tbaa !79
  %1328 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %61, i32 noundef %1033, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #10
  %1329 = icmp eq i32 %1328, 0
  br i1 %1329, label %1331, label %1330

1330:                                             ; preds = %1327
  store ptr @.str.12, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2104

1331:                                             ; preds = %1327
  %1332 = load ptr, ptr %63, align 8, !tbaa !33
  store ptr %1332, ptr %64, align 8, !tbaa !34
  store i32 6, ptr %69, align 4, !tbaa !92
  %1333 = load i32, ptr %57, align 4, !tbaa !72
  %1334 = zext i32 %1333 to i64
  %1335 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1334
  %1336 = load i32, ptr %58, align 8, !tbaa !73
  %1337 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %1335, i32 noundef %1336, ptr noundef nonnull %63, ptr noundef nonnull %69, ptr noundef nonnull %67) #10
  %1338 = icmp eq i32 %1337, 0
  br i1 %1338, label %1340, label %1339

1339:                                             ; preds = %1331
  store ptr @.str.13, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2104

1340:                                             ; preds = %1331
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %2218, label %1341

1341:                                             ; preds = %1340, %88
  %1342 = phi ptr [ %1320, %1340 ], [ %90, %88 ]
  %1343 = phi i32 [ %1321, %1340 ], [ %92, %88 ]
  %1344 = phi i64 [ %1322, %1340 ], [ %94, %88 ]
  %1345 = phi i32 [ %1323, %1340 ], [ %95, %88 ]
  %1346 = phi i32 [ 0, %1340 ], [ %97, %88 ]
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %1347

1347:                                             ; preds = %88, %1341
  %1348 = phi ptr [ %1342, %1341 ], [ %90, %88 ]
  %1349 = phi i32 [ %1343, %1341 ], [ %92, %88 ]
  %1350 = phi i64 [ %1344, %1341 ], [ %94, %88 ]
  %1351 = phi i32 [ %1345, %1341 ], [ %95, %88 ]
  %1352 = phi i32 [ %1346, %1341 ], [ %97, %88 ]
  %1353 = icmp ugt i32 %1349, 5
  %1354 = icmp ugt i32 %93, 257
  %1355 = select i1 %1353, i1 %1354, i1 false
  br i1 %1355, label %1356, label %1366

1356:                                             ; preds = %1347
  store ptr %91, ptr %26, align 8, !tbaa !47
  store i32 %93, ptr %41, align 8, !tbaa !50
  store ptr %1348, ptr %0, align 8, !tbaa !48
  store i32 %1349, ptr %43, align 8, !tbaa !49
  store i64 %1350, ptr %45, align 8, !tbaa !31
  store i32 %1351, ptr %47, align 8, !tbaa !32
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %96) #10
  %1357 = load ptr, ptr %26, align 8, !tbaa !47
  %1358 = load i32, ptr %41, align 8, !tbaa !50
  %1359 = load ptr, ptr %0, align 8, !tbaa !48
  %1360 = load i32, ptr %43, align 8, !tbaa !49
  %1361 = load i64, ptr %45, align 8, !tbaa !31
  %1362 = load i32, ptr %47, align 8, !tbaa !32
  %1363 = load i32, ptr %21, align 8, !tbaa !20
  %1364 = icmp eq i32 %1363, 16191
  br i1 %1364, label %1365, label %2104

1365:                                             ; preds = %1356
  store i32 -1, ptr %71, align 4, !tbaa !37
  br label %2104

1366:                                             ; preds = %1347
  store i32 0, ptr %71, align 4, !tbaa !37
  %1367 = load ptr, ptr %65, align 8, !tbaa !35
  %1368 = load i32, ptr %66, align 8, !tbaa !79
  %1369 = shl nsw i32 -1, %1368
  %1370 = xor i32 %1369, -1
  %1371 = trunc i64 %1350 to i32
  %1372 = and i32 %1370, %1371
  %1373 = zext nneg i32 %1372 to i64
  %1374 = getelementptr inbounds nuw [4 x i8], ptr %1367, i64 %1373
  %1375 = getelementptr inbounds nuw i8, ptr %1374, i64 1
  %1376 = load i8, ptr %1375, align 1, !tbaa !44
  %1377 = zext i8 %1376 to i32
  %1378 = icmp ult i32 %1351, %1377
  br i1 %1378, label %1379, label %1408

1379:                                             ; preds = %1366
  %1380 = icmp eq i32 %1349, 0
  br i1 %1380, label %2211, label %1381

1381:                                             ; preds = %1379
  %1382 = zext nneg i32 %1351 to i64
  br label %1385

1383:                                             ; preds = %1385
  %1384 = icmp eq i32 %1390, 0
  br i1 %1384, label %2211, label %1385

1385:                                             ; preds = %1381, %1383
  %1386 = phi ptr [ %1348, %1381 ], [ %1391, %1383 ]
  %1387 = phi i32 [ %1349, %1381 ], [ %1390, %1383 ]
  %1388 = phi i64 [ %1350, %1381 ], [ %1395, %1383 ]
  %1389 = phi i64 [ %1382, %1381 ], [ %1396, %1383 ]
  %1390 = add i32 %1387, -1
  %1391 = getelementptr inbounds nuw i8, ptr %1386, i64 1
  %1392 = load i8, ptr %1386, align 1, !tbaa !44
  %1393 = zext i8 %1392 to i64
  %1394 = shl i64 %1393, %1389
  %1395 = add i64 %1394, %1388
  %1396 = add nuw nsw i64 %1389, 8
  %1397 = trunc i64 %1395 to i32
  %1398 = and i32 %1370, %1397
  %1399 = zext nneg i32 %1398 to i64
  %1400 = getelementptr inbounds nuw [4 x i8], ptr %1367, i64 %1399
  %1401 = getelementptr inbounds nuw i8, ptr %1400, i64 1
  %1402 = load i8, ptr %1401, align 1, !tbaa !44
  %1403 = zext i8 %1402 to i64
  %1404 = icmp samesign ult i64 %1396, %1403
  br i1 %1404, label %1383, label %1405

1405:                                             ; preds = %1385
  %1406 = zext i8 %1402 to i32
  %1407 = trunc nuw nsw i64 %1396 to i32
  br label %1408

1408:                                             ; preds = %1405, %1366
  %1409 = phi ptr [ %1374, %1366 ], [ %1400, %1405 ]
  %1410 = phi ptr [ %1348, %1366 ], [ %1391, %1405 ]
  %1411 = phi i32 [ %1349, %1366 ], [ %1390, %1405 ]
  %1412 = phi i64 [ %1350, %1366 ], [ %1395, %1405 ]
  %1413 = phi i32 [ %1351, %1366 ], [ %1407, %1405 ]
  %1414 = phi i8 [ %1376, %1366 ], [ %1402, %1405 ]
  %1415 = phi i32 [ %1377, %1366 ], [ %1406, %1405 ]
  %1416 = getelementptr inbounds nuw i8, ptr %1409, i64 2
  %1417 = load i16, ptr %1416, align 2, !tbaa !75
  %1418 = load i8, ptr %1409, align 2, !tbaa !44
  %1419 = add i8 %1418, -1
  %1420 = icmp ult i8 %1419, 15
  br i1 %1420, label %1421, label %1483

1421:                                             ; preds = %1408
  %1422 = zext nneg i8 %1418 to i32
  %1423 = zext i16 %1417 to i32
  %1424 = add nuw nsw i32 %1415, %1422
  %1425 = shl nsw i32 -1, %1424
  %1426 = xor i32 %1425, -1
  %1427 = trunc i64 %1412 to i32
  %1428 = and i32 %1427, %1426
  %1429 = lshr i32 %1428, %1415
  %1430 = add nuw i32 %1429, %1423
  %1431 = zext i32 %1430 to i64
  %1432 = getelementptr inbounds nuw [4 x i8], ptr %1367, i64 %1431
  %1433 = getelementptr inbounds nuw i8, ptr %1432, i64 1
  %1434 = load i8, ptr %1433, align 1, !tbaa !44
  %1435 = zext i8 %1434 to i32
  %1436 = add nuw nsw i32 %1415, %1435
  %1437 = icmp ugt i32 %1436, %1413
  br i1 %1437, label %1438, label %1470

1438:                                             ; preds = %1421
  %1439 = icmp eq i32 %1411, 0
  br i1 %1439, label %2205, label %1440

1440:                                             ; preds = %1438
  %1441 = zext nneg i32 %1413 to i64
  br label %1444

1442:                                             ; preds = %1444
  %1443 = icmp eq i32 %1449, 0
  br i1 %1443, label %2205, label %1444

1444:                                             ; preds = %1440, %1442
  %1445 = phi ptr [ %1410, %1440 ], [ %1450, %1442 ]
  %1446 = phi i32 [ %1411, %1440 ], [ %1449, %1442 ]
  %1447 = phi i64 [ %1412, %1440 ], [ %1454, %1442 ]
  %1448 = phi i64 [ %1441, %1440 ], [ %1455, %1442 ]
  %1449 = add i32 %1446, -1
  %1450 = getelementptr inbounds nuw i8, ptr %1445, i64 1
  %1451 = load i8, ptr %1445, align 1, !tbaa !44
  %1452 = zext i8 %1451 to i64
  %1453 = shl i64 %1452, %1448
  %1454 = add i64 %1453, %1447
  %1455 = add nuw nsw i64 %1448, 8
  %1456 = trunc i64 %1454 to i32
  %1457 = and i32 %1456, %1426
  %1458 = lshr i32 %1457, %1415
  %1459 = add nuw i32 %1458, %1423
  %1460 = zext i32 %1459 to i64
  %1461 = getelementptr inbounds nuw [4 x i8], ptr %1367, i64 %1460
  %1462 = getelementptr inbounds nuw i8, ptr %1461, i64 1
  %1463 = load i8, ptr %1462, align 1, !tbaa !44
  %1464 = zext i8 %1463 to i32
  %1465 = add nuw nsw i32 %1415, %1464
  %1466 = zext nneg i32 %1465 to i64
  %1467 = icmp samesign ult i64 %1455, %1466
  br i1 %1467, label %1442, label %1468

1468:                                             ; preds = %1444
  %1469 = trunc nuw nsw i64 %1455 to i32
  br label %1470

1470:                                             ; preds = %1468, %1421
  %1471 = phi ptr [ %1410, %1421 ], [ %1450, %1468 ]
  %1472 = phi i32 [ %1411, %1421 ], [ %1449, %1468 ]
  %1473 = phi i64 [ %1412, %1421 ], [ %1454, %1468 ]
  %1474 = phi i32 [ %1413, %1421 ], [ %1469, %1468 ]
  %1475 = phi ptr [ %1432, %1421 ], [ %1461, %1468 ]
  %1476 = phi i8 [ %1434, %1421 ], [ %1463, %1468 ]
  %1477 = getelementptr inbounds nuw i8, ptr %1475, i64 2
  %1478 = load i16, ptr %1477, align 2, !tbaa !75
  %1479 = load i8, ptr %1475, align 2, !tbaa !44
  %1480 = zext nneg i8 %1414 to i64
  %1481 = lshr i64 %1473, %1480
  %1482 = sub nuw i32 %1474, %1415
  br label %1483

1483:                                             ; preds = %1408, %1470
  %1484 = phi i32 [ %1415, %1470 ], [ 0, %1408 ]
  %1485 = phi ptr [ %1471, %1470 ], [ %1410, %1408 ]
  %1486 = phi i32 [ %1472, %1470 ], [ %1411, %1408 ]
  %1487 = phi i64 [ %1481, %1470 ], [ %1412, %1408 ]
  %1488 = phi i32 [ %1482, %1470 ], [ %1413, %1408 ]
  %1489 = phi i16 [ %1478, %1470 ], [ %1417, %1408 ]
  %1490 = phi i8 [ %1476, %1470 ], [ %1414, %1408 ]
  %1491 = phi i8 [ %1479, %1470 ], [ %1418, %1408 ]
  %1492 = zext i8 %1490 to i32
  %1493 = zext nneg i8 %1490 to i64
  %1494 = lshr i64 %1487, %1493
  %1495 = sub i32 %1488, %1492
  %1496 = add nuw nsw i32 %1484, %1492
  store i32 %1496, ptr %71, align 4, !tbaa !37
  %1497 = zext i16 %1489 to i32
  store i32 %1497, ptr %56, align 4, !tbaa !60
  %1498 = zext i8 %1491 to i32
  %1499 = icmp eq i8 %1491, 0
  br i1 %1499, label %1500, label %1501

1500:                                             ; preds = %1483
  store i32 16205, ptr %21, align 8, !tbaa !20
  br label %2104

1501:                                             ; preds = %1483
  %1502 = and i32 %1498, 32
  %1503 = icmp eq i32 %1502, 0
  br i1 %1503, label %1505, label %1504

1504:                                             ; preds = %1501
  store i32 -1, ptr %71, align 4, !tbaa !37
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2104

1505:                                             ; preds = %1501
  %1506 = and i32 %1498, 64
  %1507 = icmp eq i32 %1506, 0
  br i1 %1507, label %1509, label %1508

1508:                                             ; preds = %1505
  store ptr @.str.14, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2104

1509:                                             ; preds = %1505
  %1510 = and i32 %1498, 15
  store i32 %1510, ptr %72, align 4, !tbaa !51
  store i32 16201, ptr %21, align 8, !tbaa !20
  br label %1511

1511:                                             ; preds = %101, %1509
  %1512 = phi i32 [ %1510, %1509 ], [ %102, %101 ]
  %1513 = phi ptr [ %1485, %1509 ], [ %90, %101 ]
  %1514 = phi i32 [ %1486, %1509 ], [ %92, %101 ]
  %1515 = phi i64 [ %1494, %1509 ], [ %94, %101 ]
  %1516 = phi i32 [ %1495, %1509 ], [ %95, %101 ]
  %1517 = phi i32 [ %1352, %1509 ], [ %97, %101 ]
  %1518 = icmp eq i32 %1512, 0
  br i1 %1518, label %1519, label %1521

1519:                                             ; preds = %1511
  %1520 = load i32, ptr %56, align 4, !tbaa !60
  br label %1557

1521:                                             ; preds = %1511
  %1522 = icmp ult i32 %1516, %1512
  br i1 %1522, label %1523, label %1541

1523:                                             ; preds = %1521
  %1524 = icmp eq i32 %1514, 0
  br i1 %1524, label %2199, label %1527

1525:                                             ; preds = %1527
  %1526 = icmp eq i32 %1532, 0
  br i1 %1526, label %2199, label %1527, !llvm.loop !93

1527:                                             ; preds = %1523, %1525
  %1528 = phi ptr [ %1533, %1525 ], [ %1513, %1523 ]
  %1529 = phi i32 [ %1532, %1525 ], [ %1514, %1523 ]
  %1530 = phi i64 [ %1538, %1525 ], [ %1515, %1523 ]
  %1531 = phi i32 [ %1539, %1525 ], [ %1516, %1523 ]
  %1532 = add i32 %1529, -1
  %1533 = getelementptr inbounds nuw i8, ptr %1528, i64 1
  %1534 = load i8, ptr %1528, align 1, !tbaa !44
  %1535 = zext i8 %1534 to i64
  %1536 = zext nneg i32 %1531 to i64
  %1537 = shl i64 %1535, %1536
  %1538 = add i64 %1537, %1530
  %1539 = add i32 %1531, 8
  %1540 = icmp ult i32 %1539, %1512
  br i1 %1540, label %1525, label %1541, !llvm.loop !93

1541:                                             ; preds = %1527, %1521
  %1542 = phi ptr [ %1513, %1521 ], [ %1533, %1527 ]
  %1543 = phi i32 [ %1514, %1521 ], [ %1532, %1527 ]
  %1544 = phi i64 [ %1515, %1521 ], [ %1538, %1527 ]
  %1545 = phi i32 [ %1516, %1521 ], [ %1539, %1527 ]
  %1546 = trunc i64 %1544 to i32
  %1547 = shl nsw i32 -1, %1512
  %1548 = xor i32 %1547, -1
  %1549 = and i32 %1546, %1548
  %1550 = load i32, ptr %56, align 4, !tbaa !60
  %1551 = add i32 %1550, %1549
  store i32 %1551, ptr %56, align 4, !tbaa !60
  %1552 = zext nneg i32 %1512 to i64
  %1553 = lshr i64 %1544, %1552
  %1554 = sub nuw i32 %1545, %1512
  %1555 = load i32, ptr %71, align 4, !tbaa !37
  %1556 = add i32 %1555, %1512
  store i32 %1556, ptr %71, align 4, !tbaa !37
  br label %1557

1557:                                             ; preds = %1519, %1541
  %1558 = phi i32 [ %1551, %1541 ], [ %1520, %1519 ]
  %1559 = phi ptr [ %1542, %1541 ], [ %1513, %1519 ]
  %1560 = phi i32 [ %1543, %1541 ], [ %1514, %1519 ]
  %1561 = phi i64 [ %1553, %1541 ], [ %1515, %1519 ]
  %1562 = phi i32 [ %1554, %1541 ], [ %1516, %1519 ]
  store i32 %1558, ptr %73, align 8, !tbaa !94
  store i32 16202, ptr %21, align 8, !tbaa !20
  br label %1563

1563:                                             ; preds = %88, %1557
  %1564 = phi ptr [ %1559, %1557 ], [ %90, %88 ]
  %1565 = phi i32 [ %1560, %1557 ], [ %92, %88 ]
  %1566 = phi i64 [ %1561, %1557 ], [ %94, %88 ]
  %1567 = phi i32 [ %1562, %1557 ], [ %95, %88 ]
  %1568 = phi i32 [ %1517, %1557 ], [ %97, %88 ]
  %1569 = load ptr, ptr %64, align 8, !tbaa !34
  %1570 = load i32, ptr %69, align 4, !tbaa !92
  %1571 = shl nsw i32 -1, %1570
  %1572 = xor i32 %1571, -1
  %1573 = trunc i64 %1566 to i32
  %1574 = and i32 %1572, %1573
  %1575 = zext nneg i32 %1574 to i64
  %1576 = getelementptr inbounds nuw [4 x i8], ptr %1569, i64 %1575
  %1577 = getelementptr inbounds nuw i8, ptr %1576, i64 1
  %1578 = load i8, ptr %1577, align 1, !tbaa !44
  %1579 = zext i8 %1578 to i32
  %1580 = icmp ult i32 %1567, %1579
  br i1 %1580, label %1581, label %1610

1581:                                             ; preds = %1563
  %1582 = icmp eq i32 %1565, 0
  br i1 %1582, label %2193, label %1583

1583:                                             ; preds = %1581
  %1584 = zext nneg i32 %1567 to i64
  br label %1587

1585:                                             ; preds = %1587
  %1586 = icmp eq i32 %1592, 0
  br i1 %1586, label %2193, label %1587

1587:                                             ; preds = %1583, %1585
  %1588 = phi ptr [ %1564, %1583 ], [ %1593, %1585 ]
  %1589 = phi i32 [ %1565, %1583 ], [ %1592, %1585 ]
  %1590 = phi i64 [ %1566, %1583 ], [ %1597, %1585 ]
  %1591 = phi i64 [ %1584, %1583 ], [ %1598, %1585 ]
  %1592 = add i32 %1589, -1
  %1593 = getelementptr inbounds nuw i8, ptr %1588, i64 1
  %1594 = load i8, ptr %1588, align 1, !tbaa !44
  %1595 = zext i8 %1594 to i64
  %1596 = shl i64 %1595, %1591
  %1597 = add i64 %1596, %1590
  %1598 = add nuw nsw i64 %1591, 8
  %1599 = trunc i64 %1597 to i32
  %1600 = and i32 %1572, %1599
  %1601 = zext nneg i32 %1600 to i64
  %1602 = getelementptr inbounds nuw [4 x i8], ptr %1569, i64 %1601
  %1603 = getelementptr inbounds nuw i8, ptr %1602, i64 1
  %1604 = load i8, ptr %1603, align 1, !tbaa !44
  %1605 = zext i8 %1604 to i64
  %1606 = icmp samesign ult i64 %1598, %1605
  br i1 %1606, label %1585, label %1607

1607:                                             ; preds = %1587
  %1608 = zext i8 %1604 to i32
  %1609 = trunc nuw nsw i64 %1598 to i32
  br label %1610

1610:                                             ; preds = %1607, %1563
  %1611 = phi ptr [ %1576, %1563 ], [ %1602, %1607 ]
  %1612 = phi ptr [ %1564, %1563 ], [ %1593, %1607 ]
  %1613 = phi i32 [ %1565, %1563 ], [ %1592, %1607 ]
  %1614 = phi i64 [ %1566, %1563 ], [ %1597, %1607 ]
  %1615 = phi i32 [ %1567, %1563 ], [ %1609, %1607 ]
  %1616 = phi i8 [ %1578, %1563 ], [ %1604, %1607 ]
  %1617 = phi i32 [ %1579, %1563 ], [ %1608, %1607 ]
  %1618 = getelementptr inbounds nuw i8, ptr %1611, i64 2
  %1619 = load i16, ptr %1618, align 2, !tbaa !75
  %1620 = load i8, ptr %1611, align 2, !tbaa !44
  %1621 = icmp ult i8 %1620, 16
  br i1 %1621, label %1624, label %1622

1622:                                             ; preds = %1610
  %1623 = load i32, ptr %71, align 4, !tbaa !37
  br label %1688

1624:                                             ; preds = %1610
  %1625 = zext nneg i8 %1620 to i32
  %1626 = zext i16 %1619 to i32
  %1627 = add nuw nsw i32 %1617, %1625
  %1628 = shl nsw i32 -1, %1627
  %1629 = xor i32 %1628, -1
  %1630 = trunc i64 %1614 to i32
  %1631 = and i32 %1630, %1629
  %1632 = lshr i32 %1631, %1617
  %1633 = add nuw i32 %1632, %1626
  %1634 = zext i32 %1633 to i64
  %1635 = getelementptr inbounds nuw [4 x i8], ptr %1569, i64 %1634
  %1636 = getelementptr inbounds nuw i8, ptr %1635, i64 1
  %1637 = load i8, ptr %1636, align 1, !tbaa !44
  %1638 = zext i8 %1637 to i32
  %1639 = add nuw nsw i32 %1617, %1638
  %1640 = icmp ugt i32 %1639, %1615
  br i1 %1640, label %1641, label %1673

1641:                                             ; preds = %1624
  %1642 = icmp eq i32 %1613, 0
  br i1 %1642, label %2187, label %1643

1643:                                             ; preds = %1641
  %1644 = zext nneg i32 %1615 to i64
  br label %1647

1645:                                             ; preds = %1647
  %1646 = icmp eq i32 %1652, 0
  br i1 %1646, label %2187, label %1647

1647:                                             ; preds = %1643, %1645
  %1648 = phi ptr [ %1612, %1643 ], [ %1653, %1645 ]
  %1649 = phi i32 [ %1613, %1643 ], [ %1652, %1645 ]
  %1650 = phi i64 [ %1614, %1643 ], [ %1657, %1645 ]
  %1651 = phi i64 [ %1644, %1643 ], [ %1658, %1645 ]
  %1652 = add i32 %1649, -1
  %1653 = getelementptr inbounds nuw i8, ptr %1648, i64 1
  %1654 = load i8, ptr %1648, align 1, !tbaa !44
  %1655 = zext i8 %1654 to i64
  %1656 = shl i64 %1655, %1651
  %1657 = add i64 %1656, %1650
  %1658 = add nuw nsw i64 %1651, 8
  %1659 = trunc i64 %1657 to i32
  %1660 = and i32 %1659, %1629
  %1661 = lshr i32 %1660, %1617
  %1662 = add nuw i32 %1661, %1626
  %1663 = zext i32 %1662 to i64
  %1664 = getelementptr inbounds nuw [4 x i8], ptr %1569, i64 %1663
  %1665 = getelementptr inbounds nuw i8, ptr %1664, i64 1
  %1666 = load i8, ptr %1665, align 1, !tbaa !44
  %1667 = zext i8 %1666 to i32
  %1668 = add nuw nsw i32 %1617, %1667
  %1669 = zext nneg i32 %1668 to i64
  %1670 = icmp samesign ult i64 %1658, %1669
  br i1 %1670, label %1645, label %1671

1671:                                             ; preds = %1647
  %1672 = trunc nuw nsw i64 %1658 to i32
  br label %1673

1673:                                             ; preds = %1671, %1624
  %1674 = phi ptr [ %1612, %1624 ], [ %1653, %1671 ]
  %1675 = phi i32 [ %1613, %1624 ], [ %1652, %1671 ]
  %1676 = phi i64 [ %1614, %1624 ], [ %1657, %1671 ]
  %1677 = phi i32 [ %1615, %1624 ], [ %1672, %1671 ]
  %1678 = phi ptr [ %1635, %1624 ], [ %1664, %1671 ]
  %1679 = phi i8 [ %1637, %1624 ], [ %1666, %1671 ]
  %1680 = getelementptr inbounds nuw i8, ptr %1678, i64 2
  %1681 = load i16, ptr %1680, align 2, !tbaa !75
  %1682 = load i8, ptr %1678, align 2, !tbaa !44
  %1683 = zext nneg i8 %1616 to i64
  %1684 = lshr i64 %1676, %1683
  %1685 = sub nuw i32 %1677, %1617
  %1686 = load i32, ptr %71, align 4, !tbaa !37
  %1687 = add nsw i32 %1686, %1617
  br label %1688

1688:                                             ; preds = %1622, %1673
  %1689 = phi i32 [ %1687, %1673 ], [ %1623, %1622 ]
  %1690 = phi ptr [ %1674, %1673 ], [ %1612, %1622 ]
  %1691 = phi i32 [ %1675, %1673 ], [ %1613, %1622 ]
  %1692 = phi i64 [ %1684, %1673 ], [ %1614, %1622 ]
  %1693 = phi i32 [ %1685, %1673 ], [ %1615, %1622 ]
  %1694 = phi i16 [ %1681, %1673 ], [ %1619, %1622 ]
  %1695 = phi i8 [ %1679, %1673 ], [ %1616, %1622 ]
  %1696 = phi i8 [ %1682, %1673 ], [ %1620, %1622 ]
  %1697 = zext i8 %1695 to i32
  %1698 = zext nneg i8 %1695 to i64
  %1699 = lshr i64 %1692, %1698
  %1700 = sub i32 %1693, %1697
  %1701 = add nsw i32 %1689, %1697
  store i32 %1701, ptr %71, align 4, !tbaa !37
  %1702 = zext i8 %1696 to i32
  %1703 = and i32 %1702, 64
  %1704 = icmp eq i32 %1703, 0
  br i1 %1704, label %1706, label %1705

1705:                                             ; preds = %1688
  store ptr @.str.15, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2104

1706:                                             ; preds = %1688
  %1707 = zext i16 %1694 to i32
  store i32 %1707, ptr %74, align 8, !tbaa !95
  %1708 = and i32 %1702, 15
  store i32 %1708, ptr %72, align 4, !tbaa !51
  store i32 16203, ptr %21, align 8, !tbaa !20
  br label %1709

1709:                                             ; preds = %99, %1706
  %1710 = phi i32 [ %1708, %1706 ], [ %100, %99 ]
  %1711 = phi ptr [ %1690, %1706 ], [ %90, %99 ]
  %1712 = phi i32 [ %1691, %1706 ], [ %92, %99 ]
  %1713 = phi i64 [ %1699, %1706 ], [ %94, %99 ]
  %1714 = phi i32 [ %1700, %1706 ], [ %95, %99 ]
  %1715 = phi i32 [ %1568, %1706 ], [ %97, %99 ]
  %1716 = icmp eq i32 %1710, 0
  br i1 %1716, label %1753, label %1717

1717:                                             ; preds = %1709
  %1718 = icmp ult i32 %1714, %1710
  br i1 %1718, label %1719, label %1737

1719:                                             ; preds = %1717
  %1720 = icmp eq i32 %1712, 0
  br i1 %1720, label %2181, label %1723

1721:                                             ; preds = %1723
  %1722 = icmp eq i32 %1728, 0
  br i1 %1722, label %2181, label %1723, !llvm.loop !96

1723:                                             ; preds = %1719, %1721
  %1724 = phi ptr [ %1729, %1721 ], [ %1711, %1719 ]
  %1725 = phi i32 [ %1728, %1721 ], [ %1712, %1719 ]
  %1726 = phi i64 [ %1734, %1721 ], [ %1713, %1719 ]
  %1727 = phi i32 [ %1735, %1721 ], [ %1714, %1719 ]
  %1728 = add i32 %1725, -1
  %1729 = getelementptr inbounds nuw i8, ptr %1724, i64 1
  %1730 = load i8, ptr %1724, align 1, !tbaa !44
  %1731 = zext i8 %1730 to i64
  %1732 = zext nneg i32 %1727 to i64
  %1733 = shl i64 %1731, %1732
  %1734 = add i64 %1733, %1726
  %1735 = add i32 %1727, 8
  %1736 = icmp ult i32 %1735, %1710
  br i1 %1736, label %1721, label %1737, !llvm.loop !96

1737:                                             ; preds = %1723, %1717
  %1738 = phi ptr [ %1711, %1717 ], [ %1729, %1723 ]
  %1739 = phi i32 [ %1712, %1717 ], [ %1728, %1723 ]
  %1740 = phi i64 [ %1713, %1717 ], [ %1734, %1723 ]
  %1741 = phi i32 [ %1714, %1717 ], [ %1735, %1723 ]
  %1742 = trunc i64 %1740 to i32
  %1743 = shl nsw i32 -1, %1710
  %1744 = xor i32 %1743, -1
  %1745 = and i32 %1742, %1744
  %1746 = load i32, ptr %74, align 8, !tbaa !95
  %1747 = add i32 %1746, %1745
  store i32 %1747, ptr %74, align 8, !tbaa !95
  %1748 = zext nneg i32 %1710 to i64
  %1749 = lshr i64 %1740, %1748
  %1750 = sub nuw i32 %1741, %1710
  %1751 = load i32, ptr %71, align 4, !tbaa !37
  %1752 = add i32 %1751, %1710
  store i32 %1752, ptr %71, align 4, !tbaa !37
  br label %1753

1753:                                             ; preds = %1737, %1709
  %1754 = phi ptr [ %1738, %1737 ], [ %1711, %1709 ]
  %1755 = phi i32 [ %1739, %1737 ], [ %1712, %1709 ]
  %1756 = phi i64 [ %1749, %1737 ], [ %1713, %1709 ]
  %1757 = phi i32 [ %1750, %1737 ], [ %1714, %1709 ]
  store i32 16204, ptr %21, align 8, !tbaa !20
  br label %1758

1758:                                             ; preds = %88, %1753
  %1759 = phi ptr [ %1754, %1753 ], [ %90, %88 ]
  %1760 = phi i32 [ %1755, %1753 ], [ %92, %88 ]
  %1761 = phi i64 [ %1756, %1753 ], [ %94, %88 ]
  %1762 = phi i32 [ %1757, %1753 ], [ %95, %88 ]
  %1763 = phi i32 [ %1715, %1753 ], [ %97, %88 ]
  %1764 = icmp eq i32 %93, 0
  br i1 %1764, label %2218, label %1765

1765:                                             ; preds = %1758
  %1766 = sub i32 %96, %93
  %1767 = load i32, ptr %74, align 8, !tbaa !95
  %1768 = icmp ugt i32 %1767, %1766
  br i1 %1768, label %1769, label %1794

1769:                                             ; preds = %1765
  %1770 = sub nuw i32 %1767, %1766
  %1771 = load i32, ptr %75, align 8, !tbaa !39
  %1772 = icmp ugt i32 %1770, %1771
  br i1 %1772, label %1773, label %1777

1773:                                             ; preds = %1769
  %1774 = load i32, ptr %76, align 8, !tbaa !36
  %1775 = icmp eq i32 %1774, 0
  br i1 %1775, label %1777, label %1776

1776:                                             ; preds = %1773
  store ptr @.str.16, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2104

1777:                                             ; preds = %1773, %1769
  %1778 = load i32, ptr %77, align 4, !tbaa !40
  %1779 = icmp ugt i32 %1770, %1778
  br i1 %1779, label %1780, label %1784

1780:                                             ; preds = %1777
  %1781 = sub nuw i32 %1770, %1778
  %1782 = load i32, ptr %79, align 4, !tbaa !38
  %1783 = sub i32 %1782, %1781
  br label %1786

1784:                                             ; preds = %1777
  %1785 = sub nuw i32 %1778, %1770
  br label %1786

1786:                                             ; preds = %1784, %1780
  %1787 = phi i32 [ %1785, %1784 ], [ %1783, %1780 ]
  %1788 = phi i32 [ %1770, %1784 ], [ %1781, %1780 ]
  %1789 = load ptr, ptr %78, align 8, !tbaa !41
  %1790 = zext i32 %1787 to i64
  %1791 = getelementptr inbounds nuw i8, ptr %1789, i64 %1790
  %1792 = load i32, ptr %56, align 4, !tbaa !60
  %1793 = call i32 @llvm.umin.i32(i32 %1788, i32 %1792)
  br label %1799

1794:                                             ; preds = %1765
  %1795 = zext i32 %1767 to i64
  %1796 = sub nsw i64 0, %1795
  %1797 = getelementptr inbounds i8, ptr %91, i64 %1796
  %1798 = load i32, ptr %56, align 4, !tbaa !60
  br label %1799

1799:                                             ; preds = %1786, %1794
  %1800 = phi i32 [ %1798, %1794 ], [ %1792, %1786 ]
  %1801 = phi i32 [ %1798, %1794 ], [ %1793, %1786 ]
  %1802 = phi ptr [ %1797, %1794 ], [ %1791, %1786 ]
  %1803 = call i32 @llvm.umin.i32(i32 %1801, i32 %93)
  %1804 = sub i32 %1800, %1803
  store i32 %1804, ptr %56, align 4, !tbaa !60
  %1805 = add i32 %1803, -1
  %1806 = zext i32 %1805 to i64
  %1807 = add nuw nsw i64 %1806, 1
  %1808 = icmp ult i32 %1805, 3
  %1809 = ptrtoaddr ptr %1802 to i64
  %1810 = sub i64 %98, %1809
  %1811 = icmp ult i64 %1810, 32
  %1812 = select i1 %1808, i1 true, i1 %1811
  br i1 %1812, label %1852, label %1813

1813:                                             ; preds = %1799
  %1814 = icmp ult i32 %1805, 31
  br i1 %1814, label %1836, label %1815

1815:                                             ; preds = %1813
  %1816 = and i64 %1807, 28
  %1817 = and i64 %1807, 8589934560
  %1818 = getelementptr i8, ptr %91, i64 %1817
  %1819 = trunc i64 %1817 to i32
  %1820 = sub i32 %1803, %1819
  %1821 = getelementptr i8, ptr %1802, i64 %1817
  br label %1822

1822:                                             ; preds = %1822, %1815
  %1823 = phi i64 [ 0, %1815 ], [ %1830, %1822 ]
  %1824 = getelementptr i8, ptr %91, i64 %1823
  %1825 = getelementptr i8, ptr %1802, i64 %1823
  %1826 = getelementptr i8, ptr %1825, i64 16
  %1827 = load <16 x i8>, ptr %1825, align 1, !tbaa !44
  %1828 = load <16 x i8>, ptr %1826, align 1, !tbaa !44
  %1829 = getelementptr i8, ptr %1824, i64 16
  store <16 x i8> %1827, ptr %1824, align 1, !tbaa !44
  store <16 x i8> %1828, ptr %1829, align 1, !tbaa !44
  %1830 = add nuw i64 %1823, 32
  %1831 = icmp eq i64 %1830, %1817
  br i1 %1831, label %1832, label %1822, !llvm.loop !97

1832:                                             ; preds = %1822
  %1833 = icmp eq i64 %1807, %1817
  br i1 %1833, label %1906, label %1834

1834:                                             ; preds = %1832
  %1835 = icmp eq i64 %1816, 0
  br i1 %1835, label %1852, label %1836, !prof !98

1836:                                             ; preds = %1813, %1834
  %1837 = phi i64 [ %1817, %1834 ], [ 0, %1813 ]
  %1838 = and i64 %1807, 8589934588
  %1839 = getelementptr i8, ptr %91, i64 %1838
  %1840 = trunc i64 %1838 to i32
  %1841 = sub i32 %1803, %1840
  %1842 = getelementptr i8, ptr %1802, i64 %1838
  br label %1843

1843:                                             ; preds = %1843, %1836
  %1844 = phi i64 [ %1837, %1836 ], [ %1848, %1843 ]
  %1845 = getelementptr i8, ptr %91, i64 %1844
  %1846 = getelementptr i8, ptr %1802, i64 %1844
  %1847 = load <4 x i8>, ptr %1846, align 1, !tbaa !44
  store <4 x i8> %1847, ptr %1845, align 1, !tbaa !44
  %1848 = add nuw i64 %1844, 4
  %1849 = icmp eq i64 %1848, %1838
  br i1 %1849, label %1850, label %1843, !llvm.loop !99

1850:                                             ; preds = %1843
  %1851 = icmp eq i64 %1807, %1838
  br i1 %1851, label %1906, label %1852

1852:                                             ; preds = %1799, %1834, %1850
  %1853 = phi ptr [ %91, %1799 ], [ %1818, %1834 ], [ %1839, %1850 ]
  %1854 = phi i32 [ %1803, %1799 ], [ %1820, %1834 ], [ %1841, %1850 ]
  %1855 = phi ptr [ %1802, %1799 ], [ %1821, %1834 ], [ %1842, %1850 ]
  %1856 = add i32 %1854, -1
  %1857 = and i32 %1854, 7
  %1858 = icmp eq i32 %1857, 0
  br i1 %1858, label %1870, label %1859

1859:                                             ; preds = %1852, %1859
  %1860 = phi ptr [ %1866, %1859 ], [ %1853, %1852 ]
  %1861 = phi i32 [ %1867, %1859 ], [ %1854, %1852 ]
  %1862 = phi ptr [ %1864, %1859 ], [ %1855, %1852 ]
  %1863 = phi i32 [ %1868, %1859 ], [ 0, %1852 ]
  %1864 = getelementptr inbounds nuw i8, ptr %1862, i64 1
  %1865 = load i8, ptr %1862, align 1, !tbaa !44
  %1866 = getelementptr inbounds nuw i8, ptr %1860, i64 1
  store i8 %1865, ptr %1860, align 1, !tbaa !44
  %1867 = add i32 %1861, -1
  %1868 = add i32 %1863, 1
  %1869 = icmp eq i32 %1868, %1857
  br i1 %1869, label %1870, label %1859, !llvm.loop !100

1870:                                             ; preds = %1859, %1852
  %1871 = phi ptr [ poison, %1852 ], [ %1866, %1859 ]
  %1872 = phi ptr [ %1853, %1852 ], [ %1866, %1859 ]
  %1873 = phi i32 [ %1854, %1852 ], [ %1867, %1859 ]
  %1874 = phi ptr [ %1855, %1852 ], [ %1864, %1859 ]
  %1875 = icmp ult i32 %1856, 7
  br i1 %1875, label %1906, label %1876

1876:                                             ; preds = %1870, %1876
  %1877 = phi ptr [ %1903, %1876 ], [ %1872, %1870 ]
  %1878 = phi i32 [ %1904, %1876 ], [ %1873, %1870 ]
  %1879 = phi ptr [ %1901, %1876 ], [ %1874, %1870 ]
  %1880 = getelementptr inbounds nuw i8, ptr %1879, i64 1
  %1881 = load i8, ptr %1879, align 1, !tbaa !44
  %1882 = getelementptr inbounds nuw i8, ptr %1877, i64 1
  store i8 %1881, ptr %1877, align 1, !tbaa !44
  %1883 = getelementptr inbounds nuw i8, ptr %1879, i64 2
  %1884 = load i8, ptr %1880, align 1, !tbaa !44
  %1885 = getelementptr inbounds nuw i8, ptr %1877, i64 2
  store i8 %1884, ptr %1882, align 1, !tbaa !44
  %1886 = getelementptr inbounds nuw i8, ptr %1879, i64 3
  %1887 = load i8, ptr %1883, align 1, !tbaa !44
  %1888 = getelementptr inbounds nuw i8, ptr %1877, i64 3
  store i8 %1887, ptr %1885, align 1, !tbaa !44
  %1889 = getelementptr inbounds nuw i8, ptr %1879, i64 4
  %1890 = load i8, ptr %1886, align 1, !tbaa !44
  %1891 = getelementptr inbounds nuw i8, ptr %1877, i64 4
  store i8 %1890, ptr %1888, align 1, !tbaa !44
  %1892 = getelementptr inbounds nuw i8, ptr %1879, i64 5
  %1893 = load i8, ptr %1889, align 1, !tbaa !44
  %1894 = getelementptr inbounds nuw i8, ptr %1877, i64 5
  store i8 %1893, ptr %1891, align 1, !tbaa !44
  %1895 = getelementptr inbounds nuw i8, ptr %1879, i64 6
  %1896 = load i8, ptr %1892, align 1, !tbaa !44
  %1897 = getelementptr inbounds nuw i8, ptr %1877, i64 6
  store i8 %1896, ptr %1894, align 1, !tbaa !44
  %1898 = getelementptr inbounds nuw i8, ptr %1879, i64 7
  %1899 = load i8, ptr %1895, align 1, !tbaa !44
  %1900 = getelementptr inbounds nuw i8, ptr %1877, i64 7
  store i8 %1899, ptr %1897, align 1, !tbaa !44
  %1901 = getelementptr inbounds nuw i8, ptr %1879, i64 8
  %1902 = load i8, ptr %1898, align 1, !tbaa !44
  %1903 = getelementptr inbounds nuw i8, ptr %1877, i64 8
  store i8 %1902, ptr %1900, align 1, !tbaa !44
  %1904 = add i32 %1878, -8
  %1905 = icmp eq i32 %1904, 0
  br i1 %1905, label %1906, label %1876, !llvm.loop !101

1906:                                             ; preds = %1870, %1876, %1850, %1832
  %1907 = phi ptr [ %1839, %1850 ], [ %1818, %1832 ], [ %1871, %1870 ], [ %1903, %1876 ]
  %1908 = sub i32 %93, %1803
  %1909 = load i32, ptr %56, align 4, !tbaa !60
  %1910 = icmp eq i32 %1909, 0
  br i1 %1910, label %1911, label %2104

1911:                                             ; preds = %1906
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2104

1912:                                             ; preds = %88
  %1913 = icmp eq i32 %93, 0
  br i1 %1913, label %2218, label %1914

1914:                                             ; preds = %1912
  %1915 = load i32, ptr %56, align 4, !tbaa !60
  %1916 = trunc i32 %1915 to i8
  %1917 = getelementptr inbounds nuw i8, ptr %91, i64 1
  store i8 %1916, ptr %91, align 1, !tbaa !44
  %1918 = add i32 %93, -1
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2104

1919:                                             ; preds = %88
  %1920 = load i32, ptr %49, align 8, !tbaa !24
  %1921 = icmp eq i32 %1920, 0
  br i1 %1921, label %2017, label %1922

1922:                                             ; preds = %1919
  %1923 = icmp ult i32 %95, 32
  br i1 %1923, label %1924, label %1974

1924:                                             ; preds = %1922
  %1925 = zext nneg i32 %95 to i64
  %1926 = icmp eq i32 %92, 0
  br i1 %1926, label %2170, label %1927

1927:                                             ; preds = %1924
  %1928 = add i32 %92, -1
  %1929 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %1930 = load i8, ptr %90, align 1, !tbaa !44
  %1931 = zext i8 %1930 to i64
  %1932 = shl nuw nsw i64 %1931, %1925
  %1933 = add i64 %1932, %94
  %1934 = add nuw nsw i64 %1925, 8
  %1935 = icmp ult i32 %95, 24
  br i1 %1935, label %1936, label %1968

1936:                                             ; preds = %1927
  %1937 = icmp eq i32 %1928, 0
  br i1 %1937, label %2170, label %1938

1938:                                             ; preds = %1936
  %1939 = add i32 %92, -2
  %1940 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %1941 = load i8, ptr %1929, align 1, !tbaa !44
  %1942 = zext i8 %1941 to i64
  %1943 = shl nuw nsw i64 %1942, %1934
  %1944 = add i64 %1943, %1933
  %1945 = add nuw nsw i64 %1925, 16
  %1946 = icmp ult i32 %95, 16
  br i1 %1946, label %1947, label %1968

1947:                                             ; preds = %1938
  %1948 = icmp eq i32 %1939, 0
  br i1 %1948, label %2170, label %1949

1949:                                             ; preds = %1947
  %1950 = add i32 %92, -3
  %1951 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %1952 = load i8, ptr %1940, align 1, !tbaa !44
  %1953 = zext i8 %1952 to i64
  %1954 = shl nuw nsw i64 %1953, %1945
  %1955 = add i64 %1954, %1944
  %1956 = add nuw nsw i64 %1925, 24
  %1957 = icmp ult i32 %95, 8
  br i1 %1957, label %1958, label %1968

1958:                                             ; preds = %1949
  %1959 = icmp eq i32 %1950, 0
  br i1 %1959, label %2170, label %1960

1960:                                             ; preds = %1958
  %1961 = add i32 %92, -4
  %1962 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %1963 = load i8, ptr %1951, align 1, !tbaa !44
  %1964 = zext i8 %1963 to i64
  %1965 = shl nuw nsw i64 %1964, %1956
  %1966 = add i64 %1965, %1955
  %1967 = or disjoint i64 %1925, 32
  br label %1968

1968:                                             ; preds = %1960, %1949, %1938, %1927
  %1969 = phi i32 [ %1928, %1927 ], [ %1939, %1938 ], [ %1950, %1949 ], [ %1961, %1960 ]
  %1970 = phi ptr [ %1929, %1927 ], [ %1940, %1938 ], [ %1951, %1949 ], [ %1962, %1960 ]
  %1971 = phi i64 [ %1933, %1927 ], [ %1944, %1938 ], [ %1955, %1949 ], [ %1966, %1960 ]
  %1972 = phi i64 [ %1934, %1927 ], [ %1945, %1938 ], [ %1956, %1949 ], [ %1967, %1960 ]
  %1973 = trunc nuw nsw i64 %1972 to i32
  br label %1974

1974:                                             ; preds = %1968, %1922
  %1975 = phi ptr [ %90, %1922 ], [ %1970, %1968 ]
  %1976 = phi i32 [ %92, %1922 ], [ %1969, %1968 ]
  %1977 = phi i64 [ %94, %1922 ], [ %1971, %1968 ]
  %1978 = phi i32 [ %95, %1922 ], [ %1973, %1968 ]
  %1979 = sub i32 %96, %93
  %1980 = zext i32 %1979 to i64
  %1981 = load i64, ptr %50, align 8, !tbaa !102
  %1982 = add i64 %1981, %1980
  store i64 %1982, ptr %50, align 8, !tbaa !102
  %1983 = load i64, ptr %51, align 8, !tbaa !21
  %1984 = add i64 %1983, %1980
  store i64 %1984, ptr %51, align 8, !tbaa !21
  %1985 = and i32 %1920, 4
  %1986 = icmp ne i32 %1985, 0
  %1987 = icmp ne i32 %96, %93
  %1988 = select i1 %1986, i1 %1987, i1 false
  br i1 %1988, label %1989, label %2003

1989:                                             ; preds = %1974
  %1990 = load i32, ptr %52, align 8, !tbaa !28
  %1991 = icmp eq i32 %1990, 0
  %1992 = load i64, ptr %53, align 8, !tbaa !53
  %1993 = sub nsw i64 0, %1980
  %1994 = getelementptr inbounds i8, ptr %91, i64 %1993
  br i1 %1991, label %1997, label %1995

1995:                                             ; preds = %1989
  %1996 = call i64 @crc32(i64 noundef %1992, ptr noundef %1994, i32 noundef %1979) #10
  br label %1999

1997:                                             ; preds = %1989
  %1998 = call i64 @adler32(i64 noundef %1992, ptr noundef %1994, i32 noundef %1979) #10
  br label %1999

1999:                                             ; preds = %1997, %1995
  %2000 = phi i64 [ %1996, %1995 ], [ %1998, %1997 ]
  store i64 %2000, ptr %53, align 8, !tbaa !53
  store i64 %2000, ptr %54, align 8, !tbaa !25
  %2001 = load i32, ptr %49, align 8, !tbaa !24
  %2002 = and i32 %2001, 4
  br label %2003

2003:                                             ; preds = %1999, %1974
  %2004 = phi i32 [ %2002, %1999 ], [ %1985, %1974 ]
  %2005 = phi i32 [ %2001, %1999 ], [ %1920, %1974 ]
  %2006 = icmp eq i32 %2004, 0
  br i1 %2006, label %2017, label %2007

2007:                                             ; preds = %2003
  %2008 = load i32, ptr %52, align 8, !tbaa !28
  %2009 = icmp eq i32 %2008, 0
  %2010 = trunc i64 %1977 to i32
  %2011 = call i32 @llvm.bswap.i32(i32 %2010)
  %2012 = zext i32 %2011 to i64
  %2013 = select i1 %2009, i64 %2012, i64 %1977
  %2014 = load i64, ptr %53, align 8, !tbaa !53
  %2015 = icmp eq i64 %2013, %2014
  br i1 %2015, label %2017, label %2016

2016:                                             ; preds = %2007
  store ptr @.str.17, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2104

2017:                                             ; preds = %2007, %2003, %1919
  %2018 = phi i32 [ 0, %1919 ], [ %2005, %2003 ], [ %2005, %2007 ]
  %2019 = phi ptr [ %90, %1919 ], [ %1975, %2003 ], [ %1975, %2007 ]
  %2020 = phi i32 [ %92, %1919 ], [ %1976, %2003 ], [ %1976, %2007 ]
  %2021 = phi i64 [ %94, %1919 ], [ 0, %2003 ], [ 0, %2007 ]
  %2022 = phi i32 [ %95, %1919 ], [ 0, %2003 ], [ 0, %2007 ]
  %2023 = phi i32 [ %96, %1919 ], [ %93, %2003 ], [ %93, %2007 ]
  store i32 16207, ptr %21, align 8, !tbaa !20
  br label %2024

2024:                                             ; preds = %105, %2017
  %2025 = phi i32 [ %2018, %2017 ], [ %106, %105 ]
  %2026 = phi ptr [ %2019, %2017 ], [ %90, %105 ]
  %2027 = phi i32 [ %2020, %2017 ], [ %92, %105 ]
  %2028 = phi i64 [ %2021, %2017 ], [ %94, %105 ]
  %2029 = phi i32 [ %2022, %2017 ], [ %95, %105 ]
  %2030 = phi i32 [ %2023, %2017 ], [ %96, %105 ]
  %2031 = icmp eq i32 %2025, 0
  br i1 %2031, label %2099, label %2032

2032:                                             ; preds = %2024
  %2033 = load i32, ptr %52, align 8, !tbaa !28
  %2034 = icmp eq i32 %2033, 0
  br i1 %2034, label %2099, label %2035

2035:                                             ; preds = %2032
  %2036 = icmp ult i32 %2029, 32
  br i1 %2036, label %2037, label %2087

2037:                                             ; preds = %2035
  %2038 = zext nneg i32 %2029 to i64
  %2039 = icmp eq i32 %2027, 0
  br i1 %2039, label %2165, label %2040

2040:                                             ; preds = %2037
  %2041 = add i32 %2027, -1
  %2042 = getelementptr inbounds nuw i8, ptr %2026, i64 1
  %2043 = load i8, ptr %2026, align 1, !tbaa !44
  %2044 = zext i8 %2043 to i64
  %2045 = shl nuw nsw i64 %2044, %2038
  %2046 = add i64 %2045, %2028
  %2047 = add nuw nsw i64 %2038, 8
  %2048 = icmp ult i32 %2029, 24
  br i1 %2048, label %2049, label %2081

2049:                                             ; preds = %2040
  %2050 = icmp eq i32 %2041, 0
  br i1 %2050, label %2165, label %2051

2051:                                             ; preds = %2049
  %2052 = add i32 %2027, -2
  %2053 = getelementptr inbounds nuw i8, ptr %2026, i64 2
  %2054 = load i8, ptr %2042, align 1, !tbaa !44
  %2055 = zext i8 %2054 to i64
  %2056 = shl nuw nsw i64 %2055, %2047
  %2057 = add i64 %2056, %2046
  %2058 = add nuw nsw i64 %2038, 16
  %2059 = icmp ult i32 %2029, 16
  br i1 %2059, label %2060, label %2081

2060:                                             ; preds = %2051
  %2061 = icmp eq i32 %2052, 0
  br i1 %2061, label %2165, label %2062

2062:                                             ; preds = %2060
  %2063 = add i32 %2027, -3
  %2064 = getelementptr inbounds nuw i8, ptr %2026, i64 3
  %2065 = load i8, ptr %2053, align 1, !tbaa !44
  %2066 = zext i8 %2065 to i64
  %2067 = shl nuw nsw i64 %2066, %2058
  %2068 = add i64 %2067, %2057
  %2069 = add nuw nsw i64 %2038, 24
  %2070 = icmp ult i32 %2029, 8
  br i1 %2070, label %2071, label %2081

2071:                                             ; preds = %2062
  %2072 = icmp eq i32 %2063, 0
  br i1 %2072, label %2165, label %2073

2073:                                             ; preds = %2071
  %2074 = add i32 %2027, -4
  %2075 = getelementptr inbounds nuw i8, ptr %2026, i64 4
  %2076 = load i8, ptr %2064, align 1, !tbaa !44
  %2077 = zext i8 %2076 to i64
  %2078 = shl nuw nsw i64 %2077, %2069
  %2079 = add i64 %2078, %2068
  %2080 = or disjoint i64 %2038, 32
  br label %2081

2081:                                             ; preds = %2073, %2062, %2051, %2040
  %2082 = phi i32 [ %2041, %2040 ], [ %2052, %2051 ], [ %2063, %2062 ], [ %2074, %2073 ]
  %2083 = phi ptr [ %2042, %2040 ], [ %2053, %2051 ], [ %2064, %2062 ], [ %2075, %2073 ]
  %2084 = phi i64 [ %2046, %2040 ], [ %2057, %2051 ], [ %2068, %2062 ], [ %2079, %2073 ]
  %2085 = phi i64 [ %2047, %2040 ], [ %2058, %2051 ], [ %2069, %2062 ], [ %2080, %2073 ]
  %2086 = trunc nuw nsw i64 %2085 to i32
  br label %2087

2087:                                             ; preds = %2081, %2035
  %2088 = phi ptr [ %2026, %2035 ], [ %2083, %2081 ]
  %2089 = phi i32 [ %2027, %2035 ], [ %2082, %2081 ]
  %2090 = phi i64 [ %2028, %2035 ], [ %2084, %2081 ]
  %2091 = phi i32 [ %2029, %2035 ], [ %2086, %2081 ]
  %2092 = and i32 %2025, 4
  %2093 = icmp eq i32 %2092, 0
  br i1 %2093, label %2099, label %2094

2094:                                             ; preds = %2087
  %2095 = load i64, ptr %51, align 8, !tbaa !21
  %2096 = and i64 %2095, 4294967295
  %2097 = icmp eq i64 %2090, %2096
  br i1 %2097, label %2099, label %2098

2098:                                             ; preds = %2094
  store ptr @.str.18, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2104

2099:                                             ; preds = %2094, %2087, %2032, %2024
  %2100 = phi ptr [ %2026, %2024 ], [ %2026, %2032 ], [ %2088, %2087 ], [ %2088, %2094 ]
  %2101 = phi i32 [ %2027, %2024 ], [ %2027, %2032 ], [ %2089, %2087 ], [ %2089, %2094 ]
  %2102 = phi i64 [ %2028, %2024 ], [ %2028, %2032 ], [ 0, %2087 ], [ 0, %2094 ]
  %2103 = phi i32 [ %2029, %2024 ], [ %2029, %2032 ], [ 0, %2087 ], [ 0, %2094 ]
  store i32 16208, ptr %21, align 8, !tbaa !20
  br label %2218

2104:                                             ; preds = %1149, %1292, %1906, %1911, %1356, %1365, %2098, %2016, %1914, %1776, %1705, %1508, %1504, %1500, %1339, %1330, %1326, %1024, %953, %908, %900, %880, %812, %780, %705, %692, %250, %246, %207, %206, %191, %187, %169, %130
  %2105 = phi ptr [ %90, %130 ], [ %157, %169 ], [ %157, %187 ], [ %157, %191 ], [ %157, %206 ], [ %157, %207 ], [ %239, %246 ], [ %239, %250 ], [ %681, %692 ], [ %694, %705 ], [ %770, %780 ], [ %795, %812 ], [ %872, %880 ], [ %903, %900 ], [ %890, %908 ], [ %935, %953 ], [ %969, %1024 ], [ %1141, %1149 ], [ %1320, %1326 ], [ %1320, %1330 ], [ %1320, %1339 ], [ %1359, %1365 ], [ %1359, %1356 ], [ %1485, %1500 ], [ %1485, %1504 ], [ %1485, %1508 ], [ %1690, %1705 ], [ %1759, %1776 ], [ %1759, %1911 ], [ %1759, %1906 ], [ %90, %1914 ], [ %1975, %2016 ], [ %2088, %2098 ], [ %1221, %1292 ]
  %2106 = phi ptr [ %91, %130 ], [ %91, %169 ], [ %91, %187 ], [ %91, %191 ], [ %91, %206 ], [ %91, %207 ], [ %91, %246 ], [ %91, %250 ], [ %91, %692 ], [ %91, %705 ], [ %91, %780 ], [ %91, %812 ], [ %91, %880 ], [ %905, %900 ], [ %91, %908 ], [ %91, %953 ], [ %91, %1024 ], [ %91, %1149 ], [ %91, %1326 ], [ %91, %1330 ], [ %91, %1339 ], [ %1357, %1365 ], [ %1357, %1356 ], [ %91, %1500 ], [ %91, %1504 ], [ %91, %1508 ], [ %91, %1705 ], [ %91, %1776 ], [ %1907, %1911 ], [ %1907, %1906 ], [ %1917, %1914 ], [ %91, %2016 ], [ %91, %2098 ], [ %91, %1292 ]
  %2107 = phi i32 [ %92, %130 ], [ %158, %169 ], [ %158, %187 ], [ %158, %191 ], [ %158, %206 ], [ %158, %207 ], [ %240, %246 ], [ %240, %250 ], [ %682, %692 ], [ %695, %705 ], [ %771, %780 ], [ %796, %812 ], [ %873, %880 ], [ %902, %900 ], [ %891, %908 ], [ %936, %953 ], [ %970, %1024 ], [ %1142, %1149 ], [ %1321, %1326 ], [ %1321, %1330 ], [ %1321, %1339 ], [ %1360, %1365 ], [ %1360, %1356 ], [ %1486, %1500 ], [ %1486, %1504 ], [ %1486, %1508 ], [ %1691, %1705 ], [ %1760, %1776 ], [ %1760, %1911 ], [ %1760, %1906 ], [ %92, %1914 ], [ %1976, %2016 ], [ %2089, %2098 ], [ %1222, %1292 ]
  %2108 = phi i32 [ %93, %130 ], [ %93, %169 ], [ %93, %187 ], [ %93, %191 ], [ %93, %206 ], [ %93, %207 ], [ %93, %246 ], [ %93, %250 ], [ %93, %692 ], [ %93, %705 ], [ %93, %780 ], [ %93, %812 ], [ %93, %880 ], [ %904, %900 ], [ %93, %908 ], [ %93, %953 ], [ %93, %1024 ], [ %93, %1149 ], [ %93, %1326 ], [ %93, %1330 ], [ %93, %1339 ], [ %1358, %1365 ], [ %1358, %1356 ], [ %93, %1500 ], [ %93, %1504 ], [ %93, %1508 ], [ %93, %1705 ], [ %93, %1776 ], [ %1908, %1911 ], [ %1908, %1906 ], [ %1918, %1914 ], [ %93, %2016 ], [ %93, %2098 ], [ %93, %1292 ]
  %2109 = phi i64 [ %94, %130 ], [ 0, %169 ], [ %159, %187 ], [ %159, %191 ], [ %193, %206 ], [ 0, %207 ], [ %241, %246 ], [ %241, %250 ], [ %683, %692 ], [ %696, %705 ], [ %783, %780 ], [ %813, %812 ], [ %874, %880 ], [ %892, %900 ], [ %892, %908 ], [ %948, %953 ], [ %971, %1024 ], [ %1146, %1149 ], [ %1322, %1326 ], [ %1322, %1330 ], [ %1322, %1339 ], [ %1361, %1365 ], [ %1361, %1356 ], [ %1494, %1500 ], [ %1494, %1504 ], [ %1494, %1508 ], [ %1699, %1705 ], [ %1761, %1776 ], [ %1761, %1911 ], [ %1761, %1906 ], [ %94, %1914 ], [ %1977, %2016 ], [ %2090, %2098 ], [ %1223, %1292 ]
  %2110 = phi i32 [ %95, %130 ], [ 0, %169 ], [ %160, %187 ], [ %160, %191 ], [ %194, %206 ], [ 0, %207 ], [ %242, %246 ], [ %242, %250 ], [ %684, %692 ], [ %697, %705 ], [ %784, %780 ], [ %814, %812 ], [ %875, %880 ], [ %893, %900 ], [ %893, %908 ], [ %949, %953 ], [ %972, %1024 ], [ %1147, %1149 ], [ %1323, %1326 ], [ %1323, %1330 ], [ %1323, %1339 ], [ %1362, %1365 ], [ %1362, %1356 ], [ %1495, %1500 ], [ %1495, %1504 ], [ %1495, %1508 ], [ %1700, %1705 ], [ %1762, %1776 ], [ %1762, %1911 ], [ %1762, %1906 ], [ %95, %1914 ], [ %1978, %2016 ], [ %2091, %2098 ], [ %1224, %1292 ]
  %2111 = phi i32 [ %96, %130 ], [ %96, %169 ], [ %96, %187 ], [ %96, %191 ], [ %96, %206 ], [ %96, %207 ], [ %96, %246 ], [ %96, %250 ], [ %96, %692 ], [ %96, %705 ], [ %96, %780 ], [ %96, %812 ], [ %96, %880 ], [ %96, %900 ], [ %96, %908 ], [ %96, %953 ], [ %96, %1024 ], [ %96, %1149 ], [ %96, %1326 ], [ %96, %1330 ], [ %96, %1339 ], [ %96, %1365 ], [ %96, %1356 ], [ %96, %1500 ], [ %96, %1504 ], [ %96, %1508 ], [ %96, %1705 ], [ %96, %1776 ], [ %96, %1911 ], [ %96, %1906 ], [ %96, %1914 ], [ %93, %2016 ], [ %2030, %2098 ], [ %96, %1292 ]
  %2112 = phi i32 [ %97, %130 ], [ %97, %169 ], [ %97, %187 ], [ %97, %191 ], [ %97, %206 ], [ %97, %207 ], [ %97, %246 ], [ %97, %250 ], [ %97, %692 ], [ %97, %705 ], [ %97, %780 ], [ %97, %812 ], [ %97, %880 ], [ %97, %900 ], [ %97, %908 ], [ %97, %953 ], [ %1022, %1024 ], [ %1032, %1149 ], [ %1032, %1326 ], [ %1328, %1330 ], [ %1337, %1339 ], [ %1352, %1365 ], [ %1352, %1356 ], [ %1352, %1500 ], [ %1352, %1504 ], [ %1352, %1508 ], [ %1568, %1705 ], [ %1763, %1776 ], [ %1763, %1911 ], [ %1763, %1906 ], [ %97, %1914 ], [ %97, %2016 ], [ %97, %2098 ], [ %1032, %1292 ]
  %2113 = load i32, ptr %21, align 8, !tbaa !20
  br label %88

2114:                                             ; preds = %1190
  %2115 = trunc nuw nsw i64 %1191 to i32
  br label %2218

2116:                                             ; preds = %1123
  %2117 = trunc nuw nsw i64 %1124 to i32
  br label %2218

2118:                                             ; preds = %1160
  %2119 = trunc nuw nsw i64 %1161 to i32
  br label %2218

2120:                                             ; preds = %140, %127
  %2121 = phi i64 [ %128, %127 ], [ %138, %140 ]
  %2122 = phi i64 [ %94, %127 ], [ %137, %140 ]
  %2123 = phi ptr [ %90, %127 ], [ %133, %140 ]
  %2124 = trunc nuw nsw i64 %2121 to i32
  br label %2218

2125:                                             ; preds = %664, %652
  %2126 = phi i64 [ %653, %652 ], [ %662, %664 ]
  %2127 = phi i64 [ %645, %652 ], [ %661, %664 ]
  %2128 = phi ptr [ %643, %652 ], [ %657, %664 ]
  %2129 = trunc nuw nsw i64 %2126 to i32
  br label %2218

2130:                                             ; preds = %418, %401
  %2131 = phi i64 [ %407, %401 ], [ %416, %418 ]
  %2132 = phi i64 [ %404, %401 ], [ %415, %418 ]
  %2133 = phi ptr [ %402, %401 ], [ %411, %418 ]
  %2134 = trunc nuw nsw i64 %2131 to i32
  br label %2218

2135:                                             ; preds = %357, %341
  %2136 = phi i64 [ %346, %341 ], [ %355, %357 ]
  %2137 = phi i64 [ %343, %341 ], [ %354, %357 ]
  %2138 = phi ptr [ %345, %341 ], [ %350, %357 ]
  %2139 = trunc nuw nsw i64 %2136 to i32
  br label %2218

2140:                                             ; preds = %309, %298, %287, %271
  %2141 = phi i64 [ %276, %271 ], [ %285, %287 ], [ %296, %298 ], [ %307, %309 ]
  %2142 = phi i64 [ %273, %271 ], [ %284, %287 ], [ %295, %298 ], [ %306, %309 ]
  %2143 = phi ptr [ %275, %271 ], [ %280, %287 ], [ %291, %298 ], [ %302, %309 ]
  %2144 = trunc nuw nsw i64 %2141 to i32
  br label %2218

2145:                                             ; preds = %222, %119
  %2146 = phi i64 [ %120, %119 ], [ %220, %222 ]
  %2147 = phi i64 [ %94, %119 ], [ %219, %222 ]
  %2148 = phi ptr [ %90, %119 ], [ %215, %222 ]
  %2149 = trunc nuw nsw i64 %2146 to i32
  br label %2218

2150:                                             ; preds = %738, %727, %716, %114
  %2151 = phi i64 [ %115, %114 ], [ %714, %716 ], [ %725, %727 ], [ %736, %738 ]
  %2152 = phi i64 [ %94, %114 ], [ %713, %716 ], [ %724, %727 ], [ %735, %738 ]
  %2153 = phi ptr [ %90, %114 ], [ %709, %716 ], [ %720, %727 ], [ %731, %738 ]
  %2154 = trunc nuw nsw i64 %2151 to i32
  br label %2218

2155:                                             ; preds = %856, %845, %834, %821
  %2156 = phi i64 [ %823, %821 ], [ %832, %834 ], [ %843, %845 ], [ %854, %856 ]
  %2157 = phi i64 [ %818, %821 ], [ %831, %834 ], [ %842, %845 ], [ %853, %856 ]
  %2158 = phi ptr [ %90, %821 ], [ %827, %834 ], [ %838, %845 ], [ %849, %856 ]
  %2159 = trunc nuw nsw i64 %2156 to i32
  br label %2218

2160:                                             ; preds = %918, %109
  %2161 = phi i64 [ %110, %109 ], [ %916, %918 ]
  %2162 = phi i64 [ %94, %109 ], [ %915, %918 ]
  %2163 = phi ptr [ %90, %109 ], [ %911, %918 ]
  %2164 = trunc nuw nsw i64 %2161 to i32
  br label %2218

2165:                                             ; preds = %2071, %2060, %2049, %2037
  %2166 = phi i64 [ %2038, %2037 ], [ %2047, %2049 ], [ %2058, %2060 ], [ %2069, %2071 ]
  %2167 = phi i64 [ %2028, %2037 ], [ %2046, %2049 ], [ %2057, %2060 ], [ %2068, %2071 ]
  %2168 = phi ptr [ %2026, %2037 ], [ %2042, %2049 ], [ %2053, %2060 ], [ %2064, %2071 ]
  %2169 = trunc nuw nsw i64 %2166 to i32
  br label %2218

2170:                                             ; preds = %1958, %1947, %1936, %1924
  %2171 = phi i64 [ %1925, %1924 ], [ %1934, %1936 ], [ %1945, %1947 ], [ %1956, %1958 ]
  %2172 = phi i64 [ %94, %1924 ], [ %1933, %1936 ], [ %1944, %1947 ], [ %1955, %1958 ]
  %2173 = phi ptr [ %90, %1924 ], [ %1929, %1936 ], [ %1940, %1947 ], [ %1951, %1958 ]
  %2174 = trunc nuw nsw i64 %2171 to i32
  br label %2218

2175:                                             ; preds = %1056, %1060
  %2176 = phi i64 [ %1072, %1060 ], [ %1044, %1056 ]
  %2177 = zext i32 %1045 to i64
  %2178 = shl i32 %1045, 3
  %2179 = add i32 %2178, %1043
  %2180 = getelementptr i8, ptr %1046, i64 %2177
  br label %2218

2181:                                             ; preds = %1719, %1721
  %2182 = phi i64 [ %1734, %1721 ], [ %1713, %1719 ]
  %2183 = shl i32 %1712, 3
  %2184 = add i32 %1714, %2183
  %2185 = zext i32 %1712 to i64
  %2186 = getelementptr i8, ptr %1711, i64 %2185
  br label %2218

2187:                                             ; preds = %1641, %1645
  %2188 = phi i64 [ %1657, %1645 ], [ %1614, %1641 ]
  %2189 = zext i32 %1613 to i64
  %2190 = shl i32 %1613, 3
  %2191 = add i32 %2190, %1615
  %2192 = getelementptr i8, ptr %1612, i64 %2189
  br label %2218

2193:                                             ; preds = %1581, %1585
  %2194 = phi i64 [ %1597, %1585 ], [ %1566, %1581 ]
  %2195 = zext i32 %1565 to i64
  %2196 = shl i32 %1565, 3
  %2197 = add i32 %2196, %1567
  %2198 = getelementptr i8, ptr %1564, i64 %2195
  br label %2218

2199:                                             ; preds = %1523, %1525
  %2200 = phi i64 [ %1538, %1525 ], [ %1515, %1523 ]
  %2201 = shl i32 %1514, 3
  %2202 = add i32 %1516, %2201
  %2203 = zext i32 %1514 to i64
  %2204 = getelementptr i8, ptr %1513, i64 %2203
  br label %2218

2205:                                             ; preds = %1438, %1442
  %2206 = phi i64 [ %1454, %1442 ], [ %1412, %1438 ]
  %2207 = zext i32 %1411 to i64
  %2208 = shl i32 %1411, 3
  %2209 = add i32 %2208, %1413
  %2210 = getelementptr i8, ptr %1410, i64 %2207
  br label %2218

2211:                                             ; preds = %1379, %1383
  %2212 = phi i64 [ %1395, %1383 ], [ %1350, %1379 ]
  %2213 = zext i32 %1349 to i64
  %2214 = shl i32 %1349, 3
  %2215 = add i32 %2214, %1351
  %2216 = getelementptr i8, ptr %1348, i64 %2213
  br label %2218

2217:                                             ; preds = %88
  br label %2218

2218:                                             ; preds = %514, %530, %570, %590, %630, %764, %881, %896, %1340, %1758, %1912, %778, %984, %88, %2217, %2211, %2205, %2199, %2193, %2187, %2181, %2175, %2170, %2165, %2160, %2155, %2150, %2145, %2140, %2135, %2130, %2125, %2120, %2118, %2116, %2114, %2099, %804
  %2219 = phi i32 [ %93, %2118 ], [ %93, %2130 ], [ %93, %2125 ], [ %93, %2120 ], [ %93, %88 ], [ %93, %2155 ], [ %93, %2175 ], [ %93, %2181 ], [ %93, %2211 ], [ %93, %2099 ], [ %93, %2199 ], [ %93, %2140 ], [ %93, %2114 ], [ %93, %2135 ], [ %93, %804 ], [ %93, %2150 ], [ %93, %2160 ], [ %93, %2205 ], [ %93, %2187 ], [ %93, %2116 ], [ %93, %2170 ], [ %93, %2193 ], [ %93, %984 ], [ %93, %2145 ], [ %93, %2165 ], [ %93, %514 ], [ %93, %530 ], [ %93, %570 ], [ %93, %590 ], [ %93, %630 ], [ %93, %764 ], [ %93, %881 ], [ %93, %896 ], [ %93, %1340 ], [ 0, %1758 ], [ 0, %1912 ], [ %93, %778 ], [ %93, %2217 ]
  %2220 = phi ptr [ %1164, %2118 ], [ %2133, %2130 ], [ %2128, %2125 ], [ %2123, %2120 ], [ %90, %88 ], [ %2158, %2155 ], [ %2180, %2175 ], [ %2186, %2181 ], [ %2216, %2211 ], [ %2100, %2099 ], [ %2204, %2199 ], [ %2143, %2140 ], [ %1194, %2114 ], [ %2138, %2135 ], [ %795, %804 ], [ %2153, %2150 ], [ %2163, %2160 ], [ %2210, %2205 ], [ %2192, %2187 ], [ %1127, %2116 ], [ %2173, %2170 ], [ %2198, %2193 ], [ %982, %984 ], [ %2148, %2145 ], [ %2168, %2165 ], [ %516, %514 ], [ %523, %530 ], [ %573, %570 ], [ %583, %590 ], [ %633, %630 ], [ %765, %764 ], [ %872, %881 ], [ %890, %896 ], [ %1320, %1340 ], [ %1759, %1758 ], [ %90, %1912 ], [ %770, %778 ], [ %90, %2217 ]
  %2221 = phi i32 [ 0, %2118 ], [ 0, %2130 ], [ 0, %2125 ], [ 0, %2120 ], [ %92, %88 ], [ 0, %2155 ], [ 0, %2175 ], [ 0, %2181 ], [ 0, %2211 ], [ %2101, %2099 ], [ 0, %2199 ], [ 0, %2140 ], [ 0, %2114 ], [ 0, %2135 ], [ %796, %804 ], [ 0, %2150 ], [ 0, %2160 ], [ 0, %2205 ], [ 0, %2187 ], [ 0, %2116 ], [ 0, %2170 ], [ 0, %2193 ], [ 0, %984 ], [ 0, %2145 ], [ 0, %2165 ], [ %517, %514 ], [ 0, %530 ], [ %571, %570 ], [ 0, %590 ], [ %631, %630 ], [ %766, %764 ], [ %873, %881 ], [ %891, %896 ], [ %1321, %1340 ], [ %1760, %1758 ], [ %92, %1912 ], [ 0, %778 ], [ %92, %2217 ]
  %2222 = phi i64 [ %1162, %2118 ], [ %2132, %2130 ], [ %2127, %2125 ], [ %2122, %2120 ], [ %94, %88 ], [ %2157, %2155 ], [ %2176, %2175 ], [ %2182, %2181 ], [ %2212, %2211 ], [ %2102, %2099 ], [ %2200, %2199 ], [ %2142, %2140 ], [ %1192, %2114 ], [ %2137, %2135 ], [ %805, %804 ], [ %2152, %2150 ], [ %2162, %2160 ], [ %2206, %2205 ], [ %2188, %2187 ], [ %1125, %2116 ], [ %2172, %2170 ], [ %2194, %2193 ], [ %980, %984 ], [ %2147, %2145 ], [ %2167, %2165 ], [ %465, %514 ], [ %525, %530 ], [ %525, %570 ], [ %585, %590 ], [ %585, %630 ], [ %767, %764 ], [ 0, %881 ], [ %892, %896 ], [ %1322, %1340 ], [ %1761, %1758 ], [ %94, %1912 ], [ %772, %778 ], [ %94, %2217 ]
  %2223 = phi i32 [ %2119, %2118 ], [ %2134, %2130 ], [ %2129, %2125 ], [ %2124, %2120 ], [ %95, %88 ], [ %2159, %2155 ], [ %2179, %2175 ], [ %2184, %2181 ], [ %2215, %2211 ], [ %2103, %2099 ], [ %2202, %2199 ], [ %2144, %2140 ], [ %2115, %2114 ], [ %2139, %2135 ], [ %806, %804 ], [ %2154, %2150 ], [ %2164, %2160 ], [ %2209, %2205 ], [ %2191, %2187 ], [ %2117, %2116 ], [ %2174, %2170 ], [ %2197, %2193 ], [ %979, %984 ], [ %2149, %2145 ], [ %2169, %2165 ], [ %466, %514 ], [ %526, %530 ], [ %526, %570 ], [ %586, %590 ], [ %586, %630 ], [ %768, %764 ], [ 0, %881 ], [ %893, %896 ], [ %1323, %1340 ], [ %1762, %1758 ], [ %95, %1912 ], [ %773, %778 ], [ %95, %2217 ]
  %2224 = phi i32 [ %96, %2118 ], [ %96, %2130 ], [ %96, %2125 ], [ %96, %2120 ], [ %96, %88 ], [ %96, %2155 ], [ %96, %2175 ], [ %96, %2181 ], [ %96, %2211 ], [ %2030, %2099 ], [ %96, %2199 ], [ %96, %2140 ], [ %96, %2114 ], [ %96, %2135 ], [ %96, %804 ], [ %96, %2150 ], [ %96, %2160 ], [ %96, %2205 ], [ %96, %2187 ], [ %96, %2116 ], [ %96, %2170 ], [ %96, %2193 ], [ %96, %984 ], [ %96, %2145 ], [ %2030, %2165 ], [ %96, %778 ], [ %96, %1912 ], [ %96, %1758 ], [ %96, %1340 ], [ %96, %896 ], [ %96, %881 ], [ %96, %764 ], [ %96, %630 ], [ %96, %590 ], [ %96, %570 ], [ %96, %530 ], [ %96, %514 ], [ %96, %2217 ]
  %2225 = phi i32 [ %1032, %2118 ], [ %97, %2130 ], [ %97, %2125 ], [ %97, %2120 ], [ -3, %88 ], [ %97, %2155 ], [ %1032, %2175 ], [ %1715, %2181 ], [ %1352, %2211 ], [ 1, %2099 ], [ %1517, %2199 ], [ %97, %2140 ], [ %1032, %2114 ], [ %97, %2135 ], [ %97, %804 ], [ %97, %2150 ], [ %97, %2160 ], [ %1352, %2205 ], [ %1568, %2187 ], [ %1032, %2116 ], [ %97, %2170 ], [ %1568, %2193 ], [ %97, %984 ], [ %97, %2145 ], [ %97, %2165 ], [ %97, %514 ], [ %97, %530 ], [ %97, %570 ], [ %97, %590 ], [ %97, %630 ], [ %97, %764 ], [ %97, %881 ], [ %97, %896 ], [ 0, %1340 ], [ %1763, %1758 ], [ %97, %1912 ], [ %97, %778 ], [ 1, %2217 ]
  store ptr %91, ptr %26, align 8, !tbaa !47
  store i32 %2219, ptr %41, align 8, !tbaa !50
  store ptr %2220, ptr %0, align 8, !tbaa !48
  store i32 %2221, ptr %43, align 8, !tbaa !49
  store i64 %2222, ptr %45, align 8, !tbaa !31
  store i32 %2223, ptr %47, align 8, !tbaa !32
  %2226 = load i32, ptr %79, align 4, !tbaa !38
  %2227 = icmp eq i32 %2226, 0
  br i1 %2227, label %2228, label %2237

2228:                                             ; preds = %2218
  %2229 = icmp eq i32 %2224, %2219
  br i1 %2229, label %2305, label %2230

2230:                                             ; preds = %2228
  %2231 = load i32, ptr %21, align 8, !tbaa !20
  %2232 = icmp ult i32 %2231, 16209
  br i1 %2232, label %2233, label %2305

2233:                                             ; preds = %2230
  %2234 = icmp samesign ult i32 %2231, 16206
  %2235 = icmp ne i32 %1, 4
  %2236 = or i1 %2235, %2234
  br i1 %2236, label %2237, label %2305

2237:                                             ; preds = %2233, %2218
  %2238 = sub i32 %2224, %2219
  %2239 = load ptr, ptr %14, align 8, !tbaa !15
  %2240 = getelementptr inbounds nuw i8, ptr %2239, i64 72
  %2241 = load ptr, ptr %2240, align 8, !tbaa !41
  %2242 = icmp eq ptr %2241, null
  br i1 %2242, label %2243, label %2252

2243:                                             ; preds = %2237
  %2244 = load ptr, ptr %6, align 8, !tbaa !8
  %2245 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %2246 = load ptr, ptr %2245, align 8, !tbaa !43
  %2247 = getelementptr inbounds nuw i8, ptr %2239, i64 56
  %2248 = load i32, ptr %2247, align 8, !tbaa !42
  %2249 = shl nuw i32 1, %2248
  %2250 = call ptr %2244(ptr noundef %2246, i32 noundef %2249, i32 noundef 1) #10, !inline_history !103
  store ptr %2250, ptr %2240, align 8, !tbaa !41
  %2251 = icmp eq ptr %2250, null
  br i1 %2251, label %2304, label %2252

2252:                                             ; preds = %2243, %2237
  %2253 = phi ptr [ %2250, %2243 ], [ %2241, %2237 ]
  %2254 = getelementptr inbounds nuw i8, ptr %2239, i64 60
  %2255 = load i32, ptr %2254, align 4, !tbaa !38
  %2256 = icmp eq i32 %2255, 0
  br i1 %2256, label %2257, label %2263

2257:                                             ; preds = %2252
  %2258 = getelementptr inbounds nuw i8, ptr %2239, i64 56
  %2259 = load i32, ptr %2258, align 8, !tbaa !42
  %2260 = shl nuw i32 1, %2259
  store i32 %2260, ptr %2254, align 4, !tbaa !38
  %2261 = getelementptr inbounds nuw i8, ptr %2239, i64 68
  store i32 0, ptr %2261, align 4, !tbaa !40
  %2262 = getelementptr inbounds nuw i8, ptr %2239, i64 64
  store i32 0, ptr %2262, align 8, !tbaa !39
  br label %2263

2263:                                             ; preds = %2257, %2252
  %2264 = phi i32 [ %2260, %2257 ], [ %2255, %2252 ]
  %2265 = icmp ult i32 %2238, %2264
  br i1 %2265, label %2273, label %2266

2266:                                             ; preds = %2263
  %2267 = zext i32 %2264 to i64
  %2268 = sub nsw i64 0, %2267
  %2269 = getelementptr inbounds i8, ptr %91, i64 %2268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2253, ptr noundef nonnull readonly align 1 dereferenceable(1) %2269, i64 %2267, i1 false)
  %2270 = getelementptr inbounds nuw i8, ptr %2239, i64 68
  store i32 0, ptr %2270, align 4, !tbaa !40
  %2271 = load i32, ptr %2254, align 4, !tbaa !38
  %2272 = getelementptr inbounds nuw i8, ptr %2239, i64 64
  store i32 %2271, ptr %2272, align 8, !tbaa !39
  br label %2305

2273:                                             ; preds = %2263
  %2274 = getelementptr inbounds nuw i8, ptr %2239, i64 68
  %2275 = load i32, ptr %2274, align 4, !tbaa !40
  %2276 = sub i32 %2264, %2275
  %2277 = call i32 @llvm.umin.i32(i32 %2276, i32 %2238)
  %2278 = zext i32 %2275 to i64
  %2279 = getelementptr inbounds nuw i8, ptr %2253, i64 %2278
  %2280 = zext i32 %2238 to i64
  %2281 = sub nsw i64 0, %2280
  %2282 = getelementptr inbounds i8, ptr %91, i64 %2281
  %2283 = zext i32 %2277 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2279, ptr readonly align 1 %2282, i64 %2283, i1 false)
  %2284 = icmp ugt i32 %2238, %2276
  br i1 %2284, label %2285, label %2293

2285:                                             ; preds = %2273
  %2286 = sub i32 %2238, %2277
  %2287 = load ptr, ptr %2240, align 8, !tbaa !41
  %2288 = zext i32 %2286 to i64
  %2289 = sub nsw i64 0, %2288
  %2290 = getelementptr inbounds i8, ptr %91, i64 %2289
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2287, ptr nonnull readonly align 1 %2290, i64 %2288, i1 false)
  store i32 %2286, ptr %2274, align 4, !tbaa !40
  %2291 = load i32, ptr %2254, align 4, !tbaa !38
  %2292 = getelementptr inbounds nuw i8, ptr %2239, i64 64
  store i32 %2291, ptr %2292, align 8, !tbaa !39
  br label %2305

2293:                                             ; preds = %2273
  %2294 = load i32, ptr %2274, align 4, !tbaa !40
  %2295 = add i32 %2294, %2277
  %2296 = load i32, ptr %2254, align 4, !tbaa !38
  %2297 = icmp eq i32 %2295, %2296
  %2298 = select i1 %2297, i32 0, i32 %2295
  store i32 %2298, ptr %2274, align 4
  %2299 = getelementptr inbounds nuw i8, ptr %2239, i64 64
  %2300 = load i32, ptr %2299, align 8, !tbaa !39
  %2301 = icmp ult i32 %2300, %2296
  br i1 %2301, label %2302, label %2305

2302:                                             ; preds = %2293
  %2303 = add i32 %2300, %2277
  store i32 %2303, ptr %2299, align 8, !tbaa !39
  br label %2305

2304:                                             ; preds = %2243
  store i32 16210, ptr %21, align 8, !tbaa !20
  br label %2362

2305:                                             ; preds = %2266, %2293, %2302, %2285, %2233, %2230, %2228
  %2306 = load i32, ptr %43, align 8, !tbaa !49
  %2307 = sub i32 %44, %2306
  %2308 = load i32, ptr %41, align 8, !tbaa !50
  %2309 = sub i32 %2224, %2308
  %2310 = zext i32 %2307 to i64
  %2311 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2312 = load i64, ptr %2311, align 8, !tbaa !22
  %2313 = add i64 %2312, %2310
  store i64 %2313, ptr %2311, align 8, !tbaa !22
  %2314 = zext i32 %2309 to i64
  %2315 = load i64, ptr %50, align 8, !tbaa !102
  %2316 = add i64 %2315, %2314
  store i64 %2316, ptr %50, align 8, !tbaa !102
  %2317 = load i64, ptr %51, align 8, !tbaa !21
  %2318 = add i64 %2317, %2314
  store i64 %2318, ptr %51, align 8, !tbaa !21
  %2319 = load i32, ptr %49, align 8, !tbaa !24
  %2320 = and i32 %2319, 4
  %2321 = icmp ne i32 %2320, 0
  %2322 = icmp ne i32 %2224, %2308
  %2323 = select i1 %2321, i1 %2322, i1 false
  br i1 %2323, label %2324, label %2337

2324:                                             ; preds = %2305
  %2325 = load i32, ptr %52, align 8, !tbaa !28
  %2326 = icmp eq i32 %2325, 0
  %2327 = load i64, ptr %53, align 8, !tbaa !53
  %2328 = load ptr, ptr %26, align 8, !tbaa !47
  %2329 = sub nsw i64 0, %2314
  %2330 = getelementptr inbounds i8, ptr %2328, i64 %2329
  br i1 %2326, label %2333, label %2331

2331:                                             ; preds = %2324
  %2332 = call i64 @crc32(i64 noundef %2327, ptr noundef %2330, i32 noundef %2309) #10
  br label %2335

2333:                                             ; preds = %2324
  %2334 = call i64 @adler32(i64 noundef %2327, ptr noundef %2330, i32 noundef %2309) #10
  br label %2335

2335:                                             ; preds = %2333, %2331
  %2336 = phi i64 [ %2332, %2331 ], [ %2334, %2333 ]
  store i64 %2336, ptr %53, align 8, !tbaa !53
  store i64 %2336, ptr %54, align 8, !tbaa !25
  br label %2337

2337:                                             ; preds = %2335, %2305
  %2338 = load i32, ptr %47, align 8, !tbaa !32
  %2339 = load i32, ptr %83, align 4, !tbaa !26
  %2340 = icmp eq i32 %2339, 0
  %2341 = select i1 %2340, i32 0, i32 64
  %2342 = add nsw i32 %2341, %2338
  %2343 = load i32, ptr %21, align 8, !tbaa !20
  %2344 = icmp eq i32 %2343, 16191
  %2345 = select i1 %2344, i32 128, i32 0
  %2346 = add nsw i32 %2342, %2345
  %2347 = icmp eq i32 %2343, 16199
  %2348 = icmp eq i32 %2343, 16194
  %2349 = or i1 %2347, %2348
  %2350 = select i1 %2349, i32 256, i32 0
  %2351 = add nsw i32 %2346, %2350
  %2352 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %2351, ptr %2352, align 8, !tbaa !23
  %2353 = icmp eq i32 %44, %2306
  %2354 = icmp eq i32 %2224, %2308
  %2355 = select i1 %2353, i1 %2354, i1 false
  %2356 = icmp eq i32 %1, 4
  %2357 = or i1 %2356, %2355
  %2358 = icmp eq i32 %2225, 0
  %2359 = select i1 %2357, i1 %2358, i1 false
  %2360 = select i1 %2359, i32 -5, i32 %2225
  br label %2362

2361:                                             ; preds = %88
  br label %2362

2362:                                             ; preds = %88, %2361, %17, %5, %9, %2, %13, %20, %25, %32, %2337, %2304, %761
  %2363 = phi i32 [ -2, %20 ], [ -4, %2361 ], [ -4, %2304 ], [ %2360, %2337 ], [ 2, %761 ], [ -2, %32 ], [ -2, %25 ], [ -2, %17 ], [ -2, %13 ], [ -2, %2 ], [ -2, %9 ], [ -2, %5 ], [ -2, %88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %2363
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

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

37:                                               ; preds = %15, %3, %7, %1, %11, %18, %32
  %38 = phi i32 [ 0, %32 ], [ -2, %18 ], [ -2, %11 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %15 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflateGetDictionary(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %52, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %52, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %52, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %52

25:                                               ; preds = %20
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 64
  %27 = load i32, ptr %26, align 8, !tbaa !39
  %28 = icmp ne i32 %27, 0
  %29 = icmp ne ptr %1, null
  %30 = and i1 %29, %28
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = getelementptr inbounds nuw i8, ptr %15, i64 72
  %33 = load ptr, ptr %32, align 8, !tbaa !41
  %34 = getelementptr inbounds nuw i8, ptr %15, i64 68
  %35 = load i32, ptr %34, align 4, !tbaa !40
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds nuw i8, ptr %33, i64 %36
  %38 = sub i32 %27, %35
  %39 = zext i32 %38 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %37, i64 %39, i1 false)
  %40 = load i32, ptr %26, align 8, !tbaa !39
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 %41
  %43 = load i32, ptr %34, align 4, !tbaa !40
  %44 = zext i32 %43 to i64
  %45 = sub nsw i64 0, %44
  %46 = getelementptr inbounds i8, ptr %42, i64 %45
  %47 = load ptr, ptr %32, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %46, ptr align 1 %47, i64 %44, i1 false)
  br label %48

48:                                               ; preds = %31, %25
  %49 = icmp eq ptr %2, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %48
  %51 = load i32, ptr %26, align 8, !tbaa !39
  store i32 %51, ptr %2, align 4, !tbaa !4
  br label %52

52:                                               ; preds = %17, %5, %9, %3, %13, %48, %50, %20
  %53 = phi i32 [ -2, %20 ], [ 0, %50 ], [ 0, %48 ], [ -2, %13 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %17 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -4, 1) i32 @inflateSetDictionary(ptr noundef readonly captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %108, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %108, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %108, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %108, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %108

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %108

25:                                               ; preds = %20
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %27 = load i32, ptr %26, align 8, !tbaa !24
  %28 = icmp eq i32 %27, 0
  %29 = icmp eq i32 %22, 16190
  br i1 %28, label %31, label %30

30:                                               ; preds = %25
  br i1 %29, label %32, label %108

31:                                               ; preds = %25
  br i1 %29, label %32, label %40

32:                                               ; preds = %30, %31
  %33 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  %34 = tail call i64 @adler32(i64 noundef %33, ptr noundef %1, i32 noundef %2) #10
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %36 = load i64, ptr %35, align 8, !tbaa !53
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %108

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
  %54 = tail call ptr %48(ptr noundef %50, i32 noundef %53, i32 noundef 1) #10, !inline_history !103
  store ptr %54, ptr %44, align 8, !tbaa !41
  %55 = icmp eq ptr %54, null
  br i1 %55, label %105, label %56

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
  br label %106

77:                                               ; preds = %67
  %78 = getelementptr inbounds nuw i8, ptr %41, i64 68
  %79 = load i32, ptr %78, align 4, !tbaa !40
  %80 = sub i32 %68, %79
  %81 = tail call i32 @llvm.umin.i32(i32 %80, i32 %2)
  %82 = zext i32 %79 to i64
  %83 = getelementptr inbounds nuw i8, ptr %57, i64 %82
  %84 = zext i32 %81 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %83, ptr readonly align 1 %1, i64 %84, i1 false)
  %85 = icmp ugt i32 %2, %80
  br i1 %85, label %86, label %94

86:                                               ; preds = %77
  %87 = sub i32 %2, %81
  %88 = load ptr, ptr %44, align 8, !tbaa !41
  %89 = zext i32 %87 to i64
  %90 = sub nsw i64 0, %89
  %91 = getelementptr inbounds i8, ptr %43, i64 %90
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %88, ptr nonnull readonly align 1 %91, i64 %89, i1 false)
  store i32 %87, ptr %78, align 4, !tbaa !40
  %92 = load i32, ptr %58, align 4, !tbaa !38
  %93 = getelementptr inbounds nuw i8, ptr %41, i64 64
  store i32 %92, ptr %93, align 8, !tbaa !39
  br label %106

94:                                               ; preds = %77
  %95 = load i32, ptr %78, align 4, !tbaa !40
  %96 = add i32 %95, %81
  %97 = load i32, ptr %58, align 4, !tbaa !38
  %98 = icmp eq i32 %96, %97
  %99 = select i1 %98, i32 0, i32 %96
  store i32 %99, ptr %78, align 4
  %100 = getelementptr inbounds nuw i8, ptr %41, i64 64
  %101 = load i32, ptr %100, align 8, !tbaa !39
  %102 = icmp ult i32 %101, %97
  br i1 %102, label %103, label %106

103:                                              ; preds = %94
  %104 = add i32 %101, %81
  store i32 %104, ptr %100, align 8, !tbaa !39
  br label %106

105:                                              ; preds = %47
  store i32 16210, ptr %21, align 8, !tbaa !20
  br label %108

106:                                              ; preds = %86, %103, %94, %70
  %107 = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i32 1, ptr %107, align 4, !tbaa !27
  br label %108

108:                                              ; preds = %17, %5, %9, %3, %13, %32, %30, %20, %106, %105
  %109 = phi i32 [ 0, %106 ], [ -2, %20 ], [ -2, %30 ], [ -4, %105 ], [ -3, %32 ], [ -2, %13 ], [ -2, %3 ], [ -2, %9 ], [ -2, %5 ], [ -2, %17 ]
  ret i32 %109
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
  store i32 0, ptr %31, align 8, !tbaa !54
  br label %32

32:                                               ; preds = %16, %4, %8, %2, %12, %24, %19, %29
  %33 = phi i32 [ 0, %29 ], [ -2, %19 ], [ -2, %24 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %16 ]
  ret i32 %33
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -5, 1) i32 @inflateSync(ptr noundef captures(address) %0) local_unnamed_addr #6 {
  %2 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %3 = icmp eq ptr %0, null
  br i1 %3, label %197, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %197, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %197, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %197, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !16
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %197

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !20
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %197

24:                                               ; preds = %19
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %26 = load i32, ptr %25, align 8, !tbaa !49
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %14, i64 88
  %30 = load i32, ptr %29, align 8, !tbaa !32
  %31 = icmp ult i32 %30, 8
  br i1 %31, label %197, label %32

32:                                               ; preds = %28, %24
  %33 = icmp eq i32 %21, 16211
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = getelementptr inbounds nuw i8, ptr %14, i64 140
  %36 = load i32, ptr %35, align 4, !tbaa !4
  br label %119

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
  %45 = icmp ult i32 %39, 8
  br i1 %45, label %54, label %46

46:                                               ; preds = %37
  %47 = add i32 %39, -8
  %48 = lshr i32 %47, 3
  %49 = add nuw nsw i32 %48, 1
  %50 = and i32 %49, 3
  %51 = icmp ult i32 %47, 24
  br i1 %51, label %79, label %52

52:                                               ; preds = %46
  %53 = and i32 %49, 1073741820
  br label %55

54:                                               ; preds = %37
  store i32 0, ptr %38, align 8, !tbaa !32
  br label %115

55:                                               ; preds = %55, %52
  %56 = phi i64 [ 0, %52 ], [ %71, %55 ]
  %57 = phi i64 [ %44, %52 ], [ %74, %55 ]
  %58 = phi i32 [ 0, %52 ], [ %75, %55 ]
  %59 = trunc i64 %57 to i8
  %60 = getelementptr inbounds nuw i8, ptr %2, i64 %56
  store i8 %59, ptr %60, align 1, !tbaa !44
  %61 = lshr i64 %57, 8
  %62 = trunc i64 %61 to i8
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 %56
  %64 = getelementptr inbounds nuw i8, ptr %63, i64 1
  store i8 %62, ptr %64, align 1, !tbaa !44
  %65 = lshr i64 %57, 16
  %66 = trunc i64 %65 to i8
  %67 = getelementptr inbounds nuw i8, ptr %2, i64 %56
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 2
  store i8 %66, ptr %68, align 1, !tbaa !44
  %69 = lshr i64 %57, 24
  %70 = trunc i64 %69 to i8
  %71 = add nuw nsw i64 %56, 4
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 %56
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 3
  store i8 %70, ptr %73, align 1, !tbaa !44
  %74 = lshr i64 %57, 32
  %75 = add i32 %58, 4
  %76 = icmp eq i32 %75, %53
  br i1 %76, label %77, label %55, !llvm.loop !104

77:                                               ; preds = %55
  %78 = icmp eq i32 %50, 0
  br i1 %78, label %93, label %79

79:                                               ; preds = %77, %46
  %80 = phi i64 [ 0, %46 ], [ %71, %77 ]
  %81 = phi i64 [ %44, %46 ], [ %74, %77 ]
  %82 = icmp ne i32 %50, 0
  tail call void @llvm.assume(i1 %82)
  br label %83

83:                                               ; preds = %83, %79
  %84 = phi i64 [ %88, %83 ], [ %80, %79 ]
  %85 = phi i64 [ %90, %83 ], [ %81, %79 ]
  %86 = phi i32 [ %91, %83 ], [ 0, %79 ]
  %87 = trunc i64 %85 to i8
  %88 = add nuw nsw i64 %84, 1
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 %84
  store i8 %87, ptr %89, align 1, !tbaa !44
  %90 = lshr i64 %85, 8
  %91 = add i32 %86, 1
  %92 = icmp eq i32 %91, %50
  br i1 %92, label %93, label %83, !llvm.loop !105

93:                                               ; preds = %83, %77
  %94 = phi i64 [ %71, %77 ], [ %88, %83 ]
  %95 = phi i64 [ %74, %77 ], [ %90, %83 ]
  store i64 %95, ptr %41, align 8, !tbaa !31
  store i32 0, ptr %38, align 8, !tbaa !32
  %96 = and i64 %94, 4294967295
  br label %97

97:                                               ; preds = %97, %93
  %98 = phi i64 [ 0, %93 ], [ %111, %97 ]
  %99 = phi i32 [ 0, %93 ], [ %110, %97 ]
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 %98
  %101 = load i8, ptr %100, align 1, !tbaa !44
  %102 = zext i8 %101 to i32
  %103 = icmp samesign ult i32 %99, 2
  %104 = select i1 %103, i32 0, i32 255
  %105 = icmp eq i32 %104, %102
  %106 = add nuw nsw i32 %99, 1
  %107 = icmp eq i8 %101, 0
  %108 = sub nuw nsw i32 4, %99
  %109 = select i1 %107, i32 %108, i32 0
  %110 = select i1 %105, i32 %106, i32 %109
  %111 = add nuw nsw i64 %98, 1
  %112 = icmp samesign ult i64 %111, %96
  %113 = icmp samesign ult i32 %110, 4
  %114 = select i1 %112, i1 %113, i1 false
  br i1 %114, label %97, label %115, !llvm.loop !106

115:                                              ; preds = %97, %54
  %116 = phi i32 [ 0, %54 ], [ %110, %97 ]
  %117 = getelementptr inbounds nuw i8, ptr %14, i64 140
  store i32 %116, ptr %117, align 4, !tbaa !4
  %118 = load i32, ptr %25, align 8, !tbaa !49
  br label %119

119:                                              ; preds = %34, %115
  %120 = phi i32 [ %116, %115 ], [ %36, %34 ]
  %121 = phi i32 [ %118, %115 ], [ %26, %34 ]
  %122 = getelementptr inbounds nuw i8, ptr %14, i64 140
  %123 = load ptr, ptr %0, align 8, !tbaa !48
  %124 = icmp ne i32 %121, 0
  %125 = icmp ult i32 %120, 4
  %126 = select i1 %124, i1 %125, i1 false
  br i1 %126, label %127, label %149

127:                                              ; preds = %119
  %128 = zext i32 %121 to i64
  br label %129

129:                                              ; preds = %129, %127
  %130 = phi i64 [ 0, %127 ], [ %143, %129 ]
  %131 = phi i32 [ %120, %127 ], [ %142, %129 ]
  %132 = getelementptr inbounds nuw i8, ptr %123, i64 %130
  %133 = load i8, ptr %132, align 1, !tbaa !44
  %134 = zext i8 %133 to i32
  %135 = icmp samesign ult i32 %131, 2
  %136 = select i1 %135, i32 0, i32 255
  %137 = icmp eq i32 %136, %134
  %138 = add nuw nsw i32 %131, 1
  %139 = icmp eq i8 %133, 0
  %140 = sub nuw nsw i32 4, %131
  %141 = select i1 %139, i32 %140, i32 0
  %142 = select i1 %137, i32 %138, i32 %141
  %143 = add nuw nsw i64 %130, 1
  %144 = icmp samesign ult i64 %143, %128
  %145 = icmp samesign ult i32 %142, 4
  %146 = select i1 %144, i1 %145, i1 false
  br i1 %146, label %129, label %147, !llvm.loop !106

147:                                              ; preds = %129
  %148 = trunc nuw i64 %143 to i32
  br label %149

149:                                              ; preds = %119, %147
  %150 = phi i32 [ %120, %119 ], [ %142, %147 ]
  %151 = phi i32 [ 0, %119 ], [ %148, %147 ]
  store i32 %150, ptr %122, align 4, !tbaa !4
  %152 = load i32, ptr %25, align 8, !tbaa !49
  %153 = sub i32 %152, %151
  store i32 %153, ptr %25, align 8, !tbaa !49
  %154 = zext i32 %151 to i64
  %155 = getelementptr inbounds nuw i8, ptr %123, i64 %154
  store ptr %155, ptr %0, align 8, !tbaa !48
  %156 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %157 = load i64, ptr %156, align 8, !tbaa !22
  %158 = add i64 %157, %154
  store i64 %158, ptr %156, align 8, !tbaa !22
  %159 = icmp eq i32 %150, 4
  br i1 %159, label %160, label %197

160:                                              ; preds = %149
  %161 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %162 = load i32, ptr %161, align 8, !tbaa !28
  %163 = icmp eq i32 %162, -1
  %164 = getelementptr inbounds nuw i8, ptr %14, i64 16
  br i1 %163, label %168, label %165

165:                                              ; preds = %160
  %166 = load i32, ptr %164, align 8, !tbaa !24
  %167 = and i32 %166, -5
  br label %168

168:                                              ; preds = %160, %165
  %169 = phi i32 [ %167, %165 ], [ 0, %160 ]
  store i32 %169, ptr %164, align 8, !tbaa !24
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %171 = load i64, ptr %170, align 8, !tbaa !102
  %172 = getelementptr inbounds nuw i8, ptr %14, i64 60
  store i32 0, ptr %172, align 4, !tbaa !38
  %173 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i32 0, ptr %173, align 8, !tbaa !39
  %174 = getelementptr inbounds nuw i8, ptr %14, i64 68
  store i32 0, ptr %174, align 4, !tbaa !40
  %175 = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 0, ptr %175, align 8, !tbaa !21
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %176, align 8, !tbaa !23
  %177 = getelementptr inbounds nuw i8, ptr %14, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %170, i8 0, i64 16, i1 false)
  %178 = load i32, ptr %177, align 8, !tbaa !24
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %168
  %181 = and i32 %178, 1
  %182 = zext nneg i32 %181 to i64
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %182, ptr %183, align 8, !tbaa !25
  br label %184

184:                                              ; preds = %168, %180
  %185 = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 0, ptr %185, align 4, !tbaa !26
  %186 = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %186, align 4, !tbaa !27
  %187 = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 32768, ptr %187, align 4, !tbaa !29
  %188 = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr null, ptr %188, align 8, !tbaa !30
  %189 = getelementptr inbounds nuw i8, ptr %14, i64 80
  store i64 0, ptr %189, align 8, !tbaa !31
  %190 = getelementptr inbounds nuw i8, ptr %14, i64 88
  store i32 0, ptr %190, align 8, !tbaa !32
  %191 = getelementptr inbounds nuw i8, ptr %14, i64 1368
  %192 = getelementptr inbounds nuw i8, ptr %14, i64 144
  store ptr %191, ptr %192, align 8, !tbaa !33
  %193 = getelementptr inbounds nuw i8, ptr %14, i64 112
  store ptr %191, ptr %193, align 8, !tbaa !34
  %194 = getelementptr inbounds nuw i8, ptr %14, i64 104
  store ptr %191, ptr %194, align 8, !tbaa !35
  %195 = getelementptr inbounds nuw i8, ptr %14, i64 7144
  store i32 1, ptr %195, align 8, !tbaa !36
  %196 = getelementptr inbounds nuw i8, ptr %14, i64 7148
  store i32 -1, ptr %196, align 4, !tbaa !37
  store i64 %158, ptr %156, align 8, !tbaa !22
  store i64 %171, ptr %170, align 8, !tbaa !102
  store i32 %162, ptr %161, align 8, !tbaa !28
  store i32 16191, ptr %20, align 8, !tbaa !20
  br label %197

197:                                              ; preds = %16, %4, %8, %1, %12, %149, %28, %19, %184
  %198 = phi i32 [ 0, %184 ], [ -2, %19 ], [ -5, %28 ], [ -3, %149 ], [ -2, %12 ], [ -2, %1 ], [ -2, %8 ], [ -2, %4 ], [ -2, %16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %198
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 2) i32 @inflateSyncPoint(ptr noundef readonly captures(address) %0) local_unnamed_addr #7 {
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

30:                                               ; preds = %15, %3, %7, %1, %11, %23, %25, %18
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
  %36 = load ptr, ptr %5, align 8, !tbaa !8
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

88:                                               ; preds = %16, %4, %8, %2, %12, %26, %19, %85, %43
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

26:                                               ; preds = %16, %4, %8, %2, %12, %19, %24
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

34:                                               ; preds = %28, %30
  %35 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %36 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %35, ptr %36, align 8, !tbaa !24
  br label %37

37:                                               ; preds = %16, %4, %8, %2, %12, %32, %34, %19
  %38 = phi i32 [ -2, %19 ], [ 0, %34 ], [ 0, %32 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %16 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 -140737488355328, 140741783257088) i64 @inflateMark(ptr noundef readonly captures(address) %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %41, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %41, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %41, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %41, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !16
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %41

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !20
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = getelementptr inbounds nuw i8, ptr %13, i64 7148
  %25 = load i32, ptr %24, align 4, !tbaa !37
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 16
  switch i32 %20, label %37 [
    i32 16195, label %28
    i32 16204, label %31
  ]

28:                                               ; preds = %23
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 92
  %30 = load i32, ptr %29, align 4, !tbaa !60
  br label %37

31:                                               ; preds = %23
  %32 = getelementptr inbounds nuw i8, ptr %13, i64 7152
  %33 = load i32, ptr %32, align 8, !tbaa !94
  %34 = getelementptr inbounds nuw i8, ptr %13, i64 92
  %35 = load i32, ptr %34, align 4, !tbaa !60
  %36 = sub i32 %33, %35
  br label %37

37:                                               ; preds = %23, %31, %28
  %38 = phi i32 [ %30, %28 ], [ %36, %31 ], [ 0, %23 ]
  %39 = zext i32 %38 to i64
  %40 = add nsw i64 %27, %39
  br label %41

41:                                               ; preds = %15, %3, %7, %1, %11, %18, %37
  %42 = phi i64 [ %40, %37 ], [ -65536, %18 ], [ -65536, %11 ], [ -65536, %1 ], [ -65536, %7 ], [ -65536, %3 ], [ -65536, %15 ]
  ret i64 %42
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 -2305843009213693952, 2305843009213693952) i64 @inflateCodesUsed(ptr noundef readonly captures(address) %0) local_unnamed_addr #7 {
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

31:                                               ; preds = %15, %3, %7, %1, %11, %18, %23
  %32 = phi i64 [ %30, %23 ], [ -1, %18 ], [ -1, %11 ], [ -1, %1 ], [ -1, %7 ], [ -1, %3 ], [ -1, %15 ]
  ret i64 %32
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

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
!47 = !{!9, !10, i64 24}
!48 = !{!9, !10, i64 0}
!49 = !{!9, !5, i64 8}
!50 = !{!9, !5, i64 32}
!51 = !{!17, !5, i64 100}
!52 = !{!17, !5, i64 140}
!53 = !{!17, !12, i64 32}
!54 = !{!55, !5, i64 72}
!55 = !{!"gz_header_s", !5, i64 0, !12, i64 8, !5, i64 16, !5, i64 20, !10, i64 24, !5, i64 32, !5, i64 36, !10, i64 40, !5, i64 48, !10, i64 56, !5, i64 64, !5, i64 68, !5, i64 72}
!56 = !{!55, !5, i64 0}
!57 = !{!55, !12, i64 8}
!58 = !{!55, !5, i64 16}
!59 = !{!55, !5, i64 20}
!60 = !{!17, !5, i64 92}
!61 = !{!55, !5, i64 32}
!62 = !{!55, !10, i64 24}
!63 = !{!55, !5, i64 36}
!64 = !{!55, !10, i64 40}
!65 = !{!55, !5, i64 48}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!55, !10, i64 56}
!69 = !{!55, !5, i64 64}
!70 = distinct !{!70, !67}
!71 = !{!55, !5, i64 68}
!72 = !{!17, !5, i64 132}
!73 = !{!17, !5, i64 136}
!74 = !{!17, !5, i64 128}
!75 = !{!76, !76, i64 0}
!76 = !{!"short", !6, i64 0}
!77 = distinct !{!77, !67}
!78 = distinct !{!78, !67}
!79 = !{!17, !5, i64 120}
!80 = distinct !{!80, !67}
!81 = distinct !{!81, !67}
!82 = distinct !{!82, !67}
!83 = distinct !{!83, !67, !84, !85}
!84 = !{!"llvm.loop.isvectorized", i32 1}
!85 = !{!"llvm.loop.unroll.runtime.disable"}
!86 = !{!"branch_weights", i32 4, i32 12}
!87 = distinct !{!87, !67, !84, !85}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.unroll.disable"}
!90 = distinct !{!90, !67, !84}
!91 = distinct !{!91, !67}
!92 = !{!17, !5, i64 124}
!93 = distinct !{!93, !67}
!94 = !{!17, !5, i64 7152}
!95 = !{!17, !5, i64 96}
!96 = distinct !{!96, !67}
!97 = distinct !{!97, !67, !84, !85}
!98 = !{!"branch_weights", i32 4, i32 28}
!99 = distinct !{!99, !67, !84, !85}
!100 = distinct !{!100, !89}
!101 = distinct !{!101, !67, !84}
!102 = !{!9, !12, i64 40}
!103 = distinct !{null}
!104 = distinct !{!104, !67}
!105 = distinct !{!105, !89}
!106 = distinct !{!106, !67}
