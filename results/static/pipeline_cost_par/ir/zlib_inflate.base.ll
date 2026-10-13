; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_inflate.ll'
source_filename = "/mydata/zlib/inflate.c"
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

49:                                               ; preds = %35, %18, %15, %11, %7, %3, %1
  %50 = phi i32 [ 0, %35 ], [ -2, %18 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %50
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
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

52:                                               ; preds = %38, %18, %15, %11, %7, %3, %1
  %53 = phi i32 [ -2, %18 ], [ 0, %38 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @inflateReset2(ptr noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %95, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !5
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
  %50 = load ptr, ptr %5, align 8, !tbaa !5
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
  %96 = phi i32 [ -2, %19 ], [ -2, %26 ], [ -2, %select.unfold ], [ -2, %61 ], [ 0, %81 ], [ -2, %53 ], [ -2, %47 ], [ -2, %58 ], [ -2, %55 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %96
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @inflateInit2_(ptr noundef %0, i32 noundef %1, ptr noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #1 {
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
  %34 = load ptr, ptr %15, align 8, !tbaa !5
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
  %85 = phi i32 [ -6, %6 ], [ -6, %4 ], [ -2, %11 ], [ -4, %26 ], [ -2, %82 ], [ 0, %68 ]
  ret i32 %85
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #4

declare void @zcfree(ptr noundef, ptr noundef) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @inflateInit_(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #1 {
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
  %28 = tail call ptr %20(ptr noundef %27, i32 noundef 1, i32 noundef 7160) #12
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
  tail call void %35(ptr noundef %66, ptr noundef nonnull %28) #12
  store ptr null, ptr %32, align 8, !tbaa !15
  br label %67

67:                                               ; preds = %65, %51, %25, %10, %5, %3
  %68 = phi i32 [ -6, %5 ], [ -6, %3 ], [ -2, %10 ], [ -4, %25 ], [ -2, %65 ], [ 0, %51 ]
  ret i32 %68
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflatePrime(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
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
  %60 = phi i32 [ 0, %29 ], [ 0, %57 ], [ -2, %20 ], [ 0, %25 ], [ -2, %40 ], [ -2, %32 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %60
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @inflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %.loopexit166, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %.loopexit166, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %.loopexit166, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %.loopexit166, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %.loopexit166

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %.loopexit166

25:                                               ; preds = %20
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = icmp eq ptr %27, null
  br i1 %28, label %.loopexit166, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 8, !tbaa !50
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i32, ptr %33, align 8, !tbaa !51
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %.loopexit166

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
  %85 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %86 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %87 = getelementptr inbounds nuw i8, ptr %15, i64 28
  br label %88

88:                                               ; preds = %2283, %39
  %89 = phi i32 [ %40, %39 ], [ %2292, %2283 ]
  %90 = phi ptr [ %30, %39 ], [ %2284, %2283 ]
  %91 = phi ptr [ %27, %39 ], [ %2285, %2283 ]
  %92 = phi i32 [ %44, %39 ], [ %2286, %2283 ]
  %93 = phi i32 [ %42, %39 ], [ %2287, %2283 ]
  %94 = phi i64 [ %46, %39 ], [ %2288, %2283 ]
  %95 = phi i32 [ %48, %39 ], [ %2289, %2283 ]
  %96 = phi i32 [ %42, %39 ], [ %2290, %2283 ]
  %97 = phi i32 [ 0, %39 ], [ %2291, %2283 ]
  %98 = ptrtoaddr ptr %91 to i64
  switch i32 %89, label %.loopexit166.loopexit [
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
    i32 16199, label %1456
    i32 16200, label %1462
    i32 16201, label %101
    i32 16202, label %1705
    i32 16203, label %99
    i32 16204, label %1934
    i32 16205, label %2053
    i32 16206, label %2060
    i32 16207, label %103
    i32 16208, label %.loopexit164
    i32 16209, label %.loopexit164.loopexit5127
    i32 16210, label %.loopexit166
  ]

99:                                               ; preds = %88
  %100 = load i32, ptr %72, align 4, !tbaa !53
  br label %1866

101:                                              ; preds = %88
  %102 = load i32, ptr %72, align 4, !tbaa !53
  br label %1636

103:                                              ; preds = %88
  %104 = load i32, ptr %49, align 8, !tbaa !24
  br label %2190

105:                                              ; preds = %88
  %106 = icmp ult i32 %95, 14
  br i1 %106, label %107, label %1065

107:                                              ; preds = %105
  %108 = zext nneg i32 %95 to i64
  %109 = icmp eq i32 %92, 0
  br i1 %109, label %2384, label %1033

110:                                              ; preds = %88
  %111 = icmp ult i32 %95, 32
  br i1 %111, label %112, label %835

112:                                              ; preds = %110
  %113 = zext nneg i32 %95 to i64
  %114 = icmp eq i32 %92, 0
  br i1 %114, label %2333, label %782

115:                                              ; preds = %88
  %116 = icmp ult i32 %95, 16
  br i1 %116, label %117, label %250

117:                                              ; preds = %115
  %118 = zext nneg i32 %95 to i64
  %119 = icmp eq i32 %92, 0
  br i1 %119, label %2327, label %218

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
  br i1 %127, label %2297, label %129

128:                                              ; preds = %120
  store i32 16192, ptr %21, align 8, !tbaa !20
  br label %2283

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
  br i1 %141, label %142, label %155, !llvm.loop !54

142:                                              ; preds = %136
  %143 = icmp eq i32 %139, 0
  br i1 %143, label %2297, label %144

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
  %171 = load i32, ptr %86, align 8, !tbaa !42
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  store i32 15, ptr %86, align 8, !tbaa !42
  br label %174

174:                                              ; preds = %173, %170
  %175 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %175, ptr %53, align 8, !tbaa !56
  store i8 31, ptr %3, align 4, !tbaa !44
  store i8 -117, ptr %85, align 1, !tbaa !44
  %176 = call i64 @crc32(i64 noundef %175, ptr noundef nonnull %3, i32 noundef 2) #12
  store i64 %176, ptr %53, align 8, !tbaa !56
  store i32 16181, ptr %21, align 8, !tbaa !20
  br label %2283

177:                                              ; preds = %161
  %178 = load ptr, ptr %84, align 8, !tbaa !30
  %179 = icmp eq ptr %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %177
  %181 = getelementptr inbounds nuw i8, ptr %178, i64 72
  store i32 -1, ptr %181, align 8, !tbaa !57
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
  br label %2283

193:                                              ; preds = %185
  %194 = and i64 %164, 15
  %195 = icmp eq i64 %194, 8
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  store ptr @.str.2, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2283

197:                                              ; preds = %193
  %198 = lshr i64 %164, 4
  %199 = add i32 %165, -4
  %200 = trunc i64 %198 to i32
  %201 = and i32 %200, 15
  %202 = add nuw nsw i32 %201, 8
  %203 = load i32, ptr %86, align 8, !tbaa !42
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %197
  store i32 %202, ptr %86, align 8, !tbaa !42
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
  br label %2283

212:                                              ; preds = %206
  %213 = shl nuw nsw i32 256, %201
  store i32 %213, ptr %87, align 4, !tbaa !29
  store i32 0, ptr %52, align 8, !tbaa !28
  %214 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %214, ptr %53, align 8, !tbaa !56
  store i64 %214, ptr %54, align 8, !tbaa !25
  %215 = and i64 %164, 8192
  %216 = icmp eq i64 %215, 0
  %217 = select i1 %216, i32 16191, i32 16189
  store i32 %217, ptr %21, align 8, !tbaa !20
  br label %2283

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
  br i1 %230, label %231, label %244, !llvm.loop !59

231:                                              ; preds = %225
  %232 = icmp eq i32 %228, 0
  br i1 %232, label %2327, label %233

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
  br label %2283

259:                                              ; preds = %250
  %260 = and i32 %255, 57344
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %259
  store ptr @.str.4, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2283

263:                                              ; preds = %259
  %264 = load ptr, ptr %84, align 8, !tbaa !30
  %265 = icmp eq ptr %264, null
  br i1 %265, label %269, label %266

266:                                              ; preds = %263
  %267 = lshr i32 %255, 8
  %268 = and i32 %267, 1
  store i32 %268, ptr %264, align 8, !tbaa !60
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
  %278 = load i64, ptr %53, align 8, !tbaa !56
  %279 = call i64 @crc32(i64 noundef %278, ptr noundef nonnull %3, i32 noundef 2) #12
  store i64 %279, ptr %53, align 8, !tbaa !56
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
  br i1 %289, label %2321, label %290

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
  br i1 %302, label %303, label %343, !llvm.loop !61

303:                                              ; preds = %297
  %304 = icmp eq i32 %300, 0
  br i1 %304, label %2321, label %305

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
  br i1 %316, label %317, label %343, !llvm.loop !61

317:                                              ; preds = %311
  %318 = icmp eq i32 %314, 0
  br i1 %318, label %2321, label %319

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
  br i1 %330, label %331, label %343, !llvm.loop !61

331:                                              ; preds = %325
  %332 = icmp eq i32 %328, 0
  br i1 %332, label %2321, label %333

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
  store i64 %346, ptr %350, align 8, !tbaa !62
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
  %361 = load i64, ptr %53, align 8, !tbaa !56
  %362 = call i64 @crc32(i64 noundef %361, ptr noundef nonnull %3, i32 noundef 4) #12
  store i64 %362, ptr %53, align 8, !tbaa !56
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
  br i1 %372, label %2315, label %373

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
  br i1 %385, label %386, label %398, !llvm.loop !63

386:                                              ; preds = %380
  %387 = icmp eq i32 %383, 0
  br i1 %387, label %2315, label %388

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
  store i32 %406, ptr %407, align 8, !tbaa !64
  %408 = lshr i64 %401, 8
  %409 = trunc i64 %408 to i32
  %410 = getelementptr inbounds nuw i8, ptr %402, i64 20
  store i32 %409, ptr %410, align 4, !tbaa !65
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
  %421 = load i64, ptr %53, align 8, !tbaa !56
  %422 = call i64 @crc32(i64 noundef %421, ptr noundef nonnull %3, i32 noundef 2) #12
  store i64 %422, ptr %53, align 8, !tbaa !56
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
  br i1 %440, label %2309, label %441

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
  br i1 %453, label %454, label %466, !llvm.loop !66

454:                                              ; preds = %448
  %455 = icmp eq i32 %451, 0
  br i1 %455, label %2309, label %456

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
  store i32 %471, ptr %56, align 4, !tbaa !67
  %472 = load ptr, ptr %84, align 8, !tbaa !30
  %473 = icmp eq ptr %472, null
  br i1 %473, label %476, label %474

474:                                              ; preds = %466
  %475 = getelementptr inbounds nuw i8, ptr %472, i64 32
  store i32 %471, ptr %475, align 8, !tbaa !68
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
  %485 = load i64, ptr %53, align 8, !tbaa !56
  %486 = call i64 @crc32(i64 noundef %485, ptr noundef nonnull %3, i32 noundef 2) #12
  store i64 %486, ptr %53, align 8, !tbaa !56
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
  store ptr null, ptr %495, align 8, !tbaa !69
  br label %496

496:                                              ; preds = %494, %487, %483, %479, %476
  %497 = phi ptr [ %491, %494 ], [ %491, %487 ], [ %468, %476 ], [ %468, %479 ], [ %468, %483 ]
  %498 = phi i32 [ %490, %494 ], [ %490, %487 ], [ %469, %476 ], [ %469, %479 ], [ %469, %483 ]
  %499 = phi i64 [ %489, %494 ], [ %489, %487 ], [ 0, %476 ], [ 0, %479 ], [ 0, %483 ]
  %500 = phi i32 [ %488, %494 ], [ %488, %487 ], [ 0, %476 ], [ 0, %479 ], [ 0, %483 ]
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
  %510 = load i32, ptr %56, align 4, !tbaa !67
  %511 = call i32 @llvm.umin.i32(i32 %510, i32 %503)
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %574, label %513

513:                                              ; preds = %509
  %514 = load ptr, ptr %84, align 8, !tbaa !30
  %515 = icmp eq ptr %514, null
  br i1 %515, label %549, label %516

516:                                              ; preds = %513
  %517 = getelementptr inbounds nuw i8, ptr %514, i64 24
  %518 = load ptr, ptr %517, align 8, !tbaa !69
  %519 = icmp eq ptr %518, null
  br i1 %519, label %549, label %520

520:                                              ; preds = %516
  %521 = getelementptr inbounds nuw i8, ptr %514, i64 32
  %522 = load i32, ptr %521, align 8, !tbaa !68
  %523 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %522, i32 %510), !nosanitize !47
  %524 = extractvalue { i32, i1 } %523, 0, !nosanitize !47
  %525 = extractvalue { i32, i1 } %523, 1, !nosanitize !47
  br i1 %525, label %526, label %527, !prof !48, !nosanitize !47

526:                                              ; preds = %520
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

527:                                              ; preds = %520
  %528 = getelementptr inbounds nuw i8, ptr %514, i64 36
  %529 = load i32, ptr %528, align 4, !tbaa !70
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
  %558 = load i64, ptr %53, align 8, !tbaa !56
  %559 = call i64 @crc32(i64 noundef %558, ptr noundef %502, i32 noundef %511) #12
  store i64 %559, ptr %53, align 8, !tbaa !56
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
  %566 = load i32, ptr %56, align 4, !tbaa !67
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
  store i32 %571, ptr %56, align 4, !tbaa !67
  br label %574

574:                                              ; preds = %570, %509
  %575 = phi i32 [ %571, %570 ], [ %510, %509 ]
  %576 = phi ptr [ %573, %570 ], [ %502, %509 ]
  %577 = phi i32 [ %562, %570 ], [ %503, %509 ]
  %578 = icmp eq i32 %575, 0
  br i1 %578, label %579, label %.loopexit164

579:                                              ; preds = %574, %501
  %580 = phi ptr [ %576, %574 ], [ %502, %501 ]
  %581 = phi i32 [ %577, %574 ], [ %503, %501 ]
  store i32 0, ptr %56, align 4, !tbaa !67
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
  br i1 %591, label %.loopexit164, label %592

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
  %603 = load ptr, ptr %602, align 8, !tbaa !71
  %604 = icmp eq ptr %603, null
  br i1 %604, label %614, label %605

605:                                              ; preds = %601
  %606 = load i32, ptr %56, align 4, !tbaa !67
  %607 = getelementptr inbounds nuw i8, ptr %599, i64 48
  %608 = load i32, ptr %607, align 8, !tbaa !72
  %609 = icmp ult i32 %606, %608
  br i1 %609, label %610, label %614

610:                                              ; preds = %605
  %611 = add nuw i32 %606, 1
  store i32 %611, ptr %56, align 4, !tbaa !67
  %612 = zext i32 %606 to i64
  %613 = getelementptr inbounds nuw i8, ptr %603, i64 %612
  store i8 %598, ptr %613, align 1, !tbaa !44
  br label %614

614:                                              ; preds = %610, %605, %601, %594
  %615 = icmp ne i8 %598, 0
  %616 = icmp samesign ult i64 %596, %593
  %617 = select i1 %615, i1 %616, i1 false
  br i1 %617, label %594, label %618, !llvm.loop !73

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
  %628 = load i64, ptr %53, align 8, !tbaa !56
  %629 = call i64 @crc32(i64 noundef %628, ptr noundef nonnull %583, i32 noundef %619) #12
  store i64 %629, ptr %53, align 8, !tbaa !56
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
  br i1 %615, label %.loopexit164, label %643

638:                                              ; preds = %582
  %639 = load ptr, ptr %84, align 8, !tbaa !30
  %640 = icmp eq ptr %639, null
  br i1 %640, label %643, label %641

641:                                              ; preds = %638
  %642 = getelementptr inbounds nuw i8, ptr %639, i64 40
  store ptr null, ptr %642, align 8, !tbaa !71
  br label %643

643:                                              ; preds = %641, %638, %634
  %644 = phi ptr [ %637, %634 ], [ %583, %641 ], [ %583, %638 ]
  %645 = phi i32 [ %635, %634 ], [ %584, %641 ], [ %584, %638 ]
  store i32 0, ptr %56, align 4, !tbaa !67
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
  br i1 %655, label %.loopexit164, label %656

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
  %667 = load ptr, ptr %666, align 8, !tbaa !74
  %668 = icmp eq ptr %667, null
  br i1 %668, label %678, label %669

669:                                              ; preds = %665
  %670 = load i32, ptr %56, align 4, !tbaa !67
  %671 = getelementptr inbounds nuw i8, ptr %663, i64 64
  %672 = load i32, ptr %671, align 8, !tbaa !75
  %673 = icmp ult i32 %670, %672
  br i1 %673, label %674, label %678

674:                                              ; preds = %669
  %675 = add nuw i32 %670, 1
  store i32 %675, ptr %56, align 4, !tbaa !67
  %676 = zext i32 %670 to i64
  %677 = getelementptr inbounds nuw i8, ptr %667, i64 %676
  store i8 %662, ptr %677, align 1, !tbaa !44
  br label %678

678:                                              ; preds = %674, %669, %665, %658
  %679 = icmp ne i8 %662, 0
  %680 = icmp samesign ult i64 %660, %657
  %681 = select i1 %679, i1 %680, i1 false
  br i1 %681, label %658, label %682, !llvm.loop !76

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
  %692 = load i64, ptr %53, align 8, !tbaa !56
  %693 = call i64 @crc32(i64 noundef %692, ptr noundef nonnull %647, i32 noundef %683) #12
  store i64 %693, ptr %53, align 8, !tbaa !56
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
  br i1 %679, label %.loopexit164, label %707

702:                                              ; preds = %646
  %703 = load ptr, ptr %84, align 8, !tbaa !30
  %704 = icmp eq ptr %703, null
  br i1 %704, label %707, label %705

705:                                              ; preds = %702
  %706 = getelementptr inbounds nuw i8, ptr %703, i64 56
  store ptr null, ptr %706, align 8, !tbaa !74
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
  br i1 %722, label %2303, label %723

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
  br i1 %735, label %736, label %749, !llvm.loop !77

736:                                              ; preds = %730
  %737 = icmp eq i32 %733, 0
  br i1 %737, label %2303, label %738

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
  %764 = load i64, ptr %53, align 8, !tbaa !56
  %765 = and i64 %764, 65535
  %766 = icmp eq i64 %758, %765
  br i1 %766, label %768, label %767

767:                                              ; preds = %763
  store ptr @.str.5, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2283

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
  store i32 %777, ptr %778, align 4, !tbaa !78
  %779 = getelementptr inbounds nuw i8, ptr %773, i64 72
  store i32 1, ptr %779, align 8, !tbaa !57
  br label %780

780:                                              ; preds = %775, %768
  %781 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %781, ptr %53, align 8, !tbaa !56
  store i64 %781, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2283

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
  br i1 %794, label %795, label %835, !llvm.loop !79

795:                                              ; preds = %789
  %796 = icmp eq i32 %792, 0
  br i1 %796, label %2333, label %797

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
  br i1 %808, label %809, label %835, !llvm.loop !79

809:                                              ; preds = %803
  %810 = icmp eq i32 %806, 0
  br i1 %810, label %2333, label %811

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
  br i1 %822, label %823, label %835, !llvm.loop !79

823:                                              ; preds = %817
  %824 = icmp eq i32 %820, 0
  br i1 %824, label %2333, label %825

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
  store i64 %841, ptr %53, align 8, !tbaa !56
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
  br label %.loopexit166

850:                                              ; preds = %842
  %851 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %851, ptr %53, align 8, !tbaa !56
  store i64 %851, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %852

852:                                              ; preds = %850, %88
  %853 = phi ptr [ %843, %850 ], [ %90, %88 ]
  %854 = phi i32 [ %844, %850 ], [ %92, %88 ]
  %855 = phi i64 [ %845, %850 ], [ %94, %88 ]
  %856 = phi i32 [ %846, %850 ], [ %95, %88 ]
  br i1 %82, label %.loopexit164, label %857

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
  br i1 %868, label %.loopexit164, label %878

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
  br label %2283

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
  switch i32 %898, label %default.unreachable2711 [
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
  br label %.loopexit164

903:                                              ; preds = %890
  br label %905

default.unreachable2711:                          ; preds = %890
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
  br label %2283

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
  br i1 %923, label %2339, label %924

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
  br i1 %936, label %937, label %977, !llvm.loop !80

937:                                              ; preds = %931
  %938 = icmp eq i32 %934, 0
  br i1 %938, label %2339, label %939

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
  br i1 %950, label %951, label %977, !llvm.loop !80

951:                                              ; preds = %945
  %952 = icmp eq i32 %948, 0
  br i1 %952, label %2339, label %953

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
  br i1 %964, label %965, label %977, !llvm.loop !80

965:                                              ; preds = %959
  %966 = icmp eq i32 %962, 0
  br i1 %966, label %2339, label %967

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
  br label %2283

993:                                              ; preds = %983
  %994 = trunc i64 %986 to i32
  %995 = and i32 %994, 65535
  store i32 %995, ptr %56, align 4, !tbaa !67
  store i32 16194, ptr %21, align 8, !tbaa !20
  br i1 %70, label %.loopexit164, label %996

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
  %1006 = load i32, ptr %56, align 4, !tbaa !67
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1032, label %1008

1008:                                             ; preds = %1001
  %1009 = call i32 @llvm.umin.i32(i32 %1006, i32 %1003)
  %1010 = call i32 @llvm.umin.i32(i32 %1009, i32 %93)
  %1011 = icmp eq i32 %1010, 0
  br i1 %1011, label %.loopexit164, label %1012

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
  %1025 = load i32, ptr %56, align 4, !tbaa !67
  %1026 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1025, i32 %1010), !nosanitize !47
  %1027 = extractvalue { i32, i1 } %1026, 1, !nosanitize !47
  br i1 %1027, label %1028, label %1029, !prof !48, !nosanitize !47

1028:                                             ; preds = %1024
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1029:                                             ; preds = %1024
  %1030 = extractvalue { i32, i1 } %1026, 0, !nosanitize !47
  %1031 = getelementptr inbounds nuw i8, ptr %91, i64 %1013
  store i32 %1030, ptr %56, align 4, !tbaa !67
  br label %2283

1032:                                             ; preds = %1001
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2283

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
  br i1 %1045, label %1046, label %1059, !llvm.loop !81

1046:                                             ; preds = %1040
  %1047 = icmp eq i32 %1043, 0
  br i1 %1047, label %2384, label %1048

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
  store i32 %1072, ptr %57, align 4, !tbaa !82
  %1073 = lshr i32 %1070, 5
  %1074 = and i32 %1073, 31
  %1075 = add nuw nsw i32 %1074, 1
  store i32 %1075, ptr %58, align 8, !tbaa !83
  %1076 = lshr i32 %1070, 10
  %1077 = and i32 %1076, 15
  %1078 = add nuw nsw i32 %1077, 4
  store i32 %1078, ptr %59, align 8, !tbaa !84
  %1079 = lshr i64 %1068, 14
  %1080 = add i32 %1069, -14
  %1081 = icmp samesign ugt i32 %1071, 29
  %1082 = icmp samesign ugt i32 %1074, 29
  %1083 = select i1 %1081, i1 true, i1 %1082
  br i1 %1083, label %1084, label %1085

1084:                                             ; preds = %1065
  store ptr @.str.8, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2283

1085:                                             ; preds = %1065
  store i32 0, ptr %60, align 4, !tbaa !85
  store i32 16197, ptr %21, align 8, !tbaa !20
  br label %1090

1086:                                             ; preds = %88
  %1087 = load i32, ptr %59, align 8, !tbaa !84
  %1088 = load i32, ptr %60, align 4, !tbaa !85
  %1089 = icmp ult i32 %1088, %1087
  br i1 %1089, label %1090, label %.loopexit165

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

.loopexit165:                                     ; preds = %1129, %1086
  %1099 = phi ptr [ %90, %1086 ], [ %1130, %1129 ]
  %1100 = phi i32 [ %92, %1086 ], [ %1131, %1129 ]
  %1101 = phi i64 [ %94, %1086 ], [ %1143, %1129 ]
  %1102 = phi i32 [ %95, %1086 ], [ %1142, %1129 ]
  %1103 = phi i32 [ %1088, %1086 ], [ %1095, %1129 ]
  %1104 = icmp ult i32 %1103, 19
  br i1 %1104, label %1105, label %1155

1105:                                             ; preds = %.loopexit165
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
  br i1 %1116, label %.loopexit164, label %1117

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
  store i32 %1137, ptr %60, align 4, !tbaa !85
  %1138 = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %1108
  %1139 = load i16, ptr %1138, align 2, !tbaa !86
  %1140 = zext i16 %1139 to i64
  %1141 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1140
  store i16 %1136, ptr %1141, align 2, !tbaa !86
  %1142 = add i32 %1133, -3
  %1143 = lshr i64 %1132, 3
  %1144 = icmp eq i64 %1134, %1098
  br i1 %1144, label %.loopexit165, label %1107, !llvm.loop !88

1145:                                             ; preds = %1145, %1105
  %1146 = phi i64 [ %1106, %1105 ], [ %1147, %1145 ]
  %1147 = add nuw nsw i64 %1146, 1
  %1148 = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %1146
  %1149 = load i16, ptr %1148, align 2, !tbaa !86
  %1150 = zext i16 %1149 to i64
  %1151 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1150
  store i16 0, ptr %1151, align 2, !tbaa !86
  %1152 = and i64 %1147, 4294967295
  %1153 = icmp eq i64 %1152, 19
  br i1 %1153, label %1154, label %1145, !llvm.loop !89

1154:                                             ; preds = %1145
  store i32 19, ptr %60, align 4, !tbaa !85
  br label %1155

1155:                                             ; preds = %1154, %.loopexit165
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %64, align 8, !tbaa !34
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 7, ptr %66, align 8, !tbaa !90
  %1156 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %61, i32 noundef 19, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #12
  %1157 = icmp eq i32 %1156, 0
  br i1 %1157, label %1159, label %1158

1158:                                             ; preds = %1155
  store ptr @.str.9, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2283

1159:                                             ; preds = %1155
  store i32 0, ptr %60, align 4, !tbaa !85
  store i32 16198, ptr %21, align 8, !tbaa !20
  br label %1160

1160:                                             ; preds = %1159, %88
  %1161 = phi ptr [ %1099, %1159 ], [ %90, %88 ]
  %1162 = phi i32 [ %1100, %1159 ], [ %92, %88 ]
  %1163 = phi i64 [ %1101, %1159 ], [ %94, %88 ]
  %1164 = phi i32 [ %1102, %1159 ], [ %95, %88 ]
  %1165 = phi i32 [ 0, %1159 ], [ %97, %88 ]
  %1166 = load i32, ptr %57, align 4, !tbaa !82
  %1167 = load i32, ptr %58, align 8, !tbaa !83
  %1168 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1166, i32 %1167), !nosanitize !47
  %1169 = extractvalue { i32, i1 } %1168, 1, !nosanitize !47
  br i1 %1169, label %1182, label %1170, !prof !91, !nosanitize !47

1170:                                             ; preds = %1160
  %1171 = extractvalue { i32, i1 } %1168, 0, !nosanitize !47
  %1172 = load i32, ptr %60, align 4, !tbaa !85
  %.fr6418 = freeze i32 %1172
  %1173 = call i32 @llvm.umax.i32(i32 %.fr6418, i32 %1171)
  %1174 = zext i32 %1173 to i64
  %1175 = icmp ult i32 %.fr6418, %1171
  br i1 %1175, label %1176, label %.loopexit163

1176:                                             ; preds = %1170
  %1177 = zext i32 %.fr6418 to i64
  %1178 = load i32, ptr %66, align 8, !tbaa !90
  %1179 = shl nsw i32 -1, %1178
  %1180 = xor i32 %1179, -1
  %1181 = load ptr, ptr %65, align 8, !tbaa !35
  br label %1183

1182:                                             ; preds = %1160
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1183:                                             ; preds = %1431, %1176
  %1184 = phi ptr [ %1161, %1176 ], [ %1229, %1431 ]
  %1185 = phi i32 [ %1162, %1176 ], [ %1230, %1431 ]
  %1186 = phi i64 [ %1163, %1176 ], [ %1240, %1431 ]
  %1187 = phi i32 [ %1164, %1176 ], [ %1242, %1431 ]
  %1188 = phi i64 [ %1177, %1176 ], [ %1432, %1431 ]
  %1189 = trunc i64 %1186 to i32
  %1190 = and i32 %1189, %1180
  %1191 = zext nneg i32 %1190 to i64
  %.split = getelementptr inbounds nuw [4 x i8], ptr %1181, i64 %1191
  %1192 = getelementptr inbounds nuw i8, ptr %.split, i64 1
  %1193 = load i8, ptr %1192, align 1, !tbaa !44
  %1194 = zext i8 %1193 to i32
  %1195 = icmp ult i32 %1187, %1194
  br i1 %1195, label %1196, label %1227

1196:                                             ; preds = %1183
  %1197 = icmp eq i32 %1185, 0
  br i1 %1197, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %1196
  %1198 = zext nneg i32 %1187 to i64
  br label %1201

1199:                                             ; preds = %1212
  %1200 = icmp eq i32 %1215, 0
  br i1 %1200, label %._crit_edge, label %1201

1201:                                             ; preds = %.lr.ph, %1199
  %1202 = phi ptr [ %1184, %.lr.ph ], [ %1214, %1199 ]
  %1203 = phi i32 [ %1185, %.lr.ph ], [ %1215, %1199 ]
  %1204 = phi i64 [ %1186, %.lr.ph ], [ %1213, %1199 ]
  %1205 = phi i64 [ %1198, %.lr.ph ], [ %1216, %1199 ]
  %1206 = load i8, ptr %1202, align 1, !tbaa !44
  %1207 = zext i8 %1206 to i64
  %1208 = shl i64 %1207, %1205
  %1209 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1204, i64 %1208), !nosanitize !47
  %1210 = extractvalue { i64, i1 } %1209, 1, !nosanitize !47
  br i1 %1210, label %1211, label %1212, !prof !48, !nosanitize !47

1211:                                             ; preds = %1201
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1212:                                             ; preds = %1201
  %1213 = extractvalue { i64, i1 } %1209, 0, !nosanitize !47
  %1214 = getelementptr inbounds nuw i8, ptr %1202, i64 1
  %1215 = add i32 %1203, -1
  %1216 = add nuw nsw i64 %1205, 8
  %1217 = trunc i64 %1213 to i32
  %1218 = and i32 %1217, %1180
  %1219 = zext nneg i32 %1218 to i64
  %.split160 = getelementptr inbounds nuw [4 x i8], ptr %1181, i64 %1219
  %1220 = getelementptr inbounds nuw i8, ptr %.split160, i64 1
  %1221 = load i8, ptr %1220, align 1, !tbaa !44
  %1222 = zext i8 %1221 to i64
  %1223 = icmp samesign ult i64 %1216, %1222
  br i1 %1223, label %1199, label %1224

1224:                                             ; preds = %1212
  %1225 = zext i8 %1221 to i32
  %1226 = trunc nuw nsw i64 %1216 to i32
  br label %1227

1227:                                             ; preds = %1224, %1183
  %1228 = phi i64 [ %1191, %1183 ], [ %1219, %1224 ]
  %1229 = phi ptr [ %1184, %1183 ], [ %1214, %1224 ]
  %1230 = phi i32 [ %1185, %1183 ], [ %1215, %1224 ]
  %1231 = phi i64 [ %1186, %1183 ], [ %1213, %1224 ]
  %1232 = phi i32 [ %1187, %1183 ], [ %1226, %1224 ]
  %1233 = phi i8 [ %1193, %1183 ], [ %1221, %1224 ]
  %1234 = phi i32 [ %1194, %1183 ], [ %1225, %1224 ]
  %.split161 = getelementptr inbounds nuw [4 x i8], ptr %1181, i64 %1228
  %1235 = getelementptr inbounds nuw i8, ptr %.split161, i64 2
  %1236 = load i16, ptr %1235, align 2, !tbaa !86
  %1237 = icmp ult i16 %1236, 16
  br i1 %1237, label %1238, label %1248

1238:                                             ; preds = %1227
  %1239 = zext nneg i8 %1233 to i64
  %1240 = lshr i64 %1231, %1239
  %1241 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1232, i32 %1234), !nosanitize !47
  %1242 = extractvalue { i32, i1 } %1241, 0, !nosanitize !47
  %1243 = extractvalue { i32, i1 } %1241, 1, !nosanitize !47
  br i1 %1243, label %1244, label %1245, !prof !48, !nosanitize !47

1244:                                             ; preds = %1238
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1245:                                             ; preds = %1238
  %1246 = icmp eq i64 %1188, 4294967295
  br i1 %1246, label %1247, label %1431, !prof !48, !nosanitize !47

1247:                                             ; preds = %1245
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1248:                                             ; preds = %1227
  %indvars2448.le = trunc nuw i64 %1188 to i32
  switch i16 %1236, label %1261 [
    i16 16, label %1255
    i16 17, label %1249
  ]

1249:                                             ; preds = %1248
  %1250 = add nuw nsw i32 %1234, 3
  %1251 = icmp ult i32 %1232, %1250
  br i1 %1251, label %1252, label %1332

1252:                                             ; preds = %1249
  %1253 = zext nneg i32 %1232 to i64
  %1254 = zext nneg i32 %1250 to i64
  br label %1311

1255:                                             ; preds = %1248
  %1256 = add nuw nsw i32 %1234, 2
  %1257 = icmp ult i32 %1232, %1256
  br i1 %1257, label %1258, label %1288

1258:                                             ; preds = %1255
  %1259 = zext nneg i32 %1232 to i64
  %1260 = zext nneg i32 %1256 to i64
  br label %1267

1261:                                             ; preds = %1248
  %1262 = add nuw nsw i32 %1234, 7
  %1263 = icmp ult i32 %1232, %1262
  br i1 %1263, label %1264, label %1369

1264:                                             ; preds = %1261
  %1265 = zext nneg i32 %1232 to i64
  %1266 = zext nneg i32 %1262 to i64
  br label %1348

1267:                                             ; preds = %1280, %1258
  %1268 = phi i64 [ %1259, %1258 ], [ %1284, %1280 ]
  %1269 = phi i64 [ %1231, %1258 ], [ %1281, %1280 ]
  %1270 = phi i32 [ %1230, %1258 ], [ %1283, %1280 ]
  %1271 = phi ptr [ %1229, %1258 ], [ %1282, %1280 ]
  %1272 = icmp eq i32 %1270, 0
  br i1 %1272, label %2374, label %1273

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
  br i1 %1285, label %1267, label %1286, !llvm.loop !92

1286:                                             ; preds = %1280
  %1287 = trunc nuw nsw i64 %1284 to i32
  br label %1288

1288:                                             ; preds = %1286, %1255
  %1289 = phi ptr [ %1229, %1255 ], [ %1282, %1286 ]
  %1290 = phi i32 [ %1230, %1255 ], [ %1283, %1286 ]
  %1291 = phi i64 [ %1231, %1255 ], [ %1281, %1286 ]
  %1292 = phi i32 [ %1232, %1255 ], [ %1287, %1286 ]
  %1293 = zext nneg i8 %1233 to i64
  %1294 = lshr i64 %1291, %1293
  %1295 = sub nuw i32 %1292, %1234
  %1296 = icmp eq i64 %1188, 0
  br i1 %1296, label %1297, label %1298

1297:                                             ; preds = %1288
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2283

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
  %1306 = add nuw nsw i64 %1188, 4294967295
  %1307 = and i64 %1306, 4294967295
  %1308 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1307
  %1309 = load i16, ptr %1308, align 2, !tbaa !86
  %1310 = lshr i64 %1294, 2
  br label %1385

1311:                                             ; preds = %1324, %1252
  %1312 = phi i64 [ %1253, %1252 ], [ %1328, %1324 ]
  %1313 = phi i64 [ %1231, %1252 ], [ %1325, %1324 ]
  %1314 = phi i32 [ %1230, %1252 ], [ %1327, %1324 ]
  %1315 = phi ptr [ %1229, %1252 ], [ %1326, %1324 ]
  %1316 = icmp eq i32 %1314, 0
  br i1 %1316, label %2379, label %1317

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
  br i1 %1329, label %1311, label %1330, !llvm.loop !93

1330:                                             ; preds = %1324
  %1331 = trunc nuw nsw i64 %1328 to i32
  br label %1332

1332:                                             ; preds = %1330, %1249
  %1333 = phi ptr [ %1229, %1249 ], [ %1326, %1330 ]
  %1334 = phi i32 [ %1230, %1249 ], [ %1327, %1330 ]
  %1335 = phi i64 [ %1231, %1249 ], [ %1325, %1330 ]
  %1336 = phi i32 [ %1232, %1249 ], [ %1331, %1330 ]
  %1337 = sub nuw i32 %1336, %1234
  %1338 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1337, i32 3), !nosanitize !47
  %1339 = extractvalue { i32, i1 } %1338, 1, !nosanitize !47
  br i1 %1339, label %1340, label %1341, !prof !48, !nosanitize !47

1340:                                             ; preds = %1332
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1341:                                             ; preds = %1332
  %1342 = zext nneg i8 %1233 to i64
  %1343 = lshr i64 %1335, %1342
  %1344 = trunc i64 %1343 to i32
  %1345 = and i32 %1344, 7
  %1346 = add nuw nsw i32 %1345, 3
  %1347 = lshr i64 %1343, 3
  br label %1385

1348:                                             ; preds = %1361, %1264
  %1349 = phi i64 [ %1265, %1264 ], [ %1365, %1361 ]
  %1350 = phi i64 [ %1231, %1264 ], [ %1362, %1361 ]
  %1351 = phi i32 [ %1230, %1264 ], [ %1364, %1361 ]
  %1352 = phi ptr [ %1229, %1264 ], [ %1363, %1361 ]
  %1353 = icmp eq i32 %1351, 0
  br i1 %1353, label %2369, label %1354

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
  br i1 %1366, label %1348, label %1367, !llvm.loop !94

1367:                                             ; preds = %1361
  %1368 = trunc nuw nsw i64 %1365 to i32
  br label %1369

1369:                                             ; preds = %1367, %1261
  %1370 = phi ptr [ %1229, %1261 ], [ %1363, %1367 ]
  %1371 = phi i32 [ %1230, %1261 ], [ %1364, %1367 ]
  %1372 = phi i64 [ %1231, %1261 ], [ %1362, %1367 ]
  %1373 = phi i32 [ %1232, %1261 ], [ %1368, %1367 ]
  %1374 = sub nuw i32 %1373, %1234
  %1375 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1374, i32 7), !nosanitize !47
  %1376 = extractvalue { i32, i1 } %1375, 1, !nosanitize !47
  br i1 %1376, label %1377, label %1378, !prof !48, !nosanitize !47

1377:                                             ; preds = %1369
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1378:                                             ; preds = %1369
  %1379 = zext nneg i8 %1233 to i64
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
  %1393 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %indvars2448.le, i32 %1390), !nosanitize !47
  %1394 = extractvalue { i32, i1 } %1393, 1, !nosanitize !47
  br i1 %1394, label %1395, label %1396, !prof !48, !nosanitize !47

1395:                                             ; preds = %1385
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1396:                                             ; preds = %1385
  %1397 = extractvalue { i32, i1 } %1393, 0, !nosanitize !47
  %1398 = icmp ugt i32 %1397, %1171
  br i1 %1398, label %1411, label %1399

1399:                                             ; preds = %1396
  %1400 = and i64 %1188, 4294967295
  %1401 = icmp eq i64 %1400, 4294967295
  br i1 %1401, label %._crit_edge5105, label %.lr.ph5104, !prof !91, !nosanitize !47

.lr.ph5104:                                       ; preds = %1399
  %1402 = add nsw i32 %1390, -1
  %1403 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %1402, 0
  %1404 = and i64 %1188, 1
  %lcmp.mod6412.not.not = icmp eq i64 %1404, 0
  br i1 %lcmp.mod6412.not.not, label %.prol.preheader, label %.prol.loopexit, !prof !91

.prol.preheader:                                  ; preds = %.lr.ph5104
  %1405 = or disjoint i64 %1400, 1
  %1406 = trunc nuw i64 %1405 to i32
  store i32 %1406, ptr %60, align 4, !tbaa !85
  %1407 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1400
  store i16 %1391, ptr %1407, align 2, !tbaa !86
  %1408 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1402, i32 1), !nosanitize !47
  %1409 = extractvalue { i32, i1 } %1408, 1, !nosanitize !47
  br i1 %1409, label %1413, label %.prol.loopexit, !prof !95, !llvm.loop !96, !nosanitize !47

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph5104
  %.unr6414 = phi { i32, i1 } [ %1403, %.lr.ph5104 ], [ %1408, %.prol.preheader ]
  %.unr6415 = phi i64 [ %1400, %.lr.ph5104 ], [ %1405, %.prol.preheader ]
  %1410 = icmp eq i64 %1400, 4294967294
  br i1 %1410, label %._crit_edge5105, label %.lr.ph5104.new, !prof !91

