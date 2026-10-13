; ModuleID = '/mydata/zlib/inflate.c'
source_filename = "/mydata/zlib/inflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.inflate_state = type { ptr, i32, i32, i32, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, ptr, i64, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [1444 x %struct.code], i32, i32, i32 }
%struct.code = type { i8, i8, i16 }
%struct.gz_header_s = type { i32, i64, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32, i32, i32 }

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflateResetKeep(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %49, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %49, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %49, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %49, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !14
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %49

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !16
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %49

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 8
  store i64 0, ptr %24, align 8, !tbaa !17
  %25 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %26 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %26, align 8, !tbaa !18
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 11
  store i32 0, ptr %27, align 8, !tbaa !19
  %28 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  %29 = load i32, ptr %28, align 8, !tbaa !20
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = and i32 %29, 1
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %33, ptr %34, align 8, !tbaa !21
  br label %35

35:                                               ; preds = %31, %23
  store i32 16180, ptr %19, align 8, !tbaa !16
  %36 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 2
  store i32 0, ptr %36, align 4, !tbaa !22
  %37 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 4
  store i32 0, ptr %37, align 4, !tbaa !23
  %38 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 5
  store i32 -1, ptr %38, align 8, !tbaa !24
  %39 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 6
  store i32 32768, ptr %39, align 4, !tbaa !25
  %40 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 9
  store ptr null, ptr %40, align 8, !tbaa !26
  %41 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 15
  store i64 0, ptr %41, align 8, !tbaa !27
  %42 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 16
  store i32 0, ptr %42, align 8, !tbaa !28
  %43 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 31
  %44 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 28
  store ptr %43, ptr %44, align 8, !tbaa !29
  %45 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 21
  store ptr %43, ptr %45, align 8, !tbaa !30
  %46 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 20
  store ptr %43, ptr %46, align 8, !tbaa !31
  %47 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 32
  store i32 1, ptr %47, align 8, !tbaa !32
  %48 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 33
  store i32 -1, ptr %48, align 4, !tbaa !33
  br label %49

49:                                               ; preds = %11, %15, %1, %3, %7, %18, %35
  %50 = phi i32 [ 0, %35 ], [ -2, %18 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %50
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflateReset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %52, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %52, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %52, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %52, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !14
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %52

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !16
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %52

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 11
  store i32 0, ptr %24, align 4, !tbaa !34
  %25 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 12
  store i32 0, ptr %25, align 8, !tbaa !35
  %26 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 13
  store i32 0, ptr %26, align 4, !tbaa !36
  %27 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 8
  store i64 0, ptr %27, align 8, !tbaa !17
  %28 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %29 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %29, align 8, !tbaa !18
  %30 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 11
  store i32 0, ptr %30, align 8, !tbaa !19
  %31 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  %32 = load i32, ptr %31, align 8, !tbaa !20
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %23
  %35 = and i32 %32, 1
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %36, ptr %37, align 8, !tbaa !21
  br label %38

38:                                               ; preds = %34, %23
  store i32 16180, ptr %19, align 8, !tbaa !16
  %39 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 2
  store i32 0, ptr %39, align 4, !tbaa !22
  %40 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 4
  store i32 0, ptr %40, align 4, !tbaa !23
  %41 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 5
  store i32 -1, ptr %41, align 8, !tbaa !24
  %42 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 6
  store i32 32768, ptr %42, align 4, !tbaa !25
  %43 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 9
  store ptr null, ptr %43, align 8, !tbaa !26
  %44 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 15
  store i64 0, ptr %44, align 8, !tbaa !27
  %45 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 16
  store i32 0, ptr %45, align 8, !tbaa !28
  %46 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 31
  %47 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 28
  store ptr %46, ptr %47, align 8, !tbaa !29
  %48 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 21
  store ptr %46, ptr %48, align 8, !tbaa !30
  %49 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 20
  store ptr %46, ptr %49, align 8, !tbaa !31
  %50 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 32
  store i32 1, ptr %50, align 8, !tbaa !32
  %51 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 33
  store i32 -1, ptr %51, align 4, !tbaa !33
  br label %52

52:                                               ; preds = %11, %15, %1, %3, %7, %38, %18
  %53 = phi i32 [ -2, %18 ], [ 0, %38 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateReset2(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %100, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %100, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %100, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %100, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !14
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %100

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !16
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %100

24:                                               ; preds = %19
  %25 = icmp slt i32 %1, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = icmp ult i32 %1, -15
  br i1 %27, label %100, label %28

28:                                               ; preds = %26
  %29 = sub nsw i32 0, %1
  br label %36

30:                                               ; preds = %24
  %31 = lshr i32 %1, 4
  %32 = add nuw nsw i32 %31, 5
  %33 = icmp ult i32 %1, 48
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
  %40 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 14
  %41 = load ptr, ptr %40, align 8, !tbaa !37
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 10
  %45 = load i32, ptr %44, align 8, !tbaa !38
  %46 = icmp eq i32 %45, %37
  br i1 %46, label %47, label %50

47:                                               ; preds = %39, %43
  %48 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 3
  store i32 %38, ptr %48, align 8, !tbaa !20
  %49 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 10
  store i32 %37, ptr %49, align 8, !tbaa !38
  br label %57

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !39
  tail call void %10(ptr noundef %52, ptr noundef nonnull %41) #10
  store ptr null, ptr %40, align 8, !tbaa !37
  %53 = load ptr, ptr %5, align 8, !tbaa !5
  %54 = icmp eq ptr %53, null
  %55 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 3
  store i32 %38, ptr %55, align 8, !tbaa !20
  %56 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 10
  store i32 %37, ptr %56, align 8, !tbaa !38
  br i1 %54, label %100, label %57

57:                                               ; preds = %47, %50
  %58 = load ptr, ptr %9, align 8, !tbaa !12
  %59 = icmp eq ptr %58, null
  br i1 %59, label %100, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %13, align 8, !tbaa !13
  %62 = icmp eq ptr %61, null
  br i1 %62, label %100, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %61, align 8, !tbaa !14
  %65 = icmp eq ptr %64, %0
  br i1 %65, label %66, label %100

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !16
  %69 = add i32 %68, -16180
  %70 = icmp ult i32 %69, 32
  br i1 %70, label %71, label %100

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 11
  store i32 0, ptr %72, align 4, !tbaa !34
  %73 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 12
  store i32 0, ptr %73, align 8, !tbaa !35
  %74 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 13
  store i32 0, ptr %74, align 4, !tbaa !36
  %75 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 8
  store i64 0, ptr %75, align 8, !tbaa !17
  %76 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %77 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %77, align 8, !tbaa !18
  %78 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 11
  store i32 0, ptr %78, align 8, !tbaa !19
  %79 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %76, i8 0, i64 16, i1 false)
  %80 = load i32, ptr %79, align 8, !tbaa !20
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %71
  %83 = and i32 %80, 1
  %84 = zext nneg i32 %83 to i64
  %85 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %84, ptr %85, align 8, !tbaa !21
  br label %86

86:                                               ; preds = %82, %71
  store i32 16180, ptr %67, align 8, !tbaa !16
  %87 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 2
  store i32 0, ptr %87, align 4, !tbaa !22
  %88 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 4
  store i32 0, ptr %88, align 4, !tbaa !23
  %89 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 5
  store i32 -1, ptr %89, align 8, !tbaa !24
  %90 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 6
  store i32 32768, ptr %90, align 4, !tbaa !25
  %91 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 9
  store ptr null, ptr %91, align 8, !tbaa !26
  %92 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 15
  store i64 0, ptr %92, align 8, !tbaa !27
  %93 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 16
  store i32 0, ptr %93, align 8, !tbaa !28
  %94 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 31
  %95 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 28
  store ptr %94, ptr %95, align 8, !tbaa !29
  %96 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 21
  store ptr %94, ptr %96, align 8, !tbaa !30
  %97 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 20
  store ptr %94, ptr %97, align 8, !tbaa !31
  %98 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 32
  store i32 1, ptr %98, align 8, !tbaa !32
  %99 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 33
  store i32 -1, ptr %99, align 4, !tbaa !33
  br label %100

100:                                              ; preds = %12, %16, %2, %4, %8, %86, %66, %63, %60, %57, %50, %36, %26, %19
  %101 = phi i32 [ -2, %19 ], [ -2, %26 ], [ -2, %36 ], [ -2, %66 ], [ 0, %86 ], [ -2, %57 ], [ -2, %50 ], [ -2, %63 ], [ -2, %60 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %101
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateInit2_(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %87, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1, !tbaa !40
  %8 = icmp ne i8 %7, 49
  %9 = icmp ne i32 %3, 112
  %10 = or i1 %9, %8
  br i1 %10, label %87, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %0, null
  br i1 %12, label %87, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr null, ptr %14, align 8, !tbaa !41
  %15 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  store ptr @zcalloc, ptr %15, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  store ptr null, ptr %19, align 8, !tbaa !39
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi ptr [ @zcalloc, %18 ], [ %16, %13 ]
  %22 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store ptr @zcfree, ptr %22, align 8, !tbaa !12
  br label %26

26:                                               ; preds = %25, %20
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !39
  %29 = tail call ptr %21(ptr noundef %28, i32 noundef 1, i32 noundef 7160) #10
  %30 = icmp eq ptr %29, null
  br i1 %30, label %87, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds i8, ptr %29, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7160) %32, i8 0, i64 7152, i1 false)
  %33 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %29, ptr %33, align 8, !tbaa !13
  store ptr %0, ptr %29, align 8, !tbaa !14
  %34 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 1
  store i32 16180, ptr %34, align 8, !tbaa !16
  %35 = load ptr, ptr %15, align 8, !tbaa !5
  %36 = icmp eq ptr %35, null
  %37 = load ptr, ptr %22, align 8, !tbaa !12
  %38 = icmp eq ptr %37, null
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %85, label %40

40:                                               ; preds = %31
  %41 = icmp slt i32 %1, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %40
  %43 = icmp ult i32 %1, -15
  br i1 %43, label %85, label %44

44:                                               ; preds = %42
  %45 = sub nsw i32 0, %1
  br label %52

46:                                               ; preds = %40
  %47 = lshr i32 %1, 4
  %48 = add nuw nsw i32 %47, 5
  %49 = icmp ult i32 %1, 48
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
  %56 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 3
  store i32 %54, ptr %56, align 8, !tbaa !20
  %57 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 10
  store i32 %53, ptr %57, align 8, !tbaa !38
  %58 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 11
  store i32 0, ptr %58, align 4, !tbaa !34
  %59 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 12
  store i32 0, ptr %59, align 8, !tbaa !35
  %60 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 13
  store i32 0, ptr %60, align 4, !tbaa !36
  %61 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 8
  store i64 0, ptr %61, align 8, !tbaa !17
  %62 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %63 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %63, align 8, !tbaa !18
  %64 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 11
  store i32 0, ptr %64, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %62, i8 0, i64 16, i1 false)
  %65 = load i32, ptr %56, align 8, !tbaa !20
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %55
  %68 = and i32 %65, 1
  %69 = zext nneg i32 %68 to i64
  %70 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %69, ptr %70, align 8, !tbaa !21
  br label %71

71:                                               ; preds = %55, %67
  store i32 16180, ptr %34, align 8, !tbaa !16
  %72 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 2
  store i32 0, ptr %72, align 4, !tbaa !22
  %73 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 4
  store i32 0, ptr %73, align 4, !tbaa !23
  %74 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 5
  store i32 -1, ptr %74, align 8, !tbaa !24
  %75 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 6
  store i32 32768, ptr %75, align 4, !tbaa !25
  %76 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 9
  store ptr null, ptr %76, align 8, !tbaa !26
  %77 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 15
  store i64 0, ptr %77, align 8, !tbaa !27
  %78 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 16
  store i32 0, ptr %78, align 8, !tbaa !28
  %79 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 31
  %80 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 28
  store ptr %79, ptr %80, align 8, !tbaa !29
  %81 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 21
  store ptr %79, ptr %81, align 8, !tbaa !30
  %82 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 20
  store ptr %79, ptr %82, align 8, !tbaa !31
  %83 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 32
  store i32 1, ptr %83, align 8, !tbaa !32
  %84 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 33
  store i32 -1, ptr %84, align 4, !tbaa !33
  br label %87

85:                                               ; preds = %42, %52, %31
  %86 = load ptr, ptr %27, align 8, !tbaa !39
  tail call void %37(ptr noundef %86, ptr noundef nonnull %29) #10
  store ptr null, ptr %33, align 8, !tbaa !13
  br label %87

87:                                               ; preds = %71, %85, %26, %11, %4, %6
  %88 = phi i32 [ -6, %6 ], [ -6, %4 ], [ -2, %11 ], [ -4, %26 ], [ -2, %85 ], [ 0, %71 ]
  ret i32 %88
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #5

declare void @zcfree(ptr noundef, ptr noundef) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateInit_(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %67, label %5

5:                                                ; preds = %3
  %6 = load i8, ptr %1, align 1, !tbaa !40
  %7 = icmp ne i8 %6, 49
  %8 = icmp ne i32 %2, 112
  %9 = or i1 %8, %7
  br i1 %9, label %67, label %10

10:                                               ; preds = %5
  %11 = icmp eq ptr %0, null
  br i1 %11, label %67, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr null, ptr %13, align 8, !tbaa !41
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  store ptr @zcalloc, ptr %14, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  store ptr null, ptr %18, align 8, !tbaa !39
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ @zcalloc, %17 ], [ %15, %12 ]
  %21 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store ptr @zcfree, ptr %21, align 8, !tbaa !12
  br label %25

25:                                               ; preds = %24, %19
  %26 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !39
  %28 = tail call ptr %20(ptr noundef %27, i32 noundef 1, i32 noundef 7160) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %67, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds i8, ptr %28, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7160) %31, i8 0, i64 7152, i1 false)
  %32 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %28, ptr %32, align 8, !tbaa !13
  store ptr %0, ptr %28, align 8, !tbaa !14
  store i32 16180, ptr %31, align 8, !tbaa !16
  %33 = load ptr, ptr %14, align 8, !tbaa !5
  %34 = icmp eq ptr %33, null
  %35 = load ptr, ptr %21, align 8, !tbaa !12
  %36 = icmp eq ptr %35, null
  %37 = select i1 %34, i1 true, i1 %36
  br i1 %37, label %65, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.inflate_state, ptr %28, i64 0, i32 3
  store i32 5, ptr %39, align 8, !tbaa !20
  %40 = getelementptr inbounds %struct.inflate_state, ptr %28, i64 0, i32 10
  store <4 x i32> <i32 15, i32 0, i32 0, i32 0>, ptr %40, align 8, !tbaa !42
  %41 = getelementptr inbounds %struct.inflate_state, ptr %28, i64 0, i32 8
  store i64 0, ptr %41, align 8, !tbaa !17
  %42 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %43 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %43, align 8, !tbaa !18
  %44 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 11
  store i32 0, ptr %44, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, i8 0, i64 16, i1 false)
  %45 = load i32, ptr %39, align 8, !tbaa !20
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %38
  %48 = and i32 %45, 1
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %49, ptr %50, align 8, !tbaa !21
  br label %51

51:                                               ; preds = %47, %38
  store i32 16180, ptr %31, align 8, !tbaa !16
  %52 = getelementptr inbounds %struct.inflate_state, ptr %28, i64 0, i32 2
  store i32 0, ptr %52, align 4, !tbaa !22
  %53 = getelementptr inbounds %struct.inflate_state, ptr %28, i64 0, i32 4
  store i32 0, ptr %53, align 4, !tbaa !23
  %54 = getelementptr inbounds %struct.inflate_state, ptr %28, i64 0, i32 5
  store i32 -1, ptr %54, align 8, !tbaa !24
  %55 = getelementptr inbounds %struct.inflate_state, ptr %28, i64 0, i32 6
  store i32 32768, ptr %55, align 4, !tbaa !25
  %56 = getelementptr inbounds %struct.inflate_state, ptr %28, i64 0, i32 9
  store ptr null, ptr %56, align 8, !tbaa !26
  %57 = getelementptr inbounds %struct.inflate_state, ptr %28, i64 0, i32 15
  store i64 0, ptr %57, align 8, !tbaa !27
  %58 = getelementptr inbounds %struct.inflate_state, ptr %28, i64 0, i32 16
  store i32 0, ptr %58, align 8, !tbaa !28
  %59 = getelementptr inbounds %struct.inflate_state, ptr %28, i64 0, i32 31
  %60 = getelementptr inbounds %struct.inflate_state, ptr %28, i64 0, i32 28
  store ptr %59, ptr %60, align 8, !tbaa !29
  %61 = getelementptr inbounds %struct.inflate_state, ptr %28, i64 0, i32 21
  store ptr %59, ptr %61, align 8, !tbaa !30
  %62 = getelementptr inbounds %struct.inflate_state, ptr %28, i64 0, i32 20
  store ptr %59, ptr %62, align 8, !tbaa !31
  %63 = getelementptr inbounds %struct.inflate_state, ptr %28, i64 0, i32 32
  store i32 1, ptr %63, align 8, !tbaa !32
  %64 = getelementptr inbounds %struct.inflate_state, ptr %28, i64 0, i32 33
  store i32 -1, ptr %64, align 4, !tbaa !33
  br label %67

65:                                               ; preds = %30
  %66 = load ptr, ptr %26, align 8, !tbaa !39
  tail call void %35(ptr noundef %66, ptr noundef nonnull %28) #10
  store ptr null, ptr %32, align 8, !tbaa !13
  br label %67

67:                                               ; preds = %3, %5, %10, %25, %51, %65
  %68 = phi i32 [ -6, %5 ], [ -6, %3 ], [ -2, %10 ], [ -4, %25 ], [ -2, %65 ], [ 0, %51 ]
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflatePrime(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %58, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %58, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %58, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %58, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !14
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %58

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !16
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %58

25:                                               ; preds = %20
  %26 = icmp eq i32 %1, 0
  br i1 %26, label %58, label %27

27:                                               ; preds = %25
  %28 = icmp slt i32 %1, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 15
  store i64 0, ptr %30, align 8, !tbaa !27
  %31 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 16
  store i32 0, ptr %31, align 8, !tbaa !28
  br label %58

32:                                               ; preds = %27
  %33 = icmp ugt i32 %1, 16
  br i1 %33, label %58, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 16
  %36 = load i32, ptr %35, align 8, !tbaa !28
  %37 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %36, i32 %1), !nosanitize !43
  %38 = extractvalue { i32, i1 } %37, 1, !nosanitize !43
  br i1 %38, label %39, label %40, !nosanitize !43

39:                                               ; preds = %43, %34
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !43
  unreachable, !nosanitize !43

40:                                               ; preds = %34
  %41 = extractvalue { i32, i1 } %37, 0, !nosanitize !43
  %42 = icmp ugt i32 %41, 32
  br i1 %42, label %58, label %43

43:                                               ; preds = %40
  %44 = zext nneg i32 %1 to i64
  %45 = shl nsw i64 -1, %44
  %46 = trunc i64 %45 to i32
  %47 = xor i32 %46, -1
  %48 = and i32 %47, %2
  %49 = zext nneg i32 %48 to i64
  %50 = zext nneg i32 %36 to i64
  %51 = shl i64 %49, %50
  %52 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 15
  %53 = load i64, ptr %52, align 8, !tbaa !27
  %54 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %53, i64 %51), !nosanitize !43
  %55 = extractvalue { i64, i1 } %54, 1, !nosanitize !43
  br i1 %55, label %39, label %56, !nosanitize !43

56:                                               ; preds = %43
  %57 = extractvalue { i64, i1 } %54, 0, !nosanitize !43
  store i64 %57, ptr %52, align 8, !tbaa !27
  store i32 %41, ptr %35, align 8, !tbaa !28
  br label %58

58:                                               ; preds = %13, %17, %3, %5, %9, %32, %40, %25, %20, %56, %29
  %59 = phi i32 [ 0, %29 ], [ 0, %56 ], [ -2, %20 ], [ 0, %25 ], [ -2, %40 ], [ -2, %32 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %59
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @inflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %4 = icmp eq ptr %0, null
  br i1 %4, label %2495, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %2495, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %2495, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %2495, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !14
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %2495

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !16
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %2495

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  %28 = icmp eq ptr %27, null
  br i1 %28, label %2495, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 8, !tbaa !45
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !46
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %2495

36:                                               ; preds = %32, %29
  %37 = icmp eq i32 %22, 16191
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  store i32 16192, ptr %21, align 8, !tbaa !16
  br label %39

39:                                               ; preds = %36, %38
  %40 = phi i32 [ %22, %36 ], [ 16192, %38 ]
  %41 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !47
  %43 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !46
  %45 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 15
  %46 = load i64, ptr %45, align 8, !tbaa !27
  %47 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 16
  %48 = load i32, ptr %47, align 8, !tbaa !28
  %49 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 3
  %50 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %51 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 8
  %52 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 5
  %53 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 7
  %54 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %55 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  %56 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 17
  %57 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 25
  %58 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 26
  %59 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 24
  %60 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 27
  %61 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 31
  %62 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 28
  %63 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 21
  %64 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 20
  %65 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 22
  %66 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29
  %67 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 30
  %68 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 256
  %69 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 23
  %70 = icmp eq i32 %1, 6
  %71 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 33
  %72 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 19
  %73 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 34
  %74 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 18
  %75 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 12
  %76 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 32
  %77 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 13
  %78 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 14
  %79 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 11
  %80 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 4
  %81 = add i32 %1, -5
  %82 = icmp ult i32 %81, 2
  %83 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 2
  %84 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 9
  %85 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  %86 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  %87 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  %88 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 10
  %89 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 6
  br label %90

90:                                               ; preds = %2183, %39
  %91 = phi i32 [ %40, %39 ], [ %2192, %2183 ]
  %92 = phi ptr [ %30, %39 ], [ %2184, %2183 ]
  %93 = phi ptr [ %27, %39 ], [ %2185, %2183 ]
  %94 = phi i32 [ %44, %39 ], [ %2186, %2183 ]
  %95 = phi i32 [ %42, %39 ], [ %2187, %2183 ]
  %96 = phi i64 [ %46, %39 ], [ %2188, %2183 ]
  %97 = phi i32 [ %48, %39 ], [ %2189, %2183 ]
  %98 = phi i32 [ %42, %39 ], [ %2190, %2183 ]
  %99 = phi i32 [ 0, %39 ], [ %2191, %2183 ]
  switch i32 %91, label %2495 [
    i32 16180, label %121
    i32 16181, label %116
    i32 16182, label %284
    i32 16183, label %372
    i32 16184, label %432
    i32 16185, label %511
    i32 16186, label %587
    i32 16187, label %650
    i32 16188, label %713
    i32 16189, label %111
    i32 16190, label %843
    i32 16191, label %853
    i32 16192, label %858
    i32 16193, label %909
    i32 16194, label %993
    i32 16195, label %998
    i32 16196, label %106
    i32 16197, label %1079
    i32 16198, label %1153
    i32 16199, label %1423
    i32 16200, label %1429
    i32 16201, label %102
    i32 16202, label %1663
    i32 16203, label %100
    i32 16204, label %1882
    i32 16205, label %1958
    i32 16206, label %1965
    i32 16207, label %104
    i32 16208, label %2309
    i32 16209, label %2310
    i32 16210, label %2494
  ]

100:                                              ; preds = %90
  %101 = load i32, ptr %72, align 4, !tbaa !48
  br label %1818

102:                                              ; preds = %90
  %103 = load i32, ptr %72, align 4, !tbaa !48
  br label %1598

104:                                              ; preds = %90
  %105 = load i32, ptr %49, align 8, !tbaa !20
  br label %2091

106:                                              ; preds = %90
  %107 = icmp ult i32 %97, 14
  br i1 %107, label %108, label %1058

108:                                              ; preds = %106
  %109 = zext nneg i32 %97 to i64
  %110 = icmp eq i32 %94, 0
  br i1 %110, label %2291, label %1027

111:                                              ; preds = %90
  %112 = icmp ult i32 %97, 32
  br i1 %112, label %113, label %836

113:                                              ; preds = %111
  %114 = zext nneg i32 %97 to i64
  %115 = icmp eq i32 %94, 0
  br i1 %115, label %2234, label %784

116:                                              ; preds = %90
  %117 = icmp ult i32 %97, 16
  br i1 %117, label %118, label %251

118:                                              ; preds = %116
  %119 = zext nneg i32 %97 to i64
  %120 = icmp eq i32 %94, 0
  br i1 %120, label %2228, label %220

121:                                              ; preds = %90
  %122 = load i32, ptr %49, align 8, !tbaa !20
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %121
  %125 = icmp ult i32 %97, 16
  br i1 %125, label %126, label %163

126:                                              ; preds = %124
  %127 = zext nneg i32 %97 to i64
  %128 = icmp eq i32 %94, 0
  br i1 %128, label %2198, label %130

129:                                              ; preds = %121
  store i32 16192, ptr %21, align 8, !tbaa !16
  br label %2183

130:                                              ; preds = %126
  %131 = load i8, ptr %92, align 1, !tbaa !40
  %132 = zext i8 %131 to i64
  %133 = shl nuw nsw i64 %132, %127
  %134 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %96, i64 %133), !nosanitize !43
  %135 = extractvalue { i64, i1 } %134, 1, !nosanitize !43
  br i1 %135, label %137, label %138, !nosanitize !43

136:                                              ; preds = %2032, %1937, %1929, %1907, %1889, %1864, %1791, %1644, %1567, %1348, %1313, %1281, %1019, %1014, %1009, %909, %870, %698, %635, %571, %567, %548, %530, %1228, %1942, %1386, %2419, %2414, %2329
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !43
  unreachable, !nosanitize !43

137:                                              ; preds = %2045, %2040, %1871, %1852, %1805, %1773, %1651, %1632, %1363, %540, %1153, %878, %1973, %1987, %2001, %2015, %2107, %2121, %2135, %2149, %1027, %1041, %1111, %1299, %1257, %1334, %1469, %1529, %1616, %1689, %1748, %1836, %922, %936, %950, %964, %784, %798, %812, %826, %220, %234, %293, %307, %321, %335, %381, %395, %450, %464, %726, %740, %130, %146, %1196, %1381, %2475, %2468, %2461, %2436, %2430, %2424
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !43
  unreachable, !nosanitize !43

138:                                              ; preds = %130
  %139 = extractvalue { i64, i1 } %134, 0, !nosanitize !43
  %140 = getelementptr inbounds i8, ptr %92, i64 1
  %141 = add i32 %94, -1
  %142 = add nuw nsw i64 %127, 8
  %143 = icmp ult i32 %97, 8
  br i1 %143, label %144, label %157, !llvm.loop !49

144:                                              ; preds = %138
  %145 = icmp eq i32 %141, 0
  br i1 %145, label %2198, label %146

146:                                              ; preds = %144
  %147 = load i8, ptr %140, align 1, !tbaa !40
  %148 = zext i8 %147 to i64
  %149 = shl nuw nsw i64 %148, %142
  %150 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %139, i64 %149), !nosanitize !43
  %151 = extractvalue { i64, i1 } %150, 1, !nosanitize !43
  br i1 %151, label %137, label %152, !nosanitize !43

152:                                              ; preds = %146
  %153 = extractvalue { i64, i1 } %150, 0, !nosanitize !43
  %154 = getelementptr inbounds i8, ptr %92, i64 2
  %155 = add i32 %94, -2
  %156 = or disjoint i64 %127, 16
  br label %157

157:                                              ; preds = %152, %138
  %158 = phi i64 [ %139, %138 ], [ %153, %152 ]
  %159 = phi ptr [ %140, %138 ], [ %154, %152 ]
  %160 = phi i32 [ %141, %138 ], [ %155, %152 ]
  %161 = phi i64 [ %142, %138 ], [ %156, %152 ]
  %162 = trunc i64 %161 to i32
  br label %163

163:                                              ; preds = %157, %124
  %164 = phi ptr [ %92, %124 ], [ %159, %157 ]
  %165 = phi i32 [ %94, %124 ], [ %160, %157 ]
  %166 = phi i64 [ %96, %124 ], [ %158, %157 ]
  %167 = phi i32 [ %97, %124 ], [ %162, %157 ]
  %168 = and i32 %122, 2
  %169 = icmp ne i32 %168, 0
  %170 = icmp eq i64 %166, 35615
  %171 = select i1 %169, i1 %170, i1 false
  br i1 %171, label %172, label %179

172:                                              ; preds = %163
  %173 = load i32, ptr %88, align 8, !tbaa !38
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  store i32 15, ptr %88, align 8, !tbaa !38
  br label %176

176:                                              ; preds = %175, %172
  %177 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  store i64 %177, ptr %53, align 8, !tbaa !51
  store i8 31, ptr %3, align 1, !tbaa !40
  store i8 -117, ptr %85, align 1, !tbaa !40
  %178 = call i64 @crc32(i64 noundef %177, ptr noundef nonnull %3, i32 noundef 2) #10
  store i64 %178, ptr %53, align 8, !tbaa !51
  store i32 16181, ptr %21, align 8, !tbaa !16
  br label %2183

179:                                              ; preds = %163
  %180 = load ptr, ptr %84, align 8, !tbaa !26
  %181 = icmp eq ptr %180, null
  br i1 %181, label %184, label %182

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.gz_header_s, ptr %180, i64 0, i32 12
  store i32 -1, ptr %183, align 8, !tbaa !52
  br label %184

184:                                              ; preds = %182, %179
  %185 = and i32 %122, 1
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %194, label %187

187:                                              ; preds = %184
  %188 = shl i64 %166, 8
  %189 = and i64 %188, 65280
  %190 = lshr i64 %166, 8
  %191 = add nuw nsw i64 %189, %190
  %192 = urem i64 %191, 31
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %187, %184
  store ptr @.str.1, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2183

195:                                              ; preds = %187
  %196 = and i64 %166, 15
  %197 = icmp eq i64 %196, 8
  br i1 %197, label %199, label %198

198:                                              ; preds = %195
  store ptr @.str.2, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2183

199:                                              ; preds = %195
  %200 = lshr i64 %166, 4
  %201 = add i32 %167, -4
  %202 = trunc i64 %200 to i32
  %203 = and i32 %202, 15
  %204 = add nuw nsw i32 %203, 8
  %205 = load i32, ptr %88, align 8, !tbaa !38
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %199
  store i32 %204, ptr %88, align 8, !tbaa !38
  br label %208

208:                                              ; preds = %207, %199
  %209 = phi i32 [ %204, %207 ], [ %205, %199 ]
  %210 = icmp ugt i32 %203, 7
  %211 = icmp ugt i32 %204, %209
  %212 = select i1 %210, i1 true, i1 %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %208
  store ptr @.str.3, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2183

