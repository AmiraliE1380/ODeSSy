; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_inflate.fast.mid.ll'
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
  br i1 %4, label %.loopexit164, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %.loopexit164, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %.loopexit164, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %.loopexit164, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %.loopexit164

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %.loopexit164

25:                                               ; preds = %20
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = icmp eq ptr %27, null
  br i1 %28, label %.loopexit164, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 8, !tbaa !50
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i32, ptr %33, align 8, !tbaa !51
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %.loopexit164

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

88:                                               ; preds = %2265, %39
  %89 = phi i32 [ %40, %39 ], [ %2274, %2265 ]
  %90 = phi ptr [ %30, %39 ], [ %2266, %2265 ]
  %91 = phi ptr [ %27, %39 ], [ %2267, %2265 ]
  %92 = phi i32 [ %44, %39 ], [ %2268, %2265 ]
  %93 = phi i32 [ %42, %39 ], [ %2269, %2265 ]
  %94 = phi i64 [ %46, %39 ], [ %2270, %2265 ]
  %95 = phi i32 [ %48, %39 ], [ %2271, %2265 ]
  %96 = phi i32 [ %42, %39 ], [ %2272, %2265 ]
  %97 = phi i32 [ 0, %39 ], [ %2273, %2265 ]
  %98 = ptrtoaddr ptr %91 to i64
  switch i32 %89, label %.loopexit164.loopexit [
    i32 16180, label %120
    i32 16181, label %115
    i32 16182, label %281
    i32 16183, label %364
    i32 16184, label %423
    i32 16185, label %501
    i32 16186, label %578
    i32 16187, label %642
    i32 16188, label %706
    i32 16189, label %110
    i32 16190, label %838
    i32 16191, label %848
    i32 16192, label %853
    i32 16193, label %902
    i32 16194, label %984
    i32 16195, label %989
    i32 16196, label %105
    i32 16197, label %1074
    i32 16198, label %1148
    i32 16199, label %1444
    i32 16200, label %1450
    i32 16201, label %101
    i32 16202, label %1690
    i32 16203, label %99
    i32 16204, label %1916
    i32 16205, label %2035
    i32 16206, label %2042
    i32 16207, label %103
    i32 16208, label %.loopexit162
    i32 16209, label %.loopexit162.loopexit4873
    i32 16210, label %.loopexit164
  ]

99:                                               ; preds = %88
  %100 = load i32, ptr %72, align 4, !tbaa !53
  br label %1851

101:                                              ; preds = %88
  %102 = load i32, ptr %72, align 4, !tbaa !53
  br label %1624

103:                                              ; preds = %88
  %104 = load i32, ptr %49, align 8, !tbaa !24
  br label %2172

105:                                              ; preds = %88
  %106 = icmp ult i32 %95, 14
  br i1 %106, label %107, label %1053

107:                                              ; preds = %105
  %108 = zext nneg i32 %95 to i64
  %109 = icmp eq i32 %92, 0
  br i1 %109, label %2366, label %1021

110:                                              ; preds = %88
  %111 = icmp ult i32 %95, 32
  br i1 %111, label %112, label %831

112:                                              ; preds = %110
  %113 = zext nneg i32 %95 to i64
  %114 = icmp eq i32 %92, 0
  br i1 %114, label %2315, label %778

115:                                              ; preds = %88
  %116 = icmp ult i32 %95, 16
  br i1 %116, label %117, label %250

117:                                              ; preds = %115
  %118 = zext nneg i32 %95 to i64
  %119 = icmp eq i32 %92, 0
  br i1 %119, label %2309, label %218

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
  br i1 %127, label %2279, label %129

128:                                              ; preds = %120
  store i32 16192, ptr %21, align 8, !tbaa !20
  br label %2265

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
  br i1 %143, label %2279, label %144

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
  br label %2265

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
  br label %2265

193:                                              ; preds = %185
  %194 = and i64 %164, 15
  %195 = icmp eq i64 %194, 8
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  store ptr @.str.2, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2265

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
  br label %2265

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
  br label %2265

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
  br i1 %232, label %2309, label %233

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
  br label %2265

259:                                              ; preds = %250
  %260 = and i32 %255, 57344
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %259
  store ptr @.str.4, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2265

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
  br i1 %289, label %2303, label %290

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
  br i1 %304, label %2303, label %305

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
  br i1 %318, label %2303, label %319

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
  br i1 %332, label %2303, label %333

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
  br i1 %372, label %2297, label %373

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
  br i1 %387, label %2297, label %388

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
  br i1 %440, label %2291, label %441

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
  br i1 %455, label %2291, label %456

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
  br i1 %508, label %575, label %509

509:                                              ; preds = %501
  %510 = load i32, ptr %56, align 4, !tbaa !67
  %511 = call i32 @llvm.umin.i32(i32 %510, i32 %503)
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %570, label %513

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
  %561 = load i32, ptr %56, align 4, !tbaa !67
  %562 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %561, i32 %511), !nosanitize !47
  %563 = extractvalue { i32, i1 } %562, 1, !nosanitize !47
  br i1 %563, label %564, label %565, !prof !48, !nosanitize !47

564:                                              ; preds = %560
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

565:                                              ; preds = %560
  %566 = sub i32 %503, %511
  %567 = extractvalue { i32, i1 } %562, 0, !nosanitize !47
  %568 = zext i32 %511 to i64
  %569 = getelementptr inbounds nuw i8, ptr %502, i64 %568
  store i32 %567, ptr %56, align 4, !tbaa !67
  br label %570

570:                                              ; preds = %565, %509
  %571 = phi i32 [ %567, %565 ], [ %510, %509 ]
  %572 = phi ptr [ %569, %565 ], [ %502, %509 ]
  %573 = phi i32 [ %566, %565 ], [ %503, %509 ]
  %574 = icmp eq i32 %571, 0
  br i1 %574, label %575, label %.loopexit162

575:                                              ; preds = %570, %501
  %576 = phi ptr [ %572, %570 ], [ %502, %501 ]
  %577 = phi i32 [ %573, %570 ], [ %503, %501 ]
  store i32 0, ptr %56, align 4, !tbaa !67
  store i32 16186, ptr %21, align 8, !tbaa !20
  br label %578

578:                                              ; preds = %575, %88
  %579 = phi ptr [ %576, %575 ], [ %90, %88 ]
  %580 = phi i32 [ %577, %575 ], [ %92, %88 ]
  %581 = phi i64 [ %504, %575 ], [ %94, %88 ]
  %582 = phi i32 [ %505, %575 ], [ %95, %88 ]
  %583 = load i32, ptr %52, align 8, !tbaa !28
  %584 = and i32 %583, 2048
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %634, label %586

586:                                              ; preds = %578
  %587 = icmp eq i32 %580, 0
  br i1 %587, label %.loopexit162, label %588

588:                                              ; preds = %586
  %589 = zext i32 %580 to i64
  br label %590

590:                                              ; preds = %610, %588
  %591 = phi i64 [ 0, %588 ], [ %592, %610 ]
  %592 = add nuw nsw i64 %591, 1
  %593 = getelementptr inbounds nuw i8, ptr %579, i64 %591
  %594 = load i8, ptr %593, align 1, !tbaa !44
  %595 = load ptr, ptr %84, align 8, !tbaa !30
  %596 = icmp eq ptr %595, null
  br i1 %596, label %610, label %597

597:                                              ; preds = %590
  %598 = getelementptr inbounds nuw i8, ptr %595, i64 40
  %599 = load ptr, ptr %598, align 8, !tbaa !71
  %600 = icmp eq ptr %599, null
  br i1 %600, label %610, label %601

601:                                              ; preds = %597
  %602 = load i32, ptr %56, align 4, !tbaa !67
  %603 = getelementptr inbounds nuw i8, ptr %595, i64 48
  %604 = load i32, ptr %603, align 8, !tbaa !72
  %605 = icmp ult i32 %602, %604
  br i1 %605, label %606, label %610

606:                                              ; preds = %601
  %607 = add nuw i32 %602, 1
  store i32 %607, ptr %56, align 4, !tbaa !67
  %608 = zext i32 %602 to i64
  %609 = getelementptr inbounds nuw i8, ptr %599, i64 %608
  store i8 %594, ptr %609, align 1, !tbaa !44
  br label %610

610:                                              ; preds = %606, %601, %597, %590
  %611 = icmp ne i8 %594, 0
  %612 = icmp samesign ult i64 %592, %589
  %613 = select i1 %611, i1 %612, i1 false
  br i1 %613, label %590, label %614, !llvm.loop !73

614:                                              ; preds = %610
  %615 = trunc nuw i64 %592 to i32
  %616 = load i32, ptr %52, align 8, !tbaa !28
  %617 = and i32 %616, 512
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %626, label %619

619:                                              ; preds = %614
  %620 = load i32, ptr %49, align 8, !tbaa !24
  %621 = and i32 %620, 4
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %626, label %623

623:                                              ; preds = %619
  %624 = load i64, ptr %53, align 8, !tbaa !56
  %625 = call i64 @crc32(i64 noundef %624, ptr noundef nonnull %579, i32 noundef %615) #12
  store i64 %625, ptr %53, align 8, !tbaa !56
  br label %626

626:                                              ; preds = %623, %619, %614
  %627 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %580, i32 %615), !nosanitize !47
  %628 = extractvalue { i32, i1 } %627, 1, !nosanitize !47
  br i1 %628, label %629, label %630, !prof !48, !nosanitize !47

629:                                              ; preds = %626
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

630:                                              ; preds = %626
  %631 = extractvalue { i32, i1 } %627, 0, !nosanitize !47
  %632 = and i64 %592, 4294967295
  %633 = getelementptr inbounds nuw i8, ptr %579, i64 %632
  br i1 %611, label %.loopexit162, label %639

634:                                              ; preds = %578
  %635 = load ptr, ptr %84, align 8, !tbaa !30
  %636 = icmp eq ptr %635, null
  br i1 %636, label %639, label %637

637:                                              ; preds = %634
  %638 = getelementptr inbounds nuw i8, ptr %635, i64 40
  store ptr null, ptr %638, align 8, !tbaa !71
  br label %639

639:                                              ; preds = %637, %634, %630
  %640 = phi ptr [ %633, %630 ], [ %579, %637 ], [ %579, %634 ]
  %641 = phi i32 [ %631, %630 ], [ %580, %637 ], [ %580, %634 ]
  store i32 0, ptr %56, align 4, !tbaa !67
  store i32 16187, ptr %21, align 8, !tbaa !20
  br label %642

642:                                              ; preds = %639, %88
  %643 = phi ptr [ %640, %639 ], [ %90, %88 ]
  %644 = phi i32 [ %641, %639 ], [ %92, %88 ]
  %645 = phi i64 [ %581, %639 ], [ %94, %88 ]
  %646 = phi i32 [ %582, %639 ], [ %95, %88 ]
  %647 = load i32, ptr %52, align 8, !tbaa !28
  %648 = and i32 %647, 4096
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %698, label %650

650:                                              ; preds = %642
  %651 = icmp eq i32 %644, 0
  br i1 %651, label %.loopexit162, label %652

652:                                              ; preds = %650
  %653 = zext i32 %644 to i64
  br label %654

654:                                              ; preds = %674, %652
  %655 = phi i64 [ 0, %652 ], [ %656, %674 ]
  %656 = add nuw nsw i64 %655, 1
  %657 = getelementptr inbounds nuw i8, ptr %643, i64 %655
  %658 = load i8, ptr %657, align 1, !tbaa !44
  %659 = load ptr, ptr %84, align 8, !tbaa !30
  %660 = icmp eq ptr %659, null
  br i1 %660, label %674, label %661

661:                                              ; preds = %654
  %662 = getelementptr inbounds nuw i8, ptr %659, i64 56
  %663 = load ptr, ptr %662, align 8, !tbaa !74
  %664 = icmp eq ptr %663, null
  br i1 %664, label %674, label %665

665:                                              ; preds = %661
  %666 = load i32, ptr %56, align 4, !tbaa !67
  %667 = getelementptr inbounds nuw i8, ptr %659, i64 64
  %668 = load i32, ptr %667, align 8, !tbaa !75
  %669 = icmp ult i32 %666, %668
  br i1 %669, label %670, label %674

670:                                              ; preds = %665
  %671 = add nuw i32 %666, 1
  store i32 %671, ptr %56, align 4, !tbaa !67
  %672 = zext i32 %666 to i64
  %673 = getelementptr inbounds nuw i8, ptr %663, i64 %672
  store i8 %658, ptr %673, align 1, !tbaa !44
  br label %674

674:                                              ; preds = %670, %665, %661, %654
  %675 = icmp ne i8 %658, 0
  %676 = icmp samesign ult i64 %656, %653
  %677 = select i1 %675, i1 %676, i1 false
  br i1 %677, label %654, label %678, !llvm.loop !76

678:                                              ; preds = %674
  %679 = trunc nuw i64 %656 to i32
  %680 = load i32, ptr %52, align 8, !tbaa !28
  %681 = and i32 %680, 512
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %690, label %683

683:                                              ; preds = %678
  %684 = load i32, ptr %49, align 8, !tbaa !24
  %685 = and i32 %684, 4
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %690, label %687

687:                                              ; preds = %683
  %688 = load i64, ptr %53, align 8, !tbaa !56
  %689 = call i64 @crc32(i64 noundef %688, ptr noundef nonnull %643, i32 noundef %679) #12
  store i64 %689, ptr %53, align 8, !tbaa !56
  br label %690

690:                                              ; preds = %687, %683, %678
  %691 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %644, i32 %679), !nosanitize !47
  %692 = extractvalue { i32, i1 } %691, 1, !nosanitize !47
  br i1 %692, label %693, label %694, !prof !48, !nosanitize !47

693:                                              ; preds = %690
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

694:                                              ; preds = %690
  %695 = extractvalue { i32, i1 } %691, 0, !nosanitize !47
  %696 = and i64 %656, 4294967295
  %697 = getelementptr inbounds nuw i8, ptr %643, i64 %696
  br i1 %675, label %.loopexit162, label %703

698:                                              ; preds = %642
  %699 = load ptr, ptr %84, align 8, !tbaa !30
  %700 = icmp eq ptr %699, null
  br i1 %700, label %703, label %701

701:                                              ; preds = %698
  %702 = getelementptr inbounds nuw i8, ptr %699, i64 56
  store ptr null, ptr %702, align 8, !tbaa !74
  br label %703

703:                                              ; preds = %701, %698, %694
  %704 = phi ptr [ %697, %694 ], [ %643, %701 ], [ %643, %698 ]
  %705 = phi i32 [ %695, %694 ], [ %644, %701 ], [ %644, %698 ]
  store i32 16188, ptr %21, align 8, !tbaa !20
  br label %706

706:                                              ; preds = %703, %88
  %707 = phi ptr [ %704, %703 ], [ %90, %88 ]
  %708 = phi i32 [ %705, %703 ], [ %92, %88 ]
  %709 = phi i64 [ %645, %703 ], [ %94, %88 ]
  %710 = phi i32 [ %646, %703 ], [ %95, %88 ]
  %711 = load i32, ptr %52, align 8, !tbaa !28
  %712 = and i32 %711, 512
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %764, label %714

714:                                              ; preds = %706
  %715 = icmp ult i32 %710, 16
  br i1 %715, label %716, label %751

716:                                              ; preds = %714
  %717 = zext nneg i32 %710 to i64
  %718 = icmp eq i32 %708, 0
  br i1 %718, label %2285, label %719

719:                                              ; preds = %716
  %720 = load i8, ptr %707, align 1, !tbaa !44
  %721 = zext i8 %720 to i64
  %722 = shl nuw nsw i64 %721, %717
  %723 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %709, i64 %722), !nosanitize !47
  %724 = extractvalue { i64, i1 } %723, 1, !nosanitize !47
  br i1 %724, label %725, label %726, !prof !48, !nosanitize !47

725:                                              ; preds = %734, %719
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

726:                                              ; preds = %719
  %727 = extractvalue { i64, i1 } %723, 0, !nosanitize !47
  %728 = getelementptr inbounds nuw i8, ptr %707, i64 1
  %729 = add i32 %708, -1
  %730 = add nuw nsw i64 %717, 8
  %731 = icmp samesign ult i32 %710, 8
  br i1 %731, label %732, label %745, !llvm.loop !77

732:                                              ; preds = %726
  %733 = icmp eq i32 %729, 0
  br i1 %733, label %2285, label %734

734:                                              ; preds = %732
  %735 = load i8, ptr %728, align 1, !tbaa !44
  %736 = zext i8 %735 to i64
  %737 = shl nuw nsw i64 %736, %730
  %738 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %727, i64 %737), !nosanitize !47
  %739 = extractvalue { i64, i1 } %738, 1, !nosanitize !47
  br i1 %739, label %725, label %740, !prof !48, !nosanitize !47

740:                                              ; preds = %734
  %741 = extractvalue { i64, i1 } %738, 0, !nosanitize !47
  %742 = getelementptr inbounds nuw i8, ptr %707, i64 2
  %743 = add i32 %708, -2
  %744 = or disjoint i64 %717, 16
  br label %745

745:                                              ; preds = %740, %726
  %746 = phi i64 [ %727, %726 ], [ %741, %740 ]
  %747 = phi ptr [ %728, %726 ], [ %742, %740 ]
  %748 = phi i32 [ %729, %726 ], [ %743, %740 ]
  %749 = phi i64 [ %730, %726 ], [ %744, %740 ]
  %750 = trunc nuw nsw i64 %749 to i32
  br label %751

751:                                              ; preds = %745, %714
  %752 = phi ptr [ %707, %714 ], [ %747, %745 ]
  %753 = phi i32 [ %708, %714 ], [ %748, %745 ]
  %754 = phi i64 [ %709, %714 ], [ %746, %745 ]
  %755 = phi i32 [ %710, %714 ], [ %750, %745 ]
  %756 = load i32, ptr %49, align 8, !tbaa !24
  %757 = and i32 %756, 4
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %764, label %759

759:                                              ; preds = %751
  %760 = load i64, ptr %53, align 8, !tbaa !56
  %761 = and i64 %760, 65535
  %762 = icmp eq i64 %754, %761
  br i1 %762, label %764, label %763

763:                                              ; preds = %759
  store ptr @.str.5, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2265

764:                                              ; preds = %759, %751, %706
  %765 = phi ptr [ %707, %706 ], [ %752, %751 ], [ %752, %759 ]
  %766 = phi i32 [ %708, %706 ], [ %753, %751 ], [ %753, %759 ]
  %767 = phi i64 [ %709, %706 ], [ 0, %751 ], [ 0, %759 ]
  %768 = phi i32 [ %710, %706 ], [ 0, %751 ], [ 0, %759 ]
  %769 = load ptr, ptr %84, align 8, !tbaa !30
  %770 = icmp eq ptr %769, null
  br i1 %770, label %776, label %771

771:                                              ; preds = %764
  %772 = lshr i32 %711, 9
  %773 = and i32 %772, 1
  %774 = getelementptr inbounds nuw i8, ptr %769, i64 68
  store i32 %773, ptr %774, align 4, !tbaa !78
  %775 = getelementptr inbounds nuw i8, ptr %769, i64 72
  store i32 1, ptr %775, align 8, !tbaa !57
  br label %776

776:                                              ; preds = %771, %764
  %777 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %777, ptr %53, align 8, !tbaa !56
  store i64 %777, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2265

778:                                              ; preds = %112
  %779 = load i8, ptr %90, align 1, !tbaa !44
  %780 = zext i8 %779 to i64
  %781 = shl nuw nsw i64 %780, %113
  %782 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %781), !nosanitize !47
  %783 = extractvalue { i64, i1 } %782, 1, !nosanitize !47
  br i1 %783, label %784, label %785, !prof !48, !nosanitize !47

784:                                              ; preds = %821, %807, %793, %778
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

785:                                              ; preds = %778
  %786 = extractvalue { i64, i1 } %782, 0, !nosanitize !47
  %787 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %788 = add i32 %92, -1
  %789 = add nuw nsw i64 %113, 8
  %790 = icmp samesign ult i32 %95, 24
  br i1 %790, label %791, label %831, !llvm.loop !79

791:                                              ; preds = %785
  %792 = icmp eq i32 %788, 0
  br i1 %792, label %2315, label %793

793:                                              ; preds = %791
  %794 = load i8, ptr %787, align 1, !tbaa !44
  %795 = zext i8 %794 to i64
  %796 = shl nuw nsw i64 %795, %789
  %797 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %786, i64 %796), !nosanitize !47
  %798 = extractvalue { i64, i1 } %797, 1, !nosanitize !47
  br i1 %798, label %784, label %799, !prof !48, !nosanitize !47

799:                                              ; preds = %793
  %800 = extractvalue { i64, i1 } %797, 0, !nosanitize !47
  %801 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %802 = add i32 %92, -2
  %803 = add nuw nsw i64 %113, 16
  %804 = icmp samesign ult i32 %95, 16
  br i1 %804, label %805, label %831, !llvm.loop !79

805:                                              ; preds = %799
  %806 = icmp eq i32 %802, 0
  br i1 %806, label %2315, label %807

807:                                              ; preds = %805
  %808 = load i8, ptr %801, align 1, !tbaa !44
  %809 = zext i8 %808 to i64
  %810 = shl nuw nsw i64 %809, %803
  %811 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %800, i64 %810), !nosanitize !47
  %812 = extractvalue { i64, i1 } %811, 1, !nosanitize !47
  br i1 %812, label %784, label %813, !prof !48, !nosanitize !47

813:                                              ; preds = %807
  %814 = extractvalue { i64, i1 } %811, 0, !nosanitize !47
  %815 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %816 = add i32 %92, -3
  %817 = add nuw nsw i64 %113, 24
  %818 = icmp samesign ult i32 %95, 8
  br i1 %818, label %819, label %831, !llvm.loop !79

819:                                              ; preds = %813
  %820 = icmp eq i32 %816, 0
  br i1 %820, label %2315, label %821

821:                                              ; preds = %819
  %822 = load i8, ptr %815, align 1, !tbaa !44
  %823 = zext i8 %822 to i64
  %824 = shl nuw nsw i64 %823, %817
  %825 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %814, i64 %824), !nosanitize !47
  %826 = extractvalue { i64, i1 } %825, 1, !nosanitize !47
  br i1 %826, label %784, label %827, !prof !48, !nosanitize !47

827:                                              ; preds = %821
  %828 = extractvalue { i64, i1 } %825, 0, !nosanitize !47
  %829 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %830 = add i32 %92, -4
  br label %831

831:                                              ; preds = %827, %813, %799, %785, %110
  %832 = phi ptr [ %90, %110 ], [ %787, %785 ], [ %801, %799 ], [ %815, %813 ], [ %829, %827 ]
  %833 = phi i32 [ %92, %110 ], [ %788, %785 ], [ %802, %799 ], [ %816, %813 ], [ %830, %827 ]
  %834 = phi i64 [ %94, %110 ], [ %786, %785 ], [ %800, %799 ], [ %814, %813 ], [ %828, %827 ]
  %835 = trunc i64 %834 to i32
  %836 = call i32 @llvm.bswap.i32(i32 %835)
  %837 = zext i32 %836 to i64
  store i64 %837, ptr %53, align 8, !tbaa !56
  store i64 %837, ptr %54, align 8, !tbaa !25
  store i32 16190, ptr %21, align 8, !tbaa !20
  br label %838

838:                                              ; preds = %831, %88
  %839 = phi ptr [ %832, %831 ], [ %90, %88 ]
  %840 = phi i32 [ %833, %831 ], [ %92, %88 ]
  %841 = phi i64 [ 0, %831 ], [ %94, %88 ]
  %842 = phi i32 [ 0, %831 ], [ %95, %88 ]
  %843 = load i32, ptr %80, align 4, !tbaa !27
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %845, label %846

845:                                              ; preds = %838
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %93, ptr %41, align 8, !tbaa !52
  store ptr %839, ptr %0, align 8, !tbaa !50
  store i32 %840, ptr %43, align 8, !tbaa !51
  store i64 %841, ptr %45, align 8, !tbaa !31
  store i32 %842, ptr %47, align 8, !tbaa !32
  br label %.loopexit164

846:                                              ; preds = %838
  %847 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %847, ptr %53, align 8, !tbaa !56
  store i64 %847, ptr %54, align 8, !tbaa !25
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %848