1411:                                             ; preds = %1396
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2283

.loopexit6416:                                    ; preds = %1414, %.lr.ph5104.new
  %1412 = phi i32 [ %1417, %1414 ], [ %1427, %.lr.ph5104.new ]
  store i32 %1412, ptr %60, align 4, !tbaa !85
  br label %1413

1413:                                             ; preds = %.loopexit6416, %.prol.preheader
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1414:                                             ; preds = %.lr.ph5104.new
  %1415 = extractvalue { i32, i1 } %1429, 0
  %1416 = add nuw nsw i64 %1424, 2
  %1417 = trunc nuw i64 %1416 to i32
  %1418 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1426
  store i16 %1391, ptr %1418, align 2, !tbaa !86
  %1419 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1415, i32 1), !nosanitize !47
  %1420 = extractvalue { i32, i1 } %1419, 1, !nosanitize !47
  br i1 %1420, label %.loopexit6416, label %1421, !prof !95, !llvm.loop !96, !nosanitize !47

1421:                                             ; preds = %1414
  %1422 = icmp eq i64 %1416, 4294967295
  br i1 %1422, label %._crit_edge5105.loopexit.unr-lcssa, label %.lr.ph5104.new, !prof !95, !llvm.loop !97, !nosanitize !47

._crit_edge5105.loopexit.unr-lcssa:               ; preds = %1421
  store i32 %1417, ptr %60, align 4, !tbaa !85
  br label %._crit_edge5105