214:                                              ; preds = %208
  %215 = shl nuw nsw i32 256, %203
  store i32 %215, ptr %89, align 4, !tbaa !25
  store i32 0, ptr %52, align 8, !tbaa !24
  %216 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  store i64 %216, ptr %53, align 8, !tbaa !51
  store i64 %216, ptr %54, align 8, !tbaa !21
  %217 = and i64 %166, 8192
  %218 = icmp eq i64 %217, 0
  %219 = select i1 %218, i32 16191, i32 16189
  store i32 %219, ptr %21, align 8, !tbaa !16
  br label %2183

220:                                              ; preds = %118
  %221 = load i8, ptr %92, align 1, !tbaa !40
  %222 = zext i8 %221 to i64
  %223 = shl nuw nsw i64 %222, %119
  %224 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %96, i64 %223), !nosanitize !43
  %225 = extractvalue { i64, i1 } %224, 1, !nosanitize !43
  br i1 %225, label %137, label %226, !nosanitize !43

226:                                              ; preds = %220
  %227 = extractvalue { i64, i1 } %224, 0, !nosanitize !43
  %228 = getelementptr inbounds i8, ptr %92, i64 1
  %229 = add i32 %94, -1
  %230 = add nuw nsw i64 %119, 8
  %231 = icmp ult i32 %97, 8
  br i1 %231, label %232, label %245, !llvm.loop !54

232:                                              ; preds = %226
  %233 = icmp eq i32 %229, 0
  br i1 %233, label %2228, label %234

234:                                              ; preds = %232
  %235 = load i8, ptr %228, align 1, !tbaa !40
  %236 = zext i8 %235 to i64
  %237 = shl nuw nsw i64 %236, %230
  %238 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %227, i64 %237), !nosanitize !43
  %239 = extractvalue { i64, i1 } %238, 1, !nosanitize !43
  br i1 %239, label %137, label %240, !nosanitize !43

240:                                              ; preds = %234
  %241 = extractvalue { i64, i1 } %238, 0, !nosanitize !43
  %242 = getelementptr inbounds i8, ptr %92, i64 2
  %243 = add i32 %94, -2
  %244 = or disjoint i64 %119, 16
  br label %245

245:                                              ; preds = %240, %226
  %246 = phi i64 [ %227, %226 ], [ %241, %240 ]
  %247 = phi ptr [ %228, %226 ], [ %242, %240 ]
  %248 = phi i32 [ %229, %226 ], [ %243, %240 ]
  %249 = phi i64 [ %230, %226 ], [ %244, %240 ]
  %250 = trunc i64 %249 to i32
  br label %251

251:                                              ; preds = %245, %116
  %252 = phi ptr [ %92, %116 ], [ %247, %245 ]
  %253 = phi i32 [ %94, %116 ], [ %248, %245 ]
  %254 = phi i64 [ %96, %116 ], [ %246, %245 ]
  %255 = phi i32 [ %97, %116 ], [ %250, %245 ]
  %256 = trunc i64 %254 to i32
  store i32 %256, ptr %52, align 8, !tbaa !24
  %257 = and i32 %256, 255
  %258 = icmp eq i32 %257, 8
  br i1 %258, label %260, label %259

259:                                              ; preds = %251
  store ptr @.str.2, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2183

260:                                              ; preds = %251
  %261 = and i32 %256, 57344
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %264, label %263

263:                                              ; preds = %260
  store ptr @.str.4, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2183

264:                                              ; preds = %260
  %265 = load ptr, ptr %84, align 8, !tbaa !26
  %266 = icmp eq ptr %265, null
  br i1 %266, label %270, label %267

267:                                              ; preds = %264
  %268 = lshr i32 %256, 8
  %269 = and i32 %268, 1
  store i32 %269, ptr %265, align 8, !tbaa !55
  br label %270

270:                                              ; preds = %267, %264
  %271 = and i32 %256, 512
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %283, label %273

273:                                              ; preds = %270
  %274 = load i32, ptr %49, align 8, !tbaa !20
  %275 = and i32 %274, 4
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %283, label %277

277:                                              ; preds = %273
  %278 = trunc i64 %254 to i8
  store i8 %278, ptr %3, align 1, !tbaa !40
  %279 = lshr i64 %254, 8
  %280 = trunc i64 %279 to i8
  store i8 %280, ptr %85, align 1, !tbaa !40
  %281 = load i64, ptr %53, align 8, !tbaa !51
  %282 = call i64 @crc32(i64 noundef %281, ptr noundef nonnull %3, i32 noundef 2) #10
  store i64 %282, ptr %53, align 8, !tbaa !51
  br label %283

283:                                              ; preds = %277, %273, %270
  store i32 16182, ptr %21, align 8, !tbaa !16
  br label %286

284:                                              ; preds = %90
  %285 = icmp ult i32 %97, 32
  br i1 %285, label %286, label %345

286:                                              ; preds = %283, %284
  %287 = phi i32 [ 0, %283 ], [ %97, %284 ]
  %288 = phi i64 [ 0, %283 ], [ %96, %284 ]
  %289 = phi i32 [ %253, %283 ], [ %94, %284 ]
  %290 = phi ptr [ %252, %283 ], [ %92, %284 ]
  %291 = zext nneg i32 %287 to i64
  %292 = icmp eq i32 %289, 0
  br i1 %292, label %2222, label %293

293:                                              ; preds = %286
  %294 = load i8, ptr %290, align 1, !tbaa !40
  %295 = zext i8 %294 to i64
  %296 = shl nuw nsw i64 %295, %291
  %297 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %288, i64 %296), !nosanitize !43
  %298 = extractvalue { i64, i1 } %297, 1, !nosanitize !43
  br i1 %298, label %137, label %299, !nosanitize !43

299:                                              ; preds = %293
  %300 = extractvalue { i64, i1 } %297, 0, !nosanitize !43
  %301 = getelementptr inbounds i8, ptr %290, i64 1
  %302 = add i32 %289, -1
  %303 = add nuw nsw i64 %291, 8
  %304 = icmp ult i32 %287, 24
  br i1 %304, label %305, label %345, !llvm.loop !56

305:                                              ; preds = %299
  %306 = icmp eq i32 %302, 0
  br i1 %306, label %2222, label %307

307:                                              ; preds = %305
  %308 = load i8, ptr %301, align 1, !tbaa !40
  %309 = zext i8 %308 to i64
  %310 = shl nuw nsw i64 %309, %303
  %311 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %300, i64 %310), !nosanitize !43
  %312 = extractvalue { i64, i1 } %311, 1, !nosanitize !43
  br i1 %312, label %137, label %313, !nosanitize !43

313:                                              ; preds = %307
  %314 = extractvalue { i64, i1 } %311, 0, !nosanitize !43
  %315 = getelementptr inbounds i8, ptr %290, i64 2
  %316 = add i32 %289, -2
  %317 = add nuw nsw i64 %291, 16
  %318 = icmp ult i32 %287, 16
  br i1 %318, label %319, label %345, !llvm.loop !56

319:                                              ; preds = %313
  %320 = icmp eq i32 %316, 0
  br i1 %320, label %2222, label %321

321:                                              ; preds = %319
  %322 = load i8, ptr %315, align 1, !tbaa !40
  %323 = zext i8 %322 to i64
  %324 = shl nuw nsw i64 %323, %317
  %325 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %314, i64 %324), !nosanitize !43
  %326 = extractvalue { i64, i1 } %325, 1, !nosanitize !43
  br i1 %326, label %137, label %327, !nosanitize !43

327:                                              ; preds = %321
  %328 = extractvalue { i64, i1 } %325, 0, !nosanitize !43
  %329 = getelementptr inbounds i8, ptr %290, i64 3
  %330 = add i32 %289, -3
  %331 = add nuw nsw i64 %291, 24
  %332 = icmp ult i32 %287, 8
  br i1 %332, label %333, label %345, !llvm.loop !56

333:                                              ; preds = %327
  %334 = icmp eq i32 %330, 0
  br i1 %334, label %2222, label %335

335:                                              ; preds = %333
  %336 = load i8, ptr %329, align 1, !tbaa !40
  %337 = zext i8 %336 to i64
  %338 = shl nuw nsw i64 %337, %331
  %339 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %328, i64 %338), !nosanitize !43
  %340 = extractvalue { i64, i1 } %339, 1, !nosanitize !43
  br i1 %340, label %137, label %341, !nosanitize !43

341:                                              ; preds = %335
  %342 = extractvalue { i64, i1 } %339, 0, !nosanitize !43
  %343 = getelementptr inbounds i8, ptr %290, i64 4
  %344 = add i32 %289, -4
  br label %345

345:                                              ; preds = %299, %313, %327, %341, %284
  %346 = phi ptr [ %92, %284 ], [ %301, %299 ], [ %315, %313 ], [ %329, %327 ], [ %343, %341 ]
  %347 = phi i32 [ %94, %284 ], [ %302, %299 ], [ %316, %313 ], [ %330, %327 ], [ %344, %341 ]
  %348 = phi i64 [ %96, %284 ], [ %300, %299 ], [ %314, %313 ], [ %328, %327 ], [ %342, %341 ]
  %349 = load ptr, ptr %84, align 8, !tbaa !26
  %350 = icmp eq ptr %349, null
  br i1 %350, label %353, label %351

351:                                              ; preds = %345
  %352 = getelementptr inbounds %struct.gz_header_s, ptr %349, i64 0, i32 1
  store i64 %348, ptr %352, align 8, !tbaa !57
  br label %353

353:                                              ; preds = %351, %345
  %354 = load i32, ptr %52, align 8, !tbaa !24
  %355 = and i32 %354, 512
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %371, label %357

357:                                              ; preds = %353
  %358 = load i32, ptr %49, align 8, !tbaa !20
  %359 = and i32 %358, 4
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %371, label %361

361:                                              ; preds = %357
  %362 = trunc i64 %348 to i8
  store i8 %362, ptr %3, align 1, !tbaa !40
  %363 = lshr i64 %348, 8
  %364 = trunc i64 %363 to i8
  store i8 %364, ptr %85, align 1, !tbaa !40
  %365 = lshr i64 %348, 16
  %366 = trunc i64 %365 to i8
  store i8 %366, ptr %86, align 1, !tbaa !40
  %367 = lshr i64 %348, 24
  %368 = trunc i64 %367 to i8
  store i8 %368, ptr %87, align 1, !tbaa !40
  %369 = load i64, ptr %53, align 8, !tbaa !51
  %370 = call i64 @crc32(i64 noundef %369, ptr noundef nonnull %3, i32 noundef 4) #10
  store i64 %370, ptr %53, align 8, !tbaa !51
  br label %371

371:                                              ; preds = %361, %357, %353
  store i32 16183, ptr %21, align 8, !tbaa !16
  br label %374

372:                                              ; preds = %90
  %373 = icmp ult i32 %97, 16
  br i1 %373, label %374, label %405

374:                                              ; preds = %371, %372
  %375 = phi i32 [ 0, %371 ], [ %97, %372 ]
  %376 = phi i64 [ 0, %371 ], [ %96, %372 ]
  %377 = phi i32 [ %347, %371 ], [ %94, %372 ]
  %378 = phi ptr [ %346, %371 ], [ %92, %372 ]
  %379 = zext nneg i32 %375 to i64
  %380 = icmp eq i32 %377, 0
  br i1 %380, label %2216, label %381

381:                                              ; preds = %374
  %382 = load i8, ptr %378, align 1, !tbaa !40
  %383 = zext i8 %382 to i64
  %384 = shl nuw nsw i64 %383, %379
  %385 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %376, i64 %384), !nosanitize !43
  %386 = extractvalue { i64, i1 } %385, 1, !nosanitize !43
  br i1 %386, label %137, label %387, !nosanitize !43

387:                                              ; preds = %381
  %388 = extractvalue { i64, i1 } %385, 0, !nosanitize !43
  %389 = getelementptr inbounds i8, ptr %378, i64 1
  %390 = add i32 %377, -1
  %391 = add nuw nsw i64 %379, 8
  %392 = icmp ult i32 %375, 8
  br i1 %392, label %393, label %405, !llvm.loop !58

393:                                              ; preds = %387
  %394 = icmp eq i32 %390, 0
  br i1 %394, label %2216, label %395

395:                                              ; preds = %393
  %396 = load i8, ptr %389, align 1, !tbaa !40
  %397 = zext i8 %396 to i64
  %398 = shl nuw nsw i64 %397, %391
  %399 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %388, i64 %398), !nosanitize !43
  %400 = extractvalue { i64, i1 } %399, 1, !nosanitize !43
  br i1 %400, label %137, label %401, !nosanitize !43

401:                                              ; preds = %395
  %402 = extractvalue { i64, i1 } %399, 0, !nosanitize !43
  %403 = getelementptr inbounds i8, ptr %378, i64 2
  %404 = add i32 %377, -2
  br label %405

405:                                              ; preds = %387, %401, %372
  %406 = phi ptr [ %92, %372 ], [ %389, %387 ], [ %403, %401 ]
  %407 = phi i32 [ %94, %372 ], [ %390, %387 ], [ %404, %401 ]
  %408 = phi i64 [ %96, %372 ], [ %388, %387 ], [ %402, %401 ]
  %409 = load ptr, ptr %84, align 8, !tbaa !26
  %410 = icmp eq ptr %409, null
  br i1 %410, label %418, label %411

411:                                              ; preds = %405
  %412 = trunc i64 %408 to i32
  %413 = and i32 %412, 255
  %414 = getelementptr inbounds %struct.gz_header_s, ptr %409, i64 0, i32 2
  store i32 %413, ptr %414, align 8, !tbaa !59
  %415 = lshr i64 %408, 8
  %416 = trunc i64 %415 to i32
  %417 = getelementptr inbounds %struct.gz_header_s, ptr %409, i64 0, i32 3
  store i32 %416, ptr %417, align 4, !tbaa !60
  br label %418

418:                                              ; preds = %411, %405
  %419 = load i32, ptr %52, align 8, !tbaa !24
  %420 = and i32 %419, 512
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %436, label %422

422:                                              ; preds = %418
  %423 = load i32, ptr %49, align 8, !tbaa !20
  %424 = and i32 %423, 4
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %436, label %426

426:                                              ; preds = %422
  %427 = trunc i64 %408 to i8
  store i8 %427, ptr %3, align 1, !tbaa !40
  %428 = lshr i64 %408, 8
  %429 = trunc i64 %428 to i8
  store i8 %429, ptr %85, align 1, !tbaa !40
  %430 = load i64, ptr %53, align 8, !tbaa !51
  %431 = call i64 @crc32(i64 noundef %430, ptr noundef nonnull %3, i32 noundef 2) #10
  store i64 %431, ptr %53, align 8, !tbaa !51
  br label %436

432:                                              ; preds = %90
  %433 = load i32, ptr %52, align 8, !tbaa !24
  %434 = and i32 %433, 1024
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %497, label %440

436:                                              ; preds = %426, %422, %418
  store i32 16184, ptr %21, align 8, !tbaa !16
  %437 = load i32, ptr %52, align 8, !tbaa !24
  %438 = and i32 %437, 1024
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %497, label %442

440:                                              ; preds = %432
  %441 = icmp ult i32 %97, 16
  br i1 %441, label %442, label %474

442:                                              ; preds = %436, %440
  %443 = phi ptr [ %92, %440 ], [ %406, %436 ]
  %444 = phi i32 [ %94, %440 ], [ %407, %436 ]
  %445 = phi i64 [ %96, %440 ], [ 0, %436 ]
  %446 = phi i32 [ %97, %440 ], [ 0, %436 ]
  %447 = phi i32 [ %433, %440 ], [ %437, %436 ]
  %448 = zext nneg i32 %446 to i64
  %449 = icmp eq i32 %444, 0
  br i1 %449, label %2210, label %450

450:                                              ; preds = %442
  %451 = load i8, ptr %443, align 1, !tbaa !40
  %452 = zext i8 %451 to i64
  %453 = shl nuw nsw i64 %452, %448
  %454 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %445, i64 %453), !nosanitize !43
  %455 = extractvalue { i64, i1 } %454, 1, !nosanitize !43
  br i1 %455, label %137, label %456, !nosanitize !43

456:                                              ; preds = %450
  %457 = extractvalue { i64, i1 } %454, 0, !nosanitize !43
  %458 = getelementptr inbounds i8, ptr %443, i64 1
  %459 = add i32 %444, -1
  %460 = add nuw nsw i64 %448, 8
  %461 = icmp ult i32 %446, 8
  br i1 %461, label %462, label %474, !llvm.loop !61

462:                                              ; preds = %456
  %463 = icmp eq i32 %459, 0
  br i1 %463, label %2210, label %464

464:                                              ; preds = %462
  %465 = load i8, ptr %458, align 1, !tbaa !40
  %466 = zext i8 %465 to i64
  %467 = shl nuw nsw i64 %466, %460
  %468 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %457, i64 %467), !nosanitize !43
  %469 = extractvalue { i64, i1 } %468, 1, !nosanitize !43
  br i1 %469, label %137, label %470, !nosanitize !43

470:                                              ; preds = %464
  %471 = extractvalue { i64, i1 } %468, 0, !nosanitize !43
  %472 = getelementptr inbounds i8, ptr %443, i64 2
  %473 = add i32 %444, -2
  br label %474

474:                                              ; preds = %456, %470, %440
  %475 = phi i32 [ %433, %440 ], [ %447, %470 ], [ %447, %456 ]
  %476 = phi ptr [ %92, %440 ], [ %458, %456 ], [ %472, %470 ]
  %477 = phi i32 [ %94, %440 ], [ %459, %456 ], [ %473, %470 ]
  %478 = phi i64 [ %96, %440 ], [ %457, %456 ], [ %471, %470 ]
  %479 = trunc i64 %478 to i32
  store i32 %479, ptr %56, align 4, !tbaa !62
  %480 = load ptr, ptr %84, align 8, !tbaa !26
  %481 = icmp eq ptr %480, null
  br i1 %481, label %484, label %482

482:                                              ; preds = %474
  %483 = getelementptr inbounds %struct.gz_header_s, ptr %480, i64 0, i32 5
  store i32 %479, ptr %483, align 8, !tbaa !63
  br label %484

484:                                              ; preds = %482, %474
  %485 = and i32 %475, 512
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %506, label %487

487:                                              ; preds = %484
  %488 = load i32, ptr %49, align 8, !tbaa !20
  %489 = and i32 %488, 4
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %506, label %491

491:                                              ; preds = %487
  %492 = trunc i64 %478 to i8
  store i8 %492, ptr %3, align 1, !tbaa !40
  %493 = lshr i64 %478, 8
  %494 = trunc i64 %493 to i8
  store i8 %494, ptr %85, align 1, !tbaa !40
  %495 = load i64, ptr %53, align 8, !tbaa !51
  %496 = call i64 @crc32(i64 noundef %495, ptr noundef nonnull %3, i32 noundef 2) #10
  store i64 %496, ptr %53, align 8, !tbaa !51
  br label %506

497:                                              ; preds = %436, %432
  %498 = phi i32 [ 0, %436 ], [ %97, %432 ]
  %499 = phi i64 [ 0, %436 ], [ %96, %432 ]
  %500 = phi i32 [ %407, %436 ], [ %94, %432 ]
  %501 = phi ptr [ %406, %436 ], [ %92, %432 ]
  %502 = load ptr, ptr %84, align 8, !tbaa !26
  %503 = icmp eq ptr %502, null
  br i1 %503, label %506, label %504

504:                                              ; preds = %497
  %505 = getelementptr inbounds %struct.gz_header_s, ptr %502, i64 0, i32 4
  store ptr null, ptr %505, align 8, !tbaa !64
  br label %506

506:                                              ; preds = %491, %487, %484, %497, %504
  %507 = phi ptr [ %501, %504 ], [ %501, %497 ], [ %476, %484 ], [ %476, %487 ], [ %476, %491 ]
  %508 = phi i32 [ %500, %504 ], [ %500, %497 ], [ %477, %484 ], [ %477, %487 ], [ %477, %491 ]
  %509 = phi i64 [ %499, %504 ], [ %499, %497 ], [ 0, %484 ], [ 0, %487 ], [ 0, %491 ]
  %510 = phi i32 [ %498, %504 ], [ %498, %497 ], [ 0, %484 ], [ 0, %487 ], [ 0, %491 ]
  store i32 16185, ptr %21, align 8, !tbaa !16
  br label %511

511:                                              ; preds = %90, %506
  %512 = phi ptr [ %92, %90 ], [ %507, %506 ]
  %513 = phi i32 [ %94, %90 ], [ %508, %506 ]
  %514 = phi i64 [ %96, %90 ], [ %509, %506 ]
  %515 = phi i32 [ %97, %90 ], [ %510, %506 ]
  %516 = load i32, ptr %52, align 8, !tbaa !24
  %517 = and i32 %516, 1024
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %584, label %519

519:                                              ; preds = %511
  %520 = load i32, ptr %56, align 4, !tbaa !62
  %521 = call i32 @llvm.umin.i32(i32 %520, i32 %513)
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %579, label %523

523:                                              ; preds = %519
  %524 = load ptr, ptr %84, align 8, !tbaa !26
  %525 = icmp eq ptr %524, null
  br i1 %525, label %556, label %526

526:                                              ; preds = %523
  %527 = getelementptr inbounds %struct.gz_header_s, ptr %524, i64 0, i32 4
  %528 = load ptr, ptr %527, align 8, !tbaa !64
  %529 = icmp eq ptr %528, null
  br i1 %529, label %556, label %530

530:                                              ; preds = %526
  %531 = getelementptr inbounds %struct.gz_header_s, ptr %524, i64 0, i32 5
  %532 = load i32, ptr %531, align 8, !tbaa !63
  %533 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %532, i32 %520), !nosanitize !43
  %534 = extractvalue { i32, i1 } %533, 0, !nosanitize !43
  %535 = extractvalue { i32, i1 } %533, 1, !nosanitize !43
  br i1 %535, label %136, label %536, !nosanitize !43

536:                                              ; preds = %530
  %537 = getelementptr inbounds %struct.gz_header_s, ptr %524, i64 0, i32 6
  %538 = load i32, ptr %537, align 4, !tbaa !65
  %539 = icmp ult i32 %534, %538
  br i1 %539, label %540, label %556

540:                                              ; preds = %536
  %541 = zext i32 %534 to i64
  %542 = getelementptr inbounds i8, ptr %528, i64 %541
  %543 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %534, i32 %521), !nosanitize !43
  %544 = extractvalue { i32, i1 } %543, 1, !nosanitize !43
  br i1 %544, label %137, label %545, !nosanitize !43

545:                                              ; preds = %540
  %546 = extractvalue { i32, i1 } %543, 0, !nosanitize !43
  %547 = icmp ugt i32 %546, %538
  br i1 %547, label %548, label %552

548:                                              ; preds = %545
  %549 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %538, i32 %534), !nosanitize !43
  %550 = extractvalue { i32, i1 } %549, 0, !nosanitize !43
  %551 = extractvalue { i32, i1 } %549, 1, !nosanitize !43
  br i1 %551, label %136, label %552, !nosanitize !43

552:                                              ; preds = %545, %548
  %553 = phi i32 [ %550, %548 ], [ %521, %545 ]
  %554 = zext i32 %553 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %542, ptr align 1 %512, i64 %554, i1 false)
  %555 = load i32, ptr %52, align 8, !tbaa !24
  br label %556

556:                                              ; preds = %552, %536, %526, %523
  %557 = phi i32 [ %555, %552 ], [ %516, %536 ], [ %516, %526 ], [ %516, %523 ]
  %558 = and i32 %557, 512
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %567, label %560

560:                                              ; preds = %556
  %561 = load i32, ptr %49, align 8, !tbaa !20
  %562 = and i32 %561, 4
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %567, label %564

564:                                              ; preds = %560
  %565 = load i64, ptr %53, align 8, !tbaa !51
  %566 = call i64 @crc32(i64 noundef %565, ptr noundef %512, i32 noundef %521) #10
  store i64 %566, ptr %53, align 8, !tbaa !51
  br label %567

567:                                              ; preds = %564, %560, %556
  %568 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %513, i32 %521), !nosanitize !43
  %569 = extractvalue { i32, i1 } %568, 0, !nosanitize !43
  %570 = extractvalue { i32, i1 } %568, 1, !nosanitize !43
  br i1 %570, label %136, label %571, !nosanitize !43

571:                                              ; preds = %567
  %572 = load i32, ptr %56, align 4, !tbaa !62
  %573 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %572, i32 %521), !nosanitize !43
  %574 = extractvalue { i32, i1 } %573, 1, !nosanitize !43
  br i1 %574, label %136, label %575, !nosanitize !43

575:                                              ; preds = %571
  %576 = extractvalue { i32, i1 } %573, 0, !nosanitize !43
  %577 = zext i32 %521 to i64
  %578 = getelementptr inbounds i8, ptr %512, i64 %577
  store i32 %576, ptr %56, align 4, !tbaa !62
  br label %579

579:                                              ; preds = %575, %519
  %580 = phi i32 [ %576, %575 ], [ %520, %519 ]
  %581 = phi ptr [ %578, %575 ], [ %512, %519 ]
  %582 = phi i32 [ %569, %575 ], [ %513, %519 ]
  %583 = icmp eq i32 %580, 0
  br i1 %583, label %584, label %2310

584:                                              ; preds = %579, %511
  %585 = phi ptr [ %581, %579 ], [ %512, %511 ]
  %586 = phi i32 [ %582, %579 ], [ %513, %511 ]
  store i32 0, ptr %56, align 4, !tbaa !62
  store i32 16186, ptr %21, align 8, !tbaa !16
  br label %587

587:                                              ; preds = %90, %584
  %588 = phi ptr [ %92, %90 ], [ %585, %584 ]
  %589 = phi i32 [ %94, %90 ], [ %586, %584 ]
  %590 = phi i64 [ %96, %90 ], [ %514, %584 ]
  %591 = phi i32 [ %97, %90 ], [ %515, %584 ]
  %592 = load i32, ptr %52, align 8, !tbaa !24
  %593 = and i32 %592, 2048
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %642, label %595

595:                                              ; preds = %587
  %596 = icmp eq i32 %589, 0
  br i1 %596, label %2310, label %597

597:                                              ; preds = %595
  %598 = zext i32 %589 to i64
  br label %599

599:                                              ; preds = %597, %619
  %600 = phi i64 [ 0, %597 ], [ %601, %619 ]
  %601 = add nuw nsw i64 %600, 1
  %602 = getelementptr inbounds i8, ptr %588, i64 %600
  %603 = load i8, ptr %602, align 1, !tbaa !40
  %604 = load ptr, ptr %84, align 8, !tbaa !26
  %605 = icmp eq ptr %604, null
  br i1 %605, label %619, label %606

606:                                              ; preds = %599
  %607 = getelementptr inbounds %struct.gz_header_s, ptr %604, i64 0, i32 7
  %608 = load ptr, ptr %607, align 8, !tbaa !66
  %609 = icmp eq ptr %608, null
  br i1 %609, label %619, label %610

610:                                              ; preds = %606
  %611 = load i32, ptr %56, align 4, !tbaa !62
  %612 = getelementptr inbounds %struct.gz_header_s, ptr %604, i64 0, i32 8
  %613 = load i32, ptr %612, align 8, !tbaa !67
  %614 = icmp ult i32 %611, %613
  br i1 %614, label %615, label %619

615:                                              ; preds = %610
  %616 = add nuw i32 %611, 1
  store i32 %616, ptr %56, align 4, !tbaa !62
  %617 = zext i32 %611 to i64
  %618 = getelementptr inbounds i8, ptr %608, i64 %617
  store i8 %603, ptr %618, align 1, !tbaa !40
  br label %619

619:                                              ; preds = %599, %606, %610, %615
  %620 = icmp ne i8 %603, 0
  %621 = icmp ult i64 %601, %598
  %622 = select i1 %620, i1 %621, i1 false
  br i1 %622, label %599, label %623, !llvm.loop !68

623:                                              ; preds = %619
  %624 = trunc i64 %601 to i32
  %625 = load i32, ptr %52, align 8, !tbaa !24
  %626 = and i32 %625, 512
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %635, label %628

628:                                              ; preds = %623
  %629 = load i32, ptr %49, align 8, !tbaa !20
  %630 = and i32 %629, 4
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %635, label %632

632:                                              ; preds = %628
  %633 = load i64, ptr %53, align 8, !tbaa !51
  %634 = call i64 @crc32(i64 noundef %633, ptr noundef nonnull %588, i32 noundef %624) #10
  store i64 %634, ptr %53, align 8, !tbaa !51
  br label %635

635:                                              ; preds = %632, %628, %623
  %636 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %589, i32 %624), !nosanitize !43
  %637 = extractvalue { i32, i1 } %636, 1, !nosanitize !43
  br i1 %637, label %136, label %638, !nosanitize !43

638:                                              ; preds = %635
  %639 = extractvalue { i32, i1 } %636, 0, !nosanitize !43
  %640 = and i64 %601, 4294967295
  %641 = getelementptr inbounds i8, ptr %588, i64 %640
  br i1 %620, label %2310, label %647

642:                                              ; preds = %587
  %643 = load ptr, ptr %84, align 8, !tbaa !26
  %644 = icmp eq ptr %643, null
  br i1 %644, label %647, label %645

645:                                              ; preds = %642
  %646 = getelementptr inbounds %struct.gz_header_s, ptr %643, i64 0, i32 7
  store ptr null, ptr %646, align 8, !tbaa !66
  br label %647

647:                                              ; preds = %642, %645, %638
  %648 = phi ptr [ %641, %638 ], [ %588, %645 ], [ %588, %642 ]
  %649 = phi i32 [ %639, %638 ], [ %589, %645 ], [ %589, %642 ]
  store i32 0, ptr %56, align 4, !tbaa !62
  store i32 16187, ptr %21, align 8, !tbaa !16
  br label %650

650:                                              ; preds = %90, %647
  %651 = phi ptr [ %92, %90 ], [ %648, %647 ]
  %652 = phi i32 [ %94, %90 ], [ %649, %647 ]
  %653 = phi i64 [ %96, %90 ], [ %590, %647 ]
  %654 = phi i32 [ %97, %90 ], [ %591, %647 ]
  %655 = load i32, ptr %52, align 8, !tbaa !24
  %656 = and i32 %655, 4096
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %705, label %658

658:                                              ; preds = %650
  %659 = icmp eq i32 %652, 0
  br i1 %659, label %2310, label %660

660:                                              ; preds = %658
  %661 = zext i32 %652 to i64
  br label %662

