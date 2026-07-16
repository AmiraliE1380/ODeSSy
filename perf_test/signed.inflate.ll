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
  tail call void %10(ptr noundef %52, ptr noundef nonnull %41) #12
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

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
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
  tail call void %37(ptr noundef %86, ptr noundef nonnull %29) #12
  store ptr null, ptr %33, align 8, !tbaa !15
  br label %87

87:                                               ; preds = %71, %85, %26, %11, %4, %6
  %88 = phi i32 [ -4, %26 ], [ -6, %4 ], [ -2, %11 ], [ -6, %6 ], [ -2, %85 ], [ 0, %71 ]
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %4 = icmp eq ptr %0, null
  br i1 %4, label %2378, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %2378, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %2378, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %2378, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %2378

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %2378

25:                                               ; preds = %20
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  %28 = icmp eq ptr %27, null
  br i1 %28, label %2378, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 8, !tbaa !48
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i32, ptr %33, align 8, !tbaa !49
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %2378

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

88:                                               ; preds = %2111, %39
  %89 = phi i32 [ %40, %39 ], [ %2120, %2111 ]
  %90 = phi ptr [ %30, %39 ], [ %2112, %2111 ]
  %91 = phi ptr [ %27, %39 ], [ %2113, %2111 ]
  %92 = phi i32 [ %44, %39 ], [ %2114, %2111 ]
  %93 = phi i32 [ %42, %39 ], [ %2115, %2111 ]
  %94 = phi i64 [ %46, %39 ], [ %2116, %2111 ]
  %95 = phi i32 [ %48, %39 ], [ %2117, %2111 ]
  %96 = phi i32 [ %42, %39 ], [ %2118, %2111 ]
  %97 = phi i32 [ 0, %39 ], [ %2119, %2111 ]
  %98 = ptrtoaddr ptr %91 to i64
  switch i32 %89, label %2378 [
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
    i32 16199, label %1342
    i32 16200, label %1348
    i32 16201, label %101
    i32 16202, label %1564
    i32 16203, label %99
    i32 16204, label %1765
    i32 16205, label %1919
    i32 16206, label %1926
    i32 16207, label %105
    i32 16208, label %2224
    i32 16209, label %2225
    i32 16210, label %2377
  ]

99:                                               ; preds = %88
  %100 = load i32, ptr %72, align 4, !tbaa !51
  br label %1716

101:                                              ; preds = %88
  %102 = load i32, ptr %72, align 4, !tbaa !51
  br label %1512

103:                                              ; preds = %88
  %104 = load i32, ptr %60, align 4, !tbaa !52
  br label %1026

105:                                              ; preds = %88
  %106 = load i32, ptr %49, align 8, !tbaa !24
  br label %2031

107:                                              ; preds = %88
  %108 = icmp ult i32 %95, 14
  br i1 %108, label %109, label %934

109:                                              ; preds = %107
  %110 = zext nneg i32 %95 to i64
  %111 = icmp eq i32 %92, 0
  br i1 %111, label %2167, label %909

112:                                              ; preds = %88
  %113 = icmp ult i32 %95, 32
  br i1 %113, label %114, label %747

114:                                              ; preds = %112
  %115 = zext nneg i32 %95 to i64
  %116 = icmp eq i32 %92, 0
  br i1 %116, label %2157, label %707

117:                                              ; preds = %88
  %118 = icmp ult i32 %95, 16
  br i1 %118, label %119, label %238

119:                                              ; preds = %117
  %120 = zext nneg i32 %95 to i64
  %121 = icmp eq i32 %92, 0
  br i1 %121, label %2152, label %213

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
  br i1 %129, label %2127, label %131

130:                                              ; preds = %122
  store i32 16192, ptr %21, align 8, !tbaa !20
  br label %2111

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
  br i1 %141, label %2127, label %142

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
  %170 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %170, ptr %53, align 8, !tbaa !53
  store i8 31, ptr %3, align 4, !tbaa !44
  store i8 -117, ptr %87, align 1, !tbaa !44
  %171 = call i64 @crc32(i64 noundef %170, ptr noundef nonnull %3, i32 noundef 2) #12
  store i64 %171, ptr %53, align 8, !tbaa !53
  store i32 16181, ptr %21, align 8, !tbaa !20
  br label %2111

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
  br label %2111

188:                                              ; preds = %180
  %189 = and i64 %159, 15
  %190 = icmp eq i64 %189, 8
  br i1 %190, label %192, label %191

191:                                              ; preds = %188
  store ptr @.str.2, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2111

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
  br label %2111

207:                                              ; preds = %201
  %208 = shl nuw nsw i32 256, %196
  store i32 %208, ptr %86, align 4, !tbaa !29
  store i32 0, ptr %52, align 8, !tbaa !28
  %209 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %209, ptr %53, align 8, !tbaa !53
  store i64 %209, ptr %54, align 8, !tbaa !25
  %210 = and i64 %159, 8192
  %211 = icmp eq i64 %210, 0
  %212 = select i1 %211, i32 16191, i32 16189
  store i32 %212, ptr %21, align 8, !tbaa !20
  br label %2111

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
  br i1 %223, label %2152, label %224

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
  br label %2111

247:                                              ; preds = %238
  %248 = and i32 %243, 57344
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %247
  store ptr @.str.4, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2111

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
  %267 = call i64 @crc32(i64 noundef %266, ptr noundef nonnull %3, i32 noundef 2) #12
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
  br i1 %277, label %2147, label %278

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
  br i1 %288, label %2147, label %289

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
  br i1 %299, label %2147, label %300

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
  br i1 %310, label %2147, label %311

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
  %337 = call i64 @crc32(i64 noundef %336, ptr noundef nonnull %3, i32 noundef 4) #12
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
  br i1 %347, label %2142, label %348

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
  br i1 %358, label %2142, label %359

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
  %390 = call i64 @crc32(i64 noundef %389, ptr noundef nonnull %3, i32 noundef 2) #12
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
  br i1 %408, label %2137, label %409

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
  br i1 %419, label %2137, label %420

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
  %447 = call i64 @crc32(i64 noundef %446, ptr noundef nonnull %3, i32 noundef 2) #12
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
  %507 = call i64 @crc32(i64 noundef %506, ptr noundef %463, i32 noundef %472) #12
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
  br i1 %518, label %519, label %2225

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
  br i1 %531, label %2225, label %532

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
  %569 = call i64 @crc32(i64 noundef %568, ptr noundef nonnull %523, i32 noundef %559) #12
  store i64 %569, ptr %53, align 8, !tbaa !53
  br label %570

570:                                              ; preds = %567, %563, %558
  %571 = sub i32 %524, %559
  %572 = and i64 %536, 4294967295
  %573 = getelementptr inbounds nuw i8, ptr %523, i64 %572
  br i1 %555, label %2225, label %579

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
  br i1 %591, label %2225, label %592

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
  %629 = call i64 @crc32(i64 noundef %628, ptr noundef nonnull %583, i32 noundef %619) #12
  store i64 %629, ptr %53, align 8, !tbaa !53
  br label %630

630:                                              ; preds = %627, %623, %618
  %631 = sub i32 %584, %619
  %632 = and i64 %596, 4294967295
  %633 = getelementptr inbounds nuw i8, ptr %583, i64 %632
  br i1 %615, label %2225, label %639

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
  br i1 %654, label %2132, label %655

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
  br i1 %665, label %2132, label %666

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
  br label %2111

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
  %706 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %706, ptr %53, align 8, !tbaa !53
  store i64 %706, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2111

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
  br i1 %717, label %2157, label %718

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
  br i1 %728, label %2157, label %729

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
  br i1 %739, label %2157, label %740

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
  br label %2378

762:                                              ; preds = %754
  %763 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %763, ptr %53, align 8, !tbaa !53
  store i64 %763, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %764

764:                                              ; preds = %88, %762
  %765 = phi ptr [ %755, %762 ], [ %90, %88 ]
  %766 = phi i32 [ %756, %762 ], [ %92, %88 ]
  %767 = phi i64 [ %757, %762 ], [ %94, %88 ]
  %768 = phi i32 [ %758, %762 ], [ %95, %88 ]
  br i1 %82, label %2225, label %769

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
  br i1 %779, label %2225, label %785

780:                                              ; preds = %769
  %781 = and i32 %773, 7
  %782 = zext nneg i32 %781 to i64
  %783 = lshr i64 %772, %782
  %784 = and i32 %773, -8
  store i32 16206, ptr %21, align 8, !tbaa !20
  br label %2111

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
  call void @inflate_fixed(ptr noundef nonnull %15) #12
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %804, label %812

804:                                              ; preds = %803
  %805 = lshr i64 %797, 3
  %806 = add i32 %798, -3
  br label %2225

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
  br label %2111

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
  br i1 %824, label %2162, label %825

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
  br i1 %835, label %2162, label %836

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
  br i1 %846, label %2162, label %847

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
  br i1 %857, label %2162, label %858

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
  br label %2111

881:                                              ; preds = %871
  %882 = trunc i64 %874 to i32
  %883 = and i32 %882, 65535
  store i32 %883, ptr %56, align 4, !tbaa !60
  store i32 16194, ptr %21, align 8, !tbaa !20
  br i1 %70, label %2225, label %884

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
  br i1 %899, label %2225, label %900

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
  br label %2111

908:                                              ; preds = %889
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2111

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
  br i1 %919, label %2167, label %920

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
  br label %2111

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
  br i1 %985, label %2225, label %986

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
  %1022 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %61, i32 noundef 19, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #12
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1025, label %1024

1024:                                             ; preds = %1021
  store ptr @.str.9, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2111

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
  br i1 %1036, label %1037, label %1320

1037:                                             ; preds = %1026
  %1038 = load ptr, ptr %65, align 8, !tbaa !35
  %1039 = load i32, ptr %66, align 8, !tbaa !79
  %1040 = shl nsw i32 -1, %1039
  %1041 = xor i32 %1040, -1
  br label %1042

1042:                                             ; preds = %1037, %1313
  %1043 = phi i32 [ %1031, %1037 ], [ %1318, %1313 ]
  %1044 = phi i64 [ %1030, %1037 ], [ %1317, %1313 ]
  %1045 = phi i32 [ %1029, %1037 ], [ %1316, %1313 ]
  %1046 = phi ptr [ %1028, %1037 ], [ %1315, %1313 ]
  %1047 = phi i32 [ %1027, %1037 ], [ %1314, %1313 ]
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
  br i1 %1057, label %2182, label %1058

1058:                                             ; preds = %1056
  %1059 = zext nneg i32 %1043 to i64
  br label %1062

1060:                                             ; preds = %1062
  %1061 = icmp eq i32 %1067, 0
  br i1 %1061, label %2182, label %1062

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
  br label %1313

1104:                                             ; preds = %1085
  switch i16 %1095, label %1117 [
    i16 16, label %1111
    i16 17, label %1105
  ]

1105:                                             ; preds = %1104
  %1106 = add nuw nsw i32 %1087, 3
  %1107 = icmp ult i32 %1091, %1106
  br i1 %1107, label %1108, label %1178

1108:                                             ; preds = %1105
  %1109 = zext nneg i32 %1091 to i64
  %1110 = zext nneg i32 %1106 to i64
  br label %1161

1111:                                             ; preds = %1104
  %1112 = add nuw nsw i32 %1087, 2
  %1113 = icmp ult i32 %1091, %1112
  br i1 %1113, label %1114, label %1141

1114:                                             ; preds = %1111
  %1115 = zext nneg i32 %1091 to i64
  %1116 = zext nneg i32 %1112 to i64
  br label %1124

1117:                                             ; preds = %1104
  %1118 = add nuw nsw i32 %1087, 7
  %1119 = icmp ult i32 %1091, %1118
  br i1 %1119, label %1120, label %1208

1120:                                             ; preds = %1117
  %1121 = zext nneg i32 %1091 to i64
  %1122 = zext nneg i32 %1118 to i64
  br label %1191

1123:                                             ; preds = %1692, %1674, %2358, %2351, %2344
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !80
  unreachable, !nosanitize !80

1124:                                             ; preds = %1114, %1130
  %1125 = phi i64 [ %1115, %1114 ], [ %1137, %1130 ]
  %1126 = phi i64 [ %1090, %1114 ], [ %1136, %1130 ]
  %1127 = phi i32 [ %1089, %1114 ], [ %1131, %1130 ]
  %1128 = phi ptr [ %1088, %1114 ], [ %1132, %1130 ]
  %1129 = icmp eq i32 %1127, 0
  br i1 %1129, label %2123, label %1130

1130:                                             ; preds = %1124
  %1131 = add i32 %1127, -1
  %1132 = getelementptr inbounds nuw i8, ptr %1128, i64 1
  %1133 = load i8, ptr %1128, align 1, !tbaa !44
  %1134 = zext i8 %1133 to i64
  %1135 = shl i64 %1134, %1125
  %1136 = add i64 %1135, %1126
  %1137 = add nuw nsw i64 %1125, 8
  %1138 = icmp samesign ult i64 %1137, %1116
  br i1 %1138, label %1124, label %1139, !llvm.loop !81

1139:                                             ; preds = %1130
  %1140 = trunc nuw nsw i64 %1137 to i32
  br label %1141

1141:                                             ; preds = %1139, %1111
  %1142 = phi ptr [ %1088, %1111 ], [ %1132, %1139 ]
  %1143 = phi i32 [ %1089, %1111 ], [ %1131, %1139 ]
  %1144 = phi i64 [ %1090, %1111 ], [ %1136, %1139 ]
  %1145 = phi i32 [ %1091, %1111 ], [ %1140, %1139 ]
  %1146 = zext nneg i8 %1092 to i64
  %1147 = lshr i64 %1144, %1146
  %1148 = sub nuw i32 %1145, %1087
  %1149 = icmp eq i32 %1047, 0
  br i1 %1149, label %1150, label %1151

1150:                                             ; preds = %1141
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2111

1151:                                             ; preds = %1141
  %1152 = add i32 %1047, -1
  %1153 = zext i32 %1152 to i64
  %1154 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1153
  %1155 = load i16, ptr %1154, align 2, !tbaa !75
  %1156 = trunc i64 %1147 to i32
  %1157 = and i32 %1156, 3
  %1158 = add nuw nsw i32 %1157, 3
  %1159 = lshr i64 %1147, 2
  %1160 = add i32 %1148, -2
  br label %1221

1161:                                             ; preds = %1108, %1167
  %1162 = phi i64 [ %1109, %1108 ], [ %1174, %1167 ]
  %1163 = phi i64 [ %1090, %1108 ], [ %1173, %1167 ]
  %1164 = phi i32 [ %1089, %1108 ], [ %1168, %1167 ]
  %1165 = phi ptr [ %1088, %1108 ], [ %1169, %1167 ]
  %1166 = icmp eq i32 %1164, 0
  br i1 %1166, label %2125, label %1167

1167:                                             ; preds = %1161
  %1168 = add i32 %1164, -1
  %1169 = getelementptr inbounds nuw i8, ptr %1165, i64 1
  %1170 = load i8, ptr %1165, align 1, !tbaa !44
  %1171 = zext i8 %1170 to i64
  %1172 = shl i64 %1171, %1162
  %1173 = add i64 %1172, %1163
  %1174 = add nuw nsw i64 %1162, 8
  %1175 = icmp samesign ult i64 %1174, %1110
  br i1 %1175, label %1161, label %1176, !llvm.loop !82

