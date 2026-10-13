; ModuleID = '/mydata/zstd/lib/decompress/zstd_decompress.c'
source_filename = "/mydata/zstd/lib/decompress/zstd_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZSTD_DCtx_s = type { ptr, ptr, ptr, ptr, %struct.ZSTD_entropyDTables_t, [640 x i32], ptr, ptr, ptr, ptr, i64, %struct.ZSTD_FrameHeader, i64, i64, i32, i32, i32, i32, %struct.XXH64_state_s, i64, i32, i32, i32, ptr, %struct.ZSTD_customMem, i64, i64, i64, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, i32, i32, i32, %struct.ZSTD_outBuffer_s, ptr, ptr, i32, [65568 x i8], [18 x i8], i64, i64 }
%struct.ZSTD_entropyDTables_t = type { [513 x %struct.ZSTD_seqSymbol], [257 x %struct.ZSTD_seqSymbol], [513 x %struct.ZSTD_seqSymbol], [4097 x i32], [3 x i32], [157 x i32] }
%struct.ZSTD_seqSymbol = type { i16, i8, i8, i32 }
%struct.ZSTD_FrameHeader = type { i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.XXH64_state_s = type { i64, [4 x i64], [4 x i64], i32, i32, i64 }
%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.ZSTD_outBuffer_s = type { ptr, i64, i64 }
%struct.ZSTD_frameSizeInfo = type { i64, i64, i64 }
%struct.blockProperties_t = type { i32, i32, i32 }
%struct.ZSTD_Trace = type { i32, i32, i32, i32, i64, i64, i64, ptr, ptr, ptr }
%struct.ZSTD_DDictHashSet = type { ptr, i64, i64 }
%struct.ZSTD_inBuffer_s = type { ptr, i64, i64 }

@OF_base = internal constant [32 x i32] [i32 0, i32 1, i32 1, i32 5, i32 13, i32 29, i32 61, i32 125, i32 253, i32 509, i32 1021, i32 2045, i32 4093, i32 8189, i32 16381, i32 32765, i32 65533, i32 131069, i32 262141, i32 524285, i32 1048573, i32 2097149, i32 4194301, i32 8388605, i32 16777213, i32 33554429, i32 67108861, i32 134217725, i32 268435453, i32 536870909, i32 1073741821, i32 2147483645], align 16
@OF_bits = internal constant [32 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F", align 16
@ML_base = internal constant [53 x i32] [i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 37, i32 39, i32 41, i32 43, i32 47, i32 51, i32 59, i32 67, i32 83, i32 99, i32 131, i32 259, i32 515, i32 1027, i32 2051, i32 4099, i32 8195, i32 16387, i32 32771, i32 65539], align 16
@ML_bits = internal constant [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\04\05\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@LL_base = internal constant [36 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 18, i32 20, i32 22, i32 24, i32 28, i32 32, i32 40, i32 48, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768, i32 65536], align 16
@LL_bits = internal constant [36 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@repStartValue = internal unnamed_addr constant [3 x i32] [i32 1, i32 4, i32 8], align 4
@ZSTD_did_fieldSize = internal unnamed_addr constant [4 x i64] [i64 0, i64 1, i64 2, i64 4], align 16
@ZSTD_fcs_fieldSize = internal unnamed_addr constant [4 x i64] [i64 0, i64 2, i64 4, i64 8], align 16
@switch.table.ZSTD_nextInputType = private unnamed_addr constant [6 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 5], align 4

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_sizeof_DCtx(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 30
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = tail call i64 @ZSTD_sizeof_DDict(ptr noundef %5) #18
  %7 = add i64 %6, 95976
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 41
  %9 = load i64, ptr %8, align 8, !tbaa !18
  %10 = add i64 %7, %9
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 45
  %12 = load i64, ptr %11, align 8, !tbaa !19
  %13 = add i64 %10, %12
  br label %14

14:                                               ; preds = %1, %3
  %15 = phi i64 [ %13, %3 ], [ 0, %1 ]
  ret i64 %15
}

declare i64 @ZSTD_sizeof_DDict(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @ZSTD_estimateDCtxSize() local_unnamed_addr #2 {
  ret i64 95976
}

; Function Attrs: nounwind memory(argmem: write) uwtable
define dso_local noundef ptr @ZSTD_initStaticDCtx(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, 7
  %5 = icmp ne i64 %4, 0
  %6 = icmp ult i64 %1, 95976
  %7 = or i1 %6, %5
  br i1 %7, label %45, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 27
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 30
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 9
  store ptr null, ptr %11, align 8, !tbaa !20
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 33
  store i32 0, ptr %12, align 4, !tbaa !21
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 34
  store i32 0, ptr %13, align 8, !tbaa !22
  %14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 45
  store i64 0, ptr %14, align 8, !tbaa !19
  %15 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 39
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 50
  store i32 0, ptr %16, align 4, !tbaa !23
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 58
  store i64 0, ptr %17, align 8, !tbaa !24
  %18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %15, i8 0, i64 20, i1 false)
  store i32 1, ptr %18, align 8, !tbaa !25
  %19 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #19, !srcloc !26
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %8
  %22 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #19, !srcloc !27
  %23 = icmp ugt i32 %19, 6
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #19, !srcloc !28
  %26 = extractvalue { i32, i32, i32 } %25, 1
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = lshr i32 %26, 8
  %31 = and i32 %30, 1
  br label %32

32:                                               ; preds = %8, %21, %24, %29
  %33 = phi i32 [ 0, %24 ], [ %31, %29 ], [ 0, %21 ], [ 0, %8 ]
  %34 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 29
  store i32 %33, ptr %34, align 4, !tbaa !29
  %35 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 35
  store ptr null, ptr %35, align 8, !tbaa !30
  %36 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 20
  store i32 0, ptr %36, align 8, !tbaa !31
  %37 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 43
  store i64 134217729, ptr %37, align 8, !tbaa !32
  %38 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 51
  store i32 0, ptr %38, align 8, !tbaa !33
  %39 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 21
  store i32 0, ptr %39, align 4, !tbaa !34
  %40 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 36
  store i32 0, ptr %40, align 8, !tbaa !35
  %41 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 37
  store i32 0, ptr %41, align 4, !tbaa !36
  %42 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 38
  store i32 0, ptr %42, align 8, !tbaa !37
  store i64 %1, ptr %9, align 8, !tbaa !38
  %43 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 1
  %44 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 40
  store ptr %43, ptr %44, align 8, !tbaa !39
  br label %45

45:                                               ; preds = %2, %32
  %46 = phi ptr [ %0, %32 ], [ null, %2 ]
  ret ptr %46
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createDCtx_advanced(ptr nocapture noundef readonly byval(%struct.ZSTD_customMem) align 8 %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 16
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %2, null
  %8 = icmp eq ptr %4, null
  %9 = xor i1 %7, %8
  br i1 %9, label %56, label %10

10:                                               ; preds = %1
  br i1 %7, label %13, label %11

11:                                               ; preds = %10
  %12 = tail call ptr %2(ptr noundef %6, i64 noundef 95976) #18
  br label %15

13:                                               ; preds = %10
  %14 = tail call noalias dereferenceable_or_null(95976) ptr @malloc(i64 noundef 95976) #20
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %56, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 24
  store ptr %2, ptr %19, align 8, !tbaa.struct !40
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 24, i32 1
  store ptr %4, ptr %20, align 8, !tbaa.struct !42
  %21 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 24, i32 2
  store ptr %6, ptr %21, align 8, !tbaa.struct !43
  %22 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 27
  store i64 0, ptr %22, align 8, !tbaa !38
  %23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 30
  %24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 9
  store ptr null, ptr %24, align 8, !tbaa !20
  %25 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 33
  store i32 0, ptr %25, align 4, !tbaa !21
  %26 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 34
  store i32 0, ptr %26, align 8, !tbaa !22
  %27 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 45
  store i64 0, ptr %27, align 8, !tbaa !19
  %28 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 39
  %29 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 50
  store i32 0, ptr %29, align 4, !tbaa !23
  %30 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 58
  store i64 0, ptr %30, align 8, !tbaa !24
  %31 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %28, i8 0, i64 20, i1 false)
  store i32 1, ptr %31, align 8, !tbaa !25
  %32 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #19, !srcloc !26
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %18
  %35 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #19, !srcloc !27
  %36 = icmp ugt i32 %32, 6
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #19, !srcloc !28
  %39 = extractvalue { i32, i32, i32 } %38, 1
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = lshr i32 %39, 8
  %44 = and i32 %43, 1
  br label %45

45:                                               ; preds = %42, %37, %34, %18
  %46 = phi i32 [ 0, %37 ], [ %44, %42 ], [ 0, %34 ], [ 0, %18 ]
  %47 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 29
  store i32 %46, ptr %47, align 4, !tbaa !29
  %48 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 35
  store ptr null, ptr %48, align 8, !tbaa !30
  %49 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 20
  store i32 0, ptr %49, align 8, !tbaa !31
  %50 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 43
  store i64 134217729, ptr %50, align 8, !tbaa !32
  %51 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 51
  store i32 0, ptr %51, align 8, !tbaa !33
  %52 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 21
  store i32 0, ptr %52, align 4, !tbaa !34
  %53 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 36
  store i32 0, ptr %53, align 8, !tbaa !35
  %54 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 37
  store i32 0, ptr %54, align 4, !tbaa !36
  %55 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 38
  store i32 0, ptr %55, align 8, !tbaa !37
  br label %56

56:                                               ; preds = %1, %15, %45
  %57 = phi ptr [ null, %1 ], [ %16, %45 ], [ null, %15 ]
  ret ptr %57
}

; Function Attrs: nounwind memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noundef ptr @ZSTD_createDCtx() local_unnamed_addr #5 {
  %1 = tail call noalias dereferenceable_or_null(95976) ptr @malloc(i64 noundef 95976) #20
  %2 = icmp eq ptr %1, null
  br i1 %2, label %39, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 24
  %5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 27
  store i64 0, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 30
  %7 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 9
  store ptr null, ptr %7, align 8, !tbaa !20
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 33
  store i32 0, ptr %8, align 4, !tbaa !21
  %9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 34
  store i32 0, ptr %9, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 45
  store i64 0, ptr %10, align 8, !tbaa !19
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 39
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 50
  store i32 0, ptr %12, align 4, !tbaa !23
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 58
  store i64 0, ptr %13, align 8, !tbaa !24
  %14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %11, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i32 1, ptr %14, align 8, !tbaa !25
  %15 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #19, !srcloc !26
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %3
  %18 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #19, !srcloc !27
  %19 = icmp ugt i32 %15, 6
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #19, !srcloc !28
  %22 = extractvalue { i32, i32, i32 } %21, 1
  %23 = and i32 %22, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = lshr i32 %22, 8
  %27 = and i32 %26, 1
  br label %28

28:                                               ; preds = %25, %20, %17, %3
  %29 = phi i32 [ 0, %20 ], [ %27, %25 ], [ 0, %17 ], [ 0, %3 ]
  %30 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 29
  store i32 %29, ptr %30, align 4, !tbaa !29
  %31 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 35
  store ptr null, ptr %31, align 8, !tbaa !30
  %32 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 20
  store i32 0, ptr %32, align 8, !tbaa !31
  %33 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 43
  store i64 134217729, ptr %33, align 8, !tbaa !32
  %34 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 51
  store i32 0, ptr %34, align 8, !tbaa !33
  %35 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 21
  store i32 0, ptr %35, align 4, !tbaa !34
  %36 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 36
  store i32 0, ptr %36, align 8, !tbaa !35
  %37 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 37
  store i32 0, ptr %37, align 4, !tbaa !36
  %38 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 38
  store i32 0, ptr %38, align 8, !tbaa !37
  br label %39

39:                                               ; preds = %0, %28
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_freeDCtx(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %42, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 27
  %5 = load i64, ptr %4, align 8, !tbaa !38
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %42

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 24, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa.struct !42
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 24, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa.struct !43
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 30
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = tail call i64 @ZSTD_freeDDict(ptr noundef %13) #18
  %15 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 34
  store i32 0, ptr %15, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 40
  %17 = load ptr, ptr %16, align 8, !tbaa !39
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %7
  %20 = icmp eq ptr %9, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  tail call void %9(ptr noundef %11, ptr noundef nonnull %17) #18
  br label %23

22:                                               ; preds = %19
  tail call void @free(ptr noundef nonnull %17) #18
  br label %23

23:                                               ; preds = %7, %21, %22
  store ptr null, ptr %16, align 8, !tbaa !39
  %24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 35
  %25 = load ptr, ptr %24, align 8, !tbaa !30
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %25, align 8, !tbaa !44
  %29 = icmp eq ptr %28, null
  %30 = icmp eq ptr %9, null
  br i1 %29, label %34, label %31

31:                                               ; preds = %27
  br i1 %30, label %33, label %32

32:                                               ; preds = %31
  tail call void %9(ptr noundef %11, ptr noundef nonnull %28) #18
  br label %35

33:                                               ; preds = %31
  tail call void @free(ptr noundef nonnull %28) #18
  br label %36

34:                                               ; preds = %27
  br i1 %30, label %36, label %35

35:                                               ; preds = %34, %32
  tail call void %9(ptr noundef %11, ptr noundef nonnull %25) #18
  br label %37

36:                                               ; preds = %34, %33
  tail call void @free(ptr noundef nonnull %25) #18
  br label %37

37:                                               ; preds = %35, %36
  store ptr null, ptr %24, align 8, !tbaa !30
  br label %38

38:                                               ; preds = %23, %37
  %39 = icmp eq ptr %9, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %38
  tail call void %9(ptr noundef %11, ptr noundef nonnull %0) #18
  br label %42

41:                                               ; preds = %38
  tail call void @free(ptr noundef nonnull %0) #18
  br label %42

42:                                               ; preds = %41, %40, %3, %1
  %43 = phi i64 [ 0, %1 ], [ -64, %3 ], [ 0, %40 ], [ 0, %41 ]
  ret i64 %43
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_copyDCtx(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(30240) %0, ptr noundef nonnull align 8 dereferenceable(30240) %1, i64 30240, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @ZSTD_isFrame(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #8 {
  %3 = icmp ult i64 %1, 4
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 1, !tbaa !46
  %6 = freeze i32 %5
  %7 = icmp eq i32 %6, -47205080
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = and i32 %6, -16
  %10 = icmp eq i32 %9, 407710288
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %8, %4, %2
  %13 = phi i32 [ 0, %2 ], [ 1, %4 ], [ %11, %8 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ZSTD_isSkippableFrame(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #8 {
  %3 = icmp ult i64 %1, 4
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 1, !tbaa !46
  %6 = and i32 %5, -16
  %7 = icmp eq i32 %6, 407710288
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi i32 [ 0, %2 ], [ %8, %4 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ZSTD_frameHeaderSize(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #8 {
  %3 = icmp ult i64 %1, 5
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i64 4
  %6 = load i8, ptr %5, align 1, !tbaa !47
  %7 = zext i8 %6 to i32
  %8 = and i32 %7, 3
  %9 = lshr i32 %7, 6
  %10 = and i32 %7, 32
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i64
  %14 = zext nneg i32 %8 to i64
  %15 = getelementptr inbounds [4 x i64], ptr @ZSTD_did_fieldSize, i64 0, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !48
  %17 = zext nneg i32 %9 to i64
  %18 = getelementptr inbounds [4 x i64], ptr @ZSTD_fcs_fieldSize, i64 0, i64 %17
  %19 = load i64, ptr %18, align 8, !tbaa !48
  %20 = icmp ult i8 %6, 64
  %21 = and i1 %20, %11
  %22 = zext i1 %21 to i64
  %23 = add i64 %16, 5
  %24 = add i64 %23, %19
  %25 = add i64 %24, %13
  %26 = add i64 %25, %22
  br label %27

27:                                               ; preds = %2, %4
  %28 = phi i64 [ %26, %4 ], [ -72, %2 ]
  ret i64 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @ZSTD_getFrameHeader_advanced(ptr nocapture noundef writeonly %0, ptr noundef readonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
  %5 = alloca i32, align 4
  %6 = icmp eq i32 %3, 0
  %7 = select i1 %6, i64 5, i64 1
  %8 = icmp ne i64 %2, 0
  %9 = icmp eq ptr %1, null
  %10 = and i1 %9, %8
  br i1 %10, label %150, label %11

11:                                               ; preds = %4
  %12 = icmp ugt i64 %7, %2
  br i1 %12, label %13, label %25

13:                                               ; preds = %11
  %14 = icmp ne i32 %3, 1
  %15 = and i1 %8, %14
  br i1 %15, label %16, label %150

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store i32 -47205080, ptr %5, align 4, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %5, ptr align 1 %1, i64 %2, i1 false)
  %17 = load i32, ptr %5, align 4, !tbaa !46
  %18 = icmp eq i32 %17, -47205080
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  store i32 407710288, ptr %5, align 4, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %5, ptr align 1 %1, i64 %2, i1 false)
  %20 = load i32, ptr %5, align 4, !tbaa !46
  %21 = and i32 %20, -16
  %22 = icmp eq i32 %21, 407710288
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br label %150

24:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br label %150

25:                                               ; preds = %11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %26 = icmp eq i32 %3, 1
  br i1 %26, label %47, label %27

27:                                               ; preds = %25
  %28 = load i32, ptr %1, align 1, !tbaa !46
  %29 = icmp eq i32 %28, -47205080
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = getelementptr i8, ptr %1, i64 %7
  %32 = getelementptr i8, ptr %31, i64 -1
  br label %47

33:                                               ; preds = %27
  %34 = and i32 %28, -16
  %35 = icmp eq i32 %34, 407710288
  br i1 %35, label %36, label %150

36:                                               ; preds = %33
  %37 = icmp ult i64 %2, 8
  br i1 %37, label %150, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.ZSTD_FrameHeader, ptr %0, i64 0, i32 3
  store i32 1, ptr %39, align 4, !tbaa !49
  %40 = load i32, ptr %1, align 1, !tbaa !46
  %41 = add i32 %40, -407710288
  %42 = getelementptr inbounds %struct.ZSTD_FrameHeader, ptr %0, i64 0, i32 5
  store i32 %41, ptr %42, align 4, !tbaa !50
  %43 = getelementptr inbounds %struct.ZSTD_FrameHeader, ptr %0, i64 0, i32 4
  store i32 8, ptr %43, align 8, !tbaa !51
  %44 = getelementptr inbounds i8, ptr %1, i64 4
  %45 = load i32, ptr %44, align 1, !tbaa !46
  %46 = zext i32 %45 to i64
  store i64 %46, ptr %0, align 8, !tbaa !52
  br label %150

47:                                               ; preds = %25, %30
  %48 = phi ptr [ %32, %30 ], [ %1, %25 ]
  %49 = phi i64 [ %7, %30 ], [ 1, %25 ]
  %50 = load i8, ptr %48, align 1, !tbaa !47
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 3
  %53 = lshr i32 %51, 6
  %54 = and i32 %51, 32
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i64
  %58 = zext nneg i32 %52 to i64
  %59 = getelementptr inbounds [4 x i64], ptr @ZSTD_did_fieldSize, i64 0, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !48
  %61 = zext nneg i32 %53 to i64
  %62 = getelementptr inbounds [4 x i64], ptr @ZSTD_fcs_fieldSize, i64 0, i64 %61
  %63 = load i64, ptr %62, align 8, !tbaa !48
  %64 = icmp ult i8 %50, 64
  %65 = and i1 %64, %55
  %66 = zext i1 %65 to i64
  %67 = add i64 %60, %49
  %68 = add i64 %67, %63
  %69 = add i64 %68, %57
  %70 = add i64 %69, %66
  %71 = icmp ugt i64 %70, %2
  br i1 %71, label %150, label %72

72:                                               ; preds = %47
  %73 = trunc i64 %70 to i32
  %74 = getelementptr inbounds %struct.ZSTD_FrameHeader, ptr %0, i64 0, i32 4
  store i32 %73, ptr %74, align 8, !tbaa !51
  %75 = getelementptr i8, ptr %1, i64 %7
  %76 = getelementptr i8, ptr %75, i64 -1
  %77 = load i8, ptr %76, align 1, !tbaa !47
  %78 = zext i8 %77 to i32
  %79 = and i32 %78, 3
  %80 = lshr i32 %78, 2
  %81 = and i32 %80, 1
  %82 = lshr i32 %78, 6
  %83 = and i32 %78, 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %150

85:                                               ; preds = %72
  %86 = and i32 %78, 32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %85
  %89 = load i8, ptr %75, align 1, !tbaa !47
  %90 = icmp ult i8 %89, -80
  br i1 %90, label %91, label %150

91:                                               ; preds = %88
  %92 = zext i8 %89 to i32
  %93 = lshr i32 %92, 3
  %94 = add nuw nsw i32 %93, 10
  %95 = add nuw nsw i64 %7, 1
  %96 = zext nneg i32 %94 to i64
  %97 = shl nuw nsw i64 1, %96
  %98 = lshr i64 %97, 3
  %99 = and i32 %92, 7
  %100 = zext nneg i32 %99 to i64
  %101 = mul nuw nsw i64 %98, %100
  %102 = add nuw nsw i64 %101, %97
  br label %103

103:                                              ; preds = %91, %85
  %104 = phi i64 [ %7, %85 ], [ %95, %91 ]
  %105 = phi i64 [ 0, %85 ], [ %102, %91 ]
  switch i32 %79, label %120 [
    i32 3, label %116
    i32 1, label %106
    i32 2, label %111
  ]

106:                                              ; preds = %103
  %107 = getelementptr inbounds i8, ptr %1, i64 %104
  %108 = load i8, ptr %107, align 1, !tbaa !47
  %109 = zext i8 %108 to i32
  %110 = add nuw nsw i64 %104, 1
  br label %120

111:                                              ; preds = %103
  %112 = getelementptr inbounds i8, ptr %1, i64 %104
  %113 = load i16, ptr %112, align 1, !tbaa !53
  %114 = zext i16 %113 to i32
  %115 = add nuw nsw i64 %104, 2
  br label %120

116:                                              ; preds = %103
  %117 = getelementptr inbounds i8, ptr %1, i64 %104
  %118 = load i32, ptr %117, align 1, !tbaa !46
  %119 = add nuw nsw i64 %104, 4
  br label %120

120:                                              ; preds = %103, %116, %111, %106
  %121 = phi i64 [ %104, %103 ], [ %115, %111 ], [ %110, %106 ], [ %119, %116 ]
  %122 = phi i32 [ 0, %103 ], [ %114, %111 ], [ %109, %106 ], [ %118, %116 ]
  switch i32 %82, label %123 [
    i32 3, label %137
    i32 1, label %128
    i32 2, label %133
  ]

123:                                              ; preds = %120
  br i1 %87, label %140, label %124

124:                                              ; preds = %123
  %125 = getelementptr inbounds i8, ptr %1, i64 %121
  %126 = load i8, ptr %125, align 1, !tbaa !47
  %127 = zext i8 %126 to i64
  br label %140

128:                                              ; preds = %120
  %129 = getelementptr inbounds i8, ptr %1, i64 %121
  %130 = load i16, ptr %129, align 1, !tbaa !53
  %131 = zext i16 %130 to i64
  %132 = add nuw nsw i64 %131, 256
  br label %140

133:                                              ; preds = %120
  %134 = getelementptr inbounds i8, ptr %1, i64 %121
  %135 = load i32, ptr %134, align 1, !tbaa !46
  %136 = zext i32 %135 to i64
  br label %140

137:                                              ; preds = %120
  %138 = getelementptr inbounds i8, ptr %1, i64 %121
  %139 = load i64, ptr %138, align 1, !tbaa !48
  br label %140

140:                                              ; preds = %123, %124, %137, %133, %128
  %141 = phi i64 [ %127, %124 ], [ -1, %123 ], [ %136, %133 ], [ %132, %128 ], [ %139, %137 ]
  %142 = select i1 %87, i64 %105, i64 %141
  %143 = getelementptr inbounds %struct.ZSTD_FrameHeader, ptr %0, i64 0, i32 3
  store i32 0, ptr %143, align 4, !tbaa !49
  store i64 %141, ptr %0, align 8, !tbaa !52
  %144 = getelementptr inbounds %struct.ZSTD_FrameHeader, ptr %0, i64 0, i32 1
  store i64 %142, ptr %144, align 8, !tbaa !55
  %145 = tail call i64 @llvm.umin.i64(i64 %142, i64 131072)
  %146 = trunc i64 %145 to i32
  %147 = getelementptr inbounds %struct.ZSTD_FrameHeader, ptr %0, i64 0, i32 2
  store i32 %146, ptr %147, align 8, !tbaa !56
  %148 = getelementptr inbounds %struct.ZSTD_FrameHeader, ptr %0, i64 0, i32 5
  store i32 %122, ptr %148, align 4, !tbaa !50
  %149 = getelementptr inbounds %struct.ZSTD_FrameHeader, ptr %0, i64 0, i32 6
  store i32 %81, ptr %149, align 8, !tbaa !57
  br label %150

150:                                              ; preds = %88, %72, %140, %47, %33, %36, %13, %23, %24, %4, %38
  %151 = phi i64 [ -10, %24 ], [ 0, %38 ], [ -1, %4 ], [ %7, %23 ], [ %7, %13 ], [ 8, %36 ], [ -10, %33 ], [ %70, %47 ], [ 0, %140 ], [ -16, %88 ], [ -14, %72 ]
  ret i64 %151
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #11

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @ZSTD_getFrameHeader(ptr nocapture noundef writeonly %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #9 {
  %4 = tail call i64 @ZSTD_getFrameHeader_advanced(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 0)
  ret i64 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @ZSTD_getFrameContentSize(ptr noundef %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = alloca %struct.ZSTD_FrameHeader, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #18
  %4 = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %3, ptr noundef %0, i64 noundef %1, i32 noundef 0)
  %5 = icmp eq i64 %4, 0
  %6 = getelementptr inbounds %struct.ZSTD_FrameHeader, ptr %3, i64 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  %9 = load i64, ptr %3, align 8
  %10 = select i1 %8, i64 0, i64 %9
  %11 = select i1 %5, i64 %10, i64 -2
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #18
  ret i64 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @ZSTD_readSkippableFrame(ptr noundef writeonly %0, i64 noundef %1, ptr noundef writeonly %2, ptr nocapture noundef readonly %3, i64 noundef %4) local_unnamed_addr #7 {
  %6 = icmp ult i64 %4, 8
  br i1 %6, label %34, label %7

7:                                                ; preds = %5
  %8 = load i32, ptr %3, align 1, !tbaa !46
  %9 = getelementptr inbounds i8, ptr %3, i64 4
  %10 = load i32, ptr %9, align 1, !tbaa !46
  %11 = icmp ugt i32 %10, -9
  %12 = zext i32 %10 to i64
  %13 = add nuw nsw i64 %12, 8
  %14 = icmp ugt i64 %13, %4
  %15 = select i1 %14, i64 -72, i64 %13
  %16 = select i1 %11, i64 -14, i64 %15
  %17 = add nsw i64 %16, -8
  %18 = and i32 %8, -16
  %19 = icmp eq i32 %18, 407710288
  br i1 %19, label %20, label %34

20:                                               ; preds = %7
  %21 = icmp ugt i64 %16, %4
  br i1 %21, label %34, label %22

22:                                               ; preds = %20
  %23 = icmp ugt i64 %17, %1
  br i1 %23, label %34, label %24

24:                                               ; preds = %22
  %25 = icmp ne i64 %17, 0
  %26 = icmp ne ptr %0, null
  %27 = and i1 %26, %25
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = getelementptr inbounds i8, ptr %3, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %29, i64 %17, i1 false)
  br label %30

30:                                               ; preds = %28, %24
  %31 = icmp eq ptr %2, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = add nsw i32 %8, -407710288
  store i32 %33, ptr %2, align 4, !tbaa !46
  br label %34

34:                                               ; preds = %7, %20, %22, %32, %30, %5
  %35 = phi i64 [ -72, %5 ], [ -14, %7 ], [ -72, %20 ], [ -70, %22 ], [ %17, %32 ], [ %17, %30 ]
  ret i64 %35
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_findDecompressedSize(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ZSTD_frameSizeInfo, align 8
  %4 = alloca %struct.ZSTD_FrameHeader, align 8
  %5 = icmp ult i64 %1, 5
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ZSTD_FrameHeader, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %3, i64 0, i32 1
  br label %9

9:                                                ; preds = %6, %41
  %10 = phi ptr [ %0, %6 ], [ %44, %41 ]
  %11 = phi i64 [ %1, %6 ], [ %45, %41 ]
  %12 = phi i64 [ 0, %6 ], [ %42, %41 ]
  %13 = load i32, ptr %10, align 1, !tbaa !46
  %14 = and i32 %13, -16
  %15 = icmp eq i32 %14, 407710288
  br i1 %15, label %16, label %26

16:                                               ; preds = %9
  %17 = icmp ult i64 %11, 8
  br i1 %17, label %52, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds i8, ptr %10, i64 4
  %20 = load i32, ptr %19, align 1, !tbaa !46
  %21 = icmp ugt i32 %20, -9
  %22 = zext i32 %20 to i64
  %23 = add nuw nsw i64 %22, 8
  %24 = icmp ugt i64 %23, %11
  %25 = select i1 %21, i1 true, i1 %24
  br i1 %25, label %52, label %41, !llvm.loop !58

26:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #18
  %27 = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %4, ptr noundef nonnull %10, i64 noundef %11, i32 noundef 0)
  %28 = icmp eq i64 %27, 0
  %29 = load i32, ptr %7, align 4
  %30 = icmp eq i32 %29, 1
  %31 = load i64, ptr %4, align 8
  %32 = select i1 %30, i64 0, i64 %31
  %33 = select i1 %28, i64 %32, i64 -2
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #18
  %34 = icmp ugt i64 %33, -3
  br i1 %34, label %52, label %35

35:                                               ; preds = %26
  %36 = add i64 %33, %12
  %37 = icmp ult i64 %36, %12
  br i1 %37, label %52, label %38

38:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias nonnull writable align 8 %3, ptr noundef nonnull %10, i64 noundef %11, i32 noundef 0)
  %39 = load i64, ptr %8, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  %40 = icmp ult i64 %39, -119
  br i1 %40, label %41, label %52

41:                                               ; preds = %18, %38
  %42 = phi i64 [ %36, %38 ], [ %12, %18 ]
  %43 = phi i64 [ %39, %38 ], [ %23, %18 ]
  %44 = getelementptr inbounds i8, ptr %10, i64 %43
  %45 = sub i64 %11, %43
  %46 = icmp ult i64 %45, 5
  br i1 %46, label %47, label %9

47:                                               ; preds = %41, %2
  %48 = phi i64 [ 0, %2 ], [ %42, %41 ]
  %49 = phi i64 [ %1, %2 ], [ %45, %41 ]
  %50 = icmp eq i64 %49, 0
  %51 = select i1 %50, i64 %48, i64 -2
  br label %52

52:                                               ; preds = %26, %18, %16, %38, %35, %47
  %53 = phi i64 [ %51, %47 ], [ %33, %26 ], [ -2, %18 ], [ -2, %16 ], [ -2, %35 ], [ -2, %38 ]
  ret i64 %53
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_findFrameCompressedSize(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ZSTD_frameSizeInfo, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias nonnull writable align 8 %3, ptr noundef %0, i64 noundef %1, i32 noundef 0)
  %4 = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret i64 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @ZSTD_getDecompressedSize(ptr noundef %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = alloca %struct.ZSTD_FrameHeader, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #18
  %4 = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %3, ptr noundef %0, i64 noundef %1, i32 noundef 0)
  %5 = icmp eq i64 %4, 0
  %6 = getelementptr inbounds %struct.ZSTD_FrameHeader, ptr %3, i64 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  %9 = load i64, ptr %3, align 8
  %10 = select i1 %8, i64 0, i64 %9
  %11 = select i1 %5, i64 %10, i64 -2
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #18
  %12 = icmp ugt i64 %11, -3
  %13 = select i1 %12, i64 0, i64 %11
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompressBound(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ZSTD_frameSizeInfo, align 8
  %4 = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %3, i64 0, i32 1
  %5 = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %3, i64 0, i32 2
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i64 [ %1, %2 ], [ %18, %11 ]
  %8 = phi i64 [ 0, %2 ], [ %19, %11 ]
  %9 = phi ptr [ %0, %2 ], [ %17, %11 ]
  %10 = icmp eq i64 %7, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias nonnull writable align 8 %3, ptr noundef %9, i64 noundef %7, i32 noundef 0)
  %12 = load i64, ptr %4, align 8, !tbaa !60
  %13 = load i64, ptr %5, align 8, !tbaa !62
  %14 = icmp ult i64 %12, -119
  %15 = icmp ne i64 %13, -2
  %16 = select i1 %14, i1 %15, i1 false
  %17 = getelementptr inbounds i8, ptr %9, i64 %12
  %18 = sub i64 %7, %12
  %19 = add i64 %13, %8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  br i1 %16, label %6, label %20, !llvm.loop !63

20:                                               ; preds = %6, %11
  %21 = phi i64 [ -2, %11 ], [ %8, %6 ]
  ret i64 %21
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias nocapture writable writeonly align 8 %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.ZSTD_FrameHeader, align 8
  %6 = alloca %struct.blockProperties_t, align 4
  %7 = icmp eq i32 %3, 0
  %8 = icmp ugt i64 %2, 7
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %25

10:                                               ; preds = %4
  %11 = load i32, ptr %1, align 1, !tbaa !46
  %12 = and i32 %11, -16
  %13 = icmp eq i32 %12, 407710288
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = getelementptr inbounds i8, ptr %1, i64 4
  %16 = load i32, ptr %15, align 1, !tbaa !46
  %17 = icmp ugt i32 %16, -9
  %18 = zext i32 %16 to i64
  %19 = add nuw nsw i64 %18, 8
  %20 = icmp ugt i64 %19, %2
  %21 = select i1 %20, i64 -72, i64 %19
  %22 = select i1 %17, i64 -14, i64 %21
  store i64 0, ptr %0, align 8, !tbaa.struct !64
  %23 = getelementptr inbounds i8, ptr %0, i64 8
  store i64 %22, ptr %23, align 8, !tbaa.struct !66
  %24 = getelementptr inbounds i8, ptr %0, i64 16
  store i64 0, ptr %24, align 8, !tbaa.struct !67
  br label %92

25:                                               ; preds = %10, %4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #18
  %26 = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %5, ptr noundef %1, i64 noundef %2, i32 noundef %3)
  %27 = icmp ult i64 %26, -119
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %0, i64 0, i32 1
  store i64 %26, ptr %29, align 8, !tbaa !60, !alias.scope !68
  %30 = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %0, i64 0, i32 2
  store i64 -2, ptr %30, align 8, !tbaa !62, !alias.scope !68
  br label %91

31:                                               ; preds = %25
  %32 = icmp eq i64 %26, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %0, i64 0, i32 1
  store i64 -72, ptr %34, align 8, !tbaa !60, !alias.scope !71
  %35 = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %0, i64 0, i32 2
  store i64 -2, ptr %35, align 8, !tbaa !62, !alias.scope !71
  br label %91

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ZSTD_FrameHeader, ptr %5, i64 0, i32 4
  %38 = load i32, ptr %37, align 8, !tbaa !51
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %1, i64 %39
  %41 = sub i64 %2, %39
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  %42 = call i64 @ZSTD_getcBlockSize(ptr noundef %40, i64 noundef %41, ptr noundef nonnull %6) #18
  %43 = icmp ult i64 %42, -119
  br i1 %43, label %44, label %59

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.blockProperties_t, ptr %6, i64 0, i32 1
  br label %46

46:                                               ; preds = %44, %63
  %47 = phi i64 [ %42, %44 ], [ %64, %63 ]
  %48 = phi i64 [ 0, %44 ], [ %56, %63 ]
  %49 = phi i64 [ %41, %44 ], [ %55, %63 ]
  %50 = phi ptr [ %40, %44 ], [ %54, %63 ]
  %51 = add nuw i64 %47, 3
  %52 = icmp ugt i64 %51, %49
  br i1 %52, label %59, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds i8, ptr %50, i64 %51
  %55 = sub i64 %49, %51
  %56 = add i64 %48, 1
  %57 = load i32, ptr %45, align 4, !tbaa !74
  %58 = icmp eq i32 %57, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  br i1 %58, label %63, label %66

59:                                               ; preds = %46, %63, %36
  %60 = phi i64 [ %42, %36 ], [ %64, %63 ], [ -72, %46 ]
  %61 = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %0, i64 0, i32 1
  store i64 %60, ptr %61, align 8, !tbaa !60
  %62 = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %0, i64 0, i32 2
  store i64 -2, ptr %62, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  br label %91

63:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  %64 = call i64 @ZSTD_getcBlockSize(ptr noundef nonnull %54, i64 noundef %55, ptr noundef nonnull %6) #18
  %65 = icmp ult i64 %64, -119
  br i1 %65, label %46, label %59

66:                                               ; preds = %53
  %67 = getelementptr inbounds %struct.ZSTD_FrameHeader, ptr %5, i64 0, i32 6
  %68 = load i32, ptr %67, align 8, !tbaa !57
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %66
  %71 = icmp ult i64 %55, 4
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %0, i64 0, i32 1
  store i64 -72, ptr %73, align 8, !tbaa !60, !alias.scope !76
  %74 = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %0, i64 0, i32 2
  store i64 -2, ptr %74, align 8, !tbaa !62, !alias.scope !76
  br label %91

75:                                               ; preds = %70
  %76 = getelementptr inbounds i8, ptr %54, i64 4
  br label %77

77:                                               ; preds = %75, %66
  %78 = phi ptr [ %76, %75 ], [ %54, %66 ]
  %79 = ptrtoint ptr %78 to i64
  %80 = ptrtoint ptr %1 to i64
  %81 = sub i64 %79, %80
  %82 = load i64, ptr %5, align 8, !tbaa !52
  %83 = icmp eq i64 %82, -1
  %84 = getelementptr inbounds %struct.ZSTD_FrameHeader, ptr %5, i64 0, i32 2
  %85 = load i32, ptr %84, align 8
  %86 = zext i32 %85 to i64
  %87 = mul i64 %56, %86
  %88 = select i1 %83, i64 %87, i64 %82
  store i64 %56, ptr %0, align 8, !tbaa.struct !64
  %89 = getelementptr inbounds i8, ptr %0, i64 8
  store i64 %81, ptr %89, align 8, !tbaa.struct !66
  %90 = getelementptr inbounds i8, ptr %0, i64 16
  store i64 %88, ptr %90, align 8, !tbaa.struct !67
  br label %91

91:                                               ; preds = %59, %28, %33, %77, %72
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #18
  br label %92

92:                                               ; preds = %91, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompressionMargin(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ZSTD_frameSizeInfo, align 8
  %4 = alloca %struct.ZSTD_FrameHeader, align 8
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %55, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %3, i64 0, i32 1
  %8 = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %3, i64 0, i32 2
  %9 = getelementptr inbounds %struct.ZSTD_FrameHeader, ptr %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.ZSTD_FrameHeader, ptr %4, i64 0, i32 4
  %11 = getelementptr inbounds %struct.ZSTD_FrameHeader, ptr %4, i64 0, i32 6
  %12 = getelementptr inbounds %struct.ZSTD_FrameHeader, ptr %4, i64 0, i32 2
  br label %13

13:                                               ; preds = %6, %46
  %14 = phi ptr [ %0, %6 ], [ %49, %46 ]
  %15 = phi i64 [ %1, %6 ], [ %50, %46 ]
  %16 = phi i32 [ 0, %6 ], [ %48, %46 ]
  %17 = phi i64 [ 0, %6 ], [ %47, %46 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias nonnull writable align 8 %3, ptr noundef %14, i64 noundef %15, i32 noundef 0)
  %18 = load i64, ptr %7, align 8, !tbaa !60
  %19 = load i64, ptr %8, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #18
  %20 = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %4, ptr noundef %14, i64 noundef %15, i32 noundef 0)
  %21 = icmp ult i64 %20, -119
  br i1 %21, label %22, label %44

22:                                               ; preds = %13
  %23 = icmp ugt i64 %18, -120
  %24 = icmp eq i64 %19, -2
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %44, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr %9, align 4, !tbaa !49
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load i32, ptr %10, align 8, !tbaa !51
  %31 = zext i32 %30 to i64
  %32 = add i64 %17, %31
  %33 = load i32, ptr %11, align 8, !tbaa !57
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i64 0, i64 4
  %36 = add i64 %32, %35
  %37 = load i64, ptr %3, align 8, !tbaa !79
  %38 = mul i64 %37, 3
  %39 = add i64 %36, %38
  %40 = load i32, ptr %12, align 8
  %41 = tail call i32 @llvm.umax.i32(i32 %16, i32 %40)
  br label %46

42:                                               ; preds = %26
  %43 = add i64 %18, %17
  br label %46

44:                                               ; preds = %13, %22
  %45 = phi i64 [ -20, %22 ], [ %20, %13 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  br label %55

46:                                               ; preds = %29, %42
  %47 = phi i64 [ %39, %29 ], [ %43, %42 ]
  %48 = phi i32 [ %41, %29 ], [ %16, %42 ]
  %49 = getelementptr inbounds i8, ptr %14, i64 %18
  %50 = sub i64 %15, %18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %13, !llvm.loop !80

52:                                               ; preds = %46
  %53 = zext i32 %48 to i64
  %54 = add i64 %47, %53
  br label %55

55:                                               ; preds = %2, %52, %44
  %56 = phi i64 [ %45, %44 ], [ 0, %2 ], [ %54, %52 ]
  ret i64 %56
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_insertBlock(ptr noundef %0, ptr noundef %1, i64 noundef returned %2) local_unnamed_addr #0 {
  tail call void @ZSTD_checkContinuity(ptr noundef %0, ptr noundef %1, i64 noundef %2) #18
  %4 = getelementptr inbounds i8, ptr %1, i64 %2
  %5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 6
  store ptr %4, ptr %5, align 8, !tbaa !81
  ret i64 %2
}

declare void @ZSTD_checkContinuity(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompress_usingDict(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 {
  %8 = tail call fastcc i64 @ZSTD_decompressMultiFrame(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef null)
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decompressMultiFrame(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = alloca %struct.ZSTD_Trace, align 8
  %10 = alloca %struct.blockProperties_t, align 4
  %11 = icmp eq ptr %7, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @ZSTD_DDict_dictContent(ptr noundef nonnull %7) #18
  %14 = tail call i64 @ZSTD_DDict_dictSize(ptr noundef nonnull %7) #18
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i64 [ %14, %12 ], [ %6, %8 ]
  %17 = phi ptr [ %13, %12 ], [ %5, %8 ]
  %18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 20
  %19 = load i32, ptr %18, align 8, !tbaa !31
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i64 5, i64 1
  %22 = icmp ugt i64 %21, %4
  br i1 %22, label %282, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 9
  %25 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 33
  %26 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 59
  %27 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 10
  %28 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 12
  %29 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 6
  %30 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4
  %31 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 3
  %32 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 32
  %33 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 14
  %34 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 28
  %35 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 4
  %36 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 2
  %37 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 1
  %38 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 1
  %39 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 2
  %40 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 3
  %41 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 38
  %42 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 11, i32 2
  %43 = getelementptr inbounds %struct.blockProperties_t, ptr %10, i64 0, i32 2
  %44 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 22
  %45 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 18
  %46 = getelementptr inbounds %struct.blockProperties_t, ptr %10, i64 0, i32 1
  %47 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 11
  %48 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 11, i32 6
  %49 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 21
  %50 = getelementptr inbounds i8, ptr %9, i64 8
  %51 = getelementptr inbounds %struct.ZSTD_Trace, ptr %9, i64 0, i32 1
  %52 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 31
  %53 = getelementptr inbounds %struct.ZSTD_Trace, ptr %9, i64 0, i32 4
  %54 = getelementptr inbounds %struct.ZSTD_Trace, ptr %9, i64 0, i32 3
  %55 = getelementptr inbounds %struct.ZSTD_Trace, ptr %9, i64 0, i32 5
  %56 = getelementptr inbounds %struct.ZSTD_Trace, ptr %9, i64 0, i32 6
  %57 = getelementptr inbounds %struct.ZSTD_Trace, ptr %9, i64 0, i32 9
  br label %58

58:                                               ; preds = %23, %275
  %59 = phi i64 [ %21, %23 ], [ %280, %275 ]
  %60 = phi i1 [ %20, %23 ], [ %279, %275 ]
  %61 = phi ptr [ %1, %23 ], [ %276, %275 ]
  %62 = phi i64 [ %2, %23 ], [ %277, %275 ]
  %63 = phi i1 [ false, %23 ], [ true, %275 ]
  %64 = phi i64 [ %4, %23 ], [ %268, %275 ]
  %65 = phi ptr [ %3, %23 ], [ %267, %275 ]
  %66 = freeze i1 %60
  br i1 %66, label %67, label %91

67:                                               ; preds = %58, %87
  %68 = phi i64 [ %89, %87 ], [ %64, %58 ]
  %69 = phi ptr [ %88, %87 ], [ %65, %58 ]
  %70 = icmp ugt i64 %68, 3
  br i1 %70, label %71, label %91

71:                                               ; preds = %67
  %72 = load i32, ptr %69, align 1, !tbaa !46
  %73 = and i32 %72, -16
  %74 = icmp eq i32 %73, 407710288
  br i1 %74, label %75, label %91

75:                                               ; preds = %71
  %76 = icmp ult i64 %68, 8
  br i1 %76, label %290, label %77

77:                                               ; preds = %75
  %78 = getelementptr inbounds i8, ptr %69, i64 4
  %79 = load i32, ptr %78, align 1, !tbaa !46
  %80 = icmp ugt i32 %79, -9
  br i1 %80, label %290, label %81

81:                                               ; preds = %77
  %82 = zext i32 %79 to i64
  %83 = add nuw nsw i64 %82, 8
  %84 = icmp ugt i64 %83, %68
  %85 = select i1 %84, i64 -72, i64 %83
  %86 = icmp ult i64 %85, -119
  br i1 %86, label %87, label %290

87:                                               ; preds = %81
  %88 = getelementptr inbounds i8, ptr %69, i64 %85
  %89 = sub i64 %68, %85
  %90 = icmp ult i64 %89, %59
  br i1 %90, label %282, label %67

91:                                               ; preds = %67, %71, %58
  %92 = phi ptr [ %65, %58 ], [ %69, %71 ], [ %69, %67 ]
  %93 = phi i64 [ %64, %58 ], [ %68, %71 ], [ %68, %67 ]
  br i1 %11, label %108, label %94

94:                                               ; preds = %91
  %95 = call ptr @ZSTD_DDict_dictContent(ptr noundef nonnull %7) #18
  %96 = call i64 @ZSTD_DDict_dictSize(ptr noundef nonnull %7) #18
  %97 = getelementptr inbounds i8, ptr %95, i64 %96
  %98 = load ptr, ptr %24, align 8, !tbaa !20
  %99 = icmp ne ptr %98, %97
  %100 = zext i1 %99 to i32
  store i32 %100, ptr %25, align 4, !tbaa !21
  br i1 icmp ne (ptr @ZSTD_trace_decompress_begin, ptr null), label %101, label %103

101:                                              ; preds = %94
  %102 = call i64 @ZSTD_trace_decompress_begin(ptr noundef nonnull %0) #18
  br label %103

103:                                              ; preds = %101, %94
  %104 = phi i64 [ %102, %101 ], [ 0, %94 ]
  store i64 %104, ptr %26, align 8, !tbaa !82
  %105 = load i32, ptr %18, align 8, !tbaa !31
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %106, i64 5, i64 1
  store i64 %107, ptr %27, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %29, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  store i32 201326604, ptr %31, align 8, !tbaa !46
  store i32 0, ptr %32, align 8, !tbaa !84
  store <4 x i32> <i32 3, i32 0, i32 0, i32 0>, ptr %33, align 8, !tbaa !46
  store i32 1, ptr %34, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %35, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false)
  store ptr %30, ptr %0, align 8, !tbaa !85
  store ptr %36, ptr %37, align 8, !tbaa !86
  store ptr %38, ptr %39, align 8, !tbaa !87
  store ptr %31, ptr %40, align 8, !tbaa !88
  call void @ZSTD_copyDDictParameters(ptr noundef nonnull %0, ptr noundef nonnull %7) #18
  br label %111

108:                                              ; preds = %91
  %109 = call i64 @ZSTD_decompressBegin_usingDict(ptr noundef nonnull %0, ptr noundef %17, i64 noundef %16), !range !89
  %110 = icmp ult i64 %109, -119
  br i1 %110, label %111, label %290

111:                                              ; preds = %103, %108
  call void @ZSTD_checkContinuity(ptr noundef %0, ptr noundef %61, i64 noundef %62) #18
  %112 = getelementptr inbounds i8, ptr %61, i64 %62
  %113 = load i32, ptr %18, align 8, !tbaa !31
  %114 = icmp eq i32 %113, 0
  %115 = select i1 %114, i64 9, i64 5
  %116 = icmp ult i64 %93, %115
  br i1 %116, label %266, label %117

117:                                              ; preds = %111
  %118 = select i1 %114, i64 5, i64 1
  %119 = getelementptr i8, ptr %92, i64 %118
  %120 = getelementptr i8, ptr %119, i64 -1
  %121 = load i8, ptr %120, align 1, !tbaa !47
  %122 = zext i8 %121 to i32
  %123 = and i32 %122, 3
  %124 = lshr i32 %122, 6
  %125 = and i32 %122, 32
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i64
  %129 = zext nneg i32 %123 to i64
  %130 = getelementptr inbounds [4 x i64], ptr @ZSTD_did_fieldSize, i64 0, i64 %129
  %131 = load i64, ptr %130, align 8, !tbaa !48
  %132 = zext nneg i32 %124 to i64
  %133 = getelementptr inbounds [4 x i64], ptr @ZSTD_fcs_fieldSize, i64 0, i64 %132
  %134 = load i64, ptr %133, align 8, !tbaa !48
  %135 = icmp ult i8 %121, 64
  %136 = and i1 %135, %126
  %137 = zext i1 %136 to i64
  %138 = add i64 %131, %118
  %139 = add i64 %138, %134
  %140 = add i64 %139, %128
  %141 = add i64 %140, %137
  %142 = icmp ult i64 %141, -119
  br i1 %142, label %143, label %266

143:                                              ; preds = %117
  %144 = add nuw i64 %141, 3
  %145 = icmp ult i64 %93, %144
  br i1 %145, label %266, label %146

146:                                              ; preds = %143
  %147 = call fastcc i64 @ZSTD_decodeFrameHeader(ptr noundef nonnull %0, ptr noundef nonnull %92, i64 noundef %141)
  %148 = icmp ult i64 %147, -119
  br i1 %148, label %149, label %266

149:                                              ; preds = %146
  %150 = getelementptr inbounds i8, ptr %92, i64 %141
  %151 = sub i64 %93, %141
  %152 = load i32, ptr %41, align 8, !tbaa !37
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %149
  %155 = load i32, ptr %42, align 8, !tbaa !90
  %156 = call i32 @llvm.umin.i32(i32 %155, i32 %152)
  store i32 %156, ptr %42, align 8, !tbaa !90
  br label %157

157:                                              ; preds = %154, %149
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #18
  %158 = call i64 @ZSTD_getcBlockSize(ptr noundef %150, i64 noundef %151, ptr noundef nonnull %10) #18
  %159 = icmp ult i64 %158, -119
  br i1 %159, label %160, label %217

160:                                              ; preds = %157
  %161 = ptrtoint ptr %112 to i64
  br label %162

162:                                              ; preds = %219, %160
  %163 = phi i64 [ %158, %160 ], [ %220, %219 ]
  %164 = phi ptr [ %150, %160 ], [ %213, %219 ]
  %165 = phi ptr [ %61, %160 ], [ %212, %219 ]
  %166 = phi i64 [ %151, %160 ], [ %214, %219 ]
  %167 = getelementptr inbounds i8, ptr %164, i64 3
  %168 = add i64 %166, -3
  %169 = icmp ugt i64 %163, %168
  br i1 %169, label %217, label %170

170:                                              ; preds = %162
  %171 = icmp uge ptr %167, %165
  %172 = icmp ult ptr %167, %112
  %173 = select i1 %171, i1 %172, i1 false
  %174 = ptrtoint ptr %167 to i64
  %175 = ptrtoint ptr %165 to i64
  %176 = sub i64 %174, %175
  %177 = getelementptr inbounds i8, ptr %165, i64 %176
  %178 = select i1 %173, ptr %177, ptr %112
  %179 = load i32, ptr %10, align 4, !tbaa !91
  switch i32 %179, label %217 [
    i32 2, label %200
    i32 0, label %180
    i32 1, label %188
  ]

180:                                              ; preds = %170
  %181 = sub i64 %161, %175
  %182 = icmp ugt i64 %163, %181
  br i1 %182, label %217, label %183

183:                                              ; preds = %180
  %184 = icmp eq ptr %165, null
  br i1 %184, label %185, label %187

185:                                              ; preds = %183
  %186 = icmp eq i64 %163, 0
  br i1 %186, label %205, label %217

187:                                              ; preds = %183
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %165, ptr nonnull align 1 %167, i64 %163, i1 false)
  br label %205

188:                                              ; preds = %170
  %189 = ptrtoint ptr %178 to i64
  %190 = sub i64 %189, %175
  %191 = load i8, ptr %167, align 1, !tbaa !47
  %192 = load i32, ptr %43, align 4, !tbaa !92
  %193 = zext i32 %192 to i64
  %194 = icmp ult i64 %190, %193
  br i1 %194, label %217, label %195

195:                                              ; preds = %188
  %196 = icmp eq ptr %165, null
  br i1 %196, label %197, label %199

197:                                              ; preds = %195
  %198 = icmp eq i32 %192, 0
  br i1 %198, label %205, label %217

199:                                              ; preds = %195
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %165, i8 %191, i64 %193, i1 false)
  br label %205

200:                                              ; preds = %170
  %201 = ptrtoint ptr %178 to i64
  %202 = sub i64 %201, %175
  %203 = call i64 @ZSTD_decompressBlock_internal(ptr noundef nonnull %0, ptr noundef %165, i64 noundef %202, ptr noundef nonnull %167, i64 noundef %163, i32 noundef 0) #18
  %204 = icmp ult i64 %203, -119
  br i1 %204, label %205, label %217

205:                                              ; preds = %200, %199, %197, %187, %185
  %206 = phi i64 [ %193, %199 ], [ %203, %200 ], [ %163, %187 ], [ 0, %185 ], [ 0, %197 ]
  %207 = load i32, ptr %44, align 8, !tbaa !93
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %205
  %210 = call i32 @ZSTD_XXH64_update(ptr nocapture noundef nonnull %45, ptr nocapture noundef %165, i64 noundef %206) #18
  br label %211

211:                                              ; preds = %209, %205
  %212 = getelementptr inbounds i8, ptr %165, i64 %206
  %213 = getelementptr inbounds i8, ptr %167, i64 %163
  %214 = sub i64 %168, %163
  %215 = load i32, ptr %46, align 4, !tbaa !74
  %216 = icmp eq i32 %215, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #18
  br i1 %216, label %219, label %222

217:                                              ; preds = %219, %200, %197, %188, %185, %180, %170, %162, %157
  %218 = phi i64 [ %158, %157 ], [ -70, %188 ], [ -70, %180 ], [ -20, %170 ], [ -72, %162 ], [ %220, %219 ], [ %203, %200 ], [ -74, %185 ], [ -74, %197 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #18
  br label %266

219:                                              ; preds = %211
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #18
  %220 = call i64 @ZSTD_getcBlockSize(ptr noundef nonnull %213, i64 noundef %214, ptr noundef nonnull %10) #18
  %221 = icmp ult i64 %220, -119
  br i1 %221, label %162, label %217

222:                                              ; preds = %211
  %223 = load i64, ptr %47, align 8, !tbaa !94
  %224 = icmp eq i64 %223, -1
  %225 = ptrtoint ptr %212 to i64
  %226 = ptrtoint ptr %61 to i64
  %227 = sub i64 %225, %226
  %228 = icmp eq i64 %227, %223
  %229 = select i1 %224, i1 true, i1 %228
  br i1 %229, label %230, label %266

230:                                              ; preds = %222
  %231 = load i32, ptr %48, align 8, !tbaa !95
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %246, label %233

233:                                              ; preds = %230
  %234 = icmp ult i64 %214, 4
  br i1 %234, label %266, label %235

235:                                              ; preds = %233
  %236 = load i32, ptr %49, align 4, !tbaa !34
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %235
  %239 = call i64 @ZSTD_XXH64_digest(ptr nocapture noundef nonnull %45) #21
  %240 = trunc i64 %239 to i32
  %241 = load i32, ptr %213, align 1, !tbaa !46
  %242 = icmp eq i32 %241, %240
  br i1 %242, label %243, label %266

243:                                              ; preds = %238, %235
  %244 = getelementptr inbounds i8, ptr %213, i64 4
  %245 = add i64 %214, -4
  br label %246

246:                                              ; preds = %243, %230
  %247 = phi i64 [ %245, %243 ], [ %214, %230 ]
  %248 = phi ptr [ %244, %243 ], [ %213, %230 ]
  %249 = ptrtoint ptr %248 to i64
  %250 = ptrtoint ptr %92 to i64
  %251 = sub i64 %249, %250
  %252 = load i64, ptr %26, align 8, !tbaa !82
  %253 = icmp eq i64 %252, 0
  %254 = or i1 %253, icmp eq (ptr @ZSTD_trace_decompress_end, ptr null)
  br i1 %254, label %266, label %255

255:                                              ; preds = %246
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %50, i8 0, i64 48, i1 false)
  store i32 10600, ptr %9, align 8, !tbaa !96
  store i32 0, ptr %51, align 4, !tbaa !98
  %256 = load ptr, ptr %52, align 8, !tbaa !99
  %257 = icmp eq ptr %256, null
  br i1 %257, label %264, label %258

258:                                              ; preds = %255
  %259 = call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %256) #18
  store i32 %259, ptr %50, align 8, !tbaa !100
  %260 = load ptr, ptr %52, align 8, !tbaa !99
  %261 = call i64 @ZSTD_DDict_dictSize(ptr noundef %260) #18
  store i64 %261, ptr %53, align 8, !tbaa !101
  %262 = load i32, ptr %25, align 4, !tbaa !21
  store i32 %262, ptr %54, align 4, !tbaa !102
  %263 = load i64, ptr %26, align 8, !tbaa !82
  br label %264

264:                                              ; preds = %258, %255
  %265 = phi i64 [ %263, %258 ], [ %252, %255 ]
  store i64 %227, ptr %55, align 8, !tbaa !103
  store i64 %251, ptr %56, align 8, !tbaa !104
  store ptr %0, ptr %57, align 8, !tbaa !105
  call void @ZSTD_trace_decompress_end(i64 noundef %265, ptr noundef nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #18
  br label %266

266:                                              ; preds = %246, %264, %111, %117, %143, %146, %217, %222, %233, %238
  %267 = phi ptr [ %92, %111 ], [ %92, %143 ], [ %92, %217 ], [ %92, %233 ], [ %92, %238 ], [ %92, %222 ], [ %92, %146 ], [ %92, %117 ], [ %248, %264 ], [ %248, %246 ]
  %268 = phi i64 [ %93, %111 ], [ %93, %143 ], [ %93, %217 ], [ %93, %233 ], [ %93, %238 ], [ %93, %222 ], [ %93, %146 ], [ %93, %117 ], [ %247, %264 ], [ %247, %246 ]
  %269 = phi i64 [ -72, %111 ], [ -72, %143 ], [ %218, %217 ], [ -22, %233 ], [ -22, %238 ], [ -20, %222 ], [ %147, %146 ], [ %141, %117 ], [ %227, %264 ], [ %227, %246 ]
  %270 = call i32 @ZSTD_getErrorCode(i64 noundef %269) #18
  %271 = icmp eq i32 %270, 10
  %272 = and i1 %271, %63
  br i1 %272, label %290, label %273

273:                                              ; preds = %266
  %274 = icmp ult i64 %269, -119
  br i1 %274, label %275, label %290

275:                                              ; preds = %273
  %276 = getelementptr inbounds i8, ptr %61, i64 %269
  %277 = sub i64 %62, %269
  %278 = load i32, ptr %18, align 8, !tbaa !31
  %279 = icmp eq i32 %278, 0
  %280 = select i1 %279, i64 5, i64 1
  %281 = icmp ult i64 %268, %280
  br i1 %281, label %282, label %58, !llvm.loop !106

282:                                              ; preds = %275, %87, %15
  %283 = phi ptr [ %1, %15 ], [ %61, %87 ], [ %276, %275 ]
  %284 = phi i64 [ %4, %15 ], [ %89, %87 ], [ %268, %275 ]
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %282
  %287 = ptrtoint ptr %283 to i64
  %288 = ptrtoint ptr %1 to i64
  %289 = sub i64 %287, %288
  br label %290

290:                                              ; preds = %273, %266, %108, %77, %75, %81, %282, %286
  %291 = phi i64 [ %289, %286 ], [ -72, %282 ], [ %85, %81 ], [ -14, %77 ], [ -72, %75 ], [ %109, %108 ], [ %269, %273 ], [ -72, %266 ]
  ret i64 %291
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompressDCtx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 34
  %7 = load i32, ptr %6, align 8, !tbaa !22
  switch i32 %7, label %8 [
    i32 1, label %15
    i32 -1, label %12
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 30
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = tail call i64 @ZSTD_freeDDict(ptr noundef %10) #18
  store i32 0, ptr %6, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  br label %18

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 31
  %14 = load ptr, ptr %13, align 8, !tbaa !99
  br label %18

15:                                               ; preds = %5
  store i32 0, ptr %6, align 8, !tbaa !22
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 31
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  br label %18

18:                                               ; preds = %8, %12, %15
  %19 = phi ptr [ null, %8 ], [ %14, %12 ], [ %17, %15 ]
  %20 = tail call fastcc i64 @ZSTD_decompressMultiFrame(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef null, i64 noundef 0, ptr noundef %19)
  ret i64 %20
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompress_usingDDict(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call fastcc i64 @ZSTD_decompressMultiFrame(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef null, i64 noundef 0, ptr noundef %5)
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ZSTD_getDDict(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 34
  %3 = load i32, ptr %2, align 8, !tbaa !22
  switch i32 %3, label %4 [
    i32 1, label %11
    i32 -1, label %8
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = tail call i64 @ZSTD_freeDDict(ptr noundef %6) #18
  store i32 0, ptr %2, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 31
  %10 = load ptr, ptr %9, align 8, !tbaa !99
  br label %14

11:                                               ; preds = %1
  store i32 0, ptr %2, align 8, !tbaa !22
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 31
  %13 = load ptr, ptr %12, align 8, !tbaa !99
  br label %14

14:                                               ; preds = %11, %8, %4
  %15 = phi ptr [ null, %4 ], [ %10, %8 ], [ %13, %11 ]
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = tail call noalias dereferenceable_or_null(95976) ptr @malloc(i64 noundef 95976) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i64 0, i32 24
  %9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i64 0, i32 27
  store i64 0, ptr %9, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i64 0, i32 30
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i64 0, i32 9
  store ptr null, ptr %11, align 8, !tbaa !20
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i64 0, i32 33
  store i32 0, ptr %12, align 4, !tbaa !21
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i64 0, i32 34
  %14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i64 0, i32 45
  store i64 0, ptr %14, align 8, !tbaa !19
  %15 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i64 0, i32 39
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i64 0, i32 50
  store i32 0, ptr %16, align 4, !tbaa !23
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i64 0, i32 58
  store i64 0, ptr %17, align 8, !tbaa !24
  %18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i64 0, i32 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %15, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  store i32 1, ptr %18, align 8, !tbaa !25
  %19 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #19, !srcloc !26
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %7
  %22 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #19, !srcloc !27
  %23 = icmp ugt i32 %19, 6
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #19, !srcloc !28
  %26 = extractvalue { i32, i32, i32 } %25, 1
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = lshr i32 %26, 8
  %31 = and i32 %30, 1
  br label %32

32:                                               ; preds = %29, %24, %21, %7
  %33 = phi i32 [ 0, %24 ], [ %31, %29 ], [ 0, %21 ], [ 0, %7 ]
  %34 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i64 0, i32 29
  store i32 %33, ptr %34, align 4, !tbaa !29
  %35 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i64 0, i32 35
  store ptr null, ptr %35, align 8, !tbaa !30
  %36 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i64 0, i32 20
  store i32 0, ptr %36, align 8, !tbaa !31
  %37 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i64 0, i32 43
  store i64 134217729, ptr %37, align 8, !tbaa !32
  %38 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i64 0, i32 51
  store i32 0, ptr %38, align 8, !tbaa !33
  %39 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i64 0, i32 21
  store i32 0, ptr %39, align 4, !tbaa !34
  %40 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i64 0, i32 36
  store i32 0, ptr %40, align 8, !tbaa !35
  %41 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i64 0, i32 37
  store i32 0, ptr %41, align 4, !tbaa !36
  %42 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i64 0, i32 38
  store i32 0, ptr %42, align 8, !tbaa !37
  %43 = tail call i64 @ZSTD_freeDDict(ptr noundef null) #18
  store i32 0, ptr %13, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %44 = tail call fastcc i64 @ZSTD_decompressMultiFrame(ptr noundef nonnull %5, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef null, i64 noundef 0, ptr noundef null)
  %45 = tail call i64 @ZSTD_freeDCtx(ptr noundef nonnull %5), !range !107
  br label %46

46:                                               ; preds = %4, %32
  %47 = phi i64 [ %44, %32 ], [ -64, %4 ]
  ret i64 %47
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ZSTD_nextSrcSizeToDecompress(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 10
  %3 = load i64, ptr %2, align 8, !tbaa !83
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @ZSTD_nextInputType(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 15
  %3 = load i32, ptr %2, align 4, !tbaa !108
  %4 = add i32 %3, -2
  %5 = icmp ult i32 %4, 6
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds [6 x i32], ptr @switch.table.ZSTD_nextInputType, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %6 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompressContinue(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ZSTD_Trace, align 8
  %7 = alloca %struct.blockProperties_t, align 4
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 15
  %9 = load i32, ptr %8, align 4, !tbaa !108
  %10 = add i32 %9, -3
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 10
  %14 = load i64, ptr %13, align 8, !tbaa !83
  br label %24

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 14
  %17 = load i32, ptr %16, align 8, !tbaa !109
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 10
  %20 = load i64, ptr %19, align 8, !tbaa !83
  br i1 %18, label %21, label %24

21:                                               ; preds = %15
  %22 = tail call i64 @llvm.umin.i64(i64 %20, i64 %4)
  %23 = tail call i64 @llvm.umax.i64(i64 %22, i64 1)
  br label %24

24:                                               ; preds = %12, %15, %21
  %25 = phi i64 [ %14, %12 ], [ %23, %21 ], [ %20, %15 ]
  %26 = icmp eq i64 %25, %4
  br i1 %26, label %27, label %249

27:                                               ; preds = %24
  tail call void @ZSTD_checkContinuity(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #18
  %28 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 12
  %29 = load i64, ptr %28, align 8, !tbaa !110
  %30 = add i64 %29, %4
  store i64 %30, ptr %28, align 8, !tbaa !110
  %31 = load i32, ptr %8, align 4, !tbaa !108
  switch i32 %31, label %249 [
    i32 0, label %32
    i32 1, label %79
    i32 2, label %90
    i32 4, label %124
    i32 3, label %124
    i32 5, label %200
    i32 6, label %239
    i32 7, label %247
  ]

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 20
  %34 = load i32, ptr %33, align 8, !tbaa !31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i32, ptr %3, align 1, !tbaa !46
  %38 = and i32 %37, -16
  %39 = icmp eq i32 %38, 407710288
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 57
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %41, ptr nonnull align 1 %3, i64 %4, i1 false)
  %42 = sub i64 8, %4
  %43 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 10
  store i64 %42, ptr %43, align 8, !tbaa !83
  store i32 6, ptr %8, align 4, !tbaa !108
  br label %249

44:                                               ; preds = %36, %32
  %45 = phi i64 [ 5, %36 ], [ 1, %32 ]
  %46 = icmp ugt i64 %45, %4
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 19
  store i64 -72, ptr %48, align 8, !tbaa !111
  br label %249

49:                                               ; preds = %44
  %50 = getelementptr i8, ptr %3, i64 %45
  %51 = getelementptr i8, ptr %50, i64 -1
  %52 = load i8, ptr %51, align 1, !tbaa !47
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 3
  %55 = lshr i32 %53, 6
  %56 = and i32 %53, 32
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i64
  %60 = zext nneg i32 %54 to i64
  %61 = getelementptr inbounds [4 x i64], ptr @ZSTD_did_fieldSize, i64 0, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !48
  %63 = zext nneg i32 %55 to i64
  %64 = getelementptr inbounds [4 x i64], ptr @ZSTD_fcs_fieldSize, i64 0, i64 %63
  %65 = load i64, ptr %64, align 8, !tbaa !48
  %66 = icmp ult i8 %52, 64
  %67 = and i1 %66, %57
  %68 = zext i1 %67 to i64
  %69 = add i64 %62, %45
  %70 = add i64 %69, %65
  %71 = add i64 %70, %59
  %72 = add i64 %71, %68
  %73 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 19
  store i64 %72, ptr %73, align 8, !tbaa !111
  %74 = icmp ult i64 %72, -119
  br i1 %74, label %75, label %249

75:                                               ; preds = %49
  %76 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 57
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %76, ptr nonnull align 1 %3, i64 %4, i1 false)
  %77 = sub i64 %72, %4
  %78 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 10
  store i64 %77, ptr %78, align 8, !tbaa !83
  store i32 1, ptr %8, align 4, !tbaa !108
  br label %249

79:                                               ; preds = %27
  %80 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 57
  %81 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 19
  %82 = load i64, ptr %81, align 8, !tbaa !111
  %83 = sub i64 %82, %4
  %84 = getelementptr inbounds i8, ptr %80, i64 %83
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %84, ptr align 1 %3, i64 %4, i1 false)
  %85 = load i64, ptr %81, align 8, !tbaa !111
  %86 = tail call fastcc i64 @ZSTD_decodeFrameHeader(ptr noundef nonnull %0, ptr noundef nonnull %80, i64 noundef %85)
  %87 = icmp ult i64 %86, -119
  br i1 %87, label %88, label %249

88:                                               ; preds = %79
  %89 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 10
  store i64 3, ptr %89, align 8, !tbaa !83
  store i32 2, ptr %8, align 4, !tbaa !108
  br label %249

90:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  %91 = call i64 @ZSTD_getcBlockSize(ptr noundef %3, i64 noundef 3, ptr noundef nonnull %7) #18
  %92 = icmp ult i64 %91, -119
  br i1 %92, label %93, label %122

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 11, i32 2
  %95 = load i32, ptr %94, align 8, !tbaa !90
  %96 = zext i32 %95 to i64
  %97 = icmp ugt i64 %91, %96
  br i1 %97, label %122, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 10
  store i64 %91, ptr %99, align 8, !tbaa !83
  %100 = load i32, ptr %7, align 4, !tbaa !91
  %101 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 14
  store i32 %100, ptr %101, align 8, !tbaa !109
  %102 = getelementptr inbounds %struct.blockProperties_t, ptr %7, i64 0, i32 2
  %103 = load i32, ptr %102, align 4, !tbaa !92
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 26
  store i64 %104, ptr %105, align 8, !tbaa !112
  %106 = icmp eq i64 %91, 0
  %107 = getelementptr inbounds %struct.blockProperties_t, ptr %7, i64 0, i32 1
  %108 = load i32, ptr %107, align 4, !tbaa !74
  %109 = icmp eq i32 %108, 0
  br i1 %106, label %112, label %110

110:                                              ; preds = %98
  %111 = select i1 %109, i32 3, i32 4
  br label %120

112:                                              ; preds = %98
  br i1 %109, label %119, label %113

113:                                              ; preds = %112
  %114 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 11, i32 6
  %115 = load i32, ptr %114, align 8, !tbaa !95
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  store i64 4, ptr %99, align 8, !tbaa !83
  br label %120

118:                                              ; preds = %113
  store i64 0, ptr %99, align 8, !tbaa !83
  br label %120

119:                                              ; preds = %112
  store i64 3, ptr %99, align 8, !tbaa !83
  br label %120

120:                                              ; preds = %110, %117, %118, %119
  %121 = phi i32 [ 2, %119 ], [ 0, %118 ], [ 5, %117 ], [ %111, %110 ]
  store i32 %121, ptr %8, align 4, !tbaa !108
  br label %122

122:                                              ; preds = %120, %93, %90
  %123 = phi i64 [ %91, %90 ], [ -20, %93 ], [ 0, %120 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  br label %249

124:                                              ; preds = %27, %27
  %125 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 14
  %126 = load i32, ptr %125, align 8, !tbaa !109
  switch i32 %126, label %249 [
    i32 2, label %127
    i32 0, label %129
    i32 1, label %141
  ]

127:                                              ; preds = %124
  %128 = tail call i64 @ZSTD_decompressBlock_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1) #18
  br label %152

129:                                              ; preds = %124
  %130 = icmp ugt i64 %4, %2
  br i1 %130, label %249, label %131

131:                                              ; preds = %129
  %132 = icmp eq ptr %1, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %131
  %134 = icmp eq i64 %4, 0
  br i1 %134, label %137, label %249

135:                                              ; preds = %131
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %3, i64 %4, i1 false)
  %136 = icmp ult i64 %4, -119
  br i1 %136, label %137, label %249

137:                                              ; preds = %135, %133
  %138 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 10
  %139 = load i64, ptr %138, align 8, !tbaa !83
  %140 = sub i64 %139, %4
  store i64 %140, ptr %138, align 8, !tbaa !83
  br label %156

141:                                              ; preds = %124
  %142 = load i8, ptr %3, align 1, !tbaa !47
  %143 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 26
  %144 = load i64, ptr %143, align 8, !tbaa !112
  %145 = icmp ugt i64 %144, %2
  br i1 %145, label %152, label %146

146:                                              ; preds = %141
  %147 = icmp eq ptr %1, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %146
  %149 = icmp eq i64 %144, 0
  %150 = select i1 %149, i64 0, i64 -74
  br label %152

151:                                              ; preds = %146
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 %142, i64 %144, i1 false)
  br label %152

152:                                              ; preds = %151, %148, %141, %127
  %153 = phi i64 [ %128, %127 ], [ %144, %151 ], [ -70, %141 ], [ %150, %148 ]
  %154 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 10
  store i64 0, ptr %154, align 8, !tbaa !83
  %155 = icmp ult i64 %153, -119
  br i1 %155, label %156, label %249

156:                                              ; preds = %137, %152
  %157 = phi i64 [ %4, %137 ], [ %153, %152 ]
  %158 = phi i64 [ %140, %137 ], [ 0, %152 ]
  %159 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 11
  %160 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 11, i32 2
  %161 = load i32, ptr %160, align 8, !tbaa !90
  %162 = zext i32 %161 to i64
  %163 = icmp ugt i64 %157, %162
  br i1 %163, label %249, label %164

164:                                              ; preds = %156
  %165 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 13
  %166 = load i64, ptr %165, align 8, !tbaa !113
  %167 = add i64 %166, %157
  store i64 %167, ptr %165, align 8, !tbaa !113
  %168 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 22
  %169 = load i32, ptr %168, align 8, !tbaa !93
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %164
  %172 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 18
  %173 = tail call i32 @ZSTD_XXH64_update(ptr nocapture noundef nonnull %172, ptr nocapture noundef %1, i64 noundef %157) #18
  %174 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 10
  %175 = load i64, ptr %174, align 8, !tbaa !83
  br label %176

176:                                              ; preds = %171, %164
  %177 = phi i64 [ %175, %171 ], [ %158, %164 ]
  %178 = getelementptr inbounds i8, ptr %1, i64 %157
  %179 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 6
  store ptr %178, ptr %179, align 8, !tbaa !81
  %180 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 10
  %181 = icmp eq i64 %177, 0
  br i1 %181, label %182, label %249

182:                                              ; preds = %176
  %183 = load i32, ptr %8, align 4, !tbaa !108
  %184 = icmp eq i32 %183, 4
  br i1 %184, label %185, label %199

185:                                              ; preds = %182
  %186 = load i64, ptr %159, align 8, !tbaa !94
  %187 = icmp eq i64 %186, -1
  br i1 %187, label %191, label %188

188:                                              ; preds = %185
  %189 = load i64, ptr %165, align 8, !tbaa !113
  %190 = icmp eq i64 %189, %186
  br i1 %190, label %191, label %249

191:                                              ; preds = %188, %185
  %192 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 11, i32 6
  %193 = load i32, ptr %192, align 8, !tbaa !95
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %191
  store i64 4, ptr %180, align 8, !tbaa !83
  store i32 5, ptr %8, align 4, !tbaa !108
  br label %249

196:                                              ; preds = %191
  %197 = load i64, ptr %165, align 8, !tbaa !113
  %198 = load i64, ptr %28, align 8, !tbaa !110
  tail call fastcc void @ZSTD_DCtx_trace_end(ptr noundef nonnull %0, i64 noundef %197, i64 noundef %198, i32 noundef 1)
  store i64 0, ptr %180, align 8, !tbaa !83
  store i32 0, ptr %8, align 4, !tbaa !108
  br label %249

199:                                              ; preds = %182
  store i32 2, ptr %8, align 4, !tbaa !108
  store i64 3, ptr %180, align 8, !tbaa !83
  br label %249

200:                                              ; preds = %27
  %201 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 22
  %202 = load i32, ptr %201, align 8, !tbaa !93
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %210, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 18
  %206 = tail call i64 @ZSTD_XXH64_digest(ptr nocapture noundef nonnull %205) #21
  %207 = trunc i64 %206 to i32
  %208 = load i32, ptr %3, align 1, !tbaa !46
  %209 = icmp eq i32 %208, %207
  br i1 %209, label %210, label %249

210:                                              ; preds = %204, %200
  %211 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 13
  %212 = load i64, ptr %211, align 8, !tbaa !113
  %213 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 59
  %214 = load i64, ptr %213, align 8, !tbaa !82
  %215 = icmp eq i64 %214, 0
  %216 = or i1 %215, icmp eq (ptr @ZSTD_trace_decompress_end, ptr null)
  br i1 %216, label %237, label %217

217:                                              ; preds = %210
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #18
  %218 = getelementptr inbounds i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %218, i8 0, i64 48, i1 false)
  store i32 10600, ptr %6, align 8, !tbaa !96
  %219 = getelementptr inbounds %struct.ZSTD_Trace, ptr %6, i64 0, i32 1
  store i32 1, ptr %219, align 4, !tbaa !98
  %220 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 31
  %221 = load ptr, ptr %220, align 8, !tbaa !99
  %222 = icmp eq ptr %221, null
  br i1 %222, label %232, label %223

223:                                              ; preds = %217
  %224 = tail call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %221) #18
  store i32 %224, ptr %218, align 8, !tbaa !100
  %225 = load ptr, ptr %220, align 8, !tbaa !99
  %226 = tail call i64 @ZSTD_DDict_dictSize(ptr noundef %225) #18
  %227 = getelementptr inbounds %struct.ZSTD_Trace, ptr %6, i64 0, i32 4
  store i64 %226, ptr %227, align 8, !tbaa !101
  %228 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 33
  %229 = load i32, ptr %228, align 4, !tbaa !21
  %230 = getelementptr inbounds %struct.ZSTD_Trace, ptr %6, i64 0, i32 3
  store i32 %229, ptr %230, align 4, !tbaa !102
  %231 = load i64, ptr %213, align 8, !tbaa !82
  br label %232

232:                                              ; preds = %223, %217
  %233 = phi i64 [ %231, %223 ], [ %214, %217 ]
  %234 = getelementptr inbounds %struct.ZSTD_Trace, ptr %6, i64 0, i32 5
  store i64 %212, ptr %234, align 8, !tbaa !103
  %235 = getelementptr inbounds %struct.ZSTD_Trace, ptr %6, i64 0, i32 6
  store i64 %30, ptr %235, align 8, !tbaa !104
  %236 = getelementptr inbounds %struct.ZSTD_Trace, ptr %6, i64 0, i32 9
  store ptr %0, ptr %236, align 8, !tbaa !105
  call void @ZSTD_trace_decompress_end(i64 noundef %233, ptr noundef nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #18
  br label %237

237:                                              ; preds = %210, %232
  %238 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 10
  store i64 0, ptr %238, align 8, !tbaa !83
  store i32 0, ptr %8, align 4, !tbaa !108
  br label %249

239:                                              ; preds = %27
  %240 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 57
  %241 = sub i64 8, %4
  %242 = getelementptr inbounds i8, ptr %240, i64 %241
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %242, ptr align 1 %3, i64 %4, i1 false)
  %243 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 57, i64 4
  %244 = load i32, ptr %243, align 1, !tbaa !46
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 10
  store i64 %245, ptr %246, align 8, !tbaa !83
  store i32 7, ptr %8, align 4, !tbaa !108
  br label %249

247:                                              ; preds = %27
  %248 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 10
  store i64 0, ptr %248, align 8, !tbaa !83
  store i32 0, ptr %8, align 4, !tbaa !108
  br label %249

249:                                              ; preds = %133, %129, %49, %47, %204, %79, %27, %152, %135, %124, %156, %176, %188, %195, %196, %199, %24, %40, %75, %88, %122, %237, %239, %247
  %250 = phi i64 [ 0, %247 ], [ 0, %239 ], [ -22, %204 ], [ 0, %237 ], [ %123, %122 ], [ %86, %79 ], [ 0, %88 ], [ 0, %40 ], [ 0, %75 ], [ -72, %24 ], [ %153, %152 ], [ %4, %135 ], [ -20, %124 ], [ -20, %156 ], [ %157, %176 ], [ -20, %188 ], [ %157, %195 ], [ %157, %196 ], [ %157, %199 ], [ -1, %27 ], [ -72, %47 ], [ %72, %49 ], [ -70, %129 ], [ -74, %133 ]
  ret i64 %250
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decodeFrameHeader(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 11
  %6 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 20
  %7 = load i32, ptr %6, align 8, !tbaa !31
  %8 = tail call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %5, ptr noundef %1, i64 noundef %2, i32 noundef %7)
  %9 = icmp ult i64 %8, -119
  br i1 %9, label %10, label %82

10:                                               ; preds = %3
  %11 = icmp eq i64 %8, 0
  br i1 %11, label %12, label %82

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 36
  %14 = load i32, ptr %13, align 8, !tbaa !35
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %55

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 35
  %18 = load ptr, ptr %17, align 8, !tbaa !30
  %19 = icmp eq ptr %18, null
  br i1 %19, label %55, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 31
  %22 = load ptr, ptr %21, align 8, !tbaa !99
  %23 = icmp eq ptr %22, null
  br i1 %23, label %55, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 11, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !114
  %27 = getelementptr i8, ptr %18, i64 8
  %28 = load i64, ptr %27, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 %26, ptr %4, align 4, !tbaa !46
  %29 = call i64 @ZSTD_XXH64(ptr nocapture noundef nonnull %4, i64 noundef 4, i64 noundef 0) #21
  %30 = add i64 %28, -1
  %31 = and i64 %29, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %32

32:                                               ; preds = %32, %24
  %33 = phi i64 [ %31, %24 ], [ %42, %32 ]
  %34 = load ptr, ptr %18, align 8, !tbaa !44
  %35 = getelementptr inbounds ptr, ptr %34, i64 %33
  %36 = load ptr, ptr %35, align 8, !tbaa !41
  %37 = tail call i32 @ZSTD_getDictID_fromDDict(ptr noundef %36) #18
  %38 = icmp eq i32 %37, %26
  %39 = icmp eq i32 %37, 0
  %40 = or i1 %38, %39
  %41 = and i64 %33, %30
  %42 = add i64 %41, 1
  br i1 %40, label %43, label %32

43:                                               ; preds = %32
  %44 = load ptr, ptr %18, align 8, !tbaa !44
  %45 = getelementptr inbounds ptr, ptr %44, i64 %33
  %46 = load ptr, ptr %45, align 8, !tbaa !41
  %47 = icmp eq ptr %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 30
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  %51 = tail call i64 @ZSTD_freeDDict(ptr noundef %50) #18
  %52 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 34
  store i64 0, ptr %49, align 8
  %53 = load i32, ptr %25, align 4, !tbaa !114
  %54 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 32
  store i32 %53, ptr %54, align 8, !tbaa !84
  store ptr %46, ptr %21, align 8, !tbaa !99
  store i32 -1, ptr %52, align 8, !tbaa !22
  br label %55

55:                                               ; preds = %48, %43, %20, %12, %16
  %56 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 11, i32 5
  %57 = load i32, ptr %56, align 4, !tbaa !114
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 32
  %61 = load i32, ptr %60, align 8, !tbaa !84
  %62 = icmp eq i32 %61, %57
  br i1 %62, label %63, label %82

63:                                               ; preds = %59, %55
  %64 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 11, i32 6
  %65 = load i32, ptr %64, align 8, !tbaa !95
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 21
  %69 = load i32, ptr %68, align 4, !tbaa !34
  %70 = icmp eq i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 22
  store i32 %71, ptr %72, align 8, !tbaa !93
  br i1 %70, label %73, label %78

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 18
  %75 = tail call i32 @ZSTD_XXH64_reset(ptr nocapture noundef nonnull %74, i64 noundef 0) #18
  br label %78

76:                                               ; preds = %63
  %77 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 22
  store i32 0, ptr %77, align 8, !tbaa !93
  br label %78

78:                                               ; preds = %76, %73, %67
  %79 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 12
  %80 = load i64, ptr %79, align 8, !tbaa !110
  %81 = add i64 %80, %2
  store i64 %81, ptr %79, align 8, !tbaa !110
  br label %82

82:                                               ; preds = %59, %10, %3, %78
  %83 = phi i64 [ 0, %78 ], [ %8, %3 ], [ -72, %10 ], [ -32, %59 ]
  ret i64 %83
}

declare i64 @ZSTD_getcBlockSize(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @ZSTD_decompressBlock_internal(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ZSTD_XXH64_update(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_DCtx_trace_end(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.ZSTD_Trace, align 8
  %6 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 59
  %7 = load i64, ptr %6, align 8, !tbaa !82
  %8 = icmp eq i64 %7, 0
  %9 = or i1 %8, icmp eq (ptr @ZSTD_trace_decompress_end, ptr null)
  br i1 %9, label %31, label %10

10:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #18
  %11 = getelementptr inbounds i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 48, i1 false)
  store i32 10600, ptr %5, align 8, !tbaa !96
  %12 = getelementptr inbounds %struct.ZSTD_Trace, ptr %5, i64 0, i32 1
  store i32 %3, ptr %12, align 4, !tbaa !98
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 31
  %14 = load ptr, ptr %13, align 8, !tbaa !99
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %10
  %17 = tail call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %14) #18
  %18 = getelementptr inbounds %struct.ZSTD_Trace, ptr %5, i64 0, i32 2
  store i32 %17, ptr %18, align 8, !tbaa !100
  %19 = load ptr, ptr %13, align 8, !tbaa !99
  %20 = tail call i64 @ZSTD_DDict_dictSize(ptr noundef %19) #18
  %21 = getelementptr inbounds %struct.ZSTD_Trace, ptr %5, i64 0, i32 4
  store i64 %20, ptr %21, align 8, !tbaa !101
  %22 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 33
  %23 = load i32, ptr %22, align 4, !tbaa !21
  %24 = getelementptr inbounds %struct.ZSTD_Trace, ptr %5, i64 0, i32 3
  store i32 %23, ptr %24, align 4, !tbaa !102
  %25 = load i64, ptr %6, align 8, !tbaa !82
  br label %26

26:                                               ; preds = %16, %10
  %27 = phi i64 [ %25, %16 ], [ %7, %10 ]
  %28 = getelementptr inbounds %struct.ZSTD_Trace, ptr %5, i64 0, i32 5
  store i64 %1, ptr %28, align 8, !tbaa !103
  %29 = getelementptr inbounds %struct.ZSTD_Trace, ptr %5, i64 0, i32 6
  store i64 %2, ptr %29, align 8, !tbaa !104
  %30 = getelementptr inbounds %struct.ZSTD_Trace, ptr %5, i64 0, i32 9
  store ptr %0, ptr %30, align 8, !tbaa !105
  call void @ZSTD_trace_decompress_end(i64 noundef %27, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #18
  br label %31

31:                                               ; preds = %4, %26
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @ZSTD_XXH64_digest(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_loadDEntropy(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [32 x i16], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [53 x i16], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [36 x i16], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds i8, ptr %1, i64 %2
  %14 = icmp ult i64 %2, 9
  br i1 %14, label %98, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds i8, ptr %1, i64 8
  %17 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %0, i64 0, i32 3
  %18 = ptrtoint ptr %13 to i64
  %19 = add nsw i64 %2, -8
  %20 = tail call i64 @HUF_readDTableX2_wksp(ptr noundef nonnull %17, ptr noundef nonnull %16, i64 noundef %19, ptr noundef %0, i64 noundef 10264, i32 noundef 0) #18
  %21 = icmp ult i64 %20, -119
  %22 = getelementptr inbounds i8, ptr %16, i64 %20
  br i1 %21, label %23, label %98

23:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 31, ptr %5, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %18, %24
  %26 = call i64 @FSE_readNCount(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %22, i64 noundef %25) #18
  %27 = icmp ult i64 %26, -119
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, ptr %5, align 4, !tbaa !46
  %30 = icmp ugt i32 %29, 31
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, ptr %6, align 4, !tbaa !46
  %33 = icmp ugt i32 %32, 8
  br i1 %33, label %34, label %35

34:                                               ; preds = %23, %28, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  br label %98

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %0, i64 0, i32 1
  %37 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %0, i64 0, i32 5
  call void @ZSTD_buildFSETable(ptr noundef nonnull %36, ptr noundef nonnull %4, i32 noundef %29, ptr noundef nonnull @OF_base, ptr noundef nonnull @OF_bits, i32 noundef %32, ptr noundef nonnull %37, i64 noundef 628, i32 noundef 0) #18
  %38 = getelementptr inbounds i8, ptr %22, i64 %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 106, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  store i32 52, ptr %8, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %18, %39
  %41 = call i64 @FSE_readNCount(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %38, i64 noundef %40) #18
  %42 = icmp ult i64 %41, -119
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load i32, ptr %8, align 4, !tbaa !46
  %45 = icmp ugt i32 %44, 52
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, ptr %9, align 4, !tbaa !46
  %48 = icmp ugt i32 %47, 9
  br i1 %48, label %49, label %50

49:                                               ; preds = %35, %43, %46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %7) #18
  br label %98

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %0, i64 0, i32 2
  call void @ZSTD_buildFSETable(ptr noundef nonnull %51, ptr noundef nonnull %7, i32 noundef %44, ptr noundef nonnull @ML_base, ptr noundef nonnull @ML_bits, i32 noundef %47, ptr noundef nonnull %37, i64 noundef 628, i32 noundef 0) #18
  %52 = getelementptr inbounds i8, ptr %38, i64 %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #18
  store i32 35, ptr %11, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #18
  %53 = ptrtoint ptr %52 to i64
  %54 = sub i64 %18, %53
  %55 = call i64 @FSE_readNCount(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %52, i64 noundef %54) #18
  %56 = icmp ult i64 %55, -119
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load i32, ptr %11, align 4, !tbaa !46
  %59 = icmp ugt i32 %58, 35
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32, ptr %12, align 4, !tbaa !46
  %62 = icmp ugt i32 %61, 9
  br i1 %62, label %63, label %64

63:                                               ; preds = %50, %57, %60
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %10) #18
  br label %98

64:                                               ; preds = %60
  call void @ZSTD_buildFSETable(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %58, ptr noundef nonnull @LL_base, ptr noundef nonnull @LL_bits, i32 noundef %61, ptr noundef nonnull %37, i64 noundef 628, i32 noundef 0) #18
  %65 = getelementptr inbounds i8, ptr %52, i64 %55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %10) #18
  %66 = getelementptr inbounds i8, ptr %65, i64 12
  %67 = icmp ugt ptr %66, %13
  br i1 %67, label %98, label %68

68:                                               ; preds = %64
  %69 = ptrtoint ptr %66 to i64
  %70 = sub i64 %18, %69
  %71 = load i32, ptr %65, align 1, !tbaa !46
  %72 = icmp eq i32 %71, 0
  %73 = zext i32 %71 to i64
  %74 = icmp ult i64 %70, %73
  %75 = select i1 %72, i1 true, i1 %74
  br i1 %75, label %98, label %76

76:                                               ; preds = %68
  %77 = getelementptr inbounds i8, ptr %65, i64 4
  %78 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %0, i64 0, i32 4, i64 0
  store i32 %71, ptr %78, align 4, !tbaa !46
  %79 = load i32, ptr %77, align 1, !tbaa !46
  %80 = icmp eq i32 %79, 0
  %81 = zext i32 %79 to i64
  %82 = icmp ult i64 %70, %81
  %83 = select i1 %80, i1 true, i1 %82
  br i1 %83, label %98, label %84

84:                                               ; preds = %76
  %85 = getelementptr inbounds i8, ptr %65, i64 8
  %86 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %0, i64 0, i32 4, i64 1
  store i32 %79, ptr %86, align 4, !tbaa !46
  %87 = load i32, ptr %85, align 1, !tbaa !46
  %88 = icmp eq i32 %87, 0
  %89 = zext i32 %87 to i64
  %90 = icmp ult i64 %70, %89
  %91 = select i1 %88, i1 true, i1 %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %84
  %93 = getelementptr inbounds i8, ptr %65, i64 12
  %94 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %0, i64 0, i32 4, i64 2
  store i32 %87, ptr %94, align 4, !tbaa !46
  %95 = ptrtoint ptr %93 to i64
  %96 = ptrtoint ptr %1 to i64
  %97 = sub i64 %95, %96
  br label %98

98:                                               ; preds = %68, %76, %84, %63, %49, %34, %64, %3, %15, %92
  %99 = phi i64 [ %97, %92 ], [ -30, %15 ], [ -30, %3 ], [ -30, %64 ], [ -30, %34 ], [ -30, %49 ], [ -30, %63 ], [ -30, %84 ], [ -30, %76 ], [ -30, %68 ]
  ret i64 %99
}

declare i64 @HUF_readDTableX2_wksp(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @FSE_readNCount(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @ZSTD_buildFSETable(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_decompressBegin(ptr noundef %0) local_unnamed_addr #0 {
  br i1 icmp ne (ptr @ZSTD_trace_decompress_begin, ptr null), label %2, label %4

2:                                                ; preds = %1
  %3 = tail call i64 @ZSTD_trace_decompress_begin(ptr noundef %0) #18
  br label %4

4:                                                ; preds = %1, %2
  %5 = phi i64 [ %3, %2 ], [ 0, %1 ]
  %6 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 59
  store i64 %5, ptr %6, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 20
  %8 = load i32, ptr %7, align 8, !tbaa !31
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i64 5, i64 1
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 10
  store i64 %10, ptr %11, align 8, !tbaa !83
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 12
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 6
  %14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4
  %15 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  store i32 201326604, ptr %15, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 32
  store i32 0, ptr %16, align 8, !tbaa !84
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 14
  store <4 x i32> <i32 3, i32 0, i32 0, i32 0>, ptr %17, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 28
  store i32 1, ptr %18, align 8, !tbaa !25
  %19 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %19, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false)
  store ptr %14, ptr %0, align 8, !tbaa !85
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 2
  %21 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !86
  %22 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 1
  %23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !87
  %24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 3
  store ptr %15, ptr %24, align 8, !tbaa !88
  ret i64 0
}

declare extern_weak i64 @ZSTD_trace_decompress_begin(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_decompressBegin_usingDict(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  br i1 icmp ne (ptr @ZSTD_trace_decompress_begin, ptr null), label %4, label %6

4:                                                ; preds = %3
  %5 = tail call i64 @ZSTD_trace_decompress_begin(ptr noundef %0) #18
  br label %6

6:                                                ; preds = %4, %3
  %7 = phi i64 [ %5, %4 ], [ 0, %3 ]
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 59
  store i64 %7, ptr %8, align 8, !tbaa !82
  %9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 20
  %10 = load i32, ptr %9, align 8, !tbaa !31
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i64 5, i64 1
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 10
  store i64 %12, ptr %13, align 8, !tbaa !83
  %14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 12
  %15 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 6
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  store i32 201326604, ptr %17, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 17
  %19 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 16
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 32
  store i32 0, ptr %20, align 8, !tbaa !84
  %21 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 14
  store <4 x i32> <i32 3, i32 0, i32 0, i32 0>, ptr %21, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 28
  store i32 1, ptr %22, align 8, !tbaa !25
  %23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %23, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false)
  store ptr %16, ptr %0, align 8, !tbaa !85
  %24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 2
  %25 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 1
  store ptr %24, ptr %25, align 8, !tbaa !86
  %26 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 1
  %27 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !87
  %28 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 3
  store ptr %17, ptr %28, align 8, !tbaa !88
  %29 = icmp ne ptr %1, null
  %30 = icmp ne i64 %2, 0
  %31 = and i1 %29, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %6
  %33 = icmp ult i64 %2, 8
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 7
  %36 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 8
  store ptr %1, ptr %36, align 8, !tbaa !116
  store ptr %1, ptr %35, align 8, !tbaa !117
  br label %59

37:                                               ; preds = %32
  %38 = load i32, ptr %1, align 1, !tbaa !46
  %39 = icmp eq i32 %38, -332356553
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 7
  %42 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 8
  store ptr %1, ptr %42, align 8, !tbaa !116
  store ptr %1, ptr %41, align 8, !tbaa !117
  br label %59

43:                                               ; preds = %37
  %44 = getelementptr inbounds i8, ptr %1, i64 4
  %45 = load i32, ptr %44, align 1, !tbaa !46
  store i32 %45, ptr %20, align 8, !tbaa !84
  %46 = tail call i64 @ZSTD_loadDEntropy(ptr noundef nonnull %16, ptr noundef nonnull %1, i64 noundef %2)
  %47 = icmp ult i64 %46, -119
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = getelementptr inbounds i8, ptr %1, i64 %46
  store i32 1, ptr %18, align 4, !tbaa !118
  store i32 1, ptr %19, align 8, !tbaa !119
  %50 = load ptr, ptr %15, align 8, !tbaa !81
  %51 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 9
  store ptr %50, ptr %51, align 8, !tbaa !20
  %52 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !117
  %54 = ptrtoint ptr %50 to i64
  %55 = ptrtoint ptr %53 to i64
  %56 = sub i64 %55, %54
  %57 = getelementptr inbounds i8, ptr %49, i64 %56
  %58 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 8
  store ptr %57, ptr %58, align 8, !tbaa !116
  store ptr %49, ptr %52, align 8, !tbaa !117
  br label %59

59:                                               ; preds = %34, %40, %48
  %60 = getelementptr inbounds i8, ptr %1, i64 %2
  store ptr %60, ptr %15, align 8, !tbaa !81
  br label %61

61:                                               ; preds = %43, %6, %59
  %62 = phi i64 [ 0, %59 ], [ 0, %6 ], [ -30, %43 ]
  ret i64 %62
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_decompressBegin_usingDDict(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @ZSTD_DDict_dictContent(ptr noundef nonnull %1) #18
  %6 = tail call i64 @ZSTD_DDict_dictSize(ptr noundef nonnull %1) #18
  %7 = getelementptr inbounds i8, ptr %5, i64 %6
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  %10 = icmp ne ptr %9, %7
  %11 = zext i1 %10 to i32
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 33
  store i32 %11, ptr %12, align 4, !tbaa !21
  br label %13

13:                                               ; preds = %2, %4
  br i1 icmp ne (ptr @ZSTD_trace_decompress_begin, ptr null), label %14, label %16

14:                                               ; preds = %13
  %15 = tail call i64 @ZSTD_trace_decompress_begin(ptr noundef %0) #18
  br label %16

16:                                               ; preds = %13, %14
  %17 = phi i64 [ %15, %14 ], [ 0, %13 ]
  %18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 59
  store i64 %17, ptr %18, align 8, !tbaa !82
  %19 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 20
  %20 = load i32, ptr %19, align 8, !tbaa !31
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i64 5, i64 1
  %23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 10
  store i64 %22, ptr %23, align 8, !tbaa !83
  %24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 12
  %25 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 6
  %26 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4
  %27 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %25, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  store i32 201326604, ptr %27, align 8, !tbaa !46
  %28 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 32
  store i32 0, ptr %28, align 8, !tbaa !84
  %29 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 14
  store <4 x i32> <i32 3, i32 0, i32 0, i32 0>, ptr %29, align 8, !tbaa !46
  %30 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 28
  store i32 1, ptr %30, align 8, !tbaa !25
  %31 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %31, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false)
  store ptr %26, ptr %0, align 8, !tbaa !85
  %32 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 2
  %33 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 1
  store ptr %32, ptr %33, align 8, !tbaa !86
  %34 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 1
  %35 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 2
  store ptr %34, ptr %35, align 8, !tbaa !87
  %36 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 3
  store ptr %27, ptr %36, align 8, !tbaa !88
  br i1 %3, label %38, label %37

37:                                               ; preds = %16
  tail call void @ZSTD_copyDDictParameters(ptr noundef nonnull %0, ptr noundef nonnull %1) #18
  br label %38

38:                                               ; preds = %16, %37
  ret i64 0
}

declare ptr @ZSTD_DDict_dictContent(ptr noundef) local_unnamed_addr #1

declare i64 @ZSTD_DDict_dictSize(ptr noundef) local_unnamed_addr #1

declare void @ZSTD_copyDDictParameters(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ZSTD_getDictID_fromDict(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #8 {
  %3 = icmp ult i64 %1, 8
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 1, !tbaa !46
  %6 = icmp eq i32 %5, -332356553
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, ptr %0, i64 4
  %9 = load i32, ptr %8, align 1, !tbaa !46
  br label %10

10:                                               ; preds = %4, %2, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %2 ], [ 0, %4 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @ZSTD_getDictID_fromFrame(ptr noundef %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = alloca %struct.ZSTD_FrameHeader, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %4 = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %3, ptr noundef %0, i64 noundef %1, i32 noundef 0)
  %5 = icmp ult i64 %4, -119
  %6 = getelementptr inbounds %struct.ZSTD_FrameHeader, ptr %3, i64 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = select i1 %5, i32 %7, i32 0
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #18
  ret i32 %8
}

; Function Attrs: nounwind memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noundef ptr @ZSTD_createDStream() local_unnamed_addr #5 {
  %1 = tail call noalias dereferenceable_or_null(95976) ptr @malloc(i64 noundef 95976) #20
  %2 = icmp eq ptr %1, null
  br i1 %2, label %39, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 24
  %5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 27
  store i64 0, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 30
  %7 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 9
  store ptr null, ptr %7, align 8, !tbaa !20
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 33
  store i32 0, ptr %8, align 4, !tbaa !21
  %9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 34
  store i32 0, ptr %9, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 45
  store i64 0, ptr %10, align 8, !tbaa !19
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 39
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 50
  store i32 0, ptr %12, align 4, !tbaa !23
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 58
  store i64 0, ptr %13, align 8, !tbaa !24
  %14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %11, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i32 1, ptr %14, align 8, !tbaa !25
  %15 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #19, !srcloc !26
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %3
  %18 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #19, !srcloc !27
  %19 = icmp ugt i32 %15, 6
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #19, !srcloc !28
  %22 = extractvalue { i32, i32, i32 } %21, 1
  %23 = and i32 %22, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = lshr i32 %22, 8
  %27 = and i32 %26, 1
  br label %28

28:                                               ; preds = %25, %20, %17, %3
  %29 = phi i32 [ 0, %20 ], [ %27, %25 ], [ 0, %17 ], [ 0, %3 ]
  %30 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 29
  store i32 %29, ptr %30, align 4, !tbaa !29
  %31 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 35
  store ptr null, ptr %31, align 8, !tbaa !30
  %32 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 20
  store i32 0, ptr %32, align 8, !tbaa !31
  %33 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 43
  store i64 134217729, ptr %33, align 8, !tbaa !32
  %34 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 51
  store i32 0, ptr %34, align 8, !tbaa !33
  %35 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 21
  store i32 0, ptr %35, align 4, !tbaa !34
  %36 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 36
  store i32 0, ptr %36, align 8, !tbaa !35
  %37 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 37
  store i32 0, ptr %37, align 4, !tbaa !36
  %38 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i64 0, i32 38
  store i32 0, ptr %38, align 8, !tbaa !37
  br label %39

39:                                               ; preds = %0, %28
  ret ptr %1
}

; Function Attrs: nounwind memory(argmem: write) uwtable
define dso_local noundef ptr @ZSTD_initStaticDStream(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, 7
  %5 = icmp ne i64 %4, 0
  %6 = icmp ult i64 %1, 95976
  %7 = or i1 %6, %5
  br i1 %7, label %45, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 27
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 30
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 9
  store ptr null, ptr %11, align 8, !tbaa !20
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 33
  store i32 0, ptr %12, align 4, !tbaa !21
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 34
  store i32 0, ptr %13, align 8, !tbaa !22
  %14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 45
  store i64 0, ptr %14, align 8, !tbaa !19
  %15 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 39
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 50
  store i32 0, ptr %16, align 4, !tbaa !23
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 58
  store i64 0, ptr %17, align 8, !tbaa !24
  %18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %15, i8 0, i64 20, i1 false)
  store i32 1, ptr %18, align 8, !tbaa !25
  %19 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #19, !srcloc !26
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %8
  %22 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #19, !srcloc !27
  %23 = icmp ugt i32 %19, 6
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #19, !srcloc !28
  %26 = extractvalue { i32, i32, i32 } %25, 1
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = lshr i32 %26, 8
  %31 = and i32 %30, 1
  br label %32

32:                                               ; preds = %29, %24, %21, %8
  %33 = phi i32 [ 0, %24 ], [ %31, %29 ], [ 0, %21 ], [ 0, %8 ]
  %34 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 29
  store i32 %33, ptr %34, align 4, !tbaa !29
  %35 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 35
  store ptr null, ptr %35, align 8, !tbaa !30
  %36 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 20
  store i32 0, ptr %36, align 8, !tbaa !31
  %37 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 43
  store i64 134217729, ptr %37, align 8, !tbaa !32
  %38 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 51
  store i32 0, ptr %38, align 8, !tbaa !33
  %39 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 21
  store i32 0, ptr %39, align 4, !tbaa !34
  %40 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 36
  store i32 0, ptr %40, align 8, !tbaa !35
  %41 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 37
  store i32 0, ptr %41, align 4, !tbaa !36
  %42 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 38
  store i32 0, ptr %42, align 8, !tbaa !37
  store i64 %1, ptr %9, align 8, !tbaa !38
  %43 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 1
  %44 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 40
  store ptr %43, ptr %44, align 8, !tbaa !39
  br label %45

45:                                               ; preds = %2, %32
  %46 = phi ptr [ %0, %32 ], [ null, %2 ]
  ret ptr %46
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ZSTD_createDStream_advanced(ptr nocapture noundef readonly byval(%struct.ZSTD_customMem) align 8 %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 16
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %2, null
  %8 = icmp eq ptr %4, null
  %9 = xor i1 %7, %8
  br i1 %9, label %56, label %10

10:                                               ; preds = %1
  br i1 %7, label %13, label %11

11:                                               ; preds = %10
  %12 = tail call ptr %2(ptr noundef %6, i64 noundef 95976) #18
  br label %15

13:                                               ; preds = %10
  %14 = tail call noalias dereferenceable_or_null(95976) ptr @malloc(i64 noundef 95976) #20
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %56, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 24
  store ptr %2, ptr %19, align 8, !tbaa.struct !40
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 24, i32 1
  store ptr %4, ptr %20, align 8, !tbaa.struct !42
  %21 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 24, i32 2
  store ptr %6, ptr %21, align 8, !tbaa.struct !43
  %22 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 27
  store i64 0, ptr %22, align 8, !tbaa !38
  %23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 30
  %24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 9
  store ptr null, ptr %24, align 8, !tbaa !20
  %25 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 33
  store i32 0, ptr %25, align 4, !tbaa !21
  %26 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 34
  store i32 0, ptr %26, align 8, !tbaa !22
  %27 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 45
  store i64 0, ptr %27, align 8, !tbaa !19
  %28 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 39
  %29 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 50
  store i32 0, ptr %29, align 4, !tbaa !23
  %30 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 58
  store i64 0, ptr %30, align 8, !tbaa !24
  %31 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %28, i8 0, i64 20, i1 false)
  store i32 1, ptr %31, align 8, !tbaa !25
  %32 = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #19, !srcloc !26
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %18
  %35 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #19, !srcloc !27
  %36 = icmp ugt i32 %32, 6
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #19, !srcloc !28
  %39 = extractvalue { i32, i32, i32 } %38, 1
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = lshr i32 %39, 8
  %44 = and i32 %43, 1
  br label %45

45:                                               ; preds = %42, %37, %34, %18
  %46 = phi i32 [ 0, %37 ], [ %44, %42 ], [ 0, %34 ], [ 0, %18 ]
  %47 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 29
  store i32 %46, ptr %47, align 4, !tbaa !29
  %48 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 35
  store ptr null, ptr %48, align 8, !tbaa !30
  %49 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 20
  store i32 0, ptr %49, align 8, !tbaa !31
  %50 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 43
  store i64 134217729, ptr %50, align 8, !tbaa !32
  %51 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 51
  store i32 0, ptr %51, align 8, !tbaa !33
  %52 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 21
  store i32 0, ptr %52, align 4, !tbaa !34
  %53 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 36
  store i32 0, ptr %53, align 8, !tbaa !35
  %54 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 37
  store i32 0, ptr %54, align 4, !tbaa !36
  %55 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %16, i64 0, i32 38
  store i32 0, ptr %55, align 8, !tbaa !37
  br label %56

56:                                               ; preds = %1, %15, %45
  %57 = phi ptr [ null, %1 ], [ %16, %45 ], [ null, %15 ]
  ret ptr %57
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_freeDStream(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i64 @ZSTD_freeDCtx(ptr noundef %0), !range !107
  ret i64 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @ZSTD_DStreamInSize() local_unnamed_addr #2 {
  ret i64 131075
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @ZSTD_DStreamOutSize() local_unnamed_addr #2 {
  ret i64 131072
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_DCtx_loadDictionary_advanced(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 39
  %7 = load i32, ptr %6, align 4, !tbaa !120
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 30
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call i64 @ZSTD_freeDDict(ptr noundef %11) #18
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 34
  store i32 0, ptr %13, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %14 = icmp ne ptr %1, null
  %15 = icmp ne i64 %2, 0
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 24
  %19 = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %18) #18
  store ptr %19, ptr %10, align 8, !tbaa !5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 31
  store ptr %19, ptr %22, align 8, !tbaa !99
  store i32 -1, ptr %13, align 8, !tbaa !22
  br label %23

23:                                               ; preds = %9, %21, %17, %5
  %24 = phi i64 [ -60, %5 ], [ -64, %17 ], [ 0, %21 ], [ 0, %9 ]
  ret i64 %24
}

declare ptr @ZSTD_createDDict_advanced(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.ZSTD_customMem) align 8) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_DCtx_loadDictionary_byReference(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 39
  %5 = load i32, ptr %4, align 4, !tbaa !120
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 30
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = tail call i64 @ZSTD_freeDDict(ptr noundef %9) #18
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 34
  store i32 0, ptr %11, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %12 = icmp ne ptr %1, null
  %13 = icmp ne i64 %2, 0
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 24
  %17 = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %1, i64 noundef %2, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %16) #18
  store ptr %17, ptr %8, align 8, !tbaa !5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 31
  store ptr %17, ptr %20, align 8, !tbaa !99
  store i32 -1, ptr %11, align 8, !tbaa !22
  br label %21

21:                                               ; preds = %3, %7, %15, %19
  %22 = phi i64 [ -60, %3 ], [ -64, %15 ], [ 0, %19 ], [ 0, %7 ]
  ret i64 %22
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_DCtx_loadDictionary(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 39
  %5 = load i32, ptr %4, align 4, !tbaa !120
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 30
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = tail call i64 @ZSTD_freeDDict(ptr noundef %9) #18
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 34
  store i32 0, ptr %11, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %12 = icmp ne ptr %1, null
  %13 = icmp ne i64 %2, 0
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 24
  %17 = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %1, i64 noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %16) #18
  store ptr %17, ptr %8, align 8, !tbaa !5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 31
  store ptr %17, ptr %20, align 8, !tbaa !99
  store i32 -1, ptr %11, align 8, !tbaa !22
  br label %21

21:                                               ; preds = %3, %7, %15, %19
  %22 = phi i64 [ -60, %3 ], [ -64, %15 ], [ 0, %19 ], [ 0, %7 ]
  ret i64 %22
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_DCtx_refPrefix_advanced(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 39
  %6 = load i32, ptr %5, align 4, !tbaa !120
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 30
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = tail call i64 @ZSTD_freeDDict(ptr noundef %10) #18
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 34
  store i32 0, ptr %12, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %13 = icmp ne ptr %1, null
  %14 = icmp ne i64 %2, 0
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 24
  %18 = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %1, i64 noundef %2, i32 noundef 1, i32 noundef %3, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %17) #18
  store ptr %18, ptr %9, align 8, !tbaa !5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 31
  store ptr %18, ptr %21, align 8, !tbaa !99
  br label %22

22:                                               ; preds = %20, %8
  store i32 1, ptr %12, align 8, !tbaa !22
  br label %23

23:                                               ; preds = %16, %4, %22
  %24 = phi i64 [ 0, %22 ], [ -60, %4 ], [ -64, %16 ]
  ret i64 %24
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_DCtx_refPrefix(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 39
  %5 = load i32, ptr %4, align 4, !tbaa !120
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 30
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = tail call i64 @ZSTD_freeDDict(ptr noundef %9) #18
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 34
  store i32 0, ptr %11, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %12 = icmp ne ptr %1, null
  %13 = icmp ne i64 %2, 0
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 24
  %17 = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %1, i64 noundef %2, i32 noundef 1, i32 noundef 1, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %16) #18
  store ptr %17, ptr %8, align 8, !tbaa !5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 31
  store ptr %17, ptr %20, align 8, !tbaa !99
  br label %21

21:                                               ; preds = %19, %7
  store i32 1, ptr %11, align 8, !tbaa !22
  br label %22

22:                                               ; preds = %3, %15, %21
  %23 = phi i64 [ 0, %21 ], [ -60, %3 ], [ -64, %15 ]
  ret i64 %23
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_initDStream_usingDict(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 39
  store i32 0, ptr %4, align 4, !tbaa !120
  %5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 50
  store i32 0, ptr %5, align 4, !tbaa !23
  %6 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 28
  store i32 1, ptr %6, align 8, !tbaa !25
  %7 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 30
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = tail call i64 @ZSTD_freeDDict(ptr noundef %8) #18
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 34
  store i32 0, ptr %10, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %11 = icmp ne ptr %1, null
  %12 = icmp ne i64 %2, 0
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 24
  %16 = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %1, i64 noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %15) #18
  store ptr %16, ptr %7, align 8, !tbaa !5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 31
  store ptr %16, ptr %19, align 8, !tbaa !99
  store i32 -1, ptr %10, align 8, !tbaa !22
  br label %20

20:                                               ; preds = %18, %3
  %21 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 20
  %22 = load i32, ptr %21, align 8, !tbaa !31
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i64 5, i64 1
  br label %25

25:                                               ; preds = %14, %20
  %26 = phi i64 [ %24, %20 ], [ -64, %14 ]
  ret i64 %26
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_DCtx_reset(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, -3
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 39
  store i32 0, ptr %6, align 4, !tbaa !120
  %7 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 50
  store i32 0, ptr %7, align 4, !tbaa !23
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 28
  store i32 1, ptr %8, align 8, !tbaa !25
  br label %9

9:                                                ; preds = %2, %5
  %10 = and i32 %1, -2
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 39
  %14 = load i32, ptr %13, align 4, !tbaa !120
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 30
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = tail call i64 @ZSTD_freeDDict(ptr noundef %18) #18
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 34
  store i32 0, ptr %20, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %21 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 20
  store i32 0, ptr %21, align 8, !tbaa !31
  %22 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 43
  store i64 134217729, ptr %22, align 8, !tbaa !32
  %23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 51
  store i32 0, ptr %23, align 8, !tbaa !33
  %24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 21
  store i32 0, ptr %24, align 4, !tbaa !34
  %25 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 36
  store i32 0, ptr %25, align 8, !tbaa !35
  %26 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 37
  store i32 0, ptr %26, align 4, !tbaa !36
  %27 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 38
  store i32 0, ptr %27, align 8, !tbaa !37
  br label %28

28:                                               ; preds = %16, %9, %12
  %29 = phi i64 [ -60, %12 ], [ 0, %9 ], [ 0, %16 ]
  ret i64 %29
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_initDStream(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 39
  store i32 0, ptr %2, align 4, !tbaa !120
  %3 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 50
  store i32 0, ptr %3, align 4, !tbaa !23
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 28
  store i32 1, ptr %4, align 8, !tbaa !25
  %5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = tail call i64 @ZSTD_freeDDict(ptr noundef %6) #18
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 34
  store i32 0, ptr %8, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 20
  %10 = load i32, ptr %9, align 8, !tbaa !31
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i64 5, i64 1
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTD_DCtx_refDDict(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 39
  %6 = load i32, ptr %5, align 4, !tbaa !120
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %178

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 30
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = tail call i64 @ZSTD_freeDDict(ptr noundef %10) #18
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 34
  store i32 0, ptr %12, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %13 = icmp eq ptr %1, null
  br i1 %13, label %178, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 31
  store ptr %1, ptr %15, align 8, !tbaa !99
  store i32 -1, ptr %12, align 8, !tbaa !22
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 36
  %17 = load i32, ptr %16, align 8, !tbaa !35
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %178

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 35
  %21 = load ptr, ptr %20, align 8, !tbaa !30
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %57

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 24
  %25 = load ptr, ptr %24, align 1
  %26 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 24, i32 1
  %27 = load ptr, ptr %26, align 1
  %28 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 24, i32 2
  %29 = load ptr, ptr %28, align 1
  %30 = icmp eq ptr %25, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #20
  %33 = icmp eq ptr %32, null
  br i1 %33, label %50, label %42

34:                                               ; preds = %23
  %35 = tail call ptr %25(ptr noundef %29, i64 noundef 24) #18
  %36 = icmp eq ptr %35, null
  br i1 %36, label %50, label %37

37:                                               ; preds = %34
  %38 = tail call ptr %25(ptr noundef %29, i64 noundef 512) #18
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store ptr null, ptr %35, align 8, !tbaa !44
  br label %45

41:                                               ; preds = %37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %38, i8 0, i64 512, i1 false)
  store ptr %38, ptr %35, align 8, !tbaa !44
  br label %51

42:                                               ; preds = %31
  %43 = tail call noalias dereferenceable_or_null(512) ptr @calloc(i64 noundef 1, i64 noundef 512) #22
  store ptr %43, ptr %32, align 8, !tbaa !44
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42, %40
  %46 = phi ptr [ %35, %40 ], [ %32, %42 ]
  %47 = icmp eq ptr %27, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void %27(ptr noundef %29, ptr noundef nonnull %46) #18
  br label %50

49:                                               ; preds = %45
  tail call void @free(ptr noundef nonnull %46) #18
  br label %50

50:                                               ; preds = %31, %34, %48, %49
  store ptr null, ptr %20, align 8, !tbaa !30
  br label %178

51:                                               ; preds = %42, %41
  %52 = phi ptr [ %35, %41 ], [ %32, %42 ]
  %53 = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %52, i64 0, i32 1
  store i64 64, ptr %53, align 8, !tbaa !115
  %54 = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %52, i64 0, i32 2
  store i64 0, ptr %54, align 8, !tbaa !121
  store ptr %52, ptr %20, align 8, !tbaa !30
  %55 = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %52, i64 0, i32 2
  %56 = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %52, i64 0, i32 1
  br label %139

57:                                               ; preds = %19
  %58 = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %21, i64 0, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !121
  %60 = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %21, i64 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !115
  %62 = shl i64 %59, 2
  %63 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 24
  %64 = load ptr, ptr %63, align 1
  %65 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 24, i32 1
  %66 = load ptr, ptr %65, align 1
  %67 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 24, i32 2
  %68 = load ptr, ptr %67, align 1
  %69 = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %21, i64 0, i32 2
  %70 = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %21, i64 0, i32 1
  %71 = icmp ugt i64 %61, %62
  br i1 %71, label %139, label %72

72:                                               ; preds = %57
  %73 = shl i64 %61, 4
  %74 = icmp eq ptr %64, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = tail call ptr %64(ptr noundef %68, i64 noundef %73) #18
  %77 = icmp eq ptr %76, null
  br i1 %77, label %178, label %78

78:                                               ; preds = %75
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %76, i8 0, i64 %73, i1 false)
  %79 = load i64, ptr %70, align 8, !tbaa !115
  br label %83

80:                                               ; preds = %72
  %81 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %73) #22
  %82 = icmp eq ptr %81, null
  br i1 %82, label %178, label %83

83:                                               ; preds = %80, %78
  %84 = phi i64 [ %79, %78 ], [ %61, %80 ]
  %85 = phi ptr [ %76, %78 ], [ %81, %80 ]
  %86 = load ptr, ptr %21, align 8, !tbaa !44
  %87 = shl i64 %61, 1
  store ptr %85, ptr %21, align 8, !tbaa !44
  store i64 %87, ptr %70, align 8, !tbaa !115
  store i64 0, ptr %69, align 8, !tbaa !121
  %88 = icmp eq i64 %84, 0
  br i1 %88, label %133, label %89

89:                                               ; preds = %83, %130
  %90 = phi i64 [ %131, %130 ], [ 0, %83 ]
  %91 = getelementptr inbounds ptr, ptr %86, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !41
  %93 = icmp eq ptr %92, null
  br i1 %93, label %130, label %94

94:                                               ; preds = %89
  %95 = tail call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %92) #18
  %96 = load i64, ptr %70, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 %95, ptr %4, align 4, !tbaa !46
  %97 = call i64 @ZSTD_XXH64(ptr nocapture noundef nonnull %4, i64 noundef 4, i64 noundef 0) #21
  %98 = add i64 %96, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  %99 = load i64, ptr %69, align 8, !tbaa !121
  %100 = icmp eq i64 %99, %96
  br i1 %100, label %178, label %101

101:                                              ; preds = %94
  %102 = and i64 %97, %98
  %103 = load ptr, ptr %21, align 8, !tbaa !44
  %104 = getelementptr inbounds ptr, ptr %103, i64 %102
  %105 = load ptr, ptr %104, align 8, !tbaa !41
  %106 = icmp eq ptr %105, null
  br i1 %106, label %124, label %107

107:                                              ; preds = %101, %115
  %108 = phi ptr [ %120, %115 ], [ %105, %101 ]
  %109 = phi i64 [ %117, %115 ], [ %102, %101 ]
  %110 = tail call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %108) #18
  %111 = icmp eq i32 %110, %95
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load ptr, ptr %21, align 8, !tbaa !44
  %114 = getelementptr inbounds ptr, ptr %113, i64 %109
  store ptr %92, ptr %114, align 8, !tbaa !41
  br label %130

115:                                              ; preds = %107
  %116 = and i64 %109, %98
  %117 = add i64 %116, 1
  %118 = load ptr, ptr %21, align 8, !tbaa !44
  %119 = getelementptr inbounds ptr, ptr %118, i64 %117
  %120 = load ptr, ptr %119, align 8, !tbaa !41
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %107, !llvm.loop !122

122:                                              ; preds = %115
  %123 = load i64, ptr %69, align 8, !tbaa !121
  br label %124

124:                                              ; preds = %122, %101
  %125 = phi i64 [ %99, %101 ], [ %123, %122 ]
  %126 = phi i64 [ %102, %101 ], [ %117, %122 ]
  %127 = phi ptr [ %103, %101 ], [ %118, %122 ]
  %128 = getelementptr inbounds ptr, ptr %127, i64 %126
  store ptr %92, ptr %128, align 8, !tbaa !41
  %129 = add i64 %125, 1
  store i64 %129, ptr %69, align 8, !tbaa !121
  br label %130

130:                                              ; preds = %124, %112, %89
  %131 = add nuw i64 %90, 1
  %132 = icmp eq i64 %131, %84
  br i1 %132, label %133, label %89, !llvm.loop !123

133:                                              ; preds = %130, %83
  %134 = icmp eq ptr %86, null
  br i1 %134, label %139, label %135

135:                                              ; preds = %133
  %136 = icmp eq ptr %66, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %135
  tail call void %66(ptr noundef %68, ptr noundef nonnull %86) #18
  br label %139

138:                                              ; preds = %135
  tail call void @free(ptr noundef nonnull %86) #18
  br label %139

139:                                              ; preds = %51, %138, %137, %133, %57
  %140 = phi ptr [ %56, %51 ], [ %70, %138 ], [ %70, %137 ], [ %70, %133 ], [ %70, %57 ]
  %141 = phi ptr [ %55, %51 ], [ %69, %138 ], [ %69, %137 ], [ %69, %133 ], [ %69, %57 ]
  %142 = phi ptr [ %52, %51 ], [ %21, %138 ], [ %21, %137 ], [ %21, %133 ], [ %21, %57 ]
  %143 = tail call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %1) #18
  %144 = load i64, ptr %140, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 %143, ptr %3, align 4, !tbaa !46
  %145 = call i64 @ZSTD_XXH64(ptr nocapture noundef nonnull %3, i64 noundef 4, i64 noundef 0) #21
  %146 = add i64 %144, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %147 = load i64, ptr %141, align 8, !tbaa !121
  %148 = icmp eq i64 %147, %144
  br i1 %148, label %178, label %149

149:                                              ; preds = %139
  %150 = and i64 %145, %146
  %151 = load ptr, ptr %142, align 8, !tbaa !44
  %152 = getelementptr inbounds ptr, ptr %151, i64 %150
  %153 = load ptr, ptr %152, align 8, !tbaa !41
  %154 = icmp eq ptr %153, null
  br i1 %154, label %172, label %155

155:                                              ; preds = %149, %163
  %156 = phi ptr [ %168, %163 ], [ %153, %149 ]
  %157 = phi i64 [ %165, %163 ], [ %150, %149 ]
  %158 = tail call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %156) #18
  %159 = icmp eq i32 %158, %143
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load ptr, ptr %142, align 8, !tbaa !44
  %162 = getelementptr inbounds ptr, ptr %161, i64 %157
  store ptr %1, ptr %162, align 8, !tbaa !41
  br label %178

163:                                              ; preds = %155
  %164 = and i64 %157, %146
  %165 = add i64 %164, 1
  %166 = load ptr, ptr %142, align 8, !tbaa !44
  %167 = getelementptr inbounds ptr, ptr %166, i64 %165
  %168 = load ptr, ptr %167, align 8, !tbaa !41
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %155, !llvm.loop !122

170:                                              ; preds = %163
  %171 = load i64, ptr %141, align 8, !tbaa !121
  br label %172

172:                                              ; preds = %170, %149
  %173 = phi i64 [ %147, %149 ], [ %171, %170 ]
  %174 = phi i64 [ %150, %149 ], [ %165, %170 ]
  %175 = phi ptr [ %151, %149 ], [ %166, %170 ]
  %176 = getelementptr inbounds ptr, ptr %175, i64 %174
  store ptr %1, ptr %176, align 8, !tbaa !41
  %177 = add i64 %173, 1
  store i64 %177, ptr %141, align 8, !tbaa !121
  br label %178

178:                                              ; preds = %94, %172, %160, %139, %75, %80, %8, %14, %50, %2
  %179 = phi i64 [ -60, %2 ], [ -64, %50 ], [ 0, %14 ], [ 0, %8 ], [ -1, %139 ], [ -64, %75 ], [ -64, %80 ], [ 0, %160 ], [ 0, %172 ], [ -1, %94 ]
  ret i64 %179
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_initDStream_usingDDict(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 39
  store i32 0, ptr %3, align 4, !tbaa !120
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 50
  store i32 0, ptr %4, align 4, !tbaa !23
  %5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 28
  store i32 1, ptr %5, align 8, !tbaa !25
  %6 = tail call i64 @ZSTD_DCtx_refDDict(ptr noundef %0, ptr noundef %1)
  %7 = icmp ult i64 %6, -119
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 20
  %10 = load i32, ptr %9, align 8, !tbaa !31
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i64 5, i64 1
  br label %13

13:                                               ; preds = %2, %8
  %14 = phi i64 [ %6, %2 ], [ %12, %8 ]
  ret i64 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @ZSTD_resetDStream(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 39
  store i32 0, ptr %2, align 4, !tbaa !120
  %3 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 50
  store i32 0, ptr %3, align 4, !tbaa !23
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 28
  store i32 1, ptr %4, align 8, !tbaa !25
  %5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 20
  %6 = load i32, ptr %5, align 8, !tbaa !31
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i64 5, i64 1
  ret i64 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i64 @ZSTD_DCtx_setMaxWindowSize(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 39
  %4 = load i32, ptr %3, align 4, !tbaa !120
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = add i64 %1, -2147483649
  %8 = icmp ult i64 %7, -2147482625
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 43
  store i64 %1, ptr %10, align 8, !tbaa !32
  br label %11

11:                                               ; preds = %6, %2, %9
  %12 = phi i64 [ 0, %9 ], [ -60, %2 ], [ -42, %6 ]
  ret i64 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i64 } @ZSTD_dParam_getBounds(i32 noundef %0) local_unnamed_addr #2 {
  switch i32 %0, label %8 [
    i32 100, label %9
    i32 1000, label %2
    i32 1001, label %3
    i32 1002, label %4
    i32 1003, label %5
    i32 1004, label %6
    i32 1005, label %7
  ]

2:                                                ; preds = %1
  br label %9

3:                                                ; preds = %1
  br label %9

4:                                                ; preds = %1
  br label %9

5:                                                ; preds = %1
  br label %9

6:                                                ; preds = %1
  br label %9

7:                                                ; preds = %1
  br label %9

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %1, %8, %7, %6, %5, %4, %3, %2
  %10 = phi i64 [ 0, %8 ], [ 562949953422336, %7 ], [ 4294967296, %6 ], [ 4294967296, %5 ], [ 4294967296, %4 ], [ 4294967296, %3 ], [ 4294967296, %2 ], [ 133143986186, %1 ]
  %11 = phi i64 [ -40, %8 ], [ 0, %7 ], [ 0, %6 ], [ 0, %5 ], [ 0, %4 ], [ 0, %3 ], [ 0, %2 ], [ 0, %1 ]
  %12 = insertvalue { i64, i64 } poison, i64 %11, 0
  %13 = insertvalue { i64, i64 } %12, i64 %10, 1
  ret { i64, i64 } %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i64 @ZSTD_DCtx_setFormat(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 39
  %4 = load i32, ptr %3, align 4, !tbaa !120
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = icmp ugt i32 %1, 1
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 20
  store i32 %1, ptr %9, align 8, !tbaa !31
  br label %10

10:                                               ; preds = %2, %6, %8
  %11 = phi i64 [ 0, %8 ], [ -60, %2 ], [ -42, %6 ]
  ret i64 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i64 @ZSTD_DCtx_setParameter(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 39
  %5 = load i32, ptr %4, align 4, !tbaa !120
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %48

7:                                                ; preds = %3
  switch i32 %1, label %48 [
    i32 100, label %8
    i32 1000, label %17
    i32 1001, label %21
    i32 1002, label %25
    i32 1003, label %29
    i32 1004, label %37
    i32 1005, label %41
  ]

8:                                                ; preds = %7
  %9 = icmp eq i32 %2, 0
  %10 = select i1 %9, i32 27, i32 %2
  %11 = add i32 %10, -32
  %12 = icmp ult i32 %11, -22
  br i1 %12, label %48, label %13

13:                                               ; preds = %8
  %14 = zext nneg i32 %10 to i64
  %15 = shl nuw nsw i64 1, %14
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 43
  store i64 %15, ptr %16, align 8, !tbaa !32
  br label %48

17:                                               ; preds = %7
  %18 = icmp ugt i32 %2, 1
  br i1 %18, label %48, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 20
  store i32 %2, ptr %20, align 8, !tbaa !31
  br label %48

21:                                               ; preds = %7
  %22 = icmp ugt i32 %2, 1
  br i1 %22, label %48, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 51
  store i32 %2, ptr %24, align 8, !tbaa !33
  br label %48

25:                                               ; preds = %7
  %26 = icmp ugt i32 %2, 1
  br i1 %26, label %48, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 21
  store i32 %2, ptr %28, align 4, !tbaa !34
  br label %48

29:                                               ; preds = %7
  %30 = icmp ugt i32 %2, 1
  br i1 %30, label %48, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 27
  %33 = load i64, ptr %32, align 8, !tbaa !38
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 36
  store i32 %2, ptr %36, align 8, !tbaa !35
  br label %48

37:                                               ; preds = %7
  %38 = icmp ugt i32 %2, 1
  br i1 %38, label %48, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 37
  store i32 %2, ptr %40, align 4, !tbaa !36
  br label %48

41:                                               ; preds = %7
  %42 = icmp ne i32 %2, 0
  %43 = add i32 %2, -131073
  %44 = icmp ult i32 %43, -130049
  %45 = and i1 %42, %44
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 38
  store i32 %2, ptr %47, align 8, !tbaa !37
  br label %48

48:                                               ; preds = %41, %7, %37, %31, %29, %25, %21, %17, %8, %3, %13, %19, %23, %27, %35, %39, %46
  %49 = phi i64 [ 0, %46 ], [ 0, %39 ], [ 0, %35 ], [ 0, %27 ], [ 0, %23 ], [ 0, %19 ], [ 0, %13 ], [ -60, %3 ], [ -42, %8 ], [ -42, %17 ], [ -42, %21 ], [ -42, %25 ], [ -42, %29 ], [ -40, %31 ], [ -42, %37 ], [ -40, %7 ], [ -42, %41 ]
  ret i64 %49
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i64 @ZSTD_DCtx_getParameter(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #7 {
  switch i32 %1, label %30 [
    i32 100, label %4
    i32 1000, label %10
    i32 1001, label %13
    i32 1002, label %16
    i32 1003, label %19
    i32 1004, label %22
    i32 1005, label %25
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 43
  %6 = load i64, ptr %5, align 8, !tbaa !32
  %7 = trunc i64 %6 to i32
  %8 = tail call i32 @llvm.ctlz.i32(i32 %7, i1 true), !range !124
  %9 = xor i32 %8, 31
  br label %28

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 20
  %12 = load i32, ptr %11, align 8, !tbaa !31
  br label %28

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 51
  %15 = load i32, ptr %14, align 8, !tbaa !33
  br label %28

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 21
  %18 = load i32, ptr %17, align 4, !tbaa !34
  br label %28

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 36
  %21 = load i32, ptr %20, align 8, !tbaa !35
  br label %28

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 37
  %24 = load i32, ptr %23, align 4, !tbaa !36
  br label %28

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 38
  %27 = load i32, ptr %26, align 8, !tbaa !37
  br label %28

28:                                               ; preds = %25, %22, %19, %16, %13, %10, %4
  %29 = phi i32 [ %9, %4 ], [ %12, %10 ], [ %15, %13 ], [ %18, %16 ], [ %21, %19 ], [ %24, %22 ], [ %27, %25 ]
  store i32 %29, ptr %2, align 4, !tbaa !46
  br label %30

30:                                               ; preds = %28, %3
  %31 = phi i64 [ -40, %3 ], [ 0, %28 ]
  ret i64 %31
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_sizeof_DStream(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 30
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = tail call i64 @ZSTD_sizeof_DDict(ptr noundef %5) #18
  %7 = add i64 %6, 95976
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 41
  %9 = load i64, ptr %8, align 8, !tbaa !18
  %10 = add i64 %7, %9
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 45
  %12 = load i64, ptr %11, align 8, !tbaa !19
  %13 = add i64 %10, %12
  br label %14

14:                                               ; preds = %1, %3
  %15 = phi i64 [ %13, %3 ], [ 0, %1 ]
  ret i64 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @ZSTD_decodingBufferSize_min(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = tail call i64 @llvm.umin.i64(i64 %0, i64 131072)
  %4 = shl nuw nsw i64 %3, 1
  %5 = add i64 %0, 64
  %6 = add i64 %5, %4
  %7 = tail call i64 @llvm.umin.i64(i64 %6, i64 %1)
  ret i64 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @ZSTD_estimateDStreamSize(i64 noundef %0) local_unnamed_addr #2 {
  %2 = tail call i64 @llvm.umin.i64(i64 %0, i64 131072)
  %3 = shl nuw nsw i64 %2, 1
  %4 = add i64 %0, 96040
  %5 = add i64 %4, %2
  %6 = add i64 %5, %3
  ret i64 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @ZSTD_estimateDStreamSize_fromFrame(ptr noundef %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = alloca %struct.ZSTD_FrameHeader, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #18
  %4 = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %3, ptr noundef %0, i64 noundef %1, i32 noundef 0)
  %5 = icmp ult i64 %4, -119
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = icmp eq i64 %4, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.ZSTD_FrameHeader, ptr %3, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !55
  %11 = icmp ugt i64 %10, 2147483648
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = tail call i64 @llvm.umin.i64(i64 %10, i64 131072)
  %14 = shl nuw nsw i64 %13, 1
  %15 = add nuw nsw i64 %10, 96040
  %16 = add nuw nsw i64 %15, %13
  %17 = add nuw nsw i64 %16, %14
  br label %18

18:                                               ; preds = %8, %6, %2, %12
  %19 = phi i64 [ %17, %12 ], [ %4, %2 ], [ -72, %6 ], [ -16, %8 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #18
  ret i64 %19
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompressStream(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ZSTD_frameSizeInfo, align 8
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %2, align 8, !tbaa !125
  %7 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %2, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !127
  %9 = getelementptr inbounds i8, ptr %6, i64 %8
  %10 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %2, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !128
  %12 = getelementptr inbounds i8, ptr %6, i64 %11
  %13 = load ptr, ptr %1, align 8, !tbaa !129
  %14 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %1, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !130
  %16 = getelementptr inbounds i8, ptr %13, i64 %15
  %17 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %1, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !131
  %19 = getelementptr inbounds i8, ptr %13, i64 %18
  %20 = icmp ugt i64 %8, %11
  br i1 %20, label %560, label %21

21:                                               ; preds = %3
  %22 = icmp ugt i64 %15, %18
  br i1 %22, label %560, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 52
  %25 = load ptr, ptr %24, align 8, !tbaa.struct !132
  %26 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 52, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa.struct !133
  %28 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 52, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa.struct !134
  %30 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 51
  %31 = load i32, ptr %30, align 8, !tbaa !33
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %43

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 39
  %35 = load i32, ptr %34, align 4, !tbaa !120
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = icmp eq ptr %25, %13
  %39 = icmp eq i64 %29, %15
  %40 = select i1 %38, i1 %39, i1 false
  %41 = icmp eq i64 %27, %18
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %560

43:                                               ; preds = %37, %23, %33
  %44 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 39
  %45 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 47
  %46 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 46
  %47 = ptrtoint ptr %19 to i64
  %48 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 44
  %49 = getelementptr %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 45
  %50 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 11
  %51 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 11, i32 2
  %52 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 42
  %53 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 48
  %54 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 49
  %55 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 57
  %56 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 20
  %57 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 36
  %58 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 35
  %59 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 31
  %60 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 11, i32 5
  %61 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 30
  %62 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 34
  %63 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 32
  %64 = ptrtoint ptr %12 to i64
  %65 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 11, i32 3
  %66 = ptrtoint ptr %9 to i64
  %67 = sub i64 %64, %66
  %68 = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %4, i64 0, i32 1
  %69 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 10
  %70 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 9
  %71 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 33
  %72 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 59
  %73 = getelementptr %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 15
  %74 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 12
  %75 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 6
  %76 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4
  %77 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 3
  %78 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 14
  %79 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 28
  %80 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 4
  %81 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 2
  %82 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 1
  %83 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 4, i32 1
  %84 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 2
  %85 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 3
  %86 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 57, i64 4
  %87 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 11, i32 1
  %88 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 43
  %89 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 38
  %90 = getelementptr i8, ptr %0, i64 30248
  %91 = getelementptr %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 58
  %92 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 27
  %93 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 40
  %94 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 24
  %95 = getelementptr %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 24, i32 1
  %96 = getelementptr %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 24, i32 2
  br label %97

97:                                               ; preds = %181, %43
  %98 = phi ptr [ %9, %43 ], [ %182, %181 ]
  %99 = phi ptr [ %16, %43 ], [ %183, %181 ]
  br label %100

100:                                              ; preds = %494, %97
  %101 = phi ptr [ %99, %97 ], [ %487, %494 ]
  %102 = load i32, ptr %44, align 4, !tbaa !120
  switch i32 %102, label %560 [
    i32 0, label %108
    i32 1, label %106
    i32 2, label %340
    i32 3, label %103
    i32 4, label %471
  ]

103:                                              ; preds = %100
  %104 = load i64, ptr %69, align 8, !tbaa !83
  %105 = load i32, ptr %73, align 4, !tbaa !108
  br label %401

106:                                              ; preds = %100
  %107 = load i64, ptr %53, align 8, !tbaa !135
  br label %109

108:                                              ; preds = %100
  store i32 1, ptr %44, align 4, !tbaa !120
  store i64 0, ptr %52, align 8, !tbaa !136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %46, i8 0, i64 28, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !132
  br label %109

109:                                              ; preds = %106, %108
  %110 = phi i64 [ %107, %106 ], [ 0, %108 ]
  %111 = load i32, ptr %56, align 8, !tbaa !31
  %112 = tail call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %50, ptr noundef nonnull %55, i64 noundef %110, i32 noundef %111)
  %113 = load i32, ptr %57, align 8, !tbaa !35
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %148, label %115

115:                                              ; preds = %109
  %116 = load ptr, ptr %58, align 8, !tbaa !30
  %117 = icmp eq ptr %116, null
  br i1 %117, label %148, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr %59, align 8, !tbaa !99
  %120 = icmp eq ptr %119, null
  br i1 %120, label %148, label %121

121:                                              ; preds = %118
  %122 = load i32, ptr %60, align 4, !tbaa !114
  %123 = getelementptr i8, ptr %116, i64 8
  %124 = load i64, ptr %123, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store i32 %122, ptr %5, align 4, !tbaa !46
  %125 = call i64 @ZSTD_XXH64(ptr nocapture noundef nonnull %5, i64 noundef 4, i64 noundef 0) #21
  %126 = add i64 %124, -1
  %127 = and i64 %125, %126
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br label %128

128:                                              ; preds = %128, %121
  %129 = phi i64 [ %127, %121 ], [ %138, %128 ]
  %130 = load ptr, ptr %116, align 8, !tbaa !44
  %131 = getelementptr inbounds ptr, ptr %130, i64 %129
  %132 = load ptr, ptr %131, align 8, !tbaa !41
  %133 = tail call i32 @ZSTD_getDictID_fromDDict(ptr noundef %132) #18
  %134 = icmp eq i32 %133, %122
  %135 = icmp eq i32 %133, 0
  %136 = or i1 %134, %135
  %137 = and i64 %129, %126
  %138 = add i64 %137, 1
  br i1 %136, label %139, label %128

139:                                              ; preds = %128
  %140 = load ptr, ptr %116, align 8, !tbaa !44
  %141 = getelementptr inbounds ptr, ptr %140, i64 %129
  %142 = load ptr, ptr %141, align 8, !tbaa !41
  %143 = icmp eq ptr %142, null
  br i1 %143, label %148, label %144

144:                                              ; preds = %139
  %145 = load ptr, ptr %61, align 8, !tbaa !5
  %146 = tail call i64 @ZSTD_freeDDict(ptr noundef %145) #18
  store i64 0, ptr %61, align 8
  %147 = load i32, ptr %60, align 4, !tbaa !114
  store i32 %147, ptr %63, align 8, !tbaa !84
  store ptr %142, ptr %59, align 8, !tbaa !99
  store i32 -1, ptr %62, align 8, !tbaa !22
  br label %148

148:                                              ; preds = %144, %139, %118, %115, %109
  %149 = icmp ult i64 %112, -119
  br i1 %149, label %150, label %560

150:                                              ; preds = %148
  %151 = icmp eq i64 %112, 0
  br i1 %151, label %184, label %152

152:                                              ; preds = %150
  %153 = load i64, ptr %53, align 8, !tbaa !135
  %154 = sub i64 %112, %153
  %155 = ptrtoint ptr %98 to i64
  %156 = sub i64 %64, %155
  %157 = icmp ugt i64 %154, %156
  br i1 %157, label %158, label %178

158:                                              ; preds = %152
  %159 = icmp eq ptr %12, %98
  br i1 %159, label %164, label %160

160:                                              ; preds = %158
  %161 = getelementptr inbounds i8, ptr %55, i64 %153
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %161, ptr align 1 %98, i64 %156, i1 false)
  %162 = load i64, ptr %53, align 8, !tbaa !135
  %163 = add i64 %162, %156
  store i64 %163, ptr %53, align 8, !tbaa !135
  br label %164

164:                                              ; preds = %160, %158
  %165 = phi i64 [ %163, %160 ], [ %153, %158 ]
  %166 = load i64, ptr %10, align 8, !tbaa !128
  store i64 %166, ptr %7, align 8, !tbaa !127
  %167 = load i32, ptr %56, align 8, !tbaa !31
  %168 = tail call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %50, ptr noundef nonnull %55, i64 noundef %165, i32 noundef %167)
  %169 = icmp ult i64 %168, -119
  br i1 %169, label %170, label %560

170:                                              ; preds = %164
  %171 = load i32, ptr %56, align 8, !tbaa !31
  %172 = icmp eq i32 %171, 0
  %173 = select i1 %172, i64 6, i64 2
  %174 = tail call i64 @llvm.umax.i64(i64 %173, i64 %112)
  %175 = load i64, ptr %53, align 8, !tbaa !135
  %176 = sub i64 %174, %175
  %177 = add i64 %176, 3
  br label %560

178:                                              ; preds = %152
  %179 = getelementptr inbounds i8, ptr %55, i64 %153
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %179, ptr align 1 %98, i64 %154, i1 false)
  store i64 %112, ptr %53, align 8, !tbaa !135
  %180 = getelementptr inbounds i8, ptr %98, i64 %154
  br label %181

181:                                              ; preds = %178, %394, %468
  %182 = phi ptr [ %432, %468 ], [ %397, %394 ], [ %180, %178 ]
  %183 = phi ptr [ %469, %468 ], [ %395, %394 ], [ %101, %178 ]
  br label %97, !llvm.loop !137

184:                                              ; preds = %150
  %185 = load i64, ptr %50, align 8, !tbaa !94
  %186 = icmp eq i64 %185, -1
  br i1 %186, label %207, label %187

187:                                              ; preds = %184
  %188 = load i32, ptr %65, align 4, !tbaa !138
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %207, label %190

190:                                              ; preds = %187
  %191 = ptrtoint ptr %101 to i64
  %192 = sub i64 %47, %191
  %193 = icmp ult i64 %192, %185
  br i1 %193, label %207, label %194

194:                                              ; preds = %190
  %195 = load i32, ptr %56, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias nonnull writable align 8 %4, ptr noundef %9, i64 noundef %67, i32 noundef %195)
  %196 = load i64, ptr %68, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  %197 = icmp ugt i64 %196, %67
  br i1 %197, label %207, label %198

198:                                              ; preds = %194
  %199 = tail call fastcc ptr @ZSTD_getDDict(ptr noundef nonnull %0)
  %200 = tail call fastcc i64 @ZSTD_decompressMultiFrame(ptr noundef nonnull %0, ptr noundef %101, i64 noundef %192, ptr noundef %9, i64 noundef %196, ptr noundef null, i64 noundef 0, ptr noundef %199)
  %201 = icmp ult i64 %200, -119
  br i1 %201, label %202, label %560

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %9, i64 %196
  %204 = icmp eq ptr %101, null
  %205 = getelementptr inbounds i8, ptr %101, i64 %200
  %206 = select i1 %204, ptr null, ptr %205
  store i64 0, ptr %69, align 8, !tbaa !83
  br label %501

207:                                              ; preds = %194, %190, %187, %184
  %208 = load i32, ptr %30, align 8, !tbaa !33
  %209 = icmp eq i32 %208, 1
  br i1 %209, label %210, label %220

210:                                              ; preds = %207
  %211 = load i32, ptr %65, align 4, !tbaa !138
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %220, label %213

213:                                              ; preds = %210
  %214 = load i64, ptr %50, align 8, !tbaa !94
  %215 = icmp ne i64 %214, -1
  %216 = ptrtoint ptr %101 to i64
  %217 = sub i64 %47, %216
  %218 = icmp ult i64 %217, %214
  %219 = select i1 %215, i1 %218, i1 false
  br i1 %219, label %560, label %220

220:                                              ; preds = %213, %210, %207
  %221 = load i32, ptr %62, align 8, !tbaa !22
  switch i32 %221, label %222 [
    i32 1, label %225
    i32 -1, label %226
  ]

222:                                              ; preds = %220
  %223 = load ptr, ptr %61, align 8, !tbaa !5
  %224 = tail call i64 @ZSTD_freeDDict(ptr noundef %223) #18
  store i32 0, ptr %62, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %61, i8 0, i64 16, i1 false)
  br label %236

225:                                              ; preds = %220
  store i32 0, ptr %62, align 8, !tbaa !22
  br label %226

226:                                              ; preds = %220, %225
  %227 = load ptr, ptr %59, align 8, !tbaa !99
  %228 = icmp eq ptr %227, null
  br i1 %228, label %236, label %229

229:                                              ; preds = %226
  %230 = tail call ptr @ZSTD_DDict_dictContent(ptr noundef nonnull %227) #18
  %231 = tail call i64 @ZSTD_DDict_dictSize(ptr noundef nonnull %227) #18
  %232 = getelementptr inbounds i8, ptr %230, i64 %231
  %233 = load ptr, ptr %70, align 8, !tbaa !20
  %234 = icmp ne ptr %233, %232
  %235 = zext i1 %234 to i32
  store i32 %235, ptr %71, align 4, !tbaa !21
  br label %236

236:                                              ; preds = %222, %229, %226
  %237 = phi i1 [ true, %222 ], [ false, %229 ], [ true, %226 ]
  %238 = phi ptr [ null, %222 ], [ %227, %229 ], [ null, %226 ]
  br i1 icmp ne (ptr @ZSTD_trace_decompress_begin, ptr null), label %239, label %241

239:                                              ; preds = %236
  %240 = tail call i64 @ZSTD_trace_decompress_begin(ptr noundef nonnull %0) #18
  br label %241

241:                                              ; preds = %239, %236
  %242 = phi i64 [ %240, %239 ], [ 0, %236 ]
  store i64 %242, ptr %72, align 8, !tbaa !82
  %243 = load i32, ptr %56, align 8, !tbaa !31
  %244 = icmp eq i32 %243, 0
  %245 = select i1 %244, i64 5, i64 1
  store i64 %245, ptr %69, align 8, !tbaa !83
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %75, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %74, i8 0, i64 16, i1 false)
  store i32 201326604, ptr %77, align 8, !tbaa !46
  store i32 0, ptr %63, align 8, !tbaa !84
  store <4 x i32> <i32 3, i32 0, i32 0, i32 0>, ptr %78, align 8, !tbaa !46
  store i32 1, ptr %79, align 8, !tbaa !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %80, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false)
  store ptr %76, ptr %0, align 8, !tbaa !85
  store ptr %81, ptr %82, align 8, !tbaa !86
  store ptr %83, ptr %84, align 8, !tbaa !87
  store ptr %77, ptr %85, align 8, !tbaa !88
  br i1 %237, label %248, label %246

246:                                              ; preds = %241
  tail call void @ZSTD_copyDDictParameters(ptr noundef nonnull %0, ptr noundef nonnull %238) #18
  %247 = load i32, ptr %56, align 8, !tbaa !31
  br label %248

248:                                              ; preds = %246, %241
  %249 = phi i32 [ %247, %246 ], [ %243, %241 ]
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %248
  %252 = load i32, ptr %55, align 1, !tbaa !46
  %253 = and i32 %252, -16
  %254 = icmp eq i32 %253, 407710288
  br i1 %254, label %255, label %258

255:                                              ; preds = %251
  %256 = load i32, ptr %86, align 1, !tbaa !46
  %257 = zext i32 %256 to i64
  br label %262

258:                                              ; preds = %248, %251
  %259 = load i64, ptr %53, align 8, !tbaa !135
  %260 = tail call fastcc i64 @ZSTD_decodeFrameHeader(ptr noundef nonnull %0, ptr noundef nonnull %55, i64 noundef %259)
  %261 = icmp ult i64 %260, -119
  br i1 %261, label %262, label %560

262:                                              ; preds = %258, %255
  %263 = phi i64 [ %257, %255 ], [ 3, %258 ]
  %264 = phi i32 [ 7, %255 ], [ 2, %258 ]
  store i64 %263, ptr %69, align 8, !tbaa !83
  store i32 %264, ptr %73, align 4, !tbaa !108
  %265 = load i64, ptr %87, align 8, !tbaa !139
  %266 = tail call i64 @llvm.umax.i64(i64 %265, i64 1024)
  store i64 %266, ptr %87, align 8, !tbaa !139
  %267 = load i64, ptr %88, align 8, !tbaa !32
  %268 = icmp ugt i64 %266, %267
  br i1 %268, label %560, label %269

269:                                              ; preds = %262
  %270 = load i32, ptr %89, align 8, !tbaa !37
  %271 = icmp eq i32 %270, 0
  %272 = load i32, ptr %51, align 8, !tbaa !90
  br i1 %271, label %275, label %273

273:                                              ; preds = %269
  %274 = tail call i32 @llvm.umin.i32(i32 %272, i32 %270)
  store i32 %274, ptr %51, align 8, !tbaa !90
  br label %275

275:                                              ; preds = %273, %269
  %276 = phi i32 [ %274, %273 ], [ %272, %269 ]
  %277 = tail call i32 @llvm.umax.i32(i32 %276, i32 4)
  %278 = zext i32 %277 to i64
  %279 = load i32, ptr %30, align 8, !tbaa !33
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %290

281:                                              ; preds = %275
  %282 = load i64, ptr %50, align 8, !tbaa !94
  %283 = zext i32 %276 to i64
  %284 = tail call i64 @llvm.umin.i64(i64 %266, i64 %283)
  %285 = tail call i64 @llvm.umin.i64(i64 %284, i64 131072)
  %286 = shl nuw nsw i64 %285, 1
  %287 = add i64 %266, 64
  %288 = add i64 %287, %286
  %289 = tail call i64 @llvm.umin.i64(i64 %288, i64 %282)
  br label %290

290:                                              ; preds = %275, %281
  %291 = phi i64 [ %289, %281 ], [ 0, %275 ]
  %292 = load i64, ptr %90, align 8, !tbaa !18
  %293 = load i64, ptr %49, align 8, !tbaa !19
  %294 = add i64 %293, %292
  %295 = add i64 %291, %278
  %296 = mul i64 %295, 3
  %297 = icmp ult i64 %294, %296
  br i1 %297, label %301, label %298

298:                                              ; preds = %290
  %299 = load i64, ptr %91, align 8, !tbaa !24
  %300 = add i64 %299, 1
  br label %301

301:                                              ; preds = %290, %298
  %302 = phi i64 [ %300, %298 ], [ 0, %290 ]
  store i64 %302, ptr %91, align 8, !tbaa !24
  %303 = icmp ult i64 %292, %278
  br i1 %303, label %308, label %304

304:                                              ; preds = %301
  %305 = icmp ult i64 %293, %291
  %306 = icmp ugt i64 %302, 127
  %307 = select i1 %305, i1 true, i1 %306
  br i1 %307, label %308, label %339

308:                                              ; preds = %301, %304
  %309 = load i64, ptr %92, align 8, !tbaa !38
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %316, label %311

311:                                              ; preds = %308
  %312 = add i64 %309, -95976
  %313 = icmp ugt i64 %295, %312
  br i1 %313, label %560, label %314

314:                                              ; preds = %311
  %315 = load ptr, ptr %93, align 8, !tbaa !39
  br label %336

316:                                              ; preds = %308
  %317 = load ptr, ptr %93, align 8, !tbaa !39
  %318 = load ptr, ptr %95, align 8
  %319 = load ptr, ptr %96, align 8
  %320 = icmp eq ptr %317, null
  br i1 %320, label %325, label %321

321:                                              ; preds = %316
  %322 = icmp eq ptr %318, null
  br i1 %322, label %324, label %323

323:                                              ; preds = %321
  tail call void %318(ptr noundef %319, ptr noundef nonnull %317) #18
  br label %325

324:                                              ; preds = %321
  tail call void @free(ptr noundef nonnull %317) #18
  br label %325

325:                                              ; preds = %316, %323, %324
  store i64 0, ptr %90, align 8, !tbaa !18
  store i64 0, ptr %49, align 8, !tbaa !19
  %326 = load ptr, ptr %94, align 8, !tbaa !140
  %327 = icmp eq ptr %326, null
  br i1 %327, label %331, label %328

328:                                              ; preds = %325
  %329 = load ptr, ptr %96, align 8
  %330 = tail call ptr %326(ptr noundef %329, i64 noundef %295) #18
  br label %333

331:                                              ; preds = %325
  %332 = tail call noalias ptr @malloc(i64 noundef %295) #20
  br label %333

333:                                              ; preds = %328, %331
  %334 = phi ptr [ %330, %328 ], [ %332, %331 ]
  store ptr %334, ptr %93, align 8, !tbaa !39
  %335 = icmp eq ptr %334, null
  br i1 %335, label %560, label %336

336:                                              ; preds = %314, %333
  %337 = phi ptr [ %315, %314 ], [ %334, %333 ]
  store i64 %278, ptr %90, align 8, !tbaa !18
  %338 = getelementptr inbounds i8, ptr %337, i64 %278
  store ptr %338, ptr %48, align 8, !tbaa !141
  store i64 %291, ptr %49, align 8, !tbaa !19
  br label %339

339:                                              ; preds = %304, %336
  store i32 2, ptr %44, align 4, !tbaa !120
  br label %340

340:                                              ; preds = %100, %339
  %341 = ptrtoint ptr %98 to i64
  %342 = sub i64 %64, %341
  %343 = load i32, ptr %73, align 4, !tbaa !108
  %344 = add i32 %343, -3
  %345 = icmp ult i32 %344, 2
  br i1 %345, label %348, label %346

346:                                              ; preds = %340
  %347 = load i64, ptr %69, align 8, !tbaa !83
  br label %355

348:                                              ; preds = %340
  %349 = load i32, ptr %78, align 8, !tbaa !109
  %350 = icmp eq i32 %349, 0
  %351 = load i64, ptr %69, align 8, !tbaa !83
  br i1 %350, label %352, label %355

352:                                              ; preds = %348
  %353 = tail call i64 @llvm.umin.i64(i64 %351, i64 %342)
  %354 = tail call i64 @llvm.umax.i64(i64 %353, i64 1)
  br label %358

355:                                              ; preds = %346, %348
  %356 = phi i64 [ %347, %346 ], [ %351, %348 ]
  %357 = icmp eq i64 %356, 0
  br i1 %357, label %501, label %358

358:                                              ; preds = %352, %355
  %359 = phi i64 [ %351, %352 ], [ %356, %355 ]
  %360 = phi i64 [ %354, %352 ], [ %356, %355 ]
  %361 = icmp ult i64 %342, %360
  br i1 %361, label %398, label %362

362:                                              ; preds = %358
  %363 = icmp eq i32 %343, 7
  %364 = load i32, ptr %30, align 8, !tbaa !33
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %386

366:                                              ; preds = %362
  br i1 %363, label %367, label %369

367:                                              ; preds = %366
  %368 = load i64, ptr %46, align 8, !tbaa !142
  br label %373

369:                                              ; preds = %366
  %370 = load i64, ptr %49, align 8, !tbaa !19
  %371 = load i64, ptr %46, align 8, !tbaa !142
  %372 = sub i64 %370, %371
  br label %373

373:                                              ; preds = %369, %367
  %374 = phi i64 [ %371, %369 ], [ %368, %367 ]
  %375 = phi i64 [ %372, %369 ], [ 0, %367 ]
  %376 = load ptr, ptr %48, align 8, !tbaa !141
  %377 = getelementptr inbounds i8, ptr %376, i64 %374
  %378 = tail call i64 @ZSTD_decompressContinue(ptr noundef nonnull %0, ptr noundef %377, i64 noundef %375, ptr noundef %98, i64 noundef %360)
  %379 = icmp ult i64 %378, -119
  br i1 %379, label %380, label %560

380:                                              ; preds = %373
  %381 = icmp ne i64 %378, 0
  %382 = or i1 %363, %381
  br i1 %382, label %383, label %394

383:                                              ; preds = %380
  %384 = load i64, ptr %46, align 8, !tbaa !142
  %385 = add i64 %384, %378
  store i64 %385, ptr %45, align 8, !tbaa !143
  br label %394

386:                                              ; preds = %362
  %387 = ptrtoint ptr %101 to i64
  %388 = sub i64 %47, %387
  %389 = select i1 %363, i64 0, i64 %388
  %390 = tail call i64 @ZSTD_decompressContinue(ptr noundef nonnull %0, ptr noundef %101, i64 noundef %389, ptr noundef %98, i64 noundef %360)
  %391 = icmp ult i64 %390, -119
  br i1 %391, label %392, label %560

392:                                              ; preds = %386
  %393 = getelementptr inbounds i8, ptr %101, i64 %390
  br label %394

394:                                              ; preds = %392, %383, %380
  %395 = phi ptr [ %101, %383 ], [ %101, %380 ], [ %393, %392 ]
  %396 = phi i32 [ 4, %383 ], [ 2, %380 ], [ 2, %392 ]
  store i32 %396, ptr %44, align 4, !tbaa !120
  %397 = getelementptr inbounds i8, ptr %98, i64 %360
  br label %181

398:                                              ; preds = %358
  %399 = icmp eq ptr %98, %12
  br i1 %399, label %504, label %400

400:                                              ; preds = %398
  store i32 3, ptr %44, align 4, !tbaa !120
  br label %401

401:                                              ; preds = %103, %400
  %402 = phi i32 [ %105, %103 ], [ %343, %400 ]
  %403 = phi i64 [ %104, %103 ], [ %359, %400 ]
  %404 = load i64, ptr %52, align 8, !tbaa !136
  %405 = sub i64 %403, %404
  %406 = icmp eq i32 %402, 7
  br i1 %406, label %420, label %407

407:                                              ; preds = %401
  %408 = load i64, ptr %90, align 8, !tbaa !18
  %409 = sub i64 %408, %404
  %410 = icmp ugt i64 %405, %409
  br i1 %410, label %560, label %411

411:                                              ; preds = %407
  %412 = ptrtoint ptr %98 to i64
  %413 = sub i64 %64, %412
  %414 = tail call i64 @llvm.umin.i64(i64 %405, i64 %413)
  %415 = icmp eq i64 %414, 0
  br i1 %415, label %430, label %416

416:                                              ; preds = %411
  %417 = load ptr, ptr %93, align 8, !tbaa !39
  %418 = getelementptr inbounds i8, ptr %417, i64 %404
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %418, ptr align 1 %98, i64 %414, i1 false)
  %419 = load i64, ptr %52, align 8, !tbaa !136
  br label %425

420:                                              ; preds = %401
  %421 = ptrtoint ptr %98 to i64
  %422 = sub i64 %64, %421
  %423 = tail call i64 @llvm.umin.i64(i64 %405, i64 %422)
  %424 = icmp eq i64 %423, 0
  br i1 %424, label %430, label %425

425:                                              ; preds = %416, %420
  %426 = phi i64 [ %419, %416 ], [ %404, %420 ]
  %427 = phi i64 [ %414, %416 ], [ %423, %420 ]
  %428 = getelementptr inbounds i8, ptr %98, i64 %427
  %429 = add i64 %426, %427
  store i64 %429, ptr %52, align 8, !tbaa !136
  br label %430

430:                                              ; preds = %411, %425, %420
  %431 = phi i64 [ %427, %425 ], [ 0, %420 ], [ 0, %411 ]
  %432 = phi ptr [ %428, %425 ], [ %98, %420 ], [ %98, %411 ]
  %433 = icmp ult i64 %431, %405
  br i1 %433, label %504, label %434

434:                                              ; preds = %430
  store i64 0, ptr %52, align 8, !tbaa !136
  %435 = load ptr, ptr %93, align 8, !tbaa !39
  %436 = load i32, ptr %73, align 4, !tbaa !108
  %437 = icmp eq i32 %436, 7
  %438 = load i32, ptr %30, align 8, !tbaa !33
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %440, label %460

440:                                              ; preds = %434
  br i1 %437, label %441, label %443

441:                                              ; preds = %440
  %442 = load i64, ptr %46, align 8, !tbaa !142
  br label %447

443:                                              ; preds = %440
  %444 = load i64, ptr %49, align 8, !tbaa !19
  %445 = load i64, ptr %46, align 8, !tbaa !142
  %446 = sub i64 %444, %445
  br label %447

447:                                              ; preds = %443, %441
  %448 = phi i64 [ %445, %443 ], [ %442, %441 ]
  %449 = phi i64 [ %446, %443 ], [ 0, %441 ]
  %450 = load ptr, ptr %48, align 8, !tbaa !141
  %451 = getelementptr inbounds i8, ptr %450, i64 %448
  %452 = tail call i64 @ZSTD_decompressContinue(ptr noundef nonnull %0, ptr noundef %451, i64 noundef %449, ptr noundef %435, i64 noundef %403)
  %453 = icmp ult i64 %452, -119
  br i1 %453, label %454, label %560

454:                                              ; preds = %447
  %455 = icmp ne i64 %452, 0
  %456 = or i1 %437, %455
  br i1 %456, label %457, label %468

457:                                              ; preds = %454
  %458 = load i64, ptr %46, align 8, !tbaa !142
  %459 = add i64 %458, %452
  store i64 %459, ptr %45, align 8, !tbaa !143
  br label %468

460:                                              ; preds = %434
  %461 = ptrtoint ptr %101 to i64
  %462 = sub i64 %47, %461
  %463 = select i1 %437, i64 0, i64 %462
  %464 = tail call i64 @ZSTD_decompressContinue(ptr noundef nonnull %0, ptr noundef %101, i64 noundef %463, ptr noundef %435, i64 noundef %403)
  %465 = icmp ult i64 %464, -119
  br i1 %465, label %466, label %560

466:                                              ; preds = %460
  %467 = getelementptr inbounds i8, ptr %101, i64 %464
  br label %468

468:                                              ; preds = %466, %457, %454
  %469 = phi ptr [ %101, %457 ], [ %101, %454 ], [ %467, %466 ]
  %470 = phi i32 [ 4, %457 ], [ 2, %454 ], [ 2, %466 ]
  store i32 %470, ptr %44, align 4, !tbaa !120
  br label %181

471:                                              ; preds = %100
  %472 = load i64, ptr %45, align 8, !tbaa !143
  %473 = load i64, ptr %46, align 8, !tbaa !142
  %474 = sub i64 %472, %473
  %475 = ptrtoint ptr %101 to i64
  %476 = sub i64 %47, %475
  %477 = tail call i64 @llvm.umin.i64(i64 %476, i64 %474)
  %478 = icmp eq i64 %477, 0
  br i1 %478, label %483, label %479

479:                                              ; preds = %471
  %480 = load ptr, ptr %48, align 8, !tbaa !141
  %481 = getelementptr inbounds i8, ptr %480, i64 %473
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %101, ptr align 1 %481, i64 %477, i1 false)
  %482 = load i64, ptr %46, align 8, !tbaa !142
  br label %483

483:                                              ; preds = %471, %479
  %484 = phi i64 [ %473, %471 ], [ %482, %479 ]
  %485 = icmp eq ptr %101, null
  %486 = getelementptr inbounds i8, ptr %101, i64 %477
  %487 = select i1 %485, ptr null, ptr %486
  %488 = add i64 %484, %477
  store i64 %488, ptr %46, align 8, !tbaa !142
  %489 = icmp ugt i64 %474, %476
  br i1 %489, label %504, label %490

490:                                              ; preds = %483
  store i32 2, ptr %44, align 4, !tbaa !120
  %491 = load i64, ptr %49, align 8, !tbaa !19
  %492 = load i64, ptr %50, align 8, !tbaa !94
  %493 = icmp ult i64 %491, %492
  br i1 %493, label %495, label %494

494:                                              ; preds = %490, %495, %500
  br label %100, !llvm.loop !137

495:                                              ; preds = %490
  %496 = load i32, ptr %51, align 8, !tbaa !90
  %497 = zext i32 %496 to i64
  %498 = add i64 %488, %497
  %499 = icmp ugt i64 %498, %491
  br i1 %499, label %500, label %494

500:                                              ; preds = %495
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %46, i8 0, i64 16, i1 false)
  br label %494

501:                                              ; preds = %355, %202
  %502 = phi ptr [ %206, %202 ], [ %101, %355 ]
  %503 = phi ptr [ %203, %202 ], [ %98, %355 ]
  store i32 0, ptr %44, align 4, !tbaa !120
  br label %504

504:                                              ; preds = %483, %398, %430, %501
  %505 = phi ptr [ %502, %501 ], [ %487, %483 ], [ %101, %398 ], [ %101, %430 ]
  %506 = phi ptr [ %503, %501 ], [ %98, %483 ], [ %432, %430 ], [ %12, %398 ]
  %507 = load ptr, ptr %2, align 8, !tbaa !125
  %508 = ptrtoint ptr %506 to i64
  %509 = ptrtoint ptr %507 to i64
  %510 = sub i64 %508, %509
  store i64 %510, ptr %7, align 8, !tbaa !127
  %511 = load ptr, ptr %1, align 8, !tbaa !129
  %512 = ptrtoint ptr %505 to i64
  %513 = ptrtoint ptr %511 to i64
  %514 = sub i64 %512, %513
  store i64 %514, ptr %14, align 8, !tbaa !130
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !132
  %515 = icmp eq ptr %506, %9
  %516 = icmp eq ptr %505, %16
  %517 = select i1 %515, i1 %516, i1 false
  %518 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i64 0, i32 50
  br i1 %517, label %519, label %531

519:                                              ; preds = %504
  %520 = load i32, ptr %518, align 4, !tbaa !23
  %521 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %520, i32 1), !nosanitize !144
  %522 = extractvalue { i32, i1 } %521, 1, !nosanitize !144
  br i1 %522, label %523, label %524, !nosanitize !144

523:                                              ; preds = %519
  tail call void @llvm.ubsantrap(i8 0) #23, !nosanitize !144
  unreachable, !nosanitize !144

524:                                              ; preds = %519
  %525 = extractvalue { i32, i1 } %521, 0, !nosanitize !144
  store i32 %525, ptr %518, align 4, !tbaa !23
  %526 = icmp sgt i32 %525, 15
  br i1 %526, label %527, label %532

527:                                              ; preds = %524
  %528 = icmp eq i64 %15, %18
  br i1 %528, label %560, label %529

529:                                              ; preds = %527
  %530 = icmp eq i64 %8, %11
  br i1 %530, label %560, label %532

531:                                              ; preds = %504
  store i32 0, ptr %518, align 4, !tbaa !23
  br label %532

532:                                              ; preds = %524, %529, %531
  %533 = load i64, ptr %69, align 8, !tbaa !83
  %534 = icmp eq i64 %533, 0
  br i1 %534, label %535, label %553

535:                                              ; preds = %532
  %536 = load i64, ptr %45, align 8, !tbaa !143
  %537 = load i64, ptr %46, align 8, !tbaa !142
  %538 = icmp eq i64 %536, %537
  %539 = load i32, ptr %54, align 8, !tbaa !145
  %540 = icmp eq i32 %539, 0
  br i1 %538, label %541, label %549

541:                                              ; preds = %535
  br i1 %540, label %560, label %542

542:                                              ; preds = %541
  %543 = load i64, ptr %7, align 8, !tbaa !127
  %544 = load i64, ptr %10, align 8, !tbaa !128
  %545 = icmp ult i64 %543, %544
  br i1 %545, label %547, label %546

546:                                              ; preds = %542
  store i32 2, ptr %44, align 4, !tbaa !120
  br label %560

547:                                              ; preds = %542
  %548 = add nuw i64 %543, 1
  store i64 %548, ptr %7, align 8, !tbaa !127
  br label %560

549:                                              ; preds = %535
  br i1 %540, label %550, label %560

550:                                              ; preds = %549
  %551 = load i64, ptr %7, align 8, !tbaa !127
  %552 = add i64 %551, -1
  store i64 %552, ptr %7, align 8, !tbaa !127
  store i32 1, ptr %54, align 8, !tbaa !145
  br label %560

553:                                              ; preds = %532
  %554 = load i32, ptr %73, align 4, !tbaa !108
  %555 = icmp eq i32 %554, 3
  %556 = select i1 %555, i64 3, i64 0
  %557 = load i64, ptr %52, align 8, !tbaa !136
  %558 = sub i64 %533, %557
  %559 = add i64 %558, %556
  br label %560

560:                                              ; preds = %100, %460, %447, %386, %373, %213, %148, %407, %333, %311, %262, %258, %198, %164, %170, %37, %546, %553, %547, %541, %550, %549, %529, %527, %21, %3
  %561 = phi i64 [ -72, %3 ], [ -70, %21 ], [ -80, %527 ], [ -82, %529 ], [ %559, %553 ], [ 1, %546 ], [ 0, %547 ], [ 0, %541 ], [ 1, %550 ], [ 1, %549 ], [ -104, %37 ], [ %168, %164 ], [ %177, %170 ], [ %200, %198 ], [ -1, %100 ], [ %260, %258 ], [ -16, %262 ], [ -64, %311 ], [ -64, %333 ], [ -20, %407 ], [ %112, %148 ], [ -70, %213 ], [ %390, %386 ], [ %378, %373 ], [ %464, %460 ], [ %452, %447 ]
  ret i64 %561
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompressStream_simpleArgs(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef %3, ptr noundef %4, i64 noundef %5, ptr nocapture noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.ZSTD_outBuffer_s, align 8
  %9 = alloca %struct.ZSTD_inBuffer_s, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #18
  store ptr %1, ptr %8, align 8, !tbaa !129
  %10 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %8, i64 0, i32 1
  store i64 %2, ptr %10, align 8, !tbaa !131
  %11 = load i64, ptr %3, align 8, !tbaa !48
  %12 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %8, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !130
  store ptr %4, ptr %9, align 8, !tbaa !125
  %13 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %9, i64 0, i32 1
  store i64 %5, ptr %13, align 8, !tbaa !128
  %14 = load i64, ptr %6, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %9, i64 0, i32 2
  store i64 %14, ptr %15, align 8, !tbaa !127
  %16 = call i64 @ZSTD_decompressStream(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %17 = load i64, ptr %12, align 8, !tbaa !130
  store i64 %17, ptr %3, align 8, !tbaa !48
  %18 = load i64, ptr %15, align 8, !tbaa !127
  store i64 %18, ptr %6, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #18
  ret i64 %16
}

declare i64 @ZSTD_freeDDict(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

declare i32 @ZSTD_getErrorCode(i64 noundef) local_unnamed_addr #1

declare i32 @ZSTD_XXH64_reset(ptr nocapture noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

declare extern_weak void @ZSTD_trace_decompress_end(i64 noundef, ptr noundef) #1

declare i32 @ZSTD_getDictID_fromDDict(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @ZSTD_XXH64(ptr nocapture noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { nounwind memory(none) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind allocsize(0,1) }
attributes #23 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !7, i64 30184}
!6 = !{!"ZSTD_DCtx_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !8, i64 27324, !7, i64 29888, !7, i64 29896, !7, i64 29904, !7, i64 29912, !11, i64 29920, !12, i64 29928, !11, i64 29976, !11, i64 29984, !14, i64 29992, !14, i64 29996, !14, i64 30000, !14, i64 30004, !15, i64 30008, !11, i64 30096, !14, i64 30104, !14, i64 30108, !14, i64 30112, !7, i64 30120, !16, i64 30128, !11, i64 30152, !11, i64 30160, !11, i64 30168, !14, i64 30176, !14, i64 30180, !7, i64 30184, !7, i64 30192, !14, i64 30200, !14, i64 30204, !14, i64 30208, !7, i64 30216, !14, i64 30224, !14, i64 30228, !14, i64 30232, !14, i64 30236, !7, i64 30240, !11, i64 30248, !11, i64 30256, !11, i64 30264, !7, i64 30272, !11, i64 30280, !11, i64 30288, !11, i64 30296, !11, i64 30304, !14, i64 30312, !14, i64 30316, !14, i64 30320, !17, i64 30328, !7, i64 30352, !7, i64 30360, !14, i64 30368, !8, i64 30372, !8, i64 95940, !11, i64 95960, !13, i64 95968}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"", !8, i64 0, !8, i64 4104, !8, i64 6160, !8, i64 10264, !8, i64 26652, !8, i64 26664}
!11 = !{!"long", !8, i64 0}
!12 = !{!"", !13, i64 0, !13, i64 8, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40}
!13 = !{!"long long", !8, i64 0}
!14 = !{!"int", !8, i64 0}
!15 = !{!"XXH64_state_s", !11, i64 0, !8, i64 8, !8, i64 40, !14, i64 72, !14, i64 76, !11, i64 80}
!16 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!17 = !{!"ZSTD_outBuffer_s", !7, i64 0, !11, i64 8, !11, i64 16}
!18 = !{!6, !11, i64 30248}
!19 = !{!6, !11, i64 30280}
!20 = !{!6, !7, i64 29912}
!21 = !{!6, !14, i64 30204}
!22 = !{!6, !14, i64 30208}
!23 = !{!6, !14, i64 30316}
!24 = !{!6, !11, i64 95960}
!25 = !{!6, !14, i64 30176}
!26 = !{i64 1330795}
!27 = !{i64 1330893}
!28 = !{i64 1331007}
!29 = !{!6, !14, i64 30180}
!30 = !{!6, !7, i64 30216}
!31 = !{!6, !14, i64 30104}
!32 = !{!6, !11, i64 30264}
!33 = !{!6, !14, i64 30320}
!34 = !{!6, !14, i64 30108}
!35 = !{!6, !14, i64 30224}
!36 = !{!6, !14, i64 30228}
!37 = !{!6, !14, i64 30232}
!38 = !{!6, !11, i64 30168}
!39 = !{!6, !7, i64 30240}
!40 = !{i64 0, i64 8, !41, i64 8, i64 8, !41, i64 16, i64 8, !41}
!41 = !{!7, !7, i64 0}
!42 = !{i64 0, i64 8, !41, i64 8, i64 8, !41}
!43 = !{i64 0, i64 8, !41}
!44 = !{!45, !7, i64 0}
!45 = !{!"", !7, i64 0, !11, i64 8, !11, i64 16}
!46 = !{!14, !14, i64 0}
!47 = !{!8, !8, i64 0}
!48 = !{!11, !11, i64 0}
!49 = !{!12, !14, i64 20}
!50 = !{!12, !14, i64 28}
!51 = !{!12, !14, i64 24}
!52 = !{!12, !13, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"short", !8, i64 0}
!55 = !{!12, !13, i64 8}
!56 = !{!12, !14, i64 16}
!57 = !{!12, !14, i64 32}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!61, !11, i64 8}
!61 = !{!"", !11, i64 0, !11, i64 8, !13, i64 16}
!62 = !{!61, !13, i64 16}
!63 = distinct !{!63, !59}
!64 = !{i64 0, i64 8, !48, i64 8, i64 8, !48, i64 16, i64 8, !65}
!65 = !{!13, !13, i64 0}
!66 = !{i64 0, i64 8, !48, i64 8, i64 8, !65}
!67 = !{i64 0, i64 8, !65}
!68 = !{!69}
!69 = distinct !{!69, !70, !"ZSTD_errorFrameSizeInfo: argument 0"}
!70 = distinct !{!70, !"ZSTD_errorFrameSizeInfo"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"ZSTD_errorFrameSizeInfo: argument 0"}
!73 = distinct !{!73, !"ZSTD_errorFrameSizeInfo"}
!74 = !{!75, !14, i64 4}
!75 = !{!"", !14, i64 0, !14, i64 4, !14, i64 8}
!76 = !{!77}
!77 = distinct !{!77, !78, !"ZSTD_errorFrameSizeInfo: argument 0"}
!78 = distinct !{!78, !"ZSTD_errorFrameSizeInfo"}
!79 = !{!61, !11, i64 0}
!80 = distinct !{!80, !59}
!81 = !{!6, !7, i64 29888}
!82 = !{!6, !13, i64 95968}
!83 = !{!6, !11, i64 29920}
!84 = !{!6, !14, i64 30200}
!85 = !{!6, !7, i64 0}
!86 = !{!6, !7, i64 8}
!87 = !{!6, !7, i64 16}
!88 = !{!6, !7, i64 24}
!89 = !{i64 -30, i64 1}
!90 = !{!6, !14, i64 29944}
!91 = !{!75, !14, i64 0}
!92 = !{!75, !14, i64 8}
!93 = !{!6, !14, i64 30112}
!94 = !{!6, !13, i64 29928}
!95 = !{!6, !14, i64 29960}
!96 = !{!97, !14, i64 0}
!97 = !{!"", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !11, i64 16, !11, i64 24, !11, i64 32, !7, i64 40, !7, i64 48, !7, i64 56}
!98 = !{!97, !14, i64 4}
!99 = !{!6, !7, i64 30192}
!100 = !{!97, !14, i64 8}
!101 = !{!97, !11, i64 16}
!102 = !{!97, !14, i64 12}
!103 = !{!97, !11, i64 24}
!104 = !{!97, !11, i64 32}
!105 = !{!97, !7, i64 56}
!106 = distinct !{!106, !59}
!107 = !{i64 -64, i64 1}
!108 = !{!6, !14, i64 29996}
!109 = !{!6, !14, i64 29992}
!110 = !{!6, !11, i64 29976}
!111 = !{!6, !11, i64 30096}
!112 = !{!6, !11, i64 30160}
!113 = !{!6, !11, i64 29984}
!114 = !{!6, !14, i64 29956}
!115 = !{!45, !11, i64 8}
!116 = !{!6, !7, i64 29904}
!117 = !{!6, !7, i64 29896}
!118 = !{!6, !14, i64 30004}
!119 = !{!6, !14, i64 30000}
!120 = !{!6, !14, i64 30236}
!121 = !{!45, !11, i64 16}
!122 = distinct !{!122, !59}
!123 = distinct !{!123, !59}
!124 = !{i32 0, i32 33}
!125 = !{!126, !7, i64 0}
!126 = !{!"ZSTD_inBuffer_s", !7, i64 0, !11, i64 8, !11, i64 16}
!127 = !{!126, !11, i64 16}
!128 = !{!126, !11, i64 8}
!129 = !{!17, !7, i64 0}
!130 = !{!17, !11, i64 16}
!131 = !{!17, !11, i64 8}
!132 = !{i64 0, i64 8, !41, i64 8, i64 8, !48, i64 16, i64 8, !48}
!133 = !{i64 0, i64 8, !48, i64 8, i64 8, !48}
!134 = !{i64 0, i64 8, !48}
!135 = !{!6, !11, i64 30304}
!136 = !{!6, !11, i64 30256}
!137 = distinct !{!137, !59}
!138 = !{!6, !14, i64 29948}
!139 = !{!6, !13, i64 29936}
!140 = !{!16, !7, i64 0}
!141 = !{!6, !7, i64 30272}
!142 = !{!6, !11, i64 30288}
!143 = !{!6, !11, i64 30296}
!144 = !{}
!145 = !{!6, !14, i64 30312}
