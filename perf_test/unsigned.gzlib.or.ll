; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/unsigned.gzlib.ll'
source_filename = "/home/amiralie1380/michigan/pl/zlib/gzlib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"<fd:%d>\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @gzopen(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %109, label %6

6:                                                ; preds = %2
  %7 = tail call noalias dereferenceable_or_null(248) ptr @malloc(i64 noundef 248) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %109, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 0, ptr %10, align 8, !tbaa !8
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 44
  store i32 8192, ptr %11, align 4, !tbaa !16
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 120
  store i32 0, ptr %12, align 8, !tbaa !17
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 128
  store ptr null, ptr %13, align 8, !tbaa !18
  %14 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 0, ptr %14, align 8, !tbaa !19
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 96
  store i32 -1, ptr %15, align 8, !tbaa !20
  %16 = getelementptr inbounds nuw i8, ptr %7, i64 100
  store i32 0, ptr %16, align 4, !tbaa !21
  %17 = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 0, ptr %17, align 8, !tbaa !22
  %18 = load i8, ptr %1, align 1, !tbaa !23
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %58, label %20

20:                                               ; preds = %47, %9
  %21 = phi i32 [ %48, %47 ], [ 0, %9 ]
  %22 = phi i32 [ %49, %47 ], [ 0, %9 ]
  %23 = phi i8 [ %53, %47 ], [ %18, %9 ]
  %24 = phi i32 [ %51, %47 ], [ 0, %9 ]
  %25 = phi i32 [ %50, %47 ], [ 0, %9 ]
  %26 = phi ptr [ %52, %47 ], [ %1, %9 ]
  %27 = add i8 %23, -48
  %28 = icmp ult i8 %27, 10
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = zext nneg i8 %27 to i32
  store i32 %30, ptr %15, align 8, !tbaa !20
  br label %47

31:                                               ; preds = %20
  switch i8 %23, label %47 [
    i8 114, label %32
    i8 119, label %33
    i8 97, label %34
    i8 43, label %35
    i8 84, label %46
    i8 101, label %36
    i8 120, label %38
    i8 102, label %39
    i8 104, label %40
    i8 82, label %41
    i8 70, label %42
    i8 71, label %43
    i8 78, label %44
  ]

32:                                               ; preds = %31
  store i32 7247, ptr %14, align 8, !tbaa !19
  br label %47

33:                                               ; preds = %31
  store i32 31153, ptr %14, align 8, !tbaa !19
  br label %47

34:                                               ; preds = %31
  store i32 1, ptr %14, align 8, !tbaa !19
  br label %47

35:                                               ; preds = %31
  tail call void @free(ptr noundef %7) #15
  br label %109

36:                                               ; preds = %31
  %37 = or i32 %25, 524288
  br label %47

38:                                               ; preds = %31
  br label %47

39:                                               ; preds = %31
  store i32 1, ptr %16, align 4, !tbaa !21
  br label %47

40:                                               ; preds = %31
  store i32 2, ptr %16, align 4, !tbaa !21
  br label %47

41:                                               ; preds = %31
  store i32 3, ptr %16, align 4, !tbaa !21
  br label %47

42:                                               ; preds = %31
  store i32 4, ptr %16, align 4, !tbaa !21
  br label %47

43:                                               ; preds = %31
  store i32 -1, ptr %17, align 8, !tbaa !22
  br label %47

44:                                               ; preds = %31
  %45 = or i32 %25, 2048
  br label %47

46:                                               ; preds = %31
  store i32 1, ptr %17, align 8, !tbaa !22
  br label %47

47:                                               ; preds = %46, %44, %43, %42, %41, %40, %39, %38, %36, %34, %33, %32, %31, %29
  %48 = phi i32 [ %21, %29 ], [ %21, %31 ], [ %21, %32 ], [ %21, %33 ], [ %21, %34 ], [ 1, %46 ], [ %21, %36 ], [ %21, %38 ], [ %21, %39 ], [ %21, %40 ], [ %21, %41 ], [ %21, %42 ], [ -1, %43 ], [ %21, %44 ]
  %49 = phi i32 [ %22, %29 ], [ %22, %31 ], [ 7247, %32 ], [ 31153, %33 ], [ 1, %34 ], [ %22, %46 ], [ %22, %36 ], [ %22, %38 ], [ %22, %39 ], [ %22, %40 ], [ %22, %41 ], [ %22, %42 ], [ %22, %43 ], [ %22, %44 ]
  %50 = phi i32 [ %25, %29 ], [ %25, %31 ], [ %25, %32 ], [ %25, %33 ], [ %25, %34 ], [ %25, %46 ], [ %37, %36 ], [ %25, %38 ], [ %25, %39 ], [ %25, %40 ], [ %25, %41 ], [ %25, %42 ], [ %25, %43 ], [ %45, %44 ]
  %51 = phi i32 [ %24, %29 ], [ %24, %31 ], [ %24, %32 ], [ %24, %33 ], [ %24, %34 ], [ %24, %46 ], [ %24, %36 ], [ 1, %38 ], [ %24, %39 ], [ %24, %40 ], [ %24, %41 ], [ %24, %42 ], [ %24, %43 ], [ %24, %44 ]
  %52 = getelementptr inbounds nuw i8, ptr %26, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !23
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %20, !llvm.loop !24

55:                                               ; preds = %47
  %56 = icmp eq i32 %51, 0
  %57 = select i1 %56, i32 65, i32 193
  switch i32 %49, label %62 [
    i32 0, label %58
    i32 7247, label %59
  ]

58:                                               ; preds = %55, %9
  tail call void @free(ptr noundef nonnull %7) #15
  br label %109

59:                                               ; preds = %55
  switch i32 %48, label %65 [
    i32 1, label %60
    i32 0, label %61
  ]

60:                                               ; preds = %59
  tail call void @free(ptr noundef nonnull %7) #15
  br label %109

61:                                               ; preds = %59
  store i32 1, ptr %17, align 8, !tbaa !22
  br label %65

62:                                               ; preds = %55
  %63 = icmp eq i32 %48, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %62
  tail call void @free(ptr noundef nonnull %7) #15
  br label %109

65:                                               ; preds = %62, %61, %59
  %66 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %67 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %66, i64 1), !nosanitize !26
  %68 = extractvalue { i64, i1 } %67, 0, !nosanitize !26
  %69 = extractvalue { i64, i1 } %67, 1, !nosanitize !26
  br i1 %69, label %70, label %71, !prof !27, !nosanitize !26

70:                                               ; preds = %65
  tail call void @llvm.ubsantrap(i8 0) #17, !nosanitize !26
  unreachable, !nosanitize !26

71:                                               ; preds = %65
  %72 = tail call noalias ptr @malloc(i64 noundef %68) #14
  %73 = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %72, ptr %73, align 8, !tbaa !28
  %74 = icmp eq ptr %72, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  tail call void @free(ptr noundef nonnull %7) #15
  br label %109