848:                                              ; preds = %846, %88
  %849 = phi ptr [ %839, %846 ], [ %90, %88 ]
  %850 = phi i32 [ %840, %846 ], [ %92, %88 ]
  %851 = phi i64 [ %841, %846 ], [ %94, %88 ]
  %852 = phi i32 [ %842, %846 ], [ %95, %88 ]
  br i1 %82, label %.loopexit162, label %853

853:                                              ; preds = %848, %88
  %854 = phi ptr [ %849, %848 ], [ %90, %88 ]
  %855 = phi i32 [ %850, %848 ], [ %92, %88 ]
  %856 = phi i64 [ %851, %848 ], [ %94, %88 ]
  %857 = phi i32 [ %852, %848 ], [ %95, %88 ]
  %858 = load i32, ptr %83, align 4, !tbaa !26
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %860, label %865

860:                                              ; preds = %853
  %861 = icmp ult i32 %857, 3
  br i1 %861, label %862, label %882

862:                                              ; preds = %860
  %863 = or disjoint i32 %857, 8
  %864 = icmp eq i32 %855, 0
  br i1 %864, label %.loopexit162, label %870

865:                                              ; preds = %853
  %866 = and i32 %857, 7
  %867 = and i32 %857, -8
  %868 = zext nneg i32 %866 to i64
  %869 = lshr i64 %856, %868
  store i32 16206, ptr %21, align 8, !tbaa !20
  br label %2265

870:                                              ; preds = %862
  %871 = load i8, ptr %854, align 1, !tbaa !44
  %872 = zext i8 %871 to i64
  %873 = zext nneg i32 %857 to i64
  %874 = shl nuw nsw i64 %872, %873
  %875 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %856, i64 %874), !nosanitize !47
  %876 = extractvalue { i64, i1 } %875, 1, !nosanitize !47
  br i1 %876, label %877, label %878, !prof !48, !nosanitize !47

877:                                              ; preds = %870
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

878:                                              ; preds = %870
  %879 = extractvalue { i64, i1 } %875, 0, !nosanitize !47
  %880 = getelementptr inbounds nuw i8, ptr %854, i64 1
  %881 = add i32 %855, -1
  br label %882

882:                                              ; preds = %878, %860
  %883 = phi ptr [ %880, %878 ], [ %854, %860 ]
  %884 = phi i32 [ %881, %878 ], [ %855, %860 ]
  %885 = phi i64 [ %879, %878 ], [ %856, %860 ]
  %886 = phi i32 [ %863, %878 ], [ %857, %860 ]
  %887 = trunc i64 %885 to i32
  %888 = and i32 %887, 1
  store i32 %888, ptr %83, align 4, !tbaa !26
  %889 = lshr i32 %887, 1
  %890 = and i32 %889, 3
  switch i32 %890, label %default.unreachable2577 [
    i32 0, label %897
    i32 1, label %891
    i32 2, label %895
    i32 3, label %896
  ]

891:                                              ; preds = %882
  call void @inflate_fixed(ptr noundef nonnull %15) #12
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %892, label %899

892:                                              ; preds = %891
  %893 = add i32 %886, -3
  %894 = lshr i64 %885, 3
  br label %.loopexit162

895:                                              ; preds = %882
  br label %897

default.unreachable2577:                          ; preds = %882
  unreachable

896:                                              ; preds = %882
  store ptr @.str.6, ptr %55, align 8, !tbaa !45
  br label %897

897:                                              ; preds = %896, %895, %882
  %898 = phi i32 [ 16209, %896 ], [ 16196, %895 ], [ 16193, %882 ]
  store i32 %898, ptr %21, align 8, !tbaa !20
  br label %899

899:                                              ; preds = %897, %891
  %900 = add i32 %886, -3
  %901 = lshr i64 %885, 3
  br label %2265

902:                                              ; preds = %88
  %903 = and i32 %95, 7
  %904 = zext nneg i32 %903 to i64
  %905 = lshr i64 %94, %904
  %906 = and i32 %95, -8
  %907 = icmp ult i32 %95, 32
  br i1 %907, label %908, label %971

908:                                              ; preds = %902
  %909 = and i32 %95, 24
  %910 = zext nneg i32 %909 to i64
  %911 = icmp eq i32 %92, 0
  br i1 %911, label %2321, label %912

912:                                              ; preds = %908
  %913 = load i8, ptr %90, align 1, !tbaa !44
  %914 = zext i8 %913 to i64
  %915 = shl nuw nsw i64 %914, %910
  %916 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %905, i64 %915), !nosanitize !47
  %917 = extractvalue { i64, i1 } %916, 1, !nosanitize !47
  br i1 %917, label %918, label %919, !prof !48, !nosanitize !47

918:                                              ; preds = %955, %941, %927, %912
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

919:                                              ; preds = %912
  %920 = extractvalue { i64, i1 } %916, 0, !nosanitize !47
  %921 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %922 = add i32 %92, -1
  %923 = add nuw nsw i64 %910, 8
  %924 = icmp samesign ult i32 %95, 24
  br i1 %924, label %925, label %965, !llvm.loop !80

925:                                              ; preds = %919
  %926 = icmp eq i32 %922, 0
  br i1 %926, label %2321, label %927

927:                                              ; preds = %925
  %928 = load i8, ptr %921, align 1, !tbaa !44
  %929 = zext i8 %928 to i64
  %930 = shl nuw nsw i64 %929, %923
  %931 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %920, i64 %930), !nosanitize !47
  %932 = extractvalue { i64, i1 } %931, 1, !nosanitize !47
  br i1 %932, label %918, label %933, !prof !48, !nosanitize !47

933:                                              ; preds = %927
  %934 = extractvalue { i64, i1 } %931, 0, !nosanitize !47
  %935 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %936 = add i32 %92, -2
  %937 = add nuw nsw i64 %910, 16
  %938 = icmp samesign ult i32 %95, 16
  br i1 %938, label %939, label %965, !llvm.loop !80

939:                                              ; preds = %933
  %940 = icmp eq i32 %936, 0
  br i1 %940, label %2321, label %941

941:                                              ; preds = %939
  %942 = load i8, ptr %935, align 1, !tbaa !44
  %943 = zext i8 %942 to i64
  %944 = shl nuw nsw i64 %943, %937
  %945 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %934, i64 %944), !nosanitize !47
  %946 = extractvalue { i64, i1 } %945, 1, !nosanitize !47
  br i1 %946, label %918, label %947, !prof !48, !nosanitize !47

947:                                              ; preds = %941
  %948 = extractvalue { i64, i1 } %945, 0, !nosanitize !47
  %949 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %950 = add i32 %92, -3
  %951 = add nuw nsw i64 %910, 24
  %952 = icmp eq i32 %909, 0
  br i1 %952, label %953, label %965, !llvm.loop !80

953:                                              ; preds = %947
  %954 = icmp eq i32 %950, 0
  br i1 %954, label %2321, label %955

955:                                              ; preds = %953
  %956 = load i8, ptr %949, align 1, !tbaa !44
  %957 = zext i8 %956 to i64
  %958 = shl nuw nsw i64 %957, %951
  %959 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %948, i64 %958), !nosanitize !47
  %960 = extractvalue { i64, i1 } %959, 1, !nosanitize !47
  br i1 %960, label %918, label %961, !prof !48, !nosanitize !47

961:                                              ; preds = %955
  %962 = extractvalue { i64, i1 } %959, 0, !nosanitize !47
  %963 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %964 = add i32 %92, -4
  br label %965

965:                                              ; preds = %961, %947, %933, %919
  %966 = phi i64 [ %920, %919 ], [ %934, %933 ], [ %948, %947 ], [ %962, %961 ]
  %967 = phi ptr [ %921, %919 ], [ %935, %933 ], [ %949, %947 ], [ %963, %961 ]
  %968 = phi i32 [ %922, %919 ], [ %936, %933 ], [ %950, %947 ], [ %964, %961 ]
  %969 = phi i64 [ %923, %919 ], [ %937, %933 ], [ %951, %947 ], [ 32, %961 ]
  %970 = trunc nuw nsw i64 %969 to i32
  br label %971

971:                                              ; preds = %965, %902
  %972 = phi ptr [ %90, %902 ], [ %967, %965 ]
  %973 = phi i32 [ %92, %902 ], [ %968, %965 ]
  %974 = phi i64 [ %905, %902 ], [ %966, %965 ]
  %975 = phi i32 [ %906, %902 ], [ %970, %965 ]
  %976 = and i64 %974, 65535
  %977 = lshr i64 %974, 16
  %978 = xor i64 %977, %976
  %979 = icmp eq i64 %978, 65535
  br i1 %979, label %981, label %980

980:                                              ; preds = %971
  store ptr @.str.7, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2265

981:                                              ; preds = %971
  %982 = trunc i64 %974 to i32
  %983 = and i32 %982, 65535
  store i32 %983, ptr %56, align 4, !tbaa !67
  store i32 16194, ptr %21, align 8, !tbaa !20
  br i1 %70, label %.loopexit162, label %984

984:                                              ; preds = %981, %88
  %985 = phi ptr [ %972, %981 ], [ %90, %88 ]
  %986 = phi i32 [ %973, %981 ], [ %92, %88 ]
  %987 = phi i64 [ 0, %981 ], [ %94, %88 ]
  %988 = phi i32 [ 0, %981 ], [ %95, %88 ]
  store i32 16195, ptr %21, align 8, !tbaa !20
  br label %989

989:                                              ; preds = %984, %88
  %990 = phi ptr [ %985, %984 ], [ %90, %88 ]
  %991 = phi i32 [ %986, %984 ], [ %92, %88 ]
  %992 = phi i64 [ %987, %984 ], [ %94, %88 ]
  %993 = phi i32 [ %988, %984 ], [ %95, %88 ]
  %994 = load i32, ptr %56, align 4, !tbaa !67
  %995 = icmp eq i32 %994, 0
  br i1 %995, label %1020, label %996

996:                                              ; preds = %989
  %997 = call i32 @llvm.umin.i32(i32 %994, i32 %991)
  %998 = call i32 @llvm.umin.i32(i32 %997, i32 %93)
  %999 = icmp eq i32 %998, 0
  br i1 %999, label %.loopexit162, label %1000

1000:                                             ; preds = %996
  %1001 = zext i32 %998 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %91, ptr align 1 %990, i64 %1001, i1 false)
  %1002 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %991, i32 %998), !nosanitize !47
  %1003 = extractvalue { i32, i1 } %1002, 0, !nosanitize !47
  %1004 = extractvalue { i32, i1 } %1002, 1, !nosanitize !47
  br i1 %1004, label %1005, label %1006, !prof !48, !nosanitize !47

1005:                                             ; preds = %1000
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1006:                                             ; preds = %1000
  %1007 = getelementptr inbounds nuw i8, ptr %990, i64 %1001
  %1008 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %93, i32 %998), !nosanitize !47
  %1009 = extractvalue { i32, i1 } %1008, 0, !nosanitize !47
  %1010 = extractvalue { i32, i1 } %1008, 1, !nosanitize !47
  br i1 %1010, label %1011, label %1012, !prof !48, !nosanitize !47

1011:                                             ; preds = %1006
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1012:                                             ; preds = %1006
  %1013 = load i32, ptr %56, align 4, !tbaa !67
  %1014 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1013, i32 %998), !nosanitize !47
  %1015 = extractvalue { i32, i1 } %1014, 1, !nosanitize !47
  br i1 %1015, label %1016, label %1017, !prof !48, !nosanitize !47

1016:                                             ; preds = %1012
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1017:                                             ; preds = %1012
  %1018 = extractvalue { i32, i1 } %1014, 0, !nosanitize !47
  %1019 = getelementptr inbounds nuw i8, ptr %91, i64 %1001
  store i32 %1018, ptr %56, align 4, !tbaa !67
  br label %2265

1020:                                             ; preds = %989
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2265

1021:                                             ; preds = %107
  %1022 = load i8, ptr %90, align 1, !tbaa !44
  %1023 = zext i8 %1022 to i64
  %1024 = shl nuw nsw i64 %1023, %108
  %1025 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %1024), !nosanitize !47
  %1026 = extractvalue { i64, i1 } %1025, 1, !nosanitize !47
  br i1 %1026, label %1027, label %1028, !prof !48, !nosanitize !47

1027:                                             ; preds = %1036, %1021
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1028:                                             ; preds = %1021
  %1029 = extractvalue { i64, i1 } %1025, 0, !nosanitize !47
  %1030 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %1031 = add i32 %92, -1
  %1032 = add nuw nsw i64 %108, 8
  %1033 = icmp samesign ult i32 %95, 6
  br i1 %1033, label %1034, label %1047, !llvm.loop !81

1034:                                             ; preds = %1028
  %1035 = icmp eq i32 %1031, 0
  br i1 %1035, label %2366, label %1036

1036:                                             ; preds = %1034
  %1037 = load i8, ptr %1030, align 1, !tbaa !44
  %1038 = zext i8 %1037 to i64
  %1039 = shl nuw nsw i64 %1038, %1032
  %1040 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1029, i64 %1039), !nosanitize !47
  %1041 = extractvalue { i64, i1 } %1040, 1, !nosanitize !47
  br i1 %1041, label %1027, label %1042, !prof !48, !nosanitize !47

1042:                                             ; preds = %1036
  %1043 = extractvalue { i64, i1 } %1040, 0, !nosanitize !47
  %1044 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %1045 = add i32 %92, -2
  %1046 = or disjoint i64 %108, 16
  br label %1047

1047:                                             ; preds = %1042, %1028
  %1048 = phi i64 [ %1029, %1028 ], [ %1043, %1042 ]
  %1049 = phi ptr [ %1030, %1028 ], [ %1044, %1042 ]
  %1050 = phi i32 [ %1031, %1028 ], [ %1045, %1042 ]
  %1051 = phi i64 [ %1032, %1028 ], [ %1046, %1042 ]
  %1052 = trunc nuw nsw i64 %1051 to i32
  br label %1053

1053:                                             ; preds = %1047, %105
  %1054 = phi ptr [ %90, %105 ], [ %1049, %1047 ]
  %1055 = phi i32 [ %92, %105 ], [ %1050, %1047 ]
  %1056 = phi i64 [ %94, %105 ], [ %1048, %1047 ]
  %1057 = phi i32 [ %95, %105 ], [ %1052, %1047 ]
  %1058 = trunc i64 %1056 to i32
  %1059 = and i32 %1058, 31
  %1060 = add nuw nsw i32 %1059, 257
  store i32 %1060, ptr %57, align 4, !tbaa !82
  %1061 = lshr i32 %1058, 5
  %1062 = and i32 %1061, 31
  %1063 = add nuw nsw i32 %1062, 1
  store i32 %1063, ptr %58, align 8, !tbaa !83
  %1064 = lshr i32 %1058, 10
  %1065 = and i32 %1064, 15
  %1066 = add nuw nsw i32 %1065, 4
  store i32 %1066, ptr %59, align 8, !tbaa !84
  %1067 = lshr i64 %1056, 14
  %1068 = add i32 %1057, -14
  %1069 = icmp samesign ugt i32 %1059, 29
  %1070 = icmp samesign ugt i32 %1062, 29
  %1071 = select i1 %1069, i1 true, i1 %1070
  br i1 %1071, label %1072, label %1073

1072:                                             ; preds = %1053
  store ptr @.str.8, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2265

1073:                                             ; preds = %1053
  store i32 0, ptr %60, align 4, !tbaa !85
  store i32 16197, ptr %21, align 8, !tbaa !20
  br label %1078

1074:                                             ; preds = %88
  %1075 = load i32, ptr %59, align 8, !tbaa !84
  %1076 = load i32, ptr %60, align 4, !tbaa !85
  %1077 = icmp ult i32 %1076, %1075
  br i1 %1077, label %1078, label %.loopexit163

1078:                                             ; preds = %1074, %1073
  %1079 = phi i32 [ %1068, %1073 ], [ %95, %1074 ]
  %1080 = phi i64 [ %1067, %1073 ], [ %94, %1074 ]
  %1081 = phi i32 [ %1055, %1073 ], [ %92, %1074 ]
  %1082 = phi ptr [ %1054, %1073 ], [ %90, %1074 ]
  %1083 = phi i32 [ %1066, %1073 ], [ %1075, %1074 ]
  %1084 = phi i32 [ 0, %1073 ], [ %1076, %1074 ]
  %1085 = zext i32 %1084 to i64
  %1086 = zext i32 %1083 to i64
  br label %1095

.loopexit163:                                     ; preds = %1117, %1074
  %1087 = phi ptr [ %90, %1074 ], [ %1118, %1117 ]
  %1088 = phi i32 [ %92, %1074 ], [ %1119, %1117 ]
  %1089 = phi i64 [ %94, %1074 ], [ %1131, %1117 ]
  %1090 = phi i32 [ %95, %1074 ], [ %1130, %1117 ]
  %1091 = phi i32 [ %1076, %1074 ], [ %1083, %1117 ]
  %1092 = icmp ult i32 %1091, 19
  br i1 %1092, label %1093, label %1143

1093:                                             ; preds = %.loopexit163
  %1094 = zext nneg i32 %1091 to i64
  br label %1133

1095:                                             ; preds = %1117, %1078
  %1096 = phi i64 [ %1085, %1078 ], [ %1122, %1117 ]
  %1097 = phi i32 [ %1079, %1078 ], [ %1130, %1117 ]
  %1098 = phi i64 [ %1080, %1078 ], [ %1131, %1117 ]
  %1099 = phi i32 [ %1081, %1078 ], [ %1119, %1117 ]
  %1100 = phi ptr [ %1082, %1078 ], [ %1118, %1117 ]
  %1101 = icmp ult i32 %1097, 3
  br i1 %1101, label %1102, label %1117

1102:                                             ; preds = %1095
  %1103 = or disjoint i32 %1097, 8
  %1104 = icmp eq i32 %1099, 0
  br i1 %1104, label %.loopexit162, label %1105

1105:                                             ; preds = %1102
  %1106 = load i8, ptr %1100, align 1, !tbaa !44
  %1107 = zext i8 %1106 to i64
  %1108 = zext nneg i32 %1097 to i64
  %1109 = shl nuw nsw i64 %1107, %1108
  %1110 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1098, i64 %1109), !nosanitize !47
  %1111 = extractvalue { i64, i1 } %1110, 1, !nosanitize !47
  br i1 %1111, label %1112, label %1113, !prof !48, !nosanitize !47

1112:                                             ; preds = %1105
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1113:                                             ; preds = %1105
  %1114 = extractvalue { i64, i1 } %1110, 0, !nosanitize !47
  %1115 = getelementptr inbounds nuw i8, ptr %1100, i64 1
  %1116 = add i32 %1099, -1
  br label %1117

1117:                                             ; preds = %1113, %1095
  %1118 = phi ptr [ %1115, %1113 ], [ %1100, %1095 ]
  %1119 = phi i32 [ %1116, %1113 ], [ %1099, %1095 ]
  %1120 = phi i64 [ %1114, %1113 ], [ %1098, %1095 ]
  %1121 = phi i32 [ %1103, %1113 ], [ %1097, %1095 ]
  %1122 = add nuw nsw i64 %1096, 1
  %1123 = trunc i64 %1120 to i16
  %1124 = and i16 %1123, 7
  %1125 = trunc nuw i64 %1122 to i32
  store i32 %1125, ptr %60, align 4, !tbaa !85
  %1126 = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %1096
  %1127 = load i16, ptr %1126, align 2, !tbaa !86
  %1128 = zext i16 %1127 to i64
  %1129 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1128
  store i16 %1124, ptr %1129, align 2, !tbaa !86
  %1130 = add i32 %1121, -3
  %1131 = lshr i64 %1120, 3
  %1132 = icmp eq i64 %1122, %1086
  br i1 %1132, label %.loopexit163, label %1095, !llvm.loop !88

1133:                                             ; preds = %1133, %1093
  %1134 = phi i64 [ %1094, %1093 ], [ %1135, %1133 ]
  %1135 = add nuw nsw i64 %1134, 1
  %1136 = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %1134
  %1137 = load i16, ptr %1136, align 2, !tbaa !86
  %1138 = zext i16 %1137 to i64
  %1139 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1138
  store i16 0, ptr %1139, align 2, !tbaa !86
  %1140 = and i64 %1135, 4294967295
  %1141 = icmp eq i64 %1140, 19
  br i1 %1141, label %1142, label %1133, !llvm.loop !89

1142:                                             ; preds = %1133
  store i32 19, ptr %60, align 4, !tbaa !85
  br label %1143

1143:                                             ; preds = %1142, %.loopexit163
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %64, align 8, !tbaa !34
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 7, ptr %66, align 8, !tbaa !90
  %1144 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %61, i32 noundef 19, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #12
  %1145 = icmp eq i32 %1144, 0
  br i1 %1145, label %1147, label %1146

1146:                                             ; preds = %1143
  store ptr @.str.9, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2265

1147:                                             ; preds = %1143
  store i32 0, ptr %60, align 4, !tbaa !85
  store i32 16198, ptr %21, align 8, !tbaa !20
  br label %1148

1148:                                             ; preds = %1147, %88
  %1149 = phi ptr [ %1087, %1147 ], [ %90, %88 ]
  %1150 = phi i32 [ %1088, %1147 ], [ %92, %88 ]
  %1151 = phi i64 [ %1089, %1147 ], [ %94, %88 ]
  %1152 = phi i32 [ %1090, %1147 ], [ %95, %88 ]
  %1153 = phi i32 [ 0, %1147 ], [ %97, %88 ]
  %1154 = load i32, ptr %57, align 4, !tbaa !82
  %1155 = load i32, ptr %58, align 8, !tbaa !83
  %1156 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1154, i32 %1155), !nosanitize !47
  %1157 = extractvalue { i32, i1 } %1156, 1, !nosanitize !47
  br i1 %1157, label %1170, label %1158, !prof !91, !nosanitize !47

1158:                                             ; preds = %1148
  %1159 = extractvalue { i32, i1 } %1156, 0, !nosanitize !47
  %1160 = load i32, ptr %60, align 4, !tbaa !85
  %.fr6104 = freeze i32 %1160
  %1161 = call i32 @llvm.umax.i32(i32 %.fr6104, i32 %1159)
  %1162 = zext i32 %1161 to i64
  %1163 = icmp ult i32 %.fr6104, %1159
  br i1 %1163, label %1164, label %.loopexit161

1164:                                             ; preds = %1158
  %1165 = zext i32 %.fr6104 to i64
  %1166 = load i32, ptr %66, align 8, !tbaa !90
  %1167 = shl nsw i32 -1, %1166
  %1168 = xor i32 %1167, -1
  %1169 = load ptr, ptr %65, align 8, !tbaa !35
  br label %1171

1170:                                             ; preds = %1148
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1171:                                             ; preds = %1419, %1164
  %1172 = phi ptr [ %1149, %1164 ], [ %1217, %1419 ]
  %1173 = phi i32 [ %1150, %1164 ], [ %1218, %1419 ]
  %1174 = phi i64 [ %1151, %1164 ], [ %1228, %1419 ]
  %1175 = phi i32 [ %1152, %1164 ], [ %1230, %1419 ]
  %1176 = phi i64 [ %1165, %1164 ], [ %1420, %1419 ]
  %1177 = trunc i64 %1174 to i32
  %1178 = and i32 %1177, %1168
  %1179 = zext nneg i32 %1178 to i64
  %.split = getelementptr inbounds nuw [4 x i8], ptr %1169, i64 %1179
  %1180 = getelementptr inbounds nuw i8, ptr %.split, i64 1
  %1181 = load i8, ptr %1180, align 1, !tbaa !44
  %1182 = zext i8 %1181 to i32
  %1183 = icmp ult i32 %1175, %1182
  br i1 %1183, label %1184, label %1215

1184:                                             ; preds = %1171
  %1185 = icmp eq i32 %1173, 0
  br i1 %1185, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %1184
  %1186 = zext nneg i32 %1175 to i64
  br label %1189

1187:                                             ; preds = %1200
  %1188 = icmp eq i32 %1203, 0
  br i1 %1188, label %._crit_edge, label %1189

