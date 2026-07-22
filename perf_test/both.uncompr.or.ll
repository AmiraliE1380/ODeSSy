; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/both.uncompr.ll'
source_filename = "/home/amiralie1380/michigan/pl/zlib/uncompr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"1.3.2.1-motley\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @uncompress2_z(ptr noundef %0, ptr noundef captures(address_is_null) %1, ptr noundef %2, ptr noundef captures(address_is_null) %3) local_unnamed_addr #0 {
  %5 = alloca %struct.z_stream_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %6 = icmp eq ptr %3, null
  br i1 %6, label %90, label %7

7:                                                ; preds = %4
  %8 = load i64, ptr %3, align 8, !tbaa !8
  %9 = icmp ne i64 %8, 0
  %10 = icmp eq ptr %2, null
  %11 = and i1 %10, %9
  %12 = icmp eq ptr %1, null
  %13 = or i1 %12, %11
  br i1 %13, label %90, label %14

14:                                               ; preds = %7
  %15 = load i64, ptr %1, align 8, !tbaa !8
  %16 = icmp ne i64 %15, 0
  %17 = icmp eq ptr %0, null
  %18 = and i1 %17, %16
  br i1 %18, label %90, label %19

19:                                               ; preds = %14
  store ptr %2, ptr %5, align 8, !tbaa !10
  %20 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %20, align 8, !tbaa !15
  %21 = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  %22 = call i32 @inflateInit_(ptr noundef nonnull %5, ptr noundef nonnull @.str, i32 noundef 112) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %90

24:                                               ; preds = %19
  %25 = icmp eq i64 %15, 0
  %26 = and i1 %17, %25
  %27 = getelementptr inbounds nuw i8, ptr %5, i64 104
  %28 = select i1 %26, ptr %27, ptr %0
  %29 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %28, ptr %29, align 8, !tbaa !16
  %30 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %30, align 8, !tbaa !17
  br label %33

31:                                               ; preds = %52
  %32 = load i32, ptr %30, align 8, !tbaa !17
  br label %33

33:                                               ; preds = %31, %24
  %34 = phi i32 [ %32, %31 ], [ 0, %24 ]
  %35 = phi i64 [ %53, %31 ], [ %8, %24 ]
  %36 = phi i64 [ %44, %31 ], [ %15, %24 ]
  %37 = icmp eq i32 %34, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = call i64 @llvm.umin.i64(i64 %36, i64 4294967295)
  %40 = trunc nuw i64 %39 to i32
  store i32 %40, ptr %30, align 8, !tbaa !17
  %41 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %36, i64 %39), !nosanitize !18
  %42 = extractvalue { i64, i1 } %41, 0, !nosanitize !18
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i64 [ %42, %38 ], [ %36, %33 ]
  %45 = load i32, ptr %20, align 8, !tbaa !15
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = call i64 @llvm.umin.i64(i64 %35, i64 4294967295)
  %49 = trunc nuw i64 %48 to i32
  store i32 %49, ptr %20, align 8, !tbaa !15
  %50 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %35, i64 %48), !nosanitize !18
  %51 = extractvalue { i64, i1 } %50, 0, !nosanitize !18
  br label %52

52:                                               ; preds = %47, %43
  %53 = phi i64 [ %51, %47 ], [ %35, %43 ]
  %54 = call i32 @inflate(ptr noundef nonnull %5, i32 noundef 0) #6
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %31, label %56, !llvm.loop !19

56:                                               ; preds = %52
  %57 = load i32, ptr %20, align 8, !tbaa !15
  %58 = zext i32 %57 to i64
  %59 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %53, i64 %58), !nosanitize !18
  %60 = extractvalue { i64, i1 } %59, 0, !nosanitize !18
  %61 = extractvalue { i64, i1 } %59, 1, !nosanitize !18
  br i1 %61, label %62, label %63, !prof !21, !nosanitize !18