76:                                               ; preds = %71
  %77 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %72, i64 noundef %68, ptr noundef nonnull @.str.5, ptr noundef nonnull %0) #15
  %78 = icmp eq i32 %49, 7247
  %79 = icmp eq i32 %49, 31153
  %80 = select i1 %79, i32 512, i32 1024
  %81 = or disjoint i32 %57, %80
  %82 = select i1 %78, i32 0, i32 %81
  %83 = or i32 %82, %50
  %84 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %83, i32 noundef 438) #15
  %85 = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 %84, ptr %85, align 4, !tbaa !29
  %86 = icmp eq i32 %84, -1
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  tail call void @free(ptr noundef nonnull %72) #15
  tail call void @free(ptr noundef nonnull %7) #15
  br label %109

88:                                               ; preds = %76
  %89 = icmp eq i32 %49, 1
  br i1 %89, label %90, label %92

90:                                               ; preds = %88
  %91 = tail call i64 @lseek64(i32 noundef %84, i64 noundef 0, i32 noundef 2) #15
  store i32 31153, ptr %14, align 8, !tbaa !19
  br label %102

92:                                               ; preds = %88
  br i1 %78, label %93, label %102

93:                                               ; preds = %92
  %94 = tail call i64 @lseek64(i32 noundef %84, i64 noundef 0, i32 noundef 1) #15
  %95 = getelementptr inbounds nuw i8, ptr %7, i64 80
  %96 = icmp eq i64 %94, -1
  %97 = select i1 %96, i64 0, i64 %94
  store i64 %97, ptr %95, align 8
  store i32 0, ptr %7, align 8, !tbaa !30
  %98 = getelementptr inbounds nuw i8, ptr %7, i64 88
  store i32 0, ptr %98, align 8, !tbaa !31
  %99 = getelementptr inbounds nuw i8, ptr %7, i64 92
  store i32 0, ptr %99, align 4, !tbaa !32
  %100 = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i32 0, ptr %100, align 8, !tbaa !33
  %101 = getelementptr inbounds nuw i8, ptr %7, i64 68
  store i32 -1, ptr %101, align 4, !tbaa !34
  br label %104

102:                                              ; preds = %92, %90
  store i32 0, ptr %7, align 8, !tbaa !30
  %103 = getelementptr inbounds nuw i8, ptr %7, i64 104
  store i32 0, ptr %103, align 8, !tbaa !35
  br label %104

104:                                              ; preds = %102, %93
  %105 = getelementptr inbounds nuw i8, ptr %7, i64 76
  store i32 0, ptr %105, align 4, !tbaa !36
  %106 = getelementptr inbounds nuw i8, ptr %7, i64 112
  store i64 0, ptr %106, align 8, !tbaa !37
  store i32 0, ptr %12, align 8, !tbaa !17
  %107 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %107, align 8, !tbaa !38
  %108 = getelementptr inbounds nuw i8, ptr %7, i64 144
  store i32 0, ptr %108, align 8, !tbaa !39
  br label %109

109:                                              ; preds = %104, %87, %75, %64, %60, %58, %35, %6, %2
  %110 = phi ptr [ null, %64 ], [ null, %2 ], [ null, %35 ], [ null, %58 ], [ null, %60 ], [ null, %75 ], [ null, %87 ], [ %7, %104 ], [ null, %6 ]
  ret ptr %110
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @gzopen64(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %109, label %6

6:                                                ; preds = %2
  %7 = tail call noalias dereferenceable_or_null(248) ptr @malloc(i64 noundef 248) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %109, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 0, ptr %10, align 8, !tbaa !8
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 44
  store i32 8192, ptr %11, align 4, !tbaa !16
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 120
  store i32 0, ptr %12, align 8, !tbaa !17
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 128
  store ptr null, ptr %13, align 8, !tbaa !18
  %14 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 0, ptr %14, align 8, !tbaa !19
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 96
  store i32 -1, ptr %15, align 8, !tbaa !20
  %16 = getelementptr inbounds nuw i8, ptr %7, i64 100
  store i32 0, ptr %16, align 4, !tbaa !21
  %17 = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 0, ptr %17, align 8, !tbaa !22
  %18 = load i8, ptr %1, align 1, !tbaa !23
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %58, label %20

20:                                               ; preds = %47, %9
  %21 = phi i32 [ %48, %47 ], [ 0, %9 ]
  %22 = phi i32 [ %49, %47 ], [ 0, %9 ]
  %23 = phi i8 [ %53, %47 ], [ %18, %9 ]
  %24 = phi i32 [ %51, %47 ], [ 0, %9 ]
  %25 = phi i32 [ %50, %47 ], [ 0, %9 ]
  %26 = phi ptr [ %52, %47 ], [ %1, %9 ]
  %27 = add i8 %23, -48
  %28 = icmp ult i8 %27, 10
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = zext nneg i8 %27 to i32
  store i32 %30, ptr %15, align 8, !tbaa !20
  br label %47

31:                                               ; preds = %20
  switch i8 %23, label %47 [
    i8 114, label %32
    i8 119, label %33
    i8 97, label %34
    i8 43, label %35
    i8 84, label %46
    i8 101, label %36
    i8 120, label %38
    i8 102, label %39
    i8 104, label %40
    i8 82, label %41
    i8 70, label %42
    i8 71, label %43
    i8 78, label %44
  ]

32:                                               ; preds = %31
  store i32 7247, ptr %14, align 8, !tbaa !19
  br label %47

33:                                               ; preds = %31
  store i32 31153, ptr %14, align 8, !tbaa !19
  br label %47

34:                                               ; preds = %31
  store i32 1, ptr %14, align 8, !tbaa !19
  br label %47

35:                                               ; preds = %31
  tail call void @free(ptr noundef %7) #15
  br label %109

36:                                               ; preds = %31
  %37 = or i32 %25, 524288
  br label %47

38:                                               ; preds = %31
  br label %47

39:                                               ; preds = %31
  store i32 1, ptr %16, align 4, !tbaa !21
  br label %47

40:                                               ; preds = %31
  store i32 2, ptr %16, align 4, !tbaa !21
  br label %47

41:                                               ; preds = %31
  store i32 3, ptr %16, align 4, !tbaa !21
  br label %47

42:                                               ; preds = %31
  store i32 4, ptr %16, align 4, !tbaa !21
  br label %47

43:                                               ; preds = %31
  store i32 -1, ptr %17, align 8, !tbaa !22
  br label %47

44:                                               ; preds = %31
  %45 = or i32 %25, 2048
  br label %47

46:                                               ; preds = %31
  store i32 1, ptr %17, align 8, !tbaa !22
  br label %47

47:                                               ; preds = %46, %44, %43, %42, %41, %40, %39, %38, %36, %34, %33, %32, %31, %29
  %48 = phi i32 [ %21, %29 ], [ %21, %31 ], [ %21, %32 ], [ %21, %33 ], [ %21, %34 ], [ 1, %46 ], [ %21, %36 ], [ %21, %38 ], [ %21, %39 ], [ %21, %40 ], [ %21, %41 ], [ %21, %42 ], [ -1, %43 ], [ %21, %44 ]
  %49 = phi i32 [ %22, %29 ], [ %22, %31 ], [ 7247, %32 ], [ 31153, %33 ], [ 1, %34 ], [ %22, %46 ], [ %22, %36 ], [ %22, %38 ], [ %22, %39 ], [ %22, %40 ], [ %22, %41 ], [ %22, %42 ], [ %22, %43 ], [ %22, %44 ]
  %50 = phi i32 [ %25, %29 ], [ %25, %31 ], [ %25, %32 ], [ %25, %33 ], [ %25, %34 ], [ %25, %46 ], [ %37, %36 ], [ %25, %38 ], [ %25, %39 ], [ %25, %40 ], [ %25, %41 ], [ %25, %42 ], [ %25, %43 ], [ %45, %44 ]
  %51 = phi i32 [ %24, %29 ], [ %24, %31 ], [ %24, %32 ], [ %24, %33 ], [ %24, %34 ], [ %24, %46 ], [ %24, %36 ], [ 1, %38 ], [ %24, %39 ], [ %24, %40 ], [ %24, %41 ], [ %24, %42 ], [ %24, %43 ], [ %24, %44 ]
  %52 = getelementptr inbounds nuw i8, ptr %26, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !23
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %20, !llvm.loop !24

55:                                               ; preds = %47
  %56 = icmp eq i32 %51, 0
  %57 = select i1 %56, i32 65, i32 193
  switch i32 %49, label %62 [
    i32 0, label %58
    i32 7247, label %59
  ]

58:                                               ; preds = %55, %9
  tail call void @free(ptr noundef nonnull %7) #15
  br label %109

59:                                               ; preds = %55
  switch i32 %48, label %65 [
    i32 1, label %60
    i32 0, label %61
  ]

60:                                               ; preds = %59
  tail call void @free(ptr noundef nonnull %7) #15
  br label %109

61:                                               ; preds = %59
  store i32 1, ptr %17, align 8, !tbaa !22
  br label %65

62:                                               ; preds = %55
  %63 = icmp eq i32 %48, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %62
  tail call void @free(ptr noundef nonnull %7) #15
  br label %109

65:                                               ; preds = %62, %61, %59
  %66 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %67 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %66, i64 1), !nosanitize !26
  %68 = extractvalue { i64, i1 } %67, 0, !nosanitize !26
  %69 = extractvalue { i64, i1 } %67, 1, !nosanitize !26
  br i1 %69, label %70, label %71, !prof !27, !nosanitize !26

