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

52:                                               ; preds = %38, %18, %15, %11, %7, %3, %1
  %53 = phi i32 [ -2, %3 ], [ -2, %18 ], [ 0, %38 ], [ -2, %1 ], [ -2, %15 ], [ -2, %7 ], [ -2, %11 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @inflateReset2(ptr noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %95, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %95, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %95, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %95, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !16
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %95

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !20
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %95

24:                                               ; preds = %19
  %25 = icmp slt i32 %1, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = icmp samesign ult i32 %1, -15
  br i1 %27, label %95, label %28

28:                                               ; preds = %26
  %29 = sub nsw i32 0, %1
  br label %select.unfold

30:                                               ; preds = %24
  %31 = lshr i32 %1, 4
  %32 = add nuw nsw i32 %31, 5
  %33 = icmp samesign ult i32 %1, 48
  %34 = and i32 %1, 15
  %spec.select = select i1 %33, i32 %34, i32 %1
  br label %select.unfold

select.unfold:                                    ; preds = %30, %28
  %35 = phi i32 [ %29, %28 ], [ %spec.select, %30 ]
  %36 = phi i32 [ 0, %28 ], [ %32, %30 ]
  switch i32 %35, label %95 [
    i32 15, label %37
    i32 14, label %37
    i32 13, label %37
    i32 12, label %37
    i32 11, label %37
    i32 10, label %37
    i32 9, label %37
    i32 8, label %37
    i32 0, label %37
  ]

37:                                               ; preds = %select.unfold, %select.unfold, %select.unfold, %select.unfold, %select.unfold, %select.unfold, %select.unfold, %select.unfold, %select.unfold
  %38 = getelementptr inbounds nuw i8, ptr %14, i64 72
  %39 = load ptr, ptr %38, align 8, !tbaa !41
  %40 = icmp eq ptr %39, null
  br i1 %40, label %.thread, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %43 = load i32, ptr %42, align 8, !tbaa !42
  %44 = icmp eq i32 %43, %35
  br i1 %44, label %.thread, label %47

.thread:                                          ; preds = %37, %41
  %45 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %36, ptr %45, align 8, !tbaa !24
  %46 = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i32 %35, ptr %46, align 8, !tbaa !42
  br label %55

47:                                               ; preds = %41
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %49 = load ptr, ptr %48, align 8, !tbaa !43
  tail call void %10(ptr noundef %49, ptr noundef nonnull %39) #12
  store ptr null, ptr %38, align 8, !tbaa !41
  %50 = load ptr, ptr %5, align 8, !tbaa !8
  %51 = icmp eq ptr %50, null
  %52 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %36, ptr %52, align 8, !tbaa !24
  store i32 %35, ptr %42, align 8, !tbaa !42
  br i1 %51, label %95, label %53

53:                                               ; preds = %47
  %.pre = load ptr, ptr %9, align 8, !tbaa !14
  %54 = icmp eq ptr %.pre, null
  br i1 %54, label %95, label %55

55:                                               ; preds = %.thread, %53
  %56 = load ptr, ptr %13, align 8, !tbaa !15
  %57 = icmp eq ptr %56, null
  br i1 %57, label %95, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %56, align 8, !tbaa !16
  %60 = icmp eq ptr %59, %0
  br i1 %60, label %61, label %95

61:                                               ; preds = %58
  %62 = getelementptr inbounds nuw i8, ptr %56, i64 8
  %63 = load i32, ptr %62, align 8, !tbaa !20
  %64 = add i32 %63, -16180
  %65 = icmp ult i32 %64, 32
  br i1 %65, label %66, label %95

66:                                               ; preds = %61
  %67 = getelementptr inbounds nuw i8, ptr %56, i64 60
  store i32 0, ptr %67, align 4, !tbaa !38
  %68 = getelementptr inbounds nuw i8, ptr %56, i64 64
  store i32 0, ptr %68, align 8, !tbaa !39
  %69 = getelementptr inbounds nuw i8, ptr %56, i64 68
  store i32 0, ptr %69, align 4, !tbaa !40
  %70 = getelementptr inbounds nuw i8, ptr %56, i64 40
  store i64 0, ptr %70, align 8, !tbaa !21
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %72, align 8, !tbaa !22
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %73, align 8, !tbaa !23
  %74 = getelementptr inbounds nuw i8, ptr %56, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %71, i8 0, i64 16, i1 false)
  %75 = load i32, ptr %74, align 8, !tbaa !24
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %66
  %78 = and i32 %75, 1
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %79, ptr %80, align 8, !tbaa !25
  br label %81

81:                                               ; preds = %77, %66
  store i32 16180, ptr %62, align 8, !tbaa !20
  %82 = getelementptr inbounds nuw i8, ptr %56, i64 12
  store i32 0, ptr %82, align 4, !tbaa !26
  %83 = getelementptr inbounds nuw i8, ptr %56, i64 20
  store i32 0, ptr %83, align 4, !tbaa !27
  %84 = getelementptr inbounds nuw i8, ptr %56, i64 24
  store i32 -1, ptr %84, align 8, !tbaa !28
  %85 = getelementptr inbounds nuw i8, ptr %56, i64 28
  store i32 32768, ptr %85, align 4, !tbaa !29
  %86 = getelementptr inbounds nuw i8, ptr %56, i64 48
  store ptr null, ptr %86, align 8, !tbaa !30
  %87 = getelementptr inbounds nuw i8, ptr %56, i64 80
  store i64 0, ptr %87, align 8, !tbaa !31
  %88 = getelementptr inbounds nuw i8, ptr %56, i64 88
  store i32 0, ptr %88, align 8, !tbaa !32
  %89 = getelementptr inbounds nuw i8, ptr %56, i64 1368
  %90 = getelementptr inbounds nuw i8, ptr %56, i64 144
  store ptr %89, ptr %90, align 8, !tbaa !33
  %91 = getelementptr inbounds nuw i8, ptr %56, i64 112
  store ptr %89, ptr %91, align 8, !tbaa !34
  %92 = getelementptr inbounds nuw i8, ptr %56, i64 104
  store ptr %89, ptr %92, align 8, !tbaa !35
  %93 = getelementptr inbounds nuw i8, ptr %56, i64 7144
  store i32 1, ptr %93, align 8, !tbaa !36
  %94 = getelementptr inbounds nuw i8, ptr %56, i64 7148
  store i32 -1, ptr %94, align 4, !tbaa !37
  br label %95

95:                                               ; preds = %81, %61, %58, %55, %53, %47, %select.unfold, %26, %19, %16, %12, %8, %4, %2
  %96 = phi i32 [ -2, %53 ], [ -2, %19 ], [ -2, %26 ], [ -2, %select.unfold ], [ -2, %47 ], [ -2, %61 ], [ 0, %81 ], [ -2, %55 ], [ -2, %58 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ -2, %4 ], [ -2, %16 ]
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @inflateInit2_(ptr noundef %0, i32 noundef %1, ptr noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %84, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1, !tbaa !44
  %8 = icmp ne i8 %7, 49
  %9 = icmp ne i32 %3, 112
  %10 = or i1 %9, %8
  br i1 %10, label %84, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %0, null
  br i1 %12, label %84, label %13

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
  br i1 %30, label %84, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds nuw i8, ptr %29, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7152) %32, i8 0, i64 7152, i1 false)
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %29, ptr %33, align 8, !tbaa !15
  store ptr %0, ptr %29, align 8, !tbaa !16
  store i32 16180, ptr %32, align 8, !tbaa !20
  %34 = load ptr, ptr %15, align 8, !tbaa !8
  %35 = icmp eq ptr %34, null
  %36 = load ptr, ptr %22, align 8, !tbaa !14
  %37 = icmp eq ptr %36, null
  %38 = select i1 %35, i1 true, i1 %37
  br i1 %38, label %82, label %39

39:                                               ; preds = %31
  %40 = icmp slt i32 %1, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = icmp samesign ult i32 %1, -15
  br i1 %42, label %82, label %43

43:                                               ; preds = %41
  %44 = sub nsw i32 0, %1
  br label %select.unfold

45:                                               ; preds = %39
  %46 = lshr i32 %1, 4
  %47 = add nuw nsw i32 %46, 5
  %48 = icmp samesign ult i32 %1, 48
  %49 = and i32 %1, 15
  %spec.select = select i1 %48, i32 %49, i32 %1
  br label %select.unfold

select.unfold:                                    ; preds = %45, %43
  %50 = phi i32 [ %44, %43 ], [ %spec.select, %45 ]
  %51 = phi i32 [ 0, %43 ], [ %47, %45 ]
  switch i32 %50, label %82 [
    i32 15, label %52
    i32 14, label %52
    i32 13, label %52
    i32 12, label %52
    i32 11, label %52
    i32 10, label %52
    i32 9, label %52
    i32 8, label %52
    i32 0, label %52
  ]

52:                                               ; preds = %select.unfold, %select.unfold, %select.unfold, %select.unfold, %select.unfold, %select.unfold, %select.unfold, %select.unfold, %select.unfold
  %53 = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i32 %51, ptr %53, align 8, !tbaa !24
  %54 = getelementptr inbounds nuw i8, ptr %29, i64 56
  store i32 %50, ptr %54, align 8, !tbaa !42
  %55 = getelementptr inbounds nuw i8, ptr %29, i64 60
  store i32 0, ptr %55, align 4, !tbaa !38
  %56 = getelementptr inbounds nuw i8, ptr %29, i64 64
  store i32 0, ptr %56, align 8, !tbaa !39
  %57 = getelementptr inbounds nuw i8, ptr %29, i64 68
  store i32 0, ptr %57, align 4, !tbaa !40
  %58 = getelementptr inbounds nuw i8, ptr %29, i64 40
  store i64 0, ptr %58, align 8, !tbaa !21
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %60, align 8, !tbaa !22
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %61, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %59, i8 0, i64 16, i1 false)
  %62 = load i32, ptr %53, align 8, !tbaa !24
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %52
  %65 = and i32 %62, 1
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %66, ptr %67, align 8, !tbaa !25
  br label %68

68:                                               ; preds = %64, %52
  store i32 16180, ptr %32, align 8, !tbaa !20
  %69 = getelementptr inbounds nuw i8, ptr %29, i64 12
  store i32 0, ptr %69, align 4, !tbaa !26
  %70 = getelementptr inbounds nuw i8, ptr %29, i64 20
  store i32 0, ptr %70, align 4, !tbaa !27
  %71 = getelementptr inbounds nuw i8, ptr %29, i64 24
  store i32 -1, ptr %71, align 8, !tbaa !28
  %72 = getelementptr inbounds nuw i8, ptr %29, i64 28
  store i32 32768, ptr %72, align 4, !tbaa !29
  %73 = getelementptr inbounds nuw i8, ptr %29, i64 48
  store ptr null, ptr %73, align 8, !tbaa !30
  %74 = getelementptr inbounds nuw i8, ptr %29, i64 80
  store i64 0, ptr %74, align 8, !tbaa !31
  %75 = getelementptr inbounds nuw i8, ptr %29, i64 88
  store i32 0, ptr %75, align 8, !tbaa !32
  %76 = getelementptr inbounds nuw i8, ptr %29, i64 1368
  %77 = getelementptr inbounds nuw i8, ptr %29, i64 144
  store ptr %76, ptr %77, align 8, !tbaa !33
  %78 = getelementptr inbounds nuw i8, ptr %29, i64 112
  store ptr %76, ptr %78, align 8, !tbaa !34
  %79 = getelementptr inbounds nuw i8, ptr %29, i64 104
  store ptr %76, ptr %79, align 8, !tbaa !35
  %80 = getelementptr inbounds nuw i8, ptr %29, i64 7144
  store i32 1, ptr %80, align 8, !tbaa !36
  %81 = getelementptr inbounds nuw i8, ptr %29, i64 7148
  store i32 -1, ptr %81, align 4, !tbaa !37
  br label %84

82:                                               ; preds = %select.unfold, %41, %31
  %83 = load ptr, ptr %27, align 8, !tbaa !43
  tail call void %36(ptr noundef %83, ptr noundef nonnull %29) #12
  store ptr null, ptr %33, align 8, !tbaa !15
  br label %84

84:                                               ; preds = %82, %68, %26, %11, %6, %4
  %85 = phi i32 [ -4, %26 ], [ -6, %4 ], [ -2, %11 ], [ -6, %6 ], [ -2, %82 ], [ 0, %68 ]
  ret i32 %85
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

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #6

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #7

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @inflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %4 = icmp eq ptr %0, null
  br i1 %4, label %.loopexit187, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %.loopexit187, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %.loopexit187, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %.loopexit187, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %.loopexit187

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %.loopexit187

25:                                               ; preds = %20
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = icmp eq ptr %27, null
  br i1 %28, label %.loopexit187, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 8, !tbaa !50
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i32, ptr %33, align 8, !tbaa !51
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %.loopexit187

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

88:                                               ; preds = %2337, %39
  %89 = phi i32 [ %40, %39 ], [ %2346, %2337 ]
  %90 = phi ptr [ %30, %39 ], [ %2338, %2337 ]
  %91 = phi ptr [ %27, %39 ], [ %2339, %2337 ]
  %92 = phi i32 [ %44, %39 ], [ %2340, %2337 ]
  %93 = phi i32 [ %42, %39 ], [ %2341, %2337 ]
  %94 = phi i64 [ %46, %39 ], [ %2342, %2337 ]
  %95 = phi i32 [ %48, %39 ], [ %2343, %2337 ]
  %96 = phi i32 [ %42, %39 ], [ %2344, %2337 ]
  %97 = phi i32 [ 0, %39 ], [ %2345, %2337 ]
  %98 = ptrtoaddr ptr %91 to i64
  switch i32 %89, label %.loopexit187.loopexit [
    i32 16180, label %120
    i32 16181, label %115
    i32 16182, label %281
    i32 16183, label %364
    i32 16184, label %423
    i32 16185, label %501
    i32 16186, label %582
    i32 16187, label %646
    i32 16188, label %710
    i32 16189, label %110
    i32 16190, label %842
    i32 16191, label %852
    i32 16192, label %857
    i32 16193, label %910
    i32 16194, label %996
    i32 16195, label %1001
    i32 16196, label %105
    i32 16197, label %1086
    i32 16198, label %1160
    i32 16199, label %1463
    i32 16200, label %1469
    i32 16201, label %101
    i32 16202, label %1715
    i32 16203, label %99
    i32 16204, label %1940
    i32 16205, label %2107
    i32 16206, label %2114
    i32 16207, label %103
    i32 16208, label %.loopexit185
    i32 16209, label %.loopexit185.loopexit5512
    i32 16210, label %.loopexit187
  ]

99:                                               ; preds = %88
  %100 = load i32, ptr %72, align 4, !tbaa !53
  br label %1871

101:                                              ; preds = %88
  %102 = load i32, ptr %72, align 4, !tbaa !53
  br label %1645

103:                                              ; preds = %88
  %104 = load i32, ptr %49, align 8, !tbaa !24
  br label %2244

105:                                              ; preds = %88
  %106 = icmp ult i32 %95, 14
  br i1 %106, label %107, label %1065

107:                                              ; preds = %105
  %108 = zext nneg i32 %95 to i64
  %109 = icmp eq i32 %92, 0
  br i1 %109, label %2445, label %1033

110:                                              ; preds = %88
  %111 = icmp ult i32 %95, 32
  br i1 %111, label %112, label %835

112:                                              ; preds = %110
  %113 = zext nneg i32 %95 to i64
  %114 = icmp eq i32 %92, 0
  br i1 %114, label %2388, label %782

115:                                              ; preds = %88
  %116 = icmp ult i32 %95, 16
  br i1 %116, label %117, label %250

117:                                              ; preds = %115
  %118 = zext nneg i32 %95 to i64
  %119 = icmp eq i32 %92, 0
  br i1 %119, label %2382, label %218

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
  br i1 %127, label %2352, label %129

128:                                              ; preds = %120
  store i32 16192, ptr %21, align 8, !tbaa !20
  br label %2337

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
  %141 = icmp samesign ult i32 %95, 8
  br i1 %141, label %142, label %155

142:                                              ; preds = %136
  %143 = icmp eq i32 %139, 0
  br i1 %143, label %2352, label %144

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
  br label %2337

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
  br label %2337

193:                                              ; preds = %185
  %194 = and i64 %164, 15
  %195 = icmp eq i64 %194, 8
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  store ptr @.str.2, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2337

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
  br label %2337

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
  br label %2337

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
  %230 = icmp samesign ult i32 %95, 8
  br i1 %230, label %231, label %244

231:                                              ; preds = %225
  %232 = icmp eq i32 %228, 0
  br i1 %232, label %2382, label %233

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
  br label %2337

259:                                              ; preds = %250
  %260 = and i32 %255, 57344
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %259
  store ptr @.str.4, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2337

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
  br i1 %289, label %2376, label %290

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
  br i1 %304, label %2376, label %305

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
  br i1 %318, label %2376, label %319

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
  br i1 %332, label %2376, label %333

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
  br i1 %372, label %2370, label %373

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
  br i1 %387, label %2370, label %388

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
  %.pre = load i32, ptr %52, align 8, !tbaa !28
  br label %427

423:                                              ; preds = %88
  %424 = load i32, ptr %52, align 8, !tbaa !28
  %425 = and i32 %424, 1024
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %487, label %431

427:                                              ; preds = %419, %415, %411
  %428 = phi i32 [ %.pre, %419 ], [ %412, %415 ], [ %412, %411 ]
  store i32 16184, ptr %21, align 8, !tbaa !20
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
  br i1 %440, label %2364, label %441

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
  br i1 %455, label %2364, label %456

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
  %468 = phi ptr [ %90, %431 ], [ %464, %462 ], [ %450, %448 ]
  %469 = phi i32 [ %92, %431 ], [ %465, %462 ], [ %451, %448 ]
  %470 = phi i64 [ %94, %431 ], [ %463, %462 ], [ %449, %448 ]
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
  br i1 %508, label %579, label %509

509:                                              ; preds = %501
  %510 = load i32, ptr %56, align 4, !tbaa !61
  %511 = call i32 @llvm.umin.i32(i32 %510, i32 %503)
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %574, label %513

513:                                              ; preds = %509
  %514 = load ptr, ptr %84, align 8, !tbaa !30
  %515 = icmp eq ptr %514, null
  br i1 %515, label %549, label %516

516:                                              ; preds = %513
  %517 = getelementptr inbounds nuw i8, ptr %514, i64 24
  %518 = load ptr, ptr %517, align 8, !tbaa !63
  %519 = icmp eq ptr %518, null
  br i1 %519, label %549, label %520

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
  br i1 %530, label %531, label %549

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
  br i1 %539, label %540, label %545

540:                                              ; preds = %537
  %541 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %529, i32 %524), !nosanitize !47
  %542 = extractvalue { i32, i1 } %541, 0, !nosanitize !47
  %543 = extractvalue { i32, i1 } %541, 1, !nosanitize !47
  br i1 %543, label %544, label %545, !prof !48, !nosanitize !47

544:                                              ; preds = %540
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

545:                                              ; preds = %540, %537
  %546 = phi i32 [ %542, %540 ], [ %511, %537 ]
  %547 = zext i32 %546 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %533, ptr align 1 %502, i64 %547, i1 false)
  %548 = load i32, ptr %52, align 8, !tbaa !28
  br label %549

549:                                              ; preds = %545, %527, %516, %513
  %550 = phi i32 [ %548, %545 ], [ %506, %527 ], [ %506, %516 ], [ %506, %513 ]
  %551 = and i32 %550, 512
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %560, label %553

553:                                              ; preds = %549
  %554 = load i32, ptr %49, align 8, !tbaa !24
  %555 = and i32 %554, 4
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %560, label %557

557:                                              ; preds = %553
  %558 = load i64, ptr %53, align 8, !tbaa !54
  %559 = call i64 @crc32(i64 noundef %558, ptr noundef %502, i32 noundef %511) #12
  store i64 %559, ptr %53, align 8, !tbaa !54
  br label %560

560:                                              ; preds = %557, %553, %549
  %561 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %503, i32 %511), !nosanitize !47
  %562 = extractvalue { i32, i1 } %561, 0, !nosanitize !47
  %563 = extractvalue { i32, i1 } %561, 1, !nosanitize !47
  br i1 %563, label %564, label %565, !prof !48, !nosanitize !47

564:                                              ; preds = %560
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

565:                                              ; preds = %560
  %566 = load i32, ptr %56, align 4, !tbaa !61
  %567 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %566, i32 %511), !nosanitize !47
  %568 = extractvalue { i32, i1 } %567, 1, !nosanitize !47
  br i1 %568, label %569, label %570, !prof !48, !nosanitize !47

569:                                              ; preds = %565
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

570:                                              ; preds = %565
  %571 = extractvalue { i32, i1 } %567, 0, !nosanitize !47
  %572 = zext i32 %511 to i64
  %573 = getelementptr inbounds nuw i8, ptr %502, i64 %572
  store i32 %571, ptr %56, align 4, !tbaa !61
  br label %574

574:                                              ; preds = %570, %509
  %575 = phi i32 [ %571, %570 ], [ %510, %509 ]
  %576 = phi ptr [ %573, %570 ], [ %502, %509 ]
  %577 = phi i32 [ %562, %570 ], [ %503, %509 ]
  %578 = icmp eq i32 %575, 0
  br i1 %578, label %579, label %.loopexit185

579:                                              ; preds = %574, %501
  %580 = phi ptr [ %576, %574 ], [ %502, %501 ]
  %581 = phi i32 [ %577, %574 ], [ %503, %501 ]
  store i32 0, ptr %56, align 4, !tbaa !61
  store i32 16186, ptr %21, align 8, !tbaa !20
  br label %582

582:                                              ; preds = %579, %88
  %583 = phi ptr [ %580, %579 ], [ %90, %88 ]
  %584 = phi i32 [ %581, %579 ], [ %92, %88 ]
  %585 = phi i64 [ %504, %579 ], [ %94, %88 ]
  %586 = phi i32 [ %505, %579 ], [ %95, %88 ]
  %587 = load i32, ptr %52, align 8, !tbaa !28
  %588 = and i32 %587, 2048
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %638, label %590

590:                                              ; preds = %582
  %591 = icmp eq i32 %584, 0
  br i1 %591, label %.loopexit185, label %592

592:                                              ; preds = %590
  %593 = zext i32 %584 to i64
  br label %594

594:                                              ; preds = %614, %592
  %595 = phi i64 [ 0, %592 ], [ %596, %614 ]
  %596 = add nuw nsw i64 %595, 1
  %597 = getelementptr inbounds nuw i8, ptr %583, i64 %595
  %598 = load i8, ptr %597, align 1, !tbaa !44
  %599 = load ptr, ptr %84, align 8, !tbaa !30
  %600 = icmp eq ptr %599, null
  br i1 %600, label %614, label %601

601:                                              ; preds = %594
  %602 = getelementptr inbounds nuw i8, ptr %599, i64 40
  %603 = load ptr, ptr %602, align 8, !tbaa !65
  %604 = icmp eq ptr %603, null
  br i1 %604, label %614, label %605

605:                                              ; preds = %601
  %606 = load i32, ptr %56, align 4, !tbaa !61
  %607 = getelementptr inbounds nuw i8, ptr %599, i64 48
  %608 = load i32, ptr %607, align 8, !tbaa !66
  %609 = icmp ult i32 %606, %608
  br i1 %609, label %610, label %614

610:                                              ; preds = %605
  %611 = add nuw i32 %606, 1
  store i32 %611, ptr %56, align 4, !tbaa !61
  %612 = zext i32 %606 to i64
  %613 = getelementptr inbounds nuw i8, ptr %603, i64 %612
  store i8 %598, ptr %613, align 1, !tbaa !44
  br label %614

614:                                              ; preds = %610, %605, %601, %594
  %615 = icmp ne i8 %598, 0
  %616 = icmp samesign ult i64 %596, %593
  %617 = select i1 %615, i1 %616, i1 false
  br i1 %617, label %594, label %618, !llvm.loop !67

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
  %628 = load i64, ptr %53, align 8, !tbaa !54
  %629 = call i64 @crc32(i64 noundef %628, ptr noundef nonnull %583, i32 noundef %619) #12
  store i64 %629, ptr %53, align 8, !tbaa !54
  br label %630

630:                                              ; preds = %627, %623, %618
  %631 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %584, i32 %619), !nosanitize !47
  %632 = extractvalue { i32, i1 } %631, 1, !nosanitize !47
  br i1 %632, label %633, label %634, !prof !48, !nosanitize !47

633:                                              ; preds = %630
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

634:                                              ; preds = %630
  %635 = extractvalue { i32, i1 } %631, 0, !nosanitize !47
  %636 = and i64 %596, 4294967295
  %637 = getelementptr inbounds nuw i8, ptr %583, i64 %636
  br i1 %615, label %.loopexit185, label %643

638:                                              ; preds = %582
  %639 = load ptr, ptr %84, align 8, !tbaa !30
  %640 = icmp eq ptr %639, null
  br i1 %640, label %643, label %641

641:                                              ; preds = %638
  %642 = getelementptr inbounds nuw i8, ptr %639, i64 40
  store ptr null, ptr %642, align 8, !tbaa !65
  br label %643