662:                                              ; preds = %660, %682
  %663 = phi i64 [ 0, %660 ], [ %664, %682 ]
  %664 = add nuw nsw i64 %663, 1
  %665 = getelementptr inbounds i8, ptr %651, i64 %663
  %666 = load i8, ptr %665, align 1, !tbaa !40
  %667 = load ptr, ptr %84, align 8, !tbaa !26
  %668 = icmp eq ptr %667, null
  br i1 %668, label %682, label %669

669:                                              ; preds = %662
  %670 = getelementptr inbounds %struct.gz_header_s, ptr %667, i64 0, i32 9
  %671 = load ptr, ptr %670, align 8, !tbaa !69
  %672 = icmp eq ptr %671, null
  br i1 %672, label %682, label %673

673:                                              ; preds = %669
  %674 = load i32, ptr %56, align 4, !tbaa !62
  %675 = getelementptr inbounds %struct.gz_header_s, ptr %667, i64 0, i32 10
  %676 = load i32, ptr %675, align 8, !tbaa !70
  %677 = icmp ult i32 %674, %676
  br i1 %677, label %678, label %682

678:                                              ; preds = %673
  %679 = add nuw i32 %674, 1
  store i32 %679, ptr %56, align 4, !tbaa !62
  %680 = zext i32 %674 to i64
  %681 = getelementptr inbounds i8, ptr %671, i64 %680
  store i8 %666, ptr %681, align 1, !tbaa !40
  br label %682

682:                                              ; preds = %662, %669, %673, %678
  %683 = icmp ne i8 %666, 0
  %684 = icmp ult i64 %664, %661
  %685 = select i1 %683, i1 %684, i1 false
  br i1 %685, label %662, label %686, !llvm.loop !71

686:                                              ; preds = %682
  %687 = trunc i64 %664 to i32
  %688 = load i32, ptr %52, align 8, !tbaa !24
  %689 = and i32 %688, 512
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %698, label %691

691:                                              ; preds = %686
  %692 = load i32, ptr %49, align 8, !tbaa !20
  %693 = and i32 %692, 4
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %698, label %695

695:                                              ; preds = %691
  %696 = load i64, ptr %53, align 8, !tbaa !51
  %697 = call i64 @crc32(i64 noundef %696, ptr noundef nonnull %651, i32 noundef %687) #10
  store i64 %697, ptr %53, align 8, !tbaa !51
  br label %698

698:                                              ; preds = %695, %691, %686
  %699 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %652, i32 %687), !nosanitize !43
  %700 = extractvalue { i32, i1 } %699, 1, !nosanitize !43
  br i1 %700, label %136, label %701, !nosanitize !43

701:                                              ; preds = %698
  %702 = extractvalue { i32, i1 } %699, 0, !nosanitize !43
  %703 = and i64 %664, 4294967295
  %704 = getelementptr inbounds i8, ptr %651, i64 %703
  br i1 %683, label %2310, label %710

705:                                              ; preds = %650
  %706 = load ptr, ptr %84, align 8, !tbaa !26
  %707 = icmp eq ptr %706, null
  br i1 %707, label %710, label %708

708:                                              ; preds = %705
  %709 = getelementptr inbounds %struct.gz_header_s, ptr %706, i64 0, i32 9
  store ptr null, ptr %709, align 8, !tbaa !69
  br label %710

710:                                              ; preds = %705, %708, %701
  %711 = phi ptr [ %704, %701 ], [ %651, %708 ], [ %651, %705 ]
  %712 = phi i32 [ %702, %701 ], [ %652, %708 ], [ %652, %705 ]
  store i32 16188, ptr %21, align 8, !tbaa !16
  br label %713

713:                                              ; preds = %90, %710
  %714 = phi ptr [ %92, %90 ], [ %711, %710 ]
  %715 = phi i32 [ %94, %90 ], [ %712, %710 ]
  %716 = phi i64 [ %96, %90 ], [ %653, %710 ]
  %717 = phi i32 [ %97, %90 ], [ %654, %710 ]
  %718 = load i32, ptr %52, align 8, !tbaa !24
  %719 = and i32 %718, 512
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %770, label %721

721:                                              ; preds = %713
  %722 = icmp ult i32 %717, 16
  br i1 %722, label %723, label %757

723:                                              ; preds = %721
  %724 = zext nneg i32 %717 to i64
  %725 = icmp eq i32 %715, 0
  br i1 %725, label %2204, label %726

726:                                              ; preds = %723
  %727 = load i8, ptr %714, align 1, !tbaa !40
  %728 = zext i8 %727 to i64
  %729 = shl nuw nsw i64 %728, %724
  %730 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %716, i64 %729), !nosanitize !43
  %731 = extractvalue { i64, i1 } %730, 1, !nosanitize !43
  br i1 %731, label %137, label %732, !nosanitize !43

732:                                              ; preds = %726
  %733 = extractvalue { i64, i1 } %730, 0, !nosanitize !43
  %734 = getelementptr inbounds i8, ptr %714, i64 1
  %735 = add i32 %715, -1
  %736 = add nuw nsw i64 %724, 8
  %737 = icmp ult i32 %717, 8
  br i1 %737, label %738, label %751, !llvm.loop !72

738:                                              ; preds = %732
  %739 = icmp eq i32 %735, 0
  br i1 %739, label %2204, label %740

740:                                              ; preds = %738
  %741 = load i8, ptr %734, align 1, !tbaa !40
  %742 = zext i8 %741 to i64
  %743 = shl nuw nsw i64 %742, %736
  %744 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %733, i64 %743), !nosanitize !43
  %745 = extractvalue { i64, i1 } %744, 1, !nosanitize !43
  br i1 %745, label %137, label %746, !nosanitize !43

746:                                              ; preds = %740
  %747 = extractvalue { i64, i1 } %744, 0, !nosanitize !43
  %748 = getelementptr inbounds i8, ptr %714, i64 2
  %749 = add i32 %715, -2
  %750 = or disjoint i64 %724, 16
  br label %751

751:                                              ; preds = %746, %732
  %752 = phi i64 [ %733, %732 ], [ %747, %746 ]
  %753 = phi ptr [ %734, %732 ], [ %748, %746 ]
  %754 = phi i32 [ %735, %732 ], [ %749, %746 ]
  %755 = phi i64 [ %736, %732 ], [ %750, %746 ]
  %756 = trunc i64 %755 to i32
  br label %757

757:                                              ; preds = %751, %721
  %758 = phi ptr [ %714, %721 ], [ %753, %751 ]
  %759 = phi i32 [ %715, %721 ], [ %754, %751 ]
  %760 = phi i64 [ %716, %721 ], [ %752, %751 ]
  %761 = phi i32 [ %717, %721 ], [ %756, %751 ]
  %762 = load i32, ptr %49, align 8, !tbaa !20
  %763 = and i32 %762, 4
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %770, label %765

765:                                              ; preds = %757
  %766 = load i64, ptr %53, align 8, !tbaa !51
  %767 = and i64 %766, 65535
  %768 = icmp eq i64 %760, %767
  br i1 %768, label %770, label %769

769:                                              ; preds = %765
  store ptr @.str.5, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2183

770:                                              ; preds = %765, %757, %713
  %771 = phi ptr [ %714, %713 ], [ %758, %757 ], [ %758, %765 ]
  %772 = phi i32 [ %715, %713 ], [ %759, %757 ], [ %759, %765 ]
  %773 = phi i64 [ %716, %713 ], [ 0, %757 ], [ 0, %765 ]
  %774 = phi i32 [ %717, %713 ], [ 0, %757 ], [ 0, %765 ]
  %775 = load ptr, ptr %84, align 8, !tbaa !26
  %776 = icmp eq ptr %775, null
  br i1 %776, label %782, label %777

777:                                              ; preds = %770
  %778 = lshr i32 %718, 9
  %779 = and i32 %778, 1
  %780 = getelementptr inbounds %struct.gz_header_s, ptr %775, i64 0, i32 11
  store i32 %779, ptr %780, align 4, !tbaa !73
  %781 = getelementptr inbounds %struct.gz_header_s, ptr %775, i64 0, i32 12
  store i32 1, ptr %781, align 8, !tbaa !52
  br label %782

782:                                              ; preds = %777, %770
  %783 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  store i64 %783, ptr %53, align 8, !tbaa !51
  store i64 %783, ptr %54, align 8, !tbaa !21
  store i32 16191, ptr %21, align 8, !tbaa !16
  br label %2183

784:                                              ; preds = %113
  %785 = load i8, ptr %92, align 1, !tbaa !40
  %786 = zext i8 %785 to i64
  %787 = shl nuw nsw i64 %786, %114
  %788 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %96, i64 %787), !nosanitize !43
  %789 = extractvalue { i64, i1 } %788, 1, !nosanitize !43
  br i1 %789, label %137, label %790, !nosanitize !43

790:                                              ; preds = %784
  %791 = extractvalue { i64, i1 } %788, 0, !nosanitize !43
  %792 = getelementptr inbounds i8, ptr %92, i64 1
  %793 = add i32 %94, -1
  %794 = add nuw nsw i64 %114, 8
  %795 = icmp ult i32 %97, 24
  br i1 %795, label %796, label %836, !llvm.loop !74

796:                                              ; preds = %790
  %797 = icmp eq i32 %793, 0
  br i1 %797, label %2234, label %798

798:                                              ; preds = %796
  %799 = load i8, ptr %792, align 1, !tbaa !40
  %800 = zext i8 %799 to i64
  %801 = shl nuw nsw i64 %800, %794
  %802 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %791, i64 %801), !nosanitize !43
  %803 = extractvalue { i64, i1 } %802, 1, !nosanitize !43
  br i1 %803, label %137, label %804, !nosanitize !43

804:                                              ; preds = %798
  %805 = extractvalue { i64, i1 } %802, 0, !nosanitize !43
  %806 = getelementptr inbounds i8, ptr %92, i64 2
  %807 = add i32 %94, -2
  %808 = add nuw nsw i64 %114, 16
  %809 = icmp ult i32 %97, 16
  br i1 %809, label %810, label %836, !llvm.loop !74

810:                                              ; preds = %804
  %811 = icmp eq i32 %807, 0
  br i1 %811, label %2234, label %812

812:                                              ; preds = %810
  %813 = load i8, ptr %806, align 1, !tbaa !40
  %814 = zext i8 %813 to i64
  %815 = shl nuw nsw i64 %814, %808
  %816 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %805, i64 %815), !nosanitize !43
  %817 = extractvalue { i64, i1 } %816, 1, !nosanitize !43
  br i1 %817, label %137, label %818, !nosanitize !43

818:                                              ; preds = %812
  %819 = extractvalue { i64, i1 } %816, 0, !nosanitize !43
  %820 = getelementptr inbounds i8, ptr %92, i64 3
  %821 = add i32 %94, -3
  %822 = add nuw nsw i64 %114, 24
  %823 = icmp ult i32 %97, 8
  br i1 %823, label %824, label %836, !llvm.loop !74

824:                                              ; preds = %818
  %825 = icmp eq i32 %821, 0
  br i1 %825, label %2234, label %826

826:                                              ; preds = %824
  %827 = load i8, ptr %820, align 1, !tbaa !40
  %828 = zext i8 %827 to i64
  %829 = shl nuw nsw i64 %828, %822
  %830 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %819, i64 %829), !nosanitize !43
  %831 = extractvalue { i64, i1 } %830, 1, !nosanitize !43
  br i1 %831, label %137, label %832, !nosanitize !43

832:                                              ; preds = %826
  %833 = extractvalue { i64, i1 } %830, 0, !nosanitize !43
  %834 = getelementptr inbounds i8, ptr %92, i64 4
  %835 = add i32 %94, -4
  br label %836

836:                                              ; preds = %790, %804, %818, %832, %111
  %837 = phi ptr [ %92, %111 ], [ %792, %790 ], [ %806, %804 ], [ %820, %818 ], [ %834, %832 ]
  %838 = phi i32 [ %94, %111 ], [ %793, %790 ], [ %807, %804 ], [ %821, %818 ], [ %835, %832 ]
  %839 = phi i64 [ %96, %111 ], [ %791, %790 ], [ %805, %804 ], [ %819, %818 ], [ %833, %832 ]
  %840 = trunc i64 %839 to i32
  %841 = call i32 @llvm.bswap.i32(i32 %840)
  %842 = zext i32 %841 to i64
  store i64 %842, ptr %53, align 8, !tbaa !51
  store i64 %842, ptr %54, align 8, !tbaa !21
  store i32 16190, ptr %21, align 8, !tbaa !16
  br label %843

843:                                              ; preds = %90, %836
  %844 = phi ptr [ %92, %90 ], [ %837, %836 ]
  %845 = phi i32 [ %94, %90 ], [ %838, %836 ]
  %846 = phi i64 [ %96, %90 ], [ 0, %836 ]
  %847 = phi i32 [ %97, %90 ], [ 0, %836 ]
  %848 = load i32, ptr %80, align 4, !tbaa !23
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %850, label %851

850:                                              ; preds = %843
  store ptr %93, ptr %26, align 8, !tbaa !44
  store i32 %95, ptr %41, align 8, !tbaa !47
  store ptr %844, ptr %0, align 8, !tbaa !45
  store i32 %845, ptr %43, align 8, !tbaa !46
  store i64 %846, ptr %45, align 8, !tbaa !27
  store i32 %847, ptr %47, align 8, !tbaa !28
  br label %2495

851:                                              ; preds = %843
  %852 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  store i64 %852, ptr %53, align 8, !tbaa !51
  store i64 %852, ptr %54, align 8, !tbaa !21
  store i32 16191, ptr %21, align 8, !tbaa !16
  br label %853

853:                                              ; preds = %90, %851
  %854 = phi ptr [ %92, %90 ], [ %844, %851 ]
  %855 = phi i32 [ %94, %90 ], [ %845, %851 ]
  %856 = phi i64 [ %96, %90 ], [ %846, %851 ]
  %857 = phi i32 [ %97, %90 ], [ %847, %851 ]
  br i1 %82, label %2310, label %858

858:                                              ; preds = %853, %90
  %859 = phi ptr [ %92, %90 ], [ %854, %853 ]
  %860 = phi i32 [ %94, %90 ], [ %855, %853 ]
  %861 = phi i64 [ %96, %90 ], [ %856, %853 ]
  %862 = phi i32 [ %97, %90 ], [ %857, %853 ]
  %863 = load i32, ptr %83, align 4, !tbaa !22
  %864 = icmp eq i32 %863, 0
  br i1 %864, label %865, label %870

865:                                              ; preds = %858
  %866 = icmp ult i32 %862, 3
  br i1 %866, label %867, label %889

867:                                              ; preds = %865
  %868 = or disjoint i32 %862, 8
  %869 = icmp eq i32 %860, 0
  br i1 %869, label %2310, label %878

870:                                              ; preds = %858
  %871 = and i32 %862, 7
  %872 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %862, i32 %871), !nosanitize !43
  %873 = extractvalue { i32, i1 } %872, 1, !nosanitize !43
  br i1 %873, label %136, label %874, !nosanitize !43

874:                                              ; preds = %870
  %875 = extractvalue { i32, i1 } %872, 0, !nosanitize !43
  %876 = zext nneg i32 %871 to i64
  %877 = lshr i64 %861, %876
  store i32 16206, ptr %21, align 8, !tbaa !16
  br label %2183

878:                                              ; preds = %867
  %879 = load i8, ptr %859, align 1, !tbaa !40
  %880 = zext i8 %879 to i64
  %881 = zext nneg i32 %862 to i64
  %882 = shl nuw nsw i64 %880, %881
  %883 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %861, i64 %882), !nosanitize !43
  %884 = extractvalue { i64, i1 } %883, 1, !nosanitize !43
  br i1 %884, label %137, label %885, !nosanitize !43

885:                                              ; preds = %878
  %886 = extractvalue { i64, i1 } %883, 0, !nosanitize !43
  %887 = getelementptr inbounds i8, ptr %859, i64 1
  %888 = add i32 %860, -1
  br label %889

889:                                              ; preds = %885, %865
  %890 = phi ptr [ %887, %885 ], [ %859, %865 ]
  %891 = phi i32 [ %888, %885 ], [ %860, %865 ]
  %892 = phi i64 [ %886, %885 ], [ %861, %865 ]
  %893 = phi i32 [ %868, %885 ], [ %862, %865 ]
  %894 = trunc i64 %892 to i32
  %895 = and i32 %894, 1
  store i32 %895, ptr %83, align 4, !tbaa !22
  %896 = lshr i32 %894, 1
  %897 = and i32 %896, 3
  switch i32 %897, label %903 [
    i32 0, label %904
    i32 1, label %898
    i32 2, label %902
  ]

898:                                              ; preds = %889
  call void @inflate_fixed(ptr noundef nonnull %15) #10
  store i32 16199, ptr %21, align 8, !tbaa !16
  br i1 %70, label %899, label %906

899:                                              ; preds = %898
  %900 = add i32 %893, -3
  %901 = lshr i64 %892, 3
  br label %2310

902:                                              ; preds = %889
  br label %904

903:                                              ; preds = %889
  store ptr @.str.6, ptr %55, align 8, !tbaa !41
  br label %904

904:                                              ; preds = %889, %902, %903
  %905 = phi i32 [ 16209, %903 ], [ 16196, %902 ], [ 16193, %889 ]
  store i32 %905, ptr %21, align 8, !tbaa !16
  br label %906

906:                                              ; preds = %904, %898
  %907 = add i32 %893, -3
  %908 = lshr i64 %892, 3
  br label %2183

909:                                              ; preds = %90
  %910 = and i32 %97, 7
  %911 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %97, i32 %910), !nosanitize !43
  %912 = extractvalue { i32, i1 } %911, 1, !nosanitize !43
  br i1 %912, label %136, label %913, !nosanitize !43

913:                                              ; preds = %909
  %914 = zext nneg i32 %910 to i64
  %915 = lshr i64 %96, %914
  %916 = extractvalue { i32, i1 } %911, 0
  %917 = icmp ult i32 %916, 32
  br i1 %917, label %918, label %980

918:                                              ; preds = %913
  %919 = and i32 %97, -8
  %920 = zext i32 %919 to i64
  %921 = icmp eq i32 %94, 0
  br i1 %921, label %2240, label %922

922:                                              ; preds = %918
  %923 = load i8, ptr %92, align 1, !tbaa !40
  %924 = zext i8 %923 to i64
  %925 = shl nuw nsw i64 %924, %920
  %926 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %915, i64 %925), !nosanitize !43
  %927 = extractvalue { i64, i1 } %926, 1, !nosanitize !43
  br i1 %927, label %137, label %928, !nosanitize !43

928:                                              ; preds = %922
  %929 = extractvalue { i64, i1 } %926, 0, !nosanitize !43
  %930 = getelementptr inbounds i8, ptr %92, i64 1
  %931 = add i32 %94, -1
  %932 = add nuw nsw i64 %920, 8
  %933 = icmp ult i32 %919, 24
  br i1 %933, label %934, label %974, !llvm.loop !75

934:                                              ; preds = %928
  %935 = icmp eq i32 %931, 0
  br i1 %935, label %2240, label %936

936:                                              ; preds = %934
  %937 = load i8, ptr %930, align 1, !tbaa !40
  %938 = zext i8 %937 to i64
  %939 = shl nuw nsw i64 %938, %932
  %940 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %929, i64 %939), !nosanitize !43
  %941 = extractvalue { i64, i1 } %940, 1, !nosanitize !43
  br i1 %941, label %137, label %942, !nosanitize !43

942:                                              ; preds = %936
  %943 = extractvalue { i64, i1 } %940, 0, !nosanitize !43
  %944 = getelementptr inbounds i8, ptr %92, i64 2
  %945 = add i32 %94, -2
  %946 = add nuw nsw i64 %920, 16
  %947 = icmp ult i32 %919, 16
  br i1 %947, label %948, label %974, !llvm.loop !75

948:                                              ; preds = %942
  %949 = icmp eq i32 %945, 0
  br i1 %949, label %2240, label %950

950:                                              ; preds = %948
  %951 = load i8, ptr %944, align 1, !tbaa !40
  %952 = zext i8 %951 to i64
  %953 = shl nuw nsw i64 %952, %946
  %954 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %943, i64 %953), !nosanitize !43
  %955 = extractvalue { i64, i1 } %954, 1, !nosanitize !43
  br i1 %955, label %137, label %956, !nosanitize !43

956:                                              ; preds = %950
  %957 = extractvalue { i64, i1 } %954, 0, !nosanitize !43
  %958 = getelementptr inbounds i8, ptr %92, i64 3
  %959 = add i32 %94, -3
  %960 = add nuw nsw i64 %920, 24
  %961 = icmp eq i32 %919, 0
  br i1 %961, label %962, label %974, !llvm.loop !75

962:                                              ; preds = %956
  %963 = icmp eq i32 %959, 0
  br i1 %963, label %2240, label %964

964:                                              ; preds = %962
  %965 = load i8, ptr %958, align 1, !tbaa !40
  %966 = zext i8 %965 to i64
  %967 = shl nuw nsw i64 %966, %960
  %968 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %957, i64 %967), !nosanitize !43
  %969 = extractvalue { i64, i1 } %968, 1, !nosanitize !43
  br i1 %969, label %137, label %970, !nosanitize !43

970:                                              ; preds = %964
  %971 = extractvalue { i64, i1 } %968, 0, !nosanitize !43
  %972 = getelementptr inbounds i8, ptr %92, i64 4
  %973 = add i32 %94, -4
  br label %974

974:                                              ; preds = %970, %956, %942, %928
  %975 = phi i64 [ %929, %928 ], [ %943, %942 ], [ %957, %956 ], [ %971, %970 ]
  %976 = phi ptr [ %930, %928 ], [ %944, %942 ], [ %958, %956 ], [ %972, %970 ]
  %977 = phi i32 [ %931, %928 ], [ %945, %942 ], [ %959, %956 ], [ %973, %970 ]
  %978 = phi i64 [ %932, %928 ], [ %946, %942 ], [ %960, %956 ], [ 32, %970 ]
  %979 = trunc i64 %978 to i32
  br label %980

980:                                              ; preds = %974, %913
  %981 = phi ptr [ %92, %913 ], [ %976, %974 ]
  %982 = phi i32 [ %94, %913 ], [ %977, %974 ]
  %983 = phi i64 [ %915, %913 ], [ %975, %974 ]
  %984 = phi i32 [ %916, %913 ], [ %979, %974 ]
  %985 = and i64 %983, 65535
  %986 = lshr i64 %983, 16
  %987 = xor i64 %986, %985
  %988 = icmp eq i64 %987, 65535
  br i1 %988, label %990, label %989

989:                                              ; preds = %980
  store ptr @.str.7, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2183

990:                                              ; preds = %980
  %991 = trunc i64 %983 to i32
  %992 = and i32 %991, 65535
  store i32 %992, ptr %56, align 4, !tbaa !62
  store i32 16194, ptr %21, align 8, !tbaa !16
  br i1 %70, label %2310, label %993

993:                                              ; preds = %990, %90
  %994 = phi ptr [ %92, %90 ], [ %981, %990 ]
  %995 = phi i32 [ %94, %90 ], [ %982, %990 ]
  %996 = phi i64 [ %96, %90 ], [ 0, %990 ]
  %997 = phi i32 [ %97, %90 ], [ 0, %990 ]
  store i32 16195, ptr %21, align 8, !tbaa !16
  br label %998

998:                                              ; preds = %90, %993
  %999 = phi ptr [ %92, %90 ], [ %994, %993 ]
  %1000 = phi i32 [ %94, %90 ], [ %995, %993 ]
  %1001 = phi i64 [ %96, %90 ], [ %996, %993 ]
  %1002 = phi i32 [ %97, %90 ], [ %997, %993 ]
  %1003 = load i32, ptr %56, align 4, !tbaa !62
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %1026, label %1005

1005:                                             ; preds = %998
  %1006 = call i32 @llvm.umin.i32(i32 %1003, i32 %1000)
  %1007 = call i32 @llvm.umin.i32(i32 %1006, i32 %95)
  %1008 = icmp eq i32 %1007, 0
  br i1 %1008, label %2310, label %1009

1009:                                             ; preds = %1005
  %1010 = zext i32 %1007 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %93, ptr align 1 %999, i64 %1010, i1 false)
  %1011 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1000, i32 %1007), !nosanitize !43
  %1012 = extractvalue { i32, i1 } %1011, 0, !nosanitize !43
  %1013 = extractvalue { i32, i1 } %1011, 1, !nosanitize !43
  br i1 %1013, label %136, label %1014, !nosanitize !43

1014:                                             ; preds = %1009
  %1015 = getelementptr inbounds i8, ptr %999, i64 %1010
  %1016 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %95, i32 %1007), !nosanitize !43
  %1017 = extractvalue { i32, i1 } %1016, 0, !nosanitize !43
  %1018 = extractvalue { i32, i1 } %1016, 1, !nosanitize !43
  br i1 %1018, label %136, label %1019, !nosanitize !43

1019:                                             ; preds = %1014
  %1020 = load i32, ptr %56, align 4, !tbaa !62
  %1021 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1020, i32 %1007), !nosanitize !43
  %1022 = extractvalue { i32, i1 } %1021, 1, !nosanitize !43
  br i1 %1022, label %136, label %1023, !nosanitize !43

1023:                                             ; preds = %1019
  %1024 = extractvalue { i32, i1 } %1021, 0, !nosanitize !43
  %1025 = getelementptr inbounds i8, ptr %93, i64 %1010
  store i32 %1024, ptr %56, align 4, !tbaa !62
  br label %2183

1026:                                             ; preds = %998
  store i32 16191, ptr %21, align 8, !tbaa !16
  br label %2183

1027:                                             ; preds = %108
  %1028 = load i8, ptr %92, align 1, !tbaa !40
  %1029 = zext i8 %1028 to i64
  %1030 = shl nuw nsw i64 %1029, %109
  %1031 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %96, i64 %1030), !nosanitize !43
  %1032 = extractvalue { i64, i1 } %1031, 1, !nosanitize !43
  br i1 %1032, label %137, label %1033, !nosanitize !43

1033:                                             ; preds = %1027
  %1034 = extractvalue { i64, i1 } %1031, 0, !nosanitize !43
  %1035 = getelementptr inbounds i8, ptr %92, i64 1
  %1036 = add i32 %94, -1
  %1037 = add nuw nsw i64 %109, 8
  %1038 = icmp ult i32 %97, 6
  br i1 %1038, label %1039, label %1052, !llvm.loop !76

1039:                                             ; preds = %1033
  %1040 = icmp eq i32 %1036, 0
  br i1 %1040, label %2291, label %1041

1041:                                             ; preds = %1039
  %1042 = load i8, ptr %1035, align 1, !tbaa !40
  %1043 = zext i8 %1042 to i64
  %1044 = shl nuw nsw i64 %1043, %1037
  %1045 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1034, i64 %1044), !nosanitize !43
  %1046 = extractvalue { i64, i1 } %1045, 1, !nosanitize !43
  br i1 %1046, label %137, label %1047, !nosanitize !43

1047:                                             ; preds = %1041
  %1048 = extractvalue { i64, i1 } %1045, 0, !nosanitize !43
  %1049 = getelementptr inbounds i8, ptr %92, i64 2
  %1050 = add i32 %94, -2
  %1051 = or disjoint i64 %109, 16
  br label %1052

1052:                                             ; preds = %1047, %1033
  %1053 = phi i64 [ %1034, %1033 ], [ %1048, %1047 ]
  %1054 = phi ptr [ %1035, %1033 ], [ %1049, %1047 ]
  %1055 = phi i32 [ %1036, %1033 ], [ %1050, %1047 ]
  %1056 = phi i64 [ %1037, %1033 ], [ %1051, %1047 ]
  %1057 = trunc i64 %1056 to i32
  br label %1058

1058:                                             ; preds = %1052, %106
  %1059 = phi ptr [ %92, %106 ], [ %1054, %1052 ]
  %1060 = phi i32 [ %94, %106 ], [ %1055, %1052 ]
  %1061 = phi i64 [ %96, %106 ], [ %1053, %1052 ]
  %1062 = phi i32 [ %97, %106 ], [ %1057, %1052 ]
  %1063 = trunc i64 %1061 to i32
  %1064 = and i32 %1063, 31
  %1065 = add nuw nsw i32 %1064, 257
  store i32 %1065, ptr %57, align 4, !tbaa !77
  %1066 = lshr i32 %1063, 5
  %1067 = and i32 %1066, 31
  %1068 = add nuw nsw i32 %1067, 1
  store i32 %1068, ptr %58, align 8, !tbaa !78
  %1069 = lshr i32 %1063, 10
  %1070 = and i32 %1069, 15
  %1071 = add nuw nsw i32 %1070, 4
  store i32 %1071, ptr %59, align 8, !tbaa !79
  %1072 = lshr i64 %1061, 14
  %1073 = add i32 %1062, -14
  %1074 = icmp ugt i32 %1064, 29
  %1075 = icmp ugt i32 %1067, 29
  %1076 = or i1 %1074, %1075
  br i1 %1076, label %1077, label %1078

1077:                                             ; preds = %1058
  store ptr @.str.8, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2183

1078:                                             ; preds = %1058
  store i32 0, ptr %60, align 4, !tbaa !80
  store i32 16197, ptr %21, align 8, !tbaa !16
  br label %1083

1079:                                             ; preds = %90
  %1080 = load i32, ptr %59, align 8, !tbaa !79
  %1081 = load i32, ptr %60, align 4, !tbaa !80
  %1082 = icmp ult i32 %1081, %1080
  br i1 %1082, label %1083, label %1092

1083:                                             ; preds = %1078, %1079
  %1084 = phi i32 [ %1073, %1078 ], [ %97, %1079 ]
  %1085 = phi i64 [ %1072, %1078 ], [ %96, %1079 ]
  %1086 = phi i32 [ %1060, %1078 ], [ %94, %1079 ]
  %1087 = phi ptr [ %1059, %1078 ], [ %92, %1079 ]
  %1088 = phi i32 [ %1071, %1078 ], [ %1080, %1079 ]
  %1089 = phi i32 [ 0, %1078 ], [ %1081, %1079 ]
  %1090 = zext i32 %1089 to i64
  %1091 = zext i32 %1088 to i64
  br label %1101

1092:                                             ; preds = %1122, %1079
  %1093 = phi ptr [ %92, %1079 ], [ %1123, %1122 ]
  %1094 = phi i32 [ %94, %1079 ], [ %1124, %1122 ]
  %1095 = phi i64 [ %96, %1079 ], [ %1136, %1122 ]
  %1096 = phi i32 [ %97, %1079 ], [ %1135, %1122 ]
  %1097 = phi i32 [ %1081, %1079 ], [ %1088, %1122 ]
  %1098 = icmp ult i32 %1097, 19
  br i1 %1098, label %1099, label %1148