1176:                                             ; preds = %1167
  %1177 = trunc nuw nsw i64 %1174 to i32
  br label %1178

1178:                                             ; preds = %1176, %1105
  %1179 = phi ptr [ %1088, %1105 ], [ %1169, %1176 ]
  %1180 = phi i32 [ %1089, %1105 ], [ %1168, %1176 ]
  %1181 = phi i64 [ %1090, %1105 ], [ %1173, %1176 ]
  %1182 = phi i32 [ %1091, %1105 ], [ %1177, %1176 ]
  %1183 = zext nneg i8 %1092 to i64
  %1184 = lshr i64 %1181, %1183
  %1185 = trunc i64 %1184 to i32
  %1186 = and i32 %1185, 7
  %1187 = add nuw nsw i32 %1186, 3
  %1188 = lshr i64 %1184, 3
  %1189 = sub i32 %1182, %1087
  %1190 = add i32 %1189, -3
  br label %1221

1191:                                             ; preds = %1120, %1197
  %1192 = phi i64 [ %1121, %1120 ], [ %1204, %1197 ]
  %1193 = phi i64 [ %1090, %1120 ], [ %1203, %1197 ]
  %1194 = phi i32 [ %1089, %1120 ], [ %1198, %1197 ]
  %1195 = phi ptr [ %1088, %1120 ], [ %1199, %1197 ]
  %1196 = icmp eq i32 %1194, 0
  br i1 %1196, label %2121, label %1197

1197:                                             ; preds = %1191
  %1198 = add i32 %1194, -1
  %1199 = getelementptr inbounds nuw i8, ptr %1195, i64 1
  %1200 = load i8, ptr %1195, align 1, !tbaa !44
  %1201 = zext i8 %1200 to i64
  %1202 = shl i64 %1201, %1192
  %1203 = add i64 %1202, %1193
  %1204 = add nuw nsw i64 %1192, 8
  %1205 = icmp samesign ult i64 %1204, %1122
  br i1 %1205, label %1191, label %1206, !llvm.loop !83

1206:                                             ; preds = %1197
  %1207 = trunc nuw nsw i64 %1204 to i32
  br label %1208

1208:                                             ; preds = %1206, %1117
  %1209 = phi ptr [ %1088, %1117 ], [ %1199, %1206 ]
  %1210 = phi i32 [ %1089, %1117 ], [ %1198, %1206 ]
  %1211 = phi i64 [ %1090, %1117 ], [ %1203, %1206 ]
  %1212 = phi i32 [ %1091, %1117 ], [ %1207, %1206 ]
  %1213 = zext nneg i8 %1092 to i64
  %1214 = lshr i64 %1211, %1213
  %1215 = trunc i64 %1214 to i32
  %1216 = and i32 %1215, 127
  %1217 = add nuw nsw i32 %1216, 11
  %1218 = lshr i64 %1214, 7
  %1219 = sub i32 %1212, %1087
  %1220 = add i32 %1219, -7
  br label %1221

1221:                                             ; preds = %1178, %1208, %1151
  %1222 = phi ptr [ %1142, %1151 ], [ %1179, %1178 ], [ %1209, %1208 ]
  %1223 = phi i32 [ %1143, %1151 ], [ %1180, %1178 ], [ %1210, %1208 ]
  %1224 = phi i64 [ %1159, %1151 ], [ %1188, %1178 ], [ %1218, %1208 ]
  %1225 = phi i32 [ %1160, %1151 ], [ %1190, %1178 ], [ %1220, %1208 ]
  %1226 = phi i32 [ %1158, %1151 ], [ %1187, %1178 ], [ %1217, %1208 ]
  %1227 = phi i16 [ %1155, %1151 ], [ 0, %1178 ], [ 0, %1208 ]
  %1228 = add i32 %1226, %1047
  %1229 = icmp ugt i32 %1228, %1035
  br i1 %1229, label %1293, label %1230

1230:                                             ; preds = %1221
  %1231 = icmp ult i32 %1226, 4
  %1232 = sub nsw i32 0, %1226
  %1233 = icmp ugt i32 %1047, %1232
  %1234 = select i1 %1231, i1 true, i1 %1233
  br i1 %1234, label %1272, label %1235

1235:                                             ; preds = %1230
  %1236 = icmp ult i32 %1226, 16
  br i1 %1236, label %1256, label %1237

1237:                                             ; preds = %1235
  %1238 = and i32 %1226, 12
  %1239 = and i32 %1226, -16
  %1240 = and i32 %1226, 15
  %1241 = add i32 %1047, %1239
  %1242 = insertelement <8 x i16> poison, i16 %1227, i64 0
  %1243 = shufflevector <8 x i16> %1242, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %1244

1244:                                             ; preds = %1244, %1237
  %1245 = phi i32 [ 0, %1237 ], [ %1250, %1244 ]
  %1246 = add i32 %1047, %1245
  %1247 = zext i32 %1246 to i64
  %1248 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1247
  %1249 = getelementptr inbounds nuw i8, ptr %1248, i64 16
  store <8 x i16> %1243, ptr %1248, align 2, !tbaa !75
  store <8 x i16> %1243, ptr %1249, align 2, !tbaa !75
  %1250 = add nuw i32 %1245, 16
  %1251 = icmp eq i32 %1250, %1239
  br i1 %1251, label %1252, label %1244, !llvm.loop !84

1252:                                             ; preds = %1244
  %1253 = icmp eq i32 %1226, %1239
  br i1 %1253, label %1311, label %1254

1254:                                             ; preds = %1252
  %1255 = icmp eq i32 %1238, 0
  br i1 %1255, label %1272, label %1256, !prof !87

1256:                                             ; preds = %1235, %1254
  %1257 = phi i32 [ %1239, %1254 ], [ 0, %1235 ]
  %1258 = and i32 %1226, -4
  %1259 = and i32 %1226, 3
  %1260 = add i32 %1047, %1258
  %1261 = insertelement <4 x i16> poison, i16 %1227, i64 0
  %1262 = shufflevector <4 x i16> %1261, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %1263

1263:                                             ; preds = %1263, %1256
  %1264 = phi i32 [ %1257, %1256 ], [ %1268, %1263 ]
  %1265 = add i32 %1047, %1264
  %1266 = zext i32 %1265 to i64
  %1267 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1266
  store <4 x i16> %1262, ptr %1267, align 2, !tbaa !75
  %1268 = add nuw i32 %1264, 4
  %1269 = icmp eq i32 %1268, %1258
  br i1 %1269, label %1270, label %1263, !llvm.loop !88

1270:                                             ; preds = %1263
  %1271 = icmp eq i32 %1226, %1258
  br i1 %1271, label %1311, label %1272

1272:                                             ; preds = %1230, %1254, %1270
  %1273 = phi i32 [ %1226, %1230 ], [ %1240, %1254 ], [ %1259, %1270 ]
  %1274 = phi i32 [ %1047, %1230 ], [ %1241, %1254 ], [ %1260, %1270 ]
  %1275 = add nsw i32 %1273, -1
  %1276 = and i32 %1273, 3
  %1277 = icmp eq i32 %1276, 0
  br i1 %1277, label %1288, label %1278

1278:                                             ; preds = %1272, %1278
  %1279 = phi i32 [ %1282, %1278 ], [ %1273, %1272 ]
  %1280 = phi i32 [ %1283, %1278 ], [ %1274, %1272 ]
  %1281 = phi i32 [ %1286, %1278 ], [ 0, %1272 ]
  %1282 = add i32 %1279, -1
  %1283 = add i32 %1280, 1
  %1284 = zext i32 %1280 to i64
  %1285 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1284
  store i16 %1227, ptr %1285, align 2, !tbaa !75
  %1286 = add i32 %1281, 1
  %1287 = icmp eq i32 %1286, %1276
  br i1 %1287, label %1288, label %1278, !llvm.loop !89

1288:                                             ; preds = %1278, %1272
  %1289 = phi i32 [ poison, %1272 ], [ %1283, %1278 ]
  %1290 = phi i32 [ %1273, %1272 ], [ %1282, %1278 ]
  %1291 = phi i32 [ %1274, %1272 ], [ %1283, %1278 ]
  %1292 = icmp ult i32 %1275, 3
  br i1 %1292, label %1311, label %1294

1293:                                             ; preds = %1221
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2111

1294:                                             ; preds = %1288, %1294
  %1295 = phi i32 [ %1306, %1294 ], [ %1290, %1288 ]
  %1296 = phi i32 [ %1307, %1294 ], [ %1291, %1288 ]
  %1297 = add i32 %1296, 1
  %1298 = zext i32 %1296 to i64
  %1299 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1298
  store i16 %1227, ptr %1299, align 2, !tbaa !75
  %1300 = add i32 %1296, 2
  %1301 = zext i32 %1297 to i64
  %1302 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1301
  store i16 %1227, ptr %1302, align 2, !tbaa !75
  %1303 = add i32 %1296, 3
  %1304 = zext i32 %1300 to i64
  %1305 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1304
  store i16 %1227, ptr %1305, align 2, !tbaa !75
  %1306 = add i32 %1295, -4
  %1307 = add i32 %1296, 4
  %1308 = zext i32 %1303 to i64
  %1309 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1308
  store i16 %1227, ptr %1309, align 2, !tbaa !75
  %1310 = icmp eq i32 %1306, 0
  br i1 %1310, label %1311, label %1294, !llvm.loop !91

1311:                                             ; preds = %1288, %1294, %1270, %1252
  %1312 = phi i32 [ %1260, %1270 ], [ %1241, %1252 ], [ %1289, %1288 ], [ %1307, %1294 ]
  store i32 %1312, ptr %60, align 4, !tbaa !52
  br label %1313

1313:                                             ; preds = %1311, %1097
  %1314 = phi i32 [ %1101, %1097 ], [ %1312, %1311 ]
  %1315 = phi ptr [ %1088, %1097 ], [ %1222, %1311 ]
  %1316 = phi i32 [ %1089, %1097 ], [ %1223, %1311 ]
  %1317 = phi i64 [ %1099, %1097 ], [ %1224, %1311 ]
  %1318 = phi i32 [ %1100, %1097 ], [ %1225, %1311 ]
  %1319 = icmp ult i32 %1314, %1035
  br i1 %1319, label %1042, label %1320, !llvm.loop !92

1320:                                             ; preds = %1313, %1026
  %1321 = phi ptr [ %1028, %1026 ], [ %1315, %1313 ]
  %1322 = phi i32 [ %1029, %1026 ], [ %1316, %1313 ]
  %1323 = phi i64 [ %1030, %1026 ], [ %1317, %1313 ]
  %1324 = phi i32 [ %1031, %1026 ], [ %1318, %1313 ]
  %1325 = load i16, ptr %68, align 8, !tbaa !75
  %1326 = icmp eq i16 %1325, 0
  br i1 %1326, label %1327, label %1328

1327:                                             ; preds = %1320
  store ptr @.str.11, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2111

1328:                                             ; preds = %1320
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 9, ptr %66, align 8, !tbaa !79
  %1329 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %61, i32 noundef %1033, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #12
  %1330 = icmp eq i32 %1329, 0
  br i1 %1330, label %1332, label %1331

1331:                                             ; preds = %1328
  store ptr @.str.12, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2111

1332:                                             ; preds = %1328
  %1333 = load ptr, ptr %63, align 8, !tbaa !33
  store ptr %1333, ptr %64, align 8, !tbaa !34
  store i32 6, ptr %69, align 4, !tbaa !93
  %1334 = load i32, ptr %57, align 4, !tbaa !72
  %1335 = zext i32 %1334 to i64
  %1336 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1335
  %1337 = load i32, ptr %58, align 8, !tbaa !73
  %1338 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %1336, i32 noundef %1337, ptr noundef nonnull %63, ptr noundef nonnull %69, ptr noundef nonnull %67) #12
  %1339 = icmp eq i32 %1338, 0
  br i1 %1339, label %1341, label %1340

1340:                                             ; preds = %1332
  store ptr @.str.13, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2111

1341:                                             ; preds = %1332
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %2225, label %1342

1342:                                             ; preds = %1341, %88
  %1343 = phi ptr [ %1321, %1341 ], [ %90, %88 ]
  %1344 = phi i32 [ %1322, %1341 ], [ %92, %88 ]
  %1345 = phi i64 [ %1323, %1341 ], [ %94, %88 ]
  %1346 = phi i32 [ %1324, %1341 ], [ %95, %88 ]
  %1347 = phi i32 [ 0, %1341 ], [ %97, %88 ]
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %1348

1348:                                             ; preds = %88, %1342
  %1349 = phi ptr [ %1343, %1342 ], [ %90, %88 ]
  %1350 = phi i32 [ %1344, %1342 ], [ %92, %88 ]
  %1351 = phi i64 [ %1345, %1342 ], [ %94, %88 ]
  %1352 = phi i32 [ %1346, %1342 ], [ %95, %88 ]
  %1353 = phi i32 [ %1347, %1342 ], [ %97, %88 ]
  %1354 = icmp ugt i32 %1350, 5
  %1355 = icmp ugt i32 %93, 257
  %1356 = select i1 %1354, i1 %1355, i1 false
  br i1 %1356, label %1357, label %1367

1357:                                             ; preds = %1348
  store ptr %91, ptr %26, align 8, !tbaa !47
  store i32 %93, ptr %41, align 8, !tbaa !50
  store ptr %1349, ptr %0, align 8, !tbaa !48
  store i32 %1350, ptr %43, align 8, !tbaa !49
  store i64 %1351, ptr %45, align 8, !tbaa !31
  store i32 %1352, ptr %47, align 8, !tbaa !32
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %96) #12
  %1358 = load ptr, ptr %26, align 8, !tbaa !47
  %1359 = load i32, ptr %41, align 8, !tbaa !50
  %1360 = load ptr, ptr %0, align 8, !tbaa !48
  %1361 = load i32, ptr %43, align 8, !tbaa !49
  %1362 = load i64, ptr %45, align 8, !tbaa !31
  %1363 = load i32, ptr %47, align 8, !tbaa !32
  %1364 = load i32, ptr %21, align 8, !tbaa !20
  %1365 = icmp eq i32 %1364, 16191
  br i1 %1365, label %1366, label %2111

1366:                                             ; preds = %1357
  store i32 -1, ptr %71, align 4, !tbaa !37
  br label %2111

1367:                                             ; preds = %1348
  store i32 0, ptr %71, align 4, !tbaa !37
  %1368 = load ptr, ptr %65, align 8, !tbaa !35
  %1369 = load i32, ptr %66, align 8, !tbaa !79
  %1370 = shl nsw i32 -1, %1369
  %1371 = xor i32 %1370, -1
  %1372 = trunc i64 %1351 to i32
  %1373 = and i32 %1371, %1372
  %1374 = zext nneg i32 %1373 to i64
  %1375 = getelementptr inbounds nuw [4 x i8], ptr %1368, i64 %1374
  %1376 = getelementptr inbounds nuw i8, ptr %1375, i64 1
  %1377 = load i8, ptr %1376, align 1, !tbaa !44
  %1378 = zext i8 %1377 to i32
  %1379 = icmp ult i32 %1352, %1378
  br i1 %1379, label %1380, label %1409

1380:                                             ; preds = %1367
  %1381 = icmp eq i32 %1350, 0
  br i1 %1381, label %2218, label %1382

