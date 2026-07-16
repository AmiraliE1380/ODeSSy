; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/unsigned.uncompr.ll'
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
  br i1 %6, label %96, label %7

7:                                                ; preds = %4
  %8 = load i64, ptr %3, align 8, !tbaa !8
  %9 = icmp ne i64 %8, 0
  %10 = icmp eq ptr %2, null
  %11 = and i1 %10, %9
  %12 = icmp eq ptr %1, null
  %13 = or i1 %12, %11
  br i1 %13, label %96, label %14

14:                                               ; preds = %7
  %15 = load i64, ptr %1, align 8, !tbaa !8
  %16 = icmp ne i64 %15, 0
  %17 = icmp eq ptr %0, null
  %18 = and i1 %17, %16
  br i1 %18, label %96, label %19

19:                                               ; preds = %14
  store ptr %2, ptr %5, align 8, !tbaa !10
  %20 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %20, align 8, !tbaa !15
  %21 = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  %22 = call i32 @inflateInit_(ptr noundef nonnull %5, ptr noundef nonnull @.str, i32 noundef 112) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %96

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

31:                                               ; preds = %58
  %32 = load i32, ptr %30, align 8, !tbaa !17
  br label %33

33:                                               ; preds = %31, %24
  %34 = phi i32 [ %32, %31 ], [ 0, %24 ]
  %35 = phi i64 [ %59, %31 ], [ %8, %24 ]
  %36 = phi i64 [ %47, %31 ], [ %15, %24 ]
  %37 = icmp eq i32 %34, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = call i64 @llvm.umin.i64(i64 %36, i64 4294967295)
  %40 = trunc nuw i64 %39 to i32
  store i32 %40, ptr %30, align 8, !tbaa !17
  %41 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %36, i64 %39), !nosanitize !18
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !18
  br i1 %42, label %43, label %44, !prof !19, !nosanitize !18

43:                                               ; preds = %38
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !18
  unreachable, !nosanitize !18

44:                                               ; preds = %38
  %45 = extractvalue { i64, i1 } %41, 0, !nosanitize !18
  br label %46

46:                                               ; preds = %44, %33
  %47 = phi i64 [ %45, %44 ], [ %36, %33 ]
  %48 = load i32, ptr %20, align 8, !tbaa !15
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = call i64 @llvm.umin.i64(i64 %35, i64 4294967295)
  %52 = trunc nuw i64 %51 to i32
  store i32 %52, ptr %20, align 8, !tbaa !15
  %53 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %35, i64 %51), !nosanitize !18
  %54 = extractvalue { i64, i1 } %53, 1, !nosanitize !18
  br i1 %54, label %55, label %56, !prof !19, !nosanitize !18

55:                                               ; preds = %50
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !18
  unreachable, !nosanitize !18

56:                                               ; preds = %50
  %57 = extractvalue { i64, i1 } %53, 0, !nosanitize !18
  br label %58

58:                                               ; preds = %56, %46
  %59 = phi i64 [ %57, %56 ], [ %35, %46 ]
  %60 = call i32 @inflate(ptr noundef nonnull %5, i32 noundef 0) #6
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %31, label %62, !llvm.loop !20

62:                                               ; preds = %58
  %63 = load i32, ptr %20, align 8, !tbaa !15
  %64 = zext i32 %63 to i64
  %65 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %59, i64 %64), !nosanitize !18
  %66 = extractvalue { i64, i1 } %65, 0, !nosanitize !18
  %67 = extractvalue { i64, i1 } %65, 1, !nosanitize !18
  br i1 %67, label %68, label %69, !prof !19, !nosanitize !18

68:                                               ; preds = %62
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !18
  unreachable, !nosanitize !18

69:                                               ; preds = %62
  %70 = load i32, ptr %30, align 8, !tbaa !17
  %71 = zext i32 %70 to i64
  %72 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %47, i64 %71), !nosanitize !18
  %73 = extractvalue { i64, i1 } %72, 0, !nosanitize !18
  %74 = extractvalue { i64, i1 } %72, 1, !nosanitize !18
  br i1 %74, label %75, label %76, !prof !19, !nosanitize !18

75:                                               ; preds = %69
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !18
  unreachable, !nosanitize !18

76:                                               ; preds = %69
  %77 = load i64, ptr %3, align 8, !tbaa !8
  %78 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %77, i64 %66), !nosanitize !18
  %79 = extractvalue { i64, i1 } %78, 1, !nosanitize !18
  br i1 %79, label %80, label %81, !prof !19, !nosanitize !18

