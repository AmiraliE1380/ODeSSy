; ModuleID = 'results/static/guard_ablation_0927/Swift_nbody/tag.ll'
source_filename = "results/static/guard_ablation_0927/ir/nbody.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TSi = type <{ i64 }>
%struct._SwiftEmptyArrayStorage = type { %struct.HeapObject, %struct._SwiftArrayBodyStorage }
%struct.HeapObject = type { ptr, %struct.InlineRefCountsPlaceholder }
%struct.InlineRefCountsPlaceholder = type { i64 }
%struct._SwiftArrayBodyStorage = type { i64, i64 }
%TSa = type <{ %Ts22_ContiguousArrayBufferV }>
%Ts22_ContiguousArrayBufferV = type <{ ptr }>
%TSd = type <{ double }>
%swift.type_descriptor = type opaque
%Ts23_ContiguousArrayStorageCySdG_tailelems0c = type { [1 x i64], %Ts23_ContiguousArrayStorageCySdG_tailelems0 }
%Ts23_ContiguousArrayStorageCySdG_tailelems0 = type <{ %swift.refcounted, %Ts10_ArrayBodyV, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd }>
%swift.refcounted = type { ptr, i64 }
%Ts10_ArrayBodyV = type <{ %TSo22_SwiftArrayBodyStorageV }>
%TSo22_SwiftArrayBodyStorageV = type <{ %TSi, %TSu }>
%TSu = type <{ i64 }>
%Ts23_ContiguousArrayStorageCySdG_tailelems1c = type { [1 x i64], %Ts23_ContiguousArrayStorageCySdG_tailelems1 }
%Ts23_ContiguousArrayStorageCySdG_tailelems1 = type <{ %swift.refcounted, %Ts10_ArrayBodyV, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd }>
%Ts23_ContiguousArrayStorageCySdG_tailelems2c = type { [1 x i64], %Ts23_ContiguousArrayStorageCySdG_tailelems2 }
%Ts23_ContiguousArrayStorageCySdG_tailelems2 = type <{ %swift.refcounted, %Ts10_ArrayBodyV, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd }>
%Ts23_ContiguousArrayStorageCySdG_tailelems3c = type { [1 x i64], %Ts23_ContiguousArrayStorageCySdG_tailelems3 }
%Ts23_ContiguousArrayStorageCySdG_tailelems3 = type <{ %swift.refcounted, %Ts10_ArrayBodyV, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd }>
%Ts23_ContiguousArrayStorageCySdG_tailelems4c = type { [1 x i64], %Ts23_ContiguousArrayStorageCySdG_tailelems4 }
%Ts23_ContiguousArrayStorageCySdG_tailelems4 = type <{ %swift.refcounted, %Ts10_ArrayBodyV, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd }>
%swift.protocol = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%swift.type = type { i64 }
%Ts6UInt64V = type <{ i64 }>
%TSS = type <{ %Ts11_StringGutsV }>
%Ts11_StringGutsV = type <{ %Ts13_StringObjectV }>
%Ts13_StringObjectV = type <{ %Ts6UInt64V, ptr }>
%Ts16IndexingIteratorVySs8UTF8ViewVG = type <{ %TSs8UTF8ViewV, %TSS5IndexV }>
%TSs8UTF8ViewV = type <{ %Ts5SliceVySS8UTF8ViewVG }>
%Ts5SliceVySS8UTF8ViewVG = type <{ %TSS5IndexV, %TSS5IndexV, %TSS8UTF8ViewV }>
%TSS8UTF8ViewV = type <{ %Ts11_StringGutsV }>
%TSS5IndexV = type <{ %Ts6UInt64V }>
%Ts5UInt8V = type <{ i8 }>

@"$s5nbody5stepsSivp" = hidden local_unnamed_addr global %TSi zeroinitializer, align 8
@"$s5nbody1nSivp" = hidden local_unnamed_addr global %TSi zeroinitializer, align 8
@_swiftEmptyArrayStorage = external global %struct._SwiftEmptyArrayStorage, align 8
@"$s5nbody2pxSaySdGvp" = hidden global %TSa zeroinitializer, align 8
@"$s5nbody2pySaySdGvp" = hidden global %TSa zeroinitializer, align 8
@"$s5nbody2pzSaySdGvp" = hidden global %TSa zeroinitializer, align 8
@"$s5nbody2vxSaySdGvp" = hidden global %TSa zeroinitializer, align 8
@"$s5nbody2vySaySdGvp" = hidden global %TSa zeroinitializer, align 8
@"$s5nbody2vzSaySdGvp" = hidden global %TSa zeroinitializer, align 8
@"$s5nbody4massSaySdGvp" = hidden global %TSa zeroinitializer, align 8
@"$s5nbody2piSdvp" = hidden local_unnamed_addr global %TSd zeroinitializer, align 8
@"$s5nbody5solarSdvp" = hidden local_unnamed_addr global %TSd zeroinitializer, align 8
@"$s5nbody3dpySdvp" = hidden local_unnamed_addr global %TSd zeroinitializer, align 8
@"$s5nbody6bodiesSaySaySdGGvp" = hidden local_unnamed_addr global %TSa zeroinitializer, align 8
@"$ss23_ContiguousArrayStorageCMn" = external global %swift.type_descriptor, align 4
@"got.$ss23_ContiguousArrayStorageCMn" = linkonce_odr hidden constant ptr @"$ss23_ContiguousArrayStorageCMn"
@"symbolic _____ySaySdGG s23_ContiguousArrayStorageC" = linkonce_odr hidden constant <{ i8, i32, [8 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [8 x i8], i8 }>, ptr @"symbolic _____ySaySdGG s23_ContiguousArrayStorageC", i32 0, i32 1) to i64)) to i32), [8 x i8] c"ySaySdGG", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCySaySdGGMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____ySaySdGG s23_ContiguousArrayStorageC" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCySaySdGGMD" to i64)) to i32), i32 -13 }, align 8
@mainTv_ = internal global %Ts23_ContiguousArrayStorageCySdG_tailelems0c { [1 x i64] zeroinitializer, %Ts23_ContiguousArrayStorageCySdG_tailelems0 <{ %swift.refcounted zeroinitializer, %Ts10_ArrayBodyV <{ %TSo22_SwiftArrayBodyStorageV <{ %TSi <{ i64 7 }>, %TSu <{ i64 14 }> }> }>, %TSd zeroinitializer, %TSd zeroinitializer, %TSd zeroinitializer, %TSd zeroinitializer, %TSd zeroinitializer, %TSd zeroinitializer, %TSd <{ double 1.000000e+00 }> }> }, align 8
@"symbolic _____ySdG s23_ContiguousArrayStorageC" = linkonce_odr hidden constant <{ i8, i32, [4 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [4 x i8], i8 }>, ptr @"symbolic _____ySdG s23_ContiguousArrayStorageC", i32 0, i32 1) to i64)) to i32), [4 x i8] c"ySdG", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCySdGMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____ySdG s23_ContiguousArrayStorageC" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCySdGMD" to i64)) to i32), i32 -9 }, align 8
@mainTv0_ = internal global %Ts23_ContiguousArrayStorageCySdG_tailelems1c { [1 x i64] zeroinitializer, %Ts23_ContiguousArrayStorageCySdG_tailelems1 <{ %swift.refcounted zeroinitializer, %Ts10_ArrayBodyV <{ %TSo22_SwiftArrayBodyStorageV <{ %TSi <{ i64 7 }>, %TSu <{ i64 14 }> }> }>, %TSd <{ double 0x40135DA0343CD92C }>, %TSd <{ double 0xBFF290ABC01FDB7C }>, %TSd <{ double 0xBFBA86F96C25EBF0 }>, %TSd <{ double 0x3F5B32DDB8EC9209 }>, %TSd <{ double 0x3F7F88FF93F670B6 }>, %TSd <{ double 0xBF12199946DEBD80 }>, %TSd <{ double 0x3F4F49601333C135 }> }> }, align 8
@mainTv1_ = internal global %Ts23_ContiguousArrayStorageCySdG_tailelems2c { [1 x i64] zeroinitializer, %Ts23_ContiguousArrayStorageCySdG_tailelems2 <{ %swift.refcounted zeroinitializer, %Ts10_ArrayBodyV <{ %TSo22_SwiftArrayBodyStorageV <{ %TSi <{ i64 7 }>, %TSu <{ i64 14 }> }> }>, %TSd <{ double 0x4020AFCDC332CA67 }>, %TSd <{ double 0x40107FCB31DE01B0 }>, %TSd <{ double 0xBFD9D353E1EB467C }>, %TSd <{ double 0xBF66ABB60A8E1D76 }>, %TSd <{ double 0x3F747956257578B8 }>, %TSd <{ double 0x3EF829379CAD4AC0 }>, %TSd <{ double 0x3F32BC5EEFF5E6F8 }> }> }, align 8
@mainTv2_ = internal global %Ts23_ContiguousArrayStorageCySdG_tailelems3c { [1 x i64] zeroinitializer, %Ts23_ContiguousArrayStorageCySdG_tailelems3 <{ %swift.refcounted zeroinitializer, %Ts10_ArrayBodyV <{ %TSo22_SwiftArrayBodyStorageV <{ %TSi <{ i64 7 }>, %TSu <{ i64 14 }> }> }>, %TSd <{ double 0x4029C9EACEA7D9CF }>, %TSd <{ double 0xC02E38E8D626667E }>, %TSd <{ double 0xBFCC9557BE257DA0 }>, %TSd <{ double 0x3F6849383E87D954 }>, %TSd <{ double 0x3F637C044AC0ACE1 }>, %TSd <{ double 0xBEFF1983FEDBFAA0 }>, %TSd <{ double 0x3F06E44607A13BD6 }> }> }, align 8
@mainTv3_ = internal global %Ts23_ContiguousArrayStorageCySdG_tailelems4c { [1 x i64] zeroinitializer, %Ts23_ContiguousArrayStorageCySdG_tailelems4 <{ %swift.refcounted zeroinitializer, %Ts10_ArrayBodyV <{ %TSo22_SwiftArrayBodyStorageV <{ %TSi <{ i64 7 }>, %TSu <{ i64 14 }> }> }>, %TSd <{ double 0x402EC267A905572A }>, %TSd <{ double 0xC039EB5833C8A220 }>, %TSd <{ double 0x3FC6F1F393ABE540 }>, %TSd <{ double 0x3F65F5C9E51B4320 }>, %TSd <{ double 0x3F5AAD5736999D88 }>, %TSd <{ double 0xBF18F2070B7F9750 }>, %TSd <{ double 0x3F0B0213CA2D0EEC }> }> }, align 8
@"$s5nbody3mpxSdvp" = hidden local_unnamed_addr global %TSd zeroinitializer, align 8
@"$s5nbody3mpySdvp" = hidden local_unnamed_addr global %TSd zeroinitializer, align 8
@"$s5nbody3mpzSdvp" = hidden local_unnamed_addr global %TSd zeroinitializer, align 8
@"$s5nbody2dtSdvp" = hidden local_unnamed_addr global %TSd zeroinitializer, align 8
@"$s5nbody1eSdvp" = hidden local_unnamed_addr global %TSd zeroinitializer, align 8
@"symbolic _____yypG s23_ContiguousArrayStorageC" = linkonce_odr hidden constant <{ i8, i32, [4 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [4 x i8], i8 }>, ptr @"symbolic _____yypG s23_ContiguousArrayStorageC", i32 0, i32 1) to i64)) to i32), [4 x i8] c"yypG", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCyypGMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____yypG s23_ContiguousArrayStorageC" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCyypGMD" to i64)) to i32), i32 -9 }, align 8
@"$ss7CVarArgMp" = external global %swift.protocol, align 4
@"got.$ss7CVarArgMp" = linkonce_odr hidden constant ptr @"$ss7CVarArgMp"
@"symbolic _____y______pG s23_ContiguousArrayStorageC s7CVarArgP" = linkonce_odr hidden constant <{ i8, i32, [1 x i8], i8, i32, [3 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [3 x i8], i8 }>, ptr @"symbolic _____y______pG s23_ContiguousArrayStorageC s7CVarArgP", i32 0, i32 1) to i64)) to i32), [1 x i8] c"y", i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss7CVarArgMp" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [3 x i8], i8 }>, ptr @"symbolic _____y______pG s23_ContiguousArrayStorageC s7CVarArgP", i32 0, i32 4) to i64)) to i32), [3 x i8] c"_pG", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCys7CVarArg_pGMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____y______pG s23_ContiguousArrayStorageC s7CVarArgP" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCys7CVarArg_pGMD" to i64)) to i32), i32 -14 }, align 8
@"$sSdN" = external global %swift.type, align 8
@"$sSds7CVarArgsWP" = external global ptr, align 8
@"symbolic ______p s7CVarArgP" = linkonce_odr hidden constant <{ i8, i32, [2 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss7CVarArgMp" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [2 x i8], i8 }>, ptr @"symbolic ______p s7CVarArgP", i32 0, i32 1) to i64)) to i32), [2 x i8] c"_p", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$ss7CVarArg_pMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic ______p s7CVarArgP" to i64), i64 ptrtoint (ptr @"$ss7CVarArg_pMD" to i64)) to i32), i32 -7 }, align 8
@"$sSSN" = external global %swift.type, align 8
@"\01l_entry_point" = private constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @main to i64), i64 ptrtoint (ptr @"\01l_entry_point" to i64)) to i32), i32 0 }, section "swift5_entry", align 4
@"$sSSs25LosslessStringConvertiblesWP" = external global ptr, align 8
@"$sSSSTsWP" = external global ptr, align 8
@"$ss5UInt8VMn" = external global %swift.type_descriptor, align 4
@"got.$ss5UInt8VMn" = linkonce_odr hidden constant ptr @"$ss5UInt8VMn"
@"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V" = linkonce_odr hidden constant <{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V", i32 0, i32 1) to i64)) to i32), [1 x i8] c"y", i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss5UInt8VMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V", i32 0, i32 4) to i64)) to i32), [1 x i8] c"G", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCys5UInt8VGMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCys5UInt8VGMD" to i64)) to i32), i32 -12 }, align 8
@__swift_reflection_version = linkonce_odr hidden constant i16 3
@_swift1_autolink_entries = private constant [228 x i8] c"-lFoundation\00-lswiftCore\00-lswift_StringProcessing\00-lswift_RegexParser\00-lswift_Concurrency\00-lswiftGlibc\00-lm\00-lpthread\00-lutil\00-ldl\00-lFoundationInternationalization\00-lFoundationEssentials\00-lswiftDispatch\00-ldispatch\00-lBlocksRuntime\00", section ".swift1_autolink_entries", no_sanitize_address, align 8
@llvm.used = appending global [4 x ptr] [ptr @"\01l_entry_point", ptr @__swift_reflection_version, ptr @_swift1_autolink_entries, ptr @main], section "llvm.metadata"

define protected noundef i32 @main(i32 %0, ptr readnone captures(none) %1) #0 {
entry:
  %access-scratch = alloca [24 x i8], align 8
  %access-scratch14 = alloca [24 x i8], align 8
  %access-scratch21 = alloca [24 x i8], align 8
  %access-scratch28 = alloca [24 x i8], align 8
  %access-scratch35 = alloca [24 x i8], align 8
  %access-scratch42 = alloca [24 x i8], align 8
  %access-scratch49 = alloca [24 x i8], align 8
  %access-scratch56 = alloca [24 x i8], align 8
  %access-scratch59 = alloca [24 x i8], align 8
  %access-scratch60 = alloca [24 x i8], align 8
  %access-scratch61 = alloca [24 x i8], align 8
  %access-scratch62 = alloca [24 x i8], align 8
  %access-scratch71 = alloca [24 x i8], align 8
  %access-scratch74 = alloca [24 x i8], align 8
  %access-scratch77 = alloca [24 x i8], align 8
  %access-scratch80 = alloca [24 x i8], align 8
  %access-scratch81 = alloca [24 x i8], align 8
  %access-scratch82 = alloca [24 x i8], align 8
  %access-scratch94 = alloca [24 x i8], align 8
  %access-scratch100 = alloca [24 x i8], align 8
  %access-scratch106 = alloca [24 x i8], align 8
  %access-scratch112 = alloca [24 x i8], align 8
  %access-scratch118 = alloca [24 x i8], align 8
  %access-scratch124 = alloca [24 x i8], align 8
  %access-scratch130 = alloca [24 x i8], align 8
  %access-scratch136 = alloca [24 x i8], align 8
  %access-scratch142 = alloca [24 x i8], align 8
  %access-scratch146 = alloca [24 x i8], align 8
  %access-scratch155 = alloca [24 x i8], align 8
  %access-scratch156 = alloca [24 x i8], align 8
  %reference.raw226 = alloca [72 x i8], align 8
  %swifterror = alloca swifterror ptr, align 8
  store ptr null, ptr %swifterror, align 8
  %2 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %3 = tail call swiftcc ptr @"$ss11CommandLineO9argumentsSaySSGvgZ"()
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %5 = load i64, ptr %4, align 8, !range !9
  %6 = icmp samesign ult i64 %5, 2
  br i1 %6, label %odessy.chk, label %7, !prof !10

7:                                                ; preds = %entry
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %9 = load i64, ptr %8, align 8
  %._guts._object._object = getelementptr inbounds nuw i8, ptr %3, i64 56
  %10 = load ptr, ptr %._guts._object._object, align 8
  %11 = tail call ptr @swift_bridgeObjectRetain(ptr returned %10) #2
  tail call void @swift_release(ptr nonnull %3) #2
  %12 = ptrtoint ptr %10 to i64
  %13 = and i64 %12, 2305843009213693952
  %.not = icmp eq i64 %13, 0
  %14 = and i64 %9, 281474976710655
  %15 = lshr i64 %12, 56
  %16 = and i64 %15, 15
  %17 = select i1 %.not, i64 %14, i64 %16
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20, !prof !10

19:                                               ; preds = %7
  tail call void @swift_bridgeObjectRelease(ptr %10) #2
  br label %831

20:                                               ; preds = %7
  %21 = and i64 %12, 1152921504606846976
  %.not229 = icmp eq i64 %21, 0
  br i1 %.not229, label %22, label %.thread290, !prof !11

22:                                               ; preds = %20
  br i1 %.not, label %26, label %23

23:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(ptr %2)
  %.elt177 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %24 = and i64 %12, 72057594037927935
  store i64 %9, ptr %2, align 8
  store i64 %24, ptr %.elt177, align 8
  %25 = trunc i64 %9 to i8
  switch i8 %25, label %58 [
    i8 45, label %28
    i8 43, label %57
  ]

26:                                               ; preds = %22
  %27 = and i64 %9, 1152921504606846976
  %.not227 = icmp eq i64 %27, 0
  br i1 %.not227, label %102, label %99, !prof !10

28:                                               ; preds = %23
  switch i64 %16, label %29 [
    i64 0, label %905
    i64 1, label %.thread293
  ], !prof !12

29:                                               ; preds = %28
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %31 = getelementptr i8, ptr %2, i64 %16
  br label %40

.thread293:                                       ; preds = %58, %57, %28
  call void @llvm.lifetime.end.p0(ptr %2)
  br label %32

.loopexit305:                                     ; preds = %95, %90, %87, %82, %76, %71, %68, %63, %53, %48, %45, %40
  %.sroa.0.0 = phi i64 [ 0, %82 ], [ 0, %87 ], [ 0, %90 ], [ %96, %95 ], [ 0, %40 ], [ 0, %45 ], [ 0, %48 ], [ %54, %53 ], [ 0, %63 ], [ 0, %68 ], [ 0, %71 ], [ %77, %76 ]
  %.sroa.17.0 = phi i8 [ 1, %82 ], [ 1, %87 ], [ 1, %90 ], [ 0, %95 ], [ 1, %40 ], [ 1, %45 ], [ 1, %48 ], [ 0, %53 ], [ 1, %63 ], [ 1, %68 ], [ 1, %71 ], [ 0, %76 ]
  call void @llvm.lifetime.end.p0(ptr %2)
  br label %32

32:                                               ; preds = %.thread, %.loopexit305, %.thread293
  %.sroa.17.2289 = phi i8 [ %110, %.thread ], [ %.sroa.17.0, %.loopexit305 ], [ 1, %.thread293 ]
  %.sroa.0.2288 = phi i64 [ %111, %.thread ], [ %.sroa.0.0, %.loopexit305 ], [ 0, %.thread293 ]
  call void @swift_bridgeObjectRelease(ptr %10) #2
  br label %36

.thread290:                                       ; preds = %20
  %33 = tail call swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFSSSiADSSRszsAER_r0_lIetgyr_Tpq5Si_Tg5"(i64 %9, ptr %10, i64 10)
  tail call void @swift_bridgeObjectRelease(ptr %10) #2
  %34 = extractvalue { i64, i8 } %33, 0
  %35 = extractvalue { i64, i8 } %33, 1
  br label %36