643:                                              ; preds = %641, %638, %634
  %644 = phi ptr [ %637, %634 ], [ %583, %641 ], [ %583, %638 ]
  %645 = phi i32 [ %635, %634 ], [ %584, %641 ], [ %584, %638 ]
  store i32 0, ptr %56, align 4, !tbaa !61
  store i32 16187, ptr %21, align 8, !tbaa !20
  br label %646

646:                                              ; preds = %643, %88
  %647 = phi ptr [ %644, %643 ], [ %90, %88 ]
  %648 = phi i32 [ %645, %643 ], [ %92, %88 ]
  %649 = phi i64 [ %585, %643 ], [ %94, %88 ]
  %650 = phi i32 [ %586, %643 ], [ %95, %88 ]
  %651 = load i32, ptr %52, align 8, !tbaa !28
  %652 = and i32 %651, 4096
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %702, label %654

654:                                              ; preds = %646
  %655 = icmp eq i32 %648, 0
  br i1 %655, label %.loopexit185, label %656

656:                                              ; preds = %654
  %657 = zext i32 %648 to i64
  br label %658

658:                                              ; preds = %678, %656
  %659 = phi i64 [ 0, %656 ], [ %660, %678 ]
  %660 = add nuw nsw i64 %659, 1
  %661 = getelementptr inbounds nuw i8, ptr %647, i64 %659
  %662 = load i8, ptr %661, align 1, !tbaa !44
  %663 = load ptr, ptr %84, align 8, !tbaa !30
  %664 = icmp eq ptr %663, null
  br i1 %664, label %678, label %665

665:                                              ; preds = %658
  %666 = getelementptr inbounds nuw i8, ptr %663, i64 56
  %667 = load ptr, ptr %666, align 8, !tbaa !69
  %668 = icmp eq ptr %667, null
  br i1 %668, label %678, label %669

669:                                              ; preds = %665
  %670 = load i32, ptr %56, align 4, !tbaa !61
  %671 = getelementptr inbounds nuw i8, ptr %663, i64 64
  %672 = load i32, ptr %671, align 8, !tbaa !70
  %673 = icmp ult i32 %670, %672
  br i1 %673, label %674, label %678

674:                                              ; preds = %669
  %675 = add nuw i32 %670, 1
  store i32 %675, ptr %56, align 4, !tbaa !61
  %676 = zext i32 %670 to i64
  %677 = getelementptr inbounds nuw i8, ptr %667, i64 %676
  store i8 %662, ptr %677, align 1, !tbaa !44
  br label %678

678:                                              ; preds = %674, %669, %665, %658
  %679 = icmp ne i8 %662, 0
  %680 = icmp samesign ult i64 %660, %657
  %681 = select i1 %679, i1 %680, i1 false
  br i1 %681, label %658, label %682, !llvm.loop !71

682:                                              ; preds = %678
  %683 = trunc nuw i64 %660 to i32
  %684 = load i32, ptr %52, align 8, !tbaa !28
  %685 = and i32 %684, 512
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %694, label %687

687:                                              ; preds = %682
  %688 = load i32, ptr %49, align 8, !tbaa !24
  %689 = and i32 %688, 4
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %694, label %691

691:                                              ; preds = %687
  %692 = load i64, ptr %53, align 8, !tbaa !54
  %693 = call i64 @crc32(i64 noundef %692, ptr noundef nonnull %647, i32 noundef %683) #12
  store i64 %693, ptr %53, align 8, !tbaa !54
  br label %694

694:                                              ; preds = %691, %687, %682
  %695 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %648, i32 %683), !nosanitize !47
  %696 = extractvalue { i32, i1 } %695, 1, !nosanitize !47
  br i1 %696, label %697, label %698, !prof !48, !nosanitize !47

697:                                              ; preds = %694
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

698:                                              ; preds = %694
  %699 = extractvalue { i32, i1 } %695, 0, !nosanitize !47
  %700 = and i64 %660, 4294967295
  %701 = getelementptr inbounds nuw i8, ptr %647, i64 %700
  br i1 %679, label %.loopexit185, label %707

702:                                              ; preds = %646
  %703 = load ptr, ptr %84, align 8, !tbaa !30
  %704 = icmp eq ptr %703, null
  br i1 %704, label %707, label %705

705:                                              ; preds = %702
  %706 = getelementptr inbounds nuw i8, ptr %703, i64 56
  store ptr null, ptr %706, align 8, !tbaa !69
  br label %707

707:                                              ; preds = %705, %702, %698
  %708 = phi ptr [ %701, %698 ], [ %647, %705 ], [ %647, %702 ]
  %709 = phi i32 [ %699, %698 ], [ %648, %705 ], [ %648, %702 ]
  store i32 16188, ptr %21, align 8, !tbaa !20
  br label %710

710:                                              ; preds = %707, %88
  %711 = phi ptr [ %708, %707 ], [ %90, %88 ]
  %712 = phi i32 [ %709, %707 ], [ %92, %88 ]
  %713 = phi i64 [ %649, %707 ], [ %94, %88 ]
  %714 = phi i32 [ %650, %707 ], [ %95, %88 ]
  %715 = load i32, ptr %52, align 8, !tbaa !28
  %716 = and i32 %715, 512
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %768, label %718

718:                                              ; preds = %710
  %719 = icmp ult i32 %714, 16
  br i1 %719, label %720, label %755

720:                                              ; preds = %718
  %721 = zext nneg i32 %714 to i64
  %722 = icmp eq i32 %712, 0
  br i1 %722, label %2358, label %723

723:                                              ; preds = %720
  %724 = load i8, ptr %711, align 1, !tbaa !44
  %725 = zext i8 %724 to i64
  %726 = shl nuw nsw i64 %725, %721
  %727 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %713, i64 %726), !nosanitize !47
  %728 = extractvalue { i64, i1 } %727, 1, !nosanitize !47
  br i1 %728, label %729, label %730, !prof !48, !nosanitize !47

729:                                              ; preds = %738, %723
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

730:                                              ; preds = %723
  %731 = extractvalue { i64, i1 } %727, 0, !nosanitize !47
  %732 = getelementptr inbounds nuw i8, ptr %711, i64 1
  %733 = add i32 %712, -1
  %734 = add nuw nsw i64 %721, 8
  %735 = icmp samesign ult i32 %714, 8
  br i1 %735, label %736, label %749

736:                                              ; preds = %730
  %737 = icmp eq i32 %733, 0
  br i1 %737, label %2358, label %738

738:                                              ; preds = %736
  %739 = load i8, ptr %732, align 1, !tbaa !44
  %740 = zext i8 %739 to i64
  %741 = shl nuw nsw i64 %740, %734
  %742 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %731, i64 %741), !nosanitize !47
  %743 = extractvalue { i64, i1 } %742, 1, !nosanitize !47
  br i1 %743, label %729, label %744, !prof !48, !nosanitize !47

744:                                              ; preds = %738
  %745 = extractvalue { i64, i1 } %742, 0, !nosanitize !47
  %746 = getelementptr inbounds nuw i8, ptr %711, i64 2
  %747 = add i32 %712, -2
  %748 = or disjoint i64 %721, 16
  br label %749

749:                                              ; preds = %744, %730
  %750 = phi i64 [ %731, %730 ], [ %745, %744 ]
  %751 = phi ptr [ %732, %730 ], [ %746, %744 ]
  %752 = phi i32 [ %733, %730 ], [ %747, %744 ]
  %753 = phi i64 [ %734, %730 ], [ %748, %744 ]
  %754 = trunc nuw nsw i64 %753 to i32
  br label %755

755:                                              ; preds = %749, %718
  %756 = phi ptr [ %711, %718 ], [ %751, %749 ]
  %757 = phi i32 [ %712, %718 ], [ %752, %749 ]
  %758 = phi i64 [ %713, %718 ], [ %750, %749 ]
  %759 = phi i32 [ %714, %718 ], [ %754, %749 ]
  %760 = load i32, ptr %49, align 8, !tbaa !24
  %761 = and i32 %760, 4
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %768, label %763

763:                                              ; preds = %755
  %764 = load i64, ptr %53, align 8, !tbaa !54
  %765 = and i64 %764, 65535
  %766 = icmp eq i64 %758, %765
  br i1 %766, label %768, label %767

767:                                              ; preds = %763
  store ptr @.str.5, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2337

768:                                              ; preds = %763, %755, %710
  %769 = phi ptr [ %711, %710 ], [ %756, %755 ], [ %756, %763 ]
  %770 = phi i32 [ %712, %710 ], [ %757, %755 ], [ %757, %763 ]
  %771 = phi i64 [ %713, %710 ], [ 0, %755 ], [ 0, %763 ]
  %772 = phi i32 [ %714, %710 ], [ 0, %755 ], [ 0, %763 ]
  %773 = load ptr, ptr %84, align 8, !tbaa !30
  %774 = icmp eq ptr %773, null
  br i1 %774, label %780, label %775

775:                                              ; preds = %768
  %776 = lshr i32 %715, 9
  %777 = and i32 %776, 1
  %778 = getelementptr inbounds nuw i8, ptr %773, i64 68
  store i32 %777, ptr %778, align 4, !tbaa !72
  %779 = getelementptr inbounds nuw i8, ptr %773, i64 72
  store i32 1, ptr %779, align 8, !tbaa !55
  br label %780

780:                                              ; preds = %775, %768
  %781 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %781, ptr %53, align 8, !tbaa !54
  store i64 %781, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2337

782:                                              ; preds = %112
  %783 = load i8, ptr %90, align 1, !tbaa !44
  %784 = zext i8 %783 to i64
  %785 = shl nuw nsw i64 %784, %113
  %786 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %785), !nosanitize !47
  %787 = extractvalue { i64, i1 } %786, 1, !nosanitize !47
  br i1 %787, label %788, label %789, !prof !48, !nosanitize !47

788:                                              ; preds = %825, %811, %797, %782
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

789:                                              ; preds = %782
  %790 = extractvalue { i64, i1 } %786, 0, !nosanitize !47
  %791 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %792 = add i32 %92, -1
  %793 = add nuw nsw i64 %113, 8
  %794 = icmp samesign ult i32 %95, 24
  br i1 %794, label %795, label %835

795:                                              ; preds = %789
  %796 = icmp eq i32 %792, 0
  br i1 %796, label %2388, label %797

797:                                              ; preds = %795
  %798 = load i8, ptr %791, align 1, !tbaa !44
  %799 = zext i8 %798 to i64
  %800 = shl nuw nsw i64 %799, %793
  %801 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %790, i64 %800), !nosanitize !47
  %802 = extractvalue { i64, i1 } %801, 1, !nosanitize !47
  br i1 %802, label %788, label %803, !prof !48, !nosanitize !47

803:                                              ; preds = %797
  %804 = extractvalue { i64, i1 } %801, 0, !nosanitize !47
  %805 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %806 = add i32 %92, -2
  %807 = add nuw nsw i64 %113, 16
  %808 = icmp samesign ult i32 %95, 16
  br i1 %808, label %809, label %835

809:                                              ; preds = %803
  %810 = icmp eq i32 %806, 0
  br i1 %810, label %2388, label %811

811:                                              ; preds = %809
  %812 = load i8, ptr %805, align 1, !tbaa !44
  %813 = zext i8 %812 to i64
  %814 = shl nuw nsw i64 %813, %807
  %815 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %804, i64 %814), !nosanitize !47
  %816 = extractvalue { i64, i1 } %815, 1, !nosanitize !47
  br i1 %816, label %788, label %817, !prof !48, !nosanitize !47

817:                                              ; preds = %811
  %818 = extractvalue { i64, i1 } %815, 0, !nosanitize !47
  %819 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %820 = add i32 %92, -3
  %821 = add nuw nsw i64 %113, 24
  %822 = icmp samesign ult i32 %95, 8
  br i1 %822, label %823, label %835

823:                                              ; preds = %817
  %824 = icmp eq i32 %820, 0
  br i1 %824, label %2388, label %825

825:                                              ; preds = %823
  %826 = load i8, ptr %819, align 1, !tbaa !44
  %827 = zext i8 %826 to i64
  %828 = shl nuw nsw i64 %827, %821
  %829 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %818, i64 %828), !nosanitize !47
  %830 = extractvalue { i64, i1 } %829, 1, !nosanitize !47
  br i1 %830, label %788, label %831, !prof !48, !nosanitize !47

831:                                              ; preds = %825
  %832 = extractvalue { i64, i1 } %829, 0, !nosanitize !47
  %833 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %834 = add i32 %92, -4
  br label %835

835:                                              ; preds = %831, %817, %803, %789, %110
  %836 = phi ptr [ %90, %110 ], [ %791, %789 ], [ %805, %803 ], [ %819, %817 ], [ %833, %831 ]
  %837 = phi i32 [ %92, %110 ], [ %792, %789 ], [ %806, %803 ], [ %820, %817 ], [ %834, %831 ]
  %838 = phi i64 [ %94, %110 ], [ %790, %789 ], [ %804, %803 ], [ %818, %817 ], [ %832, %831 ]
  %839 = trunc i64 %838 to i32
  %840 = call i32 @llvm.bswap.i32(i32 %839)
  %841 = zext i32 %840 to i64
  store i64 %841, ptr %53, align 8, !tbaa !54
  store i64 %841, ptr %54, align 8, !tbaa !25
  store i32 16190, ptr %21, align 8, !tbaa !20
  br label %842

842:                                              ; preds = %835, %88
  %843 = phi ptr [ %836, %835 ], [ %90, %88 ]
  %844 = phi i32 [ %837, %835 ], [ %92, %88 ]
  %845 = phi i64 [ 0, %835 ], [ %94, %88 ]
  %846 = phi i32 [ 0, %835 ], [ %95, %88 ]
  %847 = load i32, ptr %80, align 4, !tbaa !27
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %849, label %850

849:                                              ; preds = %842
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %93, ptr %41, align 8, !tbaa !52
  store ptr %843, ptr %0, align 8, !tbaa !50
  store i32 %844, ptr %43, align 8, !tbaa !51
  store i64 %845, ptr %45, align 8, !tbaa !31
  store i32 %846, ptr %47, align 8, !tbaa !32
  br label %.loopexit187

850:                                              ; preds = %842
  %851 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %851, ptr %53, align 8, !tbaa !54
  store i64 %851, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %852

852:                                              ; preds = %850, %88
  %853 = phi ptr [ %843, %850 ], [ %90, %88 ]
  %854 = phi i32 [ %844, %850 ], [ %92, %88 ]
  %855 = phi i64 [ %845, %850 ], [ %94, %88 ]
  %856 = phi i32 [ %846, %850 ], [ %95, %88 ]
  br i1 %82, label %.loopexit185, label %857

857:                                              ; preds = %852, %88
  %858 = phi ptr [ %853, %852 ], [ %90, %88 ]
  %859 = phi i32 [ %854, %852 ], [ %92, %88 ]
  %860 = phi i64 [ %855, %852 ], [ %94, %88 ]
  %861 = phi i32 [ %856, %852 ], [ %95, %88 ]
  %862 = load i32, ptr %83, align 4, !tbaa !26
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %864, label %869

864:                                              ; preds = %857
  %865 = icmp ult i32 %861, 3
  br i1 %865, label %866, label %890

866:                                              ; preds = %864
  %867 = or disjoint i32 %861, 8
  %868 = icmp eq i32 %859, 0
  br i1 %868, label %.loopexit185, label %878

869:                                              ; preds = %857
  %870 = and i32 %861, 7
  %871 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %861, i32 %870), !nosanitize !47
  %872 = extractvalue { i32, i1 } %871, 1, !nosanitize !47
  br i1 %872, label %873, label %874, !prof !48, !nosanitize !47

873:                                              ; preds = %869
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

874:                                              ; preds = %869
  %875 = extractvalue { i32, i1 } %871, 0, !nosanitize !47
  %876 = zext nneg i32 %870 to i64
  %877 = lshr i64 %860, %876
  store i32 16206, ptr %21, align 8, !tbaa !20
  br label %2337

878:                                              ; preds = %866
  %879 = load i8, ptr %858, align 1, !tbaa !44
  %880 = zext i8 %879 to i64
  %881 = zext nneg i32 %861 to i64
  %882 = shl nuw nsw i64 %880, %881
  %883 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %860, i64 %882), !nosanitize !47
  %884 = extractvalue { i64, i1 } %883, 1, !nosanitize !47
  br i1 %884, label %885, label %886, !prof !48, !nosanitize !47

885:                                              ; preds = %878
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

886:                                              ; preds = %878
  %887 = extractvalue { i64, i1 } %883, 0, !nosanitize !47
  %888 = getelementptr inbounds nuw i8, ptr %858, i64 1
  %889 = add i32 %859, -1
  br label %890

890:                                              ; preds = %886, %864
  %891 = phi ptr [ %888, %886 ], [ %858, %864 ]
  %892 = phi i32 [ %889, %886 ], [ %859, %864 ]
  %893 = phi i64 [ %887, %886 ], [ %860, %864 ]
  %894 = phi i32 [ %867, %886 ], [ %861, %864 ]
  %895 = trunc i64 %893 to i32
  %896 = and i32 %895, 1
  store i32 %896, ptr %83, align 4, !tbaa !26
  %897 = lshr i32 %895, 1
  %898 = and i32 %897, 3
  switch i32 %898, label %default.unreachable2947 [
    i32 0, label %905
    i32 1, label %899
    i32 2, label %903
    i32 3, label %904
  ]

899:                                              ; preds = %890
  call void @inflate_fixed(ptr noundef nonnull %15) #12
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %900, label %907

900:                                              ; preds = %899
  %901 = add i32 %894, -3
  %902 = lshr i64 %893, 3
  br label %.loopexit185

903:                                              ; preds = %890
  br label %905

default.unreachable2947:                          ; preds = %890
  unreachable

904:                                              ; preds = %890
  store ptr @.str.6, ptr %55, align 8, !tbaa !45
  br label %905

905:                                              ; preds = %904, %903, %890
  %906 = phi i32 [ 16209, %904 ], [ 16196, %903 ], [ 16193, %890 ]
  store i32 %906, ptr %21, align 8, !tbaa !20
  br label %907

907:                                              ; preds = %905, %899
  %908 = add i32 %894, -3
  %909 = lshr i64 %893, 3
  br label %2337

910:                                              ; preds = %88
  %911 = and i32 %95, 7
  %912 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %95, i32 %911), !nosanitize !47
  %913 = extractvalue { i32, i1 } %912, 1, !nosanitize !47
  br i1 %913, label %914, label %915, !prof !48, !nosanitize !47

914:                                              ; preds = %910
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

915:                                              ; preds = %910
  %916 = zext nneg i32 %911 to i64
  %917 = lshr i64 %94, %916
  %918 = extractvalue { i32, i1 } %912, 0
  %919 = icmp ult i32 %918, 32
  br i1 %919, label %920, label %983

920:                                              ; preds = %915
  %921 = and i32 %95, -8
  %922 = zext i32 %921 to i64
  %923 = icmp eq i32 %92, 0
  br i1 %923, label %2394, label %924

924:                                              ; preds = %920
  %925 = load i8, ptr %90, align 1, !tbaa !44
  %926 = zext i8 %925 to i64
  %927 = shl nuw nsw i64 %926, %922
  %928 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %917, i64 %927), !nosanitize !47
  %929 = extractvalue { i64, i1 } %928, 1, !nosanitize !47
  br i1 %929, label %930, label %931, !prof !48, !nosanitize !47

930:                                              ; preds = %967, %953, %939, %924
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

931:                                              ; preds = %924
  %932 = extractvalue { i64, i1 } %928, 0, !nosanitize !47
  %933 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %934 = add i32 %92, -1
  %935 = add nuw nsw i64 %922, 8
  %936 = icmp ult i32 %95, 24
  br i1 %936, label %937, label %977

937:                                              ; preds = %931
  %938 = icmp eq i32 %934, 0
  br i1 %938, label %2394, label %939

939:                                              ; preds = %937
  %940 = load i8, ptr %933, align 1, !tbaa !44
  %941 = zext i8 %940 to i64
  %942 = shl nuw nsw i64 %941, %935
  %943 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %932, i64 %942), !nosanitize !47
  %944 = extractvalue { i64, i1 } %943, 1, !nosanitize !47
  br i1 %944, label %930, label %945, !prof !48, !nosanitize !47

945:                                              ; preds = %939
  %946 = extractvalue { i64, i1 } %943, 0, !nosanitize !47
  %947 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %948 = add i32 %92, -2
  %949 = add nuw nsw i64 %922, 16
  %950 = icmp samesign ult i32 %95, 16
  br i1 %950, label %951, label %977

951:                                              ; preds = %945
  %952 = icmp eq i32 %948, 0
  br i1 %952, label %2394, label %953

953:                                              ; preds = %951
  %954 = load i8, ptr %947, align 1, !tbaa !44
  %955 = zext i8 %954 to i64
  %956 = shl nuw nsw i64 %955, %949
  %957 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %946, i64 %956), !nosanitize !47
  %958 = extractvalue { i64, i1 } %957, 1, !nosanitize !47
  br i1 %958, label %930, label %959, !prof !48, !nosanitize !47

959:                                              ; preds = %953
  %960 = extractvalue { i64, i1 } %957, 0, !nosanitize !47
  %961 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %962 = add i32 %92, -3
  %963 = add nuw nsw i64 %922, 24
  %964 = icmp eq i32 %921, 0
  br i1 %964, label %965, label %977

965:                                              ; preds = %959
  %966 = icmp eq i32 %962, 0
  br i1 %966, label %2394, label %967

967:                                              ; preds = %965
  %968 = load i8, ptr %961, align 1, !tbaa !44
  %969 = zext i8 %968 to i64
  %970 = shl nuw nsw i64 %969, %963
  %971 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %960, i64 %970), !nosanitize !47
  %972 = extractvalue { i64, i1 } %971, 1, !nosanitize !47
  br i1 %972, label %930, label %973, !prof !48, !nosanitize !47

973:                                              ; preds = %967
  %974 = extractvalue { i64, i1 } %971, 0, !nosanitize !47
  %975 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %976 = add i32 %92, -4
  br label %977

977:                                              ; preds = %973, %959, %945, %931
  %978 = phi i64 [ %932, %931 ], [ %946, %945 ], [ %960, %959 ], [ %974, %973 ]
  %979 = phi ptr [ %933, %931 ], [ %947, %945 ], [ %961, %959 ], [ %975, %973 ]
  %980 = phi i32 [ %934, %931 ], [ %948, %945 ], [ %962, %959 ], [ %976, %973 ]
  %981 = phi i64 [ %935, %931 ], [ %949, %945 ], [ %963, %959 ], [ 32, %973 ]
  %982 = trunc nuw nsw i64 %981 to i32
  br label %983

983:                                              ; preds = %977, %915
  %984 = phi ptr [ %90, %915 ], [ %979, %977 ]
  %985 = phi i32 [ %92, %915 ], [ %980, %977 ]
  %986 = phi i64 [ %917, %915 ], [ %978, %977 ]
  %987 = phi i32 [ %918, %915 ], [ %982, %977 ]
  %988 = and i64 %986, 65535
  %989 = lshr i64 %986, 16
  %990 = xor i64 %989, %988
  %991 = icmp eq i64 %990, 65535
  br i1 %991, label %993, label %992

992:                                              ; preds = %983
  store ptr @.str.7, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2337

993:                                              ; preds = %983
  %994 = trunc i64 %986 to i32
  %995 = and i32 %994, 65535
  store i32 %995, ptr %56, align 4, !tbaa !61
  store i32 16194, ptr %21, align 8, !tbaa !20
  br i1 %70, label %.loopexit185, label %996

996:                                              ; preds = %993, %88
  %997 = phi ptr [ %984, %993 ], [ %90, %88 ]
  %998 = phi i32 [ %985, %993 ], [ %92, %88 ]
  %999 = phi i64 [ 0, %993 ], [ %94, %88 ]
  %1000 = phi i32 [ 0, %993 ], [ %95, %88 ]
  store i32 16195, ptr %21, align 8, !tbaa !20
  br label %1001

1001:                                             ; preds = %996, %88
  %1002 = phi ptr [ %997, %996 ], [ %90, %88 ]
  %1003 = phi i32 [ %998, %996 ], [ %92, %88 ]
  %1004 = phi i64 [ %999, %996 ], [ %94, %88 ]
  %1005 = phi i32 [ %1000, %996 ], [ %95, %88 ]
  %1006 = load i32, ptr %56, align 4, !tbaa !61
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1032, label %1008

1008:                                             ; preds = %1001
  %1009 = call i32 @llvm.umin.i32(i32 %1006, i32 %1003)
  %1010 = call i32 @llvm.umin.i32(i32 %1009, i32 %93)
  %1011 = icmp eq i32 %1010, 0
  br i1 %1011, label %.loopexit185, label %1012

1012:                                             ; preds = %1008
  %1013 = zext i32 %1010 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %91, ptr align 1 %1002, i64 %1013, i1 false)
  %1014 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1003, i32 %1010), !nosanitize !47
  %1015 = extractvalue { i32, i1 } %1014, 0, !nosanitize !47
  %1016 = extractvalue { i32, i1 } %1014, 1, !nosanitize !47
  br i1 %1016, label %1017, label %1018, !prof !48, !nosanitize !47