._crit_edge5105:                                  ; preds = %._crit_edge5105.loopexit.unr-lcssa, %.prol.loopexit, %1399
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

.lr.ph5104.new:                                   ; preds = %.prol.loopexit, %1421
  %1423 = phi { i32, i1 } [ %1419, %1421 ], [ %.unr6414, %.prol.loopexit ]
  %1424 = phi i64 [ %1416, %1421 ], [ %.unr6415, %.prol.loopexit ]
  %1425 = extractvalue { i32, i1 } %1423, 0
  %1426 = add nuw nsw i64 %1424, 1
  %1427 = trunc nuw i64 %1426 to i32
  %1428 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1424
  store i16 %1391, ptr %1428, align 2, !tbaa !86
  %1429 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1425, i32 1), !nosanitize !47
  %1430 = extractvalue { i32, i1 } %1429, 1, !nosanitize !47
  br i1 %1430, label %.loopexit6416, label %1414, !prof !95, !llvm.loop !96, !nosanitize !47

1431:                                             ; preds = %1245
  %1432 = add i64 %1188, 1
  %indvars = trunc nuw i64 %1432 to i32
  store i32 %indvars, ptr %60, align 4, !tbaa !85
  %1433 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1188
  store i16 %1236, ptr %1433, align 2, !tbaa !86
  %1434 = icmp eq i64 %1432, %1174
  br i1 %1434, label %.loopexit163, label %1183

.loopexit163:                                     ; preds = %1431, %1170
  %1435 = phi i32 [ %1164, %1170 ], [ %1242, %1431 ]
  %1436 = phi i64 [ %1163, %1170 ], [ %1240, %1431 ]
  %1437 = phi i32 [ %1162, %1170 ], [ %1230, %1431 ]
  %1438 = phi ptr [ %1161, %1170 ], [ %1229, %1431 ]
  %1439 = load i16, ptr %68, align 8, !tbaa !86
  %1440 = icmp eq i16 %1439, 0
  br i1 %1440, label %1441, label %1442

1441:                                             ; preds = %.loopexit163
  store ptr @.str.11, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2283

1442:                                             ; preds = %.loopexit163
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 9, ptr %66, align 8, !tbaa !90
  %1443 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %61, i32 noundef %1166, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #12
  %1444 = icmp eq i32 %1443, 0
  br i1 %1444, label %1446, label %1445

1445:                                             ; preds = %1442
  store ptr @.str.12, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2283

1446:                                             ; preds = %1442
  %1447 = load ptr, ptr %63, align 8, !tbaa !33
  store ptr %1447, ptr %64, align 8, !tbaa !34
  store i32 6, ptr %69, align 4, !tbaa !99
  %1448 = load i32, ptr %57, align 4, !tbaa !82
  %1449 = zext i32 %1448 to i64
  %1450 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1449
  %1451 = load i32, ptr %58, align 8, !tbaa !83
  %1452 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %1450, i32 noundef %1451, ptr noundef nonnull %63, ptr noundef nonnull %69, ptr noundef nonnull %67) #12
  %1453 = icmp eq i32 %1452, 0
  br i1 %1453, label %1455, label %1454

1454:                                             ; preds = %1446
  store ptr @.str.13, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2283

1455:                                             ; preds = %1446
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %.loopexit164, label %1456

1456:                                             ; preds = %1455, %88
  %1457 = phi ptr [ %1438, %1455 ], [ %90, %88 ]
  %1458 = phi i32 [ %1437, %1455 ], [ %92, %88 ]
  %1459 = phi i64 [ %1436, %1455 ], [ %94, %88 ]
  %1460 = phi i32 [ %1435, %1455 ], [ %95, %88 ]
  %1461 = phi i32 [ 0, %1455 ], [ %97, %88 ]
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %1462

1462:                                             ; preds = %1456, %88
  %1463 = phi ptr [ %1457, %1456 ], [ %90, %88 ]
  %1464 = phi i32 [ %1458, %1456 ], [ %92, %88 ]
  %1465 = phi i64 [ %1459, %1456 ], [ %94, %88 ]
  %1466 = phi i32 [ %1460, %1456 ], [ %95, %88 ]
  %1467 = phi i32 [ %1461, %1456 ], [ %97, %88 ]
  %1468 = icmp ugt i32 %1464, 5
  %1469 = icmp ugt i32 %93, 257
  %1470 = select i1 %1468, i1 %1469, i1 false
  br i1 %1470, label %1471, label %1481

1471:                                             ; preds = %1462
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %93, ptr %41, align 8, !tbaa !52
  store ptr %1463, ptr %0, align 8, !tbaa !50
  store i32 %1464, ptr %43, align 8, !tbaa !51
  store i64 %1465, ptr %45, align 8, !tbaa !31
  store i32 %1466, ptr %47, align 8, !tbaa !32
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %96) #12
  %1472 = load ptr, ptr %26, align 8, !tbaa !49
  %1473 = load i32, ptr %41, align 8, !tbaa !52
  %1474 = load ptr, ptr %0, align 8, !tbaa !50
  %1475 = load i32, ptr %43, align 8, !tbaa !51
  %1476 = load i64, ptr %45, align 8, !tbaa !31
  %1477 = load i32, ptr %47, align 8, !tbaa !32
  %1478 = load i32, ptr %21, align 8, !tbaa !20
  %1479 = icmp eq i32 %1478, 16191
  br i1 %1479, label %1480, label %2283

1480:                                             ; preds = %1471
  store i32 -1, ptr %71, align 4, !tbaa !37
  br label %2283

1481:                                             ; preds = %1462
  store i32 0, ptr %71, align 4, !tbaa !37
  %1482 = load i32, ptr %66, align 8, !tbaa !90
  %1483 = shl nsw i32 -1, %1482
  %1484 = xor i32 %1483, -1
  %1485 = load ptr, ptr %65, align 8, !tbaa !35
  %1486 = trunc i64 %1465 to i32
  %1487 = and i32 %1484, %1486
  %1488 = zext nneg i32 %1487 to i64
  %1489 = getelementptr inbounds nuw [4 x i8], ptr %1485, i64 %1488
  %1490 = getelementptr inbounds nuw i8, ptr %1489, i64 1
  %1491 = load i8, ptr %1490, align 1, !tbaa !44
  %1492 = zext i8 %1491 to i32
  %1493 = icmp ult i32 %1466, %1492
  br i1 %1493, label %1494, label %1526

1494:                                             ; preds = %1481
  %1495 = icmp eq i32 %1464, 0
  br i1 %1495, label %._crit_edge4985, label %.lr.ph4984

.lr.ph4984:                                       ; preds = %1494
  %1496 = zext nneg i32 %1466 to i64
  br label %1499

1497:                                             ; preds = %1510
  %1498 = icmp eq i32 %1513, 0
  br i1 %1498, label %._crit_edge4985, label %1499

1499:                                             ; preds = %.lr.ph4984, %1497
  %1500 = phi ptr [ %1463, %.lr.ph4984 ], [ %1512, %1497 ]
  %1501 = phi i32 [ %1464, %.lr.ph4984 ], [ %1513, %1497 ]
  %1502 = phi i64 [ %1465, %.lr.ph4984 ], [ %1511, %1497 ]
  %1503 = phi i64 [ %1496, %.lr.ph4984 ], [ %1514, %1497 ]
  %1504 = load i8, ptr %1500, align 1, !tbaa !44
  %1505 = zext i8 %1504 to i64
  %1506 = shl i64 %1505, %1503
  %1507 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1502, i64 %1506), !nosanitize !47
  %1508 = extractvalue { i64, i1 } %1507, 1, !nosanitize !47
  br i1 %1508, label %1509, label %1510, !prof !48, !nosanitize !47

1509:                                             ; preds = %1499
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1510:                                             ; preds = %1499
  %1511 = extractvalue { i64, i1 } %1507, 0, !nosanitize !47
  %1512 = getelementptr inbounds nuw i8, ptr %1500, i64 1
  %1513 = add i32 %1501, -1
  %1514 = add nuw nsw i64 %1503, 8
  %1515 = trunc i64 %1511 to i32
  %1516 = and i32 %1515, %1484
  %1517 = zext nneg i32 %1516 to i64
  %1518 = getelementptr inbounds nuw [4 x i8], ptr %1485, i64 %1517
  %1519 = getelementptr inbounds nuw i8, ptr %1518, i64 1
  %1520 = load i8, ptr %1519, align 1, !tbaa !44
  %1521 = zext i8 %1520 to i64
  %1522 = icmp samesign ult i64 %1514, %1521
  br i1 %1522, label %1497, label %1523

1523:                                             ; preds = %1510
  %1524 = zext i8 %1520 to i32
  %1525 = trunc nuw nsw i64 %1514 to i32
  br label %1526

1526:                                             ; preds = %1523, %1481
  %1527 = phi ptr [ %1489, %1481 ], [ %1518, %1523 ]
  %1528 = phi ptr [ %1463, %1481 ], [ %1512, %1523 ]
  %1529 = phi i32 [ %1464, %1481 ], [ %1513, %1523 ]
  %1530 = phi i64 [ %1465, %1481 ], [ %1511, %1523 ]
  %1531 = phi i32 [ %1466, %1481 ], [ %1525, %1523 ]
  %1532 = phi i8 [ %1491, %1481 ], [ %1520, %1523 ]
  %1533 = phi i32 [ %1492, %1481 ], [ %1524, %1523 ]
  %1534 = getelementptr inbounds nuw i8, ptr %1527, i64 2
  %1535 = load i16, ptr %1534, align 2, !tbaa !86
  %1536 = load i8, ptr %1527, align 2, !tbaa !44
  %1537 = add i8 %1536, -1
  %1538 = icmp ult i8 %1537, 15
  br i1 %1538, label %1539, label %1604

1539:                                             ; preds = %1526
  %1540 = zext nneg i8 %1536 to i32
  %1541 = add nuw nsw i32 %1533, %1540
  %1542 = shl nsw i32 -1, %1541
  %1543 = xor i32 %1542, -1
  %1544 = zext i16 %1535 to i32
  %1545 = trunc i64 %1530 to i32
  %1546 = and i32 %1543, %1545
  %1547 = lshr i32 %1546, %1533
  %1548 = add nuw i32 %1547, %1544
  %1549 = zext i32 %1548 to i64
  %1550 = getelementptr inbounds nuw [4 x i8], ptr %1485, i64 %1549
  %1551 = getelementptr inbounds nuw i8, ptr %1550, i64 1
  %1552 = load i8, ptr %1551, align 1, !tbaa !44
  %1553 = zext i8 %1552 to i32
  %1554 = add nuw nsw i32 %1533, %1553
  %1555 = icmp ugt i32 %1554, %1531
  br i1 %1555, label %1556, label %1591

1556:                                             ; preds = %1539
  %1557 = icmp eq i32 %1529, 0
  br i1 %1557, label %._crit_edge5005, label %.lr.ph5004

.lr.ph5004:                                       ; preds = %1556
  %1558 = zext nneg i32 %1531 to i64
  br label %1561

1559:                                             ; preds = %1572
  %1560 = icmp eq i32 %1575, 0
  br i1 %1560, label %._crit_edge5005, label %1561

1561:                                             ; preds = %.lr.ph5004, %1559
  %1562 = phi ptr [ %1528, %.lr.ph5004 ], [ %1574, %1559 ]
  %1563 = phi i32 [ %1529, %.lr.ph5004 ], [ %1575, %1559 ]
  %1564 = phi i64 [ %1530, %.lr.ph5004 ], [ %1573, %1559 ]
  %1565 = phi i64 [ %1558, %.lr.ph5004 ], [ %1576, %1559 ]
  %1566 = load i8, ptr %1562, align 1, !tbaa !44
  %1567 = zext i8 %1566 to i64
  %1568 = shl i64 %1567, %1565
  %1569 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1564, i64 %1568), !nosanitize !47
  %1570 = extractvalue { i64, i1 } %1569, 1, !nosanitize !47
  br i1 %1570, label %1571, label %1572, !prof !48, !nosanitize !47

1571:                                             ; preds = %1561
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1572:                                             ; preds = %1561
  %1573 = extractvalue { i64, i1 } %1569, 0, !nosanitize !47
  %1574 = getelementptr inbounds nuw i8, ptr %1562, i64 1
  %1575 = add i32 %1563, -1
  %1576 = add nuw nsw i64 %1565, 8
  %1577 = trunc i64 %1573 to i32
  %1578 = and i32 %1577, %1543
  %1579 = lshr i32 %1578, %1533
  %1580 = add nuw i32 %1579, %1544
  %1581 = zext i32 %1580 to i64
  %1582 = getelementptr inbounds nuw [4 x i8], ptr %1485, i64 %1581
  %1583 = getelementptr inbounds nuw i8, ptr %1582, i64 1
  %1584 = load i8, ptr %1583, align 1, !tbaa !44
  %1585 = zext i8 %1584 to i32
  %1586 = add nuw nsw i32 %1533, %1585
  %1587 = zext nneg i32 %1586 to i64
  %1588 = icmp samesign ult i64 %1576, %1587
  br i1 %1588, label %1559, label %1589

1589:                                             ; preds = %1572
  %1590 = trunc nuw nsw i64 %1576 to i32
  br label %1591

1591:                                             ; preds = %1589, %1539
  %1592 = phi ptr [ %1550, %1539 ], [ %1582, %1589 ]
  %1593 = phi ptr [ %1528, %1539 ], [ %1574, %1589 ]
  %1594 = phi i32 [ %1529, %1539 ], [ %1575, %1589 ]
  %1595 = phi i64 [ %1530, %1539 ], [ %1573, %1589 ]
  %1596 = phi i32 [ %1531, %1539 ], [ %1590, %1589 ]
  %1597 = phi i8 [ %1552, %1539 ], [ %1584, %1589 ]
  %1598 = load i8, ptr %1592, align 2, !tbaa !44
  %1599 = getelementptr inbounds nuw i8, ptr %1592, i64 2
  %1600 = load i16, ptr %1599, align 2, !tbaa !86
  %1601 = sub nuw i32 %1596, %1533
  %1602 = zext nneg i8 %1532 to i64
  %1603 = lshr i64 %1595, %1602
  store i32 %1533, ptr %71, align 4, !tbaa !37
  br label %1604

1604:                                             ; preds = %1591, %1526
  %1605 = phi i32 [ %1533, %1591 ], [ 0, %1526 ]
  %1606 = phi ptr [ %1593, %1591 ], [ %1528, %1526 ]
  %1607 = phi i32 [ %1594, %1591 ], [ %1529, %1526 ]
  %1608 = phi i64 [ %1603, %1591 ], [ %1530, %1526 ]
  %1609 = phi i32 [ %1601, %1591 ], [ %1531, %1526 ]
  %1610 = phi i16 [ %1600, %1591 ], [ %1535, %1526 ]
  %1611 = phi i8 [ %1597, %1591 ], [ %1532, %1526 ]
  %1612 = phi i8 [ %1598, %1591 ], [ %1536, %1526 ]
  %1613 = zext i8 %1611 to i32
  %1614 = zext nneg i8 %1611 to i64
  %1615 = lshr i64 %1608, %1614
  %1616 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1609, i32 %1613), !nosanitize !47
  %1617 = extractvalue { i32, i1 } %1616, 0, !nosanitize !47
  %1618 = extractvalue { i32, i1 } %1616, 1, !nosanitize !47
  br i1 %1618, label %1619, label %1620, !prof !48, !nosanitize !47

1619:                                             ; preds = %1604
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1620:                                             ; preds = %1604
  %1621 = add nuw nsw i32 %1605, %1613
  store i32 %1621, ptr %71, align 4, !tbaa !37
  %1622 = zext i16 %1610 to i32
  store i32 %1622, ptr %56, align 4, !tbaa !67
  %1623 = zext i8 %1612 to i32
  %1624 = icmp eq i8 %1612, 0
  br i1 %1624, label %1625, label %1626

1625:                                             ; preds = %1620
  store i32 16205, ptr %21, align 8, !tbaa !20
  br label %2283

1626:                                             ; preds = %1620
  %1627 = and i32 %1623, 32
  %1628 = icmp eq i32 %1627, 0
  br i1 %1628, label %1630, label %1629

1629:                                             ; preds = %1626
  store i32 -1, ptr %71, align 4, !tbaa !37
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2283

1630:                                             ; preds = %1626
  %1631 = and i32 %1623, 64
  %1632 = icmp eq i32 %1631, 0
  br i1 %1632, label %1634, label %1633

1633:                                             ; preds = %1630
  store ptr @.str.14, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2283

1634:                                             ; preds = %1630
  %1635 = and i32 %1623, 15
  store i32 %1635, ptr %72, align 4, !tbaa !53
  store i32 16201, ptr %21, align 8, !tbaa !20
  br label %1636

1636:                                             ; preds = %1634, %101
  %1637 = phi i32 [ %1635, %1634 ], [ %102, %101 ]
  %1638 = phi ptr [ %1606, %1634 ], [ %90, %101 ]
  %1639 = phi i32 [ %1607, %1634 ], [ %92, %101 ]
  %1640 = phi i64 [ %1615, %1634 ], [ %94, %101 ]
  %1641 = phi i32 [ %1617, %1634 ], [ %95, %101 ]
  %1642 = phi i32 [ %1467, %1634 ], [ %97, %101 ]
  %1643 = icmp eq i32 %1637, 0
  br i1 %1643, label %1699, label %1644

1644:                                             ; preds = %1636
  %1645 = icmp ult i32 %1641, %1637
  br i1 %1645, label %1646, label %.loopexit162

1646:                                             ; preds = %1644
  %1647 = icmp eq i32 %1639, 0
  br i1 %1647, label %._crit_edge5025, label %.lr.ph5024

.lr.ph5024:                                       ; preds = %1646
  %1648 = zext i32 %1641 to i64
  br label %1651

1649:                                             ; preds = %1668
  %1650 = icmp eq i32 %1656, 0
  br i1 %1650, label %._crit_edge5025, label %1651, !llvm.loop !100

1651:                                             ; preds = %.lr.ph5024, %1649
  %1652 = phi ptr [ %1638, %.lr.ph5024 ], [ %1657, %1649 ]
  %1653 = phi i32 [ %1639, %.lr.ph5024 ], [ %1656, %1649 ]
  %1654 = phi i64 [ %1640, %.lr.ph5024 ], [ %1662, %1649 ]
  %1655 = phi i64 [ %1648, %.lr.ph5024 ], [ %1669, %1649 ]
  %1656 = add i32 %1653, -1
  %1657 = getelementptr inbounds nuw i8, ptr %1652, i64 1
  %1658 = load i8, ptr %1652, align 1, !tbaa !44
  %1659 = zext i8 %1658 to i64
  %1660 = shl i64 %1659, %1655
  %1661 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1654, i64 %1660), !nosanitize !47
  %1662 = extractvalue { i64, i1 } %1661, 0, !nosanitize !47
  %1663 = extractvalue { i64, i1 } %1661, 1, !nosanitize !47
  br i1 %1663, label %1664, label %1665, !prof !48, !nosanitize !47