36:                                               ; preds = %.thread290, %32
  %37 = phi i64 [ %34, %.thread290 ], [ %.sroa.0.2288, %32 ]
  %38 = phi i8 [ %35, %.thread290 ], [ %.sroa.17.2289, %32 ]
  %39 = icmp eq i8 %38, 1
  br i1 %39, label %odessy.chk1, label %112

40:                                               ; preds = %53, %29
  %41 = phi ptr [ %30, %29 ], [ %55, %53 ]
  %42 = phi i64 [ 0, %29 ], [ %54, %53 ]
  %43 = load i8, ptr %41, align 1
  %44 = add i8 %43, -48
  %or.cond = icmp ult i8 %44, 10
  br i1 %or.cond, label %45, label %.loopexit305, !prof !13

45:                                               ; preds = %40
  %46 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %42, i64 10)
  %47 = extractvalue { i64, i1 } %46, 1
  br i1 %47, label %.loopexit305, label %48

48:                                               ; preds = %45
  %49 = extractvalue { i64, i1 } %46, 0
  %50 = zext nneg i8 %44 to i64
  %51 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %49, i64 %50)
  %52 = extractvalue { i64, i1 } %51, 1
  br i1 %52, label %.loopexit305, label %53, !prof !10

53:                                               ; preds = %48
  %54 = extractvalue { i64, i1 } %51, 0
  %55 = getelementptr inbounds nuw i8, ptr %41, i64 1
  %56 = icmp eq ptr %55, %31
  br i1 %56, label %.loopexit305, label %40

57:                                               ; preds = %23
  switch i64 %16, label %60 [
    i64 0, label %904
    i64 1, label %.thread293
  ], !prof !12

58:                                               ; preds = %23
  %59 = icmp eq i64 %16, 0
  br i1 %59, label %.thread293, label %80, !prof !10

60:                                               ; preds = %57
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %62 = getelementptr i8, ptr %2, i64 %16
  br label %63

63:                                               ; preds = %76, %60
  %64 = phi ptr [ %61, %60 ], [ %78, %76 ]
  %65 = phi i64 [ 0, %60 ], [ %77, %76 ]
  %66 = load i8, ptr %64, align 1
  %67 = add i8 %66, -48
  %or.cond182 = icmp ult i8 %67, 10
  br i1 %or.cond182, label %68, label %.loopexit305, !prof !13

68:                                               ; preds = %63
  %69 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %65, i64 10)
  %70 = extractvalue { i64, i1 } %69, 1
  br i1 %70, label %.loopexit305, label %71

71:                                               ; preds = %68
  %72 = extractvalue { i64, i1 } %69, 0
  %73 = zext nneg i8 %67 to i64
  %74 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %72, i64 %73)
  %75 = extractvalue { i64, i1 } %74, 1
  br i1 %75, label %.loopexit305, label %76, !prof !10

76:                                               ; preds = %71
  %77 = extractvalue { i64, i1 } %74, 0
  %78 = getelementptr inbounds nuw i8, ptr %64, i64 1
  %79 = icmp eq ptr %78, %62
  br i1 %79, label %.loopexit305, label %63

80:                                               ; preds = %58
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 %16
  br label %82

82:                                               ; preds = %95, %80
  %83 = phi ptr [ %2, %80 ], [ %97, %95 ]
  %84 = phi i64 [ 0, %80 ], [ %96, %95 ]
  %85 = load i8, ptr %83, align 1
  %86 = add i8 %85, -48
  %or.cond183 = icmp ult i8 %86, 10
  br i1 %or.cond183, label %87, label %.loopexit305, !prof !13

87:                                               ; preds = %82
  %88 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %84, i64 10)
  %89 = extractvalue { i64, i1 } %88, 1
  br i1 %89, label %.loopexit305, label %90

90:                                               ; preds = %87
  %91 = extractvalue { i64, i1 } %88, 0
  %92 = zext nneg i8 %86 to i64
  %93 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %91, i64 %92)
  %94 = extractvalue { i64, i1 } %93, 1
  br i1 %94, label %.loopexit305, label %95, !prof !10

95:                                               ; preds = %90
  %96 = extractvalue { i64, i1 } %93, 0
  %97 = getelementptr inbounds nuw i8, ptr %83, i64 1
  %98 = icmp eq ptr %97, %81
  br i1 %98, label %.loopexit305, label %82

99:                                               ; preds = %26
  %100 = and i64 %12, 1152921504606846975
  %101 = add nuw nsw i64 %100, 32
  br label %.thread

102:                                              ; preds = %26
  %103 = tail call swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %9, ptr %10)
  %104 = extractvalue { i64, i64 } %103, 0
  %105 = extractvalue { i64, i64 } %103, 1
  br label %.thread

.thread:                                          ; preds = %102, %99
  %106 = phi i64 [ %104, %102 ], [ %101, %99 ]
  %107 = phi i64 [ %105, %102 ], [ %14, %99 ]
  %108 = call swiftcc { i64, i8 } @"$ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5UInt8VGXEfU_AGSiADs5Error_psAARzSSRsd__r__lIetyyrzo_Tpq5Si_Tg5"(i64 %106, i64 %107, i64 10, ptr swiftself undef, ptr noalias nonnull swifterror captures(none) dereferenceable(8) %swifterror)
  %109 = load ptr, ptr %swifterror, align 8
  %.not228 = icmp eq ptr %109, null
  tail call void @llvm.assume(i1 %.not228)
  %110 = extractvalue { i64, i8 } %108, 1
  %111 = extractvalue { i64, i8 } %108, 0
  br label %32

112:                                              ; preds = %36
  store i64 %37, ptr @"$s5nbody5stepsSivp", align 8
  store i64 5, ptr @"$s5nbody1nSivp", align 8
  %113 = call swiftcc ptr @"$sSa28_allocateBufferUninitialized15minimumCapacitys016_ContiguousArrayB0VyxGSi_tFZ"(i64 5, ptr nonnull @"$sSdN")
  %114 = getelementptr inbounds nuw i8, ptr %113, i64 16
  store i64 5, ptr %114, align 8
  %115 = getelementptr i8, ptr %113, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %115, i8 0, i64 40, i1 false)
  store ptr %113, ptr @"$s5nbody2pxSaySdGvp", align 8
  call void @llvm.lifetime.start.p0(ptr %access-scratch)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pxSaySdGvp", ptr nonnull %access-scratch, i64 0, ptr null) #2
  %116 = load ptr, ptr @"$s5nbody2pxSaySdGvp", align 8
  store ptr %116, ptr @"$s5nbody2pySaySdGvp", align 8
  store ptr %116, ptr @"$s5nbody2pzSaySdGvp", align 8
  store ptr %116, ptr @"$s5nbody2vxSaySdGvp", align 8
  store ptr %116, ptr @"$s5nbody2vySaySdGvp", align 8
  store ptr %116, ptr @"$s5nbody2vzSaySdGvp", align 8
  store ptr %116, ptr @"$s5nbody4massSaySdGvp", align 8
  store double 0x400921FB54442D18, ptr @"$s5nbody2piSdvp", align 8
  store double 0x4043BD3CC9BE45DE, ptr @"$s5nbody5solarSdvp", align 8
  store double 3.652400e+02, ptr @"$s5nbody3dpySdvp", align 8
  %117 = call ptr @swift_retain_n(ptr %116, i32 2)
  %118 = call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCySaySdGGMD") #14
  %119 = call noalias ptr @swift_allocObject(ptr %118, i64 72, i64 7) #2
  %120 = getelementptr inbounds nuw i8, ptr %119, i64 16
  store i64 5, ptr %120, align 8
  %._storage1._capacityAndFlags = getelementptr inbounds nuw i8, ptr %119, i64 24
  store i64 10, ptr %._storage1._capacityAndFlags, align 8
  %121 = getelementptr inbounds nuw i8, ptr %119, i64 32
  %122 = call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCySdGMD") #14
  %staticref = call ptr @swift_initStaticObject(ptr %122, ptr nonnull getelementptr inbounds nuw (i8, ptr @mainTv_, i64 8)) #15
  store ptr %staticref, ptr %121, align 8
  %123 = getelementptr inbounds nuw i8, ptr %119, i64 40
  %staticref2 = call ptr @swift_initStaticObject(ptr %122, ptr nonnull getelementptr inbounds nuw (i8, ptr @mainTv0_, i64 8)) #15
  store ptr %staticref2, ptr %123, align 8
  %124 = getelementptr inbounds nuw i8, ptr %119, i64 48
  %staticref4 = call ptr @swift_initStaticObject(ptr %122, ptr nonnull getelementptr inbounds nuw (i8, ptr @mainTv1_, i64 8)) #15
  store ptr %staticref4, ptr %124, align 8
  %125 = getelementptr inbounds nuw i8, ptr %119, i64 56
  %staticref6 = call ptr @swift_initStaticObject(ptr %122, ptr nonnull getelementptr inbounds nuw (i8, ptr @mainTv2_, i64 8)) #15
  store ptr %staticref6, ptr %125, align 8
  %126 = getelementptr inbounds nuw i8, ptr %119, i64 64
  %staticref8 = call ptr @swift_initStaticObject(ptr %122, ptr nonnull getelementptr inbounds nuw (i8, ptr @mainTv3_, i64 8)) #15
  store ptr %staticref8, ptr %126, align 8
  store ptr %119, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %127 = load i64, ptr @"$s5nbody1nSivp", align 8
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %odessy.chk2, label %129, !prof !10

129:                                              ; preds = %112
  %130 = icmp eq i64 %127, 0
  br i1 %130, label %.thread329, label %131

131:                                              ; preds = %129
  %132 = call ptr @swift_retain_n(ptr %116, i32 4)
  br label %165

.thread329:                                       ; preds = %129
  store double 0.000000e+00, ptr @"$s5nbody3mpxSdvp", align 8
  store double 0.000000e+00, ptr @"$s5nbody3mpySdvp", align 8
  store double 0.000000e+00, ptr @"$s5nbody3mpzSdvp", align 8
  %133 = call ptr @swift_retain_n(ptr %116, i32 4)
  br label %345

.loopexit304:                                     ; preds = %340
  %.pre = load i64, ptr @"$s5nbody1nSivp", align 8
  store double 0.000000e+00, ptr @"$s5nbody3mpxSdvp", align 8
  store double 0.000000e+00, ptr @"$s5nbody3mpySdvp", align 8
  store double 0.000000e+00, ptr @"$s5nbody3mpzSdvp", align 8
  %134 = icmp slt i64 %.pre, 0
  br i1 %134, label %odessy.chk24, label %135, !prof !14

135:                                              ; preds = %.loopexit304
  %136 = icmp eq i64 %.pre, 0
  br i1 %136, label %345, label %137

137:                                              ; preds = %135
  call void @llvm.lifetime.start.p0(ptr %access-scratch59)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vxSaySdGvp", ptr nonnull %access-scratch59, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr %access-scratch60)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody4massSaySdGvp", ptr nonnull %access-scratch60, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr %access-scratch61)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vySaySdGvp", ptr nonnull %access-scratch61, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr %access-scratch62)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vzSaySdGvp", ptr nonnull %access-scratch62, i64 0, ptr null) #2
  %138 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %139 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %140 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %141 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %142 = getelementptr inbounds nuw i8, ptr %138, i64 16
  %143 = load i64, ptr %142, align 8, !range !9
  %144 = icmp samesign ugt i64 %.pre, %143
  br i1 %144, label %odessy.chk25, label %145, !prof !10

145:                                              ; preds = %137
  %146 = getelementptr inbounds nuw i8, ptr %139, i64 16
  %147 = load i64, ptr %146, align 8, !range !9
  %148 = icmp samesign ugt i64 %.pre, %147
  br i1 %148, label %odessy.chk26, label %149, !prof !10

149:                                              ; preds = %145
  %150 = getelementptr inbounds nuw i8, ptr %140, i64 16
  %151 = load i64, ptr %150, align 8, !range !9
  %152 = icmp samesign ugt i64 %.pre, %151
  br i1 %152, label %odessy.chk27, label %153, !prof !10

153:                                              ; preds = %149
  %154 = getelementptr inbounds nuw i8, ptr %141, i64 16
  %155 = load i64, ptr %154, align 8, !range !9
  %156 = icmp samesign ugt i64 %.pre, %155
  br i1 %156, label %odessy.chk28, label %157, !prof !10

157:                                              ; preds = %153
  %158 = getelementptr inbounds nuw i8, ptr %138, i64 32
  %159 = getelementptr inbounds nuw i8, ptr %139, i64 32
  %160 = getelementptr inbounds nuw i8, ptr %140, i64 32
  %161 = getelementptr inbounds nuw i8, ptr %141, i64 32
  %162 = load double, ptr @"$s5nbody3mpxSdvp", align 8
  %163 = load double, ptr @"$s5nbody3mpySdvp", align 8
  %xtraiter = and i64 %.pre, 1
  %164 = icmp eq i64 %.pre, 1
  br i1 %164, label %.unr-lcssa, label %.new

.new:                                             ; preds = %157
  %unroll_iter = and i64 %.pre, 9223372036854775806
  br label %395

165:                                              ; preds = %340, %131
  %166 = phi i64 [ 0, %131 ], [ %167, %340 ]
  %167 = add nuw nsw i64 %166, 1
  %168 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %169 = getelementptr inbounds nuw i8, ptr %168, i64 16
  %170 = load i64, ptr %169, align 8, !range !9
  %.not230 = icmp samesign ult i64 %166, %170
  br i1 %.not230, label %171, label %odessy.chk3, !prof !11

171:                                              ; preds = %165
  %172 = getelementptr inbounds nuw i8, ptr %168, i64 32
  %173 = getelementptr inbounds nuw %TSa, ptr %172, i64 %166
  %174 = load ptr, ptr %173, align 8
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 16
  %176 = load i64, ptr %175, align 8, !range !9
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %odessy.chk4, label %178, !prof !10

178:                                              ; preds = %171
  %179 = getelementptr inbounds nuw i8, ptr %174, i64 32
  %180 = load double, ptr %179, align 8
  call void @llvm.lifetime.start.p0(ptr %access-scratch14)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pxSaySdGvp", ptr nonnull %access-scratch14, i64 33, ptr null) #2
  %181 = load ptr, ptr @"$s5nbody2pxSaySdGvp", align 8
  %182 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %181) #15
  store ptr %181, ptr @"$s5nbody2pxSaySdGvp", align 8
  br i1 %182, label %185, label %183

183:                                              ; preds = %178
  %184 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %181)
  br label %185

185:                                              ; preds = %183, %178
  %186 = phi ptr [ %184, %183 ], [ %181, %178 ]
  %187 = getelementptr inbounds nuw i8, ptr %186, i64 16
  %188 = load i64, ptr %187, align 8, !range !9
  %.not231 = icmp samesign ult i64 %166, %188
  br i1 %.not231, label %189, label %odessy.chk5, !prof !11

189:                                              ; preds = %185
  %190 = getelementptr inbounds nuw i8, ptr %186, i64 32
  %191 = getelementptr inbounds nuw %TSd, ptr %190, i64 %166
  store double %180, ptr %191, align 8
  store ptr %186, ptr @"$s5nbody2pxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch14) #2
  call void @llvm.lifetime.end.p0(ptr %access-scratch14)
  %192 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %193 = getelementptr inbounds nuw i8, ptr %192, i64 16
  %194 = load i64, ptr %193, align 8, !range !9
  %.not232 = icmp samesign ult i64 %166, %194
  br i1 %.not232, label %195, label %odessy.chk6, !prof !11

195:                                              ; preds = %189
  %196 = getelementptr inbounds nuw i8, ptr %192, i64 32
  %197 = getelementptr inbounds nuw %TSa, ptr %196, i64 %166
  %198 = load ptr, ptr %197, align 8
  %199 = getelementptr inbounds nuw i8, ptr %198, i64 16
  %200 = load i64, ptr %199, align 8, !range !9
  %201 = icmp samesign ult i64 %200, 2
  br i1 %201, label %odessy.chk7, label %202, !prof !10

202:                                              ; preds = %195
  %203 = getelementptr inbounds nuw i8, ptr %198, i64 40
  %204 = load double, ptr %203, align 8
  call void @llvm.lifetime.start.p0(ptr %access-scratch21)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pySaySdGvp", ptr nonnull %access-scratch21, i64 33, ptr null) #2
  %205 = load ptr, ptr @"$s5nbody2pySaySdGvp", align 8
  %206 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %205) #15
  store ptr %205, ptr @"$s5nbody2pySaySdGvp", align 8
  br i1 %206, label %209, label %207

207:                                              ; preds = %202
  %208 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %205)
  br label %209

209:                                              ; preds = %207, %202
  %210 = phi ptr [ %208, %207 ], [ %205, %202 ]
  %211 = getelementptr inbounds nuw i8, ptr %210, i64 16
  %212 = load i64, ptr %211, align 8, !range !9
  %.not233 = icmp samesign ult i64 %166, %212
  br i1 %.not233, label %213, label %odessy.chk8, !prof !11

213:                                              ; preds = %209
  %214 = getelementptr inbounds nuw i8, ptr %210, i64 32
  %215 = getelementptr inbounds nuw %TSd, ptr %214, i64 %166
  store double %204, ptr %215, align 8
  store ptr %210, ptr @"$s5nbody2pySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch21) #2
  call void @llvm.lifetime.end.p0(ptr %access-scratch21)
  %216 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %217 = getelementptr inbounds nuw i8, ptr %216, i64 16
  %218 = load i64, ptr %217, align 8, !range !9
  %.not234 = icmp samesign ult i64 %166, %218
  br i1 %.not234, label %219, label %odessy.chk9, !prof !11

219:                                              ; preds = %213
  %220 = getelementptr inbounds nuw i8, ptr %216, i64 32
  %221 = getelementptr inbounds nuw %TSa, ptr %220, i64 %166
  %222 = load ptr, ptr %221, align 8
  %223 = getelementptr inbounds nuw i8, ptr %222, i64 16
  %224 = load i64, ptr %223, align 8, !range !9
  %225 = icmp samesign ult i64 %224, 3
  br i1 %225, label %odessy.chk10, label %226, !prof !10

226:                                              ; preds = %219
  %227 = getelementptr inbounds nuw i8, ptr %222, i64 48
  %228 = load double, ptr %227, align 8
  call void @llvm.lifetime.start.p0(ptr %access-scratch28)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pzSaySdGvp", ptr nonnull %access-scratch28, i64 33, ptr null) #2
  %229 = load ptr, ptr @"$s5nbody2pzSaySdGvp", align 8
  %230 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %229) #15
  store ptr %229, ptr @"$s5nbody2pzSaySdGvp", align 8
  br i1 %230, label %233, label %231

231:                                              ; preds = %226
  %232 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %229)
  br label %233

233:                                              ; preds = %231, %226
  %234 = phi ptr [ %232, %231 ], [ %229, %226 ]
  %235 = getelementptr inbounds nuw i8, ptr %234, i64 16
  %236 = load i64, ptr %235, align 8, !range !9
  %.not235 = icmp samesign ult i64 %166, %236
  br i1 %.not235, label %237, label %odessy.chk11, !prof !11

237:                                              ; preds = %233
  %238 = getelementptr inbounds nuw i8, ptr %234, i64 32
  %239 = getelementptr inbounds nuw %TSd, ptr %238, i64 %166
  store double %228, ptr %239, align 8
  store ptr %234, ptr @"$s5nbody2pzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch28) #2
  call void @llvm.lifetime.end.p0(ptr %access-scratch28)
  %240 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %241 = getelementptr inbounds nuw i8, ptr %240, i64 16
  %242 = load i64, ptr %241, align 8, !range !9
  %.not236 = icmp samesign ult i64 %166, %242
  br i1 %.not236, label %243, label %odessy.chk12, !prof !11

243:                                              ; preds = %237
  %244 = getelementptr inbounds nuw i8, ptr %240, i64 32
  %245 = getelementptr inbounds nuw %TSa, ptr %244, i64 %166
  %246 = load ptr, ptr %245, align 8
  %247 = getelementptr inbounds nuw i8, ptr %246, i64 16
  %248 = load i64, ptr %247, align 8, !range !9
  %249 = icmp samesign ult i64 %248, 4
  br i1 %249, label %odessy.chk13, label %250, !prof !10

250:                                              ; preds = %243
  %251 = getelementptr inbounds nuw i8, ptr %246, i64 56
  %252 = load double, ptr %251, align 8
  %253 = load double, ptr @"$s5nbody3dpySdvp", align 8
  call void @llvm.lifetime.start.p0(ptr %access-scratch35)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vxSaySdGvp", ptr nonnull %access-scratch35, i64 33, ptr null) #2
  %254 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %255 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %254) #15
  store ptr %254, ptr @"$s5nbody2vxSaySdGvp", align 8
  br i1 %255, label %258, label %256