1017:                                             ; preds = %1012
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1018:                                             ; preds = %1012
  %1019 = getelementptr inbounds nuw i8, ptr %1002, i64 %1013
  %1020 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %93, i32 %1010), !nosanitize !47
  %1021 = extractvalue { i32, i1 } %1020, 0, !nosanitize !47
  %1022 = extractvalue { i32, i1 } %1020, 1, !nosanitize !47
  br i1 %1022, label %1023, label %1024, !prof !48, !nosanitize !47

1023:                                             ; preds = %1018
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1024:                                             ; preds = %1018
  %1025 = load i32, ptr %56, align 4, !tbaa !61
  %1026 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1025, i32 %1010), !nosanitize !47
  %1027 = extractvalue { i32, i1 } %1026, 1, !nosanitize !47
  br i1 %1027, label %1028, label %1029, !prof !48, !nosanitize !47

1028:                                             ; preds = %1024
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1029:                                             ; preds = %1024
  %1030 = extractvalue { i32, i1 } %1026, 0, !nosanitize !47
  %1031 = getelementptr inbounds nuw i8, ptr %91, i64 %1013
  store i32 %1030, ptr %56, align 4, !tbaa !61
  br label %2337

1032:                                             ; preds = %1001
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2337

1033:                                             ; preds = %107
  %1034 = load i8, ptr %90, align 1, !tbaa !44
  %1035 = zext i8 %1034 to i64
  %1036 = shl nuw nsw i64 %1035, %108
  %1037 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %1036), !nosanitize !47
  %1038 = extractvalue { i64, i1 } %1037, 1, !nosanitize !47
  br i1 %1038, label %1039, label %1040, !prof !48, !nosanitize !47

1039:                                             ; preds = %1048, %1033
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1040:                                             ; preds = %1033
  %1041 = extractvalue { i64, i1 } %1037, 0, !nosanitize !47
  %1042 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %1043 = add i32 %92, -1
  %1044 = add nuw nsw i64 %108, 8
  %1045 = icmp samesign ult i32 %95, 6
  br i1 %1045, label %1046, label %1059

1046:                                             ; preds = %1040
  %1047 = icmp eq i32 %1043, 0
  br i1 %1047, label %2445, label %1048

1048:                                             ; preds = %1046
  %1049 = load i8, ptr %1042, align 1, !tbaa !44
  %1050 = zext i8 %1049 to i64
  %1051 = shl nuw nsw i64 %1050, %1044
  %1052 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1041, i64 %1051), !nosanitize !47
  %1053 = extractvalue { i64, i1 } %1052, 1, !nosanitize !47
  br i1 %1053, label %1039, label %1054, !prof !48, !nosanitize !47

1054:                                             ; preds = %1048
  %1055 = extractvalue { i64, i1 } %1052, 0, !nosanitize !47
  %1056 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %1057 = add i32 %92, -2
  %1058 = or disjoint i64 %108, 16
  br label %1059

1059:                                             ; preds = %1054, %1040
  %1060 = phi i64 [ %1041, %1040 ], [ %1055, %1054 ]
  %1061 = phi ptr [ %1042, %1040 ], [ %1056, %1054 ]
  %1062 = phi i32 [ %1043, %1040 ], [ %1057, %1054 ]
  %1063 = phi i64 [ %1044, %1040 ], [ %1058, %1054 ]
  %1064 = trunc nuw nsw i64 %1063 to i32
  br label %1065

1065:                                             ; preds = %1059, %105
  %1066 = phi ptr [ %90, %105 ], [ %1061, %1059 ]
  %1067 = phi i32 [ %92, %105 ], [ %1062, %1059 ]
  %1068 = phi i64 [ %94, %105 ], [ %1060, %1059 ]
  %1069 = phi i32 [ %95, %105 ], [ %1064, %1059 ]
  %1070 = trunc i64 %1068 to i32
  %1071 = and i32 %1070, 31
  %1072 = add nuw nsw i32 %1071, 257
  store i32 %1072, ptr %57, align 4, !tbaa !73
  %1073 = lshr i32 %1070, 5
  %1074 = and i32 %1073, 31
  %1075 = add nuw nsw i32 %1074, 1
  store i32 %1075, ptr %58, align 8, !tbaa !74
  %1076 = lshr i32 %1070, 10
  %1077 = and i32 %1076, 15
  %1078 = add nuw nsw i32 %1077, 4
  store i32 %1078, ptr %59, align 8, !tbaa !75
  %1079 = lshr i64 %1068, 14
  %1080 = add i32 %1069, -14
  %1081 = icmp samesign ugt i32 %1071, 29
  %1082 = icmp samesign ugt i32 %1074, 29
  %1083 = select i1 %1081, i1 true, i1 %1082
  br i1 %1083, label %1084, label %1085

1084:                                             ; preds = %1065
  store ptr @.str.8, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2337

1085:                                             ; preds = %1065
  store i32 0, ptr %60, align 4, !tbaa !76
  store i32 16197, ptr %21, align 8, !tbaa !20
  br label %1090

1086:                                             ; preds = %88
  %1087 = load i32, ptr %59, align 8, !tbaa !75
  %1088 = load i32, ptr %60, align 4, !tbaa !76
  %1089 = icmp ult i32 %1088, %1087
  br i1 %1089, label %1090, label %.loopexit186

1090:                                             ; preds = %1086, %1085
  %1091 = phi i32 [ %1080, %1085 ], [ %95, %1086 ]
  %1092 = phi i64 [ %1079, %1085 ], [ %94, %1086 ]
  %1093 = phi i32 [ %1067, %1085 ], [ %92, %1086 ]
  %1094 = phi ptr [ %1066, %1085 ], [ %90, %1086 ]
  %1095 = phi i32 [ %1078, %1085 ], [ %1087, %1086 ]
  %1096 = phi i32 [ 0, %1085 ], [ %1088, %1086 ]
  %1097 = zext i32 %1096 to i64
  %1098 = zext i32 %1095 to i64
  br label %1107

.loopexit186:                                     ; preds = %1129, %1086
  %1099 = phi ptr [ %90, %1086 ], [ %1130, %1129 ]
  %1100 = phi i32 [ %92, %1086 ], [ %1131, %1129 ]
  %1101 = phi i64 [ %94, %1086 ], [ %1143, %1129 ]
  %1102 = phi i32 [ %95, %1086 ], [ %1142, %1129 ]
  %1103 = phi i32 [ %1088, %1086 ], [ %1095, %1129 ]
  %1104 = icmp ult i32 %1103, 19
  br i1 %1104, label %1105, label %1155

1105:                                             ; preds = %.loopexit186
  %1106 = zext nneg i32 %1103 to i64
  br label %1145

1107:                                             ; preds = %1129, %1090
  %1108 = phi i64 [ %1097, %1090 ], [ %1134, %1129 ]
  %1109 = phi i32 [ %1091, %1090 ], [ %1142, %1129 ]
  %1110 = phi i64 [ %1092, %1090 ], [ %1143, %1129 ]
  %1111 = phi i32 [ %1093, %1090 ], [ %1131, %1129 ]
  %1112 = phi ptr [ %1094, %1090 ], [ %1130, %1129 ]
  %1113 = icmp ult i32 %1109, 3
  br i1 %1113, label %1114, label %1129

1114:                                             ; preds = %1107
  %1115 = or disjoint i32 %1109, 8
  %1116 = icmp eq i32 %1111, 0
  br i1 %1116, label %.loopexit185, label %1117

1117:                                             ; preds = %1114
  %1118 = load i8, ptr %1112, align 1, !tbaa !44
  %1119 = zext i8 %1118 to i64
  %1120 = zext nneg i32 %1109 to i64
  %1121 = shl nuw nsw i64 %1119, %1120
  %1122 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1110, i64 %1121), !nosanitize !47
  %1123 = extractvalue { i64, i1 } %1122, 1, !nosanitize !47
  br i1 %1123, label %1124, label %1125, !prof !48, !nosanitize !47

1124:                                             ; preds = %1117
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1125:                                             ; preds = %1117
  %1126 = extractvalue { i64, i1 } %1122, 0, !nosanitize !47
  %1127 = getelementptr inbounds nuw i8, ptr %1112, i64 1
  %1128 = add i32 %1111, -1
  br label %1129

1129:                                             ; preds = %1125, %1107
  %1130 = phi ptr [ %1127, %1125 ], [ %1112, %1107 ]
  %1131 = phi i32 [ %1128, %1125 ], [ %1111, %1107 ]
  %1132 = phi i64 [ %1126, %1125 ], [ %1110, %1107 ]
  %1133 = phi i32 [ %1115, %1125 ], [ %1109, %1107 ]
  %1134 = add nuw nsw i64 %1108, 1
  %1135 = trunc i64 %1132 to i16
  %1136 = and i16 %1135, 7
  %1137 = trunc nuw i64 %1134 to i32
  store i32 %1137, ptr %60, align 4, !tbaa !76
  %1138 = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %1108
  %1139 = load i16, ptr %1138, align 2, !tbaa !77
  %1140 = zext i16 %1139 to i64
  %1141 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1140
  store i16 %1136, ptr %1141, align 2, !tbaa !77
  %1142 = add i32 %1133, -3
  %1143 = lshr i64 %1132, 3
  %1144 = icmp eq i64 %1134, %1098
  br i1 %1144, label %.loopexit186, label %1107, !llvm.loop !79

1145:                                             ; preds = %1145, %1105
  %1146 = phi i64 [ %1106, %1105 ], [ %1147, %1145 ]
  %1147 = add nuw nsw i64 %1146, 1
  %1148 = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %1146
  %1149 = load i16, ptr %1148, align 2, !tbaa !77
  %1150 = zext i16 %1149 to i64
  %1151 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1150
  store i16 0, ptr %1151, align 2, !tbaa !77
  %1152 = and i64 %1147, 4294967295
  %1153 = icmp eq i64 %1152, 19
  br i1 %1153, label %1154, label %1145, !llvm.loop !80

1154:                                             ; preds = %1145
  store i32 19, ptr %60, align 4, !tbaa !76
  br label %1155

1155:                                             ; preds = %1154, %.loopexit186
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %64, align 8, !tbaa !34
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 7, ptr %66, align 8, !tbaa !81
  %1156 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %61, i32 noundef 19, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #12
  %1157 = icmp eq i32 %1156, 0
  br i1 %1157, label %1159, label %1158

1158:                                             ; preds = %1155
  store ptr @.str.9, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2337

1159:                                             ; preds = %1155
  store i32 0, ptr %60, align 4, !tbaa !76
  store i32 16198, ptr %21, align 8, !tbaa !20
  br label %1160

1160:                                             ; preds = %1159, %88
  %1161 = phi ptr [ %1099, %1159 ], [ %90, %88 ]
  %1162 = phi i32 [ %1100, %1159 ], [ %92, %88 ]
  %1163 = phi i64 [ %1101, %1159 ], [ %94, %88 ]
  %1164 = phi i32 [ %1102, %1159 ], [ %95, %88 ]
  %1165 = phi i32 [ 0, %1159 ], [ %97, %88 ]
  %1166 = load i32, ptr %57, align 4, !tbaa !73
  %1167 = load i32, ptr %58, align 8, !tbaa !74
  %1168 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1166, i32 %1167), !nosanitize !47
  %1169 = extractvalue { i32, i1 } %1168, 1, !nosanitize !47
  br i1 %1169, label %1182, label %1170, !prof !82, !nosanitize !47

1170:                                             ; preds = %1160
  %1171 = extractvalue { i32, i1 } %1168, 0, !nosanitize !47
  %1172 = load i32, ptr %60, align 4, !tbaa !76
  %.fr = freeze i32 %1172
  %1173 = call i32 @llvm.umax.i32(i32 %.fr, i32 %1171)
  %1174 = zext i32 %1173 to i64
  %1175 = icmp ult i32 %.fr, %1171
  br i1 %1175, label %1176, label %.loopexit184

1176:                                             ; preds = %1170
  %1177 = zext i32 %.fr to i64
  %1178 = load i32, ptr %66, align 8, !tbaa !81
  %1179 = shl nsw i32 -1, %1178
  %1180 = xor i32 %1179, -1
  %1181 = load ptr, ptr %65, align 8, !tbaa !35
  br label %1183

1182:                                             ; preds = %1160
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1183:                                             ; preds = %1438, %1176
  %1184 = phi ptr [ %1161, %1176 ], [ %1232, %1438 ]
  %1185 = phi i32 [ %1162, %1176 ], [ %1233, %1438 ]
  %1186 = phi i64 [ %1163, %1176 ], [ %1244, %1438 ]
  %1187 = phi i32 [ %1164, %1176 ], [ %1246, %1438 ]
  %1188 = phi i64 [ %1177, %1176 ], [ %1439, %1438 ]
  %1189 = trunc i64 %1186 to i32
  %1190 = and i32 %1189, %1180
  %1191 = zext nneg i32 %1190 to i64
  %1192 = getelementptr inbounds nuw [4 x i8], ptr %1181, i64 %1191
  %1193 = getelementptr inbounds nuw i8, ptr %1192, i64 1
  %1194 = load i8, ptr %1193, align 1, !tbaa !44
  %1195 = zext i8 %1194 to i32
  %1196 = icmp ult i32 %1187, %1195
  br i1 %1196, label %1197, label %1230

1197:                                             ; preds = %1183
  %1198 = icmp eq i32 %1185, 0
  br i1 %1198, label %.loopexit, label %1199

1199:                                             ; preds = %1197
  %1200 = zext nneg i32 %1187 to i64
  br label %1203

1201:                                             ; preds = %1214
  %1202 = icmp eq i32 %1217, 0
  br i1 %1202, label %.loopexit, label %1203

1203:                                             ; preds = %1201, %1199
  %1204 = phi ptr [ %1184, %1199 ], [ %1216, %1201 ]
  %1205 = phi i32 [ %1185, %1199 ], [ %1217, %1201 ]
  %1206 = phi i64 [ %1186, %1199 ], [ %1215, %1201 ]
  %1207 = phi i64 [ %1200, %1199 ], [ %1218, %1201 ]
  %1208 = load i8, ptr %1204, align 1, !tbaa !44
  %1209 = zext i8 %1208 to i64
  %1210 = shl i64 %1209, %1207
  %1211 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1206, i64 %1210), !nosanitize !47
  %1212 = extractvalue { i64, i1 } %1211, 1, !nosanitize !47
  br i1 %1212, label %1213, label %1214, !prof !48, !nosanitize !47

1213:                                             ; preds = %1203
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1214:                                             ; preds = %1203
  %1215 = extractvalue { i64, i1 } %1211, 0, !nosanitize !47
  %1216 = getelementptr inbounds nuw i8, ptr %1204, i64 1
  %1217 = add i32 %1205, -1
  %1218 = add nuw nsw i64 %1207, 8
  %1219 = trunc i64 %1215 to i32
  %1220 = and i32 %1219, %1180
  %1221 = zext nneg i32 %1220 to i64
  %1222 = getelementptr inbounds nuw [4 x i8], ptr %1181, i64 %1221
  %1223 = getelementptr inbounds nuw i8, ptr %1222, i64 1
  %1224 = load i8, ptr %1223, align 1, !tbaa !44
  %1225 = zext i8 %1224 to i64
  %1226 = icmp samesign ult i64 %1218, %1225
  br i1 %1226, label %1201, label %1227

1227:                                             ; preds = %1214
  %1228 = zext i8 %1224 to i32
  %1229 = trunc nuw nsw i64 %1218 to i32
  br label %1230

1230:                                             ; preds = %1227, %1183
  %1231 = phi i64 [ %1191, %1183 ], [ %1221, %1227 ]
  %1232 = phi ptr [ %1184, %1183 ], [ %1216, %1227 ]
  %1233 = phi i32 [ %1185, %1183 ], [ %1217, %1227 ]
  %1234 = phi i64 [ %1186, %1183 ], [ %1215, %1227 ]
  %1235 = phi i32 [ %1187, %1183 ], [ %1229, %1227 ]
  %1236 = phi i8 [ %1194, %1183 ], [ %1224, %1227 ]
  %1237 = phi i32 [ %1195, %1183 ], [ %1228, %1227 ]
  %1238 = getelementptr inbounds nuw [4 x i8], ptr %1181, i64 %1231
  %1239 = getelementptr inbounds nuw i8, ptr %1238, i64 2
  %1240 = load i16, ptr %1239, align 2, !tbaa !77
  %1241 = icmp ult i16 %1240, 16
  br i1 %1241, label %1242, label %1252

1242:                                             ; preds = %1230
  %1243 = zext nneg i8 %1236 to i64
  %1244 = lshr i64 %1234, %1243
  %1245 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1235, i32 %1237), !nosanitize !47
  %1246 = extractvalue { i32, i1 } %1245, 0, !nosanitize !47
  %1247 = extractvalue { i32, i1 } %1245, 1, !nosanitize !47
  br i1 %1247, label %1248, label %1249, !prof !48, !nosanitize !47

1248:                                             ; preds = %1242
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1249:                                             ; preds = %1242
  %1250 = icmp eq i64 %1188, 4294967295
  br i1 %1250, label %1251, label %1438, !prof !48, !nosanitize !47

1251:                                             ; preds = %1249
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1252:                                             ; preds = %1230
  %indvars2775.le = trunc i64 %1188 to i32
  switch i16 %1240, label %1265 [
    i16 16, label %1259
    i16 17, label %1253
  ]

1253:                                             ; preds = %1252
  %1254 = add nuw nsw i32 %1237, 3
  %1255 = icmp ult i32 %1235, %1254
  br i1 %1255, label %1256, label %1336

1256:                                             ; preds = %1253
  %1257 = zext nneg i32 %1235 to i64
  %1258 = zext nneg i32 %1254 to i64
  br label %1315

1259:                                             ; preds = %1252
  %1260 = add nuw nsw i32 %1237, 2
  %1261 = icmp ult i32 %1235, %1260
  br i1 %1261, label %1262, label %1292

1262:                                             ; preds = %1259
  %1263 = zext nneg i32 %1235 to i64
  %1264 = zext nneg i32 %1260 to i64
  br label %1271

1265:                                             ; preds = %1252
  %1266 = add nuw nsw i32 %1237, 7
  %1267 = icmp ult i32 %1235, %1266
  br i1 %1267, label %1268, label %1373

1268:                                             ; preds = %1265
  %1269 = zext nneg i32 %1235 to i64
  %1270 = zext nneg i32 %1266 to i64
  br label %1352

1271:                                             ; preds = %1284, %1262
  %1272 = phi i64 [ %1263, %1262 ], [ %1288, %1284 ]
  %1273 = phi i64 [ %1234, %1262 ], [ %1285, %1284 ]
  %1274 = phi i32 [ %1233, %1262 ], [ %1287, %1284 ]
  %1275 = phi ptr [ %1232, %1262 ], [ %1286, %1284 ]
  %1276 = icmp eq i32 %1274, 0
  br i1 %1276, label %2435, label %1277

1277:                                             ; preds = %1271
  %1278 = load i8, ptr %1275, align 1, !tbaa !44
  %1279 = zext i8 %1278 to i64
  %1280 = shl i64 %1279, %1272
  %1281 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1273, i64 %1280), !nosanitize !47
  %1282 = extractvalue { i64, i1 } %1281, 1, !nosanitize !47
  br i1 %1282, label %1283, label %1284, !prof !48, !nosanitize !47

1283:                                             ; preds = %1277
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1284:                                             ; preds = %1277
  %1285 = extractvalue { i64, i1 } %1281, 0, !nosanitize !47
  %1286 = getelementptr inbounds nuw i8, ptr %1275, i64 1
  %1287 = add i32 %1274, -1
  %1288 = add nuw nsw i64 %1272, 8
  %1289 = icmp samesign ult i64 %1288, %1264
  br i1 %1289, label %1271, label %1290, !llvm.loop !83

1290:                                             ; preds = %1284
  %1291 = trunc nuw nsw i64 %1288 to i32
  br label %1292

1292:                                             ; preds = %1290, %1259
  %1293 = phi ptr [ %1232, %1259 ], [ %1286, %1290 ]
  %1294 = phi i32 [ %1233, %1259 ], [ %1287, %1290 ]
  %1295 = phi i64 [ %1234, %1259 ], [ %1285, %1290 ]
  %1296 = phi i32 [ %1235, %1259 ], [ %1291, %1290 ]
  %1297 = zext nneg i8 %1236 to i64
  %1298 = lshr i64 %1295, %1297
  %1299 = sub nuw i32 %1296, %1237
  %1300 = icmp eq i64 %1188, 0
  br i1 %1300, label %1301, label %1302

1301:                                             ; preds = %1292
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2337

1302:                                             ; preds = %1292
  %1303 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1299, i32 2), !nosanitize !47
  %1304 = extractvalue { i32, i1 } %1303, 1, !nosanitize !47
  br i1 %1304, label %1305, label %1306, !prof !48, !nosanitize !47

1305:                                             ; preds = %1302
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1306:                                             ; preds = %1302
  %1307 = trunc i64 %1298 to i32
  %1308 = and i32 %1307, 3
  %1309 = add nuw nsw i32 %1308, 3
  %1310 = add nuw nsw i64 %1188, 4294967295
  %1311 = and i64 %1310, 4294967295
  %1312 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1311
  %1313 = load i16, ptr %1312, align 2, !tbaa !77
  %1314 = lshr i64 %1298, 2
  br label %1389

1315:                                             ; preds = %1328, %1256
  %1316 = phi i64 [ %1257, %1256 ], [ %1332, %1328 ]
  %1317 = phi i64 [ %1234, %1256 ], [ %1329, %1328 ]
  %1318 = phi i32 [ %1233, %1256 ], [ %1331, %1328 ]
  %1319 = phi ptr [ %1232, %1256 ], [ %1330, %1328 ]
  %1320 = icmp eq i32 %1318, 0
  br i1 %1320, label %2440, label %1321

1321:                                             ; preds = %1315
  %1322 = load i8, ptr %1319, align 1, !tbaa !44
  %1323 = zext i8 %1322 to i64
  %1324 = shl i64 %1323, %1316
  %1325 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1317, i64 %1324), !nosanitize !47
  %1326 = extractvalue { i64, i1 } %1325, 1, !nosanitize !47
  br i1 %1326, label %1327, label %1328, !prof !48, !nosanitize !47

1327:                                             ; preds = %1321
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1328:                                             ; preds = %1321
  %1329 = extractvalue { i64, i1 } %1325, 0, !nosanitize !47
  %1330 = getelementptr inbounds nuw i8, ptr %1319, i64 1
  %1331 = add i32 %1318, -1
  %1332 = add nuw nsw i64 %1316, 8
  %1333 = icmp samesign ult i64 %1332, %1258
  br i1 %1333, label %1315, label %1334, !llvm.loop !84

1334:                                             ; preds = %1328
  %1335 = trunc nuw nsw i64 %1332 to i32
  br label %1336

1336:                                             ; preds = %1334, %1253
  %1337 = phi ptr [ %1232, %1253 ], [ %1330, %1334 ]
  %1338 = phi i32 [ %1233, %1253 ], [ %1331, %1334 ]
  %1339 = phi i64 [ %1234, %1253 ], [ %1329, %1334 ]
  %1340 = phi i32 [ %1235, %1253 ], [ %1335, %1334 ]
  %1341 = sub nuw i32 %1340, %1237
  %1342 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1341, i32 3), !nosanitize !47
  %1343 = extractvalue { i32, i1 } %1342, 1, !nosanitize !47
  br i1 %1343, label %1344, label %1345, !prof !48, !nosanitize !47

1344:                                             ; preds = %1336
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1345:                                             ; preds = %1336
  %1346 = zext nneg i8 %1236 to i64
  %1347 = lshr i64 %1339, %1346
  %1348 = trunc i64 %1347 to i32
  %1349 = and i32 %1348, 7
  %1350 = add nuw nsw i32 %1349, 3
  %1351 = lshr i64 %1347, 3
  br label %1389

1352:                                             ; preds = %1365, %1268
  %1353 = phi i64 [ %1269, %1268 ], [ %1369, %1365 ]
  %1354 = phi i64 [ %1234, %1268 ], [ %1366, %1365 ]
  %1355 = phi i32 [ %1233, %1268 ], [ %1368, %1365 ]
  %1356 = phi ptr [ %1232, %1268 ], [ %1367, %1365 ]
  %1357 = icmp eq i32 %1355, 0
  br i1 %1357, label %2430, label %1358

1358:                                             ; preds = %1352
  %1359 = load i8, ptr %1356, align 1, !tbaa !44
  %1360 = zext i8 %1359 to i64
  %1361 = shl i64 %1360, %1353
  %1362 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1354, i64 %1361), !nosanitize !47
  %1363 = extractvalue { i64, i1 } %1362, 1, !nosanitize !47
  br i1 %1363, label %1364, label %1365, !prof !48, !nosanitize !47

1364:                                             ; preds = %1358
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1365:                                             ; preds = %1358
  %1366 = extractvalue { i64, i1 } %1362, 0, !nosanitize !47
  %1367 = getelementptr inbounds nuw i8, ptr %1356, i64 1
  %1368 = add i32 %1355, -1
  %1369 = add nuw nsw i64 %1353, 8
  %1370 = icmp samesign ult i64 %1369, %1270
  br i1 %1370, label %1352, label %1371, !llvm.loop !85

