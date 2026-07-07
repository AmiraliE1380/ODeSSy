; ModuleID = 'evaluation/openssl/sha256_integer_O3.ll'
source_filename = "/home/amiralie1380/michigan/pl/openssl/crypto/sha/sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@K256 = internal unnamed_addr constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @SHA224_Init(ptr noundef writeonly captures(none) initializes((0, 112)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %2, i8 0, i64 76, i1 false)
  store <4 x i32> <i32 -1056596264, i32 914150663, i32 812702999, i32 -150054599>, ptr %0, align 4, !tbaa !4
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 -4191439, i32 1750603025, i32 1694076839, i32 -1090891868>, ptr %3, align 4, !tbaa !4
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 28, ptr %4, align 4, !tbaa !8
  ret i32 1
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @SHA256_Init(ptr noundef writeonly captures(none) initializes((0, 112)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %2, i8 0, i64 76, i1 false)
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %0, align 4, !tbaa !4
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %3, align 4, !tbaa !4
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 32, ptr %4, align 4, !tbaa !8
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @ossl_sha256_192_init(ptr noundef writeonly captures(none) initializes((0, 112)) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %2, i8 0, i64 76, i1 false)
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %0, align 4, !tbaa !4
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %3, align 4, !tbaa !4
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 24, ptr %4, align 4, !tbaa !8
  ret i32 1
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @SHA224_Update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %55, label %5, !prof !10

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i32, ptr %6, align 4, !tbaa !11
  %8 = trunc i64 %2 to i32
  %9 = shl i32 %8, 3
  %10 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %7, i32 %9), !nosanitize !12
  %11 = extractvalue { i32, i1 } %10, 1, !nosanitize !12
  br i1 %11, label %12, label %13, !prof !13, !nosanitize !12

12:                                               ; preds = %5
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

13:                                               ; preds = %5
  %14 = lshr i64 %2, 29
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %17 = load i32, ptr %16, align 4, !tbaa !14
  %18 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %17, i32 %15), !nosanitize !12
  %19 = extractvalue { i32, i1 } %18, 1, !nosanitize !12
  br i1 %19, label %20, label %21, !prof !13, !nosanitize !12

20:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

21:                                               ; preds = %13
  %22 = extractvalue { i32, i1 } %10, 0, !nosanitize !12
  %23 = extractvalue { i32, i1 } %18, 0, !nosanitize !12
  store i32 %23, ptr %16, align 4, !tbaa !14
  store i32 %22, ptr %6, align 4, !tbaa !11
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %25 = load i32, ptr %24, align 4, !tbaa !15
  %26 = zext i32 %25 to i64
  %27 = icmp eq i32 %25, 0
  br i1 %27, label %49, label %28, !prof !10

28:                                               ; preds = %21
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %30 = icmp ugt i64 %2, 63
  %31 = add nuw nsw i64 %2, %26
  %32 = icmp ugt i64 %31, 63
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 64, i64 %26), !nosanitize !12
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !12
  br i1 %36, label %37, label %38, !prof !13, !nosanitize !12

37:                                               ; preds = %34
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !12
  unreachable, !nosanitize !12

38:                                               ; preds = %34
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !12
  %40 = getelementptr inbounds nuw i8, ptr %29, i64 %26
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %40, ptr align 1 %1, i64 %39, i1 false)
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef nonnull %29, i64 noundef 1)
  unreachable

41:                                               ; preds = %28
  %42 = getelementptr inbounds nuw i8, ptr %29, i64 %26
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %42, ptr align 1 %1, i64 %2, i1 false)
  %43 = load i32, ptr %24, align 4, !tbaa !15
  %44 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %43, i32 %8), !nosanitize !12
  %45 = extractvalue { i32, i1 } %44, 1, !nosanitize !12
  br i1 %45, label %46, label %47, !prof !13, !nosanitize !12

46:                                               ; preds = %41
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

47:                                               ; preds = %41
  %48 = extractvalue { i32, i1 } %44, 0, !nosanitize !12
  store i32 %48, ptr %24, align 4, !tbaa !15
  br label %55

49:                                               ; preds = %21
  %50 = lshr i64 %2, 6
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %50)
  unreachable

53:                                               ; preds = %49
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %8, ptr %24, align 4, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %54, ptr align 1 %1, i64 %2, i1 false)
  br label %55

55:                                               ; preds = %53, %47, %3
  ret i32 1
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @SHA256_Update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %55, label %5, !prof !10

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i32, ptr %6, align 4, !tbaa !11
  %8 = trunc i64 %2 to i32
  %9 = shl i32 %8, 3
  %10 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %7, i32 %9), !nosanitize !12
  %11 = extractvalue { i32, i1 } %10, 1, !nosanitize !12
  br i1 %11, label %12, label %13, !prof !13, !nosanitize !12

12:                                               ; preds = %5
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

13:                                               ; preds = %5
  %14 = lshr i64 %2, 29
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %17 = load i32, ptr %16, align 4, !tbaa !14
  %18 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %17, i32 %15), !nosanitize !12
  %19 = extractvalue { i32, i1 } %18, 1, !nosanitize !12
  br i1 %19, label %20, label %21, !prof !13, !nosanitize !12

20:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

21:                                               ; preds = %13
  %22 = extractvalue { i32, i1 } %10, 0, !nosanitize !12
  %23 = extractvalue { i32, i1 } %18, 0, !nosanitize !12
  store i32 %23, ptr %16, align 4, !tbaa !14
  store i32 %22, ptr %6, align 4, !tbaa !11
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %25 = load i32, ptr %24, align 4, !tbaa !15
  %26 = zext i32 %25 to i64
  %27 = icmp eq i32 %25, 0
  br i1 %27, label %49, label %28, !prof !10

28:                                               ; preds = %21
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %30 = icmp ugt i64 %2, 63
  %31 = add nuw nsw i64 %2, %26
  %32 = icmp ugt i64 %31, 63
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 64, i64 %26), !nosanitize !12
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !12
  br i1 %36, label %37, label %38, !prof !13, !nosanitize !12

37:                                               ; preds = %34
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !12
  unreachable, !nosanitize !12

38:                                               ; preds = %34
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !12
  %40 = getelementptr inbounds nuw i8, ptr %29, i64 %26
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %40, ptr align 1 %1, i64 %39, i1 false)
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef nonnull %29, i64 noundef 1)
  unreachable

41:                                               ; preds = %28
  %42 = getelementptr inbounds nuw i8, ptr %29, i64 %26
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %42, ptr align 1 %1, i64 %2, i1 false)
  %43 = load i32, ptr %24, align 4, !tbaa !15
  %44 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %43, i32 %8), !nosanitize !12
  %45 = extractvalue { i32, i1 } %44, 1, !nosanitize !12
  br i1 %45, label %46, label %47, !prof !13, !nosanitize !12

46:                                               ; preds = %41
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

47:                                               ; preds = %41
  %48 = extractvalue { i32, i1 } %44, 0, !nosanitize !12
  store i32 %48, ptr %24, align 4, !tbaa !15
  br label %55

49:                                               ; preds = %21
  %50 = lshr i64 %2, 6
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %50)
  unreachable

53:                                               ; preds = %49
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %8, ptr %24, align 4, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %54, ptr align 1 %1, i64 %2, i1 false)
  br label %55

55:                                               ; preds = %53, %47, %3
  ret i32 1
}

; Function Attrs: noreturn nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local noundef range(i32 0, 2) i32 @SHA224_Final(ptr noundef readnone captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 104
  %5 = load i32, ptr %4, align 4, !tbaa !15
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 %6
  store i8 -128, ptr %7, align 1, !tbaa !16
  %8 = add nuw nsw i64 %6, 1
  %9 = icmp ugt i32 %5, 55
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 64, i64 %8), !nosanitize !12
  %12 = extractvalue { i64, i1 } %11, 1, !nosanitize !12
  br i1 %12, label %13, label %14, !prof !13, !nosanitize !12

13:                                               ; preds = %10
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !12
  unreachable, !nosanitize !12

14:                                               ; preds = %10
  %15 = extractvalue { i64, i1 } %11, 0, !nosanitize !12
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 %8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %16, i8 0, i64 %15, i1 false)
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef 1)
  unreachable

17:                                               ; preds = %2
  %18 = sub nuw nsw i64 55, %6
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 %8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %19, i8 0, i64 %18, i1 false)
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %22 = load i32, ptr %21, align 4, !tbaa !14
  %23 = lshr i32 %22, 24
  %24 = trunc nuw i32 %23 to i8
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 97
  store i8 %24, ptr %20, align 4, !tbaa !16
  %26 = lshr i32 %22, 16
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 98
  store i8 %27, ptr %25, align 1, !tbaa !16
  %29 = lshr i32 %22, 8
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 99
  store i8 %30, ptr %28, align 2, !tbaa !16
  %32 = trunc i32 %22 to i8
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i8 %32, ptr %31, align 1, !tbaa !16
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %35 = load i32, ptr %34, align 4, !tbaa !11
  %36 = lshr i32 %35, 24
  %37 = trunc nuw i32 %36 to i8
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 101
  store i8 %37, ptr %33, align 4, !tbaa !16
  %39 = lshr i32 %35, 16
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 102
  store i8 %40, ptr %38, align 1, !tbaa !16
  %42 = lshr i32 %35, 8
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 103
  store i8 %43, ptr %41, align 2, !tbaa !16
  %45 = trunc i32 %35 to i8
  store i8 %45, ptr %44, align 1, !tbaa !16
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef 1)
  unreachable
}

; Function Attrs: noreturn nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local noundef range(i32 0, 2) i32 @SHA256_Final(ptr noundef readnone captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 104
  %5 = load i32, ptr %4, align 4, !tbaa !15
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 %6
  store i8 -128, ptr %7, align 1, !tbaa !16
  %8 = add nuw nsw i64 %6, 1
  %9 = icmp ugt i32 %5, 55
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 64, i64 %8), !nosanitize !12
  %12 = extractvalue { i64, i1 } %11, 1, !nosanitize !12
  br i1 %12, label %13, label %14, !prof !13, !nosanitize !12

13:                                               ; preds = %10
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !12
  unreachable, !nosanitize !12

14:                                               ; preds = %10
  %15 = extractvalue { i64, i1 } %11, 0, !nosanitize !12
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 %8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %16, i8 0, i64 %15, i1 false)
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef 1)
  unreachable

17:                                               ; preds = %2
  %18 = sub nuw nsw i64 55, %6
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 %8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %19, i8 0, i64 %18, i1 false)
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %22 = load i32, ptr %21, align 4, !tbaa !14
  %23 = lshr i32 %22, 24
  %24 = trunc nuw i32 %23 to i8
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 97
  store i8 %24, ptr %20, align 4, !tbaa !16
  %26 = lshr i32 %22, 16
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 98
  store i8 %27, ptr %25, align 1, !tbaa !16
  %29 = lshr i32 %22, 8
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 99
  store i8 %30, ptr %28, align 2, !tbaa !16
  %32 = trunc i32 %22 to i8
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i8 %32, ptr %31, align 1, !tbaa !16
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %35 = load i32, ptr %34, align 4, !tbaa !11
  %36 = lshr i32 %35, 24
  %37 = trunc nuw i32 %36 to i8
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 101
  store i8 %37, ptr %33, align 4, !tbaa !16
  %39 = lshr i32 %35, 16
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 102
  store i8 %40, ptr %38, align 1, !tbaa !16
  %42 = lshr i32 %35, 8
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 103
  store i8 %43, ptr %41, align 2, !tbaa !16
  %45 = trunc i32 %35 to i8
  store i8 %45, ptr %44, align 1, !tbaa !16
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef 1)
  unreachable
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @SHA256_Update_thunk(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %55, label %5, !prof !10

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i32, ptr %6, align 4, !tbaa !11
  %8 = trunc i64 %2 to i32
  %9 = shl i32 %8, 3
  %10 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %7, i32 %9), !nosanitize !12
  %11 = extractvalue { i32, i1 } %10, 1, !nosanitize !12
  br i1 %11, label %12, label %13, !prof !13, !nosanitize !12

12:                                               ; preds = %5
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

13:                                               ; preds = %5
  %14 = lshr i64 %2, 29
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %17 = load i32, ptr %16, align 4, !tbaa !14
  %18 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %17, i32 %15), !nosanitize !12
  %19 = extractvalue { i32, i1 } %18, 1, !nosanitize !12
  br i1 %19, label %20, label %21, !prof !13, !nosanitize !12

20:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

21:                                               ; preds = %13
  %22 = extractvalue { i32, i1 } %10, 0, !nosanitize !12
  %23 = extractvalue { i32, i1 } %18, 0, !nosanitize !12
  store i32 %23, ptr %16, align 4, !tbaa !14
  store i32 %22, ptr %6, align 4, !tbaa !11
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %25 = load i32, ptr %24, align 4, !tbaa !15
  %26 = zext i32 %25 to i64
  %27 = icmp eq i32 %25, 0
  br i1 %27, label %49, label %28, !prof !10

28:                                               ; preds = %21
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %30 = icmp ugt i64 %2, 63
  %31 = add nuw nsw i64 %2, %26
  %32 = icmp ugt i64 %31, 63
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 64, i64 %26), !nosanitize !12
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !12
  br i1 %36, label %37, label %38, !prof !13, !nosanitize !12

37:                                               ; preds = %34
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !12
  unreachable, !nosanitize !12

38:                                               ; preds = %34
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !12
  %40 = getelementptr inbounds nuw i8, ptr %29, i64 %26
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %40, ptr align 1 %1, i64 %39, i1 false)
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef nonnull %29, i64 noundef 1)
  unreachable

41:                                               ; preds = %28
  %42 = getelementptr inbounds nuw i8, ptr %29, i64 %26
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %42, ptr align 1 %1, i64 %2, i1 false)
  %43 = load i32, ptr %24, align 4, !tbaa !15
  %44 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %43, i32 %8), !nosanitize !12
  %45 = extractvalue { i32, i1 } %44, 1, !nosanitize !12
  br i1 %45, label %46, label %47, !prof !13, !nosanitize !12

46:                                               ; preds = %41
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

47:                                               ; preds = %41
  %48 = extractvalue { i32, i1 } %44, 0, !nosanitize !12
  store i32 %48, ptr %24, align 4, !tbaa !15
  br label %55

49:                                               ; preds = %21
  %50 = lshr i64 %2, 6
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %50)
  unreachable

53:                                               ; preds = %49
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %8, ptr %24, align 4, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %54, ptr align 1 %1, i64 %2, i1 false)
  br label %55

55:                                               ; preds = %53, %47, %3
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #5

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: noreturn nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @sha256_block_data_order(ptr noundef captures(none) %0, ptr noundef readonly %1, i64 noundef range(i64 1, 288230376151711744) %2) unnamed_addr #3 {
  %4 = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %5 = add nsw i64 %2, -1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 12
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 20
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 28
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %21 = getelementptr inbounds nuw i8, ptr %4, i64 36
  %22 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %23 = getelementptr inbounds nuw i8, ptr %4, i64 44
  %24 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 52
  %26 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %27 = getelementptr inbounds nuw i8, ptr %4, i64 60
  %28 = load i32, ptr %0, align 4, !tbaa !4
  %29 = load i32, ptr %6, align 4, !tbaa !4
  %30 = load i32, ptr %7, align 4, !tbaa !4
  %31 = load i32, ptr %8, align 4, !tbaa !4
  %32 = load i32, ptr %9, align 4, !tbaa !4
  %33 = load i32, ptr %10, align 4, !tbaa !4
  %34 = load i32, ptr %11, align 4, !tbaa !4
  %35 = load i32, ptr %12, align 4, !tbaa !4
  br label %37

36:                                               ; preds = %1938
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !12
  unreachable, !nosanitize !12

37:                                               ; preds = %1938, %3
  %38 = phi i32 [ %35, %3 ], [ %1939, %1938 ]
  %39 = phi i32 [ %34, %3 ], [ %1934, %1938 ]
  %40 = phi i32 [ %33, %3 ], [ %1929, %1938 ]
  %41 = phi i32 [ %32, %3 ], [ %1924, %1938 ]
  %42 = phi i32 [ %31, %3 ], [ %1919, %1938 ]
  %43 = phi i32 [ %30, %3 ], [ %1914, %1938 ]
  %44 = phi i32 [ %29, %3 ], [ %1909, %1938 ]
  %45 = phi i32 [ %28, %3 ], [ %1904, %1938 ]
  %46 = phi i64 [ %5, %3 ], [ %1941, %1938 ]
  %47 = phi ptr [ %1, %3 ], [ %1128, %1938 ]
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 1
  %49 = load i8, ptr %47, align 1, !tbaa !16
  %50 = zext i8 %49 to i32
  %51 = shl nuw i32 %50, 24
  %52 = getelementptr inbounds nuw i8, ptr %47, i64 2
  %53 = load i8, ptr %48, align 1, !tbaa !16
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 16
  %56 = or disjoint i32 %55, %51
  %57 = getelementptr inbounds nuw i8, ptr %47, i64 3
  %58 = load i8, ptr %52, align 1, !tbaa !16
  %59 = zext i8 %58 to i32
  %60 = shl nuw nsw i32 %59, 8
  %61 = or disjoint i32 %56, %60
  %62 = getelementptr inbounds nuw i8, ptr %47, i64 4
  %63 = load i8, ptr %57, align 1, !tbaa !16
  %64 = zext i8 %63 to i32
  %65 = or disjoint i32 %61, %64
  store i32 %65, ptr %4, align 16, !tbaa !4
  %66 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 26)
  %67 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 21)
  %68 = xor i32 %66, %67
  %69 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 7)
  %70 = xor i32 %68, %69
  %71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %38, i32 %70), !nosanitize !12
  %72 = extractvalue { i32, i1 } %71, 1, !nosanitize !12
  br i1 %72, label %73, label %74, !prof !13, !nosanitize !12

73:                                               ; preds = %37
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

74:                                               ; preds = %37
  %75 = extractvalue { i32, i1 } %71, 0, !nosanitize !12
  %76 = and i32 %40, %41
  %77 = xor i32 %41, -1
  %78 = and i32 %39, %77
  %79 = or i32 %78, %76
  %80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %75, i32 %79), !nosanitize !12
  %81 = extractvalue { i32, i1 } %80, 1, !nosanitize !12
  br i1 %81, label %82, label %83, !prof !13, !nosanitize !12

82:                                               ; preds = %74
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

83:                                               ; preds = %74
  %84 = extractvalue { i32, i1 } %80, 0, !nosanitize !12
  %85 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %84, i32 1116352408), !nosanitize !12
  %86 = extractvalue { i32, i1 } %85, 1, !nosanitize !12
  br i1 %86, label %87, label %88, !prof !13, !nosanitize !12