1189:                                             ; preds = %.lr.ph, %1187
  %1190 = phi ptr [ %1172, %.lr.ph ], [ %1202, %1187 ]
  %1191 = phi i32 [ %1173, %.lr.ph ], [ %1203, %1187 ]
  %1192 = phi i64 [ %1174, %.lr.ph ], [ %1201, %1187 ]
  %1193 = phi i64 [ %1186, %.lr.ph ], [ %1204, %1187 ]
  %1194 = load i8, ptr %1190, align 1, !tbaa !44
  %1195 = zext i8 %1194 to i64
  %1196 = shl i64 %1195, %1193
  %1197 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1192, i64 %1196), !nosanitize !47
  %1198 = extractvalue { i64, i1 } %1197, 1, !nosanitize !47
  br i1 %1198, label %1199, label %1200, !prof !48, !nosanitize !47

1199:                                             ; preds = %1189
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1200:                                             ; preds = %1189
  %1201 = extractvalue { i64, i1 } %1197, 0, !nosanitize !47
  %1202 = getelementptr inbounds nuw i8, ptr %1190, i64 1
  %1203 = add i32 %1191, -1
  %1204 = add nuw nsw i64 %1193, 8
  %1205 = trunc i64 %1201 to i32
  %1206 = and i32 %1205, %1168
  %1207 = zext nneg i32 %1206 to i64
  %.split158 = getelementptr inbounds nuw [4 x i8], ptr %1169, i64 %1207
  %1208 = getelementptr inbounds nuw i8, ptr %.split158, i64 1
  %1209 = load i8, ptr %1208, align 1, !tbaa !44
  %1210 = zext i8 %1209 to i64
  %1211 = icmp samesign ult i64 %1204, %1210
  br i1 %1211, label %1187, label %1212

1212:                                             ; preds = %1200
  %1213 = zext i8 %1209 to i32
  %1214 = trunc nuw nsw i64 %1204 to i32
  br label %1215

1215:                                             ; preds = %1212, %1171
  %1216 = phi i64 [ %1179, %1171 ], [ %1207, %1212 ]
  %1217 = phi ptr [ %1172, %1171 ], [ %1202, %1212 ]
  %1218 = phi i32 [ %1173, %1171 ], [ %1203, %1212 ]
  %1219 = phi i64 [ %1174, %1171 ], [ %1201, %1212 ]
  %1220 = phi i32 [ %1175, %1171 ], [ %1214, %1212 ]
  %1221 = phi i8 [ %1181, %1171 ], [ %1209, %1212 ]
  %1222 = phi i32 [ %1182, %1171 ], [ %1213, %1212 ]
  %.split159 = getelementptr inbounds nuw [4 x i8], ptr %1169, i64 %1216
  %1223 = getelementptr inbounds nuw i8, ptr %.split159, i64 2
  %1224 = load i16, ptr %1223, align 2, !tbaa !86
  %1225 = icmp ult i16 %1224, 16
  br i1 %1225, label %1226, label %1236

1226:                                             ; preds = %1215
  %1227 = zext nneg i8 %1221 to i64
  %1228 = lshr i64 %1219, %1227
  %1229 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1220, i32 %1222), !nosanitize !47
  %1230 = extractvalue { i32, i1 } %1229, 0, !nosanitize !47
  %1231 = extractvalue { i32, i1 } %1229, 1, !nosanitize !47
  br i1 %1231, label %1232, label %1233, !prof !48, !nosanitize !47

1232:                                             ; preds = %1226
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1233:                                             ; preds = %1226
  %1234 = icmp eq i64 %1176, 4294967295
  br i1 %1234, label %1235, label %1419, !prof !48, !nosanitize !47

1235:                                             ; preds = %1233
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1236:                                             ; preds = %1215
  %indvars2322.le = trunc nuw i64 %1176 to i32
  switch i16 %1224, label %1249 [
    i16 16, label %1243
    i16 17, label %1237
  ]

1237:                                             ; preds = %1236
  %1238 = add nuw nsw i32 %1222, 3
  %1239 = icmp ult i32 %1220, %1238
  br i1 %1239, label %1240, label %1320

1240:                                             ; preds = %1237
  %1241 = zext nneg i32 %1220 to i64
  %1242 = zext nneg i32 %1238 to i64
  br label %1299

1243:                                             ; preds = %1236
  %1244 = add nuw nsw i32 %1222, 2
  %1245 = icmp ult i32 %1220, %1244
  br i1 %1245, label %1246, label %1276

1246:                                             ; preds = %1243
  %1247 = zext nneg i32 %1220 to i64
  %1248 = zext nneg i32 %1244 to i64
  br label %1255

1249:                                             ; preds = %1236
  %1250 = add nuw nsw i32 %1222, 7
  %1251 = icmp ult i32 %1220, %1250
  br i1 %1251, label %1252, label %1357

1252:                                             ; preds = %1249
  %1253 = zext nneg i32 %1220 to i64
  %1254 = zext nneg i32 %1250 to i64
  br label %1336

1255:                                             ; preds = %1268, %1246
  %1256 = phi i64 [ %1247, %1246 ], [ %1272, %1268 ]
  %1257 = phi i64 [ %1219, %1246 ], [ %1269, %1268 ]
  %1258 = phi i32 [ %1218, %1246 ], [ %1271, %1268 ]
  %1259 = phi ptr [ %1217, %1246 ], [ %1270, %1268 ]
  %1260 = icmp eq i32 %1258, 0
  br i1 %1260, label %2356, label %1261

1261:                                             ; preds = %1255
  %1262 = load i8, ptr %1259, align 1, !tbaa !44
  %1263 = zext i8 %1262 to i64
  %1264 = shl i64 %1263, %1256
  %1265 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1257, i64 %1264), !nosanitize !47
  %1266 = extractvalue { i64, i1 } %1265, 1, !nosanitize !47
  br i1 %1266, label %1267, label %1268, !prof !48, !nosanitize !47

1267:                                             ; preds = %1261
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1268:                                             ; preds = %1261
  %1269 = extractvalue { i64, i1 } %1265, 0, !nosanitize !47
  %1270 = getelementptr inbounds nuw i8, ptr %1259, i64 1
  %1271 = add i32 %1258, -1
  %1272 = add nuw nsw i64 %1256, 8
  %1273 = icmp samesign ult i64 %1272, %1248
  br i1 %1273, label %1255, label %1274, !llvm.loop !92

1274:                                             ; preds = %1268
  %1275 = trunc nuw nsw i64 %1272 to i32
  br label %1276

1276:                                             ; preds = %1274, %1243
  %1277 = phi ptr [ %1217, %1243 ], [ %1270, %1274 ]
  %1278 = phi i32 [ %1218, %1243 ], [ %1271, %1274 ]
  %1279 = phi i64 [ %1219, %1243 ], [ %1269, %1274 ]
  %1280 = phi i32 [ %1220, %1243 ], [ %1275, %1274 ]
  %1281 = zext nneg i8 %1221 to i64
  %1282 = lshr i64 %1279, %1281
  %1283 = sub nuw i32 %1280, %1222
  %1284 = icmp eq i64 %1176, 0
  br i1 %1284, label %1285, label %1286

1285:                                             ; preds = %1276
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2265

1286:                                             ; preds = %1276
  %1287 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1283, i32 2), !nosanitize !47
  %1288 = extractvalue { i32, i1 } %1287, 1, !nosanitize !47
  br i1 %1288, label %1289, label %1290, !prof !48, !nosanitize !47

1289:                                             ; preds = %1286
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1290:                                             ; preds = %1286
  %1291 = trunc i64 %1282 to i32
  %1292 = and i32 %1291, 3
  %1293 = add nuw nsw i32 %1292, 3
  %1294 = add nuw nsw i64 %1176, 4294967295
  %1295 = and i64 %1294, 4294967295
  %1296 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1295
  %1297 = load i16, ptr %1296, align 2, !tbaa !86
  %1298 = lshr i64 %1282, 2
  br label %1373

1299:                                             ; preds = %1312, %1240
  %1300 = phi i64 [ %1241, %1240 ], [ %1316, %1312 ]
  %1301 = phi i64 [ %1219, %1240 ], [ %1313, %1312 ]
  %1302 = phi i32 [ %1218, %1240 ], [ %1315, %1312 ]
  %1303 = phi ptr [ %1217, %1240 ], [ %1314, %1312 ]
  %1304 = icmp eq i32 %1302, 0
  br i1 %1304, label %2361, label %1305

1305:                                             ; preds = %1299
  %1306 = load i8, ptr %1303, align 1, !tbaa !44
  %1307 = zext i8 %1306 to i64
  %1308 = shl i64 %1307, %1300
  %1309 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1301, i64 %1308), !nosanitize !47
  %1310 = extractvalue { i64, i1 } %1309, 1, !nosanitize !47
  br i1 %1310, label %1311, label %1312, !prof !48, !nosanitize !47

1311:                                             ; preds = %1305
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1312:                                             ; preds = %1305
  %1313 = extractvalue { i64, i1 } %1309, 0, !nosanitize !47
  %1314 = getelementptr inbounds nuw i8, ptr %1303, i64 1
  %1315 = add i32 %1302, -1
  %1316 = add nuw nsw i64 %1300, 8
  %1317 = icmp samesign ult i64 %1316, %1242
  br i1 %1317, label %1299, label %1318, !llvm.loop !93

1318:                                             ; preds = %1312
  %1319 = trunc nuw nsw i64 %1316 to i32
  br label %1320

1320:                                             ; preds = %1318, %1237
  %1321 = phi ptr [ %1217, %1237 ], [ %1314, %1318 ]
  %1322 = phi i32 [ %1218, %1237 ], [ %1315, %1318 ]
  %1323 = phi i64 [ %1219, %1237 ], [ %1313, %1318 ]
  %1324 = phi i32 [ %1220, %1237 ], [ %1319, %1318 ]
  %1325 = sub nuw i32 %1324, %1222
  %1326 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1325, i32 3), !nosanitize !47
  %1327 = extractvalue { i32, i1 } %1326, 1, !nosanitize !47
  br i1 %1327, label %1328, label %1329, !prof !48, !nosanitize !47

1328:                                             ; preds = %1320
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1329:                                             ; preds = %1320
  %1330 = zext nneg i8 %1221 to i64
  %1331 = lshr i64 %1323, %1330
  %1332 = trunc i64 %1331 to i32
  %1333 = and i32 %1332, 7
  %1334 = add nuw nsw i32 %1333, 3
  %1335 = lshr i64 %1331, 3
  br label %1373

1336:                                             ; preds = %1349, %1252
  %1337 = phi i64 [ %1253, %1252 ], [ %1353, %1349 ]
  %1338 = phi i64 [ %1219, %1252 ], [ %1350, %1349 ]
  %1339 = phi i32 [ %1218, %1252 ], [ %1352, %1349 ]
  %1340 = phi ptr [ %1217, %1252 ], [ %1351, %1349 ]
  %1341 = icmp eq i32 %1339, 0
  br i1 %1341, label %2351, label %1342

1342:                                             ; preds = %1336
  %1343 = load i8, ptr %1340, align 1, !tbaa !44
  %1344 = zext i8 %1343 to i64
  %1345 = shl i64 %1344, %1337
  %1346 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1338, i64 %1345), !nosanitize !47
  %1347 = extractvalue { i64, i1 } %1346, 1, !nosanitize !47
  br i1 %1347, label %1348, label %1349, !prof !48, !nosanitize !47

1348:                                             ; preds = %1342
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1349:                                             ; preds = %1342
  %1350 = extractvalue { i64, i1 } %1346, 0, !nosanitize !47
  %1351 = getelementptr inbounds nuw i8, ptr %1340, i64 1
  %1352 = add i32 %1339, -1
  %1353 = add nuw nsw i64 %1337, 8
  %1354 = icmp samesign ult i64 %1353, %1254
  br i1 %1354, label %1336, label %1355, !llvm.loop !94

1355:                                             ; preds = %1349
  %1356 = trunc nuw nsw i64 %1353 to i32
  br label %1357

1357:                                             ; preds = %1355, %1249
  %1358 = phi ptr [ %1217, %1249 ], [ %1351, %1355 ]
  %1359 = phi i32 [ %1218, %1249 ], [ %1352, %1355 ]
  %1360 = phi i64 [ %1219, %1249 ], [ %1350, %1355 ]
  %1361 = phi i32 [ %1220, %1249 ], [ %1356, %1355 ]
  %1362 = sub nuw i32 %1361, %1222
  %1363 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1362, i32 7), !nosanitize !47
  %1364 = extractvalue { i32, i1 } %1363, 1, !nosanitize !47
  br i1 %1364, label %1365, label %1366, !prof !48, !nosanitize !47

1365:                                             ; preds = %1357
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1366:                                             ; preds = %1357
  %1367 = zext nneg i8 %1221 to i64
  %1368 = lshr i64 %1360, %1367
  %1369 = trunc i64 %1368 to i32
  %1370 = and i32 %1369, 127
  %1371 = add nuw nsw i32 %1370, 11
  %1372 = lshr i64 %1368, 7
  br label %1373

1373:                                             ; preds = %1366, %1329, %1290
  %1374 = phi ptr [ %1277, %1290 ], [ %1321, %1329 ], [ %1358, %1366 ]
  %1375 = phi i32 [ %1278, %1290 ], [ %1322, %1329 ], [ %1359, %1366 ]
  %1376 = phi i64 [ %1298, %1290 ], [ %1335, %1329 ], [ %1372, %1366 ]
  %1377 = phi { i32, i1 } [ %1287, %1290 ], [ %1326, %1329 ], [ %1363, %1366 ]
  %1378 = phi i32 [ %1293, %1290 ], [ %1334, %1329 ], [ %1371, %1366 ]
  %1379 = phi i16 [ %1297, %1290 ], [ 0, %1329 ], [ 0, %1366 ]
  %1380 = extractvalue { i32, i1 } %1377, 0
  %1381 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %indvars2322.le, i32 %1378), !nosanitize !47
  %1382 = extractvalue { i32, i1 } %1381, 1, !nosanitize !47
  br i1 %1382, label %1383, label %1384, !prof !48, !nosanitize !47

1383:                                             ; preds = %1373
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1384:                                             ; preds = %1373
  %1385 = extractvalue { i32, i1 } %1381, 0, !nosanitize !47
  %1386 = icmp ugt i32 %1385, %1159
  br i1 %1386, label %1399, label %1387

1387:                                             ; preds = %1384
  %1388 = and i64 %1176, 4294967295
  %1389 = icmp eq i64 %1388, 4294967295
  br i1 %1389, label %._crit_edge4851, label %.lr.ph4850, !prof !91, !nosanitize !47

.lr.ph4850:                                       ; preds = %1387
  %1390 = add nsw i32 %1378, -1
  %1391 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %1390, 0
  %1392 = and i64 %1176, 1
  %lcmp.mod6098.not.not = icmp eq i64 %1392, 0
  br i1 %lcmp.mod6098.not.not, label %.prol.preheader, label %.prol.loopexit, !prof !91

.prol.preheader:                                  ; preds = %.lr.ph4850
  %1393 = or disjoint i64 %1388, 1
  %1394 = trunc nuw i64 %1393 to i32
  store i32 %1394, ptr %60, align 4, !tbaa !85
  %1395 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1388
  store i16 %1379, ptr %1395, align 2, !tbaa !86
  %1396 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1390, i32 1), !nosanitize !47
  %1397 = extractvalue { i32, i1 } %1396, 1, !nosanitize !47
  br i1 %1397, label %1401, label %.prol.loopexit, !prof !95, !llvm.loop !96, !nosanitize !47

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph4850
  %.unr6100 = phi { i32, i1 } [ %1391, %.lr.ph4850 ], [ %1396, %.prol.preheader ]
  %.unr6101 = phi i64 [ %1388, %.lr.ph4850 ], [ %1393, %.prol.preheader ]
  %1398 = icmp eq i64 %1388, 4294967294
  br i1 %1398, label %._crit_edge4851, label %.lr.ph4850.new, !prof !91

1399:                                             ; preds = %1384
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2265

.loopexit6102:                                    ; preds = %1402, %.lr.ph4850.new
  %1400 = phi i32 [ %1405, %1402 ], [ %1415, %.lr.ph4850.new ]
  store i32 %1400, ptr %60, align 4, !tbaa !85
  br label %1401

1401:                                             ; preds = %.loopexit6102, %.prol.preheader
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1402:                                             ; preds = %.lr.ph4850.new
  %1403 = extractvalue { i32, i1 } %1417, 0
  %1404 = add nuw nsw i64 %1412, 2
  %1405 = trunc nuw i64 %1404 to i32
  %1406 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1414
  store i16 %1379, ptr %1406, align 2, !tbaa !86
  %1407 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1403, i32 1), !nosanitize !47
  %1408 = extractvalue { i32, i1 } %1407, 1, !nosanitize !47
  br i1 %1408, label %.loopexit6102, label %1409, !prof !95, !llvm.loop !96, !nosanitize !47

1409:                                             ; preds = %1402
  %1410 = icmp eq i64 %1404, 4294967295
  br i1 %1410, label %._crit_edge4851.loopexit.unr-lcssa, label %.lr.ph4850.new, !prof !95, !llvm.loop !97, !nosanitize !47

._crit_edge4851.loopexit.unr-lcssa:               ; preds = %1409
  store i32 %1405, ptr %60, align 4, !tbaa !85
  br label %._crit_edge4851

._crit_edge4851:                                  ; preds = %._crit_edge4851.loopexit.unr-lcssa, %.prol.loopexit, %1387
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

.lr.ph4850.new:                                   ; preds = %.prol.loopexit, %1409
  %1411 = phi { i32, i1 } [ %1407, %1409 ], [ %.unr6100, %.prol.loopexit ]
  %1412 = phi i64 [ %1404, %1409 ], [ %.unr6101, %.prol.loopexit ]
  %1413 = extractvalue { i32, i1 } %1411, 0
  %1414 = add nuw nsw i64 %1412, 1
  %1415 = trunc nuw i64 %1414 to i32
  %1416 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1412
  store i16 %1379, ptr %1416, align 2, !tbaa !86
  %1417 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1413, i32 1), !nosanitize !47
  %1418 = extractvalue { i32, i1 } %1417, 1, !nosanitize !47
  br i1 %1418, label %.loopexit6102, label %1402, !prof !95, !llvm.loop !96, !nosanitize !47

1419:                                             ; preds = %1233
  %1420 = add i64 %1176, 1
  %indvars = trunc nuw i64 %1420 to i32
  store i32 %indvars, ptr %60, align 4, !tbaa !85
  %1421 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1176
  store i16 %1224, ptr %1421, align 2, !tbaa !86
  %1422 = icmp eq i64 %1420, %1162
  br i1 %1422, label %.loopexit161, label %1171

.loopexit161:                                     ; preds = %1419, %1158
  %1423 = phi i32 [ %1152, %1158 ], [ %1230, %1419 ]
  %1424 = phi i64 [ %1151, %1158 ], [ %1228, %1419 ]
  %1425 = phi i32 [ %1150, %1158 ], [ %1218, %1419 ]
  %1426 = phi ptr [ %1149, %1158 ], [ %1217, %1419 ]
  %1427 = load i16, ptr %68, align 8, !tbaa !86
  %1428 = icmp eq i16 %1427, 0
  br i1 %1428, label %1429, label %1430

1429:                                             ; preds = %.loopexit161
  store ptr @.str.11, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2265

1430:                                             ; preds = %.loopexit161
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 9, ptr %66, align 8, !tbaa !90
  %1431 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %61, i32 noundef %1154, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #12
  %1432 = icmp eq i32 %1431, 0
  br i1 %1432, label %1434, label %1433

1433:                                             ; preds = %1430
  store ptr @.str.12, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2265

1434:                                             ; preds = %1430
  %1435 = load ptr, ptr %63, align 8, !tbaa !33
  store ptr %1435, ptr %64, align 8, !tbaa !34
  store i32 6, ptr %69, align 4, !tbaa !99
  %1436 = load i32, ptr %57, align 4, !tbaa !82
  %1437 = zext i32 %1436 to i64
  %1438 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1437
  %1439 = load i32, ptr %58, align 8, !tbaa !83
  %1440 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %1438, i32 noundef %1439, ptr noundef nonnull %63, ptr noundef nonnull %69, ptr noundef nonnull %67) #12
  %1441 = icmp eq i32 %1440, 0
  br i1 %1441, label %1443, label %1442

1442:                                             ; preds = %1434
  store ptr @.str.13, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2265

1443:                                             ; preds = %1434
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %.loopexit162, label %1444

1444:                                             ; preds = %1443, %88
  %1445 = phi ptr [ %1426, %1443 ], [ %90, %88 ]
  %1446 = phi i32 [ %1425, %1443 ], [ %92, %88 ]
  %1447 = phi i64 [ %1424, %1443 ], [ %94, %88 ]
  %1448 = phi i32 [ %1423, %1443 ], [ %95, %88 ]
  %1449 = phi i32 [ 0, %1443 ], [ %97, %88 ]
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %1450

1450:                                             ; preds = %1444, %88
  %1451 = phi ptr [ %1445, %1444 ], [ %90, %88 ]
  %1452 = phi i32 [ %1446, %1444 ], [ %92, %88 ]
  %1453 = phi i64 [ %1447, %1444 ], [ %94, %88 ]
  %1454 = phi i32 [ %1448, %1444 ], [ %95, %88 ]
  %1455 = phi i32 [ %1449, %1444 ], [ %97, %88 ]
  %1456 = icmp ugt i32 %1452, 5
  %1457 = icmp ugt i32 %93, 257
  %1458 = select i1 %1456, i1 %1457, i1 false
  br i1 %1458, label %1459, label %1469

1459:                                             ; preds = %1450
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %93, ptr %41, align 8, !tbaa !52
  store ptr %1451, ptr %0, align 8, !tbaa !50
  store i32 %1452, ptr %43, align 8, !tbaa !51
  store i64 %1453, ptr %45, align 8, !tbaa !31
  store i32 %1454, ptr %47, align 8, !tbaa !32
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %96) #12
  %1460 = load ptr, ptr %26, align 8, !tbaa !49
  %1461 = load i32, ptr %41, align 8, !tbaa !52
  %1462 = load ptr, ptr %0, align 8, !tbaa !50
  %1463 = load i32, ptr %43, align 8, !tbaa !51
  %1464 = load i64, ptr %45, align 8, !tbaa !31
  %1465 = load i32, ptr %47, align 8, !tbaa !32
  %1466 = load i32, ptr %21, align 8, !tbaa !20
  %1467 = icmp eq i32 %1466, 16191
  br i1 %1467, label %1468, label %2265

1468:                                             ; preds = %1459
  store i32 -1, ptr %71, align 4, !tbaa !37
  br label %2265

1469:                                             ; preds = %1450
  store i32 0, ptr %71, align 4, !tbaa !37
  %1470 = load i32, ptr %66, align 8, !tbaa !90
  %1471 = shl nsw i32 -1, %1470
  %1472 = xor i32 %1471, -1
  %1473 = load ptr, ptr %65, align 8, !tbaa !35
  %1474 = trunc i64 %1453 to i32
  %1475 = and i32 %1472, %1474
  %1476 = zext nneg i32 %1475 to i64
  %1477 = getelementptr inbounds nuw [4 x i8], ptr %1473, i64 %1476
  %1478 = getelementptr inbounds nuw i8, ptr %1477, i64 1
  %1479 = load i8, ptr %1478, align 1, !tbaa !44
  %1480 = zext i8 %1479 to i32
  %1481 = icmp ult i32 %1454, %1480
  br i1 %1481, label %1482, label %1514

1482:                                             ; preds = %1469
  %1483 = icmp eq i32 %1452, 0
  br i1 %1483, label %._crit_edge4731, label %.lr.ph4730

.lr.ph4730:                                       ; preds = %1482
  %1484 = zext nneg i32 %1454 to i64
  br label %1487

1485:                                             ; preds = %1498
  %1486 = icmp eq i32 %1501, 0
  br i1 %1486, label %._crit_edge4731, label %1487

1487:                                             ; preds = %.lr.ph4730, %1485
  %1488 = phi ptr [ %1451, %.lr.ph4730 ], [ %1500, %1485 ]
  %1489 = phi i32 [ %1452, %.lr.ph4730 ], [ %1501, %1485 ]
  %1490 = phi i64 [ %1453, %.lr.ph4730 ], [ %1499, %1485 ]
  %1491 = phi i64 [ %1484, %.lr.ph4730 ], [ %1502, %1485 ]
  %1492 = load i8, ptr %1488, align 1, !tbaa !44
  %1493 = zext i8 %1492 to i64
  %1494 = shl i64 %1493, %1491
  %1495 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1490, i64 %1494), !nosanitize !47
  %1496 = extractvalue { i64, i1 } %1495, 1, !nosanitize !47
  br i1 %1496, label %1497, label %1498, !prof !48, !nosanitize !47

