; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/unsigned.uncompr.or.ll'
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
  br i1 %6, label %88, label %7

7:                                                ; preds = %4
  %8 = load i64, ptr %3, align 8, !tbaa !8
  %9 = icmp ne i64 %8, 0
  %10 = icmp eq ptr %2, null
  %11 = and i1 %10, %9
  %12 = icmp eq ptr %1, null
  %13 = or i1 %12, %11
  br i1 %13, label %88, label %14

14:                                               ; preds = %7
  %15 = load i64, ptr %1, align 8, !tbaa !8
  %16 = icmp ne i64 %15, 0
  %17 = icmp eq ptr %0, null
  %18 = and i1 %17, %16
  br i1 %18, label %88, label %19

19:                                               ; preds = %14
  store ptr %2, ptr %5, align 8, !tbaa !10
  %20 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %20, align 8, !tbaa !15
  %21 = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  %22 = call i32 @inflateInit_(ptr noundef nonnull %5, ptr noundef nonnull @.str, i32 noundef 112) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %88

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

31:                                               ; preds = %50
  %32 = load i32, ptr %30, align 8, !tbaa !17
  br label %33

33:                                               ; preds = %31, %24
  %34 = phi i32 [ %32, %31 ], [ 0, %24 ]
  %35 = phi i64 [ %51, %31 ], [ %8, %24 ]
  %36 = phi i64 [ %43, %31 ], [ %15, %24 ]
  %37 = icmp eq i32 %34, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = call i64 @llvm.umin.i64(i64 %36, i64 4294967295)
  %40 = trunc nuw i64 %39 to i32
  store i32 %40, ptr %30, align 8, !tbaa !17
  %41 = sub i64 %36, %39
  br label %42

42:                                               ; preds = %38, %33
  %43 = phi i64 [ %41, %38 ], [ %36, %33 ]
  %44 = load i32, ptr %20, align 8, !tbaa !15
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = call i64 @llvm.umin.i64(i64 %35, i64 4294967295)
  %48 = trunc nuw i64 %47 to i32
  store i32 %48, ptr %20, align 8, !tbaa !15
  %49 = sub i64 %35, %47
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi i64 [ %49, %46 ], [ %35, %42 ]
  %52 = call i32 @inflate(ptr noundef nonnull %5, i32 noundef 0) #6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %31, label %54, !llvm.loop !18

54:                                               ; preds = %50
  %55 = load i32, ptr %20, align 8, !tbaa !15
  %56 = zext i32 %55 to i64
  %57 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %51, i64 %56), !nosanitize !20
  %58 = extractvalue { i64, i1 } %57, 0, !nosanitize !20
  %59 = extractvalue { i64, i1 } %57, 1, !nosanitize !20
  br i1 %59, label %60, label %61, !prof !21, !nosanitize !20

60:                                               ; preds = %54
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !20
  unreachable, !nosanitize !20

61:                                               ; preds = %54
  %62 = load i32, ptr %30, align 8, !tbaa !17
  %63 = zext i32 %62 to i64
  %64 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %43, i64 %63), !nosanitize !20
  %65 = extractvalue { i64, i1 } %64, 0, !nosanitize !20
  %66 = extractvalue { i64, i1 } %64, 1, !nosanitize !20
  br i1 %66, label %67, label %68, !prof !21, !nosanitize !20

67:                                               ; preds = %61
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !20
  unreachable, !nosanitize !20

68:                                               ; preds = %61
  %69 = load i64, ptr %3, align 8, !tbaa !8
  %70 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %69, i64 %58), !nosanitize !20
  %71 = extractvalue { i64, i1 } %70, 1, !nosanitize !20
  br i1 %71, label %72, label %73, !prof !21, !nosanitize !20

72:                                               ; preds = %68
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !20
  unreachable, !nosanitize !20