1371:                                             ; preds = %1365
  %1372 = trunc nuw nsw i64 %1369 to i32
  br label %1373

1373:                                             ; preds = %1371, %1265
  %1374 = phi ptr [ %1232, %1265 ], [ %1367, %1371 ]
  %1375 = phi i32 [ %1233, %1265 ], [ %1368, %1371 ]
  %1376 = phi i64 [ %1234, %1265 ], [ %1366, %1371 ]
  %1377 = phi i32 [ %1235, %1265 ], [ %1372, %1371 ]
  %1378 = sub nuw i32 %1377, %1237
  %1379 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1378, i32 7), !nosanitize !47
  %1380 = extractvalue { i32, i1 } %1379, 1, !nosanitize !47
  br i1 %1380, label %1381, label %1382, !prof !48, !nosanitize !47

1381:                                             ; preds = %1373
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1382:                                             ; preds = %1373
  %1383 = zext nneg i8 %1236 to i64
  %1384 = lshr i64 %1376, %1383
  %1385 = trunc i64 %1384 to i32
  %1386 = and i32 %1385, 127
  %1387 = add nuw nsw i32 %1386, 11
  %1388 = lshr i64 %1384, 7
  br label %1389

1389:                                             ; preds = %1382, %1345, %1306
  %1390 = phi ptr [ %1293, %1306 ], [ %1337, %1345 ], [ %1374, %1382 ]
  %1391 = phi i32 [ %1294, %1306 ], [ %1338, %1345 ], [ %1375, %1382 ]
  %1392 = phi i64 [ %1314, %1306 ], [ %1351, %1345 ], [ %1388, %1382 ]
  %1393 = phi { i32, i1 } [ %1303, %1306 ], [ %1342, %1345 ], [ %1379, %1382 ]
  %1394 = phi i32 [ %1309, %1306 ], [ %1350, %1345 ], [ %1387, %1382 ]
  %1395 = phi i16 [ %1313, %1306 ], [ 0, %1345 ], [ 0, %1382 ]
  %1396 = extractvalue { i32, i1 } %1393, 0
  %1397 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %indvars2775.le, i32 %1394), !nosanitize !47
  %1398 = extractvalue { i32, i1 } %1397, 1, !nosanitize !47
  br i1 %1398, label %1399, label %1400, !prof !48, !nosanitize !47

1399:                                             ; preds = %1389
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1400:                                             ; preds = %1389
  %1401 = extractvalue { i32, i1 } %1397, 0, !nosanitize !47
  %1402 = icmp ugt i32 %1401, %1171
  br i1 %1402, label %1419, label %1403

1403:                                             ; preds = %1400
  %1404 = icmp eq i32 %indvars2775.le, -1
  br i1 %1404, label %1430, label %1405, !prof !82, !nosanitize !47

1405:                                             ; preds = %1403
  %1406 = and i64 %1188, 4294967295
  %1407 = add nsw i32 %1394, -1
  %1408 = and i64 %1188, 1
  %1409 = icmp eq i64 %1408, 0
  br i1 %1409, label %1410, label %1415, !prof !82

1410:                                             ; preds = %1405
  %1411 = or disjoint i64 %1406, 1
  %1412 = trunc nuw i64 %1411 to i32
  store i32 %1412, ptr %60, align 4, !tbaa !76
  %1413 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1406
  store i16 %1395, ptr %1413, align 2, !tbaa !77
  %1414 = add nsw i32 %1394, -2
  br label %1415

1415:                                             ; preds = %1410, %1405
  %.pn170 = phi i32 [ %1407, %1405 ], [ %1414, %1410 ]
  %1416 = phi i64 [ %1406, %1405 ], [ %1411, %1410 ]
  %1417 = icmp eq i32 %indvars2775.le, -2
  br i1 %1417, label %1430, label %.preheader.preheader, !prof !82

.preheader.preheader:                             ; preds = %1415
  %1418 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %.pn170, 0
  br label %.preheader

1419:                                             ; preds = %1400
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2337

.split.loop.exit:                                 ; preds = %1421, %.preheader
  %.in = phi i64 [ %1434, %.preheader ], [ %1423, %1421 ]
  %1420 = trunc i64 %.in to i32
  store i32 %1420, ptr %60, align 4, !tbaa !76
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1421:                                             ; preds = %.preheader
  %1422 = extractvalue { i32, i1 } %1436, 0
  %1423 = add nuw nsw i64 %1432, 2
  %1424 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1434
  store i16 %1395, ptr %1424, align 2, !tbaa !77
  %1425 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1422, i32 1), !nosanitize !47
  %1426 = extractvalue { i32, i1 } %1425, 1, !nosanitize !47
  br i1 %1426, label %.split.loop.exit, label %1427, !prof !86, !llvm.loop !87, !nosanitize !47

1427:                                             ; preds = %1421
  %1428 = icmp eq i64 %1423, 4294967295
  br i1 %1428, label %1429, label %.preheader, !prof !86, !llvm.loop !88, !nosanitize !47

1429:                                             ; preds = %1427
  store i32 -1, ptr %60, align 4, !tbaa !76
  br label %1430

1430:                                             ; preds = %1429, %1415, %1403
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

.preheader:                                       ; preds = %.preheader.preheader, %1427
  %1431 = phi { i32, i1 } [ %1425, %1427 ], [ %1418, %.preheader.preheader ]
  %1432 = phi i64 [ %1423, %1427 ], [ %1416, %.preheader.preheader ]
  %1433 = extractvalue { i32, i1 } %1431, 0
  %1434 = add nuw nsw i64 %1432, 1
  %1435 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1432
  store i16 %1395, ptr %1435, align 2, !tbaa !77
  %1436 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1433, i32 1), !nosanitize !47
  %1437 = extractvalue { i32, i1 } %1436, 1, !nosanitize !47
  br i1 %1437, label %.split.loop.exit, label %1421, !prof !86, !llvm.loop !87, !nosanitize !47

1438:                                             ; preds = %1249
  %1439 = add i64 %1188, 1
  %indvars = trunc nuw i64 %1439 to i32
  store i32 %indvars, ptr %60, align 4, !tbaa !76
  %1440 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1188
  store i16 %1240, ptr %1440, align 2, !tbaa !77
  %1441 = icmp eq i64 %1439, %1174
  br i1 %1441, label %.loopexit184, label %1183

.loopexit184:                                     ; preds = %1438, %1170
  %1442 = phi i32 [ %1164, %1170 ], [ %1246, %1438 ]
  %1443 = phi i64 [ %1163, %1170 ], [ %1244, %1438 ]
  %1444 = phi i32 [ %1162, %1170 ], [ %1233, %1438 ]
  %1445 = phi ptr [ %1161, %1170 ], [ %1232, %1438 ]
  %1446 = load i16, ptr %68, align 8, !tbaa !77
  %1447 = icmp eq i16 %1446, 0
  br i1 %1447, label %1448, label %1449

1448:                                             ; preds = %.loopexit184
  store ptr @.str.11, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2337

1449:                                             ; preds = %.loopexit184
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 9, ptr %66, align 8, !tbaa !81
  %1450 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %61, i32 noundef %1166, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #12
  %1451 = icmp eq i32 %1450, 0
  br i1 %1451, label %1453, label %1452

1452:                                             ; preds = %1449
  store ptr @.str.12, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2337

1453:                                             ; preds = %1449
  %1454 = load ptr, ptr %63, align 8, !tbaa !33
  store ptr %1454, ptr %64, align 8, !tbaa !34
  store i32 6, ptr %69, align 4, !tbaa !90
  %1455 = load i32, ptr %57, align 4, !tbaa !73
  %1456 = zext i32 %1455 to i64
  %1457 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1456
  %1458 = load i32, ptr %58, align 8, !tbaa !74
  %1459 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %1457, i32 noundef %1458, ptr noundef nonnull %63, ptr noundef nonnull %69, ptr noundef nonnull %67) #12
  %1460 = icmp eq i32 %1459, 0
  br i1 %1460, label %1462, label %1461

1461:                                             ; preds = %1453
  store ptr @.str.13, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2337

1462:                                             ; preds = %1453
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %.loopexit185, label %1463

1463:                                             ; preds = %1462, %88
  %1464 = phi ptr [ %1445, %1462 ], [ %90, %88 ]
  %1465 = phi i32 [ %1444, %1462 ], [ %92, %88 ]
  %1466 = phi i64 [ %1443, %1462 ], [ %94, %88 ]
  %1467 = phi i32 [ %1442, %1462 ], [ %95, %88 ]
  %1468 = phi i32 [ 0, %1462 ], [ %97, %88 ]
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %1469

1469:                                             ; preds = %1463, %88
  %1470 = phi ptr [ %1464, %1463 ], [ %90, %88 ]
  %1471 = phi i32 [ %1465, %1463 ], [ %92, %88 ]
  %1472 = phi i64 [ %1466, %1463 ], [ %94, %88 ]
  %1473 = phi i32 [ %1467, %1463 ], [ %95, %88 ]
  %1474 = phi i32 [ %1468, %1463 ], [ %97, %88 ]
  %1475 = icmp ugt i32 %1471, 5
  %1476 = icmp ugt i32 %93, 257
  %1477 = select i1 %1475, i1 %1476, i1 false
  br i1 %1477, label %1478, label %1488

1478:                                             ; preds = %1469
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %93, ptr %41, align 8, !tbaa !52
  store ptr %1470, ptr %0, align 8, !tbaa !50
  store i32 %1471, ptr %43, align 8, !tbaa !51
  store i64 %1472, ptr %45, align 8, !tbaa !31
  store i32 %1473, ptr %47, align 8, !tbaa !32
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %96) #12
  %1479 = load ptr, ptr %26, align 8, !tbaa !49
  %1480 = load i32, ptr %41, align 8, !tbaa !52
  %1481 = load ptr, ptr %0, align 8, !tbaa !50
  %1482 = load i32, ptr %43, align 8, !tbaa !51
  %1483 = load i64, ptr %45, align 8, !tbaa !31
  %1484 = load i32, ptr %47, align 8, !tbaa !32
  %1485 = load i32, ptr %21, align 8, !tbaa !20
  %1486 = icmp eq i32 %1485, 16191
  br i1 %1486, label %1487, label %2337

1487:                                             ; preds = %1478
  store i32 -1, ptr %71, align 4, !tbaa !37
  br label %2337

1488:                                             ; preds = %1469
  store i32 0, ptr %71, align 4, !tbaa !37
  %1489 = load i32, ptr %66, align 8, !tbaa !81
  %1490 = shl nsw i32 -1, %1489
  %1491 = xor i32 %1490, -1
  %1492 = load ptr, ptr %65, align 8, !tbaa !35
  %1493 = trunc i64 %1472 to i32
  %1494 = and i32 %1491, %1493
  %1495 = zext nneg i32 %1494 to i64
  %1496 = getelementptr inbounds nuw [4 x i8], ptr %1492, i64 %1495
  %1497 = getelementptr inbounds nuw i8, ptr %1496, i64 1
  %1498 = load i8, ptr %1497, align 1, !tbaa !44
  %1499 = zext i8 %1498 to i32
  %1500 = icmp ult i32 %1473, %1499
  br i1 %1500, label %1501, label %1534

1501:                                             ; preds = %1488
  %1502 = icmp eq i32 %1471, 0
  br i1 %1502, label %.loopexit182, label %1503

1503:                                             ; preds = %1501
  %1504 = zext nneg i32 %1473 to i64
  br label %1507

1505:                                             ; preds = %1518
  %1506 = icmp eq i32 %1521, 0
  br i1 %1506, label %.loopexit182, label %1507

1507:                                             ; preds = %1505, %1503
  %1508 = phi ptr [ %1470, %1503 ], [ %1520, %1505 ]
  %1509 = phi i32 [ %1471, %1503 ], [ %1521, %1505 ]
  %1510 = phi i64 [ %1472, %1503 ], [ %1519, %1505 ]
  %1511 = phi i64 [ %1504, %1503 ], [ %1522, %1505 ]
  %1512 = load i8, ptr %1508, align 1, !tbaa !44
  %1513 = zext i8 %1512 to i64
  %1514 = shl i64 %1513, %1511
  %1515 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1510, i64 %1514), !nosanitize !47
  %1516 = extractvalue { i64, i1 } %1515, 1, !nosanitize !47
  br i1 %1516, label %1517, label %1518, !prof !48, !nosanitize !47

1517:                                             ; preds = %1507
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1518:                                             ; preds = %1507
  %1519 = extractvalue { i64, i1 } %1515, 0, !nosanitize !47
  %1520 = getelementptr inbounds nuw i8, ptr %1508, i64 1
  %1521 = add i32 %1509, -1
  %1522 = add nuw nsw i64 %1511, 8
  %1523 = trunc i64 %1519 to i32
  %1524 = and i32 %1523, %1491
  %1525 = zext nneg i32 %1524 to i64
  %1526 = getelementptr inbounds nuw [4 x i8], ptr %1492, i64 %1525
  %1527 = getelementptr inbounds nuw i8, ptr %1526, i64 1
  %1528 = load i8, ptr %1527, align 1, !tbaa !44
  %1529 = zext i8 %1528 to i64
  %1530 = icmp samesign ult i64 %1522, %1529
  br i1 %1530, label %1505, label %1531

1531:                                             ; preds = %1518
  %1532 = zext i8 %1528 to i32
  %1533 = trunc nuw nsw i64 %1522 to i32
  br label %1534

1534:                                             ; preds = %1531, %1488
  %1535 = phi ptr [ %1496, %1488 ], [ %1526, %1531 ]
  %1536 = phi ptr [ %1470, %1488 ], [ %1520, %1531 ]
  %1537 = phi i32 [ %1471, %1488 ], [ %1521, %1531 ]
  %1538 = phi i64 [ %1472, %1488 ], [ %1519, %1531 ]
  %1539 = phi i32 [ %1473, %1488 ], [ %1533, %1531 ]
  %1540 = phi i8 [ %1498, %1488 ], [ %1528, %1531 ]
  %1541 = phi i32 [ %1499, %1488 ], [ %1532, %1531 ]
  %1542 = getelementptr inbounds nuw i8, ptr %1535, i64 2
  %1543 = load i16, ptr %1542, align 2, !tbaa !77
  %1544 = load i8, ptr %1535, align 2, !tbaa !44
  %1545 = add i8 %1544, -1
  %1546 = icmp ult i8 %1545, 15
  br i1 %1546, label %1547, label %1613

1547:                                             ; preds = %1534
  %1548 = zext nneg i8 %1544 to i32
  %1549 = add nuw nsw i32 %1541, %1548
  %1550 = shl nsw i32 -1, %1549
  %1551 = xor i32 %1550, -1
  %1552 = zext i16 %1543 to i32
  %1553 = trunc i64 %1538 to i32
  %1554 = and i32 %1551, %1553
  %1555 = lshr i32 %1554, %1541
  %1556 = add nuw i32 %1555, %1552
  %1557 = zext i32 %1556 to i64
  %1558 = getelementptr inbounds nuw [4 x i8], ptr %1492, i64 %1557
  %1559 = getelementptr inbounds nuw i8, ptr %1558, i64 1
  %1560 = load i8, ptr %1559, align 1, !tbaa !44
  %1561 = zext i8 %1560 to i32
  %1562 = add nuw nsw i32 %1541, %1561
  %1563 = icmp ugt i32 %1562, %1539
  br i1 %1563, label %1564, label %1600

1564:                                             ; preds = %1547
  %1565 = icmp eq i32 %1537, 0
  br i1 %1565, label %.loopexit181, label %1566

1566:                                             ; preds = %1564
  %1567 = zext nneg i32 %1539 to i64
  br label %1570

1568:                                             ; preds = %1581
  %1569 = icmp eq i32 %1584, 0
  br i1 %1569, label %.loopexit181, label %1570

1570:                                             ; preds = %1568, %1566
  %1571 = phi ptr [ %1536, %1566 ], [ %1583, %1568 ]
  %1572 = phi i32 [ %1537, %1566 ], [ %1584, %1568 ]
  %1573 = phi i64 [ %1538, %1566 ], [ %1582, %1568 ]
  %1574 = phi i64 [ %1567, %1566 ], [ %1585, %1568 ]
  %1575 = load i8, ptr %1571, align 1, !tbaa !44
  %1576 = zext i8 %1575 to i64
  %1577 = shl i64 %1576, %1574
  %1578 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1573, i64 %1577), !nosanitize !47
  %1579 = extractvalue { i64, i1 } %1578, 1, !nosanitize !47
  br i1 %1579, label %1580, label %1581, !prof !48, !nosanitize !47

1580:                                             ; preds = %1570
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1581:                                             ; preds = %1570
  %1582 = extractvalue { i64, i1 } %1578, 0, !nosanitize !47
  %1583 = getelementptr inbounds nuw i8, ptr %1571, i64 1
  %1584 = add i32 %1572, -1
  %1585 = add nuw nsw i64 %1574, 8
  %1586 = trunc i64 %1582 to i32
  %1587 = and i32 %1586, %1551
  %1588 = lshr i32 %1587, %1541
  %1589 = add nuw i32 %1588, %1552
  %1590 = zext i32 %1589 to i64
  %1591 = getelementptr inbounds nuw [4 x i8], ptr %1492, i64 %1590
  %1592 = getelementptr inbounds nuw i8, ptr %1591, i64 1
  %1593 = load i8, ptr %1592, align 1, !tbaa !44
  %1594 = zext i8 %1593 to i32
  %1595 = add nuw nsw i32 %1541, %1594
  %1596 = zext nneg i32 %1595 to i64
  %1597 = icmp samesign ult i64 %1585, %1596
  br i1 %1597, label %1568, label %1598

1598:                                             ; preds = %1581
  %1599 = trunc nuw nsw i64 %1585 to i32
  br label %1600

1600:                                             ; preds = %1598, %1547
  %1601 = phi ptr [ %1536, %1547 ], [ %1583, %1598 ]
  %1602 = phi i32 [ %1537, %1547 ], [ %1584, %1598 ]
  %1603 = phi i64 [ %1538, %1547 ], [ %1582, %1598 ]
  %1604 = phi i32 [ %1539, %1547 ], [ %1599, %1598 ]
  %1605 = phi ptr [ %1558, %1547 ], [ %1591, %1598 ]
  %1606 = phi i8 [ %1560, %1547 ], [ %1593, %1598 ]
  %1607 = getelementptr inbounds nuw i8, ptr %1605, i64 2
  %1608 = load i16, ptr %1607, align 2, !tbaa !77
  %1609 = load i8, ptr %1605, align 2, !tbaa !44
  %1610 = sub nuw i32 %1604, %1541
  %1611 = zext nneg i8 %1540 to i64
  %1612 = lshr i64 %1603, %1611
  store i32 %1541, ptr %71, align 4, !tbaa !37
  br label %1613

1613:                                             ; preds = %1600, %1534
  %1614 = phi i32 [ %1541, %1600 ], [ 0, %1534 ]
  %1615 = phi ptr [ %1601, %1600 ], [ %1536, %1534 ]
  %1616 = phi i32 [ %1602, %1600 ], [ %1537, %1534 ]
  %1617 = phi i64 [ %1612, %1600 ], [ %1538, %1534 ]
  %1618 = phi i32 [ %1610, %1600 ], [ %1539, %1534 ]
  %1619 = phi i16 [ %1608, %1600 ], [ %1543, %1534 ]
  %1620 = phi i8 [ %1606, %1600 ], [ %1540, %1534 ]
  %1621 = phi i8 [ %1609, %1600 ], [ %1544, %1534 ]
  %1622 = zext i8 %1620 to i32
  %1623 = zext nneg i8 %1620 to i64
  %1624 = lshr i64 %1617, %1623
  %1625 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1618, i32 %1622), !nosanitize !47
  %1626 = extractvalue { i32, i1 } %1625, 0, !nosanitize !47
  %1627 = extractvalue { i32, i1 } %1625, 1, !nosanitize !47
  br i1 %1627, label %1628, label %1629, !prof !48, !nosanitize !47

1628:                                             ; preds = %1613
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1629:                                             ; preds = %1613
  %1630 = add nuw nsw i32 %1614, %1622
  store i32 %1630, ptr %71, align 4, !tbaa !37
  %1631 = zext i16 %1619 to i32
  store i32 %1631, ptr %56, align 4, !tbaa !61
  %1632 = zext i8 %1621 to i32
  %1633 = icmp eq i8 %1621, 0
  br i1 %1633, label %1634, label %1635

1634:                                             ; preds = %1629
  store i32 16205, ptr %21, align 8, !tbaa !20
  br label %2337

1635:                                             ; preds = %1629
  %1636 = and i32 %1632, 32
  %1637 = icmp eq i32 %1636, 0
  br i1 %1637, label %1639, label %1638

1638:                                             ; preds = %1635
  store i32 -1, ptr %71, align 4, !tbaa !37
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2337

1639:                                             ; preds = %1635
  %1640 = and i32 %1632, 64
  %1641 = icmp eq i32 %1640, 0
  br i1 %1641, label %1643, label %1642

1642:                                             ; preds = %1639
  store ptr @.str.14, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2337

1643:                                             ; preds = %1639
  %1644 = and i32 %1632, 15
  store i32 %1644, ptr %72, align 4, !tbaa !53
  store i32 16201, ptr %21, align 8, !tbaa !20
  br label %1645

1645:                                             ; preds = %1643, %101
  %1646 = phi i32 [ %1644, %1643 ], [ %102, %101 ]
  %1647 = phi ptr [ %1615, %1643 ], [ %90, %101 ]
  %1648 = phi i32 [ %1616, %1643 ], [ %92, %101 ]
  %1649 = phi i64 [ %1624, %1643 ], [ %94, %101 ]
  %1650 = phi i32 [ %1626, %1643 ], [ %95, %101 ]
  %1651 = phi i32 [ %1474, %1643 ], [ %97, %101 ]
  %1652 = icmp eq i32 %1646, 0
  br i1 %1652, label %1709, label %1653

1653:                                             ; preds = %1645
  %1654 = icmp ult i32 %1650, %1646
  br i1 %1654, label %1655, label %.loopexit179

1655:                                             ; preds = %1653
  %1656 = icmp eq i32 %1648, 0
  br i1 %1656, label %.loopexit180, label %1657

1657:                                             ; preds = %1655
  %1658 = zext i32 %1650 to i64
  br label %1661

1659:                                             ; preds = %1678
  %1660 = icmp eq i32 %1666, 0
  br i1 %1660, label %.loopexit180, label %1661, !llvm.loop !91

1661:                                             ; preds = %1659, %1657
  %1662 = phi ptr [ %1647, %1657 ], [ %1667, %1659 ]
  %1663 = phi i32 [ %1648, %1657 ], [ %1666, %1659 ]
  %1664 = phi i64 [ %1649, %1657 ], [ %1672, %1659 ]
  %1665 = phi i64 [ %1658, %1657 ], [ %1679, %1659 ]
  %1666 = add i32 %1663, -1
  %1667 = getelementptr inbounds nuw i8, ptr %1662, i64 1
  %1668 = load i8, ptr %1662, align 1, !tbaa !44
  %1669 = zext i8 %1668 to i64
  %1670 = shl i64 %1669, %1665
  %1671 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1664, i64 %1670), !nosanitize !47
  %1672 = extractvalue { i64, i1 } %1671, 0, !nosanitize !47
  %1673 = extractvalue { i64, i1 } %1671, 1, !nosanitize !47
  br i1 %1673, label %1674, label %1675, !prof !48, !nosanitize !47

1674:                                             ; preds = %1661
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1675:                                             ; preds = %1661
  %1676 = icmp samesign ugt i64 %1665, 4294967287
  br i1 %1676, label %1677, label %1678, !prof !48, !nosanitize !47

1677:                                             ; preds = %1675
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1678:                                             ; preds = %1675
  %1679 = add nuw nsw i64 %1665, 8
  %1680 = trunc nuw i64 %1679 to i32
  %1681 = icmp ugt i32 %1646, %1680
  br i1 %1681, label %1659, label %.loopexit179, !llvm.loop !91

.loopexit179:                                     ; preds = %1678, %1653
  %1682 = phi ptr [ %1647, %1653 ], [ %1667, %1678 ]
  %1683 = phi i32 [ %1648, %1653 ], [ %1666, %1678 ]
  %1684 = phi i64 [ %1649, %1653 ], [ %1672, %1678 ]
  %1685 = phi i32 [ %1650, %1653 ], [ %1680, %1678 ]
  %1686 = shl nsw i32 -1, %1646
  %1687 = xor i32 %1686, -1
  %1688 = trunc i64 %1684 to i32
  %1689 = and i32 %1688, %1687
  %1690 = load i32, ptr %56, align 4, !tbaa !61
  %1691 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1690, i32 %1689), !nosanitize !47
  %1692 = extractvalue { i32, i1 } %1691, 1, !nosanitize !47
  br i1 %1692, label %1693, label %1694, !prof !48, !nosanitize !47

1693:                                             ; preds = %.loopexit179
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1694:                                             ; preds = %.loopexit179
  %1695 = extractvalue { i32, i1 } %1691, 0, !nosanitize !47
  store i32 %1695, ptr %56, align 4, !tbaa !61
  %1696 = zext nneg i32 %1646 to i64
  %1697 = lshr i64 %1684, %1696
  %1698 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1685, i32 %1646), !nosanitize !47
  %1699 = extractvalue { i32, i1 } %1698, 0, !nosanitize !47
  %1700 = extractvalue { i32, i1 } %1698, 1, !nosanitize !47
  br i1 %1700, label %1701, label %1702, !prof !48, !nosanitize !47