1382:                                             ; preds = %1380
  %1383 = zext nneg i32 %1352 to i64
  br label %1386

1384:                                             ; preds = %1386
  %1385 = icmp eq i32 %1391, 0
  br i1 %1385, label %2218, label %1386

1386:                                             ; preds = %1382, %1384
  %1387 = phi ptr [ %1349, %1382 ], [ %1392, %1384 ]
  %1388 = phi i32 [ %1350, %1382 ], [ %1391, %1384 ]
  %1389 = phi i64 [ %1351, %1382 ], [ %1396, %1384 ]
  %1390 = phi i64 [ %1383, %1382 ], [ %1397, %1384 ]
  %1391 = add i32 %1388, -1
  %1392 = getelementptr inbounds nuw i8, ptr %1387, i64 1
  %1393 = load i8, ptr %1387, align 1, !tbaa !44
  %1394 = zext i8 %1393 to i64
  %1395 = shl i64 %1394, %1390
  %1396 = add i64 %1395, %1389
  %1397 = add nuw nsw i64 %1390, 8
  %1398 = trunc i64 %1396 to i32
  %1399 = and i32 %1371, %1398
  %1400 = zext nneg i32 %1399 to i64
  %1401 = getelementptr inbounds nuw [4 x i8], ptr %1368, i64 %1400
  %1402 = getelementptr inbounds nuw i8, ptr %1401, i64 1
  %1403 = load i8, ptr %1402, align 1, !tbaa !44
  %1404 = zext i8 %1403 to i64
  %1405 = icmp samesign ult i64 %1397, %1404
  br i1 %1405, label %1384, label %1406

1406:                                             ; preds = %1386
  %1407 = zext i8 %1403 to i32
  %1408 = trunc nuw nsw i64 %1397 to i32
  br label %1409

1409:                                             ; preds = %1406, %1367
  %1410 = phi ptr [ %1375, %1367 ], [ %1401, %1406 ]
  %1411 = phi ptr [ %1349, %1367 ], [ %1392, %1406 ]
  %1412 = phi i32 [ %1350, %1367 ], [ %1391, %1406 ]
  %1413 = phi i64 [ %1351, %1367 ], [ %1396, %1406 ]
  %1414 = phi i32 [ %1352, %1367 ], [ %1408, %1406 ]
  %1415 = phi i8 [ %1377, %1367 ], [ %1403, %1406 ]
  %1416 = phi i32 [ %1378, %1367 ], [ %1407, %1406 ]
  %1417 = getelementptr inbounds nuw i8, ptr %1410, i64 2
  %1418 = load i16, ptr %1417, align 2, !tbaa !75
  %1419 = load i8, ptr %1410, align 2, !tbaa !44
  %1420 = add i8 %1419, -1
  %1421 = icmp ult i8 %1420, 15
  br i1 %1421, label %1422, label %1484

1422:                                             ; preds = %1409
  %1423 = zext nneg i8 %1419 to i32
  %1424 = zext i16 %1418 to i32
  %1425 = add nuw nsw i32 %1416, %1423
  %1426 = shl nsw i32 -1, %1425
  %1427 = xor i32 %1426, -1
  %1428 = trunc i64 %1413 to i32
  %1429 = and i32 %1428, %1427
  %1430 = lshr i32 %1429, %1416
  %1431 = add nuw i32 %1430, %1424
  %1432 = zext i32 %1431 to i64
  %1433 = getelementptr inbounds nuw [4 x i8], ptr %1368, i64 %1432
  %1434 = getelementptr inbounds nuw i8, ptr %1433, i64 1
  %1435 = load i8, ptr %1434, align 1, !tbaa !44
  %1436 = zext i8 %1435 to i32
  %1437 = add nuw nsw i32 %1416, %1436
  %1438 = icmp ugt i32 %1437, %1414
  br i1 %1438, label %1439, label %1471

1439:                                             ; preds = %1422
  %1440 = icmp eq i32 %1412, 0
  br i1 %1440, label %2212, label %1441

1441:                                             ; preds = %1439
  %1442 = zext nneg i32 %1414 to i64
  br label %1445

1443:                                             ; preds = %1445
  %1444 = icmp eq i32 %1450, 0
  br i1 %1444, label %2212, label %1445

1445:                                             ; preds = %1441, %1443
  %1446 = phi ptr [ %1411, %1441 ], [ %1451, %1443 ]
  %1447 = phi i32 [ %1412, %1441 ], [ %1450, %1443 ]
  %1448 = phi i64 [ %1413, %1441 ], [ %1455, %1443 ]
  %1449 = phi i64 [ %1442, %1441 ], [ %1456, %1443 ]
  %1450 = add i32 %1447, -1
  %1451 = getelementptr inbounds nuw i8, ptr %1446, i64 1
  %1452 = load i8, ptr %1446, align 1, !tbaa !44
  %1453 = zext i8 %1452 to i64
  %1454 = shl i64 %1453, %1449
  %1455 = add i64 %1454, %1448
  %1456 = add nuw nsw i64 %1449, 8
  %1457 = trunc i64 %1455 to i32
  %1458 = and i32 %1457, %1427
  %1459 = lshr i32 %1458, %1416
  %1460 = add nuw i32 %1459, %1424
  %1461 = zext i32 %1460 to i64
  %1462 = getelementptr inbounds nuw [4 x i8], ptr %1368, i64 %1461
  %1463 = getelementptr inbounds nuw i8, ptr %1462, i64 1
  %1464 = load i8, ptr %1463, align 1, !tbaa !44
  %1465 = zext i8 %1464 to i32
  %1466 = add nuw nsw i32 %1416, %1465
  %1467 = zext nneg i32 %1466 to i64
  %1468 = icmp samesign ult i64 %1456, %1467
  br i1 %1468, label %1443, label %1469

1469:                                             ; preds = %1445
  %1470 = trunc nuw nsw i64 %1456 to i32
  br label %1471

1471:                                             ; preds = %1469, %1422
  %1472 = phi ptr [ %1433, %1422 ], [ %1462, %1469 ]
  %1473 = phi ptr [ %1411, %1422 ], [ %1451, %1469 ]
  %1474 = phi i32 [ %1412, %1422 ], [ %1450, %1469 ]
  %1475 = phi i64 [ %1413, %1422 ], [ %1455, %1469 ]
  %1476 = phi i32 [ %1414, %1422 ], [ %1470, %1469 ]
  %1477 = phi i8 [ %1435, %1422 ], [ %1464, %1469 ]
  %1478 = load i8, ptr %1472, align 2, !tbaa !44
  %1479 = getelementptr inbounds nuw i8, ptr %1472, i64 2
  %1480 = load i16, ptr %1479, align 2, !tbaa !75
  %1481 = sub i32 %1476, %1416
  %1482 = zext nneg i8 %1415 to i64
  %1483 = lshr i64 %1475, %1482
  br label %1484

1484:                                             ; preds = %1471, %1409
  %1485 = phi i32 [ %1416, %1471 ], [ 0, %1409 ]
  %1486 = phi ptr [ %1473, %1471 ], [ %1411, %1409 ]
  %1487 = phi i32 [ %1474, %1471 ], [ %1412, %1409 ]
  %1488 = phi i64 [ %1483, %1471 ], [ %1413, %1409 ]
  %1489 = phi i32 [ %1481, %1471 ], [ %1414, %1409 ]
  %1490 = phi i16 [ %1480, %1471 ], [ %1418, %1409 ]
  %1491 = phi i8 [ %1477, %1471 ], [ %1415, %1409 ]
  %1492 = phi i8 [ %1478, %1471 ], [ %1419, %1409 ]
  %1493 = zext i8 %1491 to i32
  %1494 = zext nneg i8 %1491 to i64
  %1495 = lshr i64 %1488, %1494
  %1496 = sub i32 %1489, %1493
  %1497 = add nsw i32 %1485, %1493
  store i32 %1497, ptr %71, align 4, !tbaa !37
  %1498 = zext i16 %1490 to i32
  store i32 %1498, ptr %56, align 4, !tbaa !60
  %1499 = zext i8 %1492 to i32
  %1500 = icmp eq i8 %1492, 0
  br i1 %1500, label %1501, label %1502

1501:                                             ; preds = %1484
  store i32 16205, ptr %21, align 8, !tbaa !20
  br label %2111

1502:                                             ; preds = %1484
  %1503 = and i32 %1499, 32
  %1504 = icmp eq i32 %1503, 0
  br i1 %1504, label %1506, label %1505

1505:                                             ; preds = %1502
  store i32 -1, ptr %71, align 4, !tbaa !37
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2111

1506:                                             ; preds = %1502
  %1507 = and i32 %1499, 64
  %1508 = icmp eq i32 %1507, 0
  br i1 %1508, label %1510, label %1509

1509:                                             ; preds = %1506
  store ptr @.str.14, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2111

1510:                                             ; preds = %1506
  %1511 = and i32 %1499, 15
  store i32 %1511, ptr %72, align 4, !tbaa !51
  store i32 16201, ptr %21, align 8, !tbaa !20
  br label %1512

1512:                                             ; preds = %101, %1510
  %1513 = phi i32 [ %1511, %1510 ], [ %102, %101 ]
  %1514 = phi ptr [ %1486, %1510 ], [ %90, %101 ]
  %1515 = phi i32 [ %1487, %1510 ], [ %92, %101 ]
  %1516 = phi i64 [ %1495, %1510 ], [ %94, %101 ]
  %1517 = phi i32 [ %1496, %1510 ], [ %95, %101 ]
  %1518 = phi i32 [ %1353, %1510 ], [ %97, %101 ]
  %1519 = icmp eq i32 %1513, 0
  br i1 %1519, label %1520, label %1522

1520:                                             ; preds = %1512
  %1521 = load i32, ptr %56, align 4, !tbaa !60
  br label %1558

1522:                                             ; preds = %1512
  %1523 = icmp ult i32 %1517, %1513
  br i1 %1523, label %1524, label %1542

1524:                                             ; preds = %1522
  %1525 = icmp eq i32 %1515, 0
  br i1 %1525, label %2206, label %1528

1526:                                             ; preds = %1528
  %1527 = icmp eq i32 %1533, 0
  br i1 %1527, label %2206, label %1528, !llvm.loop !94

1528:                                             ; preds = %1524, %1526
  %1529 = phi ptr [ %1534, %1526 ], [ %1514, %1524 ]
  %1530 = phi i32 [ %1533, %1526 ], [ %1515, %1524 ]
  %1531 = phi i64 [ %1539, %1526 ], [ %1516, %1524 ]
  %1532 = phi i32 [ %1540, %1526 ], [ %1517, %1524 ]
  %1533 = add i32 %1530, -1
  %1534 = getelementptr inbounds nuw i8, ptr %1529, i64 1
  %1535 = load i8, ptr %1529, align 1, !tbaa !44
  %1536 = zext i8 %1535 to i64
  %1537 = zext nneg i32 %1532 to i64
  %1538 = shl i64 %1536, %1537
  %1539 = add i64 %1538, %1531
  %1540 = add i32 %1532, 8
  %1541 = icmp ult i32 %1540, %1513
  br i1 %1541, label %1526, label %1542, !llvm.loop !94

1542:                                             ; preds = %1528, %1522
  %1543 = phi ptr [ %1514, %1522 ], [ %1534, %1528 ]
  %1544 = phi i32 [ %1515, %1522 ], [ %1533, %1528 ]
  %1545 = phi i64 [ %1516, %1522 ], [ %1539, %1528 ]
  %1546 = phi i32 [ %1517, %1522 ], [ %1540, %1528 ]
  %1547 = trunc i64 %1545 to i32
  %1548 = shl nsw i32 -1, %1513
  %1549 = xor i32 %1548, -1
  %1550 = and i32 %1547, %1549
  %1551 = load i32, ptr %56, align 4, !tbaa !60
  %1552 = add i32 %1551, %1550
  store i32 %1552, ptr %56, align 4, !tbaa !60
  %1553 = zext nneg i32 %1513 to i64
  %1554 = lshr i64 %1545, %1553
  %1555 = sub nuw i32 %1546, %1513
  %1556 = load i32, ptr %71, align 4, !tbaa !37
  %1557 = add i32 %1556, %1513
  store i32 %1557, ptr %71, align 4, !tbaa !37
  br label %1558

1558:                                             ; preds = %1520, %1542
  %1559 = phi i32 [ %1552, %1542 ], [ %1521, %1520 ]
  %1560 = phi ptr [ %1543, %1542 ], [ %1514, %1520 ]
  %1561 = phi i32 [ %1544, %1542 ], [ %1515, %1520 ]
  %1562 = phi i64 [ %1554, %1542 ], [ %1516, %1520 ]
  %1563 = phi i32 [ %1555, %1542 ], [ %1517, %1520 ]
  store i32 %1559, ptr %73, align 8, !tbaa !95
  store i32 16202, ptr %21, align 8, !tbaa !20
  br label %1564

1564:                                             ; preds = %88, %1558
  %1565 = phi ptr [ %1560, %1558 ], [ %90, %88 ]
  %1566 = phi i32 [ %1561, %1558 ], [ %92, %88 ]
  %1567 = phi i64 [ %1562, %1558 ], [ %94, %88 ]
  %1568 = phi i32 [ %1563, %1558 ], [ %95, %88 ]
  %1569 = phi i32 [ %1518, %1558 ], [ %97, %88 ]
  %1570 = load ptr, ptr %64, align 8, !tbaa !34
  %1571 = load i32, ptr %69, align 4, !tbaa !93
  %1572 = shl nsw i32 -1, %1571
  %1573 = xor i32 %1572, -1
  %1574 = trunc i64 %1567 to i32
  %1575 = and i32 %1573, %1574
  %1576 = zext nneg i32 %1575 to i64
  %1577 = getelementptr inbounds nuw [4 x i8], ptr %1570, i64 %1576
  %1578 = getelementptr inbounds nuw i8, ptr %1577, i64 1
  %1579 = load i8, ptr %1578, align 1, !tbaa !44
  %1580 = zext i8 %1579 to i32
  %1581 = icmp ult i32 %1568, %1580
  br i1 %1581, label %1582, label %1611

1582:                                             ; preds = %1564
  %1583 = icmp eq i32 %1566, 0
  br i1 %1583, label %2200, label %1584

1584:                                             ; preds = %1582
  %1585 = zext nneg i32 %1568 to i64
  br label %1588

1586:                                             ; preds = %1588
  %1587 = icmp eq i32 %1593, 0
  br i1 %1587, label %2200, label %1588

1588:                                             ; preds = %1584, %1586
  %1589 = phi ptr [ %1565, %1584 ], [ %1594, %1586 ]
  %1590 = phi i32 [ %1566, %1584 ], [ %1593, %1586 ]
  %1591 = phi i64 [ %1567, %1584 ], [ %1598, %1586 ]
  %1592 = phi i64 [ %1585, %1584 ], [ %1599, %1586 ]
  %1593 = add i32 %1590, -1
  %1594 = getelementptr inbounds nuw i8, ptr %1589, i64 1
  %1595 = load i8, ptr %1589, align 1, !tbaa !44
  %1596 = zext i8 %1595 to i64
  %1597 = shl i64 %1596, %1592
  %1598 = add i64 %1597, %1591
  %1599 = add nuw nsw i64 %1592, 8
  %1600 = trunc i64 %1598 to i32
  %1601 = and i32 %1573, %1600
  %1602 = zext nneg i32 %1601 to i64
  %1603 = getelementptr inbounds nuw [4 x i8], ptr %1570, i64 %1602
  %1604 = getelementptr inbounds nuw i8, ptr %1603, i64 1
  %1605 = load i8, ptr %1604, align 1, !tbaa !44
  %1606 = zext i8 %1605 to i64
  %1607 = icmp samesign ult i64 %1599, %1606
  br i1 %1607, label %1586, label %1608