62:                                               ; preds = %56
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !18
  unreachable, !nosanitize !18

63:                                               ; preds = %56
  %64 = load i32, ptr %30, align 8, !tbaa !17
  %65 = zext i32 %64 to i64
  %66 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %44, i64 %65), !nosanitize !18
  %67 = extractvalue { i64, i1 } %66, 0, !nosanitize !18
  %68 = extractvalue { i64, i1 } %66, 1, !nosanitize !18
  br i1 %68, label %69, label %70, !prof !21, !nosanitize !18

69:                                               ; preds = %63
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !18
  unreachable, !nosanitize !18

70:                                               ; preds = %63
  %71 = load i64, ptr %3, align 8, !tbaa !8
  %72 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %71, i64 %60), !nosanitize !18
  %73 = extractvalue { i64, i1 } %72, 1, !nosanitize !18
  br i1 %73, label %74, label %75, !prof !21, !nosanitize !18

74:                                               ; preds = %70
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !18
  unreachable, !nosanitize !18

75:                                               ; preds = %70
  %76 = extractvalue { i64, i1 } %72, 0, !nosanitize !18
  store i64 %76, ptr %3, align 8, !tbaa !8
  %77 = load i64, ptr %1, align 8, !tbaa !8
  %78 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %77, i64 %67), !nosanitize !18
  %79 = extractvalue { i64, i1 } %78, 1, !nosanitize !18
  br i1 %79, label %80, label %81, !prof !21, !nosanitize !18

80:                                               ; preds = %75
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !18
  unreachable, !nosanitize !18

81:                                               ; preds = %75
  %82 = extractvalue { i64, i1 } %78, 0, !nosanitize !18
  store i64 %82, ptr %1, align 8, !tbaa !8
  %83 = call i32 @inflateEnd(ptr noundef nonnull %5) #6
  switch i32 %54, label %84 [
    i32 1, label %90
    i32 2, label %89
  ]

84:                                               ; preds = %81
  %85 = icmp eq i32 %54, -5
  %86 = icmp eq i64 %60, 0
  %87 = select i1 %85, i1 %86, i1 false
  %88 = select i1 %87, i32 -3, i32 %54
  br label %90

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %84, %81, %19, %14, %7, %4
  %91 = phi i32 [ %22, %19 ], [ -2, %4 ], [ -2, %14 ], [ -2, %7 ], [ 0, %81 ], [ %88, %84 ], [ -3, %89 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret i32 %91
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @inflateInit_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #4

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @uncompress2(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef %2, ptr noundef captures(none) %3) local_unnamed_addr #0 {
  %5 = alloca %struct.z_stream_s, align 8
  %6 = load i64, ptr %1, align 8, !tbaa !8
  %7 = load i64, ptr %3, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %8 = icmp ne i64 %7, 0
  %9 = icmp eq ptr %2, null
  %10 = and i1 %9, %8
  br i1 %10, label %84, label %11

11:                                               ; preds = %4
  %12 = icmp ne i64 %6, 0
  %13 = icmp eq ptr %0, null
  %14 = and i1 %13, %12
  br i1 %14, label %84, label %15

15:                                               ; preds = %11
  store ptr %2, ptr %5, align 8, !tbaa !10
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %16, align 8, !tbaa !15
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %18 = call i32 @inflateInit_(ptr noundef nonnull %5, ptr noundef nonnull @.str, i32 noundef 112) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %84

20:                                               ; preds = %15
  %21 = icmp eq i64 %6, 0
  %22 = and i1 %13, %21
  %23 = getelementptr inbounds nuw i8, ptr %5, i64 104
  %24 = select i1 %22, ptr %23, ptr %0
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %24, ptr %25, align 8, !tbaa !16
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %26, align 8, !tbaa !17
  br label %29

27:                                               ; preds = %48
  %28 = load i32, ptr %26, align 8, !tbaa !17
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi i32 [ %28, %27 ], [ 0, %20 ]
  %31 = phi i64 [ %49, %27 ], [ %7, %20 ]
  %32 = phi i64 [ %40, %27 ], [ %6, %20 ]
  %33 = icmp eq i32 %30, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = call i64 @llvm.umin.i64(i64 %32, i64 4294967295)
  %36 = trunc nuw i64 %35 to i32
  store i32 %36, ptr %26, align 8, !tbaa !17
  %37 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %32, i64 %35), !nosanitize !18
  %38 = extractvalue { i64, i1 } %37, 0, !nosanitize !18
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i64 [ %38, %34 ], [ %32, %29 ]
  %41 = load i32, ptr %16, align 8, !tbaa !15
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = call i64 @llvm.umin.i64(i64 %31, i64 4294967295)
  %45 = trunc nuw i64 %44 to i32
  store i32 %45, ptr %16, align 8, !tbaa !15
  %46 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %31, i64 %44), !nosanitize !18
  %47 = extractvalue { i64, i1 } %46, 0, !nosanitize !18
  br label %48

