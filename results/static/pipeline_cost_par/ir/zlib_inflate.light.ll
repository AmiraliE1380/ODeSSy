; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_inflate.light.mid.ll'
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

88:                                               ; preds = %2257, %39
  %89 = phi i32 [ %40, %39 ], [ %2266, %2257 ]
  %90 = phi ptr [ %30, %39 ], [ %2258, %2257 ]
  %91 = phi ptr [ %27, %39 ], [ %2259, %2257 ]
  %92 = phi i32 [ %44, %39 ], [ %2260, %2257 ]
  %93 = phi i32 [ %42, %39 ], [ %2261, %2257 ]
  %94 = phi i64 [ %46, %39 ], [ %2262, %2257 ]
  %95 = phi i32 [ %48, %39 ], [ %2263, %2257 ]
  %96 = phi i32 [ %42, %39 ], [ %2264, %2257 ]
  %97 = phi i32 [ 0, %39 ], [ %2265, %2257 ]
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
    i32 16197, label %1070
    i32 16198, label %1144
    i32 16199, label %1440
    i32 16200, label %1446
    i32 16201, label %101
    i32 16202, label %1686
    i32 16203, label %99
    i32 16204, label %1912
    i32 16205, label %2027
    i32 16206, label %2034
    i32 16207, label %103
    i32 16208, label %.loopexit162
    i32 16209, label %.loopexit162.loopexit4803
    i32 16210, label %.loopexit164
  ]

99:                                               ; preds = %88
  %100 = load i32, ptr %72, align 4, !tbaa !53
  br label %1847

101:                                              ; preds = %88
  %102 = load i32, ptr %72, align 4, !tbaa !53
  br label %1620

103:                                              ; preds = %88
  %104 = load i32, ptr %49, align 8, !tbaa !24
  br label %2164

105:                                              ; preds = %88
  %106 = icmp ult i32 %95, 14
  br i1 %106, label %107, label %1049

107:                                              ; preds = %105
  %108 = zext nneg i32 %95 to i64
  %109 = icmp eq i32 %92, 0
  br i1 %109, label %2358, label %1017

110:                                              ; preds = %88
  %111 = icmp ult i32 %95, 32
  br i1 %111, label %112, label %831

112:                                              ; preds = %110
  %113 = zext nneg i32 %95 to i64
  %114 = icmp eq i32 %92, 0
  br i1 %114, label %2307, label %778

115:                                              ; preds = %88
  %116 = icmp ult i32 %95, 16
  br i1 %116, label %117, label %250

117:                                              ; preds = %115
  %118 = zext nneg i32 %95 to i64
  %119 = icmp eq i32 %92, 0
  br i1 %119, label %2301, label %218

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
  br i1 %127, label %2271, label %129

128:                                              ; preds = %120
  store i32 16192, ptr %21, align 8, !tbaa !20
  br label %2257

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
  br i1 %143, label %2271, label %144

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
  br label %2257

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
  br label %2257

193:                                              ; preds = %185
  %194 = and i64 %164, 15
  %195 = icmp eq i64 %194, 8
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  store ptr @.str.2, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2257

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
  br label %2257

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
  br label %2257

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
  br i1 %232, label %2301, label %233

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
  br label %2257

259:                                              ; preds = %250
  %260 = and i32 %255, 57344
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %259
  store ptr @.str.4, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2257

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
  br i1 %289, label %2295, label %290

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
  br i1 %304, label %2295, label %305

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
  br i1 %318, label %2295, label %319

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
  br i1 %332, label %2295, label %333

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
  br i1 %372, label %2289, label %373

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
  br i1 %387, label %2289, label %388

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
  br i1 %440, label %2283, label %441

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
  br i1 %455, label %2283, label %456

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
  br i1 %718, label %2277, label %719

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
  br i1 %733, label %2277, label %734

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
  br label %2257

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
  br label %2257

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
  br i1 %792, label %2307, label %793

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
  br i1 %806, label %2307, label %807

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
  br i1 %820, label %2307, label %821

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
  br label %2257

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
  switch i32 %890, label %default.unreachable2541 [
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

default.unreachable2541:                          ; preds = %882
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
  br label %2257

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
  br i1 %911, label %2313, label %912

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
  br i1 %926, label %2313, label %927

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
  br i1 %940, label %2313, label %941

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
  br i1 %954, label %2313, label %955

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
  br label %2257

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
  br i1 %995, label %1016, label %996

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
  %1007 = load i32, ptr %56, align 4, !tbaa !67
  %1008 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1007, i32 %998), !nosanitize !47
  %1009 = extractvalue { i32, i1 } %1008, 1, !nosanitize !47
  br i1 %1009, label %1010, label %1011, !prof !48, !nosanitize !47

1010:                                             ; preds = %1006
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1011:                                             ; preds = %1006
  %1012 = sub i32 %93, %998
  %1013 = getelementptr inbounds nuw i8, ptr %990, i64 %1001
  %1014 = extractvalue { i32, i1 } %1008, 0, !nosanitize !47
  %1015 = getelementptr inbounds nuw i8, ptr %91, i64 %1001
  store i32 %1014, ptr %56, align 4, !tbaa !67
  br label %2257

1016:                                             ; preds = %989
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2257

1017:                                             ; preds = %107
  %1018 = load i8, ptr %90, align 1, !tbaa !44
  %1019 = zext i8 %1018 to i64
  %1020 = shl nuw nsw i64 %1019, %108
  %1021 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %1020), !nosanitize !47
  %1022 = extractvalue { i64, i1 } %1021, 1, !nosanitize !47
  br i1 %1022, label %1023, label %1024, !prof !48, !nosanitize !47

1023:                                             ; preds = %1032, %1017
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1024:                                             ; preds = %1017
  %1025 = extractvalue { i64, i1 } %1021, 0, !nosanitize !47
  %1026 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %1027 = add i32 %92, -1
  %1028 = add nuw nsw i64 %108, 8
  %1029 = icmp samesign ult i32 %95, 6
  br i1 %1029, label %1030, label %1043, !llvm.loop !81

1030:                                             ; preds = %1024
  %1031 = icmp eq i32 %1027, 0
  br i1 %1031, label %2358, label %1032

1032:                                             ; preds = %1030
  %1033 = load i8, ptr %1026, align 1, !tbaa !44
  %1034 = zext i8 %1033 to i64
  %1035 = shl nuw nsw i64 %1034, %1028
  %1036 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1025, i64 %1035), !nosanitize !47
  %1037 = extractvalue { i64, i1 } %1036, 1, !nosanitize !47
  br i1 %1037, label %1023, label %1038, !prof !48, !nosanitize !47

1038:                                             ; preds = %1032
  %1039 = extractvalue { i64, i1 } %1036, 0, !nosanitize !47
  %1040 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %1041 = add i32 %92, -2
  %1042 = or disjoint i64 %108, 16
  br label %1043

1043:                                             ; preds = %1038, %1024
  %1044 = phi i64 [ %1025, %1024 ], [ %1039, %1038 ]
  %1045 = phi ptr [ %1026, %1024 ], [ %1040, %1038 ]
  %1046 = phi i32 [ %1027, %1024 ], [ %1041, %1038 ]
  %1047 = phi i64 [ %1028, %1024 ], [ %1042, %1038 ]
  %1048 = trunc nuw nsw i64 %1047 to i32
  br label %1049

1049:                                             ; preds = %1043, %105
  %1050 = phi ptr [ %90, %105 ], [ %1045, %1043 ]
  %1051 = phi i32 [ %92, %105 ], [ %1046, %1043 ]
  %1052 = phi i64 [ %94, %105 ], [ %1044, %1043 ]
  %1053 = phi i32 [ %95, %105 ], [ %1048, %1043 ]
  %1054 = trunc i64 %1052 to i32
  %1055 = and i32 %1054, 31
  %1056 = add nuw nsw i32 %1055, 257
  store i32 %1056, ptr %57, align 4, !tbaa !82
  %1057 = lshr i32 %1054, 5
  %1058 = and i32 %1057, 31
  %1059 = add nuw nsw i32 %1058, 1
  store i32 %1059, ptr %58, align 8, !tbaa !83
  %1060 = lshr i32 %1054, 10
  %1061 = and i32 %1060, 15
  %1062 = add nuw nsw i32 %1061, 4
  store i32 %1062, ptr %59, align 8, !tbaa !84
  %1063 = lshr i64 %1052, 14
  %1064 = add i32 %1053, -14
  %1065 = icmp samesign ugt i32 %1055, 29
  %1066 = icmp samesign ugt i32 %1058, 29
  %1067 = select i1 %1065, i1 true, i1 %1066
  br i1 %1067, label %1068, label %1069

1068:                                             ; preds = %1049
  store ptr @.str.8, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2257

1069:                                             ; preds = %1049
  store i32 0, ptr %60, align 4, !tbaa !85
  store i32 16197, ptr %21, align 8, !tbaa !20
  br label %1074

1070:                                             ; preds = %88
  %1071 = load i32, ptr %59, align 8, !tbaa !84
  %1072 = load i32, ptr %60, align 4, !tbaa !85
  %1073 = icmp ult i32 %1072, %1071
  br i1 %1073, label %1074, label %.loopexit163

1074:                                             ; preds = %1070, %1069
  %1075 = phi i32 [ %1064, %1069 ], [ %95, %1070 ]
  %1076 = phi i64 [ %1063, %1069 ], [ %94, %1070 ]
  %1077 = phi i32 [ %1051, %1069 ], [ %92, %1070 ]
  %1078 = phi ptr [ %1050, %1069 ], [ %90, %1070 ]
  %1079 = phi i32 [ %1062, %1069 ], [ %1071, %1070 ]
  %1080 = phi i32 [ 0, %1069 ], [ %1072, %1070 ]
  %1081 = zext i32 %1080 to i64
  %1082 = zext i32 %1079 to i64
  br label %1091

.loopexit163:                                     ; preds = %1113, %1070
  %1083 = phi ptr [ %90, %1070 ], [ %1114, %1113 ]
  %1084 = phi i32 [ %92, %1070 ], [ %1115, %1113 ]
  %1085 = phi i64 [ %94, %1070 ], [ %1127, %1113 ]
  %1086 = phi i32 [ %95, %1070 ], [ %1126, %1113 ]
  %1087 = phi i32 [ %1072, %1070 ], [ %1079, %1113 ]
  %1088 = icmp ult i32 %1087, 19
  br i1 %1088, label %1089, label %1139

1089:                                             ; preds = %.loopexit163
  %1090 = zext nneg i32 %1087 to i64
  br label %1129

1091:                                             ; preds = %1113, %1074
  %1092 = phi i64 [ %1081, %1074 ], [ %1118, %1113 ]
  %1093 = phi i32 [ %1075, %1074 ], [ %1126, %1113 ]
  %1094 = phi i64 [ %1076, %1074 ], [ %1127, %1113 ]
  %1095 = phi i32 [ %1077, %1074 ], [ %1115, %1113 ]
  %1096 = phi ptr [ %1078, %1074 ], [ %1114, %1113 ]
  %1097 = icmp ult i32 %1093, 3
  br i1 %1097, label %1098, label %1113

1098:                                             ; preds = %1091
  %1099 = or disjoint i32 %1093, 8
  %1100 = icmp eq i32 %1095, 0
  br i1 %1100, label %.loopexit162, label %1101

1101:                                             ; preds = %1098
  %1102 = load i8, ptr %1096, align 1, !tbaa !44
  %1103 = zext i8 %1102 to i64
  %1104 = zext nneg i32 %1093 to i64
  %1105 = shl nuw nsw i64 %1103, %1104
  %1106 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1094, i64 %1105), !nosanitize !47
  %1107 = extractvalue { i64, i1 } %1106, 1, !nosanitize !47
  br i1 %1107, label %1108, label %1109, !prof !48, !nosanitize !47

1108:                                             ; preds = %1101
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1109:                                             ; preds = %1101
  %1110 = extractvalue { i64, i1 } %1106, 0, !nosanitize !47
  %1111 = getelementptr inbounds nuw i8, ptr %1096, i64 1
  %1112 = add i32 %1095, -1
  br label %1113

1113:                                             ; preds = %1109, %1091
  %1114 = phi ptr [ %1111, %1109 ], [ %1096, %1091 ]
  %1115 = phi i32 [ %1112, %1109 ], [ %1095, %1091 ]
  %1116 = phi i64 [ %1110, %1109 ], [ %1094, %1091 ]
  %1117 = phi i32 [ %1099, %1109 ], [ %1093, %1091 ]
  %1118 = add nuw nsw i64 %1092, 1
  %1119 = trunc i64 %1116 to i16
  %1120 = and i16 %1119, 7
  %1121 = trunc nuw i64 %1118 to i32
  store i32 %1121, ptr %60, align 4, !tbaa !85
  %1122 = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %1092
  %1123 = load i16, ptr %1122, align 2, !tbaa !86
  %1124 = zext i16 %1123 to i64
  %1125 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1124
  store i16 %1120, ptr %1125, align 2, !tbaa !86
  %1126 = add i32 %1117, -3
  %1127 = lshr i64 %1116, 3
  %1128 = icmp eq i64 %1118, %1082
  br i1 %1128, label %.loopexit163, label %1091, !llvm.loop !88

1129:                                             ; preds = %1129, %1089
  %1130 = phi i64 [ %1090, %1089 ], [ %1131, %1129 ]
  %1131 = add nuw nsw i64 %1130, 1
  %1132 = getelementptr inbounds nuw [2 x i8], ptr @inflate.order, i64 %1130
  %1133 = load i16, ptr %1132, align 2, !tbaa !86
  %1134 = zext i16 %1133 to i64
  %1135 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1134
  store i16 0, ptr %1135, align 2, !tbaa !86
  %1136 = and i64 %1131, 4294967295
  %1137 = icmp eq i64 %1136, 19
  br i1 %1137, label %1138, label %1129, !llvm.loop !89

1138:                                             ; preds = %1129
  store i32 19, ptr %60, align 4, !tbaa !85
  br label %1139

1139:                                             ; preds = %1138, %.loopexit163
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %64, align 8, !tbaa !34
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 7, ptr %66, align 8, !tbaa !90
  %1140 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %61, i32 noundef 19, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #12
  %1141 = icmp eq i32 %1140, 0
  br i1 %1141, label %1143, label %1142

1142:                                             ; preds = %1139
  store ptr @.str.9, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2257

1143:                                             ; preds = %1139
  store i32 0, ptr %60, align 4, !tbaa !85
  store i32 16198, ptr %21, align 8, !tbaa !20
  br label %1144

1144:                                             ; preds = %1143, %88
  %1145 = phi ptr [ %1083, %1143 ], [ %90, %88 ]
  %1146 = phi i32 [ %1084, %1143 ], [ %92, %88 ]
  %1147 = phi i64 [ %1085, %1143 ], [ %94, %88 ]
  %1148 = phi i32 [ %1086, %1143 ], [ %95, %88 ]
  %1149 = phi i32 [ 0, %1143 ], [ %97, %88 ]
  %1150 = load i32, ptr %57, align 4, !tbaa !82
  %1151 = load i32, ptr %58, align 8, !tbaa !83
  %1152 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1150, i32 %1151), !nosanitize !47
  %1153 = extractvalue { i32, i1 } %1152, 1, !nosanitize !47
  br i1 %1153, label %1166, label %1154, !prof !91, !nosanitize !47

1154:                                             ; preds = %1144
  %1155 = extractvalue { i32, i1 } %1152, 0, !nosanitize !47
  %1156 = load i32, ptr %60, align 4, !tbaa !85
  %.fr6017 = freeze i32 %1156
  %1157 = call i32 @llvm.umax.i32(i32 %.fr6017, i32 %1155)
  %1158 = zext i32 %1157 to i64
  %1159 = icmp ult i32 %.fr6017, %1155
  br i1 %1159, label %1160, label %.loopexit161

1160:                                             ; preds = %1154
  %1161 = zext i32 %.fr6017 to i64
  %1162 = load i32, ptr %66, align 8, !tbaa !90
  %1163 = shl nsw i32 -1, %1162
  %1164 = xor i32 %1163, -1
  %1165 = load ptr, ptr %65, align 8, !tbaa !35
  br label %1167

1166:                                             ; preds = %1144
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1167:                                             ; preds = %1415, %1160
  %1168 = phi ptr [ %1145, %1160 ], [ %1213, %1415 ]
  %1169 = phi i32 [ %1146, %1160 ], [ %1214, %1415 ]
  %1170 = phi i64 [ %1147, %1160 ], [ %1224, %1415 ]
  %1171 = phi i32 [ %1148, %1160 ], [ %1226, %1415 ]
  %1172 = phi i64 [ %1161, %1160 ], [ %1416, %1415 ]
  %1173 = trunc i64 %1170 to i32
  %1174 = and i32 %1173, %1164
  %1175 = zext nneg i32 %1174 to i64
  %.split = getelementptr inbounds nuw [4 x i8], ptr %1165, i64 %1175
  %1176 = getelementptr inbounds nuw i8, ptr %.split, i64 1
  %1177 = load i8, ptr %1176, align 1, !tbaa !44
  %1178 = zext i8 %1177 to i32
  %1179 = icmp ult i32 %1171, %1178
  br i1 %1179, label %1180, label %1211

1180:                                             ; preds = %1167
  %1181 = icmp eq i32 %1169, 0
  br i1 %1181, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %1180
  %1182 = zext nneg i32 %1171 to i64
  br label %1185

1183:                                             ; preds = %1196
  %1184 = icmp eq i32 %1199, 0
  br i1 %1184, label %._crit_edge, label %1185

1185:                                             ; preds = %.lr.ph, %1183
  %1186 = phi ptr [ %1168, %.lr.ph ], [ %1198, %1183 ]
  %1187 = phi i32 [ %1169, %.lr.ph ], [ %1199, %1183 ]
  %1188 = phi i64 [ %1170, %.lr.ph ], [ %1197, %1183 ]
  %1189 = phi i64 [ %1182, %.lr.ph ], [ %1200, %1183 ]
  %1190 = load i8, ptr %1186, align 1, !tbaa !44
  %1191 = zext i8 %1190 to i64
  %1192 = shl i64 %1191, %1189
  %1193 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1188, i64 %1192), !nosanitize !47
  %1194 = extractvalue { i64, i1 } %1193, 1, !nosanitize !47
  br i1 %1194, label %1195, label %1196, !prof !48, !nosanitize !47

