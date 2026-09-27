; ModuleID = 'results/static/guard_ablation_0927/Swift_nbody/nofold.ll'
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
  tail call void asm sideeffect "", "n"(i32 1) #2
  tail call void @llvm.trap()
  unreachable

20:                                               ; preds = %7
  %21 = and i64 %12, 1152921504606846976
  %.not229 = icmp eq i64 %21, 0
  br i1 %.not229, label %22, label %.thread290, !prof !11

22:                                               ; preds = %20
  br i1 %.not, label %26, label %23

23:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
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
    i64 0, label %829
    i64 1, label %.thread293
  ], !prof !12

29:                                               ; preds = %28
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %31 = getelementptr i8, ptr %2, i64 %16
  br label %40

.thread293:                                       ; preds = %58, %57, %28
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %32

.loopexit305:                                     ; preds = %76, %71, %68, %63, %53, %48, %45, %40, %95, %90, %87, %82
  %.sroa.0.0 = phi i64 [ 0, %40 ], [ 0, %82 ], [ %96, %95 ], [ 0, %90 ], [ 0, %87 ], [ %54, %53 ], [ 0, %48 ], [ 0, %45 ], [ %77, %76 ], [ 0, %71 ], [ 0, %68 ], [ 0, %63 ]
  %.sroa.17.0 = phi i8 [ 1, %40 ], [ 1, %82 ], [ 0, %95 ], [ 1, %90 ], [ 1, %87 ], [ 0, %53 ], [ 1, %48 ], [ 1, %45 ], [ 0, %76 ], [ 1, %71 ], [ 1, %68 ], [ 1, %63 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %32

32:                                               ; preds = %.thread, %.loopexit305, %.thread293
  %.sroa.17.2289 = phi i8 [ %109, %.thread ], [ %.sroa.17.0, %.loopexit305 ], [ 1, %.thread293 ]
  %.sroa.0.2288 = phi i64 [ %110, %.thread ], [ %.sroa.0.0, %.loopexit305 ], [ 0, %.thread293 ]
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
  br i1 %39, label %odessy.chk1, label %111

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
    i64 0, label %828
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
  %109 = extractvalue { i64, i8 } %108, 1
  %110 = extractvalue { i64, i8 } %108, 0
  br label %32

111:                                              ; preds = %36
  store i64 %37, ptr @"$s5nbody5stepsSivp", align 8
  store i64 5, ptr @"$s5nbody1nSivp", align 8
  %112 = call swiftcc ptr @"$sSa28_allocateBufferUninitialized15minimumCapacitys016_ContiguousArrayB0VyxGSi_tFZ"(i64 5, ptr nonnull @"$sSdN")
  %113 = getelementptr inbounds nuw i8, ptr %112, i64 16
  store i64 5, ptr %113, align 8
  %114 = getelementptr i8, ptr %112, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %114, i8 0, i64 40, i1 false)
  store ptr %112, ptr @"$s5nbody2pxSaySdGvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pxSaySdGvp", ptr nonnull %access-scratch, i64 0, ptr null) #2
  %115 = load ptr, ptr @"$s5nbody2pxSaySdGvp", align 8
  store ptr %115, ptr @"$s5nbody2pySaySdGvp", align 8
  store ptr %115, ptr @"$s5nbody2pzSaySdGvp", align 8
  store ptr %115, ptr @"$s5nbody2vxSaySdGvp", align 8
  store ptr %115, ptr @"$s5nbody2vySaySdGvp", align 8
  store ptr %115, ptr @"$s5nbody2vzSaySdGvp", align 8
  store ptr %115, ptr @"$s5nbody4massSaySdGvp", align 8
  store double 0x400921FB54442D18, ptr @"$s5nbody2piSdvp", align 8
  store double 0x4043BD3CC9BE45DE, ptr @"$s5nbody5solarSdvp", align 8
  store double 3.652400e+02, ptr @"$s5nbody3dpySdvp", align 8
  %116 = call ptr @swift_retain_n(ptr %115, i32 2)
  %117 = call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCySaySdGGMD") #15
  %118 = call noalias ptr @swift_allocObject(ptr %117, i64 72, i64 7) #2
  %119 = getelementptr inbounds nuw i8, ptr %118, i64 16
  store i64 5, ptr %119, align 8
  %._storage1._capacityAndFlags = getelementptr inbounds nuw i8, ptr %118, i64 24
  store i64 10, ptr %._storage1._capacityAndFlags, align 8
  %120 = getelementptr inbounds nuw i8, ptr %118, i64 32
  %121 = call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCySdGMD") #15
  %staticref = call ptr @swift_initStaticObject(ptr %121, ptr nonnull getelementptr inbounds nuw (i8, ptr @mainTv_, i64 8)) #16
  store ptr %staticref, ptr %120, align 8
  %122 = getelementptr inbounds nuw i8, ptr %118, i64 40
  %staticref2 = call ptr @swift_initStaticObject(ptr %121, ptr nonnull getelementptr inbounds nuw (i8, ptr @mainTv0_, i64 8)) #16
  store ptr %staticref2, ptr %122, align 8
  %123 = getelementptr inbounds nuw i8, ptr %118, i64 48
  %staticref4 = call ptr @swift_initStaticObject(ptr %121, ptr nonnull getelementptr inbounds nuw (i8, ptr @mainTv1_, i64 8)) #16
  store ptr %staticref4, ptr %123, align 8
  %124 = getelementptr inbounds nuw i8, ptr %118, i64 56
  %staticref6 = call ptr @swift_initStaticObject(ptr %121, ptr nonnull getelementptr inbounds nuw (i8, ptr @mainTv2_, i64 8)) #16
  store ptr %staticref6, ptr %124, align 8
  %125 = getelementptr inbounds nuw i8, ptr %118, i64 64
  %staticref8 = call ptr @swift_initStaticObject(ptr %121, ptr nonnull getelementptr inbounds nuw (i8, ptr @mainTv3_, i64 8)) #16
  store ptr %staticref8, ptr %125, align 8
  store ptr %118, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %126 = load i64, ptr @"$s5nbody1nSivp", align 8
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %odessy.chk2, label %128, !prof !10

128:                                              ; preds = %111
  %129 = icmp eq i64 %126, 0
  br i1 %129, label %.thread329, label %130

130:                                              ; preds = %128
  %131 = call ptr @swift_retain_n(ptr %115, i32 4)
  br label %164

.thread329:                                       ; preds = %128
  store double 0.000000e+00, ptr @"$s5nbody3mpxSdvp", align 8
  store double 0.000000e+00, ptr @"$s5nbody3mpySdvp", align 8
  store double 0.000000e+00, ptr @"$s5nbody3mpzSdvp", align 8
  %132 = call ptr @swift_retain_n(ptr %115, i32 4)
  br label %344

.loopexit304:                                     ; preds = %339
  %.pre = load i64, ptr @"$s5nbody1nSivp", align 8
  store double 0.000000e+00, ptr @"$s5nbody3mpxSdvp", align 8
  store double 0.000000e+00, ptr @"$s5nbody3mpySdvp", align 8
  store double 0.000000e+00, ptr @"$s5nbody3mpzSdvp", align 8
  %133 = icmp slt i64 %.pre, 0
  br i1 %133, label %odessy.chk24, label %134, !prof !14

134:                                              ; preds = %.loopexit304
  %135 = icmp eq i64 %.pre, 0
  br i1 %135, label %344, label %136

136:                                              ; preds = %134
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch59)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vxSaySdGvp", ptr nonnull %access-scratch59, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch60)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody4massSaySdGvp", ptr nonnull %access-scratch60, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch61)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vySaySdGvp", ptr nonnull %access-scratch61, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch62)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vzSaySdGvp", ptr nonnull %access-scratch62, i64 0, ptr null) #2
  %137 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %138 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %139 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %140 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %141 = getelementptr inbounds nuw i8, ptr %137, i64 16
  %142 = load i64, ptr %141, align 8, !range !9
  %143 = icmp samesign ugt i64 %.pre, %142
  br i1 %143, label %odessy.chk25, label %144, !prof !10

144:                                              ; preds = %136
  %145 = getelementptr inbounds nuw i8, ptr %138, i64 16
  %146 = load i64, ptr %145, align 8, !range !9
  %147 = icmp samesign ugt i64 %.pre, %146
  br i1 %147, label %odessy.chk26, label %148, !prof !10

148:                                              ; preds = %144
  %149 = getelementptr inbounds nuw i8, ptr %139, i64 16
  %150 = load i64, ptr %149, align 8, !range !9
  %151 = icmp samesign ugt i64 %.pre, %150
  br i1 %151, label %odessy.chk27, label %152, !prof !10

152:                                              ; preds = %148
  %153 = getelementptr inbounds nuw i8, ptr %140, i64 16
  %154 = load i64, ptr %153, align 8, !range !9
  %155 = icmp samesign ugt i64 %.pre, %154
  br i1 %155, label %odessy.chk28, label %156, !prof !10

156:                                              ; preds = %152
  %157 = getelementptr inbounds nuw i8, ptr %137, i64 32
  %158 = getelementptr inbounds nuw i8, ptr %138, i64 32
  %159 = getelementptr inbounds nuw i8, ptr %139, i64 32
  %160 = getelementptr inbounds nuw i8, ptr %140, i64 32
  %161 = load double, ptr @"$s5nbody3mpxSdvp", align 8
  %162 = load double, ptr @"$s5nbody3mpySdvp", align 8
  %xtraiter = and i64 %.pre, 1
  %163 = icmp eq i64 %.pre, 1
  br i1 %163, label %.epilog-lcssa, label %.new

.new:                                             ; preds = %156
  %unroll_iter = and i64 %.pre, 9223372036854775806
  br label %394

164:                                              ; preds = %339, %130
  %165 = phi i64 [ 0, %130 ], [ %166, %339 ]
  %166 = add nuw nsw i64 %165, 1
  %167 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %168 = getelementptr inbounds nuw i8, ptr %167, i64 16
  %169 = load i64, ptr %168, align 8, !range !9
  %.not230 = icmp samesign ult i64 %165, %169
  br i1 %.not230, label %170, label %odessy.chk3, !prof !11

170:                                              ; preds = %164
  %171 = getelementptr inbounds nuw i8, ptr %167, i64 32
  %172 = getelementptr inbounds nuw [8 x i8], ptr %171, i64 %165
  %173 = load ptr, ptr %172, align 8
  %174 = getelementptr inbounds nuw i8, ptr %173, i64 16
  %175 = load i64, ptr %174, align 8, !range !9
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %odessy.chk4, label %177, !prof !10

177:                                              ; preds = %170
  %178 = getelementptr inbounds nuw i8, ptr %173, i64 32
  %179 = load double, ptr %178, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch14)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pxSaySdGvp", ptr nonnull %access-scratch14, i64 33, ptr null) #2
  %180 = load ptr, ptr @"$s5nbody2pxSaySdGvp", align 8
  %181 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %180) #16
  store ptr %180, ptr @"$s5nbody2pxSaySdGvp", align 8
  br i1 %181, label %184, label %182

182:                                              ; preds = %177
  %183 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %180)
  br label %184

184:                                              ; preds = %182, %177
  %185 = phi ptr [ %183, %182 ], [ %180, %177 ]
  %186 = getelementptr inbounds nuw i8, ptr %185, i64 16
  %187 = load i64, ptr %186, align 8, !range !9
  %.not231 = icmp samesign ult i64 %165, %187
  br i1 %.not231, label %188, label %odessy.chk5, !prof !11

188:                                              ; preds = %184
  %189 = getelementptr inbounds nuw i8, ptr %185, i64 32
  %190 = getelementptr inbounds nuw [8 x i8], ptr %189, i64 %165
  store double %179, ptr %190, align 8
  store ptr %185, ptr @"$s5nbody2pxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch14) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch14)
  %191 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %192 = getelementptr inbounds nuw i8, ptr %191, i64 16
  %193 = load i64, ptr %192, align 8, !range !9
  %.not232 = icmp samesign ult i64 %165, %193
  br i1 %.not232, label %194, label %odessy.chk6, !prof !11