70:                                               ; preds = %65
  tail call void @llvm.ubsantrap(i8 0) #17, !nosanitize !26
  unreachable, !nosanitize !26

71:                                               ; preds = %65
  %72 = tail call noalias ptr @malloc(i64 noundef %68) #14
  %73 = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %72, ptr %73, align 8, !tbaa !28
  %74 = icmp eq ptr %72, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  tail call void @free(ptr noundef nonnull %7) #15
  br label %109

76:                                               ; preds = %71
  %77 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %72, i64 noundef %68, ptr noundef nonnull @.str.5, ptr noundef nonnull %0) #15
  %78 = icmp eq i32 %49, 7247
  %79 = icmp eq i32 %49, 31153
  %80 = select i1 %79, i32 512, i32 1024
  %81 = or disjoint i32 %57, %80
  %82 = select i1 %78, i32 0, i32 %81
  %83 = or i32 %82, %50
  %84 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %83, i32 noundef 438) #15
  %85 = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 %84, ptr %85, align 4, !tbaa !29
  %86 = icmp eq i32 %84, -1
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  tail call void @free(ptr noundef nonnull %72) #15
  tail call void @free(ptr noundef nonnull %7) #15
  br label %109

88:                                               ; preds = %76
  %89 = icmp eq i32 %49, 1
  br i1 %89, label %90, label %92

90:                                               ; preds = %88
  %91 = tail call i64 @lseek64(i32 noundef %84, i64 noundef 0, i32 noundef 2) #15
  store i32 31153, ptr %14, align 8, !tbaa !19
  br label %102

92:                                               ; preds = %88
  br i1 %78, label %93, label %102

93:                                               ; preds = %92
  %94 = tail call i64 @lseek64(i32 noundef %84, i64 noundef 0, i32 noundef 1) #15
  %95 = getelementptr inbounds nuw i8, ptr %7, i64 80
  %96 = icmp eq i64 %94, -1
  %97 = select i1 %96, i64 0, i64 %94
  store i64 %97, ptr %95, align 8
  store i32 0, ptr %7, align 8, !tbaa !30
  %98 = getelementptr inbounds nuw i8, ptr %7, i64 88
  store i32 0, ptr %98, align 8, !tbaa !31
  %99 = getelementptr inbounds nuw i8, ptr %7, i64 92
  store i32 0, ptr %99, align 4, !tbaa !32
  %100 = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i32 0, ptr %100, align 8, !tbaa !33
  %101 = getelementptr inbounds nuw i8, ptr %7, i64 68
  store i32 -1, ptr %101, align 4, !tbaa !34
  br label %104

102:                                              ; preds = %92, %90
  store i32 0, ptr %7, align 8, !tbaa !30
  %103 = getelementptr inbounds nuw i8, ptr %7, i64 104
  store i32 0, ptr %103, align 8, !tbaa !35
  br label %104

104:                                              ; preds = %102, %93
  %105 = getelementptr inbounds nuw i8, ptr %7, i64 76
  store i32 0, ptr %105, align 4, !tbaa !36
  %106 = getelementptr inbounds nuw i8, ptr %7, i64 112
  store i64 0, ptr %106, align 8, !tbaa !37
  store i32 0, ptr %12, align 8, !tbaa !17
  %107 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %107, align 8, !tbaa !38
  %108 = getelementptr inbounds nuw i8, ptr %7, i64 144
  store i32 0, ptr %108, align 8, !tbaa !39
  br label %109

109:                                              ; preds = %104, %87, %75, %64, %60, %58, %35, %6, %2
  %110 = phi ptr [ null, %64 ], [ null, %2 ], [ null, %35 ], [ null, %58 ], [ null, %60 ], [ null, %75 ], [ null, %87 ], [ %7, %104 ], [ null, %6 ]
  ret ptr %110
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @gzdopen(i32 noundef %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, -1
  br i1 %3, label %112, label %4

4:                                                ; preds = %2
  %5 = tail call noalias dereferenceable_or_null(19) ptr @malloc(i64 noundef 19) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %112, label %7

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %5, i64 noundef 19, ptr noundef nonnull @.str, i32 noundef %0) #15
  %9 = icmp eq ptr %1, null
  br i1 %9, label %110, label %10