256:                                              ; preds = %250
  %257 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %254)
  br label %258

258:                                              ; preds = %256, %250
  %259 = phi ptr [ %257, %256 ], [ %254, %250 ]
  %260 = getelementptr inbounds nuw i8, ptr %259, i64 16
  %261 = load i64, ptr %260, align 8, !range !9
  %.not237 = icmp samesign ult i64 %166, %261
  br i1 %.not237, label %262, label %odessy.chk14, !prof !11

262:                                              ; preds = %258
  %263 = fmul double %252, %253
  %264 = getelementptr inbounds nuw i8, ptr %259, i64 32
  %265 = getelementptr inbounds nuw %TSd, ptr %264, i64 %166
  store double %263, ptr %265, align 8
  store ptr %259, ptr @"$s5nbody2vxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch35) #2
  call void @llvm.lifetime.end.p0(ptr %access-scratch35)
  %266 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %267 = getelementptr inbounds nuw i8, ptr %266, i64 16
  %268 = load i64, ptr %267, align 8, !range !9
  %.not238 = icmp samesign ult i64 %166, %268
  br i1 %.not238, label %269, label %odessy.chk15, !prof !11

269:                                              ; preds = %262
  %270 = getelementptr inbounds nuw i8, ptr %266, i64 32
  %271 = getelementptr inbounds nuw %TSa, ptr %270, i64 %166
  %272 = load ptr, ptr %271, align 8
  %273 = getelementptr inbounds nuw i8, ptr %272, i64 16
  %274 = load i64, ptr %273, align 8, !range !9
  %275 = icmp samesign ult i64 %274, 5
  br i1 %275, label %odessy.chk16, label %276, !prof !10

276:                                              ; preds = %269
  %277 = getelementptr inbounds nuw i8, ptr %272, i64 64
  %278 = load double, ptr %277, align 8
  %279 = load double, ptr @"$s5nbody3dpySdvp", align 8
  call void @llvm.lifetime.start.p0(ptr %access-scratch42)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vySaySdGvp", ptr nonnull %access-scratch42, i64 33, ptr null) #2
  %280 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %281 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %280) #15
  store ptr %280, ptr @"$s5nbody2vySaySdGvp", align 8
  br i1 %281, label %284, label %282

282:                                              ; preds = %276
  %283 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %280)
  br label %284

284:                                              ; preds = %282, %276
  %285 = phi ptr [ %283, %282 ], [ %280, %276 ]
  %286 = getelementptr inbounds nuw i8, ptr %285, i64 16
  %287 = load i64, ptr %286, align 8, !range !9
  %.not239 = icmp samesign ult i64 %166, %287
  br i1 %.not239, label %288, label %odessy.chk17, !prof !11

288:                                              ; preds = %284
  %289 = fmul double %278, %279
  %290 = getelementptr inbounds nuw i8, ptr %285, i64 32
  %291 = getelementptr inbounds nuw %TSd, ptr %290, i64 %166
  store double %289, ptr %291, align 8
  store ptr %285, ptr @"$s5nbody2vySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch42) #2
  call void @llvm.lifetime.end.p0(ptr %access-scratch42)
  %292 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %293 = getelementptr inbounds nuw i8, ptr %292, i64 16
  %294 = load i64, ptr %293, align 8, !range !9
  %.not240 = icmp samesign ult i64 %166, %294
  br i1 %.not240, label %295, label %odessy.chk18, !prof !11

295:                                              ; preds = %288
  %296 = getelementptr inbounds nuw i8, ptr %292, i64 32
  %297 = getelementptr inbounds nuw %TSa, ptr %296, i64 %166
  %298 = load ptr, ptr %297, align 8
  %299 = getelementptr inbounds nuw i8, ptr %298, i64 16
  %300 = load i64, ptr %299, align 8, !range !9
  %301 = icmp samesign ult i64 %300, 6
  br i1 %301, label %odessy.chk19, label %302, !prof !10

302:                                              ; preds = %295
  %303 = getelementptr inbounds nuw i8, ptr %298, i64 72
  %304 = load double, ptr %303, align 8
  %305 = load double, ptr @"$s5nbody3dpySdvp", align 8
  call void @llvm.lifetime.start.p0(ptr %access-scratch49)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vzSaySdGvp", ptr nonnull %access-scratch49, i64 33, ptr null) #2
  %306 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %307 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %306) #15
  store ptr %306, ptr @"$s5nbody2vzSaySdGvp", align 8
  br i1 %307, label %310, label %308

308:                                              ; preds = %302
  %309 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %306)
  br label %310

310:                                              ; preds = %308, %302
  %311 = phi ptr [ %309, %308 ], [ %306, %302 ]
  %312 = getelementptr inbounds nuw i8, ptr %311, i64 16
  %313 = load i64, ptr %312, align 8, !range !9
  %.not241 = icmp samesign ult i64 %166, %313
  br i1 %.not241, label %314, label %odessy.chk20, !prof !11

314:                                              ; preds = %310
  %315 = fmul double %304, %305
  %316 = getelementptr inbounds nuw i8, ptr %311, i64 32
  %317 = getelementptr inbounds nuw %TSd, ptr %316, i64 %166
  store double %315, ptr %317, align 8
  store ptr %311, ptr @"$s5nbody2vzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch49) #2
  call void @llvm.lifetime.end.p0(ptr %access-scratch49)
  %318 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %319 = getelementptr inbounds nuw i8, ptr %318, i64 16
  %320 = load i64, ptr %319, align 8, !range !9
  %.not242 = icmp samesign ult i64 %166, %320
  br i1 %.not242, label %321, label %odessy.chk21, !prof !11

321:                                              ; preds = %314
  %322 = getelementptr inbounds nuw i8, ptr %318, i64 32
  %323 = getelementptr inbounds nuw %TSa, ptr %322, i64 %166
  %324 = load ptr, ptr %323, align 8
  %325 = getelementptr inbounds nuw i8, ptr %324, i64 16
  %326 = load i64, ptr %325, align 8, !range !9
  %327 = icmp samesign ult i64 %326, 7
  br i1 %327, label %odessy.chk22, label %328, !prof !10

328:                                              ; preds = %321
  %329 = getelementptr inbounds nuw i8, ptr %324, i64 80
  %330 = load double, ptr %329, align 8
  %331 = load double, ptr @"$s5nbody5solarSdvp", align 8
  call void @llvm.lifetime.start.p0(ptr %access-scratch56)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody4massSaySdGvp", ptr nonnull %access-scratch56, i64 33, ptr null) #2
  %332 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %333 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %332) #15
  store ptr %332, ptr @"$s5nbody4massSaySdGvp", align 8
  br i1 %333, label %336, label %334

334:                                              ; preds = %328
  %335 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %332)
  br label %336

336:                                              ; preds = %334, %328
  %337 = phi ptr [ %335, %334 ], [ %332, %328 ]
  %338 = getelementptr inbounds nuw i8, ptr %337, i64 16
  %339 = load i64, ptr %338, align 8, !range !9
  %.not243 = icmp samesign ult i64 %166, %339
  br i1 %.not243, label %340, label %odessy.chk23, !prof !11

340:                                              ; preds = %336
  %341 = fmul double %330, %331
  %342 = getelementptr inbounds nuw i8, ptr %337, i64 32
  %343 = getelementptr inbounds nuw %TSd, ptr %342, i64 %166
  store double %341, ptr %343, align 8
  store ptr %337, ptr @"$s5nbody4massSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch56) #2
  call void @llvm.lifetime.end.p0(ptr %access-scratch56)
  %344 = icmp eq i64 %167, %127
  br i1 %344, label %.loopexit304, label %165

345:                                              ; preds = %444, %135, %.thread329
  %346 = phi double [ 0.000000e+00, %135 ], [ %.lcssa353, %444 ], [ 0.000000e+00, %.thread329 ]
  %347 = load double, ptr @"$s5nbody5solarSdvp", align 8
  call void @llvm.lifetime.start.p0(ptr %access-scratch71)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vxSaySdGvp", ptr nonnull %access-scratch71, i64 33, ptr null) #2
  %348 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %349 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %348) #15
  store ptr %348, ptr @"$s5nbody2vxSaySdGvp", align 8
  br i1 %349, label %352, label %350

350:                                              ; preds = %345
  %351 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %348)
  br label %352

352:                                              ; preds = %350, %345
  %353 = phi ptr [ %351, %350 ], [ %348, %345 ]
  %354 = getelementptr inbounds nuw i8, ptr %353, i64 16
  %355 = load i64, ptr %354, align 8, !range !9
  %356 = icmp eq i64 %355, 0
  br i1 %356, label %odessy.chk29, label %357, !prof !10

357:                                              ; preds = %352
  %358 = fneg double %346
  %359 = fdiv double %358, %347
  %360 = getelementptr inbounds nuw i8, ptr %353, i64 32
  store double %359, ptr %360, align 8
  store ptr %353, ptr @"$s5nbody2vxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch71) #2
  call void @llvm.lifetime.end.p0(ptr %access-scratch71)
  %361 = load double, ptr @"$s5nbody3mpySdvp", align 8
  %362 = load double, ptr @"$s5nbody5solarSdvp", align 8
  call void @llvm.lifetime.start.p0(ptr %access-scratch74)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vySaySdGvp", ptr nonnull %access-scratch74, i64 33, ptr null) #2
  %363 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %364 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %363) #15
  store ptr %363, ptr @"$s5nbody2vySaySdGvp", align 8
  br i1 %364, label %367, label %365

365:                                              ; preds = %357
  %366 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %363)
  br label %367

367:                                              ; preds = %365, %357
  %368 = phi ptr [ %366, %365 ], [ %363, %357 ]
  %369 = getelementptr inbounds nuw i8, ptr %368, i64 16
  %370 = load i64, ptr %369, align 8, !range !9
  %371 = icmp eq i64 %370, 0
  br i1 %371, label %odessy.chk30, label %372, !prof !10

372:                                              ; preds = %367
  %373 = fneg double %361
  %374 = fdiv double %373, %362
  %375 = getelementptr inbounds nuw i8, ptr %368, i64 32
  store double %374, ptr %375, align 8
  store ptr %368, ptr @"$s5nbody2vySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch74) #2
  call void @llvm.lifetime.end.p0(ptr %access-scratch74)
  %376 = load double, ptr @"$s5nbody3mpzSdvp", align 8
  %377 = load double, ptr @"$s5nbody5solarSdvp", align 8
  call void @llvm.lifetime.start.p0(ptr %access-scratch77)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vzSaySdGvp", ptr nonnull %access-scratch77, i64 33, ptr null) #2
  %378 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %379 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %378) #15
  store ptr %378, ptr @"$s5nbody2vzSaySdGvp", align 8
  br i1 %379, label %382, label %380

380:                                              ; preds = %372
  %381 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %378)
  br label %382

382:                                              ; preds = %380, %372
  %383 = phi ptr [ %381, %380 ], [ %378, %372 ]
  %384 = getelementptr inbounds nuw i8, ptr %383, i64 16
  %385 = load i64, ptr %384, align 8, !range !9
  %386 = icmp eq i64 %385, 0
  br i1 %386, label %odessy.chk31, label %387, !prof !10

387:                                              ; preds = %382
  %388 = fneg double %376
  %389 = fdiv double %388, %377
  %390 = getelementptr inbounds nuw i8, ptr %383, i64 32
  store double %389, ptr %390, align 8
  store ptr %383, ptr @"$s5nbody2vzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch77) #2
  call void @llvm.lifetime.end.p0(ptr %access-scratch77)
  store double 1.000000e-02, ptr @"$s5nbody2dtSdvp", align 8
  %391 = load i64, ptr @"$s5nbody5stepsSivp", align 8
  %392 = icmp slt i64 %391, 0
  br i1 %392, label %odessy.chk32, label %393, !prof !10

393:                                              ; preds = %387
  %394 = icmp eq i64 %391, 0
  br i1 %394, label %.loopexit303, label %.preheader302.preheader

395:                                              ; preds = %395, %.new
  %396 = phi i64 [ 0, %.new ], [ %415, %395 ]
  %397 = phi double [ 0.000000e+00, %.new ], [ %429, %395 ]
  %398 = phi double [ %162, %.new ], [ %421, %395 ]
  %399 = phi double [ %163, %.new ], [ %425, %395 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %395 ]
  %400 = or disjoint i64 %396, 1
  %401 = getelementptr inbounds %TSd, ptr %158, i64 %396
  %402 = load double, ptr %401, align 8
  %403 = getelementptr inbounds %TSd, ptr %159, i64 %396
  %404 = load double, ptr %403, align 8
  %405 = fmul double %402, %404
  %406 = fadd double %398, %405
  %407 = getelementptr inbounds %TSd, ptr %160, i64 %396
  %408 = load double, ptr %407, align 8
  %409 = fmul double %404, %408
  %410 = fadd double %399, %409
  %411 = getelementptr inbounds %TSd, ptr %161, i64 %396
  %412 = load double, ptr %411, align 8
  %413 = fmul double %404, %412
  %414 = fadd double %397, %413
  %415 = add nuw i64 %396, 2
  %416 = getelementptr inbounds %TSd, ptr %158, i64 %400
  %417 = load double, ptr %416, align 8
  %418 = getelementptr inbounds %TSd, ptr %159, i64 %400
  %419 = load double, ptr %418, align 8
  %420 = fmul double %417, %419
  %421 = fadd double %406, %420
  %422 = getelementptr inbounds %TSd, ptr %160, i64 %400
  %423 = load double, ptr %422, align 8
  %424 = fmul double %419, %423
  %425 = fadd double %410, %424
  %426 = getelementptr inbounds %TSd, ptr %161, i64 %400
  %427 = load double, ptr %426, align 8
  %428 = fmul double %419, %427
  %429 = fadd double %414, %428
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %395

.unr-lcssa:                                       ; preds = %395, %157
  %.lcssa353.ph = phi double [ poison, %157 ], [ %421, %395 ]
  %.lcssa352.ph = phi double [ poison, %157 ], [ %425, %395 ]
  %.lcssa351.ph = phi double [ poison, %157 ], [ %429, %395 ]
  %.unr = phi i64 [ 0, %157 ], [ %415, %395 ]
  %.unr360 = phi double [ 0.000000e+00, %157 ], [ %429, %395 ]
  %.unr361 = phi double [ %162, %157 ], [ %421, %395 ]
  %.unr362 = phi double [ %163, %157 ], [ %425, %395 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %444, label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.unr-lcssa
  %430 = getelementptr inbounds %TSd, ptr %158, i64 %.unr
  %431 = load double, ptr %430, align 8
  %432 = getelementptr inbounds %TSd, ptr %159, i64 %.unr
  %433 = load double, ptr %432, align 8
  %434 = fmul double %431, %433
  %435 = fadd double %.unr361, %434
  %436 = getelementptr inbounds %TSd, ptr %160, i64 %.unr
  %437 = load double, ptr %436, align 8
  %438 = fmul double %433, %437
  %439 = fadd double %.unr362, %438
  %440 = getelementptr inbounds %TSd, ptr %161, i64 %.unr
  %441 = load double, ptr %440, align 8
  %442 = fmul double %433, %441
  %443 = fadd double %.unr360, %442
  br label %444

444:                                              ; preds = %.epilog-lcssa, %.unr-lcssa
  %.lcssa353 = phi double [ %.lcssa353.ph, %.unr-lcssa ], [ %435, %.epilog-lcssa ]
  %.lcssa352 = phi double [ %.lcssa352.ph, %.unr-lcssa ], [ %439, %.epilog-lcssa ]
  %.lcssa351 = phi double [ %.lcssa351.ph, %.unr-lcssa ], [ %443, %.epilog-lcssa ]
  store double %.lcssa351, ptr @"$s5nbody3mpzSdvp", align 8
  store double %.lcssa352, ptr @"$s5nbody3mpySdvp", align 8
  store double %.lcssa353, ptr @"$s5nbody3mpxSdvp", align 8
  br label %345

.preheader302.preheader:                          ; preds = %.thread297, %393
  %445 = phi i64 [ %446, %.thread297 ], [ 0, %393 ]
  %446 = add nuw nsw i64 %445, 1
  %447 = load i64, ptr @"$s5nbody1nSivp", align 8
  %448 = icmp slt i64 %447, 0
  br i1 %448, label %odessy.chk33, label %449, !prof !10

449:                                              ; preds = %.preheader302.preheader
  %450 = icmp eq i64 %447, 0
  br i1 %450, label %.thread297, label %.preheader301.preheader

.loopexit303:                                     ; preds = %.thread297, %393
  store double 0.000000e+00, ptr @"$s5nbody1eSdvp", align 8
  %451 = load i64, ptr @"$s5nbody1nSivp", align 8
  %452 = icmp slt i64 %451, 0
  br i1 %452, label %odessy.chk60, label %453, !prof !10

453:                                              ; preds = %.loopexit303
  %454 = icmp eq i64 %451, 0
  br i1 %454, label %.loopexit299, label %455

455:                                              ; preds = %453
  call void @llvm.lifetime.start.p0(ptr %access-scratch146)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody4massSaySdGvp", ptr nonnull %access-scratch146, i64 0, ptr null) #2
  br label %729

456:                                              ; preds = %.loopexit300
  %.pr = load i64, ptr @"$s5nbody1nSivp", align 8
  %457 = icmp slt i64 %.pr, 0
  br i1 %457, label %odessy.chk53, label %458, !prof !15

458:                                              ; preds = %456
  %459 = icmp eq i64 %.pr, 0
  br i1 %459, label %.thread297, label %.preheader

.preheader301.preheader:                          ; preds = %.loopexit300, %449
  %460 = phi i64 [ %461, %.loopexit300 ], [ 0, %449 ]
  %461 = add nuw nsw i64 %460, 1
  %462 = load i64, ptr @"$s5nbody1nSivp", align 8
  %.not327 = icmp sgt i64 %462, %460
  br i1 %.not327, label %463, label %odessy.chk34, !prof !11

463:                                              ; preds = %.preheader301.preheader
  %464 = icmp eq i64 %461, %462
  br i1 %464, label %.loopexit300, label %465

465:                                              ; preds = %463
  call void @llvm.lifetime.start.p0(ptr %access-scratch80)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pySaySdGvp", ptr nonnull %access-scratch80, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr %access-scratch81)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pzSaySdGvp", ptr nonnull %access-scratch81, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr %access-scratch82)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody4massSaySdGvp", ptr nonnull %access-scratch82, i64 0, ptr null) #2
  br label %467

.loopexit300:                                     ; preds = %636, %463
  %466 = icmp eq i64 %461, %447
  br i1 %466, label %456, label %.preheader301.preheader

467:                                              ; preds = %636, %465
  %468 = phi i64 [ %461, %465 ], [ %469, %636 ]
  %469 = add nuw i64 %468, 1
  %470 = load ptr, ptr @"$s5nbody2pxSaySdGvp", align 8
  %471 = getelementptr inbounds nuw i8, ptr %470, i64 16
  %472 = load i64, ptr %471, align 8, !range !9
  %.not247 = icmp samesign ult i64 %460, %472
  br i1 %.not247, label %473, label %odessy.chk35, !prof !11

473:                                              ; preds = %467
  %.not248 = icmp ult i64 %468, %472
  br i1 %.not248, label %474, label %odessy.chk36, !prof !11

474:                                              ; preds = %473
  %475 = getelementptr inbounds nuw i8, ptr %470, i64 32
  %476 = getelementptr inbounds nuw %TSd, ptr %475, i64 %460
  %477 = load double, ptr %476, align 8
  %478 = getelementptr inbounds nuw %TSd, ptr %475, i64 %468
  %479 = load double, ptr %478, align 8
  %480 = fsub double %477, %479
  %481 = load ptr, ptr @"$s5nbody2pySaySdGvp", align 8
  %482 = getelementptr inbounds nuw i8, ptr %481, i64 16
  %483 = load i64, ptr %482, align 8, !range !9
  %.not249 = icmp samesign ult i64 %460, %483
  br i1 %.not249, label %484, label %odessy.chk37, !prof !11

484:                                              ; preds = %474
  %.not250 = icmp samesign ult i64 %468, %483
  br i1 %.not250, label %485, label %odessy.chk38, !prof !11

485:                                              ; preds = %484
  %486 = getelementptr inbounds nuw i8, ptr %481, i64 32
  %487 = getelementptr inbounds nuw %TSd, ptr %486, i64 %460
  %488 = load double, ptr %487, align 8
  %489 = getelementptr inbounds nuw %TSd, ptr %486, i64 %468
  %490 = load double, ptr %489, align 8
  %491 = fsub double %488, %490
  %492 = load ptr, ptr @"$s5nbody2pzSaySdGvp", align 8
  %493 = getelementptr inbounds nuw i8, ptr %492, i64 16
  %494 = load i64, ptr %493, align 8, !range !9
  %.not251 = icmp samesign ult i64 %460, %494
  br i1 %.not251, label %495, label %odessy.chk39, !prof !11

