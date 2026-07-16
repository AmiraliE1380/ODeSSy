; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/both.inflate.ll'
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

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #4

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

67:                                               ; preds = %65, %51, %25, %10, %5, %3
  %68 = phi i32 [ -4, %25 ], [ -6, %3 ], [ -2, %10 ], [ -6, %5 ], [ -2, %65 ], [ 0, %51 ]
  ret i32 %68
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflatePrime(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
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
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #4

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

88:                                               ; preds = %2344, %39
  %89 = phi i32 [ %40, %39 ], [ %2353, %2344 ]
  %90 = phi ptr [ %30, %39 ], [ %2345, %2344 ]
  %91 = phi ptr [ %27, %39 ], [ %2346, %2344 ]
  %92 = phi i32 [ %44, %39 ], [ %2347, %2344 ]
  %93 = phi i32 [ %42, %39 ], [ %2348, %2344 ]
  %94 = phi i64 [ %46, %39 ], [ %2349, %2344 ]
  %95 = phi i32 [ %48, %39 ], [ %2350, %2344 ]
  %96 = phi i32 [ %42, %39 ], [ %2351, %2344 ]
  %97 = phi i32 [ 0, %39 ], [ %2352, %2344 ]
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
    i32 16204, label %1947
    i32 16205, label %2114
    i32 16206, label %2121
    i32 16207, label %103
    i32 16208, label %.loopexit185
    i32 16209, label %.loopexit185.loopexit5580
    i32 16210, label %.loopexit187
  ]

99:                                               ; preds = %88
  %100 = load i32, ptr %72, align 4, !tbaa !53
  br label %1878

101:                                              ; preds = %88
  %102 = load i32, ptr %72, align 4, !tbaa !53
  br label %1645

103:                                              ; preds = %88
  %104 = load i32, ptr %49, align 8, !tbaa !24
  br label %2251

105:                                              ; preds = %88
  %106 = icmp ult i32 %95, 14
  br i1 %106, label %107, label %1065

107:                                              ; preds = %105
  %108 = zext nneg i32 %95 to i64
  %109 = icmp eq i32 %92, 0
  br i1 %109, label %2452, label %1033

110:                                              ; preds = %88
  %111 = icmp ult i32 %95, 32
  br i1 %111, label %112, label %835

112:                                              ; preds = %110
  %113 = zext nneg i32 %95 to i64
  %114 = icmp eq i32 %92, 0
  br i1 %114, label %2395, label %782

115:                                              ; preds = %88
  %116 = icmp ult i32 %95, 16
  br i1 %116, label %117, label %250

117:                                              ; preds = %115
  %118 = zext nneg i32 %95 to i64
  %119 = icmp eq i32 %92, 0
  br i1 %119, label %2389, label %218

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
  br i1 %127, label %2359, label %129

128:                                              ; preds = %120
  store i32 16192, ptr %21, align 8, !tbaa !20
  br label %2344

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
  br i1 %143, label %2359, label %144

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
  br label %2344

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
  br label %2344

193:                                              ; preds = %185
  %194 = and i64 %164, 15
  %195 = icmp eq i64 %194, 8
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  store ptr @.str.2, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2344

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
  br label %2344

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
  br label %2344

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
  br i1 %232, label %2389, label %233

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
  br label %2344

259:                                              ; preds = %250
  %260 = and i32 %255, 57344
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %259
  store ptr @.str.4, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2344

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
  br i1 %289, label %2383, label %290

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
  br i1 %304, label %2383, label %305

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
  br i1 %318, label %2383, label %319

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
  br i1 %332, label %2383, label %333

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
  br i1 %372, label %2377, label %373

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
  br i1 %387, label %2377, label %388

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
  br i1 %440, label %2371, label %441

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
  br i1 %455, label %2371, label %456

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
  br i1 %722, label %2365, label %723

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
  br i1 %737, label %2365, label %738

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
  br label %2344

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
  br label %2344

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
  br i1 %796, label %2395, label %797

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
  br i1 %810, label %2395, label %811

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
  br i1 %824, label %2395, label %825

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
  br label %2344

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
  switch i32 %898, label %default.unreachable2981 [
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

default.unreachable2981:                          ; preds = %890
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
  br label %2344

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
  br i1 %923, label %2401, label %924

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
  br i1 %938, label %2401, label %939

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
  br i1 %952, label %2401, label %953

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
  br i1 %966, label %2401, label %967

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
  br label %2344

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
  br label %2344

1032:                                             ; preds = %1001
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2344

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
  br i1 %1047, label %2452, label %1048

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
  br label %2344

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
  br label %2344

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
  %indvars2809.le = trunc i64 %1188 to i32
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
  br i1 %1276, label %2442, label %1277

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
  br label %2344

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
  br i1 %1320, label %2447, label %1321

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
  br i1 %1357, label %2437, label %1358

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
  %1397 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %indvars2809.le, i32 %1394), !nosanitize !47
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
  %1404 = icmp eq i32 %indvars2809.le, -1
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
  %1417 = icmp eq i32 %indvars2809.le, -2
  br i1 %1417, label %1430, label %.preheader.preheader, !prof !82

.preheader.preheader:                             ; preds = %1415
  %1418 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %.pn170, 0
  br label %.preheader

1419:                                             ; preds = %1400
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2344

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
  br label %2344

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
  br label %2344

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
  br label %2344

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
  br i1 %1486, label %1487, label %2344

1487:                                             ; preds = %1478
  store i32 -1, ptr %71, align 4, !tbaa !37
  br label %2344

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
  %1601 = phi ptr [ %1558, %1547 ], [ %1591, %1598 ]
  %1602 = phi ptr [ %1536, %1547 ], [ %1583, %1598 ]
  %1603 = phi i32 [ %1537, %1547 ], [ %1584, %1598 ]
  %1604 = phi i64 [ %1538, %1547 ], [ %1582, %1598 ]
  %1605 = phi i32 [ %1539, %1547 ], [ %1599, %1598 ]
  %1606 = phi i8 [ %1560, %1547 ], [ %1593, %1598 ]
  %1607 = load i8, ptr %1601, align 2, !tbaa !44
  %1608 = getelementptr inbounds nuw i8, ptr %1601, i64 2
  %1609 = load i16, ptr %1608, align 2, !tbaa !77
  %1610 = sub nuw i32 %1605, %1541
  %1611 = zext nneg i8 %1540 to i64
  %1612 = lshr i64 %1604, %1611
  store i32 %1541, ptr %71, align 4, !tbaa !37
  br label %1613

1613:                                             ; preds = %1600, %1534
  %1614 = phi i32 [ %1541, %1600 ], [ 0, %1534 ]
  %1615 = phi ptr [ %1602, %1600 ], [ %1536, %1534 ]
  %1616 = phi i32 [ %1603, %1600 ], [ %1537, %1534 ]
  %1617 = phi i64 [ %1612, %1600 ], [ %1538, %1534 ]
  %1618 = phi i32 [ %1610, %1600 ], [ %1539, %1534 ]
  %1619 = phi i16 [ %1609, %1600 ], [ %1543, %1534 ]
  %1620 = phi i8 [ %1606, %1600 ], [ %1540, %1534 ]
  %1621 = phi i8 [ %1607, %1600 ], [ %1544, %1534 ]
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
  br label %2344

1635:                                             ; preds = %1629
  %1636 = and i32 %1632, 32
  %1637 = icmp eq i32 %1636, 0
  br i1 %1637, label %1639, label %1638

1638:                                             ; preds = %1635
  store i32 -1, ptr %71, align 4, !tbaa !37
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2344

1639:                                             ; preds = %1635
  %1640 = and i32 %1632, 64
  %1641 = icmp eq i32 %1640, 0
  br i1 %1641, label %1643, label %1642

1642:                                             ; preds = %1639
  store ptr @.str.14, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2344

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
  br i1 %1777, label %1778, label %1850

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
  br i1 %1794, label %1795, label %1832

1795:                                             ; preds = %1778
  %1796 = icmp eq i32 %1769, 0
  br i1 %1796, label %.loopexit177, label %1797

1797:                                             ; preds = %1795
  %1798 = zext nneg i32 %1771 to i64
  br label %1801

1799:                                             ; preds = %1813
  %1800 = icmp eq i32 %1816, 0
  br i1 %1800, label %.loopexit177, label %1801

1801:                                             ; preds = %1799, %1797
  %1802 = phi ptr [ %1768, %1797 ], [ %1815, %1799 ]
  %1803 = phi i32 [ %1769, %1797 ], [ %1816, %1799 ]
  %1804 = phi i64 [ %1770, %1797 ], [ %1814, %1799 ]
  %1805 = phi i64 [ %1798, %1797 ], [ %1817, %1799 ]
  %1806 = load i8, ptr %1802, align 1, !tbaa !44
  %1807 = zext i8 %1806 to i64
  %1808 = shl i64 %1807, %1805
  %1809 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1804, i64 %1808), !nosanitize !47
  %1810 = extractvalue { i64, i1 } %1809, 1, !nosanitize !47
  br i1 %1810, label %1811, label %1813, !prof !48, !nosanitize !47

1811:                                             ; preds = %1801
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1812:                                             ; preds = %1865, %1832
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1813:                                             ; preds = %1801
  %1814 = extractvalue { i64, i1 } %1809, 0, !nosanitize !47
  %1815 = getelementptr inbounds nuw i8, ptr %1802, i64 1
  %1816 = add i32 %1803, -1
  %1817 = add nuw nsw i64 %1805, 8
  %1818 = trunc i64 %1814 to i32
  %1819 = and i32 %1818, %1782
  %1820 = lshr i32 %1819, %1773
  %1821 = add nuw i32 %1820, %1783
  %1822 = zext i32 %1821 to i64
  %1823 = getelementptr inbounds nuw [4 x i8], ptr %1724, i64 %1822
  %1824 = getelementptr inbounds nuw i8, ptr %1823, i64 1
  %1825 = load i8, ptr %1824, align 1, !tbaa !44
  %1826 = zext i8 %1825 to i32
  %1827 = add nuw nsw i32 %1773, %1826
  %1828 = zext nneg i32 %1827 to i64
  %1829 = icmp samesign ult i64 %1817, %1828
  br i1 %1829, label %1799, label %1830

1830:                                             ; preds = %1813
  %1831 = trunc nuw nsw i64 %1817 to i32
  br label %1832

1832:                                             ; preds = %1830, %1778
  %1833 = phi ptr [ %1789, %1778 ], [ %1823, %1830 ]
  %1834 = phi ptr [ %1768, %1778 ], [ %1815, %1830 ]
  %1835 = phi i32 [ %1769, %1778 ], [ %1816, %1830 ]
  %1836 = phi i64 [ %1770, %1778 ], [ %1814, %1830 ]
  %1837 = phi i32 [ %1771, %1778 ], [ %1831, %1830 ]
  %1838 = phi i8 [ %1791, %1778 ], [ %1825, %1830 ]
  %1839 = load i32, ptr %71, align 4, !tbaa !37
  %1840 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1839, i32 %1773), !nosanitize !47
  %1841 = extractvalue { i32, i1 } %1840, 1, !nosanitize !47
  br i1 %1841, label %1812, label %1842, !prof !48, !nosanitize !47

1842:                                             ; preds = %1832
  %1843 = getelementptr inbounds nuw i8, ptr %1833, i64 2
  %1844 = load i16, ptr %1843, align 2, !tbaa !77
  %1845 = load i8, ptr %1833, align 2, !tbaa !44
  %1846 = sub nuw i32 %1837, %1773
  %1847 = zext nneg i8 %1772 to i64
  %1848 = lshr i64 %1836, %1847
  %1849 = extractvalue { i32, i1 } %1840, 0, !nosanitize !47
  store i32 %1849, ptr %71, align 4, !tbaa !37
  br label %1850