73:                                               ; preds = %68
  %74 = extractvalue { i64, i1 } %70, 0, !nosanitize !20
  store i64 %74, ptr %3, align 8, !tbaa !8
  %75 = load i64, ptr %1, align 8, !tbaa !8
  %76 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %75, i64 %65), !nosanitize !20
  %77 = extractvalue { i64, i1 } %76, 1, !nosanitize !20
  br i1 %77, label %78, label %79, !prof !21, !nosanitize !20

78:                                               ; preds = %73
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !20
  unreachable, !nosanitize !20

79:                                               ; preds = %73
  %80 = extractvalue { i64, i1 } %76, 0, !nosanitize !20
  store i64 %80, ptr %1, align 8, !tbaa !8
  %81 = call i32 @inflateEnd(ptr noundef nonnull %5) #6
  switch i32 %52, label %82 [
    i32 1, label %88
    i32 2, label %87
  ]

82:                                               ; preds = %79
  %83 = icmp eq i32 %52, -5
  %84 = icmp eq i64 %58, 0
  %85 = select i1 %83, i1 %84, i1 false
  %86 = select i1 %85, i32 -3, i32 %52
  br label %88

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87, %82, %79, %19, %14, %7, %4
  %89 = phi i32 [ %22, %19 ], [ -2, %4 ], [ -2, %14 ], [ -2, %7 ], [ 0, %79 ], [ %86, %82 ], [ -3, %87 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret i32 %89
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @inflateInit_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #4

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
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
  br i1 %10, label %82, label %11

11:                                               ; preds = %4
  %12 = icmp ne i64 %6, 0
  %13 = icmp eq ptr %0, null
  %14 = and i1 %13, %12
  br i1 %14, label %82, label %15

15:                                               ; preds = %11
  store ptr %2, ptr %5, align 8, !tbaa !10
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %16, align 8, !tbaa !15
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %18 = call i32 @inflateInit_(ptr noundef nonnull %5, ptr noundef nonnull @.str, i32 noundef 112) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %82

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

27:                                               ; preds = %46
  %28 = load i32, ptr %26, align 8, !tbaa !17
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi i32 [ %28, %27 ], [ 0, %20 ]
  %31 = phi i64 [ %47, %27 ], [ %7, %20 ]
  %32 = phi i64 [ %39, %27 ], [ %6, %20 ]
  %33 = icmp eq i32 %30, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = call i64 @llvm.umin.i64(i64 %32, i64 4294967295)
  %36 = trunc nuw i64 %35 to i32
  store i32 %36, ptr %26, align 8, !tbaa !17
  %37 = sub i64 %32, %35
  br label %38

38:                                               ; preds = %34, %29
  %39 = phi i64 [ %37, %34 ], [ %32, %29 ]
  %40 = load i32, ptr %16, align 8, !tbaa !15
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = call i64 @llvm.umin.i64(i64 %31, i64 4294967295)
  %44 = trunc nuw i64 %43 to i32
  store i32 %44, ptr %16, align 8, !tbaa !15
  %45 = sub i64 %31, %43
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i64 [ %45, %42 ], [ %31, %38 ]
  %48 = call i32 @inflate(ptr noundef nonnull %5, i32 noundef 0) #6
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %27, label %50, !llvm.loop !18

50:                                               ; preds = %46
  %51 = load i32, ptr %16, align 8, !tbaa !15
  %52 = zext i32 %51 to i64
  %53 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %47, i64 %52), !nosanitize !20
  %54 = extractvalue { i64, i1 } %53, 0, !nosanitize !20
  %55 = extractvalue { i64, i1 } %53, 1, !nosanitize !20
  br i1 %55, label %56, label %57, !prof !21, !nosanitize !20

56:                                               ; preds = %50
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !20
  unreachable, !nosanitize !20