1664:                                             ; preds = %1651
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1665:                                             ; preds = %1651
  %1666 = icmp samesign ugt i64 %1655, 4294967287
  br i1 %1666, label %1667, label %1668, !prof !48, !nosanitize !47

1667:                                             ; preds = %1665
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1668:                                             ; preds = %1665
  %1669 = add nuw nsw i64 %1655, 8
  %1670 = trunc nuw i64 %1669 to i32
  %1671 = icmp ugt i32 %1637, %1670
  br i1 %1671, label %1649, label %.loopexit162, !llvm.loop !100

.loopexit162:                                     ; preds = %1668, %1644
  %1672 = phi ptr [ %1638, %1644 ], [ %1657, %1668 ]
  %1673 = phi i32 [ %1639, %1644 ], [ %1656, %1668 ]
  %1674 = phi i64 [ %1640, %1644 ], [ %1662, %1668 ]
  %1675 = phi i32 [ %1641, %1644 ], [ %1670, %1668 ]
  %1676 = shl nsw i32 -1, %1637
  %1677 = xor i32 %1676, -1
  %1678 = trunc i64 %1674 to i32
  %1679 = and i32 %1678, %1677
  %1680 = load i32, ptr %56, align 4, !tbaa !67
  %1681 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1680, i32 %1679), !nosanitize !47
  %1682 = extractvalue { i32, i1 } %1681, 1, !nosanitize !47
  br i1 %1682, label %1683, label %1684, !prof !48, !nosanitize !47

1683:                                             ; preds = %.loopexit162
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1684:                                             ; preds = %.loopexit162
  %1685 = extractvalue { i32, i1 } %1681, 0, !nosanitize !47
  store i32 %1685, ptr %56, align 4, !tbaa !67
  %1686 = zext nneg i32 %1637 to i64
  %1687 = lshr i64 %1674, %1686
  %1688 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1675, i32 %1637), !nosanitize !47
  %1689 = extractvalue { i32, i1 } %1688, 0, !nosanitize !47
  %1690 = extractvalue { i32, i1 } %1688, 1, !nosanitize !47
  br i1 %1690, label %1691, label %1692, !prof !48, !nosanitize !47

1691:                                             ; preds = %1684
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1692:                                             ; preds = %1684
  %1693 = load i32, ptr %71, align 4, !tbaa !37
  %1694 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1693, i32 %1637), !nosanitize !47
  %1695 = extractvalue { i32, i1 } %1694, 1, !nosanitize !47
  br i1 %1695, label %1696, label %1697, !prof !48, !nosanitize !47

1696:                                             ; preds = %1692
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1697:                                             ; preds = %1692
  %1698 = extractvalue { i32, i1 } %1694, 0, !nosanitize !47
  store i32 %1698, ptr %71, align 4, !tbaa !37
  br label %1699

1699:                                             ; preds = %1697, %1636
  %1700 = phi ptr [ %1672, %1697 ], [ %1638, %1636 ]
  %1701 = phi i32 [ %1673, %1697 ], [ %1639, %1636 ]
  %1702 = phi i64 [ %1687, %1697 ], [ %1640, %1636 ]
  %1703 = phi i32 [ %1689, %1697 ], [ %1641, %1636 ]
  %1704 = load i32, ptr %56, align 4, !tbaa !67
  store i32 %1704, ptr %73, align 8, !tbaa !101
  store i32 16202, ptr %21, align 8, !tbaa !20
  br label %1705

1705:                                             ; preds = %1699, %88
  %1706 = phi ptr [ %1700, %1699 ], [ %90, %88 ]
  %1707 = phi i32 [ %1701, %1699 ], [ %92, %88 ]
  %1708 = phi i64 [ %1702, %1699 ], [ %94, %88 ]
  %1709 = phi i32 [ %1703, %1699 ], [ %95, %88 ]
  %1710 = phi i32 [ %1642, %1699 ], [ %97, %88 ]
  %1711 = load i32, ptr %69, align 4, !tbaa !99
  %1712 = shl nsw i32 -1, %1711
  %1713 = xor i32 %1712, -1
  %1714 = load ptr, ptr %64, align 8, !tbaa !34
  %1715 = trunc i64 %1708 to i32
  %1716 = and i32 %1713, %1715
  %1717 = zext nneg i32 %1716 to i64
  %1718 = getelementptr inbounds nuw [4 x i8], ptr %1714, i64 %1717
  %1719 = getelementptr inbounds nuw i8, ptr %1718, i64 1
  %1720 = load i8, ptr %1719, align 1, !tbaa !44
  %1721 = zext i8 %1720 to i32
  %1722 = icmp ult i32 %1709, %1721
  br i1 %1722, label %1723, label %1755

1723:                                             ; preds = %1705
  %1724 = icmp eq i32 %1707, 0
  br i1 %1724, label %._crit_edge5045, label %.lr.ph5044

.lr.ph5044:                                       ; preds = %1723
  %1725 = zext nneg i32 %1709 to i64
  br label %1728

1726:                                             ; preds = %1739
  %1727 = icmp eq i32 %1742, 0
  br i1 %1727, label %._crit_edge5045, label %1728

1728:                                             ; preds = %.lr.ph5044, %1726
  %1729 = phi ptr [ %1706, %.lr.ph5044 ], [ %1741, %1726 ]
  %1730 = phi i32 [ %1707, %.lr.ph5044 ], [ %1742, %1726 ]
  %1731 = phi i64 [ %1708, %.lr.ph5044 ], [ %1740, %1726 ]
  %1732 = phi i64 [ %1725, %.lr.ph5044 ], [ %1743, %1726 ]
  %1733 = load i8, ptr %1729, align 1, !tbaa !44
  %1734 = zext i8 %1733 to i64
  %1735 = shl i64 %1734, %1732
  %1736 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1731, i64 %1735), !nosanitize !47
  %1737 = extractvalue { i64, i1 } %1736, 1, !nosanitize !47
  br i1 %1737, label %1738, label %1739, !prof !48, !nosanitize !47

1738:                                             ; preds = %1728
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1739:                                             ; preds = %1728
  %1740 = extractvalue { i64, i1 } %1736, 0, !nosanitize !47
  %1741 = getelementptr inbounds nuw i8, ptr %1729, i64 1
  %1742 = add i32 %1730, -1
  %1743 = add nuw nsw i64 %1732, 8
  %1744 = trunc i64 %1740 to i32
  %1745 = and i32 %1744, %1713
  %1746 = zext nneg i32 %1745 to i64
  %1747 = getelementptr inbounds nuw [4 x i8], ptr %1714, i64 %1746
  %1748 = getelementptr inbounds nuw i8, ptr %1747, i64 1
  %1749 = load i8, ptr %1748, align 1, !tbaa !44
  %1750 = zext i8 %1749 to i64
  %1751 = icmp samesign ult i64 %1743, %1750
  br i1 %1751, label %1726, label %1752

1752:                                             ; preds = %1739
  %1753 = zext i8 %1749 to i32
  %1754 = trunc nuw nsw i64 %1743 to i32
  br label %1755

1755:                                             ; preds = %1752, %1705
  %1756 = phi ptr [ %1718, %1705 ], [ %1747, %1752 ]
  %1757 = phi ptr [ %1706, %1705 ], [ %1741, %1752 ]
  %1758 = phi i32 [ %1707, %1705 ], [ %1742, %1752 ]
  %1759 = phi i64 [ %1708, %1705 ], [ %1740, %1752 ]
  %1760 = phi i32 [ %1709, %1705 ], [ %1754, %1752 ]
  %1761 = phi i8 [ %1720, %1705 ], [ %1749, %1752 ]
  %1762 = phi i32 [ %1721, %1705 ], [ %1753, %1752 ]
  %1763 = getelementptr inbounds nuw i8, ptr %1756, i64 2
  %1764 = load i16, ptr %1763, align 2, !tbaa !86
  %1765 = load i8, ptr %1756, align 2, !tbaa !44
  %1766 = icmp ult i8 %1765, 16
  br i1 %1766, label %1767, label %1838

1767:                                             ; preds = %1755
  %1768 = zext nneg i8 %1765 to i32
  %1769 = add nuw nsw i32 %1762, %1768
  %1770 = shl nsw i32 -1, %1769
  %1771 = xor i32 %1770, -1
  %1772 = zext i16 %1764 to i32
  %1773 = trunc i64 %1759 to i32
  %1774 = and i32 %1771, %1773
  %1775 = lshr i32 %1774, %1762
  %1776 = add nuw i32 %1775, %1772
  %1777 = zext i32 %1776 to i64
  %1778 = getelementptr inbounds nuw [4 x i8], ptr %1714, i64 %1777
  %1779 = getelementptr inbounds nuw i8, ptr %1778, i64 1
  %1780 = load i8, ptr %1779, align 1, !tbaa !44
  %1781 = zext i8 %1780 to i32
  %1782 = add nuw nsw i32 %1762, %1781
  %1783 = icmp ugt i32 %1782, %1760
  br i1 %1783, label %1784, label %1820

1784:                                             ; preds = %1767
  %1785 = icmp eq i32 %1758, 0
  br i1 %1785, label %._crit_edge5065, label %.lr.ph5064

.lr.ph5064:                                       ; preds = %1784
  %1786 = zext nneg i32 %1760 to i64
  br label %1789

1787:                                             ; preds = %1801
  %1788 = icmp eq i32 %1804, 0
  br i1 %1788, label %._crit_edge5065, label %1789

1789:                                             ; preds = %.lr.ph5064, %1787
  %1790 = phi ptr [ %1757, %.lr.ph5064 ], [ %1803, %1787 ]
  %1791 = phi i32 [ %1758, %.lr.ph5064 ], [ %1804, %1787 ]
  %1792 = phi i64 [ %1759, %.lr.ph5064 ], [ %1802, %1787 ]
  %1793 = phi i64 [ %1786, %.lr.ph5064 ], [ %1805, %1787 ]
  %1794 = load i8, ptr %1790, align 1, !tbaa !44
  %1795 = zext i8 %1794 to i64
  %1796 = shl i64 %1795, %1793
  %1797 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1792, i64 %1796), !nosanitize !47
  %1798 = extractvalue { i64, i1 } %1797, 1, !nosanitize !47
  br i1 %1798, label %1799, label %1801, !prof !48, !nosanitize !47

1799:                                             ; preds = %1789
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1800:                                             ; preds = %1853, %1820
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1801:                                             ; preds = %1789
  %1802 = extractvalue { i64, i1 } %1797, 0, !nosanitize !47
  %1803 = getelementptr inbounds nuw i8, ptr %1790, i64 1
  %1804 = add i32 %1791, -1
  %1805 = add nuw nsw i64 %1793, 8
  %1806 = trunc i64 %1802 to i32
  %1807 = and i32 %1806, %1771
  %1808 = lshr i32 %1807, %1762
  %1809 = add nuw i32 %1808, %1772
  %1810 = zext i32 %1809 to i64
  %1811 = getelementptr inbounds nuw [4 x i8], ptr %1714, i64 %1810
  %1812 = getelementptr inbounds nuw i8, ptr %1811, i64 1
  %1813 = load i8, ptr %1812, align 1, !tbaa !44
  %1814 = zext i8 %1813 to i32
  %1815 = add nuw nsw i32 %1762, %1814
  %1816 = zext nneg i32 %1815 to i64
  %1817 = icmp samesign ult i64 %1805, %1816
  br i1 %1817, label %1787, label %1818

1818:                                             ; preds = %1801
  %1819 = trunc nuw nsw i64 %1805 to i32
  br label %1820

1820:                                             ; preds = %1818, %1767
  %1821 = phi ptr [ %1778, %1767 ], [ %1811, %1818 ]
  %1822 = phi ptr [ %1757, %1767 ], [ %1803, %1818 ]
  %1823 = phi i32 [ %1758, %1767 ], [ %1804, %1818 ]
  %1824 = phi i64 [ %1759, %1767 ], [ %1802, %1818 ]
  %1825 = phi i32 [ %1760, %1767 ], [ %1819, %1818 ]
  %1826 = phi i8 [ %1780, %1767 ], [ %1813, %1818 ]
  %1827 = load i32, ptr %71, align 4, !tbaa !37
  %1828 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1827, i32 %1762), !nosanitize !47
  %1829 = extractvalue { i32, i1 } %1828, 1, !nosanitize !47
  br i1 %1829, label %1800, label %1830, !prof !48, !nosanitize !47

1830:                                             ; preds = %1820
  %1831 = getelementptr inbounds nuw i8, ptr %1821, i64 2
  %1832 = load i16, ptr %1831, align 2, !tbaa !86
  %1833 = load i8, ptr %1821, align 2, !tbaa !44
  %1834 = sub nuw i32 %1825, %1762
  %1835 = zext nneg i8 %1761 to i64
  %1836 = lshr i64 %1824, %1835
  %1837 = extractvalue { i32, i1 } %1828, 0, !nosanitize !47
  store i32 %1837, ptr %71, align 4, !tbaa !37
  br label %1838

1838:                                             ; preds = %1830, %1755
  %1839 = phi ptr [ %1822, %1830 ], [ %1757, %1755 ]
  %1840 = phi i32 [ %1823, %1830 ], [ %1758, %1755 ]
  %1841 = phi i64 [ %1836, %1830 ], [ %1759, %1755 ]
  %1842 = phi i32 [ %1834, %1830 ], [ %1760, %1755 ]
  %1843 = phi i16 [ %1832, %1830 ], [ %1764, %1755 ]
  %1844 = phi i8 [ %1826, %1830 ], [ %1761, %1755 ]
  %1845 = phi i8 [ %1833, %1830 ], [ %1765, %1755 ]
  %1846 = zext i8 %1844 to i32
  %1847 = zext nneg i8 %1844 to i64
  %1848 = lshr i64 %1841, %1847
  %1849 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1842, i32 %1846), !nosanitize !47
  %1850 = extractvalue { i32, i1 } %1849, 0, !nosanitize !47
  %1851 = extractvalue { i32, i1 } %1849, 1, !nosanitize !47
  br i1 %1851, label %1852, label %1853, !prof !48, !nosanitize !47

1852:                                             ; preds = %1838
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
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
  br label %2283

1863:                                             ; preds = %1857
  %1864 = zext i16 %1843 to i32
  store i32 %1864, ptr %74, align 8, !tbaa !102
  %1865 = and i32 %1859, 15
  store i32 %1865, ptr %72, align 4, !tbaa !53
  store i32 16203, ptr %21, align 8, !tbaa !20
  br label %1866

1866:                                             ; preds = %1863, %99
  %1867 = phi i32 [ %1865, %1863 ], [ %100, %99 ]
  %1868 = phi ptr [ %1839, %1863 ], [ %90, %99 ]
  %1869 = phi i32 [ %1840, %1863 ], [ %92, %99 ]
  %1870 = phi i64 [ %1848, %1863 ], [ %94, %99 ]
  %1871 = phi i32 [ %1850, %1863 ], [ %95, %99 ]
  %1872 = phi i32 [ %1710, %1863 ], [ %97, %99 ]
  %1873 = icmp eq i32 %1867, 0
  br i1 %1873, label %1929, label %1874

1874:                                             ; preds = %1866
  %1875 = icmp ult i32 %1871, %1867
  br i1 %1875, label %1876, label %.loopexit

1876:                                             ; preds = %1874
  %1877 = icmp eq i32 %1869, 0
  br i1 %1877, label %._crit_edge5085, label %.lr.ph5084

.lr.ph5084:                                       ; preds = %1876
  %1878 = zext i32 %1871 to i64
  br label %1881

1879:                                             ; preds = %1898
  %1880 = icmp eq i32 %1886, 0
  br i1 %1880, label %._crit_edge5085, label %1881, !llvm.loop !103

1881:                                             ; preds = %.lr.ph5084, %1879
  %1882 = phi ptr [ %1868, %.lr.ph5084 ], [ %1887, %1879 ]
  %1883 = phi i32 [ %1869, %.lr.ph5084 ], [ %1886, %1879 ]
  %1884 = phi i64 [ %1870, %.lr.ph5084 ], [ %1892, %1879 ]
  %1885 = phi i64 [ %1878, %.lr.ph5084 ], [ %1899, %1879 ]
  %1886 = add i32 %1883, -1
  %1887 = getelementptr inbounds nuw i8, ptr %1882, i64 1
  %1888 = load i8, ptr %1882, align 1, !tbaa !44
  %1889 = zext i8 %1888 to i64
  %1890 = shl i64 %1889, %1885
  %1891 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1884, i64 %1890), !nosanitize !47
  %1892 = extractvalue { i64, i1 } %1891, 0, !nosanitize !47
  %1893 = extractvalue { i64, i1 } %1891, 1, !nosanitize !47
  br i1 %1893, label %1894, label %1895, !prof !48, !nosanitize !47

1894:                                             ; preds = %1881
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1895:                                             ; preds = %1881
  %1896 = icmp samesign ugt i64 %1885, 4294967287
  br i1 %1896, label %1897, label %1898, !prof !48, !nosanitize !47

1897:                                             ; preds = %1895
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1898:                                             ; preds = %1895
  %1899 = add nuw nsw i64 %1885, 8
  %1900 = trunc nuw i64 %1899 to i32
  %1901 = icmp ugt i32 %1867, %1900
  br i1 %1901, label %1879, label %.loopexit, !llvm.loop !103

.loopexit:                                        ; preds = %1898, %1874
  %1902 = phi ptr [ %1868, %1874 ], [ %1887, %1898 ]
  %1903 = phi i32 [ %1869, %1874 ], [ %1886, %1898 ]
  %1904 = phi i64 [ %1870, %1874 ], [ %1892, %1898 ]
  %1905 = phi i32 [ %1871, %1874 ], [ %1900, %1898 ]
  %1906 = shl nsw i32 -1, %1867
  %1907 = xor i32 %1906, -1
  %1908 = trunc i64 %1904 to i32
  %1909 = and i32 %1908, %1907
  %1910 = load i32, ptr %74, align 8, !tbaa !102
  %1911 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1910, i32 %1909), !nosanitize !47
  %1912 = extractvalue { i32, i1 } %1911, 1, !nosanitize !47
  br i1 %1912, label %1913, label %1914, !prof !48, !nosanitize !47

1913:                                             ; preds = %.loopexit
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1914:                                             ; preds = %.loopexit
  %1915 = extractvalue { i32, i1 } %1911, 0, !nosanitize !47
  store i32 %1915, ptr %74, align 8, !tbaa !102
  %1916 = zext nneg i32 %1867 to i64
  %1917 = lshr i64 %1904, %1916
  %1918 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1905, i32 %1867), !nosanitize !47
  %1919 = extractvalue { i32, i1 } %1918, 0, !nosanitize !47
  %1920 = extractvalue { i32, i1 } %1918, 1, !nosanitize !47
  br i1 %1920, label %1921, label %1922, !prof !48, !nosanitize !47

1921:                                             ; preds = %1914
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1922:                                             ; preds = %1914
  %1923 = load i32, ptr %71, align 4, !tbaa !37
  %1924 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1923, i32 %1867), !nosanitize !47
  %1925 = extractvalue { i32, i1 } %1924, 1, !nosanitize !47
  br i1 %1925, label %1926, label %1927, !prof !48, !nosanitize !47

1926:                                             ; preds = %1922
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
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

1934:                                             ; preds = %1929, %88
  %1935 = phi ptr [ %1930, %1929 ], [ %90, %88 ]
  %1936 = phi i32 [ %1931, %1929 ], [ %92, %88 ]
  %1937 = phi i64 [ %1932, %1929 ], [ %94, %88 ]
  %1938 = phi i32 [ %1933, %1929 ], [ %95, %88 ]
  %1939 = phi i32 [ %1872, %1929 ], [ %97, %88 ]
  %1940 = icmp eq i32 %93, 0
  br i1 %1940, label %.loopexit164, label %1941

1941:                                             ; preds = %1934
  %1942 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %96, i32 %93), !nosanitize !47
  %1943 = extractvalue { i32, i1 } %1942, 0, !nosanitize !47
  %1944 = extractvalue { i32, i1 } %1942, 1, !nosanitize !47
  br i1 %1944, label %1945, label %1946, !prof !48, !nosanitize !47