87:                                               ; preds = %83
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

88:                                               ; preds = %83
  %89 = extractvalue { i32, i1 } %85, 0, !nosanitize !12
  %90 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %65, i32 %89), !nosanitize !12
  %91 = extractvalue { i32, i1 } %90, 0, !nosanitize !12
  %92 = extractvalue { i32, i1 } %90, 1, !nosanitize !12
  br i1 %92, label %93, label %94, !prof !13, !nosanitize !12

93:                                               ; preds = %88
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

94:                                               ; preds = %88
  %95 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 30)
  %96 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 19)
  %97 = xor i32 %95, %96
  %98 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 10)
  %99 = xor i32 %97, %98
  %100 = and i32 %44, %45
  %101 = xor i32 %43, %44
  %102 = and i32 %101, %45
  %103 = and i32 %43, %44
  %104 = xor i32 %102, %103
  %105 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %99, i32 %104), !nosanitize !12
  %106 = extractvalue { i32, i1 } %105, 0, !nosanitize !12
  %107 = extractvalue { i32, i1 } %105, 1, !nosanitize !12
  br i1 %107, label %108, label %109, !prof !13, !nosanitize !12

108:                                              ; preds = %94
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

109:                                              ; preds = %94
  %110 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %42, i32 %91), !nosanitize !12
  %111 = extractvalue { i32, i1 } %110, 0, !nosanitize !12
  %112 = extractvalue { i32, i1 } %110, 1, !nosanitize !12
  br i1 %112, label %113, label %114, !prof !13, !nosanitize !12

113:                                              ; preds = %109
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

114:                                              ; preds = %109
  %115 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %106, i32 %91), !nosanitize !12
  %116 = extractvalue { i32, i1 } %115, 0, !nosanitize !12
  %117 = extractvalue { i32, i1 } %115, 1, !nosanitize !12
  br i1 %117, label %118, label %119, !prof !13, !nosanitize !12

118:                                              ; preds = %114
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

119:                                              ; preds = %114
  %120 = getelementptr inbounds nuw i8, ptr %47, i64 5
  %121 = load i8, ptr %62, align 1, !tbaa !16
  %122 = zext i8 %121 to i32
  %123 = shl nuw i32 %122, 24
  %124 = getelementptr inbounds nuw i8, ptr %47, i64 6
  %125 = load i8, ptr %120, align 1, !tbaa !16
  %126 = zext i8 %125 to i32
  %127 = shl nuw nsw i32 %126, 16
  %128 = or disjoint i32 %127, %123
  %129 = getelementptr inbounds nuw i8, ptr %47, i64 7
  %130 = load i8, ptr %124, align 1, !tbaa !16
  %131 = zext i8 %130 to i32
  %132 = shl nuw nsw i32 %131, 8
  %133 = or disjoint i32 %128, %132
  %134 = getelementptr inbounds nuw i8, ptr %47, i64 8
  %135 = load i8, ptr %129, align 1, !tbaa !16
  %136 = zext i8 %135 to i32
  %137 = or disjoint i32 %133, %136
  store i32 %137, ptr %13, align 4, !tbaa !4
  %138 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 26)
  %139 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 21)
  %140 = xor i32 %138, %139
  %141 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 7)
  %142 = xor i32 %140, %141
  %143 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %39, i32 %142), !nosanitize !12
  %144 = extractvalue { i32, i1 } %143, 1, !nosanitize !12
  br i1 %144, label %145, label %146, !prof !13, !nosanitize !12

145:                                              ; preds = %119
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

146:                                              ; preds = %119
  %147 = extractvalue { i32, i1 } %143, 0, !nosanitize !12
  %148 = and i32 %111, %41
  %149 = xor i32 %111, -1
  %150 = and i32 %40, %149
  %151 = or i32 %148, %150
  %152 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %147, i32 %151), !nosanitize !12
  %153 = extractvalue { i32, i1 } %152, 1, !nosanitize !12
  br i1 %153, label %154, label %155, !prof !13, !nosanitize !12

154:                                              ; preds = %146
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

155:                                              ; preds = %146
  %156 = extractvalue { i32, i1 } %152, 0, !nosanitize !12
  %157 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %156, i32 1899447441), !nosanitize !12
  %158 = extractvalue { i32, i1 } %157, 1, !nosanitize !12
  br i1 %158, label %159, label %160, !prof !13, !nosanitize !12

159:                                              ; preds = %155
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

160:                                              ; preds = %155
  %161 = extractvalue { i32, i1 } %157, 0, !nosanitize !12
  %162 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %137, i32 %161), !nosanitize !12
  %163 = extractvalue { i32, i1 } %162, 0, !nosanitize !12
  %164 = extractvalue { i32, i1 } %162, 1, !nosanitize !12
  br i1 %164, label %165, label %166, !prof !13, !nosanitize !12

165:                                              ; preds = %160
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

166:                                              ; preds = %160
  %167 = tail call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 30)
  %168 = tail call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 19)
  %169 = xor i32 %167, %168
  %170 = tail call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 10)
  %171 = xor i32 %169, %170
  %172 = and i32 %116, %45
  %173 = xor i32 %44, %45
  %174 = and i32 %116, %173
  %175 = xor i32 %174, %100
  %176 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %171, i32 %175), !nosanitize !12
  %177 = extractvalue { i32, i1 } %176, 0, !nosanitize !12
  %178 = extractvalue { i32, i1 } %176, 1, !nosanitize !12
  br i1 %178, label %179, label %180, !prof !13, !nosanitize !12

179:                                              ; preds = %166
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

180:                                              ; preds = %166
  %181 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %43, i32 %163), !nosanitize !12
  %182 = extractvalue { i32, i1 } %181, 0, !nosanitize !12
  %183 = extractvalue { i32, i1 } %181, 1, !nosanitize !12
  br i1 %183, label %184, label %185, !prof !13, !nosanitize !12

184:                                              ; preds = %180
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

185:                                              ; preds = %180
  %186 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %177, i32 %163), !nosanitize !12
  %187 = extractvalue { i32, i1 } %186, 0, !nosanitize !12
  %188 = extractvalue { i32, i1 } %186, 1, !nosanitize !12
  br i1 %188, label %189, label %190, !prof !13, !nosanitize !12

189:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

190:                                              ; preds = %185
  %191 = getelementptr inbounds nuw i8, ptr %47, i64 9
  %192 = load i8, ptr %134, align 1, !tbaa !16
  %193 = zext i8 %192 to i32
  %194 = shl nuw i32 %193, 24
  %195 = getelementptr inbounds nuw i8, ptr %47, i64 10
  %196 = load i8, ptr %191, align 1, !tbaa !16
  %197 = zext i8 %196 to i32
  %198 = shl nuw nsw i32 %197, 16
  %199 = or disjoint i32 %198, %194
  %200 = getelementptr inbounds nuw i8, ptr %47, i64 11
  %201 = load i8, ptr %195, align 1, !tbaa !16
  %202 = zext i8 %201 to i32
  %203 = shl nuw nsw i32 %202, 8
  %204 = or disjoint i32 %199, %203
  %205 = getelementptr inbounds nuw i8, ptr %47, i64 12
  %206 = load i8, ptr %200, align 1, !tbaa !16
  %207 = zext i8 %206 to i32
  %208 = or disjoint i32 %204, %207
  store i32 %208, ptr %14, align 8, !tbaa !4
  %209 = tail call i32 @llvm.fshl.i32(i32 %182, i32 %182, i32 26)
  %210 = tail call i32 @llvm.fshl.i32(i32 %182, i32 %182, i32 21)
  %211 = xor i32 %209, %210
  %212 = tail call i32 @llvm.fshl.i32(i32 %182, i32 %182, i32 7)
  %213 = xor i32 %211, %212
  %214 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %40, i32 %213), !nosanitize !12
  %215 = extractvalue { i32, i1 } %214, 1, !nosanitize !12
  br i1 %215, label %216, label %217, !prof !13, !nosanitize !12

216:                                              ; preds = %190
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

217:                                              ; preds = %190
  %218 = extractvalue { i32, i1 } %214, 0, !nosanitize !12
  %219 = and i32 %182, %111
  %220 = xor i32 %182, -1
  %221 = and i32 %41, %220
  %222 = or i32 %219, %221
  %223 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %218, i32 %222), !nosanitize !12
  %224 = extractvalue { i32, i1 } %223, 1, !nosanitize !12
  br i1 %224, label %225, label %226, !prof !13, !nosanitize !12

225:                                              ; preds = %217
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

226:                                              ; preds = %217
  %227 = extractvalue { i32, i1 } %223, 0, !nosanitize !12
  %228 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %227, i32 -1245643825), !nosanitize !12
  %229 = extractvalue { i32, i1 } %228, 1, !nosanitize !12
  br i1 %229, label %230, label %231, !prof !13, !nosanitize !12

230:                                              ; preds = %226
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

231:                                              ; preds = %226
  %232 = extractvalue { i32, i1 } %228, 0, !nosanitize !12
  %233 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %208, i32 %232), !nosanitize !12
  %234 = extractvalue { i32, i1 } %233, 0, !nosanitize !12
  %235 = extractvalue { i32, i1 } %233, 1, !nosanitize !12
  br i1 %235, label %236, label %237, !prof !13, !nosanitize !12

236:                                              ; preds = %231
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

237:                                              ; preds = %231
  %238 = tail call i32 @llvm.fshl.i32(i32 %187, i32 %187, i32 30)
  %239 = tail call i32 @llvm.fshl.i32(i32 %187, i32 %187, i32 19)
  %240 = xor i32 %238, %239
  %241 = tail call i32 @llvm.fshl.i32(i32 %187, i32 %187, i32 10)
  %242 = xor i32 %240, %241
  %243 = and i32 %187, %116
  %244 = xor i32 %116, %45
  %245 = and i32 %187, %244
  %246 = xor i32 %245, %172
  %247 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %242, i32 %246), !nosanitize !12
  %248 = extractvalue { i32, i1 } %247, 0, !nosanitize !12
  %249 = extractvalue { i32, i1 } %247, 1, !nosanitize !12
  br i1 %249, label %250, label %251, !prof !13, !nosanitize !12

250:                                              ; preds = %237
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

251:                                              ; preds = %237
  %252 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %44, i32 %234), !nosanitize !12
  %253 = extractvalue { i32, i1 } %252, 0, !nosanitize !12
  %254 = extractvalue { i32, i1 } %252, 1, !nosanitize !12
  br i1 %254, label %255, label %256, !prof !13, !nosanitize !12

255:                                              ; preds = %251
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

256:                                              ; preds = %251
  %257 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %248, i32 %234), !nosanitize !12
  %258 = extractvalue { i32, i1 } %257, 0, !nosanitize !12
  %259 = extractvalue { i32, i1 } %257, 1, !nosanitize !12
  br i1 %259, label %260, label %261, !prof !13, !nosanitize !12

260:                                              ; preds = %256
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

261:                                              ; preds = %256
  %262 = getelementptr inbounds nuw i8, ptr %47, i64 13
  %263 = load i8, ptr %205, align 1, !tbaa !16
  %264 = zext i8 %263 to i32
  %265 = shl nuw i32 %264, 24
  %266 = getelementptr inbounds nuw i8, ptr %47, i64 14
  %267 = load i8, ptr %262, align 1, !tbaa !16
  %268 = zext i8 %267 to i32
  %269 = shl nuw nsw i32 %268, 16
  %270 = or disjoint i32 %269, %265
  %271 = getelementptr inbounds nuw i8, ptr %47, i64 15
  %272 = load i8, ptr %266, align 1, !tbaa !16
  %273 = zext i8 %272 to i32
  %274 = shl nuw nsw i32 %273, 8
  %275 = or disjoint i32 %270, %274
  %276 = getelementptr inbounds nuw i8, ptr %47, i64 16
  %277 = load i8, ptr %271, align 1, !tbaa !16
  %278 = zext i8 %277 to i32
  %279 = or disjoint i32 %275, %278
  store i32 %279, ptr %15, align 4, !tbaa !4
  %280 = tail call i32 @llvm.fshl.i32(i32 %253, i32 %253, i32 26)
  %281 = tail call i32 @llvm.fshl.i32(i32 %253, i32 %253, i32 21)
  %282 = xor i32 %280, %281
  %283 = tail call i32 @llvm.fshl.i32(i32 %253, i32 %253, i32 7)
  %284 = xor i32 %282, %283
  %285 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %41, i32 %284), !nosanitize !12
  %286 = extractvalue { i32, i1 } %285, 1, !nosanitize !12
  br i1 %286, label %287, label %288, !prof !13, !nosanitize !12

287:                                              ; preds = %261
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

288:                                              ; preds = %261
  %289 = extractvalue { i32, i1 } %285, 0, !nosanitize !12
  %290 = and i32 %253, %182
  %291 = xor i32 %253, -1
  %292 = and i32 %111, %291
  %293 = or i32 %290, %292
  %294 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %289, i32 %293), !nosanitize !12
  %295 = extractvalue { i32, i1 } %294, 1, !nosanitize !12
  br i1 %295, label %296, label %297, !prof !13, !nosanitize !12

296:                                              ; preds = %288
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

297:                                              ; preds = %288
  %298 = extractvalue { i32, i1 } %294, 0, !nosanitize !12
  %299 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %298, i32 -373957723), !nosanitize !12
  %300 = extractvalue { i32, i1 } %299, 1, !nosanitize !12
  br i1 %300, label %301, label %302, !prof !13, !nosanitize !12

301:                                              ; preds = %297
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

302:                                              ; preds = %297
  %303 = extractvalue { i32, i1 } %299, 0, !nosanitize !12
  %304 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %279, i32 %303), !nosanitize !12
  %305 = extractvalue { i32, i1 } %304, 0, !nosanitize !12
  %306 = extractvalue { i32, i1 } %304, 1, !nosanitize !12
  br i1 %306, label %307, label %308, !prof !13, !nosanitize !12

307:                                              ; preds = %302
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

308:                                              ; preds = %302
  %309 = tail call i32 @llvm.fshl.i32(i32 %258, i32 %258, i32 30)
  %310 = tail call i32 @llvm.fshl.i32(i32 %258, i32 %258, i32 19)
  %311 = xor i32 %309, %310
  %312 = tail call i32 @llvm.fshl.i32(i32 %258, i32 %258, i32 10)
  %313 = xor i32 %311, %312
  %314 = and i32 %258, %187
  %315 = xor i32 %187, %116
  %316 = and i32 %258, %315
  %317 = xor i32 %316, %243
  %318 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %313, i32 %317), !nosanitize !12
  %319 = extractvalue { i32, i1 } %318, 0, !nosanitize !12
  %320 = extractvalue { i32, i1 } %318, 1, !nosanitize !12
  br i1 %320, label %321, label %322, !prof !13, !nosanitize !12

321:                                              ; preds = %308
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

322:                                              ; preds = %308
  %323 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %45, i32 %305), !nosanitize !12
  %324 = extractvalue { i32, i1 } %323, 0, !nosanitize !12
  %325 = extractvalue { i32, i1 } %323, 1, !nosanitize !12
  br i1 %325, label %326, label %327, !prof !13, !nosanitize !12

326:                                              ; preds = %322
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

327:                                              ; preds = %322
  %328 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %319, i32 %305), !nosanitize !12
  %329 = extractvalue { i32, i1 } %328, 0, !nosanitize !12
  %330 = extractvalue { i32, i1 } %328, 1, !nosanitize !12
  br i1 %330, label %331, label %332, !prof !13, !nosanitize !12

331:                                              ; preds = %327
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

332:                                              ; preds = %327
  %333 = getelementptr inbounds nuw i8, ptr %47, i64 17
  %334 = load i8, ptr %276, align 1, !tbaa !16
  %335 = zext i8 %334 to i32
  %336 = shl nuw i32 %335, 24
  %337 = getelementptr inbounds nuw i8, ptr %47, i64 18
  %338 = load i8, ptr %333, align 1, !tbaa !16
  %339 = zext i8 %338 to i32
  %340 = shl nuw nsw i32 %339, 16
  %341 = or disjoint i32 %340, %336
  %342 = getelementptr inbounds nuw i8, ptr %47, i64 19
  %343 = load i8, ptr %337, align 1, !tbaa !16
  %344 = zext i8 %343 to i32
  %345 = shl nuw nsw i32 %344, 8
  %346 = or disjoint i32 %341, %345
  %347 = getelementptr inbounds nuw i8, ptr %47, i64 20
  %348 = load i8, ptr %342, align 1, !tbaa !16
  %349 = zext i8 %348 to i32
  %350 = or disjoint i32 %346, %349
  store i32 %350, ptr %16, align 16, !tbaa !4
  %351 = tail call i32 @llvm.fshl.i32(i32 %324, i32 %324, i32 26)
  %352 = tail call i32 @llvm.fshl.i32(i32 %324, i32 %324, i32 21)
  %353 = xor i32 %351, %352
  %354 = tail call i32 @llvm.fshl.i32(i32 %324, i32 %324, i32 7)
  %355 = xor i32 %353, %354
  %356 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %111, i32 %355), !nosanitize !12
  %357 = extractvalue { i32, i1 } %356, 1, !nosanitize !12
  br i1 %357, label %358, label %359, !prof !13, !nosanitize !12

358:                                              ; preds = %332
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

359:                                              ; preds = %332
  %360 = extractvalue { i32, i1 } %356, 0, !nosanitize !12
  %361 = and i32 %324, %253
  %362 = xor i32 %324, -1
  %363 = and i32 %182, %362
  %364 = or i32 %361, %363
  %365 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %360, i32 %364), !nosanitize !12
  %366 = extractvalue { i32, i1 } %365, 1, !nosanitize !12
  br i1 %366, label %367, label %368, !prof !13, !nosanitize !12

367:                                              ; preds = %359
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

368:                                              ; preds = %359
  %369 = extractvalue { i32, i1 } %365, 0, !nosanitize !12
  %370 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %369, i32 961987163), !nosanitize !12
  %371 = extractvalue { i32, i1 } %370, 1, !nosanitize !12
  br i1 %371, label %372, label %373, !prof !13, !nosanitize !12

372:                                              ; preds = %368
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

373:                                              ; preds = %368
  %374 = extractvalue { i32, i1 } %370, 0, !nosanitize !12
  %375 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %350, i32 %374), !nosanitize !12
  %376 = extractvalue { i32, i1 } %375, 0, !nosanitize !12
  %377 = extractvalue { i32, i1 } %375, 1, !nosanitize !12
  br i1 %377, label %378, label %379, !prof !13, !nosanitize !12