1850:                                             ; preds = %1842, %1766
  %1851 = phi ptr [ %1834, %1842 ], [ %1768, %1766 ]
  %1852 = phi i32 [ %1835, %1842 ], [ %1769, %1766 ]
  %1853 = phi i64 [ %1848, %1842 ], [ %1770, %1766 ]
  %1854 = phi i32 [ %1846, %1842 ], [ %1771, %1766 ]
  %1855 = phi i16 [ %1844, %1842 ], [ %1775, %1766 ]
  %1856 = phi i8 [ %1838, %1842 ], [ %1772, %1766 ]
  %1857 = phi i8 [ %1845, %1842 ], [ %1776, %1766 ]
  %1858 = zext i8 %1856 to i32
  %1859 = zext nneg i8 %1856 to i64
  %1860 = lshr i64 %1853, %1859
  %1861 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1854, i32 %1858), !nosanitize !47
  %1862 = extractvalue { i32, i1 } %1861, 0, !nosanitize !47
  %1863 = extractvalue { i32, i1 } %1861, 1, !nosanitize !47
  br i1 %1863, label %1864, label %1865, !prof !48, !nosanitize !47

1864:                                             ; preds = %1850
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1865:                                             ; preds = %1850
  %1866 = load i32, ptr %71, align 4, !tbaa !37
  %1867 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1866, i32 %1858), !nosanitize !47
  %1868 = extractvalue { i32, i1 } %1867, 1, !nosanitize !47
  br i1 %1868, label %1812, label %1869, !prof !48, !nosanitize !47

1869:                                             ; preds = %1865
  %1870 = extractvalue { i32, i1 } %1867, 0, !nosanitize !47
  store i32 %1870, ptr %71, align 4, !tbaa !37
  %1871 = zext i8 %1857 to i32
  %1872 = and i32 %1871, 64
  %1873 = icmp eq i32 %1872, 0
  br i1 %1873, label %1875, label %1874

1874:                                             ; preds = %1869
  store ptr @.str.15, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2344

1875:                                             ; preds = %1869
  %1876 = zext i16 %1855 to i32
  store i32 %1876, ptr %74, align 8, !tbaa !93
  %1877 = and i32 %1871, 15
  store i32 %1877, ptr %72, align 4, !tbaa !53
  store i32 16203, ptr %21, align 8, !tbaa !20
  br label %1878

1878:                                             ; preds = %1875, %99
  %1879 = phi i32 [ %1877, %1875 ], [ %100, %99 ]
  %1880 = phi ptr [ %1851, %1875 ], [ %90, %99 ]
  %1881 = phi i32 [ %1852, %1875 ], [ %92, %99 ]
  %1882 = phi i64 [ %1860, %1875 ], [ %94, %99 ]
  %1883 = phi i32 [ %1862, %1875 ], [ %95, %99 ]
  %1884 = phi i32 [ %1720, %1875 ], [ %97, %99 ]
  %1885 = icmp eq i32 %1879, 0
  br i1 %1885, label %1942, label %1886

1886:                                             ; preds = %1878
  %1887 = icmp ult i32 %1883, %1879
  br i1 %1887, label %1888, label %.loopexit175

1888:                                             ; preds = %1886
  %1889 = icmp eq i32 %1881, 0
  br i1 %1889, label %.loopexit176, label %1890

1890:                                             ; preds = %1888
  %1891 = zext i32 %1883 to i64
  br label %1894

1892:                                             ; preds = %1911
  %1893 = icmp eq i32 %1899, 0
  br i1 %1893, label %.loopexit176, label %1894, !llvm.loop !94

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
  br i1 %1914, label %1892, label %.loopexit175, !llvm.loop !94

.loopexit175:                                     ; preds = %1911, %1886
  %1915 = phi ptr [ %1880, %1886 ], [ %1900, %1911 ]
  %1916 = phi i32 [ %1881, %1886 ], [ %1899, %1911 ]
  %1917 = phi i64 [ %1882, %1886 ], [ %1905, %1911 ]
  %1918 = phi i32 [ %1883, %1886 ], [ %1913, %1911 ]
  %1919 = shl nsw i32 -1, %1879
  %1920 = xor i32 %1919, -1
  %1921 = trunc i64 %1917 to i32
  %1922 = and i32 %1921, %1920
  %1923 = load i32, ptr %74, align 8, !tbaa !93
  %1924 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1923, i32 %1922), !nosanitize !47
  %1925 = extractvalue { i32, i1 } %1924, 1, !nosanitize !47
  br i1 %1925, label %1926, label %1927, !prof !48, !nosanitize !47

1926:                                             ; preds = %.loopexit175
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1927:                                             ; preds = %.loopexit175
  %1928 = extractvalue { i32, i1 } %1924, 0, !nosanitize !47
  store i32 %1928, ptr %74, align 8, !tbaa !93
  %1929 = zext nneg i32 %1879 to i64
  %1930 = lshr i64 %1917, %1929
  %1931 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1918, i32 %1879), !nosanitize !47
  %1932 = extractvalue { i32, i1 } %1931, 0, !nosanitize !47
  %1933 = extractvalue { i32, i1 } %1931, 1, !nosanitize !47
  br i1 %1933, label %1934, label %1935, !prof !48, !nosanitize !47

1934:                                             ; preds = %1927
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1935:                                             ; preds = %1927
  %1936 = load i32, ptr %71, align 4, !tbaa !37
  %1937 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1936, i32 %1879), !nosanitize !47
  %1938 = extractvalue { i32, i1 } %1937, 1, !nosanitize !47
  br i1 %1938, label %1939, label %1940, !prof !48, !nosanitize !47

1939:                                             ; preds = %1935
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1940:                                             ; preds = %1935
  %1941 = extractvalue { i32, i1 } %1937, 0, !nosanitize !47
  store i32 %1941, ptr %71, align 4, !tbaa !37
  br label %1942

1942:                                             ; preds = %1940, %1878
  %1943 = phi ptr [ %1915, %1940 ], [ %1880, %1878 ]
  %1944 = phi i32 [ %1916, %1940 ], [ %1881, %1878 ]
  %1945 = phi i64 [ %1930, %1940 ], [ %1882, %1878 ]
  %1946 = phi i32 [ %1932, %1940 ], [ %1883, %1878 ]
  store i32 16204, ptr %21, align 8, !tbaa !20
  br label %1947

1947:                                             ; preds = %1942, %88
  %1948 = phi ptr [ %1943, %1942 ], [ %90, %88 ]
  %1949 = phi i32 [ %1944, %1942 ], [ %92, %88 ]
  %1950 = phi i64 [ %1945, %1942 ], [ %94, %88 ]
  %1951 = phi i32 [ %1946, %1942 ], [ %95, %88 ]
  %1952 = phi i32 [ %1884, %1942 ], [ %97, %88 ]
  %1953 = icmp eq i32 %93, 0
  br i1 %1953, label %.loopexit185, label %1954

1954:                                             ; preds = %1947
  %1955 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %96, i32 %93), !nosanitize !47
  %1956 = extractvalue { i32, i1 } %1955, 0, !nosanitize !47
  %1957 = extractvalue { i32, i1 } %1955, 1, !nosanitize !47
  br i1 %1957, label %1958, label %1959, !prof !48, !nosanitize !47

1958:                                             ; preds = %1954
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1959:                                             ; preds = %1954
  %1960 = load i32, ptr %74, align 8, !tbaa !93
  %1961 = icmp ugt i32 %1960, %1956
  br i1 %1961, label %1962, label %1991

1962:                                             ; preds = %1959
  %1963 = sub nuw i32 %1960, %1956
  %1964 = load i32, ptr %75, align 8, !tbaa !39
  %1965 = icmp ugt i32 %1963, %1964
  br i1 %1965, label %1966, label %1970

1966:                                             ; preds = %1962
  %1967 = load i32, ptr %76, align 8, !tbaa !36
  %1968 = icmp eq i32 %1967, 0
  br i1 %1968, label %1970, label %1969

1969:                                             ; preds = %1966
  store ptr @.str.16, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2344

1970:                                             ; preds = %1966, %1962
  %1971 = load i32, ptr %77, align 4, !tbaa !40
  %1972 = icmp ugt i32 %1963, %1971
  br i1 %1972, label %1973, label %1981

1973:                                             ; preds = %1970
  %1974 = sub nuw i32 %1963, %1971
  %1975 = load i32, ptr %79, align 4, !tbaa !38
  %1976 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1975, i32 %1974), !nosanitize !47
  %1977 = extractvalue { i32, i1 } %1976, 1, !nosanitize !47
  br i1 %1977, label %1978, label %1979, !prof !48, !nosanitize !47

1978:                                             ; preds = %1973
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1979:                                             ; preds = %1973
  %1980 = extractvalue { i32, i1 } %1976, 0, !nosanitize !47
  br label %1983

1981:                                             ; preds = %1970
  %1982 = sub nuw i32 %1971, %1963
  br label %1983

1983:                                             ; preds = %1981, %1979
  %1984 = phi i32 [ %1982, %1981 ], [ %1980, %1979 ]
  %1985 = phi i32 [ %1963, %1981 ], [ %1974, %1979 ]
  %1986 = load ptr, ptr %78, align 8, !tbaa !41
  %1987 = zext i32 %1984 to i64
  %1988 = getelementptr inbounds nuw i8, ptr %1986, i64 %1987
  %1989 = load i32, ptr %56, align 4, !tbaa !61
  %1990 = call i32 @llvm.umin.i32(i32 %1985, i32 %1989)
  br label %1996

1991:                                             ; preds = %1959
  %1992 = zext i32 %1960 to i64
  %1993 = sub nsw i64 0, %1992
  %1994 = getelementptr inbounds i8, ptr %91, i64 %1993
  %1995 = load i32, ptr %56, align 4, !tbaa !61
  br label %1996

1996:                                             ; preds = %1991, %1983
  %1997 = phi i32 [ %1995, %1991 ], [ %1989, %1983 ]
  %1998 = phi i32 [ %1995, %1991 ], [ %1990, %1983 ]
  %1999 = phi ptr [ %1994, %1991 ], [ %1988, %1983 ]
  %2000 = ptrtoaddr ptr %1999 to i64
  %2001 = call i32 @llvm.umin.i32(i32 %1998, i32 %93)
  %2002 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %93, i32 %2001), !nosanitize !47
  %2003 = extractvalue { i32, i1 } %2002, 0, !nosanitize !47
  %2004 = extractvalue { i32, i1 } %2002, 1, !nosanitize !47
  br i1 %2004, label %2005, label %2006, !prof !48, !nosanitize !47

2005:                                             ; preds = %1996
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2006:                                             ; preds = %1996
  %2007 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1997, i32 %2001), !nosanitize !47
  %2008 = extractvalue { i32, i1 } %2007, 1, !nosanitize !47
  br i1 %2008, label %2009, label %2010, !prof !48, !nosanitize !47

2009:                                             ; preds = %2006
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2010:                                             ; preds = %2006
  %2011 = extractvalue { i32, i1 } %2007, 0, !nosanitize !47
  store i32 %2011, ptr %56, align 4, !tbaa !61
  %2012 = icmp eq i32 %2001, 0
  br i1 %2012, label %2079, label %2013, !prof !48, !nosanitize !47