1099:                                             ; preds = %1092
  %1100 = zext nneg i32 %1097 to i64
  br label %1138

1101:                                             ; preds = %1083, %1122
  %1102 = phi i64 [ %1090, %1083 ], [ %1127, %1122 ]
  %1103 = phi i32 [ %1084, %1083 ], [ %1135, %1122 ]
  %1104 = phi i64 [ %1085, %1083 ], [ %1136, %1122 ]
  %1105 = phi i32 [ %1086, %1083 ], [ %1124, %1122 ]
  %1106 = phi ptr [ %1087, %1083 ], [ %1123, %1122 ]
  %1107 = icmp ult i32 %1103, 3
  br i1 %1107, label %1108, label %1122

1108:                                             ; preds = %1101
  %1109 = or disjoint i32 %1103, 8
  %1110 = icmp eq i32 %1105, 0
  br i1 %1110, label %2310, label %1111

1111:                                             ; preds = %1108
  %1112 = load i8, ptr %1106, align 1, !tbaa !40
  %1113 = zext i8 %1112 to i64
  %1114 = zext nneg i32 %1103 to i64
  %1115 = shl nuw nsw i64 %1113, %1114
  %1116 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1104, i64 %1115), !nosanitize !43
  %1117 = extractvalue { i64, i1 } %1116, 1, !nosanitize !43
  br i1 %1117, label %137, label %1118, !nosanitize !43

1118:                                             ; preds = %1111
  %1119 = extractvalue { i64, i1 } %1116, 0, !nosanitize !43
  %1120 = getelementptr inbounds i8, ptr %1106, i64 1
  %1121 = add i32 %1105, -1
  br label %1122

1122:                                             ; preds = %1101, %1118
  %1123 = phi ptr [ %1120, %1118 ], [ %1106, %1101 ]
  %1124 = phi i32 [ %1121, %1118 ], [ %1105, %1101 ]
  %1125 = phi i64 [ %1119, %1118 ], [ %1104, %1101 ]
  %1126 = phi i32 [ %1109, %1118 ], [ %1103, %1101 ]
  %1127 = add nuw nsw i64 %1102, 1
  %1128 = trunc i64 %1125 to i16
  %1129 = and i16 %1128, 7
  %1130 = trunc i64 %1127 to i32
  store i32 %1130, ptr %60, align 4, !tbaa !80
  %1131 = getelementptr inbounds [19 x i16], ptr @inflate.order, i64 0, i64 %1102
  %1132 = load i16, ptr %1131, align 2, !tbaa !81
  %1133 = zext i16 %1132 to i64
  %1134 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1133
  store i16 %1129, ptr %1134, align 2, !tbaa !81
  %1135 = add i32 %1126, -3
  %1136 = lshr i64 %1125, 3
  %1137 = icmp eq i64 %1127, %1091
  br i1 %1137, label %1092, label %1101, !llvm.loop !83

1138:                                             ; preds = %1099, %1138
  %1139 = phi i64 [ %1100, %1099 ], [ %1140, %1138 ]
  %1140 = add nuw nsw i64 %1139, 1
  %1141 = getelementptr inbounds [19 x i16], ptr @inflate.order, i64 0, i64 %1139
  %1142 = load i16, ptr %1141, align 2, !tbaa !81
  %1143 = zext i16 %1142 to i64
  %1144 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1143
  store i16 0, ptr %1144, align 2, !tbaa !81
  %1145 = and i64 %1140, 4294967295
  %1146 = icmp eq i64 %1145, 19
  br i1 %1146, label %1147, label %1138, !llvm.loop !84

1147:                                             ; preds = %1138
  store i32 19, ptr %60, align 4, !tbaa !80
  br label %1148

1148:                                             ; preds = %1147, %1092
  store ptr %61, ptr %62, align 8, !tbaa !29
  store ptr %61, ptr %63, align 8, !tbaa !30
  store ptr %61, ptr %64, align 8, !tbaa !31
  store i32 7, ptr %65, align 8, !tbaa !85
  %1149 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %66, i32 noundef 19, ptr noundef nonnull %62, ptr noundef nonnull %65, ptr noundef nonnull %67) #10
  %1150 = icmp eq i32 %1149, 0
  br i1 %1150, label %1152, label %1151

1151:                                             ; preds = %1148
  store ptr @.str.9, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2183

1152:                                             ; preds = %1148
  store i32 0, ptr %60, align 4, !tbaa !80
  store i32 16198, ptr %21, align 8, !tbaa !16
  br label %1153

1153:                                             ; preds = %90, %1152
  %1154 = phi ptr [ %92, %90 ], [ %1093, %1152 ]
  %1155 = phi i32 [ %94, %90 ], [ %1094, %1152 ]
  %1156 = phi i64 [ %96, %90 ], [ %1095, %1152 ]
  %1157 = phi i32 [ %97, %90 ], [ %1096, %1152 ]
  %1158 = phi i32 [ %99, %90 ], [ 0, %1152 ]
  %1159 = load i32, ptr %57, align 4, !tbaa !77
  %1160 = load i32, ptr %58, align 8, !tbaa !78
  %1161 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1159, i32 %1160), !nosanitize !43
  %1162 = extractvalue { i32, i1 } %1161, 1, !nosanitize !43
  br i1 %1162, label %137, label %1163, !nosanitize !43

1163:                                             ; preds = %1153
  %1164 = extractvalue { i32, i1 } %1161, 0, !nosanitize !43
  %1165 = load i32, ptr %60, align 4, !tbaa !80
  %1166 = icmp ult i32 %1165, %1164
  br i1 %1166, label %1167, label %1401

1167:                                             ; preds = %1163
  %1168 = load i32, ptr %65, align 8, !tbaa !85
  %1169 = shl nsw i32 -1, %1168
  %1170 = xor i32 %1169, -1
  %1171 = load ptr, ptr %64, align 8, !tbaa !31
  %1172 = zext i32 %1165 to i64
  %1173 = zext i32 %1164 to i64
  br label %1174

1174:                                             ; preds = %1167, %1393
  %1175 = phi i32 [ %1165, %1167 ], [ %1398, %1393 ]
  %1176 = phi i64 [ %1172, %1167 ], [ %1397, %1393 ]
  %1177 = phi ptr [ %1154, %1167 ], [ %1219, %1393 ]
  %1178 = phi i32 [ %1155, %1167 ], [ %1220, %1393 ]
  %1179 = phi i64 [ %1156, %1167 ], [ %1396, %1393 ]
  %1180 = phi i32 [ %1157, %1167 ], [ %1394, %1393 ]
  %1181 = trunc i64 %1179 to i32
  %1182 = and i32 %1170, %1181
  %1183 = zext nneg i32 %1182 to i64
  %1184 = getelementptr inbounds %struct.code, ptr %1171, i64 %1183, i32 1
  %1185 = load i8, ptr %1184, align 1, !tbaa.struct !86
  %1186 = zext i8 %1185 to i32
  %1187 = icmp ult i32 %1180, %1186
  br i1 %1187, label %1188, label %1217

1188:                                             ; preds = %1174
  %1189 = zext nneg i32 %1180 to i64
  br label %1190

1190:                                             ; preds = %1188, %1202
  %1191 = phi i64 [ %1189, %1188 ], [ %1206, %1202 ]
  %1192 = phi i64 [ %1179, %1188 ], [ %1203, %1202 ]
  %1193 = phi i32 [ %1178, %1188 ], [ %1205, %1202 ]
  %1194 = phi ptr [ %1177, %1188 ], [ %1204, %1202 ]
  %1195 = icmp eq i32 %1193, 0
  br i1 %1195, label %2193, label %1196

1196:                                             ; preds = %1190
  %1197 = load i8, ptr %1194, align 1, !tbaa !40
  %1198 = zext i8 %1197 to i64
  %1199 = shl i64 %1198, %1191
  %1200 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1192, i64 %1199), !nosanitize !43
  %1201 = extractvalue { i64, i1 } %1200, 1, !nosanitize !43
  br i1 %1201, label %137, label %1202, !nosanitize !43

1202:                                             ; preds = %1196
  %1203 = extractvalue { i64, i1 } %1200, 0, !nosanitize !43
  %1204 = getelementptr inbounds i8, ptr %1194, i64 1
  %1205 = add i32 %1193, -1
  %1206 = add nuw nsw i64 %1191, 8
  %1207 = trunc i64 %1203 to i32
  %1208 = and i32 %1170, %1207
  %1209 = zext nneg i32 %1208 to i64
  %1210 = getelementptr inbounds %struct.code, ptr %1171, i64 %1209, i32 1
  %1211 = load i8, ptr %1210, align 1, !tbaa.struct !86
  %1212 = zext i8 %1211 to i64
  %1213 = icmp ult i64 %1206, %1212
  br i1 %1213, label %1190, label %1214

1214:                                             ; preds = %1202
  %1215 = zext i8 %1211 to i32
  %1216 = trunc i64 %1206 to i32
  br label %1217

1217:                                             ; preds = %1214, %1174
  %1218 = phi i64 [ %1183, %1174 ], [ %1209, %1214 ]
  %1219 = phi ptr [ %1177, %1174 ], [ %1204, %1214 ]
  %1220 = phi i32 [ %1178, %1174 ], [ %1205, %1214 ]
  %1221 = phi i64 [ %1179, %1174 ], [ %1203, %1214 ]
  %1222 = phi i32 [ %1180, %1174 ], [ %1216, %1214 ]
  %1223 = phi i8 [ %1185, %1174 ], [ %1211, %1214 ]
  %1224 = phi i32 [ %1186, %1174 ], [ %1215, %1214 ]
  %1225 = getelementptr inbounds %struct.code, ptr %1171, i64 %1218, i32 2
  %1226 = load i16, ptr %1225, align 2, !tbaa.struct !87
  %1227 = icmp ult i16 %1226, 16
  br i1 %1227, label %1228, label %1231

1228:                                             ; preds = %1217
  %1229 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1222, i32 %1224), !nosanitize !43
  %1230 = extractvalue { i32, i1 } %1229, 1, !nosanitize !43
  br i1 %1230, label %136, label %1393, !nosanitize !43

1231:                                             ; preds = %1217
  %1232 = trunc i64 %1176 to i32
  switch i16 %1226, label %1245 [
    i16 16, label %1239
    i16 17, label %1233
  ]

1233:                                             ; preds = %1231
  %1234 = add nuw nsw i32 %1224, 3
  %1235 = icmp ult i32 %1222, %1234
  br i1 %1235, label %1236, label %1313

1236:                                             ; preds = %1233
  %1237 = zext nneg i32 %1222 to i64
  %1238 = zext nneg i32 %1234 to i64
  br label %1293

1239:                                             ; preds = %1231
  %1240 = add nuw nsw i32 %1224, 2
  %1241 = icmp ult i32 %1222, %1240
  br i1 %1241, label %1242, label %1271

1242:                                             ; preds = %1239
  %1243 = zext nneg i32 %1222 to i64
  %1244 = zext nneg i32 %1240 to i64
  br label %1251

1245:                                             ; preds = %1231
  %1246 = add nuw nsw i32 %1224, 7
  %1247 = icmp ult i32 %1222, %1246
  br i1 %1247, label %1248, label %1348

1248:                                             ; preds = %1245
  %1249 = zext nneg i32 %1222 to i64
  %1250 = zext nneg i32 %1246 to i64
  br label %1328

1251:                                             ; preds = %1242, %1263
  %1252 = phi i64 [ %1243, %1242 ], [ %1267, %1263 ]
  %1253 = phi i64 [ %1221, %1242 ], [ %1264, %1263 ]
  %1254 = phi i32 [ %1220, %1242 ], [ %1266, %1263 ]
  %1255 = phi ptr [ %1219, %1242 ], [ %1265, %1263 ]
  %1256 = icmp eq i32 %1254, 0
  br i1 %1256, label %2281, label %1257

1257:                                             ; preds = %1251
  %1258 = load i8, ptr %1255, align 1, !tbaa !40
  %1259 = zext i8 %1258 to i64
  %1260 = shl i64 %1259, %1252
  %1261 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1253, i64 %1260), !nosanitize !43
  %1262 = extractvalue { i64, i1 } %1261, 1, !nosanitize !43
  br i1 %1262, label %137, label %1263, !nosanitize !43

1263:                                             ; preds = %1257
  %1264 = extractvalue { i64, i1 } %1261, 0, !nosanitize !43
  %1265 = getelementptr inbounds i8, ptr %1255, i64 1
  %1266 = add i32 %1254, -1
  %1267 = add nuw nsw i64 %1252, 8
  %1268 = icmp ult i64 %1267, %1244
  br i1 %1268, label %1251, label %1269, !llvm.loop !88

1269:                                             ; preds = %1263
  %1270 = trunc i64 %1267 to i32
  br label %1271

1271:                                             ; preds = %1269, %1239
  %1272 = phi ptr [ %1219, %1239 ], [ %1265, %1269 ]
  %1273 = phi i32 [ %1220, %1239 ], [ %1266, %1269 ]
  %1274 = phi i64 [ %1221, %1239 ], [ %1264, %1269 ]
  %1275 = phi i32 [ %1222, %1239 ], [ %1270, %1269 ]
  %1276 = zext nneg i8 %1223 to i64
  %1277 = lshr i64 %1274, %1276
  %1278 = sub nuw i32 %1275, %1224
  %1279 = icmp eq i32 %1232, 0
  br i1 %1279, label %1280, label %1281

1280:                                             ; preds = %1271
  store ptr @.str.10, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2183

1281:                                             ; preds = %1271
  %1282 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1278, i32 2), !nosanitize !43
  %1283 = extractvalue { i32, i1 } %1282, 1, !nosanitize !43
  br i1 %1283, label %136, label %1284, !nosanitize !43

1284:                                             ; preds = %1281
  %1285 = trunc i64 %1277 to i32
  %1286 = and i32 %1285, 3
  %1287 = add nuw nsw i32 %1286, 3
  %1288 = add nuw i64 %1176, 4294967295
  %1289 = and i64 %1288, 4294967295
  %1290 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1289
  %1291 = load i16, ptr %1290, align 2, !tbaa !81
  %1292 = lshr i64 %1277, 2
  br label %1363

1293:                                             ; preds = %1236, %1305
  %1294 = phi i64 [ %1237, %1236 ], [ %1309, %1305 ]
  %1295 = phi i64 [ %1221, %1236 ], [ %1306, %1305 ]
  %1296 = phi i32 [ %1220, %1236 ], [ %1308, %1305 ]
  %1297 = phi ptr [ %1219, %1236 ], [ %1307, %1305 ]
  %1298 = icmp eq i32 %1296, 0
  br i1 %1298, label %2286, label %1299

1299:                                             ; preds = %1293
  %1300 = load i8, ptr %1297, align 1, !tbaa !40
  %1301 = zext i8 %1300 to i64
  %1302 = shl i64 %1301, %1294
  %1303 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1295, i64 %1302), !nosanitize !43
  %1304 = extractvalue { i64, i1 } %1303, 1, !nosanitize !43
  br i1 %1304, label %137, label %1305, !nosanitize !43

1305:                                             ; preds = %1299
  %1306 = extractvalue { i64, i1 } %1303, 0, !nosanitize !43
  %1307 = getelementptr inbounds i8, ptr %1297, i64 1
  %1308 = add i32 %1296, -1
  %1309 = add nuw nsw i64 %1294, 8
  %1310 = icmp ult i64 %1309, %1238
  br i1 %1310, label %1293, label %1311, !llvm.loop !89

1311:                                             ; preds = %1305
  %1312 = trunc i64 %1309 to i32
  br label %1313

1313:                                             ; preds = %1311, %1233
  %1314 = phi ptr [ %1219, %1233 ], [ %1307, %1311 ]
  %1315 = phi i32 [ %1220, %1233 ], [ %1308, %1311 ]
  %1316 = phi i64 [ %1221, %1233 ], [ %1306, %1311 ]
  %1317 = phi i32 [ %1222, %1233 ], [ %1312, %1311 ]
  %1318 = sub nuw i32 %1317, %1224
  %1319 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1318, i32 3), !nosanitize !43
  %1320 = extractvalue { i32, i1 } %1319, 1, !nosanitize !43
  br i1 %1320, label %136, label %1321, !nosanitize !43

1321:                                             ; preds = %1313
  %1322 = zext nneg i8 %1223 to i64
  %1323 = lshr i64 %1316, %1322
  %1324 = trunc i64 %1323 to i32
  %1325 = and i32 %1324, 7
  %1326 = add nuw nsw i32 %1325, 3
  %1327 = lshr i64 %1323, 3
  br label %1363

1328:                                             ; preds = %1248, %1340
  %1329 = phi i64 [ %1249, %1248 ], [ %1344, %1340 ]
  %1330 = phi i64 [ %1221, %1248 ], [ %1341, %1340 ]
  %1331 = phi i32 [ %1220, %1248 ], [ %1343, %1340 ]
  %1332 = phi ptr [ %1219, %1248 ], [ %1342, %1340 ]
  %1333 = icmp eq i32 %1331, 0
  br i1 %1333, label %2276, label %1334

1334:                                             ; preds = %1328
  %1335 = load i8, ptr %1332, align 1, !tbaa !40
  %1336 = zext i8 %1335 to i64
  %1337 = shl i64 %1336, %1329
  %1338 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1330, i64 %1337), !nosanitize !43
  %1339 = extractvalue { i64, i1 } %1338, 1, !nosanitize !43
  br i1 %1339, label %137, label %1340, !nosanitize !43

1340:                                             ; preds = %1334
  %1341 = extractvalue { i64, i1 } %1338, 0, !nosanitize !43
  %1342 = getelementptr inbounds i8, ptr %1332, i64 1
  %1343 = add i32 %1331, -1
  %1344 = add nuw nsw i64 %1329, 8
  %1345 = icmp ult i64 %1344, %1250
  br i1 %1345, label %1328, label %1346, !llvm.loop !90

1346:                                             ; preds = %1340
  %1347 = trunc i64 %1344 to i32
  br label %1348

1348:                                             ; preds = %1346, %1245
  %1349 = phi ptr [ %1219, %1245 ], [ %1342, %1346 ]
  %1350 = phi i32 [ %1220, %1245 ], [ %1343, %1346 ]
  %1351 = phi i64 [ %1221, %1245 ], [ %1341, %1346 ]
  %1352 = phi i32 [ %1222, %1245 ], [ %1347, %1346 ]
  %1353 = sub nuw i32 %1352, %1224
  %1354 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1353, i32 7), !nosanitize !43
  %1355 = extractvalue { i32, i1 } %1354, 1, !nosanitize !43
  br i1 %1355, label %136, label %1356, !nosanitize !43

1356:                                             ; preds = %1348
  %1357 = zext nneg i8 %1223 to i64
  %1358 = lshr i64 %1351, %1357
  %1359 = trunc i64 %1358 to i32
  %1360 = and i32 %1359, 127
  %1361 = add nuw nsw i32 %1360, 11
  %1362 = lshr i64 %1358, 7
  br label %1363

1363:                                             ; preds = %1321, %1356, %1284
  %1364 = phi ptr [ %1272, %1284 ], [ %1314, %1321 ], [ %1349, %1356 ]
  %1365 = phi i32 [ %1273, %1284 ], [ %1315, %1321 ], [ %1350, %1356 ]
  %1366 = phi i64 [ %1292, %1284 ], [ %1327, %1321 ], [ %1362, %1356 ]
  %1367 = phi { i32, i1 } [ %1282, %1284 ], [ %1319, %1321 ], [ %1354, %1356 ]
  %1368 = phi i32 [ %1287, %1284 ], [ %1326, %1321 ], [ %1361, %1356 ]
  %1369 = phi i16 [ %1291, %1284 ], [ 0, %1321 ], [ 0, %1356 ]
  %1370 = extractvalue { i32, i1 } %1367, 0
  %1371 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1232, i32 %1368), !nosanitize !43
  %1372 = extractvalue { i32, i1 } %1371, 1, !nosanitize !43
  br i1 %1372, label %137, label %1373, !nosanitize !43

1373:                                             ; preds = %1363
  %1374 = extractvalue { i32, i1 } %1371, 0, !nosanitize !43
  %1375 = icmp ugt i32 %1374, %1164
  br i1 %1375, label %1380, label %1376

1376:                                             ; preds = %1373
  %1377 = add nsw i32 %1368, -1
  %1378 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %1377, 0
  %1379 = zext i32 %1175 to i64
  br label %1381

1380:                                             ; preds = %1373
  store ptr @.str.10, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2183

1381:                                             ; preds = %1376, %1386
  %1382 = phi i64 [ %1379, %1376 ], [ %1388, %1386 ]
  %1383 = phi { i32, i1 } [ %1378, %1376 ], [ %1391, %1386 ]
  %1384 = and i64 %1382, 4294967295
  %1385 = icmp eq i64 %1384, 4294967295
  br i1 %1385, label %137, label %1386, !nosanitize !43

1386:                                             ; preds = %1381
  %1387 = extractvalue { i32, i1 } %1383, 0
  %1388 = add nuw nsw i64 %1382, 1
  %1389 = trunc i64 %1388 to i32
  store i32 %1389, ptr %60, align 4, !tbaa !80
  %1390 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1382
  store i16 %1369, ptr %1390, align 2, !tbaa !81
  %1391 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1387, i32 1), !nosanitize !43
  %1392 = extractvalue { i32, i1 } %1391, 1, !nosanitize !43
  br i1 %1392, label %136, label %1381, !llvm.loop !91, !nosanitize !43

1393:                                             ; preds = %1228
  %1394 = extractvalue { i32, i1 } %1229, 0, !nosanitize !43
  %1395 = zext nneg i8 %1223 to i64
  %1396 = lshr i64 %1221, %1395
  %1397 = add nuw nsw i64 %1176, 1
  %1398 = trunc i64 %1397 to i32
  store i32 %1398, ptr %60, align 4, !tbaa !80
  %1399 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1176
  store i16 %1226, ptr %1399, align 2, !tbaa !81
  %1400 = icmp eq i64 %1397, %1173
  br i1 %1400, label %1401, label %1174

1401:                                             ; preds = %1393, %1163
  %1402 = phi ptr [ %1154, %1163 ], [ %1219, %1393 ]
  %1403 = phi i32 [ %1155, %1163 ], [ %1220, %1393 ]
  %1404 = phi i64 [ %1156, %1163 ], [ %1396, %1393 ]
  %1405 = phi i32 [ %1157, %1163 ], [ %1394, %1393 ]
  %1406 = load i16, ptr %68, align 8, !tbaa !81
  %1407 = icmp eq i16 %1406, 0
  br i1 %1407, label %1408, label %1409

1408:                                             ; preds = %1401
  store ptr @.str.11, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2183

1409:                                             ; preds = %1401
  store ptr %61, ptr %62, align 8, !tbaa !29
  store ptr %61, ptr %64, align 8, !tbaa !31
  store i32 9, ptr %65, align 8, !tbaa !85
  %1410 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %66, i32 noundef %1159, ptr noundef nonnull %62, ptr noundef nonnull %65, ptr noundef nonnull %67) #10
  %1411 = icmp eq i32 %1410, 0
  br i1 %1411, label %1413, label %1412

1412:                                             ; preds = %1409
  store ptr @.str.12, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2183

1413:                                             ; preds = %1409
  %1414 = load ptr, ptr %62, align 8, !tbaa !29
  store ptr %1414, ptr %63, align 8, !tbaa !30
  store i32 6, ptr %69, align 4, !tbaa !92
  %1415 = load i32, ptr %57, align 4, !tbaa !77
  %1416 = zext i32 %1415 to i64
  %1417 = getelementptr inbounds i16, ptr %66, i64 %1416
  %1418 = load i32, ptr %58, align 8, !tbaa !78
  %1419 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %1417, i32 noundef %1418, ptr noundef nonnull %62, ptr noundef nonnull %69, ptr noundef nonnull %67) #10
  %1420 = icmp eq i32 %1419, 0
  br i1 %1420, label %1422, label %1421

1421:                                             ; preds = %1413
  store ptr @.str.13, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2183

1422:                                             ; preds = %1413
  store i32 16199, ptr %21, align 8, !tbaa !16
  br i1 %70, label %2310, label %1423

1423:                                             ; preds = %1422, %90
  %1424 = phi ptr [ %92, %90 ], [ %1402, %1422 ]
  %1425 = phi i32 [ %94, %90 ], [ %1403, %1422 ]
  %1426 = phi i64 [ %96, %90 ], [ %1404, %1422 ]
  %1427 = phi i32 [ %97, %90 ], [ %1405, %1422 ]
  %1428 = phi i32 [ %99, %90 ], [ 0, %1422 ]
  store i32 16200, ptr %21, align 8, !tbaa !16
  br label %1429

1429:                                             ; preds = %90, %1423
  %1430 = phi ptr [ %92, %90 ], [ %1424, %1423 ]
  %1431 = phi i32 [ %94, %90 ], [ %1425, %1423 ]
  %1432 = phi i64 [ %96, %90 ], [ %1426, %1423 ]
  %1433 = phi i32 [ %97, %90 ], [ %1427, %1423 ]
  %1434 = phi i32 [ %99, %90 ], [ %1428, %1423 ]
  %1435 = icmp ugt i32 %1431, 5
  %1436 = icmp ugt i32 %95, 257
  %1437 = select i1 %1435, i1 %1436, i1 false
  br i1 %1437, label %1438, label %1448

1438:                                             ; preds = %1429
  store ptr %93, ptr %26, align 8, !tbaa !44
  store i32 %95, ptr %41, align 8, !tbaa !47
  store ptr %1430, ptr %0, align 8, !tbaa !45
  store i32 %1431, ptr %43, align 8, !tbaa !46
  store i64 %1432, ptr %45, align 8, !tbaa !27
  store i32 %1433, ptr %47, align 8, !tbaa !28
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %98) #10
  %1439 = load ptr, ptr %26, align 8, !tbaa !44
  %1440 = load i32, ptr %41, align 8, !tbaa !47
  %1441 = load ptr, ptr %0, align 8, !tbaa !45
  %1442 = load i32, ptr %43, align 8, !tbaa !46
  %1443 = load i64, ptr %45, align 8, !tbaa !27
  %1444 = load i32, ptr %47, align 8, !tbaa !28
  %1445 = load i32, ptr %21, align 8, !tbaa !16
  %1446 = icmp eq i32 %1445, 16191
  br i1 %1446, label %1447, label %2183

1447:                                             ; preds = %1438
  store i32 -1, ptr %71, align 4, !tbaa !33
  br label %2183

1448:                                             ; preds = %1429
  store i32 0, ptr %71, align 4, !tbaa !33
  %1449 = load i32, ptr %65, align 8, !tbaa !85
  %1450 = shl nsw i32 -1, %1449
  %1451 = xor i32 %1450, -1
  %1452 = load ptr, ptr %64, align 8, !tbaa !31
  %1453 = trunc i64 %1432 to i32
  %1454 = and i32 %1451, %1453
  %1455 = zext nneg i32 %1454 to i64
  %1456 = getelementptr inbounds %struct.code, ptr %1452, i64 %1455
  %1457 = getelementptr inbounds i8, ptr %1456, i64 1
  %1458 = load i8, ptr %1457, align 1, !tbaa.struct !86
  %1459 = zext i8 %1458 to i32
  %1460 = icmp ult i32 %1433, %1459
  br i1 %1460, label %1461, label %1491

1461:                                             ; preds = %1448
  %1462 = zext nneg i32 %1433 to i64
  br label %1463

1463:                                             ; preds = %1461, %1475
  %1464 = phi i64 [ %1462, %1461 ], [ %1479, %1475 ]
  %1465 = phi i64 [ %1432, %1461 ], [ %1476, %1475 ]
  %1466 = phi i32 [ %1431, %1461 ], [ %1478, %1475 ]
  %1467 = phi ptr [ %1430, %1461 ], [ %1477, %1475 ]
  %1468 = icmp eq i32 %1466, 0
  br i1 %1468, label %2271, label %1469

1469:                                             ; preds = %1463
  %1470 = load i8, ptr %1467, align 1, !tbaa !40
  %1471 = zext i8 %1470 to i64
  %1472 = shl i64 %1471, %1464
  %1473 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1465, i64 %1472), !nosanitize !43
  %1474 = extractvalue { i64, i1 } %1473, 1, !nosanitize !43
  br i1 %1474, label %137, label %1475, !nosanitize !43

1475:                                             ; preds = %1469
  %1476 = extractvalue { i64, i1 } %1473, 0, !nosanitize !43
  %1477 = getelementptr inbounds i8, ptr %1467, i64 1
  %1478 = add i32 %1466, -1
  %1479 = add nuw nsw i64 %1464, 8
  %1480 = trunc i64 %1476 to i32
  %1481 = and i32 %1451, %1480
  %1482 = zext nneg i32 %1481 to i64
  %1483 = getelementptr inbounds %struct.code, ptr %1452, i64 %1482
  %1484 = getelementptr inbounds i8, ptr %1483, i64 1
  %1485 = load i8, ptr %1484, align 1, !tbaa.struct !86
  %1486 = zext i8 %1485 to i64
  %1487 = icmp ult i64 %1479, %1486
  br i1 %1487, label %1463, label %1488

1488:                                             ; preds = %1475
  %1489 = zext i8 %1485 to i32
  %1490 = trunc i64 %1479 to i32
  br label %1491

1491:                                             ; preds = %1488, %1448
  %1492 = phi ptr [ %1456, %1448 ], [ %1483, %1488 ]
  %1493 = phi ptr [ %1430, %1448 ], [ %1477, %1488 ]
  %1494 = phi i32 [ %1431, %1448 ], [ %1478, %1488 ]
  %1495 = phi i64 [ %1432, %1448 ], [ %1476, %1488 ]
  %1496 = phi i32 [ %1433, %1448 ], [ %1490, %1488 ]
  %1497 = phi i8 [ %1458, %1448 ], [ %1485, %1488 ]
  %1498 = phi i32 [ %1459, %1448 ], [ %1489, %1488 ]
  %1499 = getelementptr inbounds i8, ptr %1492, i64 2
  %1500 = load i16, ptr %1499, align 2, !tbaa.struct !87
  %1501 = load i8, ptr %1492, align 2, !tbaa.struct !93
  %1502 = add i8 %1501, -1
  %1503 = icmp ult i8 %1502, 15
  br i1 %1503, label %1504, label %1567