378:                                              ; preds = %373
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

379:                                              ; preds = %373
  %380 = tail call i32 @llvm.fshl.i32(i32 %329, i32 %329, i32 30)
  %381 = tail call i32 @llvm.fshl.i32(i32 %329, i32 %329, i32 19)
  %382 = xor i32 %380, %381
  %383 = tail call i32 @llvm.fshl.i32(i32 %329, i32 %329, i32 10)
  %384 = xor i32 %382, %383
  %385 = and i32 %329, %258
  %386 = xor i32 %258, %187
  %387 = and i32 %329, %386
  %388 = xor i32 %387, %314
  %389 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %384, i32 %388), !nosanitize !12
  %390 = extractvalue { i32, i1 } %389, 0, !nosanitize !12
  %391 = extractvalue { i32, i1 } %389, 1, !nosanitize !12
  br i1 %391, label %392, label %393, !prof !13, !nosanitize !12

392:                                              ; preds = %379
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

393:                                              ; preds = %379
  %394 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %116, i32 %376), !nosanitize !12
  %395 = extractvalue { i32, i1 } %394, 0, !nosanitize !12
  %396 = extractvalue { i32, i1 } %394, 1, !nosanitize !12
  br i1 %396, label %397, label %398, !prof !13, !nosanitize !12

397:                                              ; preds = %393
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

398:                                              ; preds = %393
  %399 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %390, i32 %376), !nosanitize !12
  %400 = extractvalue { i32, i1 } %399, 0, !nosanitize !12
  %401 = extractvalue { i32, i1 } %399, 1, !nosanitize !12
  br i1 %401, label %402, label %403, !prof !13, !nosanitize !12

402:                                              ; preds = %398
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

403:                                              ; preds = %398
  %404 = getelementptr inbounds nuw i8, ptr %47, i64 21
  %405 = load i8, ptr %347, align 1, !tbaa !16
  %406 = zext i8 %405 to i32
  %407 = shl nuw i32 %406, 24
  %408 = getelementptr inbounds nuw i8, ptr %47, i64 22
  %409 = load i8, ptr %404, align 1, !tbaa !16
  %410 = zext i8 %409 to i32
  %411 = shl nuw nsw i32 %410, 16
  %412 = or disjoint i32 %411, %407
  %413 = getelementptr inbounds nuw i8, ptr %47, i64 23
  %414 = load i8, ptr %408, align 1, !tbaa !16
  %415 = zext i8 %414 to i32
  %416 = shl nuw nsw i32 %415, 8
  %417 = or disjoint i32 %412, %416
  %418 = getelementptr inbounds nuw i8, ptr %47, i64 24
  %419 = load i8, ptr %413, align 1, !tbaa !16
  %420 = zext i8 %419 to i32
  %421 = or disjoint i32 %417, %420
  store i32 %421, ptr %17, align 4, !tbaa !4
  %422 = tail call i32 @llvm.fshl.i32(i32 %395, i32 %395, i32 26)
  %423 = tail call i32 @llvm.fshl.i32(i32 %395, i32 %395, i32 21)
  %424 = xor i32 %422, %423
  %425 = tail call i32 @llvm.fshl.i32(i32 %395, i32 %395, i32 7)
  %426 = xor i32 %424, %425
  %427 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %182, i32 %426), !nosanitize !12
  %428 = extractvalue { i32, i1 } %427, 1, !nosanitize !12
  br i1 %428, label %429, label %430, !prof !13, !nosanitize !12

429:                                              ; preds = %403
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

430:                                              ; preds = %403
  %431 = extractvalue { i32, i1 } %427, 0, !nosanitize !12
  %432 = and i32 %395, %324
  %433 = xor i32 %395, -1
  %434 = and i32 %253, %433
  %435 = or i32 %432, %434
  %436 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %431, i32 %435), !nosanitize !12
  %437 = extractvalue { i32, i1 } %436, 1, !nosanitize !12
  br i1 %437, label %438, label %439, !prof !13, !nosanitize !12

438:                                              ; preds = %430
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

439:                                              ; preds = %430
  %440 = extractvalue { i32, i1 } %436, 0, !nosanitize !12
  %441 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %440, i32 1508970993), !nosanitize !12
  %442 = extractvalue { i32, i1 } %441, 1, !nosanitize !12
  br i1 %442, label %443, label %444, !prof !13, !nosanitize !12

443:                                              ; preds = %439
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

444:                                              ; preds = %439
  %445 = extractvalue { i32, i1 } %441, 0, !nosanitize !12
  %446 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %421, i32 %445), !nosanitize !12
  %447 = extractvalue { i32, i1 } %446, 0, !nosanitize !12
  %448 = extractvalue { i32, i1 } %446, 1, !nosanitize !12
  br i1 %448, label %449, label %450, !prof !13, !nosanitize !12

449:                                              ; preds = %444
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

450:                                              ; preds = %444
  %451 = tail call i32 @llvm.fshl.i32(i32 %400, i32 %400, i32 30)
  %452 = tail call i32 @llvm.fshl.i32(i32 %400, i32 %400, i32 19)
  %453 = xor i32 %451, %452
  %454 = tail call i32 @llvm.fshl.i32(i32 %400, i32 %400, i32 10)
  %455 = xor i32 %453, %454
  %456 = and i32 %400, %329
  %457 = xor i32 %329, %258
  %458 = and i32 %400, %457
  %459 = xor i32 %458, %385
  %460 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %455, i32 %459), !nosanitize !12
  %461 = extractvalue { i32, i1 } %460, 0, !nosanitize !12
  %462 = extractvalue { i32, i1 } %460, 1, !nosanitize !12
  br i1 %462, label %463, label %464, !prof !13, !nosanitize !12

463:                                              ; preds = %450
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

464:                                              ; preds = %450
  %465 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %187, i32 %447), !nosanitize !12
  %466 = extractvalue { i32, i1 } %465, 0, !nosanitize !12
  %467 = extractvalue { i32, i1 } %465, 1, !nosanitize !12
  br i1 %467, label %468, label %469, !prof !13, !nosanitize !12

468:                                              ; preds = %464
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

469:                                              ; preds = %464
  %470 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %461, i32 %447), !nosanitize !12
  %471 = extractvalue { i32, i1 } %470, 0, !nosanitize !12
  %472 = extractvalue { i32, i1 } %470, 1, !nosanitize !12
  br i1 %472, label %473, label %474, !prof !13, !nosanitize !12

473:                                              ; preds = %469
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

474:                                              ; preds = %469
  %475 = getelementptr inbounds nuw i8, ptr %47, i64 25
  %476 = load i8, ptr %418, align 1, !tbaa !16
  %477 = zext i8 %476 to i32
  %478 = shl nuw i32 %477, 24
  %479 = getelementptr inbounds nuw i8, ptr %47, i64 26
  %480 = load i8, ptr %475, align 1, !tbaa !16
  %481 = zext i8 %480 to i32
  %482 = shl nuw nsw i32 %481, 16
  %483 = or disjoint i32 %482, %478
  %484 = getelementptr inbounds nuw i8, ptr %47, i64 27
  %485 = load i8, ptr %479, align 1, !tbaa !16
  %486 = zext i8 %485 to i32
  %487 = shl nuw nsw i32 %486, 8
  %488 = or disjoint i32 %483, %487
  %489 = getelementptr inbounds nuw i8, ptr %47, i64 28
  %490 = load i8, ptr %484, align 1, !tbaa !16
  %491 = zext i8 %490 to i32
  %492 = or disjoint i32 %488, %491
  store i32 %492, ptr %18, align 8, !tbaa !4
  %493 = tail call i32 @llvm.fshl.i32(i32 %466, i32 %466, i32 26)
  %494 = tail call i32 @llvm.fshl.i32(i32 %466, i32 %466, i32 21)
  %495 = xor i32 %493, %494
  %496 = tail call i32 @llvm.fshl.i32(i32 %466, i32 %466, i32 7)
  %497 = xor i32 %495, %496
  %498 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %253, i32 %497), !nosanitize !12
  %499 = extractvalue { i32, i1 } %498, 1, !nosanitize !12
  br i1 %499, label %500, label %501, !prof !13, !nosanitize !12

500:                                              ; preds = %474
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

501:                                              ; preds = %474
  %502 = extractvalue { i32, i1 } %498, 0, !nosanitize !12
  %503 = and i32 %466, %395
  %504 = xor i32 %466, -1
  %505 = and i32 %324, %504
  %506 = or i32 %503, %505
  %507 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %502, i32 %506), !nosanitize !12
  %508 = extractvalue { i32, i1 } %507, 1, !nosanitize !12
  br i1 %508, label %509, label %510, !prof !13, !nosanitize !12

509:                                              ; preds = %501
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

510:                                              ; preds = %501
  %511 = extractvalue { i32, i1 } %507, 0, !nosanitize !12
  %512 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %511, i32 -1841331548), !nosanitize !12
  %513 = extractvalue { i32, i1 } %512, 1, !nosanitize !12
  br i1 %513, label %514, label %515, !prof !13, !nosanitize !12

514:                                              ; preds = %510
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

515:                                              ; preds = %510
  %516 = extractvalue { i32, i1 } %512, 0, !nosanitize !12
  %517 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %492, i32 %516), !nosanitize !12
  %518 = extractvalue { i32, i1 } %517, 0, !nosanitize !12
  %519 = extractvalue { i32, i1 } %517, 1, !nosanitize !12
  br i1 %519, label %520, label %521, !prof !13, !nosanitize !12

520:                                              ; preds = %515
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

521:                                              ; preds = %515
  %522 = tail call i32 @llvm.fshl.i32(i32 %471, i32 %471, i32 30)
  %523 = tail call i32 @llvm.fshl.i32(i32 %471, i32 %471, i32 19)
  %524 = xor i32 %522, %523
  %525 = tail call i32 @llvm.fshl.i32(i32 %471, i32 %471, i32 10)
  %526 = xor i32 %524, %525
  %527 = and i32 %471, %400
  %528 = xor i32 %400, %329
  %529 = and i32 %471, %528
  %530 = xor i32 %529, %456
  %531 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %526, i32 %530), !nosanitize !12
  %532 = extractvalue { i32, i1 } %531, 0, !nosanitize !12
  %533 = extractvalue { i32, i1 } %531, 1, !nosanitize !12
  br i1 %533, label %534, label %535, !prof !13, !nosanitize !12

534:                                              ; preds = %521
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

535:                                              ; preds = %521
  %536 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %258, i32 %518), !nosanitize !12
  %537 = extractvalue { i32, i1 } %536, 0, !nosanitize !12
  %538 = extractvalue { i32, i1 } %536, 1, !nosanitize !12
  br i1 %538, label %539, label %540, !prof !13, !nosanitize !12

539:                                              ; preds = %535
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

540:                                              ; preds = %535
  %541 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %532, i32 %518), !nosanitize !12
  %542 = extractvalue { i32, i1 } %541, 0, !nosanitize !12
  %543 = extractvalue { i32, i1 } %541, 1, !nosanitize !12
  br i1 %543, label %544, label %545, !prof !13, !nosanitize !12

544:                                              ; preds = %540
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

545:                                              ; preds = %540
  %546 = getelementptr inbounds nuw i8, ptr %47, i64 29
  %547 = load i8, ptr %489, align 1, !tbaa !16
  %548 = zext i8 %547 to i32
  %549 = shl nuw i32 %548, 24
  %550 = getelementptr inbounds nuw i8, ptr %47, i64 30
  %551 = load i8, ptr %546, align 1, !tbaa !16
  %552 = zext i8 %551 to i32
  %553 = shl nuw nsw i32 %552, 16
  %554 = or disjoint i32 %553, %549
  %555 = getelementptr inbounds nuw i8, ptr %47, i64 31
  %556 = load i8, ptr %550, align 1, !tbaa !16
  %557 = zext i8 %556 to i32
  %558 = shl nuw nsw i32 %557, 8
  %559 = or disjoint i32 %554, %558
  %560 = getelementptr inbounds nuw i8, ptr %47, i64 32
  %561 = load i8, ptr %555, align 1, !tbaa !16
  %562 = zext i8 %561 to i32
  %563 = or disjoint i32 %559, %562
  store i32 %563, ptr %19, align 4, !tbaa !4
  %564 = tail call i32 @llvm.fshl.i32(i32 %537, i32 %537, i32 26)
  %565 = tail call i32 @llvm.fshl.i32(i32 %537, i32 %537, i32 21)
  %566 = xor i32 %564, %565
  %567 = tail call i32 @llvm.fshl.i32(i32 %537, i32 %537, i32 7)
  %568 = xor i32 %566, %567
  %569 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %324, i32 %568), !nosanitize !12
  %570 = extractvalue { i32, i1 } %569, 1, !nosanitize !12
  br i1 %570, label %571, label %572, !prof !13, !nosanitize !12

571:                                              ; preds = %545
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

572:                                              ; preds = %545
  %573 = extractvalue { i32, i1 } %569, 0, !nosanitize !12
  %574 = and i32 %537, %466
  %575 = xor i32 %537, -1
  %576 = and i32 %395, %575
  %577 = or i32 %574, %576
  %578 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %573, i32 %577), !nosanitize !12
  %579 = extractvalue { i32, i1 } %578, 1, !nosanitize !12
  br i1 %579, label %580, label %581, !prof !13, !nosanitize !12

580:                                              ; preds = %572
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

581:                                              ; preds = %572
  %582 = extractvalue { i32, i1 } %578, 0, !nosanitize !12
  %583 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %582, i32 -1424204075), !nosanitize !12
  %584 = extractvalue { i32, i1 } %583, 1, !nosanitize !12
  br i1 %584, label %585, label %586, !prof !13, !nosanitize !12

585:                                              ; preds = %581
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

586:                                              ; preds = %581
  %587 = extractvalue { i32, i1 } %583, 0, !nosanitize !12
  %588 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %563, i32 %587), !nosanitize !12
  %589 = extractvalue { i32, i1 } %588, 0, !nosanitize !12
  %590 = extractvalue { i32, i1 } %588, 1, !nosanitize !12
  br i1 %590, label %591, label %592, !prof !13, !nosanitize !12

591:                                              ; preds = %586
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

592:                                              ; preds = %586
  %593 = tail call i32 @llvm.fshl.i32(i32 %542, i32 %542, i32 30)
  %594 = tail call i32 @llvm.fshl.i32(i32 %542, i32 %542, i32 19)
  %595 = xor i32 %593, %594
  %596 = tail call i32 @llvm.fshl.i32(i32 %542, i32 %542, i32 10)
  %597 = xor i32 %595, %596
  %598 = and i32 %542, %471
  %599 = xor i32 %471, %400
  %600 = and i32 %542, %599
  %601 = xor i32 %600, %527
  %602 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %597, i32 %601), !nosanitize !12
  %603 = extractvalue { i32, i1 } %602, 0, !nosanitize !12
  %604 = extractvalue { i32, i1 } %602, 1, !nosanitize !12
  br i1 %604, label %605, label %606, !prof !13, !nosanitize !12

605:                                              ; preds = %592
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

606:                                              ; preds = %592
  %607 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %329, i32 %589), !nosanitize !12
  %608 = extractvalue { i32, i1 } %607, 0, !nosanitize !12
  %609 = extractvalue { i32, i1 } %607, 1, !nosanitize !12
  br i1 %609, label %610, label %611, !prof !13, !nosanitize !12

610:                                              ; preds = %606
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

611:                                              ; preds = %606
  %612 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %603, i32 %589), !nosanitize !12
  %613 = extractvalue { i32, i1 } %612, 0, !nosanitize !12
  %614 = extractvalue { i32, i1 } %612, 1, !nosanitize !12
  br i1 %614, label %615, label %616, !prof !13, !nosanitize !12

615:                                              ; preds = %611
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

616:                                              ; preds = %611
  %617 = getelementptr inbounds nuw i8, ptr %47, i64 33
  %618 = load i8, ptr %560, align 1, !tbaa !16
  %619 = zext i8 %618 to i32
  %620 = shl nuw i32 %619, 24
  %621 = getelementptr inbounds nuw i8, ptr %47, i64 34
  %622 = load i8, ptr %617, align 1, !tbaa !16
  %623 = zext i8 %622 to i32
  %624 = shl nuw nsw i32 %623, 16
  %625 = or disjoint i32 %624, %620
  %626 = getelementptr inbounds nuw i8, ptr %47, i64 35
  %627 = load i8, ptr %621, align 1, !tbaa !16
  %628 = zext i8 %627 to i32
  %629 = shl nuw nsw i32 %628, 8
  %630 = or disjoint i32 %625, %629
  %631 = getelementptr inbounds nuw i8, ptr %47, i64 36
  %632 = load i8, ptr %626, align 1, !tbaa !16
  %633 = zext i8 %632 to i32
  %634 = or disjoint i32 %630, %633
  store i32 %634, ptr %20, align 16, !tbaa !4
  %635 = tail call i32 @llvm.fshl.i32(i32 %608, i32 %608, i32 26)
  %636 = tail call i32 @llvm.fshl.i32(i32 %608, i32 %608, i32 21)
  %637 = xor i32 %635, %636
  %638 = tail call i32 @llvm.fshl.i32(i32 %608, i32 %608, i32 7)
  %639 = xor i32 %637, %638
  %640 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %395, i32 %639), !nosanitize !12
  %641 = extractvalue { i32, i1 } %640, 1, !nosanitize !12
  br i1 %641, label %642, label %643, !prof !13, !nosanitize !12

642:                                              ; preds = %616
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

643:                                              ; preds = %616
  %644 = extractvalue { i32, i1 } %640, 0, !nosanitize !12
  %645 = and i32 %608, %537
  %646 = xor i32 %608, -1
  %647 = and i32 %466, %646
  %648 = or i32 %645, %647
  %649 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %644, i32 %648), !nosanitize !12
  %650 = extractvalue { i32, i1 } %649, 1, !nosanitize !12
  br i1 %650, label %651, label %652, !prof !13, !nosanitize !12

651:                                              ; preds = %643
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

652:                                              ; preds = %643
  %653 = extractvalue { i32, i1 } %649, 0, !nosanitize !12
  %654 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %653, i32 -670586216), !nosanitize !12
  %655 = extractvalue { i32, i1 } %654, 1, !nosanitize !12
  br i1 %655, label %656, label %657, !prof !13, !nosanitize !12

656:                                              ; preds = %652
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