1497:                                             ; preds = %1487
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1498:                                             ; preds = %1487
  %1499 = extractvalue { i64, i1 } %1495, 0, !nosanitize !47
  %1500 = getelementptr inbounds nuw i8, ptr %1488, i64 1
  %1501 = add i32 %1489, -1
  %1502 = add nuw nsw i64 %1491, 8
  %1503 = trunc i64 %1499 to i32
  %1504 = and i32 %1503, %1472
  %1505 = zext nneg i32 %1504 to i64
  %1506 = getelementptr inbounds nuw [4 x i8], ptr %1473, i64 %1505
  %1507 = getelementptr inbounds nuw i8, ptr %1506, i64 1
  %1508 = load i8, ptr %1507, align 1, !tbaa !44
  %1509 = zext i8 %1508 to i64
  %1510 = icmp samesign ult i64 %1502, %1509
  br i1 %1510, label %1485, label %1511

1511:                                             ; preds = %1498
  %1512 = zext i8 %1508 to i32
  %1513 = trunc nuw nsw i64 %1502 to i32
  br label %1514

1514:                                             ; preds = %1511, %1469
  %1515 = phi ptr [ %1477, %1469 ], [ %1506, %1511 ]
  %1516 = phi ptr [ %1451, %1469 ], [ %1500, %1511 ]
  %1517 = phi i32 [ %1452, %1469 ], [ %1501, %1511 ]
  %1518 = phi i64 [ %1453, %1469 ], [ %1499, %1511 ]
  %1519 = phi i32 [ %1454, %1469 ], [ %1513, %1511 ]
  %1520 = phi i8 [ %1479, %1469 ], [ %1508, %1511 ]
  %1521 = phi i32 [ %1480, %1469 ], [ %1512, %1511 ]
  %1522 = getelementptr inbounds nuw i8, ptr %1515, i64 2
  %1523 = load i16, ptr %1522, align 2, !tbaa !86
  %1524 = load i8, ptr %1515, align 2, !tbaa !44
  %1525 = add i8 %1524, -1
  %1526 = icmp ult i8 %1525, 15
  br i1 %1526, label %1527, label %1592

1527:                                             ; preds = %1514
  %1528 = zext nneg i8 %1524 to i32
  %1529 = add nuw nsw i32 %1521, %1528
  %1530 = shl nsw i32 -1, %1529
  %1531 = xor i32 %1530, -1
  %1532 = zext i16 %1523 to i32
  %1533 = trunc i64 %1518 to i32
  %1534 = and i32 %1531, %1533
  %1535 = lshr i32 %1534, %1521
  %1536 = add nuw i32 %1535, %1532
  %1537 = zext i32 %1536 to i64
  %1538 = getelementptr inbounds nuw [4 x i8], ptr %1473, i64 %1537
  %1539 = getelementptr inbounds nuw i8, ptr %1538, i64 1
  %1540 = load i8, ptr %1539, align 1, !tbaa !44
  %1541 = zext i8 %1540 to i32
  %1542 = add nuw nsw i32 %1521, %1541
  %1543 = icmp ugt i32 %1542, %1519
  br i1 %1543, label %1544, label %1579

1544:                                             ; preds = %1527
  %1545 = icmp eq i32 %1517, 0
  br i1 %1545, label %._crit_edge4751, label %.lr.ph4750

.lr.ph4750:                                       ; preds = %1544
  %1546 = zext nneg i32 %1519 to i64
  br label %1549

1547:                                             ; preds = %1560
  %1548 = icmp eq i32 %1563, 0
  br i1 %1548, label %._crit_edge4751, label %1549

1549:                                             ; preds = %.lr.ph4750, %1547
  %1550 = phi ptr [ %1516, %.lr.ph4750 ], [ %1562, %1547 ]
  %1551 = phi i32 [ %1517, %.lr.ph4750 ], [ %1563, %1547 ]
  %1552 = phi i64 [ %1518, %.lr.ph4750 ], [ %1561, %1547 ]
  %1553 = phi i64 [ %1546, %.lr.ph4750 ], [ %1564, %1547 ]
  %1554 = load i8, ptr %1550, align 1, !tbaa !44
  %1555 = zext i8 %1554 to i64
  %1556 = shl i64 %1555, %1553
  %1557 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1552, i64 %1556), !nosanitize !47
  %1558 = extractvalue { i64, i1 } %1557, 1, !nosanitize !47
  br i1 %1558, label %1559, label %1560, !prof !48, !nosanitize !47

1559:                                             ; preds = %1549
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1560:                                             ; preds = %1549
  %1561 = extractvalue { i64, i1 } %1557, 0, !nosanitize !47
  %1562 = getelementptr inbounds nuw i8, ptr %1550, i64 1
  %1563 = add i32 %1551, -1
  %1564 = add nuw nsw i64 %1553, 8
  %1565 = trunc i64 %1561 to i32
  %1566 = and i32 %1565, %1531
  %1567 = lshr i32 %1566, %1521
  %1568 = add nuw i32 %1567, %1532
  %1569 = zext i32 %1568 to i64
  %1570 = getelementptr inbounds nuw [4 x i8], ptr %1473, i64 %1569
  %1571 = getelementptr inbounds nuw i8, ptr %1570, i64 1
  %1572 = load i8, ptr %1571, align 1, !tbaa !44
  %1573 = zext i8 %1572 to i32
  %1574 = add nuw nsw i32 %1521, %1573
  %1575 = zext nneg i32 %1574 to i64
  %1576 = icmp samesign ult i64 %1564, %1575
  br i1 %1576, label %1547, label %1577

1577:                                             ; preds = %1560
  %1578 = trunc nuw nsw i64 %1564 to i32
  br label %1579

1579:                                             ; preds = %1577, %1527
  %1580 = phi ptr [ %1538, %1527 ], [ %1570, %1577 ]
  %1581 = phi ptr [ %1516, %1527 ], [ %1562, %1577 ]
  %1582 = phi i32 [ %1517, %1527 ], [ %1563, %1577 ]
  %1583 = phi i64 [ %1518, %1527 ], [ %1561, %1577 ]
  %1584 = phi i32 [ %1519, %1527 ], [ %1578, %1577 ]
  %1585 = phi i8 [ %1540, %1527 ], [ %1572, %1577 ]
  %1586 = load i8, ptr %1580, align 2, !tbaa !44
  %1587 = getelementptr inbounds nuw i8, ptr %1580, i64 2
  %1588 = load i16, ptr %1587, align 2, !tbaa !86
  %1589 = sub nuw i32 %1584, %1521
  %1590 = zext nneg i8 %1520 to i64
  %1591 = lshr i64 %1583, %1590
  store i32 %1521, ptr %71, align 4, !tbaa !37
  br label %1592

1592:                                             ; preds = %1579, %1514
  %1593 = phi i32 [ %1521, %1579 ], [ 0, %1514 ]
  %1594 = phi ptr [ %1581, %1579 ], [ %1516, %1514 ]
  %1595 = phi i32 [ %1582, %1579 ], [ %1517, %1514 ]
  %1596 = phi i64 [ %1591, %1579 ], [ %1518, %1514 ]
  %1597 = phi i32 [ %1589, %1579 ], [ %1519, %1514 ]
  %1598 = phi i16 [ %1588, %1579 ], [ %1523, %1514 ]
  %1599 = phi i8 [ %1585, %1579 ], [ %1520, %1514 ]
  %1600 = phi i8 [ %1586, %1579 ], [ %1524, %1514 ]
  %1601 = zext i8 %1599 to i32
  %1602 = zext nneg i8 %1599 to i64
  %1603 = lshr i64 %1596, %1602
  %1604 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1597, i32 %1601), !nosanitize !47
  %1605 = extractvalue { i32, i1 } %1604, 0, !nosanitize !47
  %1606 = extractvalue { i32, i1 } %1604, 1, !nosanitize !47
  br i1 %1606, label %1607, label %1608, !prof !48, !nosanitize !47

1607:                                             ; preds = %1592
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1608:                                             ; preds = %1592
  %1609 = add nuw nsw i32 %1593, %1601
  store i32 %1609, ptr %71, align 4, !tbaa !37
  %1610 = zext i16 %1598 to i32
  store i32 %1610, ptr %56, align 4, !tbaa !67
  %1611 = zext i8 %1600 to i32
  %1612 = icmp eq i8 %1600, 0
  br i1 %1612, label %1613, label %1614

1613:                                             ; preds = %1608
  store i32 16205, ptr %21, align 8, !tbaa !20
  br label %2265

1614:                                             ; preds = %1608
  %1615 = and i32 %1611, 32
  %1616 = icmp eq i32 %1615, 0
  br i1 %1616, label %1618, label %1617

1617:                                             ; preds = %1614
  store i32 -1, ptr %71, align 4, !tbaa !37
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2265

1618:                                             ; preds = %1614
  %1619 = and i32 %1611, 64
  %1620 = icmp eq i32 %1619, 0
  br i1 %1620, label %1622, label %1621

1621:                                             ; preds = %1618
  store ptr @.str.14, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2265

1622:                                             ; preds = %1618
  %1623 = and i32 %1611, 15
  store i32 %1623, ptr %72, align 4, !tbaa !53
  store i32 16201, ptr %21, align 8, !tbaa !20
  br label %1624

1624:                                             ; preds = %1622, %101
  %1625 = phi i32 [ %1623, %1622 ], [ %102, %101 ]
  %1626 = phi ptr [ %1594, %1622 ], [ %90, %101 ]
  %1627 = phi i32 [ %1595, %1622 ], [ %92, %101 ]
  %1628 = phi i64 [ %1603, %1622 ], [ %94, %101 ]
  %1629 = phi i32 [ %1605, %1622 ], [ %95, %101 ]
  %1630 = phi i32 [ %1455, %1622 ], [ %97, %101 ]
  %1631 = icmp eq i32 %1625, 0
  br i1 %1631, label %1684, label %1632

1632:                                             ; preds = %1624
  %1633 = icmp ult i32 %1629, %1625
  br i1 %1633, label %1634, label %.loopexit160

1634:                                             ; preds = %1632
  %1635 = icmp eq i32 %1627, 0
  br i1 %1635, label %._crit_edge4771, label %.lr.ph4770

.lr.ph4770:                                       ; preds = %1634
  %1636 = zext i32 %1629 to i64
  br label %1639

1637:                                             ; preds = %1650
  %1638 = icmp eq i32 %1653, 0
  br i1 %1638, label %._crit_edge4771, label %1639, !llvm.loop !100

1639:                                             ; preds = %.lr.ph4770, %1637
  %1640 = phi ptr [ %1626, %.lr.ph4770 ], [ %1652, %1637 ]
  %1641 = phi i32 [ %1627, %.lr.ph4770 ], [ %1653, %1637 ]
  %1642 = phi i64 [ %1628, %.lr.ph4770 ], [ %1651, %1637 ]
  %1643 = phi i64 [ %1636, %.lr.ph4770 ], [ %1654, %1637 ]
  %1644 = load i8, ptr %1640, align 1, !tbaa !44
  %1645 = zext i8 %1644 to i64
  %1646 = shl i64 %1645, %1643
  %1647 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1642, i64 %1646), !nosanitize !47
  %1648 = extractvalue { i64, i1 } %1647, 1, !nosanitize !47
  br i1 %1648, label %1649, label %1650, !prof !48, !nosanitize !47

1649:                                             ; preds = %1639
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1650:                                             ; preds = %1639
  %1651 = extractvalue { i64, i1 } %1647, 0, !nosanitize !47
  %1652 = getelementptr inbounds nuw i8, ptr %1640, i64 1
  %1653 = add i32 %1641, -1
  %1654 = add nuw nsw i64 %1643, 8
  %1655 = trunc nuw i64 %1654 to i32
  %1656 = icmp ugt i32 %1625, %1655
  br i1 %1656, label %1637, label %.loopexit160, !llvm.loop !100

.loopexit160:                                     ; preds = %1650, %1632
  %1657 = phi ptr [ %1626, %1632 ], [ %1652, %1650 ]
  %1658 = phi i32 [ %1627, %1632 ], [ %1653, %1650 ]
  %1659 = phi i64 [ %1628, %1632 ], [ %1651, %1650 ]
  %1660 = phi i32 [ %1629, %1632 ], [ %1655, %1650 ]
  %1661 = shl nsw i32 -1, %1625
  %1662 = xor i32 %1661, -1
  %1663 = trunc i64 %1659 to i32
  %1664 = and i32 %1663, %1662
  %1665 = load i32, ptr %56, align 4, !tbaa !67
  %1666 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1665, i32 %1664), !nosanitize !47
  %1667 = extractvalue { i32, i1 } %1666, 1, !nosanitize !47
  br i1 %1667, label %1668, label %1669, !prof !48, !nosanitize !47

1668:                                             ; preds = %.loopexit160
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1669:                                             ; preds = %.loopexit160
  %1670 = extractvalue { i32, i1 } %1666, 0, !nosanitize !47
  store i32 %1670, ptr %56, align 4, !tbaa !67
  %1671 = zext nneg i32 %1625 to i64
  %1672 = lshr i64 %1659, %1671
  %1673 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1660, i32 %1625), !nosanitize !47
  %1674 = extractvalue { i32, i1 } %1673, 0, !nosanitize !47
  %1675 = extractvalue { i32, i1 } %1673, 1, !nosanitize !47
  br i1 %1675, label %1676, label %1677, !prof !48, !nosanitize !47

1676:                                             ; preds = %1669
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1677:                                             ; preds = %1669
  %1678 = load i32, ptr %71, align 4, !tbaa !37
  %1679 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1678, i32 %1625), !nosanitize !47
  %1680 = extractvalue { i32, i1 } %1679, 1, !nosanitize !47
  br i1 %1680, label %1681, label %1682, !prof !48, !nosanitize !47

1681:                                             ; preds = %1677
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1682:                                             ; preds = %1677
  %1683 = extractvalue { i32, i1 } %1679, 0, !nosanitize !47
  store i32 %1683, ptr %71, align 4, !tbaa !37
  br label %1684

1684:                                             ; preds = %1682, %1624
  %1685 = phi ptr [ %1657, %1682 ], [ %1626, %1624 ]
  %1686 = phi i32 [ %1658, %1682 ], [ %1627, %1624 ]
  %1687 = phi i64 [ %1672, %1682 ], [ %1628, %1624 ]
  %1688 = phi i32 [ %1674, %1682 ], [ %1629, %1624 ]
  %1689 = load i32, ptr %56, align 4, !tbaa !67
  store i32 %1689, ptr %73, align 8, !tbaa !101
  store i32 16202, ptr %21, align 8, !tbaa !20
  br label %1690

1690:                                             ; preds = %1684, %88
  %1691 = phi ptr [ %1685, %1684 ], [ %90, %88 ]
  %1692 = phi i32 [ %1686, %1684 ], [ %92, %88 ]
  %1693 = phi i64 [ %1687, %1684 ], [ %94, %88 ]
  %1694 = phi i32 [ %1688, %1684 ], [ %95, %88 ]
  %1695 = phi i32 [ %1630, %1684 ], [ %97, %88 ]
  %1696 = load i32, ptr %69, align 4, !tbaa !99
  %1697 = shl nsw i32 -1, %1696
  %1698 = xor i32 %1697, -1
  %1699 = load ptr, ptr %64, align 8, !tbaa !34
  %1700 = trunc i64 %1693 to i32
  %1701 = and i32 %1698, %1700
  %1702 = zext nneg i32 %1701 to i64
  %1703 = getelementptr inbounds nuw [4 x i8], ptr %1699, i64 %1702
  %1704 = getelementptr inbounds nuw i8, ptr %1703, i64 1
  %1705 = load i8, ptr %1704, align 1, !tbaa !44
  %1706 = zext i8 %1705 to i32
  %1707 = icmp ult i32 %1694, %1706
  br i1 %1707, label %1708, label %1740

1708:                                             ; preds = %1690
  %1709 = icmp eq i32 %1692, 0
  br i1 %1709, label %._crit_edge4791, label %.lr.ph4790

.lr.ph4790:                                       ; preds = %1708
  %1710 = zext nneg i32 %1694 to i64
  br label %1713

1711:                                             ; preds = %1724
  %1712 = icmp eq i32 %1727, 0
  br i1 %1712, label %._crit_edge4791, label %1713

1713:                                             ; preds = %.lr.ph4790, %1711
  %1714 = phi ptr [ %1691, %.lr.ph4790 ], [ %1726, %1711 ]
  %1715 = phi i32 [ %1692, %.lr.ph4790 ], [ %1727, %1711 ]
  %1716 = phi i64 [ %1693, %.lr.ph4790 ], [ %1725, %1711 ]
  %1717 = phi i64 [ %1710, %.lr.ph4790 ], [ %1728, %1711 ]
  %1718 = load i8, ptr %1714, align 1, !tbaa !44
  %1719 = zext i8 %1718 to i64
  %1720 = shl i64 %1719, %1717
  %1721 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1716, i64 %1720), !nosanitize !47
  %1722 = extractvalue { i64, i1 } %1721, 1, !nosanitize !47
  br i1 %1722, label %1723, label %1724, !prof !48, !nosanitize !47

1723:                                             ; preds = %1713
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1724:                                             ; preds = %1713
  %1725 = extractvalue { i64, i1 } %1721, 0, !nosanitize !47
  %1726 = getelementptr inbounds nuw i8, ptr %1714, i64 1
  %1727 = add i32 %1715, -1
  %1728 = add nuw nsw i64 %1717, 8
  %1729 = trunc i64 %1725 to i32
  %1730 = and i32 %1729, %1698
  %1731 = zext nneg i32 %1730 to i64
  %1732 = getelementptr inbounds nuw [4 x i8], ptr %1699, i64 %1731
  %1733 = getelementptr inbounds nuw i8, ptr %1732, i64 1
  %1734 = load i8, ptr %1733, align 1, !tbaa !44
  %1735 = zext i8 %1734 to i64
  %1736 = icmp samesign ult i64 %1728, %1735
  br i1 %1736, label %1711, label %1737

1737:                                             ; preds = %1724
  %1738 = zext i8 %1734 to i32
  %1739 = trunc nuw nsw i64 %1728 to i32
  br label %1740

1740:                                             ; preds = %1737, %1690
  %1741 = phi ptr [ %1703, %1690 ], [ %1732, %1737 ]
  %1742 = phi ptr [ %1691, %1690 ], [ %1726, %1737 ]
  %1743 = phi i32 [ %1692, %1690 ], [ %1727, %1737 ]
  %1744 = phi i64 [ %1693, %1690 ], [ %1725, %1737 ]
  %1745 = phi i32 [ %1694, %1690 ], [ %1739, %1737 ]
  %1746 = phi i8 [ %1705, %1690 ], [ %1734, %1737 ]
  %1747 = phi i32 [ %1706, %1690 ], [ %1738, %1737 ]
  %1748 = getelementptr inbounds nuw i8, ptr %1741, i64 2
  %1749 = load i16, ptr %1748, align 2, !tbaa !86
  %1750 = load i8, ptr %1741, align 2, !tbaa !44
  %1751 = icmp ult i8 %1750, 16
  br i1 %1751, label %1752, label %1823

1752:                                             ; preds = %1740
  %1753 = zext nneg i8 %1750 to i32
  %1754 = add nuw nsw i32 %1747, %1753
  %1755 = shl nsw i32 -1, %1754
  %1756 = xor i32 %1755, -1
  %1757 = zext i16 %1749 to i32
  %1758 = trunc i64 %1744 to i32
  %1759 = and i32 %1756, %1758
  %1760 = lshr i32 %1759, %1747
  %1761 = add nuw i32 %1760, %1757
  %1762 = zext i32 %1761 to i64
  %1763 = getelementptr inbounds nuw [4 x i8], ptr %1699, i64 %1762
  %1764 = getelementptr inbounds nuw i8, ptr %1763, i64 1
  %1765 = load i8, ptr %1764, align 1, !tbaa !44
  %1766 = zext i8 %1765 to i32
  %1767 = add nuw nsw i32 %1747, %1766
  %1768 = icmp ugt i32 %1767, %1745
  br i1 %1768, label %1769, label %1805

1769:                                             ; preds = %1752
  %1770 = icmp eq i32 %1743, 0
  br i1 %1770, label %._crit_edge4811, label %.lr.ph4810

.lr.ph4810:                                       ; preds = %1769
  %1771 = zext nneg i32 %1745 to i64
  br label %1774

1772:                                             ; preds = %1786
  %1773 = icmp eq i32 %1789, 0
  br i1 %1773, label %._crit_edge4811, label %1774

1774:                                             ; preds = %.lr.ph4810, %1772
  %1775 = phi ptr [ %1742, %.lr.ph4810 ], [ %1788, %1772 ]
  %1776 = phi i32 [ %1743, %.lr.ph4810 ], [ %1789, %1772 ]
  %1777 = phi i64 [ %1744, %.lr.ph4810 ], [ %1787, %1772 ]
  %1778 = phi i64 [ %1771, %.lr.ph4810 ], [ %1790, %1772 ]
  %1779 = load i8, ptr %1775, align 1, !tbaa !44
  %1780 = zext i8 %1779 to i64
  %1781 = shl i64 %1780, %1778
  %1782 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1777, i64 %1781), !nosanitize !47
  %1783 = extractvalue { i64, i1 } %1782, 1, !nosanitize !47
  br i1 %1783, label %1784, label %1786, !prof !48, !nosanitize !47

1784:                                             ; preds = %1774
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1785:                                             ; preds = %1838, %1805
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1786:                                             ; preds = %1774
  %1787 = extractvalue { i64, i1 } %1782, 0, !nosanitize !47
  %1788 = getelementptr inbounds nuw i8, ptr %1775, i64 1
  %1789 = add i32 %1776, -1
  %1790 = add nuw nsw i64 %1778, 8
  %1791 = trunc i64 %1787 to i32
  %1792 = and i32 %1791, %1756
  %1793 = lshr i32 %1792, %1747
  %1794 = add nuw i32 %1793, %1757
  %1795 = zext i32 %1794 to i64
  %1796 = getelementptr inbounds nuw [4 x i8], ptr %1699, i64 %1795
  %1797 = getelementptr inbounds nuw i8, ptr %1796, i64 1
  %1798 = load i8, ptr %1797, align 1, !tbaa !44
  %1799 = zext i8 %1798 to i32
  %1800 = add nuw nsw i32 %1747, %1799
  %1801 = zext nneg i32 %1800 to i64
  %1802 = icmp samesign ult i64 %1790, %1801
  br i1 %1802, label %1772, label %1803

1803:                                             ; preds = %1786
  %1804 = trunc nuw nsw i64 %1790 to i32
  br label %1805

1805:                                             ; preds = %1803, %1752
  %1806 = phi ptr [ %1763, %1752 ], [ %1796, %1803 ]
  %1807 = phi ptr [ %1742, %1752 ], [ %1788, %1803 ]
  %1808 = phi i32 [ %1743, %1752 ], [ %1789, %1803 ]
  %1809 = phi i64 [ %1744, %1752 ], [ %1787, %1803 ]
  %1810 = phi i32 [ %1745, %1752 ], [ %1804, %1803 ]
  %1811 = phi i8 [ %1765, %1752 ], [ %1798, %1803 ]
  %1812 = load i32, ptr %71, align 4, !tbaa !37
  %1813 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1812, i32 %1747), !nosanitize !47
  %1814 = extractvalue { i32, i1 } %1813, 1, !nosanitize !47
  br i1 %1814, label %1785, label %1815, !prof !48, !nosanitize !47

1815:                                             ; preds = %1805
  %1816 = getelementptr inbounds nuw i8, ptr %1806, i64 2
  %1817 = load i16, ptr %1816, align 2, !tbaa !86
  %1818 = load i8, ptr %1806, align 2, !tbaa !44
  %1819 = sub nuw i32 %1810, %1747
  %1820 = zext nneg i8 %1746 to i64
  %1821 = lshr i64 %1809, %1820
  %1822 = extractvalue { i32, i1 } %1813, 0, !nosanitize !47
  store i32 %1822, ptr %71, align 4, !tbaa !37
  br label %1823