194:                                              ; preds = %188
  %195 = getelementptr inbounds nuw i8, ptr %191, i64 32
  %196 = getelementptr inbounds nuw [8 x i8], ptr %195, i64 %165
  %197 = load ptr, ptr %196, align 8
  %198 = getelementptr inbounds nuw i8, ptr %197, i64 16
  %199 = load i64, ptr %198, align 8, !range !9
  %200 = icmp samesign ult i64 %199, 2
  br i1 %200, label %odessy.chk7, label %201, !prof !10

201:                                              ; preds = %194
  %202 = getelementptr inbounds nuw i8, ptr %197, i64 40
  %203 = load double, ptr %202, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch21)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pySaySdGvp", ptr nonnull %access-scratch21, i64 33, ptr null) #2
  %204 = load ptr, ptr @"$s5nbody2pySaySdGvp", align 8
  %205 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %204) #16
  store ptr %204, ptr @"$s5nbody2pySaySdGvp", align 8
  br i1 %205, label %208, label %206

206:                                              ; preds = %201
  %207 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %204)
  br label %208

208:                                              ; preds = %206, %201
  %209 = phi ptr [ %207, %206 ], [ %204, %201 ]
  %210 = getelementptr inbounds nuw i8, ptr %209, i64 16
  %211 = load i64, ptr %210, align 8, !range !9
  %.not233 = icmp samesign ult i64 %165, %211
  br i1 %.not233, label %212, label %odessy.chk8, !prof !11

212:                                              ; preds = %208
  %213 = getelementptr inbounds nuw i8, ptr %209, i64 32
  %214 = getelementptr inbounds nuw [8 x i8], ptr %213, i64 %165
  store double %203, ptr %214, align 8
  store ptr %209, ptr @"$s5nbody2pySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch21) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch21)
  %215 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %216 = getelementptr inbounds nuw i8, ptr %215, i64 16
  %217 = load i64, ptr %216, align 8, !range !9
  %.not234 = icmp samesign ult i64 %165, %217
  br i1 %.not234, label %218, label %odessy.chk9, !prof !11

218:                                              ; preds = %212
  %219 = getelementptr inbounds nuw i8, ptr %215, i64 32
  %220 = getelementptr inbounds nuw [8 x i8], ptr %219, i64 %165
  %221 = load ptr, ptr %220, align 8
  %222 = getelementptr inbounds nuw i8, ptr %221, i64 16
  %223 = load i64, ptr %222, align 8, !range !9
  %224 = icmp samesign ult i64 %223, 3
  br i1 %224, label %odessy.chk10, label %225, !prof !10

225:                                              ; preds = %218
  %226 = getelementptr inbounds nuw i8, ptr %221, i64 48
  %227 = load double, ptr %226, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch28)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pzSaySdGvp", ptr nonnull %access-scratch28, i64 33, ptr null) #2
  %228 = load ptr, ptr @"$s5nbody2pzSaySdGvp", align 8
  %229 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %228) #16
  store ptr %228, ptr @"$s5nbody2pzSaySdGvp", align 8
  br i1 %229, label %232, label %230

230:                                              ; preds = %225
  %231 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %228)
  br label %232

232:                                              ; preds = %230, %225
  %233 = phi ptr [ %231, %230 ], [ %228, %225 ]
  %234 = getelementptr inbounds nuw i8, ptr %233, i64 16
  %235 = load i64, ptr %234, align 8, !range !9
  %.not235 = icmp samesign ult i64 %165, %235
  br i1 %.not235, label %236, label %odessy.chk11, !prof !11

236:                                              ; preds = %232
  %237 = getelementptr inbounds nuw i8, ptr %233, i64 32
  %238 = getelementptr inbounds nuw [8 x i8], ptr %237, i64 %165
  store double %227, ptr %238, align 8
  store ptr %233, ptr @"$s5nbody2pzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch28) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch28)
  %239 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %240 = getelementptr inbounds nuw i8, ptr %239, i64 16
  %241 = load i64, ptr %240, align 8, !range !9
  %.not236 = icmp samesign ult i64 %165, %241
  br i1 %.not236, label %242, label %odessy.chk12, !prof !11

242:                                              ; preds = %236
  %243 = getelementptr inbounds nuw i8, ptr %239, i64 32
  %244 = getelementptr inbounds nuw [8 x i8], ptr %243, i64 %165
  %245 = load ptr, ptr %244, align 8
  %246 = getelementptr inbounds nuw i8, ptr %245, i64 16
  %247 = load i64, ptr %246, align 8, !range !9
  %248 = icmp samesign ult i64 %247, 4
  br i1 %248, label %odessy.chk13, label %249, !prof !10

249:                                              ; preds = %242
  %250 = getelementptr inbounds nuw i8, ptr %245, i64 56
  %251 = load double, ptr %250, align 8
  %252 = load double, ptr @"$s5nbody3dpySdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch35)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vxSaySdGvp", ptr nonnull %access-scratch35, i64 33, ptr null) #2
  %253 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %254 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %253) #16
  store ptr %253, ptr @"$s5nbody2vxSaySdGvp", align 8
  br i1 %254, label %257, label %255

255:                                              ; preds = %249
  %256 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %253)
  br label %257

257:                                              ; preds = %255, %249
  %258 = phi ptr [ %256, %255 ], [ %253, %249 ]
  %259 = getelementptr inbounds nuw i8, ptr %258, i64 16
  %260 = load i64, ptr %259, align 8, !range !9
  %.not237 = icmp samesign ult i64 %165, %260
  br i1 %.not237, label %261, label %odessy.chk14, !prof !11

261:                                              ; preds = %257
  %262 = fmul double %251, %252
  %263 = getelementptr inbounds nuw i8, ptr %258, i64 32
  %264 = getelementptr inbounds nuw [8 x i8], ptr %263, i64 %165
  store double %262, ptr %264, align 8
  store ptr %258, ptr @"$s5nbody2vxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch35) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch35)
  %265 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %266 = getelementptr inbounds nuw i8, ptr %265, i64 16
  %267 = load i64, ptr %266, align 8, !range !9
  %.not238 = icmp samesign ult i64 %165, %267
  br i1 %.not238, label %268, label %odessy.chk15, !prof !11

268:                                              ; preds = %261
  %269 = getelementptr inbounds nuw i8, ptr %265, i64 32
  %270 = getelementptr inbounds nuw [8 x i8], ptr %269, i64 %165
  %271 = load ptr, ptr %270, align 8
  %272 = getelementptr inbounds nuw i8, ptr %271, i64 16
  %273 = load i64, ptr %272, align 8, !range !9
  %274 = icmp samesign ult i64 %273, 5
  br i1 %274, label %odessy.chk16, label %275, !prof !10

275:                                              ; preds = %268
  %276 = getelementptr inbounds nuw i8, ptr %271, i64 64
  %277 = load double, ptr %276, align 8
  %278 = load double, ptr @"$s5nbody3dpySdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch42)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vySaySdGvp", ptr nonnull %access-scratch42, i64 33, ptr null) #2
  %279 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %280 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %279) #16
  store ptr %279, ptr @"$s5nbody2vySaySdGvp", align 8
  br i1 %280, label %283, label %281

281:                                              ; preds = %275
  %282 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %279)
  br label %283

283:                                              ; preds = %281, %275
  %284 = phi ptr [ %282, %281 ], [ %279, %275 ]
  %285 = getelementptr inbounds nuw i8, ptr %284, i64 16
  %286 = load i64, ptr %285, align 8, !range !9
  %.not239 = icmp samesign ult i64 %165, %286
  br i1 %.not239, label %287, label %odessy.chk17, !prof !11

287:                                              ; preds = %283
  %288 = fmul double %277, %278
  %289 = getelementptr inbounds nuw i8, ptr %284, i64 32
  %290 = getelementptr inbounds nuw [8 x i8], ptr %289, i64 %165
  store double %288, ptr %290, align 8
  store ptr %284, ptr @"$s5nbody2vySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch42) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch42)
  %291 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %292 = getelementptr inbounds nuw i8, ptr %291, i64 16
  %293 = load i64, ptr %292, align 8, !range !9
  %.not240 = icmp samesign ult i64 %165, %293
  br i1 %.not240, label %294, label %odessy.chk18, !prof !11

294:                                              ; preds = %287
  %295 = getelementptr inbounds nuw i8, ptr %291, i64 32
  %296 = getelementptr inbounds nuw [8 x i8], ptr %295, i64 %165
  %297 = load ptr, ptr %296, align 8
  %298 = getelementptr inbounds nuw i8, ptr %297, i64 16
  %299 = load i64, ptr %298, align 8, !range !9
  %300 = icmp samesign ult i64 %299, 6
  br i1 %300, label %odessy.chk19, label %301, !prof !10

301:                                              ; preds = %294
  %302 = getelementptr inbounds nuw i8, ptr %297, i64 72
  %303 = load double, ptr %302, align 8
  %304 = load double, ptr @"$s5nbody3dpySdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch49)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vzSaySdGvp", ptr nonnull %access-scratch49, i64 33, ptr null) #2
  %305 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %306 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %305) #16
  store ptr %305, ptr @"$s5nbody2vzSaySdGvp", align 8
  br i1 %306, label %309, label %307

307:                                              ; preds = %301
  %308 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %305)
  br label %309

309:                                              ; preds = %307, %301
  %310 = phi ptr [ %308, %307 ], [ %305, %301 ]
  %311 = getelementptr inbounds nuw i8, ptr %310, i64 16
  %312 = load i64, ptr %311, align 8, !range !9
  %.not241 = icmp samesign ult i64 %165, %312
  br i1 %.not241, label %313, label %odessy.chk20, !prof !11

313:                                              ; preds = %309
  %314 = fmul double %303, %304
  %315 = getelementptr inbounds nuw i8, ptr %310, i64 32
  %316 = getelementptr inbounds nuw [8 x i8], ptr %315, i64 %165
  store double %314, ptr %316, align 8
  store ptr %310, ptr @"$s5nbody2vzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch49) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch49)
  %317 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %318 = getelementptr inbounds nuw i8, ptr %317, i64 16
  %319 = load i64, ptr %318, align 8, !range !9
  %.not242 = icmp samesign ult i64 %165, %319
  br i1 %.not242, label %320, label %odessy.chk21, !prof !11

320:                                              ; preds = %313
  %321 = getelementptr inbounds nuw i8, ptr %317, i64 32
  %322 = getelementptr inbounds nuw [8 x i8], ptr %321, i64 %165
  %323 = load ptr, ptr %322, align 8
  %324 = getelementptr inbounds nuw i8, ptr %323, i64 16
  %325 = load i64, ptr %324, align 8, !range !9
  %326 = icmp samesign ult i64 %325, 7
  br i1 %326, label %odessy.chk22, label %327, !prof !10

327:                                              ; preds = %320
  %328 = getelementptr inbounds nuw i8, ptr %323, i64 80
  %329 = load double, ptr %328, align 8
  %330 = load double, ptr @"$s5nbody5solarSdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch56)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody4massSaySdGvp", ptr nonnull %access-scratch56, i64 33, ptr null) #2
  %331 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %332 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %331) #16
  store ptr %331, ptr @"$s5nbody4massSaySdGvp", align 8
  br i1 %332, label %335, label %333

333:                                              ; preds = %327
  %334 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %331)
  br label %335

335:                                              ; preds = %333, %327
  %336 = phi ptr [ %334, %333 ], [ %331, %327 ]
  %337 = getelementptr inbounds nuw i8, ptr %336, i64 16
  %338 = load i64, ptr %337, align 8, !range !9
  %.not243 = icmp samesign ult i64 %165, %338
  br i1 %.not243, label %339, label %odessy.chk23, !prof !11