80:                                               ; preds = %76
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !18
  unreachable, !nosanitize !18

81:                                               ; preds = %76
  %82 = extractvalue { i64, i1 } %78, 0, !nosanitize !18
  store i64 %82, ptr %3, align 8, !tbaa !8
  %83 = load i64, ptr %1, align 8, !tbaa !8
  %84 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %83, i64 %73), !nosanitize !18
  %85 = extractvalue { i64, i1 } %84, 1, !nosanitize !18
  br i1 %85, label %86, label %87, !prof !19, !nosanitize !18

86:                                               ; preds = %81
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !18
  unreachable, !nosanitize !18

87:                                               ; preds = %81
  %88 = extractvalue { i64, i1 } %84, 0, !nosanitize !18
  store i64 %88, ptr %1, align 8, !tbaa !8
  %89 = call i32 @inflateEnd(ptr noundef nonnull %5) #6
  switch i32 %60, label %90 [
    i32 1, label %96
    i32 2, label %95
  ]

90:                                               ; preds = %87
  %91 = icmp eq i32 %60, -5
  %92 = icmp eq i64 %66, 0
  %93 = select i1 %91, i1 %92, i1 false
  %94 = select i1 %93, i32 -3, i32 %60
  br label %96

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %90, %87, %19, %14, %7, %4
  %97 = phi i32 [ %22, %19 ], [ -2, %4 ], [ -2, %14 ], [ -2, %7 ], [ 0, %87 ], [ %94, %90 ], [ -3, %95 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret i32 %97
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
  br i1 %10, label %90, label %11

11:                                               ; preds = %4
  %12 = icmp ne i64 %6, 0
  %13 = icmp eq ptr %0, null
  %14 = and i1 %13, %12
  br i1 %14, label %90, label %15

15:                                               ; preds = %11
  store ptr %2, ptr %5, align 8, !tbaa !10
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %16, align 8, !tbaa !15
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %18 = call i32 @inflateInit_(ptr noundef nonnull %5, ptr noundef nonnull @.str, i32 noundef 112) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %90

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

27:                                               ; preds = %54
  %28 = load i32, ptr %26, align 8, !tbaa !17
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi i32 [ %28, %27 ], [ 0, %20 ]
  %31 = phi i64 [ %55, %27 ], [ %7, %20 ]
  %32 = phi i64 [ %43, %27 ], [ %6, %20 ]
  %33 = icmp eq i32 %30, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = call i64 @llvm.umin.i64(i64 %32, i64 4294967295)
  %36 = trunc nuw i64 %35 to i32
  store i32 %36, ptr %26, align 8, !tbaa !17
  %37 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %32, i64 %35), !nosanitize !18
  %38 = extractvalue { i64, i1 } %37, 1, !nosanitize !18
  br i1 %38, label %39, label %40, !prof !19, !nosanitize !18

39:                                               ; preds = %34
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !18
  unreachable, !nosanitize !18

40:                                               ; preds = %34
  %41 = extractvalue { i64, i1 } %37, 0, !nosanitize !18
  br label %42

42:                                               ; preds = %40, %29
  %43 = phi i64 [ %41, %40 ], [ %32, %29 ]
  %44 = load i32, ptr %16, align 8, !tbaa !15
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = call i64 @llvm.umin.i64(i64 %31, i64 4294967295)
  %48 = trunc nuw i64 %47 to i32
  store i32 %48, ptr %16, align 8, !tbaa !15
  %49 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %31, i64 %47), !nosanitize !18
  %50 = extractvalue { i64, i1 } %49, 1, !nosanitize !18
  br i1 %50, label %51, label %52, !prof !19, !nosanitize !18

51:                                               ; preds = %46
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !18
  unreachable, !nosanitize !18

52:                                               ; preds = %46
  %53 = extractvalue { i64, i1 } %49, 0, !nosanitize !18
  br label %54

54:                                               ; preds = %52, %42
  %55 = phi i64 [ %53, %52 ], [ %31, %42 ]
  %56 = call i32 @inflate(ptr noundef nonnull %5, i32 noundef 0) #6
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %27, label %58, !llvm.loop !20

58:                                               ; preds = %54
  %59 = load i32, ptr %16, align 8, !tbaa !15
  %60 = zext i32 %59 to i64
  %61 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %55, i64 %60), !nosanitize !18
  %62 = extractvalue { i64, i1 } %61, 0, !nosanitize !18
  %63 = extractvalue { i64, i1 } %61, 1, !nosanitize !18
  br i1 %63, label %64, label %65, !prof !19, !nosanitize !18