657:                                              ; preds = %652
  %658 = extractvalue { i32, i1 } %654, 0, !nosanitize !12
  %659 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %634, i32 %658), !nosanitize !12
  %660 = extractvalue { i32, i1 } %659, 0, !nosanitize !12
  %661 = extractvalue { i32, i1 } %659, 1, !nosanitize !12
  br i1 %661, label %662, label %663, !prof !13, !nosanitize !12

662:                                              ; preds = %657
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

663:                                              ; preds = %657
  %664 = tail call i32 @llvm.fshl.i32(i32 %613, i32 %613, i32 30)
  %665 = tail call i32 @llvm.fshl.i32(i32 %613, i32 %613, i32 19)
  %666 = xor i32 %664, %665
  %667 = tail call i32 @llvm.fshl.i32(i32 %613, i32 %613, i32 10)
  %668 = xor i32 %666, %667
  %669 = and i32 %613, %542
  %670 = xor i32 %542, %471
  %671 = and i32 %613, %670
  %672 = xor i32 %671, %598
  %673 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %668, i32 %672), !nosanitize !12
  %674 = extractvalue { i32, i1 } %673, 0, !nosanitize !12
  %675 = extractvalue { i32, i1 } %673, 1, !nosanitize !12
  br i1 %675, label %676, label %677, !prof !13, !nosanitize !12

676:                                              ; preds = %663
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

677:                                              ; preds = %663
  %678 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %400, i32 %660), !nosanitize !12
  %679 = extractvalue { i32, i1 } %678, 0, !nosanitize !12
  %680 = extractvalue { i32, i1 } %678, 1, !nosanitize !12
  br i1 %680, label %681, label %682, !prof !13, !nosanitize !12

681:                                              ; preds = %677
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

682:                                              ; preds = %677
  %683 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %674, i32 %660), !nosanitize !12
  %684 = extractvalue { i32, i1 } %683, 0, !nosanitize !12
  %685 = extractvalue { i32, i1 } %683, 1, !nosanitize !12
  br i1 %685, label %686, label %687, !prof !13, !nosanitize !12

686:                                              ; preds = %682
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

687:                                              ; preds = %682
  %688 = getelementptr inbounds nuw i8, ptr %47, i64 37
  %689 = load i8, ptr %631, align 1, !tbaa !16
  %690 = zext i8 %689 to i32
  %691 = shl nuw i32 %690, 24
  %692 = getelementptr inbounds nuw i8, ptr %47, i64 38
  %693 = load i8, ptr %688, align 1, !tbaa !16
  %694 = zext i8 %693 to i32
  %695 = shl nuw nsw i32 %694, 16
  %696 = or disjoint i32 %695, %691
  %697 = getelementptr inbounds nuw i8, ptr %47, i64 39
  %698 = load i8, ptr %692, align 1, !tbaa !16
  %699 = zext i8 %698 to i32
  %700 = shl nuw nsw i32 %699, 8
  %701 = or disjoint i32 %696, %700
  %702 = getelementptr inbounds nuw i8, ptr %47, i64 40
  %703 = load i8, ptr %697, align 1, !tbaa !16
  %704 = zext i8 %703 to i32
  %705 = or disjoint i32 %701, %704
  store i32 %705, ptr %21, align 4, !tbaa !4
  %706 = tail call i32 @llvm.fshl.i32(i32 %679, i32 %679, i32 26)
  %707 = tail call i32 @llvm.fshl.i32(i32 %679, i32 %679, i32 21)
  %708 = xor i32 %706, %707
  %709 = tail call i32 @llvm.fshl.i32(i32 %679, i32 %679, i32 7)
  %710 = xor i32 %708, %709
  %711 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %466, i32 %710), !nosanitize !12
  %712 = extractvalue { i32, i1 } %711, 1, !nosanitize !12
  br i1 %712, label %713, label %714, !prof !13, !nosanitize !12

713:                                              ; preds = %687
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

714:                                              ; preds = %687
  %715 = extractvalue { i32, i1 } %711, 0, !nosanitize !12
  %716 = and i32 %679, %608
  %717 = xor i32 %679, -1
  %718 = and i32 %537, %717
  %719 = or i32 %716, %718
  %720 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %715, i32 %719), !nosanitize !12
  %721 = extractvalue { i32, i1 } %720, 1, !nosanitize !12
  br i1 %721, label %722, label %723, !prof !13, !nosanitize !12

722:                                              ; preds = %714
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

723:                                              ; preds = %714
  %724 = extractvalue { i32, i1 } %720, 0, !nosanitize !12
  %725 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %724, i32 310598401), !nosanitize !12
  %726 = extractvalue { i32, i1 } %725, 1, !nosanitize !12
  br i1 %726, label %727, label %728, !prof !13, !nosanitize !12

727:                                              ; preds = %723
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

728:                                              ; preds = %723
  %729 = extractvalue { i32, i1 } %725, 0, !nosanitize !12
  %730 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %705, i32 %729), !nosanitize !12
  %731 = extractvalue { i32, i1 } %730, 0, !nosanitize !12
  %732 = extractvalue { i32, i1 } %730, 1, !nosanitize !12
  br i1 %732, label %733, label %734, !prof !13, !nosanitize !12

733:                                              ; preds = %728
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

734:                                              ; preds = %728
  %735 = tail call i32 @llvm.fshl.i32(i32 %684, i32 %684, i32 30)
  %736 = tail call i32 @llvm.fshl.i32(i32 %684, i32 %684, i32 19)
  %737 = xor i32 %735, %736
  %738 = tail call i32 @llvm.fshl.i32(i32 %684, i32 %684, i32 10)
  %739 = xor i32 %737, %738
  %740 = and i32 %684, %613
  %741 = xor i32 %613, %542
  %742 = and i32 %684, %741
  %743 = xor i32 %742, %669
  %744 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %739, i32 %743), !nosanitize !12
  %745 = extractvalue { i32, i1 } %744, 0, !nosanitize !12
  %746 = extractvalue { i32, i1 } %744, 1, !nosanitize !12
  br i1 %746, label %747, label %748, !prof !13, !nosanitize !12

747:                                              ; preds = %734
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

748:                                              ; preds = %734
  %749 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %471, i32 %731), !nosanitize !12
  %750 = extractvalue { i32, i1 } %749, 0, !nosanitize !12
  %751 = extractvalue { i32, i1 } %749, 1, !nosanitize !12
  br i1 %751, label %752, label %753, !prof !13, !nosanitize !12

752:                                              ; preds = %748
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

753:                                              ; preds = %748
  %754 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %745, i32 %731), !nosanitize !12
  %755 = extractvalue { i32, i1 } %754, 0, !nosanitize !12
  %756 = extractvalue { i32, i1 } %754, 1, !nosanitize !12
  br i1 %756, label %757, label %758, !prof !13, !nosanitize !12

757:                                              ; preds = %753
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

758:                                              ; preds = %753
  %759 = getelementptr inbounds nuw i8, ptr %47, i64 41
  %760 = load i8, ptr %702, align 1, !tbaa !16
  %761 = zext i8 %760 to i32
  %762 = shl nuw i32 %761, 24
  %763 = getelementptr inbounds nuw i8, ptr %47, i64 42
  %764 = load i8, ptr %759, align 1, !tbaa !16
  %765 = zext i8 %764 to i32
  %766 = shl nuw nsw i32 %765, 16
  %767 = or disjoint i32 %766, %762
  %768 = getelementptr inbounds nuw i8, ptr %47, i64 43
  %769 = load i8, ptr %763, align 1, !tbaa !16
  %770 = zext i8 %769 to i32
  %771 = shl nuw nsw i32 %770, 8
  %772 = or disjoint i32 %767, %771
  %773 = getelementptr inbounds nuw i8, ptr %47, i64 44
  %774 = load i8, ptr %768, align 1, !tbaa !16
  %775 = zext i8 %774 to i32
  %776 = or disjoint i32 %772, %775
  store i32 %776, ptr %22, align 8, !tbaa !4
  %777 = tail call i32 @llvm.fshl.i32(i32 %750, i32 %750, i32 26)
  %778 = tail call i32 @llvm.fshl.i32(i32 %750, i32 %750, i32 21)
  %779 = xor i32 %777, %778
  %780 = tail call i32 @llvm.fshl.i32(i32 %750, i32 %750, i32 7)
  %781 = xor i32 %779, %780
  %782 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %537, i32 %781), !nosanitize !12
  %783 = extractvalue { i32, i1 } %782, 1, !nosanitize !12
  br i1 %783, label %784, label %785, !prof !13, !nosanitize !12

784:                                              ; preds = %758
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

785:                                              ; preds = %758
  %786 = extractvalue { i32, i1 } %782, 0, !nosanitize !12
  %787 = and i32 %750, %679
  %788 = xor i32 %750, -1
  %789 = and i32 %608, %788
  %790 = or i32 %787, %789
  %791 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %786, i32 %790), !nosanitize !12
  %792 = extractvalue { i32, i1 } %791, 1, !nosanitize !12
  br i1 %792, label %793, label %794, !prof !13, !nosanitize !12

793:                                              ; preds = %785
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

794:                                              ; preds = %785
  %795 = extractvalue { i32, i1 } %791, 0, !nosanitize !12
  %796 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %795, i32 607225278), !nosanitize !12
  %797 = extractvalue { i32, i1 } %796, 1, !nosanitize !12
  br i1 %797, label %798, label %799, !prof !13, !nosanitize !12

798:                                              ; preds = %794
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

799:                                              ; preds = %794
  %800 = extractvalue { i32, i1 } %796, 0, !nosanitize !12
  %801 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %776, i32 %800), !nosanitize !12
  %802 = extractvalue { i32, i1 } %801, 0, !nosanitize !12
  %803 = extractvalue { i32, i1 } %801, 1, !nosanitize !12
  br i1 %803, label %804, label %805, !prof !13, !nosanitize !12

804:                                              ; preds = %799
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

805:                                              ; preds = %799
  %806 = tail call i32 @llvm.fshl.i32(i32 %755, i32 %755, i32 30)
  %807 = tail call i32 @llvm.fshl.i32(i32 %755, i32 %755, i32 19)
  %808 = xor i32 %806, %807
  %809 = tail call i32 @llvm.fshl.i32(i32 %755, i32 %755, i32 10)
  %810 = xor i32 %808, %809
  %811 = and i32 %755, %684
  %812 = xor i32 %684, %613
  %813 = and i32 %755, %812
  %814 = xor i32 %813, %740
  %815 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %810, i32 %814), !nosanitize !12
  %816 = extractvalue { i32, i1 } %815, 0, !nosanitize !12
  %817 = extractvalue { i32, i1 } %815, 1, !nosanitize !12
  br i1 %817, label %818, label %819, !prof !13, !nosanitize !12

818:                                              ; preds = %805
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

819:                                              ; preds = %805
  %820 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %542, i32 %802), !nosanitize !12
  %821 = extractvalue { i32, i1 } %820, 0, !nosanitize !12
  %822 = extractvalue { i32, i1 } %820, 1, !nosanitize !12
  br i1 %822, label %823, label %824, !prof !13, !nosanitize !12

823:                                              ; preds = %819
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

824:                                              ; preds = %819
  %825 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %816, i32 %802), !nosanitize !12
  %826 = extractvalue { i32, i1 } %825, 0, !nosanitize !12
  %827 = extractvalue { i32, i1 } %825, 1, !nosanitize !12
  br i1 %827, label %828, label %829, !prof !13, !nosanitize !12

828:                                              ; preds = %824
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

829:                                              ; preds = %824
  %830 = getelementptr inbounds nuw i8, ptr %47, i64 45
  %831 = load i8, ptr %773, align 1, !tbaa !16
  %832 = zext i8 %831 to i32
  %833 = shl nuw i32 %832, 24
  %834 = getelementptr inbounds nuw i8, ptr %47, i64 46
  %835 = load i8, ptr %830, align 1, !tbaa !16
  %836 = zext i8 %835 to i32
  %837 = shl nuw nsw i32 %836, 16
  %838 = or disjoint i32 %837, %833
  %839 = getelementptr inbounds nuw i8, ptr %47, i64 47
  %840 = load i8, ptr %834, align 1, !tbaa !16
  %841 = zext i8 %840 to i32
  %842 = shl nuw nsw i32 %841, 8
  %843 = or disjoint i32 %838, %842
  %844 = getelementptr inbounds nuw i8, ptr %47, i64 48
  %845 = load i8, ptr %839, align 1, !tbaa !16
  %846 = zext i8 %845 to i32
  %847 = or disjoint i32 %843, %846
  store i32 %847, ptr %23, align 4, !tbaa !4
  %848 = tail call i32 @llvm.fshl.i32(i32 %821, i32 %821, i32 26)
  %849 = tail call i32 @llvm.fshl.i32(i32 %821, i32 %821, i32 21)
  %850 = xor i32 %848, %849
  %851 = tail call i32 @llvm.fshl.i32(i32 %821, i32 %821, i32 7)
  %852 = xor i32 %850, %851
  %853 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %608, i32 %852), !nosanitize !12
  %854 = extractvalue { i32, i1 } %853, 1, !nosanitize !12
  br i1 %854, label %855, label %856, !prof !13, !nosanitize !12

855:                                              ; preds = %829
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

856:                                              ; preds = %829
  %857 = extractvalue { i32, i1 } %853, 0, !nosanitize !12
  %858 = and i32 %821, %750
  %859 = xor i32 %821, -1
  %860 = and i32 %679, %859
  %861 = or i32 %858, %860
  %862 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %857, i32 %861), !nosanitize !12
  %863 = extractvalue { i32, i1 } %862, 1, !nosanitize !12
  br i1 %863, label %864, label %865, !prof !13, !nosanitize !12

864:                                              ; preds = %856
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

865:                                              ; preds = %856
  %866 = extractvalue { i32, i1 } %862, 0, !nosanitize !12
  %867 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %866, i32 1426881987), !nosanitize !12
  %868 = extractvalue { i32, i1 } %867, 1, !nosanitize !12
  br i1 %868, label %869, label %870, !prof !13, !nosanitize !12

869:                                              ; preds = %865
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

870:                                              ; preds = %865
  %871 = extractvalue { i32, i1 } %867, 0, !nosanitize !12
  %872 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %847, i32 %871), !nosanitize !12
  %873 = extractvalue { i32, i1 } %872, 0, !nosanitize !12
  %874 = extractvalue { i32, i1 } %872, 1, !nosanitize !12
  br i1 %874, label %875, label %876, !prof !13, !nosanitize !12

875:                                              ; preds = %870
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

876:                                              ; preds = %870
  %877 = tail call i32 @llvm.fshl.i32(i32 %826, i32 %826, i32 30)
  %878 = tail call i32 @llvm.fshl.i32(i32 %826, i32 %826, i32 19)
  %879 = xor i32 %877, %878
  %880 = tail call i32 @llvm.fshl.i32(i32 %826, i32 %826, i32 10)
  %881 = xor i32 %879, %880
  %882 = and i32 %826, %755
  %883 = xor i32 %755, %684
  %884 = and i32 %826, %883
  %885 = xor i32 %884, %811
  %886 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %881, i32 %885), !nosanitize !12
  %887 = extractvalue { i32, i1 } %886, 0, !nosanitize !12
  %888 = extractvalue { i32, i1 } %886, 1, !nosanitize !12
  br i1 %888, label %889, label %890, !prof !13, !nosanitize !12

889:                                              ; preds = %876
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

890:                                              ; preds = %876
  %891 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %613, i32 %873), !nosanitize !12
  %892 = extractvalue { i32, i1 } %891, 0, !nosanitize !12
  %893 = extractvalue { i32, i1 } %891, 1, !nosanitize !12
  br i1 %893, label %894, label %895, !prof !13, !nosanitize !12

894:                                              ; preds = %890
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

895:                                              ; preds = %890
  %896 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %887, i32 %873), !nosanitize !12
  %897 = extractvalue { i32, i1 } %896, 0, !nosanitize !12
  %898 = extractvalue { i32, i1 } %896, 1, !nosanitize !12
  br i1 %898, label %899, label %900, !prof !13, !nosanitize !12

899:                                              ; preds = %895
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

900:                                              ; preds = %895
  %901 = getelementptr inbounds nuw i8, ptr %47, i64 49
  %902 = load i8, ptr %844, align 1, !tbaa !16
  %903 = zext i8 %902 to i32
  %904 = shl nuw i32 %903, 24
  %905 = getelementptr inbounds nuw i8, ptr %47, i64 50
  %906 = load i8, ptr %901, align 1, !tbaa !16
  %907 = zext i8 %906 to i32
  %908 = shl nuw nsw i32 %907, 16
  %909 = or disjoint i32 %908, %904
  %910 = getelementptr inbounds nuw i8, ptr %47, i64 51
  %911 = load i8, ptr %905, align 1, !tbaa !16
  %912 = zext i8 %911 to i32
  %913 = shl nuw nsw i32 %912, 8
  %914 = or disjoint i32 %909, %913
  %915 = getelementptr inbounds nuw i8, ptr %47, i64 52
  %916 = load i8, ptr %910, align 1, !tbaa !16
  %917 = zext i8 %916 to i32
  %918 = or disjoint i32 %914, %917
  store i32 %918, ptr %24, align 16, !tbaa !4
  %919 = tail call i32 @llvm.fshl.i32(i32 %892, i32 %892, i32 26)
  %920 = tail call i32 @llvm.fshl.i32(i32 %892, i32 %892, i32 21)
  %921 = xor i32 %919, %920
  %922 = tail call i32 @llvm.fshl.i32(i32 %892, i32 %892, i32 7)
  %923 = xor i32 %921, %922
  %924 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %679, i32 %923), !nosanitize !12
  %925 = extractvalue { i32, i1 } %924, 1, !nosanitize !12
  br i1 %925, label %926, label %927, !prof !13, !nosanitize !12

926:                                              ; preds = %900
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

927:                                              ; preds = %900
  %928 = extractvalue { i32, i1 } %924, 0, !nosanitize !12
  %929 = and i32 %892, %821
  %930 = xor i32 %892, -1
  %931 = and i32 %750, %930
  %932 = or i32 %929, %931
  %933 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %928, i32 %932), !nosanitize !12
  %934 = extractvalue { i32, i1 } %933, 1, !nosanitize !12
  br i1 %934, label %935, label %936, !prof !13, !nosanitize !12

935:                                              ; preds = %927
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

936:                                              ; preds = %927
  %937 = extractvalue { i32, i1 } %933, 0, !nosanitize !12
  %938 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %937, i32 1925078388), !nosanitize !12
  %939 = extractvalue { i32, i1 } %938, 1, !nosanitize !12
  br i1 %939, label %940, label %941, !prof !13, !nosanitize !12