1504:                                             ; preds = %1491
  %1505 = zext nneg i8 %1501 to i32
  %1506 = add nuw nsw i32 %1498, %1505
  %1507 = shl nsw i32 -1, %1506
  %1508 = xor i32 %1507, -1
  %1509 = zext i16 %1500 to i32
  %1510 = trunc i64 %1495 to i32
  %1511 = and i32 %1510, %1508
  %1512 = lshr i32 %1511, %1498
  %1513 = add nuw i32 %1512, %1509
  %1514 = zext i32 %1513 to i64
  %1515 = getelementptr inbounds %struct.code, ptr %1452, i64 %1514
  %1516 = getelementptr inbounds i8, ptr %1515, i64 1
  %1517 = load i8, ptr %1516, align 1, !tbaa.struct !86
  %1518 = zext i8 %1517 to i32
  %1519 = add nuw nsw i32 %1498, %1518
  %1520 = icmp ugt i32 %1519, %1496
  br i1 %1520, label %1521, label %1554

1521:                                             ; preds = %1504
  %1522 = zext nneg i32 %1496 to i64
  br label %1523

1523:                                             ; preds = %1521, %1535
  %1524 = phi i64 [ %1522, %1521 ], [ %1539, %1535 ]
  %1525 = phi i64 [ %1495, %1521 ], [ %1536, %1535 ]
  %1526 = phi i32 [ %1494, %1521 ], [ %1538, %1535 ]
  %1527 = phi ptr [ %1493, %1521 ], [ %1537, %1535 ]
  %1528 = icmp eq i32 %1526, 0
  br i1 %1528, label %2266, label %1529

1529:                                             ; preds = %1523
  %1530 = load i8, ptr %1527, align 1, !tbaa !40
  %1531 = zext i8 %1530 to i64
  %1532 = shl i64 %1531, %1524
  %1533 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1525, i64 %1532), !nosanitize !43
  %1534 = extractvalue { i64, i1 } %1533, 1, !nosanitize !43
  br i1 %1534, label %137, label %1535, !nosanitize !43

1535:                                             ; preds = %1529
  %1536 = extractvalue { i64, i1 } %1533, 0, !nosanitize !43
  %1537 = getelementptr inbounds i8, ptr %1527, i64 1
  %1538 = add i32 %1526, -1
  %1539 = add nuw nsw i64 %1524, 8
  %1540 = trunc i64 %1536 to i32
  %1541 = and i32 %1540, %1508
  %1542 = lshr i32 %1541, %1498
  %1543 = add nuw i32 %1542, %1509
  %1544 = zext i32 %1543 to i64
  %1545 = getelementptr inbounds %struct.code, ptr %1452, i64 %1544
  %1546 = getelementptr inbounds i8, ptr %1545, i64 1
  %1547 = load i8, ptr %1546, align 1, !tbaa.struct !86
  %1548 = zext i8 %1547 to i32
  %1549 = add nuw nsw i32 %1498, %1548
  %1550 = zext nneg i32 %1549 to i64
  %1551 = icmp ult i64 %1539, %1550
  br i1 %1551, label %1523, label %1552

1552:                                             ; preds = %1535
  %1553 = trunc i64 %1539 to i32
  br label %1554

1554:                                             ; preds = %1552, %1504
  %1555 = phi ptr [ %1515, %1504 ], [ %1545, %1552 ]
  %1556 = phi ptr [ %1493, %1504 ], [ %1537, %1552 ]
  %1557 = phi i32 [ %1494, %1504 ], [ %1538, %1552 ]
  %1558 = phi i64 [ %1495, %1504 ], [ %1536, %1552 ]
  %1559 = phi i32 [ %1496, %1504 ], [ %1553, %1552 ]
  %1560 = phi i8 [ %1517, %1504 ], [ %1547, %1552 ]
  %1561 = load i8, ptr %1555, align 2, !tbaa.struct !93
  %1562 = getelementptr inbounds i8, ptr %1555, i64 2
  %1563 = load i16, ptr %1562, align 2, !tbaa.struct !87
  %1564 = sub nuw i32 %1559, %1498
  %1565 = zext nneg i8 %1497 to i64
  %1566 = lshr i64 %1558, %1565
  store i32 %1498, ptr %71, align 4, !tbaa !33
  br label %1567

1567:                                             ; preds = %1491, %1554
  %1568 = phi i32 [ %1498, %1554 ], [ 0, %1491 ]
  %1569 = phi ptr [ %1556, %1554 ], [ %1493, %1491 ]
  %1570 = phi i32 [ %1557, %1554 ], [ %1494, %1491 ]
  %1571 = phi i64 [ %1566, %1554 ], [ %1495, %1491 ]
  %1572 = phi i32 [ %1564, %1554 ], [ %1496, %1491 ]
  %1573 = phi i16 [ %1563, %1554 ], [ %1500, %1491 ]
  %1574 = phi i8 [ %1560, %1554 ], [ %1497, %1491 ]
  %1575 = phi i8 [ %1561, %1554 ], [ %1501, %1491 ]
  %1576 = zext i8 %1574 to i32
  %1577 = zext nneg i8 %1574 to i64
  %1578 = lshr i64 %1571, %1577
  %1579 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1572, i32 %1576), !nosanitize !43
  %1580 = extractvalue { i32, i1 } %1579, 0, !nosanitize !43
  %1581 = extractvalue { i32, i1 } %1579, 1, !nosanitize !43
  br i1 %1581, label %136, label %1582, !nosanitize !43

1582:                                             ; preds = %1567
  %1583 = add nsw i32 %1568, %1576
  store i32 %1583, ptr %71, align 4, !tbaa !33
  %1584 = zext i16 %1573 to i32
  store i32 %1584, ptr %56, align 4, !tbaa !62
  %1585 = zext i8 %1575 to i32
  %1586 = icmp eq i8 %1575, 0
  br i1 %1586, label %1587, label %1588

1587:                                             ; preds = %1582
  store i32 16205, ptr %21, align 8, !tbaa !16
  br label %2183

1588:                                             ; preds = %1582
  %1589 = and i32 %1585, 32
  %1590 = icmp eq i32 %1589, 0
  br i1 %1590, label %1592, label %1591

1591:                                             ; preds = %1588
  store i32 -1, ptr %71, align 4, !tbaa !33
  store i32 16191, ptr %21, align 8, !tbaa !16
  br label %2183

1592:                                             ; preds = %1588
  %1593 = and i32 %1585, 64
  %1594 = icmp eq i32 %1593, 0
  br i1 %1594, label %1596, label %1595

1595:                                             ; preds = %1592
  store ptr @.str.14, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2183

1596:                                             ; preds = %1592
  %1597 = and i32 %1585, 15
  store i32 %1597, ptr %72, align 4, !tbaa !48
  store i32 16201, ptr %21, align 8, !tbaa !16
  br label %1598

1598:                                             ; preds = %102, %1596
  %1599 = phi i32 [ %103, %102 ], [ %1597, %1596 ]
  %1600 = phi ptr [ %92, %102 ], [ %1569, %1596 ]
  %1601 = phi i32 [ %94, %102 ], [ %1570, %1596 ]
  %1602 = phi i64 [ %96, %102 ], [ %1578, %1596 ]
  %1603 = phi i32 [ %97, %102 ], [ %1580, %1596 ]
  %1604 = phi i32 [ %99, %102 ], [ %1434, %1596 ]
  %1605 = icmp eq i32 %1599, 0
  br i1 %1605, label %1657, label %1606

1606:                                             ; preds = %1598
  %1607 = icmp ult i32 %1603, %1599
  br i1 %1607, label %1608, label %1632

1608:                                             ; preds = %1606
  %1609 = zext i32 %1603 to i64
  br label %1610

1610:                                             ; preds = %1608, %1625
  %1611 = phi i64 [ %1609, %1608 ], [ %1629, %1625 ]
  %1612 = phi i64 [ %1602, %1608 ], [ %1626, %1625 ]
  %1613 = phi i32 [ %1601, %1608 ], [ %1628, %1625 ]
  %1614 = phi ptr [ %1600, %1608 ], [ %1627, %1625 ]
  %1615 = icmp eq i32 %1613, 0
  br i1 %1615, label %2261, label %1616

1616:                                             ; preds = %1610
  %1617 = load i8, ptr %1614, align 1, !tbaa !40
  %1618 = zext i8 %1617 to i64
  %1619 = shl i64 %1618, %1611
  %1620 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1612, i64 %1619), !nosanitize !43
  %1621 = extractvalue { i64, i1 } %1620, 1, !nosanitize !43
  %1622 = and i64 %1611, 4294967288
  %1623 = icmp eq i64 %1622, 4294967288
  %1624 = select i1 %1621, i1 true, i1 %1623
  br i1 %1624, label %137, label %1625, !nosanitize !43

1625:                                             ; preds = %1616
  %1626 = extractvalue { i64, i1 } %1620, 0, !nosanitize !43
  %1627 = getelementptr inbounds i8, ptr %1614, i64 1
  %1628 = add i32 %1613, -1
  %1629 = add nuw nsw i64 %1611, 8
  %1630 = trunc i64 %1629 to i32
  %1631 = icmp ugt i32 %1599, %1630
  br i1 %1631, label %1610, label %1632, !llvm.loop !94

1632:                                             ; preds = %1625, %1606
  %1633 = phi ptr [ %1600, %1606 ], [ %1627, %1625 ]
  %1634 = phi i32 [ %1601, %1606 ], [ %1628, %1625 ]
  %1635 = phi i64 [ %1602, %1606 ], [ %1626, %1625 ]
  %1636 = phi i32 [ %1603, %1606 ], [ %1630, %1625 ]
  %1637 = shl nsw i32 -1, %1599
  %1638 = xor i32 %1637, -1
  %1639 = trunc i64 %1635 to i32
  %1640 = and i32 %1639, %1638
  %1641 = load i32, ptr %56, align 4, !tbaa !62
  %1642 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1641, i32 %1640), !nosanitize !43
  %1643 = extractvalue { i32, i1 } %1642, 1, !nosanitize !43
  br i1 %1643, label %137, label %1644, !nosanitize !43

1644:                                             ; preds = %1632
  %1645 = extractvalue { i32, i1 } %1642, 0, !nosanitize !43
  store i32 %1645, ptr %56, align 4, !tbaa !62
  %1646 = zext nneg i32 %1599 to i64
  %1647 = lshr i64 %1635, %1646
  %1648 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1636, i32 %1599), !nosanitize !43
  %1649 = extractvalue { i32, i1 } %1648, 0, !nosanitize !43
  %1650 = extractvalue { i32, i1 } %1648, 1, !nosanitize !43
  br i1 %1650, label %136, label %1651, !nosanitize !43

1651:                                             ; preds = %1644
  %1652 = load i32, ptr %71, align 4, !tbaa !33
  %1653 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1652, i32 %1599), !nosanitize !43
  %1654 = extractvalue { i32, i1 } %1653, 1, !nosanitize !43
  br i1 %1654, label %137, label %1655, !nosanitize !43

1655:                                             ; preds = %1651
  %1656 = extractvalue { i32, i1 } %1653, 0, !nosanitize !43
  store i32 %1656, ptr %71, align 4, !tbaa !33
  br label %1657

1657:                                             ; preds = %1655, %1598
  %1658 = phi ptr [ %1633, %1655 ], [ %1600, %1598 ]
  %1659 = phi i32 [ %1634, %1655 ], [ %1601, %1598 ]
  %1660 = phi i64 [ %1647, %1655 ], [ %1602, %1598 ]
  %1661 = phi i32 [ %1649, %1655 ], [ %1603, %1598 ]
  %1662 = load i32, ptr %56, align 4, !tbaa !62
  store i32 %1662, ptr %73, align 8, !tbaa !95
  store i32 16202, ptr %21, align 8, !tbaa !16
  br label %1663

1663:                                             ; preds = %90, %1657
  %1664 = phi ptr [ %92, %90 ], [ %1658, %1657 ]
  %1665 = phi i32 [ %94, %90 ], [ %1659, %1657 ]
  %1666 = phi i64 [ %96, %90 ], [ %1660, %1657 ]
  %1667 = phi i32 [ %97, %90 ], [ %1661, %1657 ]
  %1668 = phi i32 [ %99, %90 ], [ %1604, %1657 ]
  %1669 = load i32, ptr %69, align 4, !tbaa !92
  %1670 = shl nsw i32 -1, %1669
  %1671 = xor i32 %1670, -1
  %1672 = load ptr, ptr %63, align 8, !tbaa !30
  %1673 = trunc i64 %1666 to i32
  %1674 = and i32 %1671, %1673
  %1675 = zext nneg i32 %1674 to i64
  %1676 = getelementptr inbounds %struct.code, ptr %1672, i64 %1675
  %1677 = getelementptr inbounds i8, ptr %1676, i64 1
  %1678 = load i8, ptr %1677, align 1, !tbaa.struct !86
  %1679 = zext i8 %1678 to i32
  %1680 = icmp ult i32 %1667, %1679
  br i1 %1680, label %1681, label %1711

1681:                                             ; preds = %1663
  %1682 = zext nneg i32 %1667 to i64
  br label %1683

1683:                                             ; preds = %1681, %1695
  %1684 = phi i64 [ %1682, %1681 ], [ %1699, %1695 ]
  %1685 = phi i64 [ %1666, %1681 ], [ %1696, %1695 ]
  %1686 = phi i32 [ %1665, %1681 ], [ %1698, %1695 ]
  %1687 = phi ptr [ %1664, %1681 ], [ %1697, %1695 ]
  %1688 = icmp eq i32 %1686, 0
  br i1 %1688, label %2256, label %1689

1689:                                             ; preds = %1683
  %1690 = load i8, ptr %1687, align 1, !tbaa !40
  %1691 = zext i8 %1690 to i64
  %1692 = shl i64 %1691, %1684
  %1693 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1685, i64 %1692), !nosanitize !43
  %1694 = extractvalue { i64, i1 } %1693, 1, !nosanitize !43
  br i1 %1694, label %137, label %1695, !nosanitize !43

1695:                                             ; preds = %1689
  %1696 = extractvalue { i64, i1 } %1693, 0, !nosanitize !43
  %1697 = getelementptr inbounds i8, ptr %1687, i64 1
  %1698 = add i32 %1686, -1
  %1699 = add nuw nsw i64 %1684, 8
  %1700 = trunc i64 %1696 to i32
  %1701 = and i32 %1671, %1700
  %1702 = zext nneg i32 %1701 to i64
  %1703 = getelementptr inbounds %struct.code, ptr %1672, i64 %1702
  %1704 = getelementptr inbounds i8, ptr %1703, i64 1
  %1705 = load i8, ptr %1704, align 1, !tbaa.struct !86
  %1706 = zext i8 %1705 to i64
  %1707 = icmp ult i64 %1699, %1706
  br i1 %1707, label %1683, label %1708

1708:                                             ; preds = %1695
  %1709 = zext i8 %1705 to i32
  %1710 = trunc i64 %1699 to i32
  br label %1711

1711:                                             ; preds = %1708, %1663
  %1712 = phi ptr [ %1676, %1663 ], [ %1703, %1708 ]
  %1713 = phi ptr [ %1664, %1663 ], [ %1697, %1708 ]
  %1714 = phi i32 [ %1665, %1663 ], [ %1698, %1708 ]
  %1715 = phi i64 [ %1666, %1663 ], [ %1696, %1708 ]
  %1716 = phi i32 [ %1667, %1663 ], [ %1710, %1708 ]
  %1717 = phi i8 [ %1678, %1663 ], [ %1705, %1708 ]
  %1718 = phi i32 [ %1679, %1663 ], [ %1709, %1708 ]
  %1719 = getelementptr inbounds i8, ptr %1712, i64 2
  %1720 = load i16, ptr %1719, align 2, !tbaa.struct !87
  %1721 = load i8, ptr %1712, align 2, !tbaa.struct !93
  %1722 = icmp ult i8 %1721, 16
  br i1 %1722, label %1723, label %1791

1723:                                             ; preds = %1711
  %1724 = zext nneg i8 %1721 to i32
  %1725 = add nuw nsw i32 %1718, %1724
  %1726 = shl nsw i32 -1, %1725
  %1727 = xor i32 %1726, -1
  %1728 = zext i16 %1720 to i32
  %1729 = trunc i64 %1715 to i32
  %1730 = and i32 %1729, %1727
  %1731 = lshr i32 %1730, %1718
  %1732 = add nuw i32 %1731, %1728
  %1733 = zext i32 %1732 to i64
  %1734 = getelementptr inbounds %struct.code, ptr %1672, i64 %1733
  %1735 = getelementptr inbounds i8, ptr %1734, i64 1
  %1736 = load i8, ptr %1735, align 1, !tbaa.struct !86
  %1737 = zext i8 %1736 to i32
  %1738 = add nuw nsw i32 %1718, %1737
  %1739 = icmp ugt i32 %1738, %1716
  br i1 %1739, label %1740, label %1773

1740:                                             ; preds = %1723
  %1741 = zext nneg i32 %1716 to i64
  br label %1742

1742:                                             ; preds = %1740, %1754
  %1743 = phi i64 [ %1741, %1740 ], [ %1758, %1754 ]
  %1744 = phi i64 [ %1715, %1740 ], [ %1755, %1754 ]
  %1745 = phi i32 [ %1714, %1740 ], [ %1757, %1754 ]
  %1746 = phi ptr [ %1713, %1740 ], [ %1756, %1754 ]
  %1747 = icmp eq i32 %1745, 0
  br i1 %1747, label %2251, label %1748

1748:                                             ; preds = %1742
  %1749 = load i8, ptr %1746, align 1, !tbaa !40
  %1750 = zext i8 %1749 to i64
  %1751 = shl i64 %1750, %1743
  %1752 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1744, i64 %1751), !nosanitize !43
  %1753 = extractvalue { i64, i1 } %1752, 1, !nosanitize !43
  br i1 %1753, label %137, label %1754, !nosanitize !43

1754:                                             ; preds = %1748
  %1755 = extractvalue { i64, i1 } %1752, 0, !nosanitize !43
  %1756 = getelementptr inbounds i8, ptr %1746, i64 1
  %1757 = add i32 %1745, -1
  %1758 = add nuw nsw i64 %1743, 8
  %1759 = trunc i64 %1755 to i32
  %1760 = and i32 %1759, %1727
  %1761 = lshr i32 %1760, %1718
  %1762 = add nuw i32 %1761, %1728
  %1763 = zext i32 %1762 to i64
  %1764 = getelementptr inbounds %struct.code, ptr %1672, i64 %1763
  %1765 = getelementptr inbounds i8, ptr %1764, i64 1
  %1766 = load i8, ptr %1765, align 1, !tbaa.struct !86
  %1767 = zext i8 %1766 to i32
  %1768 = add nuw nsw i32 %1718, %1767
  %1769 = zext nneg i32 %1768 to i64
  %1770 = icmp ult i64 %1758, %1769
  br i1 %1770, label %1742, label %1771

1771:                                             ; preds = %1754
  %1772 = trunc i64 %1758 to i32
  br label %1773

1773:                                             ; preds = %1771, %1723
  %1774 = phi ptr [ %1734, %1723 ], [ %1764, %1771 ]
  %1775 = phi ptr [ %1713, %1723 ], [ %1756, %1771 ]
  %1776 = phi i32 [ %1714, %1723 ], [ %1757, %1771 ]
  %1777 = phi i64 [ %1715, %1723 ], [ %1755, %1771 ]
  %1778 = phi i32 [ %1716, %1723 ], [ %1772, %1771 ]
  %1779 = phi i8 [ %1736, %1723 ], [ %1766, %1771 ]
  %1780 = load i32, ptr %71, align 4, !tbaa !33
  %1781 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1780, i32 %1718), !nosanitize !43
  %1782 = extractvalue { i32, i1 } %1781, 1, !nosanitize !43
  br i1 %1782, label %137, label %1783, !nosanitize !43

1783:                                             ; preds = %1773
  %1784 = getelementptr inbounds i8, ptr %1774, i64 2
  %1785 = load i16, ptr %1784, align 2, !tbaa.struct !87
  %1786 = load i8, ptr %1774, align 2, !tbaa.struct !93
  %1787 = sub nuw i32 %1778, %1718
  %1788 = zext nneg i8 %1717 to i64
  %1789 = lshr i64 %1777, %1788
  %1790 = extractvalue { i32, i1 } %1781, 0, !nosanitize !43
  store i32 %1790, ptr %71, align 4, !tbaa !33
  br label %1791

1791:                                             ; preds = %1711, %1783
  %1792 = phi ptr [ %1775, %1783 ], [ %1713, %1711 ]
  %1793 = phi i32 [ %1776, %1783 ], [ %1714, %1711 ]
  %1794 = phi i64 [ %1789, %1783 ], [ %1715, %1711 ]
  %1795 = phi i32 [ %1787, %1783 ], [ %1716, %1711 ]
  %1796 = phi i16 [ %1785, %1783 ], [ %1720, %1711 ]
  %1797 = phi i8 [ %1779, %1783 ], [ %1717, %1711 ]
  %1798 = phi i8 [ %1786, %1783 ], [ %1721, %1711 ]
  %1799 = zext i8 %1797 to i32
  %1800 = zext nneg i8 %1797 to i64
  %1801 = lshr i64 %1794, %1800
  %1802 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1795, i32 %1799), !nosanitize !43
  %1803 = extractvalue { i32, i1 } %1802, 0, !nosanitize !43
  %1804 = extractvalue { i32, i1 } %1802, 1, !nosanitize !43
  br i1 %1804, label %136, label %1805, !nosanitize !43

1805:                                             ; preds = %1791
  %1806 = load i32, ptr %71, align 4, !tbaa !33
  %1807 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1806, i32 %1799), !nosanitize !43
  %1808 = extractvalue { i32, i1 } %1807, 1, !nosanitize !43
  br i1 %1808, label %137, label %1809, !nosanitize !43

1809:                                             ; preds = %1805
  %1810 = extractvalue { i32, i1 } %1807, 0, !nosanitize !43
  store i32 %1810, ptr %71, align 4, !tbaa !33
  %1811 = zext i8 %1798 to i32
  %1812 = and i32 %1811, 64
  %1813 = icmp eq i32 %1812, 0
  br i1 %1813, label %1815, label %1814

1814:                                             ; preds = %1809
  store ptr @.str.15, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2183

1815:                                             ; preds = %1809
  %1816 = zext i16 %1796 to i32
  store i32 %1816, ptr %74, align 8, !tbaa !96
  %1817 = and i32 %1811, 15
  store i32 %1817, ptr %72, align 4, !tbaa !48
  store i32 16203, ptr %21, align 8, !tbaa !16
  br label %1818

1818:                                             ; preds = %100, %1815
  %1819 = phi i32 [ %101, %100 ], [ %1817, %1815 ]
  %1820 = phi ptr [ %92, %100 ], [ %1792, %1815 ]
  %1821 = phi i32 [ %94, %100 ], [ %1793, %1815 ]
  %1822 = phi i64 [ %96, %100 ], [ %1801, %1815 ]
  %1823 = phi i32 [ %97, %100 ], [ %1803, %1815 ]
  %1824 = phi i32 [ %99, %100 ], [ %1668, %1815 ]
  %1825 = icmp eq i32 %1819, 0
  br i1 %1825, label %1877, label %1826

1826:                                             ; preds = %1818
  %1827 = icmp ult i32 %1823, %1819
  br i1 %1827, label %1828, label %1852

1828:                                             ; preds = %1826
  %1829 = zext i32 %1823 to i64
  br label %1830

1830:                                             ; preds = %1828, %1845
  %1831 = phi i64 [ %1829, %1828 ], [ %1849, %1845 ]
  %1832 = phi i64 [ %1822, %1828 ], [ %1846, %1845 ]
  %1833 = phi i32 [ %1821, %1828 ], [ %1848, %1845 ]
  %1834 = phi ptr [ %1820, %1828 ], [ %1847, %1845 ]
  %1835 = icmp eq i32 %1833, 0
  br i1 %1835, label %2246, label %1836

1836:                                             ; preds = %1830
  %1837 = load i8, ptr %1834, align 1, !tbaa !40
  %1838 = zext i8 %1837 to i64
  %1839 = shl i64 %1838, %1831
  %1840 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1832, i64 %1839), !nosanitize !43
  %1841 = extractvalue { i64, i1 } %1840, 1, !nosanitize !43
  %1842 = and i64 %1831, 4294967288
  %1843 = icmp eq i64 %1842, 4294967288
  %1844 = select i1 %1841, i1 true, i1 %1843
  br i1 %1844, label %137, label %1845, !nosanitize !43

1845:                                             ; preds = %1836
  %1846 = extractvalue { i64, i1 } %1840, 0, !nosanitize !43
  %1847 = getelementptr inbounds i8, ptr %1834, i64 1
  %1848 = add i32 %1833, -1
  %1849 = add nuw nsw i64 %1831, 8
  %1850 = trunc i64 %1849 to i32
  %1851 = icmp ugt i32 %1819, %1850
  br i1 %1851, label %1830, label %1852, !llvm.loop !97

1852:                                             ; preds = %1845, %1826
  %1853 = phi ptr [ %1820, %1826 ], [ %1847, %1845 ]
  %1854 = phi i32 [ %1821, %1826 ], [ %1848, %1845 ]
  %1855 = phi i64 [ %1822, %1826 ], [ %1846, %1845 ]
  %1856 = phi i32 [ %1823, %1826 ], [ %1850, %1845 ]
  %1857 = shl nsw i32 -1, %1819
  %1858 = xor i32 %1857, -1
  %1859 = trunc i64 %1855 to i32
  %1860 = and i32 %1859, %1858
  %1861 = load i32, ptr %74, align 8, !tbaa !96
  %1862 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1861, i32 %1860), !nosanitize !43
  %1863 = extractvalue { i32, i1 } %1862, 1, !nosanitize !43
  br i1 %1863, label %137, label %1864, !nosanitize !43

1864:                                             ; preds = %1852
  %1865 = extractvalue { i32, i1 } %1862, 0, !nosanitize !43
  store i32 %1865, ptr %74, align 8, !tbaa !96
  %1866 = zext nneg i32 %1819 to i64
  %1867 = lshr i64 %1855, %1866
  %1868 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1856, i32 %1819), !nosanitize !43
  %1869 = extractvalue { i32, i1 } %1868, 0, !nosanitize !43
  %1870 = extractvalue { i32, i1 } %1868, 1, !nosanitize !43
  br i1 %1870, label %136, label %1871, !nosanitize !43

1871:                                             ; preds = %1864
  %1872 = load i32, ptr %71, align 4, !tbaa !33
  %1873 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1872, i32 %1819), !nosanitize !43
  %1874 = extractvalue { i32, i1 } %1873, 1, !nosanitize !43
  br i1 %1874, label %137, label %1875, !nosanitize !43

1875:                                             ; preds = %1871
  %1876 = extractvalue { i32, i1 } %1873, 0, !nosanitize !43
  store i32 %1876, ptr %71, align 4, !tbaa !33
  br label %1877

1877:                                             ; preds = %1875, %1818
  %1878 = phi ptr [ %1853, %1875 ], [ %1820, %1818 ]
  %1879 = phi i32 [ %1854, %1875 ], [ %1821, %1818 ]
  %1880 = phi i64 [ %1867, %1875 ], [ %1822, %1818 ]
  %1881 = phi i32 [ %1869, %1875 ], [ %1823, %1818 ]
  store i32 16204, ptr %21, align 8, !tbaa !16
  br label %1882

1882:                                             ; preds = %90, %1877
  %1883 = phi ptr [ %92, %90 ], [ %1878, %1877 ]
  %1884 = phi i32 [ %94, %90 ], [ %1879, %1877 ]
  %1885 = phi i64 [ %96, %90 ], [ %1880, %1877 ]
  %1886 = phi i32 [ %97, %90 ], [ %1881, %1877 ]
  %1887 = phi i32 [ %99, %90 ], [ %1824, %1877 ]
  %1888 = icmp eq i32 %95, 0
  br i1 %1888, label %2310, label %1889

1889:                                             ; preds = %1882
  %1890 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %98, i32 %95), !nosanitize !43
  %1891 = extractvalue { i32, i1 } %1890, 0, !nosanitize !43
  %1892 = extractvalue { i32, i1 } %1890, 1, !nosanitize !43
  br i1 %1892, label %136, label %1893, !nosanitize !43

1893:                                             ; preds = %1889
  %1894 = load i32, ptr %74, align 8, !tbaa !96
  %1895 = icmp ugt i32 %1894, %1891
  br i1 %1895, label %1896, label %1924

1896:                                             ; preds = %1893
  %1897 = sub nuw i32 %1894, %1891
  %1898 = load i32, ptr %75, align 8, !tbaa !35
  %1899 = icmp ugt i32 %1897, %1898
  br i1 %1899, label %1900, label %1904

1900:                                             ; preds = %1896
  %1901 = load i32, ptr %76, align 8, !tbaa !32
  %1902 = icmp eq i32 %1901, 0
  br i1 %1902, label %1904, label %1903

1903:                                             ; preds = %1900
  store ptr @.str.16, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2183

1904:                                             ; preds = %1900, %1896
  %1905 = load i32, ptr %77, align 4, !tbaa !36
  %1906 = icmp ugt i32 %1897, %1905
  br i1 %1906, label %1907, label %1914

1907:                                             ; preds = %1904
  %1908 = sub nuw i32 %1897, %1905
  %1909 = load i32, ptr %79, align 4, !tbaa !34
  %1910 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1909, i32 %1908), !nosanitize !43
  %1911 = extractvalue { i32, i1 } %1910, 1, !nosanitize !43
  br i1 %1911, label %136, label %1912, !nosanitize !43

1912:                                             ; preds = %1907
  %1913 = extractvalue { i32, i1 } %1910, 0, !nosanitize !43
  br label %1916

1914:                                             ; preds = %1904
  %1915 = sub nuw i32 %1905, %1897
  br label %1916

1916:                                             ; preds = %1914, %1912
  %1917 = phi i32 [ %1915, %1914 ], [ %1913, %1912 ]
  %1918 = phi i32 [ %1897, %1914 ], [ %1908, %1912 ]
  %1919 = load ptr, ptr %78, align 8, !tbaa !37
  %1920 = zext i32 %1917 to i64
  %1921 = getelementptr inbounds i8, ptr %1919, i64 %1920
  %1922 = load i32, ptr %56, align 4, !tbaa !62
  %1923 = call i32 @llvm.umin.i32(i32 %1918, i32 %1922)
  br label %1929

1924:                                             ; preds = %1893
  %1925 = zext i32 %1894 to i64
  %1926 = sub nsw i64 0, %1925
  %1927 = getelementptr inbounds i8, ptr %93, i64 %1926
  %1928 = load i32, ptr %56, align 4, !tbaa !62
  br label %1929