339:                                              ; preds = %335
  %340 = fmul double %329, %330
  %341 = getelementptr inbounds nuw i8, ptr %336, i64 32
  %342 = getelementptr inbounds nuw [8 x i8], ptr %341, i64 %165
  store double %340, ptr %342, align 8
  store ptr %336, ptr @"$s5nbody4massSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch56) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch56)
  %343 = icmp eq i64 %166, %126
  br i1 %343, label %.loopexit304, label %164

344:                                              ; preds = %443, %134, %.thread329
  %345 = phi double [ 0.000000e+00, %134 ], [ %.lcssa353, %443 ], [ 0.000000e+00, %.thread329 ]
  %346 = load double, ptr @"$s5nbody5solarSdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch71)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vxSaySdGvp", ptr nonnull %access-scratch71, i64 33, ptr null) #2
  %347 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %348 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %347) #16
  store ptr %347, ptr @"$s5nbody2vxSaySdGvp", align 8
  br i1 %348, label %351, label %349

349:                                              ; preds = %344
  %350 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %347)
  br label %351

351:                                              ; preds = %349, %344
  %352 = phi ptr [ %350, %349 ], [ %347, %344 ]
  %353 = getelementptr inbounds nuw i8, ptr %352, i64 16
  %354 = load i64, ptr %353, align 8, !range !9
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %odessy.chk29, label %356, !prof !10

356:                                              ; preds = %351
  %357 = fneg double %345
  %358 = fdiv double %357, %346
  %359 = getelementptr inbounds nuw i8, ptr %352, i64 32
  store double %358, ptr %359, align 8
  store ptr %352, ptr @"$s5nbody2vxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch71) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch71)
  %360 = load double, ptr @"$s5nbody3mpySdvp", align 8
  %361 = load double, ptr @"$s5nbody5solarSdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch74)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vySaySdGvp", ptr nonnull %access-scratch74, i64 33, ptr null) #2
  %362 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %363 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %362) #16
  store ptr %362, ptr @"$s5nbody2vySaySdGvp", align 8
  br i1 %363, label %366, label %364

364:                                              ; preds = %356
  %365 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %362)
  br label %366

366:                                              ; preds = %364, %356
  %367 = phi ptr [ %365, %364 ], [ %362, %356 ]
  %368 = getelementptr inbounds nuw i8, ptr %367, i64 16
  %369 = load i64, ptr %368, align 8, !range !9
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %odessy.chk30, label %371, !prof !10

371:                                              ; preds = %366
  %372 = fneg double %360
  %373 = fdiv double %372, %361
  %374 = getelementptr inbounds nuw i8, ptr %367, i64 32
  store double %373, ptr %374, align 8
  store ptr %367, ptr @"$s5nbody2vySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch74) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch74)
  %375 = load double, ptr @"$s5nbody3mpzSdvp", align 8
  %376 = load double, ptr @"$s5nbody5solarSdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch77)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vzSaySdGvp", ptr nonnull %access-scratch77, i64 33, ptr null) #2
  %377 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %378 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %377) #16
  store ptr %377, ptr @"$s5nbody2vzSaySdGvp", align 8
  br i1 %378, label %381, label %379

379:                                              ; preds = %371
  %380 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %377)
  br label %381

381:                                              ; preds = %379, %371
  %382 = phi ptr [ %380, %379 ], [ %377, %371 ]
  %383 = getelementptr inbounds nuw i8, ptr %382, i64 16
  %384 = load i64, ptr %383, align 8, !range !9
  %385 = icmp eq i64 %384, 0
  br i1 %385, label %odessy.chk31, label %386, !prof !10

386:                                              ; preds = %381
  %387 = fneg double %375
  %388 = fdiv double %387, %376
  %389 = getelementptr inbounds nuw i8, ptr %382, i64 32
  store double %388, ptr %389, align 8
  store ptr %382, ptr @"$s5nbody2vzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch77) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch77)
  store double 1.000000e-02, ptr @"$s5nbody2dtSdvp", align 8
  %390 = load i64, ptr @"$s5nbody5stepsSivp", align 8
  %391 = icmp slt i64 %390, 0
  br i1 %391, label %odessy.chk32, label %392, !prof !10

392:                                              ; preds = %386
  %393 = icmp eq i64 %390, 0
  br i1 %393, label %.loopexit303, label %.preheader302.preheader

394:                                              ; preds = %394, %.new
  %395 = phi i64 [ 0, %.new ], [ %414, %394 ]
  %396 = phi double [ 0.000000e+00, %.new ], [ %428, %394 ]
  %397 = phi double [ %161, %.new ], [ %420, %394 ]
  %398 = phi double [ %162, %.new ], [ %424, %394 ]
  %399 = or disjoint i64 %395, 1
  %400 = getelementptr inbounds [8 x i8], ptr %157, i64 %395
  %401 = load double, ptr %400, align 8
  %402 = getelementptr inbounds [8 x i8], ptr %158, i64 %395
  %403 = load double, ptr %402, align 8
  %404 = fmul double %401, %403
  %405 = fadd double %397, %404
  %406 = getelementptr inbounds [8 x i8], ptr %159, i64 %395
  %407 = load double, ptr %406, align 8
  %408 = fmul double %403, %407
  %409 = fadd double %398, %408
  %410 = getelementptr inbounds [8 x i8], ptr %160, i64 %395
  %411 = load double, ptr %410, align 8
  %412 = fmul double %403, %411
  %413 = fadd double %396, %412
  %414 = add i64 %395, 2
  %415 = getelementptr inbounds [8 x i8], ptr %157, i64 %399
  %416 = load double, ptr %415, align 8
  %417 = getelementptr inbounds [8 x i8], ptr %158, i64 %399
  %418 = load double, ptr %417, align 8
  %419 = fmul double %416, %418
  %420 = fadd double %405, %419
  %421 = getelementptr inbounds [8 x i8], ptr %159, i64 %399
  %422 = load double, ptr %421, align 8
  %423 = fmul double %418, %422
  %424 = fadd double %409, %423
  %425 = getelementptr inbounds [8 x i8], ptr %160, i64 %399
  %426 = load double, ptr %425, align 8
  %427 = fmul double %418, %426
  %428 = fadd double %413, %427
  %niter.ncmp.1 = icmp eq i64 %414, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %394

.unr-lcssa:                                       ; preds = %394
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %443, label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %156, %.unr-lcssa
  %.unr36244 = phi double [ %424, %.unr-lcssa ], [ %162, %156 ]
  %.unr36143 = phi double [ %420, %.unr-lcssa ], [ %161, %156 ]
  %.unr36042 = phi double [ %428, %.unr-lcssa ], [ 0.000000e+00, %156 ]
  %.unr41 = phi i64 [ %unroll_iter, %.unr-lcssa ], [ 0, %156 ]
  %429 = getelementptr inbounds nuw [8 x i8], ptr %157, i64 %.unr41
  %430 = load double, ptr %429, align 8
  %431 = getelementptr inbounds nuw [8 x i8], ptr %158, i64 %.unr41
  %432 = load double, ptr %431, align 8
  %433 = fmul double %430, %432
  %434 = fadd double %.unr36143, %433
  %435 = getelementptr inbounds nuw [8 x i8], ptr %159, i64 %.unr41
  %436 = load double, ptr %435, align 8
  %437 = fmul double %432, %436
  %438 = fadd double %.unr36244, %437
  %439 = getelementptr inbounds nuw [8 x i8], ptr %160, i64 %.unr41
  %440 = load double, ptr %439, align 8
  %441 = fmul double %432, %440
  %442 = fadd double %.unr36042, %441
  br label %443

443:                                              ; preds = %.epilog-lcssa, %.unr-lcssa
  %.lcssa353 = phi double [ %420, %.unr-lcssa ], [ %434, %.epilog-lcssa ]
  %.lcssa352 = phi double [ %424, %.unr-lcssa ], [ %438, %.epilog-lcssa ]
  %.lcssa351 = phi double [ %428, %.unr-lcssa ], [ %442, %.epilog-lcssa ]
  store double %.lcssa351, ptr @"$s5nbody3mpzSdvp", align 8
  store double %.lcssa352, ptr @"$s5nbody3mpySdvp", align 8
  store double %.lcssa353, ptr @"$s5nbody3mpxSdvp", align 8
  br label %344

.preheader302.preheader:                          ; preds = %392, %.thread297
  %444 = phi i64 [ %445, %.thread297 ], [ 0, %392 ]
  %445 = add nuw nsw i64 %444, 1
  %446 = load i64, ptr @"$s5nbody1nSivp", align 8
  %447 = icmp slt i64 %446, 0
  br i1 %447, label %odessy.chk33, label %448, !prof !10

448:                                              ; preds = %.preheader302.preheader
  %449 = icmp eq i64 %446, 0
  br i1 %449, label %.thread297, label %.preheader301.preheader

.loopexit303:                                     ; preds = %.thread297, %392
  store double 0.000000e+00, ptr @"$s5nbody1eSdvp", align 8
  %450 = load i64, ptr @"$s5nbody1nSivp", align 8
  %451 = icmp slt i64 %450, 0
  br i1 %451, label %odessy.chk60, label %452, !prof !10

452:                                              ; preds = %.loopexit303
  %453 = icmp eq i64 %450, 0
  br i1 %453, label %.loopexit299, label %454

454:                                              ; preds = %452
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch146)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody4massSaySdGvp", ptr nonnull %access-scratch146, i64 0, ptr null) #2
  %.pre67 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  br label %728

455:                                              ; preds = %.loopexit300
  %.pr = load i64, ptr @"$s5nbody1nSivp", align 8
  %456 = icmp slt i64 %.pr, 0
  br i1 %456, label %odessy.chk53, label %457, !prof !15

457:                                              ; preds = %455
  %458 = icmp eq i64 %.pr, 0
  br i1 %458, label %.thread297, label %.preheader

.preheader301.preheader:                          ; preds = %448, %.loopexit300
  %459 = phi i64 [ %460, %.loopexit300 ], [ 0, %448 ]
  %460 = add nuw nsw i64 %459, 1
  %461 = load i64, ptr @"$s5nbody1nSivp", align 8
  %.not327 = icmp sgt i64 %461, %459
  br i1 %.not327, label %462, label %odessy.chk34, !prof !11

462:                                              ; preds = %.preheader301.preheader
  %463 = icmp eq i64 %460, %461
  br i1 %463, label %.loopexit300, label %464

464:                                              ; preds = %462
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch80)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pySaySdGvp", ptr nonnull %access-scratch80, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch81)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pzSaySdGvp", ptr nonnull %access-scratch81, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch82)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody4massSaySdGvp", ptr nonnull %access-scratch82, i64 0, ptr null) #2
  br label %466

.loopexit300:                                     ; preds = %635, %462
  %465 = icmp eq i64 %460, %446
  br i1 %465, label %455, label %.preheader301.preheader

466:                                              ; preds = %635, %464
  %467 = phi i64 [ %460, %464 ], [ %468, %635 ]
  %468 = add nuw i64 %467, 1
  %469 = load ptr, ptr @"$s5nbody2pxSaySdGvp", align 8
  %470 = getelementptr inbounds nuw i8, ptr %469, i64 16
  %471 = load i64, ptr %470, align 8, !range !9
  %.not247 = icmp samesign ult i64 %459, %471
  br i1 %.not247, label %472, label %odessy.chk35, !prof !11

472:                                              ; preds = %466
  %.not248 = icmp samesign ult i64 %467, %471
  br i1 %.not248, label %473, label %odessy.chk36, !prof !11