1195:                                             ; preds = %1185
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1196:                                             ; preds = %1185
  %1197 = extractvalue { i64, i1 } %1193, 0, !nosanitize !47
  %1198 = getelementptr inbounds nuw i8, ptr %1186, i64 1
  %1199 = add i32 %1187, -1
  %1200 = add nuw nsw i64 %1189, 8
  %1201 = trunc i64 %1197 to i32
  %1202 = and i32 %1201, %1164
  %1203 = zext nneg i32 %1202 to i64
  %.split158 = getelementptr inbounds nuw [4 x i8], ptr %1165, i64 %1203
  %1204 = getelementptr inbounds nuw i8, ptr %.split158, i64 1
  %1205 = load i8, ptr %1204, align 1, !tbaa !44
  %1206 = zext i8 %1205 to i64
  %1207 = icmp samesign ult i64 %1200, %1206
  br i1 %1207, label %1183, label %1208

1208:                                             ; preds = %1196
  %1209 = zext i8 %1205 to i32
  %1210 = trunc nuw nsw i64 %1200 to i32
  br label %1211

1211:                                             ; preds = %1208, %1167
  %1212 = phi i64 [ %1175, %1167 ], [ %1203, %1208 ]
  %1213 = phi ptr [ %1168, %1167 ], [ %1198, %1208 ]
  %1214 = phi i32 [ %1169, %1167 ], [ %1199, %1208 ]
  %1215 = phi i64 [ %1170, %1167 ], [ %1197, %1208 ]
  %1216 = phi i32 [ %1171, %1167 ], [ %1210, %1208 ]
  %1217 = phi i8 [ %1177, %1167 ], [ %1205, %1208 ]
  %1218 = phi i32 [ %1178, %1167 ], [ %1209, %1208 ]
  %.split159 = getelementptr inbounds nuw [4 x i8], ptr %1165, i64 %1212
  %1219 = getelementptr inbounds nuw i8, ptr %.split159, i64 2
  %1220 = load i16, ptr %1219, align 2, !tbaa !86
  %1221 = icmp ult i16 %1220, 16
  br i1 %1221, label %1222, label %1232

1222:                                             ; preds = %1211
  %1223 = zext nneg i8 %1217 to i64
  %1224 = lshr i64 %1215, %1223
  %1225 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1216, i32 %1218), !nosanitize !47
  %1226 = extractvalue { i32, i1 } %1225, 0, !nosanitize !47
  %1227 = extractvalue { i32, i1 } %1225, 1, !nosanitize !47
  br i1 %1227, label %1228, label %1229, !prof !48, !nosanitize !47

1228:                                             ; preds = %1222
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1229:                                             ; preds = %1222
  %1230 = icmp eq i64 %1172, 4294967295
  br i1 %1230, label %1231, label %1415, !prof !48, !nosanitize !47

1231:                                             ; preds = %1229
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1232:                                             ; preds = %1211
  %indvars2290.le = trunc nuw i64 %1172 to i32
  switch i16 %1220, label %1245 [
    i16 16, label %1239
    i16 17, label %1233
  ]

1233:                                             ; preds = %1232
  %1234 = add nuw nsw i32 %1218, 3
  %1235 = icmp ult i32 %1216, %1234
  br i1 %1235, label %1236, label %1316

1236:                                             ; preds = %1233
  %1237 = zext nneg i32 %1216 to i64
  %1238 = zext nneg i32 %1234 to i64
  br label %1295

1239:                                             ; preds = %1232
  %1240 = add nuw nsw i32 %1218, 2
  %1241 = icmp ult i32 %1216, %1240
  br i1 %1241, label %1242, label %1272

1242:                                             ; preds = %1239
  %1243 = zext nneg i32 %1216 to i64
  %1244 = zext nneg i32 %1240 to i64
  br label %1251

1245:                                             ; preds = %1232
  %1246 = add nuw nsw i32 %1218, 7
  %1247 = icmp ult i32 %1216, %1246
  br i1 %1247, label %1248, label %1353

1248:                                             ; preds = %1245
  %1249 = zext nneg i32 %1216 to i64
  %1250 = zext nneg i32 %1246 to i64
  br label %1332

1251:                                             ; preds = %1264, %1242
  %1252 = phi i64 [ %1243, %1242 ], [ %1268, %1264 ]
  %1253 = phi i64 [ %1215, %1242 ], [ %1265, %1264 ]
  %1254 = phi i32 [ %1214, %1242 ], [ %1267, %1264 ]
  %1255 = phi ptr [ %1213, %1242 ], [ %1266, %1264 ]
  %1256 = icmp eq i32 %1254, 0
  br i1 %1256, label %2348, label %1257

1257:                                             ; preds = %1251
  %1258 = load i8, ptr %1255, align 1, !tbaa !44
  %1259 = zext i8 %1258 to i64
  %1260 = shl i64 %1259, %1252
  %1261 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1253, i64 %1260), !nosanitize !47
  %1262 = extractvalue { i64, i1 } %1261, 1, !nosanitize !47
  br i1 %1262, label %1263, label %1264, !prof !48, !nosanitize !47

1263:                                             ; preds = %1257
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1264:                                             ; preds = %1257
  %1265 = extractvalue { i64, i1 } %1261, 0, !nosanitize !47
  %1266 = getelementptr inbounds nuw i8, ptr %1255, i64 1
  %1267 = add i32 %1254, -1
  %1268 = add nuw nsw i64 %1252, 8
  %1269 = icmp samesign ult i64 %1268, %1244
  br i1 %1269, label %1251, label %1270, !llvm.loop !92

1270:                                             ; preds = %1264
  %1271 = trunc nuw nsw i64 %1268 to i32
  br label %1272

1272:                                             ; preds = %1270, %1239
  %1273 = phi ptr [ %1213, %1239 ], [ %1266, %1270 ]
  %1274 = phi i32 [ %1214, %1239 ], [ %1267, %1270 ]
  %1275 = phi i64 [ %1215, %1239 ], [ %1265, %1270 ]
  %1276 = phi i32 [ %1216, %1239 ], [ %1271, %1270 ]
  %1277 = zext nneg i8 %1217 to i64
  %1278 = lshr i64 %1275, %1277
  %1279 = sub nuw i32 %1276, %1218
  %1280 = icmp eq i64 %1172, 0
  br i1 %1280, label %1281, label %1282

1281:                                             ; preds = %1272
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2257

1282:                                             ; preds = %1272
  %1283 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1279, i32 2), !nosanitize !47
  %1284 = extractvalue { i32, i1 } %1283, 1, !nosanitize !47
  br i1 %1284, label %1285, label %1286, !prof !48, !nosanitize !47

1285:                                             ; preds = %1282
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1286:                                             ; preds = %1282
  %1287 = trunc i64 %1278 to i32
  %1288 = and i32 %1287, 3
  %1289 = add nuw nsw i32 %1288, 3
  %1290 = add nuw nsw i64 %1172, 4294967295
  %1291 = and i64 %1290, 4294967295
  %1292 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1291
  %1293 = load i16, ptr %1292, align 2, !tbaa !86
  %1294 = lshr i64 %1278, 2
  br label %1369

1295:                                             ; preds = %1308, %1236
  %1296 = phi i64 [ %1237, %1236 ], [ %1312, %1308 ]
  %1297 = phi i64 [ %1215, %1236 ], [ %1309, %1308 ]
  %1298 = phi i32 [ %1214, %1236 ], [ %1311, %1308 ]
  %1299 = phi ptr [ %1213, %1236 ], [ %1310, %1308 ]
  %1300 = icmp eq i32 %1298, 0
  br i1 %1300, label %2353, label %1301

1301:                                             ; preds = %1295
  %1302 = load i8, ptr %1299, align 1, !tbaa !44
  %1303 = zext i8 %1302 to i64
  %1304 = shl i64 %1303, %1296
  %1305 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1297, i64 %1304), !nosanitize !47
  %1306 = extractvalue { i64, i1 } %1305, 1, !nosanitize !47
  br i1 %1306, label %1307, label %1308, !prof !48, !nosanitize !47

1307:                                             ; preds = %1301
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1308:                                             ; preds = %1301
  %1309 = extractvalue { i64, i1 } %1305, 0, !nosanitize !47
  %1310 = getelementptr inbounds nuw i8, ptr %1299, i64 1
  %1311 = add i32 %1298, -1
  %1312 = add nuw nsw i64 %1296, 8
  %1313 = icmp samesign ult i64 %1312, %1238
  br i1 %1313, label %1295, label %1314, !llvm.loop !93

1314:                                             ; preds = %1308
  %1315 = trunc nuw nsw i64 %1312 to i32
  br label %1316

1316:                                             ; preds = %1314, %1233
  %1317 = phi ptr [ %1213, %1233 ], [ %1310, %1314 ]
  %1318 = phi i32 [ %1214, %1233 ], [ %1311, %1314 ]
  %1319 = phi i64 [ %1215, %1233 ], [ %1309, %1314 ]
  %1320 = phi i32 [ %1216, %1233 ], [ %1315, %1314 ]
  %1321 = sub nuw i32 %1320, %1218
  %1322 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1321, i32 3), !nosanitize !47
  %1323 = extractvalue { i32, i1 } %1322, 1, !nosanitize !47
  br i1 %1323, label %1324, label %1325, !prof !48, !nosanitize !47

1324:                                             ; preds = %1316
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1325:                                             ; preds = %1316
  %1326 = zext nneg i8 %1217 to i64
  %1327 = lshr i64 %1319, %1326
  %1328 = trunc i64 %1327 to i32
  %1329 = and i32 %1328, 7
  %1330 = add nuw nsw i32 %1329, 3
  %1331 = lshr i64 %1327, 3
  br label %1369

1332:                                             ; preds = %1345, %1248
  %1333 = phi i64 [ %1249, %1248 ], [ %1349, %1345 ]
  %1334 = phi i64 [ %1215, %1248 ], [ %1346, %1345 ]
  %1335 = phi i32 [ %1214, %1248 ], [ %1348, %1345 ]
  %1336 = phi ptr [ %1213, %1248 ], [ %1347, %1345 ]
  %1337 = icmp eq i32 %1335, 0
  br i1 %1337, label %2343, label %1338

1338:                                             ; preds = %1332
  %1339 = load i8, ptr %1336, align 1, !tbaa !44
  %1340 = zext i8 %1339 to i64
  %1341 = shl i64 %1340, %1333
  %1342 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1334, i64 %1341), !nosanitize !47
  %1343 = extractvalue { i64, i1 } %1342, 1, !nosanitize !47
  br i1 %1343, label %1344, label %1345, !prof !48, !nosanitize !47

1344:                                             ; preds = %1338
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1345:                                             ; preds = %1338
  %1346 = extractvalue { i64, i1 } %1342, 0, !nosanitize !47
  %1347 = getelementptr inbounds nuw i8, ptr %1336, i64 1
  %1348 = add i32 %1335, -1
  %1349 = add nuw nsw i64 %1333, 8
  %1350 = icmp samesign ult i64 %1349, %1250
  br i1 %1350, label %1332, label %1351, !llvm.loop !94

1351:                                             ; preds = %1345
  %1352 = trunc nuw nsw i64 %1349 to i32
  br label %1353

1353:                                             ; preds = %1351, %1245
  %1354 = phi ptr [ %1213, %1245 ], [ %1347, %1351 ]
  %1355 = phi i32 [ %1214, %1245 ], [ %1348, %1351 ]
  %1356 = phi i64 [ %1215, %1245 ], [ %1346, %1351 ]
  %1357 = phi i32 [ %1216, %1245 ], [ %1352, %1351 ]
  %1358 = sub nuw i32 %1357, %1218
  %1359 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1358, i32 7), !nosanitize !47
  %1360 = extractvalue { i32, i1 } %1359, 1, !nosanitize !47
  br i1 %1360, label %1361, label %1362, !prof !48, !nosanitize !47

1361:                                             ; preds = %1353
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1362:                                             ; preds = %1353
  %1363 = zext nneg i8 %1217 to i64
  %1364 = lshr i64 %1356, %1363
  %1365 = trunc i64 %1364 to i32
  %1366 = and i32 %1365, 127
  %1367 = add nuw nsw i32 %1366, 11
  %1368 = lshr i64 %1364, 7
  br label %1369

1369:                                             ; preds = %1362, %1325, %1286
  %1370 = phi ptr [ %1273, %1286 ], [ %1317, %1325 ], [ %1354, %1362 ]
  %1371 = phi i32 [ %1274, %1286 ], [ %1318, %1325 ], [ %1355, %1362 ]
  %1372 = phi i64 [ %1294, %1286 ], [ %1331, %1325 ], [ %1368, %1362 ]
  %1373 = phi { i32, i1 } [ %1283, %1286 ], [ %1322, %1325 ], [ %1359, %1362 ]
  %1374 = phi i32 [ %1289, %1286 ], [ %1330, %1325 ], [ %1367, %1362 ]
  %1375 = phi i16 [ %1293, %1286 ], [ 0, %1325 ], [ 0, %1362 ]
  %1376 = extractvalue { i32, i1 } %1373, 0
  %1377 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %indvars2290.le, i32 %1374), !nosanitize !47
  %1378 = extractvalue { i32, i1 } %1377, 1, !nosanitize !47
  br i1 %1378, label %1379, label %1380, !prof !48, !nosanitize !47

1379:                                             ; preds = %1369
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1380:                                             ; preds = %1369
  %1381 = extractvalue { i32, i1 } %1377, 0, !nosanitize !47
  %1382 = icmp ugt i32 %1381, %1155
  br i1 %1382, label %1395, label %1383

1383:                                             ; preds = %1380
  %1384 = and i64 %1172, 4294967295
  %1385 = icmp eq i64 %1384, 4294967295
  br i1 %1385, label %._crit_edge4781, label %.lr.ph4780, !prof !91, !nosanitize !47

.lr.ph4780:                                       ; preds = %1383
  %1386 = add nsw i32 %1374, -1
  %1387 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %1386, 0
  %1388 = and i64 %1172, 1
  %lcmp.mod6011.not.not = icmp eq i64 %1388, 0
  br i1 %lcmp.mod6011.not.not, label %.prol.preheader, label %.prol.loopexit, !prof !91

.prol.preheader:                                  ; preds = %.lr.ph4780
  %1389 = or disjoint i64 %1384, 1
  %1390 = trunc nuw i64 %1389 to i32
  store i32 %1390, ptr %60, align 4, !tbaa !85
  %1391 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1384
  store i16 %1375, ptr %1391, align 2, !tbaa !86
  %1392 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1386, i32 1), !nosanitize !47
  %1393 = extractvalue { i32, i1 } %1392, 1, !nosanitize !47
  br i1 %1393, label %1397, label %.prol.loopexit, !prof !95, !llvm.loop !96, !nosanitize !47

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph4780
  %.unr6013 = phi { i32, i1 } [ %1387, %.lr.ph4780 ], [ %1392, %.prol.preheader ]
  %.unr6014 = phi i64 [ %1384, %.lr.ph4780 ], [ %1389, %.prol.preheader ]
  %1394 = icmp eq i64 %1384, 4294967294
  br i1 %1394, label %._crit_edge4781, label %.lr.ph4780.new, !prof !91

1395:                                             ; preds = %1380
  store ptr @.str.10, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2257

.loopexit6015:                                    ; preds = %1398, %.lr.ph4780.new
  %1396 = phi i32 [ %1401, %1398 ], [ %1411, %.lr.ph4780.new ]
  store i32 %1396, ptr %60, align 4, !tbaa !85
  br label %1397

1397:                                             ; preds = %.loopexit6015, %.prol.preheader
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1398:                                             ; preds = %.lr.ph4780.new
  %1399 = extractvalue { i32, i1 } %1413, 0
  %1400 = add nuw nsw i64 %1408, 2
  %1401 = trunc nuw i64 %1400 to i32
  %1402 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1410
  store i16 %1375, ptr %1402, align 2, !tbaa !86
  %1403 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1399, i32 1), !nosanitize !47
  %1404 = extractvalue { i32, i1 } %1403, 1, !nosanitize !47
  br i1 %1404, label %.loopexit6015, label %1405, !prof !95, !llvm.loop !96, !nosanitize !47

1405:                                             ; preds = %1398
  %1406 = icmp eq i64 %1400, 4294967295
  br i1 %1406, label %._crit_edge4781.loopexit.unr-lcssa, label %.lr.ph4780.new, !prof !95, !llvm.loop !97, !nosanitize !47

._crit_edge4781.loopexit.unr-lcssa:               ; preds = %1405
  store i32 %1401, ptr %60, align 4, !tbaa !85
  br label %._crit_edge4781

._crit_edge4781:                                  ; preds = %._crit_edge4781.loopexit.unr-lcssa, %.prol.loopexit, %1383
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

.lr.ph4780.new:                                   ; preds = %.prol.loopexit, %1405
  %1407 = phi { i32, i1 } [ %1403, %1405 ], [ %.unr6013, %.prol.loopexit ]
  %1408 = phi i64 [ %1400, %1405 ], [ %.unr6014, %.prol.loopexit ]
  %1409 = extractvalue { i32, i1 } %1407, 0
  %1410 = add nuw nsw i64 %1408, 1
  %1411 = trunc nuw i64 %1410 to i32
  %1412 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1408
  store i16 %1375, ptr %1412, align 2, !tbaa !86
  %1413 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1409, i32 1), !nosanitize !47
  %1414 = extractvalue { i32, i1 } %1413, 1, !nosanitize !47
  br i1 %1414, label %.loopexit6015, label %1398, !prof !95, !llvm.loop !96, !nosanitize !47

1415:                                             ; preds = %1229
  %1416 = add i64 %1172, 1
  %indvars = trunc nuw i64 %1416 to i32
  store i32 %indvars, ptr %60, align 4, !tbaa !85
  %1417 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1172
  store i16 %1220, ptr %1417, align 2, !tbaa !86
  %1418 = icmp eq i64 %1416, %1158
  br i1 %1418, label %.loopexit161, label %1167

.loopexit161:                                     ; preds = %1415, %1154
  %1419 = phi i32 [ %1148, %1154 ], [ %1226, %1415 ]
  %1420 = phi i64 [ %1147, %1154 ], [ %1224, %1415 ]
  %1421 = phi i32 [ %1146, %1154 ], [ %1214, %1415 ]
  %1422 = phi ptr [ %1145, %1154 ], [ %1213, %1415 ]
  %1423 = load i16, ptr %68, align 8, !tbaa !86
  %1424 = icmp eq i16 %1423, 0
  br i1 %1424, label %1425, label %1426

1425:                                             ; preds = %.loopexit161
  store ptr @.str.11, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2257