57:                                               ; preds = %50
  %58 = load i32, ptr %26, align 8, !tbaa !17
  %59 = zext i32 %58 to i64
  %60 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %39, i64 %59), !nosanitize !20
  %61 = extractvalue { i64, i1 } %60, 0, !nosanitize !20
  %62 = extractvalue { i64, i1 } %60, 1, !nosanitize !20
  br i1 %62, label %63, label %64, !prof !21, !nosanitize !20

63:                                               ; preds = %57
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !20
  unreachable, !nosanitize !20

64:                                               ; preds = %57
  %65 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %7, i64 %54), !nosanitize !20
  %66 = extractvalue { i64, i1 } %65, 1, !nosanitize !20
  br i1 %66, label %67, label %68, !prof !21, !nosanitize !20

67:                                               ; preds = %64
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !20
  unreachable, !nosanitize !20

68:                                               ; preds = %64
  %69 = extractvalue { i64, i1 } %65, 0, !nosanitize !20
  %70 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %6, i64 %61), !nosanitize !20
  %71 = extractvalue { i64, i1 } %70, 1, !nosanitize !20
  br i1 %71, label %72, label %73, !prof !21, !nosanitize !20

72:                                               ; preds = %68
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !20
  unreachable, !nosanitize !20

73:                                               ; preds = %68
  %74 = extractvalue { i64, i1 } %70, 0, !nosanitize !20
  %75 = call i32 @inflateEnd(ptr noundef nonnull %5) #6
  switch i32 %48, label %76 [
    i32 1, label %82
    i32 2, label %81
  ]

76:                                               ; preds = %73
  %77 = icmp eq i32 %48, -5
  %78 = icmp eq i64 %54, 0
  %79 = select i1 %77, i1 %78, i1 false
  %80 = select i1 %79, i32 -3, i32 %48
  br label %82

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %76, %73, %15, %11, %4
  %83 = phi i64 [ %6, %4 ], [ %6, %11 ], [ %74, %76 ], [ %74, %73 ], [ %74, %81 ], [ %6, %15 ]
  %84 = phi i64 [ %7, %4 ], [ %7, %11 ], [ %69, %76 ], [ %69, %73 ], [ %69, %81 ], [ %7, %15 ]
  %85 = phi i32 [ -2, %4 ], [ -2, %11 ], [ %80, %76 ], [ 0, %73 ], [ -3, %81 ], [ %18, %15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  store i64 %84, ptr %3, align 8, !tbaa !8
  store i64 %83, ptr %1, align 8, !tbaa !8
  ret i32 %85
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
  br i1 %10, label %82, label %11

11:                                               ; preds = %4
  %12 = load i64, ptr %1, align 8, !tbaa !8
  %13 = icmp ne i64 %12, 0
  %14 = icmp eq ptr %0, null
  %15 = and i1 %14, %13
  br i1 %15, label %82, label %16

16:                                               ; preds = %11
  store ptr %2, ptr %5, align 8, !tbaa !10
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %17, align 8, !tbaa !15
  %18 = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %19 = call i32 @inflateInit_(ptr noundef nonnull %5, ptr noundef nonnull @.str, i32 noundef 112) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %82

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

28:                                               ; preds = %47
  %29 = load i32, ptr %27, align 8, !tbaa !17
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi i32 [ %29, %28 ], [ 0, %21 ]
  %32 = phi i64 [ %48, %28 ], [ %3, %21 ]
  %33 = phi i64 [ %40, %28 ], [ %12, %21 ]
  %34 = icmp eq i32 %31, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = call i64 @llvm.umin.i64(i64 %33, i64 4294967295)
  %37 = trunc nuw i64 %36 to i32
  store i32 %37, ptr %27, align 8, !tbaa !17
  %38 = sub i64 %33, %36
  br label %39

39:                                               ; preds = %35, %30
  %40 = phi i64 [ %38, %35 ], [ %33, %30 ]
  %41 = load i32, ptr %17, align 8, !tbaa !15
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = call i64 @llvm.umin.i64(i64 %32, i64 4294967295)
  %45 = trunc nuw i64 %44 to i32
  store i32 %45, ptr %17, align 8, !tbaa !15
  %46 = sub i64 %32, %44
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i64 [ %46, %43 ], [ %32, %39 ]
  %49 = call i32 @inflate(ptr noundef nonnull %5, i32 noundef 0) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %28, label %51, !llvm.loop !18

51:                                               ; preds = %47
  %52 = load i32, ptr %17, align 8, !tbaa !15
  %53 = zext i32 %52 to i64
  %54 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %48, i64 %53), !nosanitize !20
  %55 = extractvalue { i64, i1 } %54, 0, !nosanitize !20
  %56 = extractvalue { i64, i1 } %54, 1, !nosanitize !20
  br i1 %56, label %57, label %58, !prof !21, !nosanitize !20