48:                                               ; preds = %43, %39
  %49 = phi i64 [ %47, %43 ], [ %31, %39 ]
  %50 = call i32 @inflate(ptr noundef nonnull %5, i32 noundef 0) #6
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %27, label %52, !llvm.loop !19

52:                                               ; preds = %48
  %53 = load i32, ptr %16, align 8, !tbaa !15
  %54 = zext i32 %53 to i64
  %55 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %49, i64 %54), !nosanitize !18
  %56 = extractvalue { i64, i1 } %55, 0, !nosanitize !18
  %57 = extractvalue { i64, i1 } %55, 1, !nosanitize !18
  br i1 %57, label %58, label %59, !prof !21, !nosanitize !18

58:                                               ; preds = %52
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !18
  unreachable, !nosanitize !18

59:                                               ; preds = %52
  %60 = load i32, ptr %26, align 8, !tbaa !17
  %61 = zext i32 %60 to i64
  %62 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %40, i64 %61), !nosanitize !18
  %63 = extractvalue { i64, i1 } %62, 0, !nosanitize !18
  %64 = extractvalue { i64, i1 } %62, 1, !nosanitize !18
  br i1 %64, label %65, label %66, !prof !21, !nosanitize !18

65:                                               ; preds = %59
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !18
  unreachable, !nosanitize !18

66:                                               ; preds = %59
  %67 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %7, i64 %56), !nosanitize !18
  %68 = extractvalue { i64, i1 } %67, 1, !nosanitize !18
  br i1 %68, label %69, label %70, !prof !21, !nosanitize !18

69:                                               ; preds = %66
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !18
  unreachable, !nosanitize !18

70:                                               ; preds = %66
  %71 = extractvalue { i64, i1 } %67, 0, !nosanitize !18
  %72 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %6, i64 %63), !nosanitize !18
  %73 = extractvalue { i64, i1 } %72, 1, !nosanitize !18
  br i1 %73, label %74, label %75, !prof !21, !nosanitize !18

74:                                               ; preds = %70
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !18
  unreachable, !nosanitize !18

75:                                               ; preds = %70
  %76 = extractvalue { i64, i1 } %72, 0, !nosanitize !18
  %77 = call i32 @inflateEnd(ptr noundef nonnull %5) #6
  switch i32 %50, label %78 [
    i32 1, label %84
    i32 2, label %83
  ]