1608:                                             ; preds = %1588
  %1609 = zext i8 %1605 to i32
  %1610 = trunc nuw nsw i64 %1599 to i32
  br label %1611

1611:                                             ; preds = %1608, %1564
  %1612 = phi ptr [ %1577, %1564 ], [ %1603, %1608 ]
  %1613 = phi ptr [ %1565, %1564 ], [ %1594, %1608 ]
  %1614 = phi i32 [ %1566, %1564 ], [ %1593, %1608 ]
  %1615 = phi i64 [ %1567, %1564 ], [ %1598, %1608 ]
  %1616 = phi i32 [ %1568, %1564 ], [ %1610, %1608 ]
  %1617 = phi i8 [ %1579, %1564 ], [ %1605, %1608 ]
  %1618 = phi i32 [ %1580, %1564 ], [ %1609, %1608 ]
  %1619 = getelementptr inbounds nuw i8, ptr %1612, i64 2
  %1620 = load i16, ptr %1619, align 2, !tbaa !75
  %1621 = load i8, ptr %1612, align 2, !tbaa !44
  %1622 = icmp ult i8 %1621, 16
  br i1 %1622, label %1625, label %1623

1623:                                             ; preds = %1611
  %1624 = load i32, ptr %71, align 4, !tbaa !37
  br label %1692

1625:                                             ; preds = %1611
  %1626 = zext nneg i8 %1621 to i32
  %1627 = zext i16 %1620 to i32
  %1628 = add nuw nsw i32 %1618, %1626
  %1629 = shl nsw i32 -1, %1628
  %1630 = xor i32 %1629, -1
  %1631 = trunc i64 %1615 to i32
  %1632 = and i32 %1631, %1630
  %1633 = lshr i32 %1632, %1618
  %1634 = add nuw i32 %1633, %1627
  %1635 = zext i32 %1634 to i64
  %1636 = getelementptr inbounds nuw [4 x i8], ptr %1570, i64 %1635
  %1637 = getelementptr inbounds nuw i8, ptr %1636, i64 1
  %1638 = load i8, ptr %1637, align 1, !tbaa !44
  %1639 = zext i8 %1638 to i32
  %1640 = add nuw nsw i32 %1618, %1639
  %1641 = icmp ugt i32 %1640, %1616
  br i1 %1641, label %1642, label %1674

1642:                                             ; preds = %1625
  %1643 = icmp eq i32 %1614, 0
  br i1 %1643, label %2194, label %1644

1644:                                             ; preds = %1642
  %1645 = zext nneg i32 %1616 to i64
  br label %1648

1646:                                             ; preds = %1648
  %1647 = icmp eq i32 %1653, 0
  br i1 %1647, label %2194, label %1648

1648:                                             ; preds = %1644, %1646
  %1649 = phi ptr [ %1613, %1644 ], [ %1654, %1646 ]
  %1650 = phi i32 [ %1614, %1644 ], [ %1653, %1646 ]
  %1651 = phi i64 [ %1615, %1644 ], [ %1658, %1646 ]
  %1652 = phi i64 [ %1645, %1644 ], [ %1659, %1646 ]
  %1653 = add i32 %1650, -1
  %1654 = getelementptr inbounds nuw i8, ptr %1649, i64 1
  %1655 = load i8, ptr %1649, align 1, !tbaa !44
  %1656 = zext i8 %1655 to i64
  %1657 = shl i64 %1656, %1652
  %1658 = add i64 %1657, %1651
  %1659 = add nuw nsw i64 %1652, 8
  %1660 = trunc i64 %1658 to i32
  %1661 = and i32 %1660, %1630
  %1662 = lshr i32 %1661, %1618
  %1663 = add nuw i32 %1662, %1627
  %1664 = zext i32 %1663 to i64
  %1665 = getelementptr inbounds nuw [4 x i8], ptr %1570, i64 %1664
  %1666 = getelementptr inbounds nuw i8, ptr %1665, i64 1
  %1667 = load i8, ptr %1666, align 1, !tbaa !44
  %1668 = zext i8 %1667 to i32
  %1669 = add nuw nsw i32 %1618, %1668
  %1670 = zext nneg i32 %1669 to i64
  %1671 = icmp samesign ult i64 %1659, %1670
  br i1 %1671, label %1646, label %1672

1672:                                             ; preds = %1648
  %1673 = trunc nuw nsw i64 %1659 to i32
  br label %1674

1674:                                             ; preds = %1672, %1625
  %1675 = phi ptr [ %1636, %1625 ], [ %1665, %1672 ]
  %1676 = phi ptr [ %1613, %1625 ], [ %1654, %1672 ]
  %1677 = phi i32 [ %1614, %1625 ], [ %1653, %1672 ]
  %1678 = phi i64 [ %1615, %1625 ], [ %1658, %1672 ]
  %1679 = phi i32 [ %1616, %1625 ], [ %1673, %1672 ]
  %1680 = phi i8 [ %1638, %1625 ], [ %1667, %1672 ]
  %1681 = load i32, ptr %71, align 4, !tbaa !37
  %1682 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1681, i32 %1618), !nosanitize !80
  %1683 = extractvalue { i32, i1 } %1682, 1, !nosanitize !80
  br i1 %1683, label %1123, label %1684, !prof !96, !nosanitize !80

1684:                                             ; preds = %1674
  %1685 = getelementptr inbounds nuw i8, ptr %1675, i64 2
  %1686 = load i16, ptr %1685, align 2, !tbaa !75
  %1687 = load i8, ptr %1675, align 2, !tbaa !44
  %1688 = extractvalue { i32, i1 } %1682, 0, !nosanitize !80
  %1689 = sub i32 %1679, %1618
  %1690 = zext nneg i8 %1617 to i64
  %1691 = lshr i64 %1678, %1690
  store i32 %1688, ptr %71, align 4, !tbaa !37
  br label %1692

1692:                                             ; preds = %1623, %1684
  %1693 = phi i32 [ %1688, %1684 ], [ %1624, %1623 ]
  %1694 = phi ptr [ %1676, %1684 ], [ %1613, %1623 ]
  %1695 = phi i32 [ %1677, %1684 ], [ %1614, %1623 ]
  %1696 = phi i64 [ %1691, %1684 ], [ %1615, %1623 ]
  %1697 = phi i32 [ %1689, %1684 ], [ %1616, %1623 ]
  %1698 = phi i16 [ %1686, %1684 ], [ %1620, %1623 ]
  %1699 = phi i8 [ %1680, %1684 ], [ %1617, %1623 ]
  %1700 = phi i8 [ %1687, %1684 ], [ %1621, %1623 ]
  %1701 = zext i8 %1699 to i32
  %1702 = zext nneg i8 %1699 to i64
  %1703 = lshr i64 %1696, %1702
  %1704 = sub i32 %1697, %1701
  %1705 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1693, i32 %1701), !nosanitize !80
  %1706 = extractvalue { i32, i1 } %1705, 1, !nosanitize !80
  br i1 %1706, label %1123, label %1707, !prof !96, !nosanitize !80

1707:                                             ; preds = %1692
  %1708 = extractvalue { i32, i1 } %1705, 0, !nosanitize !80
  store i32 %1708, ptr %71, align 4, !tbaa !37
  %1709 = zext i8 %1700 to i32
  %1710 = and i32 %1709, 64
  %1711 = icmp eq i32 %1710, 0
  br i1 %1711, label %1713, label %1712

1712:                                             ; preds = %1707
  store ptr @.str.15, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2111

1713:                                             ; preds = %1707
  %1714 = zext i16 %1698 to i32
  store i32 %1714, ptr %74, align 8, !tbaa !97
  %1715 = and i32 %1709, 15
  store i32 %1715, ptr %72, align 4, !tbaa !51
  store i32 16203, ptr %21, align 8, !tbaa !20
  br label %1716

1716:                                             ; preds = %99, %1713
  %1717 = phi i32 [ %1715, %1713 ], [ %100, %99 ]
  %1718 = phi ptr [ %1694, %1713 ], [ %90, %99 ]
  %1719 = phi i32 [ %1695, %1713 ], [ %92, %99 ]
  %1720 = phi i64 [ %1703, %1713 ], [ %94, %99 ]
  %1721 = phi i32 [ %1704, %1713 ], [ %95, %99 ]
  %1722 = phi i32 [ %1569, %1713 ], [ %97, %99 ]
  %1723 = icmp eq i32 %1717, 0
  br i1 %1723, label %1760, label %1724

1724:                                             ; preds = %1716
  %1725 = icmp ult i32 %1721, %1717
  br i1 %1725, label %1726, label %1744

1726:                                             ; preds = %1724
  %1727 = icmp eq i32 %1719, 0
  br i1 %1727, label %2188, label %1730

1728:                                             ; preds = %1730
  %1729 = icmp eq i32 %1735, 0
  br i1 %1729, label %2188, label %1730, !llvm.loop !98

1730:                                             ; preds = %1726, %1728
  %1731 = phi ptr [ %1736, %1728 ], [ %1718, %1726 ]
  %1732 = phi i32 [ %1735, %1728 ], [ %1719, %1726 ]
  %1733 = phi i64 [ %1741, %1728 ], [ %1720, %1726 ]
  %1734 = phi i32 [ %1742, %1728 ], [ %1721, %1726 ]
  %1735 = add i32 %1732, -1
  %1736 = getelementptr inbounds nuw i8, ptr %1731, i64 1
  %1737 = load i8, ptr %1731, align 1, !tbaa !44
  %1738 = zext i8 %1737 to i64
  %1739 = zext nneg i32 %1734 to i64
  %1740 = shl i64 %1738, %1739
  %1741 = add i64 %1740, %1733
  %1742 = add i32 %1734, 8
  %1743 = icmp ult i32 %1742, %1717
  br i1 %1743, label %1728, label %1744, !llvm.loop !98

1744:                                             ; preds = %1730, %1724
  %1745 = phi ptr [ %1718, %1724 ], [ %1736, %1730 ]
  %1746 = phi i32 [ %1719, %1724 ], [ %1735, %1730 ]
  %1747 = phi i64 [ %1720, %1724 ], [ %1741, %1730 ]
  %1748 = phi i32 [ %1721, %1724 ], [ %1742, %1730 ]
  %1749 = trunc i64 %1747 to i32
  %1750 = shl nsw i32 -1, %1717
  %1751 = xor i32 %1750, -1
  %1752 = and i32 %1749, %1751
  %1753 = load i32, ptr %74, align 8, !tbaa !97
  %1754 = add i32 %1753, %1752
  store i32 %1754, ptr %74, align 8, !tbaa !97
  %1755 = zext nneg i32 %1717 to i64
  %1756 = lshr i64 %1747, %1755
  %1757 = sub nuw i32 %1748, %1717
  %1758 = load i32, ptr %71, align 4, !tbaa !37
  %1759 = add i32 %1758, %1717
  store i32 %1759, ptr %71, align 4, !tbaa !37
  br label %1760

1760:                                             ; preds = %1744, %1716
  %1761 = phi ptr [ %1745, %1744 ], [ %1718, %1716 ]
  %1762 = phi i32 [ %1746, %1744 ], [ %1719, %1716 ]
  %1763 = phi i64 [ %1756, %1744 ], [ %1720, %1716 ]
  %1764 = phi i32 [ %1757, %1744 ], [ %1721, %1716 ]
  store i32 16204, ptr %21, align 8, !tbaa !20
  br label %1765

1765:                                             ; preds = %88, %1760
  %1766 = phi ptr [ %1761, %1760 ], [ %90, %88 ]
  %1767 = phi i32 [ %1762, %1760 ], [ %92, %88 ]
  %1768 = phi i64 [ %1763, %1760 ], [ %94, %88 ]
  %1769 = phi i32 [ %1764, %1760 ], [ %95, %88 ]
  %1770 = phi i32 [ %1722, %1760 ], [ %97, %88 ]
  %1771 = icmp eq i32 %93, 0
  br i1 %1771, label %2225, label %1772

1772:                                             ; preds = %1765
  %1773 = sub i32 %96, %93
  %1774 = load i32, ptr %74, align 8, !tbaa !97
  %1775 = icmp ugt i32 %1774, %1773
  br i1 %1775, label %1776, label %1801

1776:                                             ; preds = %1772
  %1777 = sub nuw i32 %1774, %1773
  %1778 = load i32, ptr %75, align 8, !tbaa !39
  %1779 = icmp ugt i32 %1777, %1778
  br i1 %1779, label %1780, label %1784

1780:                                             ; preds = %1776
  %1781 = load i32, ptr %76, align 8, !tbaa !36
  %1782 = icmp eq i32 %1781, 0
  br i1 %1782, label %1784, label %1783

1783:                                             ; preds = %1780
  store ptr @.str.16, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2111

1784:                                             ; preds = %1780, %1776
  %1785 = load i32, ptr %77, align 4, !tbaa !40
  %1786 = icmp ugt i32 %1777, %1785
  br i1 %1786, label %1787, label %1791

1787:                                             ; preds = %1784
  %1788 = sub nuw i32 %1777, %1785
  %1789 = load i32, ptr %79, align 4, !tbaa !38
  %1790 = sub i32 %1789, %1788
  br label %1793

1791:                                             ; preds = %1784
  %1792 = sub nuw i32 %1785, %1777
  br label %1793

1793:                                             ; preds = %1791, %1787
  %1794 = phi i32 [ %1792, %1791 ], [ %1790, %1787 ]
  %1795 = phi i32 [ %1777, %1791 ], [ %1788, %1787 ]
  %1796 = load ptr, ptr %78, align 8, !tbaa !41
  %1797 = zext i32 %1794 to i64
  %1798 = getelementptr inbounds nuw i8, ptr %1796, i64 %1797
  %1799 = load i32, ptr %56, align 4, !tbaa !60
  %1800 = call i32 @llvm.umin.i32(i32 %1795, i32 %1799)
  br label %1806

1801:                                             ; preds = %1772
  %1802 = zext i32 %1774 to i64
  %1803 = sub nsw i64 0, %1802
  %1804 = getelementptr inbounds i8, ptr %91, i64 %1803
  %1805 = load i32, ptr %56, align 4, !tbaa !60
  br label %1806

1806:                                             ; preds = %1793, %1801
  %1807 = phi i32 [ %1805, %1801 ], [ %1799, %1793 ]
  %1808 = phi i32 [ %1805, %1801 ], [ %1800, %1793 ]
  %1809 = phi ptr [ %1804, %1801 ], [ %1798, %1793 ]
  %1810 = call i32 @llvm.umin.i32(i32 %1808, i32 %93)
  %1811 = sub i32 %1807, %1810
  store i32 %1811, ptr %56, align 4, !tbaa !60
  %1812 = add i32 %1810, -1
  %1813 = zext i32 %1812 to i64
  %1814 = add nuw nsw i64 %1813, 1
  %1815 = icmp ult i32 %1812, 3
  %1816 = ptrtoaddr ptr %1809 to i64
  %1817 = sub i64 %98, %1816
  %1818 = icmp ult i64 %1817, 32
  %1819 = select i1 %1815, i1 true, i1 %1818
  br i1 %1819, label %1859, label %1820