10:                                               ; preds = %7
  %11 = tail call noalias dereferenceable_or_null(248) ptr @malloc(i64 noundef 248) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %110, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i32 0, ptr %14, align 8, !tbaa !8
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 44
  store i32 8192, ptr %15, align 4, !tbaa !16
  %16 = getelementptr inbounds nuw i8, ptr %11, i64 120
  store i32 0, ptr %16, align 8, !tbaa !17
  %17 = getelementptr inbounds nuw i8, ptr %11, i64 128
  store ptr null, ptr %17, align 8, !tbaa !18
  %18 = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 0, ptr %18, align 8, !tbaa !19
  %19 = getelementptr inbounds nuw i8, ptr %11, i64 96
  store i32 -1, ptr %19, align 8, !tbaa !20
  %20 = getelementptr inbounds nuw i8, ptr %11, i64 100
  store i32 0, ptr %20, align 4, !tbaa !21
  %21 = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i32 0, ptr %21, align 8, !tbaa !22
  %22 = load i8, ptr %1, align 1, !tbaa !23
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %57, label %24

24:                                               ; preds = %49, %13
  %25 = phi i32 [ %50, %49 ], [ 0, %13 ]
  %26 = phi i32 [ %51, %49 ], [ 0, %13 ]
  %27 = phi i8 [ %54, %49 ], [ %22, %13 ]
  %28 = phi i32 [ %52, %49 ], [ 0, %13 ]
  %29 = phi ptr [ %53, %49 ], [ %1, %13 ]
  %30 = add i8 %27, -48
  %31 = icmp ult i8 %30, 10
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = zext nneg i8 %30 to i32
  store i32 %33, ptr %19, align 8, !tbaa !20
  br label %49

34:                                               ; preds = %24
  switch i8 %27, label %49 [
    i8 114, label %35
    i8 119, label %36
    i8 97, label %37
    i8 43, label %38
    i8 84, label %48
    i8 101, label %39
    i8 78, label %46
    i8 102, label %41
    i8 104, label %42
    i8 82, label %43
    i8 70, label %44
    i8 71, label %45
  ]

35:                                               ; preds = %34
  store i32 7247, ptr %18, align 8, !tbaa !19
  br label %49

36:                                               ; preds = %34
  store i32 31153, ptr %18, align 8, !tbaa !19
  br label %49

37:                                               ; preds = %34
  store i32 1, ptr %18, align 8, !tbaa !19
  br label %49

38:                                               ; preds = %34
  tail call void @free(ptr noundef %11) #15
  br label %110

39:                                               ; preds = %34
  %40 = or i32 %28, 524288
  br label %49

41:                                               ; preds = %34
  store i32 1, ptr %20, align 4, !tbaa !21
  br label %49

42:                                               ; preds = %34
  store i32 2, ptr %20, align 4, !tbaa !21
  br label %49

43:                                               ; preds = %34
  store i32 3, ptr %20, align 4, !tbaa !21
  br label %49

44:                                               ; preds = %34
  store i32 4, ptr %20, align 4, !tbaa !21
  br label %49

45:                                               ; preds = %34
  store i32 -1, ptr %21, align 8, !tbaa !22
  br label %49

46:                                               ; preds = %34
  %47 = or i32 %28, 2048
  br label %49

48:                                               ; preds = %34
  store i32 1, ptr %21, align 8, !tbaa !22
  br label %49

49:                                               ; preds = %48, %46, %45, %44, %43, %42, %41, %39, %37, %36, %35, %34, %32
  %50 = phi i32 [ %25, %32 ], [ %25, %34 ], [ %25, %35 ], [ %25, %36 ], [ %25, %37 ], [ 1, %48 ], [ %25, %39 ], [ %25, %46 ], [ %25, %41 ], [ %25, %42 ], [ %25, %43 ], [ %25, %44 ], [ -1, %45 ]
  %51 = phi i32 [ %26, %32 ], [ %26, %34 ], [ 7247, %35 ], [ 31153, %36 ], [ 1, %37 ], [ %26, %48 ], [ %26, %39 ], [ %26, %46 ], [ %26, %41 ], [ %26, %42 ], [ %26, %43 ], [ %26, %44 ], [ %26, %45 ]
  %52 = phi i32 [ %28, %32 ], [ %28, %34 ], [ %28, %35 ], [ %28, %36 ], [ %28, %37 ], [ %28, %48 ], [ %40, %39 ], [ %47, %46 ], [ %28, %41 ], [ %28, %42 ], [ %28, %43 ], [ %28, %44 ], [ %28, %45 ]
  %53 = getelementptr inbounds nuw i8, ptr %29, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !23
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %24, !llvm.loop !24

56:                                               ; preds = %49
  switch i32 %51, label %61 [
    i32 0, label %57
    i32 7247, label %58
  ]

57:                                               ; preds = %56, %13
  tail call void @free(ptr noundef nonnull %11) #15
  br label %110

58:                                               ; preds = %56
  switch i32 %50, label %64 [
    i32 1, label %59
    i32 0, label %60
  ]

59:                                               ; preds = %58
  tail call void @free(ptr noundef nonnull %11) #15
  br label %110

60:                                               ; preds = %58
  store i32 1, ptr %21, align 8, !tbaa !22
  br label %64

61:                                               ; preds = %56
  %62 = icmp eq i32 %50, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %61
  tail call void @free(ptr noundef nonnull %11) #15
  br label %110

64:                                               ; preds = %61, %60, %58
  %65 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #16
  %66 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %65, i64 1), !nosanitize !26
  %67 = extractvalue { i64, i1 } %66, 0, !nosanitize !26
  %68 = extractvalue { i64, i1 } %66, 1, !nosanitize !26
  br i1 %68, label %69, label %70, !prof !27, !nosanitize !26

69:                                               ; preds = %64
  tail call void @llvm.ubsantrap(i8 0) #17, !nosanitize !26
  unreachable, !nosanitize !26

70:                                               ; preds = %64
  %71 = tail call noalias ptr @malloc(i64 noundef %67) #14
  %72 = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %71, ptr %72, align 8, !tbaa !28
  %73 = icmp eq ptr %71, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  tail call void @free(ptr noundef nonnull %11) #15
  br label %110

75:                                               ; preds = %70
  %76 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %71, i64 noundef %67, ptr noundef nonnull @.str.5, ptr noundef nonnull %5) #15
  %77 = and i32 %52, 2048
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 3) #15
  %81 = or i32 %80, 2048
  %82 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 4, i32 noundef %81) #15
  br label %83

83:                                               ; preds = %79, %75
  %84 = and i32 %52, 524288
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1) #15
  %88 = or i32 %87, 524288
  %89 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 2, i32 noundef %88) #15
  br label %90

90:                                               ; preds = %86, %83
  %91 = getelementptr inbounds nuw i8, ptr %11, i64 28
  store i32 %0, ptr %91, align 4, !tbaa !29
  switch i32 %51, label %103 [
    i32 1, label %92
    i32 7247, label %94
  ]