78:                                               ; preds = %75
  %79 = icmp eq i32 %50, -5
  %80 = icmp eq i64 %56, 0
  %81 = select i1 %79, i1 %80, i1 false
  %82 = select i1 %81, i32 -3, i32 %50
  br label %84

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %78, %75, %15, %11, %4
  %85 = phi i64 [ %6, %4 ], [ %6, %11 ], [ %76, %78 ], [ %76, %75 ], [ %76, %83 ], [ %6, %15 ]
  %86 = phi i64 [ %7, %4 ], [ %7, %11 ], [ %71, %78 ], [ %71, %75 ], [ %71, %83 ], [ %7, %15 ]
  %87 = phi i32 [ -2, %4 ], [ -2, %11 ], [ %82, %78 ], [ 0, %75 ], [ -3, %83 ], [ %18, %15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  store i64 %86, ptr %3, align 8, !tbaa !8
  store i64 %85, ptr %1, align 8, !tbaa !8
  ret i32 %87
}

; Function Attrs: nounwind uwtable
define dso_local i32 @uncompress_z(ptr noundef %0, ptr noundef captures(address_is_null) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.z_stream_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %6 = icmp ne i64 %3, 0
  %7 = icmp eq ptr %2, null
  %8 = and i1 %7, %6
  %9 = icmp eq ptr %1, null
  %10 = or i1 %9, %8
  br i1 %10, label %84, label %11

11:                                               ; preds = %4
  %12 = load i64, ptr %1, align 8, !tbaa !8
  %13 = icmp ne i64 %12, 0
  %14 = icmp eq ptr %0, null
  %15 = and i1 %14, %13
  br i1 %15, label %84, label %16

16:                                               ; preds = %11
  store ptr %2, ptr %5, align 8, !tbaa !10
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %17, align 8, !tbaa !15
  %18 = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %19 = call i32 @inflateInit_(ptr noundef nonnull %5, ptr noundef nonnull @.str, i32 noundef 112) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %84

21:                                               ; preds = %16
  %22 = icmp eq i64 %12, 0
  %23 = and i1 %14, %22
  %24 = getelementptr inbounds nuw i8, ptr %5, i64 104
  %25 = select i1 %23, ptr %24, ptr %0
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %25, ptr %26, align 8, !tbaa !16
  %27 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %27, align 8, !tbaa !17
  br label %30

28:                                               ; preds = %49
  %29 = load i32, ptr %27, align 8, !tbaa !17
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi i32 [ %29, %28 ], [ 0, %21 ]
  %32 = phi i64 [ %50, %28 ], [ %3, %21 ]
  %33 = phi i64 [ %41, %28 ], [ %12, %21 ]
  %34 = icmp eq i32 %31, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = call i64 @llvm.umin.i64(i64 %33, i64 4294967295)
  %37 = trunc nuw i64 %36 to i32
  store i32 %37, ptr %27, align 8, !tbaa !17
  %38 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %33, i64 %36), !nosanitize !18
  %39 = extractvalue { i64, i1 } %38, 0, !nosanitize !18
  br label %40

40:                                               ; preds = %35, %30
  %41 = phi i64 [ %39, %35 ], [ %33, %30 ]
  %42 = load i32, ptr %17, align 8, !tbaa !15
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = call i64 @llvm.umin.i64(i64 %32, i64 4294967295)
  %46 = trunc nuw i64 %45 to i32
  store i32 %46, ptr %17, align 8, !tbaa !15
  %47 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %32, i64 %45), !nosanitize !18
  %48 = extractvalue { i64, i1 } %47, 0, !nosanitize !18
  br label %49

49:                                               ; preds = %44, %40
  %50 = phi i64 [ %48, %44 ], [ %32, %40 ]
  %51 = call i32 @inflate(ptr noundef nonnull %5, i32 noundef 0) #6
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %28, label %53, !llvm.loop !19

53:                                               ; preds = %49
  %54 = load i32, ptr %17, align 8, !tbaa !15
  %55 = zext i32 %54 to i64
  %56 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %50, i64 %55), !nosanitize !18
  %57 = extractvalue { i64, i1 } %56, 0, !nosanitize !18
  %58 = extractvalue { i64, i1 } %56, 1, !nosanitize !18
  br i1 %58, label %59, label %60, !prof !21, !nosanitize !18

59:                                               ; preds = %53
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !18
  unreachable, !nosanitize !18