1820:                                             ; preds = %1806
  %1821 = icmp ult i32 %1812, 31
  br i1 %1821, label %1843, label %1822

1822:                                             ; preds = %1820
  %1823 = and i64 %1814, 28
  %1824 = and i64 %1814, 8589934560
  %1825 = getelementptr i8, ptr %91, i64 %1824
  %1826 = trunc i64 %1824 to i32
  %1827 = sub i32 %1810, %1826
  %1828 = getelementptr i8, ptr %1809, i64 %1824
  br label %1829

1829:                                             ; preds = %1829, %1822
  %1830 = phi i64 [ 0, %1822 ], [ %1837, %1829 ]
  %1831 = getelementptr i8, ptr %91, i64 %1830
  %1832 = getelementptr i8, ptr %1809, i64 %1830
  %1833 = getelementptr i8, ptr %1832, i64 16
  %1834 = load <16 x i8>, ptr %1832, align 1, !tbaa !44
  %1835 = load <16 x i8>, ptr %1833, align 1, !tbaa !44
  %1836 = getelementptr i8, ptr %1831, i64 16
  store <16 x i8> %1834, ptr %1831, align 1, !tbaa !44
  store <16 x i8> %1835, ptr %1836, align 1, !tbaa !44
  %1837 = add nuw i64 %1830, 32
  %1838 = icmp eq i64 %1837, %1824
  br i1 %1838, label %1839, label %1829, !llvm.loop !99

1839:                                             ; preds = %1829
  %1840 = icmp eq i64 %1814, %1824
  br i1 %1840, label %1913, label %1841

1841:                                             ; preds = %1839
  %1842 = icmp eq i64 %1823, 0
  br i1 %1842, label %1859, label %1843, !prof !100

1843:                                             ; preds = %1820, %1841
  %1844 = phi i64 [ %1824, %1841 ], [ 0, %1820 ]
  %1845 = and i64 %1814, 8589934588
  %1846 = getelementptr i8, ptr %91, i64 %1845
  %1847 = trunc i64 %1845 to i32
  %1848 = sub i32 %1810, %1847
  %1849 = getelementptr i8, ptr %1809, i64 %1845
  br label %1850

1850:                                             ; preds = %1850, %1843
  %1851 = phi i64 [ %1844, %1843 ], [ %1855, %1850 ]
  %1852 = getelementptr i8, ptr %91, i64 %1851
  %1853 = getelementptr i8, ptr %1809, i64 %1851
  %1854 = load <4 x i8>, ptr %1853, align 1, !tbaa !44
  store <4 x i8> %1854, ptr %1852, align 1, !tbaa !44
  %1855 = add nuw i64 %1851, 4
  %1856 = icmp eq i64 %1855, %1845
  br i1 %1856, label %1857, label %1850, !llvm.loop !101

1857:                                             ; preds = %1850
  %1858 = icmp eq i64 %1814, %1845
  br i1 %1858, label %1913, label %1859

1859:                                             ; preds = %1806, %1841, %1857
  %1860 = phi ptr [ %91, %1806 ], [ %1825, %1841 ], [ %1846, %1857 ]
  %1861 = phi i32 [ %1810, %1806 ], [ %1827, %1841 ], [ %1848, %1857 ]
  %1862 = phi ptr [ %1809, %1806 ], [ %1828, %1841 ], [ %1849, %1857 ]
  %1863 = add i32 %1861, -1
  %1864 = and i32 %1861, 7
  %1865 = icmp eq i32 %1864, 0
  br i1 %1865, label %1877, label %1866

1866:                                             ; preds = %1859, %1866
  %1867 = phi ptr [ %1873, %1866 ], [ %1860, %1859 ]
  %1868 = phi i32 [ %1874, %1866 ], [ %1861, %1859 ]
  %1869 = phi ptr [ %1871, %1866 ], [ %1862, %1859 ]
  %1870 = phi i32 [ %1875, %1866 ], [ 0, %1859 ]
  %1871 = getelementptr inbounds nuw i8, ptr %1869, i64 1
  %1872 = load i8, ptr %1869, align 1, !tbaa !44
  %1873 = getelementptr inbounds nuw i8, ptr %1867, i64 1
  store i8 %1872, ptr %1867, align 1, !tbaa !44
  %1874 = add i32 %1868, -1
  %1875 = add i32 %1870, 1
  %1876 = icmp eq i32 %1875, %1864
  br i1 %1876, label %1877, label %1866, !llvm.loop !102

1877:                                             ; preds = %1866, %1859
  %1878 = phi ptr [ poison, %1859 ], [ %1873, %1866 ]
  %1879 = phi ptr [ %1860, %1859 ], [ %1873, %1866 ]
  %1880 = phi i32 [ %1861, %1859 ], [ %1874, %1866 ]
  %1881 = phi ptr [ %1862, %1859 ], [ %1871, %1866 ]
  %1882 = icmp ult i32 %1863, 7
  br i1 %1882, label %1913, label %1883

1883:                                             ; preds = %1877, %1883
  %1884 = phi ptr [ %1910, %1883 ], [ %1879, %1877 ]
  %1885 = phi i32 [ %1911, %1883 ], [ %1880, %1877 ]
  %1886 = phi ptr [ %1908, %1883 ], [ %1881, %1877 ]
  %1887 = getelementptr inbounds nuw i8, ptr %1886, i64 1
  %1888 = load i8, ptr %1886, align 1, !tbaa !44
  %1889 = getelementptr inbounds nuw i8, ptr %1884, i64 1
  store i8 %1888, ptr %1884, align 1, !tbaa !44
  %1890 = getelementptr inbounds nuw i8, ptr %1886, i64 2
  %1891 = load i8, ptr %1887, align 1, !tbaa !44
  %1892 = getelementptr inbounds nuw i8, ptr %1884, i64 2
  store i8 %1891, ptr %1889, align 1, !tbaa !44
  %1893 = getelementptr inbounds nuw i8, ptr %1886, i64 3
  %1894 = load i8, ptr %1890, align 1, !tbaa !44
  %1895 = getelementptr inbounds nuw i8, ptr %1884, i64 3
  store i8 %1894, ptr %1892, align 1, !tbaa !44
  %1896 = getelementptr inbounds nuw i8, ptr %1886, i64 4
  %1897 = load i8, ptr %1893, align 1, !tbaa !44
  %1898 = getelementptr inbounds nuw i8, ptr %1884, i64 4
  store i8 %1897, ptr %1895, align 1, !tbaa !44
  %1899 = getelementptr inbounds nuw i8, ptr %1886, i64 5
  %1900 = load i8, ptr %1896, align 1, !tbaa !44
  %1901 = getelementptr inbounds nuw i8, ptr %1884, i64 5
  store i8 %1900, ptr %1898, align 1, !tbaa !44
  %1902 = getelementptr inbounds nuw i8, ptr %1886, i64 6
  %1903 = load i8, ptr %1899, align 1, !tbaa !44
  %1904 = getelementptr inbounds nuw i8, ptr %1884, i64 6
  store i8 %1903, ptr %1901, align 1, !tbaa !44
  %1905 = getelementptr inbounds nuw i8, ptr %1886, i64 7
  %1906 = load i8, ptr %1902, align 1, !tbaa !44
  %1907 = getelementptr inbounds nuw i8, ptr %1884, i64 7
  store i8 %1906, ptr %1904, align 1, !tbaa !44
  %1908 = getelementptr inbounds nuw i8, ptr %1886, i64 8
  %1909 = load i8, ptr %1905, align 1, !tbaa !44
  %1910 = getelementptr inbounds nuw i8, ptr %1884, i64 8
  store i8 %1909, ptr %1907, align 1, !tbaa !44
  %1911 = add i32 %1885, -8
  %1912 = icmp eq i32 %1911, 0
  br i1 %1912, label %1913, label %1883, !llvm.loop !103

1913:                                             ; preds = %1877, %1883, %1857, %1839
  %1914 = phi ptr [ %1846, %1857 ], [ %1825, %1839 ], [ %1878, %1877 ], [ %1910, %1883 ]
  %1915 = sub i32 %93, %1810
  %1916 = load i32, ptr %56, align 4, !tbaa !60
  %1917 = icmp eq i32 %1916, 0
  br i1 %1917, label %1918, label %2111

1918:                                             ; preds = %1913
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2111

1919:                                             ; preds = %88
  %1920 = icmp eq i32 %93, 0
  br i1 %1920, label %2225, label %1921

1921:                                             ; preds = %1919
  %1922 = load i32, ptr %56, align 4, !tbaa !60
  %1923 = trunc i32 %1922 to i8
  %1924 = getelementptr inbounds nuw i8, ptr %91, i64 1
  store i8 %1923, ptr %91, align 1, !tbaa !44
  %1925 = add i32 %93, -1
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2111

1926:                                             ; preds = %88
  %1927 = load i32, ptr %49, align 8, !tbaa !24
  %1928 = icmp eq i32 %1927, 0
  br i1 %1928, label %2024, label %1929

1929:                                             ; preds = %1926
  %1930 = icmp ult i32 %95, 32
  br i1 %1930, label %1931, label %1981

1931:                                             ; preds = %1929
  %1932 = zext nneg i32 %95 to i64
  %1933 = icmp eq i32 %92, 0
  br i1 %1933, label %2177, label %1934

1934:                                             ; preds = %1931
  %1935 = add i32 %92, -1
  %1936 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %1937 = load i8, ptr %90, align 1, !tbaa !44
  %1938 = zext i8 %1937 to i64
  %1939 = shl nuw nsw i64 %1938, %1932
  %1940 = add i64 %1939, %94
  %1941 = add nuw nsw i64 %1932, 8
  %1942 = icmp ult i32 %95, 24
  br i1 %1942, label %1943, label %1975

1943:                                             ; preds = %1934
  %1944 = icmp eq i32 %1935, 0
  br i1 %1944, label %2177, label %1945

1945:                                             ; preds = %1943
  %1946 = add i32 %92, -2
  %1947 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %1948 = load i8, ptr %1936, align 1, !tbaa !44
  %1949 = zext i8 %1948 to i64
  %1950 = shl nuw nsw i64 %1949, %1941
  %1951 = add i64 %1950, %1940
  %1952 = add nuw nsw i64 %1932, 16
  %1953 = icmp ult i32 %95, 16
  br i1 %1953, label %1954, label %1975

1954:                                             ; preds = %1945
  %1955 = icmp eq i32 %1946, 0
  br i1 %1955, label %2177, label %1956

1956:                                             ; preds = %1954
  %1957 = add i32 %92, -3
  %1958 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %1959 = load i8, ptr %1947, align 1, !tbaa !44
  %1960 = zext i8 %1959 to i64
  %1961 = shl nuw nsw i64 %1960, %1952
  %1962 = add i64 %1961, %1951
  %1963 = add nuw nsw i64 %1932, 24
  %1964 = icmp ult i32 %95, 8
  br i1 %1964, label %1965, label %1975

1965:                                             ; preds = %1956
  %1966 = icmp eq i32 %1957, 0
  br i1 %1966, label %2177, label %1967

1967:                                             ; preds = %1965
  %1968 = add i32 %92, -4
  %1969 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %1970 = load i8, ptr %1958, align 1, !tbaa !44
  %1971 = zext i8 %1970 to i64
  %1972 = shl nuw nsw i64 %1971, %1963
  %1973 = add i64 %1972, %1962
  %1974 = or disjoint i64 %1932, 32
  br label %1975

1975:                                             ; preds = %1967, %1956, %1945, %1934
  %1976 = phi i32 [ %1935, %1934 ], [ %1946, %1945 ], [ %1957, %1956 ], [ %1968, %1967 ]
  %1977 = phi ptr [ %1936, %1934 ], [ %1947, %1945 ], [ %1958, %1956 ], [ %1969, %1967 ]
  %1978 = phi i64 [ %1940, %1934 ], [ %1951, %1945 ], [ %1962, %1956 ], [ %1973, %1967 ]
  %1979 = phi i64 [ %1941, %1934 ], [ %1952, %1945 ], [ %1963, %1956 ], [ %1974, %1967 ]
  %1980 = trunc nuw nsw i64 %1979 to i32
  br label %1981

1981:                                             ; preds = %1975, %1929
  %1982 = phi ptr [ %90, %1929 ], [ %1977, %1975 ]
  %1983 = phi i32 [ %92, %1929 ], [ %1976, %1975 ]
  %1984 = phi i64 [ %94, %1929 ], [ %1978, %1975 ]
  %1985 = phi i32 [ %95, %1929 ], [ %1980, %1975 ]
  %1986 = sub i32 %96, %93
  %1987 = zext i32 %1986 to i64
  %1988 = load i64, ptr %50, align 8, !tbaa !104
  %1989 = add i64 %1988, %1987
  store i64 %1989, ptr %50, align 8, !tbaa !104
  %1990 = load i64, ptr %51, align 8, !tbaa !21
  %1991 = add i64 %1990, %1987
  store i64 %1991, ptr %51, align 8, !tbaa !21
  %1992 = and i32 %1927, 4
  %1993 = icmp ne i32 %1992, 0
  %1994 = icmp ne i32 %96, %93
  %1995 = select i1 %1993, i1 %1994, i1 false
  br i1 %1995, label %1996, label %2010

1996:                                             ; preds = %1981
  %1997 = load i32, ptr %52, align 8, !tbaa !28
  %1998 = icmp eq i32 %1997, 0
  %1999 = load i64, ptr %53, align 8, !tbaa !53
  %2000 = sub nsw i64 0, %1987
  %2001 = getelementptr inbounds i8, ptr %91, i64 %2000
  br i1 %1998, label %2004, label %2002

2002:                                             ; preds = %1996
  %2003 = call i64 @crc32(i64 noundef %1999, ptr noundef %2001, i32 noundef %1986) #12
  br label %2006

2004:                                             ; preds = %1996
  %2005 = call i64 @adler32(i64 noundef %1999, ptr noundef %2001, i32 noundef %1986) #12
  br label %2006

2006:                                             ; preds = %2004, %2002
  %2007 = phi i64 [ %2003, %2002 ], [ %2005, %2004 ]
  store i64 %2007, ptr %53, align 8, !tbaa !53
  store i64 %2007, ptr %54, align 8, !tbaa !25
  %2008 = load i32, ptr %49, align 8, !tbaa !24
  %2009 = and i32 %2008, 4
  br label %2010

2010:                                             ; preds = %2006, %1981
  %2011 = phi i32 [ %2009, %2006 ], [ %1992, %1981 ]
  %2012 = phi i32 [ %2008, %2006 ], [ %1927, %1981 ]
  %2013 = icmp eq i32 %2011, 0
  br i1 %2013, label %2024, label %2014

2014:                                             ; preds = %2010
  %2015 = load i32, ptr %52, align 8, !tbaa !28
  %2016 = icmp eq i32 %2015, 0
  %2017 = trunc i64 %1984 to i32
  %2018 = call i32 @llvm.bswap.i32(i32 %2017)
  %2019 = zext i32 %2018 to i64
  %2020 = select i1 %2016, i64 %2019, i64 %1984
  %2021 = load i64, ptr %53, align 8, !tbaa !53
  %2022 = icmp eq i64 %2020, %2021
  br i1 %2022, label %2024, label %2023