1701:                                             ; preds = %1694
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1702:                                             ; preds = %1694
  %1703 = load i32, ptr %71, align 4, !tbaa !37
  %1704 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1703, i32 %1646), !nosanitize !47
  %1705 = extractvalue { i32, i1 } %1704, 1, !nosanitize !47
  br i1 %1705, label %1706, label %1707, !prof !48, !nosanitize !47

1706:                                             ; preds = %1702
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1707:                                             ; preds = %1702
  %1708 = extractvalue { i32, i1 } %1704, 0, !nosanitize !47
  store i32 %1708, ptr %71, align 4, !tbaa !37
  br label %1709

1709:                                             ; preds = %1707, %1645
  %1710 = phi ptr [ %1682, %1707 ], [ %1647, %1645 ]
  %1711 = phi i32 [ %1683, %1707 ], [ %1648, %1645 ]
  %1712 = phi i64 [ %1697, %1707 ], [ %1649, %1645 ]
  %1713 = phi i32 [ %1699, %1707 ], [ %1650, %1645 ]
  %1714 = load i32, ptr %56, align 4, !tbaa !61
  store i32 %1714, ptr %73, align 8, !tbaa !92
  store i32 16202, ptr %21, align 8, !tbaa !20
  br label %1715

1715:                                             ; preds = %1709, %88
  %1716 = phi ptr [ %1710, %1709 ], [ %90, %88 ]
  %1717 = phi i32 [ %1711, %1709 ], [ %92, %88 ]
  %1718 = phi i64 [ %1712, %1709 ], [ %94, %88 ]
  %1719 = phi i32 [ %1713, %1709 ], [ %95, %88 ]
  %1720 = phi i32 [ %1651, %1709 ], [ %97, %88 ]
  %1721 = load i32, ptr %69, align 4, !tbaa !90
  %1722 = shl nsw i32 -1, %1721
  %1723 = xor i32 %1722, -1
  %1724 = load ptr, ptr %64, align 8, !tbaa !34
  %1725 = trunc i64 %1718 to i32
  %1726 = and i32 %1723, %1725
  %1727 = zext nneg i32 %1726 to i64
  %1728 = getelementptr inbounds nuw [4 x i8], ptr %1724, i64 %1727
  %1729 = getelementptr inbounds nuw i8, ptr %1728, i64 1
  %1730 = load i8, ptr %1729, align 1, !tbaa !44
  %1731 = zext i8 %1730 to i32
  %1732 = icmp ult i32 %1719, %1731
  br i1 %1732, label %1733, label %1766

1733:                                             ; preds = %1715
  %1734 = icmp eq i32 %1717, 0
  br i1 %1734, label %.loopexit178, label %1735

1735:                                             ; preds = %1733
  %1736 = zext nneg i32 %1719 to i64
  br label %1739

1737:                                             ; preds = %1750
  %1738 = icmp eq i32 %1753, 0
  br i1 %1738, label %.loopexit178, label %1739

1739:                                             ; preds = %1737, %1735
  %1740 = phi ptr [ %1716, %1735 ], [ %1752, %1737 ]
  %1741 = phi i32 [ %1717, %1735 ], [ %1753, %1737 ]
  %1742 = phi i64 [ %1718, %1735 ], [ %1751, %1737 ]
  %1743 = phi i64 [ %1736, %1735 ], [ %1754, %1737 ]
  %1744 = load i8, ptr %1740, align 1, !tbaa !44
  %1745 = zext i8 %1744 to i64
  %1746 = shl i64 %1745, %1743
  %1747 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1742, i64 %1746), !nosanitize !47
  %1748 = extractvalue { i64, i1 } %1747, 1, !nosanitize !47
  br i1 %1748, label %1749, label %1750, !prof !48, !nosanitize !47

1749:                                             ; preds = %1739
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1750:                                             ; preds = %1739
  %1751 = extractvalue { i64, i1 } %1747, 0, !nosanitize !47
  %1752 = getelementptr inbounds nuw i8, ptr %1740, i64 1
  %1753 = add i32 %1741, -1
  %1754 = add nuw nsw i64 %1743, 8
  %1755 = trunc i64 %1751 to i32
  %1756 = and i32 %1755, %1723
  %1757 = zext nneg i32 %1756 to i64
  %1758 = getelementptr inbounds nuw [4 x i8], ptr %1724, i64 %1757
  %1759 = getelementptr inbounds nuw i8, ptr %1758, i64 1
  %1760 = load i8, ptr %1759, align 1, !tbaa !44
  %1761 = zext i8 %1760 to i64
  %1762 = icmp samesign ult i64 %1754, %1761
  br i1 %1762, label %1737, label %1763

1763:                                             ; preds = %1750
  %1764 = zext i8 %1760 to i32
  %1765 = trunc nuw nsw i64 %1754 to i32
  br label %1766

1766:                                             ; preds = %1763, %1715
  %1767 = phi ptr [ %1728, %1715 ], [ %1758, %1763 ]
  %1768 = phi ptr [ %1716, %1715 ], [ %1752, %1763 ]
  %1769 = phi i32 [ %1717, %1715 ], [ %1753, %1763 ]
  %1770 = phi i64 [ %1718, %1715 ], [ %1751, %1763 ]
  %1771 = phi i32 [ %1719, %1715 ], [ %1765, %1763 ]
  %1772 = phi i8 [ %1730, %1715 ], [ %1760, %1763 ]
  %1773 = phi i32 [ %1731, %1715 ], [ %1764, %1763 ]
  %1774 = getelementptr inbounds nuw i8, ptr %1767, i64 2
  %1775 = load i16, ptr %1774, align 2, !tbaa !77
  %1776 = load i8, ptr %1767, align 2, !tbaa !44
  %1777 = icmp ult i8 %1776, 16
  br i1 %1777, label %1778, label %1846

1778:                                             ; preds = %1766
  %1779 = zext nneg i8 %1776 to i32
  %1780 = add nuw nsw i32 %1773, %1779
  %1781 = shl nsw i32 -1, %1780
  %1782 = xor i32 %1781, -1
  %1783 = zext i16 %1775 to i32
  %1784 = trunc i64 %1770 to i32
  %1785 = and i32 %1782, %1784
  %1786 = lshr i32 %1785, %1773
  %1787 = add nuw i32 %1786, %1783
  %1788 = zext i32 %1787 to i64
  %1789 = getelementptr inbounds nuw [4 x i8], ptr %1724, i64 %1788
  %1790 = getelementptr inbounds nuw i8, ptr %1789, i64 1
  %1791 = load i8, ptr %1790, align 1, !tbaa !44
  %1792 = zext i8 %1791 to i32
  %1793 = add nuw nsw i32 %1773, %1792
  %1794 = icmp ugt i32 %1793, %1771
  br i1 %1794, label %1795, label %1831

1795:                                             ; preds = %1778
  %1796 = icmp eq i32 %1769, 0
  br i1 %1796, label %.loopexit177, label %1797

1797:                                             ; preds = %1795
  %1798 = zext nneg i32 %1771 to i64
  br label %1801

1799:                                             ; preds = %1812
  %1800 = icmp eq i32 %1815, 0
  br i1 %1800, label %.loopexit177, label %1801

1801:                                             ; preds = %1799, %1797
  %1802 = phi ptr [ %1768, %1797 ], [ %1814, %1799 ]
  %1803 = phi i32 [ %1769, %1797 ], [ %1815, %1799 ]
  %1804 = phi i64 [ %1770, %1797 ], [ %1813, %1799 ]
  %1805 = phi i64 [ %1798, %1797 ], [ %1816, %1799 ]
  %1806 = load i8, ptr %1802, align 1, !tbaa !44
  %1807 = zext i8 %1806 to i64
  %1808 = shl i64 %1807, %1805
  %1809 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1804, i64 %1808), !nosanitize !47
  %1810 = extractvalue { i64, i1 } %1809, 1, !nosanitize !47
  br i1 %1810, label %1811, label %1812, !prof !48, !nosanitize !47

1811:                                             ; preds = %1801
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1812:                                             ; preds = %1801
  %1813 = extractvalue { i64, i1 } %1809, 0, !nosanitize !47
  %1814 = getelementptr inbounds nuw i8, ptr %1802, i64 1
  %1815 = add i32 %1803, -1
  %1816 = add nuw nsw i64 %1805, 8
  %1817 = trunc i64 %1813 to i32
  %1818 = and i32 %1817, %1782
  %1819 = lshr i32 %1818, %1773
  %1820 = add nuw i32 %1819, %1783
  %1821 = zext i32 %1820 to i64
  %1822 = getelementptr inbounds nuw [4 x i8], ptr %1724, i64 %1821
  %1823 = getelementptr inbounds nuw i8, ptr %1822, i64 1
  %1824 = load i8, ptr %1823, align 1, !tbaa !44
  %1825 = zext i8 %1824 to i32
  %1826 = add nuw nsw i32 %1773, %1825
  %1827 = zext nneg i32 %1826 to i64
  %1828 = icmp samesign ult i64 %1816, %1827
  br i1 %1828, label %1799, label %1829

1829:                                             ; preds = %1812
  %1830 = trunc nuw nsw i64 %1816 to i32
  br label %1831

1831:                                             ; preds = %1829, %1778
  %1832 = phi ptr [ %1768, %1778 ], [ %1814, %1829 ]
  %1833 = phi i32 [ %1769, %1778 ], [ %1815, %1829 ]
  %1834 = phi i64 [ %1770, %1778 ], [ %1813, %1829 ]
  %1835 = phi i32 [ %1771, %1778 ], [ %1830, %1829 ]
  %1836 = phi ptr [ %1789, %1778 ], [ %1822, %1829 ]
  %1837 = phi i8 [ %1791, %1778 ], [ %1824, %1829 ]
  %1838 = getelementptr inbounds nuw i8, ptr %1836, i64 2
  %1839 = load i16, ptr %1838, align 2, !tbaa !77
  %1840 = load i8, ptr %1836, align 2, !tbaa !44
  %1841 = sub nuw i32 %1835, %1773
  %1842 = zext nneg i8 %1772 to i64
  %1843 = lshr i64 %1834, %1842
  %1844 = load i32, ptr %71, align 4, !tbaa !37
  %1845 = add nsw i32 %1844, %1773
  store i32 %1845, ptr %71, align 4, !tbaa !37
  br label %1846

1846:                                             ; preds = %1831, %1766
  %1847 = phi ptr [ %1832, %1831 ], [ %1768, %1766 ]
  %1848 = phi i32 [ %1833, %1831 ], [ %1769, %1766 ]
  %1849 = phi i64 [ %1843, %1831 ], [ %1770, %1766 ]
  %1850 = phi i32 [ %1841, %1831 ], [ %1771, %1766 ]
  %1851 = phi i16 [ %1839, %1831 ], [ %1775, %1766 ]
  %1852 = phi i8 [ %1837, %1831 ], [ %1772, %1766 ]
  %1853 = phi i8 [ %1840, %1831 ], [ %1776, %1766 ]
  %1854 = zext i8 %1852 to i32
  %1855 = zext nneg i8 %1852 to i64
  %1856 = lshr i64 %1849, %1855
  %1857 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1850, i32 %1854), !nosanitize !47
  %1858 = extractvalue { i32, i1 } %1857, 0, !nosanitize !47
  %1859 = extractvalue { i32, i1 } %1857, 1, !nosanitize !47
  br i1 %1859, label %1860, label %1861, !prof !48, !nosanitize !47

1860:                                             ; preds = %1846
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1861:                                             ; preds = %1846
  %1862 = load i32, ptr %71, align 4, !tbaa !37
  %1863 = add nsw i32 %1862, %1854
  store i32 %1863, ptr %71, align 4, !tbaa !37
  %1864 = zext i8 %1853 to i32
  %1865 = and i32 %1864, 64
  %1866 = icmp eq i32 %1865, 0
  br i1 %1866, label %1868, label %1867

1867:                                             ; preds = %1861
  store ptr @.str.15, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2337

1868:                                             ; preds = %1861
  %1869 = zext i16 %1851 to i32
  store i32 %1869, ptr %74, align 8, !tbaa !93
  %1870 = and i32 %1864, 15
  store i32 %1870, ptr %72, align 4, !tbaa !53
  store i32 16203, ptr %21, align 8, !tbaa !20
  br label %1871

1871:                                             ; preds = %1868, %99
  %1872 = phi i32 [ %1870, %1868 ], [ %100, %99 ]
  %1873 = phi ptr [ %1847, %1868 ], [ %90, %99 ]
  %1874 = phi i32 [ %1848, %1868 ], [ %92, %99 ]
  %1875 = phi i64 [ %1856, %1868 ], [ %94, %99 ]
  %1876 = phi i32 [ %1858, %1868 ], [ %95, %99 ]
  %1877 = phi i32 [ %1720, %1868 ], [ %97, %99 ]
  %1878 = icmp eq i32 %1872, 0
  br i1 %1878, label %1935, label %1879

1879:                                             ; preds = %1871
  %1880 = icmp ult i32 %1876, %1872
  br i1 %1880, label %1881, label %.loopexit175

1881:                                             ; preds = %1879
  %1882 = icmp eq i32 %1874, 0
  br i1 %1882, label %.loopexit176, label %1883

1883:                                             ; preds = %1881
  %1884 = zext i32 %1876 to i64
  br label %1887

1885:                                             ; preds = %1904
  %1886 = icmp eq i32 %1892, 0
  br i1 %1886, label %.loopexit176, label %1887, !llvm.loop !94

1887:                                             ; preds = %1885, %1883
  %1888 = phi ptr [ %1873, %1883 ], [ %1893, %1885 ]
  %1889 = phi i32 [ %1874, %1883 ], [ %1892, %1885 ]
  %1890 = phi i64 [ %1875, %1883 ], [ %1898, %1885 ]
  %1891 = phi i64 [ %1884, %1883 ], [ %1905, %1885 ]
  %1892 = add i32 %1889, -1
  %1893 = getelementptr inbounds nuw i8, ptr %1888, i64 1
  %1894 = load i8, ptr %1888, align 1, !tbaa !44
  %1895 = zext i8 %1894 to i64
  %1896 = shl i64 %1895, %1891
  %1897 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1890, i64 %1896), !nosanitize !47
  %1898 = extractvalue { i64, i1 } %1897, 0, !nosanitize !47
  %1899 = extractvalue { i64, i1 } %1897, 1, !nosanitize !47
  br i1 %1899, label %1900, label %1901, !prof !48, !nosanitize !47

1900:                                             ; preds = %1887
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1901:                                             ; preds = %1887
  %1902 = icmp samesign ugt i64 %1891, 4294967287
  br i1 %1902, label %1903, label %1904, !prof !48, !nosanitize !47

1903:                                             ; preds = %1901
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1904:                                             ; preds = %1901
  %1905 = add nuw nsw i64 %1891, 8
  %1906 = trunc nuw i64 %1905 to i32
  %1907 = icmp ugt i32 %1872, %1906
  br i1 %1907, label %1885, label %.loopexit175, !llvm.loop !94

.loopexit175:                                     ; preds = %1904, %1879
  %1908 = phi ptr [ %1873, %1879 ], [ %1893, %1904 ]
  %1909 = phi i32 [ %1874, %1879 ], [ %1892, %1904 ]
  %1910 = phi i64 [ %1875, %1879 ], [ %1898, %1904 ]
  %1911 = phi i32 [ %1876, %1879 ], [ %1906, %1904 ]
  %1912 = shl nsw i32 -1, %1872
  %1913 = xor i32 %1912, -1
  %1914 = trunc i64 %1910 to i32
  %1915 = and i32 %1914, %1913
  %1916 = load i32, ptr %74, align 8, !tbaa !93
  %1917 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1916, i32 %1915), !nosanitize !47
  %1918 = extractvalue { i32, i1 } %1917, 1, !nosanitize !47
  br i1 %1918, label %1919, label %1920, !prof !48, !nosanitize !47

1919:                                             ; preds = %.loopexit175
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1920:                                             ; preds = %.loopexit175
  %1921 = extractvalue { i32, i1 } %1917, 0, !nosanitize !47
  store i32 %1921, ptr %74, align 8, !tbaa !93
  %1922 = zext nneg i32 %1872 to i64
  %1923 = lshr i64 %1910, %1922
  %1924 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1911, i32 %1872), !nosanitize !47
  %1925 = extractvalue { i32, i1 } %1924, 0, !nosanitize !47
  %1926 = extractvalue { i32, i1 } %1924, 1, !nosanitize !47
  br i1 %1926, label %1927, label %1928, !prof !48, !nosanitize !47

1927:                                             ; preds = %1920
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1928:                                             ; preds = %1920
  %1929 = load i32, ptr %71, align 4, !tbaa !37
  %1930 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1929, i32 %1872), !nosanitize !47
  %1931 = extractvalue { i32, i1 } %1930, 1, !nosanitize !47
  br i1 %1931, label %1932, label %1933, !prof !48, !nosanitize !47

1932:                                             ; preds = %1928
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1933:                                             ; preds = %1928
  %1934 = extractvalue { i32, i1 } %1930, 0, !nosanitize !47
  store i32 %1934, ptr %71, align 4, !tbaa !37
  br label %1935

1935:                                             ; preds = %1933, %1871
  %1936 = phi ptr [ %1908, %1933 ], [ %1873, %1871 ]
  %1937 = phi i32 [ %1909, %1933 ], [ %1874, %1871 ]
  %1938 = phi i64 [ %1923, %1933 ], [ %1875, %1871 ]
  %1939 = phi i32 [ %1925, %1933 ], [ %1876, %1871 ]
  store i32 16204, ptr %21, align 8, !tbaa !20
  br label %1940

1940:                                             ; preds = %1935, %88
  %1941 = phi ptr [ %1936, %1935 ], [ %90, %88 ]
  %1942 = phi i32 [ %1937, %1935 ], [ %92, %88 ]
  %1943 = phi i64 [ %1938, %1935 ], [ %94, %88 ]
  %1944 = phi i32 [ %1939, %1935 ], [ %95, %88 ]
  %1945 = phi i32 [ %1877, %1935 ], [ %97, %88 ]
  %1946 = icmp eq i32 %93, 0
  br i1 %1946, label %.loopexit185, label %1947

1947:                                             ; preds = %1940
  %1948 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %96, i32 %93), !nosanitize !47
  %1949 = extractvalue { i32, i1 } %1948, 0, !nosanitize !47
  %1950 = extractvalue { i32, i1 } %1948, 1, !nosanitize !47
  br i1 %1950, label %1951, label %1952, !prof !48, !nosanitize !47

1951:                                             ; preds = %1947
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1952:                                             ; preds = %1947
  %1953 = load i32, ptr %74, align 8, !tbaa !93
  %1954 = icmp ugt i32 %1953, %1949
  br i1 %1954, label %1955, label %1984

1955:                                             ; preds = %1952
  %1956 = sub nuw i32 %1953, %1949
  %1957 = load i32, ptr %75, align 8, !tbaa !39
  %1958 = icmp ugt i32 %1956, %1957
  br i1 %1958, label %1959, label %1963

1959:                                             ; preds = %1955
  %1960 = load i32, ptr %76, align 8, !tbaa !36
  %1961 = icmp eq i32 %1960, 0
  br i1 %1961, label %1963, label %1962

1962:                                             ; preds = %1959
  store ptr @.str.16, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2337

1963:                                             ; preds = %1959, %1955
  %1964 = load i32, ptr %77, align 4, !tbaa !40
  %1965 = icmp ugt i32 %1956, %1964
  br i1 %1965, label %1966, label %1974

1966:                                             ; preds = %1963
  %1967 = sub nuw i32 %1956, %1964
  %1968 = load i32, ptr %79, align 4, !tbaa !38
  %1969 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1968, i32 %1967), !nosanitize !47
  %1970 = extractvalue { i32, i1 } %1969, 1, !nosanitize !47
  br i1 %1970, label %1971, label %1972, !prof !48, !nosanitize !47

1971:                                             ; preds = %1966
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1972:                                             ; preds = %1966
  %1973 = extractvalue { i32, i1 } %1969, 0, !nosanitize !47
  br label %1976

1974:                                             ; preds = %1963
  %1975 = sub nuw i32 %1964, %1956
  br label %1976

1976:                                             ; preds = %1974, %1972
  %1977 = phi i32 [ %1975, %1974 ], [ %1973, %1972 ]
  %1978 = phi i32 [ %1956, %1974 ], [ %1967, %1972 ]
  %1979 = load ptr, ptr %78, align 8, !tbaa !41
  %1980 = zext i32 %1977 to i64
  %1981 = getelementptr inbounds nuw i8, ptr %1979, i64 %1980
  %1982 = load i32, ptr %56, align 4, !tbaa !61
  %1983 = call i32 @llvm.umin.i32(i32 %1978, i32 %1982)
  br label %1989

1984:                                             ; preds = %1952
  %1985 = zext i32 %1953 to i64
  %1986 = sub nsw i64 0, %1985
  %1987 = getelementptr inbounds i8, ptr %91, i64 %1986
  %1988 = load i32, ptr %56, align 4, !tbaa !61
  br label %1989

1989:                                             ; preds = %1984, %1976
  %1990 = phi i32 [ %1988, %1984 ], [ %1982, %1976 ]
  %1991 = phi i32 [ %1988, %1984 ], [ %1983, %1976 ]
  %1992 = phi ptr [ %1987, %1984 ], [ %1981, %1976 ]
  %1993 = ptrtoaddr ptr %1992 to i64
  %1994 = call i32 @llvm.umin.i32(i32 %1991, i32 %93)
  %1995 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %93, i32 %1994), !nosanitize !47
  %1996 = extractvalue { i32, i1 } %1995, 0, !nosanitize !47
  %1997 = extractvalue { i32, i1 } %1995, 1, !nosanitize !47
  br i1 %1997, label %1998, label %1999, !prof !48, !nosanitize !47

1998:                                             ; preds = %1989
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1999:                                             ; preds = %1989
  %2000 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1990, i32 %1994), !nosanitize !47
  %2001 = extractvalue { i32, i1 } %2000, 1, !nosanitize !47
  br i1 %2001, label %2002, label %2003, !prof !48, !nosanitize !47

2002:                                             ; preds = %1999
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2003:                                             ; preds = %1999
  %2004 = extractvalue { i32, i1 } %2000, 0, !nosanitize !47
  store i32 %2004, ptr %56, align 4, !tbaa !61
  %2005 = icmp eq i32 %1994, 0
  br i1 %2005, label %2072, label %2006, !prof !48, !nosanitize !47

2006:                                             ; preds = %2003
  %2007 = zext i32 %1994 to i64
  %2008 = icmp ult i32 %1994, 4
  %2009 = sub i64 %98, %1993
  %2010 = icmp ult i64 %2009, 32
  %2011 = select i1 %2008, i1 true, i1 %2010
  br i1 %2011, label %2051, label %2012

2012:                                             ; preds = %2006
  %2013 = icmp ult i32 %1994, 32
  br i1 %2013, label %2035, label %2014

2014:                                             ; preds = %2012
  %2015 = and i64 %2007, 4294967264
  br label %2016

2016:                                             ; preds = %2016, %2014
  %2017 = phi i64 [ 0, %2014 ], [ %2024, %2016 ]
  %2018 = getelementptr i8, ptr %91, i64 %2017
  %2019 = getelementptr i8, ptr %1992, i64 %2017
  %2020 = getelementptr i8, ptr %2019, i64 16
  %2021 = load <16 x i8>, ptr %2019, align 1, !tbaa !44
  %2022 = load <16 x i8>, ptr %2020, align 1, !tbaa !44
  %2023 = getelementptr i8, ptr %2018, i64 16
  store <16 x i8> %2021, ptr %2018, align 1, !tbaa !44
  store <16 x i8> %2022, ptr %2023, align 1, !tbaa !44
  %2024 = add nuw i64 %2017, 32
  %2025 = icmp eq i64 %2024, %2015
  br i1 %2025, label %2026, label %2016, !llvm.loop !95

2026:                                             ; preds = %2016
  %2027 = getelementptr i8, ptr %91, i64 %2015
  %2028 = icmp eq i64 %2015, %2007
  br i1 %2028, label %.loopexit172, label %2029

2029:                                             ; preds = %2026
  %2030 = getelementptr i8, ptr %1992, i64 %2015
  %2031 = trunc nuw i64 %2015 to i32
  %2032 = sub i32 %1994, %2031
  %2033 = and i64 %2007, 28
  %2034 = icmp eq i64 %2033, 0
  br i1 %2034, label %2051, label %2035, !prof !98

2035:                                             ; preds = %2029, %2012
  %2036 = phi i64 [ %2015, %2029 ], [ 0, %2012 ]
  %2037 = and i64 %2007, 4294967292
  br label %2038