60:                                               ; preds = %53
  %61 = load i32, ptr %27, align 8, !tbaa !17
  %62 = zext i32 %61 to i64
  %63 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %41, i64 %62), !nosanitize !18
  %64 = extractvalue { i64, i1 } %63, 0, !nosanitize !18
  %65 = extractvalue { i64, i1 } %63, 1, !nosanitize !18
  br i1 %65, label %66, label %67, !prof !21, !nosanitize !18

66:                                               ; preds = %60
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !18
  unreachable, !nosanitize !18

67:                                               ; preds = %60
  %68 = icmp ult i64 %3, %57
  br i1 %68, label %69, label %70, !prof !21, !nosanitize !18

69:                                               ; preds = %67
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !18
  unreachable, !nosanitize !18

70:                                               ; preds = %67
  %71 = load i64, ptr %1, align 8, !tbaa !8
  %72 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %71, i64 %64), !nosanitize !18
  %73 = extractvalue { i64, i1 } %72, 1, !nosanitize !18
  br i1 %73, label %74, label %75, !prof !21, !nosanitize !18

74:                                               ; preds = %70
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !18
  unreachable, !nosanitize !18

75:                                               ; preds = %70
  %76 = extractvalue { i64, i1 } %72, 0, !nosanitize !18
  store i64 %76, ptr %1, align 8, !tbaa !8
  %77 = call i32 @inflateEnd(ptr noundef nonnull %5) #6
  switch i32 %51, label %78 [
    i32 1, label %84
    i32 2, label %83
  ]

78:                                               ; preds = %75
  %79 = icmp eq i32 %51, -5
  %80 = icmp eq i64 %57, 0
  %81 = select i1 %79, i1 %80, i1 false
  %82 = select i1 %81, i32 -3, i32 %51
  br label %84

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %78, %75, %16, %11, %4
  %85 = phi i32 [ %19, %16 ], [ -3, %83 ], [ -2, %11 ], [ -2, %4 ], [ 0, %75 ], [ %82, %78 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret i32 %85
}

; Function Attrs: nounwind uwtable
define dso_local i32 @uncompress(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.z_stream_s, align 8
  %6 = load i64, ptr %1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %7 = icmp ne i64 %3, 0
  %8 = icmp eq ptr %2, null
  %9 = and i1 %8, %7
  br i1 %9, label %81, label %10

10:                                               ; preds = %4
  %11 = icmp ne i64 %6, 0
  %12 = icmp eq ptr %0, null
  %13 = and i1 %12, %11
  br i1 %13, label %81, label %14

14:                                               ; preds = %10
  store ptr %2, ptr %5, align 8, !tbaa !10
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %15, align 8, !tbaa !15
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %17 = call i32 @inflateInit_(ptr noundef nonnull %5, ptr noundef nonnull @.str, i32 noundef 112) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %81

19:                                               ; preds = %14
  %20 = icmp eq i64 %6, 0
  %21 = and i1 %12, %20
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 104
  %23 = select i1 %21, ptr %22, ptr %0
  %24 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %23, ptr %24, align 8, !tbaa !16
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %25, align 8, !tbaa !17
  br label %28

26:                                               ; preds = %47
  %27 = load i32, ptr %25, align 8, !tbaa !17
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi i32 [ %27, %26 ], [ 0, %19 ]
  %30 = phi i64 [ %48, %26 ], [ %3, %19 ]
  %31 = phi i64 [ %39, %26 ], [ %6, %19 ]
  %32 = icmp eq i32 %29, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = call i64 @llvm.umin.i64(i64 %31, i64 4294967295)
  %35 = trunc nuw i64 %34 to i32
  store i32 %35, ptr %25, align 8, !tbaa !17
  %36 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %31, i64 %34), !nosanitize !18
  %37 = extractvalue { i64, i1 } %36, 0, !nosanitize !18
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i64 [ %37, %33 ], [ %31, %28 ]
  %40 = load i32, ptr %15, align 8, !tbaa !15
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = call i64 @llvm.umin.i64(i64 %30, i64 4294967295)
  %44 = trunc nuw i64 %43 to i32
  store i32 %44, ptr %15, align 8, !tbaa !15
  %45 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %30, i64 %43), !nosanitize !18
  %46 = extractvalue { i64, i1 } %45, 0, !nosanitize !18
  br label %47