1823:                                             ; preds = %1815, %1740
  %1824 = phi ptr [ %1807, %1815 ], [ %1742, %1740 ]
  %1825 = phi i32 [ %1808, %1815 ], [ %1743, %1740 ]
  %1826 = phi i64 [ %1821, %1815 ], [ %1744, %1740 ]
  %1827 = phi i32 [ %1819, %1815 ], [ %1745, %1740 ]
  %1828 = phi i16 [ %1817, %1815 ], [ %1749, %1740 ]
  %1829 = phi i8 [ %1811, %1815 ], [ %1746, %1740 ]
  %1830 = phi i8 [ %1818, %1815 ], [ %1750, %1740 ]
  %1831 = zext i8 %1829 to i32
  %1832 = zext nneg i8 %1829 to i64
  %1833 = lshr i64 %1826, %1832
  %1834 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1827, i32 %1831), !nosanitize !47
  %1835 = extractvalue { i32, i1 } %1834, 0, !nosanitize !47
  %1836 = extractvalue { i32, i1 } %1834, 1, !nosanitize !47
  br i1 %1836, label %1837, label %1838, !prof !48, !nosanitize !47

1837:                                             ; preds = %1823
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1838:                                             ; preds = %1823
  %1839 = load i32, ptr %71, align 4, !tbaa !37
  %1840 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1839, i32 %1831), !nosanitize !47
  %1841 = extractvalue { i32, i1 } %1840, 1, !nosanitize !47
  br i1 %1841, label %1785, label %1842, !prof !48, !nosanitize !47

1842:                                             ; preds = %1838
  %1843 = extractvalue { i32, i1 } %1840, 0, !nosanitize !47
  store i32 %1843, ptr %71, align 4, !tbaa !37
  %1844 = zext i8 %1830 to i32
  %1845 = and i32 %1844, 64
  %1846 = icmp eq i32 %1845, 0
  br i1 %1846, label %1848, label %1847

1847:                                             ; preds = %1842
  store ptr @.str.15, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2265

1848:                                             ; preds = %1842
  %1849 = zext i16 %1828 to i32
  store i32 %1849, ptr %74, align 8, !tbaa !102
  %1850 = and i32 %1844, 15
  store i32 %1850, ptr %72, align 4, !tbaa !53
  store i32 16203, ptr %21, align 8, !tbaa !20
  br label %1851

1851:                                             ; preds = %1848, %99
  %1852 = phi i32 [ %1850, %1848 ], [ %100, %99 ]
  %1853 = phi ptr [ %1824, %1848 ], [ %90, %99 ]
  %1854 = phi i32 [ %1825, %1848 ], [ %92, %99 ]
  %1855 = phi i64 [ %1833, %1848 ], [ %94, %99 ]
  %1856 = phi i32 [ %1835, %1848 ], [ %95, %99 ]
  %1857 = phi i32 [ %1695, %1848 ], [ %97, %99 ]
  %1858 = icmp eq i32 %1852, 0
  br i1 %1858, label %1911, label %1859

1859:                                             ; preds = %1851
  %1860 = icmp ult i32 %1856, %1852
  br i1 %1860, label %1861, label %.loopexit

1861:                                             ; preds = %1859
  %1862 = icmp eq i32 %1854, 0
  br i1 %1862, label %._crit_edge4831, label %.lr.ph4830

.lr.ph4830:                                       ; preds = %1861
  %1863 = zext i32 %1856 to i64
  br label %1866

1864:                                             ; preds = %1877
  %1865 = icmp eq i32 %1880, 0
  br i1 %1865, label %._crit_edge4831, label %1866, !llvm.loop !103

1866:                                             ; preds = %.lr.ph4830, %1864
  %1867 = phi ptr [ %1853, %.lr.ph4830 ], [ %1879, %1864 ]
  %1868 = phi i32 [ %1854, %.lr.ph4830 ], [ %1880, %1864 ]
  %1869 = phi i64 [ %1855, %.lr.ph4830 ], [ %1878, %1864 ]
  %1870 = phi i64 [ %1863, %.lr.ph4830 ], [ %1881, %1864 ]
  %1871 = load i8, ptr %1867, align 1, !tbaa !44
  %1872 = zext i8 %1871 to i64
  %1873 = shl i64 %1872, %1870
  %1874 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1869, i64 %1873), !nosanitize !47
  %1875 = extractvalue { i64, i1 } %1874, 1, !nosanitize !47
  br i1 %1875, label %1876, label %1877, !prof !48, !nosanitize !47

1876:                                             ; preds = %1866
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1877:                                             ; preds = %1866
  %1878 = extractvalue { i64, i1 } %1874, 0, !nosanitize !47
  %1879 = getelementptr inbounds nuw i8, ptr %1867, i64 1
  %1880 = add i32 %1868, -1
  %1881 = add nuw nsw i64 %1870, 8
  %1882 = trunc nuw i64 %1881 to i32
  %1883 = icmp ugt i32 %1852, %1882
  br i1 %1883, label %1864, label %.loopexit, !llvm.loop !103

.loopexit:                                        ; preds = %1877, %1859
  %1884 = phi ptr [ %1853, %1859 ], [ %1879, %1877 ]
  %1885 = phi i32 [ %1854, %1859 ], [ %1880, %1877 ]
  %1886 = phi i64 [ %1855, %1859 ], [ %1878, %1877 ]
  %1887 = phi i32 [ %1856, %1859 ], [ %1882, %1877 ]
  %1888 = shl nsw i32 -1, %1852
  %1889 = xor i32 %1888, -1
  %1890 = trunc i64 %1886 to i32
  %1891 = and i32 %1890, %1889
  %1892 = load i32, ptr %74, align 8, !tbaa !102
  %1893 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1892, i32 %1891), !nosanitize !47
  %1894 = extractvalue { i32, i1 } %1893, 1, !nosanitize !47
  br i1 %1894, label %1895, label %1896, !prof !48, !nosanitize !47

1895:                                             ; preds = %.loopexit
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1896:                                             ; preds = %.loopexit
  %1897 = extractvalue { i32, i1 } %1893, 0, !nosanitize !47
  store i32 %1897, ptr %74, align 8, !tbaa !102
  %1898 = zext nneg i32 %1852 to i64
  %1899 = lshr i64 %1886, %1898
  %1900 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1887, i32 %1852), !nosanitize !47
  %1901 = extractvalue { i32, i1 } %1900, 0, !nosanitize !47
  %1902 = extractvalue { i32, i1 } %1900, 1, !nosanitize !47
  br i1 %1902, label %1903, label %1904, !prof !48, !nosanitize !47

1903:                                             ; preds = %1896
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1904:                                             ; preds = %1896
  %1905 = load i32, ptr %71, align 4, !tbaa !37
  %1906 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1905, i32 %1852), !nosanitize !47
  %1907 = extractvalue { i32, i1 } %1906, 1, !nosanitize !47
  br i1 %1907, label %1908, label %1909, !prof !48, !nosanitize !47

1908:                                             ; preds = %1904
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1909:                                             ; preds = %1904
  %1910 = extractvalue { i32, i1 } %1906, 0, !nosanitize !47
  store i32 %1910, ptr %71, align 4, !tbaa !37
  br label %1911

1911:                                             ; preds = %1909, %1851
  %1912 = phi ptr [ %1884, %1909 ], [ %1853, %1851 ]
  %1913 = phi i32 [ %1885, %1909 ], [ %1854, %1851 ]
  %1914 = phi i64 [ %1899, %1909 ], [ %1855, %1851 ]
  %1915 = phi i32 [ %1901, %1909 ], [ %1856, %1851 ]
  store i32 16204, ptr %21, align 8, !tbaa !20
  br label %1916

1916:                                             ; preds = %1911, %88
  %1917 = phi ptr [ %1912, %1911 ], [ %90, %88 ]
  %1918 = phi i32 [ %1913, %1911 ], [ %92, %88 ]
  %1919 = phi i64 [ %1914, %1911 ], [ %94, %88 ]
  %1920 = phi i32 [ %1915, %1911 ], [ %95, %88 ]
  %1921 = phi i32 [ %1857, %1911 ], [ %97, %88 ]
  %1922 = icmp eq i32 %93, 0
  br i1 %1922, label %.loopexit162, label %1923

1923:                                             ; preds = %1916
  %1924 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %96, i32 %93), !nosanitize !47
  %1925 = extractvalue { i32, i1 } %1924, 0, !nosanitize !47
  %1926 = extractvalue { i32, i1 } %1924, 1, !nosanitize !47
  br i1 %1926, label %1927, label %1928, !prof !48, !nosanitize !47

1927:                                             ; preds = %1923
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1928:                                             ; preds = %1923
  %1929 = load i32, ptr %74, align 8, !tbaa !102
  %1930 = icmp ugt i32 %1929, %1925
  br i1 %1930, label %1931, label %1960

1931:                                             ; preds = %1928
  %1932 = sub nuw i32 %1929, %1925
  %1933 = load i32, ptr %75, align 8, !tbaa !39
  %1934 = icmp ugt i32 %1932, %1933
  br i1 %1934, label %1935, label %1939

1935:                                             ; preds = %1931
  %1936 = load i32, ptr %76, align 8, !tbaa !36
  %1937 = icmp eq i32 %1936, 0
  br i1 %1937, label %1939, label %1938

1938:                                             ; preds = %1935
  store ptr @.str.16, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2265

1939:                                             ; preds = %1935, %1931
  %1940 = load i32, ptr %77, align 4, !tbaa !40
  %1941 = icmp ugt i32 %1932, %1940
  br i1 %1941, label %1942, label %1950

1942:                                             ; preds = %1939
  %1943 = sub nuw i32 %1932, %1940
  %1944 = load i32, ptr %79, align 4, !tbaa !38
  %1945 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1944, i32 %1943), !nosanitize !47
  %1946 = extractvalue { i32, i1 } %1945, 1, !nosanitize !47
  br i1 %1946, label %1947, label %1948, !prof !48, !nosanitize !47

1947:                                             ; preds = %1942
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1948:                                             ; preds = %1942
  %1949 = extractvalue { i32, i1 } %1945, 0, !nosanitize !47
  br label %1952

1950:                                             ; preds = %1939
  %1951 = sub nuw i32 %1940, %1932
  br label %1952

1952:                                             ; preds = %1950, %1948
  %1953 = phi i32 [ %1951, %1950 ], [ %1949, %1948 ]
  %1954 = phi i32 [ %1932, %1950 ], [ %1943, %1948 ]
  %1955 = load ptr, ptr %78, align 8, !tbaa !41
  %1956 = zext i32 %1953 to i64
  %1957 = getelementptr inbounds nuw i8, ptr %1955, i64 %1956
  %1958 = load i32, ptr %56, align 4, !tbaa !67
  %1959 = call i32 @llvm.umin.i32(i32 %1954, i32 %1958)
  br label %1965

1960:                                             ; preds = %1928
  %1961 = zext i32 %1929 to i64
  %1962 = sub nsw i64 0, %1961
  %1963 = getelementptr inbounds i8, ptr %91, i64 %1962
  %1964 = load i32, ptr %56, align 4, !tbaa !67
  br label %1965

1965:                                             ; preds = %1960, %1952
  %1966 = phi i32 [ %1964, %1960 ], [ %1958, %1952 ]
  %1967 = phi i32 [ %1964, %1960 ], [ %1959, %1952 ]
  %1968 = phi ptr [ %1963, %1960 ], [ %1957, %1952 ]
  %1969 = ptrtoaddr ptr %1968 to i64
  %1970 = call i32 @llvm.umin.i32(i32 %1967, i32 %93)
  %1971 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %93, i32 %1970), !nosanitize !47
  %1972 = extractvalue { i32, i1 } %1971, 0, !nosanitize !47
  %1973 = extractvalue { i32, i1 } %1971, 1, !nosanitize !47
  br i1 %1973, label %1974, label %1975, !prof !48, !nosanitize !47

1974:                                             ; preds = %1965
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1975:                                             ; preds = %1965
  %1976 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1966, i32 %1970), !nosanitize !47
  %1977 = extractvalue { i32, i1 } %1976, 1, !nosanitize !47
  br i1 %1977, label %1978, label %1979, !prof !48, !nosanitize !47

1978:                                             ; preds = %1975
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1979:                                             ; preds = %1975
  %1980 = extractvalue { i32, i1 } %1976, 0, !nosanitize !47
  store i32 %1980, ptr %56, align 4, !tbaa !67
  %.not.not = icmp eq i32 %1970, 0
  br i1 %.not.not, label %.split2324.us, label %iter.check, !prof !48, !nosanitize !47

iter.check:                                       ; preds = %1979
  %1981 = call i32 @llvm.umin.i32(i32 %1967, i32 %93)
  %umin = zext i32 %1981 to i64
  %min.iters.check = icmp ult i32 %1981, 4
  %1982 = sub i64 %98, %1969
  %diff.check = icmp ult i64 %1982, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.split2324.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check4852 = icmp ult i32 %1981, 32
  br i1 %min.iters.check4852, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %umin, 28
  %n.vec = and i64 %umin, 4294967264
  %1983 = getelementptr i8, ptr %91, i64 %n.vec
  %.cast = trunc nuw i64 %n.vec to i32
  %1984 = sub i32 %1970, %.cast
  %1985 = getelementptr i8, ptr %1968, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %next.gep = getelementptr i8, ptr %91, i64 %index
  %next.gep4853 = getelementptr i8, ptr %1968, i64 %index
  %1986 = getelementptr i8, ptr %next.gep4853, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep4853, align 1, !tbaa !44
  %wide.load4854 = load <16 x i8>, ptr %1986, align 1, !tbaa !44
  %1987 = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !44
  store <16 x i8> %wide.load4854, ptr %1987, align 1, !tbaa !44
  %index.next = add nuw i64 %index, 32
  %1988 = icmp eq i64 %index.next, %n.vec
  br i1 %1988, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %umin
  br i1 %cmp.n, label %.loopexit4869, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.split2324.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec4858 = and i64 %umin, 4294967292
  %1989 = getelementptr i8, ptr %91, i64 %n.vec4858
  %.cast4859 = trunc nuw i64 %n.vec4858 to i32
  %1990 = sub i32 %1970, %.cast4859
  %1991 = getelementptr i8, ptr %1968, i64 %n.vec4858
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index4860 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next4864, %vec.epilog.vector.body ]
  %next.gep4861 = getelementptr i8, ptr %91, i64 %index4860
  %next.gep4862 = getelementptr i8, ptr %1968, i64 %index4860
  %wide.load4863 = load <4 x i8>, ptr %next.gep4862, align 1, !tbaa !44
  store <4 x i8> %wide.load4863, ptr %next.gep4861, align 1, !tbaa !44
  %index.next4864 = add nuw i64 %index4860, 4
  %1992 = icmp eq i64 %index.next4864, %n.vec4858
  br i1 %1992, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !108

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n4865 = icmp eq i64 %n.vec4858, %umin
  br i1 %cmp.n4865, label %.loopexit4869, label %.split2324.preheader

.split2324.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %91, %iter.check ], [ %1983, %vec.epilog.iter.check ], [ %1989, %vec.epilog.middle.block ]
  %.ph4870 = phi i32 [ %1970, %iter.check ], [ %1984, %vec.epilog.iter.check ], [ %1990, %vec.epilog.middle.block ]
  %.ph4871 = phi ptr [ %1968, %iter.check ], [ %1985, %vec.epilog.iter.check ], [ %1991, %vec.epilog.middle.block ]
  %1993 = add i32 %.ph4870, -1
  %xtraiter = and i32 %.ph4870, 7
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split2324.prol.loopexit, label %.split2324.prol

.split2324.prol:                                  ; preds = %.split2324.preheader, %.split2324.prol
  %1994 = phi ptr [ %1998, %.split2324.prol ], [ %.ph, %.split2324.preheader ]
  %1995 = phi i32 [ %1999, %.split2324.prol ], [ %.ph4870, %.split2324.preheader ]
  %1996 = phi ptr [ %2000, %.split2324.prol ], [ %.ph4871, %.split2324.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.split2324.prol ], [ 0, %.split2324.preheader ]
  %1997 = load i8, ptr %1996, align 1, !tbaa !44
  store i8 %1997, ptr %1994, align 1, !tbaa !44
  %1998 = getelementptr inbounds nuw i8, ptr %1994, i64 1
  %1999 = add i32 %1995, -1
  %2000 = getelementptr inbounds nuw i8, ptr %1996, i64 1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.split2324.prol.loopexit, label %.split2324.prol, !llvm.loop !109

.split2324.prol.loopexit:                         ; preds = %.split2324.prol, %.split2324.preheader
  %.lcssa5104.unr = phi ptr [ poison, %.split2324.preheader ], [ %1998, %.split2324.prol ]
  %.unr = phi ptr [ %.ph, %.split2324.preheader ], [ %1998, %.split2324.prol ]
  %.unr6095 = phi i32 [ %.ph4870, %.split2324.preheader ], [ %1999, %.split2324.prol ]
  %.unr6096 = phi ptr [ %.ph4871, %.split2324.preheader ], [ %2000, %.split2324.prol ]
  %2001 = icmp ult i32 %1993, 7
  br i1 %2001, label %.loopexit4869, label %.split2324

.split2324.us:                                    ; preds = %1979
  %2002 = load i8, ptr %1968, align 1, !tbaa !44
  store i8 %2002, ptr %91, align 1, !tbaa !44
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

.split2324:                                       ; preds = %.split2324.prol.loopexit, %.split2324
  %2003 = phi ptr [ %2028, %.split2324 ], [ %.unr, %.split2324.prol.loopexit ]
  %2004 = phi i32 [ %2029, %.split2324 ], [ %.unr6095, %.split2324.prol.loopexit ]
  %2005 = phi ptr [ %2030, %.split2324 ], [ %.unr6096, %.split2324.prol.loopexit ]
  %2006 = load i8, ptr %2005, align 1, !tbaa !44
  store i8 %2006, ptr %2003, align 1, !tbaa !44
  %2007 = getelementptr inbounds nuw i8, ptr %2003, i64 1
  %2008 = getelementptr inbounds nuw i8, ptr %2005, i64 1
  %2009 = load i8, ptr %2008, align 1, !tbaa !44
  store i8 %2009, ptr %2007, align 1, !tbaa !44
  %2010 = getelementptr inbounds nuw i8, ptr %2003, i64 2
  %2011 = getelementptr inbounds nuw i8, ptr %2005, i64 2
  %2012 = load i8, ptr %2011, align 1, !tbaa !44
  store i8 %2012, ptr %2010, align 1, !tbaa !44
  %2013 = getelementptr inbounds nuw i8, ptr %2003, i64 3
  %2014 = getelementptr inbounds nuw i8, ptr %2005, i64 3
  %2015 = load i8, ptr %2014, align 1, !tbaa !44
  store i8 %2015, ptr %2013, align 1, !tbaa !44
  %2016 = getelementptr inbounds nuw i8, ptr %2003, i64 4
  %2017 = getelementptr inbounds nuw i8, ptr %2005, i64 4
  %2018 = load i8, ptr %2017, align 1, !tbaa !44
  store i8 %2018, ptr %2016, align 1, !tbaa !44
  %2019 = getelementptr inbounds nuw i8, ptr %2003, i64 5
  %2020 = getelementptr inbounds nuw i8, ptr %2005, i64 5
  %2021 = load i8, ptr %2020, align 1, !tbaa !44
  store i8 %2021, ptr %2019, align 1, !tbaa !44
  %2022 = getelementptr inbounds nuw i8, ptr %2003, i64 6
  %2023 = getelementptr inbounds nuw i8, ptr %2005, i64 6
  %2024 = load i8, ptr %2023, align 1, !tbaa !44
  store i8 %2024, ptr %2022, align 1, !tbaa !44
  %2025 = getelementptr inbounds nuw i8, ptr %2003, i64 7
  %2026 = getelementptr inbounds nuw i8, ptr %2005, i64 7
  %2027 = load i8, ptr %2026, align 1, !tbaa !44
  store i8 %2027, ptr %2025, align 1, !tbaa !44
  %2028 = getelementptr inbounds nuw i8, ptr %2003, i64 8
  %2029 = add i32 %2004, -8
  %2030 = getelementptr inbounds nuw i8, ptr %2005, i64 8
  %2031 = icmp eq i32 %2029, 0
  br i1 %2031, label %.loopexit4869, label %.split2324, !llvm.loop !111

.loopexit4869:                                    ; preds = %.split2324.prol.loopexit, %.split2324, %vec.epilog.middle.block, %middle.block
  %.lcssa3845 = phi ptr [ %1989, %vec.epilog.middle.block ], [ %1983, %middle.block ], [ %.lcssa5104.unr, %.split2324.prol.loopexit ], [ %2028, %.split2324 ]
  %2032 = load i32, ptr %56, align 4, !tbaa !67
  %2033 = icmp eq i32 %2032, 0
  br i1 %2033, label %2034, label %2265

2034:                                             ; preds = %.loopexit4869
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2265

2035:                                             ; preds = %88
  %2036 = icmp eq i32 %93, 0
  br i1 %2036, label %.loopexit162, label %2037

2037:                                             ; preds = %2035
  %2038 = load i32, ptr %56, align 4, !tbaa !67
  %2039 = trunc i32 %2038 to i8
  store i8 %2039, ptr %91, align 1, !tbaa !44
  %2040 = add i32 %93, -1
  %2041 = getelementptr inbounds nuw i8, ptr %91, i64 1
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2265

2042:                                             ; preds = %88
  %2043 = load i32, ptr %49, align 8, !tbaa !24
  %2044 = icmp eq i32 %2043, 0
  br i1 %2044, label %2165, label %2045

2045:                                             ; preds = %2042
  %2046 = icmp ult i32 %95, 32
  br i1 %2046, label %2047, label %2110

2047:                                             ; preds = %2045
  %2048 = zext nneg i32 %95 to i64
  %2049 = icmp eq i32 %92, 0
  br i1 %2049, label %2378, label %2050

2050:                                             ; preds = %2047
  %2051 = load i8, ptr %90, align 1, !tbaa !44
  %2052 = zext i8 %2051 to i64
  %2053 = shl nuw nsw i64 %2052, %2048
  %2054 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %2053), !nosanitize !47
  %2055 = extractvalue { i64, i1 } %2054, 1, !nosanitize !47
  br i1 %2055, label %2056, label %2057, !prof !48, !nosanitize !47

2056:                                             ; preds = %2093, %2079, %2065, %2050
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2057:                                             ; preds = %2050
  %2058 = extractvalue { i64, i1 } %2054, 0, !nosanitize !47
  %2059 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %2060 = add i32 %92, -1
  %2061 = add nuw nsw i64 %2048, 8
  %2062 = icmp samesign ult i32 %95, 24
  br i1 %2062, label %2063, label %2104, !llvm.loop !112

2063:                                             ; preds = %2057
  %2064 = icmp eq i32 %2060, 0
  br i1 %2064, label %2378, label %2065

2065:                                             ; preds = %2063
  %2066 = load i8, ptr %2059, align 1, !tbaa !44
  %2067 = zext i8 %2066 to i64
  %2068 = shl nuw nsw i64 %2067, %2061
  %2069 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2058, i64 %2068), !nosanitize !47
  %2070 = extractvalue { i64, i1 } %2069, 1, !nosanitize !47
  br i1 %2070, label %2056, label %2071, !prof !48, !nosanitize !47

2071:                                             ; preds = %2065
  %2072 = extractvalue { i64, i1 } %2069, 0, !nosanitize !47
  %2073 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %2074 = add i32 %92, -2
  %2075 = add nuw nsw i64 %2048, 16
  %2076 = icmp samesign ult i32 %95, 16
  br i1 %2076, label %2077, label %2104, !llvm.loop !112

2077:                                             ; preds = %2071
  %2078 = icmp eq i32 %2074, 0
  br i1 %2078, label %2378, label %2079

2079:                                             ; preds = %2077
  %2080 = load i8, ptr %2073, align 1, !tbaa !44
  %2081 = zext i8 %2080 to i64
  %2082 = shl nuw nsw i64 %2081, %2075
  %2083 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2072, i64 %2082), !nosanitize !47
  %2084 = extractvalue { i64, i1 } %2083, 1, !nosanitize !47
  br i1 %2084, label %2056, label %2085, !prof !48, !nosanitize !47