2023:                                             ; preds = %2014
  store ptr @.str.17, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2111

2024:                                             ; preds = %2014, %2010, %1926
  %2025 = phi i32 [ 0, %1926 ], [ %2012, %2010 ], [ %2012, %2014 ]
  %2026 = phi ptr [ %90, %1926 ], [ %1982, %2010 ], [ %1982, %2014 ]
  %2027 = phi i32 [ %92, %1926 ], [ %1983, %2010 ], [ %1983, %2014 ]
  %2028 = phi i64 [ %94, %1926 ], [ 0, %2010 ], [ 0, %2014 ]
  %2029 = phi i32 [ %95, %1926 ], [ 0, %2010 ], [ 0, %2014 ]
  %2030 = phi i32 [ %96, %1926 ], [ %93, %2010 ], [ %93, %2014 ]
  store i32 16207, ptr %21, align 8, !tbaa !20
  br label %2031

2031:                                             ; preds = %105, %2024
  %2032 = phi i32 [ %2025, %2024 ], [ %106, %105 ]
  %2033 = phi ptr [ %2026, %2024 ], [ %90, %105 ]
  %2034 = phi i32 [ %2027, %2024 ], [ %92, %105 ]
  %2035 = phi i64 [ %2028, %2024 ], [ %94, %105 ]
  %2036 = phi i32 [ %2029, %2024 ], [ %95, %105 ]
  %2037 = phi i32 [ %2030, %2024 ], [ %96, %105 ]
  %2038 = icmp eq i32 %2032, 0
  br i1 %2038, label %2106, label %2039

2039:                                             ; preds = %2031
  %2040 = load i32, ptr %52, align 8, !tbaa !28
  %2041 = icmp eq i32 %2040, 0
  br i1 %2041, label %2106, label %2042

2042:                                             ; preds = %2039
  %2043 = icmp ult i32 %2036, 32
  br i1 %2043, label %2044, label %2094

2044:                                             ; preds = %2042
  %2045 = zext nneg i32 %2036 to i64
  %2046 = icmp eq i32 %2034, 0
  br i1 %2046, label %2172, label %2047

2047:                                             ; preds = %2044
  %2048 = add i32 %2034, -1
  %2049 = getelementptr inbounds nuw i8, ptr %2033, i64 1
  %2050 = load i8, ptr %2033, align 1, !tbaa !44
  %2051 = zext i8 %2050 to i64
  %2052 = shl nuw nsw i64 %2051, %2045
  %2053 = add i64 %2052, %2035
  %2054 = add nuw nsw i64 %2045, 8
  %2055 = icmp ult i32 %2036, 24
  br i1 %2055, label %2056, label %2088

2056:                                             ; preds = %2047
  %2057 = icmp eq i32 %2048, 0
  br i1 %2057, label %2172, label %2058

2058:                                             ; preds = %2056
  %2059 = add i32 %2034, -2
  %2060 = getelementptr inbounds nuw i8, ptr %2033, i64 2
  %2061 = load i8, ptr %2049, align 1, !tbaa !44
  %2062 = zext i8 %2061 to i64
  %2063 = shl nuw nsw i64 %2062, %2054
  %2064 = add i64 %2063, %2053
  %2065 = add nuw nsw i64 %2045, 16
  %2066 = icmp ult i32 %2036, 16
  br i1 %2066, label %2067, label %2088

2067:                                             ; preds = %2058
  %2068 = icmp eq i32 %2059, 0
  br i1 %2068, label %2172, label %2069

2069:                                             ; preds = %2067
  %2070 = add i32 %2034, -3
  %2071 = getelementptr inbounds nuw i8, ptr %2033, i64 3
  %2072 = load i8, ptr %2060, align 1, !tbaa !44
  %2073 = zext i8 %2072 to i64
  %2074 = shl nuw nsw i64 %2073, %2065
  %2075 = add i64 %2074, %2064
  %2076 = add nuw nsw i64 %2045, 24
  %2077 = icmp ult i32 %2036, 8
  br i1 %2077, label %2078, label %2088

2078:                                             ; preds = %2069
  %2079 = icmp eq i32 %2070, 0
  br i1 %2079, label %2172, label %2080

2080:                                             ; preds = %2078
  %2081 = add i32 %2034, -4
  %2082 = getelementptr inbounds nuw i8, ptr %2033, i64 4
  %2083 = load i8, ptr %2071, align 1, !tbaa !44
  %2084 = zext i8 %2083 to i64
  %2085 = shl nuw nsw i64 %2084, %2076
  %2086 = add i64 %2085, %2075
  %2087 = or disjoint i64 %2045, 32
  br label %2088

2088:                                             ; preds = %2080, %2069, %2058, %2047
  %2089 = phi i32 [ %2048, %2047 ], [ %2059, %2058 ], [ %2070, %2069 ], [ %2081, %2080 ]
  %2090 = phi ptr [ %2049, %2047 ], [ %2060, %2058 ], [ %2071, %2069 ], [ %2082, %2080 ]
  %2091 = phi i64 [ %2053, %2047 ], [ %2064, %2058 ], [ %2075, %2069 ], [ %2086, %2080 ]
  %2092 = phi i64 [ %2054, %2047 ], [ %2065, %2058 ], [ %2076, %2069 ], [ %2087, %2080 ]
  %2093 = trunc nuw nsw i64 %2092 to i32
  br label %2094

2094:                                             ; preds = %2088, %2042
  %2095 = phi ptr [ %2033, %2042 ], [ %2090, %2088 ]
  %2096 = phi i32 [ %2034, %2042 ], [ %2089, %2088 ]
  %2097 = phi i64 [ %2035, %2042 ], [ %2091, %2088 ]
  %2098 = phi i32 [ %2036, %2042 ], [ %2093, %2088 ]
  %2099 = and i32 %2032, 4
  %2100 = icmp eq i32 %2099, 0
  br i1 %2100, label %2106, label %2101

2101:                                             ; preds = %2094
  %2102 = load i64, ptr %51, align 8, !tbaa !21
  %2103 = and i64 %2102, 4294967295
  %2104 = icmp eq i64 %2097, %2103
  br i1 %2104, label %2106, label %2105

2105:                                             ; preds = %2101
  store ptr @.str.18, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2111

2106:                                             ; preds = %2101, %2094, %2039, %2031
  %2107 = phi ptr [ %2033, %2031 ], [ %2033, %2039 ], [ %2095, %2094 ], [ %2095, %2101 ]
  %2108 = phi i32 [ %2034, %2031 ], [ %2034, %2039 ], [ %2096, %2094 ], [ %2096, %2101 ]
  %2109 = phi i64 [ %2035, %2031 ], [ %2035, %2039 ], [ 0, %2094 ], [ 0, %2101 ]
  %2110 = phi i32 [ %2036, %2031 ], [ %2036, %2039 ], [ 0, %2094 ], [ 0, %2101 ]
  store i32 16208, ptr %21, align 8, !tbaa !20
  br label %2225

2111:                                             ; preds = %1150, %1293, %1913, %1918, %1357, %1366, %2105, %2023, %1921, %1783, %1712, %1509, %1505, %1501, %1340, %1331, %1327, %1024, %953, %908, %900, %880, %812, %780, %705, %692, %250, %246, %207, %206, %191, %187, %169, %130
  %2112 = phi ptr [ %90, %130 ], [ %157, %169 ], [ %157, %187 ], [ %157, %191 ], [ %157, %206 ], [ %157, %207 ], [ %239, %246 ], [ %239, %250 ], [ %681, %692 ], [ %694, %705 ], [ %770, %780 ], [ %795, %812 ], [ %872, %880 ], [ %903, %900 ], [ %890, %908 ], [ %935, %953 ], [ %969, %1024 ], [ %1142, %1150 ], [ %1321, %1327 ], [ %1321, %1331 ], [ %1321, %1340 ], [ %1360, %1366 ], [ %1360, %1357 ], [ %1486, %1501 ], [ %1486, %1505 ], [ %1486, %1509 ], [ %1694, %1712 ], [ %1766, %1783 ], [ %1766, %1918 ], [ %1766, %1913 ], [ %90, %1921 ], [ %1982, %2023 ], [ %2095, %2105 ], [ %1222, %1293 ]
  %2113 = phi ptr [ %91, %130 ], [ %91, %169 ], [ %91, %187 ], [ %91, %191 ], [ %91, %206 ], [ %91, %207 ], [ %91, %246 ], [ %91, %250 ], [ %91, %692 ], [ %91, %705 ], [ %91, %780 ], [ %91, %812 ], [ %91, %880 ], [ %905, %900 ], [ %91, %908 ], [ %91, %953 ], [ %91, %1024 ], [ %91, %1150 ], [ %91, %1327 ], [ %91, %1331 ], [ %91, %1340 ], [ %1358, %1366 ], [ %1358, %1357 ], [ %91, %1501 ], [ %91, %1505 ], [ %91, %1509 ], [ %91, %1712 ], [ %91, %1783 ], [ %1914, %1918 ], [ %1914, %1913 ], [ %1924, %1921 ], [ %91, %2023 ], [ %91, %2105 ], [ %91, %1293 ]
  %2114 = phi i32 [ %92, %130 ], [ %158, %169 ], [ %158, %187 ], [ %158, %191 ], [ %158, %206 ], [ %158, %207 ], [ %240, %246 ], [ %240, %250 ], [ %682, %692 ], [ %695, %705 ], [ %771, %780 ], [ %796, %812 ], [ %873, %880 ], [ %902, %900 ], [ %891, %908 ], [ %936, %953 ], [ %970, %1024 ], [ %1143, %1150 ], [ %1322, %1327 ], [ %1322, %1331 ], [ %1322, %1340 ], [ %1361, %1366 ], [ %1361, %1357 ], [ %1487, %1501 ], [ %1487, %1505 ], [ %1487, %1509 ], [ %1695, %1712 ], [ %1767, %1783 ], [ %1767, %1918 ], [ %1767, %1913 ], [ %92, %1921 ], [ %1983, %2023 ], [ %2096, %2105 ], [ %1223, %1293 ]
  %2115 = phi i32 [ %93, %130 ], [ %93, %169 ], [ %93, %187 ], [ %93, %191 ], [ %93, %206 ], [ %93, %207 ], [ %93, %246 ], [ %93, %250 ], [ %93, %692 ], [ %93, %705 ], [ %93, %780 ], [ %93, %812 ], [ %93, %880 ], [ %904, %900 ], [ %93, %908 ], [ %93, %953 ], [ %93, %1024 ], [ %93, %1150 ], [ %93, %1327 ], [ %93, %1331 ], [ %93, %1340 ], [ %1359, %1366 ], [ %1359, %1357 ], [ %93, %1501 ], [ %93, %1505 ], [ %93, %1509 ], [ %93, %1712 ], [ %93, %1783 ], [ %1915, %1918 ], [ %1915, %1913 ], [ %1925, %1921 ], [ %93, %2023 ], [ %93, %2105 ], [ %93, %1293 ]
  %2116 = phi i64 [ %94, %130 ], [ 0, %169 ], [ %159, %187 ], [ %159, %191 ], [ %193, %206 ], [ 0, %207 ], [ %241, %246 ], [ %241, %250 ], [ %683, %692 ], [ %696, %705 ], [ %783, %780 ], [ %813, %812 ], [ %874, %880 ], [ %892, %900 ], [ %892, %908 ], [ %948, %953 ], [ %971, %1024 ], [ %1147, %1150 ], [ %1323, %1327 ], [ %1323, %1331 ], [ %1323, %1340 ], [ %1362, %1366 ], [ %1362, %1357 ], [ %1495, %1501 ], [ %1495, %1505 ], [ %1495, %1509 ], [ %1703, %1712 ], [ %1768, %1783 ], [ %1768, %1918 ], [ %1768, %1913 ], [ %94, %1921 ], [ %1984, %2023 ], [ %2097, %2105 ], [ %1224, %1293 ]
  %2117 = phi i32 [ %95, %130 ], [ 0, %169 ], [ %160, %187 ], [ %160, %191 ], [ %194, %206 ], [ 0, %207 ], [ %242, %246 ], [ %242, %250 ], [ %684, %692 ], [ %697, %705 ], [ %784, %780 ], [ %814, %812 ], [ %875, %880 ], [ %893, %900 ], [ %893, %908 ], [ %949, %953 ], [ %972, %1024 ], [ %1148, %1150 ], [ %1324, %1327 ], [ %1324, %1331 ], [ %1324, %1340 ], [ %1363, %1366 ], [ %1363, %1357 ], [ %1496, %1501 ], [ %1496, %1505 ], [ %1496, %1509 ], [ %1704, %1712 ], [ %1769, %1783 ], [ %1769, %1918 ], [ %1769, %1913 ], [ %95, %1921 ], [ %1985, %2023 ], [ %2098, %2105 ], [ %1225, %1293 ]
  %2118 = phi i32 [ %96, %130 ], [ %96, %169 ], [ %96, %187 ], [ %96, %191 ], [ %96, %206 ], [ %96, %207 ], [ %96, %246 ], [ %96, %250 ], [ %96, %692 ], [ %96, %705 ], [ %96, %780 ], [ %96, %812 ], [ %96, %880 ], [ %96, %900 ], [ %96, %908 ], [ %96, %953 ], [ %96, %1024 ], [ %96, %1150 ], [ %96, %1327 ], [ %96, %1331 ], [ %96, %1340 ], [ %96, %1366 ], [ %96, %1357 ], [ %96, %1501 ], [ %96, %1505 ], [ %96, %1509 ], [ %96, %1712 ], [ %96, %1783 ], [ %96, %1918 ], [ %96, %1913 ], [ %96, %1921 ], [ %93, %2023 ], [ %2037, %2105 ], [ %96, %1293 ]
  %2119 = phi i32 [ %97, %130 ], [ %97, %169 ], [ %97, %187 ], [ %97, %191 ], [ %97, %206 ], [ %97, %207 ], [ %97, %246 ], [ %97, %250 ], [ %97, %692 ], [ %97, %705 ], [ %97, %780 ], [ %97, %812 ], [ %97, %880 ], [ %97, %900 ], [ %97, %908 ], [ %97, %953 ], [ %1022, %1024 ], [ %1032, %1150 ], [ %1032, %1327 ], [ %1329, %1331 ], [ %1338, %1340 ], [ %1353, %1366 ], [ %1353, %1357 ], [ %1353, %1501 ], [ %1353, %1505 ], [ %1353, %1509 ], [ %1569, %1712 ], [ %1770, %1783 ], [ %1770, %1918 ], [ %1770, %1913 ], [ %97, %1921 ], [ %97, %2023 ], [ %97, %2105 ], [ %1032, %1293 ]
  %2120 = load i32, ptr %21, align 8, !tbaa !20
  br label %88

2121:                                             ; preds = %1191
  %2122 = trunc nuw nsw i64 %1192 to i32
  br label %2225

2123:                                             ; preds = %1124
  %2124 = trunc nuw nsw i64 %1125 to i32
  br label %2225

2125:                                             ; preds = %1161
  %2126 = trunc nuw nsw i64 %1162 to i32
  br label %2225

2127:                                             ; preds = %140, %127
  %2128 = phi i64 [ %128, %127 ], [ %138, %140 ]
  %2129 = phi i64 [ %94, %127 ], [ %137, %140 ]
  %2130 = phi ptr [ %90, %127 ], [ %133, %140 ]
  %2131 = trunc nuw nsw i64 %2128 to i32
  br label %2225