940:                                              ; preds = %936
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

941:                                              ; preds = %936
  %942 = extractvalue { i32, i1 } %938, 0, !nosanitize !12
  %943 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %918, i32 %942), !nosanitize !12
  %944 = extractvalue { i32, i1 } %943, 0, !nosanitize !12
  %945 = extractvalue { i32, i1 } %943, 1, !nosanitize !12
  br i1 %945, label %946, label %947, !prof !13, !nosanitize !12

946:                                              ; preds = %941
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

947:                                              ; preds = %941
  %948 = tail call i32 @llvm.fshl.i32(i32 %897, i32 %897, i32 30)
  %949 = tail call i32 @llvm.fshl.i32(i32 %897, i32 %897, i32 19)
  %950 = xor i32 %948, %949
  %951 = tail call i32 @llvm.fshl.i32(i32 %897, i32 %897, i32 10)
  %952 = xor i32 %950, %951
  %953 = and i32 %897, %826
  %954 = xor i32 %826, %755
  %955 = and i32 %897, %954
  %956 = xor i32 %955, %882
  %957 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %952, i32 %956), !nosanitize !12
  %958 = extractvalue { i32, i1 } %957, 0, !nosanitize !12
  %959 = extractvalue { i32, i1 } %957, 1, !nosanitize !12
  br i1 %959, label %960, label %961, !prof !13, !nosanitize !12

960:                                              ; preds = %947
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

961:                                              ; preds = %947
  %962 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %684, i32 %944), !nosanitize !12
  %963 = extractvalue { i32, i1 } %962, 0, !nosanitize !12
  %964 = extractvalue { i32, i1 } %962, 1, !nosanitize !12
  br i1 %964, label %965, label %966, !prof !13, !nosanitize !12

965:                                              ; preds = %961
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

966:                                              ; preds = %961
  %967 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %958, i32 %944), !nosanitize !12
  %968 = extractvalue { i32, i1 } %967, 0, !nosanitize !12
  %969 = extractvalue { i32, i1 } %967, 1, !nosanitize !12
  br i1 %969, label %970, label %971, !prof !13, !nosanitize !12

970:                                              ; preds = %966
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

971:                                              ; preds = %966
  %972 = getelementptr inbounds nuw i8, ptr %47, i64 53
  %973 = load i8, ptr %915, align 1, !tbaa !16
  %974 = zext i8 %973 to i32
  %975 = shl nuw i32 %974, 24
  %976 = getelementptr inbounds nuw i8, ptr %47, i64 54
  %977 = load i8, ptr %972, align 1, !tbaa !16
  %978 = zext i8 %977 to i32
  %979 = shl nuw nsw i32 %978, 16
  %980 = or disjoint i32 %979, %975
  %981 = getelementptr inbounds nuw i8, ptr %47, i64 55
  %982 = load i8, ptr %976, align 1, !tbaa !16
  %983 = zext i8 %982 to i32
  %984 = shl nuw nsw i32 %983, 8
  %985 = or disjoint i32 %980, %984
  %986 = getelementptr inbounds nuw i8, ptr %47, i64 56
  %987 = load i8, ptr %981, align 1, !tbaa !16
  %988 = zext i8 %987 to i32
  %989 = or disjoint i32 %985, %988
  store i32 %989, ptr %25, align 4, !tbaa !4
  %990 = tail call i32 @llvm.fshl.i32(i32 %963, i32 %963, i32 26)
  %991 = tail call i32 @llvm.fshl.i32(i32 %963, i32 %963, i32 21)
  %992 = xor i32 %990, %991
  %993 = tail call i32 @llvm.fshl.i32(i32 %963, i32 %963, i32 7)
  %994 = xor i32 %992, %993
  %995 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %750, i32 %994), !nosanitize !12
  %996 = extractvalue { i32, i1 } %995, 1, !nosanitize !12
  br i1 %996, label %997, label %998, !prof !13, !nosanitize !12

997:                                              ; preds = %971
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

998:                                              ; preds = %971
  %999 = extractvalue { i32, i1 } %995, 0, !nosanitize !12
  %1000 = and i32 %963, %892
  %1001 = xor i32 %963, -1
  %1002 = and i32 %821, %1001
  %1003 = or i32 %1000, %1002
  %1004 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %999, i32 %1003), !nosanitize !12
  %1005 = extractvalue { i32, i1 } %1004, 1, !nosanitize !12
  br i1 %1005, label %1006, label %1007, !prof !13, !nosanitize !12

1006:                                             ; preds = %998
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1007:                                             ; preds = %998
  %1008 = extractvalue { i32, i1 } %1004, 0, !nosanitize !12
  %1009 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1008, i32 -2132889090), !nosanitize !12
  %1010 = extractvalue { i32, i1 } %1009, 1, !nosanitize !12
  br i1 %1010, label %1011, label %1012, !prof !13, !nosanitize !12

1011:                                             ; preds = %1007
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1012:                                             ; preds = %1007
  %1013 = extractvalue { i32, i1 } %1009, 0, !nosanitize !12
  %1014 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %989, i32 %1013), !nosanitize !12
  %1015 = extractvalue { i32, i1 } %1014, 0, !nosanitize !12
  %1016 = extractvalue { i32, i1 } %1014, 1, !nosanitize !12
  br i1 %1016, label %1017, label %1018, !prof !13, !nosanitize !12

1017:                                             ; preds = %1012
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1018:                                             ; preds = %1012
  %1019 = tail call i32 @llvm.fshl.i32(i32 %968, i32 %968, i32 30)
  %1020 = tail call i32 @llvm.fshl.i32(i32 %968, i32 %968, i32 19)
  %1021 = xor i32 %1019, %1020
  %1022 = tail call i32 @llvm.fshl.i32(i32 %968, i32 %968, i32 10)
  %1023 = xor i32 %1021, %1022
  %1024 = and i32 %968, %897
  %1025 = xor i32 %897, %826
  %1026 = and i32 %968, %1025
  %1027 = xor i32 %1026, %953
  %1028 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1023, i32 %1027), !nosanitize !12
  %1029 = extractvalue { i32, i1 } %1028, 0, !nosanitize !12
  %1030 = extractvalue { i32, i1 } %1028, 1, !nosanitize !12
  br i1 %1030, label %1031, label %1032, !prof !13, !nosanitize !12

1031:                                             ; preds = %1018
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1032:                                             ; preds = %1018
  %1033 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %755, i32 %1015), !nosanitize !12
  %1034 = extractvalue { i32, i1 } %1033, 0, !nosanitize !12
  %1035 = extractvalue { i32, i1 } %1033, 1, !nosanitize !12
  br i1 %1035, label %1036, label %1037, !prof !13, !nosanitize !12

1036:                                             ; preds = %1032
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1037:                                             ; preds = %1032
  %1038 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1029, i32 %1015), !nosanitize !12
  %1039 = extractvalue { i32, i1 } %1038, 0, !nosanitize !12
  %1040 = extractvalue { i32, i1 } %1038, 1, !nosanitize !12
  br i1 %1040, label %1041, label %1042, !prof !13, !nosanitize !12

1041:                                             ; preds = %1037
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1042:                                             ; preds = %1037
  %1043 = getelementptr inbounds nuw i8, ptr %47, i64 57
  %1044 = load i8, ptr %986, align 1, !tbaa !16
  %1045 = zext i8 %1044 to i32
  %1046 = shl nuw i32 %1045, 24
  %1047 = getelementptr inbounds nuw i8, ptr %47, i64 58
  %1048 = load i8, ptr %1043, align 1, !tbaa !16
  %1049 = zext i8 %1048 to i32
  %1050 = shl nuw nsw i32 %1049, 16
  %1051 = or disjoint i32 %1050, %1046
  %1052 = getelementptr inbounds nuw i8, ptr %47, i64 59
  %1053 = load i8, ptr %1047, align 1, !tbaa !16
  %1054 = zext i8 %1053 to i32
  %1055 = shl nuw nsw i32 %1054, 8
  %1056 = or disjoint i32 %1051, %1055
  %1057 = getelementptr inbounds nuw i8, ptr %47, i64 60
  %1058 = load i8, ptr %1052, align 1, !tbaa !16
  %1059 = zext i8 %1058 to i32
  %1060 = or disjoint i32 %1056, %1059
  store i32 %1060, ptr %26, align 8, !tbaa !4
  %1061 = tail call i32 @llvm.fshl.i32(i32 %1034, i32 %1034, i32 26)
  %1062 = tail call i32 @llvm.fshl.i32(i32 %1034, i32 %1034, i32 21)
  %1063 = xor i32 %1061, %1062
  %1064 = tail call i32 @llvm.fshl.i32(i32 %1034, i32 %1034, i32 7)
  %1065 = xor i32 %1063, %1064
  %1066 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %821, i32 %1065), !nosanitize !12
  %1067 = extractvalue { i32, i1 } %1066, 1, !nosanitize !12
  br i1 %1067, label %1068, label %1069, !prof !13, !nosanitize !12

1068:                                             ; preds = %1042
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1069:                                             ; preds = %1042
  %1070 = extractvalue { i32, i1 } %1066, 0, !nosanitize !12
  %1071 = and i32 %1034, %963
  %1072 = xor i32 %1034, -1
  %1073 = and i32 %892, %1072
  %1074 = or i32 %1071, %1073
  %1075 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1070, i32 %1074), !nosanitize !12
  %1076 = extractvalue { i32, i1 } %1075, 1, !nosanitize !12
  br i1 %1076, label %1077, label %1078, !prof !13, !nosanitize !12

1077:                                             ; preds = %1069
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1078:                                             ; preds = %1069
  %1079 = extractvalue { i32, i1 } %1075, 0, !nosanitize !12
  %1080 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1079, i32 -1680079193), !nosanitize !12
  %1081 = extractvalue { i32, i1 } %1080, 1, !nosanitize !12
  br i1 %1081, label %1082, label %1083, !prof !13, !nosanitize !12

1082:                                             ; preds = %1078
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1083:                                             ; preds = %1078
  %1084 = extractvalue { i32, i1 } %1080, 0, !nosanitize !12
  %1085 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1060, i32 %1084), !nosanitize !12
  %1086 = extractvalue { i32, i1 } %1085, 0, !nosanitize !12
  %1087 = extractvalue { i32, i1 } %1085, 1, !nosanitize !12
  br i1 %1087, label %1088, label %1089, !prof !13, !nosanitize !12

1088:                                             ; preds = %1083
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1089:                                             ; preds = %1083
  %1090 = tail call i32 @llvm.fshl.i32(i32 %1039, i32 %1039, i32 30)
  %1091 = tail call i32 @llvm.fshl.i32(i32 %1039, i32 %1039, i32 19)
  %1092 = xor i32 %1090, %1091
  %1093 = tail call i32 @llvm.fshl.i32(i32 %1039, i32 %1039, i32 10)
  %1094 = xor i32 %1092, %1093
  %1095 = and i32 %1039, %968
  %1096 = xor i32 %968, %897
  %1097 = and i32 %1039, %1096
  %1098 = xor i32 %1097, %1024
  %1099 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1094, i32 %1098), !nosanitize !12
  %1100 = extractvalue { i32, i1 } %1099, 0, !nosanitize !12
  %1101 = extractvalue { i32, i1 } %1099, 1, !nosanitize !12
  br i1 %1101, label %1102, label %1103, !prof !13, !nosanitize !12

1102:                                             ; preds = %1089
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1103:                                             ; preds = %1089
  %1104 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %826, i32 %1086), !nosanitize !12
  %1105 = extractvalue { i32, i1 } %1104, 0, !nosanitize !12
  %1106 = extractvalue { i32, i1 } %1104, 1, !nosanitize !12
  br i1 %1106, label %1107, label %1108, !prof !13, !nosanitize !12

1107:                                             ; preds = %1103
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1108:                                             ; preds = %1103
  %1109 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1100, i32 %1086), !nosanitize !12
  %1110 = extractvalue { i32, i1 } %1109, 0, !nosanitize !12
  %1111 = extractvalue { i32, i1 } %1109, 1, !nosanitize !12
  br i1 %1111, label %1112, label %1113, !prof !13, !nosanitize !12

1112:                                             ; preds = %1108
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1113:                                             ; preds = %1108
  %1114 = getelementptr inbounds nuw i8, ptr %47, i64 61
  %1115 = load i8, ptr %1057, align 1, !tbaa !16
  %1116 = zext i8 %1115 to i32
  %1117 = shl nuw i32 %1116, 24
  %1118 = getelementptr inbounds nuw i8, ptr %47, i64 62
  %1119 = load i8, ptr %1114, align 1, !tbaa !16
  %1120 = zext i8 %1119 to i32
  %1121 = shl nuw nsw i32 %1120, 16
  %1122 = or disjoint i32 %1121, %1117
  %1123 = getelementptr inbounds nuw i8, ptr %47, i64 63
  %1124 = load i8, ptr %1118, align 1, !tbaa !16
  %1125 = zext i8 %1124 to i32
  %1126 = shl nuw nsw i32 %1125, 8
  %1127 = or disjoint i32 %1122, %1126
  %1128 = getelementptr inbounds nuw i8, ptr %47, i64 64
  %1129 = load i8, ptr %1123, align 1, !tbaa !16
  %1130 = zext i8 %1129 to i32
  %1131 = or disjoint i32 %1127, %1130
  store i32 %1131, ptr %27, align 4, !tbaa !4
  %1132 = tail call i32 @llvm.fshl.i32(i32 %1105, i32 %1105, i32 26)
  %1133 = tail call i32 @llvm.fshl.i32(i32 %1105, i32 %1105, i32 21)
  %1134 = xor i32 %1132, %1133
  %1135 = tail call i32 @llvm.fshl.i32(i32 %1105, i32 %1105, i32 7)
  %1136 = xor i32 %1134, %1135
  %1137 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %892, i32 %1136), !nosanitize !12
  %1138 = extractvalue { i32, i1 } %1137, 1, !nosanitize !12
  br i1 %1138, label %1139, label %1140, !prof !13, !nosanitize !12

1139:                                             ; preds = %1113
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1140:                                             ; preds = %1113
  %1141 = extractvalue { i32, i1 } %1137, 0, !nosanitize !12
  %1142 = and i32 %1105, %1034
  %1143 = xor i32 %1105, -1
  %1144 = and i32 %963, %1143
  %1145 = or i32 %1142, %1144
  %1146 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1141, i32 %1145), !nosanitize !12
  %1147 = extractvalue { i32, i1 } %1146, 1, !nosanitize !12
  br i1 %1147, label %1148, label %1149, !prof !13, !nosanitize !12

1148:                                             ; preds = %1140
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1149:                                             ; preds = %1140
  %1150 = extractvalue { i32, i1 } %1146, 0, !nosanitize !12
  %1151 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1150, i32 -1046744716), !nosanitize !12
  %1152 = extractvalue { i32, i1 } %1151, 1, !nosanitize !12
  br i1 %1152, label %1153, label %1154, !prof !13, !nosanitize !12

1153:                                             ; preds = %1149
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1154:                                             ; preds = %1149
  %1155 = extractvalue { i32, i1 } %1151, 0, !nosanitize !12
  %1156 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1131, i32 %1155), !nosanitize !12
  %1157 = extractvalue { i32, i1 } %1156, 0, !nosanitize !12
  %1158 = extractvalue { i32, i1 } %1156, 1, !nosanitize !12
  br i1 %1158, label %1159, label %1160, !prof !13, !nosanitize !12

1159:                                             ; preds = %1154
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1160:                                             ; preds = %1154
  %1161 = tail call i32 @llvm.fshl.i32(i32 %1110, i32 %1110, i32 30)
  %1162 = tail call i32 @llvm.fshl.i32(i32 %1110, i32 %1110, i32 19)
  %1163 = xor i32 %1161, %1162
  %1164 = tail call i32 @llvm.fshl.i32(i32 %1110, i32 %1110, i32 10)
  %1165 = xor i32 %1163, %1164
  %1166 = xor i32 %1039, %968
  %1167 = and i32 %1110, %1166
  %1168 = xor i32 %1167, %1095
  %1169 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1165, i32 %1168), !nosanitize !12
  %1170 = extractvalue { i32, i1 } %1169, 0, !nosanitize !12
  %1171 = extractvalue { i32, i1 } %1169, 1, !nosanitize !12
  br i1 %1171, label %1172, label %1173, !prof !13, !nosanitize !12

1172:                                             ; preds = %1160
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1173:                                             ; preds = %1160
  %1174 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %897, i32 %1157), !nosanitize !12
  %1175 = extractvalue { i32, i1 } %1174, 1, !nosanitize !12
  br i1 %1175, label %1176, label %1177, !prof !13, !nosanitize !12

1176:                                             ; preds = %1173
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1177:                                             ; preds = %1173
  %1178 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1170, i32 %1157), !nosanitize !12
  %1179 = extractvalue { i32, i1 } %1178, 1, !nosanitize !12
  br i1 %1179, label %1183, label %1180, !prof !13, !nosanitize !12

1180:                                             ; preds = %1177
  %1181 = extractvalue { i32, i1 } %1174, 0
  %1182 = extractvalue { i32, i1 } %1178, 0
  br label %1189

1183:                                             ; preds = %1177
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1184:                                             ; preds = %1895
  %1185 = add nuw nsw i64 %1190, 8
  %1186 = extractvalue { i32, i1 } %1892, 0
  %1187 = extractvalue { i32, i1 } %1896, 0
  %1188 = icmp samesign ult i64 %1190, 56
  br i1 %1188, label %1189, label %1899, !llvm.loop !17