92:                                               ; preds = %90
  %93 = tail call i64 @lseek64(i32 noundef %0, i64 noundef 0, i32 noundef 2) #15
  store i32 31153, ptr %18, align 8, !tbaa !19
  br label %103

94:                                               ; preds = %90
  %95 = tail call i64 @lseek64(i32 noundef %0, i64 noundef 0, i32 noundef 1) #15
  %96 = getelementptr inbounds nuw i8, ptr %11, i64 80
  %97 = icmp eq i64 %95, -1
  %98 = select i1 %97, i64 0, i64 %95
  store i64 %98, ptr %96, align 8
  store i32 0, ptr %11, align 8, !tbaa !30
  %99 = getelementptr inbounds nuw i8, ptr %11, i64 88
  store i32 0, ptr %99, align 8, !tbaa !31
  %100 = getelementptr inbounds nuw i8, ptr %11, i64 92
  store i32 0, ptr %100, align 4, !tbaa !32
  %101 = getelementptr inbounds nuw i8, ptr %11, i64 72
  store i32 0, ptr %101, align 8, !tbaa !33
  %102 = getelementptr inbounds nuw i8, ptr %11, i64 68
  store i32 -1, ptr %102, align 4, !tbaa !34
  br label %105

103:                                              ; preds = %92, %90
  store i32 0, ptr %11, align 8, !tbaa !30
  %104 = getelementptr inbounds nuw i8, ptr %11, i64 104
  store i32 0, ptr %104, align 8, !tbaa !35
  br label %105

105:                                              ; preds = %103, %94
  %106 = getelementptr inbounds nuw i8, ptr %11, i64 76
  store i32 0, ptr %106, align 4, !tbaa !36
  %107 = getelementptr inbounds nuw i8, ptr %11, i64 112
  store i64 0, ptr %107, align 8, !tbaa !37
  store i32 0, ptr %16, align 8, !tbaa !17
  %108 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %108, align 8, !tbaa !38
  %109 = getelementptr inbounds nuw i8, ptr %11, i64 144
  store i32 0, ptr %109, align 8, !tbaa !39
  br label %110

110:                                              ; preds = %105, %74, %63, %59, %57, %38, %10, %7
  %111 = phi ptr [ null, %63 ], [ null, %7 ], [ null, %38 ], [ null, %57 ], [ null, %59 ], [ null, %74 ], [ null, %10 ], [ %11, %105 ]
  tail call void @free(ptr noundef %5) #15
  br label %112