64:                                               ; preds = %58
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !18
  unreachable, !nosanitize !18

65:                                               ; preds = %58
  %66 = load i32, ptr %26, align 8, !tbaa !17
  %67 = zext i32 %66 to i64
  %68 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %43, i64 %67), !nosanitize !18
  %69 = extractvalue { i64, i1 } %68, 0, !nosanitize !18
  %70 = extractvalue { i64, i1 } %68, 1, !nosanitize !18
  br i1 %70, label %71, label %72, !prof !19, !nosanitize !18

71:                                               ; preds = %65
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !18
  unreachable, !nosanitize !18

72:                                               ; preds = %65
  %73 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %7, i64 %62), !nosanitize !18
  %74 = extractvalue { i64, i1 } %73, 1, !nosanitize !18
  br i1 %74, label %75, label %76, !prof !19, !nosanitize !18

75:                                               ; preds = %72
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !18
  unreachable, !nosanitize !18

76:                                               ; preds = %72
  %77 = extractvalue { i64, i1 } %73, 0, !nosanitize !18
  %78 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %6, i64 %69), !nosanitize !18
  %79 = extractvalue { i64, i1 } %78, 1, !nosanitize !18
  br i1 %79, label %80, label %81, !prof !19, !nosanitize !18

80:                                               ; preds = %76
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !18
  unreachable, !nosanitize !18

81:                                               ; preds = %76
  %82 = extractvalue { i64, i1 } %78, 0, !nosanitize !18
  %83 = call i32 @inflateEnd(ptr noundef nonnull %5) #6
  switch i32 %56, label %84 [
    i32 1, label %90
    i32 2, label %89
  ]

84:                                               ; preds = %81
  %85 = icmp eq i32 %56, -5
  %86 = icmp eq i64 %62, 0
  %87 = select i1 %85, i1 %86, i1 false
  %88 = select i1 %87, i32 -3, i32 %56
  br label %90

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %84, %81, %15, %11, %4
  %91 = phi i64 [ %6, %4 ], [ %6, %11 ], [ %82, %84 ], [ %82, %81 ], [ %82, %89 ], [ %6, %15 ]
  %92 = phi i64 [ %7, %4 ], [ %7, %11 ], [ %77, %84 ], [ %77, %81 ], [ %77, %89 ], [ %7, %15 ]
  %93 = phi i32 [ -2, %4 ], [ -2, %11 ], [ %88, %84 ], [ 0, %81 ], [ -3, %89 ], [ %18, %15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  store i64 %92, ptr %3, align 8, !tbaa !8
  store i64 %91, ptr %1, align 8, !tbaa !8
  ret i32 %93
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
  br i1 %10, label %90, label %11

11:                                               ; preds = %4
  %12 = load i64, ptr %1, align 8, !tbaa !8
  %13 = icmp ne i64 %12, 0
  %14 = icmp eq ptr %0, null
  %15 = and i1 %14, %13
  br i1 %15, label %90, label %16

16:                                               ; preds = %11
  store ptr %2, ptr %5, align 8, !tbaa !10
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %17, align 8, !tbaa !15
  %18 = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %19 = call i32 @inflateInit_(ptr noundef nonnull %5, ptr noundef nonnull @.str, i32 noundef 112) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %90

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

28:                                               ; preds = %55
  %29 = load i32, ptr %27, align 8, !tbaa !17
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi i32 [ %29, %28 ], [ 0, %21 ]
  %32 = phi i64 [ %56, %28 ], [ %3, %21 ]
  %33 = phi i64 [ %44, %28 ], [ %12, %21 ]
  %34 = icmp eq i32 %31, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = call i64 @llvm.umin.i64(i64 %33, i64 4294967295)
  %37 = trunc nuw i64 %36 to i32
  store i32 %37, ptr %27, align 8, !tbaa !17
  %38 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %33, i64 %36), !nosanitize !18
  %39 = extractvalue { i64, i1 } %38, 1, !nosanitize !18
  br i1 %39, label %40, label %41, !prof !19, !nosanitize !18

40:                                               ; preds = %35
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !18
  unreachable, !nosanitize !18

41:                                               ; preds = %35
  %42 = extractvalue { i64, i1 } %38, 0, !nosanitize !18
  br label %43