1189:                                             ; preds = %1184, %1180
  %1190 = phi i64 [ 16, %1180 ], [ %1185, %1184 ]
  %1191 = phi i32 [ %1182, %1180 ], [ %1187, %1184 ]
  %1192 = phi i32 [ %1181, %1180 ], [ %1186, %1184 ]
  %1193 = phi i32 [ %963, %1180 ], [ %1643, %1184 ]
  %1194 = phi i32 [ %1034, %1180 ], [ %1727, %1184 ]
  %1195 = phi i32 [ %1105, %1180 ], [ %1811, %1184 ]
  %1196 = phi i32 [ %968, %1180 ], [ %1648, %1184 ]
  %1197 = phi i32 [ %1039, %1180 ], [ %1732, %1184 ]
  %1198 = phi i32 [ %1110, %1180 ], [ %1816, %1184 ]
  %1199 = or disjoint i64 %1190, 1
  %1200 = and i64 %1199, 9
  %1201 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1200
  %1202 = load i32, ptr %1201, align 4, !tbaa !4
  %1203 = tail call i32 @llvm.fshl.i32(i32 %1202, i32 %1202, i32 25)
  %1204 = tail call i32 @llvm.fshl.i32(i32 %1202, i32 %1202, i32 14)
  %1205 = xor i32 %1203, %1204
  %1206 = lshr i32 %1202, 3
  %1207 = xor i32 %1205, %1206
  %1208 = add nuw nsw i64 %1190, 14
  %1209 = and i64 %1208, 14
  %1210 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1209
  %1211 = load i32, ptr %1210, align 8, !tbaa !4
  %1212 = tail call i32 @llvm.fshl.i32(i32 %1211, i32 %1211, i32 15)
  %1213 = tail call i32 @llvm.fshl.i32(i32 %1211, i32 %1211, i32 13)
  %1214 = xor i32 %1212, %1213
  %1215 = lshr i32 %1211, 10
  %1216 = xor i32 %1214, %1215
  %1217 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1207, i32 %1216), !nosanitize !12
  %1218 = extractvalue { i32, i1 } %1217, 1, !nosanitize !12
  br i1 %1218, label %1219, label %1220, !prof !13, !nosanitize !12

1219:                                             ; preds = %1189
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1220:                                             ; preds = %1189
  %1221 = extractvalue { i32, i1 } %1217, 0, !nosanitize !12
  %1222 = add nuw nsw i64 %1190, 9
  %1223 = and i64 %1222, 9
  %1224 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1223
  %1225 = load i32, ptr %1224, align 4, !tbaa !4
  %1226 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1221, i32 %1225), !nosanitize !12
  %1227 = extractvalue { i32, i1 } %1226, 1, !nosanitize !12
  br i1 %1227, label %1228, label %1229, !prof !13, !nosanitize !12

1228:                                             ; preds = %1220
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1229:                                             ; preds = %1220
  %1230 = extractvalue { i32, i1 } %1226, 0, !nosanitize !12
  %1231 = and i64 %1190, 8
  %1232 = and i64 %1190, 8
  %1233 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1232
  %1234 = load i32, ptr %1233, align 16, !tbaa !4
  %1235 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1234, i32 %1230), !nosanitize !12
  %1236 = extractvalue { i32, i1 } %1235, 0, !nosanitize !12
  %1237 = extractvalue { i32, i1 } %1235, 1, !nosanitize !12
  br i1 %1237, label %1238, label %1239, !prof !13, !nosanitize !12

1238:                                             ; preds = %1229
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1239:                                             ; preds = %1229
  store i32 %1236, ptr %1233, align 16, !tbaa !4
  %1240 = tail call i32 @llvm.fshl.i32(i32 %1192, i32 %1192, i32 26)
  %1241 = tail call i32 @llvm.fshl.i32(i32 %1192, i32 %1192, i32 21)
  %1242 = xor i32 %1240, %1241
  %1243 = tail call i32 @llvm.fshl.i32(i32 %1192, i32 %1192, i32 7)
  %1244 = xor i32 %1242, %1243
  %1245 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1193, i32 %1244), !nosanitize !12
  %1246 = extractvalue { i32, i1 } %1245, 1, !nosanitize !12
  br i1 %1246, label %1247, label %1248, !prof !13, !nosanitize !12

1247:                                             ; preds = %1239
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1248:                                             ; preds = %1239
  %1249 = extractvalue { i32, i1 } %1245, 0, !nosanitize !12
  %1250 = and i32 %1192, %1195
  %1251 = xor i32 %1192, -1
  %1252 = and i32 %1194, %1251
  %1253 = or i32 %1252, %1250
  %1254 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1249, i32 %1253), !nosanitize !12
  %1255 = extractvalue { i32, i1 } %1254, 1, !nosanitize !12
  br i1 %1255, label %1256, label %1257, !prof !13, !nosanitize !12

1256:                                             ; preds = %1248
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1257:                                             ; preds = %1248
  %1258 = extractvalue { i32, i1 } %1254, 0, !nosanitize !12
  %1259 = getelementptr inbounds nuw [4 x i8], ptr @K256, i64 %1190
  %1260 = load i32, ptr %1259, align 16, !tbaa !4
  %1261 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1258, i32 %1260), !nosanitize !12
  %1262 = extractvalue { i32, i1 } %1261, 1, !nosanitize !12
  br i1 %1262, label %1263, label %1264, !prof !13, !nosanitize !12

1263:                                             ; preds = %1257
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1264:                                             ; preds = %1257
  %1265 = extractvalue { i32, i1 } %1261, 0, !nosanitize !12
  %1266 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1236, i32 %1265), !nosanitize !12
  %1267 = extractvalue { i32, i1 } %1266, 0, !nosanitize !12
  %1268 = extractvalue { i32, i1 } %1266, 1, !nosanitize !12
  br i1 %1268, label %1269, label %1270, !prof !13, !nosanitize !12

1269:                                             ; preds = %1264
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1270:                                             ; preds = %1264
  %1271 = tail call i32 @llvm.fshl.i32(i32 %1191, i32 %1191, i32 30)
  %1272 = tail call i32 @llvm.fshl.i32(i32 %1191, i32 %1191, i32 19)
  %1273 = xor i32 %1271, %1272
  %1274 = tail call i32 @llvm.fshl.i32(i32 %1191, i32 %1191, i32 10)
  %1275 = xor i32 %1273, %1274
  %1276 = and i32 %1191, %1198
  %1277 = xor i32 %1197, %1198
  %1278 = and i32 %1277, %1191
  %1279 = and i32 %1197, %1198
  %1280 = xor i32 %1278, %1279
  %1281 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1275, i32 %1280), !nosanitize !12
  %1282 = extractvalue { i32, i1 } %1281, 0, !nosanitize !12
  %1283 = extractvalue { i32, i1 } %1281, 1, !nosanitize !12
  br i1 %1283, label %1284, label %1285, !prof !13, !nosanitize !12

1284:                                             ; preds = %1270
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1285:                                             ; preds = %1270
  %1286 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1196, i32 %1267), !nosanitize !12
  %1287 = extractvalue { i32, i1 } %1286, 0, !nosanitize !12
  %1288 = extractvalue { i32, i1 } %1286, 1, !nosanitize !12
  br i1 %1288, label %1289, label %1290, !prof !13, !nosanitize !12

1289:                                             ; preds = %1285
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1290:                                             ; preds = %1285
  %1291 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1282, i32 %1267), !nosanitize !12
  %1292 = extractvalue { i32, i1 } %1291, 0, !nosanitize !12
  %1293 = extractvalue { i32, i1 } %1291, 1, !nosanitize !12
  br i1 %1293, label %1294, label %1295, !prof !13, !nosanitize !12

1294:                                             ; preds = %1290
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1295:                                             ; preds = %1290
  %1296 = or disjoint i64 %1190, 2
  %1297 = and i64 %1296, 10
  %1298 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1297
  %1299 = load i32, ptr %1298, align 8, !tbaa !4
  %1300 = tail call i32 @llvm.fshl.i32(i32 %1299, i32 %1299, i32 25)
  %1301 = tail call i32 @llvm.fshl.i32(i32 %1299, i32 %1299, i32 14)
  %1302 = xor i32 %1300, %1301
  %1303 = lshr i32 %1299, 3
  %1304 = xor i32 %1302, %1303
  %1305 = add nuw nsw i64 %1190, 15
  %1306 = and i64 %1305, 15
  %1307 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1306
  %1308 = load i32, ptr %1307, align 4, !tbaa !4
  %1309 = tail call i32 @llvm.fshl.i32(i32 %1308, i32 %1308, i32 15)
  %1310 = tail call i32 @llvm.fshl.i32(i32 %1308, i32 %1308, i32 13)
  %1311 = xor i32 %1309, %1310
  %1312 = lshr i32 %1308, 10
  %1313 = xor i32 %1311, %1312
  %1314 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1304, i32 %1313), !nosanitize !12
  %1315 = extractvalue { i32, i1 } %1314, 1, !nosanitize !12
  br i1 %1315, label %1316, label %1317, !prof !13, !nosanitize !12

1316:                                             ; preds = %1295
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1317:                                             ; preds = %1295
  %1318 = extractvalue { i32, i1 } %1314, 0, !nosanitize !12
  %1319 = add nuw nsw i64 %1190, 10
  %1320 = and i64 %1319, 10
  %1321 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1320
  %1322 = load i32, ptr %1321, align 8, !tbaa !4
  %1323 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1318, i32 %1322), !nosanitize !12
  %1324 = extractvalue { i32, i1 } %1323, 1, !nosanitize !12
  br i1 %1324, label %1325, label %1326, !prof !13, !nosanitize !12

1325:                                             ; preds = %1317
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1326:                                             ; preds = %1317
  %1327 = extractvalue { i32, i1 } %1323, 0, !nosanitize !12
  %1328 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1202, i32 %1327), !nosanitize !12
  %1329 = extractvalue { i32, i1 } %1328, 0, !nosanitize !12
  %1330 = extractvalue { i32, i1 } %1328, 1, !nosanitize !12
  br i1 %1330, label %1331, label %1332, !prof !13, !nosanitize !12

1331:                                             ; preds = %1326
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1332:                                             ; preds = %1326
  store i32 %1329, ptr %1201, align 4, !tbaa !4
  %1333 = tail call i32 @llvm.fshl.i32(i32 %1287, i32 %1287, i32 26)
  %1334 = tail call i32 @llvm.fshl.i32(i32 %1287, i32 %1287, i32 21)
  %1335 = xor i32 %1333, %1334
  %1336 = tail call i32 @llvm.fshl.i32(i32 %1287, i32 %1287, i32 7)
  %1337 = xor i32 %1335, %1336
  %1338 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1194, i32 %1337), !nosanitize !12
  %1339 = extractvalue { i32, i1 } %1338, 1, !nosanitize !12
  br i1 %1339, label %1340, label %1341, !prof !13, !nosanitize !12

1340:                                             ; preds = %1332
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1341:                                             ; preds = %1332
  %1342 = extractvalue { i32, i1 } %1338, 0, !nosanitize !12
  %1343 = and i32 %1287, %1192
  %1344 = xor i32 %1287, -1
  %1345 = and i32 %1195, %1344
  %1346 = or i32 %1343, %1345
  %1347 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1342, i32 %1346), !nosanitize !12
  %1348 = extractvalue { i32, i1 } %1347, 1, !nosanitize !12
  br i1 %1348, label %1349, label %1350, !prof !13, !nosanitize !12

1349:                                             ; preds = %1341
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1350:                                             ; preds = %1341
  %1351 = extractvalue { i32, i1 } %1347, 0, !nosanitize !12
  %1352 = getelementptr inbounds nuw [4 x i8], ptr @K256, i64 %1199
  %1353 = load i32, ptr %1352, align 4, !tbaa !4
  %1354 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1351, i32 %1353), !nosanitize !12
  %1355 = extractvalue { i32, i1 } %1354, 1, !nosanitize !12
  br i1 %1355, label %1356, label %1357, !prof !13, !nosanitize !12

1356:                                             ; preds = %1350
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1357:                                             ; preds = %1350
  %1358 = extractvalue { i32, i1 } %1354, 0, !nosanitize !12
  %1359 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1329, i32 %1358), !nosanitize !12
  %1360 = extractvalue { i32, i1 } %1359, 0, !nosanitize !12
  %1361 = extractvalue { i32, i1 } %1359, 1, !nosanitize !12
  br i1 %1361, label %1362, label %1363, !prof !13, !nosanitize !12

1362:                                             ; preds = %1357
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1363:                                             ; preds = %1357
  %1364 = tail call i32 @llvm.fshl.i32(i32 %1292, i32 %1292, i32 30)
  %1365 = tail call i32 @llvm.fshl.i32(i32 %1292, i32 %1292, i32 19)
  %1366 = xor i32 %1364, %1365
  %1367 = tail call i32 @llvm.fshl.i32(i32 %1292, i32 %1292, i32 10)
  %1368 = xor i32 %1366, %1367
  %1369 = and i32 %1292, %1191
  %1370 = xor i32 %1191, %1198
  %1371 = and i32 %1292, %1370
  %1372 = xor i32 %1371, %1276
  %1373 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1368, i32 %1372), !nosanitize !12
  %1374 = extractvalue { i32, i1 } %1373, 0, !nosanitize !12
  %1375 = extractvalue { i32, i1 } %1373, 1, !nosanitize !12
  br i1 %1375, label %1376, label %1377, !prof !13, !nosanitize !12

1376:                                             ; preds = %1363
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1377:                                             ; preds = %1363
  %1378 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1197, i32 %1360), !nosanitize !12
  %1379 = extractvalue { i32, i1 } %1378, 0, !nosanitize !12
  %1380 = extractvalue { i32, i1 } %1378, 1, !nosanitize !12
  br i1 %1380, label %1381, label %1382, !prof !13, !nosanitize !12

1381:                                             ; preds = %1377
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1382:                                             ; preds = %1377
  %1383 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1374, i32 %1360), !nosanitize !12
  %1384 = extractvalue { i32, i1 } %1383, 0, !nosanitize !12
  %1385 = extractvalue { i32, i1 } %1383, 1, !nosanitize !12
  br i1 %1385, label %1386, label %1387, !prof !13, !nosanitize !12

1386:                                             ; preds = %1382
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1387:                                             ; preds = %1382
  %1388 = or disjoint i64 %1190, 3
  %1389 = and i64 %1388, 11
  %1390 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1389
  %1391 = load i32, ptr %1390, align 4, !tbaa !4
  %1392 = tail call i32 @llvm.fshl.i32(i32 %1391, i32 %1391, i32 25)
  %1393 = tail call i32 @llvm.fshl.i32(i32 %1391, i32 %1391, i32 14)
  %1394 = xor i32 %1392, %1393
  %1395 = lshr i32 %1391, 3
  %1396 = xor i32 %1394, %1395
  %1397 = tail call i32 @llvm.fshl.i32(i32 %1236, i32 %1236, i32 15)
  %1398 = tail call i32 @llvm.fshl.i32(i32 %1236, i32 %1236, i32 13)
  %1399 = xor i32 %1397, %1398
  %1400 = lshr i32 %1236, 10
  %1401 = xor i32 %1399, %1400
  %1402 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1396, i32 %1401), !nosanitize !12
  %1403 = extractvalue { i32, i1 } %1402, 1, !nosanitize !12
  br i1 %1403, label %1404, label %1405, !prof !13, !nosanitize !12

1404:                                             ; preds = %1387
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1405:                                             ; preds = %1387
  %1406 = extractvalue { i32, i1 } %1402, 0, !nosanitize !12
  %1407 = add nuw nsw i64 %1190, 11
  %1408 = and i64 %1407, 11
  %1409 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1408
  %1410 = load i32, ptr %1409, align 4, !tbaa !4
  %1411 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1406, i32 %1410), !nosanitize !12
  %1412 = extractvalue { i32, i1 } %1411, 1, !nosanitize !12
  br i1 %1412, label %1413, label %1414, !prof !13, !nosanitize !12

1413:                                             ; preds = %1405
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1414:                                             ; preds = %1405
  %1415 = extractvalue { i32, i1 } %1411, 0, !nosanitize !12
  %1416 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1299, i32 %1415), !nosanitize !12
  %1417 = extractvalue { i32, i1 } %1416, 0, !nosanitize !12
  %1418 = extractvalue { i32, i1 } %1416, 1, !nosanitize !12
  br i1 %1418, label %1419, label %1420, !prof !13, !nosanitize !12

1419:                                             ; preds = %1414
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1420:                                             ; preds = %1414
  store i32 %1417, ptr %1298, align 8, !tbaa !4
  %1421 = tail call i32 @llvm.fshl.i32(i32 %1379, i32 %1379, i32 26)
  %1422 = tail call i32 @llvm.fshl.i32(i32 %1379, i32 %1379, i32 21)
  %1423 = xor i32 %1421, %1422
  %1424 = tail call i32 @llvm.fshl.i32(i32 %1379, i32 %1379, i32 7)
  %1425 = xor i32 %1423, %1424
  %1426 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1195, i32 %1425), !nosanitize !12
  %1427 = extractvalue { i32, i1 } %1426, 1, !nosanitize !12
  br i1 %1427, label %1428, label %1429, !prof !13, !nosanitize !12

1428:                                             ; preds = %1420
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1429:                                             ; preds = %1420
  %1430 = extractvalue { i32, i1 } %1426, 0, !nosanitize !12
  %1431 = and i32 %1379, %1287
  %1432 = xor i32 %1379, -1
  %1433 = and i32 %1192, %1432
  %1434 = or i32 %1431, %1433
  %1435 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1430, i32 %1434), !nosanitize !12
  %1436 = extractvalue { i32, i1 } %1435, 1, !nosanitize !12
  br i1 %1436, label %1437, label %1438, !prof !13, !nosanitize !12

1437:                                             ; preds = %1429
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1438:                                             ; preds = %1429
  %1439 = extractvalue { i32, i1 } %1435, 0, !nosanitize !12
  %1440 = getelementptr inbounds nuw [4 x i8], ptr @K256, i64 %1296
  %1441 = load i32, ptr %1440, align 8, !tbaa !4
  %1442 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1439, i32 %1441), !nosanitize !12
  %1443 = extractvalue { i32, i1 } %1442, 1, !nosanitize !12
  br i1 %1443, label %1444, label %1445, !prof !13, !nosanitize !12

1444:                                             ; preds = %1438
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1445:                                             ; preds = %1438
  %1446 = extractvalue { i32, i1 } %1442, 0, !nosanitize !12
  %1447 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1417, i32 %1446), !nosanitize !12
  %1448 = extractvalue { i32, i1 } %1447, 0, !nosanitize !12
  %1449 = extractvalue { i32, i1 } %1447, 1, !nosanitize !12
  br i1 %1449, label %1450, label %1451, !prof !13, !nosanitize !12

1450:                                             ; preds = %1445
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1451:                                             ; preds = %1445
  %1452 = tail call i32 @llvm.fshl.i32(i32 %1384, i32 %1384, i32 30)
  %1453 = tail call i32 @llvm.fshl.i32(i32 %1384, i32 %1384, i32 19)
  %1454 = xor i32 %1452, %1453
  %1455 = tail call i32 @llvm.fshl.i32(i32 %1384, i32 %1384, i32 10)
  %1456 = xor i32 %1454, %1455
  %1457 = and i32 %1384, %1292
  %1458 = xor i32 %1292, %1191
  %1459 = and i32 %1384, %1458
  %1460 = xor i32 %1459, %1369
  %1461 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1456, i32 %1460), !nosanitize !12
  %1462 = extractvalue { i32, i1 } %1461, 0, !nosanitize !12
  %1463 = extractvalue { i32, i1 } %1461, 1, !nosanitize !12
  br i1 %1463, label %1464, label %1465, !prof !13, !nosanitize !12