112:                                              ; preds = %110, %4, %2
  %113 = phi ptr [ %111, %110 ], [ null, %4 ], [ null, %2 ]
  ret ptr %113
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @gzbuffer(ptr noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !19
  switch i32 %6, label %16 [
    i32 7247, label %7
    i32 31153, label %7
  ]

7:                                                ; preds = %4, %4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %9 = load i32, ptr %8, align 8, !tbaa !8
  %10 = icmp ne i32 %9, 0
  %11 = icmp slt i32 %1, 0
  %12 = or i1 %11, %10
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = tail call i32 @llvm.umax.i32(i32 %1, i32 8)
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %14, ptr %15, align 4, !tbaa !16
  br label %16

16:                                               ; preds = %13, %7, %4, %2
  %17 = phi i32 [ 0, %13 ], [ -1, %2 ], [ -1, %4 ], [ -1, %7 ]
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @gzrewind(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %41, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !19
  %6 = icmp eq i32 %5, 7247
  br i1 %6, label %7, label %41

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %9 = load i32, ptr %8, align 8, !tbaa !17
  switch i32 %9, label %41 [
    i32 0, label %10
    i32 -5, label %10
  ]

10:                                               ; preds = %7, %7
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %12 = load i32, ptr %11, align 4, !tbaa !29
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %14 = load i64, ptr %13, align 8, !tbaa !40
  %15 = tail call i64 @lseek64(i32 noundef %12, i64 noundef %14, i32 noundef 0) #15
  %16 = icmp eq i64 %15, -1
  br i1 %16, label %41, label %17

17:                                               ; preds = %10
  store i32 0, ptr %0, align 8, !tbaa !30
  %18 = load i32, ptr %4, align 8, !tbaa !19
  %19 = icmp eq i32 %18, 7247
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %21, align 8, !tbaa !31
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %22, align 4, !tbaa !32
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %23, align 8, !tbaa !33
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 -1, ptr %24, align 4, !tbaa !34
  br label %27

25:                                               ; preds = %17
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %26, align 8, !tbaa !35
  br label %27

27:                                               ; preds = %25, %20
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %28, align 4, !tbaa !36
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %29, align 8, !tbaa !37
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %31 = load ptr, ptr %30, align 8, !tbaa !18
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load i32, ptr %8, align 8, !tbaa !17
  %35 = icmp eq i32 %34, -4
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @free(ptr noundef nonnull %31) #15
  br label %37

37:                                               ; preds = %36, %33
  store ptr null, ptr %30, align 8, !tbaa !18
  br label %38

38:                                               ; preds = %37, %27
  store i32 0, ptr %8, align 8, !tbaa !17
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %39, align 8, !tbaa !38
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %40, align 8, !tbaa !39
  br label %41

41:                                               ; preds = %38, %10, %7, %3, %1
  %42 = phi i32 [ 0, %38 ], [ -1, %1 ], [ -1, %3 ], [ -1, %7 ], [ -1, %10 ]
  ret i32 %42
}

; Function Attrs: nounwind
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @gzseek64(ptr noundef captures(address_is_null) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %108, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i32, ptr %6, align 8, !tbaa !19
  switch i32 %7, label %108 [
    i32 7247, label %8
    i32 31153, label %8
  ]

8:                                                ; preds = %5, %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i32, ptr %9, align 8, !tbaa !17
  switch i32 %10, label %108 [
    i32 0, label %11
    i32 -5, label %11
  ]

11:                                               ; preds = %8, %8
  %12 = icmp ugt i32 %2, 1
  br i1 %12, label %108, label %13

13:                                               ; preds = %11
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = load i64, ptr %16, align 8, !tbaa !38
  %18 = sub nsw i64 %1, %17
  br label %30

19:                                               ; preds = %13
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 92
  %21 = load i32, ptr %20, align 4, !tbaa !32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %25 = load i64, ptr %24, align 8, !tbaa !37
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi i64 [ %25, %23 ], [ 0, %19 ]
  %28 = add nsw i64 %27, %1
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %29, align 8, !tbaa !37
  br label %30

30:                                               ; preds = %26, %15
  %31 = phi i64 [ %18, %15 ], [ %28, %26 ]
  %32 = icmp eq i32 %7, 7247
  br i1 %32, label %33, label %68

33:                                               ; preds = %30
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %35 = load i32, ptr %34, align 8, !tbaa !33
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %66

37:                                               ; preds = %33
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %39 = load i64, ptr %38, align 8, !tbaa !38
  %40 = add nsw i64 %39, %31
  %41 = icmp sgt i64 %40, -1
  br i1 %41, label %42, label %66

42:                                               ; preds = %37
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %44 = load i32, ptr %43, align 4, !tbaa !29
  %45 = load i32, ptr %0, align 8, !tbaa !30
  %46 = zext i32 %45 to i64
  %47 = sub nsw i64 %31, %46
  %48 = tail call i64 @lseek64(i32 noundef %44, i64 noundef %47, i32 noundef 1) #15
  %49 = icmp eq i64 %48, -1
  br i1 %49, label %108, label %50

50:                                               ; preds = %42
  store i32 0, ptr %0, align 8, !tbaa !30
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %51, align 8, !tbaa !31
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %52, align 4, !tbaa !32
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %53, align 8, !tbaa !37
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %55 = load ptr, ptr %54, align 8, !tbaa !18
  %56 = icmp eq ptr %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = load i32, ptr %9, align 8, !tbaa !17
  %59 = icmp eq i32 %58, -4
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  tail call void @free(ptr noundef nonnull %55) #15
  br label %61

61:                                               ; preds = %60, %57
  store ptr null, ptr %54, align 8, !tbaa !18
  br label %62

62:                                               ; preds = %61, %50
  store i32 0, ptr %9, align 8, !tbaa !17
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %63, align 8, !tbaa !39
  %64 = load i64, ptr %38, align 8, !tbaa !38
  %65 = add nsw i64 %64, %31
  store i64 %65, ptr %38, align 8, !tbaa !38
  br label %108

66:                                               ; preds = %37, %33
  %67 = icmp slt i64 %31, 0
  br i1 %67, label %70, label %85

68:                                               ; preds = %30
  %69 = icmp slt i64 %31, 0
  br i1 %69, label %108, label %81

70:                                               ; preds = %66
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %72 = load i64, ptr %71, align 8, !tbaa !38
  %73 = add nsw i64 %72, %31
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %108, label %75

75:                                               ; preds = %70
  %76 = tail call i32 @gzrewind(ptr noundef nonnull %0)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %108, label %78

78:                                               ; preds = %75
  %79 = load i32, ptr %6, align 8, !tbaa !19
  %80 = icmp eq i32 %79, 7247
  br i1 %80, label %85, label %81

81:                                               ; preds = %78, %68
  %82 = phi i64 [ %73, %78 ], [ %31, %68 ]
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %84 = load i64, ptr %83, align 8, !tbaa !38
  br label %103

85:                                               ; preds = %78, %66
  %86 = phi i64 [ %73, %78 ], [ %31, %66 ]
  %87 = load i32, ptr %0, align 8, !tbaa !30
  %88 = zext i32 %87 to i64
  %89 = tail call i64 @llvm.umin.i64(i64 %86, i64 %88)
  %90 = trunc nuw i64 %89 to i32
  %91 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %87, i32 %90), !nosanitize !26
  %92 = extractvalue { i32, i1 } %91, 1, !nosanitize !26
  br i1 %92, label %93, label %94, !prof !27, !nosanitize !26

93:                                               ; preds = %85
  tail call void @llvm.ubsantrap(i8 21) #17, !nosanitize !26
  unreachable, !nosanitize !26

94:                                               ; preds = %85
  %95 = extractvalue { i32, i1 } %91, 0, !nosanitize !26
  store i32 %95, ptr %0, align 8, !tbaa !30
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %97 = load ptr, ptr %96, align 8, !tbaa !41
  %98 = getelementptr inbounds nuw i8, ptr %97, i64 %89
  store ptr %98, ptr %96, align 8, !tbaa !41
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %100 = load i64, ptr %99, align 8, !tbaa !38
  %101 = add nsw i64 %100, %89
  store i64 %101, ptr %99, align 8, !tbaa !38
  %102 = sub nsw i64 %86, %89
  br label %103

103:                                              ; preds = %94, %81
  %104 = phi i64 [ %101, %94 ], [ %84, %81 ]
  %105 = phi i64 [ %102, %94 ], [ %82, %81 ]
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %105, ptr %106, align 8, !tbaa !37
  %107 = add nsw i64 %104, %105
  br label %108

108:                                              ; preds = %103, %75, %70, %68, %62, %42, %11, %8, %5, %3
  %109 = phi i64 [ %107, %103 ], [ -1, %3 ], [ -1, %5 ], [ -1, %8 ], [ -1, %11 ], [ %65, %62 ], [ -1, %42 ], [ -1, %68 ], [ -1, %70 ], [ -1, %75 ]
  ret i64 %109
}

; Function Attrs: nounwind uwtable
define dso_local void @gz_error(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %9 = load i32, ptr %8, align 8, !tbaa !17
  %10 = icmp eq i32 %9, -4
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %5) #15
  br label %12

12:                                               ; preds = %11, %7
  store ptr null, ptr %4, align 8, !tbaa !18
  br label %13

13:                                               ; preds = %12, %3
  switch i32 %1, label %14 [
    i32 -5, label %19
    i32 0, label %19
  ]

14:                                               ; preds = %13
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %16 = load i32, ptr %15, align 4, !tbaa !36
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, ptr %0, align 8, !tbaa !30
  br label %19

19:                                               ; preds = %18, %14, %13, %13
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %1, ptr %20, align 8, !tbaa !17
  %21 = icmp eq ptr %2, null
  %22 = icmp eq i32 %1, -4
  %23 = or i1 %22, %21
  br i1 %23, label %56, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %26 = load ptr, ptr %25, align 8, !tbaa !28
  %27 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %26) #16
  %28 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %29 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %28), !nosanitize !26
  %30 = extractvalue { i64, i1 } %29, 1, !nosanitize !26
  br i1 %30, label %31, label %32, !prof !27, !nosanitize !26

31:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 0) #17, !nosanitize !26
  unreachable, !nosanitize !26

32:                                               ; preds = %24
  %33 = extractvalue { i64, i1 } %29, 0, !nosanitize !26
  %34 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 3), !nosanitize !26
  %35 = extractvalue { i64, i1 } %34, 1, !nosanitize !26
  br i1 %35, label %36, label %37, !prof !27, !nosanitize !26

36:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 0) #17, !nosanitize !26
  unreachable, !nosanitize !26

37:                                               ; preds = %32
  %38 = extractvalue { i64, i1 } %34, 0, !nosanitize !26
  %39 = tail call noalias ptr @malloc(i64 noundef %38) #14
  store ptr %39, ptr %4, align 8, !tbaa !18
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 -4, ptr %20, align 8, !tbaa !17
  br label %56

42:                                               ; preds = %37
  %43 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %26) #16
  %44 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %45 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %43, i64 %44), !nosanitize !26
  %46 = extractvalue { i64, i1 } %45, 1, !nosanitize !26
  br i1 %46, label %47, label %48, !prof !27, !nosanitize !26