1945:                                             ; preds = %1941
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1946:                                             ; preds = %1941
  %1947 = load i32, ptr %74, align 8, !tbaa !102
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
  br label %2283

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
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
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
  %1981 = getelementptr inbounds i8, ptr %91, i64 %1980
  %1982 = load i32, ptr %56, align 4, !tbaa !67
  br label %1983

1983:                                             ; preds = %1978, %1970
  %1984 = phi i32 [ %1982, %1978 ], [ %1976, %1970 ]
  %1985 = phi i32 [ %1982, %1978 ], [ %1977, %1970 ]
  %1986 = phi ptr [ %1981, %1978 ], [ %1975, %1970 ]
  %1987 = ptrtoaddr ptr %1986 to i64
  %1988 = call i32 @llvm.umin.i32(i32 %1985, i32 %93)
  %1989 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %93, i32 %1988), !nosanitize !47
  %1990 = extractvalue { i32, i1 } %1989, 0, !nosanitize !47
  %1991 = extractvalue { i32, i1 } %1989, 1, !nosanitize !47
  br i1 %1991, label %1992, label %1993, !prof !48, !nosanitize !47

1992:                                             ; preds = %1983
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1993:                                             ; preds = %1983
  %1994 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1984, i32 %1988), !nosanitize !47
  %1995 = extractvalue { i32, i1 } %1994, 1, !nosanitize !47
  br i1 %1995, label %1996, label %1997, !prof !48, !nosanitize !47

1996:                                             ; preds = %1993
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1997:                                             ; preds = %1993
  %1998 = extractvalue { i32, i1 } %1994, 0, !nosanitize !47
  store i32 %1998, ptr %56, align 4, !tbaa !67
  %.not.not = icmp eq i32 %1988, 0
  br i1 %.not.not, label %.split2450.us, label %iter.check, !prof !48, !nosanitize !47

iter.check:                                       ; preds = %1997
  %1999 = call i32 @llvm.umin.i32(i32 %1985, i32 %93)
  %umin = zext i32 %1999 to i64
  %min.iters.check = icmp ult i32 %1999, 4
  %2000 = sub i64 %98, %1987
  %diff.check = icmp ult i64 %2000, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.split2450.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check5106 = icmp ult i32 %1999, 32
  br i1 %min.iters.check5106, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %umin, 28
  %n.vec = and i64 %umin, 4294967264
  %2001 = getelementptr i8, ptr %91, i64 %n.vec
  %.cast = trunc nuw i64 %n.vec to i32
  %2002 = sub i32 %1988, %.cast
  %2003 = getelementptr i8, ptr %1986, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %next.gep = getelementptr i8, ptr %91, i64 %index
  %next.gep5107 = getelementptr i8, ptr %1986, i64 %index
  %2004 = getelementptr i8, ptr %next.gep5107, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep5107, align 1, !tbaa !44
  %wide.load5108 = load <16 x i8>, ptr %2004, align 1, !tbaa !44
  %2005 = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !44
  store <16 x i8> %wide.load5108, ptr %2005, align 1, !tbaa !44
  %index.next = add nuw i64 %index, 32
  %2006 = icmp eq i64 %index.next, %n.vec
  br i1 %2006, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %umin
  br i1 %cmp.n, label %.loopexit5123, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.split2450.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec5112 = and i64 %umin, 4294967292
  %2007 = getelementptr i8, ptr %91, i64 %n.vec5112
  %.cast5113 = trunc nuw i64 %n.vec5112 to i32
  %2008 = sub i32 %1988, %.cast5113
  %2009 = getelementptr i8, ptr %1986, i64 %n.vec5112
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index5114 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next5118, %vec.epilog.vector.body ]
  %next.gep5115 = getelementptr i8, ptr %91, i64 %index5114
  %next.gep5116 = getelementptr i8, ptr %1986, i64 %index5114
  %wide.load5117 = load <4 x i8>, ptr %next.gep5116, align 1, !tbaa !44
  store <4 x i8> %wide.load5117, ptr %next.gep5115, align 1, !tbaa !44
  %index.next5118 = add nuw i64 %index5114, 4
  %2010 = icmp eq i64 %index.next5118, %n.vec5112
  br i1 %2010, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !108

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n5119 = icmp eq i64 %n.vec5112, %umin
  br i1 %cmp.n5119, label %.loopexit5123, label %.split2450.preheader

.split2450.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %91, %iter.check ], [ %2001, %vec.epilog.iter.check ], [ %2007, %vec.epilog.middle.block ]
  %.ph5124 = phi i32 [ %1988, %iter.check ], [ %2002, %vec.epilog.iter.check ], [ %2008, %vec.epilog.middle.block ]
  %.ph5125 = phi ptr [ %1986, %iter.check ], [ %2003, %vec.epilog.iter.check ], [ %2009, %vec.epilog.middle.block ]
  %2011 = add i32 %.ph5124, -1
  %xtraiter = and i32 %.ph5124, 7
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split2450.prol.loopexit, label %.split2450.prol

.split2450.prol:                                  ; preds = %.split2450.preheader, %.split2450.prol
  %2012 = phi ptr [ %2016, %.split2450.prol ], [ %.ph, %.split2450.preheader ]
  %2013 = phi i32 [ %2017, %.split2450.prol ], [ %.ph5124, %.split2450.preheader ]
  %2014 = phi ptr [ %2018, %.split2450.prol ], [ %.ph5125, %.split2450.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.split2450.prol ], [ 0, %.split2450.preheader ]
  %2015 = load i8, ptr %2014, align 1, !tbaa !44
  store i8 %2015, ptr %2012, align 1, !tbaa !44
  %2016 = getelementptr inbounds nuw i8, ptr %2012, i64 1
  %2017 = add i32 %2013, -1
  %2018 = getelementptr inbounds nuw i8, ptr %2014, i64 1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.split2450.prol.loopexit, label %.split2450.prol, !llvm.loop !109

.split2450.prol.loopexit:                         ; preds = %.split2450.prol, %.split2450.preheader
  %.lcssa5370.unr = phi ptr [ poison, %.split2450.preheader ], [ %2016, %.split2450.prol ]
  %.unr = phi ptr [ %.ph, %.split2450.preheader ], [ %2016, %.split2450.prol ]
  %.unr6409 = phi i32 [ %.ph5124, %.split2450.preheader ], [ %2017, %.split2450.prol ]
  %.unr6410 = phi ptr [ %.ph5125, %.split2450.preheader ], [ %2018, %.split2450.prol ]
  %2019 = icmp ult i32 %2011, 7
  br i1 %2019, label %.loopexit5123, label %.split2450

.split2450.us:                                    ; preds = %1997
  %2020 = load i8, ptr %1986, align 1, !tbaa !44
  store i8 %2020, ptr %91, align 1, !tbaa !44
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

.split2450:                                       ; preds = %.split2450.prol.loopexit, %.split2450
  %2021 = phi ptr [ %2046, %.split2450 ], [ %.unr, %.split2450.prol.loopexit ]
  %2022 = phi i32 [ %2047, %.split2450 ], [ %.unr6409, %.split2450.prol.loopexit ]
  %2023 = phi ptr [ %2048, %.split2450 ], [ %.unr6410, %.split2450.prol.loopexit ]
  %2024 = load i8, ptr %2023, align 1, !tbaa !44
  store i8 %2024, ptr %2021, align 1, !tbaa !44
  %2025 = getelementptr inbounds nuw i8, ptr %2021, i64 1
  %2026 = getelementptr inbounds nuw i8, ptr %2023, i64 1
  %2027 = load i8, ptr %2026, align 1, !tbaa !44
  store i8 %2027, ptr %2025, align 1, !tbaa !44
  %2028 = getelementptr inbounds nuw i8, ptr %2021, i64 2
  %2029 = getelementptr inbounds nuw i8, ptr %2023, i64 2
  %2030 = load i8, ptr %2029, align 1, !tbaa !44
  store i8 %2030, ptr %2028, align 1, !tbaa !44
  %2031 = getelementptr inbounds nuw i8, ptr %2021, i64 3
  %2032 = getelementptr inbounds nuw i8, ptr %2023, i64 3
  %2033 = load i8, ptr %2032, align 1, !tbaa !44
  store i8 %2033, ptr %2031, align 1, !tbaa !44
  %2034 = getelementptr inbounds nuw i8, ptr %2021, i64 4
  %2035 = getelementptr inbounds nuw i8, ptr %2023, i64 4
  %2036 = load i8, ptr %2035, align 1, !tbaa !44
  store i8 %2036, ptr %2034, align 1, !tbaa !44
  %2037 = getelementptr inbounds nuw i8, ptr %2021, i64 5
  %2038 = getelementptr inbounds nuw i8, ptr %2023, i64 5
  %2039 = load i8, ptr %2038, align 1, !tbaa !44
  store i8 %2039, ptr %2037, align 1, !tbaa !44
  %2040 = getelementptr inbounds nuw i8, ptr %2021, i64 6
  %2041 = getelementptr inbounds nuw i8, ptr %2023, i64 6
  %2042 = load i8, ptr %2041, align 1, !tbaa !44
  store i8 %2042, ptr %2040, align 1, !tbaa !44
  %2043 = getelementptr inbounds nuw i8, ptr %2021, i64 7
  %2044 = getelementptr inbounds nuw i8, ptr %2023, i64 7
  %2045 = load i8, ptr %2044, align 1, !tbaa !44
  store i8 %2045, ptr %2043, align 1, !tbaa !44
  %2046 = getelementptr inbounds nuw i8, ptr %2021, i64 8
  %2047 = add i32 %2022, -8
  %2048 = getelementptr inbounds nuw i8, ptr %2023, i64 8
  %2049 = icmp eq i32 %2047, 0
  br i1 %2049, label %.loopexit5123, label %.split2450, !llvm.loop !111

.loopexit5123:                                    ; preds = %.split2450.prol.loopexit, %.split2450, %vec.epilog.middle.block, %middle.block
  %.lcssa4053 = phi ptr [ %2007, %vec.epilog.middle.block ], [ %2001, %middle.block ], [ %.lcssa5370.unr, %.split2450.prol.loopexit ], [ %2046, %.split2450 ]
  %2050 = load i32, ptr %56, align 4, !tbaa !67
  %2051 = icmp eq i32 %2050, 0
  br i1 %2051, label %2052, label %2283

2052:                                             ; preds = %.loopexit5123
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2283

2053:                                             ; preds = %88
  %2054 = icmp eq i32 %93, 0
  br i1 %2054, label %.loopexit164, label %2055

2055:                                             ; preds = %2053
  %2056 = load i32, ptr %56, align 4, !tbaa !67
  %2057 = trunc i32 %2056 to i8
  store i8 %2057, ptr %91, align 1, !tbaa !44
  %2058 = add i32 %93, -1
  %2059 = getelementptr inbounds nuw i8, ptr %91, i64 1
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2283

2060:                                             ; preds = %88
  %2061 = load i32, ptr %49, align 8, !tbaa !24
  %2062 = icmp eq i32 %2061, 0
  br i1 %2062, label %2183, label %2063

2063:                                             ; preds = %2060
  %2064 = icmp ult i32 %95, 32
  br i1 %2064, label %2065, label %2128

2065:                                             ; preds = %2063
  %2066 = zext nneg i32 %95 to i64
  %2067 = icmp eq i32 %92, 0
  br i1 %2067, label %2396, label %2068

2068:                                             ; preds = %2065
  %2069 = load i8, ptr %90, align 1, !tbaa !44
  %2070 = zext i8 %2069 to i64
  %2071 = shl nuw nsw i64 %2070, %2066
  %2072 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %2071), !nosanitize !47
  %2073 = extractvalue { i64, i1 } %2072, 1, !nosanitize !47
  br i1 %2073, label %2074, label %2075, !prof !48, !nosanitize !47

2074:                                             ; preds = %2111, %2097, %2083, %2068
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2075:                                             ; preds = %2068
  %2076 = extractvalue { i64, i1 } %2072, 0, !nosanitize !47
  %2077 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %2078 = add i32 %92, -1
  %2079 = add nuw nsw i64 %2066, 8
  %2080 = icmp samesign ult i32 %95, 24
  br i1 %2080, label %2081, label %2122, !llvm.loop !112

2081:                                             ; preds = %2075
  %2082 = icmp eq i32 %2078, 0
  br i1 %2082, label %2396, label %2083

2083:                                             ; preds = %2081
  %2084 = load i8, ptr %2077, align 1, !tbaa !44
  %2085 = zext i8 %2084 to i64
  %2086 = shl nuw nsw i64 %2085, %2079
  %2087 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2076, i64 %2086), !nosanitize !47
  %2088 = extractvalue { i64, i1 } %2087, 1, !nosanitize !47
  br i1 %2088, label %2074, label %2089, !prof !48, !nosanitize !47

2089:                                             ; preds = %2083
  %2090 = extractvalue { i64, i1 } %2087, 0, !nosanitize !47
  %2091 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %2092 = add i32 %92, -2
  %2093 = add nuw nsw i64 %2066, 16
  %2094 = icmp samesign ult i32 %95, 16
  br i1 %2094, label %2095, label %2122, !llvm.loop !112

2095:                                             ; preds = %2089
  %2096 = icmp eq i32 %2092, 0
  br i1 %2096, label %2396, label %2097

2097:                                             ; preds = %2095
  %2098 = load i8, ptr %2091, align 1, !tbaa !44
  %2099 = zext i8 %2098 to i64
  %2100 = shl nuw nsw i64 %2099, %2093
  %2101 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2090, i64 %2100), !nosanitize !47
  %2102 = extractvalue { i64, i1 } %2101, 1, !nosanitize !47
  br i1 %2102, label %2074, label %2103, !prof !48, !nosanitize !47

2103:                                             ; preds = %2097
  %2104 = extractvalue { i64, i1 } %2101, 0, !nosanitize !47
  %2105 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %2106 = add i32 %92, -3
  %2107 = add nuw nsw i64 %2066, 24
  %2108 = icmp samesign ult i32 %95, 8
  br i1 %2108, label %2109, label %2122, !llvm.loop !112

2109:                                             ; preds = %2103
  %2110 = icmp eq i32 %2106, 0
  br i1 %2110, label %2396, label %2111

2111:                                             ; preds = %2109
  %2112 = load i8, ptr %2105, align 1, !tbaa !44
  %2113 = zext i8 %2112 to i64
  %2114 = shl nuw nsw i64 %2113, %2107
  %2115 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2104, i64 %2114), !nosanitize !47
  %2116 = extractvalue { i64, i1 } %2115, 1, !nosanitize !47
  br i1 %2116, label %2074, label %2117, !prof !48, !nosanitize !47

2117:                                             ; preds = %2111
  %2118 = extractvalue { i64, i1 } %2115, 0, !nosanitize !47
  %2119 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %2120 = add i32 %92, -4
  %2121 = or disjoint i64 %2066, 32
  br label %2122

2122:                                             ; preds = %2117, %2103, %2089, %2075
  %2123 = phi i64 [ %2076, %2075 ], [ %2090, %2089 ], [ %2104, %2103 ], [ %2118, %2117 ]
  %2124 = phi ptr [ %2077, %2075 ], [ %2091, %2089 ], [ %2105, %2103 ], [ %2119, %2117 ]
  %2125 = phi i32 [ %2078, %2075 ], [ %2092, %2089 ], [ %2106, %2103 ], [ %2120, %2117 ]
  %2126 = phi i64 [ %2079, %2075 ], [ %2093, %2089 ], [ %2107, %2103 ], [ %2121, %2117 ]
  %2127 = trunc nuw nsw i64 %2126 to i32
  br label %2128

2128:                                             ; preds = %2122, %2063
  %2129 = phi ptr [ %90, %2063 ], [ %2124, %2122 ]
  %2130 = phi i32 [ %92, %2063 ], [ %2125, %2122 ]
  %2131 = phi i64 [ %94, %2063 ], [ %2123, %2122 ]
  %2132 = phi i32 [ %95, %2063 ], [ %2127, %2122 ]
  %2133 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %96, i32 %93), !nosanitize !47
  %2134 = extractvalue { i32, i1 } %2133, 0, !nosanitize !47
  %2135 = extractvalue { i32, i1 } %2133, 1, !nosanitize !47
  br i1 %2135, label %2136, label %2137, !prof !48, !nosanitize !47

2136:                                             ; preds = %2128
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2137:                                             ; preds = %2128
  %2138 = zext i32 %2134 to i64
  %2139 = load i64, ptr %50, align 8, !tbaa !113
  %2140 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2139, i64 %2138), !nosanitize !47
  %2141 = extractvalue { i64, i1 } %2140, 1, !nosanitize !47
  br i1 %2141, label %2142, label %2143, !prof !48, !nosanitize !47

2142:                                             ; preds = %2137
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2143:                                             ; preds = %2137
  %2144 = extractvalue { i64, i1 } %2140, 0, !nosanitize !47
  store i64 %2144, ptr %50, align 8, !tbaa !113
  %2145 = load i64, ptr %51, align 8, !tbaa !21
  %2146 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2145, i64 %2138), !nosanitize !47
  %2147 = extractvalue { i64, i1 } %2146, 1, !nosanitize !47
  br i1 %2147, label %2148, label %2149, !prof !48, !nosanitize !47

2148:                                             ; preds = %2143
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2149:                                             ; preds = %2143
  %2150 = extractvalue { i64, i1 } %2146, 0, !nosanitize !47
  store i64 %2150, ptr %51, align 8, !tbaa !21
  %2151 = and i32 %2061, 4
  %2152 = icmp ne i32 %2151, 0
  %2153 = icmp ne i32 %2134, 0
  %2154 = select i1 %2152, i1 %2153, i1 false
  br i1 %2154, label %2155, label %2169

2155:                                             ; preds = %2149
  %2156 = load i32, ptr %52, align 8, !tbaa !28
  %2157 = icmp eq i32 %2156, 0
  %2158 = load i64, ptr %53, align 8, !tbaa !56
  %2159 = sub nsw i64 0, %2138
  %2160 = getelementptr inbounds i8, ptr %91, i64 %2159
  br i1 %2157, label %2163, label %2161

2161:                                             ; preds = %2155
  %2162 = call i64 @crc32(i64 noundef %2158, ptr noundef nonnull %2160, i32 noundef %2134) #12
  br label %2165

2163:                                             ; preds = %2155
  %2164 = call i64 @adler32(i64 noundef %2158, ptr noundef nonnull %2160, i32 noundef %2134) #12
  br label %2165

2165:                                             ; preds = %2163, %2161
  %2166 = phi i64 [ %2162, %2161 ], [ %2164, %2163 ]
  store i64 %2166, ptr %53, align 8, !tbaa !56
  store i64 %2166, ptr %54, align 8, !tbaa !25
  %2167 = load i32, ptr %49, align 8, !tbaa !24
  %2168 = and i32 %2167, 4
  br label %2169

2169:                                             ; preds = %2165, %2149
  %2170 = phi i32 [ %2168, %2165 ], [ %2151, %2149 ]
  %2171 = phi i32 [ %2167, %2165 ], [ %2061, %2149 ]
  %2172 = icmp eq i32 %2170, 0
  br i1 %2172, label %2183, label %2173

2173:                                             ; preds = %2169
  %2174 = load i32, ptr %52, align 8, !tbaa !28
  %2175 = icmp eq i32 %2174, 0
  %2176 = trunc i64 %2131 to i32
  %2177 = call i32 @llvm.bswap.i32(i32 %2176)
  %2178 = zext i32 %2177 to i64
  %2179 = select i1 %2175, i64 %2178, i64 %2131
  %2180 = load i64, ptr %53, align 8, !tbaa !56
  %2181 = icmp eq i64 %2179, %2180
  br i1 %2181, label %2183, label %2182

2182:                                             ; preds = %2173
  store ptr @.str.17, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2283

2183:                                             ; preds = %2173, %2169, %2060
  %2184 = phi i32 [ 0, %2060 ], [ %2171, %2169 ], [ %2171, %2173 ]
  %2185 = phi ptr [ %90, %2060 ], [ %2129, %2169 ], [ %2129, %2173 ]
  %2186 = phi i32 [ %92, %2060 ], [ %2130, %2169 ], [ %2130, %2173 ]
  %2187 = phi i64 [ %94, %2060 ], [ 0, %2169 ], [ 0, %2173 ]
  %2188 = phi i32 [ %95, %2060 ], [ 0, %2169 ], [ 0, %2173 ]
  %2189 = phi i32 [ %96, %2060 ], [ %93, %2169 ], [ %93, %2173 ]
  store i32 16207, ptr %21, align 8, !tbaa !20
  br label %2190