2013:                                             ; preds = %2010
  %2014 = zext i32 %2001 to i64
  %2015 = icmp ult i32 %2001, 4
  %2016 = sub i64 %98, %2000
  %2017 = icmp ult i64 %2016, 32
  %2018 = select i1 %2015, i1 true, i1 %2017
  br i1 %2018, label %2058, label %2019

2019:                                             ; preds = %2013
  %2020 = icmp ult i32 %2001, 32
  br i1 %2020, label %2042, label %2021

2021:                                             ; preds = %2019
  %2022 = and i64 %2014, 4294967264
  br label %2023

2023:                                             ; preds = %2023, %2021
  %2024 = phi i64 [ 0, %2021 ], [ %2031, %2023 ]
  %2025 = getelementptr i8, ptr %91, i64 %2024
  %2026 = getelementptr i8, ptr %1999, i64 %2024
  %2027 = getelementptr i8, ptr %2026, i64 16
  %2028 = load <16 x i8>, ptr %2026, align 1, !tbaa !44
  %2029 = load <16 x i8>, ptr %2027, align 1, !tbaa !44
  %2030 = getelementptr i8, ptr %2025, i64 16
  store <16 x i8> %2028, ptr %2025, align 1, !tbaa !44
  store <16 x i8> %2029, ptr %2030, align 1, !tbaa !44
  %2031 = add nuw i64 %2024, 32
  %2032 = icmp eq i64 %2031, %2022
  br i1 %2032, label %2033, label %2023, !llvm.loop !95

2033:                                             ; preds = %2023
  %2034 = getelementptr i8, ptr %91, i64 %2022
  %2035 = icmp eq i64 %2022, %2014
  br i1 %2035, label %.loopexit172, label %2036

2036:                                             ; preds = %2033
  %2037 = getelementptr i8, ptr %1999, i64 %2022
  %2038 = trunc nuw i64 %2022 to i32
  %2039 = sub i32 %2001, %2038
  %2040 = and i64 %2014, 28
  %2041 = icmp eq i64 %2040, 0
  br i1 %2041, label %2058, label %2042, !prof !98

2042:                                             ; preds = %2036, %2019
  %2043 = phi i64 [ %2022, %2036 ], [ 0, %2019 ]
  %2044 = and i64 %2014, 4294967292
  br label %2045

2045:                                             ; preds = %2045, %2042
  %2046 = phi i64 [ %2043, %2042 ], [ %2050, %2045 ]
  %2047 = getelementptr i8, ptr %91, i64 %2046
  %2048 = getelementptr i8, ptr %1999, i64 %2046
  %2049 = load <4 x i8>, ptr %2048, align 1, !tbaa !44
  store <4 x i8> %2049, ptr %2047, align 1, !tbaa !44
  %2050 = add nuw i64 %2046, 4
  %2051 = icmp eq i64 %2050, %2044
  br i1 %2051, label %2052, label %2045, !llvm.loop !99

2052:                                             ; preds = %2045
  %2053 = getelementptr i8, ptr %91, i64 %2044
  %2054 = trunc nuw i64 %2044 to i32
  %2055 = sub i32 %2001, %2054
  %2056 = getelementptr i8, ptr %1999, i64 %2044
  %2057 = icmp eq i64 %2044, %2014
  br i1 %2057, label %.loopexit172, label %2058

2058:                                             ; preds = %2052, %2036, %2013
  %2059 = phi ptr [ %91, %2013 ], [ %2034, %2036 ], [ %2053, %2052 ]
  %2060 = phi i32 [ %2001, %2013 ], [ %2039, %2036 ], [ %2055, %2052 ]
  %2061 = phi ptr [ %1999, %2013 ], [ %2037, %2036 ], [ %2056, %2052 ]
  %2062 = add i32 %2060, -1
  %2063 = and i32 %2060, 7
  %2064 = icmp eq i32 %2063, 0
  br i1 %2064, label %.loopexit174, label %.preheader173

.preheader173:                                    ; preds = %2058, %.preheader173
  %2065 = phi ptr [ %2069, %.preheader173 ], [ %2059, %2058 ]
  %2066 = phi ptr [ %2070, %.preheader173 ], [ %2061, %2058 ]
  %2067 = phi i32 [ %2071, %.preheader173 ], [ 0, %2058 ]
  %2068 = load i8, ptr %2066, align 1, !tbaa !44
  store i8 %2068, ptr %2065, align 1, !tbaa !44
  %2069 = getelementptr inbounds nuw i8, ptr %2065, i64 1
  %2070 = getelementptr inbounds nuw i8, ptr %2066, i64 1
  %2071 = add nuw nsw i32 %2067, 1
  %2072 = icmp eq i32 %2071, %2063
  br i1 %2072, label %.loopexit174.loopexit, label %.preheader173, !llvm.loop !100

.loopexit174.loopexit:                            ; preds = %.preheader173
  %2073 = and i32 %2060, -8
  br label %.loopexit174

.loopexit174:                                     ; preds = %.loopexit174.loopexit, %2058
  %2074 = phi ptr [ poison, %2058 ], [ %2069, %.loopexit174.loopexit ]
  %2075 = phi ptr [ %2059, %2058 ], [ %2069, %.loopexit174.loopexit ]
  %2076 = phi i32 [ %2060, %2058 ], [ %2073, %.loopexit174.loopexit ]
  %2077 = phi ptr [ %2061, %2058 ], [ %2070, %.loopexit174.loopexit ]
  %2078 = icmp ult i32 %2062, 7
  br i1 %2078, label %.loopexit172, label %.preheader171

2079:                                             ; preds = %2010
  %2080 = load i8, ptr %1999, align 1, !tbaa !44
  store i8 %2080, ptr %91, align 1, !tbaa !44
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

.preheader171:                                    ; preds = %.loopexit174, %.preheader171
  %2081 = phi ptr [ %2106, %.preheader171 ], [ %2075, %.loopexit174 ]
  %2082 = phi i32 [ %2107, %.preheader171 ], [ %2076, %.loopexit174 ]
  %2083 = phi ptr [ %2108, %.preheader171 ], [ %2077, %.loopexit174 ]
  %2084 = load i8, ptr %2083, align 1, !tbaa !44
  store i8 %2084, ptr %2081, align 1, !tbaa !44
  %2085 = getelementptr inbounds nuw i8, ptr %2081, i64 1
  %2086 = getelementptr inbounds nuw i8, ptr %2083, i64 1
  %2087 = load i8, ptr %2086, align 1, !tbaa !44
  store i8 %2087, ptr %2085, align 1, !tbaa !44
  %2088 = getelementptr inbounds nuw i8, ptr %2081, i64 2
  %2089 = getelementptr inbounds nuw i8, ptr %2083, i64 2
  %2090 = load i8, ptr %2089, align 1, !tbaa !44
  store i8 %2090, ptr %2088, align 1, !tbaa !44
  %2091 = getelementptr inbounds nuw i8, ptr %2081, i64 3
  %2092 = getelementptr inbounds nuw i8, ptr %2083, i64 3
  %2093 = load i8, ptr %2092, align 1, !tbaa !44
  store i8 %2093, ptr %2091, align 1, !tbaa !44
  %2094 = getelementptr inbounds nuw i8, ptr %2081, i64 4
  %2095 = getelementptr inbounds nuw i8, ptr %2083, i64 4
  %2096 = load i8, ptr %2095, align 1, !tbaa !44
  store i8 %2096, ptr %2094, align 1, !tbaa !44
  %2097 = getelementptr inbounds nuw i8, ptr %2081, i64 5
  %2098 = getelementptr inbounds nuw i8, ptr %2083, i64 5
  %2099 = load i8, ptr %2098, align 1, !tbaa !44
  store i8 %2099, ptr %2097, align 1, !tbaa !44
  %2100 = getelementptr inbounds nuw i8, ptr %2081, i64 6
  %2101 = getelementptr inbounds nuw i8, ptr %2083, i64 6
  %2102 = load i8, ptr %2101, align 1, !tbaa !44
  store i8 %2102, ptr %2100, align 1, !tbaa !44
  %2103 = getelementptr inbounds nuw i8, ptr %2081, i64 7
  %2104 = getelementptr inbounds nuw i8, ptr %2083, i64 7
  %2105 = load i8, ptr %2104, align 1, !tbaa !44
  store i8 %2105, ptr %2103, align 1, !tbaa !44
  %2106 = getelementptr inbounds nuw i8, ptr %2081, i64 8
  %2107 = add i32 %2082, -8
  %2108 = getelementptr inbounds nuw i8, ptr %2083, i64 8
  %2109 = icmp eq i32 %2107, 0
  br i1 %2109, label %.loopexit172, label %.preheader171, !llvm.loop !102

.loopexit172:                                     ; preds = %.preheader171, %.loopexit174, %2052, %2033
  %2110 = phi ptr [ %2053, %2052 ], [ %2034, %2033 ], [ %2074, %.loopexit174 ], [ %2106, %.preheader171 ]
  %2111 = load i32, ptr %56, align 4, !tbaa !61
  %2112 = icmp eq i32 %2111, 0
  br i1 %2112, label %2113, label %2344

2113:                                             ; preds = %.loopexit172
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2344

2114:                                             ; preds = %88
  %2115 = icmp eq i32 %93, 0
  br i1 %2115, label %.loopexit185, label %2116

2116:                                             ; preds = %2114
  %2117 = load i32, ptr %56, align 4, !tbaa !61
  %2118 = trunc i32 %2117 to i8
  store i8 %2118, ptr %91, align 1, !tbaa !44
  %2119 = add i32 %93, -1
  %2120 = getelementptr inbounds nuw i8, ptr %91, i64 1
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2344

2121:                                             ; preds = %88
  %2122 = load i32, ptr %49, align 8, !tbaa !24
  %2123 = icmp eq i32 %2122, 0
  br i1 %2123, label %2244, label %2124

2124:                                             ; preds = %2121
  %2125 = icmp ult i32 %95, 32
  br i1 %2125, label %2126, label %2189

2126:                                             ; preds = %2124
  %2127 = zext nneg i32 %95 to i64
  %2128 = icmp eq i32 %92, 0
  br i1 %2128, label %2464, label %2129

2129:                                             ; preds = %2126
  %2130 = load i8, ptr %90, align 1, !tbaa !44
  %2131 = zext i8 %2130 to i64
  %2132 = shl nuw nsw i64 %2131, %2127
  %2133 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %2132), !nosanitize !47
  %2134 = extractvalue { i64, i1 } %2133, 1, !nosanitize !47
  br i1 %2134, label %2135, label %2136, !prof !48, !nosanitize !47

2135:                                             ; preds = %2172, %2158, %2144, %2129
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2136:                                             ; preds = %2129
  %2137 = extractvalue { i64, i1 } %2133, 0, !nosanitize !47
  %2138 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %2139 = add i32 %92, -1
  %2140 = add nuw nsw i64 %2127, 8
  %2141 = icmp samesign ult i32 %95, 24
  br i1 %2141, label %2142, label %2183

2142:                                             ; preds = %2136
  %2143 = icmp eq i32 %2139, 0
  br i1 %2143, label %2464, label %2144

2144:                                             ; preds = %2142
  %2145 = load i8, ptr %2138, align 1, !tbaa !44
  %2146 = zext i8 %2145 to i64
  %2147 = shl nuw nsw i64 %2146, %2140
  %2148 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2137, i64 %2147), !nosanitize !47
  %2149 = extractvalue { i64, i1 } %2148, 1, !nosanitize !47
  br i1 %2149, label %2135, label %2150, !prof !48, !nosanitize !47