47:                                               ; preds = %42
  tail call void @llvm.ubsantrap(i8 0) #17, !nosanitize !26
  unreachable, !nosanitize !26

48:                                               ; preds = %42
  %49 = extractvalue { i64, i1 } %45, 0, !nosanitize !26
  %50 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %49, i64 3), !nosanitize !26
  %51 = extractvalue { i64, i1 } %50, 1, !nosanitize !26
  br i1 %51, label %52, label %53, !prof !27, !nosanitize !26

52:                                               ; preds = %48
  tail call void @llvm.ubsantrap(i8 0) #17, !nosanitize !26
  unreachable, !nosanitize !26

53:                                               ; preds = %48
  %54 = extractvalue { i64, i1 } %50, 0, !nosanitize !26
  %55 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %39, i64 noundef %54, ptr noundef nonnull @.str.3, ptr noundef nonnull %26, ptr noundef nonnull @.str.4, ptr noundef nonnull %2) #15
  br label %56

56:                                               ; preds = %53, %41, %19
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #6

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local i64 @gzseek(ptr noundef captures(address_is_null) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %108, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i32, ptr %6, align 8, !tbaa !19
  switch i32 %7, label %108 [
    i32 7247, label %8
    i32 31153, label %8
  ]

8:                                                ; preds = %5, %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i32, ptr %9, align 8, !tbaa !17
  switch i32 %10, label %108 [
    i32 0, label %11
    i32 -5, label %11
  ]

11:                                               ; preds = %8, %8
  %12 = icmp ugt i32 %2, 1
  br i1 %12, label %108, label %13

13:                                               ; preds = %11
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = load i64, ptr %16, align 8, !tbaa !38
  %18 = sub nsw i64 %1, %17
  br label %30

19:                                               ; preds = %13
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 92
  %21 = load i32, ptr %20, align 4, !tbaa !32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %25 = load i64, ptr %24, align 8, !tbaa !37
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi i64 [ %25, %23 ], [ 0, %19 ]
  %28 = add nsw i64 %27, %1
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %29, align 8, !tbaa !37
  br label %30

30:                                               ; preds = %26, %15
  %31 = phi i64 [ %18, %15 ], [ %28, %26 ]
  %32 = icmp eq i32 %7, 7247
  br i1 %32, label %33, label %68

33:                                               ; preds = %30
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %35 = load i32, ptr %34, align 8, !tbaa !33
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %66

37:                                               ; preds = %33
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %39 = load i64, ptr %38, align 8, !tbaa !38
  %40 = add nsw i64 %39, %31
  %41 = icmp sgt i64 %40, -1
  br i1 %41, label %42, label %66

42:                                               ; preds = %37
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %44 = load i32, ptr %43, align 4, !tbaa !29
  %45 = load i32, ptr %0, align 8, !tbaa !30
  %46 = zext i32 %45 to i64
  %47 = sub nsw i64 %31, %46
  %48 = tail call i64 @lseek64(i32 noundef %44, i64 noundef %47, i32 noundef 1) #15
  %49 = icmp eq i64 %48, -1
  br i1 %49, label %108, label %50

50:                                               ; preds = %42
  store i32 0, ptr %0, align 8, !tbaa !30
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %51, align 8, !tbaa !31
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %52, align 4, !tbaa !32
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %53, align 8, !tbaa !37
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %55 = load ptr, ptr %54, align 8, !tbaa !18
  %56 = icmp eq ptr %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = load i32, ptr %9, align 8, !tbaa !17
  %59 = icmp eq i32 %58, -4
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  tail call void @free(ptr noundef nonnull %55) #15
  br label %61

61:                                               ; preds = %60, %57
  store ptr null, ptr %54, align 8, !tbaa !18
  br label %62

62:                                               ; preds = %61, %50
  store i32 0, ptr %9, align 8, !tbaa !17
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %63, align 8, !tbaa !39
  %64 = load i64, ptr %38, align 8, !tbaa !38
  %65 = add nsw i64 %64, %31
  store i64 %65, ptr %38, align 8, !tbaa !38
  br label %108

66:                                               ; preds = %37, %33
  %67 = icmp slt i64 %31, 0
  br i1 %67, label %70, label %85

68:                                               ; preds = %30
  %69 = icmp slt i64 %31, 0
  br i1 %69, label %108, label %81

70:                                               ; preds = %66
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %72 = load i64, ptr %71, align 8, !tbaa !38
  %73 = add nsw i64 %72, %31
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %108, label %75

75:                                               ; preds = %70
  %76 = tail call i32 @gzrewind(ptr noundef nonnull %0)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %108, label %78

78:                                               ; preds = %75
  %79 = load i32, ptr %6, align 8, !tbaa !19
  %80 = icmp eq i32 %79, 7247
  br i1 %80, label %85, label %81

81:                                               ; preds = %78, %68
  %82 = phi i64 [ %73, %78 ], [ %31, %68 ]
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %84 = load i64, ptr %83, align 8, !tbaa !38
  br label %103

85:                                               ; preds = %78, %66
  %86 = phi i64 [ %73, %78 ], [ %31, %66 ]
  %87 = load i32, ptr %0, align 8, !tbaa !30
  %88 = zext i32 %87 to i64
  %89 = tail call i64 @llvm.umin.i64(i64 %86, i64 %88)
  %90 = trunc nuw i64 %89 to i32
  %91 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %87, i32 %90), !nosanitize !26
  %92 = extractvalue { i32, i1 } %91, 1, !nosanitize !26
  br i1 %92, label %93, label %94, !prof !27, !nosanitize !26

93:                                               ; preds = %85
  tail call void @llvm.ubsantrap(i8 21) #17, !nosanitize !26
  unreachable, !nosanitize !26

94:                                               ; preds = %85
  %95 = extractvalue { i32, i1 } %91, 0, !nosanitize !26
  store i32 %95, ptr %0, align 8, !tbaa !30
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %97 = load ptr, ptr %96, align 8, !tbaa !41
  %98 = getelementptr inbounds nuw i8, ptr %97, i64 %89
  store ptr %98, ptr %96, align 8, !tbaa !41
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %100 = load i64, ptr %99, align 8, !tbaa !38
  %101 = add nsw i64 %100, %89
  store i64 %101, ptr %99, align 8, !tbaa !38
  %102 = sub nsw i64 %86, %89
  br label %103

103:                                              ; preds = %94, %81
  %104 = phi i64 [ %101, %94 ], [ %84, %81 ]
  %105 = phi i64 [ %102, %94 ], [ %82, %81 ]
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %105, ptr %106, align 8, !tbaa !37
  %107 = add nsw i64 %105, %104
  br label %108