2038:                                             ; preds = %2038, %2035
  %2039 = phi i64 [ %2036, %2035 ], [ %2043, %2038 ]
  %2040 = getelementptr i8, ptr %91, i64 %2039
  %2041 = getelementptr i8, ptr %1992, i64 %2039
  %2042 = load <4 x i8>, ptr %2041, align 1, !tbaa !44
  store <4 x i8> %2042, ptr %2040, align 1, !tbaa !44
  %2043 = add nuw i64 %2039, 4
  %2044 = icmp eq i64 %2043, %2037
  br i1 %2044, label %2045, label %2038, !llvm.loop !99

2045:                                             ; preds = %2038
  %2046 = getelementptr i8, ptr %91, i64 %2037
  %2047 = trunc nuw i64 %2037 to i32
  %2048 = sub i32 %1994, %2047
  %2049 = getelementptr i8, ptr %1992, i64 %2037
  %2050 = icmp eq i64 %2037, %2007
  br i1 %2050, label %.loopexit172, label %2051

2051:                                             ; preds = %2045, %2029, %2006
  %2052 = phi ptr [ %91, %2006 ], [ %2027, %2029 ], [ %2046, %2045 ]
  %2053 = phi i32 [ %1994, %2006 ], [ %2032, %2029 ], [ %2048, %2045 ]
  %2054 = phi ptr [ %1992, %2006 ], [ %2030, %2029 ], [ %2049, %2045 ]
  %2055 = add i32 %2053, -1
  %2056 = and i32 %2053, 7
  %2057 = icmp eq i32 %2056, 0
  br i1 %2057, label %.loopexit174, label %.preheader173

.preheader173:                                    ; preds = %2051, %.preheader173
  %2058 = phi ptr [ %2062, %.preheader173 ], [ %2052, %2051 ]
  %2059 = phi ptr [ %2063, %.preheader173 ], [ %2054, %2051 ]
  %2060 = phi i32 [ %2064, %.preheader173 ], [ 0, %2051 ]
  %2061 = load i8, ptr %2059, align 1, !tbaa !44
  store i8 %2061, ptr %2058, align 1, !tbaa !44
  %2062 = getelementptr inbounds nuw i8, ptr %2058, i64 1
  %2063 = getelementptr inbounds nuw i8, ptr %2059, i64 1
  %2064 = add nuw nsw i32 %2060, 1
  %2065 = icmp eq i32 %2064, %2056
  br i1 %2065, label %.loopexit174.loopexit, label %.preheader173, !llvm.loop !100

.loopexit174.loopexit:                            ; preds = %.preheader173
  %2066 = and i32 %2053, -8
  br label %.loopexit174

.loopexit174:                                     ; preds = %.loopexit174.loopexit, %2051
  %2067 = phi ptr [ poison, %2051 ], [ %2062, %.loopexit174.loopexit ]
  %2068 = phi ptr [ %2052, %2051 ], [ %2062, %.loopexit174.loopexit ]
  %2069 = phi i32 [ %2053, %2051 ], [ %2066, %.loopexit174.loopexit ]
  %2070 = phi ptr [ %2054, %2051 ], [ %2063, %.loopexit174.loopexit ]
  %2071 = icmp ult i32 %2055, 7
  br i1 %2071, label %.loopexit172, label %.preheader171

2072:                                             ; preds = %2003
  %2073 = load i8, ptr %1992, align 1, !tbaa !44
  store i8 %2073, ptr %91, align 1, !tbaa !44
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

.preheader171:                                    ; preds = %.loopexit174, %.preheader171
  %2074 = phi ptr [ %2099, %.preheader171 ], [ %2068, %.loopexit174 ]
  %2075 = phi i32 [ %2100, %.preheader171 ], [ %2069, %.loopexit174 ]
  %2076 = phi ptr [ %2101, %.preheader171 ], [ %2070, %.loopexit174 ]
  %2077 = load i8, ptr %2076, align 1, !tbaa !44
  store i8 %2077, ptr %2074, align 1, !tbaa !44
  %2078 = getelementptr inbounds nuw i8, ptr %2074, i64 1
  %2079 = getelementptr inbounds nuw i8, ptr %2076, i64 1
  %2080 = load i8, ptr %2079, align 1, !tbaa !44
  store i8 %2080, ptr %2078, align 1, !tbaa !44
  %2081 = getelementptr inbounds nuw i8, ptr %2074, i64 2
  %2082 = getelementptr inbounds nuw i8, ptr %2076, i64 2
  %2083 = load i8, ptr %2082, align 1, !tbaa !44
  store i8 %2083, ptr %2081, align 1, !tbaa !44
  %2084 = getelementptr inbounds nuw i8, ptr %2074, i64 3
  %2085 = getelementptr inbounds nuw i8, ptr %2076, i64 3
  %2086 = load i8, ptr %2085, align 1, !tbaa !44
  store i8 %2086, ptr %2084, align 1, !tbaa !44
  %2087 = getelementptr inbounds nuw i8, ptr %2074, i64 4
  %2088 = getelementptr inbounds nuw i8, ptr %2076, i64 4
  %2089 = load i8, ptr %2088, align 1, !tbaa !44
  store i8 %2089, ptr %2087, align 1, !tbaa !44
  %2090 = getelementptr inbounds nuw i8, ptr %2074, i64 5
  %2091 = getelementptr inbounds nuw i8, ptr %2076, i64 5
  %2092 = load i8, ptr %2091, align 1, !tbaa !44
  store i8 %2092, ptr %2090, align 1, !tbaa !44
  %2093 = getelementptr inbounds nuw i8, ptr %2074, i64 6
  %2094 = getelementptr inbounds nuw i8, ptr %2076, i64 6
  %2095 = load i8, ptr %2094, align 1, !tbaa !44
  store i8 %2095, ptr %2093, align 1, !tbaa !44
  %2096 = getelementptr inbounds nuw i8, ptr %2074, i64 7
  %2097 = getelementptr inbounds nuw i8, ptr %2076, i64 7
  %2098 = load i8, ptr %2097, align 1, !tbaa !44
  store i8 %2098, ptr %2096, align 1, !tbaa !44
  %2099 = getelementptr inbounds nuw i8, ptr %2074, i64 8
  %2100 = add i32 %2075, -8
  %2101 = getelementptr inbounds nuw i8, ptr %2076, i64 8
  %2102 = icmp eq i32 %2100, 0
  br i1 %2102, label %.loopexit172, label %.preheader171, !llvm.loop !102

.loopexit172:                                     ; preds = %.preheader171, %.loopexit174, %2045, %2026
  %2103 = phi ptr [ %2046, %2045 ], [ %2027, %2026 ], [ %2067, %.loopexit174 ], [ %2099, %.preheader171 ]
  %2104 = load i32, ptr %56, align 4, !tbaa !61
  %2105 = icmp eq i32 %2104, 0
  br i1 %2105, label %2106, label %2337

2106:                                             ; preds = %.loopexit172
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2337

2107:                                             ; preds = %88
  %2108 = icmp eq i32 %93, 0
  br i1 %2108, label %.loopexit185, label %2109

2109:                                             ; preds = %2107
  %2110 = load i32, ptr %56, align 4, !tbaa !61
  %2111 = trunc i32 %2110 to i8
  store i8 %2111, ptr %91, align 1, !tbaa !44
  %2112 = add i32 %93, -1
  %2113 = getelementptr inbounds nuw i8, ptr %91, i64 1
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2337

2114:                                             ; preds = %88
  %2115 = load i32, ptr %49, align 8, !tbaa !24
  %2116 = icmp eq i32 %2115, 0
  br i1 %2116, label %2237, label %2117

2117:                                             ; preds = %2114
  %2118 = icmp ult i32 %95, 32
  br i1 %2118, label %2119, label %2182

2119:                                             ; preds = %2117
  %2120 = zext nneg i32 %95 to i64
  %2121 = icmp eq i32 %92, 0
  br i1 %2121, label %2457, label %2122

2122:                                             ; preds = %2119
  %2123 = load i8, ptr %90, align 1, !tbaa !44
  %2124 = zext i8 %2123 to i64
  %2125 = shl nuw nsw i64 %2124, %2120
  %2126 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %2125), !nosanitize !47
  %2127 = extractvalue { i64, i1 } %2126, 1, !nosanitize !47
  br i1 %2127, label %2128, label %2129, !prof !48, !nosanitize !47

2128:                                             ; preds = %2165, %2151, %2137, %2122
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2129:                                             ; preds = %2122
  %2130 = extractvalue { i64, i1 } %2126, 0, !nosanitize !47
  %2131 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %2132 = add i32 %92, -1
  %2133 = add nuw nsw i64 %2120, 8
  %2134 = icmp samesign ult i32 %95, 24
  br i1 %2134, label %2135, label %2176

2135:                                             ; preds = %2129
  %2136 = icmp eq i32 %2132, 0
  br i1 %2136, label %2457, label %2137

2137:                                             ; preds = %2135
  %2138 = load i8, ptr %2131, align 1, !tbaa !44
  %2139 = zext i8 %2138 to i64
  %2140 = shl nuw nsw i64 %2139, %2133
  %2141 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2130, i64 %2140), !nosanitize !47
  %2142 = extractvalue { i64, i1 } %2141, 1, !nosanitize !47
  br i1 %2142, label %2128, label %2143, !prof !48, !nosanitize !47

2143:                                             ; preds = %2137
  %2144 = extractvalue { i64, i1 } %2141, 0, !nosanitize !47
  %2145 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %2146 = add i32 %92, -2
  %2147 = add nuw nsw i64 %2120, 16
  %2148 = icmp samesign ult i32 %95, 16
  br i1 %2148, label %2149, label %2176

2149:                                             ; preds = %2143
  %2150 = icmp eq i32 %2146, 0
  br i1 %2150, label %2457, label %2151

2151:                                             ; preds = %2149
  %2152 = load i8, ptr %2145, align 1, !tbaa !44
  %2153 = zext i8 %2152 to i64
  %2154 = shl nuw nsw i64 %2153, %2147
  %2155 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2144, i64 %2154), !nosanitize !47
  %2156 = extractvalue { i64, i1 } %2155, 1, !nosanitize !47
  br i1 %2156, label %2128, label %2157, !prof !48, !nosanitize !47

2157:                                             ; preds = %2151
  %2158 = extractvalue { i64, i1 } %2155, 0, !nosanitize !47
  %2159 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %2160 = add i32 %92, -3
  %2161 = add nuw nsw i64 %2120, 24
  %2162 = icmp samesign ult i32 %95, 8
  br i1 %2162, label %2163, label %2176

2163:                                             ; preds = %2157
  %2164 = icmp eq i32 %2160, 0
  br i1 %2164, label %2457, label %2165

2165:                                             ; preds = %2163
  %2166 = load i8, ptr %2159, align 1, !tbaa !44
  %2167 = zext i8 %2166 to i64
  %2168 = shl nuw nsw i64 %2167, %2161
  %2169 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2158, i64 %2168), !nosanitize !47
  %2170 = extractvalue { i64, i1 } %2169, 1, !nosanitize !47
  br i1 %2170, label %2128, label %2171, !prof !48, !nosanitize !47

2171:                                             ; preds = %2165
  %2172 = extractvalue { i64, i1 } %2169, 0, !nosanitize !47
  %2173 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %2174 = add i32 %92, -4
  %2175 = or disjoint i64 %2120, 32
  br label %2176

2176:                                             ; preds = %2171, %2157, %2143, %2129
  %2177 = phi i64 [ %2130, %2129 ], [ %2144, %2143 ], [ %2158, %2157 ], [ %2172, %2171 ]
  %2178 = phi ptr [ %2131, %2129 ], [ %2145, %2143 ], [ %2159, %2157 ], [ %2173, %2171 ]
  %2179 = phi i32 [ %2132, %2129 ], [ %2146, %2143 ], [ %2160, %2157 ], [ %2174, %2171 ]
  %2180 = phi i64 [ %2133, %2129 ], [ %2147, %2143 ], [ %2161, %2157 ], [ %2175, %2171 ]
  %2181 = trunc nuw nsw i64 %2180 to i32
  br label %2182

2182:                                             ; preds = %2176, %2117
  %2183 = phi ptr [ %90, %2117 ], [ %2178, %2176 ]
  %2184 = phi i32 [ %92, %2117 ], [ %2179, %2176 ]
  %2185 = phi i64 [ %94, %2117 ], [ %2177, %2176 ]
  %2186 = phi i32 [ %95, %2117 ], [ %2181, %2176 ]
  %2187 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %96, i32 %93), !nosanitize !47
  %2188 = extractvalue { i32, i1 } %2187, 0, !nosanitize !47
  %2189 = extractvalue { i32, i1 } %2187, 1, !nosanitize !47
  br i1 %2189, label %2190, label %2191, !prof !48, !nosanitize !47

2190:                                             ; preds = %2182
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2191:                                             ; preds = %2182
  %2192 = zext i32 %2188 to i64
  %2193 = load i64, ptr %50, align 8, !tbaa !103
  %2194 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2193, i64 %2192), !nosanitize !47
  %2195 = extractvalue { i64, i1 } %2194, 1, !nosanitize !47
  br i1 %2195, label %2196, label %2197, !prof !48, !nosanitize !47

2196:                                             ; preds = %2191
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2197:                                             ; preds = %2191
  %2198 = extractvalue { i64, i1 } %2194, 0, !nosanitize !47
  store i64 %2198, ptr %50, align 8, !tbaa !103
  %2199 = load i64, ptr %51, align 8, !tbaa !21
  %2200 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2199, i64 %2192), !nosanitize !47
  %2201 = extractvalue { i64, i1 } %2200, 1, !nosanitize !47
  br i1 %2201, label %2202, label %2203, !prof !48, !nosanitize !47

2202:                                             ; preds = %2197
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2203:                                             ; preds = %2197
  %2204 = extractvalue { i64, i1 } %2200, 0, !nosanitize !47
  store i64 %2204, ptr %51, align 8, !tbaa !21
  %2205 = and i32 %2115, 4
  %2206 = icmp ne i32 %2205, 0
  %2207 = icmp ne i32 %2188, 0
  %2208 = select i1 %2206, i1 %2207, i1 false
  br i1 %2208, label %2209, label %2223

2209:                                             ; preds = %2203
  %2210 = load i32, ptr %52, align 8, !tbaa !28
  %2211 = icmp eq i32 %2210, 0
  %2212 = load i64, ptr %53, align 8, !tbaa !54
  %2213 = sub nsw i64 0, %2192
  %2214 = getelementptr inbounds i8, ptr %91, i64 %2213
  br i1 %2211, label %2217, label %2215

2215:                                             ; preds = %2209
  %2216 = call i64 @crc32(i64 noundef %2212, ptr noundef nonnull %2214, i32 noundef %2188) #12
  br label %2219

2217:                                             ; preds = %2209
  %2218 = call i64 @adler32(i64 noundef %2212, ptr noundef nonnull %2214, i32 noundef %2188) #12
  br label %2219

2219:                                             ; preds = %2217, %2215
  %2220 = phi i64 [ %2216, %2215 ], [ %2218, %2217 ]
  store i64 %2220, ptr %53, align 8, !tbaa !54
  store i64 %2220, ptr %54, align 8, !tbaa !25
  %2221 = load i32, ptr %49, align 8, !tbaa !24
  %2222 = and i32 %2221, 4
  br label %2223

2223:                                             ; preds = %2219, %2203
  %2224 = phi i32 [ %2222, %2219 ], [ %2205, %2203 ]
  %2225 = phi i32 [ %2221, %2219 ], [ %2115, %2203 ]
  %2226 = icmp eq i32 %2224, 0
  br i1 %2226, label %2237, label %2227

2227:                                             ; preds = %2223
  %2228 = load i32, ptr %52, align 8, !tbaa !28
  %2229 = icmp eq i32 %2228, 0
  %2230 = trunc i64 %2185 to i32
  %2231 = call i32 @llvm.bswap.i32(i32 %2230)
  %2232 = zext i32 %2231 to i64
  %2233 = select i1 %2229, i64 %2232, i64 %2185
  %2234 = load i64, ptr %53, align 8, !tbaa !54
  %2235 = icmp eq i64 %2233, %2234
  br i1 %2235, label %2237, label %2236

2236:                                             ; preds = %2227
  store ptr @.str.17, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2337

2237:                                             ; preds = %2227, %2223, %2114
  %2238 = phi i32 [ 0, %2114 ], [ %2225, %2223 ], [ %2225, %2227 ]
  %2239 = phi ptr [ %90, %2114 ], [ %2183, %2223 ], [ %2183, %2227 ]
  %2240 = phi i32 [ %92, %2114 ], [ %2184, %2223 ], [ %2184, %2227 ]
  %2241 = phi i64 [ %94, %2114 ], [ 0, %2223 ], [ 0, %2227 ]
  %2242 = phi i32 [ %95, %2114 ], [ 0, %2223 ], [ 0, %2227 ]
  %2243 = phi i32 [ %96, %2114 ], [ %93, %2223 ], [ %93, %2227 ]
  store i32 16207, ptr %21, align 8, !tbaa !20
  br label %2244

2244:                                             ; preds = %2237, %103
  %2245 = phi i32 [ %2238, %2237 ], [ %104, %103 ]
  %2246 = phi ptr [ %2239, %2237 ], [ %90, %103 ]
  %2247 = phi i32 [ %2240, %2237 ], [ %92, %103 ]
  %2248 = phi i64 [ %2241, %2237 ], [ %94, %103 ]
  %2249 = phi i32 [ %2242, %2237 ], [ %95, %103 ]
  %2250 = phi i32 [ %2243, %2237 ], [ %96, %103 ]
  %2251 = icmp eq i32 %2245, 0
  br i1 %2251, label %2332, label %2252

2252:                                             ; preds = %2244
  %2253 = load i32, ptr %52, align 8, !tbaa !28
  %2254 = icmp eq i32 %2253, 0
  br i1 %2254, label %2332, label %2255

2255:                                             ; preds = %2252
  %2256 = icmp ult i32 %2249, 32
  br i1 %2256, label %2257, label %2320

2257:                                             ; preds = %2255
  %2258 = zext nneg i32 %2249 to i64
  %2259 = icmp eq i32 %2247, 0
  br i1 %2259, label %2451, label %2260

2260:                                             ; preds = %2257
  %2261 = load i8, ptr %2246, align 1, !tbaa !44
  %2262 = zext i8 %2261 to i64
  %2263 = shl nuw nsw i64 %2262, %2258
  %2264 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2248, i64 %2263), !nosanitize !47
  %2265 = extractvalue { i64, i1 } %2264, 1, !nosanitize !47
  br i1 %2265, label %2266, label %2267, !prof !48, !nosanitize !47

2266:                                             ; preds = %2303, %2289, %2275, %2260
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2267:                                             ; preds = %2260
  %2268 = extractvalue { i64, i1 } %2264, 0, !nosanitize !47
  %2269 = getelementptr inbounds nuw i8, ptr %2246, i64 1
  %2270 = add i32 %2247, -1
  %2271 = add nuw nsw i64 %2258, 8
  %2272 = icmp samesign ult i32 %2249, 24
  br i1 %2272, label %2273, label %2314

2273:                                             ; preds = %2267
  %2274 = icmp eq i32 %2270, 0
  br i1 %2274, label %2451, label %2275

2275:                                             ; preds = %2273
  %2276 = load i8, ptr %2269, align 1, !tbaa !44
  %2277 = zext i8 %2276 to i64
  %2278 = shl nuw nsw i64 %2277, %2271
  %2279 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2268, i64 %2278), !nosanitize !47
  %2280 = extractvalue { i64, i1 } %2279, 1, !nosanitize !47
  br i1 %2280, label %2266, label %2281, !prof !48, !nosanitize !47

2281:                                             ; preds = %2275
  %2282 = extractvalue { i64, i1 } %2279, 0, !nosanitize !47
  %2283 = getelementptr inbounds nuw i8, ptr %2246, i64 2
  %2284 = add i32 %2247, -2
  %2285 = add nuw nsw i64 %2258, 16
  %2286 = icmp samesign ult i32 %2249, 16
  br i1 %2286, label %2287, label %2314

2287:                                             ; preds = %2281
  %2288 = icmp eq i32 %2284, 0
  br i1 %2288, label %2451, label %2289

2289:                                             ; preds = %2287
  %2290 = load i8, ptr %2283, align 1, !tbaa !44
  %2291 = zext i8 %2290 to i64
  %2292 = shl nuw nsw i64 %2291, %2285
  %2293 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2282, i64 %2292), !nosanitize !47
  %2294 = extractvalue { i64, i1 } %2293, 1, !nosanitize !47
  br i1 %2294, label %2266, label %2295, !prof !48, !nosanitize !47

2295:                                             ; preds = %2289
  %2296 = extractvalue { i64, i1 } %2293, 0, !nosanitize !47
  %2297 = getelementptr inbounds nuw i8, ptr %2246, i64 3
  %2298 = add i32 %2247, -3
  %2299 = add nuw nsw i64 %2258, 24
  %2300 = icmp samesign ult i32 %2249, 8
  br i1 %2300, label %2301, label %2314

2301:                                             ; preds = %2295
  %2302 = icmp eq i32 %2298, 0
  br i1 %2302, label %2451, label %2303

2303:                                             ; preds = %2301
  %2304 = load i8, ptr %2297, align 1, !tbaa !44
  %2305 = zext i8 %2304 to i64
  %2306 = shl nuw nsw i64 %2305, %2299
  %2307 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2296, i64 %2306), !nosanitize !47
  %2308 = extractvalue { i64, i1 } %2307, 1, !nosanitize !47
  br i1 %2308, label %2266, label %2309, !prof !48, !nosanitize !47

2309:                                             ; preds = %2303
  %2310 = extractvalue { i64, i1 } %2307, 0, !nosanitize !47
  %2311 = getelementptr inbounds nuw i8, ptr %2246, i64 4
  %2312 = add i32 %2247, -4
  %2313 = or disjoint i64 %2258, 32
  br label %2314

2314:                                             ; preds = %2309, %2295, %2281, %2267
  %2315 = phi i64 [ %2268, %2267 ], [ %2282, %2281 ], [ %2296, %2295 ], [ %2310, %2309 ]
  %2316 = phi ptr [ %2269, %2267 ], [ %2283, %2281 ], [ %2297, %2295 ], [ %2311, %2309 ]
  %2317 = phi i32 [ %2270, %2267 ], [ %2284, %2281 ], [ %2298, %2295 ], [ %2312, %2309 ]
  %2318 = phi i64 [ %2271, %2267 ], [ %2285, %2281 ], [ %2299, %2295 ], [ %2313, %2309 ]
  %2319 = trunc nuw nsw i64 %2318 to i32
  br label %2320

2320:                                             ; preds = %2314, %2255
  %2321 = phi ptr [ %2246, %2255 ], [ %2316, %2314 ]
  %2322 = phi i32 [ %2247, %2255 ], [ %2317, %2314 ]
  %2323 = phi i64 [ %2248, %2255 ], [ %2315, %2314 ]
  %2324 = phi i32 [ %2249, %2255 ], [ %2319, %2314 ]
  %2325 = and i32 %2245, 4
  %2326 = icmp eq i32 %2325, 0
  br i1 %2326, label %2332, label %2327

2327:                                             ; preds = %2320
  %2328 = load i64, ptr %51, align 8, !tbaa !21
  %2329 = and i64 %2328, 4294967295
  %2330 = icmp eq i64 %2323, %2329
  br i1 %2330, label %2332, label %2331

2331:                                             ; preds = %2327
  store ptr @.str.18, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2337

2332:                                             ; preds = %2327, %2320, %2252, %2244
  %2333 = phi ptr [ %2246, %2244 ], [ %2246, %2252 ], [ %2321, %2320 ], [ %2321, %2327 ]
  %2334 = phi i32 [ %2247, %2244 ], [ %2247, %2252 ], [ %2322, %2320 ], [ %2322, %2327 ]
  %2335 = phi i64 [ %2248, %2244 ], [ %2248, %2252 ], [ 0, %2320 ], [ 0, %2327 ]
  %2336 = phi i32 [ %2249, %2244 ], [ %2249, %2252 ], [ 0, %2320 ], [ 0, %2327 ]
  store i32 16208, ptr %21, align 8, !tbaa !20
  br label %.loopexit185