2150:                                             ; preds = %2144
  %2151 = extractvalue { i64, i1 } %2148, 0, !nosanitize !47
  %2152 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %2153 = add i32 %92, -2
  %2154 = add nuw nsw i64 %2127, 16
  %2155 = icmp samesign ult i32 %95, 16
  br i1 %2155, label %2156, label %2183

2156:                                             ; preds = %2150
  %2157 = icmp eq i32 %2153, 0
  br i1 %2157, label %2464, label %2158

2158:                                             ; preds = %2156
  %2159 = load i8, ptr %2152, align 1, !tbaa !44
  %2160 = zext i8 %2159 to i64
  %2161 = shl nuw nsw i64 %2160, %2154
  %2162 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2151, i64 %2161), !nosanitize !47
  %2163 = extractvalue { i64, i1 } %2162, 1, !nosanitize !47
  br i1 %2163, label %2135, label %2164, !prof !48, !nosanitize !47

2164:                                             ; preds = %2158
  %2165 = extractvalue { i64, i1 } %2162, 0, !nosanitize !47
  %2166 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %2167 = add i32 %92, -3
  %2168 = add nuw nsw i64 %2127, 24
  %2169 = icmp samesign ult i32 %95, 8
  br i1 %2169, label %2170, label %2183

2170:                                             ; preds = %2164
  %2171 = icmp eq i32 %2167, 0
  br i1 %2171, label %2464, label %2172

2172:                                             ; preds = %2170
  %2173 = load i8, ptr %2166, align 1, !tbaa !44
  %2174 = zext i8 %2173 to i64
  %2175 = shl nuw nsw i64 %2174, %2168
  %2176 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2165, i64 %2175), !nosanitize !47
  %2177 = extractvalue { i64, i1 } %2176, 1, !nosanitize !47
  br i1 %2177, label %2135, label %2178, !prof !48, !nosanitize !47

2178:                                             ; preds = %2172
  %2179 = extractvalue { i64, i1 } %2176, 0, !nosanitize !47
  %2180 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %2181 = add i32 %92, -4
  %2182 = or disjoint i64 %2127, 32
  br label %2183

2183:                                             ; preds = %2178, %2164, %2150, %2136
  %2184 = phi i64 [ %2137, %2136 ], [ %2151, %2150 ], [ %2165, %2164 ], [ %2179, %2178 ]
  %2185 = phi ptr [ %2138, %2136 ], [ %2152, %2150 ], [ %2166, %2164 ], [ %2180, %2178 ]
  %2186 = phi i32 [ %2139, %2136 ], [ %2153, %2150 ], [ %2167, %2164 ], [ %2181, %2178 ]
  %2187 = phi i64 [ %2140, %2136 ], [ %2154, %2150 ], [ %2168, %2164 ], [ %2182, %2178 ]
  %2188 = trunc nuw nsw i64 %2187 to i32
  br label %2189

2189:                                             ; preds = %2183, %2124
  %2190 = phi ptr [ %90, %2124 ], [ %2185, %2183 ]
  %2191 = phi i32 [ %92, %2124 ], [ %2186, %2183 ]
  %2192 = phi i64 [ %94, %2124 ], [ %2184, %2183 ]
  %2193 = phi i32 [ %95, %2124 ], [ %2188, %2183 ]
  %2194 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %96, i32 %93), !nosanitize !47
  %2195 = extractvalue { i32, i1 } %2194, 0, !nosanitize !47
  %2196 = extractvalue { i32, i1 } %2194, 1, !nosanitize !47
  br i1 %2196, label %2197, label %2198, !prof !48, !nosanitize !47

2197:                                             ; preds = %2189
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2198:                                             ; preds = %2189
  %2199 = zext i32 %2195 to i64
  %2200 = load i64, ptr %50, align 8, !tbaa !103
  %2201 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2200, i64 %2199), !nosanitize !47
  %2202 = extractvalue { i64, i1 } %2201, 1, !nosanitize !47
  br i1 %2202, label %2203, label %2204, !prof !48, !nosanitize !47

2203:                                             ; preds = %2198
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2204:                                             ; preds = %2198
  %2205 = extractvalue { i64, i1 } %2201, 0, !nosanitize !47
  store i64 %2205, ptr %50, align 8, !tbaa !103
  %2206 = load i64, ptr %51, align 8, !tbaa !21
  %2207 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2206, i64 %2199), !nosanitize !47
  %2208 = extractvalue { i64, i1 } %2207, 1, !nosanitize !47
  br i1 %2208, label %2209, label %2210, !prof !48, !nosanitize !47

2209:                                             ; preds = %2204
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2210:                                             ; preds = %2204
  %2211 = extractvalue { i64, i1 } %2207, 0, !nosanitize !47
  store i64 %2211, ptr %51, align 8, !tbaa !21
  %2212 = and i32 %2122, 4
  %2213 = icmp ne i32 %2212, 0
  %2214 = icmp ne i32 %2195, 0
  %2215 = select i1 %2213, i1 %2214, i1 false
  br i1 %2215, label %2216, label %2230

2216:                                             ; preds = %2210
  %2217 = load i32, ptr %52, align 8, !tbaa !28
  %2218 = icmp eq i32 %2217, 0
  %2219 = load i64, ptr %53, align 8, !tbaa !54
  %2220 = sub nsw i64 0, %2199
  %2221 = getelementptr inbounds i8, ptr %91, i64 %2220
  br i1 %2218, label %2224, label %2222

2222:                                             ; preds = %2216
  %2223 = call i64 @crc32(i64 noundef %2219, ptr noundef nonnull %2221, i32 noundef %2195) #12
  br label %2226

2224:                                             ; preds = %2216
  %2225 = call i64 @adler32(i64 noundef %2219, ptr noundef nonnull %2221, i32 noundef %2195) #12
  br label %2226

2226:                                             ; preds = %2224, %2222
  %2227 = phi i64 [ %2223, %2222 ], [ %2225, %2224 ]
  store i64 %2227, ptr %53, align 8, !tbaa !54
  store i64 %2227, ptr %54, align 8, !tbaa !25
  %2228 = load i32, ptr %49, align 8, !tbaa !24
  %2229 = and i32 %2228, 4
  br label %2230

2230:                                             ; preds = %2226, %2210
  %2231 = phi i32 [ %2229, %2226 ], [ %2212, %2210 ]
  %2232 = phi i32 [ %2228, %2226 ], [ %2122, %2210 ]
  %2233 = icmp eq i32 %2231, 0
  br i1 %2233, label %2244, label %2234

2234:                                             ; preds = %2230
  %2235 = load i32, ptr %52, align 8, !tbaa !28
  %2236 = icmp eq i32 %2235, 0
  %2237 = trunc i64 %2192 to i32
  %2238 = call i32 @llvm.bswap.i32(i32 %2237)
  %2239 = zext i32 %2238 to i64
  %2240 = select i1 %2236, i64 %2239, i64 %2192
  %2241 = load i64, ptr %53, align 8, !tbaa !54
  %2242 = icmp eq i64 %2240, %2241
  br i1 %2242, label %2244, label %2243

2243:                                             ; preds = %2234
  store ptr @.str.17, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2344

2244:                                             ; preds = %2234, %2230, %2121
  %2245 = phi i32 [ 0, %2121 ], [ %2232, %2230 ], [ %2232, %2234 ]
  %2246 = phi ptr [ %90, %2121 ], [ %2190, %2230 ], [ %2190, %2234 ]
  %2247 = phi i32 [ %92, %2121 ], [ %2191, %2230 ], [ %2191, %2234 ]
  %2248 = phi i64 [ %94, %2121 ], [ 0, %2230 ], [ 0, %2234 ]
  %2249 = phi i32 [ %95, %2121 ], [ 0, %2230 ], [ 0, %2234 ]
  %2250 = phi i32 [ %96, %2121 ], [ %93, %2230 ], [ %93, %2234 ]
  store i32 16207, ptr %21, align 8, !tbaa !20
  br label %2251

2251:                                             ; preds = %2244, %103
  %2252 = phi i32 [ %2245, %2244 ], [ %104, %103 ]
  %2253 = phi ptr [ %2246, %2244 ], [ %90, %103 ]
  %2254 = phi i32 [ %2247, %2244 ], [ %92, %103 ]
  %2255 = phi i64 [ %2248, %2244 ], [ %94, %103 ]
  %2256 = phi i32 [ %2249, %2244 ], [ %95, %103 ]
  %2257 = phi i32 [ %2250, %2244 ], [ %96, %103 ]
  %2258 = icmp eq i32 %2252, 0
  br i1 %2258, label %2339, label %2259

2259:                                             ; preds = %2251
  %2260 = load i32, ptr %52, align 8, !tbaa !28
  %2261 = icmp eq i32 %2260, 0
  br i1 %2261, label %2339, label %2262

2262:                                             ; preds = %2259
  %2263 = icmp ult i32 %2256, 32
  br i1 %2263, label %2264, label %2327

2264:                                             ; preds = %2262
  %2265 = zext nneg i32 %2256 to i64
  %2266 = icmp eq i32 %2254, 0
  br i1 %2266, label %2458, label %2267

2267:                                             ; preds = %2264
  %2268 = load i8, ptr %2253, align 1, !tbaa !44
  %2269 = zext i8 %2268 to i64
  %2270 = shl nuw nsw i64 %2269, %2265
  %2271 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2255, i64 %2270), !nosanitize !47
  %2272 = extractvalue { i64, i1 } %2271, 1, !nosanitize !47
  br i1 %2272, label %2273, label %2274, !prof !48, !nosanitize !47

2273:                                             ; preds = %2310, %2296, %2282, %2267
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2274:                                             ; preds = %2267
  %2275 = extractvalue { i64, i1 } %2271, 0, !nosanitize !47
  %2276 = getelementptr inbounds nuw i8, ptr %2253, i64 1
  %2277 = add i32 %2254, -1
  %2278 = add nuw nsw i64 %2265, 8
  %2279 = icmp samesign ult i32 %2256, 24
  br i1 %2279, label %2280, label %2321

2280:                                             ; preds = %2274
  %2281 = icmp eq i32 %2277, 0
  br i1 %2281, label %2458, label %2282

2282:                                             ; preds = %2280
  %2283 = load i8, ptr %2276, align 1, !tbaa !44
  %2284 = zext i8 %2283 to i64
  %2285 = shl nuw nsw i64 %2284, %2278
  %2286 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2275, i64 %2285), !nosanitize !47
  %2287 = extractvalue { i64, i1 } %2286, 1, !nosanitize !47
  br i1 %2287, label %2273, label %2288, !prof !48, !nosanitize !47

2288:                                             ; preds = %2282
  %2289 = extractvalue { i64, i1 } %2286, 0, !nosanitize !47
  %2290 = getelementptr inbounds nuw i8, ptr %2253, i64 2
  %2291 = add i32 %2254, -2
  %2292 = add nuw nsw i64 %2265, 16
  %2293 = icmp samesign ult i32 %2256, 16
  br i1 %2293, label %2294, label %2321

2294:                                             ; preds = %2288
  %2295 = icmp eq i32 %2291, 0
  br i1 %2295, label %2458, label %2296

2296:                                             ; preds = %2294
  %2297 = load i8, ptr %2290, align 1, !tbaa !44
  %2298 = zext i8 %2297 to i64
  %2299 = shl nuw nsw i64 %2298, %2292
  %2300 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2289, i64 %2299), !nosanitize !47
  %2301 = extractvalue { i64, i1 } %2300, 1, !nosanitize !47
  br i1 %2301, label %2273, label %2302, !prof !48, !nosanitize !47