47:                                               ; preds = %42, %38
  %48 = phi i64 [ %46, %42 ], [ %30, %38 ]
  %49 = call i32 @inflate(ptr noundef nonnull %5, i32 noundef 0) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %26, label %51, !llvm.loop !19

51:                                               ; preds = %47
  %52 = load i32, ptr %15, align 8, !tbaa !15
  %53 = zext i32 %52 to i64
  %54 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %48, i64 %53), !nosanitize !18
  %55 = extractvalue { i64, i1 } %54, 0, !nosanitize !18
  %56 = extractvalue { i64, i1 } %54, 1, !nosanitize !18
  br i1 %56, label %57, label %58, !prof !21, !nosanitize !18

57:                                               ; preds = %51
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !18
  unreachable, !nosanitize !18

58:                                               ; preds = %51
  %59 = load i32, ptr %25, align 8, !tbaa !17
  %60 = zext i32 %59 to i64
  %61 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %39, i64 %60), !nosanitize !18
  %62 = extractvalue { i64, i1 } %61, 0, !nosanitize !18
  %63 = extractvalue { i64, i1 } %61, 1, !nosanitize !18
  br i1 %63, label %64, label %65, !prof !21, !nosanitize !18

64:                                               ; preds = %58
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !18
  unreachable, !nosanitize !18

65:                                               ; preds = %58
  %66 = icmp ult i64 %3, %55
  br i1 %66, label %67, label %68, !prof !21, !nosanitize !18

67:                                               ; preds = %65
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !18
  unreachable, !nosanitize !18

68:                                               ; preds = %65
  %69 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %6, i64 %62), !nosanitize !18
  %70 = extractvalue { i64, i1 } %69, 1, !nosanitize !18
  br i1 %70, label %71, label %72, !prof !21, !nosanitize !18

71:                                               ; preds = %68
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !18
  unreachable, !nosanitize !18

72:                                               ; preds = %68
  %73 = extractvalue { i64, i1 } %69, 0, !nosanitize !18
  %74 = call i32 @inflateEnd(ptr noundef nonnull %5) #6
  switch i32 %49, label %75 [
    i32 1, label %81
    i32 2, label %80
  ]

75:                                               ; preds = %72
  %76 = icmp eq i32 %49, -5
  %77 = icmp eq i64 %55, 0
  %78 = select i1 %76, i1 %77, i1 false
  %79 = select i1 %78, i32 -3, i32 %49
  br label %81

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80, %75, %72, %14, %10, %4
  %82 = phi i64 [ %6, %4 ], [ %6, %10 ], [ %73, %75 ], [ %73, %72 ], [ %73, %80 ], [ %6, %14 ]
  %83 = phi i32 [ -2, %4 ], [ -2, %10 ], [ %79, %75 ], [ 0, %72 ], [ -3, %80 ], [ %17, %14 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  store i64 %82, ptr %1, align 8, !tbaa !8
  ret i32 %83
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { nomerge noreturn nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"z_stream_s", !12, i64 0, !5, i64 8, !9, i64 16, !12, i64 24, !5, i64 32, !9, i64 40, !12, i64 48, !14, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !5, i64 88, !9, i64 96, !9, i64 104}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"p1 _ZTS14internal_state", !13, i64 0}
!15 = !{!11, !5, i64 8}
!16 = !{!11, !12, i64 24}
!17 = !{!11, !5, i64 32}
!18 = !{}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"branch_weights", i32 1, i32 1048575}