1929:                                             ; preds = %1916, %1924
  %1930 = phi i32 [ %1928, %1924 ], [ %1922, %1916 ]
  %1931 = phi i32 [ %1928, %1924 ], [ %1923, %1916 ]
  %1932 = phi ptr [ %1927, %1924 ], [ %1921, %1916 ]
  %1933 = call i32 @llvm.umin.i32(i32 %1931, i32 %95)
  %1934 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %95, i32 %1933), !nosanitize !43
  %1935 = extractvalue { i32, i1 } %1934, 0, !nosanitize !43
  %1936 = extractvalue { i32, i1 } %1934, 1, !nosanitize !43
  br i1 %1936, label %136, label %1937, !nosanitize !43

1937:                                             ; preds = %1929
  %1938 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1930, i32 %1933), !nosanitize !43
  %1939 = extractvalue { i32, i1 } %1938, 1, !nosanitize !43
  br i1 %1939, label %136, label %1940, !nosanitize !43

1940:                                             ; preds = %1937
  %1941 = extractvalue { i32, i1 } %1938, 0, !nosanitize !43
  store i32 %1941, ptr %56, align 4, !tbaa !62
  br label %1942

1942:                                             ; preds = %1949, %1940
  %1943 = phi ptr [ %93, %1940 ], [ %1950, %1949 ]
  %1944 = phi i32 [ %1933, %1940 ], [ %1951, %1949 ]
  %1945 = phi ptr [ %1932, %1940 ], [ %1952, %1949 ]
  %1946 = load i8, ptr %1945, align 1, !tbaa !40
  store i8 %1946, ptr %1943, align 1, !tbaa !40
  %1947 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1944, i32 1), !nosanitize !43
  %1948 = extractvalue { i32, i1 } %1947, 1, !nosanitize !43
  br i1 %1948, label %136, label %1949, !nosanitize !43

1949:                                             ; preds = %1942
  %1950 = getelementptr inbounds i8, ptr %1943, i64 1
  %1951 = extractvalue { i32, i1 } %1947, 0, !nosanitize !43
  %1952 = getelementptr inbounds i8, ptr %1945, i64 1
  %1953 = icmp eq i32 %1951, 0
  br i1 %1953, label %1954, label %1942, !llvm.loop !98

1954:                                             ; preds = %1949
  %1955 = load i32, ptr %56, align 4, !tbaa !62
  %1956 = icmp eq i32 %1955, 0
  br i1 %1956, label %1957, label %2183

1957:                                             ; preds = %1954
  store i32 16200, ptr %21, align 8, !tbaa !16
  br label %2183

1958:                                             ; preds = %90
  %1959 = icmp eq i32 %95, 0
  br i1 %1959, label %2310, label %1960

1960:                                             ; preds = %1958
  %1961 = load i32, ptr %56, align 4, !tbaa !62
  %1962 = trunc i32 %1961 to i8
  store i8 %1962, ptr %93, align 1, !tbaa !40
  %1963 = add i32 %95, -1
  %1964 = getelementptr inbounds i8, ptr %93, i64 1
  store i32 16200, ptr %21, align 8, !tbaa !16
  br label %2183

1965:                                             ; preds = %90
  %1966 = load i32, ptr %49, align 8, !tbaa !20
  %1967 = icmp eq i32 %1966, 0
  br i1 %1967, label %2084, label %1968

1968:                                             ; preds = %1965
  %1969 = icmp ult i32 %97, 32
  br i1 %1969, label %1970, label %2032

1970:                                             ; preds = %1968
  %1971 = zext nneg i32 %97 to i64
  %1972 = icmp eq i32 %94, 0
  br i1 %1972, label %2303, label %1973

1973:                                             ; preds = %1970
  %1974 = load i8, ptr %92, align 1, !tbaa !40
  %1975 = zext i8 %1974 to i64
  %1976 = shl nuw nsw i64 %1975, %1971
  %1977 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %96, i64 %1976), !nosanitize !43
  %1978 = extractvalue { i64, i1 } %1977, 1, !nosanitize !43
  br i1 %1978, label %137, label %1979, !nosanitize !43

1979:                                             ; preds = %1973
  %1980 = extractvalue { i64, i1 } %1977, 0, !nosanitize !43
  %1981 = getelementptr inbounds i8, ptr %92, i64 1
  %1982 = add i32 %94, -1
  %1983 = add nuw nsw i64 %1971, 8
  %1984 = icmp ult i32 %97, 24
  br i1 %1984, label %1985, label %2026, !llvm.loop !99

1985:                                             ; preds = %1979
  %1986 = icmp eq i32 %1982, 0
  br i1 %1986, label %2303, label %1987

1987:                                             ; preds = %1985
  %1988 = load i8, ptr %1981, align 1, !tbaa !40
  %1989 = zext i8 %1988 to i64
  %1990 = shl nuw nsw i64 %1989, %1983
  %1991 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1980, i64 %1990), !nosanitize !43
  %1992 = extractvalue { i64, i1 } %1991, 1, !nosanitize !43
  br i1 %1992, label %137, label %1993, !nosanitize !43

1993:                                             ; preds = %1987
  %1994 = extractvalue { i64, i1 } %1991, 0, !nosanitize !43
  %1995 = getelementptr inbounds i8, ptr %92, i64 2
  %1996 = add i32 %94, -2
  %1997 = add nuw nsw i64 %1971, 16
  %1998 = icmp ult i32 %97, 16
  br i1 %1998, label %1999, label %2026, !llvm.loop !99

1999:                                             ; preds = %1993
  %2000 = icmp eq i32 %1996, 0
  br i1 %2000, label %2303, label %2001

2001:                                             ; preds = %1999
  %2002 = load i8, ptr %1995, align 1, !tbaa !40
  %2003 = zext i8 %2002 to i64
  %2004 = shl nuw nsw i64 %2003, %1997
  %2005 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1994, i64 %2004), !nosanitize !43
  %2006 = extractvalue { i64, i1 } %2005, 1, !nosanitize !43
  br i1 %2006, label %137, label %2007, !nosanitize !43

2007:                                             ; preds = %2001
  %2008 = extractvalue { i64, i1 } %2005, 0, !nosanitize !43
  %2009 = getelementptr inbounds i8, ptr %92, i64 3
  %2010 = add i32 %94, -3
  %2011 = add nuw nsw i64 %1971, 24
  %2012 = icmp ult i32 %97, 8
  br i1 %2012, label %2013, label %2026, !llvm.loop !99

2013:                                             ; preds = %2007
  %2014 = icmp eq i32 %2010, 0
  br i1 %2014, label %2303, label %2015

2015:                                             ; preds = %2013
  %2016 = load i8, ptr %2009, align 1, !tbaa !40
  %2017 = zext i8 %2016 to i64
  %2018 = shl nuw nsw i64 %2017, %2011
  %2019 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2008, i64 %2018), !nosanitize !43
  %2020 = extractvalue { i64, i1 } %2019, 1, !nosanitize !43
  br i1 %2020, label %137, label %2021, !nosanitize !43

2021:                                             ; preds = %2015
  %2022 = extractvalue { i64, i1 } %2019, 0, !nosanitize !43
  %2023 = getelementptr inbounds i8, ptr %92, i64 4
  %2024 = add i32 %94, -4
  %2025 = or disjoint i64 %1971, 32
  br label %2026

2026:                                             ; preds = %2021, %2007, %1993, %1979
  %2027 = phi i64 [ %1980, %1979 ], [ %1994, %1993 ], [ %2008, %2007 ], [ %2022, %2021 ]
  %2028 = phi ptr [ %1981, %1979 ], [ %1995, %1993 ], [ %2009, %2007 ], [ %2023, %2021 ]
  %2029 = phi i32 [ %1982, %1979 ], [ %1996, %1993 ], [ %2010, %2007 ], [ %2024, %2021 ]
  %2030 = phi i64 [ %1983, %1979 ], [ %1997, %1993 ], [ %2011, %2007 ], [ %2025, %2021 ]
  %2031 = trunc i64 %2030 to i32
  br label %2032

2032:                                             ; preds = %2026, %1968
  %2033 = phi ptr [ %92, %1968 ], [ %2028, %2026 ]
  %2034 = phi i32 [ %94, %1968 ], [ %2029, %2026 ]
  %2035 = phi i64 [ %96, %1968 ], [ %2027, %2026 ]
  %2036 = phi i32 [ %97, %1968 ], [ %2031, %2026 ]
  %2037 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %98, i32 %95), !nosanitize !43
  %2038 = extractvalue { i32, i1 } %2037, 0, !nosanitize !43
  %2039 = extractvalue { i32, i1 } %2037, 1, !nosanitize !43
  br i1 %2039, label %136, label %2040, !nosanitize !43

2040:                                             ; preds = %2032
  %2041 = zext i32 %2038 to i64
  %2042 = load i64, ptr %50, align 8, !tbaa !100
  %2043 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2042, i64 %2041), !nosanitize !43
  %2044 = extractvalue { i64, i1 } %2043, 1, !nosanitize !43
  br i1 %2044, label %137, label %2045, !nosanitize !43

2045:                                             ; preds = %2040
  %2046 = extractvalue { i64, i1 } %2043, 0, !nosanitize !43
  store i64 %2046, ptr %50, align 8, !tbaa !100
  %2047 = load i64, ptr %51, align 8, !tbaa !17
  %2048 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2047, i64 %2041), !nosanitize !43
  %2049 = extractvalue { i64, i1 } %2048, 1, !nosanitize !43
  br i1 %2049, label %137, label %2050, !nosanitize !43

2050:                                             ; preds = %2045
  %2051 = extractvalue { i64, i1 } %2048, 0, !nosanitize !43
  store i64 %2051, ptr %51, align 8, !tbaa !17
  %2052 = and i32 %1966, 4
  %2053 = icmp ne i32 %2052, 0
  %2054 = icmp ne i32 %2038, 0
  %2055 = select i1 %2053, i1 %2054, i1 false
  br i1 %2055, label %2056, label %2070

2056:                                             ; preds = %2050
  %2057 = load i32, ptr %52, align 8, !tbaa !24
  %2058 = icmp eq i32 %2057, 0
  %2059 = load i64, ptr %53, align 8, !tbaa !51
  %2060 = sub nsw i64 0, %2041
  %2061 = getelementptr inbounds i8, ptr %93, i64 %2060
  br i1 %2058, label %2064, label %2062

2062:                                             ; preds = %2056
  %2063 = call i64 @crc32(i64 noundef %2059, ptr noundef nonnull %2061, i32 noundef %2038) #10
  br label %2066

2064:                                             ; preds = %2056
  %2065 = call i64 @adler32(i64 noundef %2059, ptr noundef nonnull %2061, i32 noundef %2038) #10
  br label %2066

2066:                                             ; preds = %2064, %2062
  %2067 = phi i64 [ %2063, %2062 ], [ %2065, %2064 ]
  store i64 %2067, ptr %53, align 8, !tbaa !51
  store i64 %2067, ptr %54, align 8, !tbaa !21
  %2068 = load i32, ptr %49, align 8, !tbaa !20
  %2069 = and i32 %2068, 4
  br label %2070

2070:                                             ; preds = %2066, %2050
  %2071 = phi i32 [ %2069, %2066 ], [ %2052, %2050 ]
  %2072 = phi i32 [ %2068, %2066 ], [ %1966, %2050 ]
  %2073 = icmp eq i32 %2071, 0
  br i1 %2073, label %2084, label %2074

2074:                                             ; preds = %2070
  %2075 = load i32, ptr %52, align 8, !tbaa !24
  %2076 = icmp eq i32 %2075, 0
  %2077 = trunc i64 %2035 to i32
  %2078 = call i32 @llvm.bswap.i32(i32 %2077)
  %2079 = zext i32 %2078 to i64
  %2080 = select i1 %2076, i64 %2079, i64 %2035
  %2081 = load i64, ptr %53, align 8, !tbaa !51
  %2082 = icmp eq i64 %2080, %2081
  br i1 %2082, label %2084, label %2083

2083:                                             ; preds = %2074
  store ptr @.str.17, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2183

2084:                                             ; preds = %2074, %2070, %1965
  %2085 = phi i32 [ 0, %1965 ], [ %2072, %2070 ], [ %2072, %2074 ]
  %2086 = phi ptr [ %92, %1965 ], [ %2033, %2070 ], [ %2033, %2074 ]
  %2087 = phi i32 [ %94, %1965 ], [ %2034, %2070 ], [ %2034, %2074 ]
  %2088 = phi i64 [ %96, %1965 ], [ 0, %2070 ], [ 0, %2074 ]
  %2089 = phi i32 [ %97, %1965 ], [ 0, %2070 ], [ 0, %2074 ]
  %2090 = phi i32 [ %98, %1965 ], [ %95, %2070 ], [ %95, %2074 ]
  store i32 16207, ptr %21, align 8, !tbaa !16
  br label %2091

2091:                                             ; preds = %104, %2084
  %2092 = phi i32 [ %105, %104 ], [ %2085, %2084 ]
  %2093 = phi ptr [ %92, %104 ], [ %2086, %2084 ]
  %2094 = phi i32 [ %94, %104 ], [ %2087, %2084 ]
  %2095 = phi i64 [ %96, %104 ], [ %2088, %2084 ]
  %2096 = phi i32 [ %97, %104 ], [ %2089, %2084 ]
  %2097 = phi i32 [ %98, %104 ], [ %2090, %2084 ]
  %2098 = icmp eq i32 %2092, 0
  br i1 %2098, label %2178, label %2099

2099:                                             ; preds = %2091
  %2100 = load i32, ptr %52, align 8, !tbaa !24
  %2101 = icmp eq i32 %2100, 0
  br i1 %2101, label %2178, label %2102

2102:                                             ; preds = %2099
  %2103 = icmp ult i32 %2096, 32
  br i1 %2103, label %2104, label %2166

2104:                                             ; preds = %2102
  %2105 = zext nneg i32 %2096 to i64
  %2106 = icmp eq i32 %2094, 0
  br i1 %2106, label %2297, label %2107

2107:                                             ; preds = %2104
  %2108 = load i8, ptr %2093, align 1, !tbaa !40
  %2109 = zext i8 %2108 to i64
  %2110 = shl nuw nsw i64 %2109, %2105
  %2111 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2095, i64 %2110), !nosanitize !43
  %2112 = extractvalue { i64, i1 } %2111, 1, !nosanitize !43
  br i1 %2112, label %137, label %2113, !nosanitize !43

2113:                                             ; preds = %2107
  %2114 = extractvalue { i64, i1 } %2111, 0, !nosanitize !43
  %2115 = getelementptr inbounds i8, ptr %2093, i64 1
  %2116 = add i32 %2094, -1
  %2117 = add nuw nsw i64 %2105, 8
  %2118 = icmp ult i32 %2096, 24
  br i1 %2118, label %2119, label %2160, !llvm.loop !101

2119:                                             ; preds = %2113
  %2120 = icmp eq i32 %2116, 0
  br i1 %2120, label %2297, label %2121

2121:                                             ; preds = %2119
  %2122 = load i8, ptr %2115, align 1, !tbaa !40
  %2123 = zext i8 %2122 to i64
  %2124 = shl nuw nsw i64 %2123, %2117
  %2125 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2114, i64 %2124), !nosanitize !43
  %2126 = extractvalue { i64, i1 } %2125, 1, !nosanitize !43
  br i1 %2126, label %137, label %2127, !nosanitize !43

2127:                                             ; preds = %2121
  %2128 = extractvalue { i64, i1 } %2125, 0, !nosanitize !43
  %2129 = getelementptr inbounds i8, ptr %2093, i64 2
  %2130 = add i32 %2094, -2
  %2131 = add nuw nsw i64 %2105, 16
  %2132 = icmp ult i32 %2096, 16
  br i1 %2132, label %2133, label %2160, !llvm.loop !101

2133:                                             ; preds = %2127
  %2134 = icmp eq i32 %2130, 0
  br i1 %2134, label %2297, label %2135

2135:                                             ; preds = %2133
  %2136 = load i8, ptr %2129, align 1, !tbaa !40
  %2137 = zext i8 %2136 to i64
  %2138 = shl nuw nsw i64 %2137, %2131
  %2139 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2128, i64 %2138), !nosanitize !43
  %2140 = extractvalue { i64, i1 } %2139, 1, !nosanitize !43
  br i1 %2140, label %137, label %2141, !nosanitize !43

2141:                                             ; preds = %2135
  %2142 = extractvalue { i64, i1 } %2139, 0, !nosanitize !43
  %2143 = getelementptr inbounds i8, ptr %2093, i64 3
  %2144 = add i32 %2094, -3
  %2145 = add nuw nsw i64 %2105, 24
  %2146 = icmp ult i32 %2096, 8
  br i1 %2146, label %2147, label %2160, !llvm.loop !101

2147:                                             ; preds = %2141
  %2148 = icmp eq i32 %2144, 0
  br i1 %2148, label %2297, label %2149

2149:                                             ; preds = %2147
  %2150 = load i8, ptr %2143, align 1, !tbaa !40
  %2151 = zext i8 %2150 to i64
  %2152 = shl nuw nsw i64 %2151, %2145
  %2153 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2142, i64 %2152), !nosanitize !43
  %2154 = extractvalue { i64, i1 } %2153, 1, !nosanitize !43
  br i1 %2154, label %137, label %2155, !nosanitize !43

2155:                                             ; preds = %2149
  %2156 = extractvalue { i64, i1 } %2153, 0, !nosanitize !43
  %2157 = getelementptr inbounds i8, ptr %2093, i64 4
  %2158 = add i32 %2094, -4
  %2159 = or disjoint i64 %2105, 32
  br label %2160

2160:                                             ; preds = %2155, %2141, %2127, %2113
  %2161 = phi i64 [ %2114, %2113 ], [ %2128, %2127 ], [ %2142, %2141 ], [ %2156, %2155 ]
  %2162 = phi ptr [ %2115, %2113 ], [ %2129, %2127 ], [ %2143, %2141 ], [ %2157, %2155 ]
  %2163 = phi i32 [ %2116, %2113 ], [ %2130, %2127 ], [ %2144, %2141 ], [ %2158, %2155 ]
  %2164 = phi i64 [ %2117, %2113 ], [ %2131, %2127 ], [ %2145, %2141 ], [ %2159, %2155 ]
  %2165 = trunc i64 %2164 to i32
  br label %2166

2166:                                             ; preds = %2160, %2102
  %2167 = phi ptr [ %2093, %2102 ], [ %2162, %2160 ]
  %2168 = phi i32 [ %2094, %2102 ], [ %2163, %2160 ]
  %2169 = phi i64 [ %2095, %2102 ], [ %2161, %2160 ]
  %2170 = phi i32 [ %2096, %2102 ], [ %2165, %2160 ]
  %2171 = and i32 %2092, 4
  %2172 = icmp eq i32 %2171, 0
  br i1 %2172, label %2178, label %2173

2173:                                             ; preds = %2166
  %2174 = load i64, ptr %51, align 8, !tbaa !17
  %2175 = and i64 %2174, 4294967295
  %2176 = icmp eq i64 %2169, %2175
  br i1 %2176, label %2178, label %2177

2177:                                             ; preds = %2173
  store ptr @.str.18, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2183

2178:                                             ; preds = %2173, %2166, %2099, %2091
  %2179 = phi ptr [ %2093, %2099 ], [ %2093, %2091 ], [ %2167, %2166 ], [ %2167, %2173 ]
  %2180 = phi i32 [ %2094, %2099 ], [ %2094, %2091 ], [ %2168, %2166 ], [ %2168, %2173 ]
  %2181 = phi i64 [ %2095, %2099 ], [ %2095, %2091 ], [ 0, %2166 ], [ 0, %2173 ]
  %2182 = phi i32 [ %2096, %2099 ], [ %2096, %2091 ], [ 0, %2166 ], [ 0, %2173 ]
  store i32 16208, ptr %21, align 8, !tbaa !16
  br label %2310

2183:                                             ; preds = %1280, %1380, %1954, %1957, %1438, %1447, %2177, %2083, %1960, %1903, %1814, %1595, %1591, %1587, %1421, %1412, %1408, %1151, %1077, %1026, %1023, %989, %906, %874, %782, %769, %263, %259, %214, %213, %198, %194, %176, %129
  %2184 = phi ptr [ %2167, %2177 ], [ %2033, %2083 ], [ %92, %1960 ], [ %1883, %1903 ], [ %1883, %1957 ], [ %1883, %1954 ], [ %1792, %1814 ], [ %1441, %1447 ], [ %1441, %1438 ], [ %1569, %1587 ], [ %1569, %1591 ], [ %1569, %1595 ], [ %1402, %1408 ], [ %1402, %1412 ], [ %1402, %1421 ], [ %1093, %1151 ], [ %1059, %1077 ], [ %1015, %1023 ], [ %999, %1026 ], [ %981, %989 ], [ %859, %874 ], [ %890, %906 ], [ %758, %769 ], [ %771, %782 ], [ %252, %259 ], [ %252, %263 ], [ %92, %129 ], [ %164, %176 ], [ %164, %194 ], [ %164, %198 ], [ %164, %213 ], [ %164, %214 ], [ %1364, %1380 ], [ %1272, %1280 ]
  %2185 = phi ptr [ %93, %2177 ], [ %93, %2083 ], [ %1964, %1960 ], [ %93, %1903 ], [ %1950, %1957 ], [ %1950, %1954 ], [ %93, %1814 ], [ %1439, %1447 ], [ %1439, %1438 ], [ %93, %1587 ], [ %93, %1591 ], [ %93, %1595 ], [ %93, %1408 ], [ %93, %1412 ], [ %93, %1421 ], [ %93, %1151 ], [ %93, %1077 ], [ %1025, %1023 ], [ %93, %1026 ], [ %93, %989 ], [ %93, %874 ], [ %93, %906 ], [ %93, %769 ], [ %93, %782 ], [ %93, %259 ], [ %93, %263 ], [ %93, %129 ], [ %93, %176 ], [ %93, %194 ], [ %93, %198 ], [ %93, %213 ], [ %93, %214 ], [ %93, %1380 ], [ %93, %1280 ]
  %2186 = phi i32 [ %2168, %2177 ], [ %2034, %2083 ], [ %94, %1960 ], [ %1884, %1903 ], [ %1884, %1957 ], [ %1884, %1954 ], [ %1793, %1814 ], [ %1442, %1447 ], [ %1442, %1438 ], [ %1570, %1587 ], [ %1570, %1591 ], [ %1570, %1595 ], [ %1403, %1408 ], [ %1403, %1412 ], [ %1403, %1421 ], [ %1094, %1151 ], [ %1060, %1077 ], [ %1012, %1023 ], [ %1000, %1026 ], [ %982, %989 ], [ %860, %874 ], [ %891, %906 ], [ %759, %769 ], [ %772, %782 ], [ %253, %259 ], [ %253, %263 ], [ %94, %129 ], [ %165, %176 ], [ %165, %194 ], [ %165, %198 ], [ %165, %213 ], [ %165, %214 ], [ %1365, %1380 ], [ %1273, %1280 ]
  %2187 = phi i32 [ %95, %2177 ], [ %95, %2083 ], [ %1963, %1960 ], [ %95, %1903 ], [ %1935, %1957 ], [ %1935, %1954 ], [ %95, %1814 ], [ %1440, %1447 ], [ %1440, %1438 ], [ %95, %1587 ], [ %95, %1591 ], [ %95, %1595 ], [ %95, %1408 ], [ %95, %1412 ], [ %95, %1421 ], [ %95, %1151 ], [ %95, %1077 ], [ %1017, %1023 ], [ %95, %1026 ], [ %95, %989 ], [ %95, %874 ], [ %95, %906 ], [ %95, %769 ], [ %95, %782 ], [ %95, %259 ], [ %95, %263 ], [ %95, %129 ], [ %95, %176 ], [ %95, %194 ], [ %95, %198 ], [ %95, %213 ], [ %95, %214 ], [ %95, %1380 ], [ %95, %1280 ]
  %2188 = phi i64 [ %2169, %2177 ], [ %2035, %2083 ], [ %96, %1960 ], [ %1885, %1903 ], [ %1885, %1957 ], [ %1885, %1954 ], [ %1801, %1814 ], [ %1443, %1447 ], [ %1443, %1438 ], [ %1578, %1587 ], [ %1578, %1591 ], [ %1578, %1595 ], [ %1404, %1408 ], [ %1404, %1412 ], [ %1404, %1421 ], [ %1095, %1151 ], [ %1072, %1077 ], [ %1001, %1023 ], [ %1001, %1026 ], [ %983, %989 ], [ %877, %874 ], [ %908, %906 ], [ %760, %769 ], [ %773, %782 ], [ %254, %259 ], [ %254, %263 ], [ %96, %129 ], [ 0, %176 ], [ %166, %194 ], [ %166, %198 ], [ %200, %213 ], [ 0, %214 ], [ %1366, %1380 ], [ %1277, %1280 ]
  %2189 = phi i32 [ %2170, %2177 ], [ %2036, %2083 ], [ %97, %1960 ], [ %1886, %1903 ], [ %1886, %1957 ], [ %1886, %1954 ], [ %1803, %1814 ], [ %1444, %1447 ], [ %1444, %1438 ], [ %1580, %1587 ], [ %1580, %1591 ], [ %1580, %1595 ], [ %1405, %1408 ], [ %1405, %1412 ], [ %1405, %1421 ], [ %1096, %1151 ], [ %1073, %1077 ], [ %1002, %1023 ], [ %1002, %1026 ], [ %984, %989 ], [ %875, %874 ], [ %907, %906 ], [ %761, %769 ], [ %774, %782 ], [ %255, %259 ], [ %255, %263 ], [ %97, %129 ], [ 0, %176 ], [ %167, %194 ], [ %167, %198 ], [ %201, %213 ], [ 0, %214 ], [ %1370, %1380 ], [ %1278, %1280 ]
  %2190 = phi i32 [ %2097, %2177 ], [ %95, %2083 ], [ %98, %1960 ], [ %98, %1903 ], [ %98, %1957 ], [ %98, %1954 ], [ %98, %1814 ], [ %98, %1447 ], [ %98, %1438 ], [ %98, %1587 ], [ %98, %1591 ], [ %98, %1595 ], [ %98, %1408 ], [ %98, %1412 ], [ %98, %1421 ], [ %98, %1151 ], [ %98, %1077 ], [ %98, %1023 ], [ %98, %1026 ], [ %98, %989 ], [ %98, %874 ], [ %98, %906 ], [ %98, %769 ], [ %98, %782 ], [ %98, %259 ], [ %98, %263 ], [ %98, %129 ], [ %98, %176 ], [ %98, %194 ], [ %98, %198 ], [ %98, %213 ], [ %98, %214 ], [ %98, %1380 ], [ %98, %1280 ]
  %2191 = phi i32 [ %99, %2177 ], [ %99, %2083 ], [ %99, %1960 ], [ %1887, %1903 ], [ %1887, %1957 ], [ %1887, %1954 ], [ %1668, %1814 ], [ %1434, %1447 ], [ %1434, %1438 ], [ %1434, %1587 ], [ %1434, %1591 ], [ %1434, %1595 ], [ %1158, %1408 ], [ %1410, %1412 ], [ %1419, %1421 ], [ %1149, %1151 ], [ %99, %1077 ], [ %99, %1023 ], [ %99, %1026 ], [ %99, %989 ], [ %99, %874 ], [ %99, %906 ], [ %99, %769 ], [ %99, %782 ], [ %99, %259 ], [ %99, %263 ], [ %99, %129 ], [ %99, %176 ], [ %99, %194 ], [ %99, %198 ], [ %99, %213 ], [ %99, %214 ], [ %1158, %1380 ], [ %1158, %1280 ]
  %2192 = load i32, ptr %21, align 8, !tbaa !16
  br label %90

2193:                                             ; preds = %1190
  %2194 = zext i32 %1178 to i64
  %2195 = shl i32 %1178, 3
  %2196 = add i32 %2195, %1180
  %2197 = getelementptr i8, ptr %1177, i64 %2194
  br label %2310

2198:                                             ; preds = %144, %126
  %2199 = phi i64 [ %96, %126 ], [ %139, %144 ]
  %2200 = zext i32 %94 to i64
  %2201 = shl i32 %94, 3
  %2202 = add i32 %2201, %97
  %2203 = getelementptr i8, ptr %92, i64 %2200
  br label %2310

2204:                                             ; preds = %738, %723
  %2205 = phi i64 [ %716, %723 ], [ %733, %738 ]
  %2206 = zext i32 %715 to i64
  %2207 = shl i32 %715, 3
  %2208 = add i32 %2207, %717
  %2209 = getelementptr i8, ptr %714, i64 %2206
  br label %2310

2210:                                             ; preds = %462, %442
  %2211 = phi i64 [ %445, %442 ], [ %457, %462 ]
  %2212 = zext i32 %444 to i64
  %2213 = shl i32 %444, 3
  %2214 = add i32 %2213, %446
  %2215 = getelementptr i8, ptr %443, i64 %2212
  br label %2310

2216:                                             ; preds = %393, %374
  %2217 = phi i64 [ %376, %374 ], [ %388, %393 ]
  %2218 = zext i32 %377 to i64
  %2219 = shl i32 %377, 3
  %2220 = add i32 %2219, %375
  %2221 = getelementptr i8, ptr %378, i64 %2218
  br label %2310

2222:                                             ; preds = %333, %319, %305, %286
  %2223 = phi i64 [ %288, %286 ], [ %300, %305 ], [ %314, %319 ], [ %328, %333 ]
  %2224 = zext i32 %289 to i64
  %2225 = shl i32 %289, 3
  %2226 = add i32 %2225, %287
  %2227 = getelementptr i8, ptr %290, i64 %2224
  br label %2310

2228:                                             ; preds = %232, %118
  %2229 = phi i64 [ %96, %118 ], [ %227, %232 ]
  %2230 = zext i32 %94 to i64
  %2231 = shl i32 %94, 3
  %2232 = add i32 %2231, %97
  %2233 = getelementptr i8, ptr %92, i64 %2230
  br label %2310

2234:                                             ; preds = %824, %810, %796, %113
  %2235 = phi i64 [ %96, %113 ], [ %791, %796 ], [ %805, %810 ], [ %819, %824 ]
  %2236 = zext i32 %94 to i64
  %2237 = shl i32 %94, 3
  %2238 = add i32 %2237, %97
  %2239 = getelementptr i8, ptr %92, i64 %2236
  br label %2310

2240:                                             ; preds = %962, %948, %934, %918
  %2241 = phi i64 [ %915, %918 ], [ %929, %934 ], [ %943, %948 ], [ %957, %962 ]
  %2242 = zext i32 %94 to i64
  %2243 = shl i32 %94, 3
  %2244 = add i32 %2243, %919
  %2245 = getelementptr i8, ptr %92, i64 %2242
  br label %2310