1426:                                             ; preds = %.loopexit161
  store ptr %62, ptr %63, align 8, !tbaa !33
  store ptr %62, ptr %65, align 8, !tbaa !35
  store i32 9, ptr %66, align 8, !tbaa !90
  %1427 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %61, i32 noundef %1150, ptr noundef nonnull %63, ptr noundef nonnull %66, ptr noundef nonnull %67) #12
  %1428 = icmp eq i32 %1427, 0
  br i1 %1428, label %1430, label %1429

1429:                                             ; preds = %1426
  store ptr @.str.12, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2257

1430:                                             ; preds = %1426
  %1431 = load ptr, ptr %63, align 8, !tbaa !33
  store ptr %1431, ptr %64, align 8, !tbaa !34
  store i32 6, ptr %69, align 4, !tbaa !99
  %1432 = load i32, ptr %57, align 4, !tbaa !82
  %1433 = zext i32 %1432 to i64
  %1434 = getelementptr inbounds nuw [2 x i8], ptr %61, i64 %1433
  %1435 = load i32, ptr %58, align 8, !tbaa !83
  %1436 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %1434, i32 noundef %1435, ptr noundef nonnull %63, ptr noundef nonnull %69, ptr noundef nonnull %67) #12
  %1437 = icmp eq i32 %1436, 0
  br i1 %1437, label %1439, label %1438

1438:                                             ; preds = %1430
  store ptr @.str.13, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2257

1439:                                             ; preds = %1430
  store i32 16199, ptr %21, align 8, !tbaa !20
  br i1 %70, label %.loopexit162, label %1440

1440:                                             ; preds = %1439, %88
  %1441 = phi ptr [ %1422, %1439 ], [ %90, %88 ]
  %1442 = phi i32 [ %1421, %1439 ], [ %92, %88 ]
  %1443 = phi i64 [ %1420, %1439 ], [ %94, %88 ]
  %1444 = phi i32 [ %1419, %1439 ], [ %95, %88 ]
  %1445 = phi i32 [ 0, %1439 ], [ %97, %88 ]
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %1446

1446:                                             ; preds = %1440, %88
  %1447 = phi ptr [ %1441, %1440 ], [ %90, %88 ]
  %1448 = phi i32 [ %1442, %1440 ], [ %92, %88 ]
  %1449 = phi i64 [ %1443, %1440 ], [ %94, %88 ]
  %1450 = phi i32 [ %1444, %1440 ], [ %95, %88 ]
  %1451 = phi i32 [ %1445, %1440 ], [ %97, %88 ]
  %1452 = icmp ugt i32 %1448, 5
  %1453 = icmp ugt i32 %93, 257
  %1454 = select i1 %1452, i1 %1453, i1 false
  br i1 %1454, label %1455, label %1465

1455:                                             ; preds = %1446
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %93, ptr %41, align 8, !tbaa !52
  store ptr %1447, ptr %0, align 8, !tbaa !50
  store i32 %1448, ptr %43, align 8, !tbaa !51
  store i64 %1449, ptr %45, align 8, !tbaa !31
  store i32 %1450, ptr %47, align 8, !tbaa !32
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %96) #12
  %1456 = load ptr, ptr %26, align 8, !tbaa !49
  %1457 = load i32, ptr %41, align 8, !tbaa !52
  %1458 = load ptr, ptr %0, align 8, !tbaa !50
  %1459 = load i32, ptr %43, align 8, !tbaa !51
  %1460 = load i64, ptr %45, align 8, !tbaa !31
  %1461 = load i32, ptr %47, align 8, !tbaa !32
  %1462 = load i32, ptr %21, align 8, !tbaa !20
  %1463 = icmp eq i32 %1462, 16191
  br i1 %1463, label %1464, label %2257

1464:                                             ; preds = %1455
  store i32 -1, ptr %71, align 4, !tbaa !37
  br label %2257

1465:                                             ; preds = %1446
  store i32 0, ptr %71, align 4, !tbaa !37
  %1466 = load i32, ptr %66, align 8, !tbaa !90
  %1467 = shl nsw i32 -1, %1466
  %1468 = xor i32 %1467, -1
  %1469 = load ptr, ptr %65, align 8, !tbaa !35
  %1470 = trunc i64 %1449 to i32
  %1471 = and i32 %1468, %1470
  %1472 = zext nneg i32 %1471 to i64
  %1473 = getelementptr inbounds nuw [4 x i8], ptr %1469, i64 %1472
  %1474 = getelementptr inbounds nuw i8, ptr %1473, i64 1
  %1475 = load i8, ptr %1474, align 1, !tbaa !44
  %1476 = zext i8 %1475 to i32
  %1477 = icmp ult i32 %1450, %1476
  br i1 %1477, label %1478, label %1510

1478:                                             ; preds = %1465
  %1479 = icmp eq i32 %1448, 0
  br i1 %1479, label %._crit_edge4661, label %.lr.ph4660

.lr.ph4660:                                       ; preds = %1478
  %1480 = zext nneg i32 %1450 to i64
  br label %1483

1481:                                             ; preds = %1494
  %1482 = icmp eq i32 %1497, 0
  br i1 %1482, label %._crit_edge4661, label %1483

1483:                                             ; preds = %.lr.ph4660, %1481
  %1484 = phi ptr [ %1447, %.lr.ph4660 ], [ %1496, %1481 ]
  %1485 = phi i32 [ %1448, %.lr.ph4660 ], [ %1497, %1481 ]
  %1486 = phi i64 [ %1449, %.lr.ph4660 ], [ %1495, %1481 ]
  %1487 = phi i64 [ %1480, %.lr.ph4660 ], [ %1498, %1481 ]
  %1488 = load i8, ptr %1484, align 1, !tbaa !44
  %1489 = zext i8 %1488 to i64
  %1490 = shl i64 %1489, %1487
  %1491 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1486, i64 %1490), !nosanitize !47
  %1492 = extractvalue { i64, i1 } %1491, 1, !nosanitize !47
  br i1 %1492, label %1493, label %1494, !prof !48, !nosanitize !47

1493:                                             ; preds = %1483
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1494:                                             ; preds = %1483
  %1495 = extractvalue { i64, i1 } %1491, 0, !nosanitize !47
  %1496 = getelementptr inbounds nuw i8, ptr %1484, i64 1
  %1497 = add i32 %1485, -1
  %1498 = add nuw nsw i64 %1487, 8
  %1499 = trunc i64 %1495 to i32
  %1500 = and i32 %1499, %1468
  %1501 = zext nneg i32 %1500 to i64
  %1502 = getelementptr inbounds nuw [4 x i8], ptr %1469, i64 %1501
  %1503 = getelementptr inbounds nuw i8, ptr %1502, i64 1
  %1504 = load i8, ptr %1503, align 1, !tbaa !44
  %1505 = zext i8 %1504 to i64
  %1506 = icmp samesign ult i64 %1498, %1505
  br i1 %1506, label %1481, label %1507

1507:                                             ; preds = %1494
  %1508 = zext i8 %1504 to i32
  %1509 = trunc nuw nsw i64 %1498 to i32
  br label %1510

1510:                                             ; preds = %1507, %1465
  %1511 = phi ptr [ %1473, %1465 ], [ %1502, %1507 ]
  %1512 = phi ptr [ %1447, %1465 ], [ %1496, %1507 ]
  %1513 = phi i32 [ %1448, %1465 ], [ %1497, %1507 ]
  %1514 = phi i64 [ %1449, %1465 ], [ %1495, %1507 ]
  %1515 = phi i32 [ %1450, %1465 ], [ %1509, %1507 ]
  %1516 = phi i8 [ %1475, %1465 ], [ %1504, %1507 ]
  %1517 = phi i32 [ %1476, %1465 ], [ %1508, %1507 ]
  %1518 = getelementptr inbounds nuw i8, ptr %1511, i64 2
  %1519 = load i16, ptr %1518, align 2, !tbaa !86
  %1520 = load i8, ptr %1511, align 2, !tbaa !44
  %1521 = add i8 %1520, -1
  %1522 = icmp ult i8 %1521, 15
  br i1 %1522, label %1523, label %1588

1523:                                             ; preds = %1510
  %1524 = zext nneg i8 %1520 to i32
  %1525 = add nuw nsw i32 %1517, %1524
  %1526 = shl nsw i32 -1, %1525
  %1527 = xor i32 %1526, -1
  %1528 = zext i16 %1519 to i32
  %1529 = trunc i64 %1514 to i32
  %1530 = and i32 %1527, %1529
  %1531 = lshr i32 %1530, %1517
  %1532 = add nuw i32 %1531, %1528
  %1533 = zext i32 %1532 to i64
  %1534 = getelementptr inbounds nuw [4 x i8], ptr %1469, i64 %1533
  %1535 = getelementptr inbounds nuw i8, ptr %1534, i64 1
  %1536 = load i8, ptr %1535, align 1, !tbaa !44
  %1537 = zext i8 %1536 to i32
  %1538 = add nuw nsw i32 %1517, %1537
  %1539 = icmp ugt i32 %1538, %1515
  br i1 %1539, label %1540, label %1575

1540:                                             ; preds = %1523
  %1541 = icmp eq i32 %1513, 0
  br i1 %1541, label %._crit_edge4681, label %.lr.ph4680

.lr.ph4680:                                       ; preds = %1540
  %1542 = zext nneg i32 %1515 to i64
  br label %1545

1543:                                             ; preds = %1556
  %1544 = icmp eq i32 %1559, 0
  br i1 %1544, label %._crit_edge4681, label %1545

1545:                                             ; preds = %.lr.ph4680, %1543
  %1546 = phi ptr [ %1512, %.lr.ph4680 ], [ %1558, %1543 ]
  %1547 = phi i32 [ %1513, %.lr.ph4680 ], [ %1559, %1543 ]
  %1548 = phi i64 [ %1514, %.lr.ph4680 ], [ %1557, %1543 ]
  %1549 = phi i64 [ %1542, %.lr.ph4680 ], [ %1560, %1543 ]
  %1550 = load i8, ptr %1546, align 1, !tbaa !44
  %1551 = zext i8 %1550 to i64
  %1552 = shl i64 %1551, %1549
  %1553 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1548, i64 %1552), !nosanitize !47
  %1554 = extractvalue { i64, i1 } %1553, 1, !nosanitize !47
  br i1 %1554, label %1555, label %1556, !prof !48, !nosanitize !47

1555:                                             ; preds = %1545
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1556:                                             ; preds = %1545
  %1557 = extractvalue { i64, i1 } %1553, 0, !nosanitize !47
  %1558 = getelementptr inbounds nuw i8, ptr %1546, i64 1
  %1559 = add i32 %1547, -1
  %1560 = add nuw nsw i64 %1549, 8
  %1561 = trunc i64 %1557 to i32
  %1562 = and i32 %1561, %1527
  %1563 = lshr i32 %1562, %1517
  %1564 = add nuw i32 %1563, %1528
  %1565 = zext i32 %1564 to i64
  %1566 = getelementptr inbounds nuw [4 x i8], ptr %1469, i64 %1565
  %1567 = getelementptr inbounds nuw i8, ptr %1566, i64 1
  %1568 = load i8, ptr %1567, align 1, !tbaa !44
  %1569 = zext i8 %1568 to i32
  %1570 = add nuw nsw i32 %1517, %1569
  %1571 = zext nneg i32 %1570 to i64
  %1572 = icmp samesign ult i64 %1560, %1571
  br i1 %1572, label %1543, label %1573

1573:                                             ; preds = %1556
  %1574 = trunc nuw nsw i64 %1560 to i32
  br label %1575

1575:                                             ; preds = %1573, %1523
  %1576 = phi ptr [ %1534, %1523 ], [ %1566, %1573 ]
  %1577 = phi ptr [ %1512, %1523 ], [ %1558, %1573 ]
  %1578 = phi i32 [ %1513, %1523 ], [ %1559, %1573 ]
  %1579 = phi i64 [ %1514, %1523 ], [ %1557, %1573 ]
  %1580 = phi i32 [ %1515, %1523 ], [ %1574, %1573 ]
  %1581 = phi i8 [ %1536, %1523 ], [ %1568, %1573 ]
  %1582 = load i8, ptr %1576, align 2, !tbaa !44
  %1583 = getelementptr inbounds nuw i8, ptr %1576, i64 2
  %1584 = load i16, ptr %1583, align 2, !tbaa !86
  %1585 = sub nuw i32 %1580, %1517
  %1586 = zext nneg i8 %1516 to i64
  %1587 = lshr i64 %1579, %1586
  store i32 %1517, ptr %71, align 4, !tbaa !37
  br label %1588

1588:                                             ; preds = %1575, %1510
  %1589 = phi i32 [ %1517, %1575 ], [ 0, %1510 ]
  %1590 = phi ptr [ %1577, %1575 ], [ %1512, %1510 ]
  %1591 = phi i32 [ %1578, %1575 ], [ %1513, %1510 ]
  %1592 = phi i64 [ %1587, %1575 ], [ %1514, %1510 ]
  %1593 = phi i32 [ %1585, %1575 ], [ %1515, %1510 ]
  %1594 = phi i16 [ %1584, %1575 ], [ %1519, %1510 ]
  %1595 = phi i8 [ %1581, %1575 ], [ %1516, %1510 ]
  %1596 = phi i8 [ %1582, %1575 ], [ %1520, %1510 ]
  %1597 = zext i8 %1595 to i32
  %1598 = zext nneg i8 %1595 to i64
  %1599 = lshr i64 %1592, %1598
  %1600 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1593, i32 %1597), !nosanitize !47
  %1601 = extractvalue { i32, i1 } %1600, 0, !nosanitize !47
  %1602 = extractvalue { i32, i1 } %1600, 1, !nosanitize !47
  br i1 %1602, label %1603, label %1604, !prof !48, !nosanitize !47

1603:                                             ; preds = %1588
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1604:                                             ; preds = %1588
  %1605 = add nuw nsw i32 %1589, %1597
  store i32 %1605, ptr %71, align 4, !tbaa !37
  %1606 = zext i16 %1594 to i32
  store i32 %1606, ptr %56, align 4, !tbaa !67
  %1607 = zext i8 %1596 to i32
  %1608 = icmp eq i8 %1596, 0
  br i1 %1608, label %1609, label %1610

1609:                                             ; preds = %1604
  store i32 16205, ptr %21, align 8, !tbaa !20
  br label %2257

1610:                                             ; preds = %1604
  %1611 = and i32 %1607, 32
  %1612 = icmp eq i32 %1611, 0
  br i1 %1612, label %1614, label %1613

1613:                                             ; preds = %1610
  store i32 -1, ptr %71, align 4, !tbaa !37
  store i32 16191, ptr %21, align 8, !tbaa !20
  br label %2257

1614:                                             ; preds = %1610
  %1615 = and i32 %1607, 64
  %1616 = icmp eq i32 %1615, 0
  br i1 %1616, label %1618, label %1617

1617:                                             ; preds = %1614
  store ptr @.str.14, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2257

1618:                                             ; preds = %1614
  %1619 = and i32 %1607, 15
  store i32 %1619, ptr %72, align 4, !tbaa !53
  store i32 16201, ptr %21, align 8, !tbaa !20
  br label %1620

1620:                                             ; preds = %1618, %101
  %1621 = phi i32 [ %1619, %1618 ], [ %102, %101 ]
  %1622 = phi ptr [ %1590, %1618 ], [ %90, %101 ]
  %1623 = phi i32 [ %1591, %1618 ], [ %92, %101 ]
  %1624 = phi i64 [ %1599, %1618 ], [ %94, %101 ]
  %1625 = phi i32 [ %1601, %1618 ], [ %95, %101 ]
  %1626 = phi i32 [ %1451, %1618 ], [ %97, %101 ]
  %1627 = icmp eq i32 %1621, 0
  br i1 %1627, label %1680, label %1628

1628:                                             ; preds = %1620
  %1629 = icmp ult i32 %1625, %1621
  br i1 %1629, label %1630, label %.loopexit160

1630:                                             ; preds = %1628
  %1631 = icmp eq i32 %1623, 0
  br i1 %1631, label %._crit_edge4701, label %.lr.ph4700

.lr.ph4700:                                       ; preds = %1630
  %1632 = zext i32 %1625 to i64
  br label %1635

1633:                                             ; preds = %1646
  %1634 = icmp eq i32 %1649, 0
  br i1 %1634, label %._crit_edge4701, label %1635, !llvm.loop !100

1635:                                             ; preds = %.lr.ph4700, %1633
  %1636 = phi ptr [ %1622, %.lr.ph4700 ], [ %1648, %1633 ]
  %1637 = phi i32 [ %1623, %.lr.ph4700 ], [ %1649, %1633 ]
  %1638 = phi i64 [ %1624, %.lr.ph4700 ], [ %1647, %1633 ]
  %1639 = phi i64 [ %1632, %.lr.ph4700 ], [ %1650, %1633 ]
  %1640 = load i8, ptr %1636, align 1, !tbaa !44
  %1641 = zext i8 %1640 to i64
  %1642 = shl i64 %1641, %1639
  %1643 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1638, i64 %1642), !nosanitize !47
  %1644 = extractvalue { i64, i1 } %1643, 1, !nosanitize !47
  br i1 %1644, label %1645, label %1646, !prof !48, !nosanitize !47

1645:                                             ; preds = %1635
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1646:                                             ; preds = %1635
  %1647 = extractvalue { i64, i1 } %1643, 0, !nosanitize !47
  %1648 = getelementptr inbounds nuw i8, ptr %1636, i64 1
  %1649 = add i32 %1637, -1
  %1650 = add nuw nsw i64 %1639, 8
  %1651 = trunc nuw i64 %1650 to i32
  %1652 = icmp ugt i32 %1621, %1651
  br i1 %1652, label %1633, label %.loopexit160, !llvm.loop !100

.loopexit160:                                     ; preds = %1646, %1628
  %1653 = phi ptr [ %1622, %1628 ], [ %1648, %1646 ]
  %1654 = phi i32 [ %1623, %1628 ], [ %1649, %1646 ]
  %1655 = phi i64 [ %1624, %1628 ], [ %1647, %1646 ]
  %1656 = phi i32 [ %1625, %1628 ], [ %1651, %1646 ]
  %1657 = shl nsw i32 -1, %1621
  %1658 = xor i32 %1657, -1
  %1659 = trunc i64 %1655 to i32
  %1660 = and i32 %1659, %1658
  %1661 = load i32, ptr %56, align 4, !tbaa !67
  %1662 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1661, i32 %1660), !nosanitize !47
  %1663 = extractvalue { i32, i1 } %1662, 1, !nosanitize !47
  br i1 %1663, label %1664, label %1665, !prof !48, !nosanitize !47