57:                                               ; preds = %51
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !20
  unreachable, !nosanitize !20

58:                                               ; preds = %51
  %59 = load i32, ptr %27, align 8, !tbaa !17
  %60 = zext i32 %59 to i64
  %61 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %40, i64 %60), !nosanitize !20
  %62 = extractvalue { i64, i1 } %61, 0, !nosanitize !20
  %63 = extractvalue { i64, i1 } %61, 1, !nosanitize !20
  br i1 %63, label %64, label %65, !prof !21, !nosanitize !20

64:                                               ; preds = %58
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !20
  unreachable, !nosanitize !20

65:                                               ; preds = %58
  %66 = icmp ult i64 %3, %55
  br i1 %66, label %67, label %68, !prof !21, !nosanitize !20

67:                                               ; preds = %65
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !20
  unreachable, !nosanitize !20

68:                                               ; preds = %65
  %69 = load i64, ptr %1, align 8, !tbaa !8
  %70 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %69, i64 %62), !nosanitize !20
  %71 = extractvalue { i64, i1 } %70, 1, !nosanitize !20
  br i1 %71, label %72, label %73, !prof !21, !nosanitize !20

72:                                               ; preds = %68
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !20
  unreachable, !nosanitize !20

73:                                               ; preds = %68
  %74 = extractvalue { i64, i1 } %70, 0, !nosanitize !20
  store i64 %74, ptr %1, align 8, !tbaa !8
  %75 = call i32 @inflateEnd(ptr noundef nonnull %5) #6
  switch i32 %49, label %76 [
    i32 1, label %82
    i32 2, label %81
  ]

76:                                               ; preds = %73
  %77 = icmp eq i32 %49, -5
  %78 = icmp eq i64 %55, 0
  %79 = select i1 %77, i1 %78, i1 false
  %80 = select i1 %79, i32 -3, i32 %49
  br label %82

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %76, %73, %16, %11, %4
  %83 = phi i32 [ %19, %16 ], [ -3, %81 ], [ -2, %11 ], [ -2, %4 ], [ 0, %73 ], [ %80, %76 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret i32 %83
}