473:                                              ; preds = %472
  %474 = getelementptr inbounds nuw i8, ptr %469, i64 32
  %475 = getelementptr inbounds nuw [8 x i8], ptr %474, i64 %459
  %476 = load double, ptr %475, align 8
  %477 = getelementptr inbounds nuw [8 x i8], ptr %474, i64 %467
  %478 = load double, ptr %477, align 8
  %479 = fsub double %476, %478
  %480 = load ptr, ptr @"$s5nbody2pySaySdGvp", align 8
  %481 = getelementptr inbounds nuw i8, ptr %480, i64 16
  %482 = load i64, ptr %481, align 8, !range !9
  %.not249 = icmp samesign ult i64 %459, %482
  br i1 %.not249, label %483, label %odessy.chk37, !prof !11

483:                                              ; preds = %473
  %.not250 = icmp samesign ult i64 %467, %482
  br i1 %.not250, label %484, label %odessy.chk38, !prof !11

484:                                              ; preds = %483
  %485 = getelementptr inbounds nuw i8, ptr %480, i64 32
  %486 = getelementptr inbounds nuw [8 x i8], ptr %485, i64 %459
  %487 = load double, ptr %486, align 8
  %488 = getelementptr inbounds nuw [8 x i8], ptr %485, i64 %467
  %489 = load double, ptr %488, align 8
  %490 = fsub double %487, %489
  %491 = load ptr, ptr @"$s5nbody2pzSaySdGvp", align 8
  %492 = getelementptr inbounds nuw i8, ptr %491, i64 16
  %493 = load i64, ptr %492, align 8, !range !9
  %.not251 = icmp samesign ult i64 %459, %493
  br i1 %.not251, label %494, label %odessy.chk39, !prof !11

494:                                              ; preds = %484
  %.not252 = icmp samesign ult i64 %467, %493
  br i1 %.not252, label %495, label %odessy.chk40, !prof !11

495:                                              ; preds = %494
  %496 = getelementptr inbounds nuw i8, ptr %491, i64 32
  %497 = getelementptr inbounds nuw [8 x i8], ptr %496, i64 %459
  %498 = load double, ptr %497, align 8
  %499 = getelementptr inbounds nuw [8 x i8], ptr %496, i64 %467
  %500 = load double, ptr %499, align 8
  %501 = fsub double %498, %500
  %502 = fmul double %479, %479
  %503 = fmul double %490, %490
  %504 = fadd double %502, %503
  %505 = fmul double %501, %501
  %506 = fadd double %504, %505
  %507 = load double, ptr @"$s5nbody2dtSdvp", align 8
  %sqrt = call double @llvm.sqrt.f64(double %506)
  %508 = fmul double %506, %sqrt
  %509 = fdiv double %507, %508
  %510 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %511 = getelementptr inbounds nuw i8, ptr %510, i64 16
  %512 = load i64, ptr %511, align 8, !range !9
  %.not253 = icmp samesign ult i64 %467, %512
  br i1 %.not253, label %513, label %odessy.chk41, !prof !11

513:                                              ; preds = %495
  %514 = getelementptr inbounds nuw i8, ptr %510, i64 32
  %515 = getelementptr inbounds nuw [8 x i8], ptr %514, i64 %467
  %516 = load double, ptr %515, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch94)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vxSaySdGvp", ptr nonnull %access-scratch94, i64 33, ptr null) #2
  %517 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %518 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %517) #16
  store ptr %517, ptr @"$s5nbody2vxSaySdGvp", align 8
  br i1 %518, label %521, label %519

519:                                              ; preds = %513
  %520 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %517)
  br label %521

521:                                              ; preds = %519, %513
  %522 = phi ptr [ %520, %519 ], [ %517, %513 ]
  %523 = getelementptr inbounds nuw i8, ptr %522, i64 16
  %524 = load i64, ptr %523, align 8, !range !9
  %.not254 = icmp samesign ult i64 %459, %524
  br i1 %.not254, label %525, label %odessy.chk42, !prof !11

525:                                              ; preds = %521
  %526 = fmul double %479, %516
  %527 = fmul double %509, %526
  %528 = getelementptr inbounds nuw i8, ptr %522, i64 32
  %529 = getelementptr inbounds nuw [8 x i8], ptr %528, i64 %459
  %530 = load double, ptr %529, align 8
  %531 = fsub double %530, %527
  store double %531, ptr %529, align 8
  store ptr %522, ptr @"$s5nbody2vxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch94) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch94)
  %532 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %533 = getelementptr inbounds nuw i8, ptr %532, i64 16
  %534 = load i64, ptr %533, align 8, !range !9
  %.not255 = icmp samesign ult i64 %467, %534
  br i1 %.not255, label %535, label %odessy.chk43, !prof !11

535:                                              ; preds = %525
  %536 = getelementptr inbounds nuw i8, ptr %532, i64 32
  %537 = getelementptr inbounds nuw [8 x i8], ptr %536, i64 %467
  %538 = load double, ptr %537, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch100)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vySaySdGvp", ptr nonnull %access-scratch100, i64 33, ptr null) #2
  %539 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %540 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %539) #16
  store ptr %539, ptr @"$s5nbody2vySaySdGvp", align 8
  br i1 %540, label %543, label %541

541:                                              ; preds = %535
  %542 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %539)
  br label %543

543:                                              ; preds = %541, %535
  %544 = phi ptr [ %542, %541 ], [ %539, %535 ]
  %545 = getelementptr inbounds nuw i8, ptr %544, i64 16
  %546 = load i64, ptr %545, align 8, !range !9
  %.not256 = icmp samesign ult i64 %459, %546
  br i1 %.not256, label %547, label %odessy.chk44, !prof !11

547:                                              ; preds = %543
  %548 = fmul double %490, %538
  %549 = fmul double %509, %548
  %550 = getelementptr inbounds nuw i8, ptr %544, i64 32
  %551 = getelementptr inbounds nuw [8 x i8], ptr %550, i64 %459
  %552 = load double, ptr %551, align 8
  %553 = fsub double %552, %549
  store double %553, ptr %551, align 8
  store ptr %544, ptr @"$s5nbody2vySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch100) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch100)
  %554 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %555 = getelementptr inbounds nuw i8, ptr %554, i64 16
  %556 = load i64, ptr %555, align 8, !range !9
  %.not257 = icmp samesign ult i64 %467, %556
  br i1 %.not257, label %557, label %odessy.chk45, !prof !11

557:                                              ; preds = %547
  %558 = getelementptr inbounds nuw i8, ptr %554, i64 32
  %559 = getelementptr inbounds nuw [8 x i8], ptr %558, i64 %467
  %560 = load double, ptr %559, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch106)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vzSaySdGvp", ptr nonnull %access-scratch106, i64 33, ptr null) #2
  %561 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %562 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %561) #16
  store ptr %561, ptr @"$s5nbody2vzSaySdGvp", align 8
  br i1 %562, label %565, label %563

563:                                              ; preds = %557
  %564 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %561)
  br label %565

565:                                              ; preds = %563, %557
  %566 = phi ptr [ %564, %563 ], [ %561, %557 ]
  %567 = getelementptr inbounds nuw i8, ptr %566, i64 16
  %568 = load i64, ptr %567, align 8, !range !9
  %.not258 = icmp samesign ult i64 %459, %568
  br i1 %.not258, label %569, label %odessy.chk46, !prof !11

569:                                              ; preds = %565
  %570 = fmul double %501, %560
  %571 = fmul double %509, %570
  %572 = getelementptr inbounds nuw i8, ptr %566, i64 32
  %573 = getelementptr inbounds nuw [8 x i8], ptr %572, i64 %459
  %574 = load double, ptr %573, align 8
  %575 = fsub double %574, %571
  store double %575, ptr %573, align 8
  store ptr %566, ptr @"$s5nbody2vzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch106) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch106)
  %576 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %577 = getelementptr inbounds nuw i8, ptr %576, i64 16
  %578 = load i64, ptr %577, align 8, !range !9
  %.not259 = icmp samesign ult i64 %459, %578
  br i1 %.not259, label %579, label %odessy.chk47, !prof !11

579:                                              ; preds = %569
  %580 = getelementptr inbounds nuw i8, ptr %576, i64 32
  %581 = getelementptr inbounds nuw [8 x i8], ptr %580, i64 %459
  %582 = load double, ptr %581, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch112)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vxSaySdGvp", ptr nonnull %access-scratch112, i64 33, ptr null) #2
  %583 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %584 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %583) #16
  store ptr %583, ptr @"$s5nbody2vxSaySdGvp", align 8
  br i1 %584, label %587, label %585

585:                                              ; preds = %579
  %586 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %583)
  br label %587

587:                                              ; preds = %585, %579
  %588 = phi ptr [ %586, %585 ], [ %583, %579 ]
  %589 = getelementptr inbounds nuw i8, ptr %588, i64 16
  %590 = load i64, ptr %589, align 8, !range !9
  %.not260 = icmp samesign ult i64 %467, %590
  br i1 %.not260, label %591, label %odessy.chk48, !prof !11

591:                                              ; preds = %587
  %592 = fmul double %479, %582
  %593 = fmul double %509, %592
  %594 = getelementptr inbounds nuw i8, ptr %588, i64 32
  %595 = getelementptr inbounds nuw [8 x i8], ptr %594, i64 %467
  %596 = load double, ptr %595, align 8
  %597 = fadd double %593, %596
  store double %597, ptr %595, align 8
  store ptr %588, ptr @"$s5nbody2vxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch112) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch112)
  %598 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %599 = getelementptr inbounds nuw i8, ptr %598, i64 16
  %600 = load i64, ptr %599, align 8, !range !9
  %.not261 = icmp samesign ult i64 %459, %600
  br i1 %.not261, label %601, label %odessy.chk49, !prof !11

601:                                              ; preds = %591
  %602 = getelementptr inbounds nuw i8, ptr %598, i64 32
  %603 = getelementptr inbounds nuw [8 x i8], ptr %602, i64 %459
  %604 = load double, ptr %603, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch118)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vySaySdGvp", ptr nonnull %access-scratch118, i64 33, ptr null) #2
  %605 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %606 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %605) #16
  store ptr %605, ptr @"$s5nbody2vySaySdGvp", align 8
  br i1 %606, label %609, label %607

607:                                              ; preds = %601
  %608 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %605)
  br label %609

609:                                              ; preds = %607, %601
  %610 = phi ptr [ %608, %607 ], [ %605, %601 ]
  %611 = getelementptr inbounds nuw i8, ptr %610, i64 16
  %612 = load i64, ptr %611, align 8, !range !9
  %.not262 = icmp samesign ult i64 %467, %612
  br i1 %.not262, label %613, label %odessy.chk50, !prof !11

613:                                              ; preds = %609
  %614 = fmul double %490, %604
  %615 = fmul double %509, %614
  %616 = getelementptr inbounds nuw i8, ptr %610, i64 32
  %617 = getelementptr inbounds nuw [8 x i8], ptr %616, i64 %467
  %618 = load double, ptr %617, align 8
  %619 = fadd double %615, %618
  store double %619, ptr %617, align 8
  store ptr %610, ptr @"$s5nbody2vySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch118) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch118)
  %620 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %621 = getelementptr inbounds nuw i8, ptr %620, i64 16
  %622 = load i64, ptr %621, align 8, !range !9
  %.not263 = icmp samesign ult i64 %459, %622
  br i1 %.not263, label %623, label %odessy.chk51, !prof !11

623:                                              ; preds = %613
  %624 = getelementptr inbounds nuw i8, ptr %620, i64 32
  %625 = getelementptr inbounds nuw [8 x i8], ptr %624, i64 %459
  %626 = load double, ptr %625, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch124)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vzSaySdGvp", ptr nonnull %access-scratch124, i64 33, ptr null) #2
  %627 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %628 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %627) #16
  store ptr %627, ptr @"$s5nbody2vzSaySdGvp", align 8
  br i1 %628, label %631, label %629