495:                                              ; preds = %485
  %.not252 = icmp samesign ult i64 %468, %494
  br i1 %.not252, label %496, label %odessy.chk40, !prof !11

496:                                              ; preds = %495
  %497 = getelementptr inbounds nuw i8, ptr %492, i64 32
  %498 = getelementptr inbounds nuw %TSd, ptr %497, i64 %460
  %499 = load double, ptr %498, align 8
  %500 = getelementptr inbounds nuw %TSd, ptr %497, i64 %468
  %501 = load double, ptr %500, align 8
  %502 = fsub double %499, %501
  %503 = fmul double %480, %480
  %504 = fmul double %491, %491
  %505 = fadd double %503, %504
  %506 = fmul double %502, %502
  %507 = fadd double %505, %506
  %508 = load double, ptr @"$s5nbody2dtSdvp", align 8
  %sqrt = call double @llvm.sqrt.f64(double %507)
  %509 = fmul double %507, %sqrt
  %510 = fdiv double %508, %509
  %511 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %512 = getelementptr inbounds nuw i8, ptr %511, i64 16
  %513 = load i64, ptr %512, align 8, !range !9
  %.not253 = icmp samesign ult i64 %468, %513
  br i1 %.not253, label %514, label %odessy.chk41, !prof !11

514:                                              ; preds = %496
  %515 = getelementptr inbounds nuw i8, ptr %511, i64 32
  %516 = getelementptr inbounds nuw %TSd, ptr %515, i64 %468
  %517 = load double, ptr %516, align 8
  call void @llvm.lifetime.start.p0(ptr %access-scratch94)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vxSaySdGvp", ptr nonnull %access-scratch94, i64 33, ptr null) #2
  %518 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %519 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %518) #15
  store ptr %518, ptr @"$s5nbody2vxSaySdGvp", align 8
  br i1 %519, label %522, label %520

520:                                              ; preds = %514
  %521 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %518)
  br label %522

522:                                              ; preds = %520, %514
  %523 = phi ptr [ %521, %520 ], [ %518, %514 ]
  %524 = getelementptr inbounds nuw i8, ptr %523, i64 16
  %525 = load i64, ptr %524, align 8, !range !9
  %.not254 = icmp samesign ult i64 %460, %525
  br i1 %.not254, label %526, label %odessy.chk42, !prof !11

526:                                              ; preds = %522
  %527 = fmul double %480, %517
  %528 = fmul double %510, %527
  %529 = getelementptr inbounds nuw i8, ptr %523, i64 32
  %530 = getelementptr inbounds nuw %TSd, ptr %529, i64 %460
  %531 = load double, ptr %530, align 8
  %532 = fsub double %531, %528
  store double %532, ptr %530, align 8
  store ptr %523, ptr @"$s5nbody2vxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch94) #2
  call void @llvm.lifetime.end.p0(ptr %access-scratch94)
  %533 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %534 = getelementptr inbounds nuw i8, ptr %533, i64 16
  %535 = load i64, ptr %534, align 8, !range !9
  %.not255 = icmp samesign ult i64 %468, %535
  br i1 %.not255, label %536, label %odessy.chk43, !prof !11

536:                                              ; preds = %526
  %537 = getelementptr inbounds nuw i8, ptr %533, i64 32
  %538 = getelementptr inbounds nuw %TSd, ptr %537, i64 %468
  %539 = load double, ptr %538, align 8
  call void @llvm.lifetime.start.p0(ptr %access-scratch100)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vySaySdGvp", ptr nonnull %access-scratch100, i64 33, ptr null) #2
  %540 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %541 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %540) #15
  store ptr %540, ptr @"$s5nbody2vySaySdGvp", align 8
  br i1 %541, label %544, label %542

542:                                              ; preds = %536
  %543 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %540)
  br label %544

544:                                              ; preds = %542, %536
  %545 = phi ptr [ %543, %542 ], [ %540, %536 ]
  %546 = getelementptr inbounds nuw i8, ptr %545, i64 16
  %547 = load i64, ptr %546, align 8, !range !9
  %.not256 = icmp samesign ult i64 %460, %547
  br i1 %.not256, label %548, label %odessy.chk44, !prof !11

548:                                              ; preds = %544
  %549 = fmul double %491, %539
  %550 = fmul double %510, %549
  %551 = getelementptr inbounds nuw i8, ptr %545, i64 32
  %552 = getelementptr inbounds nuw %TSd, ptr %551, i64 %460
  %553 = load double, ptr %552, align 8
  %554 = fsub double %553, %550
  store double %554, ptr %552, align 8
  store ptr %545, ptr @"$s5nbody2vySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch100) #2
  call void @llvm.lifetime.end.p0(ptr %access-scratch100)
  %555 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %556 = getelementptr inbounds nuw i8, ptr %555, i64 16
  %557 = load i64, ptr %556, align 8, !range !9
  %.not257 = icmp samesign ult i64 %468, %557
  br i1 %.not257, label %558, label %odessy.chk45, !prof !11

558:                                              ; preds = %548
  %559 = getelementptr inbounds nuw i8, ptr %555, i64 32
  %560 = getelementptr inbounds nuw %TSd, ptr %559, i64 %468
  %561 = load double, ptr %560, align 8
  call void @llvm.lifetime.start.p0(ptr %access-scratch106)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vzSaySdGvp", ptr nonnull %access-scratch106, i64 33, ptr null) #2
  %562 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %563 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %562) #15
  store ptr %562, ptr @"$s5nbody2vzSaySdGvp", align 8
  br i1 %563, label %566, label %564

564:                                              ; preds = %558
  %565 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %562)
  br label %566

566:                                              ; preds = %564, %558
  %567 = phi ptr [ %565, %564 ], [ %562, %558 ]
  %568 = getelementptr inbounds nuw i8, ptr %567, i64 16
  %569 = load i64, ptr %568, align 8, !range !9
  %.not258 = icmp samesign ult i64 %460, %569
  br i1 %.not258, label %570, label %odessy.chk46, !prof !11

570:                                              ; preds = %566
  %571 = fmul double %502, %561
  %572 = fmul double %510, %571
  %573 = getelementptr inbounds nuw i8, ptr %567, i64 32
  %574 = getelementptr inbounds nuw %TSd, ptr %573, i64 %460
  %575 = load double, ptr %574, align 8
  %576 = fsub double %575, %572
  store double %576, ptr %574, align 8
  store ptr %567, ptr @"$s5nbody2vzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch106) #2
  call void @llvm.lifetime.end.p0(ptr %access-scratch106)
  %577 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %578 = getelementptr inbounds nuw i8, ptr %577, i64 16
  %579 = load i64, ptr %578, align 8, !range !9
  %.not259 = icmp samesign ult i64 %460, %579
  br i1 %.not259, label %580, label %odessy.chk47, !prof !11

580:                                              ; preds = %570
  %581 = getelementptr inbounds nuw i8, ptr %577, i64 32
  %582 = getelementptr inbounds nuw %TSd, ptr %581, i64 %460
  %583 = load double, ptr %582, align 8
  call void @llvm.lifetime.start.p0(ptr %access-scratch112)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vxSaySdGvp", ptr nonnull %access-scratch112, i64 33, ptr null) #2
  %584 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %585 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %584) #15
  store ptr %584, ptr @"$s5nbody2vxSaySdGvp", align 8
  br i1 %585, label %588, label %586

586:                                              ; preds = %580
  %587 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %584)
  br label %588

588:                                              ; preds = %586, %580
  %589 = phi ptr [ %587, %586 ], [ %584, %580 ]
  %590 = getelementptr inbounds nuw i8, ptr %589, i64 16
  %591 = load i64, ptr %590, align 8, !range !9
  %.not260 = icmp samesign ult i64 %468, %591
  br i1 %.not260, label %592, label %odessy.chk48, !prof !11

592:                                              ; preds = %588
  %593 = fmul double %480, %583
  %594 = fmul double %510, %593
  %595 = getelementptr inbounds nuw i8, ptr %589, i64 32
  %596 = getelementptr inbounds nuw %TSd, ptr %595, i64 %468
  %597 = load double, ptr %596, align 8
  %598 = fadd double %594, %597
  store double %598, ptr %596, align 8
  store ptr %589, ptr @"$s5nbody2vxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch112) #2
  call void @llvm.lifetime.end.p0(ptr %access-scratch112)
  %599 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %600 = getelementptr inbounds nuw i8, ptr %599, i64 16
  %601 = load i64, ptr %600, align 8, !range !9
  %.not261 = icmp samesign ult i64 %460, %601
  br i1 %.not261, label %602, label %odessy.chk49, !prof !11

602:                                              ; preds = %592
  %603 = getelementptr inbounds nuw i8, ptr %599, i64 32
  %604 = getelementptr inbounds nuw %TSd, ptr %603, i64 %460
  %605 = load double, ptr %604, align 8
  call void @llvm.lifetime.start.p0(ptr %access-scratch118)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vySaySdGvp", ptr nonnull %access-scratch118, i64 33, ptr null) #2
  %606 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %607 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %606) #15
  store ptr %606, ptr @"$s5nbody2vySaySdGvp", align 8
  br i1 %607, label %610, label %608

608:                                              ; preds = %602
  %609 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %606)
  br label %610

610:                                              ; preds = %608, %602
  %611 = phi ptr [ %609, %608 ], [ %606, %602 ]
  %612 = getelementptr inbounds nuw i8, ptr %611, i64 16
  %613 = load i64, ptr %612, align 8, !range !9
  %.not262 = icmp samesign ult i64 %468, %613
  br i1 %.not262, label %614, label %odessy.chk50, !prof !11

614:                                              ; preds = %610
  %615 = fmul double %491, %605
  %616 = fmul double %510, %615
  %617 = getelementptr inbounds nuw i8, ptr %611, i64 32
  %618 = getelementptr inbounds nuw %TSd, ptr %617, i64 %468
  %619 = load double, ptr %618, align 8
  %620 = fadd double %616, %619
  store double %620, ptr %618, align 8
  store ptr %611, ptr @"$s5nbody2vySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch118) #2
  call void @llvm.lifetime.end.p0(ptr %access-scratch118)
  %621 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %622 = getelementptr inbounds nuw i8, ptr %621, i64 16
  %623 = load i64, ptr %622, align 8, !range !9
  %.not263 = icmp samesign ult i64 %460, %623
  br i1 %.not263, label %624, label %odessy.chk51, !prof !11

624:                                              ; preds = %614
  %625 = getelementptr inbounds nuw i8, ptr %621, i64 32
  %626 = getelementptr inbounds nuw %TSd, ptr %625, i64 %460
  %627 = load double, ptr %626, align 8
  call void @llvm.lifetime.start.p0(ptr %access-scratch124)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vzSaySdGvp", ptr nonnull %access-scratch124, i64 33, ptr null) #2
  %628 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %629 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %628) #15
  store ptr %628, ptr @"$s5nbody2vzSaySdGvp", align 8
  br i1 %629, label %632, label %630

630:                                              ; preds = %624
  %631 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %628)
  br label %632

632:                                              ; preds = %630, %624
  %633 = phi ptr [ %631, %630 ], [ %628, %624 ]
  %634 = getelementptr inbounds nuw i8, ptr %633, i64 16
  %635 = load i64, ptr %634, align 8, !range !9
  %.not264 = icmp samesign ult i64 %468, %635
  br i1 %.not264, label %636, label %odessy.chk52, !prof !11

636:                                              ; preds = %632
  %637 = fmul double %502, %627
  %638 = fmul double %510, %637
  %639 = getelementptr inbounds nuw i8, ptr %633, i64 32
  %640 = getelementptr inbounds nuw %TSd, ptr %639, i64 %468
  %641 = load double, ptr %640, align 8
  %642 = fadd double %638, %641
  store double %642, ptr %640, align 8
  store ptr %633, ptr @"$s5nbody2vzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch124) #2
  call void @llvm.lifetime.end.p0(ptr %access-scratch124)
  %643 = icmp eq i64 %469, %462
  br i1 %643, label %.loopexit300, label %467

.thread297:                                       ; preds = %707, %458, %449
  %644 = icmp eq i64 %446, %391
  br i1 %644, label %.loopexit303, label %.preheader302.preheader

.preheader:                                       ; preds = %707, %458
  %645 = phi i64 [ %646, %707 ], [ 0, %458 ]
  %646 = add nuw nsw i64 %645, 1
  %647 = load double, ptr @"$s5nbody2dtSdvp", align 8
  %648 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %649 = getelementptr inbounds nuw i8, ptr %648, i64 16
  %650 = load i64, ptr %649, align 8, !range !9
  %.not265 = icmp samesign ult i64 %645, %650
  br i1 %.not265, label %651, label %odessy.chk54, !prof !11

651:                                              ; preds = %.preheader
  %652 = getelementptr inbounds nuw i8, ptr %648, i64 32
  %653 = getelementptr inbounds nuw %TSd, ptr %652, i64 %645
  %654 = load double, ptr %653, align 8
  call void @llvm.lifetime.start.p0(ptr %access-scratch130)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pxSaySdGvp", ptr nonnull %access-scratch130, i64 33, ptr null) #2
  %655 = load ptr, ptr @"$s5nbody2pxSaySdGvp", align 8
  %656 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %655) #15
  store ptr %655, ptr @"$s5nbody2pxSaySdGvp", align 8
  br i1 %656, label %659, label %657

657:                                              ; preds = %651
  %658 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %655)
  br label %659

659:                                              ; preds = %657, %651
  %660 = phi ptr [ %658, %657 ], [ %655, %651 ]
  %661 = getelementptr inbounds nuw i8, ptr %660, i64 16
  %662 = load i64, ptr %661, align 8, !range !9
  %.not266 = icmp samesign ult i64 %645, %662
  br i1 %.not266, label %663, label %odessy.chk55, !prof !11

663:                                              ; preds = %659
  %664 = fmul double %647, %654
  %665 = getelementptr inbounds nuw i8, ptr %660, i64 32
  %666 = getelementptr inbounds nuw %TSd, ptr %665, i64 %645
  %667 = load double, ptr %666, align 8
  %668 = fadd double %664, %667
  store double %668, ptr %666, align 8
  store ptr %660, ptr @"$s5nbody2pxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch130) #2
  call void @llvm.lifetime.end.p0(ptr %access-scratch130)
  %669 = load double, ptr @"$s5nbody2dtSdvp", align 8
  %670 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %671 = getelementptr inbounds nuw i8, ptr %670, i64 16
  %672 = load i64, ptr %671, align 8, !range !9
  %.not267 = icmp samesign ult i64 %645, %672
  br i1 %.not267, label %673, label %odessy.chk56, !prof !11

673:                                              ; preds = %663
  %674 = getelementptr inbounds nuw i8, ptr %670, i64 32
  %675 = getelementptr inbounds nuw %TSd, ptr %674, i64 %645
  %676 = load double, ptr %675, align 8
  call void @llvm.lifetime.start.p0(ptr %access-scratch136)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pySaySdGvp", ptr nonnull %access-scratch136, i64 33, ptr null) #2
  %677 = load ptr, ptr @"$s5nbody2pySaySdGvp", align 8
  %678 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %677) #15
  store ptr %677, ptr @"$s5nbody2pySaySdGvp", align 8
  br i1 %678, label %681, label %679

679:                                              ; preds = %673
  %680 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %677)
  br label %681

681:                                              ; preds = %679, %673
  %682 = phi ptr [ %680, %679 ], [ %677, %673 ]
  %683 = getelementptr inbounds nuw i8, ptr %682, i64 16
  %684 = load i64, ptr %683, align 8, !range !9
  %.not268 = icmp samesign ult i64 %645, %684
  br i1 %.not268, label %685, label %odessy.chk57, !prof !11

685:                                              ; preds = %681
  %686 = fmul double %669, %676
  %687 = getelementptr inbounds nuw i8, ptr %682, i64 32
  %688 = getelementptr inbounds nuw %TSd, ptr %687, i64 %645
  %689 = load double, ptr %688, align 8
  %690 = fadd double %686, %689
  store double %690, ptr %688, align 8
  store ptr %682, ptr @"$s5nbody2pySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch136) #2
  call void @llvm.lifetime.end.p0(ptr %access-scratch136)
  %691 = load double, ptr @"$s5nbody2dtSdvp", align 8
  %692 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %693 = getelementptr inbounds nuw i8, ptr %692, i64 16
  %694 = load i64, ptr %693, align 8, !range !9
  %.not269 = icmp samesign ult i64 %645, %694
  br i1 %.not269, label %695, label %odessy.chk58, !prof !11

695:                                              ; preds = %685
  %696 = getelementptr inbounds nuw i8, ptr %692, i64 32
  %697 = getelementptr inbounds nuw %TSd, ptr %696, i64 %645
  %698 = load double, ptr %697, align 8
  call void @llvm.lifetime.start.p0(ptr %access-scratch142)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pzSaySdGvp", ptr nonnull %access-scratch142, i64 33, ptr null) #2
  %699 = load ptr, ptr @"$s5nbody2pzSaySdGvp", align 8
  %700 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %699) #15
  store ptr %699, ptr @"$s5nbody2pzSaySdGvp", align 8
  br i1 %700, label %703, label %701

701:                                              ; preds = %695
  %702 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %699)
  br label %703

703:                                              ; preds = %701, %695
  %704 = phi ptr [ %702, %701 ], [ %699, %695 ]
  %705 = getelementptr inbounds nuw i8, ptr %704, i64 16
  %706 = load i64, ptr %705, align 8, !range !9
  %.not270 = icmp samesign ult i64 %645, %706
  br i1 %.not270, label %707, label %odessy.chk59, !prof !11

707:                                              ; preds = %703
  %708 = fmul double %691, %698
  %709 = getelementptr inbounds nuw i8, ptr %704, i64 32
  %710 = getelementptr inbounds nuw %TSd, ptr %709, i64 %645
  %711 = load double, ptr %710, align 8
  %712 = fadd double %708, %711
  store double %712, ptr %710, align 8
  store ptr %704, ptr @"$s5nbody2pzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch142) #2
  call void @llvm.lifetime.end.p0(ptr %access-scratch142)
  %713 = icmp eq i64 %646, %.pr
  br i1 %713, label %.thread297, label %.preheader

.loopexit299:                                     ; preds = %.loopexit, %453
  %714 = phi double [ 0.000000e+00, %453 ], [ %789, %.loopexit ]
  %715 = call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCyypGMD") #14
  %716 = call noalias ptr @swift_allocObject(ptr %715, i64 64, i64 7) #2
  %717 = getelementptr inbounds nuw i8, ptr %716, i64 16
  store i64 1, ptr %717, align 8
  %._storage169._capacityAndFlags = getelementptr inbounds nuw i8, ptr %716, i64 24
  store i64 2, ptr %._storage169._capacityAndFlags, align 8
  %718 = getelementptr inbounds nuw i8, ptr %716, i64 32
  %719 = call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCys7CVarArg_pGMD") #14
  %reference.new = call ptr @swift_initStackObject(ptr %719, ptr nonnull %reference.raw226) #15
  %reference.new171 = getelementptr inbounds nuw i8, ptr %reference.new, i64 16
  store i64 1, ptr %reference.new171, align 8
  %reference.new171._storage._capacityAndFlags = getelementptr inbounds nuw i8, ptr %reference.new, i64 24
  store i64 2, ptr %reference.new171._storage._capacityAndFlags, align 8
  %720 = getelementptr inbounds nuw i8, ptr %reference.new, i64 32
  %721 = getelementptr inbounds nuw i8, ptr %reference.new, i64 56
  store ptr @"$sSdN", ptr %721, align 8
  %722 = getelementptr inbounds nuw i8, ptr %reference.new, i64 64
  store ptr @"$sSds7CVarArgsWP", ptr %722, align 8
  store double %714, ptr %720, align 8
  %723 = call swiftcc { i64, ptr } @"$sSS10FoundationE6format6locale9argumentsS2Sh_0A10Essentials6LocaleVSghSays7CVarArg_pGhtcfC"(i64 1715023397, ptr nonnull inttoptr (i64 -2017612633061982208 to ptr), i64 0, i64 0, ptr %reference.new)
  %724 = extractvalue { i64, ptr } %723, 0
  %725 = extractvalue { i64, ptr } %723, 1
  call void @swift_setDeallocating(ptr %reference.new) #2
  %726 = load i64, ptr %reference.new171, align 8, !range !9
  %727 = call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss7CVarArg_pMD") #14
  call void @swift_arrayDestroy(ptr nonnull %720, i64 %726, ptr %727) #2
  %728 = getelementptr inbounds nuw i8, ptr %716, i64 56
  store ptr @"$sSSN", ptr %728, align 8
  store i64 %724, ptr %718, align 8
  %._guts174._object._object = getelementptr inbounds nuw i8, ptr %716, i64 40
  store ptr %725, ptr %._guts174._object._object, align 8
  call swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr %716, i64 32, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr), i64 10, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr))
  call void @swift_release(ptr %716) #2
  ret i32 0