43:                                               ; preds = %41, %30
  %44 = phi i64 [ %42, %41 ], [ %33, %30 ]
  %45 = load i32, ptr %17, align 8, !tbaa !15
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = call i64 @llvm.umin.i64(i64 %32, i64 4294967295)
  %49 = trunc nuw i64 %48 to i32
  store i32 %49, ptr %17, align 8, !tbaa !15
  %50 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %32, i64 %48), !nosanitize !18
  %51 = extractvalue { i64, i1 } %50, 1, !nosanitize !18
  br i1 %51, label %52, label %53, !prof !19, !nosanitize !18

52:                                               ; preds = %47
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !18
  unreachable, !nosanitize !18

53:                                               ; preds = %47
  %54 = extractvalue { i64, i1 } %50, 0, !nosanitize !18
  br label %55

55:                                               ; preds = %53, %43
  %56 = phi i64 [ %54, %53 ], [ %32, %43 ]
  %57 = call i32 @inflate(ptr noundef nonnull %5, i32 noundef 0) #6
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %28, label %59, !llvm.loop !20

59:                                               ; preds = %55
  %60 = load i32, ptr %17, align 8, !tbaa !15
  %61 = zext i32 %60 to i64
  %62 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %56, i64 %61), !nosanitize !18
  %63 = extractvalue { i64, i1 } %62, 0, !nosanitize !18
  %64 = extractvalue { i64, i1 } %62, 1, !nosanitize !18
  br i1 %64, label %65, label %66, !prof !19, !nosanitize !18

65:                                               ; preds = %59
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !18
  unreachable, !nosanitize !18

66:                                               ; preds = %59
  %67 = load i32, ptr %27, align 8, !tbaa !17
  %68 = zext i32 %67 to i64
  %69 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %44, i64 %68), !nosanitize !18
  %70 = extractvalue { i64, i1 } %69, 0, !nosanitize !18
  %71 = extractvalue { i64, i1 } %69, 1, !nosanitize !18
  br i1 %71, label %72, label %73, !prof !19, !nosanitize !18

72:                                               ; preds = %66
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !18
  unreachable, !nosanitize !18

73:                                               ; preds = %66
  %74 = icmp ult i64 %3, %63
  br i1 %74, label %75, label %76, !prof !19, !nosanitize !18

75:                                               ; preds = %73
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !18
  unreachable, !nosanitize !18

76:                                               ; preds = %73
  %77 = load i64, ptr %1, align 8, !tbaa !8
  %78 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %77, i64 %70), !nosanitize !18
  %79 = extractvalue { i64, i1 } %78, 1, !nosanitize !18
  br i1 %79, label %80, label %81, !prof !19, !nosanitize !18

80:                                               ; preds = %76
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !18
  unreachable, !nosanitize !18

81:                                               ; preds = %76
  %82 = extractvalue { i64, i1 } %78, 0, !nosanitize !18
  store i64 %82, ptr %1, align 8, !tbaa !8
  %83 = call i32 @inflateEnd(ptr noundef nonnull %5) #6
  switch i32 %57, label %84 [
    i32 1, label %90
    i32 2, label %89
  ]

84:                                               ; preds = %81
  %85 = icmp eq i32 %57, -5
  %86 = icmp eq i64 %63, 0
  %87 = select i1 %85, i1 %86, i1 false
  %88 = select i1 %87, i32 -3, i32 %57
  br label %90

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %84, %81, %16, %11, %4
  %91 = phi i32 [ %19, %16 ], [ -3, %89 ], [ -2, %11 ], [ -2, %4 ], [ 0, %81 ], [ %88, %84 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret i32 %91
}

; Function Attrs: nounwind uwtable
define dso_local i32 @uncompress(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.z_stream_s, align 8
  %6 = load i64, ptr %1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %7 = icmp ne i64 %3, 0
  %8 = icmp eq ptr %2, null
  %9 = and i1 %8, %7
  br i1 %9, label %87, label %10

10:                                               ; preds = %4
  %11 = icmp ne i64 %6, 0
  %12 = icmp eq ptr %0, null
  %13 = and i1 %12, %11
  br i1 %13, label %87, label %14

14:                                               ; preds = %10
  store ptr %2, ptr %5, align 8, !tbaa !10
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %15, align 8, !tbaa !15
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %17 = call i32 @inflateInit_(ptr noundef nonnull %5, ptr noundef nonnull @.str, i32 noundef 112) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %87

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

26:                                               ; preds = %53
  %27 = load i32, ptr %25, align 8, !tbaa !17
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi i32 [ %27, %26 ], [ 0, %19 ]
  %30 = phi i64 [ %54, %26 ], [ %3, %19 ]
  %31 = phi i64 [ %42, %26 ], [ %6, %19 ]
  %32 = icmp eq i32 %29, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = call i64 @llvm.umin.i64(i64 %31, i64 4294967295)
  %35 = trunc nuw i64 %34 to i32
  store i32 %35, ptr %25, align 8, !tbaa !17
  %36 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %31, i64 %34), !nosanitize !18
  %37 = extractvalue { i64, i1 } %36, 1, !nosanitize !18
  br i1 %37, label %38, label %39, !prof !19, !nosanitize !18