2085:                                             ; preds = %2079
  %2086 = extractvalue { i64, i1 } %2083, 0, !nosanitize !47
  %2087 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %2088 = add i32 %92, -3
  %2089 = add nuw nsw i64 %2048, 24
  %2090 = icmp samesign ult i32 %95, 8
  br i1 %2090, label %2091, label %2104, !llvm.loop !112

2091:                                             ; preds = %2085
  %2092 = icmp eq i32 %2088, 0
  br i1 %2092, label %2378, label %2093

2093:                                             ; preds = %2091
  %2094 = load i8, ptr %2087, align 1, !tbaa !44
  %2095 = zext i8 %2094 to i64
  %2096 = shl nuw nsw i64 %2095, %2089
  %2097 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2086, i64 %2096), !nosanitize !47
  %2098 = extractvalue { i64, i1 } %2097, 1, !nosanitize !47
  br i1 %2098, label %2056, label %2099, !prof !48, !nosanitize !47

2099:                                             ; preds = %2093
  %2100 = extractvalue { i64, i1 } %2097, 0, !nosanitize !47
  %2101 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %2102 = add i32 %92, -4
  %2103 = or disjoint i64 %2048, 32
  br label %2104

2104:                                             ; preds = %2099, %2085, %2071, %2057
  %2105 = phi i64 [ %2058, %2057 ], [ %2072, %2071 ], [ %2086, %2085 ], [ %2100, %2099 ]
  %2106 = phi ptr [ %2059, %2057 ], [ %2073, %2071 ], [ %2087, %2085 ], [ %2101, %2099 ]
  %2107 = phi i32 [ %2060, %2057 ], [ %2074, %2071 ], [ %2088, %2085 ], [ %2102, %2099 ]
  %2108 = phi i64 [ %2061, %2057 ], [ %2075, %2071 ], [ %2089, %2085 ], [ %2103, %2099 ]
  %2109 = trunc nuw nsw i64 %2108 to i32
  br label %2110

2110:                                             ; preds = %2104, %2045
  %2111 = phi ptr [ %90, %2045 ], [ %2106, %2104 ]
  %2112 = phi i32 [ %92, %2045 ], [ %2107, %2104 ]
  %2113 = phi i64 [ %94, %2045 ], [ %2105, %2104 ]
  %2114 = phi i32 [ %95, %2045 ], [ %2109, %2104 ]
  %2115 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %96, i32 %93), !nosanitize !47
  %2116 = extractvalue { i32, i1 } %2115, 0, !nosanitize !47
  %2117 = extractvalue { i32, i1 } %2115, 1, !nosanitize !47
  br i1 %2117, label %2118, label %2119, !prof !48, !nosanitize !47

2118:                                             ; preds = %2110
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2119:                                             ; preds = %2110
  %2120 = zext i32 %2116 to i64
  %2121 = load i64, ptr %50, align 8, !tbaa !113
  %2122 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2121, i64 %2120), !nosanitize !47
  %2123 = extractvalue { i64, i1 } %2122, 1, !nosanitize !47
  br i1 %2123, label %2124, label %2125, !prof !48, !nosanitize !47

2124:                                             ; preds = %2119
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2125:                                             ; preds = %2119
  %2126 = extractvalue { i64, i1 } %2122, 0, !nosanitize !47
  store i64 %2126, ptr %50, align 8, !tbaa !113
  %2127 = load i64, ptr %51, align 8, !tbaa !21
  %2128 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2127, i64 %2120), !nosanitize !47
  %2129 = extractvalue { i64, i1 } %2128, 1, !nosanitize !47
  br i1 %2129, label %2130, label %2131, !prof !48, !nosanitize !47

2130:                                             ; preds = %2125
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2131:                                             ; preds = %2125
  %2132 = extractvalue { i64, i1 } %2128, 0, !nosanitize !47
  store i64 %2132, ptr %51, align 8, !tbaa !21
  %2133 = and i32 %2043, 4
  %2134 = icmp ne i32 %2133, 0
  %2135 = icmp ne i32 %2116, 0
  %2136 = select i1 %2134, i1 %2135, i1 false
  br i1 %2136, label %2137, label %2151

2137:                                             ; preds = %2131
  %2138 = load i32, ptr %52, align 8, !tbaa !28
  %2139 = icmp eq i32 %2138, 0
  %2140 = load i64, ptr %53, align 8, !tbaa !56
  %2141 = sub nsw i64 0, %2120
  %2142 = getelementptr inbounds i8, ptr %91, i64 %2141
  br i1 %2139, label %2145, label %2143

2143:                                             ; preds = %2137
  %2144 = call i64 @crc32(i64 noundef %2140, ptr noundef nonnull %2142, i32 noundef %2116) #12
  br label %2147

2145:                                             ; preds = %2137
  %2146 = call i64 @adler32(i64 noundef %2140, ptr noundef nonnull %2142, i32 noundef %2116) #12
  br label %2147

2147:                                             ; preds = %2145, %2143
  %2148 = phi i64 [ %2144, %2143 ], [ %2146, %2145 ]
  store i64 %2148, ptr %53, align 8, !tbaa !56
  store i64 %2148, ptr %54, align 8, !tbaa !25
  %2149 = load i32, ptr %49, align 8, !tbaa !24
  %2150 = and i32 %2149, 4
  br label %2151

2151:                                             ; preds = %2147, %2131
  %2152 = phi i32 [ %2150, %2147 ], [ %2133, %2131 ]
  %2153 = phi i32 [ %2149, %2147 ], [ %2043, %2131 ]
  %2154 = icmp eq i32 %2152, 0
  br i1 %2154, label %2165, label %2155

2155:                                             ; preds = %2151
  %2156 = load i32, ptr %52, align 8, !tbaa !28
  %2157 = icmp eq i32 %2156, 0
  %2158 = trunc i64 %2113 to i32
  %2159 = call i32 @llvm.bswap.i32(i32 %2158)
  %2160 = zext i32 %2159 to i64
  %2161 = select i1 %2157, i64 %2160, i64 %2113
  %2162 = load i64, ptr %53, align 8, !tbaa !56
  %2163 = icmp eq i64 %2161, %2162
  br i1 %2163, label %2165, label %2164

2164:                                             ; preds = %2155
  store ptr @.str.17, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2265

2165:                                             ; preds = %2155, %2151, %2042
  %2166 = phi i32 [ 0, %2042 ], [ %2153, %2151 ], [ %2153, %2155 ]
  %2167 = phi ptr [ %90, %2042 ], [ %2111, %2151 ], [ %2111, %2155 ]
  %2168 = phi i32 [ %92, %2042 ], [ %2112, %2151 ], [ %2112, %2155 ]
  %2169 = phi i64 [ %94, %2042 ], [ 0, %2151 ], [ 0, %2155 ]
  %2170 = phi i32 [ %95, %2042 ], [ 0, %2151 ], [ 0, %2155 ]
  %2171 = phi i32 [ %96, %2042 ], [ %93, %2151 ], [ %93, %2155 ]
  store i32 16207, ptr %21, align 8, !tbaa !20
  br label %2172

2172:                                             ; preds = %2165, %103
  %2173 = phi i32 [ %2166, %2165 ], [ %104, %103 ]
  %2174 = phi ptr [ %2167, %2165 ], [ %90, %103 ]
  %2175 = phi i32 [ %2168, %2165 ], [ %92, %103 ]
  %2176 = phi i64 [ %2169, %2165 ], [ %94, %103 ]
  %2177 = phi i32 [ %2170, %2165 ], [ %95, %103 ]
  %2178 = phi i32 [ %2171, %2165 ], [ %96, %103 ]
  %2179 = icmp eq i32 %2173, 0
  br i1 %2179, label %2260, label %2180

2180:                                             ; preds = %2172
  %2181 = load i32, ptr %52, align 8, !tbaa !28
  %2182 = icmp eq i32 %2181, 0
  br i1 %2182, label %2260, label %2183

2183:                                             ; preds = %2180
  %2184 = icmp ult i32 %2177, 32
  br i1 %2184, label %2185, label %2248

2185:                                             ; preds = %2183
  %2186 = zext nneg i32 %2177 to i64
  %2187 = icmp eq i32 %2175, 0
  br i1 %2187, label %2372, label %2188

2188:                                             ; preds = %2185
  %2189 = load i8, ptr %2174, align 1, !tbaa !44
  %2190 = zext i8 %2189 to i64
  %2191 = shl nuw nsw i64 %2190, %2186
  %2192 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2176, i64 %2191), !nosanitize !47
  %2193 = extractvalue { i64, i1 } %2192, 1, !nosanitize !47
  br i1 %2193, label %2194, label %2195, !prof !48, !nosanitize !47

2194:                                             ; preds = %2231, %2217, %2203, %2188
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2195:                                             ; preds = %2188
  %2196 = extractvalue { i64, i1 } %2192, 0, !nosanitize !47
  %2197 = getelementptr inbounds nuw i8, ptr %2174, i64 1
  %2198 = add i32 %2175, -1
  %2199 = add nuw nsw i64 %2186, 8
  %2200 = icmp samesign ult i32 %2177, 24
  br i1 %2200, label %2201, label %2242, !llvm.loop !114

2201:                                             ; preds = %2195
  %2202 = icmp eq i32 %2198, 0
  br i1 %2202, label %2372, label %2203

2203:                                             ; preds = %2201
  %2204 = load i8, ptr %2197, align 1, !tbaa !44
  %2205 = zext i8 %2204 to i64
  %2206 = shl nuw nsw i64 %2205, %2199
  %2207 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2196, i64 %2206), !nosanitize !47
  %2208 = extractvalue { i64, i1 } %2207, 1, !nosanitize !47
  br i1 %2208, label %2194, label %2209, !prof !48, !nosanitize !47

2209:                                             ; preds = %2203
  %2210 = extractvalue { i64, i1 } %2207, 0, !nosanitize !47
  %2211 = getelementptr inbounds nuw i8, ptr %2174, i64 2
  %2212 = add i32 %2175, -2
  %2213 = add nuw nsw i64 %2186, 16
  %2214 = icmp samesign ult i32 %2177, 16
  br i1 %2214, label %2215, label %2242, !llvm.loop !114

2215:                                             ; preds = %2209
  %2216 = icmp eq i32 %2212, 0
  br i1 %2216, label %2372, label %2217

2217:                                             ; preds = %2215
  %2218 = load i8, ptr %2211, align 1, !tbaa !44
  %2219 = zext i8 %2218 to i64
  %2220 = shl nuw nsw i64 %2219, %2213
  %2221 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2210, i64 %2220), !nosanitize !47
  %2222 = extractvalue { i64, i1 } %2221, 1, !nosanitize !47
  br i1 %2222, label %2194, label %2223, !prof !48, !nosanitize !47

2223:                                             ; preds = %2217
  %2224 = extractvalue { i64, i1 } %2221, 0, !nosanitize !47
  %2225 = getelementptr inbounds nuw i8, ptr %2174, i64 3
  %2226 = add i32 %2175, -3
  %2227 = add nuw nsw i64 %2186, 24
  %2228 = icmp samesign ult i32 %2177, 8
  br i1 %2228, label %2229, label %2242, !llvm.loop !114

2229:                                             ; preds = %2223
  %2230 = icmp eq i32 %2226, 0
  br i1 %2230, label %2372, label %2231

2231:                                             ; preds = %2229
  %2232 = load i8, ptr %2225, align 1, !tbaa !44
  %2233 = zext i8 %2232 to i64
  %2234 = shl nuw nsw i64 %2233, %2227
  %2235 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2224, i64 %2234), !nosanitize !47
  %2236 = extractvalue { i64, i1 } %2235, 1, !nosanitize !47
  br i1 %2236, label %2194, label %2237, !prof !48, !nosanitize !47

2237:                                             ; preds = %2231
  %2238 = extractvalue { i64, i1 } %2235, 0, !nosanitize !47
  %2239 = getelementptr inbounds nuw i8, ptr %2174, i64 4
  %2240 = add i32 %2175, -4
  %2241 = or disjoint i64 %2186, 32
  br label %2242

2242:                                             ; preds = %2237, %2223, %2209, %2195
  %2243 = phi i64 [ %2196, %2195 ], [ %2210, %2209 ], [ %2224, %2223 ], [ %2238, %2237 ]
  %2244 = phi ptr [ %2197, %2195 ], [ %2211, %2209 ], [ %2225, %2223 ], [ %2239, %2237 ]
  %2245 = phi i32 [ %2198, %2195 ], [ %2212, %2209 ], [ %2226, %2223 ], [ %2240, %2237 ]
  %2246 = phi i64 [ %2199, %2195 ], [ %2213, %2209 ], [ %2227, %2223 ], [ %2241, %2237 ]
  %2247 = trunc nuw nsw i64 %2246 to i32
  br label %2248

2248:                                             ; preds = %2242, %2183
  %2249 = phi ptr [ %2174, %2183 ], [ %2244, %2242 ]
  %2250 = phi i32 [ %2175, %2183 ], [ %2245, %2242 ]
  %2251 = phi i64 [ %2176, %2183 ], [ %2243, %2242 ]
  %2252 = phi i32 [ %2177, %2183 ], [ %2247, %2242 ]
  %2253 = and i32 %2173, 4
  %2254 = icmp eq i32 %2253, 0
  br i1 %2254, label %2260, label %2255

2255:                                             ; preds = %2248
  %2256 = load i64, ptr %51, align 8, !tbaa !21
  %2257 = and i64 %2256, 4294967295
  %2258 = icmp eq i64 %2251, %2257
  br i1 %2258, label %2260, label %2259

2259:                                             ; preds = %2255
  store ptr @.str.18, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2265

2260:                                             ; preds = %2255, %2248, %2180, %2172
  %2261 = phi ptr [ %2174, %2180 ], [ %2174, %2172 ], [ %2249, %2248 ], [ %2249, %2255 ]
  %2262 = phi i32 [ %2175, %2180 ], [ %2175, %2172 ], [ %2250, %2248 ], [ %2250, %2255 ]
  %2263 = phi i64 [ %2176, %2180 ], [ %2176, %2172 ], [ 0, %2248 ], [ 0, %2255 ]
  %2264 = phi i32 [ %2177, %2180 ], [ %2177, %2172 ], [ 0, %2248 ], [ 0, %2255 ]
  store i32 16208, ptr %21, align 8, !tbaa !20
  br label %.loopexit162

2265:                                             ; preds = %2259, %2164, %2037, %2034, %.loopexit4869, %1938, %1847, %1621, %1617, %1613, %1468, %1459, %1442, %1433, %1429, %1399, %1285, %1146, %1072, %1020, %1017, %980, %899, %865, %776, %763, %262, %258, %212, %211, %196, %192, %174, %128
  %2266 = phi ptr [ %90, %128 ], [ %162, %174 ], [ %162, %192 ], [ %162, %196 ], [ %162, %211 ], [ %162, %212 ], [ %251, %258 ], [ %251, %262 ], [ %752, %763 ], [ %765, %776 ], [ %854, %865 ], [ %883, %899 ], [ %972, %980 ], [ %1007, %1017 ], [ %990, %1020 ], [ %1054, %1072 ], [ %1087, %1146 ], [ %1426, %1429 ], [ %1426, %1433 ], [ %1426, %1442 ], [ %1462, %1468 ], [ %1462, %1459 ], [ %1594, %1613 ], [ %1594, %1617 ], [ %1594, %1621 ], [ %1824, %1847 ], [ %1917, %1938 ], [ %1917, %2034 ], [ %1917, %.loopexit4869 ], [ %90, %2037 ], [ %2111, %2164 ], [ %2249, %2259 ], [ %1374, %1399 ], [ %1277, %1285 ]
  %2267 = phi ptr [ %91, %128 ], [ %91, %174 ], [ %91, %192 ], [ %91, %196 ], [ %91, %211 ], [ %91, %212 ], [ %91, %258 ], [ %91, %262 ], [ %91, %763 ], [ %91, %776 ], [ %91, %865 ], [ %91, %899 ], [ %91, %980 ], [ %1019, %1017 ], [ %91, %1020 ], [ %91, %1072 ], [ %91, %1146 ], [ %91, %1429 ], [ %91, %1433 ], [ %91, %1442 ], [ %1460, %1468 ], [ %1460, %1459 ], [ %91, %1613 ], [ %91, %1617 ], [ %91, %1621 ], [ %91, %1847 ], [ %91, %1938 ], [ %.lcssa3845, %2034 ], [ %.lcssa3845, %.loopexit4869 ], [ %2041, %2037 ], [ %91, %2164 ], [ %91, %2259 ], [ %91, %1399 ], [ %91, %1285 ]
  %2268 = phi i32 [ %92, %128 ], [ %163, %174 ], [ %163, %192 ], [ %163, %196 ], [ %163, %211 ], [ %163, %212 ], [ %252, %258 ], [ %252, %262 ], [ %753, %763 ], [ %766, %776 ], [ %855, %865 ], [ %884, %899 ], [ %973, %980 ], [ %1003, %1017 ], [ %991, %1020 ], [ %1055, %1072 ], [ %1088, %1146 ], [ %1425, %1429 ], [ %1425, %1433 ], [ %1425, %1442 ], [ %1463, %1468 ], [ %1463, %1459 ], [ %1595, %1613 ], [ %1595, %1617 ], [ %1595, %1621 ], [ %1825, %1847 ], [ %1918, %1938 ], [ %1918, %2034 ], [ %1918, %.loopexit4869 ], [ %92, %2037 ], [ %2112, %2164 ], [ %2250, %2259 ], [ %1375, %1399 ], [ %1278, %1285 ]
  %2269 = phi i32 [ %93, %128 ], [ %93, %174 ], [ %93, %192 ], [ %93, %196 ], [ %93, %211 ], [ %93, %212 ], [ %93, %258 ], [ %93, %262 ], [ %93, %763 ], [ %93, %776 ], [ %93, %865 ], [ %93, %899 ], [ %93, %980 ], [ %1009, %1017 ], [ %93, %1020 ], [ %93, %1072 ], [ %93, %1146 ], [ %93, %1429 ], [ %93, %1433 ], [ %93, %1442 ], [ %1461, %1468 ], [ %1461, %1459 ], [ %93, %1613 ], [ %93, %1617 ], [ %93, %1621 ], [ %93, %1847 ], [ %93, %1938 ], [ %1972, %2034 ], [ %1972, %.loopexit4869 ], [ %2040, %2037 ], [ %93, %2164 ], [ %93, %2259 ], [ %93, %1399 ], [ %93, %1285 ]
  %2270 = phi i64 [ %94, %128 ], [ 0, %174 ], [ %164, %192 ], [ %164, %196 ], [ %198, %211 ], [ 0, %212 ], [ %253, %258 ], [ %253, %262 ], [ %754, %763 ], [ %767, %776 ], [ %869, %865 ], [ %901, %899 ], [ %974, %980 ], [ %992, %1017 ], [ %992, %1020 ], [ %1067, %1072 ], [ %1089, %1146 ], [ %1424, %1429 ], [ %1424, %1433 ], [ %1424, %1442 ], [ %1464, %1468 ], [ %1464, %1459 ], [ %1603, %1613 ], [ %1603, %1617 ], [ %1603, %1621 ], [ %1833, %1847 ], [ %1919, %1938 ], [ %1919, %2034 ], [ %1919, %.loopexit4869 ], [ %94, %2037 ], [ %2113, %2164 ], [ %2251, %2259 ], [ %1376, %1399 ], [ %1282, %1285 ]
  %2271 = phi i32 [ %95, %128 ], [ 0, %174 ], [ %165, %192 ], [ %165, %196 ], [ %199, %211 ], [ 0, %212 ], [ %254, %258 ], [ %254, %262 ], [ %755, %763 ], [ %768, %776 ], [ %867, %865 ], [ %900, %899 ], [ %975, %980 ], [ %993, %1017 ], [ %993, %1020 ], [ %1068, %1072 ], [ %1090, %1146 ], [ %1423, %1429 ], [ %1423, %1433 ], [ %1423, %1442 ], [ %1465, %1468 ], [ %1465, %1459 ], [ %1605, %1613 ], [ %1605, %1617 ], [ %1605, %1621 ], [ %1835, %1847 ], [ %1920, %1938 ], [ %1920, %2034 ], [ %1920, %.loopexit4869 ], [ %95, %2037 ], [ %2114, %2164 ], [ %2252, %2259 ], [ %1380, %1399 ], [ %1283, %1285 ]
  %2272 = phi i32 [ %96, %128 ], [ %96, %174 ], [ %96, %192 ], [ %96, %196 ], [ %96, %211 ], [ %96, %212 ], [ %96, %258 ], [ %96, %262 ], [ %96, %763 ], [ %96, %776 ], [ %96, %865 ], [ %96, %899 ], [ %96, %980 ], [ %96, %1017 ], [ %96, %1020 ], [ %96, %1072 ], [ %96, %1146 ], [ %96, %1429 ], [ %96, %1433 ], [ %96, %1442 ], [ %96, %1468 ], [ %96, %1459 ], [ %96, %1613 ], [ %96, %1617 ], [ %96, %1621 ], [ %96, %1847 ], [ %96, %1938 ], [ %96, %2034 ], [ %96, %.loopexit4869 ], [ %96, %2037 ], [ %93, %2164 ], [ %2178, %2259 ], [ %96, %1399 ], [ %96, %1285 ]
  %2273 = phi i32 [ %97, %128 ], [ %97, %174 ], [ %97, %192 ], [ %97, %196 ], [ %97, %211 ], [ %97, %212 ], [ %97, %258 ], [ %97, %262 ], [ %97, %763 ], [ %97, %776 ], [ %97, %865 ], [ %97, %899 ], [ %97, %980 ], [ %97, %1017 ], [ %97, %1020 ], [ %97, %1072 ], [ %1144, %1146 ], [ %1153, %1429 ], [ %1431, %1433 ], [ %1440, %1442 ], [ %1455, %1468 ], [ %1455, %1459 ], [ %1455, %1613 ], [ %1455, %1617 ], [ %1455, %1621 ], [ %1695, %1847 ], [ %1921, %1938 ], [ %1921, %2034 ], [ %1921, %.loopexit4869 ], [ %97, %2037 ], [ %97, %2164 ], [ %97, %2259 ], [ %1153, %1399 ], [ %1153, %1285 ]
  %2274 = load i32, ptr %21, align 8, !tbaa !20
  br label %88

._crit_edge:                                      ; preds = %1184, %1187
  %.lcssa3667 = phi i64 [ %1201, %1187 ], [ %1174, %1184 ]
  %2275 = zext i32 %1173 to i64
  %2276 = shl i32 %1173, 3
  %2277 = add i32 %1175, %2276
  %2278 = getelementptr i8, ptr %1172, i64 %2275
  br label %.loopexit162

2279:                                             ; preds = %142, %125
  %.lcssa2146 = phi i32 [ 1, %142 ], [ 0, %125 ]
  %2280 = phi i64 [ %137, %142 ], [ %94, %125 ]
  %2281 = zext nneg i32 %.lcssa2146 to i64
  %2282 = shl nuw nsw i32 %.lcssa2146, 3
  %2283 = add nuw nsw i32 %95, %2282
  %2284 = getelementptr i8, ptr %90, i64 %2281
  br label %.loopexit162

2285:                                             ; preds = %732, %716
  %.lcssa1622 = phi i32 [ 1, %732 ], [ 0, %716 ]
  %2286 = phi i64 [ %727, %732 ], [ %709, %716 ]
  %2287 = zext nneg i32 %.lcssa1622 to i64
  %2288 = shl nuw nsw i32 %.lcssa1622, 3
  %2289 = add nuw nsw i32 %710, %2288
  %2290 = getelementptr i8, ptr %707, i64 %2287
  br label %.loopexit162

2291:                                             ; preds = %454, %433
  %.lcssa1616 = phi i32 [ 1, %454 ], [ 0, %433 ]
  %2292 = phi i64 [ %449, %454 ], [ %436, %433 ]
  %2293 = zext nneg i32 %.lcssa1616 to i64
  %2294 = shl nuw nsw i32 %.lcssa1616, 3
  %2295 = add nuw nsw i32 %437, %2294
  %2296 = getelementptr i8, ptr %434, i64 %2293
  br label %.loopexit162