2190:                                             ; preds = %2183, %103
  %2191 = phi i32 [ %2184, %2183 ], [ %104, %103 ]
  %2192 = phi ptr [ %2185, %2183 ], [ %90, %103 ]
  %2193 = phi i32 [ %2186, %2183 ], [ %92, %103 ]
  %2194 = phi i64 [ %2187, %2183 ], [ %94, %103 ]
  %2195 = phi i32 [ %2188, %2183 ], [ %95, %103 ]
  %2196 = phi i32 [ %2189, %2183 ], [ %96, %103 ]
  %2197 = icmp eq i32 %2191, 0
  br i1 %2197, label %2278, label %2198

2198:                                             ; preds = %2190
  %2199 = load i32, ptr %52, align 8, !tbaa !28
  %2200 = icmp eq i32 %2199, 0
  br i1 %2200, label %2278, label %2201

2201:                                             ; preds = %2198
  %2202 = icmp ult i32 %2195, 32
  br i1 %2202, label %2203, label %2266

2203:                                             ; preds = %2201
  %2204 = zext nneg i32 %2195 to i64
  %2205 = icmp eq i32 %2193, 0
  br i1 %2205, label %2390, label %2206

2206:                                             ; preds = %2203
  %2207 = load i8, ptr %2192, align 1, !tbaa !44
  %2208 = zext i8 %2207 to i64
  %2209 = shl nuw nsw i64 %2208, %2204
  %2210 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2194, i64 %2209), !nosanitize !47
  %2211 = extractvalue { i64, i1 } %2210, 1, !nosanitize !47
  br i1 %2211, label %2212, label %2213, !prof !48, !nosanitize !47

2212:                                             ; preds = %2249, %2235, %2221, %2206
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2213:                                             ; preds = %2206
  %2214 = extractvalue { i64, i1 } %2210, 0, !nosanitize !47
  %2215 = getelementptr inbounds nuw i8, ptr %2192, i64 1
  %2216 = add i32 %2193, -1
  %2217 = add nuw nsw i64 %2204, 8
  %2218 = icmp samesign ult i32 %2195, 24
  br i1 %2218, label %2219, label %2260, !llvm.loop !114

2219:                                             ; preds = %2213
  %2220 = icmp eq i32 %2216, 0
  br i1 %2220, label %2390, label %2221

2221:                                             ; preds = %2219
  %2222 = load i8, ptr %2215, align 1, !tbaa !44
  %2223 = zext i8 %2222 to i64
  %2224 = shl nuw nsw i64 %2223, %2217
  %2225 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2214, i64 %2224), !nosanitize !47
  %2226 = extractvalue { i64, i1 } %2225, 1, !nosanitize !47
  br i1 %2226, label %2212, label %2227, !prof !48, !nosanitize !47

2227:                                             ; preds = %2221
  %2228 = extractvalue { i64, i1 } %2225, 0, !nosanitize !47
  %2229 = getelementptr inbounds nuw i8, ptr %2192, i64 2
  %2230 = add i32 %2193, -2
  %2231 = add nuw nsw i64 %2204, 16
  %2232 = icmp samesign ult i32 %2195, 16
  br i1 %2232, label %2233, label %2260, !llvm.loop !114

2233:                                             ; preds = %2227
  %2234 = icmp eq i32 %2230, 0
  br i1 %2234, label %2390, label %2235

2235:                                             ; preds = %2233
  %2236 = load i8, ptr %2229, align 1, !tbaa !44
  %2237 = zext i8 %2236 to i64
  %2238 = shl nuw nsw i64 %2237, %2231
  %2239 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2228, i64 %2238), !nosanitize !47
  %2240 = extractvalue { i64, i1 } %2239, 1, !nosanitize !47
  br i1 %2240, label %2212, label %2241, !prof !48, !nosanitize !47

2241:                                             ; preds = %2235
  %2242 = extractvalue { i64, i1 } %2239, 0, !nosanitize !47
  %2243 = getelementptr inbounds nuw i8, ptr %2192, i64 3
  %2244 = add i32 %2193, -3
  %2245 = add nuw nsw i64 %2204, 24
  %2246 = icmp samesign ult i32 %2195, 8
  br i1 %2246, label %2247, label %2260, !llvm.loop !114

2247:                                             ; preds = %2241
  %2248 = icmp eq i32 %2244, 0
  br i1 %2248, label %2390, label %2249

2249:                                             ; preds = %2247
  %2250 = load i8, ptr %2243, align 1, !tbaa !44
  %2251 = zext i8 %2250 to i64
  %2252 = shl nuw nsw i64 %2251, %2245
  %2253 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2242, i64 %2252), !nosanitize !47
  %2254 = extractvalue { i64, i1 } %2253, 1, !nosanitize !47
  br i1 %2254, label %2212, label %2255, !prof !48, !nosanitize !47

2255:                                             ; preds = %2249
  %2256 = extractvalue { i64, i1 } %2253, 0, !nosanitize !47
  %2257 = getelementptr inbounds nuw i8, ptr %2192, i64 4
  %2258 = add i32 %2193, -4
  %2259 = or disjoint i64 %2204, 32
  br label %2260

2260:                                             ; preds = %2255, %2241, %2227, %2213
  %2261 = phi i64 [ %2214, %2213 ], [ %2228, %2227 ], [ %2242, %2241 ], [ %2256, %2255 ]
  %2262 = phi ptr [ %2215, %2213 ], [ %2229, %2227 ], [ %2243, %2241 ], [ %2257, %2255 ]
  %2263 = phi i32 [ %2216, %2213 ], [ %2230, %2227 ], [ %2244, %2241 ], [ %2258, %2255 ]
  %2264 = phi i64 [ %2217, %2213 ], [ %2231, %2227 ], [ %2245, %2241 ], [ %2259, %2255 ]
  %2265 = trunc nuw nsw i64 %2264 to i32
  br label %2266

2266:                                             ; preds = %2260, %2201
  %2267 = phi ptr [ %2192, %2201 ], [ %2262, %2260 ]
  %2268 = phi i32 [ %2193, %2201 ], [ %2263, %2260 ]
  %2269 = phi i64 [ %2194, %2201 ], [ %2261, %2260 ]
  %2270 = phi i32 [ %2195, %2201 ], [ %2265, %2260 ]
  %2271 = and i32 %2191, 4
  %2272 = icmp eq i32 %2271, 0
  br i1 %2272, label %2278, label %2273

2273:                                             ; preds = %2266
  %2274 = load i64, ptr %51, align 8, !tbaa !21
  %2275 = and i64 %2274, 4294967295
  %2276 = icmp eq i64 %2269, %2275
  br i1 %2276, label %2278, label %2277

2277:                                             ; preds = %2273
  store ptr @.str.18, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2283

2278:                                             ; preds = %2273, %2266, %2198, %2190
  %2279 = phi ptr [ %2192, %2198 ], [ %2192, %2190 ], [ %2267, %2266 ], [ %2267, %2273 ]
  %2280 = phi i32 [ %2193, %2198 ], [ %2193, %2190 ], [ %2268, %2266 ], [ %2268, %2273 ]
  %2281 = phi i64 [ %2194, %2198 ], [ %2194, %2190 ], [ 0, %2266 ], [ 0, %2273 ]
  %2282 = phi i32 [ %2195, %2198 ], [ %2195, %2190 ], [ 0, %2266 ], [ 0, %2273 ]
  store i32 16208, ptr %21, align 8, !tbaa !20
  br label %.loopexit164

2283:                                             ; preds = %2277, %2182, %2055, %2052, %.loopexit5123, %1956, %1862, %1633, %1629, %1625, %1480, %1471, %1454, %1445, %1441, %1411, %1297, %1158, %1084, %1032, %1029, %992, %907, %874, %780, %767, %262, %258, %212, %211, %196, %192, %174, %128
  %2284 = phi ptr [ %90, %128 ], [ %162, %174 ], [ %162, %192 ], [ %162, %196 ], [ %162, %211 ], [ %162, %212 ], [ %251, %258 ], [ %251, %262 ], [ %756, %767 ], [ %769, %780 ], [ %858, %874 ], [ %891, %907 ], [ %984, %992 ], [ %1019, %1029 ], [ %1002, %1032 ], [ %1066, %1084 ], [ %1099, %1158 ], [ %1438, %1441 ], [ %1438, %1445 ], [ %1438, %1454 ], [ %1474, %1480 ], [ %1474, %1471 ], [ %1606, %1625 ], [ %1606, %1629 ], [ %1606, %1633 ], [ %1839, %1862 ], [ %1935, %1956 ], [ %1935, %2052 ], [ %1935, %.loopexit5123 ], [ %90, %2055 ], [ %2129, %2182 ], [ %2267, %2277 ], [ %1386, %1411 ], [ %1289, %1297 ]
  %2285 = phi ptr [ %91, %128 ], [ %91, %174 ], [ %91, %192 ], [ %91, %196 ], [ %91, %211 ], [ %91, %212 ], [ %91, %258 ], [ %91, %262 ], [ %91, %767 ], [ %91, %780 ], [ %91, %874 ], [ %91, %907 ], [ %91, %992 ], [ %1031, %1029 ], [ %91, %1032 ], [ %91, %1084 ], [ %91, %1158 ], [ %91, %1441 ], [ %91, %1445 ], [ %91, %1454 ], [ %1472, %1480 ], [ %1472, %1471 ], [ %91, %1625 ], [ %91, %1629 ], [ %91, %1633 ], [ %91, %1862 ], [ %91, %1956 ], [ %.lcssa4053, %2052 ], [ %.lcssa4053, %.loopexit5123 ], [ %2059, %2055 ], [ %91, %2182 ], [ %91, %2277 ], [ %91, %1411 ], [ %91, %1297 ]
  %2286 = phi i32 [ %92, %128 ], [ %163, %174 ], [ %163, %192 ], [ %163, %196 ], [ %163, %211 ], [ %163, %212 ], [ %252, %258 ], [ %252, %262 ], [ %757, %767 ], [ %770, %780 ], [ %859, %874 ], [ %892, %907 ], [ %985, %992 ], [ %1015, %1029 ], [ %1003, %1032 ], [ %1067, %1084 ], [ %1100, %1158 ], [ %1437, %1441 ], [ %1437, %1445 ], [ %1437, %1454 ], [ %1475, %1480 ], [ %1475, %1471 ], [ %1607, %1625 ], [ %1607, %1629 ], [ %1607, %1633 ], [ %1840, %1862 ], [ %1936, %1956 ], [ %1936, %2052 ], [ %1936, %.loopexit5123 ], [ %92, %2055 ], [ %2130, %2182 ], [ %2268, %2277 ], [ %1387, %1411 ], [ %1290, %1297 ]
  %2287 = phi i32 [ %93, %128 ], [ %93, %174 ], [ %93, %192 ], [ %93, %196 ], [ %93, %211 ], [ %93, %212 ], [ %93, %258 ], [ %93, %262 ], [ %93, %767 ], [ %93, %780 ], [ %93, %874 ], [ %93, %907 ], [ %93, %992 ], [ %1021, %1029 ], [ %93, %1032 ], [ %93, %1084 ], [ %93, %1158 ], [ %93, %1441 ], [ %93, %1445 ], [ %93, %1454 ], [ %1473, %1480 ], [ %1473, %1471 ], [ %93, %1625 ], [ %93, %1629 ], [ %93, %1633 ], [ %93, %1862 ], [ %93, %1956 ], [ %1990, %2052 ], [ %1990, %.loopexit5123 ], [ %2058, %2055 ], [ %93, %2182 ], [ %93, %2277 ], [ %93, %1411 ], [ %93, %1297 ]
  %2288 = phi i64 [ %94, %128 ], [ 0, %174 ], [ %164, %192 ], [ %164, %196 ], [ %198, %211 ], [ 0, %212 ], [ %253, %258 ], [ %253, %262 ], [ %758, %767 ], [ %771, %780 ], [ %877, %874 ], [ %909, %907 ], [ %986, %992 ], [ %1004, %1029 ], [ %1004, %1032 ], [ %1079, %1084 ], [ %1101, %1158 ], [ %1436, %1441 ], [ %1436, %1445 ], [ %1436, %1454 ], [ %1476, %1480 ], [ %1476, %1471 ], [ %1615, %1625 ], [ %1615, %1629 ], [ %1615, %1633 ], [ %1848, %1862 ], [ %1937, %1956 ], [ %1937, %2052 ], [ %1937, %.loopexit5123 ], [ %94, %2055 ], [ %2131, %2182 ], [ %2269, %2277 ], [ %1388, %1411 ], [ %1294, %1297 ]
  %2289 = phi i32 [ %95, %128 ], [ 0, %174 ], [ %165, %192 ], [ %165, %196 ], [ %199, %211 ], [ 0, %212 ], [ %254, %258 ], [ %254, %262 ], [ %759, %767 ], [ %772, %780 ], [ %875, %874 ], [ %908, %907 ], [ %987, %992 ], [ %1005, %1029 ], [ %1005, %1032 ], [ %1080, %1084 ], [ %1102, %1158 ], [ %1435, %1441 ], [ %1435, %1445 ], [ %1435, %1454 ], [ %1477, %1480 ], [ %1477, %1471 ], [ %1617, %1625 ], [ %1617, %1629 ], [ %1617, %1633 ], [ %1850, %1862 ], [ %1938, %1956 ], [ %1938, %2052 ], [ %1938, %.loopexit5123 ], [ %95, %2055 ], [ %2132, %2182 ], [ %2270, %2277 ], [ %1392, %1411 ], [ %1295, %1297 ]
  %2290 = phi i32 [ %96, %128 ], [ %96, %174 ], [ %96, %192 ], [ %96, %196 ], [ %96, %211 ], [ %96, %212 ], [ %96, %258 ], [ %96, %262 ], [ %96, %767 ], [ %96, %780 ], [ %96, %874 ], [ %96, %907 ], [ %96, %992 ], [ %96, %1029 ], [ %96, %1032 ], [ %96, %1084 ], [ %96, %1158 ], [ %96, %1441 ], [ %96, %1445 ], [ %96, %1454 ], [ %96, %1480 ], [ %96, %1471 ], [ %96, %1625 ], [ %96, %1629 ], [ %96, %1633 ], [ %96, %1862 ], [ %96, %1956 ], [ %96, %2052 ], [ %96, %.loopexit5123 ], [ %96, %2055 ], [ %93, %2182 ], [ %2196, %2277 ], [ %96, %1411 ], [ %96, %1297 ]
  %2291 = phi i32 [ %97, %128 ], [ %97, %174 ], [ %97, %192 ], [ %97, %196 ], [ %97, %211 ], [ %97, %212 ], [ %97, %258 ], [ %97, %262 ], [ %97, %767 ], [ %97, %780 ], [ %97, %874 ], [ %97, %907 ], [ %97, %992 ], [ %97, %1029 ], [ %97, %1032 ], [ %97, %1084 ], [ %1156, %1158 ], [ %1165, %1441 ], [ %1443, %1445 ], [ %1452, %1454 ], [ %1467, %1480 ], [ %1467, %1471 ], [ %1467, %1625 ], [ %1467, %1629 ], [ %1467, %1633 ], [ %1710, %1862 ], [ %1939, %1956 ], [ %1939, %2052 ], [ %1939, %.loopexit5123 ], [ %97, %2055 ], [ %97, %2182 ], [ %97, %2277 ], [ %1165, %1411 ], [ %1165, %1297 ]
  %2292 = load i32, ptr %21, align 8, !tbaa !20
  br label %88

._crit_edge:                                      ; preds = %1196, %1199
  %.lcssa3861 = phi i64 [ %1213, %1199 ], [ %1186, %1196 ]
  %2293 = zext i32 %1185 to i64
  %2294 = shl i32 %1185, 3
  %2295 = add i32 %1187, %2294
  %2296 = getelementptr i8, ptr %1184, i64 %2293
  br label %.loopexit164

2297:                                             ; preds = %142, %125
  %.lcssa2262 = phi i32 [ 1, %142 ], [ 0, %125 ]
  %2298 = phi i64 [ %137, %142 ], [ %94, %125 ]
  %2299 = zext nneg i32 %.lcssa2262 to i64
  %2300 = shl nuw nsw i32 %.lcssa2262, 3
  %2301 = add nuw nsw i32 %95, %2300
  %2302 = getelementptr i8, ptr %90, i64 %2299
  br label %.loopexit164

2303:                                             ; preds = %736, %720
  %.lcssa1708 = phi i32 [ 1, %736 ], [ 0, %720 ]
  %2304 = phi i64 [ %731, %736 ], [ %713, %720 ]
  %2305 = zext nneg i32 %.lcssa1708 to i64
  %2306 = shl nuw nsw i32 %.lcssa1708, 3
  %2307 = add nuw nsw i32 %714, %2306
  %2308 = getelementptr i8, ptr %711, i64 %2305
  br label %.loopexit164

2309:                                             ; preds = %454, %433
  %.lcssa1702 = phi i32 [ 1, %454 ], [ 0, %433 ]
  %2310 = phi i64 [ %449, %454 ], [ %436, %433 ]
  %2311 = zext nneg i32 %.lcssa1702 to i64
  %2312 = shl nuw nsw i32 %.lcssa1702, 3
  %2313 = add nuw nsw i32 %437, %2312
  %2314 = getelementptr i8, ptr %434, i64 %2311
  br label %.loopexit164

2315:                                             ; preds = %386, %366
  %.lcssa1696 = phi i32 [ 1, %386 ], [ 0, %366 ]
  %2316 = phi i64 [ %381, %386 ], [ %368, %366 ]
  %2317 = zext nneg i32 %.lcssa1696 to i64
  %2318 = shl nuw nsw i32 %.lcssa1696, 3
  %2319 = add nuw nsw i32 %2318, %367
  %2320 = getelementptr i8, ptr %370, i64 %2317
  br label %.loopexit164

2321:                                             ; preds = %331, %317, %303, %283
  %.lcssa1690 = phi i32 [ 3, %331 ], [ 2, %317 ], [ 1, %303 ], [ 0, %283 ]
  %2322 = phi i64 [ %326, %331 ], [ %312, %317 ], [ %298, %303 ], [ %285, %283 ]
  %2323 = zext nneg i32 %.lcssa1690 to i64
  %2324 = shl nuw nsw i32 %.lcssa1690, 3
  %2325 = add nuw nsw i32 %2324, %284
  %2326 = getelementptr i8, ptr %287, i64 %2323
  br label %.loopexit164

2327:                                             ; preds = %231, %117
  %.lcssa2245 = phi i32 [ 1, %231 ], [ 0, %117 ]
  %2328 = phi i64 [ %226, %231 ], [ %94, %117 ]
  %2329 = zext nneg i32 %.lcssa2245 to i64
  %2330 = shl nuw nsw i32 %.lcssa2245, 3
  %2331 = add nuw nsw i32 %95, %2330
  %2332 = getelementptr i8, ptr %90, i64 %2329
  br label %.loopexit164

2333:                                             ; preds = %823, %809, %795, %112
  %.lcssa2238 = phi i32 [ 3, %823 ], [ 2, %809 ], [ 1, %795 ], [ 0, %112 ]
  %2334 = phi i64 [ %818, %823 ], [ %804, %809 ], [ %790, %795 ], [ %94, %112 ]
  %2335 = zext nneg i32 %.lcssa2238 to i64
  %2336 = shl nuw nsw i32 %.lcssa2238, 3
  %2337 = add nuw nsw i32 %95, %2336
  %2338 = getelementptr i8, ptr %90, i64 %2335
  br label %.loopexit164

2339:                                             ; preds = %965, %951, %937, %920
  %.lcssa2233 = phi i32 [ 3, %965 ], [ 2, %951 ], [ 1, %937 ], [ 0, %920 ]
  %.lcssa1674 = phi i32 [ 0, %965 ], [ %921, %951 ], [ %921, %937 ], [ %921, %920 ]
  %2340 = phi i64 [ %960, %965 ], [ %946, %951 ], [ %932, %937 ], [ %917, %920 ]
  %2341 = zext nneg i32 %.lcssa2233 to i64
  %2342 = shl nuw nsw i32 %.lcssa2233, 3
  %2343 = add i32 %.lcssa1674, %2342
  %2344 = getelementptr i8, ptr %90, i64 %2341
  br label %.loopexit164

._crit_edge5085:                                  ; preds = %1876, %1879
  %.lcssa4039 = phi i64 [ %1892, %1879 ], [ %1870, %1876 ]
  %2345 = zext i32 %1869 to i64
  %2346 = shl i32 %1869, 3
  %2347 = add i32 %1871, %2346
  %2348 = getelementptr i8, ptr %1868, i64 %2345
  br label %.loopexit164