1664:                                             ; preds = %.loopexit160
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1665:                                             ; preds = %.loopexit160
  %1666 = extractvalue { i32, i1 } %1662, 0, !nosanitize !47
  store i32 %1666, ptr %56, align 4, !tbaa !67
  %1667 = zext nneg i32 %1621 to i64
  %1668 = lshr i64 %1655, %1667
  %1669 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1656, i32 %1621), !nosanitize !47
  %1670 = extractvalue { i32, i1 } %1669, 0, !nosanitize !47
  %1671 = extractvalue { i32, i1 } %1669, 1, !nosanitize !47
  br i1 %1671, label %1672, label %1673, !prof !48, !nosanitize !47

1672:                                             ; preds = %1665
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1673:                                             ; preds = %1665
  %1674 = load i32, ptr %71, align 4, !tbaa !37
  %1675 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1674, i32 %1621), !nosanitize !47
  %1676 = extractvalue { i32, i1 } %1675, 1, !nosanitize !47
  br i1 %1676, label %1677, label %1678, !prof !48, !nosanitize !47

1677:                                             ; preds = %1673
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1678:                                             ; preds = %1673
  %1679 = extractvalue { i32, i1 } %1675, 0, !nosanitize !47
  store i32 %1679, ptr %71, align 4, !tbaa !37
  br label %1680

1680:                                             ; preds = %1678, %1620
  %1681 = phi ptr [ %1653, %1678 ], [ %1622, %1620 ]
  %1682 = phi i32 [ %1654, %1678 ], [ %1623, %1620 ]
  %1683 = phi i64 [ %1668, %1678 ], [ %1624, %1620 ]
  %1684 = phi i32 [ %1670, %1678 ], [ %1625, %1620 ]
  %1685 = load i32, ptr %56, align 4, !tbaa !67
  store i32 %1685, ptr %73, align 8, !tbaa !101
  store i32 16202, ptr %21, align 8, !tbaa !20
  br label %1686

1686:                                             ; preds = %1680, %88
  %1687 = phi ptr [ %1681, %1680 ], [ %90, %88 ]
  %1688 = phi i32 [ %1682, %1680 ], [ %92, %88 ]
  %1689 = phi i64 [ %1683, %1680 ], [ %94, %88 ]
  %1690 = phi i32 [ %1684, %1680 ], [ %95, %88 ]
  %1691 = phi i32 [ %1626, %1680 ], [ %97, %88 ]
  %1692 = load i32, ptr %69, align 4, !tbaa !99
  %1693 = shl nsw i32 -1, %1692
  %1694 = xor i32 %1693, -1
  %1695 = load ptr, ptr %64, align 8, !tbaa !34
  %1696 = trunc i64 %1689 to i32
  %1697 = and i32 %1694, %1696
  %1698 = zext nneg i32 %1697 to i64
  %1699 = getelementptr inbounds nuw [4 x i8], ptr %1695, i64 %1698
  %1700 = getelementptr inbounds nuw i8, ptr %1699, i64 1
  %1701 = load i8, ptr %1700, align 1, !tbaa !44
  %1702 = zext i8 %1701 to i32
  %1703 = icmp ult i32 %1690, %1702
  br i1 %1703, label %1704, label %1736

1704:                                             ; preds = %1686
  %1705 = icmp eq i32 %1688, 0
  br i1 %1705, label %._crit_edge4721, label %.lr.ph4720

.lr.ph4720:                                       ; preds = %1704
  %1706 = zext nneg i32 %1690 to i64
  br label %1709

1707:                                             ; preds = %1720
  %1708 = icmp eq i32 %1723, 0
  br i1 %1708, label %._crit_edge4721, label %1709

1709:                                             ; preds = %.lr.ph4720, %1707
  %1710 = phi ptr [ %1687, %.lr.ph4720 ], [ %1722, %1707 ]
  %1711 = phi i32 [ %1688, %.lr.ph4720 ], [ %1723, %1707 ]
  %1712 = phi i64 [ %1689, %.lr.ph4720 ], [ %1721, %1707 ]
  %1713 = phi i64 [ %1706, %.lr.ph4720 ], [ %1724, %1707 ]
  %1714 = load i8, ptr %1710, align 1, !tbaa !44
  %1715 = zext i8 %1714 to i64
  %1716 = shl i64 %1715, %1713
  %1717 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1712, i64 %1716), !nosanitize !47
  %1718 = extractvalue { i64, i1 } %1717, 1, !nosanitize !47
  br i1 %1718, label %1719, label %1720, !prof !48, !nosanitize !47

1719:                                             ; preds = %1709
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1720:                                             ; preds = %1709
  %1721 = extractvalue { i64, i1 } %1717, 0, !nosanitize !47
  %1722 = getelementptr inbounds nuw i8, ptr %1710, i64 1
  %1723 = add i32 %1711, -1
  %1724 = add nuw nsw i64 %1713, 8
  %1725 = trunc i64 %1721 to i32
  %1726 = and i32 %1725, %1694
  %1727 = zext nneg i32 %1726 to i64
  %1728 = getelementptr inbounds nuw [4 x i8], ptr %1695, i64 %1727
  %1729 = getelementptr inbounds nuw i8, ptr %1728, i64 1
  %1730 = load i8, ptr %1729, align 1, !tbaa !44
  %1731 = zext i8 %1730 to i64
  %1732 = icmp samesign ult i64 %1724, %1731
  br i1 %1732, label %1707, label %1733

1733:                                             ; preds = %1720
  %1734 = zext i8 %1730 to i32
  %1735 = trunc nuw nsw i64 %1724 to i32
  br label %1736

1736:                                             ; preds = %1733, %1686
  %1737 = phi ptr [ %1699, %1686 ], [ %1728, %1733 ]
  %1738 = phi ptr [ %1687, %1686 ], [ %1722, %1733 ]
  %1739 = phi i32 [ %1688, %1686 ], [ %1723, %1733 ]
  %1740 = phi i64 [ %1689, %1686 ], [ %1721, %1733 ]
  %1741 = phi i32 [ %1690, %1686 ], [ %1735, %1733 ]
  %1742 = phi i8 [ %1701, %1686 ], [ %1730, %1733 ]
  %1743 = phi i32 [ %1702, %1686 ], [ %1734, %1733 ]
  %1744 = getelementptr inbounds nuw i8, ptr %1737, i64 2
  %1745 = load i16, ptr %1744, align 2, !tbaa !86
  %1746 = load i8, ptr %1737, align 2, !tbaa !44
  %1747 = icmp ult i8 %1746, 16
  br i1 %1747, label %1748, label %1819

1748:                                             ; preds = %1736
  %1749 = zext nneg i8 %1746 to i32
  %1750 = add nuw nsw i32 %1743, %1749
  %1751 = shl nsw i32 -1, %1750
  %1752 = xor i32 %1751, -1
  %1753 = zext i16 %1745 to i32
  %1754 = trunc i64 %1740 to i32
  %1755 = and i32 %1752, %1754
  %1756 = lshr i32 %1755, %1743
  %1757 = add nuw i32 %1756, %1753
  %1758 = zext i32 %1757 to i64
  %1759 = getelementptr inbounds nuw [4 x i8], ptr %1695, i64 %1758
  %1760 = getelementptr inbounds nuw i8, ptr %1759, i64 1
  %1761 = load i8, ptr %1760, align 1, !tbaa !44
  %1762 = zext i8 %1761 to i32
  %1763 = add nuw nsw i32 %1743, %1762
  %1764 = icmp ugt i32 %1763, %1741
  br i1 %1764, label %1765, label %1801

1765:                                             ; preds = %1748
  %1766 = icmp eq i32 %1739, 0
  br i1 %1766, label %._crit_edge4741, label %.lr.ph4740

.lr.ph4740:                                       ; preds = %1765
  %1767 = zext nneg i32 %1741 to i64
  br label %1770

1768:                                             ; preds = %1782
  %1769 = icmp eq i32 %1785, 0
  br i1 %1769, label %._crit_edge4741, label %1770

1770:                                             ; preds = %.lr.ph4740, %1768
  %1771 = phi ptr [ %1738, %.lr.ph4740 ], [ %1784, %1768 ]
  %1772 = phi i32 [ %1739, %.lr.ph4740 ], [ %1785, %1768 ]
  %1773 = phi i64 [ %1740, %.lr.ph4740 ], [ %1783, %1768 ]
  %1774 = phi i64 [ %1767, %.lr.ph4740 ], [ %1786, %1768 ]
  %1775 = load i8, ptr %1771, align 1, !tbaa !44
  %1776 = zext i8 %1775 to i64
  %1777 = shl i64 %1776, %1774
  %1778 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1773, i64 %1777), !nosanitize !47
  %1779 = extractvalue { i64, i1 } %1778, 1, !nosanitize !47
  br i1 %1779, label %1780, label %1782, !prof !48, !nosanitize !47

1780:                                             ; preds = %1770
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1781:                                             ; preds = %1834, %1801
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1782:                                             ; preds = %1770
  %1783 = extractvalue { i64, i1 } %1778, 0, !nosanitize !47
  %1784 = getelementptr inbounds nuw i8, ptr %1771, i64 1
  %1785 = add i32 %1772, -1
  %1786 = add nuw nsw i64 %1774, 8
  %1787 = trunc i64 %1783 to i32
  %1788 = and i32 %1787, %1752
  %1789 = lshr i32 %1788, %1743
  %1790 = add nuw i32 %1789, %1753
  %1791 = zext i32 %1790 to i64
  %1792 = getelementptr inbounds nuw [4 x i8], ptr %1695, i64 %1791
  %1793 = getelementptr inbounds nuw i8, ptr %1792, i64 1
  %1794 = load i8, ptr %1793, align 1, !tbaa !44
  %1795 = zext i8 %1794 to i32
  %1796 = add nuw nsw i32 %1743, %1795
  %1797 = zext nneg i32 %1796 to i64
  %1798 = icmp samesign ult i64 %1786, %1797
  br i1 %1798, label %1768, label %1799

1799:                                             ; preds = %1782
  %1800 = trunc nuw nsw i64 %1786 to i32
  br label %1801

1801:                                             ; preds = %1799, %1748
  %1802 = phi ptr [ %1759, %1748 ], [ %1792, %1799 ]
  %1803 = phi ptr [ %1738, %1748 ], [ %1784, %1799 ]
  %1804 = phi i32 [ %1739, %1748 ], [ %1785, %1799 ]
  %1805 = phi i64 [ %1740, %1748 ], [ %1783, %1799 ]
  %1806 = phi i32 [ %1741, %1748 ], [ %1800, %1799 ]
  %1807 = phi i8 [ %1761, %1748 ], [ %1794, %1799 ]
  %1808 = load i32, ptr %71, align 4, !tbaa !37
  %1809 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1808, i32 %1743), !nosanitize !47
  %1810 = extractvalue { i32, i1 } %1809, 1, !nosanitize !47
  br i1 %1810, label %1781, label %1811, !prof !48, !nosanitize !47

1811:                                             ; preds = %1801
  %1812 = getelementptr inbounds nuw i8, ptr %1802, i64 2
  %1813 = load i16, ptr %1812, align 2, !tbaa !86
  %1814 = load i8, ptr %1802, align 2, !tbaa !44
  %1815 = sub nuw i32 %1806, %1743
  %1816 = zext nneg i8 %1742 to i64
  %1817 = lshr i64 %1805, %1816
  %1818 = extractvalue { i32, i1 } %1809, 0, !nosanitize !47
  store i32 %1818, ptr %71, align 4, !tbaa !37
  br label %1819

1819:                                             ; preds = %1811, %1736
  %1820 = phi ptr [ %1803, %1811 ], [ %1738, %1736 ]
  %1821 = phi i32 [ %1804, %1811 ], [ %1739, %1736 ]
  %1822 = phi i64 [ %1817, %1811 ], [ %1740, %1736 ]
  %1823 = phi i32 [ %1815, %1811 ], [ %1741, %1736 ]
  %1824 = phi i16 [ %1813, %1811 ], [ %1745, %1736 ]
  %1825 = phi i8 [ %1807, %1811 ], [ %1742, %1736 ]
  %1826 = phi i8 [ %1814, %1811 ], [ %1746, %1736 ]
  %1827 = zext i8 %1825 to i32
  %1828 = zext nneg i8 %1825 to i64
  %1829 = lshr i64 %1822, %1828
  %1830 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1823, i32 %1827), !nosanitize !47
  %1831 = extractvalue { i32, i1 } %1830, 0, !nosanitize !47
  %1832 = extractvalue { i32, i1 } %1830, 1, !nosanitize !47
  br i1 %1832, label %1833, label %1834, !prof !48, !nosanitize !47

1833:                                             ; preds = %1819
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1834:                                             ; preds = %1819
  %1835 = load i32, ptr %71, align 4, !tbaa !37
  %1836 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1835, i32 %1827), !nosanitize !47
  %1837 = extractvalue { i32, i1 } %1836, 1, !nosanitize !47
  br i1 %1837, label %1781, label %1838, !prof !48, !nosanitize !47

1838:                                             ; preds = %1834
  %1839 = extractvalue { i32, i1 } %1836, 0, !nosanitize !47
  store i32 %1839, ptr %71, align 4, !tbaa !37
  %1840 = zext i8 %1826 to i32
  %1841 = and i32 %1840, 64
  %1842 = icmp eq i32 %1841, 0
  br i1 %1842, label %1844, label %1843

1843:                                             ; preds = %1838
  store ptr @.str.15, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2257

1844:                                             ; preds = %1838
  %1845 = zext i16 %1824 to i32
  store i32 %1845, ptr %74, align 8, !tbaa !102
  %1846 = and i32 %1840, 15
  store i32 %1846, ptr %72, align 4, !tbaa !53
  store i32 16203, ptr %21, align 8, !tbaa !20
  br label %1847

1847:                                             ; preds = %1844, %99
  %1848 = phi i32 [ %1846, %1844 ], [ %100, %99 ]
  %1849 = phi ptr [ %1820, %1844 ], [ %90, %99 ]
  %1850 = phi i32 [ %1821, %1844 ], [ %92, %99 ]
  %1851 = phi i64 [ %1829, %1844 ], [ %94, %99 ]
  %1852 = phi i32 [ %1831, %1844 ], [ %95, %99 ]
  %1853 = phi i32 [ %1691, %1844 ], [ %97, %99 ]
  %1854 = icmp eq i32 %1848, 0
  br i1 %1854, label %1907, label %1855

1855:                                             ; preds = %1847
  %1856 = icmp ult i32 %1852, %1848
  br i1 %1856, label %1857, label %.loopexit

1857:                                             ; preds = %1855
  %1858 = icmp eq i32 %1850, 0
  br i1 %1858, label %._crit_edge4761, label %.lr.ph4760

.lr.ph4760:                                       ; preds = %1857
  %1859 = zext i32 %1852 to i64
  br label %1862

1860:                                             ; preds = %1873
  %1861 = icmp eq i32 %1876, 0
  br i1 %1861, label %._crit_edge4761, label %1862, !llvm.loop !103

1862:                                             ; preds = %.lr.ph4760, %1860
  %1863 = phi ptr [ %1849, %.lr.ph4760 ], [ %1875, %1860 ]
  %1864 = phi i32 [ %1850, %.lr.ph4760 ], [ %1876, %1860 ]
  %1865 = phi i64 [ %1851, %.lr.ph4760 ], [ %1874, %1860 ]
  %1866 = phi i64 [ %1859, %.lr.ph4760 ], [ %1877, %1860 ]
  %1867 = load i8, ptr %1863, align 1, !tbaa !44
  %1868 = zext i8 %1867 to i64
  %1869 = shl i64 %1868, %1866
  %1870 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1865, i64 %1869), !nosanitize !47
  %1871 = extractvalue { i64, i1 } %1870, 1, !nosanitize !47
  br i1 %1871, label %1872, label %1873, !prof !48, !nosanitize !47

1872:                                             ; preds = %1862
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1873:                                             ; preds = %1862
  %1874 = extractvalue { i64, i1 } %1870, 0, !nosanitize !47
  %1875 = getelementptr inbounds nuw i8, ptr %1863, i64 1
  %1876 = add i32 %1864, -1
  %1877 = add nuw nsw i64 %1866, 8
  %1878 = trunc nuw i64 %1877 to i32
  %1879 = icmp ugt i32 %1848, %1878
  br i1 %1879, label %1860, label %.loopexit, !llvm.loop !103

.loopexit:                                        ; preds = %1873, %1855
  %1880 = phi ptr [ %1849, %1855 ], [ %1875, %1873 ]
  %1881 = phi i32 [ %1850, %1855 ], [ %1876, %1873 ]
  %1882 = phi i64 [ %1851, %1855 ], [ %1874, %1873 ]
  %1883 = phi i32 [ %1852, %1855 ], [ %1878, %1873 ]
  %1884 = shl nsw i32 -1, %1848
  %1885 = xor i32 %1884, -1
  %1886 = trunc i64 %1882 to i32
  %1887 = and i32 %1886, %1885
  %1888 = load i32, ptr %74, align 8, !tbaa !102
  %1889 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1888, i32 %1887), !nosanitize !47
  %1890 = extractvalue { i32, i1 } %1889, 1, !nosanitize !47
  br i1 %1890, label %1891, label %1892, !prof !48, !nosanitize !47

1891:                                             ; preds = %.loopexit
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1892:                                             ; preds = %.loopexit
  %1893 = extractvalue { i32, i1 } %1889, 0, !nosanitize !47
  store i32 %1893, ptr %74, align 8, !tbaa !102
  %1894 = zext nneg i32 %1848 to i64
  %1895 = lshr i64 %1882, %1894
  %1896 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1883, i32 %1848), !nosanitize !47
  %1897 = extractvalue { i32, i1 } %1896, 0, !nosanitize !47
  %1898 = extractvalue { i32, i1 } %1896, 1, !nosanitize !47
  br i1 %1898, label %1899, label %1900, !prof !48, !nosanitize !47

1899:                                             ; preds = %1892
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1900:                                             ; preds = %1892
  %1901 = load i32, ptr %71, align 4, !tbaa !37
  %1902 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1901, i32 %1848), !nosanitize !47
  %1903 = extractvalue { i32, i1 } %1902, 1, !nosanitize !47
  br i1 %1903, label %1904, label %1905, !prof !48, !nosanitize !47