38:                                               ; preds = %33
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !18
  unreachable, !nosanitize !18

39:                                               ; preds = %33
  %40 = extractvalue { i64, i1 } %36, 0, !nosanitize !18
  br label %41

41:                                               ; preds = %39, %28
  %42 = phi i64 [ %40, %39 ], [ %31, %28 ]
  %43 = load i32, ptr %15, align 8, !tbaa !15
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = call i64 @llvm.umin.i64(i64 %30, i64 4294967295)
  %47 = trunc nuw i64 %46 to i32
  store i32 %47, ptr %15, align 8, !tbaa !15
  %48 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %30, i64 %46), !nosanitize !18
  %49 = extractvalue { i64, i1 } %48, 1, !nosanitize !18
  br i1 %49, label %50, label %51, !prof !19, !nosanitize !18

50:                                               ; preds = %45
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !18
  unreachable, !nosanitize !18

51:                                               ; preds = %45
  %52 = extractvalue { i64, i1 } %48, 0, !nosanitize !18
  br label %53

53:                                               ; preds = %51, %41
  %54 = phi i64 [ %52, %51 ], [ %30, %41 ]
  %55 = call i32 @inflate(ptr noundef nonnull %5, i32 noundef 0) #6
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %26, label %57, !llvm.loop !20

57:                                               ; preds = %53
  %58 = load i32, ptr %15, align 8, !tbaa !15
  %59 = zext i32 %58 to i64
  %60 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %54, i64 %59), !nosanitize !18
  %61 = extractvalue { i64, i1 } %60, 0, !nosanitize !18
  %62 = extractvalue { i64, i1 } %60, 1, !nosanitize !18
  br i1 %62, label %63, label %64, !prof !19, !nosanitize !18

63:                                               ; preds = %57
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !18
  unreachable, !nosanitize !18

64:                                               ; preds = %57
  %65 = load i32, ptr %25, align 8, !tbaa !17
  %66 = zext i32 %65 to i64
  %67 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %42, i64 %66), !nosanitize !18
  %68 = extractvalue { i64, i1 } %67, 0, !nosanitize !18
  %69 = extractvalue { i64, i1 } %67, 1, !nosanitize !18
  br i1 %69, label %70, label %71, !prof !19, !nosanitize !18

70:                                               ; preds = %64
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !18
  unreachable, !nosanitize !18

71:                                               ; preds = %64
  %72 = icmp ult i64 %3, %61
  br i1 %72, label %73, label %74, !prof !19, !nosanitize !18

73:                                               ; preds = %71
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !18
  unreachable, !nosanitize !18

74:                                               ; preds = %71
  %75 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %6, i64 %68), !nosanitize !18
  %76 = extractvalue { i64, i1 } %75, 1, !nosanitize !18
  br i1 %76, label %77, label %78, !prof !19, !nosanitize !18

77:                                               ; preds = %74
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !18
  unreachable, !nosanitize !18

78:                                               ; preds = %74
  %79 = extractvalue { i64, i1 } %75, 0, !nosanitize !18
  %80 = call i32 @inflateEnd(ptr noundef nonnull %5) #6
  switch i32 %55, label %81 [
    i32 1, label %87
    i32 2, label %86
  ]

81:                                               ; preds = %78
  %82 = icmp eq i32 %55, -5
  %83 = icmp eq i64 %61, 0
  %84 = select i1 %82, i1 %83, i1 false
  %85 = select i1 %84, i32 -3, i32 %55
  br label %87

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86, %81, %78, %14, %10, %4
  %88 = phi i64 [ %6, %4 ], [ %6, %10 ], [ %79, %81 ], [ %79, %78 ], [ %79, %86 ], [ %6, %14 ]
  %89 = phi i32 [ -2, %4 ], [ -2, %10 ], [ %85, %81 ], [ 0, %78 ], [ -3, %86 ], [ %17, %14 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  store i64 %88, ptr %1, align 8, !tbaa !8
  ret i32 %89
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
!19 = !{!"branch_weights", i32 1, i32 1048575}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