729:                                              ; preds = %.loopexit, %455
  %730 = phi i64 [ 0, %455 ], [ %732, %.loopexit ]
  %731 = phi double [ 0.000000e+00, %455 ], [ %789, %.loopexit ]
  %732 = add nuw nsw i64 %730, 1
  %733 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %734 = getelementptr inbounds nuw i8, ptr %733, i64 16
  %735 = load i64, ptr %734, align 8, !range !9
  %.not272 = icmp samesign ult i64 %730, %735
  br i1 %.not272, label %736, label %odessy.chk61, !prof !11

736:                                              ; preds = %729
  %737 = getelementptr inbounds nuw i8, ptr %733, i64 32
  %738 = getelementptr inbounds nuw %TSd, ptr %737, i64 %730
  %739 = load double, ptr %738, align 8
  %740 = fmul double %739, 5.000000e-01
  %741 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %742 = getelementptr inbounds nuw i8, ptr %741, i64 16
  %743 = load i64, ptr %742, align 8, !range !9
  %.not273 = icmp samesign ult i64 %730, %743
  br i1 %.not273, label %744, label %odessy.chk62, !prof !11

744:                                              ; preds = %736
  %745 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %746 = getelementptr inbounds nuw i8, ptr %745, i64 16
  %747 = load i64, ptr %746, align 8, !range !9
  %.not274 = icmp samesign ult i64 %730, %747
  br i1 %.not274, label %748, label %odessy.chk63, !prof !11

748:                                              ; preds = %744
  %749 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %750 = getelementptr inbounds nuw i8, ptr %749, i64 16
  %751 = load i64, ptr %750, align 8, !range !9
  %.not275 = icmp samesign ult i64 %730, %751
  br i1 %.not275, label %752, label %odessy.chk64, !prof !11

752:                                              ; preds = %748
  %753 = getelementptr inbounds nuw i8, ptr %741, i64 32
  %754 = getelementptr inbounds nuw %TSd, ptr %753, i64 %730
  %755 = load double, ptr %754, align 8
  %756 = fmul double %755, %755
  %757 = getelementptr inbounds nuw i8, ptr %745, i64 32
  %758 = getelementptr inbounds nuw %TSd, ptr %757, i64 %730
  %759 = load double, ptr %758, align 8
  %760 = fmul double %759, %759
  %761 = fadd double %756, %760
  %762 = getelementptr inbounds nuw i8, ptr %749, i64 32
  %763 = getelementptr inbounds nuw %TSd, ptr %762, i64 %730
  %764 = load double, ptr %763, align 8
  %765 = fmul double %764, %764
  %766 = fadd double %761, %765
  %767 = fmul double %740, %766
  %768 = fadd double %731, %767
  store double %768, ptr @"$s5nbody1eSdvp", align 8
  %769 = load i64, ptr @"$s5nbody1nSivp", align 8
  %.not328 = icmp sgt i64 %769, %730
  br i1 %.not328, label %770, label %odessy.chk65, !prof !11

770:                                              ; preds = %752
  %771 = icmp eq i64 %732, %769
  br i1 %771, label %.loopexit, label %772

772:                                              ; preds = %770
  call void @llvm.lifetime.start.p0(ptr %access-scratch155)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pySaySdGvp", ptr nonnull %access-scratch155, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr %access-scratch156)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pzSaySdGvp", ptr nonnull %access-scratch156, i64 0, ptr null) #2
  %773 = load ptr, ptr @"$s5nbody2pxSaySdGvp", align 8
  %774 = getelementptr inbounds nuw i8, ptr %773, i64 16
  %"$s5nbody1eSdvp.promoted" = load double, ptr @"$s5nbody1eSdvp", align 8
  %775 = getelementptr inbounds nuw i8, ptr %773, i64 32
  %776 = getelementptr inbounds nuw %TSd, ptr %775, i64 %730
  %777 = load ptr, ptr @"$s5nbody2pySaySdGvp", align 8
  %778 = getelementptr inbounds nuw i8, ptr %777, i64 16
  %779 = getelementptr inbounds nuw i8, ptr %777, i64 32
  %780 = getelementptr inbounds nuw %TSd, ptr %779, i64 %730
  %781 = load ptr, ptr @"$s5nbody2pzSaySdGvp", align 8
  %782 = getelementptr inbounds nuw i8, ptr %781, i64 16
  %783 = getelementptr inbounds nuw i8, ptr %781, i64 32
  %784 = getelementptr inbounds nuw %TSd, ptr %783, i64 %730
  %785 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %786 = getelementptr inbounds nuw i8, ptr %785, i64 16
  %787 = getelementptr inbounds nuw i8, ptr %785, i64 32
  %788 = getelementptr inbounds nuw %TSd, ptr %787, i64 %730
  %.pre326 = load i64, ptr %774, align 8, !range !9
  %.not277 = icmp samesign ult i64 %730, %.pre326
  br label %791

.loopexit:                                        ; preds = %817, %770
  %789 = phi double [ %768, %770 ], [ %828, %817 ]
  %790 = icmp eq i64 %732, %451
  br i1 %790, label %.loopexit299, label %729

791:                                              ; preds = %817, %772
  %792 = phi double [ %"$s5nbody1eSdvp.promoted", %772 ], [ %828, %817 ]
  %793 = phi i64 [ %732, %772 ], [ %794, %817 ]
  %794 = add nuw nsw i64 %793, 1
  br i1 %.not277, label %795, label %odessy.chk66, !prof !11

795:                                              ; preds = %791
  %.not278 = icmp samesign ult i64 %793, %.pre326
  br i1 %.not278, label %796, label %odessy.chk67, !prof !11

796:                                              ; preds = %795
  %797 = load double, ptr %776, align 8
  %798 = getelementptr inbounds nuw %TSd, ptr %775, i64 %793
  %799 = load double, ptr %798, align 8
  %800 = fsub double %797, %799
  %801 = load i64, ptr %778, align 8, !range !9
  %.not279 = icmp samesign ult i64 %730, %801
  br i1 %.not279, label %802, label %odessy.chk68, !prof !11

802:                                              ; preds = %796
  %.not280 = icmp samesign ult i64 %793, %801
  br i1 %.not280, label %803, label %odessy.chk69, !prof !11

803:                                              ; preds = %802
  %804 = load double, ptr %780, align 8
  %805 = getelementptr inbounds nuw %TSd, ptr %779, i64 %793
  %806 = load double, ptr %805, align 8
  %807 = fsub double %804, %806
  %808 = load i64, ptr %782, align 8, !range !9
  %.not281 = icmp samesign ult i64 %730, %808
  br i1 %.not281, label %809, label %odessy.chk70, !prof !11

809:                                              ; preds = %803
  %.not282 = icmp samesign ult i64 %793, %808
  br i1 %.not282, label %810, label %odessy.chk71, !prof !11

810:                                              ; preds = %809
  %811 = load double, ptr %784, align 8
  %812 = getelementptr inbounds nuw %TSd, ptr %783, i64 %793
  %813 = load double, ptr %812, align 8
  %814 = fsub double %811, %813
  %815 = load i64, ptr %786, align 8, !range !9
  %.not283 = icmp samesign ult i64 %730, %815
  br i1 %.not283, label %816, label %odessy.chk72, !prof !11

816:                                              ; preds = %810
  %.not284 = icmp samesign ult i64 %793, %815
  br i1 %.not284, label %817, label %odessy.chk73, !prof !11

817:                                              ; preds = %816
  %818 = load double, ptr %788, align 8
  %819 = getelementptr inbounds nuw %TSd, ptr %787, i64 %793
  %820 = load double, ptr %819, align 8
  %821 = fmul double %818, %820
  %822 = fmul double %800, %800
  %823 = fmul double %807, %807
  %824 = fadd double %822, %823
  %825 = fmul double %814, %814
  %826 = fadd double %824, %825
  %sqrt298 = call double @llvm.sqrt.f64(double %826)
  %827 = fdiv double %821, %sqrt298
  %828 = fsub double %792, %827
  store double %828, ptr @"$s5nbody1eSdvp", align 8
  %829 = icmp eq i64 %794, %769
  br i1 %829, label %.loopexit, label %791

830:                                              ; No predecessors!
  tail call void asm sideeffect "", "n"(i32 0) #2
  tail call void @llvm.trap()
  unreachable

831:                                              ; preds = %19
  call void asm sideeffect "", "n"(i32 1) #2
  call void @llvm.trap()
  unreachable

832:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 4) #2
  call void @llvm.trap()
  unreachable

833:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 7) #2
  call void @llvm.trap()
  unreachable

834:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 8) #2
  call void @llvm.trap()
  unreachable

835:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 9) #2
  call void @llvm.trap()
  unreachable

836:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 10) #2
  call void @llvm.trap()
  unreachable

837:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 11) #2
  call void @llvm.trap()
  unreachable

838:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 12) #2
  call void @llvm.trap()
  unreachable

839:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 13) #2
  call void @llvm.trap()
  unreachable

840:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 14) #2
  call void @llvm.trap()
  unreachable

841:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 15) #2
  call void @llvm.trap()
  unreachable

842:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 16) #2
  call void @llvm.trap()
  unreachable

843:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 17) #2
  call void @llvm.trap()
  unreachable

844:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 18) #2
  call void @llvm.trap()
  unreachable

845:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 19) #2
  call void @llvm.trap()
  unreachable

846:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 20) #2
  call void @llvm.trap()
  unreachable

847:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 21) #2
  call void @llvm.trap()
  unreachable

848:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 22) #2
  call void @llvm.trap()
  unreachable

849:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 23) #2
  call void @llvm.trap()
  unreachable

850:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 24) #2
  call void @llvm.trap()
  unreachable

851:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 25) #2
  call void @llvm.trap()
  unreachable

852:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 26) #2
  call void @llvm.trap()
  unreachable

853:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 27) #2
  call void @llvm.trap()
  unreachable

854:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 28) #2
  call void @llvm.trap()
  unreachable

855:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 30) #2
  call void @llvm.trap()
  unreachable

856:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 31) #2
  call void @llvm.trap()
  unreachable

857:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 32) #2
  call void @llvm.trap()
  unreachable

858:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 33) #2
  call void @llvm.trap()
  unreachable

859:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 34) #2
  call void @llvm.trap()
  unreachable

860:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 35) #2
  call void @llvm.trap()
  unreachable

861:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 36) #2
  call void @llvm.trap()
  unreachable

862:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 37) #2
  call void @llvm.trap()
  unreachable

863:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 40) #2
  call void @llvm.trap()
  unreachable

864:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 43) #2
  call void @llvm.trap()
  unreachable

865:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 45) #2
  call void @llvm.trap()
  unreachable

866:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 46) #2
  call void @llvm.trap()
  unreachable

867:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 47) #2
  call void @llvm.trap()
  unreachable

868:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 48) #2
  call void @llvm.trap()
  unreachable

869:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 49) #2
  call void @llvm.trap()
  unreachable

870:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 50) #2
  call void @llvm.trap()
  unreachable

871:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 51) #2
  call void @llvm.trap()
  unreachable

872:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 52) #2
  call void @llvm.trap()
  unreachable

873:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 53) #2
  call void @llvm.trap()
  unreachable

874:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 54) #2
  call void @llvm.trap()
  unreachable

875:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 55) #2
  call void @llvm.trap()
  unreachable

876:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 56) #2
  call void @llvm.trap()
  unreachable

877:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 57) #2
  call void @llvm.trap()
  unreachable

878:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 58) #2
  call void @llvm.trap()
  unreachable

879:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 59) #2
  call void @llvm.trap()
  unreachable

880:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 60) #2
  call void @llvm.trap()
  unreachable

881:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 61) #2
  call void @llvm.trap()
  unreachable

882:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 62) #2
  call void @llvm.trap()
  unreachable

883:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 63) #2
  call void @llvm.trap()
  unreachable

884:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 66) #2
  call void @llvm.trap()
  unreachable

885:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 67) #2
  call void @llvm.trap()
  unreachable

886:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 68) #2
  call void @llvm.trap()
  unreachable

887:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 69) #2
  call void @llvm.trap()
  unreachable

888:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 70) #2
  call void @llvm.trap()
  unreachable

889:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 71) #2
  call void @llvm.trap()
  unreachable

890:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 72) #2
  call void @llvm.trap()
  unreachable

891:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 75) #2
  call void @llvm.trap()
  unreachable

892:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 76) #2
  call void @llvm.trap()
  unreachable

893:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 77) #2
  call void @llvm.trap()
  unreachable

894:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 78) #2
  call void @llvm.trap()
  unreachable

895:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 79) #2
  call void @llvm.trap()
  unreachable

896:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 81) #2
  call void @llvm.trap()
  unreachable

897:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 82) #2
  call void @llvm.trap()
  unreachable

898:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 83) #2
  call void @llvm.trap()
  unreachable

899:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 84) #2
  call void @llvm.trap()
  unreachable

900:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 85) #2
  call void @llvm.trap()
  unreachable

901:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 86) #2
  call void @llvm.trap()
  unreachable

902:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 87) #2
  call void @llvm.trap()
  unreachable

903:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 88) #2
  call void @llvm.trap()
  unreachable

904:                                              ; preds = %57
  tail call void asm sideeffect "", "n"(i32 89) #2
  tail call void @llvm.trap()
  unreachable

905:                                              ; preds = %28
  tail call void asm sideeffect "", "n"(i32 90) #2
  tail call void @llvm.trap()
  unreachable

odessy.chk:                                       ; preds = %entry
  call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %36
  call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %112
  call void @odessy.chk(i32 2)
  unreachable

odessy.chk3:                                      ; preds = %165
  call void @odessy.chk(i32 3)
  unreachable

odessy.chk4:                                      ; preds = %171
  call void @odessy.chk(i32 4)
  unreachable

odessy.chk5:                                      ; preds = %185
  call void @odessy.chk(i32 5)
  unreachable

odessy.chk6:                                      ; preds = %189
  call void @odessy.chk(i32 6)
  unreachable

odessy.chk7:                                      ; preds = %195
  call void @odessy.chk(i32 7)
  unreachable

odessy.chk8:                                      ; preds = %209
  call void @odessy.chk(i32 8)
  unreachable

odessy.chk9:                                      ; preds = %213
  call void @odessy.chk(i32 9)
  unreachable

odessy.chk10:                                     ; preds = %219
  call void @odessy.chk(i32 10)
  unreachable

odessy.chk11:                                     ; preds = %233
  call void @odessy.chk(i32 11)
  unreachable

odessy.chk12:                                     ; preds = %237
  call void @odessy.chk(i32 12)
  unreachable

odessy.chk13:                                     ; preds = %243
  call void @odessy.chk(i32 13)
  unreachable

odessy.chk14:                                     ; preds = %258
  call void @odessy.chk(i32 14)
  unreachable

odessy.chk15:                                     ; preds = %262
  call void @odessy.chk(i32 15)
  unreachable

odessy.chk16:                                     ; preds = %269
  call void @odessy.chk(i32 16)
  unreachable

odessy.chk17:                                     ; preds = %284
  call void @odessy.chk(i32 17)
  unreachable

odessy.chk18:                                     ; preds = %288
  call void @odessy.chk(i32 18)
  unreachable

odessy.chk19:                                     ; preds = %295
  call void @odessy.chk(i32 19)
  unreachable

odessy.chk20:                                     ; preds = %310
  call void @odessy.chk(i32 20)
  unreachable

odessy.chk21:                                     ; preds = %314
  call void @odessy.chk(i32 21)
  unreachable

odessy.chk22:                                     ; preds = %321
  call void @odessy.chk(i32 22)
  unreachable

odessy.chk23:                                     ; preds = %336
  call void @odessy.chk(i32 23)
  unreachable

odessy.chk24:                                     ; preds = %.loopexit304
  call void @odessy.chk(i32 24)
  unreachable

odessy.chk25:                                     ; preds = %137
  call void @odessy.chk(i32 25)
  unreachable

odessy.chk26:                                     ; preds = %145
  call void @odessy.chk(i32 26)
  unreachable

odessy.chk27:                                     ; preds = %149
  call void @odessy.chk(i32 27)
  unreachable

odessy.chk28:                                     ; preds = %153
  call void @odessy.chk(i32 28)
  unreachable

odessy.chk29:                                     ; preds = %352
  call void @odessy.chk(i32 29)
  unreachable

odessy.chk30:                                     ; preds = %367
  call void @odessy.chk(i32 30)
  unreachable

odessy.chk31:                                     ; preds = %382
  call void @odessy.chk(i32 31)
  unreachable

odessy.chk32:                                     ; preds = %387
  call void @odessy.chk(i32 32)
  unreachable

odessy.chk33:                                     ; preds = %.preheader302.preheader
  call void @odessy.chk(i32 33)
  unreachable

odessy.chk34:                                     ; preds = %.preheader301.preheader
  call void @odessy.chk(i32 34)
  unreachable

odessy.chk35:                                     ; preds = %467
  call void @odessy.chk(i32 35)
  unreachable

odessy.chk36:                                     ; preds = %473
  call void @odessy.chk(i32 36)
  unreachable

odessy.chk37:                                     ; preds = %474
  call void @odessy.chk(i32 37)
  unreachable

odessy.chk38:                                     ; preds = %484
  call void @odessy.chk(i32 38)
  unreachable

odessy.chk39:                                     ; preds = %485
  call void @odessy.chk(i32 39)
  unreachable

odessy.chk40:                                     ; preds = %495
  call void @odessy.chk(i32 40)
  unreachable

odessy.chk41:                                     ; preds = %496
  call void @odessy.chk(i32 41)
  unreachable

odessy.chk42:                                     ; preds = %522
  call void @odessy.chk(i32 42)
  unreachable

odessy.chk43:                                     ; preds = %526
  call void @odessy.chk(i32 43)
  unreachable

odessy.chk44:                                     ; preds = %544
  call void @odessy.chk(i32 44)
  unreachable

odessy.chk45:                                     ; preds = %548
  call void @odessy.chk(i32 45)
  unreachable

odessy.chk46:                                     ; preds = %566
  call void @odessy.chk(i32 46)
  unreachable

odessy.chk47:                                     ; preds = %570
  call void @odessy.chk(i32 47)
  unreachable

odessy.chk48:                                     ; preds = %588
  call void @odessy.chk(i32 48)
  unreachable

odessy.chk49:                                     ; preds = %592
  call void @odessy.chk(i32 49)
  unreachable

odessy.chk50:                                     ; preds = %610
  call void @odessy.chk(i32 50)
  unreachable

odessy.chk51:                                     ; preds = %614
  call void @odessy.chk(i32 51)
  unreachable

odessy.chk52:                                     ; preds = %632
  call void @odessy.chk(i32 52)
  unreachable

odessy.chk53:                                     ; preds = %456
  call void @odessy.chk(i32 53)
  unreachable

odessy.chk54:                                     ; preds = %.preheader
  call void @odessy.chk(i32 54)
  unreachable

odessy.chk55:                                     ; preds = %659
  call void @odessy.chk(i32 55)
  unreachable

odessy.chk56:                                     ; preds = %663
  call void @odessy.chk(i32 56)
  unreachable

odessy.chk57:                                     ; preds = %681
  call void @odessy.chk(i32 57)
  unreachable

odessy.chk58:                                     ; preds = %685
  call void @odessy.chk(i32 58)
  unreachable

odessy.chk59:                                     ; preds = %703
  call void @odessy.chk(i32 59)
  unreachable

odessy.chk60:                                     ; preds = %.loopexit303
  call void @odessy.chk(i32 60)
  unreachable

odessy.chk61:                                     ; preds = %729
  call void @odessy.chk(i32 61)
  unreachable

odessy.chk62:                                     ; preds = %736
  call void @odessy.chk(i32 62)
  unreachable

odessy.chk63:                                     ; preds = %744
  call void @odessy.chk(i32 63)
  unreachable

odessy.chk64:                                     ; preds = %748
  call void @odessy.chk(i32 64)
  unreachable

odessy.chk65:                                     ; preds = %752
  call void @odessy.chk(i32 65)
  unreachable

odessy.chk66:                                     ; preds = %791
  call void @odessy.chk(i32 66)
  unreachable

odessy.chk67:                                     ; preds = %795
  call void @odessy.chk(i32 67)
  unreachable