1904:                                             ; preds = %1900
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

1905:                                             ; preds = %1900
  %1906 = extractvalue { i32, i1 } %1902, 0, !nosanitize !47
  store i32 %1906, ptr %71, align 4, !tbaa !37
  br label %1907

1907:                                             ; preds = %1905, %1847
  %1908 = phi ptr [ %1880, %1905 ], [ %1849, %1847 ]
  %1909 = phi i32 [ %1881, %1905 ], [ %1850, %1847 ]
  %1910 = phi i64 [ %1895, %1905 ], [ %1851, %1847 ]
  %1911 = phi i32 [ %1897, %1905 ], [ %1852, %1847 ]
  store i32 16204, ptr %21, align 8, !tbaa !20
  br label %1912

1912:                                             ; preds = %1907, %88
  %1913 = phi ptr [ %1908, %1907 ], [ %90, %88 ]
  %1914 = phi i32 [ %1909, %1907 ], [ %92, %88 ]
  %1915 = phi i64 [ %1910, %1907 ], [ %94, %88 ]
  %1916 = phi i32 [ %1911, %1907 ], [ %95, %88 ]
  %1917 = phi i32 [ %1853, %1907 ], [ %97, %88 ]
  %1918 = icmp eq i32 %93, 0
  br i1 %1918, label %.loopexit162, label %1919

1919:                                             ; preds = %1912
  %1920 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %96, i32 %93), !nosanitize !47
  %1921 = extractvalue { i32, i1 } %1920, 0, !nosanitize !47
  %1922 = extractvalue { i32, i1 } %1920, 1, !nosanitize !47
  br i1 %1922, label %1923, label %1924, !prof !48, !nosanitize !47

1923:                                             ; preds = %1919
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1924:                                             ; preds = %1919
  %1925 = load i32, ptr %74, align 8, !tbaa !102
  %1926 = icmp ugt i32 %1925, %1921
  br i1 %1926, label %1927, label %1956

1927:                                             ; preds = %1924
  %1928 = sub nuw i32 %1925, %1921
  %1929 = load i32, ptr %75, align 8, !tbaa !39
  %1930 = icmp ugt i32 %1928, %1929
  br i1 %1930, label %1931, label %1935

1931:                                             ; preds = %1927
  %1932 = load i32, ptr %76, align 8, !tbaa !36
  %1933 = icmp eq i32 %1932, 0
  br i1 %1933, label %1935, label %1934

1934:                                             ; preds = %1931
  store ptr @.str.16, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2257

1935:                                             ; preds = %1931, %1927
  %1936 = load i32, ptr %77, align 4, !tbaa !40
  %1937 = icmp ugt i32 %1928, %1936
  br i1 %1937, label %1938, label %1946

1938:                                             ; preds = %1935
  %1939 = sub nuw i32 %1928, %1936
  %1940 = load i32, ptr %79, align 4, !tbaa !38
  %1941 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1940, i32 %1939), !nosanitize !47
  %1942 = extractvalue { i32, i1 } %1941, 1, !nosanitize !47
  br i1 %1942, label %1943, label %1944, !prof !48, !nosanitize !47

1943:                                             ; preds = %1938
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1944:                                             ; preds = %1938
  %1945 = extractvalue { i32, i1 } %1941, 0, !nosanitize !47
  br label %1948

1946:                                             ; preds = %1935
  %1947 = sub nuw i32 %1936, %1928
  br label %1948

1948:                                             ; preds = %1946, %1944
  %1949 = phi i32 [ %1947, %1946 ], [ %1945, %1944 ]
  %1950 = phi i32 [ %1928, %1946 ], [ %1939, %1944 ]
  %1951 = load ptr, ptr %78, align 8, !tbaa !41
  %1952 = zext i32 %1949 to i64
  %1953 = getelementptr inbounds nuw i8, ptr %1951, i64 %1952
  %1954 = load i32, ptr %56, align 4, !tbaa !67
  %1955 = call i32 @llvm.umin.i32(i32 %1950, i32 %1954)
  br label %1961

1956:                                             ; preds = %1924
  %1957 = zext i32 %1925 to i64
  %1958 = sub nsw i64 0, %1957
  %1959 = getelementptr inbounds i8, ptr %91, i64 %1958
  %1960 = load i32, ptr %56, align 4, !tbaa !67
  br label %1961

1961:                                             ; preds = %1956, %1948
  %1962 = phi i32 [ %1960, %1956 ], [ %1954, %1948 ]
  %1963 = phi i32 [ %1960, %1956 ], [ %1955, %1948 ]
  %1964 = phi ptr [ %1959, %1956 ], [ %1953, %1948 ]
  %1965 = ptrtoaddr ptr %1964 to i64
  %1966 = call i32 @llvm.umin.i32(i32 %1963, i32 %93)
  %1967 = sub i32 %93, %1966
  %1968 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1962, i32 %1966), !nosanitize !47
  %1969 = extractvalue { i32, i1 } %1968, 1, !nosanitize !47
  br i1 %1969, label %1970, label %1971, !prof !48, !nosanitize !47

1970:                                             ; preds = %1961
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

1971:                                             ; preds = %1961
  %1972 = extractvalue { i32, i1 } %1968, 0, !nosanitize !47
  store i32 %1972, ptr %56, align 4, !tbaa !67
  %.not.not = icmp eq i32 %1966, 0
  br i1 %.not.not, label %.split2292.us, label %iter.check, !prof !48, !nosanitize !47

iter.check:                                       ; preds = %1971
  %1973 = call i32 @llvm.umin.i32(i32 %1963, i32 %93)
  %umin = zext i32 %1973 to i64
  %min.iters.check = icmp ult i32 %1973, 4
  %1974 = sub i64 %98, %1965
  %diff.check = icmp ult i64 %1974, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.split2292.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check4782 = icmp ult i32 %1973, 32
  br i1 %min.iters.check4782, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %umin, 28
  %n.vec = and i64 %umin, 4294967264
  %1975 = getelementptr i8, ptr %91, i64 %n.vec
  %.cast = trunc nuw i64 %n.vec to i32
  %1976 = sub i32 %1966, %.cast
  %1977 = getelementptr i8, ptr %1964, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %next.gep = getelementptr i8, ptr %91, i64 %index
  %next.gep4783 = getelementptr i8, ptr %1964, i64 %index
  %1978 = getelementptr i8, ptr %next.gep4783, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep4783, align 1, !tbaa !44
  %wide.load4784 = load <16 x i8>, ptr %1978, align 1, !tbaa !44
  %1979 = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !44
  store <16 x i8> %wide.load4784, ptr %1979, align 1, !tbaa !44
  %index.next = add nuw i64 %index, 32
  %1980 = icmp eq i64 %index.next, %n.vec
  br i1 %1980, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %umin
  br i1 %cmp.n, label %.loopexit4799, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.split2292.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec4788 = and i64 %umin, 4294967292
  %1981 = getelementptr i8, ptr %91, i64 %n.vec4788
  %.cast4789 = trunc nuw i64 %n.vec4788 to i32
  %1982 = sub i32 %1966, %.cast4789
  %1983 = getelementptr i8, ptr %1964, i64 %n.vec4788
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index4790 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next4794, %vec.epilog.vector.body ]
  %next.gep4791 = getelementptr i8, ptr %91, i64 %index4790
  %next.gep4792 = getelementptr i8, ptr %1964, i64 %index4790
  %wide.load4793 = load <4 x i8>, ptr %next.gep4792, align 1, !tbaa !44
  store <4 x i8> %wide.load4793, ptr %next.gep4791, align 1, !tbaa !44
  %index.next4794 = add nuw i64 %index4790, 4
  %1984 = icmp eq i64 %index.next4794, %n.vec4788
  br i1 %1984, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !108

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n4795 = icmp eq i64 %n.vec4788, %umin
  br i1 %cmp.n4795, label %.loopexit4799, label %.split2292.preheader

.split2292.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %91, %iter.check ], [ %1975, %vec.epilog.iter.check ], [ %1981, %vec.epilog.middle.block ]
  %.ph4800 = phi i32 [ %1966, %iter.check ], [ %1976, %vec.epilog.iter.check ], [ %1982, %vec.epilog.middle.block ]
  %.ph4801 = phi ptr [ %1964, %iter.check ], [ %1977, %vec.epilog.iter.check ], [ %1983, %vec.epilog.middle.block ]
  %1985 = add i32 %.ph4800, -1
  %xtraiter = and i32 %.ph4800, 7
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split2292.prol.loopexit, label %.split2292.prol

.split2292.prol:                                  ; preds = %.split2292.preheader, %.split2292.prol
  %1986 = phi ptr [ %1990, %.split2292.prol ], [ %.ph, %.split2292.preheader ]
  %1987 = phi i32 [ %1991, %.split2292.prol ], [ %.ph4800, %.split2292.preheader ]
  %1988 = phi ptr [ %1992, %.split2292.prol ], [ %.ph4801, %.split2292.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.split2292.prol ], [ 0, %.split2292.preheader ]
  %1989 = load i8, ptr %1988, align 1, !tbaa !44
  store i8 %1989, ptr %1986, align 1, !tbaa !44
  %1990 = getelementptr inbounds nuw i8, ptr %1986, i64 1
  %1991 = add i32 %1987, -1
  %1992 = getelementptr inbounds nuw i8, ptr %1988, i64 1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.split2292.prol.loopexit, label %.split2292.prol, !llvm.loop !109

.split2292.prol.loopexit:                         ; preds = %.split2292.prol, %.split2292.preheader
  %.lcssa5034.unr = phi ptr [ poison, %.split2292.preheader ], [ %1990, %.split2292.prol ]
  %.unr = phi ptr [ %.ph, %.split2292.preheader ], [ %1990, %.split2292.prol ]
  %.unr6008 = phi i32 [ %.ph4800, %.split2292.preheader ], [ %1991, %.split2292.prol ]
  %.unr6009 = phi ptr [ %.ph4801, %.split2292.preheader ], [ %1992, %.split2292.prol ]
  %1993 = icmp ult i32 %1985, 7
  br i1 %1993, label %.loopexit4799, label %.split2292

.split2292.us:                                    ; preds = %1971
  %1994 = load i8, ptr %1964, align 1, !tbaa !44
  store i8 %1994, ptr %91, align 1, !tbaa !44
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

.split2292:                                       ; preds = %.split2292.prol.loopexit, %.split2292
  %1995 = phi ptr [ %2020, %.split2292 ], [ %.unr, %.split2292.prol.loopexit ]
  %1996 = phi i32 [ %2021, %.split2292 ], [ %.unr6008, %.split2292.prol.loopexit ]
  %1997 = phi ptr [ %2022, %.split2292 ], [ %.unr6009, %.split2292.prol.loopexit ]
  %1998 = load i8, ptr %1997, align 1, !tbaa !44
  store i8 %1998, ptr %1995, align 1, !tbaa !44
  %1999 = getelementptr inbounds nuw i8, ptr %1995, i64 1
  %2000 = getelementptr inbounds nuw i8, ptr %1997, i64 1
  %2001 = load i8, ptr %2000, align 1, !tbaa !44
  store i8 %2001, ptr %1999, align 1, !tbaa !44
  %2002 = getelementptr inbounds nuw i8, ptr %1995, i64 2
  %2003 = getelementptr inbounds nuw i8, ptr %1997, i64 2
  %2004 = load i8, ptr %2003, align 1, !tbaa !44
  store i8 %2004, ptr %2002, align 1, !tbaa !44
  %2005 = getelementptr inbounds nuw i8, ptr %1995, i64 3
  %2006 = getelementptr inbounds nuw i8, ptr %1997, i64 3
  %2007 = load i8, ptr %2006, align 1, !tbaa !44
  store i8 %2007, ptr %2005, align 1, !tbaa !44
  %2008 = getelementptr inbounds nuw i8, ptr %1995, i64 4
  %2009 = getelementptr inbounds nuw i8, ptr %1997, i64 4
  %2010 = load i8, ptr %2009, align 1, !tbaa !44
  store i8 %2010, ptr %2008, align 1, !tbaa !44
  %2011 = getelementptr inbounds nuw i8, ptr %1995, i64 5
  %2012 = getelementptr inbounds nuw i8, ptr %1997, i64 5
  %2013 = load i8, ptr %2012, align 1, !tbaa !44
  store i8 %2013, ptr %2011, align 1, !tbaa !44
  %2014 = getelementptr inbounds nuw i8, ptr %1995, i64 6
  %2015 = getelementptr inbounds nuw i8, ptr %1997, i64 6
  %2016 = load i8, ptr %2015, align 1, !tbaa !44
  store i8 %2016, ptr %2014, align 1, !tbaa !44
  %2017 = getelementptr inbounds nuw i8, ptr %1995, i64 7
  %2018 = getelementptr inbounds nuw i8, ptr %1997, i64 7
  %2019 = load i8, ptr %2018, align 1, !tbaa !44
  store i8 %2019, ptr %2017, align 1, !tbaa !44
  %2020 = getelementptr inbounds nuw i8, ptr %1995, i64 8
  %2021 = add i32 %1996, -8
  %2022 = getelementptr inbounds nuw i8, ptr %1997, i64 8
  %2023 = icmp eq i32 %2021, 0
  br i1 %2023, label %.loopexit4799, label %.split2292, !llvm.loop !111

.loopexit4799:                                    ; preds = %.split2292.prol.loopexit, %.split2292, %vec.epilog.middle.block, %middle.block
  %.lcssa3792 = phi ptr [ %1981, %vec.epilog.middle.block ], [ %1975, %middle.block ], [ %.lcssa5034.unr, %.split2292.prol.loopexit ], [ %2020, %.split2292 ]
  %2024 = load i32, ptr %56, align 4, !tbaa !67
  %2025 = icmp eq i32 %2024, 0
  br i1 %2025, label %2026, label %2257

2026:                                             ; preds = %.loopexit4799
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2257

2027:                                             ; preds = %88
  %2028 = icmp eq i32 %93, 0
  br i1 %2028, label %.loopexit162, label %2029

2029:                                             ; preds = %2027
  %2030 = load i32, ptr %56, align 4, !tbaa !67
  %2031 = trunc i32 %2030 to i8
  store i8 %2031, ptr %91, align 1, !tbaa !44
  %2032 = add i32 %93, -1
  %2033 = getelementptr inbounds nuw i8, ptr %91, i64 1
  store i32 16200, ptr %21, align 8, !tbaa !20
  br label %2257

2034:                                             ; preds = %88
  %2035 = load i32, ptr %49, align 8, !tbaa !24
  %2036 = icmp eq i32 %2035, 0
  br i1 %2036, label %2157, label %2037

2037:                                             ; preds = %2034
  %2038 = icmp ult i32 %95, 32
  br i1 %2038, label %2039, label %2102

2039:                                             ; preds = %2037
  %2040 = zext nneg i32 %95 to i64
  %2041 = icmp eq i32 %92, 0
  br i1 %2041, label %2370, label %2042

2042:                                             ; preds = %2039
  %2043 = load i8, ptr %90, align 1, !tbaa !44
  %2044 = zext i8 %2043 to i64
  %2045 = shl nuw nsw i64 %2044, %2040
  %2046 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 %2045), !nosanitize !47
  %2047 = extractvalue { i64, i1 } %2046, 1, !nosanitize !47
  br i1 %2047, label %2048, label %2049, !prof !48, !nosanitize !47

2048:                                             ; preds = %2085, %2071, %2057, %2042
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2049:                                             ; preds = %2042
  %2050 = extractvalue { i64, i1 } %2046, 0, !nosanitize !47
  %2051 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %2052 = add i32 %92, -1
  %2053 = add nuw nsw i64 %2040, 8
  %2054 = icmp samesign ult i32 %95, 24
  br i1 %2054, label %2055, label %2096, !llvm.loop !112

2055:                                             ; preds = %2049
  %2056 = icmp eq i32 %2052, 0
  br i1 %2056, label %2370, label %2057

2057:                                             ; preds = %2055
  %2058 = load i8, ptr %2051, align 1, !tbaa !44
  %2059 = zext i8 %2058 to i64
  %2060 = shl nuw nsw i64 %2059, %2053
  %2061 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2050, i64 %2060), !nosanitize !47
  %2062 = extractvalue { i64, i1 } %2061, 1, !nosanitize !47
  br i1 %2062, label %2048, label %2063, !prof !48, !nosanitize !47

2063:                                             ; preds = %2057
  %2064 = extractvalue { i64, i1 } %2061, 0, !nosanitize !47
  %2065 = getelementptr inbounds nuw i8, ptr %90, i64 2
  %2066 = add i32 %92, -2
  %2067 = add nuw nsw i64 %2040, 16
  %2068 = icmp samesign ult i32 %95, 16
  br i1 %2068, label %2069, label %2096, !llvm.loop !112

2069:                                             ; preds = %2063
  %2070 = icmp eq i32 %2066, 0
  br i1 %2070, label %2370, label %2071

2071:                                             ; preds = %2069
  %2072 = load i8, ptr %2065, align 1, !tbaa !44
  %2073 = zext i8 %2072 to i64
  %2074 = shl nuw nsw i64 %2073, %2067
  %2075 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2064, i64 %2074), !nosanitize !47
  %2076 = extractvalue { i64, i1 } %2075, 1, !nosanitize !47
  br i1 %2076, label %2048, label %2077, !prof !48, !nosanitize !47

2077:                                             ; preds = %2071
  %2078 = extractvalue { i64, i1 } %2075, 0, !nosanitize !47
  %2079 = getelementptr inbounds nuw i8, ptr %90, i64 3
  %2080 = add i32 %92, -3
  %2081 = add nuw nsw i64 %2040, 24
  %2082 = icmp samesign ult i32 %95, 8
  br i1 %2082, label %2083, label %2096, !llvm.loop !112

2083:                                             ; preds = %2077
  %2084 = icmp eq i32 %2080, 0
  br i1 %2084, label %2370, label %2085

2085:                                             ; preds = %2083
  %2086 = load i8, ptr %2079, align 1, !tbaa !44
  %2087 = zext i8 %2086 to i64
  %2088 = shl nuw nsw i64 %2087, %2081
  %2089 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2078, i64 %2088), !nosanitize !47
  %2090 = extractvalue { i64, i1 } %2089, 1, !nosanitize !47
  br i1 %2090, label %2048, label %2091, !prof !48, !nosanitize !47

2091:                                             ; preds = %2085
  %2092 = extractvalue { i64, i1 } %2089, 0, !nosanitize !47
  %2093 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %2094 = add i32 %92, -4
  %2095 = or disjoint i64 %2040, 32
  br label %2096