2297:                                             ; preds = %386, %366
  %.lcssa1610 = phi i32 [ 1, %386 ], [ 0, %366 ]
  %2298 = phi i64 [ %381, %386 ], [ %368, %366 ]
  %2299 = zext nneg i32 %.lcssa1610 to i64
  %2300 = shl nuw nsw i32 %.lcssa1610, 3
  %2301 = add nuw nsw i32 %2300, %367
  %2302 = getelementptr i8, ptr %370, i64 %2299
  br label %.loopexit162

2303:                                             ; preds = %331, %317, %303, %283
  %.lcssa1604 = phi i32 [ 3, %331 ], [ 2, %317 ], [ 1, %303 ], [ 0, %283 ]
  %2304 = phi i64 [ %326, %331 ], [ %312, %317 ], [ %298, %303 ], [ %285, %283 ]
  %2305 = zext nneg i32 %.lcssa1604 to i64
  %2306 = shl nuw nsw i32 %.lcssa1604, 3
  %2307 = add nuw nsw i32 %2306, %284
  %2308 = getelementptr i8, ptr %287, i64 %2305
  br label %.loopexit162

2309:                                             ; preds = %231, %117
  %.lcssa2130 = phi i32 [ 1, %231 ], [ 0, %117 ]
  %2310 = phi i64 [ %226, %231 ], [ %94, %117 ]
  %2311 = zext nneg i32 %.lcssa2130 to i64
  %2312 = shl nuw nsw i32 %.lcssa2130, 3
  %2313 = add nuw nsw i32 %95, %2312
  %2314 = getelementptr i8, ptr %90, i64 %2311
  br label %.loopexit162

2315:                                             ; preds = %819, %805, %791, %112
  %.lcssa2124 = phi i32 [ 3, %819 ], [ 2, %805 ], [ 1, %791 ], [ 0, %112 ]
  %2316 = phi i64 [ %814, %819 ], [ %800, %805 ], [ %786, %791 ], [ %94, %112 ]
  %2317 = zext nneg i32 %.lcssa2124 to i64
  %2318 = shl nuw nsw i32 %.lcssa2124, 3
  %2319 = add nuw nsw i32 %95, %2318
  %2320 = getelementptr i8, ptr %90, i64 %2317
  br label %.loopexit162

2321:                                             ; preds = %953, %939, %925, %908
  %.lcssa2119 = phi i32 [ 3, %953 ], [ 2, %939 ], [ 1, %925 ], [ 0, %908 ]
  %2322 = phi i64 [ %948, %953 ], [ %934, %939 ], [ %920, %925 ], [ %905, %908 ]
  %2323 = zext nneg i32 %.lcssa2119 to i64
  %2324 = shl nuw nsw i32 %.lcssa2119, 3
  %2325 = add nuw nsw i32 %909, %2324
  %2326 = getelementptr i8, ptr %90, i64 %2323
  br label %.loopexit162

._crit_edge4831:                                  ; preds = %1861, %1864
  %.lcssa3838 = phi i64 [ %1878, %1864 ], [ %1855, %1861 ]
  %2327 = zext i32 %1854 to i64
  %2328 = shl i32 %1854, 3
  %2329 = add i32 %1856, %2328
  %2330 = getelementptr i8, ptr %1853, i64 %2327
  br label %.loopexit162

._crit_edge4811:                                  ; preds = %1769, %1772
  %.lcssa3829 = phi i64 [ %1787, %1772 ], [ %1744, %1769 ]
  %2331 = zext i32 %1743 to i64
  %2332 = shl i32 %1743, 3
  %2333 = add i32 %1745, %2332
  %2334 = getelementptr i8, ptr %1742, i64 %2331
  br label %.loopexit162

._crit_edge4791:                                  ; preds = %1708, %1711
  %.lcssa3820 = phi i64 [ %1725, %1711 ], [ %1693, %1708 ]
  %2335 = zext i32 %1692 to i64
  %2336 = shl i32 %1692, 3
  %2337 = add i32 %1694, %2336
  %2338 = getelementptr i8, ptr %1691, i64 %2335
  br label %.loopexit162

._crit_edge4771:                                  ; preds = %1634, %1637
  %.lcssa3813 = phi i64 [ %1651, %1637 ], [ %1628, %1634 ]
  %2339 = zext i32 %1627 to i64
  %2340 = shl i32 %1627, 3
  %2341 = add i32 %1629, %2340
  %2342 = getelementptr i8, ptr %1626, i64 %2339
  br label %.loopexit162

._crit_edge4751:                                  ; preds = %1544, %1547
  %.lcssa3804 = phi i64 [ %1561, %1547 ], [ %1518, %1544 ]
  %2343 = zext i32 %1517 to i64
  %2344 = shl i32 %1517, 3
  %2345 = add i32 %1519, %2344
  %2346 = getelementptr i8, ptr %1516, i64 %2343
  br label %.loopexit162

._crit_edge4731:                                  ; preds = %1482, %1485
  %.lcssa3795 = phi i64 [ %1499, %1485 ], [ %1453, %1482 ]
  %2347 = zext i32 %1452 to i64
  %2348 = shl i32 %1452, 3
  %2349 = add i32 %1454, %2348
  %2350 = getelementptr i8, ptr %1451, i64 %2347
  br label %.loopexit162

2351:                                             ; preds = %1336
  %2352 = zext i32 %1218 to i64
  %2353 = shl i32 %1218, 3
  %2354 = add i32 %1220, %2353
  %2355 = getelementptr i8, ptr %1217, i64 %2352
  br label %.loopexit162

2356:                                             ; preds = %1255
  %2357 = zext i32 %1218 to i64
  %2358 = shl i32 %1218, 3
  %2359 = add i32 %1220, %2358
  %2360 = getelementptr i8, ptr %1217, i64 %2357
  br label %.loopexit162

2361:                                             ; preds = %1299
  %2362 = zext i32 %1218 to i64
  %2363 = shl i32 %1218, 3
  %2364 = add i32 %1220, %2363
  %2365 = getelementptr i8, ptr %1217, i64 %2362
  br label %.loopexit162

2366:                                             ; preds = %1034, %107
  %.lcssa2073 = phi i32 [ 1, %1034 ], [ 0, %107 ]
  %2367 = phi i64 [ %1029, %1034 ], [ %94, %107 ]
  %2368 = zext nneg i32 %.lcssa2073 to i64
  %2369 = shl nuw nsw i32 %.lcssa2073, 3
  %2370 = add nuw nsw i32 %95, %2369
  %2371 = getelementptr i8, ptr %90, i64 %2368
  br label %.loopexit162

2372:                                             ; preds = %2229, %2215, %2201, %2185
  %.lcssa1458 = phi i32 [ 3, %2229 ], [ 2, %2215 ], [ 1, %2201 ], [ 0, %2185 ]
  %2373 = phi i64 [ %2224, %2229 ], [ %2210, %2215 ], [ %2196, %2201 ], [ %2176, %2185 ]
  %2374 = zext nneg i32 %.lcssa1458 to i64
  %2375 = shl nuw nsw i32 %.lcssa1458, 3
  %2376 = add nuw nsw i32 %2177, %2375
  %2377 = getelementptr i8, ptr %2174, i64 %2374
  br label %.loopexit162

2378:                                             ; preds = %2091, %2077, %2063, %2047
  %.lcssa2065 = phi i32 [ 3, %2091 ], [ 2, %2077 ], [ 1, %2063 ], [ 0, %2047 ]
  %2379 = phi i64 [ %2086, %2091 ], [ %2072, %2077 ], [ %2058, %2063 ], [ %94, %2047 ]
  %2380 = zext nneg i32 %.lcssa2065 to i64
  %2381 = shl nuw nsw i32 %.lcssa2065, 3
  %2382 = add nuw nsw i32 %95, %2381
  %2383 = getelementptr i8, ptr %90, i64 %2380
  br label %.loopexit162

.loopexit162.loopexit4873:                        ; preds = %88
  br label %.loopexit162

.loopexit162:                                     ; preds = %2035, %1916, %1443, %996, %981, %862, %848, %694, %650, %630, %586, %570, %1102, %88, %.loopexit162.loopexit4873, %2378, %2372, %2366, %2361, %2356, %2351, %._crit_edge4731, %._crit_edge4751, %._crit_edge4771, %._crit_edge4791, %._crit_edge4811, %._crit_edge4831, %2321, %2315, %2309, %2303, %2297, %2291, %2285, %2279, %._crit_edge, %2260, %892
  %2384 = phi i32 [ %93, %892 ], [ %93, %2260 ], [ %93, %._crit_edge ], [ %93, %2279 ], [ %93, %2285 ], [ %93, %2291 ], [ %93, %2297 ], [ %93, %2303 ], [ %93, %2309 ], [ %93, %2315 ], [ %93, %2321 ], [ %93, %._crit_edge4831 ], [ %93, %._crit_edge4811 ], [ %93, %._crit_edge4791 ], [ %93, %._crit_edge4771 ], [ %93, %._crit_edge4751 ], [ %93, %._crit_edge4731 ], [ %93, %2351 ], [ %93, %2356 ], [ %93, %2361 ], [ %93, %2366 ], [ %93, %2372 ], [ %93, %2378 ], [ %93, %88 ], [ %93, %1102 ], [ %93, %862 ], [ 0, %2035 ], [ 0, %1916 ], [ %93, %1443 ], [ %93, %996 ], [ %93, %981 ], [ %93, %848 ], [ %93, %694 ], [ %93, %650 ], [ %93, %630 ], [ %93, %586 ], [ %93, %570 ], [ %93, %.loopexit162.loopexit4873 ]
  %2385 = phi ptr [ %883, %892 ], [ %2261, %2260 ], [ %2278, %._crit_edge ], [ %2284, %2279 ], [ %2290, %2285 ], [ %2296, %2291 ], [ %2302, %2297 ], [ %2308, %2303 ], [ %2314, %2309 ], [ %2320, %2315 ], [ %2326, %2321 ], [ %2330, %._crit_edge4831 ], [ %2334, %._crit_edge4811 ], [ %2338, %._crit_edge4791 ], [ %2342, %._crit_edge4771 ], [ %2346, %._crit_edge4751 ], [ %2350, %._crit_edge4731 ], [ %2355, %2351 ], [ %2360, %2356 ], [ %2365, %2361 ], [ %2371, %2366 ], [ %2377, %2372 ], [ %2383, %2378 ], [ %90, %88 ], [ %1100, %1102 ], [ %854, %862 ], [ %90, %2035 ], [ %1917, %1916 ], [ %1426, %1443 ], [ %990, %996 ], [ %972, %981 ], [ %849, %848 ], [ %697, %694 ], [ %643, %650 ], [ %633, %630 ], [ %579, %586 ], [ %572, %570 ], [ %90, %.loopexit162.loopexit4873 ]
  %2386 = phi i32 [ %884, %892 ], [ %2262, %2260 ], [ 0, %._crit_edge ], [ 0, %2279 ], [ 0, %2285 ], [ 0, %2291 ], [ 0, %2297 ], [ 0, %2303 ], [ 0, %2309 ], [ 0, %2315 ], [ 0, %2321 ], [ 0, %._crit_edge4831 ], [ 0, %._crit_edge4811 ], [ 0, %._crit_edge4791 ], [ 0, %._crit_edge4771 ], [ 0, %._crit_edge4751 ], [ 0, %._crit_edge4731 ], [ 0, %2351 ], [ 0, %2356 ], [ 0, %2361 ], [ 0, %2366 ], [ 0, %2372 ], [ 0, %2378 ], [ %92, %88 ], [ 0, %1102 ], [ 0, %862 ], [ %92, %2035 ], [ %1918, %1916 ], [ %1425, %1443 ], [ %991, %996 ], [ %973, %981 ], [ %850, %848 ], [ %695, %694 ], [ 0, %650 ], [ %631, %630 ], [ 0, %586 ], [ %573, %570 ], [ %92, %.loopexit162.loopexit4873 ]
  %2387 = phi i64 [ %894, %892 ], [ %2263, %2260 ], [ %.lcssa3667, %._crit_edge ], [ %2280, %2279 ], [ %2286, %2285 ], [ %2292, %2291 ], [ %2298, %2297 ], [ %2304, %2303 ], [ %2310, %2309 ], [ %2316, %2315 ], [ %2322, %2321 ], [ %.lcssa3838, %._crit_edge4831 ], [ %.lcssa3829, %._crit_edge4811 ], [ %.lcssa3820, %._crit_edge4791 ], [ %.lcssa3813, %._crit_edge4771 ], [ %.lcssa3804, %._crit_edge4751 ], [ %.lcssa3795, %._crit_edge4731 ], [ %1338, %2351 ], [ %1257, %2356 ], [ %1301, %2361 ], [ %2367, %2366 ], [ %2373, %2372 ], [ %2379, %2378 ], [ %94, %88 ], [ %1098, %1102 ], [ %856, %862 ], [ %94, %2035 ], [ %1919, %1916 ], [ %1424, %1443 ], [ %992, %996 ], [ 0, %981 ], [ %851, %848 ], [ %645, %694 ], [ %645, %650 ], [ %581, %630 ], [ %581, %586 ], [ %504, %570 ], [ %94, %.loopexit162.loopexit4873 ]
  %2388 = phi i32 [ %893, %892 ], [ %2264, %2260 ], [ %2277, %._crit_edge ], [ %2283, %2279 ], [ %2289, %2285 ], [ %2295, %2291 ], [ %2301, %2297 ], [ %2307, %2303 ], [ %2313, %2309 ], [ %2319, %2315 ], [ %2325, %2321 ], [ %2329, %._crit_edge4831 ], [ %2333, %._crit_edge4811 ], [ %2337, %._crit_edge4791 ], [ %2341, %._crit_edge4771 ], [ %2345, %._crit_edge4751 ], [ %2349, %._crit_edge4731 ], [ %2354, %2351 ], [ %2359, %2356 ], [ %2364, %2361 ], [ %2370, %2366 ], [ %2376, %2372 ], [ %2382, %2378 ], [ %95, %88 ], [ %1097, %1102 ], [ %857, %862 ], [ %95, %2035 ], [ %1920, %1916 ], [ %1423, %1443 ], [ %993, %996 ], [ 0, %981 ], [ %852, %848 ], [ %646, %694 ], [ %646, %650 ], [ %582, %630 ], [ %582, %586 ], [ %505, %570 ], [ %95, %.loopexit162.loopexit4873 ]
  %2389 = phi i32 [ %96, %892 ], [ %2178, %2260 ], [ %96, %._crit_edge ], [ %96, %2279 ], [ %96, %2285 ], [ %96, %2291 ], [ %96, %2297 ], [ %96, %2303 ], [ %96, %2309 ], [ %96, %2315 ], [ %96, %2321 ], [ %96, %._crit_edge4831 ], [ %96, %._crit_edge4811 ], [ %96, %._crit_edge4791 ], [ %96, %._crit_edge4771 ], [ %96, %._crit_edge4751 ], [ %96, %._crit_edge4731 ], [ %96, %2351 ], [ %96, %2356 ], [ %96, %2361 ], [ %96, %2366 ], [ %2178, %2372 ], [ %96, %2378 ], [ %96, %88 ], [ %96, %1102 ], [ %96, %570 ], [ %96, %586 ], [ %96, %630 ], [ %96, %650 ], [ %96, %694 ], [ %96, %848 ], [ %96, %862 ], [ %96, %981 ], [ %96, %996 ], [ %96, %1443 ], [ %96, %1916 ], [ %96, %2035 ], [ %96, %.loopexit162.loopexit4873 ]
  %2390 = phi i32 [ %97, %892 ], [ 1, %2260 ], [ %1153, %._crit_edge ], [ %97, %2279 ], [ %97, %2285 ], [ %97, %2291 ], [ %97, %2297 ], [ %97, %2303 ], [ %97, %2309 ], [ %97, %2315 ], [ %97, %2321 ], [ %1857, %._crit_edge4831 ], [ %1695, %._crit_edge4811 ], [ %1695, %._crit_edge4791 ], [ %1630, %._crit_edge4771 ], [ %1455, %._crit_edge4751 ], [ %1455, %._crit_edge4731 ], [ %1153, %2351 ], [ %1153, %2356 ], [ %1153, %2361 ], [ %97, %2366 ], [ %97, %2372 ], [ %97, %2378 ], [ 1, %88 ], [ %97, %1102 ], [ %97, %862 ], [ %97, %2035 ], [ %1921, %1916 ], [ 0, %1443 ], [ %97, %996 ], [ %97, %981 ], [ %97, %848 ], [ %97, %694 ], [ %97, %650 ], [ %97, %630 ], [ %97, %586 ], [ %97, %570 ], [ -3, %.loopexit162.loopexit4873 ]
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %2384, ptr %41, align 8, !tbaa !52
  store ptr %2385, ptr %0, align 8, !tbaa !50
  store i32 %2386, ptr %43, align 8, !tbaa !51
  store i64 %2387, ptr %45, align 8, !tbaa !31
  store i32 %2388, ptr %47, align 8, !tbaa !32
  %2391 = load i32, ptr %79, align 4, !tbaa !38
  %2392 = icmp eq i32 %2391, 0
  br i1 %2392, label %2393, label %2402

2393:                                             ; preds = %.loopexit162
  %2394 = icmp eq i32 %2389, %2384
  br i1 %2394, label %2490, label %2395

2395:                                             ; preds = %2393
  %2396 = load i32, ptr %21, align 8, !tbaa !20
  %2397 = icmp ult i32 %2396, 16209
  br i1 %2397, label %2398, label %2490

2398:                                             ; preds = %2395
  %2399 = icmp samesign ult i32 %2396, 16206
  %2400 = icmp ne i32 %1, 4
  %2401 = or i1 %2400, %2399
  br i1 %2401, label %2402, label %2490

2402:                                             ; preds = %2398, %.loopexit162
  %2403 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2389, i32 %2384), !nosanitize !47
  %2404 = extractvalue { i32, i1 } %2403, 1, !nosanitize !47
  br i1 %2404, label %2405, label %2406, !prof !48, !nosanitize !47

2405:                                             ; preds = %2402
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2406:                                             ; preds = %2402
  %2407 = extractvalue { i32, i1 } %2403, 0, !nosanitize !47
  %2408 = load ptr, ptr %14, align 8, !tbaa !15
  %2409 = getelementptr inbounds nuw i8, ptr %2408, i64 72
  %2410 = load ptr, ptr %2409, align 8, !tbaa !41
  %2411 = icmp eq ptr %2410, null
  br i1 %2411, label %2412, label %2421

2412:                                             ; preds = %2406
  %2413 = load ptr, ptr %6, align 8, !tbaa !5
  %2414 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %2415 = load ptr, ptr %2414, align 8, !tbaa !43
  %2416 = getelementptr inbounds nuw i8, ptr %2408, i64 56
  %2417 = load i32, ptr %2416, align 8, !tbaa !42
  %2418 = shl nuw i32 1, %2417
  %2419 = call ptr %2413(ptr noundef %2415, i32 noundef %2418, i32 noundef 1) #12
  store ptr %2419, ptr %2409, align 8, !tbaa !41
  %2420 = icmp eq ptr %2419, null
  br i1 %2420, label %2489, label %2421

2421:                                             ; preds = %2412, %2406
  %2422 = phi ptr [ %2419, %2412 ], [ %2410, %2406 ]
  %2423 = getelementptr inbounds nuw i8, ptr %2408, i64 60
  %2424 = load i32, ptr %2423, align 4, !tbaa !38
  %2425 = icmp eq i32 %2424, 0
  br i1 %2425, label %2426, label %2432

2426:                                             ; preds = %2421
  %2427 = getelementptr inbounds nuw i8, ptr %2408, i64 56
  %2428 = load i32, ptr %2427, align 8, !tbaa !42
  %2429 = shl nuw i32 1, %2428
  store i32 %2429, ptr %2423, align 4, !tbaa !38
  %2430 = getelementptr inbounds nuw i8, ptr %2408, i64 68
  store i32 0, ptr %2430, align 4, !tbaa !40
  %2431 = getelementptr inbounds nuw i8, ptr %2408, i64 64
  store i32 0, ptr %2431, align 8, !tbaa !39
  br label %2432

2432:                                             ; preds = %2426, %2421
  %2433 = phi i32 [ %2429, %2426 ], [ %2424, %2421 ]
  %2434 = icmp ult i32 %2407, %2433
  br i1 %2434, label %2442, label %2435

2435:                                             ; preds = %2432
  %2436 = zext i32 %2433 to i64
  %2437 = sub nsw i64 0, %2436
  %2438 = getelementptr inbounds i8, ptr %91, i64 %2437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2422, ptr noundef nonnull readonly align 1 dereferenceable(1) %2438, i64 %2436, i1 false)
  %2439 = getelementptr inbounds nuw i8, ptr %2408, i64 68
  store i32 0, ptr %2439, align 4, !tbaa !40
  %2440 = load i32, ptr %2423, align 4, !tbaa !38
  %2441 = getelementptr inbounds nuw i8, ptr %2408, i64 64
  store i32 %2440, ptr %2441, align 8, !tbaa !39
  br label %2490

2442:                                             ; preds = %2432
  %2443 = getelementptr inbounds nuw i8, ptr %2408, i64 68
  %2444 = load i32, ptr %2443, align 4, !tbaa !40
  %2445 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2433, i32 %2444), !nosanitize !47
  %2446 = extractvalue { i32, i1 } %2445, 1, !nosanitize !47
  br i1 %2446, label %2447, label %2448, !prof !48, !nosanitize !47

2447:                                             ; preds = %2442
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2448:                                             ; preds = %2442
  %2449 = extractvalue { i32, i1 } %2445, 0, !nosanitize !47
  %2450 = call i32 @llvm.umin.i32(i32 %2449, i32 %2407)
  %2451 = zext i32 %2444 to i64
  %2452 = getelementptr inbounds nuw i8, ptr %2422, i64 %2451
  %2453 = zext i32 %2407 to i64
  %2454 = sub nsw i64 0, %2453
  %2455 = getelementptr inbounds i8, ptr %91, i64 %2454
  %2456 = zext i32 %2450 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2452, ptr readonly align 1 %2455, i64 %2456, i1 false)
  %2457 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2407, i32 %2450), !nosanitize !47
  %2458 = extractvalue { i32, i1 } %2457, 0, !nosanitize !47
  %2459 = extractvalue { i32, i1 } %2457, 1, !nosanitize !47
  br i1 %2459, label %2460, label %2461, !prof !48, !nosanitize !47

2460:                                             ; preds = %2448
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2461:                                             ; preds = %2448
  %2462 = icmp eq i32 %2458, 0
  br i1 %2462, label %2470, label %2463

2463:                                             ; preds = %2461
  %2464 = load ptr, ptr %2409, align 8, !tbaa !41
  %2465 = zext i32 %2458 to i64
  %2466 = sub nsw i64 0, %2465
  %2467 = getelementptr inbounds i8, ptr %91, i64 %2466
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2464, ptr nonnull readonly align 1 %2467, i64 %2465, i1 false)
  store i32 %2458, ptr %2443, align 4, !tbaa !40
  %2468 = load i32, ptr %2423, align 4, !tbaa !38
  %2469 = getelementptr inbounds nuw i8, ptr %2408, i64 64
  store i32 %2468, ptr %2469, align 8, !tbaa !39
  br label %2490

2470:                                             ; preds = %2461
  %2471 = load i32, ptr %2443, align 4, !tbaa !40
  %2472 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2471, i32 %2450), !nosanitize !47
  %2473 = extractvalue { i32, i1 } %2472, 1, !nosanitize !47
  br i1 %2473, label %2474, label %2475, !prof !48, !nosanitize !47

2474:                                             ; preds = %2470
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2475:                                             ; preds = %2470
  %2476 = extractvalue { i32, i1 } %2472, 0, !nosanitize !47
  %2477 = load i32, ptr %2423, align 4, !tbaa !38
  %2478 = icmp eq i32 %2476, %2477
  %2479 = select i1 %2478, i32 0, i32 %2476
  store i32 %2479, ptr %2443, align 4
  %2480 = getelementptr inbounds nuw i8, ptr %2408, i64 64
  %2481 = load i32, ptr %2480, align 8, !tbaa !39
  %2482 = icmp ult i32 %2481, %2477
  br i1 %2482, label %2483, label %2490