odessy.chk68:                                     ; preds = %796
  call void @odessy.chk(i32 68)
  unreachable

odessy.chk69:                                     ; preds = %802
  call void @odessy.chk(i32 69)
  unreachable

odessy.chk70:                                     ; preds = %803
  call void @odessy.chk(i32 70)
  unreachable

odessy.chk71:                                     ; preds = %809
  call void @odessy.chk(i32 71)
  unreachable

odessy.chk72:                                     ; preds = %810
  call void @odessy.chk(i32 72)
  unreachable

odessy.chk73:                                     ; preds = %816
  call void @odessy.chk(i32 73)
  unreachable
}

declare swiftcc ptr @"$ss11CommandLineO9argumentsSaySSGvgZ"() local_unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #1

; Function Attrs: nounwind
declare ptr @swift_bridgeObjectRetain(ptr returned) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @swift_release(ptr) local_unnamed_addr #2

define linkonce_odr hidden swiftcc { i64, i8 } @"$ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5UInt8VGXEfU_AGSiADs5Error_psAARzSSRsd__r__lIetyyrzo_Tpq5Si_Tg5"(i64 %0, i64 %1, i64 %2, ptr swiftself %3, ptr noalias swifterror captures(none) dereferenceable(8) %4) local_unnamed_addr #0 {
entry:
  %5 = inttoptr i64 %0 to ptr
  %6 = load i8, ptr %5, align 1
  switch i8 %6, label %58 [
    i8 45, label %7
    i8 43, label %53
  ]

7:                                                ; preds = %entry
  %8 = icmp slt i64 %1, 1
  br i1 %8, label %odessy.chk1, label %9, !prof !10

9:                                                ; preds = %7
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %11 = icmp eq i64 %1, 1
  br i1 %11, label %.loopexit, label %12, !prof !10

12:                                               ; preds = %9
  %13 = icmp eq i64 %0, 0
  %14 = icmp slt i64 %2, 11
  %15 = trunc i64 %2 to i8
  %16 = add i8 %15, 55
  %17 = add i8 %15, 87
  %18 = add i8 %15, 48
  %19 = select i1 %14, i8 97, i8 %17
  %20 = select i1 %14, i8 65, i8 %16
  %21 = select i1 %14, i8 %18, i8 58
  br i1 %13, label %.loopexit, label %26

.loopexit:                                        ; preds = %129, %122, %116, %113, %94, %87, %81, %78, %60, %58, %55, %50, %43, %37, %34, %12, %9
  %22 = phi i64 [ 0, %9 ], [ 0, %12 ], [ 0, %55 ], [ 0, %60 ], [ 0, %58 ], [ 0, %129 ], [ %123, %122 ], [ 0, %116 ], [ 0, %113 ], [ 0, %50 ], [ %44, %43 ], [ 0, %37 ], [ 0, %34 ], [ 0, %94 ], [ %88, %87 ], [ 0, %81 ], [ 0, %78 ]
  %23 = phi i8 [ 1, %9 ], [ 0, %12 ], [ 1, %55 ], [ 0, %60 ], [ 1, %58 ], [ 1, %129 ], [ 0, %122 ], [ 1, %116 ], [ 1, %113 ], [ 1, %50 ], [ 0, %43 ], [ 1, %37 ], [ 1, %34 ], [ 1, %94 ], [ 0, %87 ], [ 1, %81 ], [ 1, %78 ]
  %24 = insertvalue { i64, i8 } undef, i64 %22, 0
  %25 = insertvalue { i64, i8 } %24, i8 %23, 1
  ret { i64, i8 } %25

26:                                               ; preds = %12
  %27 = getelementptr i8, ptr %5, i64 %1
  br label %28

28:                                               ; preds = %43, %26
  %29 = phi ptr [ %10, %26 ], [ %45, %43 ]
  %30 = phi i64 [ 0, %26 ], [ %44, %43 ]
  %31 = load i8, ptr %29, align 1
  %32 = icmp ugt i8 %31, 47
  %33 = icmp ult i8 %31, %21
  %or.cond = select i1 %32, i1 %33, i1 false
  br i1 %or.cond, label %34, label %47, !prof !13

34:                                               ; preds = %50, %47, %28
  %.sink = phi i8 [ -55, %47 ], [ -87, %50 ], [ -48, %28 ]
  %35 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %30, i64 %2)
  %36 = extractvalue { i64, i1 } %35, 1
  br i1 %36, label %.loopexit, label %37

37:                                               ; preds = %34
  %38 = add i8 %31, %.sink
  %39 = extractvalue { i64, i1 } %35, 0
  %40 = zext i8 %38 to i64
  %41 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %39, i64 %40)
  %42 = extractvalue { i64, i1 } %41, 1
  br i1 %42, label %.loopexit, label %43, !prof !10

43:                                               ; preds = %37
  %44 = extractvalue { i64, i1 } %41, 0
  %45 = getelementptr inbounds nuw i8, ptr %29, i64 1
  %46 = icmp eq ptr %45, %27
  br i1 %46, label %.loopexit, label %28

47:                                               ; preds = %28
  %48 = icmp ugt i8 %31, 64
  %49 = icmp ult i8 %31, %20
  %or.cond4 = select i1 %48, i1 %49, i1 false
  br i1 %or.cond4, label %34, label %50, !prof !13

50:                                               ; preds = %47
  %51 = icmp ugt i8 %31, 96
  %52 = icmp ult i8 %31, %19
  %or.cond5 = select i1 %51, i1 %52, i1 false
  br i1 %or.cond5, label %34, label %.loopexit, !prof !13

53:                                               ; preds = %entry
  %54 = icmp slt i64 %1, 1
  br i1 %54, label %odessy.chk, label %55, !prof !10

55:                                               ; preds = %53
  %56 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %57 = icmp eq i64 %1, 1
  br i1 %57, label %.loopexit, label %60, !prof !10

58:                                               ; preds = %entry
  %59 = icmp eq i64 %1, 0
  br i1 %59, label %.loopexit, label %97, !prof !10

60:                                               ; preds = %55
  %61 = icmp eq i64 %0, 0
  %62 = icmp slt i64 %2, 11
  %63 = trunc i64 %2 to i8
  %64 = add i8 %63, 55
  %65 = add i8 %63, 87
  %66 = add i8 %63, 48
  %67 = select i1 %62, i8 97, i8 %65
  %68 = select i1 %62, i8 65, i8 %64
  %69 = select i1 %62, i8 %66, i8 58
  br i1 %61, label %.loopexit, label %70

70:                                               ; preds = %60
  %71 = getelementptr i8, ptr %5, i64 %1
  br label %72

72:                                               ; preds = %87, %70
  %73 = phi ptr [ %56, %70 ], [ %89, %87 ]
  %74 = phi i64 [ 0, %70 ], [ %88, %87 ]
  %75 = load i8, ptr %73, align 1
  %76 = icmp ugt i8 %75, 47
  %77 = icmp ult i8 %75, %69
  %or.cond6 = select i1 %76, i1 %77, i1 false
  br i1 %or.cond6, label %78, label %91, !prof !13

78:                                               ; preds = %94, %91, %72
  %.sink55 = phi i8 [ -55, %91 ], [ -87, %94 ], [ -48, %72 ]
  %79 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %74, i64 %2)
  %80 = extractvalue { i64, i1 } %79, 1
  br i1 %80, label %.loopexit, label %81

81:                                               ; preds = %78
  %82 = add i8 %75, %.sink55
  %83 = extractvalue { i64, i1 } %79, 0
  %84 = zext i8 %82 to i64
  %85 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %83, i64 %84)
  %86 = extractvalue { i64, i1 } %85, 1
  br i1 %86, label %.loopexit, label %87, !prof !10

87:                                               ; preds = %81
  %88 = extractvalue { i64, i1 } %85, 0
  %89 = getelementptr inbounds nuw i8, ptr %73, i64 1
  %90 = icmp eq ptr %89, %71
  br i1 %90, label %.loopexit, label %72

91:                                               ; preds = %72
  %92 = icmp ugt i8 %75, 64
  %93 = icmp ult i8 %75, %68
  %or.cond7 = select i1 %92, i1 %93, i1 false
  br i1 %or.cond7, label %78, label %94, !prof !13

94:                                               ; preds = %91
  %95 = icmp ugt i8 %75, 96
  %96 = icmp ult i8 %75, %67
  %or.cond8 = select i1 %95, i1 %96, i1 false
  br i1 %or.cond8, label %78, label %.loopexit, !prof !13

97:                                               ; preds = %58
  %98 = icmp slt i64 %2, 11
  %99 = trunc i64 %2 to i8
  %100 = add i8 %99, 55
  %101 = add i8 %99, 87
  %102 = add i8 %99, 48
  %103 = select i1 %98, i8 97, i8 %101
  %104 = select i1 %98, i8 65, i8 %100
  %105 = select i1 %98, i8 %102, i8 58
  %106 = getelementptr inbounds i8, ptr %5, i64 %1
  br label %107

107:                                              ; preds = %122, %97
  %108 = phi ptr [ %5, %97 ], [ %124, %122 ]
  %109 = phi i64 [ 0, %97 ], [ %123, %122 ]
  %110 = load i8, ptr %108, align 1
  %111 = icmp ugt i8 %110, 47
  %112 = icmp ult i8 %110, %105
  %or.cond9 = select i1 %111, i1 %112, i1 false
  br i1 %or.cond9, label %113, label %126, !prof !13

113:                                              ; preds = %129, %126, %107
  %.sink56 = phi i8 [ -55, %126 ], [ -87, %129 ], [ -48, %107 ]
  %114 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %109, i64 %2)
  %115 = extractvalue { i64, i1 } %114, 1
  br i1 %115, label %.loopexit, label %116

116:                                              ; preds = %113
  %117 = add i8 %110, %.sink56
  %118 = extractvalue { i64, i1 } %114, 0
  %119 = zext i8 %117 to i64
  %120 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %118, i64 %119)
  %121 = extractvalue { i64, i1 } %120, 1
  br i1 %121, label %.loopexit, label %122, !prof !10

122:                                              ; preds = %116
  %123 = extractvalue { i64, i1 } %120, 0
  %124 = getelementptr inbounds nuw i8, ptr %108, i64 1
  %125 = icmp eq ptr %124, %106
  br i1 %125, label %.loopexit, label %107

126:                                              ; preds = %107
  %127 = icmp ugt i8 %110, 64
  %128 = icmp ult i8 %110, %104
  %or.cond10 = select i1 %127, i1 %128, i1 false
  br i1 %or.cond10, label %113, label %129, !prof !13

129:                                              ; preds = %126
  %130 = icmp ugt i8 %110, 96
  %131 = icmp ult i8 %110, %103
  %or.cond11 = select i1 %130, i1 %131, i1 false
  br i1 %or.cond11, label %113, label %.loopexit, !prof !13

132:                                              ; No predecessors!
  tail call void asm sideeffect "", "n"(i32 0) #2
  tail call void @llvm.trap()
  unreachable

133:                                              ; No predecessors!
  tail call void asm sideeffect "", "n"(i32 1) #2
  tail call void @llvm.trap()
  unreachable

odessy.chk:                                       ; preds = %53
  call void @odessy.chk(i32 74)
  unreachable

odessy.chk1:                                      ; preds = %7
  call void @odessy.chk(i32 75)
  unreachable
}

; Function Attrs: noinline
define linkonce_odr hidden swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFSSSiADSSRszsAER_r0_lIetgyr_Tpq5Si_Tg5"(i64 %0, ptr %1, i64 %2) local_unnamed_addr #3 {
entry:
  %3 = alloca %TSS, align 8
  %4 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  call void @llvm.lifetime.start.p0(ptr %3)
  store i64 %0, ptr %3, align 8
  %._guts._object._object = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %._guts._object._object, align 8
  %5 = tail call ptr @swift_bridgeObjectRetain(ptr returned %1) #2
  %6 = call swiftcc { i64, ptr } @"$sSSySSxcs25LosslessStringConvertibleRzSTRzSJ7ElementSTRtzlufC"(ptr noalias nonnull %3, ptr nonnull @"$sSSN", ptr nonnull @"$sSSs25LosslessStringConvertiblesWP", ptr nonnull @"$sSSSTsWP")
  %7 = extractvalue { i64, ptr } %6, 0
  %8 = extractvalue { i64, ptr } %6, 1
  call void @llvm.lifetime.end.p0(ptr %3)
  %9 = ptrtoint ptr %8 to i64
  %10 = and i64 %9, 1152921504606846976
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %16, label %12, !prof !11

12:                                               ; preds = %entry
  %13 = call swiftcc { i64, ptr } @"$sSS8_copyingyS2SFZ"(i64 %7, ptr nonnull %8)
  call void @swift_bridgeObjectRelease(ptr nonnull %8) #2
  %14 = extractvalue { i64, ptr } %13, 0
  %15 = extractvalue { i64, ptr } %13, 1
  %.pre = ptrtoint ptr %15 to i64
  br label %16

16:                                               ; preds = %12, %entry
  %.pre-phi = phi i64 [ %9, %entry ], [ %.pre, %12 ]
  %17 = phi i64 [ %7, %entry ], [ %14, %12 ]
  %18 = phi ptr [ %8, %entry ], [ %15, %12 ]
  %19 = and i64 %.pre-phi, 2305843009213693952
  %.not = icmp eq i64 %19, 0
  br i1 %.not, label %25, label %20

20:                                               ; preds = %16
  %21 = lshr i64 %.pre-phi, 56
  %22 = and i64 %21, 15
  call void @llvm.lifetime.start.p0(ptr %4)
  %.elt5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %23 = and i64 %.pre-phi, 72057594037927935
  store i64 %17, ptr %4, align 8
  store i64 %23, ptr %.elt5, align 8
  %24 = trunc i64 %17 to i8
  switch i8 %24, label %72 [
    i8 45, label %27
    i8 43, label %71
  ]

25:                                               ; preds = %16
  %26 = and i64 %17, 1152921504606846976
  %.not68 = icmp eq i64 %26, 0
  br i1 %.not68, label %149, label %145, !prof !10

27:                                               ; preds = %20
  switch i64 %22, label %28 [
    i64 0, label %284
    i64 1, label %.loopexit81
  ], !prof !12

28:                                               ; preds = %27
  %29 = icmp slt i64 %2, 11
  %30 = trunc i64 %2 to i8
  %31 = add i8 %30, 55
  %32 = add i8 %30, 87
  %33 = add i8 %30, 48
  %34 = select i1 %29, i8 97, i8 %32
  %35 = select i1 %29, i8 65, i8 %31
  %36 = select i1 %29, i8 %33, i8 58
  %37 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %38 = getelementptr i8, ptr %4, i64 %22
  br label %46

.loopexit81:                                      ; preds = %142, %135, %129, %126, %107, %100, %94, %91, %72, %71, %68, %61, %55, %52, %27
  %39 = phi i64 [ 0, %72 ], [ 0, %27 ], [ 0, %71 ], [ 0, %142 ], [ %136, %135 ], [ 0, %129 ], [ 0, %126 ], [ 0, %68 ], [ %62, %61 ], [ 0, %55 ], [ 0, %52 ], [ 0, %107 ], [ %101, %100 ], [ 0, %94 ], [ 0, %91 ]
  %40 = phi i8 [ 1, %72 ], [ 1, %27 ], [ 1, %71 ], [ 1, %142 ], [ 0, %135 ], [ 1, %129 ], [ 1, %126 ], [ 1, %68 ], [ 0, %61 ], [ 1, %55 ], [ 1, %52 ], [ 1, %107 ], [ 0, %100 ], [ 1, %94 ], [ 1, %91 ]
  call void @swift_bridgeObjectRelease(ptr %18) #2
  call void @llvm.lifetime.end.p0(ptr %4)
  br label %41

41:                                               ; preds = %.loopexit, %.loopexit81
  %42 = phi i64 [ %173, %.loopexit ], [ %39, %.loopexit81 ]
  %43 = phi i8 [ %174, %.loopexit ], [ %40, %.loopexit81 ]
  %44 = insertvalue { i64, i8 } undef, i64 %42, 0
  %45 = insertvalue { i64, i8 } %44, i8 %43, 1
  ret { i64, i8 } %45

46:                                               ; preds = %61, %28
  %47 = phi ptr [ %37, %28 ], [ %63, %61 ]
  %48 = phi i64 [ 0, %28 ], [ %62, %61 ]
  %49 = load i8, ptr %47, align 1
  %50 = icmp ugt i8 %49, 47
  %51 = icmp ult i8 %49, %36
  %or.cond = select i1 %50, i1 %51, i1 false
  br i1 %or.cond, label %52, label %65, !prof !13

52:                                               ; preds = %68, %65, %46
  %.sink = phi i8 [ -55, %65 ], [ -87, %68 ], [ -48, %46 ]
  %53 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %48, i64 %2)
  %54 = extractvalue { i64, i1 } %53, 1
  br i1 %54, label %.loopexit81, label %55

55:                                               ; preds = %52
  %56 = add i8 %49, %.sink
  %57 = extractvalue { i64, i1 } %53, 0
  %58 = zext i8 %56 to i64
  %59 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %57, i64 %58)
  %60 = extractvalue { i64, i1 } %59, 1
  br i1 %60, label %.loopexit81, label %61, !prof !10

61:                                               ; preds = %55
  %62 = extractvalue { i64, i1 } %59, 0
  %63 = getelementptr inbounds nuw i8, ptr %47, i64 1
  %64 = icmp eq ptr %63, %38
  br i1 %64, label %.loopexit81, label %46

65:                                               ; preds = %46
  %66 = icmp ugt i8 %49, 64
  %67 = icmp ult i8 %49, %35
  %or.cond10 = select i1 %66, i1 %67, i1 false
  br i1 %or.cond10, label %52, label %68, !prof !13

68:                                               ; preds = %65
  %69 = icmp ugt i8 %49, 96
  %70 = icmp ult i8 %49, %34
  %or.cond11 = select i1 %69, i1 %70, i1 false
  br i1 %or.cond11, label %52, label %.loopexit81, !prof !13

71:                                               ; preds = %20
  switch i64 %22, label %74 [
    i64 0, label %283
    i64 1, label %.loopexit81
  ], !prof !12

72:                                               ; preds = %20
  %73 = icmp eq i64 %22, 0
  br i1 %73, label %.loopexit81, label %110, !prof !10

74:                                               ; preds = %71
  %75 = icmp slt i64 %2, 11
  %76 = trunc i64 %2 to i8
  %77 = add i8 %76, 55
  %78 = add i8 %76, 87
  %79 = add i8 %76, 48
  %80 = select i1 %75, i8 97, i8 %78
  %81 = select i1 %75, i8 65, i8 %77
  %82 = select i1 %75, i8 %79, i8 58
  %83 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %84 = getelementptr i8, ptr %4, i64 %22
  br label %85

85:                                               ; preds = %100, %74
  %86 = phi ptr [ %83, %74 ], [ %102, %100 ]
  %87 = phi i64 [ 0, %74 ], [ %101, %100 ]
  %88 = load i8, ptr %86, align 1
  %89 = icmp ugt i8 %88, 47
  %90 = icmp ult i8 %88, %82
  %or.cond12 = select i1 %89, i1 %90, i1 false
  br i1 %or.cond12, label %91, label %104, !prof !13

91:                                               ; preds = %107, %104, %85
  %.sink120 = phi i8 [ -55, %104 ], [ -87, %107 ], [ -48, %85 ]
  %92 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %87, i64 %2)
  %93 = extractvalue { i64, i1 } %92, 1
  br i1 %93, label %.loopexit81, label %94

94:                                               ; preds = %91
  %95 = add i8 %88, %.sink120
  %96 = extractvalue { i64, i1 } %92, 0
  %97 = zext i8 %95 to i64
  %98 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %96, i64 %97)
  %99 = extractvalue { i64, i1 } %98, 1
  br i1 %99, label %.loopexit81, label %100, !prof !10

100:                                              ; preds = %94
  %101 = extractvalue { i64, i1 } %98, 0
  %102 = getelementptr inbounds nuw i8, ptr %86, i64 1
  %103 = icmp eq ptr %102, %84
  br i1 %103, label %.loopexit81, label %85

104:                                              ; preds = %85
  %105 = icmp ugt i8 %88, 64
  %106 = icmp ult i8 %88, %81
  %or.cond13 = select i1 %105, i1 %106, i1 false
  br i1 %or.cond13, label %91, label %107, !prof !13

107:                                              ; preds = %104
  %108 = icmp ugt i8 %88, 96
  %109 = icmp ult i8 %88, %80
  %or.cond14 = select i1 %108, i1 %109, i1 false
  br i1 %or.cond14, label %91, label %.loopexit81, !prof !13