2096:                                             ; preds = %2091, %2077, %2063, %2049
  %2097 = phi i64 [ %2050, %2049 ], [ %2064, %2063 ], [ %2078, %2077 ], [ %2092, %2091 ]
  %2098 = phi ptr [ %2051, %2049 ], [ %2065, %2063 ], [ %2079, %2077 ], [ %2093, %2091 ]
  %2099 = phi i32 [ %2052, %2049 ], [ %2066, %2063 ], [ %2080, %2077 ], [ %2094, %2091 ]
  %2100 = phi i64 [ %2053, %2049 ], [ %2067, %2063 ], [ %2081, %2077 ], [ %2095, %2091 ]
  %2101 = trunc nuw nsw i64 %2100 to i32
  br label %2102

2102:                                             ; preds = %2096, %2037
  %2103 = phi ptr [ %90, %2037 ], [ %2098, %2096 ]
  %2104 = phi i32 [ %92, %2037 ], [ %2099, %2096 ]
  %2105 = phi i64 [ %94, %2037 ], [ %2097, %2096 ]
  %2106 = phi i32 [ %95, %2037 ], [ %2101, %2096 ]
  %2107 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %96, i32 %93), !nosanitize !47
  %2108 = extractvalue { i32, i1 } %2107, 0, !nosanitize !47
  %2109 = extractvalue { i32, i1 } %2107, 1, !nosanitize !47
  br i1 %2109, label %2110, label %2111, !prof !48, !nosanitize !47

2110:                                             ; preds = %2102
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2111:                                             ; preds = %2102
  %2112 = zext i32 %2108 to i64
  %2113 = load i64, ptr %50, align 8, !tbaa !113
  %2114 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2113, i64 %2112), !nosanitize !47
  %2115 = extractvalue { i64, i1 } %2114, 1, !nosanitize !47
  br i1 %2115, label %2116, label %2117, !prof !48, !nosanitize !47

2116:                                             ; preds = %2111
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2117:                                             ; preds = %2111
  %2118 = extractvalue { i64, i1 } %2114, 0, !nosanitize !47
  store i64 %2118, ptr %50, align 8, !tbaa !113
  %2119 = load i64, ptr %51, align 8, !tbaa !21
  %2120 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2119, i64 %2112), !nosanitize !47
  %2121 = extractvalue { i64, i1 } %2120, 1, !nosanitize !47
  br i1 %2121, label %2122, label %2123, !prof !48, !nosanitize !47

2122:                                             ; preds = %2117
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2123:                                             ; preds = %2117
  %2124 = extractvalue { i64, i1 } %2120, 0, !nosanitize !47
  store i64 %2124, ptr %51, align 8, !tbaa !21
  %2125 = and i32 %2035, 4
  %2126 = icmp ne i32 %2125, 0
  %2127 = icmp ne i32 %2108, 0
  %2128 = select i1 %2126, i1 %2127, i1 false
  br i1 %2128, label %2129, label %2143

2129:                                             ; preds = %2123
  %2130 = load i32, ptr %52, align 8, !tbaa !28
  %2131 = icmp eq i32 %2130, 0
  %2132 = load i64, ptr %53, align 8, !tbaa !56
  %2133 = sub nsw i64 0, %2112
  %2134 = getelementptr inbounds i8, ptr %91, i64 %2133
  br i1 %2131, label %2137, label %2135

2135:                                             ; preds = %2129
  %2136 = call i64 @crc32(i64 noundef %2132, ptr noundef nonnull %2134, i32 noundef %2108) #12
  br label %2139

2137:                                             ; preds = %2129
  %2138 = call i64 @adler32(i64 noundef %2132, ptr noundef nonnull %2134, i32 noundef %2108) #12
  br label %2139

2139:                                             ; preds = %2137, %2135
  %2140 = phi i64 [ %2136, %2135 ], [ %2138, %2137 ]
  store i64 %2140, ptr %53, align 8, !tbaa !56
  store i64 %2140, ptr %54, align 8, !tbaa !25
  %2141 = load i32, ptr %49, align 8, !tbaa !24
  %2142 = and i32 %2141, 4
  br label %2143

2143:                                             ; preds = %2139, %2123
  %2144 = phi i32 [ %2142, %2139 ], [ %2125, %2123 ]
  %2145 = phi i32 [ %2141, %2139 ], [ %2035, %2123 ]
  %2146 = icmp eq i32 %2144, 0
  br i1 %2146, label %2157, label %2147

2147:                                             ; preds = %2143
  %2148 = load i32, ptr %52, align 8, !tbaa !28
  %2149 = icmp eq i32 %2148, 0
  %2150 = trunc i64 %2105 to i32
  %2151 = call i32 @llvm.bswap.i32(i32 %2150)
  %2152 = zext i32 %2151 to i64
  %2153 = select i1 %2149, i64 %2152, i64 %2105
  %2154 = load i64, ptr %53, align 8, !tbaa !56
  %2155 = icmp eq i64 %2153, %2154
  br i1 %2155, label %2157, label %2156

2156:                                             ; preds = %2147
  store ptr @.str.17, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2257

2157:                                             ; preds = %2147, %2143, %2034
  %2158 = phi i32 [ 0, %2034 ], [ %2145, %2143 ], [ %2145, %2147 ]
  %2159 = phi ptr [ %90, %2034 ], [ %2103, %2143 ], [ %2103, %2147 ]
  %2160 = phi i32 [ %92, %2034 ], [ %2104, %2143 ], [ %2104, %2147 ]
  %2161 = phi i64 [ %94, %2034 ], [ 0, %2143 ], [ 0, %2147 ]
  %2162 = phi i32 [ %95, %2034 ], [ 0, %2143 ], [ 0, %2147 ]
  %2163 = phi i32 [ %96, %2034 ], [ %93, %2143 ], [ %93, %2147 ]
  store i32 16207, ptr %21, align 8, !tbaa !20
  br label %2164

2164:                                             ; preds = %2157, %103
  %2165 = phi i32 [ %2158, %2157 ], [ %104, %103 ]
  %2166 = phi ptr [ %2159, %2157 ], [ %90, %103 ]
  %2167 = phi i32 [ %2160, %2157 ], [ %92, %103 ]
  %2168 = phi i64 [ %2161, %2157 ], [ %94, %103 ]
  %2169 = phi i32 [ %2162, %2157 ], [ %95, %103 ]
  %2170 = phi i32 [ %2163, %2157 ], [ %96, %103 ]
  %2171 = icmp eq i32 %2165, 0
  br i1 %2171, label %2252, label %2172

2172:                                             ; preds = %2164
  %2173 = load i32, ptr %52, align 8, !tbaa !28
  %2174 = icmp eq i32 %2173, 0
  br i1 %2174, label %2252, label %2175

2175:                                             ; preds = %2172
  %2176 = icmp ult i32 %2169, 32
  br i1 %2176, label %2177, label %2240

2177:                                             ; preds = %2175
  %2178 = zext nneg i32 %2169 to i64
  %2179 = icmp eq i32 %2167, 0
  br i1 %2179, label %2364, label %2180

2180:                                             ; preds = %2177
  %2181 = load i8, ptr %2166, align 1, !tbaa !44
  %2182 = zext i8 %2181 to i64
  %2183 = shl nuw nsw i64 %2182, %2178
  %2184 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2168, i64 %2183), !nosanitize !47
  %2185 = extractvalue { i64, i1 } %2184, 1, !nosanitize !47
  br i1 %2185, label %2186, label %2187, !prof !48, !nosanitize !47

2186:                                             ; preds = %2223, %2209, %2195, %2180
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2187:                                             ; preds = %2180
  %2188 = extractvalue { i64, i1 } %2184, 0, !nosanitize !47
  %2189 = getelementptr inbounds nuw i8, ptr %2166, i64 1
  %2190 = add i32 %2167, -1
  %2191 = add nuw nsw i64 %2178, 8
  %2192 = icmp samesign ult i32 %2169, 24
  br i1 %2192, label %2193, label %2234, !llvm.loop !114

2193:                                             ; preds = %2187
  %2194 = icmp eq i32 %2190, 0
  br i1 %2194, label %2364, label %2195

2195:                                             ; preds = %2193
  %2196 = load i8, ptr %2189, align 1, !tbaa !44
  %2197 = zext i8 %2196 to i64
  %2198 = shl nuw nsw i64 %2197, %2191
  %2199 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2188, i64 %2198), !nosanitize !47
  %2200 = extractvalue { i64, i1 } %2199, 1, !nosanitize !47
  br i1 %2200, label %2186, label %2201, !prof !48, !nosanitize !47

2201:                                             ; preds = %2195
  %2202 = extractvalue { i64, i1 } %2199, 0, !nosanitize !47
  %2203 = getelementptr inbounds nuw i8, ptr %2166, i64 2
  %2204 = add i32 %2167, -2
  %2205 = add nuw nsw i64 %2178, 16
  %2206 = icmp samesign ult i32 %2169, 16
  br i1 %2206, label %2207, label %2234, !llvm.loop !114

2207:                                             ; preds = %2201
  %2208 = icmp eq i32 %2204, 0
  br i1 %2208, label %2364, label %2209

2209:                                             ; preds = %2207
  %2210 = load i8, ptr %2203, align 1, !tbaa !44
  %2211 = zext i8 %2210 to i64
  %2212 = shl nuw nsw i64 %2211, %2205
  %2213 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2202, i64 %2212), !nosanitize !47
  %2214 = extractvalue { i64, i1 } %2213, 1, !nosanitize !47
  br i1 %2214, label %2186, label %2215, !prof !48, !nosanitize !47

2215:                                             ; preds = %2209
  %2216 = extractvalue { i64, i1 } %2213, 0, !nosanitize !47
  %2217 = getelementptr inbounds nuw i8, ptr %2166, i64 3
  %2218 = add i32 %2167, -3
  %2219 = add nuw nsw i64 %2178, 24
  %2220 = icmp samesign ult i32 %2169, 8
  br i1 %2220, label %2221, label %2234, !llvm.loop !114

2221:                                             ; preds = %2215
  %2222 = icmp eq i32 %2218, 0
  br i1 %2222, label %2364, label %2223

2223:                                             ; preds = %2221
  %2224 = load i8, ptr %2217, align 1, !tbaa !44
  %2225 = zext i8 %2224 to i64
  %2226 = shl nuw nsw i64 %2225, %2219
  %2227 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2216, i64 %2226), !nosanitize !47
  %2228 = extractvalue { i64, i1 } %2227, 1, !nosanitize !47
  br i1 %2228, label %2186, label %2229, !prof !48, !nosanitize !47

2229:                                             ; preds = %2223
  %2230 = extractvalue { i64, i1 } %2227, 0, !nosanitize !47
  %2231 = getelementptr inbounds nuw i8, ptr %2166, i64 4
  %2232 = add i32 %2167, -4
  %2233 = or disjoint i64 %2178, 32
  br label %2234

2234:                                             ; preds = %2229, %2215, %2201, %2187
  %2235 = phi i64 [ %2188, %2187 ], [ %2202, %2201 ], [ %2216, %2215 ], [ %2230, %2229 ]
  %2236 = phi ptr [ %2189, %2187 ], [ %2203, %2201 ], [ %2217, %2215 ], [ %2231, %2229 ]
  %2237 = phi i32 [ %2190, %2187 ], [ %2204, %2201 ], [ %2218, %2215 ], [ %2232, %2229 ]
  %2238 = phi i64 [ %2191, %2187 ], [ %2205, %2201 ], [ %2219, %2215 ], [ %2233, %2229 ]
  %2239 = trunc nuw nsw i64 %2238 to i32
  br label %2240

2240:                                             ; preds = %2234, %2175
  %2241 = phi ptr [ %2166, %2175 ], [ %2236, %2234 ]
  %2242 = phi i32 [ %2167, %2175 ], [ %2237, %2234 ]
  %2243 = phi i64 [ %2168, %2175 ], [ %2235, %2234 ]
  %2244 = phi i32 [ %2169, %2175 ], [ %2239, %2234 ]
  %2245 = and i32 %2165, 4
  %2246 = icmp eq i32 %2245, 0
  br i1 %2246, label %2252, label %2247

2247:                                             ; preds = %2240
  %2248 = load i64, ptr %51, align 8, !tbaa !21
  %2249 = and i64 %2248, 4294967295
  %2250 = icmp eq i64 %2243, %2249
  br i1 %2250, label %2252, label %2251

2251:                                             ; preds = %2247
  store ptr @.str.18, ptr %55, align 8, !tbaa !45
  store i32 16209, ptr %21, align 8, !tbaa !20
  br label %2257

2252:                                             ; preds = %2247, %2240, %2172, %2164
  %2253 = phi ptr [ %2166, %2172 ], [ %2166, %2164 ], [ %2241, %2240 ], [ %2241, %2247 ]
  %2254 = phi i32 [ %2167, %2172 ], [ %2167, %2164 ], [ %2242, %2240 ], [ %2242, %2247 ]
  %2255 = phi i64 [ %2168, %2172 ], [ %2168, %2164 ], [ 0, %2240 ], [ 0, %2247 ]
  %2256 = phi i32 [ %2169, %2172 ], [ %2169, %2164 ], [ 0, %2240 ], [ 0, %2247 ]
  store i32 16208, ptr %21, align 8, !tbaa !20
  br label %.loopexit162

2257:                                             ; preds = %2251, %2156, %2029, %2026, %.loopexit4799, %1934, %1843, %1617, %1613, %1609, %1464, %1455, %1438, %1429, %1425, %1395, %1281, %1142, %1068, %1016, %1011, %980, %899, %865, %776, %763, %262, %258, %212, %211, %196, %192, %174, %128
  %2258 = phi ptr [ %90, %128 ], [ %162, %174 ], [ %162, %192 ], [ %162, %196 ], [ %162, %211 ], [ %162, %212 ], [ %251, %258 ], [ %251, %262 ], [ %752, %763 ], [ %765, %776 ], [ %854, %865 ], [ %883, %899 ], [ %972, %980 ], [ %1013, %1011 ], [ %990, %1016 ], [ %1050, %1068 ], [ %1083, %1142 ], [ %1422, %1425 ], [ %1422, %1429 ], [ %1422, %1438 ], [ %1458, %1464 ], [ %1458, %1455 ], [ %1590, %1609 ], [ %1590, %1613 ], [ %1590, %1617 ], [ %1820, %1843 ], [ %1913, %1934 ], [ %1913, %2026 ], [ %1913, %.loopexit4799 ], [ %90, %2029 ], [ %2103, %2156 ], [ %2241, %2251 ], [ %1370, %1395 ], [ %1273, %1281 ]
  %2259 = phi ptr [ %91, %128 ], [ %91, %174 ], [ %91, %192 ], [ %91, %196 ], [ %91, %211 ], [ %91, %212 ], [ %91, %258 ], [ %91, %262 ], [ %91, %763 ], [ %91, %776 ], [ %91, %865 ], [ %91, %899 ], [ %91, %980 ], [ %1015, %1011 ], [ %91, %1016 ], [ %91, %1068 ], [ %91, %1142 ], [ %91, %1425 ], [ %91, %1429 ], [ %91, %1438 ], [ %1456, %1464 ], [ %1456, %1455 ], [ %91, %1609 ], [ %91, %1613 ], [ %91, %1617 ], [ %91, %1843 ], [ %91, %1934 ], [ %.lcssa3792, %2026 ], [ %.lcssa3792, %.loopexit4799 ], [ %2033, %2029 ], [ %91, %2156 ], [ %91, %2251 ], [ %91, %1395 ], [ %91, %1281 ]
  %2260 = phi i32 [ %92, %128 ], [ %163, %174 ], [ %163, %192 ], [ %163, %196 ], [ %163, %211 ], [ %163, %212 ], [ %252, %258 ], [ %252, %262 ], [ %753, %763 ], [ %766, %776 ], [ %855, %865 ], [ %884, %899 ], [ %973, %980 ], [ %1003, %1011 ], [ %991, %1016 ], [ %1051, %1068 ], [ %1084, %1142 ], [ %1421, %1425 ], [ %1421, %1429 ], [ %1421, %1438 ], [ %1459, %1464 ], [ %1459, %1455 ], [ %1591, %1609 ], [ %1591, %1613 ], [ %1591, %1617 ], [ %1821, %1843 ], [ %1914, %1934 ], [ %1914, %2026 ], [ %1914, %.loopexit4799 ], [ %92, %2029 ], [ %2104, %2156 ], [ %2242, %2251 ], [ %1371, %1395 ], [ %1274, %1281 ]
  %2261 = phi i32 [ %93, %128 ], [ %93, %174 ], [ %93, %192 ], [ %93, %196 ], [ %93, %211 ], [ %93, %212 ], [ %93, %258 ], [ %93, %262 ], [ %93, %763 ], [ %93, %776 ], [ %93, %865 ], [ %93, %899 ], [ %93, %980 ], [ %1012, %1011 ], [ %93, %1016 ], [ %93, %1068 ], [ %93, %1142 ], [ %93, %1425 ], [ %93, %1429 ], [ %93, %1438 ], [ %1457, %1464 ], [ %1457, %1455 ], [ %93, %1609 ], [ %93, %1613 ], [ %93, %1617 ], [ %93, %1843 ], [ %93, %1934 ], [ %1967, %2026 ], [ %1967, %.loopexit4799 ], [ %2032, %2029 ], [ %93, %2156 ], [ %93, %2251 ], [ %93, %1395 ], [ %93, %1281 ]
  %2262 = phi i64 [ %94, %128 ], [ 0, %174 ], [ %164, %192 ], [ %164, %196 ], [ %198, %211 ], [ 0, %212 ], [ %253, %258 ], [ %253, %262 ], [ %754, %763 ], [ %767, %776 ], [ %869, %865 ], [ %901, %899 ], [ %974, %980 ], [ %992, %1011 ], [ %992, %1016 ], [ %1063, %1068 ], [ %1085, %1142 ], [ %1420, %1425 ], [ %1420, %1429 ], [ %1420, %1438 ], [ %1460, %1464 ], [ %1460, %1455 ], [ %1599, %1609 ], [ %1599, %1613 ], [ %1599, %1617 ], [ %1829, %1843 ], [ %1915, %1934 ], [ %1915, %2026 ], [ %1915, %.loopexit4799 ], [ %94, %2029 ], [ %2105, %2156 ], [ %2243, %2251 ], [ %1372, %1395 ], [ %1278, %1281 ]
  %2263 = phi i32 [ %95, %128 ], [ 0, %174 ], [ %165, %192 ], [ %165, %196 ], [ %199, %211 ], [ 0, %212 ], [ %254, %258 ], [ %254, %262 ], [ %755, %763 ], [ %768, %776 ], [ %867, %865 ], [ %900, %899 ], [ %975, %980 ], [ %993, %1011 ], [ %993, %1016 ], [ %1064, %1068 ], [ %1086, %1142 ], [ %1419, %1425 ], [ %1419, %1429 ], [ %1419, %1438 ], [ %1461, %1464 ], [ %1461, %1455 ], [ %1601, %1609 ], [ %1601, %1613 ], [ %1601, %1617 ], [ %1831, %1843 ], [ %1916, %1934 ], [ %1916, %2026 ], [ %1916, %.loopexit4799 ], [ %95, %2029 ], [ %2106, %2156 ], [ %2244, %2251 ], [ %1376, %1395 ], [ %1279, %1281 ]
  %2264 = phi i32 [ %96, %128 ], [ %96, %174 ], [ %96, %192 ], [ %96, %196 ], [ %96, %211 ], [ %96, %212 ], [ %96, %258 ], [ %96, %262 ], [ %96, %763 ], [ %96, %776 ], [ %96, %865 ], [ %96, %899 ], [ %96, %980 ], [ %96, %1011 ], [ %96, %1016 ], [ %96, %1068 ], [ %96, %1142 ], [ %96, %1425 ], [ %96, %1429 ], [ %96, %1438 ], [ %96, %1464 ], [ %96, %1455 ], [ %96, %1609 ], [ %96, %1613 ], [ %96, %1617 ], [ %96, %1843 ], [ %96, %1934 ], [ %96, %2026 ], [ %96, %.loopexit4799 ], [ %96, %2029 ], [ %93, %2156 ], [ %2170, %2251 ], [ %96, %1395 ], [ %96, %1281 ]
  %2265 = phi i32 [ %97, %128 ], [ %97, %174 ], [ %97, %192 ], [ %97, %196 ], [ %97, %211 ], [ %97, %212 ], [ %97, %258 ], [ %97, %262 ], [ %97, %763 ], [ %97, %776 ], [ %97, %865 ], [ %97, %899 ], [ %97, %980 ], [ %97, %1011 ], [ %97, %1016 ], [ %97, %1068 ], [ %1140, %1142 ], [ %1149, %1425 ], [ %1427, %1429 ], [ %1436, %1438 ], [ %1451, %1464 ], [ %1451, %1455 ], [ %1451, %1609 ], [ %1451, %1613 ], [ %1451, %1617 ], [ %1691, %1843 ], [ %1917, %1934 ], [ %1917, %2026 ], [ %1917, %.loopexit4799 ], [ %97, %2029 ], [ %97, %2156 ], [ %97, %2251 ], [ %1149, %1395 ], [ %1149, %1281 ]
  %2266 = load i32, ptr %21, align 8, !tbaa !20
  br label %88