._crit_edge5065:                                  ; preds = %1784, %1787
  %.lcssa4030 = phi i64 [ %1802, %1787 ], [ %1759, %1784 ]
  %2349 = zext i32 %1758 to i64
  %2350 = shl i32 %1758, 3
  %2351 = add i32 %1760, %2350
  %2352 = getelementptr i8, ptr %1757, i64 %2349
  br label %.loopexit164

._crit_edge5045:                                  ; preds = %1723, %1726
  %.lcssa4021 = phi i64 [ %1740, %1726 ], [ %1708, %1723 ]
  %2353 = zext i32 %1707 to i64
  %2354 = shl i32 %1707, 3
  %2355 = add i32 %1709, %2354
  %2356 = getelementptr i8, ptr %1706, i64 %2353
  br label %.loopexit164

._crit_edge5025:                                  ; preds = %1646, %1649
  %.lcssa4007 = phi i64 [ %1662, %1649 ], [ %1640, %1646 ]
  %2357 = zext i32 %1639 to i64
  %2358 = shl i32 %1639, 3
  %2359 = add i32 %1641, %2358
  %2360 = getelementptr i8, ptr %1638, i64 %2357
  br label %.loopexit164

._crit_edge5005:                                  ; preds = %1556, %1559
  %.lcssa3998 = phi i64 [ %1573, %1559 ], [ %1530, %1556 ]
  %2361 = zext i32 %1529 to i64
  %2362 = shl i32 %1529, 3
  %2363 = add i32 %1531, %2362
  %2364 = getelementptr i8, ptr %1528, i64 %2361
  br label %.loopexit164

._crit_edge4985:                                  ; preds = %1494, %1497
  %.lcssa3989 = phi i64 [ %1511, %1497 ], [ %1465, %1494 ]
  %2365 = zext i32 %1464 to i64
  %2366 = shl i32 %1464, 3
  %2367 = add i32 %1466, %2366
  %2368 = getelementptr i8, ptr %1463, i64 %2365
  br label %.loopexit164

2369:                                             ; preds = %1348
  %2370 = zext i32 %1230 to i64
  %2371 = shl i32 %1230, 3
  %2372 = add i32 %1232, %2371
  %2373 = getelementptr i8, ptr %1229, i64 %2370
  br label %.loopexit164

2374:                                             ; preds = %1267
  %2375 = zext i32 %1230 to i64
  %2376 = shl i32 %1230, 3
  %2377 = add i32 %1232, %2376
  %2378 = getelementptr i8, ptr %1229, i64 %2375
  br label %.loopexit164

2379:                                             ; preds = %1311
  %2380 = zext i32 %1230 to i64
  %2381 = shl i32 %1230, 3
  %2382 = add i32 %1232, %2381
  %2383 = getelementptr i8, ptr %1229, i64 %2380
  br label %.loopexit164

2384:                                             ; preds = %1046, %107
  %.lcssa2184 = phi i32 [ 1, %1046 ], [ 0, %107 ]
  %2385 = phi i64 [ %1041, %1046 ], [ %94, %107 ]
  %2386 = zext nneg i32 %.lcssa2184 to i64
  %2387 = shl nuw nsw i32 %.lcssa2184, 3
  %2388 = add nuw nsw i32 %95, %2387
  %2389 = getelementptr i8, ptr %90, i64 %2386
  br label %.loopexit164

2390:                                             ; preds = %2247, %2233, %2219, %2203
  %.lcssa1536 = phi i32 [ 3, %2247 ], [ 2, %2233 ], [ 1, %2219 ], [ 0, %2203 ]
  %2391 = phi i64 [ %2242, %2247 ], [ %2228, %2233 ], [ %2214, %2219 ], [ %2194, %2203 ]
  %2392 = zext nneg i32 %.lcssa1536 to i64
  %2393 = shl nuw nsw i32 %.lcssa1536, 3
  %2394 = add nuw nsw i32 %2195, %2393
  %2395 = getelementptr i8, ptr %2192, i64 %2392
  br label %.loopexit164

2396:                                             ; preds = %2109, %2095, %2081, %2065
  %.lcssa2176 = phi i32 [ 3, %2109 ], [ 2, %2095 ], [ 1, %2081 ], [ 0, %2065 ]
  %2397 = phi i64 [ %2104, %2109 ], [ %2090, %2095 ], [ %2076, %2081 ], [ %94, %2065 ]
  %2398 = zext nneg i32 %.lcssa2176 to i64
  %2399 = shl nuw nsw i32 %.lcssa2176, 3
  %2400 = add nuw nsw i32 %95, %2399
  %2401 = getelementptr i8, ptr %90, i64 %2398
  br label %.loopexit164

.loopexit164.loopexit5127:                        ; preds = %88
  br label %.loopexit164

.loopexit164:                                     ; preds = %2053, %1934, %1455, %1008, %993, %866, %852, %698, %654, %634, %590, %574, %1114, %88, %.loopexit164.loopexit5127, %2396, %2390, %2384, %2379, %2374, %2369, %._crit_edge4985, %._crit_edge5005, %._crit_edge5025, %._crit_edge5045, %._crit_edge5065, %._crit_edge5085, %2339, %2333, %2327, %2321, %2315, %2309, %2303, %2297, %._crit_edge, %2278, %900
  %2402 = phi i32 [ %93, %900 ], [ %93, %2278 ], [ %93, %._crit_edge ], [ %93, %2297 ], [ %93, %2303 ], [ %93, %2309 ], [ %93, %2315 ], [ %93, %2321 ], [ %93, %2327 ], [ %93, %2333 ], [ %93, %2339 ], [ %93, %._crit_edge5085 ], [ %93, %._crit_edge5065 ], [ %93, %._crit_edge5045 ], [ %93, %._crit_edge5025 ], [ %93, %._crit_edge5005 ], [ %93, %._crit_edge4985 ], [ %93, %2369 ], [ %93, %2374 ], [ %93, %2379 ], [ %93, %2384 ], [ %93, %2390 ], [ %93, %2396 ], [ %93, %88 ], [ %93, %1114 ], [ %93, %866 ], [ 0, %2053 ], [ 0, %1934 ], [ %93, %1455 ], [ %93, %1008 ], [ %93, %993 ], [ %93, %852 ], [ %93, %698 ], [ %93, %654 ], [ %93, %634 ], [ %93, %590 ], [ %93, %574 ], [ %93, %.loopexit164.loopexit5127 ]
  %2403 = phi ptr [ %891, %900 ], [ %2279, %2278 ], [ %2296, %._crit_edge ], [ %2302, %2297 ], [ %2308, %2303 ], [ %2314, %2309 ], [ %2320, %2315 ], [ %2326, %2321 ], [ %2332, %2327 ], [ %2338, %2333 ], [ %2344, %2339 ], [ %2348, %._crit_edge5085 ], [ %2352, %._crit_edge5065 ], [ %2356, %._crit_edge5045 ], [ %2360, %._crit_edge5025 ], [ %2364, %._crit_edge5005 ], [ %2368, %._crit_edge4985 ], [ %2373, %2369 ], [ %2378, %2374 ], [ %2383, %2379 ], [ %2389, %2384 ], [ %2395, %2390 ], [ %2401, %2396 ], [ %90, %88 ], [ %1112, %1114 ], [ %858, %866 ], [ %90, %2053 ], [ %1935, %1934 ], [ %1438, %1455 ], [ %1002, %1008 ], [ %984, %993 ], [ %853, %852 ], [ %701, %698 ], [ %647, %654 ], [ %637, %634 ], [ %583, %590 ], [ %576, %574 ], [ %90, %.loopexit164.loopexit5127 ]
  %2404 = phi i32 [ %892, %900 ], [ %2280, %2278 ], [ 0, %._crit_edge ], [ 0, %2297 ], [ 0, %2303 ], [ 0, %2309 ], [ 0, %2315 ], [ 0, %2321 ], [ 0, %2327 ], [ 0, %2333 ], [ 0, %2339 ], [ 0, %._crit_edge5085 ], [ 0, %._crit_edge5065 ], [ 0, %._crit_edge5045 ], [ 0, %._crit_edge5025 ], [ 0, %._crit_edge5005 ], [ 0, %._crit_edge4985 ], [ 0, %2369 ], [ 0, %2374 ], [ 0, %2379 ], [ 0, %2384 ], [ 0, %2390 ], [ 0, %2396 ], [ %92, %88 ], [ 0, %1114 ], [ 0, %866 ], [ %92, %2053 ], [ %1936, %1934 ], [ %1437, %1455 ], [ %1003, %1008 ], [ %985, %993 ], [ %854, %852 ], [ %699, %698 ], [ 0, %654 ], [ %635, %634 ], [ 0, %590 ], [ %577, %574 ], [ %92, %.loopexit164.loopexit5127 ]
  %2405 = phi i64 [ %902, %900 ], [ %2281, %2278 ], [ %.lcssa3861, %._crit_edge ], [ %2298, %2297 ], [ %2304, %2303 ], [ %2310, %2309 ], [ %2316, %2315 ], [ %2322, %2321 ], [ %2328, %2327 ], [ %2334, %2333 ], [ %2340, %2339 ], [ %.lcssa4039, %._crit_edge5085 ], [ %.lcssa4030, %._crit_edge5065 ], [ %.lcssa4021, %._crit_edge5045 ], [ %.lcssa4007, %._crit_edge5025 ], [ %.lcssa3998, %._crit_edge5005 ], [ %.lcssa3989, %._crit_edge4985 ], [ %1350, %2369 ], [ %1269, %2374 ], [ %1313, %2379 ], [ %2385, %2384 ], [ %2391, %2390 ], [ %2397, %2396 ], [ %94, %88 ], [ %1110, %1114 ], [ %860, %866 ], [ %94, %2053 ], [ %1937, %1934 ], [ %1436, %1455 ], [ %1004, %1008 ], [ 0, %993 ], [ %855, %852 ], [ %649, %698 ], [ %649, %654 ], [ %585, %634 ], [ %585, %590 ], [ %504, %574 ], [ %94, %.loopexit164.loopexit5127 ]
  %2406 = phi i32 [ %901, %900 ], [ %2282, %2278 ], [ %2295, %._crit_edge ], [ %2301, %2297 ], [ %2307, %2303 ], [ %2313, %2309 ], [ %2319, %2315 ], [ %2325, %2321 ], [ %2331, %2327 ], [ %2337, %2333 ], [ %2343, %2339 ], [ %2347, %._crit_edge5085 ], [ %2351, %._crit_edge5065 ], [ %2355, %._crit_edge5045 ], [ %2359, %._crit_edge5025 ], [ %2363, %._crit_edge5005 ], [ %2367, %._crit_edge4985 ], [ %2372, %2369 ], [ %2377, %2374 ], [ %2382, %2379 ], [ %2388, %2384 ], [ %2394, %2390 ], [ %2400, %2396 ], [ %95, %88 ], [ %1109, %1114 ], [ %861, %866 ], [ %95, %2053 ], [ %1938, %1934 ], [ %1435, %1455 ], [ %1005, %1008 ], [ 0, %993 ], [ %856, %852 ], [ %650, %698 ], [ %650, %654 ], [ %586, %634 ], [ %586, %590 ], [ %505, %574 ], [ %95, %.loopexit164.loopexit5127 ]
  %2407 = phi i32 [ %96, %900 ], [ %2196, %2278 ], [ %96, %._crit_edge ], [ %96, %2297 ], [ %96, %2303 ], [ %96, %2309 ], [ %96, %2315 ], [ %96, %2321 ], [ %96, %2327 ], [ %96, %2333 ], [ %96, %2339 ], [ %96, %._crit_edge5085 ], [ %96, %._crit_edge5065 ], [ %96, %._crit_edge5045 ], [ %96, %._crit_edge5025 ], [ %96, %._crit_edge5005 ], [ %96, %._crit_edge4985 ], [ %96, %2369 ], [ %96, %2374 ], [ %96, %2379 ], [ %96, %2384 ], [ %2196, %2390 ], [ %96, %2396 ], [ %96, %88 ], [ %96, %1114 ], [ %96, %574 ], [ %96, %590 ], [ %96, %634 ], [ %96, %654 ], [ %96, %698 ], [ %96, %852 ], [ %96, %866 ], [ %96, %993 ], [ %96, %1008 ], [ %96, %1455 ], [ %96, %1934 ], [ %96, %2053 ], [ %96, %.loopexit164.loopexit5127 ]
  %2408 = phi i32 [ %97, %900 ], [ 1, %2278 ], [ %1165, %._crit_edge ], [ %97, %2297 ], [ %97, %2303 ], [ %97, %2309 ], [ %97, %2315 ], [ %97, %2321 ], [ %97, %2327 ], [ %97, %2333 ], [ %97, %2339 ], [ %1872, %._crit_edge5085 ], [ %1710, %._crit_edge5065 ], [ %1710, %._crit_edge5045 ], [ %1642, %._crit_edge5025 ], [ %1467, %._crit_edge5005 ], [ %1467, %._crit_edge4985 ], [ %1165, %2369 ], [ %1165, %2374 ], [ %1165, %2379 ], [ %97, %2384 ], [ %97, %2390 ], [ %97, %2396 ], [ 1, %88 ], [ %97, %1114 ], [ %97, %866 ], [ %97, %2053 ], [ %1939, %1934 ], [ 0, %1455 ], [ %97, %1008 ], [ %97, %993 ], [ %97, %852 ], [ %97, %698 ], [ %97, %654 ], [ %97, %634 ], [ %97, %590 ], [ %97, %574 ], [ -3, %.loopexit164.loopexit5127 ]
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %2402, ptr %41, align 8, !tbaa !52
  store ptr %2403, ptr %0, align 8, !tbaa !50
  store i32 %2404, ptr %43, align 8, !tbaa !51
  store i64 %2405, ptr %45, align 8, !tbaa !31
  store i32 %2406, ptr %47, align 8, !tbaa !32
  %2409 = load i32, ptr %79, align 4, !tbaa !38
  %2410 = icmp eq i32 %2409, 0
  br i1 %2410, label %2411, label %2420

2411:                                             ; preds = %.loopexit164
  %2412 = icmp eq i32 %2407, %2402
  br i1 %2412, label %2508, label %2413

2413:                                             ; preds = %2411
  %2414 = load i32, ptr %21, align 8, !tbaa !20
  %2415 = icmp ult i32 %2414, 16209
  br i1 %2415, label %2416, label %2508

2416:                                             ; preds = %2413
  %2417 = icmp samesign ult i32 %2414, 16206
  %2418 = icmp ne i32 %1, 4
  %2419 = or i1 %2418, %2417
  br i1 %2419, label %2420, label %2508

2420:                                             ; preds = %2416, %.loopexit164
  %2421 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2407, i32 %2402), !nosanitize !47
  %2422 = extractvalue { i32, i1 } %2421, 1, !nosanitize !47
  br i1 %2422, label %2423, label %2424, !prof !48, !nosanitize !47

2423:                                             ; preds = %2420
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2424:                                             ; preds = %2420
  %2425 = extractvalue { i32, i1 } %2421, 0, !nosanitize !47
  %2426 = load ptr, ptr %14, align 8, !tbaa !15
  %2427 = getelementptr inbounds nuw i8, ptr %2426, i64 72
  %2428 = load ptr, ptr %2427, align 8, !tbaa !41
  %2429 = icmp eq ptr %2428, null
  br i1 %2429, label %2430, label %2439

2430:                                             ; preds = %2424
  %2431 = load ptr, ptr %6, align 8, !tbaa !5
  %2432 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %2433 = load ptr, ptr %2432, align 8, !tbaa !43
  %2434 = getelementptr inbounds nuw i8, ptr %2426, i64 56
  %2435 = load i32, ptr %2434, align 8, !tbaa !42
  %2436 = shl nuw i32 1, %2435
  %2437 = call ptr %2431(ptr noundef %2433, i32 noundef %2436, i32 noundef 1) #12
  store ptr %2437, ptr %2427, align 8, !tbaa !41
  %2438 = icmp eq ptr %2437, null
  br i1 %2438, label %2507, label %2439

2439:                                             ; preds = %2430, %2424
  %2440 = phi ptr [ %2437, %2430 ], [ %2428, %2424 ]
  %2441 = getelementptr inbounds nuw i8, ptr %2426, i64 60
  %2442 = load i32, ptr %2441, align 4, !tbaa !38
  %2443 = icmp eq i32 %2442, 0
  br i1 %2443, label %2444, label %2450

2444:                                             ; preds = %2439
  %2445 = getelementptr inbounds nuw i8, ptr %2426, i64 56
  %2446 = load i32, ptr %2445, align 8, !tbaa !42
  %2447 = shl nuw i32 1, %2446
  store i32 %2447, ptr %2441, align 4, !tbaa !38
  %2448 = getelementptr inbounds nuw i8, ptr %2426, i64 68
  store i32 0, ptr %2448, align 4, !tbaa !40
  %2449 = getelementptr inbounds nuw i8, ptr %2426, i64 64
  store i32 0, ptr %2449, align 8, !tbaa !39
  br label %2450

2450:                                             ; preds = %2444, %2439
  %2451 = phi i32 [ %2447, %2444 ], [ %2442, %2439 ]
  %2452 = icmp ult i32 %2425, %2451
  br i1 %2452, label %2460, label %2453

2453:                                             ; preds = %2450
  %2454 = zext i32 %2451 to i64
  %2455 = sub nsw i64 0, %2454
  %2456 = getelementptr inbounds i8, ptr %91, i64 %2455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2440, ptr noundef nonnull readonly align 1 dereferenceable(1) %2456, i64 %2454, i1 false)
  %2457 = getelementptr inbounds nuw i8, ptr %2426, i64 68
  store i32 0, ptr %2457, align 4, !tbaa !40
  %2458 = load i32, ptr %2441, align 4, !tbaa !38
  %2459 = getelementptr inbounds nuw i8, ptr %2426, i64 64
  store i32 %2458, ptr %2459, align 8, !tbaa !39
  br label %2508

2460:                                             ; preds = %2450
  %2461 = getelementptr inbounds nuw i8, ptr %2426, i64 68
  %2462 = load i32, ptr %2461, align 4, !tbaa !40
  %2463 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2451, i32 %2462), !nosanitize !47
  %2464 = extractvalue { i32, i1 } %2463, 1, !nosanitize !47
  br i1 %2464, label %2465, label %2466, !prof !48, !nosanitize !47

2465:                                             ; preds = %2460
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2466:                                             ; preds = %2460
  %2467 = extractvalue { i32, i1 } %2463, 0, !nosanitize !47
  %2468 = call i32 @llvm.umin.i32(i32 %2467, i32 %2425)
  %2469 = zext i32 %2462 to i64
  %2470 = getelementptr inbounds nuw i8, ptr %2440, i64 %2469
  %2471 = zext i32 %2425 to i64
  %2472 = sub nsw i64 0, %2471
  %2473 = getelementptr inbounds i8, ptr %91, i64 %2472
  %2474 = zext i32 %2468 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2470, ptr readonly align 1 %2473, i64 %2474, i1 false)
  %2475 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2425, i32 %2468), !nosanitize !47
  %2476 = extractvalue { i32, i1 } %2475, 0, !nosanitize !47
  %2477 = extractvalue { i32, i1 } %2475, 1, !nosanitize !47
  br i1 %2477, label %2478, label %2479, !prof !48, !nosanitize !47

2478:                                             ; preds = %2466
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2479:                                             ; preds = %2466
  %2480 = icmp eq i32 %2476, 0
  br i1 %2480, label %2488, label %2481

2481:                                             ; preds = %2479
  %2482 = load ptr, ptr %2427, align 8, !tbaa !41
  %2483 = zext i32 %2476 to i64
  %2484 = sub nsw i64 0, %2483
  %2485 = getelementptr inbounds i8, ptr %91, i64 %2484
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2482, ptr nonnull readonly align 1 %2485, i64 %2483, i1 false)
  store i32 %2476, ptr %2461, align 4, !tbaa !40
  %2486 = load i32, ptr %2441, align 4, !tbaa !38
  %2487 = getelementptr inbounds nuw i8, ptr %2426, i64 64
  store i32 %2486, ptr %2487, align 8, !tbaa !39
  br label %2508

2488:                                             ; preds = %2479
  %2489 = load i32, ptr %2461, align 4, !tbaa !40
  %2490 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2489, i32 %2468), !nosanitize !47
  %2491 = extractvalue { i32, i1 } %2490, 1, !nosanitize !47
  br i1 %2491, label %2492, label %2493, !prof !48, !nosanitize !47