2483:                                             ; preds = %2475
  %2484 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2481, i32 %2450), !nosanitize !47
  %2485 = extractvalue { i32, i1 } %2484, 1, !nosanitize !47
  br i1 %2485, label %2486, label %2487, !prof !48, !nosanitize !47

2486:                                             ; preds = %2483
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2487:                                             ; preds = %2483
  %2488 = extractvalue { i32, i1 } %2484, 0, !nosanitize !47
  store i32 %2488, ptr %2480, align 8, !tbaa !39
  br label %2490

2489:                                             ; preds = %2412
  store i32 16210, ptr %21, align 8, !tbaa !20
  br label %.loopexit164

2490:                                             ; preds = %2487, %2475, %2463, %2435, %2398, %2395, %2393
  %2491 = load i32, ptr %43, align 8, !tbaa !51
  %2492 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %44, i32 %2491), !nosanitize !47
  %2493 = extractvalue { i32, i1 } %2492, 0, !nosanitize !47
  %2494 = extractvalue { i32, i1 } %2492, 1, !nosanitize !47
  br i1 %2494, label %2495, label %2496, !prof !48, !nosanitize !47

2495:                                             ; preds = %2490
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2496:                                             ; preds = %2490
  %2497 = load i32, ptr %41, align 8, !tbaa !52
  %2498 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2389, i32 %2497), !nosanitize !47
  %2499 = extractvalue { i32, i1 } %2498, 0, !nosanitize !47
  %2500 = extractvalue { i32, i1 } %2498, 1, !nosanitize !47
  br i1 %2500, label %2501, label %2502, !prof !48, !nosanitize !47

2501:                                             ; preds = %2496
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2502:                                             ; preds = %2496
  %2503 = zext i32 %2493 to i64
  %2504 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2505 = load i64, ptr %2504, align 8, !tbaa !22
  %2506 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2505, i64 %2503), !nosanitize !47
  %2507 = extractvalue { i64, i1 } %2506, 1, !nosanitize !47
  br i1 %2507, label %2508, label %2509, !prof !48, !nosanitize !47

2508:                                             ; preds = %2502
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2509:                                             ; preds = %2502
  %2510 = extractvalue { i64, i1 } %2506, 0, !nosanitize !47
  store i64 %2510, ptr %2504, align 8, !tbaa !22
  %2511 = zext i32 %2499 to i64
  %2512 = load i64, ptr %50, align 8, !tbaa !113
  %2513 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2512, i64 %2511), !nosanitize !47
  %2514 = extractvalue { i64, i1 } %2513, 1, !nosanitize !47
  br i1 %2514, label %2515, label %2516, !prof !48, !nosanitize !47

2515:                                             ; preds = %2509
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2516:                                             ; preds = %2509
  %2517 = extractvalue { i64, i1 } %2513, 0, !nosanitize !47
  store i64 %2517, ptr %50, align 8, !tbaa !113
  %2518 = load i64, ptr %51, align 8, !tbaa !21
  %2519 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2518, i64 %2511), !nosanitize !47
  %2520 = extractvalue { i64, i1 } %2519, 1, !nosanitize !47
  br i1 %2520, label %2521, label %2522, !prof !48, !nosanitize !47

2521:                                             ; preds = %2556, %2549, %2542, %2516
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2522:                                             ; preds = %2516
  %2523 = extractvalue { i64, i1 } %2519, 0, !nosanitize !47
  store i64 %2523, ptr %51, align 8, !tbaa !21
  %2524 = load i32, ptr %49, align 8, !tbaa !24
  %2525 = and i32 %2524, 4
  %2526 = icmp ne i32 %2525, 0
  %2527 = icmp ne i32 %2499, 0
  %2528 = select i1 %2526, i1 %2527, i1 false
  br i1 %2528, label %2529, label %2542

2529:                                             ; preds = %2522
  %2530 = load i32, ptr %52, align 8, !tbaa !28
  %2531 = icmp eq i32 %2530, 0
  %2532 = load i64, ptr %53, align 8, !tbaa !56
  %2533 = load ptr, ptr %26, align 8, !tbaa !49
  %2534 = sub nsw i64 0, %2511
  %2535 = getelementptr inbounds i8, ptr %2533, i64 %2534
  br i1 %2531, label %2538, label %2536

2536:                                             ; preds = %2529
  %2537 = call i64 @crc32(i64 noundef %2532, ptr noundef nonnull %2535, i32 noundef %2499) #12
  br label %2540

2538:                                             ; preds = %2529
  %2539 = call i64 @adler32(i64 noundef %2532, ptr noundef nonnull %2535, i32 noundef %2499) #12
  br label %2540

2540:                                             ; preds = %2538, %2536
  %2541 = phi i64 [ %2537, %2536 ], [ %2539, %2538 ]
  store i64 %2541, ptr %53, align 8, !tbaa !56
  store i64 %2541, ptr %54, align 8, !tbaa !25
  br label %2542

2542:                                             ; preds = %2540, %2522
  %2543 = load i32, ptr %47, align 8, !tbaa !32
  %2544 = load i32, ptr %83, align 4, !tbaa !26
  %2545 = icmp eq i32 %2544, 0
  %2546 = select i1 %2545, i32 0, i32 64
  %2547 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2543, i32 %2546), !nosanitize !47
  %2548 = extractvalue { i32, i1 } %2547, 1, !nosanitize !47
  br i1 %2548, label %2521, label %2549, !prof !48, !nosanitize !47

2549:                                             ; preds = %2542
  %2550 = extractvalue { i32, i1 } %2547, 0, !nosanitize !47
  %2551 = load i32, ptr %21, align 8, !tbaa !20
  %2552 = icmp eq i32 %2551, 16191
  %2553 = select i1 %2552, i32 128, i32 0
  %2554 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2550, i32 %2553), !nosanitize !47
  %2555 = extractvalue { i32, i1 } %2554, 1, !nosanitize !47
  br i1 %2555, label %2521, label %2556, !prof !48, !nosanitize !47

2556:                                             ; preds = %2549
  %2557 = extractvalue { i32, i1 } %2554, 0, !nosanitize !47
  %2558 = icmp eq i32 %2551, 16199
  %2559 = icmp eq i32 %2551, 16194
  %2560 = or i1 %2558, %2559
  %2561 = select i1 %2560, i32 256, i32 0
  %2562 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2557, i32 %2561), !nosanitize !47
  %2563 = extractvalue { i32, i1 } %2562, 1, !nosanitize !47
  br i1 %2563, label %2521, label %2564, !prof !48, !nosanitize !47

2564:                                             ; preds = %2556
  %2565 = extractvalue { i32, i1 } %2562, 0, !nosanitize !47
  %2566 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %2565, ptr %2566, align 8, !tbaa !23
  %2567 = icmp eq i32 %2493, 0
  %2568 = icmp eq i32 %2499, 0
  %2569 = select i1 %2567, i1 %2568, i1 false
  %2570 = icmp eq i32 %1, 4
  %2571 = or i1 %2570, %2569
  %2572 = icmp eq i32 %2390, 0
  %2573 = select i1 %2571, i1 %2572, i1 false
  %2574 = select i1 %2573, i32 -5, i32 %2390
  br label %.loopexit164

.loopexit164.loopexit:                            ; preds = %88
  br label %.loopexit164

.loopexit164:                                     ; preds = %88, %.loopexit164.loopexit, %2564, %2489, %845, %32, %25, %20, %17, %13, %9, %5, %2
  %2575 = phi i32 [ -4, %2489 ], [ %2574, %2564 ], [ 2, %845 ], [ -2, %32 ], [ -2, %25 ], [ -2, %20 ], [ -2, %9 ], [ -2, %5 ], [ -2, %2 ], [ -2, %17 ], [ -2, %13 ], [ -2, %.loopexit164.loopexit ], [ -4, %88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %2575
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
  br i1 %4, label %119, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %119, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %119, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %119, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !16
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %119

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %119

25:                                               ; preds = %20
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %27 = load i32, ptr %26, align 8, !tbaa !24
  %28 = icmp eq i32 %27, 0
  %29 = icmp eq i32 %22, 16190
  br i1 %28, label %31, label %30

30:                                               ; preds = %25
  br i1 %29, label %32, label %119

31:                                               ; preds = %25
  br i1 %29, label %32, label %40

32:                                               ; preds = %31, %30
  %33 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  %34 = tail call i64 @adler32(i64 noundef %33, ptr noundef %1, i32 noundef %2) #12
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %36 = load i64, ptr %35, align 8, !tbaa !56
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %119

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
  br i1 %55, label %116, label %56

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
  br label %117

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
  %.not = icmp ugt i32 %2, %84
  br i1 %.not, label %89, label %97

89:                                               ; preds = %83
  %90 = sub i32 %2, %85
  %91 = load ptr, ptr %44, align 8, !tbaa !41
  %92 = zext i32 %90 to i64
  %93 = sub nsw i64 0, %92
  %94 = getelementptr inbounds i8, ptr %43, i64 %93
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %91, ptr nonnull readonly align 1 %94, i64 %92, i1 false)
  store i32 %90, ptr %78, align 4, !tbaa !40
  %95 = load i32, ptr %58, align 4, !tbaa !38
  %96 = getelementptr inbounds nuw i8, ptr %41, i64 64
  store i32 %95, ptr %96, align 8, !tbaa !39
  br label %117

97:                                               ; preds = %83
  %98 = load i32, ptr %78, align 4, !tbaa !40
  %99 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %98, i32 %85), !nosanitize !47
  %100 = extractvalue { i32, i1 } %99, 1, !nosanitize !47
  br i1 %100, label %101, label %102, !prof !48, !nosanitize !47

101:                                              ; preds = %97
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

102:                                              ; preds = %97
  %103 = extractvalue { i32, i1 } %99, 0, !nosanitize !47
  %104 = load i32, ptr %58, align 4, !tbaa !38
  %105 = icmp eq i32 %103, %104
  %106 = select i1 %105, i32 0, i32 %103
  store i32 %106, ptr %78, align 4
  %107 = getelementptr inbounds nuw i8, ptr %41, i64 64
  %108 = load i32, ptr %107, align 8, !tbaa !39
  %109 = icmp ult i32 %108, %104
  br i1 %109, label %110, label %117

110:                                              ; preds = %102
  %111 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %108, i32 %85), !nosanitize !47
  %112 = extractvalue { i32, i1 } %111, 1, !nosanitize !47
  br i1 %112, label %113, label %114, !prof !48, !nosanitize !47

113:                                              ; preds = %110
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

114:                                              ; preds = %110
  %115 = extractvalue { i32, i1 } %111, 0, !nosanitize !47
  store i32 %115, ptr %107, align 8, !tbaa !39
  br label %117

116:                                              ; preds = %47
  store i32 16210, ptr %21, align 8, !tbaa !20
  br label %119

117:                                              ; preds = %114, %102, %89, %70
  %118 = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i32 1, ptr %118, align 4, !tbaa !27
  br label %119

119:                                              ; preds = %117, %116, %32, %30, %20, %17, %13, %9, %5, %3
  %120 = phi i32 [ -4, %116 ], [ 0, %117 ], [ -2, %20 ], [ -2, %30 ], [ -3, %32 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %120
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
  br i1 %3, label %202, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %202, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %202, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %202, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !16
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %202

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !20
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %202

24:                                               ; preds = %19
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %26 = load i32, ptr %25, align 8, !tbaa !51
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %14, i64 88
  %30 = load i32, ptr %29, align 8, !tbaa !32
  %31 = icmp ult i32 %30, 8
  br i1 %31, label %202, label %32

32:                                               ; preds = %28, %24
  %33 = icmp eq i32 %21, 16211
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = getelementptr inbounds nuw i8, ptr %14, i64 140
  %36 = load i32, ptr %35, align 4, !tbaa !46
  br label %117

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
  %45 = and i32 %39, -8
  %46 = icmp ugt i32 %39, 7
  br i1 %46, label %48, label %47

47:                                               ; preds = %37
  store i32 %45, ptr %38, align 8, !tbaa !32
  br label %.loopexit

48:                                               ; preds = %37
  %49 = add i32 %45, -8
  %50 = lshr exact i32 %49, 3
  %51 = add nuw nsw i32 %50, 1
  %52 = zext nneg i32 %51 to i64
  %53 = and i64 %52, 3
  %54 = icmp ult i32 %49, 24
  br i1 %54, label %.loopexit7, label %55

55:                                               ; preds = %48
  %56 = and i64 %52, 1073741820
  %57 = add nsw i64 %52, -4
  %58 = lshr i64 %57, 2
  %59 = add nuw nsw i64 %58, 1
  %xtraiter = and i64 %59, 3
  %60 = icmp ult i64 %57, 12
  br i1 %60, label %.epil.preheader, label %.new

.new:                                             ; preds = %55
  %unroll_iter = and i64 %59, 9223372036854775804
  br label %61

61:                                               ; preds = %61, %.new
  %62 = phi i64 [ %44, %.new ], [ 0, %61 ]
  %63 = phi i64 [ 0, %.new ], [ %74, %61 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %61 ]
  %64 = getelementptr inbounds nuw i8, ptr %2, i64 %63
  %65 = trunc i64 %62 to i32
  store i32 %65, ptr %64, align 1
  %66 = lshr i64 %62, 32
  %67 = getelementptr inbounds nuw i8, ptr %2, i64 %63
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 4
  %69 = trunc nuw i64 %66 to i32
  store i32 %69, ptr %68, align 1
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 %63
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 8
  store i32 0, ptr %71, align 1
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 %63
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 12
  store i32 0, ptr %73, align 1
  %74 = add nuw i64 %63, 16
  %niter.next.3 = add nuw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit7.loopexit.unr-lcssa, label %61, !llvm.loop !115

.loopexit7.loopexit.unr-lcssa:                    ; preds = %61
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit7, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit7.loopexit.unr-lcssa, %55
  %.epil.init = phi i64 [ %44, %55 ], [ 0, %.loopexit7.loopexit.unr-lcssa ]
  %.epil.init37 = phi i64 [ 0, %55 ], [ %74, %.loopexit7.loopexit.unr-lcssa ]
  %lcmp.mod39 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod39)
  br label %75

75:                                               ; preds = %75, %.epil.preheader
  %76 = phi i64 [ %.epil.init, %.epil.preheader ], [ %81, %75 ]
  %77 = phi i64 [ %.epil.init37, %.epil.preheader ], [ %80, %75 ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %75 ]
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 %77
  %79 = trunc i64 %76 to i32
  store i32 %79, ptr %78, align 1
  %80 = add nuw i64 %77, 4
  %81 = lshr i64 %76, 32
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit7, label %75, !llvm.loop !116

.loopexit7:                                       ; preds = %.loopexit7.loopexit.unr-lcssa, %75, %48
  %82 = phi i64 [ poison, %48 ], [ 0, %.loopexit7.loopexit.unr-lcssa ], [ %81, %75 ]
  %83 = phi i64 [ %44, %48 ], [ 0, %.loopexit7.loopexit.unr-lcssa ], [ %81, %75 ]
  %84 = phi i64 [ 0, %48 ], [ %56, %75 ], [ %56, %.loopexit7.loopexit.unr-lcssa ]
  %85 = icmp eq i64 %53, 0
  br i1 %85, label %.loopexit6, label %.preheader

.preheader:                                       ; preds = %.loopexit7, %.preheader
  %86 = phi i64 [ %92, %.preheader ], [ %83, %.loopexit7 ]
  %87 = phi i64 [ %89, %.preheader ], [ %84, %.loopexit7 ]
  %88 = phi i64 [ %93, %.preheader ], [ 0, %.loopexit7 ]
  %89 = add nuw nsw i64 %87, 1
  %90 = trunc i64 %86 to i8
  %91 = getelementptr inbounds nuw i8, ptr %2, i64 %87
  store i8 %90, ptr %91, align 1, !tbaa !44
  %92 = lshr i64 %86, 8
  %93 = add nuw nsw i64 %88, 1
  %94 = icmp eq i64 %93, %53
  br i1 %94, label %.loopexit6, label %.preheader, !llvm.loop !117

.loopexit6:                                       ; preds = %.preheader, %.loopexit7
  %95 = phi i64 [ %82, %.loopexit7 ], [ %92, %.preheader ]
  store i64 %95, ptr %41, align 8, !tbaa !31
  store i32 0, ptr %38, align 8, !tbaa !32
  br label %96

96:                                               ; preds = %96, %.loopexit6
  %97 = phi i64 [ 0, %.loopexit6 ], [ %99, %96 ]
  %98 = phi i32 [ 0, %.loopexit6 ], [ %110, %96 ]
  %99 = add nuw nsw i64 %97, 1
  %100 = icmp samesign ult i32 %98, 2
  %101 = select i1 %100, i32 0, i32 255
  %102 = getelementptr inbounds nuw i8, ptr %2, i64 %97
  %103 = load i8, ptr %102, align 1, !tbaa !44
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %101, %104
  %106 = add nuw nsw i32 %98, 1
  %107 = icmp eq i8 %103, 0
  %108 = sub nuw nsw i32 4, %98
  %109 = select i1 %107, i32 %108, i32 0
  %110 = select i1 %105, i32 %106, i32 %109
  %111 = icmp samesign ult i64 %99, %52
  %112 = icmp samesign ult i32 %110, 4
  %113 = select i1 %111, i1 %112, i1 false
  br i1 %113, label %96, label %.loopexit, !llvm.loop !118

.loopexit:                                        ; preds = %96, %47
  %114 = phi i32 [ 0, %47 ], [ %110, %96 ]
  %115 = getelementptr inbounds nuw i8, ptr %14, i64 140
  store i32 %114, ptr %115, align 4, !tbaa !46
  %116 = load i32, ptr %25, align 8, !tbaa !51
  br label %117

117:                                              ; preds = %.loopexit, %34
  %118 = phi i32 [ %114, %.loopexit ], [ %36, %34 ]
  %119 = phi i32 [ %116, %.loopexit ], [ %26, %34 ]
  %120 = getelementptr inbounds nuw i8, ptr %14, i64 140
  %121 = load ptr, ptr %0, align 8, !tbaa !50
  %122 = icmp ne i32 %119, 0
  %123 = icmp ult i32 %118, 4
  %124 = select i1 %122, i1 %123, i1 false
  br i1 %124, label %125, label %147

125:                                              ; preds = %117
  %126 = zext i32 %119 to i64
  br label %127

127:                                              ; preds = %127, %125
  %128 = phi i64 [ 0, %125 ], [ %130, %127 ]
  %129 = phi i32 [ %118, %125 ], [ %141, %127 ]
  %130 = add nuw nsw i64 %128, 1
  %131 = icmp samesign ult i32 %129, 2
  %132 = select i1 %131, i32 0, i32 255
  %133 = getelementptr inbounds nuw i8, ptr %121, i64 %128
  %134 = load i8, ptr %133, align 1, !tbaa !44
  %135 = zext i8 %134 to i32
  %136 = icmp eq i32 %132, %135
  %137 = add nuw nsw i32 %129, 1
  %138 = icmp eq i8 %134, 0
  %139 = sub nuw nsw i32 4, %129
  %140 = select i1 %138, i32 %139, i32 0
  %141 = select i1 %136, i32 %137, i32 %140
  %142 = icmp samesign ult i64 %130, %126
  %143 = icmp samesign ult i32 %141, 4
  %144 = select i1 %142, i1 %143, i1 false
  br i1 %144, label %127, label %145, !llvm.loop !118

145:                                              ; preds = %127
  %146 = trunc nuw i64 %130 to i32
  br label %147

147:                                              ; preds = %145, %117
  %148 = phi i32 [ %118, %117 ], [ %141, %145 ]
  %149 = phi i32 [ 0, %117 ], [ %146, %145 ]
  store i32 %148, ptr %120, align 4, !tbaa !46
  %150 = load i32, ptr %25, align 8, !tbaa !51
  %151 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %150, i32 %149), !nosanitize !47
  %152 = extractvalue { i32, i1 } %151, 1, !nosanitize !47
  br i1 %152, label %153, label %154, !prof !48, !nosanitize !47

153:                                              ; preds = %147
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

154:                                              ; preds = %147
  %155 = extractvalue { i32, i1 } %151, 0, !nosanitize !47
  store i32 %155, ptr %25, align 8, !tbaa !51
  %156 = zext i32 %149 to i64
  %157 = getelementptr inbounds nuw i8, ptr %121, i64 %156
  store ptr %157, ptr %0, align 8, !tbaa !50
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %159 = load i64, ptr %158, align 8, !tbaa !22
  %160 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %159, i64 %156), !nosanitize !47
  %161 = extractvalue { i64, i1 } %160, 1, !nosanitize !47
  br i1 %161, label %162, label %163, !prof !48, !nosanitize !47

162:                                              ; preds = %154
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

163:                                              ; preds = %154
  %164 = extractvalue { i64, i1 } %160, 0, !nosanitize !47
  store i64 %164, ptr %158, align 8, !tbaa !22
  %165 = icmp eq i32 %148, 4
  br i1 %165, label %166, label %202

166:                                              ; preds = %163
  %167 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %168 = load i32, ptr %167, align 8, !tbaa !28
  %169 = icmp eq i32 %168, -1
  %170 = getelementptr inbounds nuw i8, ptr %14, i64 16
  br i1 %169, label %174, label %171

171:                                              ; preds = %166
  %172 = load i32, ptr %170, align 8, !tbaa !24
  %173 = and i32 %172, -5
  br label %174

174:                                              ; preds = %171, %166
  %175 = phi i32 [ %173, %171 ], [ 0, %166 ]
  store i32 %175, ptr %170, align 8, !tbaa !24
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %177 = load i64, ptr %176, align 8, !tbaa !113
  %178 = getelementptr inbounds nuw i8, ptr %14, i64 60
  store i32 0, ptr %178, align 4, !tbaa !38
  %179 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i32 0, ptr %179, align 8, !tbaa !39
  %180 = getelementptr inbounds nuw i8, ptr %14, i64 68
  store i32 0, ptr %180, align 4, !tbaa !40
  %181 = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 0, ptr %181, align 8, !tbaa !21
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %182, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %176, i8 0, i64 16, i1 false)
  %183 = load i32, ptr %170, align 8, !tbaa !24
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %174
  %186 = and i32 %183, 1
  %187 = zext nneg i32 %186 to i64
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %187, ptr %188, align 8, !tbaa !25
  br label %189

189:                                              ; preds = %185, %174
  %190 = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 0, ptr %190, align 4, !tbaa !26
  %191 = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %191, align 4, !tbaa !27
  %192 = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 32768, ptr %192, align 4, !tbaa !29
  %193 = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr null, ptr %193, align 8, !tbaa !30
  %194 = getelementptr inbounds nuw i8, ptr %14, i64 80
  store i64 0, ptr %194, align 8, !tbaa !31
  %195 = getelementptr inbounds nuw i8, ptr %14, i64 88
  store i32 0, ptr %195, align 8, !tbaa !32
  %196 = getelementptr inbounds nuw i8, ptr %14, i64 1368
  %197 = getelementptr inbounds nuw i8, ptr %14, i64 144
  store ptr %196, ptr %197, align 8, !tbaa !33
  %198 = getelementptr inbounds nuw i8, ptr %14, i64 112
  store ptr %196, ptr %198, align 8, !tbaa !34
  %199 = getelementptr inbounds nuw i8, ptr %14, i64 104
  store ptr %196, ptr %199, align 8, !tbaa !35
  %200 = getelementptr inbounds nuw i8, ptr %14, i64 7144
  store i32 1, ptr %200, align 8, !tbaa !36
  %201 = getelementptr inbounds nuw i8, ptr %14, i64 7148
  store i32 -1, ptr %201, align 4, !tbaa !37
  store i64 %164, ptr %158, align 8, !tbaa !22
  store i64 %177, ptr %176, align 8, !tbaa !113
  store i32 %168, ptr %167, align 8, !tbaa !28
  store i32 16191, ptr %20, align 8, !tbaa !20
  br label %202

202:                                              ; preds = %189, %163, %28, %19, %16, %12, %8, %4, %1
  %203 = phi i32 [ 0, %189 ], [ -2, %19 ], [ -5, %28 ], [ -3, %163 ], [ -2, %8 ], [ -2, %4 ], [ -2, %1 ], [ -2, %16 ], [ -2, %12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %203
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