110:                                              ; preds = %72
  %111 = icmp slt i64 %2, 11
  %112 = trunc i64 %2 to i8
  %113 = add i8 %112, 55
  %114 = add i8 %112, 87
  %115 = add i8 %112, 48
  %116 = select i1 %111, i8 97, i8 %114
  %117 = select i1 %111, i8 65, i8 %113
  %118 = select i1 %111, i8 %115, i8 58
  %119 = getelementptr inbounds nuw i8, ptr %4, i64 %22
  br label %120

120:                                              ; preds = %135, %110
  %121 = phi ptr [ %4, %110 ], [ %137, %135 ]
  %122 = phi i64 [ 0, %110 ], [ %136, %135 ]
  %123 = load i8, ptr %121, align 1
  %124 = icmp ugt i8 %123, 47
  %125 = icmp ult i8 %123, %118
  %or.cond15 = select i1 %124, i1 %125, i1 false
  br i1 %or.cond15, label %126, label %139, !prof !13

126:                                              ; preds = %142, %139, %120
  %.sink121 = phi i8 [ -55, %139 ], [ -87, %142 ], [ -48, %120 ]
  %127 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %122, i64 %2)
  %128 = extractvalue { i64, i1 } %127, 1
  br i1 %128, label %.loopexit81, label %129

129:                                              ; preds = %126
  %130 = add i8 %123, %.sink121
  %131 = extractvalue { i64, i1 } %127, 0
  %132 = zext i8 %130 to i64
  %133 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %131, i64 %132)
  %134 = extractvalue { i64, i1 } %133, 1
  br i1 %134, label %.loopexit81, label %135, !prof !10

135:                                              ; preds = %129
  %136 = extractvalue { i64, i1 } %133, 0
  %137 = getelementptr inbounds nuw i8, ptr %121, i64 1
  %138 = icmp eq ptr %137, %119
  br i1 %138, label %.loopexit81, label %120

139:                                              ; preds = %120
  %140 = icmp ugt i8 %123, 64
  %141 = icmp ult i8 %123, %117
  %or.cond16 = select i1 %140, i1 %141, i1 false
  br i1 %or.cond16, label %126, label %142, !prof !13

142:                                              ; preds = %139
  %143 = icmp ugt i8 %123, 96
  %144 = icmp ult i8 %123, %116
  %or.cond17 = select i1 %143, i1 %144, i1 false
  br i1 %or.cond17, label %126, label %.loopexit81, !prof !13

145:                                              ; preds = %25
  %146 = and i64 %.pre-phi, 1152921504606846975
  %147 = add nuw nsw i64 %146, 32
  %148 = and i64 %17, 281474976710655
  br label %153

149:                                              ; preds = %25
  %150 = call swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %17, ptr %18)
  %151 = extractvalue { i64, i64 } %150, 0
  %152 = extractvalue { i64, i64 } %150, 1
  br label %153

153:                                              ; preds = %149, %145
  %154 = phi i64 [ %151, %149 ], [ %147, %145 ]
  %155 = phi i64 [ %152, %149 ], [ %148, %145 ]
  %156 = inttoptr i64 %154 to ptr
  %157 = load i8, ptr %156, align 1
  switch i8 %157, label %207 [
    i8 45, label %158
    i8 43, label %202
  ]

158:                                              ; preds = %153
  %159 = icmp slt i64 %155, 1
  br i1 %159, label %odessy.chk1, label %160, !prof !10

160:                                              ; preds = %158
  %161 = getelementptr inbounds nuw i8, ptr %156, i64 1
  %162 = icmp eq i64 %155, 1
  br i1 %162, label %.loopexit, label %163, !prof !10

163:                                              ; preds = %160
  %164 = icmp eq i64 %154, 0
  %165 = icmp slt i64 %2, 11
  %166 = trunc i64 %2 to i8
  %167 = add i8 %166, 55
  %168 = add i8 %166, 87
  %169 = add i8 %166, 48
  %170 = select i1 %165, i8 97, i8 %168
  %171 = select i1 %165, i8 65, i8 %167
  %172 = select i1 %165, i8 %169, i8 58
  br i1 %164, label %.loopexit, label %175

.loopexit:                                        ; preds = %278, %271, %265, %262, %243, %236, %230, %227, %209, %207, %204, %199, %192, %186, %183, %163, %160
  %173 = phi i64 [ 0, %160 ], [ 0, %163 ], [ 0, %204 ], [ 0, %209 ], [ 0, %207 ], [ 0, %278 ], [ %272, %271 ], [ 0, %265 ], [ 0, %262 ], [ 0, %199 ], [ %193, %192 ], [ 0, %186 ], [ 0, %183 ], [ 0, %243 ], [ %237, %236 ], [ 0, %230 ], [ 0, %227 ]
  %174 = phi i8 [ 1, %160 ], [ 0, %163 ], [ 1, %204 ], [ 0, %209 ], [ 1, %207 ], [ 1, %278 ], [ 0, %271 ], [ 1, %265 ], [ 1, %262 ], [ 1, %199 ], [ 0, %192 ], [ 1, %186 ], [ 1, %183 ], [ 1, %243 ], [ 0, %236 ], [ 1, %230 ], [ 1, %227 ]
  call void @swift_bridgeObjectRelease(ptr %18) #2
  br label %41

175:                                              ; preds = %163
  %176 = getelementptr i8, ptr %156, i64 %155
  br label %177

177:                                              ; preds = %192, %175
  %178 = phi ptr [ %161, %175 ], [ %194, %192 ]
  %179 = phi i64 [ 0, %175 ], [ %193, %192 ]
  %180 = load i8, ptr %178, align 1
  %181 = icmp ugt i8 %180, 47
  %182 = icmp ult i8 %180, %172
  %or.cond18 = select i1 %181, i1 %182, i1 false
  br i1 %or.cond18, label %183, label %196, !prof !13

183:                                              ; preds = %199, %196, %177
  %.sink122 = phi i8 [ -55, %196 ], [ -87, %199 ], [ -48, %177 ]
  %184 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %179, i64 %2)
  %185 = extractvalue { i64, i1 } %184, 1
  br i1 %185, label %.loopexit, label %186

186:                                              ; preds = %183
  %187 = add i8 %180, %.sink122
  %188 = extractvalue { i64, i1 } %184, 0
  %189 = zext i8 %187 to i64
  %190 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %188, i64 %189)
  %191 = extractvalue { i64, i1 } %190, 1
  br i1 %191, label %.loopexit, label %192, !prof !10

192:                                              ; preds = %186
  %193 = extractvalue { i64, i1 } %190, 0
  %194 = getelementptr inbounds nuw i8, ptr %178, i64 1
  %195 = icmp eq ptr %194, %176
  br i1 %195, label %.loopexit, label %177

196:                                              ; preds = %177
  %197 = icmp ugt i8 %180, 64
  %198 = icmp ult i8 %180, %171
  %or.cond19 = select i1 %197, i1 %198, i1 false
  br i1 %or.cond19, label %183, label %199, !prof !13

199:                                              ; preds = %196
  %200 = icmp ugt i8 %180, 96
  %201 = icmp ult i8 %180, %170
  %or.cond20 = select i1 %200, i1 %201, i1 false
  br i1 %or.cond20, label %183, label %.loopexit, !prof !13

202:                                              ; preds = %153
  %203 = icmp slt i64 %155, 1
  br i1 %203, label %odessy.chk, label %204, !prof !10

204:                                              ; preds = %202
  %205 = getelementptr inbounds nuw i8, ptr %156, i64 1
  %206 = icmp eq i64 %155, 1
  br i1 %206, label %.loopexit, label %209, !prof !10

207:                                              ; preds = %153
  %208 = icmp eq i64 %155, 0
  br i1 %208, label %.loopexit, label %246, !prof !10

209:                                              ; preds = %204
  %210 = icmp eq i64 %154, 0
  %211 = icmp slt i64 %2, 11
  %212 = trunc i64 %2 to i8
  %213 = add i8 %212, 55
  %214 = add i8 %212, 87
  %215 = add i8 %212, 48
  %216 = select i1 %211, i8 97, i8 %214
  %217 = select i1 %211, i8 65, i8 %213
  %218 = select i1 %211, i8 %215, i8 58
  br i1 %210, label %.loopexit, label %219

219:                                              ; preds = %209
  %220 = getelementptr i8, ptr %156, i64 %155
  br label %221

221:                                              ; preds = %236, %219
  %222 = phi ptr [ %205, %219 ], [ %238, %236 ]
  %223 = phi i64 [ 0, %219 ], [ %237, %236 ]
  %224 = load i8, ptr %222, align 1
  %225 = icmp ugt i8 %224, 47
  %226 = icmp ult i8 %224, %218
  %or.cond21 = select i1 %225, i1 %226, i1 false
  br i1 %or.cond21, label %227, label %240, !prof !13

227:                                              ; preds = %243, %240, %221
  %.sink123 = phi i8 [ -55, %240 ], [ -87, %243 ], [ -48, %221 ]
  %228 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %223, i64 %2)
  %229 = extractvalue { i64, i1 } %228, 1
  br i1 %229, label %.loopexit, label %230

230:                                              ; preds = %227
  %231 = add i8 %224, %.sink123
  %232 = extractvalue { i64, i1 } %228, 0
  %233 = zext i8 %231 to i64
  %234 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %232, i64 %233)
  %235 = extractvalue { i64, i1 } %234, 1
  br i1 %235, label %.loopexit, label %236, !prof !10

236:                                              ; preds = %230
  %237 = extractvalue { i64, i1 } %234, 0
  %238 = getelementptr inbounds nuw i8, ptr %222, i64 1
  %239 = icmp eq ptr %238, %220
  br i1 %239, label %.loopexit, label %221

240:                                              ; preds = %221
  %241 = icmp ugt i8 %224, 64
  %242 = icmp ult i8 %224, %217
  %or.cond22 = select i1 %241, i1 %242, i1 false
  br i1 %or.cond22, label %227, label %243, !prof !13

243:                                              ; preds = %240
  %244 = icmp ugt i8 %224, 96
  %245 = icmp ult i8 %224, %216
  %or.cond23 = select i1 %244, i1 %245, i1 false
  br i1 %or.cond23, label %227, label %.loopexit, !prof !13

246:                                              ; preds = %207
  %247 = icmp slt i64 %2, 11
  %248 = trunc i64 %2 to i8
  %249 = add i8 %248, 55
  %250 = add i8 %248, 87
  %251 = add i8 %248, 48
  %252 = select i1 %247, i8 97, i8 %250
  %253 = select i1 %247, i8 65, i8 %249
  %254 = select i1 %247, i8 %251, i8 58
  %255 = getelementptr inbounds i8, ptr %156, i64 %155
  br label %256

256:                                              ; preds = %271, %246
  %257 = phi ptr [ %156, %246 ], [ %273, %271 ]
  %258 = phi i64 [ 0, %246 ], [ %272, %271 ]
  %259 = load i8, ptr %257, align 1
  %260 = icmp ugt i8 %259, 47
  %261 = icmp ult i8 %259, %254
  %or.cond24 = select i1 %260, i1 %261, i1 false
  br i1 %or.cond24, label %262, label %275, !prof !13

262:                                              ; preds = %278, %275, %256
  %.sink124 = phi i8 [ -55, %275 ], [ -87, %278 ], [ -48, %256 ]
  %263 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %258, i64 %2)
  %264 = extractvalue { i64, i1 } %263, 1
  br i1 %264, label %.loopexit, label %265

265:                                              ; preds = %262
  %266 = add i8 %259, %.sink124
  %267 = extractvalue { i64, i1 } %263, 0
  %268 = zext i8 %266 to i64
  %269 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %267, i64 %268)
  %270 = extractvalue { i64, i1 } %269, 1
  br i1 %270, label %.loopexit, label %271, !prof !10

271:                                              ; preds = %265
  %272 = extractvalue { i64, i1 } %269, 0
  %273 = getelementptr inbounds nuw i8, ptr %257, i64 1
  %274 = icmp eq ptr %273, %255
  br i1 %274, label %.loopexit, label %256

275:                                              ; preds = %256
  %276 = icmp ugt i8 %259, 64
  %277 = icmp ult i8 %259, %253
  %or.cond25 = select i1 %276, i1 %277, i1 false
  br i1 %or.cond25, label %262, label %278, !prof !13

278:                                              ; preds = %275
  %279 = icmp ugt i8 %259, 96
  %280 = icmp ult i8 %259, %252
  %or.cond26 = select i1 %279, i1 %280, i1 false
  br i1 %or.cond26, label %262, label %.loopexit, !prof !13

281:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 0) #2
  call void @llvm.trap()
  unreachable

282:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 1) #2
  call void @llvm.trap()
  unreachable

283:                                              ; preds = %71
  call void asm sideeffect "", "n"(i32 2) #2
  call void @llvm.trap()
  unreachable

284:                                              ; preds = %27
  call void asm sideeffect "", "n"(i32 3) #2
  call void @llvm.trap()
  unreachable

odessy.chk:                                       ; preds = %202
  call void @odessy.chk(i32 76)
  unreachable

odessy.chk1:                                      ; preds = %158
  call void @odessy.chk(i32 77)
  unreachable
}

; Function Attrs: nounwind
declare void @swift_bridgeObjectRelease(ptr) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @swift_beginAccess(ptr, ptr, i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(read)
define linkonce_odr hidden ptr @__swift_instantiateConcreteTypeFromMangledName(ptr %0) local_unnamed_addr #5 {
entry:
  %1 = load atomic i64, ptr %0 monotonic, align 8
  %2 = icmp slt i64 %1, 0
  br i1 %2, label %6, label %3, !prof !10

3:                                                ; preds = %6, %entry
  %4 = phi i64 [ %1, %entry ], [ %14, %6 ]
  %5 = inttoptr i64 %4 to ptr
  ret ptr %5

6:                                                ; preds = %entry
  %7 = ashr i64 %1, 32
  %8 = sub nsw i64 0, %7
  %sext = shl i64 %1, 32
  %9 = ashr exact i64 %sext, 32
  %10 = ptrtoint ptr %0 to i64
  %11 = add i64 %9, %10
  %12 = inttoptr i64 %11 to ptr
  %13 = tail call swiftcc ptr @swift_getTypeByMangledNameInContext2(ptr %12, i64 %8, ptr null, ptr null) #16
  %14 = ptrtoint ptr %13 to i64
  store atomic i64 %14, ptr %0 monotonic, align 8
  br label %3
}

; Function Attrs: nounwind memory(argmem: readwrite)
declare swiftcc ptr @swift_getTypeByMangledNameInContext2(ptr, i64, ptr, ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare ptr @swift_allocObject(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn
declare ptr @swift_initStaticObject(ptr, ptr) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn
declare zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr) local_unnamed_addr #7

; Function Attrs: noinline
define linkonce_odr hidden swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %0) local_unnamed_addr #3 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2 = load i64, ptr %1, align 8, !range !9
  %3 = tail call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSd_Tg5"(i1 false, i64 %2, i1 false, ptr %0)
  ret ptr %3
}

; Function Attrs: nounwind
declare void @swift_endAccess(ptr) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #4

; Function Attrs: mustprogress nounwind willreturn
declare ptr @swift_initStackObject(ptr, ptr) local_unnamed_addr #7

declare swiftcc { i64, ptr } @"$sSS10FoundationE6format6locale9argumentsS2Sh_0A10Essentials6LocaleVSghSays7CVarArg_pGhtcfC"(i64, ptr, i64, i64, ptr) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind willreturn
declare void @swift_setDeallocating(ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @swift_arrayDestroy(ptr, i64, ptr) local_unnamed_addr #2

declare swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr, i64, ptr, i64, ptr) local_unnamed_addr #0

; Function Attrs: noinline
declare swiftcc ptr @"$sSa28_allocateBufferUninitialized15minimumCapacitys016_ContiguousArrayB0VyxGSi_tFZ"(i64, ptr) local_unnamed_addr #3

; Function Attrs: noinline
declare swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: noinline
define linkonce_odr hidden swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSd_Tg5"(i1 %0, i64 %1, i1 %2, ptr %3) local_unnamed_addr #3 {
entry:
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  br i1 %2, label %5, label %14

5:                                                ; preds = %entry
  %._storage._capacityAndFlags = getelementptr inbounds nuw i8, ptr %3, i64 24
  %6 = load i64, ptr %._storage._capacityAndFlags, align 8
  %7 = lshr i64 %6, 1
  %8 = icmp slt i64 %7, %1
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = add nuw i64 %7, 4611686018427387904
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %odessy.chk, label %12, !prof !10

12:                                               ; preds = %9
  %13 = and i64 %6, -2
  %. = tail call i64 @llvm.smax.i64(i64 %13, i64 %1)
  br label %14

14:                                               ; preds = %12, %5, %entry
  %15 = phi i64 [ %1, %entry ], [ %., %12 ], [ %7, %5 ]
  %16 = load i64, ptr %4, align 8, !range !9
  %.4 = tail call i64 @llvm.smax.i64(i64 %15, i64 %16)
  %17 = icmp eq i64 %.4, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCySdGMD") #14
  %20 = shl i64 %.4, 3
  %21 = add i64 %20, 32
  %22 = tail call noalias ptr @swift_allocObject(ptr %19, i64 %21, i64 7) #2
  %call.i = tail call i64 @malloc_usable_size(ptr noundef %22) #17
  %gepdiff = add nsw i64 %call.i, -32
  %23 = sdiv i64 %gepdiff, 8
  %24 = shl nsw i64 %23, 1
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 %16, ptr %25, align 8
  %._storage3._capacityAndFlags = getelementptr inbounds nuw i8, ptr %22, i64 24
  store i64 %24, ptr %._storage3._capacityAndFlags, align 8
  br label %26

26:                                               ; preds = %18, %14
  %27 = phi ptr [ %22, %18 ], [ @_swiftEmptyArrayStorage, %14 ]
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 32
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 32
  br i1 %0, label %30, label %35

30:                                               ; preds = %26
  %31 = getelementptr inbounds nuw %TSd, ptr %29, i64 %16
  %32 = icmp ult ptr %28, %31
  %.not = icmp eq ptr %27, %3
  %or.cond9 = select i1 %.not, i1 %32, i1 false
  br i1 %or.cond9, label %34, label %.sink.split

.sink.split:                                      ; preds = %30
  %33 = shl nuw i64 %16, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %28, ptr nonnull align 8 %29, i64 %33, i1 false)
  br label %34

34:                                               ; preds = %.sink.split, %30
  store i64 0, ptr %4, align 8
  br label %37

35:                                               ; preds = %26
  %36 = shl nuw i64 %16, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %28, ptr nonnull align 8 %29, i64 %36, i1 false)
  br label %37

37:                                               ; preds = %35, %34
  tail call void @swift_release(ptr nonnull %3) #2
  ret ptr %27

38:                                               ; No predecessors!
  tail call void asm sideeffect "", "n"(i32 0) #2
  tail call void @llvm.trap()
  unreachable

odessy.chk:                                       ; preds = %9
  call void @odessy.chk(i32 78)
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

declare swiftcc { i64, ptr } @"$sSSySSxcs25LosslessStringConvertibleRzSTRzSJ7ElementSTRtzlufC"(ptr noalias, ptr, ptr, ptr) local_unnamed_addr #0

; Function Attrs: noinline
define linkonce_odr hidden swiftcc { i64, ptr } @"$sSS8_copyingyS2SFZ"(i64 %0, ptr %1) local_unnamed_addr #3 {
entry:
  %2 = ptrtoint ptr %1 to i64
  %3 = and i64 %2, 2305843009213693952
  %.not = icmp eq i64 %3, 0
  %4 = and i64 %0, 281474976710655
  %5 = lshr i64 %2, 56
  %6 = and i64 %5, 15
  %7 = select i1 %.not, i64 %4, i64 %6
  %8 = shl nuw i64 %7, 16
  %9 = and i64 %2, 1152921504606846976
  %10 = icmp eq i64 %9, 0
  %11 = and i64 %0, 576460752303423488
  %12 = icmp ne i64 %11, 0
  %or.cond = select i1 %10, i1 true, i1 %12
  %.v = select i1 %or.cond, i64 7, i64 11
  %13 = or disjoint i64 %8, %.v
  %14 = tail call swiftcc { i64, i64, i64, ptr } @"$sSSySsSnySS5IndexVGcig"(i64 15, i64 %13, i64 %0, ptr %1)
  %15 = extractvalue { i64, i64, i64, ptr } %14, 0
  %16 = extractvalue { i64, i64, i64, ptr } %14, 1
  %17 = extractvalue { i64, i64, i64, ptr } %14, 2
  %18 = extractvalue { i64, i64, i64, ptr } %14, 3
  %19 = tail call swiftcc { i64, ptr } @"$sSS8_copyingySSSsFZ"(i64 %15, i64 %16, i64 %17, ptr %18)
  tail call void @swift_bridgeObjectRelease(ptr %18) #2
  ret { i64, ptr } %19
}