2132:                                             ; preds = %664, %652
  %2133 = phi i64 [ %653, %652 ], [ %662, %664 ]
  %2134 = phi i64 [ %645, %652 ], [ %661, %664 ]
  %2135 = phi ptr [ %643, %652 ], [ %657, %664 ]
  %2136 = trunc nuw nsw i64 %2133 to i32
  br label %2225

2137:                                             ; preds = %418, %401
  %2138 = phi i64 [ %407, %401 ], [ %416, %418 ]
  %2139 = phi i64 [ %404, %401 ], [ %415, %418 ]
  %2140 = phi ptr [ %402, %401 ], [ %411, %418 ]
  %2141 = trunc nuw nsw i64 %2138 to i32
  br label %2225

2142:                                             ; preds = %357, %341
  %2143 = phi i64 [ %346, %341 ], [ %355, %357 ]
  %2144 = phi i64 [ %343, %341 ], [ %354, %357 ]
  %2145 = phi ptr [ %345, %341 ], [ %350, %357 ]
  %2146 = trunc nuw nsw i64 %2143 to i32
  br label %2225

2147:                                             ; preds = %309, %298, %287, %271
  %2148 = phi i64 [ %276, %271 ], [ %285, %287 ], [ %296, %298 ], [ %307, %309 ]
  %2149 = phi i64 [ %273, %271 ], [ %284, %287 ], [ %295, %298 ], [ %306, %309 ]
  %2150 = phi ptr [ %275, %271 ], [ %280, %287 ], [ %291, %298 ], [ %302, %309 ]
  %2151 = trunc nuw nsw i64 %2148 to i32
  br label %2225

2152:                                             ; preds = %222, %119
  %2153 = phi i64 [ %120, %119 ], [ %220, %222 ]
  %2154 = phi i64 [ %94, %119 ], [ %219, %222 ]
  %2155 = phi ptr [ %90, %119 ], [ %215, %222 ]
  %2156 = trunc nuw nsw i64 %2153 to i32
  br label %2225

2157:                                             ; preds = %738, %727, %716, %114
  %2158 = phi i64 [ %115, %114 ], [ %714, %716 ], [ %725, %727 ], [ %736, %738 ]
  %2159 = phi i64 [ %94, %114 ], [ %713, %716 ], [ %724, %727 ], [ %735, %738 ]
  %2160 = phi ptr [ %90, %114 ], [ %709, %716 ], [ %720, %727 ], [ %731, %738 ]
  %2161 = trunc nuw nsw i64 %2158 to i32
  br label %2225

2162:                                             ; preds = %856, %845, %834, %821
  %2163 = phi i64 [ %823, %821 ], [ %832, %834 ], [ %843, %845 ], [ %854, %856 ]
  %2164 = phi i64 [ %818, %821 ], [ %831, %834 ], [ %842, %845 ], [ %853, %856 ]
  %2165 = phi ptr [ %90, %821 ], [ %827, %834 ], [ %838, %845 ], [ %849, %856 ]
  %2166 = trunc nuw nsw i64 %2163 to i32
  br label %2225

2167:                                             ; preds = %918, %109
  %2168 = phi i64 [ %110, %109 ], [ %916, %918 ]
  %2169 = phi i64 [ %94, %109 ], [ %915, %918 ]
  %2170 = phi ptr [ %90, %109 ], [ %911, %918 ]
  %2171 = trunc nuw nsw i64 %2168 to i32
  br label %2225

2172:                                             ; preds = %2078, %2067, %2056, %2044
  %2173 = phi i64 [ %2045, %2044 ], [ %2054, %2056 ], [ %2065, %2067 ], [ %2076, %2078 ]
  %2174 = phi i64 [ %2035, %2044 ], [ %2053, %2056 ], [ %2064, %2067 ], [ %2075, %2078 ]
  %2175 = phi ptr [ %2033, %2044 ], [ %2049, %2056 ], [ %2060, %2067 ], [ %2071, %2078 ]
  %2176 = trunc nuw nsw i64 %2173 to i32
  br label %2225

2177:                                             ; preds = %1965, %1954, %1943, %1931
  %2178 = phi i64 [ %1932, %1931 ], [ %1941, %1943 ], [ %1952, %1954 ], [ %1963, %1965 ]
  %2179 = phi i64 [ %94, %1931 ], [ %1940, %1943 ], [ %1951, %1954 ], [ %1962, %1965 ]
  %2180 = phi ptr [ %90, %1931 ], [ %1936, %1943 ], [ %1947, %1954 ], [ %1958, %1965 ]
  %2181 = trunc nuw nsw i64 %2178 to i32
  br label %2225

2182:                                             ; preds = %1056, %1060
  %2183 = phi i64 [ %1072, %1060 ], [ %1044, %1056 ]
  %2184 = zext i32 %1045 to i64
  %2185 = shl i32 %1045, 3
  %2186 = add i32 %2185, %1043
  %2187 = getelementptr i8, ptr %1046, i64 %2184
  br label %2225

2188:                                             ; preds = %1726, %1728
  %2189 = phi i64 [ %1741, %1728 ], [ %1720, %1726 ]
  %2190 = shl i32 %1719, 3
  %2191 = add i32 %1721, %2190
  %2192 = zext i32 %1719 to i64
  %2193 = getelementptr i8, ptr %1718, i64 %2192
  br label %2225

2194:                                             ; preds = %1642, %1646
  %2195 = phi i64 [ %1658, %1646 ], [ %1615, %1642 ]
  %2196 = zext i32 %1614 to i64
  %2197 = shl i32 %1614, 3
  %2198 = add i32 %2197, %1616
  %2199 = getelementptr i8, ptr %1613, i64 %2196
  br label %2225

2200:                                             ; preds = %1582, %1586
  %2201 = phi i64 [ %1598, %1586 ], [ %1567, %1582 ]
  %2202 = zext i32 %1566 to i64
  %2203 = shl i32 %1566, 3
  %2204 = add i32 %2203, %1568
  %2205 = getelementptr i8, ptr %1565, i64 %2202
  br label %2225

2206:                                             ; preds = %1524, %1526
  %2207 = phi i64 [ %1539, %1526 ], [ %1516, %1524 ]
  %2208 = shl i32 %1515, 3
  %2209 = add i32 %1517, %2208
  %2210 = zext i32 %1515 to i64
  %2211 = getelementptr i8, ptr %1514, i64 %2210
  br label %2225

2212:                                             ; preds = %1439, %1443
  %2213 = phi i64 [ %1455, %1443 ], [ %1413, %1439 ]
  %2214 = zext i32 %1412 to i64
  %2215 = shl i32 %1412, 3
  %2216 = add i32 %2215, %1414
  %2217 = getelementptr i8, ptr %1411, i64 %2214
  br label %2225

2218:                                             ; preds = %1380, %1384
  %2219 = phi i64 [ %1396, %1384 ], [ %1351, %1380 ]
  %2220 = zext i32 %1350 to i64
  %2221 = shl i32 %1350, 3
  %2222 = add i32 %2221, %1352
  %2223 = getelementptr i8, ptr %1349, i64 %2220
  br label %2225

2224:                                             ; preds = %88
  br label %2225

2225:                                             ; preds = %514, %530, %570, %590, %630, %764, %881, %896, %1341, %1765, %1919, %778, %984, %88, %2224, %2218, %2212, %2206, %2200, %2194, %2188, %2182, %2177, %2172, %2167, %2162, %2157, %2152, %2147, %2142, %2137, %2132, %2127, %2125, %2123, %2121, %2106, %804
  %2226 = phi i32 [ %93, %2125 ], [ %93, %2137 ], [ %93, %2132 ], [ %93, %2127 ], [ %93, %88 ], [ %93, %2162 ], [ %93, %2182 ], [ %93, %2188 ], [ %93, %2218 ], [ %93, %2106 ], [ %93, %2206 ], [ %93, %2147 ], [ %93, %2121 ], [ %93, %2142 ], [ %93, %804 ], [ %93, %2157 ], [ %93, %2167 ], [ %93, %2212 ], [ %93, %2194 ], [ %93, %2123 ], [ %93, %2177 ], [ %93, %2200 ], [ %93, %984 ], [ %93, %2152 ], [ %93, %2172 ], [ %93, %514 ], [ %93, %530 ], [ %93, %570 ], [ %93, %590 ], [ %93, %630 ], [ %93, %764 ], [ %93, %881 ], [ %93, %896 ], [ %93, %1341 ], [ 0, %1765 ], [ 0, %1919 ], [ %93, %778 ], [ %93, %2224 ]
  %2227 = phi ptr [ %1165, %2125 ], [ %2140, %2137 ], [ %2135, %2132 ], [ %2130, %2127 ], [ %90, %88 ], [ %2165, %2162 ], [ %2187, %2182 ], [ %2193, %2188 ], [ %2223, %2218 ], [ %2107, %2106 ], [ %2211, %2206 ], [ %2150, %2147 ], [ %1195, %2121 ], [ %2145, %2142 ], [ %795, %804 ], [ %2160, %2157 ], [ %2170, %2167 ], [ %2217, %2212 ], [ %2199, %2194 ], [ %1128, %2123 ], [ %2180, %2177 ], [ %2205, %2200 ], [ %982, %984 ], [ %2155, %2152 ], [ %2175, %2172 ], [ %516, %514 ], [ %523, %530 ], [ %573, %570 ], [ %583, %590 ], [ %633, %630 ], [ %765, %764 ], [ %872, %881 ], [ %890, %896 ], [ %1321, %1341 ], [ %1766, %1765 ], [ %90, %1919 ], [ %770, %778 ], [ %90, %2224 ]
  %2228 = phi i32 [ 0, %2125 ], [ 0, %2137 ], [ 0, %2132 ], [ 0, %2127 ], [ %92, %88 ], [ 0, %2162 ], [ 0, %2182 ], [ 0, %2188 ], [ 0, %2218 ], [ %2108, %2106 ], [ 0, %2206 ], [ 0, %2147 ], [ 0, %2121 ], [ 0, %2142 ], [ %796, %804 ], [ 0, %2157 ], [ 0, %2167 ], [ 0, %2212 ], [ 0, %2194 ], [ 0, %2123 ], [ 0, %2177 ], [ 0, %2200 ], [ 0, %984 ], [ 0, %2152 ], [ 0, %2172 ], [ %517, %514 ], [ 0, %530 ], [ %571, %570 ], [ 0, %590 ], [ %631, %630 ], [ %766, %764 ], [ %873, %881 ], [ %891, %896 ], [ %1322, %1341 ], [ %1767, %1765 ], [ %92, %1919 ], [ 0, %778 ], [ %92, %2224 ]
  %2229 = phi i64 [ %1163, %2125 ], [ %2139, %2137 ], [ %2134, %2132 ], [ %2129, %2127 ], [ %94, %88 ], [ %2164, %2162 ], [ %2183, %2182 ], [ %2189, %2188 ], [ %2219, %2218 ], [ %2109, %2106 ], [ %2207, %2206 ], [ %2149, %2147 ], [ %1193, %2121 ], [ %2144, %2142 ], [ %805, %804 ], [ %2159, %2157 ], [ %2169, %2167 ], [ %2213, %2212 ], [ %2195, %2194 ], [ %1126, %2123 ], [ %2179, %2177 ], [ %2201, %2200 ], [ %980, %984 ], [ %2154, %2152 ], [ %2174, %2172 ], [ %465, %514 ], [ %525, %530 ], [ %525, %570 ], [ %585, %590 ], [ %585, %630 ], [ %767, %764 ], [ 0, %881 ], [ %892, %896 ], [ %1323, %1341 ], [ %1768, %1765 ], [ %94, %1919 ], [ %772, %778 ], [ %94, %2224 ]
  %2230 = phi i32 [ %2126, %2125 ], [ %2141, %2137 ], [ %2136, %2132 ], [ %2131, %2127 ], [ %95, %88 ], [ %2166, %2162 ], [ %2186, %2182 ], [ %2191, %2188 ], [ %2222, %2218 ], [ %2110, %2106 ], [ %2209, %2206 ], [ %2151, %2147 ], [ %2122, %2121 ], [ %2146, %2142 ], [ %806, %804 ], [ %2161, %2157 ], [ %2171, %2167 ], [ %2216, %2212 ], [ %2198, %2194 ], [ %2124, %2123 ], [ %2181, %2177 ], [ %2204, %2200 ], [ %979, %984 ], [ %2156, %2152 ], [ %2176, %2172 ], [ %466, %514 ], [ %526, %530 ], [ %526, %570 ], [ %586, %590 ], [ %586, %630 ], [ %768, %764 ], [ 0, %881 ], [ %893, %896 ], [ %1324, %1341 ], [ %1769, %1765 ], [ %95, %1919 ], [ %773, %778 ], [ %95, %2224 ]
  %2231 = phi i32 [ %96, %2125 ], [ %96, %2137 ], [ %96, %2132 ], [ %96, %2127 ], [ %96, %88 ], [ %96, %2162 ], [ %96, %2182 ], [ %96, %2188 ], [ %96, %2218 ], [ %2037, %2106 ], [ %96, %2206 ], [ %96, %2147 ], [ %96, %2121 ], [ %96, %2142 ], [ %96, %804 ], [ %96, %2157 ], [ %96, %2167 ], [ %96, %2212 ], [ %96, %2194 ], [ %96, %2123 ], [ %96, %2177 ], [ %96, %2200 ], [ %96, %984 ], [ %96, %2152 ], [ %2037, %2172 ], [ %96, %778 ], [ %96, %1919 ], [ %96, %1765 ], [ %96, %1341 ], [ %96, %896 ], [ %96, %881 ], [ %96, %764 ], [ %96, %630 ], [ %96, %590 ], [ %96, %570 ], [ %96, %530 ], [ %96, %514 ], [ %96, %2224 ]
  %2232 = phi i32 [ %1032, %2125 ], [ %97, %2137 ], [ %97, %2132 ], [ %97, %2127 ], [ -3, %88 ], [ %97, %2162 ], [ %1032, %2182 ], [ %1722, %2188 ], [ %1353, %2218 ], [ 1, %2106 ], [ %1518, %2206 ], [ %97, %2147 ], [ %1032, %2121 ], [ %97, %2142 ], [ %97, %804 ], [ %97, %2157 ], [ %97, %2167 ], [ %1353, %2212 ], [ %1569, %2194 ], [ %1032, %2123 ], [ %97, %2177 ], [ %1569, %2200 ], [ %97, %984 ], [ %97, %2152 ], [ %97, %2172 ], [ %97, %514 ], [ %97, %530 ], [ %97, %570 ], [ %97, %590 ], [ %97, %630 ], [ %97, %764 ], [ %97, %881 ], [ %97, %896 ], [ 0, %1341 ], [ %1770, %1765 ], [ %97, %1919 ], [ %97, %778 ], [ 1, %2224 ]
  store ptr %91, ptr %26, align 8, !tbaa !47
  store i32 %2226, ptr %41, align 8, !tbaa !50
  store ptr %2227, ptr %0, align 8, !tbaa !48
  store i32 %2228, ptr %43, align 8, !tbaa !49
  store i64 %2229, ptr %45, align 8, !tbaa !31
  store i32 %2230, ptr %47, align 8, !tbaa !32
  %2233 = load i32, ptr %79, align 4, !tbaa !38
  %2234 = icmp eq i32 %2233, 0
  br i1 %2234, label %2235, label %2244