2302:                                             ; preds = %2296
  %2303 = extractvalue { i64, i1 } %2300, 0, !nosanitize !47
  %2304 = getelementptr inbounds nuw i8, ptr %2253, i64 3
  %2305 = add i32 %2254, -3
  %2306 = add nuw nsw i64 %2265, 24
  %2307 = icmp samesign ult i32 %2256, 8
  br i1 %2307, label %2308, label %2321

2308:                                             ; preds = %2302
  %2309 = icmp eq i32 %2305, 0
  br i1 %2309, label %2458, label %2310

2310:                                             ; preds = %2308
  %2311 = load i8, ptr %2304, align 1, !tbaa !44
  %2312 = zext i8 %2311 to i64
  %2313 = shl nuw nsw i64 %2312, %2306
  %2314 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2303, i64 %2313), !nosanitize !47
  %2315 = extractvalue { i64, i1 } %2314, 1, !nosanitize !47
  br i1 %2315, label %2273, label %2316, !prof !48, !nosanitize !47

2316:                                             ; preds = %2310
  %2317 = extractvalue { i64, i1 } %2314, 0, !nosanitize !47
  %2318 = getelementptr inbounds nuw i8, ptr %2253, i64 4
  %2319 = add i32 %2254, -4
  %2320 = or disjoint i64 %2265, 32
  br label %2321

2321:                                             ; preds = %2316, %2302, %2288, %2274
  %2322 = phi i64 [ %2275, %2274 ], [ %2289, %2288 ], [ %2303, %2302 ], [ %2317, %2316 ]
  %2323 = phi ptr [ %2276, %2274 ], [ %2290, %2288 ], [ %2304, %2302 ], [ %2318, %2316 ]
  %2324 = phi i32 [ %2277, %2274 ], [ %2291, %2288 ], [ %2305, %2302 ], [ %2319, %2316 ]
  %2325 = phi i64 [ %2278, %2274 ], [ %2292, %2288 ], [ %2306, %2302 ], [ %2320, %2316 ]
  %2326 = trunc nuw nsw i64 %2325 to i32
  br label %2327

2327:                                             ; preds = %2321, %2262
  %2328 = phi ptr [ %2253, %2262 ], [ %2323, %2321 ]
  %2329 = phi i32 [ %2254, %2262 ], [ %2324, %2321 ]
  %2330 = phi i64 [ %2255, %2262 ], [ %2322, %2321 ]
  %2331 = phi i32 [ %2256, %2262 ], [ %2326, %2321 ]
  %2332 = and i32 %2252, 4
  %2333 = icmp eq i32 %2332, 0
  br i1 %2333, label %2339, label %2334

2334:                                             ; preds = %2327
  %2335 = load i64, ptr %51, align 8, !tbaa !21
  %2336 = and i64 %2335, 4294967295
  %2337 = icmp eq i64 %2330, %2336
  br i1 %2337, label %2339, label %2338

2338:                                             ; preds = %2334
  store ptr @.str.18, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2344

2339:                                             ; preds = %2334, %2327, %2259, %2251
  %2340 = phi ptr [ %2253, %2251 ], [ %2253, %2259 ], [ %2328, %2327 ], [ %2328, %2334 ]
  %2341 = phi i32 [ %2254, %2251 ], [ %2254, %2259 ], [ %2329, %2327 ], [ %2329, %2334 ]
  %2342 = phi i64 [ %2255, %2251 ], [ %2255, %2259 ], [ 0, %2327 ], [ 0, %2334 ]
  %2343 = phi i32 [ %2256, %2251 ], [ %2256, %2259 ], [ 0, %2327 ], [ 0, %2334 ]
  store i32 16208, ptr %21, align 8, !tbaa !20
  br label %.loopexit185

2344:                                             ; preds = %2338, %2243, %2116, %2113, %.loopexit172, %1969, %1874, %1642, %1638, %1634, %1487, %1478, %1461, %1452, %1448, %1419, %1301, %1158, %1084, %1032, %1029, %992, %907, %874, %780, %767, %262, %258, %212, %211, %196, %192, %174, %128
  %2345 = phi ptr [ %90, %128 ], [ %162, %174 ], [ %162, %192 ], [ %162, %196 ], [ %162, %211 ], [ %162, %212 ], [ %251, %258 ], [ %251, %262 ], [ %756, %767 ], [ %769, %780 ], [ %858, %874 ], [ %891, %907 ], [ %984, %992 ], [ %1019, %1029 ], [ %1002, %1032 ], [ %1066, %1084 ], [ %1099, %1158 ], [ %1293, %1301 ], [ %1445, %1448 ], [ %1445, %1452 ], [ %1445, %1461 ], [ %1481, %1487 ], [ %1481, %1478 ], [ %1615, %1634 ], [ %1615, %1638 ], [ %1615, %1642 ], [ %1851, %1874 ], [ %1948, %1969 ], [ %1948, %2113 ], [ %1948, %.loopexit172 ], [ %90, %2116 ], [ %2190, %2243 ], [ %2328, %2338 ], [ %1390, %1419 ]
  %2346 = phi ptr [ %91, %128 ], [ %91, %174 ], [ %91, %192 ], [ %91, %196 ], [ %91, %211 ], [ %91, %212 ], [ %91, %258 ], [ %91, %262 ], [ %91, %767 ], [ %91, %780 ], [ %91, %874 ], [ %91, %907 ], [ %91, %992 ], [ %1031, %1029 ], [ %91, %1032 ], [ %91, %1084 ], [ %91, %1158 ], [ %91, %1301 ], [ %91, %1448 ], [ %91, %1452 ], [ %91, %1461 ], [ %1479, %1487 ], [ %1479, %1478 ], [ %91, %1634 ], [ %91, %1638 ], [ %91, %1642 ], [ %91, %1874 ], [ %91, %1969 ], [ %2110, %2113 ], [ %2110, %.loopexit172 ], [ %2120, %2116 ], [ %91, %2243 ], [ %91, %2338 ], [ %91, %1419 ]
  %2347 = phi i32 [ %92, %128 ], [ %163, %174 ], [ %163, %192 ], [ %163, %196 ], [ %163, %211 ], [ %163, %212 ], [ %252, %258 ], [ %252, %262 ], [ %757, %767 ], [ %770, %780 ], [ %859, %874 ], [ %892, %907 ], [ %985, %992 ], [ %1015, %1029 ], [ %1003, %1032 ], [ %1067, %1084 ], [ %1100, %1158 ], [ %1294, %1301 ], [ %1444, %1448 ], [ %1444, %1452 ], [ %1444, %1461 ], [ %1482, %1487 ], [ %1482, %1478 ], [ %1616, %1634 ], [ %1616, %1638 ], [ %1616, %1642 ], [ %1852, %1874 ], [ %1949, %1969 ], [ %1949, %2113 ], [ %1949, %.loopexit172 ], [ %92, %2116 ], [ %2191, %2243 ], [ %2329, %2338 ], [ %1391, %1419 ]
  %2348 = phi i32 [ %93, %128 ], [ %93, %174 ], [ %93, %192 ], [ %93, %196 ], [ %93, %211 ], [ %93, %212 ], [ %93, %258 ], [ %93, %262 ], [ %93, %767 ], [ %93, %780 ], [ %93, %874 ], [ %93, %907 ], [ %93, %992 ], [ %1021, %1029 ], [ %93, %1032 ], [ %93, %1084 ], [ %93, %1158 ], [ %93, %1301 ], [ %93, %1448 ], [ %93, %1452 ], [ %93, %1461 ], [ %1480, %1487 ], [ %1480, %1478 ], [ %93, %1634 ], [ %93, %1638 ], [ %93, %1642 ], [ %93, %1874 ], [ %93, %1969 ], [ %2003, %2113 ], [ %2003, %.loopexit172 ], [ %2119, %2116 ], [ %93, %2243 ], [ %93, %2338 ], [ %93, %1419 ]
  %2349 = phi i64 [ %94, %128 ], [ 0, %174 ], [ %164, %192 ], [ %164, %196 ], [ %198, %211 ], [ 0, %212 ], [ %253, %258 ], [ %253, %262 ], [ %758, %767 ], [ %771, %780 ], [ %877, %874 ], [ %909, %907 ], [ %986, %992 ], [ %1004, %1029 ], [ %1004, %1032 ], [ %1079, %1084 ], [ %1101, %1158 ], [ %1298, %1301 ], [ %1443, %1448 ], [ %1443, %1452 ], [ %1443, %1461 ], [ %1483, %1487 ], [ %1483, %1478 ], [ %1624, %1634 ], [ %1624, %1638 ], [ %1624, %1642 ], [ %1860, %1874 ], [ %1950, %1969 ], [ %1950, %2113 ], [ %1950, %.loopexit172 ], [ %94, %2116 ], [ %2192, %2243 ], [ %2330, %2338 ], [ %1392, %1419 ]
  %2350 = phi i32 [ %95, %128 ], [ 0, %174 ], [ %165, %192 ], [ %165, %196 ], [ %199, %211 ], [ 0, %212 ], [ %254, %258 ], [ %254, %262 ], [ %759, %767 ], [ %772, %780 ], [ %875, %874 ], [ %908, %907 ], [ %987, %992 ], [ %1005, %1029 ], [ %1005, %1032 ], [ %1080, %1084 ], [ %1102, %1158 ], [ %1299, %1301 ], [ %1442, %1448 ], [ %1442, %1452 ], [ %1442, %1461 ], [ %1484, %1487 ], [ %1484, %1478 ], [ %1626, %1634 ], [ %1626, %1638 ], [ %1626, %1642 ], [ %1862, %1874 ], [ %1951, %1969 ], [ %1951, %2113 ], [ %1951, %.loopexit172 ], [ %95, %2116 ], [ %2193, %2243 ], [ %2331, %2338 ], [ %1396, %1419 ]
  %2351 = phi i32 [ %96, %128 ], [ %96, %174 ], [ %96, %192 ], [ %96, %196 ], [ %96, %211 ], [ %96, %212 ], [ %96, %258 ], [ %96, %262 ], [ %96, %767 ], [ %96, %780 ], [ %96, %874 ], [ %96, %907 ], [ %96, %992 ], [ %96, %1029 ], [ %96, %1032 ], [ %96, %1084 ], [ %96, %1158 ], [ %96, %1301 ], [ %96, %1448 ], [ %96, %1452 ], [ %96, %1461 ], [ %96, %1487 ], [ %96, %1478 ], [ %96, %1634 ], [ %96, %1638 ], [ %96, %1642 ], [ %96, %1874 ], [ %96, %1969 ], [ %96, %2113 ], [ %96, %.loopexit172 ], [ %96, %2116 ], [ %93, %2243 ], [ %2257, %2338 ], [ %96, %1419 ]
  %2352 = phi i32 [ %97, %128 ], [ %97, %174 ], [ %97, %192 ], [ %97, %196 ], [ %97, %211 ], [ %97, %212 ], [ %97, %258 ], [ %97, %262 ], [ %97, %767 ], [ %97, %780 ], [ %97, %874 ], [ %97, %907 ], [ %97, %992 ], [ %97, %1029 ], [ %97, %1032 ], [ %97, %1084 ], [ %1156, %1158 ], [ %1165, %1301 ], [ %1165, %1448 ], [ %1450, %1452 ], [ %1459, %1461 ], [ %1474, %1487 ], [ %1474, %1478 ], [ %1474, %1634 ], [ %1474, %1638 ], [ %1474, %1642 ], [ %1720, %1874 ], [ %1952, %1969 ], [ %1952, %2113 ], [ %1952, %.loopexit172 ], [ %97, %2116 ], [ %97, %2243 ], [ %97, %2338 ], [ %1165, %1419 ]
  %2353 = load i32, ptr %21, align 8, !tbaa !20
  br label %88