2246:                                             ; preds = %1830
  %2247 = zext i32 %1821 to i64
  %2248 = shl i32 %1821, 3
  %2249 = add i32 %2248, %1823
  %2250 = getelementptr i8, ptr %1820, i64 %2247
  br label %2310

2251:                                             ; preds = %1742
  %2252 = zext i32 %1714 to i64
  %2253 = shl i32 %1714, 3
  %2254 = add i32 %2253, %1716
  %2255 = getelementptr i8, ptr %1713, i64 %2252
  br label %2310

2256:                                             ; preds = %1683
  %2257 = zext i32 %1665 to i64
  %2258 = shl i32 %1665, 3
  %2259 = add i32 %2258, %1667
  %2260 = getelementptr i8, ptr %1664, i64 %2257
  br label %2310

2261:                                             ; preds = %1610
  %2262 = zext i32 %1601 to i64
  %2263 = shl i32 %1601, 3
  %2264 = add i32 %2263, %1603
  %2265 = getelementptr i8, ptr %1600, i64 %2262
  br label %2310

2266:                                             ; preds = %1523
  %2267 = zext i32 %1494 to i64
  %2268 = shl i32 %1494, 3
  %2269 = add i32 %2268, %1496
  %2270 = getelementptr i8, ptr %1493, i64 %2267
  br label %2310

2271:                                             ; preds = %1463
  %2272 = zext i32 %1431 to i64
  %2273 = shl i32 %1431, 3
  %2274 = add i32 %2273, %1433
  %2275 = getelementptr i8, ptr %1430, i64 %2272
  br label %2310

2276:                                             ; preds = %1328
  %2277 = zext i32 %1220 to i64
  %2278 = shl i32 %1220, 3
  %2279 = add i32 %2278, %1222
  %2280 = getelementptr i8, ptr %1219, i64 %2277
  br label %2310

2281:                                             ; preds = %1251
  %2282 = zext i32 %1220 to i64
  %2283 = shl i32 %1220, 3
  %2284 = add i32 %2283, %1222
  %2285 = getelementptr i8, ptr %1219, i64 %2282
  br label %2310

2286:                                             ; preds = %1293
  %2287 = zext i32 %1220 to i64
  %2288 = shl i32 %1220, 3
  %2289 = add i32 %2288, %1222
  %2290 = getelementptr i8, ptr %1219, i64 %2287
  br label %2310

2291:                                             ; preds = %1039, %108
  %2292 = phi i64 [ %96, %108 ], [ %1034, %1039 ]
  %2293 = zext i32 %94 to i64
  %2294 = shl i32 %94, 3
  %2295 = add i32 %2294, %97
  %2296 = getelementptr i8, ptr %92, i64 %2293
  br label %2310

2297:                                             ; preds = %2147, %2133, %2119, %2104
  %2298 = phi i64 [ %2095, %2104 ], [ %2114, %2119 ], [ %2128, %2133 ], [ %2142, %2147 ]
  %2299 = zext i32 %2094 to i64
  %2300 = shl i32 %2094, 3
  %2301 = add i32 %2300, %2096
  %2302 = getelementptr i8, ptr %2093, i64 %2299
  br label %2310

2303:                                             ; preds = %2013, %1999, %1985, %1970
  %2304 = phi i64 [ %96, %1970 ], [ %1980, %1985 ], [ %1994, %1999 ], [ %2008, %2013 ]
  %2305 = zext i32 %94 to i64
  %2306 = shl i32 %94, 3
  %2307 = add i32 %2306, %97
  %2308 = getelementptr i8, ptr %92, i64 %2305
  br label %2310

2309:                                             ; preds = %90
  br label %2310

2310:                                             ; preds = %579, %595, %638, %658, %701, %853, %990, %1005, %1422, %1882, %1958, %867, %1108, %90, %2309, %2303, %2297, %2291, %2286, %2281, %2276, %2271, %2266, %2261, %2256, %2251, %2246, %2240, %2234, %2228, %2222, %2216, %2210, %2204, %2198, %2193, %2178, %899
  %2311 = phi i32 [ %95, %899 ], [ %95, %2178 ], [ %95, %2193 ], [ %95, %2198 ], [ %95, %2204 ], [ %95, %2210 ], [ %95, %2216 ], [ %95, %2222 ], [ %95, %2228 ], [ %95, %2234 ], [ %95, %2240 ], [ %95, %2246 ], [ %95, %2251 ], [ %95, %2256 ], [ %95, %2261 ], [ %95, %2266 ], [ %95, %2271 ], [ %95, %2276 ], [ %95, %2281 ], [ %95, %2286 ], [ %95, %2291 ], [ %95, %2297 ], [ %95, %2303 ], [ %95, %90 ], [ %95, %1108 ], [ %95, %579 ], [ %95, %595 ], [ %95, %638 ], [ %95, %658 ], [ %95, %701 ], [ %95, %853 ], [ %95, %990 ], [ %95, %1005 ], [ %95, %1422 ], [ 0, %1882 ], [ 0, %1958 ], [ %95, %867 ], [ %95, %2309 ]
  %2312 = phi ptr [ %890, %899 ], [ %2179, %2178 ], [ %2197, %2193 ], [ %2203, %2198 ], [ %2209, %2204 ], [ %2215, %2210 ], [ %2221, %2216 ], [ %2227, %2222 ], [ %2233, %2228 ], [ %2239, %2234 ], [ %2245, %2240 ], [ %2250, %2246 ], [ %2255, %2251 ], [ %2260, %2256 ], [ %2265, %2261 ], [ %2270, %2266 ], [ %2275, %2271 ], [ %2280, %2276 ], [ %2285, %2281 ], [ %2290, %2286 ], [ %2296, %2291 ], [ %2302, %2297 ], [ %2308, %2303 ], [ %92, %90 ], [ %1106, %1108 ], [ %581, %579 ], [ %588, %595 ], [ %641, %638 ], [ %651, %658 ], [ %704, %701 ], [ %854, %853 ], [ %981, %990 ], [ %999, %1005 ], [ %1402, %1422 ], [ %1883, %1882 ], [ %92, %1958 ], [ %859, %867 ], [ %92, %2309 ]
  %2313 = phi i32 [ %891, %899 ], [ %2180, %2178 ], [ 0, %2193 ], [ 0, %2198 ], [ 0, %2204 ], [ 0, %2210 ], [ 0, %2216 ], [ 0, %2222 ], [ 0, %2228 ], [ 0, %2234 ], [ 0, %2240 ], [ 0, %2246 ], [ 0, %2251 ], [ 0, %2256 ], [ 0, %2261 ], [ 0, %2266 ], [ 0, %2271 ], [ 0, %2276 ], [ 0, %2281 ], [ 0, %2286 ], [ 0, %2291 ], [ 0, %2297 ], [ 0, %2303 ], [ %94, %90 ], [ 0, %1108 ], [ %582, %579 ], [ 0, %595 ], [ %639, %638 ], [ 0, %658 ], [ %702, %701 ], [ %855, %853 ], [ %982, %990 ], [ %1000, %1005 ], [ %1403, %1422 ], [ %1884, %1882 ], [ %94, %1958 ], [ 0, %867 ], [ %94, %2309 ]
  %2314 = phi i64 [ %901, %899 ], [ %2181, %2178 ], [ %1192, %2193 ], [ %2199, %2198 ], [ %2205, %2204 ], [ %2211, %2210 ], [ %2217, %2216 ], [ %2223, %2222 ], [ %2229, %2228 ], [ %2235, %2234 ], [ %2241, %2240 ], [ %1832, %2246 ], [ %1744, %2251 ], [ %1685, %2256 ], [ %1612, %2261 ], [ %1525, %2266 ], [ %1465, %2271 ], [ %1330, %2276 ], [ %1253, %2281 ], [ %1295, %2286 ], [ %2292, %2291 ], [ %2298, %2297 ], [ %2304, %2303 ], [ %96, %90 ], [ %1104, %1108 ], [ %514, %579 ], [ %590, %595 ], [ %590, %638 ], [ %653, %658 ], [ %653, %701 ], [ %856, %853 ], [ 0, %990 ], [ %1001, %1005 ], [ %1404, %1422 ], [ %1885, %1882 ], [ %96, %1958 ], [ %861, %867 ], [ %96, %2309 ]
  %2315 = phi i32 [ %900, %899 ], [ %2182, %2178 ], [ %2196, %2193 ], [ %2202, %2198 ], [ %2208, %2204 ], [ %2214, %2210 ], [ %2220, %2216 ], [ %2226, %2222 ], [ %2232, %2228 ], [ %2238, %2234 ], [ %2244, %2240 ], [ %2249, %2246 ], [ %2254, %2251 ], [ %2259, %2256 ], [ %2264, %2261 ], [ %2269, %2266 ], [ %2274, %2271 ], [ %2279, %2276 ], [ %2284, %2281 ], [ %2289, %2286 ], [ %2295, %2291 ], [ %2301, %2297 ], [ %2307, %2303 ], [ %97, %90 ], [ %1103, %1108 ], [ %515, %579 ], [ %591, %595 ], [ %591, %638 ], [ %654, %658 ], [ %654, %701 ], [ %857, %853 ], [ 0, %990 ], [ %1002, %1005 ], [ %1405, %1422 ], [ %1886, %1882 ], [ %97, %1958 ], [ %862, %867 ], [ %97, %2309 ]
  %2316 = phi i32 [ %98, %899 ], [ %2097, %2178 ], [ %98, %2193 ], [ %98, %2198 ], [ %98, %2204 ], [ %98, %2210 ], [ %98, %2216 ], [ %98, %2222 ], [ %98, %2228 ], [ %98, %2234 ], [ %98, %2240 ], [ %98, %2246 ], [ %98, %2251 ], [ %98, %2256 ], [ %98, %2261 ], [ %98, %2266 ], [ %98, %2271 ], [ %98, %2276 ], [ %98, %2281 ], [ %98, %2286 ], [ %98, %2291 ], [ %2097, %2297 ], [ %98, %2303 ], [ %98, %90 ], [ %98, %1108 ], [ %98, %867 ], [ %98, %1958 ], [ %98, %1882 ], [ %98, %1422 ], [ %98, %1005 ], [ %98, %990 ], [ %98, %853 ], [ %98, %701 ], [ %98, %658 ], [ %98, %638 ], [ %98, %595 ], [ %98, %579 ], [ %98, %2309 ]
  %2317 = phi i32 [ %99, %899 ], [ 1, %2178 ], [ %1158, %2193 ], [ %99, %2198 ], [ %99, %2204 ], [ %99, %2210 ], [ %99, %2216 ], [ %99, %2222 ], [ %99, %2228 ], [ %99, %2234 ], [ %99, %2240 ], [ %1824, %2246 ], [ %1668, %2251 ], [ %1668, %2256 ], [ %1604, %2261 ], [ %1434, %2266 ], [ %1434, %2271 ], [ %1158, %2276 ], [ %1158, %2281 ], [ %1158, %2286 ], [ %99, %2291 ], [ %99, %2297 ], [ %99, %2303 ], [ -3, %90 ], [ %99, %1108 ], [ %99, %579 ], [ %99, %595 ], [ %99, %638 ], [ %99, %658 ], [ %99, %701 ], [ %99, %853 ], [ %99, %990 ], [ %99, %1005 ], [ 0, %1422 ], [ %1887, %1882 ], [ %99, %1958 ], [ %99, %867 ], [ 1, %2309 ]
  store ptr %93, ptr %26, align 8, !tbaa !44
  store i32 %2311, ptr %41, align 8, !tbaa !47
  store ptr %2312, ptr %0, align 8, !tbaa !45
  store i32 %2313, ptr %43, align 8, !tbaa !46
  store i64 %2314, ptr %45, align 8, !tbaa !27
  store i32 %2315, ptr %47, align 8, !tbaa !28
  %2318 = load i32, ptr %79, align 4, !tbaa !34
  %2319 = icmp eq i32 %2318, 0
  br i1 %2319, label %2320, label %2329

2320:                                             ; preds = %2310
  %2321 = icmp eq i32 %2316, %2311
  br i1 %2321, label %2414, label %2322

2322:                                             ; preds = %2320
  %2323 = load i32, ptr %21, align 8, !tbaa !16
  %2324 = icmp ult i32 %2323, 16209
  br i1 %2324, label %2325, label %2414

2325:                                             ; preds = %2322
  %2326 = icmp ult i32 %2323, 16206
  %2327 = icmp ne i32 %1, 4
  %2328 = or i1 %2327, %2326
  br i1 %2328, label %2329, label %2414

2329:                                             ; preds = %2325, %2310
  %2330 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2316, i32 %2311), !nosanitize !43
  %2331 = extractvalue { i32, i1 } %2330, 1, !nosanitize !43
  br i1 %2331, label %136, label %2332, !nosanitize !43

2332:                                             ; preds = %2329
  %2333 = extractvalue { i32, i1 } %2330, 0, !nosanitize !43
  %2334 = load ptr, ptr %14, align 8, !tbaa !13
  %2335 = getelementptr inbounds %struct.inflate_state, ptr %2334, i64 0, i32 14
  %2336 = load ptr, ptr %2335, align 8, !tbaa !37
  %2337 = icmp eq ptr %2336, null
  br i1 %2337, label %2338, label %2347

2338:                                             ; preds = %2332
  %2339 = load ptr, ptr %6, align 8, !tbaa !5
  %2340 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %2341 = load ptr, ptr %2340, align 8, !tbaa !39
  %2342 = getelementptr inbounds %struct.inflate_state, ptr %2334, i64 0, i32 10
  %2343 = load i32, ptr %2342, align 8, !tbaa !38
  %2344 = shl nuw i32 1, %2343
  %2345 = call ptr %2339(ptr noundef %2341, i32 noundef %2344, i32 noundef 1) #10
  store ptr %2345, ptr %2335, align 8, !tbaa !37
  %2346 = icmp eq ptr %2345, null
  br i1 %2346, label %2413, label %2347

2347:                                             ; preds = %2338, %2332
  %2348 = phi ptr [ %2345, %2338 ], [ %2336, %2332 ]
  %2349 = getelementptr inbounds %struct.inflate_state, ptr %2334, i64 0, i32 11
  %2350 = load i32, ptr %2349, align 4, !tbaa !34
  %2351 = icmp eq i32 %2350, 0
  br i1 %2351, label %2352, label %2358

2352:                                             ; preds = %2347
  %2353 = getelementptr inbounds %struct.inflate_state, ptr %2334, i64 0, i32 10
  %2354 = load i32, ptr %2353, align 8, !tbaa !38
  %2355 = shl nuw i32 1, %2354
  store i32 %2355, ptr %2349, align 4, !tbaa !34
  %2356 = getelementptr inbounds %struct.inflate_state, ptr %2334, i64 0, i32 13
  store i32 0, ptr %2356, align 4, !tbaa !36
  %2357 = getelementptr inbounds %struct.inflate_state, ptr %2334, i64 0, i32 12
  store i32 0, ptr %2357, align 8, !tbaa !35
  br label %2358

2358:                                             ; preds = %2352, %2347
  %2359 = phi i32 [ %2355, %2352 ], [ %2350, %2347 ]
  %2360 = icmp ugt i32 %2359, %2333
  br i1 %2360, label %2368, label %2361

2361:                                             ; preds = %2358
  %2362 = zext i32 %2359 to i64
  %2363 = sub nsw i64 0, %2362
  %2364 = getelementptr inbounds i8, ptr %93, i64 %2363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2348, ptr noundef nonnull align 1 dereferenceable(1) %2364, i64 %2362, i1 false)
  %2365 = getelementptr inbounds %struct.inflate_state, ptr %2334, i64 0, i32 13
  store i32 0, ptr %2365, align 4, !tbaa !36
  %2366 = load i32, ptr %2349, align 4, !tbaa !34
  %2367 = getelementptr inbounds %struct.inflate_state, ptr %2334, i64 0, i32 12
  store i32 %2366, ptr %2367, align 8, !tbaa !35
  br label %2414

2368:                                             ; preds = %2358
  %2369 = getelementptr inbounds %struct.inflate_state, ptr %2334, i64 0, i32 13
  %2370 = load i32, ptr %2369, align 4, !tbaa !36
  %2371 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2359, i32 %2370), !nosanitize !43
  %2372 = extractvalue { i32, i1 } %2371, 1, !nosanitize !43
  br i1 %2372, label %2373, label %2374, !nosanitize !43

2373:                                             ; preds = %2374, %2368
  call void @llvm.ubsantrap(i8 21) #11, !nosanitize !43
  unreachable, !nosanitize !43

2374:                                             ; preds = %2368
  %2375 = extractvalue { i32, i1 } %2371, 0, !nosanitize !43
  %2376 = call i32 @llvm.umin.i32(i32 %2375, i32 %2333)
  %2377 = zext i32 %2370 to i64
  %2378 = getelementptr inbounds i8, ptr %2348, i64 %2377
  %2379 = zext i32 %2333 to i64
  %2380 = sub nsw i64 0, %2379
  %2381 = getelementptr inbounds i8, ptr %93, i64 %2380
  %2382 = zext i32 %2376 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2378, ptr align 1 %2381, i64 %2382, i1 false)
  %2383 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2333, i32 %2376), !nosanitize !43
  %2384 = extractvalue { i32, i1 } %2383, 0, !nosanitize !43
  %2385 = extractvalue { i32, i1 } %2383, 1, !nosanitize !43
  br i1 %2385, label %2373, label %2386, !nosanitize !43

2386:                                             ; preds = %2374
  %2387 = icmp eq i32 %2384, 0
  br i1 %2387, label %2395, label %2388

2388:                                             ; preds = %2386
  %2389 = load ptr, ptr %2335, align 8, !tbaa !37
  %2390 = zext i32 %2384 to i64
  %2391 = sub nsw i64 0, %2390
  %2392 = getelementptr inbounds i8, ptr %93, i64 %2391
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2389, ptr nonnull align 1 %2392, i64 %2390, i1 false)
  store i32 %2384, ptr %2369, align 4, !tbaa !36
  %2393 = load i32, ptr %2349, align 4, !tbaa !34
  %2394 = getelementptr inbounds %struct.inflate_state, ptr %2334, i64 0, i32 12
  store i32 %2393, ptr %2394, align 8, !tbaa !35
  br label %2414

2395:                                             ; preds = %2386
  %2396 = load i32, ptr %2369, align 4, !tbaa !36
  %2397 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2396, i32 %2376), !nosanitize !43
  %2398 = extractvalue { i32, i1 } %2397, 1, !nosanitize !43
  br i1 %2398, label %2399, label %2400, !nosanitize !43

2399:                                             ; preds = %2408, %2395
  call void @llvm.ubsantrap(i8 0) #11, !nosanitize !43
  unreachable, !nosanitize !43

2400:                                             ; preds = %2395
  %2401 = extractvalue { i32, i1 } %2397, 0, !nosanitize !43
  %2402 = load i32, ptr %2349, align 4, !tbaa !34
  %2403 = icmp eq i32 %2401, %2402
  %2404 = select i1 %2403, i32 0, i32 %2401
  store i32 %2404, ptr %2369, align 4
  %2405 = getelementptr inbounds %struct.inflate_state, ptr %2334, i64 0, i32 12
  %2406 = load i32, ptr %2405, align 8, !tbaa !35
  %2407 = icmp ult i32 %2406, %2402
  br i1 %2407, label %2408, label %2414

2408:                                             ; preds = %2400
  %2409 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2406, i32 %2376), !nosanitize !43
  %2410 = extractvalue { i32, i1 } %2409, 1, !nosanitize !43
  br i1 %2410, label %2399, label %2411, !nosanitize !43

2411:                                             ; preds = %2408
  %2412 = extractvalue { i32, i1 } %2409, 0, !nosanitize !43
  store i32 %2412, ptr %2405, align 8, !tbaa !35
  br label %2414

2413:                                             ; preds = %2338
  store i32 16210, ptr %21, align 8, !tbaa !16
  br label %2495

2414:                                             ; preds = %2361, %2400, %2411, %2388, %2325, %2322, %2320
  %2415 = load i32, ptr %43, align 8, !tbaa !46
  %2416 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %44, i32 %2415), !nosanitize !43
  %2417 = extractvalue { i32, i1 } %2416, 0, !nosanitize !43
  %2418 = extractvalue { i32, i1 } %2416, 1, !nosanitize !43
  br i1 %2418, label %136, label %2419, !nosanitize !43

2419:                                             ; preds = %2414
  %2420 = load i32, ptr %41, align 8, !tbaa !47
  %2421 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2316, i32 %2420), !nosanitize !43
  %2422 = extractvalue { i32, i1 } %2421, 0, !nosanitize !43
  %2423 = extractvalue { i32, i1 } %2421, 1, !nosanitize !43
  br i1 %2423, label %136, label %2424, !nosanitize !43

2424:                                             ; preds = %2419
  %2425 = zext i32 %2417 to i64
  %2426 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %2427 = load i64, ptr %2426, align 8, !tbaa !18
  %2428 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2427, i64 %2425), !nosanitize !43
  %2429 = extractvalue { i64, i1 } %2428, 1, !nosanitize !43
  br i1 %2429, label %137, label %2430, !nosanitize !43

2430:                                             ; preds = %2424
  %2431 = extractvalue { i64, i1 } %2428, 0, !nosanitize !43
  store i64 %2431, ptr %2426, align 8, !tbaa !18
  %2432 = zext i32 %2422 to i64
  %2433 = load i64, ptr %50, align 8, !tbaa !100
  %2434 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2433, i64 %2432), !nosanitize !43
  %2435 = extractvalue { i64, i1 } %2434, 1, !nosanitize !43
  br i1 %2435, label %137, label %2436, !nosanitize !43

2436:                                             ; preds = %2430
  %2437 = extractvalue { i64, i1 } %2434, 0, !nosanitize !43
  store i64 %2437, ptr %50, align 8, !tbaa !100
  %2438 = load i64, ptr %51, align 8, !tbaa !17
  %2439 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2438, i64 %2432), !nosanitize !43
  %2440 = extractvalue { i64, i1 } %2439, 1, !nosanitize !43
  br i1 %2440, label %137, label %2441, !nosanitize !43

2441:                                             ; preds = %2436
  %2442 = extractvalue { i64, i1 } %2439, 0, !nosanitize !43
  store i64 %2442, ptr %51, align 8, !tbaa !17
  %2443 = load i32, ptr %49, align 8, !tbaa !20
  %2444 = and i32 %2443, 4
  %2445 = icmp ne i32 %2444, 0
  %2446 = icmp ne i32 %2422, 0
  %2447 = select i1 %2445, i1 %2446, i1 false
  br i1 %2447, label %2448, label %2461

2448:                                             ; preds = %2441
  %2449 = load i32, ptr %52, align 8, !tbaa !24
  %2450 = icmp eq i32 %2449, 0
  %2451 = load i64, ptr %53, align 8, !tbaa !51
  %2452 = load ptr, ptr %26, align 8, !tbaa !44
  %2453 = sub nsw i64 0, %2432
  %2454 = getelementptr inbounds i8, ptr %2452, i64 %2453
  br i1 %2450, label %2457, label %2455

2455:                                             ; preds = %2448
  %2456 = call i64 @crc32(i64 noundef %2451, ptr noundef nonnull %2454, i32 noundef %2422) #10
  br label %2459

2457:                                             ; preds = %2448
  %2458 = call i64 @adler32(i64 noundef %2451, ptr noundef nonnull %2454, i32 noundef %2422) #10
  br label %2459

2459:                                             ; preds = %2457, %2455
  %2460 = phi i64 [ %2456, %2455 ], [ %2458, %2457 ]
  store i64 %2460, ptr %53, align 8, !tbaa !51
  store i64 %2460, ptr %54, align 8, !tbaa !21
  br label %2461

2461:                                             ; preds = %2459, %2441
  %2462 = load i32, ptr %47, align 8, !tbaa !28
  %2463 = load i32, ptr %83, align 4, !tbaa !22
  %2464 = icmp eq i32 %2463, 0
  %2465 = select i1 %2464, i32 0, i32 64
  %2466 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2462, i32 %2465), !nosanitize !43
  %2467 = extractvalue { i32, i1 } %2466, 1, !nosanitize !43
  br i1 %2467, label %137, label %2468, !nosanitize !43

2468:                                             ; preds = %2461
  %2469 = extractvalue { i32, i1 } %2466, 0, !nosanitize !43
  %2470 = load i32, ptr %21, align 8, !tbaa !16
  %2471 = icmp eq i32 %2470, 16191
  %2472 = select i1 %2471, i32 128, i32 0
  %2473 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2469, i32 %2472), !nosanitize !43
  %2474 = extractvalue { i32, i1 } %2473, 1, !nosanitize !43
  br i1 %2474, label %137, label %2475, !nosanitize !43

2475:                                             ; preds = %2468
  %2476 = extractvalue { i32, i1 } %2473, 0, !nosanitize !43
  %2477 = icmp eq i32 %2470, 16199
  %2478 = icmp eq i32 %2470, 16194
  %2479 = or i1 %2477, %2478
  %2480 = select i1 %2479, i32 256, i32 0
  %2481 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2476, i32 %2480), !nosanitize !43
  %2482 = extractvalue { i32, i1 } %2481, 1, !nosanitize !43
  br i1 %2482, label %137, label %2483, !nosanitize !43

2483:                                             ; preds = %2475
  %2484 = extractvalue { i32, i1 } %2481, 0, !nosanitize !43
  %2485 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 11
  store i32 %2484, ptr %2485, align 8, !tbaa !19
  %2486 = icmp eq i32 %2417, 0
  %2487 = icmp eq i32 %2422, 0
  %2488 = select i1 %2486, i1 %2487, i1 false
  %2489 = icmp eq i32 %1, 4
  %2490 = or i1 %2489, %2488
  %2491 = icmp eq i32 %2317, 0
  %2492 = select i1 %2490, i1 %2491, i1 false
  %2493 = select i1 %2492, i32 -5, i32 %2317
  br label %2495

2494:                                             ; preds = %90
  br label %2495

2495:                                             ; preds = %90, %2494, %13, %17, %2, %5, %9, %20, %25, %32, %2483, %2413, %850
  %2496 = phi i32 [ -4, %2413 ], [ %2493, %2483 ], [ 2, %850 ], [ -2, %32 ], [ -2, %25 ], [ -2, %20 ], [ -2, %9 ], [ -2, %5 ], [ -2, %2 ], [ -2, %17 ], [ -2, %13 ], [ -4, %2494 ], [ -2, %90 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %2496
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #4

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare void @inflate_fixed(ptr noundef) local_unnamed_addr #5

declare i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @inflate_fast(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateEnd(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %37, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !14
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !16
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 14
  %25 = load ptr, ptr %24, align 8, !tbaa !37
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !39
  tail call void %9(ptr noundef %29, ptr noundef nonnull %25) #10
  %30 = load ptr, ptr %8, align 8, !tbaa !12
  %31 = load ptr, ptr %12, align 8, !tbaa !13
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi ptr [ %31, %27 ], [ %13, %23 ]
  %34 = phi ptr [ %30, %27 ], [ %9, %23 ]
  %35 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %36 = load ptr, ptr %35, align 8, !tbaa !39
  tail call void %34(ptr noundef %36, ptr noundef %33) #10
  store ptr null, ptr %12, align 8, !tbaa !13
  br label %37

37:                                               ; preds = %11, %15, %1, %3, %7, %18, %32
  %38 = phi i32 [ 0, %32 ], [ -2, %18 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateGetDictionary(ptr noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %56, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %56, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %56, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %56, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !14
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %56

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !16
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %56

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 12
  %27 = load i32, ptr %26, align 8, !tbaa !35
  %28 = icmp ne i32 %27, 0
  %29 = icmp ne ptr %1, null
  %30 = and i1 %29, %28
  br i1 %30, label %31, label %52

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 13
  %33 = load i32, ptr %32, align 4, !tbaa !36
  %34 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %27, i32 %33), !nosanitize !43
  %35 = extractvalue { i32, i1 } %34, 1, !nosanitize !43
  br i1 %35, label %36, label %37, !nosanitize !43

36:                                               ; preds = %31
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !43
  unreachable, !nosanitize !43

37:                                               ; preds = %31
  %38 = extractvalue { i32, i1 } %34, 0, !nosanitize !43
  %39 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 14
  %40 = load ptr, ptr %39, align 8, !tbaa !37
  %41 = zext i32 %33 to i64
  %42 = getelementptr inbounds i8, ptr %40, i64 %41
  %43 = zext i32 %38 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %42, i64 %43, i1 false)
  %44 = load i32, ptr %26, align 8, !tbaa !35
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %1, i64 %45
  %47 = load i32, ptr %32, align 4, !tbaa !36
  %48 = zext i32 %47 to i64
  %49 = sub nsw i64 0, %48
  %50 = getelementptr inbounds i8, ptr %46, i64 %49
  %51 = load ptr, ptr %39, align 8, !tbaa !37
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %50, ptr align 1 %51, i64 %48, i1 false)
  br label %52

52:                                               ; preds = %37, %25
  %53 = icmp eq ptr %2, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %52
  %55 = load i32, ptr %26, align 8, !tbaa !35
  store i32 %55, ptr %2, align 4, !tbaa !42
  br label %56

56:                                               ; preds = %13, %17, %3, %5, %9, %52, %54, %20
  %57 = phi i32 [ -2, %20 ], [ 0, %54 ], [ 0, %52 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateSetDictionary(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %122, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %122, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %122, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %122, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !14
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %122

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !16
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %122

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !20
  %28 = icmp eq i32 %27, 0
  %29 = icmp eq i32 %22, 16190
  br i1 %28, label %31, label %30

30:                                               ; preds = %25
  br i1 %29, label %32, label %122

31:                                               ; preds = %25
  br i1 %29, label %32, label %40

32:                                               ; preds = %30, %31
  %33 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  %34 = tail call i64 @adler32(i64 noundef %33, ptr noundef %1, i32 noundef %2) #10
  %35 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 7
  %36 = load i64, ptr %35, align 8, !tbaa !51
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %122

38:                                               ; preds = %32
  %39 = load ptr, ptr %14, align 8, !tbaa !13
  br label %40

40:                                               ; preds = %38, %31
  %41 = phi ptr [ %39, %38 ], [ %15, %31 ]
  %42 = zext i32 %2 to i64
  %43 = getelementptr inbounds i8, ptr %1, i64 %42
  %44 = getelementptr inbounds %struct.inflate_state, ptr %41, i64 0, i32 14
  %45 = load ptr, ptr %44, align 8, !tbaa !37
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load ptr, ptr %6, align 8, !tbaa !5
  %49 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %50 = load ptr, ptr %49, align 8, !tbaa !39
  %51 = getelementptr inbounds %struct.inflate_state, ptr %41, i64 0, i32 10
  %52 = load i32, ptr %51, align 8, !tbaa !38
  %53 = shl nuw i32 1, %52
  %54 = tail call ptr %48(ptr noundef %50, i32 noundef %53, i32 noundef 1) #10
  store ptr %54, ptr %44, align 8, !tbaa !37
  %55 = icmp eq ptr %54, null
  br i1 %55, label %119, label %56

56:                                               ; preds = %47, %40
  %57 = phi ptr [ %54, %47 ], [ %45, %40 ]
  %58 = getelementptr inbounds %struct.inflate_state, ptr %41, i64 0, i32 11
  %59 = load i32, ptr %58, align 4, !tbaa !34
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.inflate_state, ptr %41, i64 0, i32 10
  %63 = load i32, ptr %62, align 8, !tbaa !38
  %64 = shl nuw i32 1, %63
  store i32 %64, ptr %58, align 4, !tbaa !34
  %65 = getelementptr inbounds %struct.inflate_state, ptr %41, i64 0, i32 13
  store i32 0, ptr %65, align 4, !tbaa !36
  %66 = getelementptr inbounds %struct.inflate_state, ptr %41, i64 0, i32 12
  store i32 0, ptr %66, align 8, !tbaa !35
  br label %67

67:                                               ; preds = %61, %56
  %68 = phi i32 [ %64, %61 ], [ %59, %56 ]
  %69 = icmp ugt i32 %68, %2
  br i1 %69, label %77, label %70

70:                                               ; preds = %67
  %71 = zext i32 %68 to i64
  %72 = sub nsw i64 0, %71
  %73 = getelementptr inbounds i8, ptr %43, i64 %72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %57, ptr noundef nonnull align 1 dereferenceable(1) %73, i64 %71, i1 false)
  %74 = getelementptr inbounds %struct.inflate_state, ptr %41, i64 0, i32 13
  store i32 0, ptr %74, align 4, !tbaa !36
  %75 = load i32, ptr %58, align 4, !tbaa !34
  %76 = getelementptr inbounds %struct.inflate_state, ptr %41, i64 0, i32 12
  store i32 %75, ptr %76, align 8, !tbaa !35
  br label %120

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.inflate_state, ptr %41, i64 0, i32 13
  %79 = load i32, ptr %78, align 4, !tbaa !36
  %80 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %68, i32 %79), !nosanitize !43
  %81 = extractvalue { i32, i1 } %80, 1, !nosanitize !43
  br i1 %81, label %82, label %83, !nosanitize !43

82:                                               ; preds = %83, %77
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !43
  unreachable, !nosanitize !43

83:                                               ; preds = %77
  %84 = extractvalue { i32, i1 } %80, 0, !nosanitize !43
  %85 = tail call i32 @llvm.umin.i32(i32 %84, i32 %2)
  %86 = zext i32 %79 to i64
  %87 = getelementptr inbounds i8, ptr %57, i64 %86
  %88 = zext i32 %85 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %87, ptr align 1 %1, i64 %88, i1 false)
  %89 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2, i32 %85), !nosanitize !43
  %90 = extractvalue { i32, i1 } %89, 0, !nosanitize !43
  %91 = extractvalue { i32, i1 } %89, 1, !nosanitize !43
  br i1 %91, label %82, label %92, !nosanitize !43