1464:                                             ; preds = %1451
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1465:                                             ; preds = %1451
  %1466 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1198, i32 %1448), !nosanitize !12
  %1467 = extractvalue { i32, i1 } %1466, 0, !nosanitize !12
  %1468 = extractvalue { i32, i1 } %1466, 1, !nosanitize !12
  br i1 %1468, label %1469, label %1470, !prof !13, !nosanitize !12

1469:                                             ; preds = %1465
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1470:                                             ; preds = %1465
  %1471 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1462, i32 %1448), !nosanitize !12
  %1472 = extractvalue { i32, i1 } %1471, 0, !nosanitize !12
  %1473 = extractvalue { i32, i1 } %1471, 1, !nosanitize !12
  br i1 %1473, label %1474, label %1475, !prof !13, !nosanitize !12

1474:                                             ; preds = %1470
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1475:                                             ; preds = %1470
  %1476 = or disjoint i64 %1190, 4
  %1477 = and i64 %1476, 12
  %1478 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1477
  %1479 = load i32, ptr %1478, align 16, !tbaa !4
  %1480 = tail call i32 @llvm.fshl.i32(i32 %1479, i32 %1479, i32 25)
  %1481 = tail call i32 @llvm.fshl.i32(i32 %1479, i32 %1479, i32 14)
  %1482 = xor i32 %1480, %1481
  %1483 = lshr i32 %1479, 3
  %1484 = xor i32 %1482, %1483
  %1485 = tail call i32 @llvm.fshl.i32(i32 %1329, i32 %1329, i32 15)
  %1486 = tail call i32 @llvm.fshl.i32(i32 %1329, i32 %1329, i32 13)
  %1487 = xor i32 %1485, %1486
  %1488 = lshr i32 %1329, 10
  %1489 = xor i32 %1487, %1488
  %1490 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1484, i32 %1489), !nosanitize !12
  %1491 = extractvalue { i32, i1 } %1490, 1, !nosanitize !12
  br i1 %1491, label %1492, label %1493, !prof !13, !nosanitize !12

1492:                                             ; preds = %1475
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1493:                                             ; preds = %1475
  %1494 = extractvalue { i32, i1 } %1490, 0, !nosanitize !12
  %1495 = add nuw nsw i64 %1190, 12
  %1496 = and i64 %1495, 12
  %1497 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1496
  %1498 = load i32, ptr %1497, align 16, !tbaa !4
  %1499 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1494, i32 %1498), !nosanitize !12
  %1500 = extractvalue { i32, i1 } %1499, 1, !nosanitize !12
  br i1 %1500, label %1501, label %1502, !prof !13, !nosanitize !12

1501:                                             ; preds = %1493
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1502:                                             ; preds = %1493
  %1503 = extractvalue { i32, i1 } %1499, 0, !nosanitize !12
  %1504 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1391, i32 %1503), !nosanitize !12
  %1505 = extractvalue { i32, i1 } %1504, 0, !nosanitize !12
  %1506 = extractvalue { i32, i1 } %1504, 1, !nosanitize !12
  br i1 %1506, label %1507, label %1508, !prof !13, !nosanitize !12

1507:                                             ; preds = %1502
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1508:                                             ; preds = %1502
  store i32 %1505, ptr %1390, align 4, !tbaa !4
  %1509 = tail call i32 @llvm.fshl.i32(i32 %1467, i32 %1467, i32 26)
  %1510 = tail call i32 @llvm.fshl.i32(i32 %1467, i32 %1467, i32 21)
  %1511 = xor i32 %1509, %1510
  %1512 = tail call i32 @llvm.fshl.i32(i32 %1467, i32 %1467, i32 7)
  %1513 = xor i32 %1511, %1512
  %1514 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1192, i32 %1513), !nosanitize !12
  %1515 = extractvalue { i32, i1 } %1514, 1, !nosanitize !12
  br i1 %1515, label %1516, label %1517, !prof !13, !nosanitize !12

1516:                                             ; preds = %1508
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1517:                                             ; preds = %1508
  %1518 = extractvalue { i32, i1 } %1514, 0, !nosanitize !12
  %1519 = and i32 %1467, %1379
  %1520 = xor i32 %1467, -1
  %1521 = and i32 %1287, %1520
  %1522 = or i32 %1519, %1521
  %1523 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1518, i32 %1522), !nosanitize !12
  %1524 = extractvalue { i32, i1 } %1523, 1, !nosanitize !12
  br i1 %1524, label %1525, label %1526, !prof !13, !nosanitize !12

1525:                                             ; preds = %1517
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1526:                                             ; preds = %1517
  %1527 = extractvalue { i32, i1 } %1523, 0, !nosanitize !12
  %1528 = getelementptr inbounds nuw [4 x i8], ptr @K256, i64 %1388
  %1529 = load i32, ptr %1528, align 4, !tbaa !4
  %1530 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1527, i32 %1529), !nosanitize !12
  %1531 = extractvalue { i32, i1 } %1530, 1, !nosanitize !12
  br i1 %1531, label %1532, label %1533, !prof !13, !nosanitize !12

1532:                                             ; preds = %1526
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1533:                                             ; preds = %1526
  %1534 = extractvalue { i32, i1 } %1530, 0, !nosanitize !12
  %1535 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1505, i32 %1534), !nosanitize !12
  %1536 = extractvalue { i32, i1 } %1535, 0, !nosanitize !12
  %1537 = extractvalue { i32, i1 } %1535, 1, !nosanitize !12
  br i1 %1537, label %1538, label %1539, !prof !13, !nosanitize !12

1538:                                             ; preds = %1533
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1539:                                             ; preds = %1533
  %1540 = tail call i32 @llvm.fshl.i32(i32 %1472, i32 %1472, i32 30)
  %1541 = tail call i32 @llvm.fshl.i32(i32 %1472, i32 %1472, i32 19)
  %1542 = xor i32 %1540, %1541
  %1543 = tail call i32 @llvm.fshl.i32(i32 %1472, i32 %1472, i32 10)
  %1544 = xor i32 %1542, %1543
  %1545 = and i32 %1472, %1384
  %1546 = xor i32 %1384, %1292
  %1547 = and i32 %1472, %1546
  %1548 = xor i32 %1547, %1457
  %1549 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1544, i32 %1548), !nosanitize !12
  %1550 = extractvalue { i32, i1 } %1549, 0, !nosanitize !12
  %1551 = extractvalue { i32, i1 } %1549, 1, !nosanitize !12
  br i1 %1551, label %1552, label %1553, !prof !13, !nosanitize !12

1552:                                             ; preds = %1539
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1553:                                             ; preds = %1539
  %1554 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1191, i32 %1536), !nosanitize !12
  %1555 = extractvalue { i32, i1 } %1554, 0, !nosanitize !12
  %1556 = extractvalue { i32, i1 } %1554, 1, !nosanitize !12
  br i1 %1556, label %1557, label %1558, !prof !13, !nosanitize !12

1557:                                             ; preds = %1553
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1558:                                             ; preds = %1553
  %1559 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1550, i32 %1536), !nosanitize !12
  %1560 = extractvalue { i32, i1 } %1559, 0, !nosanitize !12
  %1561 = extractvalue { i32, i1 } %1559, 1, !nosanitize !12
  br i1 %1561, label %1562, label %1563, !prof !13, !nosanitize !12

1562:                                             ; preds = %1558
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1563:                                             ; preds = %1558
  %1564 = or disjoint i64 %1190, 5
  %1565 = and i64 %1564, 13
  %1566 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1565
  %1567 = load i32, ptr %1566, align 4, !tbaa !4
  %1568 = tail call i32 @llvm.fshl.i32(i32 %1567, i32 %1567, i32 25)
  %1569 = tail call i32 @llvm.fshl.i32(i32 %1567, i32 %1567, i32 14)
  %1570 = xor i32 %1568, %1569
  %1571 = lshr i32 %1567, 3
  %1572 = xor i32 %1570, %1571
  %1573 = tail call i32 @llvm.fshl.i32(i32 %1417, i32 %1417, i32 15)
  %1574 = tail call i32 @llvm.fshl.i32(i32 %1417, i32 %1417, i32 13)
  %1575 = xor i32 %1573, %1574
  %1576 = lshr i32 %1417, 10
  %1577 = xor i32 %1575, %1576
  %1578 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1572, i32 %1577), !nosanitize !12
  %1579 = extractvalue { i32, i1 } %1578, 1, !nosanitize !12
  br i1 %1579, label %1580, label %1581, !prof !13, !nosanitize !12

1580:                                             ; preds = %1563
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1581:                                             ; preds = %1563
  %1582 = extractvalue { i32, i1 } %1578, 0, !nosanitize !12
  %1583 = add nuw nsw i64 %1190, 13
  %1584 = and i64 %1583, 13
  %1585 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1584
  %1586 = load i32, ptr %1585, align 4, !tbaa !4
  %1587 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1582, i32 %1586), !nosanitize !12
  %1588 = extractvalue { i32, i1 } %1587, 1, !nosanitize !12
  br i1 %1588, label %1589, label %1590, !prof !13, !nosanitize !12

1589:                                             ; preds = %1581
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1590:                                             ; preds = %1581
  %1591 = extractvalue { i32, i1 } %1587, 0, !nosanitize !12
  %1592 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1479, i32 %1591), !nosanitize !12
  %1593 = extractvalue { i32, i1 } %1592, 0, !nosanitize !12
  %1594 = extractvalue { i32, i1 } %1592, 1, !nosanitize !12
  br i1 %1594, label %1595, label %1596, !prof !13, !nosanitize !12

1595:                                             ; preds = %1590
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1596:                                             ; preds = %1590
  store i32 %1593, ptr %1478, align 16, !tbaa !4
  %1597 = tail call i32 @llvm.fshl.i32(i32 %1555, i32 %1555, i32 26)
  %1598 = tail call i32 @llvm.fshl.i32(i32 %1555, i32 %1555, i32 21)
  %1599 = xor i32 %1597, %1598
  %1600 = tail call i32 @llvm.fshl.i32(i32 %1555, i32 %1555, i32 7)
  %1601 = xor i32 %1599, %1600
  %1602 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1287, i32 %1601), !nosanitize !12
  %1603 = extractvalue { i32, i1 } %1602, 1, !nosanitize !12
  br i1 %1603, label %1604, label %1605, !prof !13, !nosanitize !12

1604:                                             ; preds = %1596
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1605:                                             ; preds = %1596
  %1606 = extractvalue { i32, i1 } %1602, 0, !nosanitize !12
  %1607 = and i32 %1555, %1467
  %1608 = xor i32 %1555, -1
  %1609 = and i32 %1379, %1608
  %1610 = or i32 %1607, %1609
  %1611 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1606, i32 %1610), !nosanitize !12
  %1612 = extractvalue { i32, i1 } %1611, 1, !nosanitize !12
  br i1 %1612, label %1613, label %1614, !prof !13, !nosanitize !12

1613:                                             ; preds = %1605
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1614:                                             ; preds = %1605
  %1615 = extractvalue { i32, i1 } %1611, 0, !nosanitize !12
  %1616 = getelementptr inbounds nuw [4 x i8], ptr @K256, i64 %1476
  %1617 = load i32, ptr %1616, align 16, !tbaa !4
  %1618 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1615, i32 %1617), !nosanitize !12
  %1619 = extractvalue { i32, i1 } %1618, 1, !nosanitize !12
  br i1 %1619, label %1620, label %1621, !prof !13, !nosanitize !12

1620:                                             ; preds = %1614
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1621:                                             ; preds = %1614
  %1622 = extractvalue { i32, i1 } %1618, 0, !nosanitize !12
  %1623 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1593, i32 %1622), !nosanitize !12
  %1624 = extractvalue { i32, i1 } %1623, 0, !nosanitize !12
  %1625 = extractvalue { i32, i1 } %1623, 1, !nosanitize !12
  br i1 %1625, label %1626, label %1627, !prof !13, !nosanitize !12

1626:                                             ; preds = %1621
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1627:                                             ; preds = %1621
  %1628 = tail call i32 @llvm.fshl.i32(i32 %1560, i32 %1560, i32 30)
  %1629 = tail call i32 @llvm.fshl.i32(i32 %1560, i32 %1560, i32 19)
  %1630 = xor i32 %1628, %1629
  %1631 = tail call i32 @llvm.fshl.i32(i32 %1560, i32 %1560, i32 10)
  %1632 = xor i32 %1630, %1631
  %1633 = and i32 %1560, %1472
  %1634 = xor i32 %1472, %1384
  %1635 = and i32 %1560, %1634
  %1636 = xor i32 %1635, %1545
  %1637 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1632, i32 %1636), !nosanitize !12
  %1638 = extractvalue { i32, i1 } %1637, 0, !nosanitize !12
  %1639 = extractvalue { i32, i1 } %1637, 1, !nosanitize !12
  br i1 %1639, label %1640, label %1641, !prof !13, !nosanitize !12

1640:                                             ; preds = %1627
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1641:                                             ; preds = %1627
  %1642 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1292, i32 %1624), !nosanitize !12
  %1643 = extractvalue { i32, i1 } %1642, 0, !nosanitize !12
  %1644 = extractvalue { i32, i1 } %1642, 1, !nosanitize !12
  br i1 %1644, label %1645, label %1646, !prof !13, !nosanitize !12

1645:                                             ; preds = %1641
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1646:                                             ; preds = %1641
  %1647 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1638, i32 %1624), !nosanitize !12
  %1648 = extractvalue { i32, i1 } %1647, 0, !nosanitize !12
  %1649 = extractvalue { i32, i1 } %1647, 1, !nosanitize !12
  br i1 %1649, label %1650, label %1651, !prof !13, !nosanitize !12

1650:                                             ; preds = %1646
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1651:                                             ; preds = %1646
  %1652 = or disjoint i64 %1190, 6
  %1653 = and i64 %1652, 14
  %1654 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1653
  %1655 = load i32, ptr %1654, align 8, !tbaa !4
  %1656 = tail call i32 @llvm.fshl.i32(i32 %1655, i32 %1655, i32 25)
  %1657 = tail call i32 @llvm.fshl.i32(i32 %1655, i32 %1655, i32 14)
  %1658 = xor i32 %1656, %1657
  %1659 = lshr i32 %1655, 3
  %1660 = xor i32 %1658, %1659
  %1661 = tail call i32 @llvm.fshl.i32(i32 %1505, i32 %1505, i32 15)
  %1662 = tail call i32 @llvm.fshl.i32(i32 %1505, i32 %1505, i32 13)
  %1663 = xor i32 %1661, %1662
  %1664 = lshr i32 %1505, 10
  %1665 = xor i32 %1663, %1664
  %1666 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1660, i32 %1665), !nosanitize !12
  %1667 = extractvalue { i32, i1 } %1666, 1, !nosanitize !12
  br i1 %1667, label %1668, label %1669, !prof !13, !nosanitize !12

1668:                                             ; preds = %1651
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1669:                                             ; preds = %1651
  %1670 = extractvalue { i32, i1 } %1666, 0, !nosanitize !12
  %1671 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1670, i32 %1211), !nosanitize !12
  %1672 = extractvalue { i32, i1 } %1671, 1, !nosanitize !12
  br i1 %1672, label %1673, label %1674, !prof !13, !nosanitize !12

1673:                                             ; preds = %1669
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1674:                                             ; preds = %1669
  %1675 = extractvalue { i32, i1 } %1671, 0, !nosanitize !12
  %1676 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1567, i32 %1675), !nosanitize !12
  %1677 = extractvalue { i32, i1 } %1676, 0, !nosanitize !12
  %1678 = extractvalue { i32, i1 } %1676, 1, !nosanitize !12
  br i1 %1678, label %1679, label %1680, !prof !13, !nosanitize !12

1679:                                             ; preds = %1674
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1680:                                             ; preds = %1674
  store i32 %1677, ptr %1566, align 4, !tbaa !4
  %1681 = tail call i32 @llvm.fshl.i32(i32 %1643, i32 %1643, i32 26)
  %1682 = tail call i32 @llvm.fshl.i32(i32 %1643, i32 %1643, i32 21)
  %1683 = xor i32 %1681, %1682
  %1684 = tail call i32 @llvm.fshl.i32(i32 %1643, i32 %1643, i32 7)
  %1685 = xor i32 %1683, %1684
  %1686 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1379, i32 %1685), !nosanitize !12
  %1687 = extractvalue { i32, i1 } %1686, 1, !nosanitize !12
  br i1 %1687, label %1688, label %1689, !prof !13, !nosanitize !12

1688:                                             ; preds = %1680
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1689:                                             ; preds = %1680
  %1690 = extractvalue { i32, i1 } %1686, 0, !nosanitize !12
  %1691 = and i32 %1643, %1555
  %1692 = xor i32 %1643, -1
  %1693 = and i32 %1467, %1692
  %1694 = or i32 %1691, %1693
  %1695 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1690, i32 %1694), !nosanitize !12
  %1696 = extractvalue { i32, i1 } %1695, 1, !nosanitize !12
  br i1 %1696, label %1697, label %1698, !prof !13, !nosanitize !12

1697:                                             ; preds = %1689
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1698:                                             ; preds = %1689
  %1699 = extractvalue { i32, i1 } %1695, 0, !nosanitize !12
  %1700 = getelementptr inbounds nuw [4 x i8], ptr @K256, i64 %1564
  %1701 = load i32, ptr %1700, align 4, !tbaa !4
  %1702 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1699, i32 %1701), !nosanitize !12
  %1703 = extractvalue { i32, i1 } %1702, 1, !nosanitize !12
  br i1 %1703, label %1704, label %1705, !prof !13, !nosanitize !12

1704:                                             ; preds = %1698
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1705:                                             ; preds = %1698
  %1706 = extractvalue { i32, i1 } %1702, 0, !nosanitize !12
  %1707 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1677, i32 %1706), !nosanitize !12
  %1708 = extractvalue { i32, i1 } %1707, 0, !nosanitize !12
  %1709 = extractvalue { i32, i1 } %1707, 1, !nosanitize !12
  br i1 %1709, label %1710, label %1711, !prof !13, !nosanitize !12