.loopexit:                                        ; preds = %1197, %1201
  %2354 = phi i64 [ %1215, %1201 ], [ %1186, %1197 ]
  %2355 = zext i32 %1185 to i64
  %2356 = shl i32 %1185, 3
  %2357 = add i32 %1187, %2356
  %2358 = getelementptr i8, ptr %1184, i64 %2355
  br label %.loopexit185

2359:                                             ; preds = %142, %125
  %.lcssa2609 = phi i32 [ 1, %142 ], [ 0, %125 ]
  %2360 = phi i64 [ %137, %142 ], [ %94, %125 ]
  %2361 = zext nneg i32 %.lcssa2609 to i64
  %2362 = shl nuw nsw i32 %.lcssa2609, 3
  %2363 = add nuw nsw i32 %95, %2362
  %2364 = getelementptr i8, ptr %90, i64 %2361
  br label %.loopexit185

2365:                                             ; preds = %736, %720
  %.lcssa2013 = phi i32 [ 1, %736 ], [ 0, %720 ]
  %2366 = phi i64 [ %731, %736 ], [ %713, %720 ]
  %2367 = zext nneg i32 %.lcssa2013 to i64
  %2368 = shl nuw nsw i32 %.lcssa2013, 3
  %2369 = add nuw nsw i32 %714, %2368
  %2370 = getelementptr i8, ptr %711, i64 %2367
  br label %.loopexit185

2371:                                             ; preds = %454, %433
  %.lcssa2007 = phi i32 [ 1, %454 ], [ 0, %433 ]
  %2372 = phi i64 [ %449, %454 ], [ %436, %433 ]
  %2373 = zext nneg i32 %.lcssa2007 to i64
  %2374 = shl nuw nsw i32 %.lcssa2007, 3
  %2375 = add nuw nsw i32 %437, %2374
  %2376 = getelementptr i8, ptr %434, i64 %2373
  br label %.loopexit185

2377:                                             ; preds = %386, %366
  %.lcssa2001 = phi i32 [ 1, %386 ], [ 0, %366 ]
  %2378 = phi i64 [ %381, %386 ], [ %368, %366 ]
  %2379 = zext nneg i32 %.lcssa2001 to i64
  %2380 = shl nuw nsw i32 %.lcssa2001, 3
  %2381 = add nuw nsw i32 %2380, %367
  %2382 = getelementptr i8, ptr %370, i64 %2379
  br label %.loopexit185

2383:                                             ; preds = %331, %317, %303, %283
  %.lcssa1995 = phi i32 [ 3, %331 ], [ 2, %317 ], [ 1, %303 ], [ 0, %283 ]
  %2384 = phi i64 [ %326, %331 ], [ %312, %317 ], [ %298, %303 ], [ %285, %283 ]
  %2385 = zext nneg i32 %.lcssa1995 to i64
  %2386 = shl nuw nsw i32 %.lcssa1995, 3
  %2387 = add nuw nsw i32 %2386, %284
  %2388 = getelementptr i8, ptr %287, i64 %2385
  br label %.loopexit185

2389:                                             ; preds = %231, %117
  %.lcssa2592 = phi i32 [ 1, %231 ], [ 0, %117 ]
  %2390 = phi i64 [ %226, %231 ], [ %94, %117 ]
  %2391 = zext nneg i32 %.lcssa2592 to i64
  %2392 = shl nuw nsw i32 %.lcssa2592, 3
  %2393 = add nuw nsw i32 %95, %2392
  %2394 = getelementptr i8, ptr %90, i64 %2391
  br label %.loopexit185

2395:                                             ; preds = %823, %809, %795, %112
  %.lcssa2585 = phi i32 [ 3, %823 ], [ 2, %809 ], [ 1, %795 ], [ 0, %112 ]
  %2396 = phi i64 [ %818, %823 ], [ %804, %809 ], [ %790, %795 ], [ %94, %112 ]
  %2397 = zext nneg i32 %.lcssa2585 to i64
  %2398 = shl nuw nsw i32 %.lcssa2585, 3
  %2399 = add nuw nsw i32 %95, %2398
  %2400 = getelementptr i8, ptr %90, i64 %2397
  br label %.loopexit185

2401:                                             ; preds = %965, %951, %937, %920
  %.lcssa2580 = phi i32 [ 3, %965 ], [ 2, %951 ], [ 1, %937 ], [ 0, %920 ]
  %.lcssa1979 = phi i32 [ 0, %965 ], [ %921, %951 ], [ %921, %937 ], [ %921, %920 ]
  %2402 = phi i64 [ %960, %965 ], [ %946, %951 ], [ %932, %937 ], [ %917, %920 ]
  %2403 = zext nneg i32 %.lcssa2580 to i64
  %2404 = shl nuw nsw i32 %.lcssa2580, 3
  %2405 = add i32 %.lcssa1979, %2404
  %2406 = getelementptr i8, ptr %90, i64 %2403
  br label %.loopexit185

.loopexit176:                                     ; preds = %1888, %1892
  %2407 = phi i64 [ %1905, %1892 ], [ %1882, %1888 ]
  %2408 = zext i32 %1881 to i64
  %2409 = shl i32 %1881, 3
  %2410 = add i32 %1883, %2409
  %2411 = getelementptr i8, ptr %1880, i64 %2408
  br label %.loopexit185

.loopexit177:                                     ; preds = %1795, %1799
  %2412 = phi i64 [ %1814, %1799 ], [ %1770, %1795 ]
  %2413 = zext i32 %1769 to i64
  %2414 = shl i32 %1769, 3
  %2415 = add i32 %1771, %2414
  %2416 = getelementptr i8, ptr %1768, i64 %2413
  br label %.loopexit185

.loopexit178:                                     ; preds = %1733, %1737
  %2417 = phi i64 [ %1751, %1737 ], [ %1718, %1733 ]
  %2418 = zext i32 %1717 to i64
  %2419 = shl i32 %1717, 3
  %2420 = add i32 %1719, %2419
  %2421 = getelementptr i8, ptr %1716, i64 %2418
  br label %.loopexit185

.loopexit180:                                     ; preds = %1655, %1659
  %2422 = phi i64 [ %1672, %1659 ], [ %1649, %1655 ]
  %2423 = zext i32 %1648 to i64
  %2424 = shl i32 %1648, 3
  %2425 = add i32 %1650, %2424
  %2426 = getelementptr i8, ptr %1647, i64 %2423
  br label %.loopexit185

.loopexit181:                                     ; preds = %1564, %1568
  %2427 = phi i64 [ %1582, %1568 ], [ %1538, %1564 ]
  %2428 = zext i32 %1537 to i64
  %2429 = shl i32 %1537, 3
  %2430 = add i32 %1539, %2429
  %2431 = getelementptr i8, ptr %1536, i64 %2428
  br label %.loopexit185

.loopexit182:                                     ; preds = %1501, %1505
  %2432 = phi i64 [ %1519, %1505 ], [ %1472, %1501 ]
  %2433 = zext i32 %1471 to i64
  %2434 = shl i32 %1471, 3
  %2435 = add i32 %1473, %2434
  %2436 = getelementptr i8, ptr %1470, i64 %2433
  br label %.loopexit185

2437:                                             ; preds = %1352
  %2438 = zext i32 %1233 to i64
  %2439 = shl i32 %1233, 3
  %2440 = add i32 %1235, %2439
  %2441 = getelementptr i8, ptr %1232, i64 %2438
  br label %.loopexit185

2442:                                             ; preds = %1271
  %2443 = zext i32 %1233 to i64
  %2444 = shl i32 %1233, 3
  %2445 = add i32 %1235, %2444
  %2446 = getelementptr i8, ptr %1232, i64 %2443
  br label %.loopexit185

2447:                                             ; preds = %1315
  %2448 = zext i32 %1233 to i64
  %2449 = shl i32 %1233, 3
  %2450 = add i32 %1235, %2449
  %2451 = getelementptr i8, ptr %1232, i64 %2448
  br label %.loopexit185

2452:                                             ; preds = %1046, %107
  %.lcssa2524 = phi i32 [ 1, %1046 ], [ 0, %107 ]
  %2453 = phi i64 [ %1041, %1046 ], [ %94, %107 ]
  %2454 = zext nneg i32 %.lcssa2524 to i64
  %2455 = shl nuw nsw i32 %.lcssa2524, 3
  %2456 = add nuw nsw i32 %95, %2455
  %2457 = getelementptr i8, ptr %90, i64 %2454
  br label %.loopexit185

2458:                                             ; preds = %2308, %2294, %2280, %2264
  %.lcssa1769 = phi i32 [ 3, %2308 ], [ 2, %2294 ], [ 1, %2280 ], [ 0, %2264 ]
  %2459 = phi i64 [ %2303, %2308 ], [ %2289, %2294 ], [ %2275, %2280 ], [ %2255, %2264 ]
  %2460 = zext nneg i32 %.lcssa1769 to i64
  %2461 = shl nuw nsw i32 %.lcssa1769, 3
  %2462 = add nuw nsw i32 %2256, %2461
  %2463 = getelementptr i8, ptr %2253, i64 %2460
  br label %.loopexit185

2464:                                             ; preds = %2170, %2156, %2142, %2126
  %.lcssa2516 = phi i32 [ 3, %2170 ], [ 2, %2156 ], [ 1, %2142 ], [ 0, %2126 ]
  %2465 = phi i64 [ %2165, %2170 ], [ %2151, %2156 ], [ %2137, %2142 ], [ %94, %2126 ]
  %2466 = zext nneg i32 %.lcssa2516 to i64
  %2467 = shl nuw nsw i32 %.lcssa2516, 3
  %2468 = add nuw nsw i32 %95, %2467
  %2469 = getelementptr i8, ptr %90, i64 %2466
  br label %.loopexit185

.loopexit185.loopexit5580:                        ; preds = %88
  br label %.loopexit185