629:                                              ; preds = %623
  %630 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %627)
  br label %631

631:                                              ; preds = %629, %623
  %632 = phi ptr [ %630, %629 ], [ %627, %623 ]
  %633 = getelementptr inbounds nuw i8, ptr %632, i64 16
  %634 = load i64, ptr %633, align 8, !range !9
  %.not264 = icmp samesign ult i64 %467, %634
  br i1 %.not264, label %635, label %odessy.chk52, !prof !11

635:                                              ; preds = %631
  %636 = fmul double %501, %626
  %637 = fmul double %509, %636
  %638 = getelementptr inbounds nuw i8, ptr %632, i64 32
  %639 = getelementptr inbounds nuw [8 x i8], ptr %638, i64 %467
  %640 = load double, ptr %639, align 8
  %641 = fadd double %637, %640
  store double %641, ptr %639, align 8
  store ptr %632, ptr @"$s5nbody2vzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch124) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch124)
  %642 = icmp eq i64 %468, %461
  br i1 %642, label %.loopexit300, label %466

.thread297:                                       ; preds = %706, %457, %448
  %643 = icmp eq i64 %445, %390
  br i1 %643, label %.loopexit303, label %.preheader302.preheader

.preheader:                                       ; preds = %457, %706
  %644 = phi i64 [ %645, %706 ], [ 0, %457 ]
  %645 = add nuw nsw i64 %644, 1
  %646 = load double, ptr @"$s5nbody2dtSdvp", align 8
  %647 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %648 = getelementptr inbounds nuw i8, ptr %647, i64 16
  %649 = load i64, ptr %648, align 8, !range !9
  %.not265 = icmp samesign ult i64 %644, %649
  br i1 %.not265, label %650, label %odessy.chk54, !prof !11

650:                                              ; preds = %.preheader
  %651 = getelementptr inbounds nuw i8, ptr %647, i64 32
  %652 = getelementptr inbounds nuw [8 x i8], ptr %651, i64 %644
  %653 = load double, ptr %652, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch130)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pxSaySdGvp", ptr nonnull %access-scratch130, i64 33, ptr null) #2
  %654 = load ptr, ptr @"$s5nbody2pxSaySdGvp", align 8
  %655 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %654) #16
  store ptr %654, ptr @"$s5nbody2pxSaySdGvp", align 8
  br i1 %655, label %658, label %656

656:                                              ; preds = %650
  %657 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %654)
  br label %658

658:                                              ; preds = %656, %650
  %659 = phi ptr [ %657, %656 ], [ %654, %650 ]
  %660 = getelementptr inbounds nuw i8, ptr %659, i64 16
  %661 = load i64, ptr %660, align 8, !range !9
  %.not266 = icmp samesign ult i64 %644, %661
  br i1 %.not266, label %662, label %odessy.chk55, !prof !11

662:                                              ; preds = %658
  %663 = fmul double %646, %653
  %664 = getelementptr inbounds nuw i8, ptr %659, i64 32
  %665 = getelementptr inbounds nuw [8 x i8], ptr %664, i64 %644
  %666 = load double, ptr %665, align 8
  %667 = fadd double %663, %666
  store double %667, ptr %665, align 8
  store ptr %659, ptr @"$s5nbody2pxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch130) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch130)
  %668 = load double, ptr @"$s5nbody2dtSdvp", align 8
  %669 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %670 = getelementptr inbounds nuw i8, ptr %669, i64 16
  %671 = load i64, ptr %670, align 8, !range !9
  %.not267 = icmp samesign ult i64 %644, %671
  br i1 %.not267, label %672, label %odessy.chk56, !prof !11

672:                                              ; preds = %662
  %673 = getelementptr inbounds nuw i8, ptr %669, i64 32
  %674 = getelementptr inbounds nuw [8 x i8], ptr %673, i64 %644
  %675 = load double, ptr %674, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch136)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pySaySdGvp", ptr nonnull %access-scratch136, i64 33, ptr null) #2
  %676 = load ptr, ptr @"$s5nbody2pySaySdGvp", align 8
  %677 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %676) #16
  store ptr %676, ptr @"$s5nbody2pySaySdGvp", align 8
  br i1 %677, label %680, label %678

678:                                              ; preds = %672
  %679 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %676)
  br label %680

680:                                              ; preds = %678, %672
  %681 = phi ptr [ %679, %678 ], [ %676, %672 ]
  %682 = getelementptr inbounds nuw i8, ptr %681, i64 16
  %683 = load i64, ptr %682, align 8, !range !9
  %.not268 = icmp samesign ult i64 %644, %683
  br i1 %.not268, label %684, label %odessy.chk57, !prof !11

684:                                              ; preds = %680
  %685 = fmul double %668, %675
  %686 = getelementptr inbounds nuw i8, ptr %681, i64 32
  %687 = getelementptr inbounds nuw [8 x i8], ptr %686, i64 %644
  %688 = load double, ptr %687, align 8
  %689 = fadd double %685, %688
  store double %689, ptr %687, align 8
  store ptr %681, ptr @"$s5nbody2pySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch136) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch136)
  %690 = load double, ptr @"$s5nbody2dtSdvp", align 8
  %691 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %692 = getelementptr inbounds nuw i8, ptr %691, i64 16
  %693 = load i64, ptr %692, align 8, !range !9
  %.not269 = icmp samesign ult i64 %644, %693
  br i1 %.not269, label %694, label %odessy.chk58, !prof !11

694:                                              ; preds = %684
  %695 = getelementptr inbounds nuw i8, ptr %691, i64 32
  %696 = getelementptr inbounds nuw [8 x i8], ptr %695, i64 %644
  %697 = load double, ptr %696, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch142)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pzSaySdGvp", ptr nonnull %access-scratch142, i64 33, ptr null) #2
  %698 = load ptr, ptr @"$s5nbody2pzSaySdGvp", align 8
  %699 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %698) #16
  store ptr %698, ptr @"$s5nbody2pzSaySdGvp", align 8
  br i1 %699, label %702, label %700

700:                                              ; preds = %694
  %701 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %698)
  br label %702

702:                                              ; preds = %700, %694
  %703 = phi ptr [ %701, %700 ], [ %698, %694 ]
  %704 = getelementptr inbounds nuw i8, ptr %703, i64 16
  %705 = load i64, ptr %704, align 8, !range !9
  %.not270 = icmp samesign ult i64 %644, %705
  br i1 %.not270, label %706, label %odessy.chk59, !prof !11

706:                                              ; preds = %702
  %707 = fmul double %690, %697
  %708 = getelementptr inbounds nuw i8, ptr %703, i64 32
  %709 = getelementptr inbounds nuw [8 x i8], ptr %708, i64 %644
  %710 = load double, ptr %709, align 8
  %711 = fadd double %707, %710
  store double %711, ptr %709, align 8
  store ptr %703, ptr @"$s5nbody2pzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch142) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch142)
  %712 = icmp eq i64 %645, %.pr
  br i1 %712, label %.thread297, label %.preheader

.loopexit299:                                     ; preds = %.loopexit, %452
  %713 = phi double [ 0.000000e+00, %452 ], [ %789, %.loopexit ]
  %714 = call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCyypGMD") #15
  %715 = call noalias ptr @swift_allocObject(ptr %714, i64 64, i64 7) #2
  %716 = getelementptr inbounds nuw i8, ptr %715, i64 16
  store i64 1, ptr %716, align 8
  %._storage169._capacityAndFlags = getelementptr inbounds nuw i8, ptr %715, i64 24
  store i64 2, ptr %._storage169._capacityAndFlags, align 8
  %717 = getelementptr inbounds nuw i8, ptr %715, i64 32
  %718 = call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCys7CVarArg_pGMD") #15
  %reference.new = call ptr @swift_initStackObject(ptr %718, ptr nonnull %reference.raw226) #16
  %reference.new171 = getelementptr inbounds nuw i8, ptr %reference.new, i64 16
  store i64 1, ptr %reference.new171, align 8
  %reference.new171._storage._capacityAndFlags = getelementptr inbounds nuw i8, ptr %reference.new, i64 24
  store i64 2, ptr %reference.new171._storage._capacityAndFlags, align 8
  %719 = getelementptr inbounds nuw i8, ptr %reference.new, i64 32
  %720 = getelementptr inbounds nuw i8, ptr %reference.new, i64 56
  store ptr @"$sSdN", ptr %720, align 8
  %721 = getelementptr inbounds nuw i8, ptr %reference.new, i64 64
  store ptr @"$sSds7CVarArgsWP", ptr %721, align 8
  store double %713, ptr %719, align 8
  %722 = call swiftcc { i64, ptr } @"$sSS10FoundationE6format6locale9argumentsS2Sh_0A10Essentials6LocaleVSghSays7CVarArg_pGhtcfC"(i64 1715023397, ptr nonnull inttoptr (i64 -2017612633061982208 to ptr), i64 0, i64 0, ptr %reference.new)
  %723 = extractvalue { i64, ptr } %722, 0
  %724 = extractvalue { i64, ptr } %722, 1
  call void @swift_setDeallocating(ptr %reference.new) #2
  %725 = load i64, ptr %reference.new171, align 8, !range !9
  %726 = call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss7CVarArg_pMD") #15
  call void @swift_arrayDestroy(ptr nonnull %719, i64 %725, ptr %726) #2
  %727 = getelementptr inbounds nuw i8, ptr %715, i64 56
  store ptr @"$sSSN", ptr %727, align 8
  store i64 %723, ptr %717, align 8
  %._guts174._object._object = getelementptr inbounds nuw i8, ptr %715, i64 40
  store ptr %724, ptr %._guts174._object._object, align 8
  call swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr %715, i64 32, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr), i64 10, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr))
  call void @swift_release(ptr %715) #2
  ret i32 0

728:                                              ; preds = %.loopexit, %454
  %729 = phi ptr [ %.pre67, %454 ], [ %788, %.loopexit ]
  %730 = phi i64 [ 0, %454 ], [ %732, %.loopexit ]
  %731 = phi double [ 0.000000e+00, %454 ], [ %789, %.loopexit ]
  %732 = add nuw nsw i64 %730, 1
  %733 = getelementptr inbounds nuw i8, ptr %729, i64 16
  %734 = load i64, ptr %733, align 8, !range !9
  %.not272 = icmp samesign ult i64 %730, %734
  br i1 %.not272, label %735, label %odessy.chk61, !prof !11

735:                                              ; preds = %728
  %736 = getelementptr inbounds nuw i8, ptr %729, i64 32
  %737 = getelementptr inbounds nuw [8 x i8], ptr %736, i64 %730
  %738 = load double, ptr %737, align 8
  %739 = fmul double %738, 5.000000e-01
  %740 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %741 = getelementptr inbounds nuw i8, ptr %740, i64 16
  %742 = load i64, ptr %741, align 8, !range !9
  %.not273 = icmp samesign ult i64 %730, %742
  br i1 %.not273, label %743, label %odessy.chk62, !prof !11

743:                                              ; preds = %735
  %744 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %745 = getelementptr inbounds nuw i8, ptr %744, i64 16
  %746 = load i64, ptr %745, align 8, !range !9
  %.not274 = icmp samesign ult i64 %730, %746
  br i1 %.not274, label %747, label %odessy.chk63, !prof !11

747:                                              ; preds = %743
  %748 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %749 = getelementptr inbounds nuw i8, ptr %748, i64 16
  %750 = load i64, ptr %749, align 8, !range !9
  %.not275 = icmp samesign ult i64 %730, %750
  br i1 %.not275, label %751, label %odessy.chk64, !prof !11

