; ModuleID = '/mydata/zstd/lib/decompress/zstd_ddict.c'
source_filename = "/mydata/zstd/lib/decompress/zstd_ddict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZSTD_DDict_s = type { ptr, ptr, i64, %struct.ZSTD_entropyDTables_t, i32, i32, %struct.ZSTD_customMem }
%struct.ZSTD_entropyDTables_t = type { [513 x %struct.ZSTD_seqSymbol], [257 x %struct.ZSTD_seqSymbol], [513 x %struct.ZSTD_seqSymbol], [4097 x i32], [3 x i32], [157 x i32] }
%struct.ZSTD_seqSymbol = type { i16, i8, i8, i32 }
%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.ZSTD_DCtx_s = type { ptr, ptr, ptr, ptr, %struct.ZSTD_entropyDTables_t, [640 x i32], ptr, ptr, ptr, ptr, i64, %struct.ZSTD_FrameHeader, i64, i64, i32, i32, i32, i32, %struct.XXH64_state_s, i64, i32, i32, i32, ptr, %struct.ZSTD_customMem, i64, i64, i64, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, i32, i32, i32, %struct.ZSTD_outBuffer_s, ptr, ptr, i32, [65568 x i8], [18 x i8], i64, i64 }
%struct.ZSTD_FrameHeader = type { i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.XXH64_state_s = type { i64, [4 x i64], [4 x i64], i32, i32, i64 }
%struct.ZSTD_outBuffer_s = type { ptr, i64, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ZSTD_DDict_dictContent(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ZSTD_DDict_dictSize(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !14
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_copyDDictParameters(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !15
  %5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 32
  store i32 %4, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 7
  store ptr %7, ptr %8, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 8
  store ptr %7, ptr %9, align 8, !tbaa !23
  %10 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %1, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !14
  %12 = getelementptr inbounds i8, ptr %7, i64 %11
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 9
  store ptr %12, ptr %13, align 8, !tbaa !24
  %14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 6
  store ptr %12, ptr %14, align 8, !tbaa !25
  %15 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %1, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !26
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 16
  %19 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 17
  br i1 %17, label %37, label %20

20:                                               ; preds = %2
  store i32 1, ptr %18, align 8, !tbaa !27
  store i32 1, ptr %19, align 4, !tbaa !28
  %21 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %1, i64 0, i32 3
  store ptr %21, ptr %0, align 8, !tbaa !29
  %22 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %1, i64 0, i32 3, i32 2
  %23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 1
  store ptr %22, ptr %23, align 8, !tbaa !30
  %24 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %1, i64 0, i32 3, i32 1
  %25 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !31
  %26 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %1, i64 0, i32 3, i32 3
  %27 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 3
  store ptr %26, ptr %27, align 8, !tbaa !32
  %28 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %1, i64 0, i32 3, i32 4
  %29 = load i32, ptr %28, align 4, !tbaa !33
  %30 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 4
  store i32 %29, ptr %30, align 4, !tbaa !33
  %31 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %1, i64 0, i32 3, i32 4, i64 1
  %32 = load i32, ptr %31, align 4, !tbaa !33
  %33 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 4, i64 1
  store i32 %32, ptr %33, align 4, !tbaa !33
  %34 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %1, i64 0, i32 3, i32 4, i64 2
  %35 = load i32, ptr %34, align 4, !tbaa !33
  %36 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 4, i64 2
  store i32 %35, ptr %36, align 4, !tbaa !33
  br label %38

37:                                               ; preds = %2
  store i32 0, ptr %18, align 8, !tbaa !27
  store i32 0, ptr %19, align 4, !tbaa !28
  br label %38

38:                                               ; preds = %37, %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createDDict_advanced(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly byval(%struct.ZSTD_customMem) align 8 %4) local_unnamed_addr #2 {
  %6 = load ptr, ptr %4, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %struct.ZSTD_customMem, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  %11 = xor i1 %7, %10
  br i1 %11, label %93, label %12

12:                                               ; preds = %5
  br i1 %7, label %17, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds i8, ptr %4, i64 16
  %15 = load ptr, ptr %14, align 8
  %16 = tail call ptr %6(ptr noundef %15, i64 noundef 27352) #10
  br label %19

17:                                               ; preds = %12
  %18 = tail call noalias dereferenceable_or_null(27352) ptr @malloc(i64 noundef 27352) #11
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi ptr [ %16, %13 ], [ %18, %17 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %93, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %20, i64 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !36
  %24 = icmp ne i32 %2, 1
  %25 = icmp ne ptr %0, null
  %26 = icmp ne i64 %1, 0
  %27 = and i1 %26, %24
  %28 = and i1 %25, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  store ptr null, ptr %20, align 8, !tbaa !38
  %30 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %20, i64 0, i32 1
  store ptr %0, ptr %30, align 8, !tbaa !5
  %31 = select i1 %25, i64 %1, i64 0
  br label %52

32:                                               ; preds = %22
  %33 = load ptr, ptr %23, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr %struct.ZSTD_DDict_s, ptr %20, i64 0, i32 6, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = tail call ptr %33(ptr noundef %37, i64 noundef %1) #10
  br label %41

39:                                               ; preds = %32
  %40 = tail call noalias ptr @malloc(i64 noundef %1) #11
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi ptr [ %38, %35 ], [ %40, %39 ]
  store ptr %42, ptr %20, align 8, !tbaa !38
  %43 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %20, i64 0, i32 1
  store ptr %42, ptr %43, align 8, !tbaa !5
  %44 = icmp eq ptr %42, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %20, i64 0, i32 6, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa.struct !39
  %48 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %20, i64 0, i32 6, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa.struct !40
  %50 = icmp eq ptr %47, null
  br i1 %50, label %92, label %89

51:                                               ; preds = %41
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %42, ptr nonnull align 1 %0, i64 %1, i1 false)
  br label %52

52:                                               ; preds = %51, %29
  %53 = phi i64 [ %31, %29 ], [ %1, %51 ]
  %54 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %20, i64 0, i32 2
  store i64 %53, ptr %54, align 8, !tbaa !14
  %55 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %20, i64 0, i32 3, i32 3
  store i32 201326604, ptr %55, align 8, !tbaa !33
  %56 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %20, i64 0, i32 4
  store i32 0, ptr %56, align 4, !tbaa !15
  %57 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %20, i64 0, i32 5
  store i32 0, ptr %57, align 8, !tbaa !26
  %58 = icmp eq i32 %3, 1
  br i1 %58, label %93, label %59

59:                                               ; preds = %52
  %60 = icmp ult i64 %53, 8
  br i1 %60, label %61, label %63

61:                                               ; preds = %59
  %62 = icmp eq i32 %3, 2
  br i1 %62, label %77, label %93

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %20, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !5
  %66 = load i32, ptr %65, align 1, !tbaa !33
  %67 = icmp eq i32 %66, -332356553
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = getelementptr inbounds i8, ptr %65, i64 4
  %70 = load i32, ptr %69, align 1, !tbaa !33
  store i32 %70, ptr %56, align 4, !tbaa !15
  %71 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %20, i64 0, i32 3
  %72 = tail call i64 @ZSTD_loadDEntropy(ptr noundef nonnull %71, ptr noundef nonnull %65, i64 noundef %53) #10
  %73 = icmp ult i64 %72, -119
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  store i32 1, ptr %57, align 8, !tbaa !26
  br label %93

75:                                               ; preds = %63
  %76 = icmp eq i32 %3, 2
  br i1 %76, label %77, label %93

77:                                               ; preds = %75, %61, %68
  %78 = load ptr, ptr %20, align 8, !tbaa !38
  %79 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %20, i64 0, i32 6, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa.struct !39
  %81 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %20, i64 0, i32 6, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa.struct !40
  %83 = icmp eq ptr %78, null
  %84 = icmp eq ptr %80, null
  br i1 %83, label %88, label %85

85:                                               ; preds = %77
  br i1 %84, label %87, label %86

86:                                               ; preds = %85
  tail call void %80(ptr noundef %82, ptr noundef nonnull %78) #10
  br label %89

87:                                               ; preds = %85
  tail call void @free(ptr noundef nonnull %78) #10
  br label %92

88:                                               ; preds = %77
  br i1 %84, label %92, label %89

89:                                               ; preds = %45, %88, %86
  %90 = phi ptr [ %82, %88 ], [ %82, %86 ], [ %49, %45 ]
  %91 = phi ptr [ %80, %88 ], [ %80, %86 ], [ %47, %45 ]
  tail call void %91(ptr noundef %90, ptr noundef nonnull %20) #10
  br label %93

92:                                               ; preds = %45, %88, %87
  tail call void @free(ptr noundef nonnull %20) #10
  br label %93

93:                                               ; preds = %75, %74, %61, %52, %92, %89, %19, %5
  %94 = phi ptr [ null, %5 ], [ null, %19 ], [ null, %92 ], [ null, %89 ], [ %20, %52 ], [ %20, %61 ], [ %20, %74 ], [ %20, %75 ]
  ret ptr %94
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_freeDDict(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i64 0, i32 6, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa.struct !39
  %6 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i64 0, i32 6, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa.struct !40
  %8 = load ptr, ptr %0, align 8, !tbaa !38
  %9 = icmp eq ptr %8, null
  %10 = icmp eq ptr %5, null
  br i1 %9, label %14, label %11

11:                                               ; preds = %3
  br i1 %10, label %13, label %12

12:                                               ; preds = %11
  tail call void %5(ptr noundef %7, ptr noundef nonnull %8) #10
  br label %15

13:                                               ; preds = %11
  tail call void @free(ptr noundef nonnull %8) #10
  br label %16

14:                                               ; preds = %3
  br i1 %10, label %16, label %15

15:                                               ; preds = %12, %14
  tail call void %5(ptr noundef %7, ptr noundef nonnull %0) #10
  br label %17

16:                                               ; preds = %13, %14
  tail call void @free(ptr noundef nonnull %0) #10
  br label %17

17:                                               ; preds = %16, %15, %1
  ret i64 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createDDict(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ZSTD_customMem, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %4 = tail call ptr @ZSTD_createDDict_advanced(ptr noundef %0, i64 noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createDDict_byReference(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ZSTD_customMem, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %4 = tail call ptr @ZSTD_createDDict_advanced(ptr noundef %0, i64 noundef %1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ZSTD_initStaticDDict(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = ptrtoint ptr %0 to i64
  %8 = and i64 %7, 7
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %46

10:                                               ; preds = %6
  %11 = icmp eq i32 %4, 1
  %12 = add i64 %3, 27352
  %13 = select i1 %11, i64 27352, i64 %12
  %14 = icmp ugt i64 %13, %1
  br i1 %14, label %46, label %15

15:                                               ; preds = %10
  %16 = icmp eq i32 %4, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %18, ptr align 1 %2, i64 %3, i1 false)
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %18, %17 ], [ %2, %15 ]
  %21 = icmp eq ptr %20, null
  store ptr null, ptr %0, align 8, !tbaa !38
  %22 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i64 0, i32 1
  store ptr %20, ptr %22, align 8, !tbaa !5
  %23 = select i1 %21, i64 0, i64 %3
  %24 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i64 0, i32 2
  store i64 %23, ptr %24, align 8, !tbaa !14
  %25 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i64 0, i32 3, i32 3
  store i32 201326604, ptr %25, align 8, !tbaa !33
  %26 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i64 0, i32 4
  store i32 0, ptr %26, align 4, !tbaa !15
  %27 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i64 0, i32 5
  store i32 0, ptr %27, align 8, !tbaa !26
  %28 = icmp eq i32 %5, 1
  br i1 %28, label %45, label %29

29:                                               ; preds = %19
  %30 = icmp ult i64 %23, 8
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = icmp eq i32 %5, 2
  br i1 %32, label %46, label %45

33:                                               ; preds = %29
  %34 = load i32, ptr %20, align 1, !tbaa !33
  %35 = icmp eq i32 %34, -332356553
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = getelementptr inbounds i8, ptr %20, i64 4
  %38 = load i32, ptr %37, align 1, !tbaa !33
  store i32 %38, ptr %26, align 4, !tbaa !15
  %39 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i64 0, i32 3
  %40 = tail call i64 @ZSTD_loadDEntropy(ptr noundef nonnull %39, ptr noundef nonnull %20, i64 noundef %3) #10
  %41 = icmp ult i64 %40, -119
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  store i32 1, ptr %27, align 8, !tbaa !26
  br label %45

43:                                               ; preds = %33
  %44 = icmp eq i32 %5, 2
  br i1 %44, label %46, label %45

45:                                               ; preds = %43, %42, %31, %19
  br label %46

46:                                               ; preds = %45, %43, %36, %31, %10, %6
  %47 = phi ptr [ null, %6 ], [ null, %10 ], [ %0, %45 ], [ null, %43 ], [ null, %36 ], [ null, %31 ]
  ret ptr %47
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @ZSTD_estimateDDictSize(i64 noundef %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = icmp eq i32 %1, 1
  %4 = add i64 %0, 27352
  %5 = select i1 %3, i64 27352, i64 %4
  ret i64 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ZSTD_sizeof_DDict(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !38
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !14
  %9 = add i64 %8, 27352
  br label %10

10:                                               ; preds = %6, %3, %1
  %11 = phi i64 [ 0, %1 ], [ %9, %6 ], [ 27352, %3 ]
  ret i64 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ZSTD_getDictID_fromDDict(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !15
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare i64 @ZSTD_loadDEntropy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"ZSTD_DDict_s", !7, i64 0, !7, i64 8, !10, i64 16, !11, i64 24, !12, i64 27316, !12, i64 27320, !13, i64 27328}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"", !8, i64 0, !8, i64 4104, !8, i64 6160, !8, i64 10264, !8, i64 26652, !8, i64 26664}
!12 = !{!"int", !8, i64 0}
!13 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!14 = !{!6, !10, i64 16}
!15 = !{!6, !12, i64 27316}
!16 = !{!17, !12, i64 30200}
!17 = !{!"ZSTD_DCtx_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !11, i64 32, !8, i64 27324, !7, i64 29888, !7, i64 29896, !7, i64 29904, !7, i64 29912, !10, i64 29920, !18, i64 29928, !10, i64 29976, !10, i64 29984, !12, i64 29992, !12, i64 29996, !12, i64 30000, !12, i64 30004, !20, i64 30008, !10, i64 30096, !12, i64 30104, !12, i64 30108, !12, i64 30112, !7, i64 30120, !13, i64 30128, !10, i64 30152, !10, i64 30160, !10, i64 30168, !12, i64 30176, !12, i64 30180, !7, i64 30184, !7, i64 30192, !12, i64 30200, !12, i64 30204, !12, i64 30208, !7, i64 30216, !12, i64 30224, !12, i64 30228, !12, i64 30232, !12, i64 30236, !7, i64 30240, !10, i64 30248, !10, i64 30256, !10, i64 30264, !7, i64 30272, !10, i64 30280, !10, i64 30288, !10, i64 30296, !10, i64 30304, !12, i64 30312, !12, i64 30316, !12, i64 30320, !21, i64 30328, !7, i64 30352, !7, i64 30360, !12, i64 30368, !8, i64 30372, !8, i64 95940, !10, i64 95960, !19, i64 95968}
!18 = !{!"", !19, i64 0, !19, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40}
!19 = !{!"long long", !8, i64 0}
!20 = !{!"XXH64_state_s", !10, i64 0, !8, i64 8, !8, i64 40, !12, i64 72, !12, i64 76, !10, i64 80}
!21 = !{!"ZSTD_outBuffer_s", !7, i64 0, !10, i64 8, !10, i64 16}
!22 = !{!17, !7, i64 29896}
!23 = !{!17, !7, i64 29904}
!24 = !{!17, !7, i64 29912}
!25 = !{!17, !7, i64 29888}
!26 = !{!6, !12, i64 27320}
!27 = !{!17, !12, i64 30000}
!28 = !{!17, !12, i64 30004}
!29 = !{!17, !7, i64 0}
!30 = !{!17, !7, i64 8}
!31 = !{!17, !7, i64 16}
!32 = !{!17, !7, i64 24}
!33 = !{!12, !12, i64 0}
!34 = !{!13, !7, i64 0}
!35 = !{!13, !7, i64 8}
!36 = !{i64 0, i64 8, !37, i64 8, i64 8, !37, i64 16, i64 8, !37}
!37 = !{!7, !7, i64 0}
!38 = !{!6, !7, i64 0}
!39 = !{i64 0, i64 8, !37, i64 8, i64 8, !37}
!40 = !{i64 0, i64 8, !37}