.loopexit185:                                     ; preds = %2114, %1947, %1462, %1008, %993, %866, %852, %698, %654, %634, %590, %574, %1114, %88, %.loopexit185.loopexit5580, %2464, %2458, %2452, %2447, %2442, %2437, %.loopexit182, %.loopexit181, %.loopexit180, %.loopexit178, %.loopexit177, %.loopexit176, %2401, %2395, %2389, %2383, %2377, %2371, %2365, %2359, %.loopexit, %2339, %900
  %2470 = phi i32 [ %93, %2458 ], [ %93, %2359 ], [ %93, %.loopexit ], [ %93, %1114 ], [ %93, %2464 ], [ %93, %2437 ], [ %93, %2401 ], [ %93, %.loopexit176 ], [ %93, %2389 ], [ %93, %2377 ], [ %93, %.loopexit180 ], [ %93, %2371 ], [ %93, %2339 ], [ %93, %2365 ], [ %93, %900 ], [ %93, %.loopexit182 ], [ %93, %2447 ], [ %93, %.loopexit181 ], [ %93, %.loopexit177 ], [ %93, %2452 ], [ %93, %2383 ], [ %93, %.loopexit178 ], [ %93, %2442 ], [ %93, %2395 ], [ %93, %88 ], [ %93, %866 ], [ 0, %2114 ], [ 0, %1947 ], [ %93, %1462 ], [ %93, %1008 ], [ %93, %993 ], [ %93, %852 ], [ %93, %698 ], [ %93, %654 ], [ %93, %634 ], [ %93, %590 ], [ %93, %574 ], [ %93, %.loopexit185.loopexit5580 ]
  %2471 = phi ptr [ %2463, %2458 ], [ %2364, %2359 ], [ %2358, %.loopexit ], [ %1112, %1114 ], [ %2469, %2464 ], [ %2441, %2437 ], [ %2406, %2401 ], [ %2411, %.loopexit176 ], [ %2394, %2389 ], [ %2382, %2377 ], [ %2426, %.loopexit180 ], [ %2376, %2371 ], [ %2340, %2339 ], [ %2370, %2365 ], [ %891, %900 ], [ %2436, %.loopexit182 ], [ %2451, %2447 ], [ %2431, %.loopexit181 ], [ %2416, %.loopexit177 ], [ %2457, %2452 ], [ %2388, %2383 ], [ %2421, %.loopexit178 ], [ %2446, %2442 ], [ %2400, %2395 ], [ %90, %88 ], [ %858, %866 ], [ %90, %2114 ], [ %1948, %1947 ], [ %1445, %1462 ], [ %1002, %1008 ], [ %984, %993 ], [ %853, %852 ], [ %701, %698 ], [ %647, %654 ], [ %637, %634 ], [ %583, %590 ], [ %576, %574 ], [ %90, %.loopexit185.loopexit5580 ]
  %2472 = phi i32 [ 0, %2458 ], [ 0, %2359 ], [ 0, %.loopexit ], [ 0, %1114 ], [ 0, %2464 ], [ 0, %2437 ], [ 0, %2401 ], [ 0, %.loopexit176 ], [ 0, %2389 ], [ 0, %2377 ], [ 0, %.loopexit180 ], [ 0, %2371 ], [ %2341, %2339 ], [ 0, %2365 ], [ %892, %900 ], [ 0, %.loopexit182 ], [ 0, %2447 ], [ 0, %.loopexit181 ], [ 0, %.loopexit177 ], [ 0, %2452 ], [ 0, %2383 ], [ 0, %.loopexit178 ], [ 0, %2442 ], [ 0, %2395 ], [ %92, %88 ], [ 0, %866 ], [ %92, %2114 ], [ %1949, %1947 ], [ %1444, %1462 ], [ %1003, %1008 ], [ %985, %993 ], [ %854, %852 ], [ %699, %698 ], [ 0, %654 ], [ %635, %634 ], [ 0, %590 ], [ %577, %574 ], [ %92, %.loopexit185.loopexit5580 ]
  %2473 = phi i64 [ %2459, %2458 ], [ %2360, %2359 ], [ %2354, %.loopexit ], [ %1110, %1114 ], [ %2465, %2464 ], [ %1354, %2437 ], [ %2402, %2401 ], [ %2407, %.loopexit176 ], [ %2390, %2389 ], [ %2378, %2377 ], [ %2422, %.loopexit180 ], [ %2372, %2371 ], [ %2342, %2339 ], [ %2366, %2365 ], [ %902, %900 ], [ %2432, %.loopexit182 ], [ %1317, %2447 ], [ %2427, %.loopexit181 ], [ %2412, %.loopexit177 ], [ %2453, %2452 ], [ %2384, %2383 ], [ %2417, %.loopexit178 ], [ %1273, %2442 ], [ %2396, %2395 ], [ %94, %88 ], [ %860, %866 ], [ %94, %2114 ], [ %1950, %1947 ], [ %1443, %1462 ], [ %1004, %1008 ], [ 0, %993 ], [ %855, %852 ], [ %649, %698 ], [ %649, %654 ], [ %585, %634 ], [ %585, %590 ], [ %504, %574 ], [ %94, %.loopexit185.loopexit5580 ]
  %2474 = phi i32 [ %2462, %2458 ], [ %2363, %2359 ], [ %2357, %.loopexit ], [ %1109, %1114 ], [ %2468, %2464 ], [ %2440, %2437 ], [ %2405, %2401 ], [ %2410, %.loopexit176 ], [ %2393, %2389 ], [ %2381, %2377 ], [ %2425, %.loopexit180 ], [ %2375, %2371 ], [ %2343, %2339 ], [ %2369, %2365 ], [ %901, %900 ], [ %2435, %.loopexit182 ], [ %2450, %2447 ], [ %2430, %.loopexit181 ], [ %2415, %.loopexit177 ], [ %2456, %2452 ], [ %2387, %2383 ], [ %2420, %.loopexit178 ], [ %2445, %2442 ], [ %2399, %2395 ], [ %95, %88 ], [ %861, %866 ], [ %95, %2114 ], [ %1951, %1947 ], [ %1442, %1462 ], [ %1005, %1008 ], [ 0, %993 ], [ %856, %852 ], [ %650, %698 ], [ %650, %654 ], [ %586, %634 ], [ %586, %590 ], [ %505, %574 ], [ %95, %.loopexit185.loopexit5580 ]
  %2475 = phi i32 [ %2257, %2458 ], [ %96, %2359 ], [ %96, %.loopexit ], [ %96, %1114 ], [ %96, %2464 ], [ %96, %2437 ], [ %96, %2401 ], [ %96, %.loopexit176 ], [ %96, %2389 ], [ %96, %2377 ], [ %96, %.loopexit180 ], [ %96, %2371 ], [ %2257, %2339 ], [ %96, %2365 ], [ %96, %900 ], [ %96, %.loopexit182 ], [ %96, %2447 ], [ %96, %.loopexit181 ], [ %96, %.loopexit177 ], [ %96, %2452 ], [ %96, %2383 ], [ %96, %.loopexit178 ], [ %96, %2442 ], [ %96, %2395 ], [ %96, %88 ], [ %96, %574 ], [ %96, %590 ], [ %96, %634 ], [ %96, %654 ], [ %96, %698 ], [ %96, %852 ], [ %96, %866 ], [ %96, %993 ], [ %96, %1008 ], [ %96, %1462 ], [ %96, %1947 ], [ %96, %2114 ], [ %96, %.loopexit185.loopexit5580 ]
  %2476 = phi i32 [ %97, %2458 ], [ %97, %2359 ], [ %1165, %.loopexit ], [ %97, %1114 ], [ %97, %2464 ], [ %1165, %2437 ], [ %97, %2401 ], [ %1884, %.loopexit176 ], [ %97, %2389 ], [ %97, %2377 ], [ %1651, %.loopexit180 ], [ %97, %2371 ], [ 1, %2339 ], [ %97, %2365 ], [ %97, %900 ], [ %1474, %.loopexit182 ], [ %1165, %2447 ], [ %1474, %.loopexit181 ], [ %1720, %.loopexit177 ], [ %97, %2452 ], [ %97, %2383 ], [ %1720, %.loopexit178 ], [ %1165, %2442 ], [ %97, %2395 ], [ 1, %88 ], [ %97, %866 ], [ %97, %2114 ], [ %1952, %1947 ], [ 0, %1462 ], [ %97, %1008 ], [ %97, %993 ], [ %97, %852 ], [ %97, %698 ], [ %97, %654 ], [ %97, %634 ], [ %97, %590 ], [ %97, %574 ], [ -3, %.loopexit185.loopexit5580 ]
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %2470, ptr %41, align 8, !tbaa !52
  store ptr %2471, ptr %0, align 8, !tbaa !50
  store i32 %2472, ptr %43, align 8, !tbaa !51
  store i64 %2473, ptr %45, align 8, !tbaa !31
  store i32 %2474, ptr %47, align 8, !tbaa !32
  %2477 = load i32, ptr %79, align 4, !tbaa !38
  %2478 = icmp eq i32 %2477, 0
  br i1 %2478, label %2479, label %2488

2479:                                             ; preds = %.loopexit185
  %2480 = icmp eq i32 %2475, %2470
  br i1 %2480, label %2576, label %2481

2481:                                             ; preds = %2479
  %2482 = load i32, ptr %21, align 8, !tbaa !20
  %2483 = icmp ult i32 %2482, 16209
  br i1 %2483, label %2484, label %2576

2484:                                             ; preds = %2481
  %2485 = icmp samesign ult i32 %2482, 16206
  %2486 = icmp ne i32 %1, 4
  %2487 = or i1 %2486, %2485
  br i1 %2487, label %2488, label %2576

2488:                                             ; preds = %2484, %.loopexit185
  %2489 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2475, i32 %2470), !nosanitize !47
  %2490 = extractvalue { i32, i1 } %2489, 1, !nosanitize !47
  br i1 %2490, label %2491, label %2492, !prof !48, !nosanitize !47

2491:                                             ; preds = %2488
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2492:                                             ; preds = %2488
  %2493 = extractvalue { i32, i1 } %2489, 0, !nosanitize !47
  %2494 = load ptr, ptr %14, align 8, !tbaa !15
  %2495 = getelementptr inbounds nuw i8, ptr %2494, i64 72
  %2496 = load ptr, ptr %2495, align 8, !tbaa !41
  %2497 = icmp eq ptr %2496, null
  br i1 %2497, label %2498, label %2507

2498:                                             ; preds = %2492
  %2499 = load ptr, ptr %6, align 8, !tbaa !8
  %2500 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %2501 = load ptr, ptr %2500, align 8, !tbaa !43
  %2502 = getelementptr inbounds nuw i8, ptr %2494, i64 56
  %2503 = load i32, ptr %2502, align 8, !tbaa !42
  %2504 = shl nuw i32 1, %2503
  %2505 = call ptr %2499(ptr noundef %2501, i32 noundef %2504, i32 noundef 1) #12, !inline_history !104
  store ptr %2505, ptr %2495, align 8, !tbaa !41
  %2506 = icmp eq ptr %2505, null
  br i1 %2506, label %2575, label %2507

2507:                                             ; preds = %2498, %2492
  %2508 = phi ptr [ %2505, %2498 ], [ %2496, %2492 ]
  %2509 = getelementptr inbounds nuw i8, ptr %2494, i64 60
  %2510 = load i32, ptr %2509, align 4, !tbaa !38
  %2511 = icmp eq i32 %2510, 0
  br i1 %2511, label %2512, label %2518

2512:                                             ; preds = %2507
  %2513 = getelementptr inbounds nuw i8, ptr %2494, i64 56
  %2514 = load i32, ptr %2513, align 8, !tbaa !42
  %2515 = shl nuw i32 1, %2514
  store i32 %2515, ptr %2509, align 4, !tbaa !38
  %2516 = getelementptr inbounds nuw i8, ptr %2494, i64 68
  store i32 0, ptr %2516, align 4, !tbaa !40
  %2517 = getelementptr inbounds nuw i8, ptr %2494, i64 64
  store i32 0, ptr %2517, align 8, !tbaa !39
  br label %2518

2518:                                             ; preds = %2512, %2507
  %2519 = phi i32 [ %2515, %2512 ], [ %2510, %2507 ]
  %2520 = icmp ult i32 %2493, %2519
  br i1 %2520, label %2528, label %2521

2521:                                             ; preds = %2518
  %2522 = zext i32 %2519 to i64
  %2523 = sub nsw i64 0, %2522
  %2524 = getelementptr inbounds i8, ptr %91, i64 %2523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2508, ptr noundef nonnull readonly align 1 dereferenceable(1) %2524, i64 %2522, i1 false)
  %2525 = getelementptr inbounds nuw i8, ptr %2494, i64 68
  store i32 0, ptr %2525, align 4, !tbaa !40
  %2526 = load i32, ptr %2509, align 4, !tbaa !38
  %2527 = getelementptr inbounds nuw i8, ptr %2494, i64 64
  store i32 %2526, ptr %2527, align 8, !tbaa !39
  br label %2576