; Function Attrs: nounwind uwtable
define dso_local i32 @uncompress(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.z_stream_s, align 8
  %6 = load i64, ptr %1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %7 = icmp ne i64 %3, 0
  %8 = icmp eq ptr %2, null
  %9 = and i1 %8, %7
  br i1 %9, label %79, label %10

10:                                               ; preds = %4
  %11 = icmp ne i64 %6, 0
  %12 = icmp eq ptr %0, null
  %13 = and i1 %12, %11
  br i1 %13, label %79, label %14

14:                                               ; preds = %10
  store ptr %2, ptr %5, align 8, !tbaa !10
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %15, align 8, !tbaa !15
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %17 = call i32 @inflateInit_(ptr noundef nonnull %5, ptr noundef nonnull @.str, i32 noundef 112) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %79

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

26:                                               ; preds = %45
  %27 = load i32, ptr %25, align 8, !tbaa !17
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi i32 [ %27, %26 ], [ 0, %19 ]
  %30 = phi i64 [ %46, %26 ], [ %3, %19 ]
  %31 = phi i64 [ %38, %26 ], [ %6, %19 ]
  %32 = icmp eq i32 %29, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = call i64 @llvm.umin.i64(i64 %31, i64 4294967295)
  %35 = trunc nuw i64 %34 to i32
  store i32 %35, ptr %25, align 8, !tbaa !17
  %36 = sub i64 %31, %34
  br label %37

37:                                               ; preds = %33, %28
  %38 = phi i64 [ %36, %33 ], [ %31, %28 ]
  %39 = load i32, ptr %15, align 8, !tbaa !15
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = call i64 @llvm.umin.i64(i64 %30, i64 4294967295)
  %43 = trunc nuw i64 %42 to i32
  store i32 %43, ptr %15, align 8, !tbaa !15
  %44 = sub i64 %30, %42
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i64 [ %44, %41 ], [ %30, %37 ]
  %47 = call i32 @inflate(ptr noundef nonnull %5, i32 noundef 0) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %26, label %49, !llvm.loop !18

49:                                               ; preds = %45
  %50 = load i32, ptr %15, align 8, !tbaa !15
  %51 = zext i32 %50 to i64
  %52 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %46, i64 %51), !nosanitize !20
  %53 = extractvalue { i64, i1 } %52, 0, !nosanitize !20
  %54 = extractvalue { i64, i1 } %52, 1, !nosanitize !20
  br i1 %54, label %55, label %56, !prof !21, !nosanitize !20

55:                                               ; preds = %49
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !20
  unreachable, !nosanitize !20

56:                                               ; preds = %49
  %57 = load i32, ptr %25, align 8, !tbaa !17
  %58 = zext i32 %57 to i64
  %59 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %38, i64 %58), !nosanitize !20
  %60 = extractvalue { i64, i1 } %59, 0, !nosanitize !20
  %61 = extractvalue { i64, i1 } %59, 1, !nosanitize !20
  br i1 %61, label %62, label %63, !prof !21, !nosanitize !20

62:                                               ; preds = %56
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !20
  unreachable, !nosanitize !20

63:                                               ; preds = %56
  %64 = icmp ult i64 %3, %53
  br i1 %64, label %65, label %66, !prof !21, !nosanitize !20

65:                                               ; preds = %63
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !20
  unreachable, !nosanitize !20

66:                                               ; preds = %63
  %67 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %6, i64 %60), !nosanitize !20
  %68 = extractvalue { i64, i1 } %67, 1, !nosanitize !20
  br i1 %68, label %69, label %70, !prof !21, !nosanitize !20

69:                                               ; preds = %66
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !20
  unreachable, !nosanitize !20

70:                                               ; preds = %66
  %71 = extractvalue { i64, i1 } %67, 0, !nosanitize !20
  %72 = call i32 @inflateEnd(ptr noundef nonnull %5) #6
  switch i32 %47, label %73 [
    i32 1, label %79
    i32 2, label %78
  ]

73:                                               ; preds = %70
  %74 = icmp eq i32 %47, -5
  %75 = icmp eq i64 %53, 0
  %76 = select i1 %74, i1 %75, i1 false
  %77 = select i1 %76, i32 -3, i32 %47
  br label %79

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %73, %70, %14, %10, %4
  %80 = phi i64 [ %6, %4 ], [ %6, %10 ], [ %71, %73 ], [ %71, %70 ], [ %71, %78 ], [ %6, %14 ]
  %81 = phi i32 [ -2, %4 ], [ -2, %10 ], [ %77, %73 ], [ 0, %70 ], [ -3, %78 ], [ %17, %14 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  store i64 %80, ptr %1, align 8, !tbaa !8
  ret i32 %81
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{}
!21 = !{!"branch_weights", i32 1, i32 1048575}