751:                                              ; preds = %747
  %752 = getelementptr inbounds nuw i8, ptr %740, i64 32
  %753 = getelementptr inbounds nuw [8 x i8], ptr %752, i64 %730
  %754 = load double, ptr %753, align 8
  %755 = fmul double %754, %754
  %756 = getelementptr inbounds nuw i8, ptr %744, i64 32
  %757 = getelementptr inbounds nuw [8 x i8], ptr %756, i64 %730
  %758 = load double, ptr %757, align 8
  %759 = fmul double %758, %758
  %760 = fadd double %755, %759
  %761 = getelementptr inbounds nuw i8, ptr %748, i64 32
  %762 = getelementptr inbounds nuw [8 x i8], ptr %761, i64 %730
  %763 = load double, ptr %762, align 8
  %764 = fmul double %763, %763
  %765 = fadd double %760, %764
  %766 = fmul double %739, %765
  %767 = fadd double %731, %766
  store double %767, ptr @"$s5nbody1eSdvp", align 8
  %768 = load i64, ptr @"$s5nbody1nSivp", align 8
  %.not328 = icmp sgt i64 %768, %730
  br i1 %.not328, label %769, label %odessy.chk65, !prof !11

769:                                              ; preds = %751
  %770 = icmp eq i64 %732, %768
  br i1 %770, label %.loopexit, label %771

771:                                              ; preds = %769
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch155)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pySaySdGvp", ptr nonnull %access-scratch155, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch156)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pzSaySdGvp", ptr nonnull %access-scratch156, i64 0, ptr null) #2
  %772 = load ptr, ptr @"$s5nbody2pxSaySdGvp", align 8
  %773 = getelementptr inbounds nuw i8, ptr %772, i64 16
  %774 = getelementptr inbounds nuw i8, ptr %772, i64 32
  %775 = getelementptr inbounds nuw [8 x i8], ptr %774, i64 %730
  %776 = load ptr, ptr @"$s5nbody2pySaySdGvp", align 8
  %777 = getelementptr inbounds nuw i8, ptr %776, i64 16
  %778 = getelementptr inbounds nuw i8, ptr %776, i64 32
  %779 = getelementptr inbounds nuw [8 x i8], ptr %778, i64 %730
  %780 = load ptr, ptr @"$s5nbody2pzSaySdGvp", align 8
  %781 = getelementptr inbounds nuw i8, ptr %780, i64 16
  %782 = getelementptr inbounds nuw i8, ptr %780, i64 32
  %783 = getelementptr inbounds nuw [8 x i8], ptr %782, i64 %730
  %784 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %785 = getelementptr inbounds nuw i8, ptr %784, i64 16
  %786 = getelementptr inbounds nuw i8, ptr %784, i64 32
  %787 = getelementptr inbounds nuw [8 x i8], ptr %786, i64 %730
  %.pre326 = load i64, ptr %773, align 8, !range !9
  %.not277 = icmp samesign ult i64 %730, %.pre326
  br i1 %.not277, label %.split.preheader, label %odessy.chk66, !prof !11

.split.preheader:                                 ; preds = %771
  %"$s5nbody1eSdvp.promoted" = load double, ptr @"$s5nbody1eSdvp", align 8
  br label %.split

.loopexit:                                        ; preds = %815, %769
  %788 = phi ptr [ %729, %769 ], [ %784, %815 ]
  %789 = phi double [ %767, %769 ], [ %826, %815 ]
  %790 = icmp eq i64 %732, %450
  br i1 %790, label %.loopexit299, label %728

.split:                                           ; preds = %.split.preheader, %815
  %791 = phi double [ %826, %815 ], [ %"$s5nbody1eSdvp.promoted", %.split.preheader ]
  %792 = phi i64 [ %793, %815 ], [ %732, %.split.preheader ]
  %793 = add nuw i64 %792, 1
  %exitcond.not = icmp eq i64 %792, %.pre326
  br i1 %exitcond.not, label %odessy.chk67, label %794, !prof !10

794:                                              ; preds = %.split
  %795 = load double, ptr %775, align 8
  %796 = getelementptr inbounds nuw [8 x i8], ptr %774, i64 %792
  %797 = load double, ptr %796, align 8
  %798 = fsub double %795, %797
  %799 = load i64, ptr %777, align 8, !range !9
  %.not279 = icmp samesign ult i64 %730, %799
  br i1 %.not279, label %800, label %odessy.chk68, !prof !11

800:                                              ; preds = %794
  %.not280 = icmp samesign ult i64 %792, %799
  br i1 %.not280, label %801, label %odessy.chk69, !prof !11

801:                                              ; preds = %800
  %802 = load double, ptr %779, align 8
  %803 = getelementptr inbounds nuw [8 x i8], ptr %778, i64 %792
  %804 = load double, ptr %803, align 8
  %805 = fsub double %802, %804
  %806 = load i64, ptr %781, align 8, !range !9
  %.not281 = icmp samesign ult i64 %730, %806
  br i1 %.not281, label %807, label %odessy.chk70, !prof !11

807:                                              ; preds = %801
  %.not282 = icmp samesign ult i64 %792, %806
  br i1 %.not282, label %808, label %odessy.chk71, !prof !11

808:                                              ; preds = %807
  %809 = load double, ptr %783, align 8
  %810 = getelementptr inbounds nuw [8 x i8], ptr %782, i64 %792
  %811 = load double, ptr %810, align 8
  %812 = fsub double %809, %811
  %813 = load i64, ptr %785, align 8, !range !9
  %.not283 = icmp samesign ult i64 %730, %813
  br i1 %.not283, label %814, label %odessy.chk72, !prof !11

814:                                              ; preds = %808
  %.not284 = icmp samesign ult i64 %792, %813
  br i1 %.not284, label %815, label %odessy.chk73, !prof !11

815:                                              ; preds = %814
  %816 = load double, ptr %787, align 8
  %817 = getelementptr inbounds nuw [8 x i8], ptr %786, i64 %792
  %818 = load double, ptr %817, align 8
  %819 = fmul double %816, %818
  %820 = fmul double %798, %798
  %821 = fmul double %805, %805
  %822 = fadd double %820, %821
  %823 = fmul double %812, %812
  %824 = fadd double %822, %823
  %sqrt298 = call double @llvm.sqrt.f64(double %824)
  %825 = fdiv double %819, %sqrt298
  %826 = fsub double %791, %825
  store double %826, ptr @"$s5nbody1eSdvp", align 8
  %827 = icmp eq i64 %793, %768
  br i1 %827, label %.loopexit, label %.split

828:                                              ; preds = %57
  tail call void asm sideeffect "", "n"(i32 89) #2
  tail call void @llvm.trap()
  unreachable

829:                                              ; preds = %28
  tail call void asm sideeffect "", "n"(i32 90) #2
  tail call void @llvm.trap()
  unreachable

odessy.chk:                                       ; preds = %entry
  tail call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %36
  call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %111
  call void @odessy.chk(i32 2)
  unreachable

odessy.chk3:                                      ; preds = %164
  call void @odessy.chk(i32 3)
  unreachable

odessy.chk4:                                      ; preds = %170
  call void @odessy.chk(i32 4)
  unreachable

odessy.chk5:                                      ; preds = %184
  call void @odessy.chk(i32 5)
  unreachable

odessy.chk6:                                      ; preds = %188
  call void @odessy.chk(i32 6)
  unreachable

odessy.chk7:                                      ; preds = %194
  call void @odessy.chk(i32 7)
  unreachable

odessy.chk8:                                      ; preds = %208
  call void @odessy.chk(i32 8)
  unreachable

odessy.chk9:                                      ; preds = %212
  call void @odessy.chk(i32 9)
  unreachable

odessy.chk10:                                     ; preds = %218
  call void @odessy.chk(i32 10)
  unreachable

odessy.chk11:                                     ; preds = %232
  call void @odessy.chk(i32 11)
  unreachable

odessy.chk12:                                     ; preds = %236
  call void @odessy.chk(i32 12)
  unreachable

odessy.chk13:                                     ; preds = %242
  call void @odessy.chk(i32 13)
  unreachable

odessy.chk14:                                     ; preds = %257
  call void @odessy.chk(i32 14)
  unreachable

odessy.chk15:                                     ; preds = %261
  call void @odessy.chk(i32 15)
  unreachable

odessy.chk16:                                     ; preds = %268
  call void @odessy.chk(i32 16)
  unreachable

odessy.chk17:                                     ; preds = %283
  call void @odessy.chk(i32 17)
  unreachable

odessy.chk18:                                     ; preds = %287
  call void @odessy.chk(i32 18)
  unreachable

odessy.chk19:                                     ; preds = %294
  call void @odessy.chk(i32 19)
  unreachable

odessy.chk20:                                     ; preds = %309
  call void @odessy.chk(i32 20)
  unreachable

odessy.chk21:                                     ; preds = %313
  call void @odessy.chk(i32 21)
  unreachable

odessy.chk22:                                     ; preds = %320
  call void @odessy.chk(i32 22)
  unreachable

odessy.chk23:                                     ; preds = %335
  call void @odessy.chk(i32 23)
  unreachable

odessy.chk24:                                     ; preds = %.loopexit304
  call void @odessy.chk(i32 24)
  unreachable

odessy.chk25:                                     ; preds = %136
  call void @odessy.chk(i32 25)
  unreachable

odessy.chk26:                                     ; preds = %144
  call void @odessy.chk(i32 26)
  unreachable

odessy.chk27:                                     ; preds = %148
  call void @odessy.chk(i32 27)
  unreachable

odessy.chk28:                                     ; preds = %152
  call void @odessy.chk(i32 28)
  unreachable

odessy.chk29:                                     ; preds = %351
  call void @odessy.chk(i32 29)
  unreachable

odessy.chk30:                                     ; preds = %366
  call void @odessy.chk(i32 30)
  unreachable

odessy.chk31:                                     ; preds = %381
  call void @odessy.chk(i32 31)
  unreachable

odessy.chk32:                                     ; preds = %386
  call void @odessy.chk(i32 32)
  unreachable

odessy.chk33:                                     ; preds = %.preheader302.preheader
  call void @odessy.chk(i32 33)
  unreachable

odessy.chk34:                                     ; preds = %.preheader301.preheader
  call void @odessy.chk(i32 34)
  unreachable

odessy.chk35:                                     ; preds = %466
  call void @odessy.chk(i32 35)
  unreachable

odessy.chk36:                                     ; preds = %472
  call void @odessy.chk(i32 36)
  unreachable

odessy.chk37:                                     ; preds = %473
  call void @odessy.chk(i32 37)
  unreachable

odessy.chk38:                                     ; preds = %483
  call void @odessy.chk(i32 38)
  unreachable

odessy.chk39:                                     ; preds = %484
  call void @odessy.chk(i32 39)
  unreachable

odessy.chk40:                                     ; preds = %494
  call void @odessy.chk(i32 40)
  unreachable

odessy.chk41:                                     ; preds = %495
  call void @odessy.chk(i32 41)
  unreachable

odessy.chk42:                                     ; preds = %521
  call void @odessy.chk(i32 42)
  unreachable

odessy.chk43:                                     ; preds = %525
  call void @odessy.chk(i32 43)
  unreachable

odessy.chk44:                                     ; preds = %543
  call void @odessy.chk(i32 44)
  unreachable

odessy.chk45:                                     ; preds = %547
  call void @odessy.chk(i32 45)
  unreachable

odessy.chk46:                                     ; preds = %565
  call void @odessy.chk(i32 46)
  unreachable

odessy.chk47:                                     ; preds = %569
  call void @odessy.chk(i32 47)
  unreachable

odessy.chk48:                                     ; preds = %587
  call void @odessy.chk(i32 48)
  unreachable

odessy.chk49:                                     ; preds = %591
  call void @odessy.chk(i32 49)
  unreachable

odessy.chk50:                                     ; preds = %609
  call void @odessy.chk(i32 50)
  unreachable