2492:                                             ; preds = %2488
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2493:                                             ; preds = %2488
  %2494 = extractvalue { i32, i1 } %2490, 0, !nosanitize !47
  %2495 = load i32, ptr %2441, align 4, !tbaa !38
  %2496 = icmp eq i32 %2494, %2495
  %2497 = select i1 %2496, i32 0, i32 %2494
  store i32 %2497, ptr %2461, align 4
  %2498 = getelementptr inbounds nuw i8, ptr %2426, i64 64
  %2499 = load i32, ptr %2498, align 8, !tbaa !39
  %2500 = icmp ult i32 %2499, %2495
  br i1 %2500, label %2501, label %2508

2501:                                             ; preds = %2493
  %2502 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2499, i32 %2468), !nosanitize !47
  %2503 = extractvalue { i32, i1 } %2502, 1, !nosanitize !47
  br i1 %2503, label %2504, label %2505, !prof !48, !nosanitize !47

2504:                                             ; preds = %2501
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2505:                                             ; preds = %2501
  %2506 = extractvalue { i32, i1 } %2502, 0, !nosanitize !47
  store i32 %2506, ptr %2498, align 8, !tbaa !39
  br label %2508

2507:                                             ; preds = %2430
  store i32 16210, ptr %21, align 8, !tbaa !20
  br label %.loopexit166

2508:                                             ; preds = %2505, %2493, %2481, %2453, %2416, %2413, %2411
  %2509 = load i32, ptr %43, align 8, !tbaa !51
  %2510 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %44, i32 %2509), !nosanitize !47
  %2511 = extractvalue { i32, i1 } %2510, 0, !nosanitize !47
  %2512 = extractvalue { i32, i1 } %2510, 1, !nosanitize !47
  br i1 %2512, label %2513, label %2514, !prof !48, !nosanitize !47

2513:                                             ; preds = %2508
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2514:                                             ; preds = %2508
  %2515 = load i32, ptr %41, align 8, !tbaa !52
  %2516 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2407, i32 %2515), !nosanitize !47
  %2517 = extractvalue { i32, i1 } %2516, 0, !nosanitize !47
  %2518 = extractvalue { i32, i1 } %2516, 1, !nosanitize !47
  br i1 %2518, label %2519, label %2520, !prof !48, !nosanitize !47

2519:                                             ; preds = %2514
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2520:                                             ; preds = %2514
  %2521 = zext i32 %2511 to i64
  %2522 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2523 = load i64, ptr %2522, align 8, !tbaa !22
  %2524 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2523, i64 %2521), !nosanitize !47
  %2525 = extractvalue { i64, i1 } %2524, 1, !nosanitize !47
  br i1 %2525, label %2526, label %2527, !prof !48, !nosanitize !47

2526:                                             ; preds = %2520
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2527:                                             ; preds = %2520
  %2528 = extractvalue { i64, i1 } %2524, 0, !nosanitize !47
  store i64 %2528, ptr %2522, align 8, !tbaa !22
  %2529 = zext i32 %2517 to i64
  %2530 = load i64, ptr %50, align 8, !tbaa !113
  %2531 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2530, i64 %2529), !nosanitize !47
  %2532 = extractvalue { i64, i1 } %2531, 1, !nosanitize !47
  br i1 %2532, label %2533, label %2534, !prof !48, !nosanitize !47

2533:                                             ; preds = %2527
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2534:                                             ; preds = %2527
  %2535 = extractvalue { i64, i1 } %2531, 0, !nosanitize !47
  store i64 %2535, ptr %50, align 8, !tbaa !113
  %2536 = load i64, ptr %51, align 8, !tbaa !21
  %2537 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2536, i64 %2529), !nosanitize !47
  %2538 = extractvalue { i64, i1 } %2537, 1, !nosanitize !47
  br i1 %2538, label %2539, label %2540, !prof !48, !nosanitize !47

2539:                                             ; preds = %2574, %2567, %2560, %2534
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2540:                                             ; preds = %2534
  %2541 = extractvalue { i64, i1 } %2537, 0, !nosanitize !47
  store i64 %2541, ptr %51, align 8, !tbaa !21
  %2542 = load i32, ptr %49, align 8, !tbaa !24
  %2543 = and i32 %2542, 4
  %2544 = icmp ne i32 %2543, 0
  %2545 = icmp ne i32 %2517, 0
  %2546 = select i1 %2544, i1 %2545, i1 false
  br i1 %2546, label %2547, label %2560

2547:                                             ; preds = %2540
  %2548 = load i32, ptr %52, align 8, !tbaa !28
  %2549 = icmp eq i32 %2548, 0
  %2550 = load i64, ptr %53, align 8, !tbaa !56
  %2551 = load ptr, ptr %26, align 8, !tbaa !49
  %2552 = sub nsw i64 0, %2529
  %2553 = getelementptr inbounds i8, ptr %2551, i64 %2552
  br i1 %2549, label %2556, label %2554

2554:                                             ; preds = %2547
  %2555 = call i64 @crc32(i64 noundef %2550, ptr noundef nonnull %2553, i32 noundef %2517) #12
  br label %2558

2556:                                             ; preds = %2547
  %2557 = call i64 @adler32(i64 noundef %2550, ptr noundef nonnull %2553, i32 noundef %2517) #12
  br label %2558

2558:                                             ; preds = %2556, %2554
  %2559 = phi i64 [ %2555, %2554 ], [ %2557, %2556 ]
  store i64 %2559, ptr %53, align 8, !tbaa !56
  store i64 %2559, ptr %54, align 8, !tbaa !25
  br label %2560

2560:                                             ; preds = %2558, %2540
  %2561 = load i32, ptr %47, align 8, !tbaa !32
  %2562 = load i32, ptr %83, align 4, !tbaa !26
  %2563 = icmp eq i32 %2562, 0
  %2564 = select i1 %2563, i32 0, i32 64
  %2565 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2561, i32 %2564), !nosanitize !47
  %2566 = extractvalue { i32, i1 } %2565, 1, !nosanitize !47
  br i1 %2566, label %2539, label %2567, !prof !48, !nosanitize !47

2567:                                             ; preds = %2560
  %2568 = extractvalue { i32, i1 } %2565, 0, !nosanitize !47
  %2569 = load i32, ptr %21, align 8, !tbaa !20
  %2570 = icmp eq i32 %2569, 16191
  %2571 = select i1 %2570, i32 128, i32 0
  %2572 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2568, i32 %2571), !nosanitize !47
  %2573 = extractvalue { i32, i1 } %2572, 1, !nosanitize !47
  br i1 %2573, label %2539, label %2574, !prof !48, !nosanitize !47

2574:                                             ; preds = %2567
  %2575 = extractvalue { i32, i1 } %2572, 0, !nosanitize !47
  %2576 = icmp eq i32 %2569, 16199
  %2577 = icmp eq i32 %2569, 16194
  %2578 = or i1 %2576, %2577
  %2579 = select i1 %2578, i32 256, i32 0
  %2580 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2575, i32 %2579), !nosanitize !47
  %2581 = extractvalue { i32, i1 } %2580, 1, !nosanitize !47
  br i1 %2581, label %2539, label %2582, !prof !48, !nosanitize !47

2582:                                             ; preds = %2574
  %2583 = extractvalue { i32, i1 } %2580, 0, !nosanitize !47
  %2584 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %2583, ptr %2584, align 8, !tbaa !23
  %2585 = icmp eq i32 %2511, 0
  %2586 = icmp eq i32 %2517, 0
  %2587 = select i1 %2585, i1 %2586, i1 false
  %2588 = icmp eq i32 %1, 4
  %2589 = or i1 %2588, %2587
  %2590 = icmp eq i32 %2408, 0
  %2591 = select i1 %2589, i1 %2590, i1 false
  %2592 = select i1 %2591, i32 -5, i32 %2408
  br label %.loopexit166

.loopexit166.loopexit:                            ; preds = %88
  br label %.loopexit166

.loopexit166:                                     ; preds = %88, %.loopexit166.loopexit, %2582, %2507, %849, %32, %25, %20, %17, %13, %9, %5, %2
  %2593 = phi i32 [ -4, %2507 ], [ %2592, %2582 ], [ 2, %849 ], [ -2, %32 ], [ -2, %25 ], [ -2, %20 ], [ -2, %9 ], [ -2, %5 ], [ -2, %2 ], [ -2, %17 ], [ -2, %13 ], [ -2, %.loopexit166.loopexit ], [ -4, %88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %2593
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #3

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

declare void @inflate_fixed(ptr noundef) local_unnamed_addr #4

declare i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @inflate_fast(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @inflateEnd(ptr noundef captures(address) %0) local_unnamed_addr #1 {
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
  %38 = phi i32 [ 0, %32 ], [ -2, %18 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %38
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflateGetDictionary(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #6 {
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
  store i32 %55, ptr %2, align 4, !tbaa !46
  br label %56

56:                                               ; preds = %54, %52, %20, %17, %13, %9, %5, %3
  %57 = phi i32 [ -2, %20 ], [ 0, %54 ], [ 0, %52 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -4, 1) i32 @inflateSetDictionary(ptr noundef readonly captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
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

32:                                               ; preds = %31, %30
  %33 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  %34 = tail call i64 @adler32(i64 noundef %33, ptr noundef %1, i32 noundef %2) #12
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
  %54 = tail call ptr %48(ptr noundef %50, i32 noundef %53, i32 noundef 1) #12
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
  %125 = phi i32 [ -4, %121 ], [ 0, %122 ], [ -2, %20 ], [ -2, %30 ], [ -3, %32 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %125
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
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

32:                                               ; preds = %29, %24, %19, %16, %12, %8, %4, %2
  %33 = phi i32 [ 0, %29 ], [ -2, %19 ], [ -2, %24 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %33
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i32 -5, 1) i32 @inflateSync(ptr noundef captures(address) %0) local_unnamed_addr #6 {
  %2 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %206, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %206, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %206, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %206, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !16
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %206

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !20
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %206

24:                                               ; preds = %19
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %26 = load i32, ptr %25, align 8, !tbaa !51
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %14, i64 88
  %30 = load i32, ptr %29, align 8, !tbaa !32
  %31 = icmp ult i32 %30, 8
  br i1 %31, label %206, label %32

32:                                               ; preds = %28, %24
  %33 = icmp eq i32 %21, 16211
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = getelementptr inbounds nuw i8, ptr %14, i64 140
  %36 = load i32, ptr %35, align 4, !tbaa !46
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
  br i1 %57, label %.loopexit7, label %58

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
  br i1 %niter.ncmp.3, label %.loopexit7.loopexit.unr-lcssa, label %65, !llvm.loop !115

.loopexit7.loopexit.unr-lcssa:                    ; preds = %65
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit7, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit7.loopexit.unr-lcssa, %58
  %.epil.init = phi i64 [ %44, %58 ], [ 0, %.loopexit7.loopexit.unr-lcssa ]
  %.epil.init38 = phi i64 [ 0, %58 ], [ %78, %.loopexit7.loopexit.unr-lcssa ]
  %lcmp.mod40 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod40)
  br label %79

79:                                               ; preds = %79, %.epil.preheader
  %80 = phi i64 [ %.epil.init, %.epil.preheader ], [ %85, %79 ]
  %81 = phi i64 [ %.epil.init38, %.epil.preheader ], [ %84, %79 ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %79 ]
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 %81
  %83 = trunc i64 %80 to i32
  store i32 %83, ptr %82, align 1
  %84 = add nuw i64 %81, 4
  %85 = lshr i64 %80, 32
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit7, label %79, !llvm.loop !116

.loopexit7:                                       ; preds = %.loopexit7.loopexit.unr-lcssa, %79, %51
  %86 = phi i64 [ poison, %51 ], [ 0, %.loopexit7.loopexit.unr-lcssa ], [ %85, %79 ]
  %87 = phi i64 [ %44, %51 ], [ 0, %.loopexit7.loopexit.unr-lcssa ], [ %85, %79 ]
  %88 = phi i64 [ 0, %51 ], [ %59, %79 ], [ %59, %.loopexit7.loopexit.unr-lcssa ]
  %89 = icmp eq i64 %56, 0
  br i1 %89, label %.loopexit6, label %.preheader

.preheader:                                       ; preds = %.loopexit7, %.preheader
  %90 = phi i64 [ %96, %.preheader ], [ %87, %.loopexit7 ]
  %91 = phi i64 [ %93, %.preheader ], [ %88, %.loopexit7 ]
  %92 = phi i64 [ %97, %.preheader ], [ 0, %.loopexit7 ]
  %93 = add nuw nsw i64 %91, 1
  %94 = trunc i64 %90 to i8
  %95 = getelementptr inbounds nuw i8, ptr %2, i64 %91
  store i8 %94, ptr %95, align 1, !tbaa !44
  %96 = lshr i64 %90, 8
  %97 = add nuw nsw i64 %92, 1
  %98 = icmp eq i64 %97, %56
  br i1 %98, label %.loopexit6, label %.preheader, !llvm.loop !117

.loopexit6:                                       ; preds = %.preheader, %.loopexit7
  %99 = phi i64 [ %86, %.loopexit7 ], [ %96, %.preheader ]
  store i64 %99, ptr %41, align 8, !tbaa !31
  store i32 0, ptr %38, align 8, !tbaa !32
  br label %100

100:                                              ; preds = %100, %.loopexit6
  %101 = phi i64 [ 0, %.loopexit6 ], [ %103, %100 ]
  %102 = phi i32 [ 0, %.loopexit6 ], [ %114, %100 ]
  %103 = add nuw nsw i64 %101, 1
  %104 = icmp samesign ult i32 %102, 2
  %105 = select i1 %104, i32 0, i32 255
  %106 = getelementptr inbounds nuw i8, ptr %2, i64 %101
  %107 = load i8, ptr %106, align 1, !tbaa !44
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %105, %108
  %110 = add nuw nsw i32 %102, 1
  %111 = icmp eq i8 %107, 0
  %112 = sub nuw nsw i32 4, %102
  %113 = select i1 %111, i32 %112, i32 0
  %114 = select i1 %109, i32 %110, i32 %113
  %115 = icmp samesign ult i64 %103, %55
  %116 = icmp samesign ult i32 %114, 4
  %117 = select i1 %115, i1 %116, i1 false
  br i1 %117, label %100, label %.loopexit, !llvm.loop !118

.loopexit:                                        ; preds = %100, %50
  %118 = phi i32 [ 0, %50 ], [ %114, %100 ]
  %119 = getelementptr inbounds nuw i8, ptr %14, i64 140
  store i32 %118, ptr %119, align 4, !tbaa !46
  %120 = load i32, ptr %25, align 8, !tbaa !51
  br label %121

121:                                              ; preds = %.loopexit, %34
  %122 = phi i32 [ %118, %.loopexit ], [ %36, %34 ]
  %123 = phi i32 [ %120, %.loopexit ], [ %26, %34 ]
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
  br i1 %148, label %131, label %149, !llvm.loop !118

149:                                              ; preds = %131
  %150 = trunc nuw i64 %134 to i32
  br label %151

151:                                              ; preds = %149, %121
  %152 = phi i32 [ %122, %121 ], [ %145, %149 ]
  %153 = phi i32 [ 0, %121 ], [ %150, %149 ]
  store i32 %152, ptr %124, align 4, !tbaa !46
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
  br i1 %169, label %170, label %206

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
  %181 = load i64, ptr %180, align 8, !tbaa !113
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %180, i8 0, i64 16, i1 false)
  %187 = load i32, ptr %174, align 8, !tbaa !24
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %178
  %190 = and i32 %187, 1
  %191 = zext nneg i32 %190 to i64
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %191, ptr %192, align 8, !tbaa !25
  br label %193

193:                                              ; preds = %189, %178
  %194 = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 0, ptr %194, align 4, !tbaa !26
  %195 = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %195, align 4, !tbaa !27
  %196 = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 32768, ptr %196, align 4, !tbaa !29
  %197 = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr null, ptr %197, align 8, !tbaa !30
  %198 = getelementptr inbounds nuw i8, ptr %14, i64 80
  store i64 0, ptr %198, align 8, !tbaa !31
  %199 = getelementptr inbounds nuw i8, ptr %14, i64 88
  store i32 0, ptr %199, align 8, !tbaa !32
  %200 = getelementptr inbounds nuw i8, ptr %14, i64 1368
  %201 = getelementptr inbounds nuw i8, ptr %14, i64 144
  store ptr %200, ptr %201, align 8, !tbaa !33
  %202 = getelementptr inbounds nuw i8, ptr %14, i64 112
  store ptr %200, ptr %202, align 8, !tbaa !34
  %203 = getelementptr inbounds nuw i8, ptr %14, i64 104
  store ptr %200, ptr %203, align 8, !tbaa !35
  %204 = getelementptr inbounds nuw i8, ptr %14, i64 7144
  store i32 1, ptr %204, align 8, !tbaa !36
  %205 = getelementptr inbounds nuw i8, ptr %14, i64 7148
  store i32 -1, ptr %205, align 4, !tbaa !37
  store i64 %168, ptr %162, align 8, !tbaa !22
  store i64 %181, ptr %180, align 8, !tbaa !113
  store i32 %172, ptr %171, align 8, !tbaa !28
  store i32 16191, ptr %20, align 8, !tbaa !20
  br label %206

206:                                              ; preds = %193, %167, %28, %19, %16, %12, %8, %4, %1
  %207 = phi i32 [ 0, %193 ], [ -2, %19 ], [ -5, %28 ], [ -3, %167 ], [ -2, %8 ], [ -2, %4 ], [ -2, %1 ], [ -2, %16 ], [ -2, %12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %207
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
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

30:                                               ; preds = %25, %23, %18, %15, %11, %7, %3, %1
  %31 = phi i32 [ -2, %18 ], [ 0, %23 ], [ %29, %25 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -4, 1) i32 @inflateCopy(ptr noundef %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #1 {
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
  %36 = load ptr, ptr %5, align 8, !tbaa !5
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
  %89 = phi i32 [ -4, %43 ], [ 0, %85 ], [ -2, %19 ], [ -4, %26 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %89
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
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

26:                                               ; preds = %24, %19, %16, %12, %8, %4, %2
  %27 = phi i32 [ -3, %24 ], [ -2, %19 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @inflateValidate(ptr noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !5
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
  %31 = phi i32 [ -2, %19 ], [ -2, %16 ], [ -2, %12 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ 0, %.sink.split ]
  ret i32 %31
}

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i64 -140737488355328, 140741783257088) i64 @inflateMark(ptr noundef readonly captures(address) %0) local_unnamed_addr #9 {
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
  %33 = load i32, ptr %32, align 8, !tbaa !101
  %34 = getelementptr inbounds nuw i8, ptr %13, i64 92
  %35 = load i32, ptr %34, align 4, !tbaa !67
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
  %45 = phi i64 [ %43, %40 ], [ -65536, %18 ], [ -65536, %7 ], [ -65536, %3 ], [ -65536, %1 ], [ -65536, %15 ], [ -65536, %11 ]
  ret i64 %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
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

31:                                               ; preds = %23, %18, %15, %11, %7, %3, %1
  %32 = phi i64 [ %30, %23 ], [ -1, %18 ], [ -1, %7 ], [ -1, %3 ], [ -1, %1 ], [ -1, %15 ], [ -1, %11 ]
  ret i64 %32
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nomerge noreturn nounwind }

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
!97 = distinct !{!97, !55, !98}
!98 = !{!"llvm.loop.estimated_trip_count", i32 528415}
!99 = !{!17, !11, i64 124}
!100 = distinct !{!100, !55}
!101 = !{!17, !11, i64 7152}
!102 = !{!17, !11, i64 96}
!103 = distinct !{!103, !55}
!104 = distinct !{!104, !55, !105, !106}
!105 = !{!"llvm.loop.isvectorized", i32 1}
!106 = !{!"llvm.loop.unroll.runtime.disable"}
!107 = !{!"branch_weights", i32 4, i32 28}
!108 = distinct !{!108, !55, !105, !106}
!109 = distinct !{!109, !110}
!110 = !{!"llvm.loop.unroll.disable"}
!111 = distinct !{!111, !55, !105}
!112 = distinct !{!112, !55}
!113 = !{!6, !12, i64 40}
!114 = distinct !{!114, !55}
!115 = distinct !{!115, !55}
!116 = distinct !{!116, !110}
!117 = distinct !{!117, !110}
!118 = distinct !{!118, !55}