2337:                                             ; preds = %2331, %2236, %2109, %2106, %.loopexit172, %1962, %1867, %1642, %1638, %1634, %1487, %1478, %1461, %1452, %1448, %1419, %1301, %1158, %1084, %1032, %1029, %992, %907, %874, %780, %767, %262, %258, %212, %211, %196, %192, %174, %128
  %2338 = phi ptr [ %90, %128 ], [ %162, %174 ], [ %162, %192 ], [ %162, %196 ], [ %162, %211 ], [ %162, %212 ], [ %251, %258 ], [ %251, %262 ], [ %756, %767 ], [ %769, %780 ], [ %858, %874 ], [ %891, %907 ], [ %984, %992 ], [ %1019, %1029 ], [ %1002, %1032 ], [ %1066, %1084 ], [ %1099, %1158 ], [ %1293, %1301 ], [ %1445, %1448 ], [ %1445, %1452 ], [ %1445, %1461 ], [ %1481, %1487 ], [ %1481, %1478 ], [ %1615, %1634 ], [ %1615, %1638 ], [ %1615, %1642 ], [ %1847, %1867 ], [ %1941, %1962 ], [ %1941, %2106 ], [ %1941, %.loopexit172 ], [ %90, %2109 ], [ %2183, %2236 ], [ %2321, %2331 ], [ %1390, %1419 ]
  %2339 = phi ptr [ %91, %128 ], [ %91, %174 ], [ %91, %192 ], [ %91, %196 ], [ %91, %211 ], [ %91, %212 ], [ %91, %258 ], [ %91, %262 ], [ %91, %767 ], [ %91, %780 ], [ %91, %874 ], [ %91, %907 ], [ %91, %992 ], [ %1031, %1029 ], [ %91, %1032 ], [ %91, %1084 ], [ %91, %1158 ], [ %91, %1301 ], [ %91, %1448 ], [ %91, %1452 ], [ %91, %1461 ], [ %1479, %1487 ], [ %1479, %1478 ], [ %91, %1634 ], [ %91, %1638 ], [ %91, %1642 ], [ %91, %1867 ], [ %91, %1962 ], [ %2103, %2106 ], [ %2103, %.loopexit172 ], [ %2113, %2109 ], [ %91, %2236 ], [ %91, %2331 ], [ %91, %1419 ]
  %2340 = phi i32 [ %92, %128 ], [ %163, %174 ], [ %163, %192 ], [ %163, %196 ], [ %163, %211 ], [ %163, %212 ], [ %252, %258 ], [ %252, %262 ], [ %757, %767 ], [ %770, %780 ], [ %859, %874 ], [ %892, %907 ], [ %985, %992 ], [ %1015, %1029 ], [ %1003, %1032 ], [ %1067, %1084 ], [ %1100, %1158 ], [ %1294, %1301 ], [ %1444, %1448 ], [ %1444, %1452 ], [ %1444, %1461 ], [ %1482, %1487 ], [ %1482, %1478 ], [ %1616, %1634 ], [ %1616, %1638 ], [ %1616, %1642 ], [ %1848, %1867 ], [ %1942, %1962 ], [ %1942, %2106 ], [ %1942, %.loopexit172 ], [ %92, %2109 ], [ %2184, %2236 ], [ %2322, %2331 ], [ %1391, %1419 ]
  %2341 = phi i32 [ %93, %128 ], [ %93, %174 ], [ %93, %192 ], [ %93, %196 ], [ %93, %211 ], [ %93, %212 ], [ %93, %258 ], [ %93, %262 ], [ %93, %767 ], [ %93, %780 ], [ %93, %874 ], [ %93, %907 ], [ %93, %992 ], [ %1021, %1029 ], [ %93, %1032 ], [ %93, %1084 ], [ %93, %1158 ], [ %93, %1301 ], [ %93, %1448 ], [ %93, %1452 ], [ %93, %1461 ], [ %1480, %1487 ], [ %1480, %1478 ], [ %93, %1634 ], [ %93, %1638 ], [ %93, %1642 ], [ %93, %1867 ], [ %93, %1962 ], [ %1996, %2106 ], [ %1996, %.loopexit172 ], [ %2112, %2109 ], [ %93, %2236 ], [ %93, %2331 ], [ %93, %1419 ]
  %2342 = phi i64 [ %94, %128 ], [ 0, %174 ], [ %164, %192 ], [ %164, %196 ], [ %198, %211 ], [ 0, %212 ], [ %253, %258 ], [ %253, %262 ], [ %758, %767 ], [ %771, %780 ], [ %877, %874 ], [ %909, %907 ], [ %986, %992 ], [ %1004, %1029 ], [ %1004, %1032 ], [ %1079, %1084 ], [ %1101, %1158 ], [ %1298, %1301 ], [ %1443, %1448 ], [ %1443, %1452 ], [ %1443, %1461 ], [ %1483, %1487 ], [ %1483, %1478 ], [ %1624, %1634 ], [ %1624, %1638 ], [ %1624, %1642 ], [ %1856, %1867 ], [ %1943, %1962 ], [ %1943, %2106 ], [ %1943, %.loopexit172 ], [ %94, %2109 ], [ %2185, %2236 ], [ %2323, %2331 ], [ %1392, %1419 ]
  %2343 = phi i32 [ %95, %128 ], [ 0, %174 ], [ %165, %192 ], [ %165, %196 ], [ %199, %211 ], [ 0, %212 ], [ %254, %258 ], [ %254, %262 ], [ %759, %767 ], [ %772, %780 ], [ %875, %874 ], [ %908, %907 ], [ %987, %992 ], [ %1005, %1029 ], [ %1005, %1032 ], [ %1080, %1084 ], [ %1102, %1158 ], [ %1299, %1301 ], [ %1442, %1448 ], [ %1442, %1452 ], [ %1442, %1461 ], [ %1484, %1487 ], [ %1484, %1478 ], [ %1626, %1634 ], [ %1626, %1638 ], [ %1626, %1642 ], [ %1858, %1867 ], [ %1944, %1962 ], [ %1944, %2106 ], [ %1944, %.loopexit172 ], [ %95, %2109 ], [ %2186, %2236 ], [ %2324, %2331 ], [ %1396, %1419 ]
  %2344 = phi i32 [ %96, %128 ], [ %96, %174 ], [ %96, %192 ], [ %96, %196 ], [ %96, %211 ], [ %96, %212 ], [ %96, %258 ], [ %96, %262 ], [ %96, %767 ], [ %96, %780 ], [ %96, %874 ], [ %96, %907 ], [ %96, %992 ], [ %96, %1029 ], [ %96, %1032 ], [ %96, %1084 ], [ %96, %1158 ], [ %96, %1301 ], [ %96, %1448 ], [ %96, %1452 ], [ %96, %1461 ], [ %96, %1487 ], [ %96, %1478 ], [ %96, %1634 ], [ %96, %1638 ], [ %96, %1642 ], [ %96, %1867 ], [ %96, %1962 ], [ %96, %2106 ], [ %96, %.loopexit172 ], [ %96, %2109 ], [ %93, %2236 ], [ %2250, %2331 ], [ %96, %1419 ]
  %2345 = phi i32 [ %97, %128 ], [ %97, %174 ], [ %97, %192 ], [ %97, %196 ], [ %97, %211 ], [ %97, %212 ], [ %97, %258 ], [ %97, %262 ], [ %97, %767 ], [ %97, %780 ], [ %97, %874 ], [ %97, %907 ], [ %97, %992 ], [ %97, %1029 ], [ %97, %1032 ], [ %97, %1084 ], [ %1156, %1158 ], [ %1165, %1301 ], [ %1165, %1448 ], [ %1450, %1452 ], [ %1459, %1461 ], [ %1474, %1487 ], [ %1474, %1478 ], [ %1474, %1634 ], [ %1474, %1638 ], [ %1474, %1642 ], [ %1720, %1867 ], [ %1945, %1962 ], [ %1945, %2106 ], [ %1945, %.loopexit172 ], [ %97, %2109 ], [ %97, %2236 ], [ %97, %2331 ], [ %1165, %1419 ]
  %2346 = load i32, ptr %21, align 8, !tbaa !20
  br label %88

.loopexit:                                        ; preds = %1197, %1201
  %2347 = phi i64 [ %1215, %1201 ], [ %1186, %1197 ]
  %2348 = zext i32 %1185 to i64
  %2349 = shl i32 %1185, 3
  %2350 = add i32 %1187, %2349
  %2351 = getelementptr i8, ptr %1184, i64 %2348
  br label %.loopexit185

2352:                                             ; preds = %142, %125
  %.lcssa2577 = phi i32 [ 1, %142 ], [ 0, %125 ]
  %2353 = phi i64 [ %137, %142 ], [ %94, %125 ]
  %2354 = zext nneg i32 %.lcssa2577 to i64
  %2355 = shl nuw nsw i32 %.lcssa2577, 3
  %2356 = add nuw nsw i32 %95, %2355
  %2357 = getelementptr i8, ptr %90, i64 %2354
  br label %.loopexit185

2358:                                             ; preds = %736, %720
  %.lcssa1987 = phi i32 [ 1, %736 ], [ 0, %720 ]
  %2359 = phi i64 [ %731, %736 ], [ %713, %720 ]
  %2360 = zext nneg i32 %.lcssa1987 to i64
  %2361 = shl nuw nsw i32 %.lcssa1987, 3
  %2362 = add nuw nsw i32 %714, %2361
  %2363 = getelementptr i8, ptr %711, i64 %2360
  br label %.loopexit185

2364:                                             ; preds = %454, %433
  %.lcssa1981 = phi i32 [ 1, %454 ], [ 0, %433 ]
  %2365 = phi i64 [ %449, %454 ], [ %436, %433 ]
  %2366 = zext nneg i32 %.lcssa1981 to i64
  %2367 = shl nuw nsw i32 %.lcssa1981, 3
  %2368 = add nuw nsw i32 %437, %2367
  %2369 = getelementptr i8, ptr %434, i64 %2366
  br label %.loopexit185

2370:                                             ; preds = %386, %366
  %.lcssa1975 = phi i32 [ 1, %386 ], [ 0, %366 ]
  %2371 = phi i64 [ %381, %386 ], [ %368, %366 ]
  %2372 = zext nneg i32 %.lcssa1975 to i64
  %2373 = shl nuw nsw i32 %.lcssa1975, 3
  %2374 = add nuw nsw i32 %2373, %367
  %2375 = getelementptr i8, ptr %370, i64 %2372
  br label %.loopexit185

2376:                                             ; preds = %331, %317, %303, %283
  %.lcssa1969 = phi i32 [ 3, %331 ], [ 2, %317 ], [ 1, %303 ], [ 0, %283 ]
  %2377 = phi i64 [ %326, %331 ], [ %312, %317 ], [ %298, %303 ], [ %285, %283 ]
  %2378 = zext nneg i32 %.lcssa1969 to i64
  %2379 = shl nuw nsw i32 %.lcssa1969, 3
  %2380 = add nuw nsw i32 %2379, %284
  %2381 = getelementptr i8, ptr %287, i64 %2378
  br label %.loopexit185

2382:                                             ; preds = %231, %117
  %.lcssa2560 = phi i32 [ 1, %231 ], [ 0, %117 ]
  %2383 = phi i64 [ %226, %231 ], [ %94, %117 ]
  %2384 = zext nneg i32 %.lcssa2560 to i64
  %2385 = shl nuw nsw i32 %.lcssa2560, 3
  %2386 = add nuw nsw i32 %95, %2385
  %2387 = getelementptr i8, ptr %90, i64 %2384
  br label %.loopexit185

2388:                                             ; preds = %823, %809, %795, %112
  %.lcssa2553 = phi i32 [ 3, %823 ], [ 2, %809 ], [ 1, %795 ], [ 0, %112 ]
  %2389 = phi i64 [ %818, %823 ], [ %804, %809 ], [ %790, %795 ], [ %94, %112 ]
  %2390 = zext nneg i32 %.lcssa2553 to i64
  %2391 = shl nuw nsw i32 %.lcssa2553, 3
  %2392 = add nuw nsw i32 %95, %2391
  %2393 = getelementptr i8, ptr %90, i64 %2390
  br label %.loopexit185

2394:                                             ; preds = %965, %951, %937, %920
  %.lcssa2548 = phi i32 [ 3, %965 ], [ 2, %951 ], [ 1, %937 ], [ 0, %920 ]
  %.lcssa1953 = phi i32 [ 0, %965 ], [ %921, %951 ], [ %921, %937 ], [ %921, %920 ]
  %2395 = phi i64 [ %960, %965 ], [ %946, %951 ], [ %932, %937 ], [ %917, %920 ]
  %2396 = zext nneg i32 %.lcssa2548 to i64
  %2397 = shl nuw nsw i32 %.lcssa2548, 3
  %2398 = add i32 %.lcssa1953, %2397
  %2399 = getelementptr i8, ptr %90, i64 %2396
  br label %.loopexit185

.loopexit176:                                     ; preds = %1881, %1885
  %2400 = phi i64 [ %1898, %1885 ], [ %1875, %1881 ]
  %2401 = zext i32 %1874 to i64
  %2402 = shl i32 %1874, 3
  %2403 = add i32 %1876, %2402
  %2404 = getelementptr i8, ptr %1873, i64 %2401
  br label %.loopexit185

.loopexit177:                                     ; preds = %1795, %1799
  %2405 = phi i64 [ %1813, %1799 ], [ %1770, %1795 ]
  %2406 = zext i32 %1769 to i64
  %2407 = shl i32 %1769, 3
  %2408 = add i32 %1771, %2407
  %2409 = getelementptr i8, ptr %1768, i64 %2406
  br label %.loopexit185

.loopexit178:                                     ; preds = %1733, %1737
  %2410 = phi i64 [ %1751, %1737 ], [ %1718, %1733 ]
  %2411 = zext i32 %1717 to i64
  %2412 = shl i32 %1717, 3
  %2413 = add i32 %1719, %2412
  %2414 = getelementptr i8, ptr %1716, i64 %2411
  br label %.loopexit185

.loopexit180:                                     ; preds = %1655, %1659
  %2415 = phi i64 [ %1672, %1659 ], [ %1649, %1655 ]
  %2416 = zext i32 %1648 to i64
  %2417 = shl i32 %1648, 3
  %2418 = add i32 %1650, %2417
  %2419 = getelementptr i8, ptr %1647, i64 %2416
  br label %.loopexit185

.loopexit181:                                     ; preds = %1564, %1568
  %2420 = phi i64 [ %1582, %1568 ], [ %1538, %1564 ]
  %2421 = zext i32 %1537 to i64
  %2422 = shl i32 %1537, 3
  %2423 = add i32 %1539, %2422
  %2424 = getelementptr i8, ptr %1536, i64 %2421
  br label %.loopexit185

.loopexit182:                                     ; preds = %1501, %1505
  %2425 = phi i64 [ %1519, %1505 ], [ %1472, %1501 ]
  %2426 = zext i32 %1471 to i64
  %2427 = shl i32 %1471, 3
  %2428 = add i32 %1473, %2427
  %2429 = getelementptr i8, ptr %1470, i64 %2426
  br label %.loopexit185

2430:                                             ; preds = %1352
  %2431 = zext i32 %1233 to i64
  %2432 = shl i32 %1233, 3
  %2433 = add i32 %1235, %2432
  %2434 = getelementptr i8, ptr %1232, i64 %2431
  br label %.loopexit185

2435:                                             ; preds = %1271
  %2436 = zext i32 %1233 to i64
  %2437 = shl i32 %1233, 3
  %2438 = add i32 %1235, %2437
  %2439 = getelementptr i8, ptr %1232, i64 %2436
  br label %.loopexit185

2440:                                             ; preds = %1315
  %2441 = zext i32 %1233 to i64
  %2442 = shl i32 %1233, 3
  %2443 = add i32 %1235, %2442
  %2444 = getelementptr i8, ptr %1232, i64 %2441
  br label %.loopexit185

2445:                                             ; preds = %1046, %107
  %.lcssa2493 = phi i32 [ 1, %1046 ], [ 0, %107 ]
  %2446 = phi i64 [ %1041, %1046 ], [ %94, %107 ]
  %2447 = zext nneg i32 %.lcssa2493 to i64
  %2448 = shl nuw nsw i32 %.lcssa2493, 3
  %2449 = add nuw nsw i32 %95, %2448
  %2450 = getelementptr i8, ptr %90, i64 %2447
  br label %.loopexit185

2451:                                             ; preds = %2301, %2287, %2273, %2257
  %.lcssa1752 = phi i32 [ 3, %2301 ], [ 2, %2287 ], [ 1, %2273 ], [ 0, %2257 ]
  %2452 = phi i64 [ %2296, %2301 ], [ %2282, %2287 ], [ %2268, %2273 ], [ %2248, %2257 ]
  %2453 = zext nneg i32 %.lcssa1752 to i64
  %2454 = shl nuw nsw i32 %.lcssa1752, 3
  %2455 = add nuw nsw i32 %2249, %2454
  %2456 = getelementptr i8, ptr %2246, i64 %2453
  br label %.loopexit185

2457:                                             ; preds = %2163, %2149, %2135, %2119
  %.lcssa2485 = phi i32 [ 3, %2163 ], [ 2, %2149 ], [ 1, %2135 ], [ 0, %2119 ]
  %2458 = phi i64 [ %2158, %2163 ], [ %2144, %2149 ], [ %2130, %2135 ], [ %94, %2119 ]
  %2459 = zext nneg i32 %.lcssa2485 to i64
  %2460 = shl nuw nsw i32 %.lcssa2485, 3
  %2461 = add nuw nsw i32 %95, %2460
  %2462 = getelementptr i8, ptr %90, i64 %2459
  br label %.loopexit185

.loopexit185.loopexit5512:                        ; preds = %88
  br label %.loopexit185

.loopexit185:                                     ; preds = %2107, %1940, %1462, %1008, %993, %866, %852, %698, %654, %634, %590, %574, %1114, %88, %.loopexit185.loopexit5512, %2457, %2451, %2445, %2440, %2435, %2430, %.loopexit182, %.loopexit181, %.loopexit180, %.loopexit178, %.loopexit177, %.loopexit176, %2394, %2388, %2382, %2376, %2370, %2364, %2358, %2352, %.loopexit, %2332, %900
  %2463 = phi i32 [ %93, %2451 ], [ %93, %2352 ], [ %93, %.loopexit ], [ %93, %1114 ], [ %93, %2457 ], [ %93, %2430 ], [ %93, %2394 ], [ %93, %.loopexit176 ], [ %93, %2382 ], [ %93, %2370 ], [ %93, %.loopexit180 ], [ %93, %2364 ], [ %93, %2332 ], [ %93, %2358 ], [ %93, %900 ], [ %93, %.loopexit182 ], [ %93, %2440 ], [ %93, %.loopexit181 ], [ %93, %.loopexit177 ], [ %93, %2445 ], [ %93, %2376 ], [ %93, %.loopexit178 ], [ %93, %2435 ], [ %93, %2388 ], [ %93, %88 ], [ %93, %866 ], [ 0, %2107 ], [ 0, %1940 ], [ %93, %1462 ], [ %93, %1008 ], [ %93, %993 ], [ %93, %852 ], [ %93, %698 ], [ %93, %654 ], [ %93, %634 ], [ %93, %590 ], [ %93, %574 ], [ %93, %.loopexit185.loopexit5512 ]
  %2464 = phi ptr [ %2456, %2451 ], [ %2357, %2352 ], [ %2351, %.loopexit ], [ %1112, %1114 ], [ %2462, %2457 ], [ %2434, %2430 ], [ %2399, %2394 ], [ %2404, %.loopexit176 ], [ %2387, %2382 ], [ %2375, %2370 ], [ %2419, %.loopexit180 ], [ %2369, %2364 ], [ %2333, %2332 ], [ %2363, %2358 ], [ %891, %900 ], [ %2429, %.loopexit182 ], [ %2444, %2440 ], [ %2424, %.loopexit181 ], [ %2409, %.loopexit177 ], [ %2450, %2445 ], [ %2381, %2376 ], [ %2414, %.loopexit178 ], [ %2439, %2435 ], [ %2393, %2388 ], [ %90, %88 ], [ %858, %866 ], [ %90, %2107 ], [ %1941, %1940 ], [ %1445, %1462 ], [ %1002, %1008 ], [ %984, %993 ], [ %853, %852 ], [ %701, %698 ], [ %647, %654 ], [ %637, %634 ], [ %583, %590 ], [ %576, %574 ], [ %90, %.loopexit185.loopexit5512 ]
  %2465 = phi i32 [ 0, %2451 ], [ 0, %2352 ], [ 0, %.loopexit ], [ 0, %1114 ], [ 0, %2457 ], [ 0, %2430 ], [ 0, %2394 ], [ 0, %.loopexit176 ], [ 0, %2382 ], [ 0, %2370 ], [ 0, %.loopexit180 ], [ 0, %2364 ], [ %2334, %2332 ], [ 0, %2358 ], [ %892, %900 ], [ 0, %.loopexit182 ], [ 0, %2440 ], [ 0, %.loopexit181 ], [ 0, %.loopexit177 ], [ 0, %2445 ], [ 0, %2376 ], [ 0, %.loopexit178 ], [ 0, %2435 ], [ 0, %2388 ], [ %92, %88 ], [ 0, %866 ], [ %92, %2107 ], [ %1942, %1940 ], [ %1444, %1462 ], [ %1003, %1008 ], [ %985, %993 ], [ %854, %852 ], [ %699, %698 ], [ 0, %654 ], [ %635, %634 ], [ 0, %590 ], [ %577, %574 ], [ %92, %.loopexit185.loopexit5512 ]
  %2466 = phi i64 [ %2452, %2451 ], [ %2353, %2352 ], [ %2347, %.loopexit ], [ %1110, %1114 ], [ %2458, %2457 ], [ %1354, %2430 ], [ %2395, %2394 ], [ %2400, %.loopexit176 ], [ %2383, %2382 ], [ %2371, %2370 ], [ %2415, %.loopexit180 ], [ %2365, %2364 ], [ %2335, %2332 ], [ %2359, %2358 ], [ %902, %900 ], [ %2425, %.loopexit182 ], [ %1317, %2440 ], [ %2420, %.loopexit181 ], [ %2405, %.loopexit177 ], [ %2446, %2445 ], [ %2377, %2376 ], [ %2410, %.loopexit178 ], [ %1273, %2435 ], [ %2389, %2388 ], [ %94, %88 ], [ %860, %866 ], [ %94, %2107 ], [ %1943, %1940 ], [ %1443, %1462 ], [ %1004, %1008 ], [ 0, %993 ], [ %855, %852 ], [ %649, %698 ], [ %649, %654 ], [ %585, %634 ], [ %585, %590 ], [ %504, %574 ], [ %94, %.loopexit185.loopexit5512 ]
  %2467 = phi i32 [ %2455, %2451 ], [ %2356, %2352 ], [ %2350, %.loopexit ], [ %1109, %1114 ], [ %2461, %2457 ], [ %2433, %2430 ], [ %2398, %2394 ], [ %2403, %.loopexit176 ], [ %2386, %2382 ], [ %2374, %2370 ], [ %2418, %.loopexit180 ], [ %2368, %2364 ], [ %2336, %2332 ], [ %2362, %2358 ], [ %901, %900 ], [ %2428, %.loopexit182 ], [ %2443, %2440 ], [ %2423, %.loopexit181 ], [ %2408, %.loopexit177 ], [ %2449, %2445 ], [ %2380, %2376 ], [ %2413, %.loopexit178 ], [ %2438, %2435 ], [ %2392, %2388 ], [ %95, %88 ], [ %861, %866 ], [ %95, %2107 ], [ %1944, %1940 ], [ %1442, %1462 ], [ %1005, %1008 ], [ 0, %993 ], [ %856, %852 ], [ %650, %698 ], [ %650, %654 ], [ %586, %634 ], [ %586, %590 ], [ %505, %574 ], [ %95, %.loopexit185.loopexit5512 ]
  %2468 = phi i32 [ %2250, %2451 ], [ %96, %2352 ], [ %96, %.loopexit ], [ %96, %1114 ], [ %96, %2457 ], [ %96, %2430 ], [ %96, %2394 ], [ %96, %.loopexit176 ], [ %96, %2382 ], [ %96, %2370 ], [ %96, %.loopexit180 ], [ %96, %2364 ], [ %2250, %2332 ], [ %96, %2358 ], [ %96, %900 ], [ %96, %.loopexit182 ], [ %96, %2440 ], [ %96, %.loopexit181 ], [ %96, %.loopexit177 ], [ %96, %2445 ], [ %96, %2376 ], [ %96, %.loopexit178 ], [ %96, %2435 ], [ %96, %2388 ], [ %96, %88 ], [ %96, %574 ], [ %96, %590 ], [ %96, %634 ], [ %96, %654 ], [ %96, %698 ], [ %96, %852 ], [ %96, %866 ], [ %96, %993 ], [ %96, %1008 ], [ %96, %1462 ], [ %96, %1940 ], [ %96, %2107 ], [ %96, %.loopexit185.loopexit5512 ]
  %2469 = phi i32 [ %97, %2451 ], [ %97, %2352 ], [ %1165, %.loopexit ], [ %97, %1114 ], [ %97, %2457 ], [ %1165, %2430 ], [ %97, %2394 ], [ %1877, %.loopexit176 ], [ %97, %2382 ], [ %97, %2370 ], [ %1651, %.loopexit180 ], [ %97, %2364 ], [ 1, %2332 ], [ %97, %2358 ], [ %97, %900 ], [ %1474, %.loopexit182 ], [ %1165, %2440 ], [ %1474, %.loopexit181 ], [ %1720, %.loopexit177 ], [ %97, %2445 ], [ %97, %2376 ], [ %1720, %.loopexit178 ], [ %1165, %2435 ], [ %97, %2388 ], [ 1, %88 ], [ %97, %866 ], [ %97, %2107 ], [ %1945, %1940 ], [ 0, %1462 ], [ %97, %1008 ], [ %97, %993 ], [ %97, %852 ], [ %97, %698 ], [ %97, %654 ], [ %97, %634 ], [ %97, %590 ], [ %97, %574 ], [ -3, %.loopexit185.loopexit5512 ]
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %2463, ptr %41, align 8, !tbaa !52
  store ptr %2464, ptr %0, align 8, !tbaa !50
  store i32 %2465, ptr %43, align 8, !tbaa !51
  store i64 %2466, ptr %45, align 8, !tbaa !31
  store i32 %2467, ptr %47, align 8, !tbaa !32
  %2470 = load i32, ptr %79, align 4, !tbaa !38
  %2471 = icmp eq i32 %2470, 0
  br i1 %2471, label %2472, label %2481