._crit_edge:                                      ; preds = %1180, %1183
  %.lcssa3614 = phi i64 [ %1197, %1183 ], [ %1170, %1180 ]
  %2267 = zext i32 %1169 to i64
  %2268 = shl i32 %1169, 3
  %2269 = add i32 %1171, %2268
  %2270 = getelementptr i8, ptr %1168, i64 %2267
  br label %.loopexit162

2271:                                             ; preds = %142, %125
  %.lcssa2118 = phi i32 [ 1, %142 ], [ 0, %125 ]
  %2272 = phi i64 [ %137, %142 ], [ %94, %125 ]
  %2273 = zext nneg i32 %.lcssa2118 to i64
  %2274 = shl nuw nsw i32 %.lcssa2118, 3
  %2275 = add nuw nsw i32 %95, %2274
  %2276 = getelementptr i8, ptr %90, i64 %2273
  br label %.loopexit162

2277:                                             ; preds = %732, %716
  %.lcssa1606 = phi i32 [ 1, %732 ], [ 0, %716 ]
  %2278 = phi i64 [ %727, %732 ], [ %709, %716 ]
  %2279 = zext nneg i32 %.lcssa1606 to i64
  %2280 = shl nuw nsw i32 %.lcssa1606, 3
  %2281 = add nuw nsw i32 %710, %2280
  %2282 = getelementptr i8, ptr %707, i64 %2279
  br label %.loopexit162

2283:                                             ; preds = %454, %433
  %.lcssa1600 = phi i32 [ 1, %454 ], [ 0, %433 ]
  %2284 = phi i64 [ %449, %454 ], [ %436, %433 ]
  %2285 = zext nneg i32 %.lcssa1600 to i64
  %2286 = shl nuw nsw i32 %.lcssa1600, 3
  %2287 = add nuw nsw i32 %437, %2286
  %2288 = getelementptr i8, ptr %434, i64 %2285
  br label %.loopexit162

2289:                                             ; preds = %386, %366
  %.lcssa1594 = phi i32 [ 1, %386 ], [ 0, %366 ]
  %2290 = phi i64 [ %381, %386 ], [ %368, %366 ]
  %2291 = zext nneg i32 %.lcssa1594 to i64
  %2292 = shl nuw nsw i32 %.lcssa1594, 3
  %2293 = add nuw nsw i32 %2292, %367
  %2294 = getelementptr i8, ptr %370, i64 %2291
  br label %.loopexit162

2295:                                             ; preds = %331, %317, %303, %283
  %.lcssa1588 = phi i32 [ 3, %331 ], [ 2, %317 ], [ 1, %303 ], [ 0, %283 ]
  %2296 = phi i64 [ %326, %331 ], [ %312, %317 ], [ %298, %303 ], [ %285, %283 ]
  %2297 = zext nneg i32 %.lcssa1588 to i64
  %2298 = shl nuw nsw i32 %.lcssa1588, 3
  %2299 = add nuw nsw i32 %2298, %284
  %2300 = getelementptr i8, ptr %287, i64 %2297
  br label %.loopexit162

2301:                                             ; preds = %231, %117
  %.lcssa2102 = phi i32 [ 1, %231 ], [ 0, %117 ]
  %2302 = phi i64 [ %226, %231 ], [ %94, %117 ]
  %2303 = zext nneg i32 %.lcssa2102 to i64
  %2304 = shl nuw nsw i32 %.lcssa2102, 3
  %2305 = add nuw nsw i32 %95, %2304
  %2306 = getelementptr i8, ptr %90, i64 %2303
  br label %.loopexit162

2307:                                             ; preds = %819, %805, %791, %112
  %.lcssa2096 = phi i32 [ 3, %819 ], [ 2, %805 ], [ 1, %791 ], [ 0, %112 ]
  %2308 = phi i64 [ %814, %819 ], [ %800, %805 ], [ %786, %791 ], [ %94, %112 ]
  %2309 = zext nneg i32 %.lcssa2096 to i64
  %2310 = shl nuw nsw i32 %.lcssa2096, 3
  %2311 = add nuw nsw i32 %95, %2310
  %2312 = getelementptr i8, ptr %90, i64 %2309
  br label %.loopexit162

2313:                                             ; preds = %953, %939, %925, %908
  %.lcssa2092 = phi i32 [ 3, %953 ], [ 2, %939 ], [ 1, %925 ], [ 0, %908 ]
  %2314 = phi i64 [ %948, %953 ], [ %934, %939 ], [ %920, %925 ], [ %905, %908 ]
  %2315 = zext nneg i32 %.lcssa2092 to i64
  %2316 = shl nuw nsw i32 %.lcssa2092, 3
  %2317 = add nuw nsw i32 %909, %2316
  %2318 = getelementptr i8, ptr %90, i64 %2315
  br label %.loopexit162

._crit_edge4761:                                  ; preds = %1857, %1860
  %.lcssa3785 = phi i64 [ %1874, %1860 ], [ %1851, %1857 ]
  %2319 = zext i32 %1850 to i64
  %2320 = shl i32 %1850, 3
  %2321 = add i32 %1852, %2320
  %2322 = getelementptr i8, ptr %1849, i64 %2319
  br label %.loopexit162

._crit_edge4741:                                  ; preds = %1765, %1768
  %.lcssa3776 = phi i64 [ %1783, %1768 ], [ %1740, %1765 ]
  %2323 = zext i32 %1739 to i64
  %2324 = shl i32 %1739, 3
  %2325 = add i32 %1741, %2324
  %2326 = getelementptr i8, ptr %1738, i64 %2323
  br label %.loopexit162

._crit_edge4721:                                  ; preds = %1704, %1707
  %.lcssa3767 = phi i64 [ %1721, %1707 ], [ %1689, %1704 ]
  %2327 = zext i32 %1688 to i64
  %2328 = shl i32 %1688, 3
  %2329 = add i32 %1690, %2328
  %2330 = getelementptr i8, ptr %1687, i64 %2327
  br label %.loopexit162

._crit_edge4701:                                  ; preds = %1630, %1633
  %.lcssa3760 = phi i64 [ %1647, %1633 ], [ %1624, %1630 ]
  %2331 = zext i32 %1623 to i64
  %2332 = shl i32 %1623, 3
  %2333 = add i32 %1625, %2332
  %2334 = getelementptr i8, ptr %1622, i64 %2331
  br label %.loopexit162

._crit_edge4681:                                  ; preds = %1540, %1543
  %.lcssa3751 = phi i64 [ %1557, %1543 ], [ %1514, %1540 ]
  %2335 = zext i32 %1513 to i64
  %2336 = shl i32 %1513, 3
  %2337 = add i32 %1515, %2336
  %2338 = getelementptr i8, ptr %1512, i64 %2335
  br label %.loopexit162

._crit_edge4661:                                  ; preds = %1478, %1481
  %.lcssa3742 = phi i64 [ %1495, %1481 ], [ %1449, %1478 ]
  %2339 = zext i32 %1448 to i64
  %2340 = shl i32 %1448, 3
  %2341 = add i32 %1450, %2340
  %2342 = getelementptr i8, ptr %1447, i64 %2339
  br label %.loopexit162

2343:                                             ; preds = %1332
  %2344 = zext i32 %1214 to i64
  %2345 = shl i32 %1214, 3
  %2346 = add i32 %1216, %2345
  %2347 = getelementptr i8, ptr %1213, i64 %2344
  br label %.loopexit162

2348:                                             ; preds = %1251
  %2349 = zext i32 %1214 to i64
  %2350 = shl i32 %1214, 3
  %2351 = add i32 %1216, %2350
  %2352 = getelementptr i8, ptr %1213, i64 %2349
  br label %.loopexit162

2353:                                             ; preds = %1295
  %2354 = zext i32 %1214 to i64
  %2355 = shl i32 %1214, 3
  %2356 = add i32 %1216, %2355
  %2357 = getelementptr i8, ptr %1213, i64 %2354
  br label %.loopexit162

2358:                                             ; preds = %1030, %107
  %.lcssa2047 = phi i32 [ 1, %1030 ], [ 0, %107 ]
  %2359 = phi i64 [ %1025, %1030 ], [ %94, %107 ]
  %2360 = zext nneg i32 %.lcssa2047 to i64
  %2361 = shl nuw nsw i32 %.lcssa2047, 3
  %2362 = add nuw nsw i32 %95, %2361
  %2363 = getelementptr i8, ptr %90, i64 %2360
  br label %.loopexit162

2364:                                             ; preds = %2221, %2207, %2193, %2177
  %.lcssa1442 = phi i32 [ 3, %2221 ], [ 2, %2207 ], [ 1, %2193 ], [ 0, %2177 ]
  %2365 = phi i64 [ %2216, %2221 ], [ %2202, %2207 ], [ %2188, %2193 ], [ %2168, %2177 ]
  %2366 = zext nneg i32 %.lcssa1442 to i64
  %2367 = shl nuw nsw i32 %.lcssa1442, 3
  %2368 = add nuw nsw i32 %2169, %2367
  %2369 = getelementptr i8, ptr %2166, i64 %2366
  br label %.loopexit162

2370:                                             ; preds = %2083, %2069, %2055, %2039
  %.lcssa2039 = phi i32 [ 3, %2083 ], [ 2, %2069 ], [ 1, %2055 ], [ 0, %2039 ]
  %2371 = phi i64 [ %2078, %2083 ], [ %2064, %2069 ], [ %2050, %2055 ], [ %94, %2039 ]
  %2372 = zext nneg i32 %.lcssa2039 to i64
  %2373 = shl nuw nsw i32 %.lcssa2039, 3
  %2374 = add nuw nsw i32 %95, %2373
  %2375 = getelementptr i8, ptr %90, i64 %2372
  br label %.loopexit162

.loopexit162.loopexit4803:                        ; preds = %88
  br label %.loopexit162

.loopexit162:                                     ; preds = %2027, %1912, %1439, %996, %981, %862, %848, %694, %650, %630, %586, %570, %1098, %88, %.loopexit162.loopexit4803, %2370, %2364, %2358, %2353, %2348, %2343, %._crit_edge4661, %._crit_edge4681, %._crit_edge4701, %._crit_edge4721, %._crit_edge4741, %._crit_edge4761, %2313, %2307, %2301, %2295, %2289, %2283, %2277, %2271, %._crit_edge, %2252, %892
  %2376 = phi i32 [ %93, %892 ], [ %93, %2252 ], [ %93, %._crit_edge ], [ %93, %2271 ], [ %93, %2277 ], [ %93, %2283 ], [ %93, %2289 ], [ %93, %2295 ], [ %93, %2301 ], [ %93, %2307 ], [ %93, %2313 ], [ %93, %._crit_edge4761 ], [ %93, %._crit_edge4741 ], [ %93, %._crit_edge4721 ], [ %93, %._crit_edge4701 ], [ %93, %._crit_edge4681 ], [ %93, %._crit_edge4661 ], [ %93, %2343 ], [ %93, %2348 ], [ %93, %2353 ], [ %93, %2358 ], [ %93, %2364 ], [ %93, %2370 ], [ %93, %88 ], [ %93, %1098 ], [ %93, %862 ], [ 0, %2027 ], [ 0, %1912 ], [ %93, %1439 ], [ %93, %996 ], [ %93, %981 ], [ %93, %848 ], [ %93, %694 ], [ %93, %650 ], [ %93, %630 ], [ %93, %586 ], [ %93, %570 ], [ %93, %.loopexit162.loopexit4803 ]
  %2377 = phi ptr [ %883, %892 ], [ %2253, %2252 ], [ %2270, %._crit_edge ], [ %2276, %2271 ], [ %2282, %2277 ], [ %2288, %2283 ], [ %2294, %2289 ], [ %2300, %2295 ], [ %2306, %2301 ], [ %2312, %2307 ], [ %2318, %2313 ], [ %2322, %._crit_edge4761 ], [ %2326, %._crit_edge4741 ], [ %2330, %._crit_edge4721 ], [ %2334, %._crit_edge4701 ], [ %2338, %._crit_edge4681 ], [ %2342, %._crit_edge4661 ], [ %2347, %2343 ], [ %2352, %2348 ], [ %2357, %2353 ], [ %2363, %2358 ], [ %2369, %2364 ], [ %2375, %2370 ], [ %90, %88 ], [ %1096, %1098 ], [ %854, %862 ], [ %90, %2027 ], [ %1913, %1912 ], [ %1422, %1439 ], [ %990, %996 ], [ %972, %981 ], [ %849, %848 ], [ %697, %694 ], [ %643, %650 ], [ %633, %630 ], [ %579, %586 ], [ %572, %570 ], [ %90, %.loopexit162.loopexit4803 ]
  %2378 = phi i32 [ %884, %892 ], [ %2254, %2252 ], [ 0, %._crit_edge ], [ 0, %2271 ], [ 0, %2277 ], [ 0, %2283 ], [ 0, %2289 ], [ 0, %2295 ], [ 0, %2301 ], [ 0, %2307 ], [ 0, %2313 ], [ 0, %._crit_edge4761 ], [ 0, %._crit_edge4741 ], [ 0, %._crit_edge4721 ], [ 0, %._crit_edge4701 ], [ 0, %._crit_edge4681 ], [ 0, %._crit_edge4661 ], [ 0, %2343 ], [ 0, %2348 ], [ 0, %2353 ], [ 0, %2358 ], [ 0, %2364 ], [ 0, %2370 ], [ %92, %88 ], [ 0, %1098 ], [ 0, %862 ], [ %92, %2027 ], [ %1914, %1912 ], [ %1421, %1439 ], [ %991, %996 ], [ %973, %981 ], [ %850, %848 ], [ %695, %694 ], [ 0, %650 ], [ %631, %630 ], [ 0, %586 ], [ %573, %570 ], [ %92, %.loopexit162.loopexit4803 ]
  %2379 = phi i64 [ %894, %892 ], [ %2255, %2252 ], [ %.lcssa3614, %._crit_edge ], [ %2272, %2271 ], [ %2278, %2277 ], [ %2284, %2283 ], [ %2290, %2289 ], [ %2296, %2295 ], [ %2302, %2301 ], [ %2308, %2307 ], [ %2314, %2313 ], [ %.lcssa3785, %._crit_edge4761 ], [ %.lcssa3776, %._crit_edge4741 ], [ %.lcssa3767, %._crit_edge4721 ], [ %.lcssa3760, %._crit_edge4701 ], [ %.lcssa3751, %._crit_edge4681 ], [ %.lcssa3742, %._crit_edge4661 ], [ %1334, %2343 ], [ %1253, %2348 ], [ %1297, %2353 ], [ %2359, %2358 ], [ %2365, %2364 ], [ %2371, %2370 ], [ %94, %88 ], [ %1094, %1098 ], [ %856, %862 ], [ %94, %2027 ], [ %1915, %1912 ], [ %1420, %1439 ], [ %992, %996 ], [ 0, %981 ], [ %851, %848 ], [ %645, %694 ], [ %645, %650 ], [ %581, %630 ], [ %581, %586 ], [ %504, %570 ], [ %94, %.loopexit162.loopexit4803 ]
  %2380 = phi i32 [ %893, %892 ], [ %2256, %2252 ], [ %2269, %._crit_edge ], [ %2275, %2271 ], [ %2281, %2277 ], [ %2287, %2283 ], [ %2293, %2289 ], [ %2299, %2295 ], [ %2305, %2301 ], [ %2311, %2307 ], [ %2317, %2313 ], [ %2321, %._crit_edge4761 ], [ %2325, %._crit_edge4741 ], [ %2329, %._crit_edge4721 ], [ %2333, %._crit_edge4701 ], [ %2337, %._crit_edge4681 ], [ %2341, %._crit_edge4661 ], [ %2346, %2343 ], [ %2351, %2348 ], [ %2356, %2353 ], [ %2362, %2358 ], [ %2368, %2364 ], [ %2374, %2370 ], [ %95, %88 ], [ %1093, %1098 ], [ %857, %862 ], [ %95, %2027 ], [ %1916, %1912 ], [ %1419, %1439 ], [ %993, %996 ], [ 0, %981 ], [ %852, %848 ], [ %646, %694 ], [ %646, %650 ], [ %582, %630 ], [ %582, %586 ], [ %505, %570 ], [ %95, %.loopexit162.loopexit4803 ]
  %2381 = phi i32 [ %96, %892 ], [ %2170, %2252 ], [ %96, %._crit_edge ], [ %96, %2271 ], [ %96, %2277 ], [ %96, %2283 ], [ %96, %2289 ], [ %96, %2295 ], [ %96, %2301 ], [ %96, %2307 ], [ %96, %2313 ], [ %96, %._crit_edge4761 ], [ %96, %._crit_edge4741 ], [ %96, %._crit_edge4721 ], [ %96, %._crit_edge4701 ], [ %96, %._crit_edge4681 ], [ %96, %._crit_edge4661 ], [ %96, %2343 ], [ %96, %2348 ], [ %96, %2353 ], [ %96, %2358 ], [ %2170, %2364 ], [ %96, %2370 ], [ %96, %88 ], [ %96, %1098 ], [ %96, %570 ], [ %96, %586 ], [ %96, %630 ], [ %96, %650 ], [ %96, %694 ], [ %96, %848 ], [ %96, %862 ], [ %96, %981 ], [ %96, %996 ], [ %96, %1439 ], [ %96, %1912 ], [ %96, %2027 ], [ %96, %.loopexit162.loopexit4803 ]
  %2382 = phi i32 [ %97, %892 ], [ 1, %2252 ], [ %1149, %._crit_edge ], [ %97, %2271 ], [ %97, %2277 ], [ %97, %2283 ], [ %97, %2289 ], [ %97, %2295 ], [ %97, %2301 ], [ %97, %2307 ], [ %97, %2313 ], [ %1853, %._crit_edge4761 ], [ %1691, %._crit_edge4741 ], [ %1691, %._crit_edge4721 ], [ %1626, %._crit_edge4701 ], [ %1451, %._crit_edge4681 ], [ %1451, %._crit_edge4661 ], [ %1149, %2343 ], [ %1149, %2348 ], [ %1149, %2353 ], [ %97, %2358 ], [ %97, %2364 ], [ %97, %2370 ], [ 1, %88 ], [ %97, %1098 ], [ %97, %862 ], [ %97, %2027 ], [ %1917, %1912 ], [ 0, %1439 ], [ %97, %996 ], [ %97, %981 ], [ %97, %848 ], [ %97, %694 ], [ %97, %650 ], [ %97, %630 ], [ %97, %586 ], [ %97, %570 ], [ -3, %.loopexit162.loopexit4803 ]
  store ptr %91, ptr %26, align 8, !tbaa !49
  store i32 %2376, ptr %41, align 8, !tbaa !52
  store ptr %2377, ptr %0, align 8, !tbaa !50
  store i32 %2378, ptr %43, align 8, !tbaa !51
  store i64 %2379, ptr %45, align 8, !tbaa !31
  store i32 %2380, ptr %47, align 8, !tbaa !32
  %2383 = load i32, ptr %79, align 4, !tbaa !38
  %2384 = icmp eq i32 %2383, 0
  br i1 %2384, label %2385, label %2394