92:                                               ; preds = %83
  %93 = icmp eq i32 %90, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %92
  %95 = load ptr, ptr %44, align 8, !tbaa !37
  %96 = zext i32 %90 to i64
  %97 = sub nsw i64 0, %96
  %98 = getelementptr inbounds i8, ptr %43, i64 %97
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %95, ptr nonnull align 1 %98, i64 %96, i1 false)
  store i32 %90, ptr %78, align 4, !tbaa !36
  %99 = load i32, ptr %58, align 4, !tbaa !34
  %100 = getelementptr inbounds %struct.inflate_state, ptr %41, i64 0, i32 12
  store i32 %99, ptr %100, align 8, !tbaa !35
  br label %120

101:                                              ; preds = %92
  %102 = load i32, ptr %78, align 4, !tbaa !36
  %103 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %102, i32 %85), !nosanitize !43
  %104 = extractvalue { i32, i1 } %103, 1, !nosanitize !43
  br i1 %104, label %105, label %106, !nosanitize !43

105:                                              ; preds = %114, %101
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !43
  unreachable, !nosanitize !43

106:                                              ; preds = %101
  %107 = extractvalue { i32, i1 } %103, 0, !nosanitize !43
  %108 = load i32, ptr %58, align 4, !tbaa !34
  %109 = icmp eq i32 %107, %108
  %110 = select i1 %109, i32 0, i32 %107
  store i32 %110, ptr %78, align 4
  %111 = getelementptr inbounds %struct.inflate_state, ptr %41, i64 0, i32 12
  %112 = load i32, ptr %111, align 8, !tbaa !35
  %113 = icmp ult i32 %112, %108
  br i1 %113, label %114, label %120

114:                                              ; preds = %106
  %115 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %112, i32 %85), !nosanitize !43
  %116 = extractvalue { i32, i1 } %115, 1, !nosanitize !43
  br i1 %116, label %105, label %117, !nosanitize !43

117:                                              ; preds = %114
  %118 = extractvalue { i32, i1 } %115, 0, !nosanitize !43
  store i32 %118, ptr %111, align 8, !tbaa !35
  br label %120

119:                                              ; preds = %47
  store i32 16210, ptr %21, align 8, !tbaa !16
  br label %122

120:                                              ; preds = %94, %117, %106, %70
  %121 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 4
  store i32 1, ptr %121, align 4, !tbaa !23
  br label %122

122:                                              ; preds = %13, %17, %3, %5, %9, %32, %30, %20, %120, %119
  %123 = phi i32 [ -4, %119 ], [ 0, %120 ], [ -2, %20 ], [ -2, %30 ], [ -3, %32 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %123
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflateGetHeader(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !14
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !16
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !20
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 9
  store ptr %1, ptr %30, align 8, !tbaa !26
  %31 = getelementptr inbounds %struct.gz_header_s, ptr %1, i64 0, i32 12
  store i32 0, ptr %31, align 8, !tbaa !52
  br label %32

32:                                               ; preds = %12, %16, %2, %4, %8, %24, %19, %29
  %33 = phi i32 [ 0, %29 ], [ -2, %19 ], [ -2, %24 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateSync(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  %3 = icmp eq ptr %0, null
  br i1 %3, label %215, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %215, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %215, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %215, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !14
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %215

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !16
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %215

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !46
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 16
  %30 = load i32, ptr %29, align 8, !tbaa !28
  %31 = icmp ult i32 %30, 8
  br i1 %31, label %215, label %32

32:                                               ; preds = %28, %24
  %33 = icmp eq i32 %21, 16211
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 27
  %36 = load i32, ptr %35, align 4, !tbaa !42
  br label %131

37:                                               ; preds = %32
  store i32 16211, ptr %20, align 8, !tbaa !16
  %38 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 16
  %39 = load i32, ptr %38, align 8, !tbaa !28
  %40 = and i32 %39, 7
  %41 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 15
  %42 = load i64, ptr %41, align 8, !tbaa !27
  %43 = zext nneg i32 %40 to i64
  %44 = lshr i64 %42, %43
  store i64 %44, ptr %41, align 8, !tbaa !27
  %45 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %39, i32 %40), !nosanitize !43
  %46 = extractvalue { i32, i1 } %45, 1, !nosanitize !43
  br i1 %46, label %60, label %47, !nosanitize !43

47:                                               ; preds = %37
  %48 = extractvalue { i32, i1 } %45, 0
  %49 = icmp ugt i32 %48, 7
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store i32 %48, ptr %38, align 8, !tbaa !28
  br label %127

51:                                               ; preds = %47
  %52 = add i32 %48, -8
  %53 = lshr i32 %52, 3
  %54 = add nuw nsw i32 %53, 1
  %55 = zext nneg i32 %54 to i64
  %56 = and i64 %55, 3
  %57 = icmp ult i32 %52, 24
  br i1 %57, label %86, label %58

58:                                               ; preds = %51
  %59 = and i64 %55, 1073741820
  br label %62

60:                                               ; preds = %161, %37
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !43
  unreachable, !nosanitize !43

61:                                               ; preds = %167
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !43
  unreachable, !nosanitize !43

62:                                               ; preds = %62, %58
  %63 = phi i64 [ %44, %58 ], [ %82, %62 ]
  %64 = phi i64 [ 0, %58 ], [ %79, %62 ]
  %65 = phi i32 [ %48, %58 ], [ %83, %62 ]
  %66 = phi i64 [ 0, %58 ], [ %84, %62 ]
  %67 = or disjoint i64 %64, 1
  %68 = trunc i64 %63 to i8
  %69 = getelementptr inbounds [4 x i8], ptr %2, i64 0, i64 %64
  store i8 %68, ptr %69, align 1, !tbaa !40
  %70 = lshr i64 %63, 8
  %71 = or disjoint i64 %64, 2
  %72 = trunc i64 %70 to i8
  %73 = getelementptr inbounds [4 x i8], ptr %2, i64 0, i64 %67
  store i8 %72, ptr %73, align 1, !tbaa !40
  %74 = lshr i64 %63, 16
  %75 = or disjoint i64 %64, 3
  %76 = trunc i64 %74 to i8
  %77 = getelementptr inbounds [4 x i8], ptr %2, i64 0, i64 %71
  store i8 %76, ptr %77, align 1, !tbaa !40
  %78 = lshr i64 %63, 24
  %79 = add nuw nsw i64 %64, 4
  %80 = trunc i64 %78 to i8
  %81 = getelementptr inbounds [4 x i8], ptr %2, i64 0, i64 %75
  store i8 %80, ptr %81, align 1, !tbaa !40
  %82 = lshr i64 %63, 32
  %83 = add i32 %65, -32
  %84 = add i64 %66, 4
  %85 = icmp eq i64 %84, %59
  br i1 %85, label %86, label %62, !llvm.loop !102

86:                                               ; preds = %62, %51
  %87 = phi i64 [ undef, %51 ], [ %82, %62 ]
  %88 = phi i32 [ undef, %51 ], [ %83, %62 ]
  %89 = phi i64 [ %44, %51 ], [ %82, %62 ]
  %90 = phi i64 [ 0, %51 ], [ %79, %62 ]
  %91 = phi i32 [ %48, %51 ], [ %83, %62 ]
  %92 = icmp eq i64 %56, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %86, %93
  %94 = phi i64 [ %101, %93 ], [ %89, %86 ]
  %95 = phi i64 [ %98, %93 ], [ %90, %86 ]
  %96 = phi i32 [ %102, %93 ], [ %91, %86 ]
  %97 = phi i64 [ %103, %93 ], [ 0, %86 ]
  %98 = add nuw nsw i64 %95, 1
  %99 = trunc i64 %94 to i8
  %100 = getelementptr inbounds [4 x i8], ptr %2, i64 0, i64 %95
  store i8 %99, ptr %100, align 1, !tbaa !40
  %101 = lshr i64 %94, 8
  %102 = add i32 %96, -8
  %103 = add i64 %97, 1
  %104 = icmp eq i64 %103, %56
  br i1 %104, label %105, label %93, !llvm.loop !103

105:                                              ; preds = %93, %86
  %106 = phi i64 [ %87, %86 ], [ %101, %93 ]
  %107 = phi i32 [ %88, %86 ], [ %102, %93 ]
  store i64 %106, ptr %41, align 8, !tbaa !27
  store i32 %107, ptr %38, align 8, !tbaa !28
  %108 = zext nneg i32 %54 to i64
  br label %109

109:                                              ; preds = %109, %105
  %110 = phi i64 [ 0, %105 ], [ %112, %109 ]
  %111 = phi i32 [ 0, %105 ], [ %123, %109 ]
  %112 = add nuw nsw i64 %110, 1
  %113 = icmp ult i32 %111, 2
  %114 = select i1 %113, i32 0, i32 255
  %115 = getelementptr inbounds i8, ptr %2, i64 %110
  %116 = load i8, ptr %115, align 1, !tbaa !40
  %117 = zext i8 %116 to i32
  %118 = icmp eq i32 %114, %117
  %119 = add nuw nsw i32 %111, 1
  %120 = icmp eq i8 %116, 0
  %121 = sub nuw nsw i32 4, %111
  %122 = select i1 %120, i32 %121, i32 0
  %123 = select i1 %118, i32 %119, i32 %122
  %124 = icmp ult i64 %112, %108
  %125 = icmp ult i32 %123, 4
  %126 = select i1 %124, i1 %125, i1 false
  br i1 %126, label %109, label %127, !llvm.loop !105

127:                                              ; preds = %109, %50
  %128 = phi i32 [ 0, %50 ], [ %123, %109 ]
  %129 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 27
  store i32 %128, ptr %129, align 4, !tbaa !42
  %130 = load i32, ptr %25, align 8, !tbaa !46
  br label %131

131:                                              ; preds = %34, %127
  %132 = phi i32 [ %128, %127 ], [ %36, %34 ]
  %133 = phi i32 [ %130, %127 ], [ %26, %34 ]
  %134 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 27
  %135 = load ptr, ptr %0, align 8, !tbaa !45
  %136 = icmp ne i32 %133, 0
  %137 = icmp ult i32 %132, 4
  %138 = select i1 %136, i1 %137, i1 false
  br i1 %138, label %139, label %161

139:                                              ; preds = %131
  %140 = zext i32 %133 to i64
  br label %141

141:                                              ; preds = %141, %139
  %142 = phi i64 [ 0, %139 ], [ %144, %141 ]
  %143 = phi i32 [ %132, %139 ], [ %155, %141 ]
  %144 = add nuw nsw i64 %142, 1
  %145 = icmp ult i32 %143, 2
  %146 = select i1 %145, i32 0, i32 255
  %147 = getelementptr inbounds i8, ptr %135, i64 %142
  %148 = load i8, ptr %147, align 1, !tbaa !40
  %149 = zext i8 %148 to i32
  %150 = icmp eq i32 %146, %149
  %151 = add nuw nsw i32 %143, 1
  %152 = icmp eq i8 %148, 0
  %153 = sub nuw nsw i32 4, %143
  %154 = select i1 %152, i32 %153, i32 0
  %155 = select i1 %150, i32 %151, i32 %154
  %156 = icmp ult i64 %144, %140
  %157 = icmp ult i32 %155, 4
  %158 = select i1 %156, i1 %157, i1 false
  br i1 %158, label %141, label %159, !llvm.loop !105

159:                                              ; preds = %141
  %160 = trunc i64 %144 to i32
  br label %161

161:                                              ; preds = %131, %159
  %162 = phi i32 [ %132, %131 ], [ %155, %159 ]
  %163 = phi i32 [ 0, %131 ], [ %160, %159 ]
  store i32 %162, ptr %134, align 4, !tbaa !42
  %164 = load i32, ptr %25, align 8, !tbaa !46
  %165 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %164, i32 %163), !nosanitize !43
  %166 = extractvalue { i32, i1 } %165, 1, !nosanitize !43
  br i1 %166, label %60, label %167, !nosanitize !43

167:                                              ; preds = %161
  %168 = extractvalue { i32, i1 } %165, 0, !nosanitize !43
  store i32 %168, ptr %25, align 8, !tbaa !46
  %169 = zext i32 %163 to i64
  %170 = getelementptr inbounds i8, ptr %135, i64 %169
  store ptr %170, ptr %0, align 8, !tbaa !45
  %171 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %172 = load i64, ptr %171, align 8, !tbaa !18
  %173 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %172, i64 %169), !nosanitize !43
  %174 = extractvalue { i64, i1 } %173, 1, !nosanitize !43
  br i1 %174, label %61, label %175, !nosanitize !43

175:                                              ; preds = %167
  %176 = extractvalue { i64, i1 } %173, 0, !nosanitize !43
  store i64 %176, ptr %171, align 8, !tbaa !18
  %177 = icmp eq i32 %162, 4
  br i1 %177, label %178, label %215

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 5
  %180 = load i32, ptr %179, align 8, !tbaa !24
  %181 = icmp eq i32 %180, -1
  %182 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 3
  br i1 %181, label %186, label %183

183:                                              ; preds = %178
  %184 = load i32, ptr %182, align 8, !tbaa !20
  %185 = and i32 %184, -5
  br label %186

186:                                              ; preds = %178, %183
  %187 = phi i32 [ %185, %183 ], [ 0, %178 ]
  store i32 %187, ptr %182, align 8, !tbaa !20
  %188 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %189 = load i64, ptr %188, align 8, !tbaa !100
  %190 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 11
  store i32 0, ptr %190, align 4, !tbaa !34
  %191 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 12
  store i32 0, ptr %191, align 8, !tbaa !35
  %192 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 13
  store i32 0, ptr %192, align 4, !tbaa !36
  %193 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 8
  store i64 0, ptr %193, align 8, !tbaa !17
  %194 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 11
  store i32 0, ptr %194, align 8, !tbaa !19
  %195 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %188, i8 0, i64 16, i1 false)
  %196 = load i32, ptr %195, align 8, !tbaa !20
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %186
  %199 = and i32 %196, 1
  %200 = zext nneg i32 %199 to i64
  %201 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %200, ptr %201, align 8, !tbaa !21
  br label %202

202:                                              ; preds = %186, %198
  %203 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 2
  store i32 0, ptr %203, align 4, !tbaa !22
  %204 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 4
  store i32 0, ptr %204, align 4, !tbaa !23
  %205 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 6
  store i32 32768, ptr %205, align 4, !tbaa !25
  %206 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 9
  store ptr null, ptr %206, align 8, !tbaa !26
  %207 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 15
  store i64 0, ptr %207, align 8, !tbaa !27
  %208 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 16
  store i32 0, ptr %208, align 8, !tbaa !28
  %209 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 31
  %210 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 28
  store ptr %209, ptr %210, align 8, !tbaa !29
  %211 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 21
  store ptr %209, ptr %211, align 8, !tbaa !30
  %212 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 20
  store ptr %209, ptr %212, align 8, !tbaa !31
  %213 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 32
  store i32 1, ptr %213, align 8, !tbaa !32
  %214 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 33
  store i32 -1, ptr %214, align 4, !tbaa !33
  store i64 %176, ptr %171, align 8, !tbaa !18
  store i64 %189, ptr %188, align 8, !tbaa !100
  store i32 %180, ptr %179, align 8, !tbaa !24
  store i32 16191, ptr %20, align 8, !tbaa !16
  br label %215

215:                                              ; preds = %12, %16, %1, %4, %8, %175, %28, %19, %202
  %216 = phi i32 [ 0, %202 ], [ -2, %19 ], [ -5, %28 ], [ -3, %175 ], [ -2, %8 ], [ -2, %4 ], [ -2, %1 ], [ -2, %16 ], [ -2, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %216
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @inflateSyncPoint(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !14
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !16
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = icmp eq i32 %20, 16193
  br i1 %24, label %25, label %30

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 16
  %27 = load i32, ptr %26, align 8, !tbaa !28
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  br label %30

30:                                               ; preds = %11, %15, %1, %3, %7, %23, %25, %18
  %31 = phi i32 [ -2, %18 ], [ 0, %23 ], [ %29, %25 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateCopy(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %88, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %88, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %88, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %88, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !14
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %88

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !16
  %22 = add i32 %21, -16212
  %23 = icmp ult i32 %22, -32
  %24 = icmp eq ptr %0, null
  %25 = or i1 %24, %23
  br i1 %25, label %88, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !39
  %29 = tail call ptr %6(ptr noundef %28, i32 noundef 1, i32 noundef 7160) #10
  %30 = icmp eq ptr %29, null
  br i1 %30, label %88, label %31

31:                                               ; preds = %26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7160) %29, i8 0, i64 7160, i1 false)
  %32 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 14
  %33 = load ptr, ptr %32, align 8, !tbaa !37
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %5, align 8, !tbaa !5
  %37 = load ptr, ptr %27, align 8, !tbaa !39
  %38 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 10
  %39 = load i32, ptr %38, align 8, !tbaa !38
  %40 = shl nuw i32 1, %39
  %41 = tail call ptr %36(ptr noundef %37, i32 noundef %40, i32 noundef 1) #10
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load ptr, ptr %9, align 8, !tbaa !12
  %45 = load ptr, ptr %27, align 8, !tbaa !39
  tail call void %44(ptr noundef %45, ptr noundef nonnull %29) #10
  br label %88

46:                                               ; preds = %35, %31
  %47 = phi ptr [ %41, %35 ], [ null, %31 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7160) %29, ptr noundef nonnull align 8 dereferenceable(7160) %14, i64 7160, i1 false)
  store ptr %0, ptr %29, align 8, !tbaa !14
  %48 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 20
  %49 = load ptr, ptr %48, align 8, !tbaa !31
  %50 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 31
  %51 = icmp ult ptr %49, %50
  %52 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 31, i64 1443
  %53 = icmp ugt ptr %49, %52
  %54 = select i1 %51, i1 true, i1 %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = ptrtoint ptr %50 to i64
  br label %70

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 31
  %59 = ptrtoint ptr %49 to i64
  %60 = ptrtoint ptr %50 to i64
  %61 = sub i64 %59, %60
  %62 = getelementptr inbounds i8, ptr %58, i64 %61
  %63 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 20
  store ptr %62, ptr %63, align 8, !tbaa !31
  %64 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 21
  %65 = load ptr, ptr %64, align 8, !tbaa !30
  %66 = ptrtoint ptr %65 to i64
  %67 = sub i64 %66, %60
  %68 = getelementptr inbounds i8, ptr %58, i64 %67
  %69 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 21
  store ptr %68, ptr %69, align 8, !tbaa !30
  br label %70

70:                                               ; preds = %55, %57
  %71 = phi i64 [ %56, %55 ], [ %60, %57 ]
  %72 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 31
  %73 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 28
  %74 = load ptr, ptr %73, align 8, !tbaa !29
  %75 = ptrtoint ptr %74 to i64
  %76 = sub i64 %75, %71
  %77 = getelementptr inbounds i8, ptr %72, i64 %76
  %78 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 28
  store ptr %77, ptr %78, align 8, !tbaa !29
  %79 = icmp eq ptr %47, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %70
  %81 = load ptr, ptr %32, align 8, !tbaa !37
  %82 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 12
  %83 = load i32, ptr %82, align 8, !tbaa !35
  %84 = zext i32 %83 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %47, ptr align 1 %81, i64 %84, i1 false)
  br label %85

85:                                               ; preds = %80, %70
  %86 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 14
  store ptr %47, ptr %86, align 8, !tbaa !37
  %87 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %29, ptr %87, align 8, !tbaa !13
  br label %88

88:                                               ; preds = %12, %16, %2, %4, %8, %26, %19, %85, %43
  %89 = phi i32 [ -4, %43 ], [ 0, %85 ], [ -2, %19 ], [ -4, %26 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %89
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflateUndermine(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !14
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !16
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 32
  store i32 1, ptr %25, align 8, !tbaa !32
  br label %26

26:                                               ; preds = %12, %16, %2, %4, %8, %19, %24
  %27 = phi i32 [ -3, %24 ], [ -2, %19 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflateValidate(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %37, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %37, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %37, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !14
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !16
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = icmp eq i32 %1, 0
  %26 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !20
  br i1 %25, label %28, label %30

28:                                               ; preds = %24
  %29 = and i32 %27, -5
  br label %34

30:                                               ; preds = %24
  %31 = icmp eq i32 %27, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = or i32 %27, 4
  store i32 %33, ptr %26, align 8, !tbaa !20
  br label %37

34:                                               ; preds = %28, %30
  %35 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %36 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 3
  store i32 %35, ptr %36, align 8, !tbaa !20
  br label %37

37:                                               ; preds = %12, %16, %2, %4, %8, %32, %34, %19
  %38 = phi i32 [ -2, %19 ], [ 0, %34 ], [ 0, %32 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define dso_local i64 @inflateMark(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %44, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %44, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %44, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !14
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %44

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !16
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %44

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 33
  %25 = load i32, ptr %24, align 4, !tbaa !33
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 16
  switch i32 %20, label %40 [
    i32 16195, label %28
    i32 16204, label %31
  ]

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 17
  %30 = load i32, ptr %29, align 4, !tbaa !62
  br label %40

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 34
  %33 = load i32, ptr %32, align 8, !tbaa !95
  %34 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 17
  %35 = load i32, ptr %34, align 4, !tbaa !62
  %36 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %33, i32 %35), !nosanitize !43
  %37 = extractvalue { i32, i1 } %36, 0, !nosanitize !43
  %38 = extractvalue { i32, i1 } %36, 1, !nosanitize !43
  br i1 %38, label %39, label %40, !nosanitize !43

39:                                               ; preds = %31
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !43
  unreachable, !nosanitize !43

40:                                               ; preds = %28, %31, %23
  %41 = phi i32 [ %30, %28 ], [ %37, %31 ], [ 0, %23 ]
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %27, %42
  br label %44

44:                                               ; preds = %11, %15, %1, %3, %7, %18, %40
  %45 = phi i64 [ %43, %40 ], [ -65536, %18 ], [ -65536, %7 ], [ -65536, %3 ], [ -65536, %1 ], [ -65536, %15 ], [ -65536, %11 ]
  ret i64 %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @inflateCodesUsed(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %31, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !14
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !16
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 28
  %25 = load ptr, ptr %24, align 8, !tbaa !29
  %26 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 31
  %27 = ptrtoint ptr %25 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  %30 = ashr exact i64 %29, 2
  br label %31

31:                                               ; preds = %11, %15, %1, %3, %7, %18, %23
  %32 = phi i64 [ %30, %23 ], [ -1, %18 ], [ -1, %7 ], [ -1, %3 ], [ -1, %1 ], [ -1, %15 ], [ -1, %11 ]
  ret i64 %32
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !7, i64 64}
!6 = !{!"z_stream_s", !7, i64 0, !10, i64 8, !11, i64 16, !7, i64 24, !10, i64 32, !11, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !10, i64 88, !11, i64 96, !11, i64 104}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!6, !7, i64 72}
!13 = !{!6, !7, i64 56}
!14 = !{!15, !7, i64 0}
!15 = !{!"inflate_state", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !11, i64 32, !11, i64 40, !7, i64 48, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !7, i64 72, !11, i64 80, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !7, i64 104, !7, i64 112, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !7, i64 144, !8, i64 152, !8, i64 792, !8, i64 1368, !10, i64 7144, !10, i64 7148, !10, i64 7152}
!16 = !{!15, !10, i64 8}
!17 = !{!15, !11, i64 40}
!18 = !{!6, !11, i64 16}
!19 = !{!6, !10, i64 88}
!20 = !{!15, !10, i64 16}
!21 = !{!6, !11, i64 96}
!22 = !{!15, !10, i64 12}
!23 = !{!15, !10, i64 20}
!24 = !{!15, !10, i64 24}
!25 = !{!15, !10, i64 28}
!26 = !{!15, !7, i64 48}
!27 = !{!15, !11, i64 80}
!28 = !{!15, !10, i64 88}
!29 = !{!15, !7, i64 144}
!30 = !{!15, !7, i64 112}
!31 = !{!15, !7, i64 104}
!32 = !{!15, !10, i64 7144}
!33 = !{!15, !10, i64 7148}
!34 = !{!15, !10, i64 60}
!35 = !{!15, !10, i64 64}
!36 = !{!15, !10, i64 68}
!37 = !{!15, !7, i64 72}
!38 = !{!15, !10, i64 56}
!39 = !{!6, !7, i64 80}
!40 = !{!8, !8, i64 0}
!41 = !{!6, !7, i64 48}
!42 = !{!10, !10, i64 0}
!43 = !{}
!44 = !{!6, !7, i64 24}
!45 = !{!6, !7, i64 0}
!46 = !{!6, !10, i64 8}
!47 = !{!6, !10, i64 32}
!48 = !{!15, !10, i64 100}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!15, !11, i64 32}
!52 = !{!53, !10, i64 72}
!53 = !{!"gz_header_s", !10, i64 0, !11, i64 8, !10, i64 16, !10, i64 20, !7, i64 24, !10, i64 32, !10, i64 36, !7, i64 40, !10, i64 48, !7, i64 56, !10, i64 64, !10, i64 68, !10, i64 72}
!54 = distinct !{!54, !50}
!55 = !{!53, !10, i64 0}
!56 = distinct !{!56, !50}
!57 = !{!53, !11, i64 8}
!58 = distinct !{!58, !50}
!59 = !{!53, !10, i64 16}
!60 = !{!53, !10, i64 20}
!61 = distinct !{!61, !50}
!62 = !{!15, !10, i64 92}
!63 = !{!53, !10, i64 32}
!64 = !{!53, !7, i64 24}
!65 = !{!53, !10, i64 36}
!66 = !{!53, !7, i64 40}
!67 = !{!53, !10, i64 48}
!68 = distinct !{!68, !50}
!69 = !{!53, !7, i64 56}
!70 = !{!53, !10, i64 64}
!71 = distinct !{!71, !50}
!72 = distinct !{!72, !50}
!73 = !{!53, !10, i64 68}
!74 = distinct !{!74, !50}
!75 = distinct !{!75, !50}
!76 = distinct !{!76, !50}
!77 = !{!15, !10, i64 132}
!78 = !{!15, !10, i64 136}
!79 = !{!15, !10, i64 128}
!80 = !{!15, !10, i64 140}
!81 = !{!82, !82, i64 0}
!82 = !{!"short", !8, i64 0}
!83 = distinct !{!83, !50}
!84 = distinct !{!84, !50}
!85 = !{!15, !10, i64 120}
!86 = !{i64 0, i64 1, !40, i64 1, i64 2, !81}
!87 = !{i64 0, i64 2, !81}
!88 = distinct !{!88, !50}
!89 = distinct !{!89, !50}
!90 = distinct !{!90, !50}
!91 = distinct !{!91, !50}
!92 = !{!15, !10, i64 124}
!93 = !{i64 0, i64 1, !40, i64 1, i64 1, !40, i64 2, i64 2, !81}
!94 = distinct !{!94, !50}
!95 = !{!15, !10, i64 7152}
!96 = !{!15, !10, i64 96}
!97 = distinct !{!97, !50}
!98 = distinct !{!98, !50}
!99 = distinct !{!99, !50}
!100 = !{!6, !11, i64 40}
!101 = distinct !{!101, !50}
!102 = distinct !{!102, !50}
!103 = distinct !{!103, !104}
!104 = !{!"llvm.loop.unroll.disable"}
!105 = distinct !{!105, !50}