2235:                                             ; preds = %2225
  %2236 = icmp eq i32 %2231, %2226
  br i1 %2236, label %2312, label %2237

2237:                                             ; preds = %2235
  %2238 = load i32, ptr %21, align 8, !tbaa !20
  %2239 = icmp ult i32 %2238, 16209
  br i1 %2239, label %2240, label %2312

2240:                                             ; preds = %2237
  %2241 = icmp samesign ult i32 %2238, 16206
  %2242 = icmp ne i32 %1, 4
  %2243 = or i1 %2242, %2241
  br i1 %2243, label %2244, label %2312

2244:                                             ; preds = %2240, %2225
  %2245 = sub i32 %2231, %2226
  %2246 = load ptr, ptr %14, align 8, !tbaa !15
  %2247 = getelementptr inbounds nuw i8, ptr %2246, i64 72
  %2248 = load ptr, ptr %2247, align 8, !tbaa !41
  %2249 = icmp eq ptr %2248, null
  br i1 %2249, label %2250, label %2259

2250:                                             ; preds = %2244
  %2251 = load ptr, ptr %6, align 8, !tbaa !8
  %2252 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %2253 = load ptr, ptr %2252, align 8, !tbaa !43
  %2254 = getelementptr inbounds nuw i8, ptr %2246, i64 56
  %2255 = load i32, ptr %2254, align 8, !tbaa !42
  %2256 = shl nuw i32 1, %2255
  %2257 = call ptr %2251(ptr noundef %2253, i32 noundef %2256, i32 noundef 1) #12, !inline_history !105
  store ptr %2257, ptr %2247, align 8, !tbaa !41
  %2258 = icmp eq ptr %2257, null
  br i1 %2258, label %2311, label %2259

2259:                                             ; preds = %2250, %2244
  %2260 = phi ptr [ %2257, %2250 ], [ %2248, %2244 ]
  %2261 = getelementptr inbounds nuw i8, ptr %2246, i64 60
  %2262 = load i32, ptr %2261, align 4, !tbaa !38
  %2263 = icmp eq i32 %2262, 0
  br i1 %2263, label %2264, label %2270

2264:                                             ; preds = %2259
  %2265 = getelementptr inbounds nuw i8, ptr %2246, i64 56
  %2266 = load i32, ptr %2265, align 8, !tbaa !42
  %2267 = shl nuw i32 1, %2266
  store i32 %2267, ptr %2261, align 4, !tbaa !38
  %2268 = getelementptr inbounds nuw i8, ptr %2246, i64 68
  store i32 0, ptr %2268, align 4, !tbaa !40
  %2269 = getelementptr inbounds nuw i8, ptr %2246, i64 64
  store i32 0, ptr %2269, align 8, !tbaa !39
  br label %2270

2270:                                             ; preds = %2264, %2259
  %2271 = phi i32 [ %2267, %2264 ], [ %2262, %2259 ]
  %2272 = icmp ult i32 %2245, %2271
  br i1 %2272, label %2280, label %2273

2273:                                             ; preds = %2270
  %2274 = zext i32 %2271 to i64
  %2275 = sub nsw i64 0, %2274
  %2276 = getelementptr inbounds i8, ptr %91, i64 %2275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2260, ptr noundef nonnull readonly align 1 dereferenceable(1) %2276, i64 %2274, i1 false)
  %2277 = getelementptr inbounds nuw i8, ptr %2246, i64 68
  store i32 0, ptr %2277, align 4, !tbaa !40
  %2278 = load i32, ptr %2261, align 4, !tbaa !38
  %2279 = getelementptr inbounds nuw i8, ptr %2246, i64 64
  store i32 %2278, ptr %2279, align 8, !tbaa !39
  br label %2312

2280:                                             ; preds = %2270
  %2281 = getelementptr inbounds nuw i8, ptr %2246, i64 68
  %2282 = load i32, ptr %2281, align 4, !tbaa !40
  %2283 = sub i32 %2271, %2282
  %2284 = call i32 @llvm.umin.i32(i32 %2283, i32 %2245)
  %2285 = zext i32 %2282 to i64
  %2286 = getelementptr inbounds nuw i8, ptr %2260, i64 %2285
  %2287 = zext i32 %2245 to i64
  %2288 = sub nsw i64 0, %2287
  %2289 = getelementptr inbounds i8, ptr %91, i64 %2288
  %2290 = zext i32 %2284 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2286, ptr readonly align 1 %2289, i64 %2290, i1 false)
  %2291 = icmp ugt i32 %2245, %2283
  br i1 %2291, label %2292, label %2300

2292:                                             ; preds = %2280
  %2293 = sub i32 %2245, %2284
  %2294 = load ptr, ptr %2247, align 8, !tbaa !41
  %2295 = zext i32 %2293 to i64
  %2296 = sub nsw i64 0, %2295
  %2297 = getelementptr inbounds i8, ptr %91, i64 %2296
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2294, ptr nonnull readonly align 1 %2297, i64 %2295, i1 false)
  store i32 %2293, ptr %2281, align 4, !tbaa !40
  %2298 = load i32, ptr %2261, align 4, !tbaa !38
  %2299 = getelementptr inbounds nuw i8, ptr %2246, i64 64
  store i32 %2298, ptr %2299, align 8, !tbaa !39
  br label %2312

2300:                                             ; preds = %2280
  %2301 = load i32, ptr %2281, align 4, !tbaa !40
  %2302 = add i32 %2301, %2284
  %2303 = load i32, ptr %2261, align 4, !tbaa !38
  %2304 = icmp eq i32 %2302, %2303
  %2305 = select i1 %2304, i32 0, i32 %2302
  store i32 %2305, ptr %2281, align 4
  %2306 = getelementptr inbounds nuw i8, ptr %2246, i64 64
  %2307 = load i32, ptr %2306, align 8, !tbaa !39
  %2308 = icmp ult i32 %2307, %2303
  br i1 %2308, label %2309, label %2312

2309:                                             ; preds = %2300
  %2310 = add i32 %2307, %2284
  store i32 %2310, ptr %2306, align 8, !tbaa !39
  br label %2312

2311:                                             ; preds = %2250
  store i32 16210, ptr %21, align 8, !tbaa !20
  br label %2378

2312:                                             ; preds = %2273, %2300, %2309, %2292, %2240, %2237, %2235
  %2313 = load i32, ptr %43, align 8, !tbaa !49
  %2314 = sub i32 %44, %2313
  %2315 = load i32, ptr %41, align 8, !tbaa !50
  %2316 = sub i32 %2231, %2315
  %2317 = zext i32 %2314 to i64
  %2318 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2319 = load i64, ptr %2318, align 8, !tbaa !22
  %2320 = add i64 %2319, %2317
  store i64 %2320, ptr %2318, align 8, !tbaa !22
  %2321 = zext i32 %2316 to i64
  %2322 = load i64, ptr %50, align 8, !tbaa !104
  %2323 = add i64 %2322, %2321
  store i64 %2323, ptr %50, align 8, !tbaa !104
  %2324 = load i64, ptr %51, align 8, !tbaa !21
  %2325 = add i64 %2324, %2321
  store i64 %2325, ptr %51, align 8, !tbaa !21
  %2326 = load i32, ptr %49, align 8, !tbaa !24
  %2327 = and i32 %2326, 4
  %2328 = icmp ne i32 %2327, 0
  %2329 = icmp ne i32 %2231, %2315
  %2330 = select i1 %2328, i1 %2329, i1 false
  br i1 %2330, label %2331, label %2344

2331:                                             ; preds = %2312
  %2332 = load i32, ptr %52, align 8, !tbaa !28
  %2333 = icmp eq i32 %2332, 0
  %2334 = load i64, ptr %53, align 8, !tbaa !53
  %2335 = load ptr, ptr %26, align 8, !tbaa !47
  %2336 = sub nsw i64 0, %2321
  %2337 = getelementptr inbounds i8, ptr %2335, i64 %2336
  br i1 %2333, label %2340, label %2338

2338:                                             ; preds = %2331
  %2339 = call i64 @crc32(i64 noundef %2334, ptr noundef %2337, i32 noundef %2316) #12
  br label %2342

2340:                                             ; preds = %2331
  %2341 = call i64 @adler32(i64 noundef %2334, ptr noundef %2337, i32 noundef %2316) #12
  br label %2342

2342:                                             ; preds = %2340, %2338
  %2343 = phi i64 [ %2339, %2338 ], [ %2341, %2340 ]
  store i64 %2343, ptr %53, align 8, !tbaa !53
  store i64 %2343, ptr %54, align 8, !tbaa !25
  br label %2344

2344:                                             ; preds = %2342, %2312
  %2345 = load i32, ptr %47, align 8, !tbaa !32
  %2346 = load i32, ptr %83, align 4, !tbaa !26
  %2347 = icmp eq i32 %2346, 0
  %2348 = select i1 %2347, i32 0, i32 64
  %2349 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2345, i32 %2348), !nosanitize !80
  %2350 = extractvalue { i32, i1 } %2349, 1, !nosanitize !80
  br i1 %2350, label %1123, label %2351, !prof !96, !nosanitize !80

2351:                                             ; preds = %2344
  %2352 = extractvalue { i32, i1 } %2349, 0, !nosanitize !80
  %2353 = load i32, ptr %21, align 8, !tbaa !20
  %2354 = icmp eq i32 %2353, 16191
  %2355 = select i1 %2354, i32 128, i32 0
  %2356 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2352, i32 %2355), !nosanitize !80
  %2357 = extractvalue { i32, i1 } %2356, 1, !nosanitize !80
  br i1 %2357, label %1123, label %2358, !prof !96, !nosanitize !80

2358:                                             ; preds = %2351
  %2359 = extractvalue { i32, i1 } %2356, 0, !nosanitize !80
  %2360 = icmp eq i32 %2353, 16199
  %2361 = icmp eq i32 %2353, 16194
  %2362 = or i1 %2360, %2361
  %2363 = select i1 %2362, i32 256, i32 0
  %2364 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2359, i32 %2363), !nosanitize !80
  %2365 = extractvalue { i32, i1 } %2364, 1, !nosanitize !80
  br i1 %2365, label %1123, label %2366, !prof !96, !nosanitize !80

2366:                                             ; preds = %2358
  %2367 = extractvalue { i32, i1 } %2364, 0, !nosanitize !80
  %2368 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %2367, ptr %2368, align 8, !tbaa !23
  %2369 = icmp eq i32 %44, %2313
  %2370 = icmp eq i32 %2231, %2315
  %2371 = select i1 %2369, i1 %2370, i1 false
  %2372 = icmp eq i32 %1, 4
  %2373 = or i1 %2372, %2371
  %2374 = icmp eq i32 %2232, 0
  %2375 = select i1 %2373, i1 %2374, i1 false
  %2376 = select i1 %2375, i32 -5, i32 %2232
  br label %2378

2377:                                             ; preds = %88
  br label %2378

2378:                                             ; preds = %88, %2377, %17, %5, %9, %2, %13, %20, %25, %32, %2366, %2311, %761
  %2379 = phi i32 [ -2, %20 ], [ -4, %2377 ], [ -4, %2311 ], [ %2376, %2366 ], [ 2, %761 ], [ -2, %32 ], [ -2, %25 ], [ -2, %17 ], [ -2, %13 ], [ -2, %2 ], [ -2, %9 ], [ -2, %5 ], [ -2, %88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %2379
}

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
  %33 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  %34 = tail call i64 @adler32(i64 noundef %33, ptr noundef %1, i32 noundef %2) #12
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
  %54 = tail call ptr %48(ptr noundef %50, i32 noundef %53, i32 noundef 1) #12, !inline_history !105
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
define dso_local range(i32 -5, 1) i32 @inflateSync(ptr noundef captures(address) %0) local_unnamed_addr #8 {
  %2 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
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
  br i1 %76, label %77, label %55, !llvm.loop !106

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
  br i1 %92, label %93, label %83, !llvm.loop !107

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
  br i1 %114, label %97, label %115, !llvm.loop !108

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
  br i1 %146, label %129, label %147, !llvm.loop !108

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
  %171 = load i64, ptr %170, align 8, !tbaa !104
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
  store i64 %171, ptr %170, align 8, !tbaa !104
  store i32 %162, ptr %161, align 8, !tbaa !28
  store i32 16191, ptr %20, align 8, !tbaa !20
  br label %197

197:                                              ; preds = %16, %4, %8, %1, %12, %149, %28, %19, %184
  %198 = phi i32 [ 0, %184 ], [ -2, %19 ], [ -5, %28 ], [ -3, %149 ], [ -2, %12 ], [ -2, %1 ], [ -2, %8 ], [ -2, %4 ], [ -2, %16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %198
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
define dso_local range(i64 -140737488355328, 140741783257088) i64 @inflateMark(ptr noundef readonly captures(address) %0) local_unnamed_addr #9 {
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
  %33 = load i32, ptr %32, align 8, !tbaa !95
  %34 = getelementptr inbounds nuw i8, ptr %13, i64 92
  %35 = load i32, ptr %34, align 4, !tbaa !60
  %36 = sub i32 %33, %35
  br label %37

37:                                               ; preds = %28, %31, %23
  %38 = phi i32 [ %30, %28 ], [ %36, %31 ], [ 0, %23 ]
  %39 = zext i32 %38 to i64
  %40 = add nsw i64 %27, %39
  br label %41

41:                                               ; preds = %15, %3, %7, %1, %11, %18, %37
  %42 = phi i64 [ %40, %37 ], [ -65536, %18 ], [ -65536, %11 ], [ -65536, %1 ], [ -65536, %7 ], [ -65536, %3 ], [ -65536, %15 ]
  ret i64 %42
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

31:                                               ; preds = %15, %3, %7, %1, %11, %18, %23
  %32 = phi i64 [ %30, %23 ], [ -1, %18 ], [ -1, %11 ], [ -1, %1 ], [ -1, %7 ], [ -1, %3 ], [ -1, %15 ]
  ret i64 %32
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

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
!80 = !{}
!81 = distinct !{!81, !67}
!82 = distinct !{!82, !67}
!83 = distinct !{!83, !67}
!84 = distinct !{!84, !67, !85, !86}
!85 = !{!"llvm.loop.isvectorized", i32 1}
!86 = !{!"llvm.loop.unroll.runtime.disable"}
!87 = !{!"branch_weights", i32 4, i32 12}
!88 = distinct !{!88, !67, !85, !86}
!89 = distinct !{!89, !90}
!90 = !{!"llvm.loop.unroll.disable"}
!91 = distinct !{!91, !67, !85}
!92 = distinct !{!92, !67}
!93 = !{!17, !5, i64 124}
!94 = distinct !{!94, !67}
!95 = !{!17, !5, i64 7152}
!96 = !{!"branch_weights", i32 1, i32 1048575}
!97 = !{!17, !5, i64 96}
!98 = distinct !{!98, !67}
!99 = distinct !{!99, !67, !85, !86}
!100 = !{!"branch_weights", i32 4, i32 28}
!101 = distinct !{!101, !67, !85, !86}
!102 = distinct !{!102, !90}
!103 = distinct !{!103, !67, !85}
!104 = !{!9, !12, i64 40}
!105 = distinct !{null}
!106 = distinct !{!106, !67}
!107 = distinct !{!107, !90}
!108 = distinct !{!108, !67}