2385:                                             ; preds = %.loopexit162
  %2386 = icmp eq i32 %2381, %2376
  br i1 %2386, label %2482, label %2387

2387:                                             ; preds = %2385
  %2388 = load i32, ptr %21, align 8, !tbaa !20
  %2389 = icmp ult i32 %2388, 16209
  br i1 %2389, label %2390, label %2482

2390:                                             ; preds = %2387
  %2391 = icmp samesign ult i32 %2388, 16206
  %2392 = icmp ne i32 %1, 4
  %2393 = or i1 %2392, %2391
  br i1 %2393, label %2394, label %2482

2394:                                             ; preds = %2390, %.loopexit162
  %2395 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2381, i32 %2376), !nosanitize !47
  %2396 = extractvalue { i32, i1 } %2395, 1, !nosanitize !47
  br i1 %2396, label %2397, label %2398, !prof !48, !nosanitize !47

2397:                                             ; preds = %2394
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2398:                                             ; preds = %2394
  %2399 = extractvalue { i32, i1 } %2395, 0, !nosanitize !47
  %2400 = load ptr, ptr %14, align 8, !tbaa !15
  %2401 = getelementptr inbounds nuw i8, ptr %2400, i64 72
  %2402 = load ptr, ptr %2401, align 8, !tbaa !41
  %2403 = icmp eq ptr %2402, null
  br i1 %2403, label %2404, label %2413

2404:                                             ; preds = %2398
  %2405 = load ptr, ptr %6, align 8, !tbaa !5
  %2406 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %2407 = load ptr, ptr %2406, align 8, !tbaa !43
  %2408 = getelementptr inbounds nuw i8, ptr %2400, i64 56
  %2409 = load i32, ptr %2408, align 8, !tbaa !42
  %2410 = shl nuw i32 1, %2409
  %2411 = call ptr %2405(ptr noundef %2407, i32 noundef %2410, i32 noundef 1) #12
  store ptr %2411, ptr %2401, align 8, !tbaa !41
  %2412 = icmp eq ptr %2411, null
  br i1 %2412, label %2481, label %2413

2413:                                             ; preds = %2404, %2398
  %2414 = phi ptr [ %2411, %2404 ], [ %2402, %2398 ]
  %2415 = getelementptr inbounds nuw i8, ptr %2400, i64 60
  %2416 = load i32, ptr %2415, align 4, !tbaa !38
  %2417 = icmp eq i32 %2416, 0
  br i1 %2417, label %2418, label %2424

2418:                                             ; preds = %2413
  %2419 = getelementptr inbounds nuw i8, ptr %2400, i64 56
  %2420 = load i32, ptr %2419, align 8, !tbaa !42
  %2421 = shl nuw i32 1, %2420
  store i32 %2421, ptr %2415, align 4, !tbaa !38
  %2422 = getelementptr inbounds nuw i8, ptr %2400, i64 68
  store i32 0, ptr %2422, align 4, !tbaa !40
  %2423 = getelementptr inbounds nuw i8, ptr %2400, i64 64
  store i32 0, ptr %2423, align 8, !tbaa !39
  br label %2424

2424:                                             ; preds = %2418, %2413
  %2425 = phi i32 [ %2421, %2418 ], [ %2416, %2413 ]
  %2426 = icmp ult i32 %2399, %2425
  br i1 %2426, label %2434, label %2427

2427:                                             ; preds = %2424
  %2428 = zext i32 %2425 to i64
  %2429 = sub nsw i64 0, %2428
  %2430 = getelementptr inbounds i8, ptr %91, i64 %2429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2414, ptr noundef nonnull readonly align 1 dereferenceable(1) %2430, i64 %2428, i1 false)
  %2431 = getelementptr inbounds nuw i8, ptr %2400, i64 68
  store i32 0, ptr %2431, align 4, !tbaa !40
  %2432 = load i32, ptr %2415, align 4, !tbaa !38
  %2433 = getelementptr inbounds nuw i8, ptr %2400, i64 64
  store i32 %2432, ptr %2433, align 8, !tbaa !39
  br label %2482

2434:                                             ; preds = %2424
  %2435 = getelementptr inbounds nuw i8, ptr %2400, i64 68
  %2436 = load i32, ptr %2435, align 4, !tbaa !40
  %2437 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2425, i32 %2436), !nosanitize !47
  %2438 = extractvalue { i32, i1 } %2437, 1, !nosanitize !47
  br i1 %2438, label %2439, label %2440, !prof !48, !nosanitize !47

2439:                                             ; preds = %2434
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2440:                                             ; preds = %2434
  %2441 = extractvalue { i32, i1 } %2437, 0, !nosanitize !47
  %2442 = call i32 @llvm.umin.i32(i32 %2441, i32 %2399)
  %2443 = zext i32 %2436 to i64
  %2444 = getelementptr inbounds nuw i8, ptr %2414, i64 %2443
  %2445 = zext i32 %2399 to i64
  %2446 = sub nsw i64 0, %2445
  %2447 = getelementptr inbounds i8, ptr %91, i64 %2446
  %2448 = zext i32 %2442 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2444, ptr readonly align 1 %2447, i64 %2448, i1 false)
  %2449 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2399, i32 %2442), !nosanitize !47
  %2450 = extractvalue { i32, i1 } %2449, 0, !nosanitize !47
  %2451 = extractvalue { i32, i1 } %2449, 1, !nosanitize !47
  br i1 %2451, label %2452, label %2453, !prof !48, !nosanitize !47

2452:                                             ; preds = %2440
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2453:                                             ; preds = %2440
  %2454 = icmp eq i32 %2450, 0
  br i1 %2454, label %2462, label %2455

2455:                                             ; preds = %2453
  %2456 = load ptr, ptr %2401, align 8, !tbaa !41
  %2457 = zext i32 %2450 to i64
  %2458 = sub nsw i64 0, %2457
  %2459 = getelementptr inbounds i8, ptr %91, i64 %2458
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2456, ptr nonnull readonly align 1 %2459, i64 %2457, i1 false)
  store i32 %2450, ptr %2435, align 4, !tbaa !40
  %2460 = load i32, ptr %2415, align 4, !tbaa !38
  %2461 = getelementptr inbounds nuw i8, ptr %2400, i64 64
  store i32 %2460, ptr %2461, align 8, !tbaa !39
  br label %2482

2462:                                             ; preds = %2453
  %2463 = load i32, ptr %2435, align 4, !tbaa !40
  %2464 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2463, i32 %2442), !nosanitize !47
  %2465 = extractvalue { i32, i1 } %2464, 1, !nosanitize !47
  br i1 %2465, label %2466, label %2467, !prof !48, !nosanitize !47

2466:                                             ; preds = %2462
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2467:                                             ; preds = %2462
  %2468 = extractvalue { i32, i1 } %2464, 0, !nosanitize !47
  %2469 = load i32, ptr %2415, align 4, !tbaa !38
  %2470 = icmp eq i32 %2468, %2469
  %2471 = select i1 %2470, i32 0, i32 %2468
  store i32 %2471, ptr %2435, align 4
  %2472 = getelementptr inbounds nuw i8, ptr %2400, i64 64
  %2473 = load i32, ptr %2472, align 8, !tbaa !39
  %2474 = icmp ult i32 %2473, %2469
  br i1 %2474, label %2475, label %2482

2475:                                             ; preds = %2467
  %2476 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2473, i32 %2442), !nosanitize !47
  %2477 = extractvalue { i32, i1 } %2476, 1, !nosanitize !47
  br i1 %2477, label %2478, label %2479, !prof !48, !nosanitize !47

2478:                                             ; preds = %2475
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2479:                                             ; preds = %2475
  %2480 = extractvalue { i32, i1 } %2476, 0, !nosanitize !47
  store i32 %2480, ptr %2472, align 8, !tbaa !39
  br label %2482

2481:                                             ; preds = %2404
  store i32 16210, ptr %21, align 8, !tbaa !20
  br label %.loopexit164

2482:                                             ; preds = %2479, %2467, %2455, %2427, %2390, %2387, %2385
  %2483 = load i32, ptr %43, align 8, !tbaa !51
  %2484 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %44, i32 %2483), !nosanitize !47
  %2485 = extractvalue { i32, i1 } %2484, 0, !nosanitize !47
  %2486 = extractvalue { i32, i1 } %2484, 1, !nosanitize !47
  br i1 %2486, label %2487, label %2488, !prof !48, !nosanitize !47

2487:                                             ; preds = %2482
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2488:                                             ; preds = %2482
  %2489 = load i32, ptr %41, align 8, !tbaa !52
  %2490 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2381, i32 %2489), !nosanitize !47
  %2491 = extractvalue { i32, i1 } %2490, 0, !nosanitize !47
  %2492 = extractvalue { i32, i1 } %2490, 1, !nosanitize !47
  br i1 %2492, label %2493, label %2494, !prof !48, !nosanitize !47

2493:                                             ; preds = %2488
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

2494:                                             ; preds = %2488
  %2495 = zext i32 %2485 to i64
  %2496 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2497 = load i64, ptr %2496, align 8, !tbaa !22
  %2498 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2497, i64 %2495), !nosanitize !47
  %2499 = extractvalue { i64, i1 } %2498, 1, !nosanitize !47
  br i1 %2499, label %2500, label %2501, !prof !48, !nosanitize !47

2500:                                             ; preds = %2494
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2501:                                             ; preds = %2494
  %2502 = extractvalue { i64, i1 } %2498, 0, !nosanitize !47
  store i64 %2502, ptr %2496, align 8, !tbaa !22
  %2503 = zext i32 %2491 to i64
  %2504 = load i64, ptr %50, align 8, !tbaa !113
  %2505 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2504, i64 %2503), !nosanitize !47
  %2506 = extractvalue { i64, i1 } %2505, 1, !nosanitize !47
  br i1 %2506, label %2507, label %2508, !prof !48, !nosanitize !47

2507:                                             ; preds = %2501
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2508:                                             ; preds = %2501
  %2509 = extractvalue { i64, i1 } %2505, 0, !nosanitize !47
  store i64 %2509, ptr %50, align 8, !tbaa !113
  %2510 = load i64, ptr %51, align 8, !tbaa !21
  %2511 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2510, i64 %2503), !nosanitize !47
  %2512 = extractvalue { i64, i1 } %2511, 1, !nosanitize !47
  br i1 %2512, label %2513, label %2514, !prof !48, !nosanitize !47

2513:                                             ; preds = %2548, %2541, %2534, %2508
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

2514:                                             ; preds = %2508
  %2515 = extractvalue { i64, i1 } %2511, 0, !nosanitize !47
  store i64 %2515, ptr %51, align 8, !tbaa !21
  %2516 = load i32, ptr %49, align 8, !tbaa !24
  %2517 = and i32 %2516, 4
  %2518 = icmp ne i32 %2517, 0
  %2519 = icmp ne i32 %2491, 0
  %2520 = select i1 %2518, i1 %2519, i1 false
  br i1 %2520, label %2521, label %2534

2521:                                             ; preds = %2514
  %2522 = load i32, ptr %52, align 8, !tbaa !28
  %2523 = icmp eq i32 %2522, 0
  %2524 = load i64, ptr %53, align 8, !tbaa !56
  %2525 = load ptr, ptr %26, align 8, !tbaa !49
  %2526 = sub nsw i64 0, %2503
  %2527 = getelementptr inbounds i8, ptr %2525, i64 %2526
  br i1 %2523, label %2530, label %2528

2528:                                             ; preds = %2521
  %2529 = call i64 @crc32(i64 noundef %2524, ptr noundef nonnull %2527, i32 noundef %2491) #12
  br label %2532

2530:                                             ; preds = %2521
  %2531 = call i64 @adler32(i64 noundef %2524, ptr noundef nonnull %2527, i32 noundef %2491) #12
  br label %2532

2532:                                             ; preds = %2530, %2528
  %2533 = phi i64 [ %2529, %2528 ], [ %2531, %2530 ]
  store i64 %2533, ptr %53, align 8, !tbaa !56
  store i64 %2533, ptr %54, align 8, !tbaa !25
  br label %2534

2534:                                             ; preds = %2532, %2514
  %2535 = load i32, ptr %47, align 8, !tbaa !32
  %2536 = load i32, ptr %83, align 4, !tbaa !26
  %2537 = icmp eq i32 %2536, 0
  %2538 = select i1 %2537, i32 0, i32 64
  %2539 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2535, i32 %2538), !nosanitize !47
  %2540 = extractvalue { i32, i1 } %2539, 1, !nosanitize !47
  br i1 %2540, label %2513, label %2541, !prof !48, !nosanitize !47

2541:                                             ; preds = %2534
  %2542 = extractvalue { i32, i1 } %2539, 0, !nosanitize !47
  %2543 = load i32, ptr %21, align 8, !tbaa !20
  %2544 = icmp eq i32 %2543, 16191
  %2545 = select i1 %2544, i32 128, i32 0
  %2546 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2542, i32 %2545), !nosanitize !47
  %2547 = extractvalue { i32, i1 } %2546, 1, !nosanitize !47
  br i1 %2547, label %2513, label %2548, !prof !48, !nosanitize !47

2548:                                             ; preds = %2541
  %2549 = extractvalue { i32, i1 } %2546, 0, !nosanitize !47
  %2550 = icmp eq i32 %2543, 16199
  %2551 = icmp eq i32 %2543, 16194
  %2552 = or i1 %2550, %2551
  %2553 = select i1 %2552, i32 256, i32 0
  %2554 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2549, i32 %2553), !nosanitize !47
  %2555 = extractvalue { i32, i1 } %2554, 1, !nosanitize !47
  br i1 %2555, label %2513, label %2556, !prof !48, !nosanitize !47

2556:                                             ; preds = %2548
  %2557 = extractvalue { i32, i1 } %2554, 0, !nosanitize !47
  %2558 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %2557, ptr %2558, align 8, !tbaa !23
  %2559 = icmp eq i32 %2485, 0
  %2560 = icmp eq i32 %2491, 0
  %2561 = select i1 %2559, i1 %2560, i1 false
  %2562 = icmp eq i32 %1, 4
  %2563 = or i1 %2562, %2561
  %2564 = icmp eq i32 %2382, 0
  %2565 = select i1 %2563, i1 %2564, i1 false
  %2566 = select i1 %2565, i32 -5, i32 %2382
  br label %.loopexit164

.loopexit164.loopexit:                            ; preds = %88
  br label %.loopexit164

.loopexit164:                                     ; preds = %88, %.loopexit164.loopexit, %2556, %2481, %845, %32, %25, %20, %17, %13, %9, %5, %2
  %2567 = phi i32 [ -4, %2481 ], [ %2566, %2556 ], [ 2, %845 ], [ -2, %32 ], [ -2, %25 ], [ -2, %20 ], [ -2, %9 ], [ -2, %5 ], [ -2, %2 ], [ -2, %17 ], [ -2, %13 ], [ -2, %.loopexit164.loopexit ], [ -4, %88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %2567
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