1710:                                             ; preds = %1705
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1711:                                             ; preds = %1705
  %1712 = tail call i32 @llvm.fshl.i32(i32 %1648, i32 %1648, i32 30)
  %1713 = tail call i32 @llvm.fshl.i32(i32 %1648, i32 %1648, i32 19)
  %1714 = xor i32 %1712, %1713
  %1715 = tail call i32 @llvm.fshl.i32(i32 %1648, i32 %1648, i32 10)
  %1716 = xor i32 %1714, %1715
  %1717 = and i32 %1648, %1560
  %1718 = xor i32 %1560, %1472
  %1719 = and i32 %1648, %1718
  %1720 = xor i32 %1719, %1633
  %1721 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1716, i32 %1720), !nosanitize !12
  %1722 = extractvalue { i32, i1 } %1721, 0, !nosanitize !12
  %1723 = extractvalue { i32, i1 } %1721, 1, !nosanitize !12
  br i1 %1723, label %1724, label %1725, !prof !13, !nosanitize !12

1724:                                             ; preds = %1711
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1725:                                             ; preds = %1711
  %1726 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1384, i32 %1708), !nosanitize !12
  %1727 = extractvalue { i32, i1 } %1726, 0, !nosanitize !12
  %1728 = extractvalue { i32, i1 } %1726, 1, !nosanitize !12
  br i1 %1728, label %1729, label %1730, !prof !13, !nosanitize !12

1729:                                             ; preds = %1725
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1730:                                             ; preds = %1725
  %1731 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1722, i32 %1708), !nosanitize !12
  %1732 = extractvalue { i32, i1 } %1731, 0, !nosanitize !12
  %1733 = extractvalue { i32, i1 } %1731, 1, !nosanitize !12
  br i1 %1733, label %1734, label %1735, !prof !13, !nosanitize !12

1734:                                             ; preds = %1730
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1735:                                             ; preds = %1730
  %1736 = or disjoint i64 %1190, 7
  %1737 = and i64 %1736, 15
  %1738 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1737
  %1739 = load i32, ptr %1738, align 4, !tbaa !4
  %1740 = tail call i32 @llvm.fshl.i32(i32 %1739, i32 %1739, i32 25)
  %1741 = tail call i32 @llvm.fshl.i32(i32 %1739, i32 %1739, i32 14)
  %1742 = xor i32 %1740, %1741
  %1743 = lshr i32 %1739, 3
  %1744 = xor i32 %1742, %1743
  %1745 = tail call i32 @llvm.fshl.i32(i32 %1593, i32 %1593, i32 15)
  %1746 = tail call i32 @llvm.fshl.i32(i32 %1593, i32 %1593, i32 13)
  %1747 = xor i32 %1745, %1746
  %1748 = lshr i32 %1593, 10
  %1749 = xor i32 %1747, %1748
  %1750 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1744, i32 %1749), !nosanitize !12
  %1751 = extractvalue { i32, i1 } %1750, 1, !nosanitize !12
  br i1 %1751, label %1752, label %1753, !prof !13, !nosanitize !12

1752:                                             ; preds = %1735
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1753:                                             ; preds = %1735
  %1754 = extractvalue { i32, i1 } %1750, 0, !nosanitize !12
  %1755 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1754, i32 %1308), !nosanitize !12
  %1756 = extractvalue { i32, i1 } %1755, 1, !nosanitize !12
  br i1 %1756, label %1757, label %1758, !prof !13, !nosanitize !12

1757:                                             ; preds = %1753
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1758:                                             ; preds = %1753
  %1759 = extractvalue { i32, i1 } %1755, 0, !nosanitize !12
  %1760 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1655, i32 %1759), !nosanitize !12
  %1761 = extractvalue { i32, i1 } %1760, 0, !nosanitize !12
  %1762 = extractvalue { i32, i1 } %1760, 1, !nosanitize !12
  br i1 %1762, label %1763, label %1764, !prof !13, !nosanitize !12

1763:                                             ; preds = %1758
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1764:                                             ; preds = %1758
  store i32 %1761, ptr %1654, align 8, !tbaa !4
  %1765 = tail call i32 @llvm.fshl.i32(i32 %1727, i32 %1727, i32 26)
  %1766 = tail call i32 @llvm.fshl.i32(i32 %1727, i32 %1727, i32 21)
  %1767 = xor i32 %1765, %1766
  %1768 = tail call i32 @llvm.fshl.i32(i32 %1727, i32 %1727, i32 7)
  %1769 = xor i32 %1767, %1768
  %1770 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1467, i32 %1769), !nosanitize !12
  %1771 = extractvalue { i32, i1 } %1770, 1, !nosanitize !12
  br i1 %1771, label %1772, label %1773, !prof !13, !nosanitize !12

1772:                                             ; preds = %1764
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1773:                                             ; preds = %1764
  %1774 = extractvalue { i32, i1 } %1770, 0, !nosanitize !12
  %1775 = and i32 %1727, %1643
  %1776 = xor i32 %1727, -1
  %1777 = and i32 %1555, %1776
  %1778 = or i32 %1775, %1777
  %1779 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1774, i32 %1778), !nosanitize !12
  %1780 = extractvalue { i32, i1 } %1779, 1, !nosanitize !12
  br i1 %1780, label %1781, label %1782, !prof !13, !nosanitize !12

1781:                                             ; preds = %1773
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1782:                                             ; preds = %1773
  %1783 = extractvalue { i32, i1 } %1779, 0, !nosanitize !12
  %1784 = getelementptr inbounds nuw [4 x i8], ptr @K256, i64 %1652
  %1785 = load i32, ptr %1784, align 8, !tbaa !4
  %1786 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1783, i32 %1785), !nosanitize !12
  %1787 = extractvalue { i32, i1 } %1786, 1, !nosanitize !12
  br i1 %1787, label %1788, label %1789, !prof !13, !nosanitize !12

1788:                                             ; preds = %1782
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1789:                                             ; preds = %1782
  %1790 = extractvalue { i32, i1 } %1786, 0, !nosanitize !12
  %1791 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1761, i32 %1790), !nosanitize !12
  %1792 = extractvalue { i32, i1 } %1791, 0, !nosanitize !12
  %1793 = extractvalue { i32, i1 } %1791, 1, !nosanitize !12
  br i1 %1793, label %1794, label %1795, !prof !13, !nosanitize !12

1794:                                             ; preds = %1789
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1795:                                             ; preds = %1789
  %1796 = tail call i32 @llvm.fshl.i32(i32 %1732, i32 %1732, i32 30)
  %1797 = tail call i32 @llvm.fshl.i32(i32 %1732, i32 %1732, i32 19)
  %1798 = xor i32 %1796, %1797
  %1799 = tail call i32 @llvm.fshl.i32(i32 %1732, i32 %1732, i32 10)
  %1800 = xor i32 %1798, %1799
  %1801 = and i32 %1732, %1648
  %1802 = xor i32 %1648, %1560
  %1803 = and i32 %1732, %1802
  %1804 = xor i32 %1803, %1717
  %1805 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1800, i32 %1804), !nosanitize !12
  %1806 = extractvalue { i32, i1 } %1805, 0, !nosanitize !12
  %1807 = extractvalue { i32, i1 } %1805, 1, !nosanitize !12
  br i1 %1807, label %1808, label %1809, !prof !13, !nosanitize !12

1808:                                             ; preds = %1795
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1809:                                             ; preds = %1795
  %1810 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1472, i32 %1792), !nosanitize !12
  %1811 = extractvalue { i32, i1 } %1810, 0, !nosanitize !12
  %1812 = extractvalue { i32, i1 } %1810, 1, !nosanitize !12
  br i1 %1812, label %1813, label %1814, !prof !13, !nosanitize !12

1813:                                             ; preds = %1809
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1814:                                             ; preds = %1809
  %1815 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1806, i32 %1792), !nosanitize !12
  %1816 = extractvalue { i32, i1 } %1815, 0, !nosanitize !12
  %1817 = extractvalue { i32, i1 } %1815, 1, !nosanitize !12
  br i1 %1817, label %1818, label %1819, !prof !13, !nosanitize !12

1818:                                             ; preds = %1814
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1819:                                             ; preds = %1814
  %1820 = xor i64 %1231, 8
  %1821 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %1820
  %1822 = load i32, ptr %1821, align 16, !tbaa !4
  %1823 = tail call i32 @llvm.fshl.i32(i32 %1822, i32 %1822, i32 25)
  %1824 = tail call i32 @llvm.fshl.i32(i32 %1822, i32 %1822, i32 14)
  %1825 = xor i32 %1823, %1824
  %1826 = lshr i32 %1822, 3
  %1827 = xor i32 %1825, %1826
  %1828 = tail call i32 @llvm.fshl.i32(i32 %1677, i32 %1677, i32 15)
  %1829 = tail call i32 @llvm.fshl.i32(i32 %1677, i32 %1677, i32 13)
  %1830 = xor i32 %1828, %1829
  %1831 = lshr i32 %1677, 10
  %1832 = xor i32 %1830, %1831
  %1833 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1827, i32 %1832), !nosanitize !12
  %1834 = extractvalue { i32, i1 } %1833, 1, !nosanitize !12
  br i1 %1834, label %1835, label %1836, !prof !13, !nosanitize !12

1835:                                             ; preds = %1819
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1836:                                             ; preds = %1819
  %1837 = extractvalue { i32, i1 } %1833, 0, !nosanitize !12
  %1838 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1837, i32 %1236), !nosanitize !12
  %1839 = extractvalue { i32, i1 } %1838, 1, !nosanitize !12
  br i1 %1839, label %1840, label %1841, !prof !13, !nosanitize !12

1840:                                             ; preds = %1836
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1841:                                             ; preds = %1836
  %1842 = extractvalue { i32, i1 } %1838, 0, !nosanitize !12
  %1843 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1739, i32 %1842), !nosanitize !12
  %1844 = extractvalue { i32, i1 } %1843, 0, !nosanitize !12
  %1845 = extractvalue { i32, i1 } %1843, 1, !nosanitize !12
  br i1 %1845, label %1846, label %1847, !prof !13, !nosanitize !12

1846:                                             ; preds = %1841
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1847:                                             ; preds = %1841
  store i32 %1844, ptr %1738, align 4, !tbaa !4
  %1848 = tail call i32 @llvm.fshl.i32(i32 %1811, i32 %1811, i32 26)
  %1849 = tail call i32 @llvm.fshl.i32(i32 %1811, i32 %1811, i32 21)
  %1850 = xor i32 %1848, %1849
  %1851 = tail call i32 @llvm.fshl.i32(i32 %1811, i32 %1811, i32 7)
  %1852 = xor i32 %1850, %1851
  %1853 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1555, i32 %1852), !nosanitize !12
  %1854 = extractvalue { i32, i1 } %1853, 1, !nosanitize !12
  br i1 %1854, label %1855, label %1856, !prof !13, !nosanitize !12

1855:                                             ; preds = %1847
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1856:                                             ; preds = %1847
  %1857 = extractvalue { i32, i1 } %1853, 0, !nosanitize !12
  %1858 = and i32 %1811, %1727
  %1859 = xor i32 %1811, -1
  %1860 = and i32 %1643, %1859
  %1861 = or i32 %1858, %1860
  %1862 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1857, i32 %1861), !nosanitize !12
  %1863 = extractvalue { i32, i1 } %1862, 1, !nosanitize !12
  br i1 %1863, label %1864, label %1865, !prof !13, !nosanitize !12

1864:                                             ; preds = %1856
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1865:                                             ; preds = %1856
  %1866 = extractvalue { i32, i1 } %1862, 0, !nosanitize !12
  %1867 = getelementptr inbounds nuw [4 x i8], ptr @K256, i64 %1736
  %1868 = load i32, ptr %1867, align 4, !tbaa !4
  %1869 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1866, i32 %1868), !nosanitize !12
  %1870 = extractvalue { i32, i1 } %1869, 1, !nosanitize !12
  br i1 %1870, label %1871, label %1872, !prof !13, !nosanitize !12

1871:                                             ; preds = %1865
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1872:                                             ; preds = %1865
  %1873 = extractvalue { i32, i1 } %1869, 0, !nosanitize !12
  %1874 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1844, i32 %1873), !nosanitize !12
  %1875 = extractvalue { i32, i1 } %1874, 0, !nosanitize !12
  %1876 = extractvalue { i32, i1 } %1874, 1, !nosanitize !12
  br i1 %1876, label %1877, label %1878, !prof !13, !nosanitize !12

1877:                                             ; preds = %1872
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1878:                                             ; preds = %1872
  %1879 = tail call i32 @llvm.fshl.i32(i32 %1816, i32 %1816, i32 30)
  %1880 = tail call i32 @llvm.fshl.i32(i32 %1816, i32 %1816, i32 19)
  %1881 = xor i32 %1879, %1880
  %1882 = tail call i32 @llvm.fshl.i32(i32 %1816, i32 %1816, i32 10)
  %1883 = xor i32 %1881, %1882
  %1884 = xor i32 %1732, %1648
  %1885 = and i32 %1816, %1884
  %1886 = xor i32 %1885, %1801
  %1887 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1883, i32 %1886), !nosanitize !12
  %1888 = extractvalue { i32, i1 } %1887, 0, !nosanitize !12
  %1889 = extractvalue { i32, i1 } %1887, 1, !nosanitize !12
  br i1 %1889, label %1890, label %1891, !prof !13, !nosanitize !12

1890:                                             ; preds = %1878
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1891:                                             ; preds = %1878
  %1892 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1560, i32 %1875), !nosanitize !12
  %1893 = extractvalue { i32, i1 } %1892, 1, !nosanitize !12
  br i1 %1893, label %1894, label %1895, !prof !13, !nosanitize !12

1894:                                             ; preds = %1891
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1895:                                             ; preds = %1891
  %1896 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1888, i32 %1875), !nosanitize !12
  %1897 = extractvalue { i32, i1 } %1896, 1, !nosanitize !12
  br i1 %1897, label %1898, label %1184, !prof !13, !nosanitize !12

1898:                                             ; preds = %1895
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1899:                                             ; preds = %1184
  %1900 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %45, i32 %1187), !nosanitize !12
  %1901 = extractvalue { i32, i1 } %1900, 1, !nosanitize !12
  br i1 %1901, label %1902, label %1903, !prof !13, !nosanitize !12

1902:                                             ; preds = %1899
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1903:                                             ; preds = %1899
  %1904 = extractvalue { i32, i1 } %1900, 0, !nosanitize !12
  store i32 %1904, ptr %0, align 4, !tbaa !4
  %1905 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %44, i32 %1816), !nosanitize !12
  %1906 = extractvalue { i32, i1 } %1905, 1, !nosanitize !12
  br i1 %1906, label %1907, label %1908, !prof !13, !nosanitize !12

1907:                                             ; preds = %1903
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1908:                                             ; preds = %1903
  %1909 = extractvalue { i32, i1 } %1905, 0, !nosanitize !12
  store i32 %1909, ptr %6, align 4, !tbaa !4
  %1910 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %43, i32 %1732), !nosanitize !12
  %1911 = extractvalue { i32, i1 } %1910, 1, !nosanitize !12
  br i1 %1911, label %1912, label %1913, !prof !13, !nosanitize !12

1912:                                             ; preds = %1908
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1913:                                             ; preds = %1908
  %1914 = extractvalue { i32, i1 } %1910, 0, !nosanitize !12
  store i32 %1914, ptr %7, align 4, !tbaa !4
  %1915 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %42, i32 %1648), !nosanitize !12
  %1916 = extractvalue { i32, i1 } %1915, 1, !nosanitize !12
  br i1 %1916, label %1917, label %1918, !prof !13, !nosanitize !12

1917:                                             ; preds = %1913
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1918:                                             ; preds = %1913
  %1919 = extractvalue { i32, i1 } %1915, 0, !nosanitize !12
  store i32 %1919, ptr %8, align 4, !tbaa !4
  %1920 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %41, i32 %1186), !nosanitize !12
  %1921 = extractvalue { i32, i1 } %1920, 1, !nosanitize !12
  br i1 %1921, label %1922, label %1923, !prof !13, !nosanitize !12

1922:                                             ; preds = %1918
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1923:                                             ; preds = %1918
  %1924 = extractvalue { i32, i1 } %1920, 0, !nosanitize !12
  store i32 %1924, ptr %9, align 4, !tbaa !4
  %1925 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %40, i32 %1811), !nosanitize !12
  %1926 = extractvalue { i32, i1 } %1925, 1, !nosanitize !12
  br i1 %1926, label %1927, label %1928, !prof !13, !nosanitize !12

1927:                                             ; preds = %1923
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1928:                                             ; preds = %1923
  %1929 = extractvalue { i32, i1 } %1925, 0, !nosanitize !12
  store i32 %1929, ptr %10, align 4, !tbaa !4
  %1930 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %39, i32 %1727), !nosanitize !12
  %1931 = extractvalue { i32, i1 } %1930, 1, !nosanitize !12
  br i1 %1931, label %1932, label %1933, !prof !13, !nosanitize !12

1932:                                             ; preds = %1928
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1933:                                             ; preds = %1928
  %1934 = extractvalue { i32, i1 } %1930, 0, !nosanitize !12
  store i32 %1934, ptr %11, align 4, !tbaa !4
  %1935 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %38, i32 %1643), !nosanitize !12
  %1936 = extractvalue { i32, i1 } %1935, 1, !nosanitize !12
  br i1 %1936, label %1937, label %1938, !prof !13, !nosanitize !12

1937:                                             ; preds = %1933
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !12
  unreachable, !nosanitize !12

1938:                                             ; preds = %1933
  %1939 = extractvalue { i32, i1 } %1935, 0, !nosanitize !12
  store i32 %1939, ptr %12, align 4, !tbaa !4
  %1940 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %46, i64 1), !nosanitize !12
  %1941 = extractvalue { i64, i1 } %1940, 0, !nosanitize !12
  %1942 = extractvalue { i64, i1 } %1940, 1, !nosanitize !12
  br i1 %1942, label %36, label %37, !prof !19, !llvm.loop !20, !nosanitize !12
}

; Function Attrs: noreturn nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local void @SHA256_Transform(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
  tail call fastcc void @sha256_block_data_order(ptr noundef %0, ptr noundef %1, i64 noundef 1)
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nomerge noreturn nounwind }
attributes #9 = { nounwind }

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
!8 = !{!9, !5, i64 108}
!9 = !{!"SHA256state_st", !6, i64 0, !5, i64 32, !5, i64 36, !6, i64 40, !5, i64 104, !5, i64 108}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{!9, !5, i64 32}
!12 = !{}
!13 = !{!"branch_weights", i32 1, i32 1048575}
!14 = !{!9, !5, i64 36}
!15 = !{!9, !5, i64 104}
!16 = !{!6, !6, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"branch_weights", i32 127, i32 134217473}
!20 = distinct !{!20, !18}