declare swiftcc { i64, i64, i64, ptr } @"$sSSySsSnySS5IndexVGcig"(i64, i64, i64, ptr) local_unnamed_addr #0

; Function Attrs: noinline
define linkonce_odr hidden swiftcc { i64, ptr } @"$sSS8_copyingySSSsFZ"(i64 %0, i64 %1, i64 %2, ptr %3) local_unnamed_addr #3 {
entry:
  %4 = alloca %Ts16IndexingIteratorVySs8UTF8ViewVG, align 8
  %5 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = and i64 %6, 1152921504606846976
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %26, label %9, !prof !11

9:                                                ; preds = %entry
  %10 = tail call swiftcc i64 @"$sSlsE5countSivgSs8UTF8ViewV_Tgq5"(i64 %0, i64 %1, i64 %2, ptr %3)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %._crit_edge, label %12

12:                                               ; preds = %9
  %13 = tail call swiftcc ptr @"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5"(i64 %10, i64 0)
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %15 = ptrtoint ptr %14 to i64
  call void @llvm.lifetime.start.p0(ptr %4)
  %16 = call swiftcc i64 @"$sSTsE21_copySequenceContents12initializing8IteratorQz_SitSry7ElementQzG_tFSs8UTF8ViewV_Tgq5"(ptr noalias nonnull captures(none) %4, i64 %15, i64 %10, i64 %0, i64 %1, i64 %2, ptr %3)
  %._elements._slice._base._guts._object._object = getelementptr inbounds nuw i8, ptr %4, i64 24
  %17 = load ptr, ptr %._elements._slice._base._guts._object._object, align 8
  %18 = tail call ptr @swift_bridgeObjectRetain(ptr returned %3) #2
  tail call void @swift_bridgeObjectRelease(ptr %17) #2
  %.not = icmp eq i64 %16, %10
  br i1 %.not, label %19, label %odessy.chk, !prof !11

19:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(ptr %4)
  br label %._crit_edge

._crit_edge:                                      ; preds = %19, %9
  %20 = phi ptr [ %13, %19 ], [ @_swiftEmptyArrayStorage, %9 ]
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 32
  %22 = ptrtoint ptr %21 to i64
  %23 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %24 = load i64, ptr %23, align 8, !range !9
  %25 = tail call swiftcc { i64, ptr } @"$sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ"(i64 %22, i64 %24), !noalias !16
  tail call void @swift_release(ptr %20) #2
  br label %53

26:                                               ; preds = %entry
  %27 = lshr i64 %0, 16
  %28 = lshr i64 %1, 16
  %29 = and i64 %6, 2305843009213693952
  %.not4 = icmp eq i64 %29, 0
  br i1 %.not4, label %30, label %46

30:                                               ; preds = %26
  %31 = and i64 %2, 1152921504606846976
  %.not5 = icmp eq i64 %31, 0
  br i1 %.not5, label %32, label %36, !prof !10

32:                                               ; preds = %30
  %33 = tail call swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %2, ptr %3)
  %34 = extractvalue { i64, i64 } %33, 0
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %41, label %39

36:                                               ; preds = %30
  %37 = and i64 %6, 1152921504606846975
  %38 = add nuw nsw i64 %37, 32
  br label %39

39:                                               ; preds = %36, %32
  %.in = phi i64 [ %38, %36 ], [ %34, %32 ]
  %40 = add nuw i64 %.in, %27
  br label %41

41:                                               ; preds = %39, %32
  %42 = phi i64 [ %40, %39 ], [ 0, %32 ]
  %43 = sub nsw i64 %28, %27
  %44 = icmp sgt i64 %43, -1
  tail call void @llvm.assume(i1 %44)
  %45 = tail call swiftcc { i64, ptr } @"$sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ"(i64 %42, i64 %43)
  br label %53

46:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(ptr %5)
  %.elt1 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %47 = and i64 %6, 72057594037927935
  store i64 %2, ptr %5, align 8
  store i64 %47, ptr %.elt1, align 8
  %48 = getelementptr inbounds nuw %Ts5UInt8V, ptr %5, i64 %27
  %49 = ptrtoint ptr %48 to i64
  %50 = sub nsw i64 %28, %27
  %51 = icmp sgt i64 %50, -1
  call void @llvm.assume(i1 %51)
  %52 = call swiftcc { i64, ptr } @"$sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ"(i64 %49, i64 %50)
  call void @llvm.lifetime.end.p0(ptr %5)
  br label %53

53:                                               ; preds = %46, %41, %._crit_edge
  %.merged = phi { i64, ptr } [ %25, %._crit_edge ], [ %45, %41 ], [ %52, %46 ]
  ret { i64, ptr } %.merged

54:                                               ; No predecessors!
  tail call void asm sideeffect "", "n"(i32 0) #2
  tail call void @llvm.trap()
  unreachable

odessy.chk:                                       ; preds = %12
  call void @odessy.chk(i32 79)
  unreachable
}

define linkonce_odr hidden swiftcc i64 @"$sSlsE5countSivgSs8UTF8ViewV_Tgq5"(i64 %0, i64 %1, i64 %2, ptr %3) local_unnamed_addr #0 {
entry:
  %4 = ptrtoint ptr %3 to i64
  %5 = and i64 %4, 1152921504606846976
  %6 = icmp eq i64 %5, 0
  %7 = and i64 %2, 576460752303423488
  %8 = icmp ne i64 %7, 0
  %9 = select i1 %6, i1 true, i1 %8
  %10 = and i64 %0, 12
  %11 = zext i1 %9 to i64
  %12 = shl nuw nsw i64 4, %11
  %.not = icmp eq i64 %10, %12
  br i1 %.not, label %13, label %15, !prof !10

13:                                               ; preds = %entry
  %14 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %0, i64 %2, ptr %3)
  br label %15

15:                                               ; preds = %13, %entry
  %16 = phi i64 [ %14, %13 ], [ %0, %entry ]
  %17 = and i64 %1, 12
  %.not1 = icmp eq i64 %17, %12
  br i1 %.not1, label %18, label %20, !prof !10

18:                                               ; preds = %15
  %19 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %1, i64 %2, ptr %3)
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i64 [ %19, %18 ], [ %1, %15 ]
  br i1 %6, label %35, label %22, !prof !11

22:                                               ; preds = %20
  %23 = and i64 %4, 2305843009213693952
  %.not2 = icmp eq i64 %23, 0
  %24 = and i64 %2, 281474976710655
  %25 = lshr i64 %4, 56
  %26 = and i64 %25, 15
  %27 = select i1 %.not2, i64 %24, i64 %26
  %28 = lshr i64 %16, 16
  %29 = icmp samesign ult i64 %27, %28
  br i1 %29, label %odessy.chk, label %30, !prof !10

30:                                               ; preds = %22
  %31 = lshr i64 %21, 16
  %32 = icmp samesign ult i64 %27, %31
  br i1 %32, label %odessy.chk1, label %33, !prof !10

33:                                               ; preds = %30
  %34 = tail call swiftcc i64 @"$sSS8UTF8ViewV16_foreignDistance4from2toSiSS5IndexV_AGtF"(i64 %16, i64 %21, i64 %2, ptr %3)
  br label %39

35:                                               ; preds = %20
  %36 = lshr i64 %21, 16
  %37 = lshr i64 %16, 16
  %38 = sub nsw i64 %36, %37
  br label %39

39:                                               ; preds = %35, %33
  %40 = phi i64 [ %34, %33 ], [ %38, %35 ]
  ret i64 %40

41:                                               ; No predecessors!
  tail call void asm sideeffect "", "n"(i32 0) #2
  tail call void @llvm.trap()
  unreachable

42:                                               ; No predecessors!
  tail call void asm sideeffect "", "n"(i32 1) #2
  tail call void @llvm.trap()
  unreachable

odessy.chk:                                       ; preds = %22
  call void @odessy.chk(i32 80)
  unreachable

odessy.chk1:                                      ; preds = %30
  call void @odessy.chk(i32 81)
  unreachable
}

define linkonce_odr hidden swiftcc ptr @"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5"(i64 %0, i64 %1) local_unnamed_addr #0 {
entry:
  %. = tail call i64 @llvm.smax.i64(i64 %1, i64 %0)
  %2 = icmp eq i64 %., 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %entry
  %4 = tail call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMD") #14
  %5 = add i64 %., 32
  %6 = tail call noalias ptr @swift_allocObject(ptr %4, i64 %5, i64 7) #2
  %call.i = tail call i64 @malloc_usable_size(ptr noundef %6) #17
  %gepdiff = shl i64 %call.i, 1
  %7 = add i64 %gepdiff, -64
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %0, ptr %8, align 8
  %._storage1._capacityAndFlags = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %7, ptr %._storage1._capacityAndFlags, align 8
  br label %9

9:                                                ; preds = %3, %entry
  %10 = phi ptr [ %6, %3 ], [ @_swiftEmptyArrayStorage, %entry ]
  ret ptr %10
}

define linkonce_odr hidden swiftcc i64 @"$sSTsE21_copySequenceContents12initializing8IteratorQz_SitSry7ElementQzG_tFSs8UTF8ViewV_Tgq5"(ptr noalias captures(none) %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr %6) local_unnamed_addr #0 {
entry:
  %7 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %.loopexit17, label %9

9:                                                ; preds = %entry
  %10 = inttoptr i64 %1 to ptr
  %11 = icmp eq i64 %2, 0
  br i1 %11, label %.loopexit17, label %12

12:                                               ; preds = %9
  %13 = icmp slt i64 %2, 0
  %14 = lshr i64 %4, 14
  br i1 %13, label %odessy.chk, label %15, !prof !10

15:                                               ; preds = %12
  %16 = lshr i64 %3, 14
  %17 = icmp eq i64 %16, %14
  br i1 %17, label %.loopexit17, label %18

18:                                               ; preds = %15
  %19 = ptrtoint ptr %6 to i64
  %20 = and i64 %19, 1152921504606846976
  %21 = icmp eq i64 %20, 0
  %22 = and i64 %5, 576460752303423488
  %23 = icmp ne i64 %22, 0
  %24 = select i1 %21, i1 true, i1 %23
  %25 = zext i1 %24 to i64
  %26 = shl nuw nsw i64 4, %25
  %27 = and i64 %19, 2305843009213693952
  %.not12 = icmp eq i64 %27, 0
  %.elt6 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %28 = and i64 %19, 72057594037927935
  %29 = and i64 %5, 1152921504606846976
  %.not13 = icmp eq i64 %29, 0
  %30 = and i64 %19, 1152921504606846975
  %31 = add nuw nsw i64 %30, 32
  %32 = and i64 %5, 281474976710655
  %33 = lshr i64 %19, 56
  %34 = and i64 %33, 15
  %35 = select i1 %.not12, i64 %32, i64 %34
  br label %36

36:                                               ; preds = %86, %18
  %37 = phi ptr [ %10, %18 ], [ %88, %86 ]
  %38 = phi i64 [ %3, %18 ], [ %81, %86 ]
  %39 = phi i64 [ 1, %18 ], [ %87, %86 ]
  %40 = and i64 %38, 12
  %.not = icmp eq i64 %40, %26
  br i1 %.not, label %41, label %43, !prof !10

41:                                               ; preds = %36
  %42 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %38, i64 %5, ptr %6)
  br label %43

43:                                               ; preds = %41, %36
  %44 = phi i64 [ %42, %41 ], [ %38, %36 ]
  %45 = lshr i64 %44, 14
  %46 = icmp samesign ult i64 %45, %16
  %47 = icmp samesign uge i64 %45, %14
  %48 = or i1 %46, %47
  br i1 %48, label %odessy.chk1, label %49, !prof !10

49:                                               ; preds = %43
  br i1 %21, label %52, label %50

50:                                               ; preds = %49
  %51 = tail call swiftcc i8 @"$sSS8UTF8ViewV17_foreignSubscript8positions5UInt8VSS5IndexV_tF"(i64 %44, i64 %5, ptr %6)
  br label %67

52:                                               ; preds = %49
  br i1 %.not12, label %53, label %63

53:                                               ; preds = %52
  br i1 %.not13, label %54, label %57, !prof !10

54:                                               ; preds = %53
  %55 = tail call swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %5, ptr %6)
  %56 = extractvalue { i64, i64 } %55, 0
  br label %57

57:                                               ; preds = %54, %53
  %58 = phi i64 [ %56, %54 ], [ %31, %53 ]
  %59 = lshr i64 %44, 16
  %60 = inttoptr i64 %58 to ptr
  %61 = getelementptr inbounds nuw %Ts5UInt8V, ptr %60, i64 %59
  %62 = load i8, ptr %61, align 1
  br label %67

63:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(ptr %7)
  store i64 %5, ptr %7, align 8
  store i64 %28, ptr %.elt6, align 8
  %64 = lshr i64 %44, 16
  %65 = getelementptr inbounds nuw %Ts5UInt8V, ptr %7, i64 %64
  %66 = load i8, ptr %65, align 1
  call void @llvm.lifetime.end.p0(ptr %7)
  br label %67

67:                                               ; preds = %63, %57, %50
  %68 = phi i8 [ %51, %50 ], [ %62, %57 ], [ %66, %63 ]
  br i1 %.not, label %69, label %71, !prof !10

69:                                               ; preds = %67
  %70 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %38, i64 %5, ptr %6)
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i64 [ %70, %69 ], [ %38, %67 ]
  br i1 %21, label %77, label %73

73:                                               ; preds = %71
  %74 = lshr i64 %72, 16
  %.not15 = icmp samesign ult i64 %74, %35
  br i1 %.not15, label %75, label %odessy.chk2, !prof !11

75:                                               ; preds = %73
  %76 = tail call swiftcc i64 @"$sSS8UTF8ViewV13_foreignIndex5afterSS0D0VAF_tF"(i64 %72, i64 %5, ptr %6)
  br label %80

77:                                               ; preds = %71
  %78 = and i64 %72, -65536
  %79 = add i64 %78, 65540
  br label %80

80:                                               ; preds = %77, %75
  %81 = phi i64 [ %76, %75 ], [ %79, %77 ]
  store i8 %68, ptr %37, align 1
  %82 = icmp eq i64 %39, %2
  br i1 %82, label %.loopexit17, label %83

83:                                               ; preds = %80
  %84 = lshr i64 %81, 14
  %85 = icmp eq i64 %84, %14
  br i1 %85, label %.loopexit17, label %86

86:                                               ; preds = %83
  %87 = add nuw i64 %39, 1
  %88 = getelementptr inbounds nuw i8, ptr %37, i64 1
  br label %36

.loopexit17:                                      ; preds = %83, %80, %15, %9, %entry
  %.sink = phi i64 [ %3, %entry ], [ %3, %15 ], [ %3, %9 ], [ %81, %83 ], [ %81, %80 ]
  %89 = phi i64 [ 0, %entry ], [ 0, %15 ], [ %2, %9 ], [ %2, %80 ], [ %39, %83 ]
  store i64 %3, ptr %0, align 8
  %._elements3._slice._endIndex = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %._elements3._slice._endIndex, align 8
  %._elements3._slice._base = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %5, ptr %._elements3._slice._base, align 8
  %._elements3._slice._base._guts._object._object = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %6, ptr %._elements3._slice._base._guts._object._object, align 8
  %._position4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink, ptr %._position4, align 8
  ret i64 %89

90:                                               ; No predecessors!
  tail call void asm sideeffect "", "n"(i32 0) #2
  tail call void @llvm.trap()
  unreachable

91:                                               ; No predecessors!
  tail call void asm sideeffect "", "n"(i32 2) #2
  tail call void @llvm.trap()
  unreachable

92:                                               ; No predecessors!
  tail call void asm sideeffect "", "n"(i32 3) #2
  tail call void @llvm.trap()
  unreachable

odessy.chk:                                       ; preds = %12
  call void @odessy.chk(i32 82)
  unreachable

odessy.chk1:                                      ; preds = %43
  call void @odessy.chk(i32 83)
  unreachable

odessy.chk2:                                      ; preds = %73
  call void @odessy.chk(i32 84)
  unreachable
}

declare swiftcc { i64, ptr } @"$sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ"(i64, i64) local_unnamed_addr #0

; Function Attrs: noinline
define linkonce_odr hidden swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %0, i64 %1, ptr %2) local_unnamed_addr #3 {
entry:
  %3 = ptrtoint ptr %2 to i64
  %4 = and i64 %3, 1152921504606846976
  %5 = icmp eq i64 %4, 0
  %6 = and i64 %1, 576460752303423488
  %7 = icmp ne i64 %6, 0
  %or.cond = select i1 %5, i1 true, i1 %7
  %8 = lshr i64 %0, 16
  %9 = lshr i64 %0, 14
  %10 = and i64 %9, 3
  %.not3 = icmp eq i64 %10, 0
  br i1 %or.cond, label %24, label %11

11:                                               ; preds = %entry
  %12 = tail call swiftcc i64 @"$sSS8UTF8ViewV13_foreignIndex_8offsetBySS0D0VAF_SitF"(i64 15, i64 %8, i64 %1, ptr %2)
  br i1 %.not3, label %13, label %17

13:                                               ; preds = %11
  %14 = and i64 %12, -4
  %15 = and i64 %0, 3
  %16 = or disjoint i64 %14, %15
  br label %21

17:                                               ; preds = %11
  %18 = shl nuw nsw i64 %10, 16
  %19 = add i64 %12, %18
  %20 = and i64 %19, -65536
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i64 [ %16, %13 ], [ %20, %17 ]
  %23 = or i64 %22, 8
  br label %37

24:                                               ; preds = %entry
  %25 = tail call swiftcc i64 @"$sSS9UTF16ViewV5index_8offsetBySS5IndexVAF_SitF"(i64 15, i64 %8, i64 %1, ptr %2)
  br i1 %.not3, label %26, label %30

26:                                               ; preds = %24
  %27 = and i64 %25, -4
  %28 = and i64 %0, 3
  %29 = or disjoint i64 %27, %28
  br label %34

30:                                               ; preds = %24
  %31 = shl nuw nsw i64 %10, 16
  %32 = add i64 %25, %31
  %33 = and i64 %32, -65536
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i64 [ %29, %26 ], [ %33, %30 ]
  %36 = or i64 %35, 4
  br label %37

37:                                               ; preds = %34, %21
  %38 = phi i64 [ %23, %21 ], [ %36, %34 ]
  ret i64 %38
}

; Function Attrs: noinline
declare swiftcc i8 @"$sSS8UTF8ViewV17_foreignSubscript8positions5UInt8VSS5IndexV_tF"(i64, i64, ptr) local_unnamed_addr #3

; Function Attrs: noinline
declare swiftcc i64 @"$sSS8UTF8ViewV13_foreignIndex5afterSS0D0VAF_tF"(i64, i64, ptr) local_unnamed_addr #3

; Function Attrs: noinline
declare swiftcc i64 @"$sSS8UTF8ViewV13_foreignIndex_8offsetBySS0D0VAF_SitF"(i64, i64, i64, ptr) local_unnamed_addr #3

declare swiftcc i64 @"$sSS9UTF16ViewV5index_8offsetBySS5IndexVAF_SitF"(i64, i64, i64, ptr) local_unnamed_addr #0

; Function Attrs: noinline
declare swiftcc i64 @"$sSS8UTF8ViewV16_foreignDistance4from2toSiSS5IndexV_AGtF"(i64, i64, i64, ptr) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @malloc_usable_size(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nounwind
declare ptr @swift_retain_n(ptr returned, i32) #2

declare void @llvm.lifetime.start.i64(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

declare void @llvm.lifetime.end.i64(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) #13

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { nounwind }
attributes #3 = { noinline "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind memory(argmem: readwrite) }
attributes #7 = { mustprogress nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { nounwind memory(read) }
attributes #15 = { nounwind willreturn }
attributes #16 = { nounwind memory(argmem: read) }
attributes #17 = { nounwind optsize }

!swift.module.flags = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8}
!llvm.linker.options = !{}

!0 = !{!"standard-library", i1 false}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"Objective-C Garbage Collection", i8 0}
!5 = !{i32 1, !"Swift Version", i32 7}
!6 = !{i32 1, !"Swift ABI Version", i32 7}
!7 = !{i32 1, !"Swift Major Version", i8 6}
!8 = !{i32 1, !"Swift Minor Version", i8 3}
!9 = !{i64 0, i64 9223372036854775807}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 2002}
!14 = !{!"branch_weights", !"expected", i32 1934571, i32 2145549077}
!15 = !{!"branch_weights", !"expected", i32 4348775, i32 2143134873}
!16 = !{!17}
!17 = distinct !{!17, !18, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_: argument 0"}
!18 = distinct !{!18, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_"}