2528:                                             ; preds = %2518
  %2529 = getelementptr inbounds nuw i8, ptr %2494, i64 68
  %2530 = load i32, ptr %2529, align 4, !tbaa !40
  %2531 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2519, i32 %2530), !nosanitize !47
  %2532 = extractvalue { i32, i1 } %2531, 1, !nosanitize !47
  br i1 %2532, label %2533, label %2534, !prof !48, !nosanitize !47

2533:                                             ; preds = %2528
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2534:                                             ; preds = %2528
  %2535 = extractvalue { i32, i1 } %2531, 0, !nosanitize !47
  %2536 = call i32 @llvm.umin.i32(i32 %2535, i32 %2493)
  %2537 = zext i32 %2530 to i64
  %2538 = getelementptr inbounds nuw i8, ptr %2508, i64 %2537
  %2539 = zext i32 %2493 to i64
  %2540 = sub nsw i64 0, %2539
  %2541 = getelementptr inbounds i8, ptr %91, i64 %2540
  %2542 = zext i32 %2536 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2538, ptr readonly align 1 %2541, i64 %2542, i1 false)
  %2543 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2493, i32 %2536), !nosanitize !47
  %2544 = extractvalue { i32, i1 } %2543, 0, !nosanitize !47
  %2545 = extractvalue { i32, i1 } %2543, 1, !nosanitize !47
  br i1 %2545, label %2546, label %2547, !prof !48, !nosanitize !47

2546:                                             ; preds = %2534
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2547:                                             ; preds = %2534
  %2548 = icmp eq i32 %2544, 0
  br i1 %2548, label %2556, label %2549

2549:                                             ; preds = %2547
  %2550 = load ptr, ptr %2495, align 8, !tbaa !41
  %2551 = zext i32 %2544 to i64
  %2552 = sub nsw i64 0, %2551
  %2553 = getelementptr inbounds i8, ptr %91, i64 %2552
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2550, ptr nonnull readonly align 1 %2553, i64 %2551, i1 false)
  store i32 %2544, ptr %2529, align 4, !tbaa !40
  %2554 = load i32, ptr %2509, align 4, !tbaa !38
  %2555 = getelementptr inbounds nuw i8, ptr %2494, i64 64
  store i32 %2554, ptr %2555, align 8, !tbaa !39
  br label %2576

2556:                                             ; preds = %2547
  %2557 = load i32, ptr %2529, align 4, !tbaa !40
  %2558 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2557, i32 %2536), !nosanitize !47
  %2559 = extractvalue { i32, i1 } %2558, 1, !nosanitize !47
  br i1 %2559, label %2560, label %2561, !prof !48, !nosanitize !47

2560:                                             ; preds = %2556
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2561:                                             ; preds = %2556
  %2562 = extractvalue { i32, i1 } %2558, 0, !nosanitize !47
  %2563 = load i32, ptr %2509, align 4, !tbaa !38
  %2564 = icmp eq i32 %2562, %2563
  %2565 = select i1 %2564, i32 0, i32 %2562
  store i32 %2565, ptr %2529, align 4
  %2566 = getelementptr inbounds nuw i8, ptr %2494, i64 64
  %2567 = load i32, ptr %2566, align 8, !tbaa !39
  %2568 = icmp ult i32 %2567, %2563
  br i1 %2568, label %2569, label %2576

2569:                                             ; preds = %2561
  %2570 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2567, i32 %2536), !nosanitize !47
  %2571 = extractvalue { i32, i1 } %2570, 1, !nosanitize !47
  br i1 %2571, label %2572, label %2573, !prof !48, !nosanitize !47

2572:                                             ; preds = %2569
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2573:                                             ; preds = %2569
  %2574 = extractvalue { i32, i1 } %2570, 0, !nosanitize !47
  store i32 %2574, ptr %2566, align 8, !tbaa !39
  br label %2576

2575:                                             ; preds = %2498
  store i32 16210, ptr %21, align 8, !tbaa !20
  br label %.loopexit187

2576:                                             ; preds = %2573, %2561, %2549, %2521, %2484, %2481, %2479
  %2577 = load i32, ptr %43, align 8, !tbaa !51
  %2578 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %44, i32 %2577), !nosanitize !47
  %2579 = extractvalue { i32, i1 } %2578, 0, !nosanitize !47
  %2580 = extractvalue { i32, i1 } %2578, 1, !nosanitize !47
  br i1 %2580, label %2581, label %2582, !prof !48, !nosanitize !47

2581:                                             ; preds = %2576
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2582:                                             ; preds = %2576
  %2583 = load i32, ptr %41, align 8, !tbaa !52
  %2584 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2475, i32 %2583), !nosanitize !47
  %2585 = extractvalue { i32, i1 } %2584, 0, !nosanitize !47
  %2586 = extractvalue { i32, i1 } %2584, 1, !nosanitize !47
  br i1 %2586, label %2587, label %2588, !prof !48, !nosanitize !47

2587:                                             ; preds = %2582
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2588:                                             ; preds = %2582
  %2589 = zext i32 %2579 to i64
  %2590 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2591 = load i64, ptr %2590, align 8, !tbaa !22
  %2592 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2591, i64 %2589), !nosanitize !47
  %2593 = extractvalue { i64, i1 } %2592, 1, !nosanitize !47
  br i1 %2593, label %2594, label %2595, !prof !48, !nosanitize !47

2594:                                             ; preds = %2588
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2595:                                             ; preds = %2588
  %2596 = extractvalue { i64, i1 } %2592, 0, !nosanitize !47
  store i64 %2596, ptr %2590, align 8, !tbaa !22
  %2597 = zext i32 %2585 to i64
  %2598 = load i64, ptr %50, align 8, !tbaa !103
  %2599 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2598, i64 %2597), !nosanitize !47
  %2600 = extractvalue { i64, i1 } %2599, 1, !nosanitize !47
  br i1 %2600, label %2601, label %2602, !prof !48, !nosanitize !47

2601:                                             ; preds = %2595
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2602:                                             ; preds = %2595
  %2603 = extractvalue { i64, i1 } %2599, 0, !nosanitize !47
  store i64 %2603, ptr %50, align 8, !tbaa !103
  %2604 = load i64, ptr %51, align 8, !tbaa !21
  %2605 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2604, i64 %2597), !nosanitize !47
  %2606 = extractvalue { i64, i1 } %2605, 1, !nosanitize !47
  br i1 %2606, label %2607, label %2608, !prof !48, !nosanitize !47

2607:                                             ; preds = %2642, %2635, %2628, %2602
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2608:                                             ; preds = %2602
  %2609 = extractvalue { i64, i1 } %2605, 0, !nosanitize !47
  store i64 %2609, ptr %51, align 8, !tbaa !21
  %2610 = load i32, ptr %49, align 8, !tbaa !24
  %2611 = and i32 %2610, 4
  %2612 = icmp ne i32 %2611, 0
  %2613 = icmp ne i32 %2585, 0
  %2614 = select i1 %2612, i1 %2613, i1 false
  br i1 %2614, label %2615, label %2628

2615:                                             ; preds = %2608
  %2616 = load i32, ptr %52, align 8, !tbaa !28
  %2617 = icmp eq i32 %2616, 0
  %2618 = load i64, ptr %53, align 8, !tbaa !54
  %2619 = load ptr, ptr %26, align 8, !tbaa !49
  %2620 = sub nsw i64 0, %2597
  %2621 = getelementptr inbounds i8, ptr %2619, i64 %2620
  br i1 %2617, label %2624, label %2622

2622:                                             ; preds = %2615
  %2623 = call i64 @crc32(i64 noundef %2618, ptr noundef nonnull %2621, i32 noundef %2585) #12
  br label %2626

2624:                                             ; preds = %2615
  %2625 = call i64 @adler32(i64 noundef %2618, ptr noundef nonnull %2621, i32 noundef %2585) #12
  br label %2626

2626:                                             ; preds = %2624, %2622
  %2627 = phi i64 [ %2623, %2622 ], [ %2625, %2624 ]
  store i64 %2627, ptr %53, align 8, !tbaa !54
  store i64 %2627, ptr %54, align 8, !tbaa !25
  br label %2628

2628:                                             ; preds = %2626, %2608
  %2629 = load i32, ptr %47, align 8, !tbaa !32
  %2630 = load i32, ptr %83, align 4, !tbaa !26
  %2631 = icmp eq i32 %2630, 0
  %2632 = select i1 %2631, i32 0, i32 64
  %2633 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2629, i32 %2632), !nosanitize !47
  %2634 = extractvalue { i32, i1 } %2633, 1, !nosanitize !47
  br i1 %2634, label %2607, label %2635, !prof !48, !nosanitize !47

2635:                                             ; preds = %2628
  %2636 = extractvalue { i32, i1 } %2633, 0, !nosanitize !47
  %2637 = load i32, ptr %21, align 8, !tbaa !20
  %2638 = icmp eq i32 %2637, 16191
  %2639 = select i1 %2638, i32 128, i32 0
  %2640 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2636, i32 %2639), !nosanitize !47
  %2641 = extractvalue { i32, i1 } %2640, 1, !nosanitize !47
  br i1 %2641, label %2607, label %2642, !prof !48, !nosanitize !47

2642:                                             ; preds = %2635
  %2643 = extractvalue { i32, i1 } %2640, 0, !nosanitize !47
  %2644 = icmp eq i32 %2637, 16199
  %2645 = icmp eq i32 %2637, 16194
  %2646 = or i1 %2644, %2645
  %2647 = select i1 %2646, i32 256, i32 0
  %2648 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2643, i32 %2647), !nosanitize !47
  %2649 = extractvalue { i32, i1 } %2648, 1, !nosanitize !47
  br i1 %2649, label %2607, label %2650, !prof !48, !nosanitize !47

2650:                                             ; preds = %2642
  %2651 = extractvalue { i32, i1 } %2648, 0, !nosanitize !47
  %2652 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %2651, ptr %2652, align 8, !tbaa !23
  %2653 = icmp eq i32 %2579, 0
  %2654 = icmp eq i32 %2585, 0
  %2655 = select i1 %2653, i1 %2654, i1 false
  %2656 = icmp eq i32 %1, 4
  %2657 = or i1 %2656, %2655
  %2658 = icmp eq i32 %2476, 0
  %2659 = select i1 %2657, i1 %2658, i1 false
  %2660 = select i1 %2659, i32 -5, i32 %2476
  br label %.loopexit187

.loopexit187.loopexit:                            ; preds = %88
  br label %.loopexit187

.loopexit187:                                     ; preds = %88, %.loopexit187.loopexit, %2650, %2575, %849, %32, %25, %20, %17, %13, %9, %5, %2
  %2661 = phi i32 [ -2, %20 ], [ -2, %.loopexit187.loopexit ], [ -4, %2575 ], [ %2660, %2650 ], [ 2, %849 ], [ -2, %32 ], [ -2, %25 ], [ -2, %17 ], [ -2, %13 ], [ -2, %2 ], [ -2, %9 ], [ -2, %5 ], [ -4, %88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %2661
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #4

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

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

37:                                               ; preds = %32, %18, %15, %11, %7, %3, %1
  %38 = phi i32 [ 0, %32 ], [ -2, %18 ], [ -2, %11 ], [ -2, %1 ], [ -2, %7 ], [ -2, %3 ], [ -2, %15 ]
  ret i32 %38
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflateGetDictionary(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #7 {
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
define dso_local range(i32 -5, 1) i32 @inflateSync(ptr noundef captures(address) %0) local_unnamed_addr #7 {
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
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