2472:                                             ; preds = %.loopexit185
  %2473 = icmp eq i32 %2468, %2463
  br i1 %2473, label %2569, label %2474

2474:                                             ; preds = %2472
  %2475 = load i32, ptr %21, align 8, !tbaa !20
  %2476 = icmp ult i32 %2475, 16209
  br i1 %2476, label %2477, label %2569

2477:                                             ; preds = %2474
  %2478 = icmp samesign ult i32 %2475, 16206
  %2479 = icmp ne i32 %1, 4
  %2480 = or i1 %2479, %2478
  br i1 %2480, label %2481, label %2569

2481:                                             ; preds = %2477, %.loopexit185
  %2482 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2468, i32 %2463), !nosanitize !47
  %2483 = extractvalue { i32, i1 } %2482, 1, !nosanitize !47
  br i1 %2483, label %2484, label %2485, !prof !48, !nosanitize !47

2484:                                             ; preds = %2481
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2485:                                             ; preds = %2481
  %2486 = extractvalue { i32, i1 } %2482, 0, !nosanitize !47
  %2487 = load ptr, ptr %14, align 8, !tbaa !15
  %2488 = getelementptr inbounds nuw i8, ptr %2487, i64 72
  %2489 = load ptr, ptr %2488, align 8, !tbaa !41
  %2490 = icmp eq ptr %2489, null
  br i1 %2490, label %2491, label %2500

2491:                                             ; preds = %2485
  %2492 = load ptr, ptr %6, align 8, !tbaa !8
  %2493 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %2494 = load ptr, ptr %2493, align 8, !tbaa !43
  %2495 = getelementptr inbounds nuw i8, ptr %2487, i64 56
  %2496 = load i32, ptr %2495, align 8, !tbaa !42
  %2497 = shl nuw i32 1, %2496
  %2498 = call ptr %2492(ptr noundef %2494, i32 noundef %2497, i32 noundef 1) #12, !inline_history !104
  store ptr %2498, ptr %2488, align 8, !tbaa !41
  %2499 = icmp eq ptr %2498, null
  br i1 %2499, label %2568, label %2500

2500:                                             ; preds = %2491, %2485
  %2501 = phi ptr [ %2498, %2491 ], [ %2489, %2485 ]
  %2502 = getelementptr inbounds nuw i8, ptr %2487, i64 60
  %2503 = load i32, ptr %2502, align 4, !tbaa !38
  %2504 = icmp eq i32 %2503, 0
  br i1 %2504, label %2505, label %2511

2505:                                             ; preds = %2500
  %2506 = getelementptr inbounds nuw i8, ptr %2487, i64 56
  %2507 = load i32, ptr %2506, align 8, !tbaa !42
  %2508 = shl nuw i32 1, %2507
  store i32 %2508, ptr %2502, align 4, !tbaa !38
  %2509 = getelementptr inbounds nuw i8, ptr %2487, i64 68
  store i32 0, ptr %2509, align 4, !tbaa !40
  %2510 = getelementptr inbounds nuw i8, ptr %2487, i64 64
  store i32 0, ptr %2510, align 8, !tbaa !39
  br label %2511

2511:                                             ; preds = %2505, %2500
  %2512 = phi i32 [ %2508, %2505 ], [ %2503, %2500 ]
  %2513 = icmp ult i32 %2486, %2512
  br i1 %2513, label %2521, label %2514

2514:                                             ; preds = %2511
  %2515 = zext i32 %2512 to i64
  %2516 = sub nsw i64 0, %2515
  %2517 = getelementptr inbounds i8, ptr %91, i64 %2516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2501, ptr noundef nonnull readonly align 1 dereferenceable(1) %2517, i64 %2515, i1 false)
  %2518 = getelementptr inbounds nuw i8, ptr %2487, i64 68
  store i32 0, ptr %2518, align 4, !tbaa !40
  %2519 = load i32, ptr %2502, align 4, !tbaa !38
  %2520 = getelementptr inbounds nuw i8, ptr %2487, i64 64
  store i32 %2519, ptr %2520, align 8, !tbaa !39
  br label %2569

2521:                                             ; preds = %2511
  %2522 = getelementptr inbounds nuw i8, ptr %2487, i64 68
  %2523 = load i32, ptr %2522, align 4, !tbaa !40
  %2524 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2512, i32 %2523), !nosanitize !47
  %2525 = extractvalue { i32, i1 } %2524, 1, !nosanitize !47
  br i1 %2525, label %2526, label %2527, !prof !48, !nosanitize !47

2526:                                             ; preds = %2521
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2527:                                             ; preds = %2521
  %2528 = extractvalue { i32, i1 } %2524, 0, !nosanitize !47
  %2529 = call i32 @llvm.umin.i32(i32 %2528, i32 %2486)
  %2530 = zext i32 %2523 to i64
  %2531 = getelementptr inbounds nuw i8, ptr %2501, i64 %2530
  %2532 = zext i32 %2486 to i64
  %2533 = sub nsw i64 0, %2532
  %2534 = getelementptr inbounds i8, ptr %91, i64 %2533
  %2535 = zext i32 %2529 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2531, ptr readonly align 1 %2534, i64 %2535, i1 false)
  %2536 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2486, i32 %2529), !nosanitize !47
  %2537 = extractvalue { i32, i1 } %2536, 0, !nosanitize !47
  %2538 = extractvalue { i32, i1 } %2536, 1, !nosanitize !47
  br i1 %2538, label %2539, label %2540, !prof !48, !nosanitize !47

2539:                                             ; preds = %2527
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2540:                                             ; preds = %2527
  %2541 = icmp eq i32 %2537, 0
  br i1 %2541, label %2549, label %2542

2542:                                             ; preds = %2540
  %2543 = load ptr, ptr %2488, align 8, !tbaa !41
  %2544 = zext i32 %2537 to i64
  %2545 = sub nsw i64 0, %2544
  %2546 = getelementptr inbounds i8, ptr %91, i64 %2545
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2543, ptr nonnull readonly align 1 %2546, i64 %2544, i1 false)
  store i32 %2537, ptr %2522, align 4, !tbaa !40
  %2547 = load i32, ptr %2502, align 4, !tbaa !38
  %2548 = getelementptr inbounds nuw i8, ptr %2487, i64 64
  store i32 %2547, ptr %2548, align 8, !tbaa !39
  br label %2569

2549:                                             ; preds = %2540
  %2550 = load i32, ptr %2522, align 4, !tbaa !40
  %2551 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2550, i32 %2529), !nosanitize !47
  %2552 = extractvalue { i32, i1 } %2551, 1, !nosanitize !47
  br i1 %2552, label %2553, label %2554, !prof !48, !nosanitize !47

2553:                                             ; preds = %2549
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2554:                                             ; preds = %2549
  %2555 = extractvalue { i32, i1 } %2551, 0, !nosanitize !47
  %2556 = load i32, ptr %2502, align 4, !tbaa !38
  %2557 = icmp eq i32 %2555, %2556
  %2558 = select i1 %2557, i32 0, i32 %2555
  store i32 %2558, ptr %2522, align 4
  %2559 = getelementptr inbounds nuw i8, ptr %2487, i64 64
  %2560 = load i32, ptr %2559, align 8, !tbaa !39
  %2561 = icmp ult i32 %2560, %2556
  br i1 %2561, label %2562, label %2569

2562:                                             ; preds = %2554
  %2563 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2560, i32 %2529), !nosanitize !47
  %2564 = extractvalue { i32, i1 } %2563, 1, !nosanitize !47
  br i1 %2564, label %2565, label %2566, !prof !48, !nosanitize !47

2565:                                             ; preds = %2562
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2566:                                             ; preds = %2562
  %2567 = extractvalue { i32, i1 } %2563, 0, !nosanitize !47
  store i32 %2567, ptr %2559, align 8, !tbaa !39
  br label %2569

2568:                                             ; preds = %2491
  store i32 16210, ptr %21, align 8, !tbaa !20
  br label %.loopexit187

2569:                                             ; preds = %2566, %2554, %2542, %2514, %2477, %2474, %2472
  %2570 = load i32, ptr %43, align 8, !tbaa !51
  %2571 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %44, i32 %2570), !nosanitize !47
  %2572 = extractvalue { i32, i1 } %2571, 0, !nosanitize !47
  %2573 = extractvalue { i32, i1 } %2571, 1, !nosanitize !47
  br i1 %2573, label %2574, label %2575, !prof !48, !nosanitize !47

2574:                                             ; preds = %2569
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2575:                                             ; preds = %2569
  %2576 = load i32, ptr %41, align 8, !tbaa !52
  %2577 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2468, i32 %2576), !nosanitize !47
  %2578 = extractvalue { i32, i1 } %2577, 0, !nosanitize !47
  %2579 = extractvalue { i32, i1 } %2577, 1, !nosanitize !47
  br i1 %2579, label %2580, label %2581, !prof !48, !nosanitize !47

2580:                                             ; preds = %2575
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2581:                                             ; preds = %2575
  %2582 = zext i32 %2572 to i64
  %2583 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2584 = load i64, ptr %2583, align 8, !tbaa !22
  %2585 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2584, i64 %2582), !nosanitize !47
  %2586 = extractvalue { i64, i1 } %2585, 1, !nosanitize !47
  br i1 %2586, label %2587, label %2588, !prof !48, !nosanitize !47

2587:                                             ; preds = %2581
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2588:                                             ; preds = %2581
  %2589 = extractvalue { i64, i1 } %2585, 0, !nosanitize !47
  store i64 %2589, ptr %2583, align 8, !tbaa !22
  %2590 = zext i32 %2578 to i64
  %2591 = load i64, ptr %50, align 8, !tbaa !103
  %2592 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2591, i64 %2590), !nosanitize !47
  %2593 = extractvalue { i64, i1 } %2592, 1, !nosanitize !47
  br i1 %2593, label %2594, label %2595, !prof !48, !nosanitize !47

2594:                                             ; preds = %2588
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2595:                                             ; preds = %2588
  %2596 = extractvalue { i64, i1 } %2592, 0, !nosanitize !47
  store i64 %2596, ptr %50, align 8, !tbaa !103
  %2597 = load i64, ptr %51, align 8, !tbaa !21
  %2598 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2597, i64 %2590), !nosanitize !47
  %2599 = extractvalue { i64, i1 } %2598, 1, !nosanitize !47
  br i1 %2599, label %2600, label %2601, !prof !48, !nosanitize !47

2600:                                             ; preds = %2595
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2601:                                             ; preds = %2595
  %2602 = extractvalue { i64, i1 } %2598, 0, !nosanitize !47
  store i64 %2602, ptr %51, align 8, !tbaa !21
  %2603 = load i32, ptr %49, align 8, !tbaa !24
  %2604 = and i32 %2603, 4
  %2605 = icmp ne i32 %2604, 0
  %2606 = icmp ne i32 %2578, 0
  %2607 = select i1 %2605, i1 %2606, i1 false
  br i1 %2607, label %2608, label %2621

2608:                                             ; preds = %2601
  %2609 = load i32, ptr %52, align 8, !tbaa !28
  %2610 = icmp eq i32 %2609, 0
  %2611 = load i64, ptr %53, align 8, !tbaa !54
  %2612 = load ptr, ptr %26, align 8, !tbaa !49
  %2613 = sub nsw i64 0, %2590
  %2614 = getelementptr inbounds i8, ptr %2612, i64 %2613
  br i1 %2610, label %2617, label %2615

2615:                                             ; preds = %2608
  %2616 = call i64 @crc32(i64 noundef %2611, ptr noundef nonnull %2614, i32 noundef %2578) #12
  br label %2619

2617:                                             ; preds = %2608
  %2618 = call i64 @adler32(i64 noundef %2611, ptr noundef nonnull %2614, i32 noundef %2578) #12
  br label %2619

2619:                                             ; preds = %2617, %2615
  %2620 = phi i64 [ %2616, %2615 ], [ %2618, %2617 ]
  store i64 %2620, ptr %53, align 8, !tbaa !54
  store i64 %2620, ptr %54, align 8, !tbaa !25
  br label %2621

2621:                                             ; preds = %2619, %2601
  %2622 = load i32, ptr %47, align 8, !tbaa !32
  %2623 = load i32, ptr %83, align 4, !tbaa !26
  %2624 = icmp eq i32 %2623, 0
  %2625 = select i1 %2624, i32 0, i32 64
  %2626 = add nsw i32 %2625, %2622
  %2627 = load i32, ptr %21, align 8, !tbaa !20
  %2628 = icmp eq i32 %2627, 16191
  %2629 = select i1 %2628, i32 128, i32 0
  %2630 = add nsw i32 %2626, %2629
  %2631 = icmp eq i32 %2627, 16199
  %2632 = icmp eq i32 %2627, 16194
  %2633 = or i1 %2631, %2632
  %2634 = select i1 %2633, i32 256, i32 0
  %2635 = add nsw i32 %2630, %2634
  %2636 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %2635, ptr %2636, align 8, !tbaa !23
  %2637 = icmp eq i32 %2572, 0
  %2638 = icmp eq i32 %2578, 0
  %2639 = select i1 %2637, i1 %2638, i1 false
  %2640 = icmp eq i32 %1, 4
  %2641 = or i1 %2640, %2639
  %2642 = icmp eq i32 %2469, 0
  %2643 = select i1 %2641, i1 %2642, i1 false
  %2644 = select i1 %2643, i32 -5, i32 %2469
  br label %.loopexit187

.loopexit187.loopexit:                            ; preds = %88
  br label %.loopexit187

.loopexit187:                                     ; preds = %88, %.loopexit187.loopexit, %2621, %2568, %849, %32, %25, %20, %17, %13, %9, %5, %2
  %2645 = phi i32 [ -2, %20 ], [ -2, %.loopexit187.loopexit ], [ -4, %2568 ], [ %2644, %2621 ], [ 2, %849 ], [ -2, %32 ], [ -2, %25 ], [ -2, %17 ], [ -2, %13 ], [ -2, %2 ], [ -2, %9 ], [ -2, %5 ], [ -4, %88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %2645
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #6

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
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
  br i1 %3, label %208, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %208, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %208, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %208, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !16
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %208

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !20
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %208

24:                                               ; preds = %19
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %26 = load i32, ptr %25, align 8, !tbaa !51
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %14, i64 88
  %30 = load i32, ptr %29, align 8, !tbaa !32
  %31 = icmp ult i32 %30, 8
  br i1 %31, label %208, label %32

32:                                               ; preds = %28, %24
  %33 = icmp eq i32 %21, 16211
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = getelementptr inbounds nuw i8, ptr %14, i64 140
  %36 = load i32, ptr %35, align 4, !tbaa !4
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
  br i1 %46, label %64, label %47, !prof !48, !nosanitize !47

47:                                               ; preds = %37
  %48 = extractvalue { i32, i1 } %45, 0
  %49 = icmp ugt i32 %48, 7
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store i32 %48, ptr %38, align 8, !tbaa !32
  br label %.loopexit

51:                                               ; preds = %47
  %52 = add i32 %48, -8
  %53 = lshr i32 %52, 3
  %54 = add nuw nsw i32 %53, 1
  %55 = zext nneg i32 %54 to i64
  %56 = and i64 %55, 3
  %57 = icmp ult i32 %52, 24
  br i1 %57, label %87, label %58

58:                                               ; preds = %51
  %59 = and i64 %55, 1073741820
  %60 = add nsw i64 %55, -4
  %61 = lshr i64 %60, 2
  %62 = add nuw nsw i64 %61, 1
  %xtraiter = and i64 %62, 3
  %63 = icmp ult i64 %60, 12
  br i1 %63, label %.epil.preheader, label %.new

.new:                                             ; preds = %58
  %unroll_iter = and i64 %62, 9223372036854775804
  br label %65

64:                                               ; preds = %37
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

65:                                               ; preds = %65, %.new
  %66 = phi i64 [ %44, %.new ], [ 0, %65 ]
  %67 = phi i64 [ 0, %.new ], [ %78, %65 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %65 ]
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 %67
  %69 = trunc i64 %66 to i32
  store i32 %69, ptr %68, align 1
  %70 = lshr i64 %66, 32
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 %67
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 4
  %73 = trunc nuw i64 %70 to i32
  store i32 %73, ptr %72, align 1
  %74 = getelementptr inbounds nuw i8, ptr %2, i64 %67
  %75 = getelementptr inbounds nuw i8, ptr %74, i64 8
  store i32 0, ptr %75, align 1
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 %67
  %77 = getelementptr inbounds nuw i8, ptr %76, i64 12
  store i32 0, ptr %77, align 1
  %78 = add nuw i64 %67, 16
  %niter.next.3 = add nuw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %65, !llvm.loop !105

.unr-lcssa:                                       ; preds = %65
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %58
  %.epil.init = phi i64 [ %44, %58 ], [ 0, %.unr-lcssa ]
  %.epil.init36 = phi i64 [ 0, %58 ], [ %78, %.unr-lcssa ]
  %lcmp.mod38 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %79

79:                                               ; preds = %79, %.epil.preheader
  %80 = phi i64 [ %.epil.init, %.epil.preheader ], [ %85, %79 ]
  %81 = phi i64 [ %.epil.init36, %.epil.preheader ], [ %84, %79 ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %79 ]
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 %81
  %83 = trunc i64 %80 to i32
  store i32 %83, ptr %82, align 1
  %84 = add nuw i64 %81, 4
  %85 = lshr i64 %80, 32
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %79, !llvm.loop !106

.epilog-lcssa:                                    ; preds = %79, %.unr-lcssa
  %.lcssa34 = phi i64 [ 0, %.unr-lcssa ], [ %85, %79 ]
  %86 = icmp eq i64 %56, 0
  br i1 %86, label %.loopexit6, label %87

87:                                               ; preds = %.epilog-lcssa, %51
  %88 = phi i64 [ %44, %51 ], [ %.lcssa34, %.epilog-lcssa ]
  %89 = phi i64 [ 0, %51 ], [ %59, %.epilog-lcssa ]
  %90 = icmp ne i64 %56, 0
  tail call void @llvm.assume(i1 %90)
  br label %91

91:                                               ; preds = %91, %87
  %92 = phi i64 [ %88, %87 ], [ %98, %91 ]
  %93 = phi i64 [ %89, %87 ], [ %95, %91 ]
  %94 = phi i64 [ 0, %87 ], [ %99, %91 ]
  %95 = add nuw nsw i64 %93, 1
  %96 = trunc i64 %92 to i8
  %97 = getelementptr inbounds nuw i8, ptr %2, i64 %93
  store i8 %96, ptr %97, align 1, !tbaa !44
  %98 = lshr i64 %92, 8
  %99 = add nuw nsw i64 %94, 1
  %100 = icmp eq i64 %99, %56
  br i1 %100, label %.loopexit6, label %91, !llvm.loop !107

.loopexit6:                                       ; preds = %91, %.epilog-lcssa
  %101 = phi i64 [ %.lcssa34, %.epilog-lcssa ], [ %98, %91 ]
  store i64 %101, ptr %41, align 8, !tbaa !31
  store i32 0, ptr %38, align 8, !tbaa !32
  br label %102

102:                                              ; preds = %102, %.loopexit6
  %103 = phi i64 [ 0, %.loopexit6 ], [ %105, %102 ]
  %104 = phi i32 [ 0, %.loopexit6 ], [ %116, %102 ]
  %105 = add nuw nsw i64 %103, 1
  %106 = icmp samesign ult i32 %104, 2
  %107 = select i1 %106, i32 0, i32 255
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 %103
  %109 = load i8, ptr %108, align 1, !tbaa !44
  %110 = zext i8 %109 to i32
  %111 = icmp eq i32 %107, %110
  %112 = add nuw nsw i32 %104, 1
  %113 = icmp eq i8 %109, 0
  %114 = sub nuw nsw i32 4, %104
  %115 = select i1 %113, i32 %114, i32 0
  %116 = select i1 %111, i32 %112, i32 %115
  %117 = icmp samesign ult i64 %105, %55
  %118 = icmp samesign ult i32 %116, 4
  %119 = select i1 %117, i1 %118, i1 false
  br i1 %119, label %102, label %.loopexit, !llvm.loop !108

.loopexit:                                        ; preds = %102, %50
  %120 = phi i32 [ 0, %50 ], [ %116, %102 ]
  %121 = getelementptr inbounds nuw i8, ptr %14, i64 140
  store i32 %120, ptr %121, align 4, !tbaa !4
  %122 = load i32, ptr %25, align 8, !tbaa !51
  br label %123

123:                                              ; preds = %.loopexit, %34
  %124 = phi i32 [ %120, %.loopexit ], [ %36, %34 ]
  %125 = phi i32 [ %122, %.loopexit ], [ %26, %34 ]
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
  br i1 %150, label %133, label %151, !llvm.loop !108

151:                                              ; preds = %133
  %152 = trunc nuw i64 %136 to i32
  br label %153

153:                                              ; preds = %151, %123
  %154 = phi i32 [ %124, %123 ], [ %147, %151 ]
  %155 = phi i32 [ 0, %123 ], [ %152, %151 ]
  store i32 %154, ptr %126, align 4, !tbaa !4
  %156 = load i32, ptr %25, align 8, !tbaa !51
  %157 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %156, i32 %155), !nosanitize !47
  %158 = extractvalue { i32, i1 } %157, 1, !nosanitize !47
  br i1 %158, label %159, label %160, !prof !48, !nosanitize !47

159:                                              ; preds = %153
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
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
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

169:                                              ; preds = %160
  %170 = extractvalue { i64, i1 } %166, 0, !nosanitize !47
  store i64 %170, ptr %164, align 8, !tbaa !22
  %171 = icmp eq i32 %154, 4
  br i1 %171, label %172, label %208

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

180:                                              ; preds = %177, %172
  %181 = phi i32 [ %179, %177 ], [ 0, %172 ]
  store i32 %181, ptr %176, align 8, !tbaa !24
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %183 = load i64, ptr %182, align 8, !tbaa !103
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %182, i8 0, i64 16, i1 false)
  %189 = load i32, ptr %176, align 8, !tbaa !24
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %180
  %192 = and i32 %189, 1
  %193 = zext nneg i32 %192 to i64
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %193, ptr %194, align 8, !tbaa !25
  br label %195

195:                                              ; preds = %191, %180
  %196 = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 0, ptr %196, align 4, !tbaa !26
  %197 = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %197, align 4, !tbaa !27
  %198 = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 32768, ptr %198, align 4, !tbaa !29
  %199 = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr null, ptr %199, align 8, !tbaa !30
  %200 = getelementptr inbounds nuw i8, ptr %14, i64 80
  store i64 0, ptr %200, align 8, !tbaa !31
  %201 = getelementptr inbounds nuw i8, ptr %14, i64 88
  store i32 0, ptr %201, align 8, !tbaa !32
  %202 = getelementptr inbounds nuw i8, ptr %14, i64 1368
  %203 = getelementptr inbounds nuw i8, ptr %14, i64 144
  store ptr %202, ptr %203, align 8, !tbaa !33
  %204 = getelementptr inbounds nuw i8, ptr %14, i64 112
  store ptr %202, ptr %204, align 8, !tbaa !34
  %205 = getelementptr inbounds nuw i8, ptr %14, i64 104
  store ptr %202, ptr %205, align 8, !tbaa !35
  %206 = getelementptr inbounds nuw i8, ptr %14, i64 7144
  store i32 1, ptr %206, align 8, !tbaa !36
  %207 = getelementptr inbounds nuw i8, ptr %14, i64 7148
  store i32 -1, ptr %207, align 4, !tbaa !37
  store i64 %170, ptr %164, align 8, !tbaa !22
  store i64 %183, ptr %182, align 8, !tbaa !103
  store i32 %174, ptr %173, align 8, !tbaa !28
  store i32 16191, ptr %20, align 8, !tbaa !20
  br label %208

208:                                              ; preds = %195, %169, %28, %19, %16, %12, %8, %4, %1
  %209 = phi i32 [ 0, %195 ], [ -2, %19 ], [ -5, %28 ], [ -3, %169 ], [ -2, %12 ], [ -2, %1 ], [ -2, %8 ], [ -2, %4 ], [ -2, %16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %209
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
  br i1 %3, label %30, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !16
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !20
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %.sink.split, label %30

.sink.split:                                      ; preds = %19
  %24 = icmp eq i32 %1, 0
  %25 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %26 = load i32, ptr %25, align 8, !tbaa !24
  %27 = icmp eq i32 %26, 0
  %28 = or i32 %26, 4
  %spec.select = select i1 %27, i32 0, i32 %28
  %29 = and i32 %26, -5
  %.sink = select i1 %24, i32 %29, i32 %spec.select
  store i32 %.sink, ptr %25, align 8, !tbaa !24
  br label %30

30:                                               ; preds = %.sink.split, %19, %16, %12, %8, %4, %2
  %31 = phi i32 [ -2, %19 ], [ -2, %4 ], [ -2, %16 ], [ -2, %12 ], [ -2, %2 ], [ -2, %8 ], [ 0, %.sink.split ]
  ret i32 %31
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

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
!107 = distinct !{!107, !101}
!108 = distinct !{!108, !68}