108:                                              ; preds = %103, %75, %70, %68, %62, %42, %11, %8, %5, %3
  %109 = phi i64 [ %107, %103 ], [ -1, %3 ], [ -1, %5 ], [ -1, %8 ], [ -1, %11 ], [ %65, %62 ], [ -1, %42 ], [ -1, %68 ], [ -1, %70 ], [ -1, %75 ]
  ret i64 %109
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @gztell64(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !19
  switch i32 %5, label %18 [
    i32 7247, label %6
    i32 31153, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load i64, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 92
  %10 = load i32, ptr %9, align 4, !tbaa !32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %14 = load i64, ptr %13, align 8, !tbaa !37
  br label %15

15:                                               ; preds = %12, %6
  %16 = phi i64 [ %14, %12 ], [ 0, %6 ]
  %17 = add nsw i64 %16, %8
  br label %18

18:                                               ; preds = %15, %3, %1
  %19 = phi i64 [ %17, %15 ], [ -1, %1 ], [ -1, %3 ]
  ret i64 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @gztell(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !19
  switch i32 %5, label %18 [
    i32 7247, label %6
    i32 31153, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load i64, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 92
  %10 = load i32, ptr %9, align 4, !tbaa !32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %14 = load i64, ptr %13, align 8, !tbaa !37
  br label %15

15:                                               ; preds = %12, %6
  %16 = phi i64 [ %14, %12 ], [ 0, %6 ]
  %17 = add nsw i64 %16, %8
  br label %18

18:                                               ; preds = %15, %3, %1
  %19 = phi i64 [ %17, %15 ], [ -1, %1 ], [ -1, %3 ]
  ret i64 %19
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gzoffset64(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !19
  switch i32 %5, label %19 [
    i32 7247, label %6
    i32 31153, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %8 = load i32, ptr %7, align 4, !tbaa !29
  %9 = tail call i64 @lseek64(i32 noundef %8, i64 noundef 0, i32 noundef 1) #15
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %4, align 8, !tbaa !19
  %13 = icmp eq i32 %12, 7247
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %16 = load i32, ptr %15, align 8, !tbaa !39
  %17 = zext i32 %16 to i64
  %18 = sub nsw i64 %9, %17
  br label %19

19:                                               ; preds = %14, %11, %6, %3, %1
  %20 = phi i64 [ -1, %6 ], [ -1, %1 ], [ -1, %3 ], [ %18, %14 ], [ %9, %11 ]
  ret i64 %20
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gzoffset(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !19
  switch i32 %5, label %19 [
    i32 7247, label %6
    i32 31153, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %8 = load i32, ptr %7, align 4, !tbaa !29
  %9 = tail call i64 @lseek64(i32 noundef %8, i64 noundef 0, i32 noundef 1) #15
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %4, align 8, !tbaa !19
  %13 = icmp eq i32 %12, 7247
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %16 = load i32, ptr %15, align 8, !tbaa !39
  %17 = zext i32 %16 to i64
  %18 = sub nsw i64 %9, %17
  br label %19

19:                                               ; preds = %14, %11, %6, %3, %1
  %20 = phi i64 [ -1, %6 ], [ -1, %1 ], [ -1, %3 ], [ %18, %14 ], [ %9, %11 ]
  ret i64 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gzeof(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !19
  %6 = icmp eq i32 %5, 7247
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 92
  %9 = load i32, ptr %8, align 4, !tbaa !32
  br label %10

10:                                               ; preds = %7, %3, %1
  %11 = phi i32 [ 0, %3 ], [ 0, %1 ], [ %9, %7 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @gzerror(ptr noundef readonly captures(address_is_null) %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !19
  switch i32 %6, label %19 [
    i32 7247, label %7
    i32 31153, label %7
  ]

7:                                                ; preds = %4, %4
  %8 = icmp eq ptr %1, null
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i32, ptr %9, align 8, !tbaa !17
  br i1 %8, label %12, label %11

11:                                               ; preds = %7
  store i32 %10, ptr %1, align 4, !tbaa !4
  br label %12

12:                                               ; preds = %11, %7
  %13 = icmp eq i32 %10, -4
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %16 = load ptr, ptr %15, align 8, !tbaa !18
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, ptr @.str.2, ptr %16
  br label %19

19:                                               ; preds = %14, %12, %4, %2
  %20 = phi ptr [ null, %4 ], [ null, %2 ], [ @.str.1, %12 ], [ %18, %14 ]
  ret ptr %20
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @gzclearerr(ptr noundef captures(address_is_null) %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !19
  switch i32 %5, label %21 [
    i32 7247, label %6
    i32 31153, label %9
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %7, align 8, !tbaa !31
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %8, align 4, !tbaa !32
  br label %9

9:                                                ; preds = %6, %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %15 = load i32, ptr %14, align 8, !tbaa !17
  %16 = icmp eq i32 %15, -4
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @free(ptr noundef nonnull %11) #15
  br label %18

18:                                               ; preds = %17, %13
  store ptr null, ptr %10, align 8, !tbaa !18
  br label %19

19:                                               ; preds = %18, %9
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 0, ptr %20, align 8, !tbaa !17
  br label %21

21:                                               ; preds = %19, %3, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @gz_intmax() local_unnamed_addr #11 {
  ret i32 2147483647
}

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #12

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nomerge noreturn nounwind }

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
!8 = !{!9, !5, i64 40}
!9 = !{!"", !10, i64 0, !5, i64 24, !5, i64 28, !11, i64 32, !5, i64 40, !5, i64 44, !11, i64 48, !11, i64 56, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !13, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !13, i64 112, !5, i64 120, !11, i64 128, !14, i64 136}
!10 = !{!"gzFile_s", !5, i64 0, !11, i64 8, !13, i64 16}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"z_stream_s", !11, i64 0, !5, i64 8, !13, i64 16, !11, i64 24, !5, i64 32, !13, i64 40, !11, i64 48, !15, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !5, i64 88, !13, i64 96, !13, i64 104}
!15 = !{!"p1 _ZTS14internal_state", !12, i64 0}
!16 = !{!9, !5, i64 44}
!17 = !{!9, !5, i64 120}
!18 = !{!9, !11, i64 128}
!19 = !{!9, !5, i64 24}
!20 = !{!9, !5, i64 96}
!21 = !{!9, !5, i64 100}
!22 = !{!9, !5, i64 64}
!23 = !{!6, !6, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{}
!27 = !{!"branch_weights", i32 1, i32 1048575}
!28 = !{!9, !11, i64 32}
!29 = !{!9, !5, i64 28}
!30 = !{!9, !5, i64 0}
!31 = !{!9, !5, i64 88}
!32 = !{!9, !5, i64 92}
!33 = !{!9, !5, i64 72}
!34 = !{!9, !5, i64 68}
!35 = !{!9, !5, i64 104}
!36 = !{!9, !5, i64 76}
!37 = !{!9, !13, i64 112}
!38 = !{!9, !13, i64 16}
!39 = !{!9, !5, i64 144}
!40 = !{!9, !13, i64 80}
!41 = !{!9, !11, i64 8}