odessy.chk51:                                     ; preds = %613
  call void @odessy.chk(i32 51)
  unreachable

odessy.chk52:                                     ; preds = %631
  call void @odessy.chk(i32 52)
  unreachable

odessy.chk53:                                     ; preds = %455
  call void @odessy.chk(i32 53)
  unreachable

odessy.chk54:                                     ; preds = %.preheader
  call void @odessy.chk(i32 54)
  unreachable

odessy.chk55:                                     ; preds = %658
  call void @odessy.chk(i32 55)
  unreachable

odessy.chk56:                                     ; preds = %662
  call void @odessy.chk(i32 56)
  unreachable

odessy.chk57:                                     ; preds = %680
  call void @odessy.chk(i32 57)
  unreachable

odessy.chk58:                                     ; preds = %684
  call void @odessy.chk(i32 58)
  unreachable

odessy.chk59:                                     ; preds = %702
  call void @odessy.chk(i32 59)
  unreachable

odessy.chk60:                                     ; preds = %.loopexit303
  call void @odessy.chk(i32 60)
  unreachable

odessy.chk61:                                     ; preds = %728
  call void @odessy.chk(i32 61)
  unreachable

odessy.chk62:                                     ; preds = %735
  call void @odessy.chk(i32 62)
  unreachable

odessy.chk63:                                     ; preds = %743
  call void @odessy.chk(i32 63)
  unreachable

odessy.chk64:                                     ; preds = %747
  call void @odessy.chk(i32 64)
  unreachable

odessy.chk65:                                     ; preds = %751
  call void @odessy.chk(i32 65)
  unreachable

odessy.chk66:                                     ; preds = %771
  call void @odessy.chk(i32 66)
  unreachable

odessy.chk67:                                     ; preds = %.split
  call void @odessy.chk(i32 67)
  unreachable

odessy.chk68:                                     ; preds = %794
  call void @odessy.chk(i32 68)
  unreachable

odessy.chk69:                                     ; preds = %800
  call void @odessy.chk(i32 69)
  unreachable

odessy.chk70:                                     ; preds = %801
  call void @odessy.chk(i32 70)
  unreachable

odessy.chk71:                                     ; preds = %807
  call void @odessy.chk(i32 71)
  unreachable

odessy.chk72:                                     ; preds = %808
  call void @odessy.chk(i32 72)
  unreachable

odessy.chk73:                                     ; preds = %814
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

.loopexit:                                        ; preds = %94, %87, %81, %78, %50, %43, %37, %34, %129, %122, %116, %113, %60, %58, %55, %12, %9
  %22 = phi i64 [ 0, %9 ], [ 0, %12 ], [ 0, %55 ], [ 0, %60 ], [ 0, %58 ], [ 0, %50 ], [ 0, %129 ], [ 0, %113 ], [ 0, %116 ], [ %123, %122 ], [ 0, %34 ], [ 0, %37 ], [ %44, %43 ], [ 0, %78 ], [ 0, %81 ], [ %88, %87 ], [ 0, %94 ]
  %23 = phi i8 [ 1, %9 ], [ 0, %12 ], [ 1, %55 ], [ 0, %60 ], [ 1, %58 ], [ 1, %50 ], [ 1, %129 ], [ 1, %113 ], [ 1, %116 ], [ 0, %122 ], [ 1, %34 ], [ 1, %37 ], [ 0, %43 ], [ 1, %78 ], [ 1, %81 ], [ 0, %87 ], [ 1, %94 ]
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
  %38 = add i8 %.sink, %31
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
  %82 = add i8 %.sink55, %75
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
  %117 = add i8 %.sink56, %110
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

odessy.chk:                                       ; preds = %53
  tail call void @odessy.chk(i32 74)
  unreachable

odessy.chk1:                                      ; preds = %7
  tail call void @odessy.chk(i32 75)
  unreachable
}

; Function Attrs: noinline
define linkonce_odr hidden swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFSSSiADSSRszsAER_r0_lIetgyr_Tpq5Si_Tg5"(i64 %0, ptr %1, i64 %2) local_unnamed_addr #3 {
entry:
  %3 = alloca %TSS, align 8
  %4 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %0, ptr %3, align 8
  %._guts._object._object = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %._guts._object._object, align 8
  %5 = tail call ptr @swift_bridgeObjectRetain(ptr returned %1) #2
  %6 = call swiftcc { i64, ptr } @"$sSSySSxcs25LosslessStringConvertibleRzSTRzSJ7ElementSTRtzlufC"(ptr noalias nonnull %3, ptr nonnull @"$sSSN", ptr nonnull @"$sSSs25LosslessStringConvertiblesWP", ptr nonnull @"$sSSSTsWP")
  %7 = extractvalue { i64, ptr } %6, 0
  %8 = extractvalue { i64, ptr } %6, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
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
    i64 0, label %282
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

.loopexit81:                                      ; preds = %107, %100, %94, %91, %68, %61, %55, %52, %142, %135, %129, %126, %72, %71, %27
  %39 = phi i64 [ 0, %72 ], [ 0, %27 ], [ 0, %71 ], [ 0, %68 ], [ 0, %142 ], [ 0, %126 ], [ 0, %129 ], [ %136, %135 ], [ 0, %52 ], [ 0, %55 ], [ %62, %61 ], [ 0, %91 ], [ 0, %94 ], [ %101, %100 ], [ 0, %107 ]
  %40 = phi i8 [ 1, %72 ], [ 1, %27 ], [ 1, %71 ], [ 1, %68 ], [ 1, %142 ], [ 1, %126 ], [ 1, %129 ], [ 0, %135 ], [ 1, %52 ], [ 1, %55 ], [ 0, %61 ], [ 1, %91 ], [ 1, %94 ], [ 0, %100 ], [ 1, %107 ]
  call void @swift_bridgeObjectRelease(ptr %18) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
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
  %56 = add i8 %.sink, %49
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
    i64 0, label %281
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
  %95 = add i8 %.sink120, %88
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
  %130 = add i8 %.sink121, %123
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

.loopexit:                                        ; preds = %243, %236, %230, %227, %199, %192, %186, %183, %278, %271, %265, %262, %209, %207, %204, %163, %160
  %173 = phi i64 [ 0, %160 ], [ 0, %163 ], [ 0, %204 ], [ 0, %209 ], [ 0, %207 ], [ 0, %199 ], [ 0, %278 ], [ 0, %262 ], [ 0, %265 ], [ %272, %271 ], [ 0, %183 ], [ 0, %186 ], [ %193, %192 ], [ 0, %227 ], [ 0, %230 ], [ %237, %236 ], [ 0, %243 ]
  %174 = phi i8 [ 1, %160 ], [ 0, %163 ], [ 1, %204 ], [ 0, %209 ], [ 1, %207 ], [ 1, %199 ], [ 1, %278 ], [ 1, %262 ], [ 1, %265 ], [ 0, %271 ], [ 1, %183 ], [ 1, %186 ], [ 0, %192 ], [ 1, %227 ], [ 1, %230 ], [ 0, %236 ], [ 1, %243 ]
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
  %187 = add i8 %.sink122, %180
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
  %231 = add i8 %.sink123, %224
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
  %266 = add i8 %.sink124, %259
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

281:                                              ; preds = %71
  call void asm sideeffect "", "n"(i32 2) #2
  call void @llvm.trap()
  unreachable

282:                                              ; preds = %27
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

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
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
  %13 = tail call swiftcc ptr @swift_getTypeByMangledNameInContext2(ptr %12, i64 %8, ptr null, ptr null) #17
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

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
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

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
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
  %10 = icmp slt i64 %6, 0
  br i1 %10, label %odessy.chk, label %11, !prof !10

11:                                               ; preds = %9
  %12 = and i64 %6, 9223372036854775806
  %13 = tail call i64 @llvm.umax.i64(i64 %12, i64 %1)
  br label %14

14:                                               ; preds = %11, %5, %entry
  %15 = phi i64 [ %1, %entry ], [ %13, %11 ], [ %7, %5 ]
  %16 = load i64, ptr %4, align 8, !range !9
  %.4 = tail call i64 @llvm.smax.i64(i64 %15, i64 %16)
  %17 = icmp eq i64 %.4, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCySdGMD") #15
  %20 = shl i64 %.4, 3
  %21 = add i64 %20, 32
  %22 = tail call noalias ptr @swift_allocObject(ptr %19, i64 %21, i64 7) #2
  %call.i = tail call i64 @malloc_usable_size(ptr noundef %22) #18
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
  %31 = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %16
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

odessy.chk:                                       ; preds = %9
  tail call void @odessy.chk(i32 78)
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %16 = call swiftcc i64 @"$sSTsE21_copySequenceContents12initializing8IteratorQz_SitSry7ElementQzG_tFSs8UTF8ViewV_Tgq5"(ptr noalias nonnull captures(none) %4, i64 %15, i64 %10, i64 %0, i64 %1, i64 %2, ptr %3)
  %._elements._slice._base._guts._object._object = getelementptr inbounds nuw i8, ptr %4, i64 24
  %17 = load ptr, ptr %._elements._slice._base._guts._object._object, align 8
  %18 = tail call ptr @swift_bridgeObjectRetain(ptr returned %3) #2
  tail call void @swift_bridgeObjectRelease(ptr %17) #2
  %.not = icmp eq i64 %16, %10
  br i1 %.not, label %19, label %odessy.chk, !prof !11

19:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %._crit_edge

._crit_edge:                                      ; preds = %9, %19
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
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %.elt1 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %47 = and i64 %6, 72057594037927935
  store i64 %2, ptr %5, align 8
  store i64 %47, ptr %.elt1, align 8
  %48 = getelementptr inbounds nuw i8, ptr %5, i64 %27
  %49 = ptrtoint ptr %48 to i64
  %50 = sub nsw i64 %28, %27
  %51 = icmp sgt i64 %50, -1
  call void @llvm.assume(i1 %51)
  %52 = call swiftcc { i64, ptr } @"$sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ"(i64 %49, i64 %50)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %53

53:                                               ; preds = %46, %41, %._crit_edge
  %.merged = phi { i64, ptr } [ %25, %._crit_edge ], [ %45, %41 ], [ %52, %46 ]
  ret { i64, ptr } %.merged

odessy.chk:                                       ; preds = %12
  tail call void @odessy.chk(i32 79)
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

odessy.chk:                                       ; preds = %22
  tail call void @odessy.chk(i32 80)
  unreachable

odessy.chk1:                                      ; preds = %30
  tail call void @odessy.chk(i32 81)
  unreachable
}

define linkonce_odr hidden swiftcc ptr @"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5"(i64 %0, i64 %1) local_unnamed_addr #0 {
entry:
  %. = tail call i64 @llvm.smax.i64(i64 %1, i64 %0)
  %2 = icmp eq i64 %., 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %entry
  %4 = tail call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMD") #15
  %5 = add i64 %., 32
  %6 = tail call noalias ptr @swift_allocObject(ptr %4, i64 %5, i64 7) #2
  %call.i = tail call i64 @malloc_usable_size(ptr noundef %6) #18
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
  %.fr12 = freeze i64 %5
  %.fr11 = freeze ptr %6
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
  %19 = ptrtoint ptr %.fr11 to i64
  %20 = and i64 %19, 1152921504606846976
  %21 = icmp eq i64 %20, 0
  %22 = and i64 %.fr12, 576460752303423488
  %23 = icmp ne i64 %22, 0
  %24 = or i1 %21, %23
  %25 = zext i1 %24 to i64
  %26 = shl nuw nsw i64 4, %25
  %27 = and i64 %19, 2305843009213693952
  %.not12 = icmp eq i64 %27, 0
  %.elt6 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %28 = and i64 %19, 72057594037927935
  %29 = and i64 %.fr12, 1152921504606846976
  %.not13 = icmp eq i64 %29, 0
  %30 = and i64 %19, 1152921504606846975
  %31 = add nuw nsw i64 %30, 32
  %32 = and i64 %.fr12, 281474976710655
  %33 = lshr i64 %19, 56
  %34 = and i64 %33, 15
  %35 = select i1 %.not12, i64 %32, i64 %34
  br i1 %21, label %.split.us.split, label %.split

.split.us.split:                                  ; preds = %18
  br i1 %.not12, label %.split.us.split.split.us, label %.split.us.split.split

.split.us.split.split.us:                         ; preds = %.split.us.split
  br i1 %.not13, label %.split.us.split.split.us.split.us, label %.split.us.split.split.us.split, !prof !10

.split.us.split.split.us.split.us:                ; preds = %.split.us.split.split.us, %65
  %36 = phi ptr [ %67, %65 ], [ %10, %.split.us.split.split.us ]
  %37 = phi i64 [ %60, %65 ], [ %3, %.split.us.split.split.us ]
  %38 = phi i64 [ %66, %65 ], [ 1, %.split.us.split.split.us ]
  %39 = and i64 %37, 12
  %.not.us.us.us = icmp eq i64 %39, %26
  br i1 %.not.us.us.us, label %40, label %42, !prof !10

40:                                               ; preds = %.split.us.split.split.us.split.us
  %41 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %37, i64 %.fr12, ptr %.fr11)
  br label %42

42:                                               ; preds = %40, %.split.us.split.split.us.split.us
  %43 = phi i64 [ %41, %40 ], [ %37, %.split.us.split.split.us.split.us ]
  %44 = lshr i64 %43, 14
  %45 = icmp samesign ult i64 %44, %16
  %46 = icmp samesign uge i64 %44, %14
  %47 = or i1 %45, %46
  br i1 %47, label %odessy.chk1, label %48, !prof !10

48:                                               ; preds = %42
  %49 = tail call swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %.fr12, ptr %.fr11)
  %50 = extractvalue { i64, i64 } %49, 0
  %51 = lshr i64 %43, 16
  %52 = inttoptr i64 %50 to ptr
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 %51
  %54 = load i8, ptr %53, align 1
  br i1 %.not.us.us.us, label %55, label %57, !prof !10

55:                                               ; preds = %48
  %56 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %37, i64 %.fr12, ptr %.fr11)
  br label %57

57:                                               ; preds = %55, %48
  %58 = phi i64 [ %56, %55 ], [ %37, %48 ]
  %59 = and i64 %58, -65536
  %60 = add i64 %59, 65540
  store i8 %54, ptr %36, align 1
  %61 = icmp eq i64 %38, %2
  br i1 %61, label %.loopexit17, label %62

62:                                               ; preds = %57
  %63 = lshr i64 %60, 14
  %64 = icmp eq i64 %63, %14
  br i1 %64, label %.loopexit17, label %65

65:                                               ; preds = %62
  %66 = add nuw i64 %38, 1
  %67 = getelementptr inbounds nuw i8, ptr %36, i64 1
  br label %.split.us.split.split.us.split.us

.split.us.split.split.us.split:                   ; preds = %.split.us.split.split.us
  %68 = inttoptr i64 %31 to ptr
  br label %69

69:                                               ; preds = %101, %.split.us.split.split.us.split
  %70 = phi ptr [ %10, %.split.us.split.split.us.split ], [ %103, %101 ]
  %71 = phi i64 [ %3, %.split.us.split.split.us.split ], [ %96, %101 ]
  %72 = phi i64 [ 1, %.split.us.split.split.us.split ], [ %102, %101 ]
  %73 = and i64 %71, 12
  %.not.us.us = icmp eq i64 %73, %26
  br i1 %.not.us.us, label %74, label %.thread, !prof !10

74:                                               ; preds = %69
  %75 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %71, i64 %.fr12, ptr %.fr11)
  %76 = lshr i64 %75, 14
  %77 = icmp samesign ult i64 %76, %16
  %78 = icmp samesign uge i64 %76, %14
  %79 = or i1 %77, %78
  br i1 %79, label %odessy.chk1, label %87, !prof !10

.thread:                                          ; preds = %69
  %80 = lshr i64 %71, 14
  %81 = icmp samesign ult i64 %80, %16
  %82 = icmp samesign uge i64 %80, %14
  %83 = or i1 %81, %82
  br i1 %83, label %odessy.chk1, label %.thread32, !prof !10

.thread32:                                        ; preds = %.thread
  %84 = lshr i64 %71, 16
  %85 = getelementptr inbounds nuw i8, ptr %68, i64 %84
  %86 = load i8, ptr %85, align 1
  br label %92

87:                                               ; preds = %74
  %88 = lshr i64 %75, 16
  %89 = getelementptr inbounds nuw i8, ptr %68, i64 %88
  %90 = load i8, ptr %89, align 1
  %91 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %71, i64 %.fr12, ptr %.fr11)
  br label %92

92:                                               ; preds = %.thread32, %87
  %93 = phi i8 [ %90, %87 ], [ %86, %.thread32 ]
  %94 = phi i64 [ %91, %87 ], [ %71, %.thread32 ]
  %95 = and i64 %94, -65536
  %96 = add i64 %95, 65540
  store i8 %93, ptr %70, align 1
  %97 = icmp eq i64 %72, %2
  br i1 %97, label %.loopexit17, label %98

98:                                               ; preds = %92
  %99 = lshr i64 %96, 14
  %100 = icmp eq i64 %99, %14
  br i1 %100, label %.loopexit17, label %101

101:                                              ; preds = %98
  %102 = add nuw i64 %72, 1
  %103 = getelementptr inbounds nuw i8, ptr %70, i64 1
  br label %69

.split.us.split.split:                            ; preds = %.split.us.split, %130
  %104 = phi ptr [ %132, %130 ], [ %10, %.split.us.split ]
  %105 = phi i64 [ %125, %130 ], [ %3, %.split.us.split ]
  %106 = phi i64 [ %131, %130 ], [ 1, %.split.us.split ]
  %107 = and i64 %105, 12
  %.not.us = icmp eq i64 %107, %26
  br i1 %.not.us, label %108, label %110, !prof !10

108:                                              ; preds = %.split.us.split.split
  %109 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %105, i64 %.fr12, ptr %.fr11)
  br label %110

110:                                              ; preds = %108, %.split.us.split.split
  %111 = phi i64 [ %109, %108 ], [ %105, %.split.us.split.split ]
  %112 = lshr i64 %111, 14
  %113 = icmp samesign ult i64 %112, %16
  %114 = icmp samesign uge i64 %112, %14
  %115 = or i1 %113, %114
  br i1 %115, label %odessy.chk1, label %116, !prof !10

116:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.fr12, ptr %7, align 8
  store i64 %28, ptr %.elt6, align 8
  %117 = lshr i64 %111, 16
  %118 = getelementptr inbounds nuw i8, ptr %7, i64 %117
  %119 = load i8, ptr %118, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br i1 %.not.us, label %120, label %122, !prof !10

120:                                              ; preds = %116
  %121 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %105, i64 %.fr12, ptr %.fr11)
  br label %122

122:                                              ; preds = %120, %116
  %123 = phi i64 [ %121, %120 ], [ %105, %116 ]
  %124 = and i64 %123, -65536
  %125 = add i64 %124, 65540
  store i8 %119, ptr %104, align 1
  %126 = icmp eq i64 %106, %2
  br i1 %126, label %.loopexit17, label %127

127:                                              ; preds = %122
  %128 = lshr i64 %125, 14
  %129 = icmp eq i64 %128, %14
  br i1 %129, label %.loopexit17, label %130

130:                                              ; preds = %127
  %131 = add nuw i64 %106, 1
  %132 = getelementptr inbounds nuw i8, ptr %104, i64 1
  br label %.split.us.split.split

.split:                                           ; preds = %18, %158
  %133 = phi ptr [ %160, %158 ], [ %10, %18 ]
  %134 = phi i64 [ %153, %158 ], [ %3, %18 ]
  %135 = phi i64 [ %159, %158 ], [ 1, %18 ]
  %136 = and i64 %134, 12
  %.not = icmp eq i64 %136, %26
  br i1 %.not, label %137, label %139, !prof !10

137:                                              ; preds = %.split
  %138 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %134, i64 %.fr12, ptr %.fr11)
  br label %139

139:                                              ; preds = %137, %.split
  %140 = phi i64 [ %138, %137 ], [ %134, %.split ]
  %141 = lshr i64 %140, 14
  %142 = icmp samesign ult i64 %141, %16
  %143 = icmp samesign uge i64 %141, %14
  %144 = or i1 %142, %143
  br i1 %144, label %odessy.chk1, label %145, !prof !10

145:                                              ; preds = %139
  %146 = tail call swiftcc i8 @"$sSS8UTF8ViewV17_foreignSubscript8positions5UInt8VSS5IndexV_tF"(i64 %140, i64 %.fr12, ptr %.fr11)
  br i1 %.not, label %147, label %149, !prof !10

147:                                              ; preds = %145
  %148 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %134, i64 %.fr12, ptr %.fr11)
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i64 [ %148, %147 ], [ %134, %145 ]
  %151 = lshr i64 %150, 16
  %.not15 = icmp samesign ult i64 %151, %35
  br i1 %.not15, label %152, label %odessy.chk2, !prof !11

152:                                              ; preds = %149
  %153 = tail call swiftcc i64 @"$sSS8UTF8ViewV13_foreignIndex5afterSS0D0VAF_tF"(i64 %150, i64 %.fr12, ptr %.fr11)
  store i8 %146, ptr %133, align 1
  %154 = icmp eq i64 %135, %2
  br i1 %154, label %.loopexit17, label %155

155:                                              ; preds = %152
  %156 = lshr i64 %153, 14
  %157 = icmp eq i64 %156, %14
  br i1 %157, label %.loopexit17, label %158

158:                                              ; preds = %155
  %159 = add nuw i64 %135, 1
  %160 = getelementptr inbounds nuw i8, ptr %133, i64 1
  br label %.split

.loopexit17:                                      ; preds = %152, %155, %122, %127, %98, %92, %62, %57, %15, %9, %entry
  %.sink = phi i64 [ %3, %entry ], [ %3, %15 ], [ %3, %9 ], [ %125, %122 ], [ %96, %98 ], [ %60, %62 ], [ %60, %57 ], [ %96, %92 ], [ %125, %127 ], [ %153, %155 ], [ %153, %152 ]
  %161 = phi i64 [ 0, %entry ], [ 0, %15 ], [ 0, %9 ], [ %2, %122 ], [ %72, %98 ], [ %38, %62 ], [ %2, %57 ], [ %2, %92 ], [ %106, %127 ], [ %2, %152 ], [ %135, %155 ]
  store i64 %3, ptr %0, align 8
  %._elements3._slice._endIndex = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %._elements3._slice._endIndex, align 8
  %._elements3._slice._base = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.fr12, ptr %._elements3._slice._base, align 8
  %._elements3._slice._base._guts._object._object = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.fr11, ptr %._elements3._slice._base._guts._object._object, align 8
  %._position4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink, ptr %._position4, align 8
  ret i64 %161

odessy.chk:                                       ; preds = %12
  tail call void @odessy.chk(i32 82)
  unreachable

odessy.chk1:                                      ; preds = %139, %110, %74, %.thread, %42
  tail call void @odessy.chk(i32 83)
  unreachable

odessy.chk2:                                      ; preds = %149
  tail call void @odessy.chk(i32 84)
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

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nounwind
declare ptr @swift_retain_n(ptr returned, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { nounwind }
attributes #3 = { noinline "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind memory(argmem: readwrite) }
attributes #7 = { mustprogress nounwind willreturn }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind memory(read) }
attributes #16 = { nounwind willreturn }
attributes #17 = { nounwind memory(argmem: read) }
attributes #18 = { nounwind optsize }

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
